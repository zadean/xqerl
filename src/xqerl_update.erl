%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2019 Zachary N. Dean  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------
-module(xqerl_update).

-include("xqerl.hrl").

%% TODO add DB module to add/update/delete other types of items

%% ====================================================================
%% API functions
%% ====================================================================
-export([pending_update_list/1,
         apply_updates/2,
         apply_local_updates/3,
         add/2]).

pending_update_list(Pid) ->
    F = fun() -> loop({Pid, []}) end,
    erlang:spawn_link(F).

add(Pid, Command) when is_pid(Pid) ->
    case add_command(Command) of
        [] ->
            [];
        [A,B] ->
            Pid ! A,
            Pid ! B,
            [];
        {delete, DelList} ->
            _ = [Pid ! {delete, D} || D <- DelList],
            [];
        Command1 ->
            Pid ! Command1,
            []
    end;
add(#{pul := Pid}, Command) ->
    add(Pid, Command).

add_command({'before', Target, Content}) ->
    check_split_insert(before, Target, Content);
add_command({'after', Target, Content}) ->
    check_split_insert('after', Target, Content);
add_command({'into', Target, Content}) ->
    check_split_insert(into, Target, Content);
add_command({'into_first', Target, Content}) ->
    check_split_insert(into_first, Target, Content);
add_command({'into_last', Target, Content}) ->
    check_split_insert(into_last, Target, Content);
add_command({'delete', Targets}) ->
    {delete, check_delete(Targets)};
add_command({'replace', Target, Content}) ->
    check_replace_node(Target, Content);
add_command({'replace_value', Target, Content}) ->
    check_replace_value(Target, Content);
add_command({'rename', Target, Content}) ->
    check_rename(Target, Content);
add_command({put, Node, Uri, Params}) ->
    put(Node, Uri, Params).

lock_targets(Agent, PulMap) ->
    DBs = [K || K <- maps:keys(PulMap), K =/= put],
    OIDs = [{[DB, Nm], write} ||
            DB <- DBs,
            {Nm, _Ts} <- maps:keys(maps:get(DB, PulMap))],
    Objs = lists:usort(OIDs),
    case Objs of
        [] ->
            ok;
        _ ->
            locks:lock_objects(Agent, Objs),
            {have_all_locks, _} = locks:await_all_locks(Agent),
            ok
    end.

apply_local_updates(Ctx, Pid, Vars) when is_pid(Pid) ->
    Pid ! done,
    receive
        {Pid, Pul} ->
            %io:format("~p~n", [Pul]),
            ok = compatibilityCheck(Pul),
            PulMap = mergeUpdates(Pul),
            applyUpdates(Ctx, PulMap, Vars)         
    end.

apply_updates(Ctx, Pid) when is_pid(Pid) ->
    Pid ! done,
    receive
        {Pid, Pul} ->
            ok = compatibilityCheck(Pul),
            PulMap = mergeUpdates(Pul),
            applyUpdates(Ctx, PulMap)
    end.

-define(ERROR_MATCH(Err), 
        #xqError{name = #xqAtomicValue{value = #qname{local_name = Err}}}).

%% ====================================================================
%% Update Primitives
%% ====================================================================

%% upd:put(
%%    $node as node(),
%%    $uri as xs:string,
%%    $params as item())
put(Node, Uri, Params) ->
    {put, Node, Uri, Params}.

%% ====================================================================
%% Update Routines
%% ====================================================================

%% upd:compatibilityCheck(
%%    $pul as pending-update-list)
compatibilityCheck(Pul) ->
    %% Two or more upd:rename primitives in $pul have the same target node
    _ = if_dupe([Target || {rename, Target, _} <- Pul], 'XUDY0015'),
    %% Two or more upd:replaceNode primitives in $pul have the same target node
    _ = if_dupe([Target || {replaceNode, Target, _} <- Pul], 'XUDY0016'),
    %% Two or more upd:replaceValue primitives in $pul have the same target node
    _ = if_dupe([Target || {replaceValue, Target, _} <- Pul], 'XUDY0017'),
    %% Two or more upd:replaceElementContent primitives in $pul have the same target node
    _ = if_dupe([Target || {replaceElementContent, Target, _} <- Pul], 'XUDY0017'),
    %% Two or more upd:put primitives in $pul have the same $uri operand
    _ = if_dupe([Uri || {put, _, Uri, _} <- Pul], 'XUDY0031'),
    %% Two or more primitives in $pul create conflicting namespace bindings for the same element node [err:XUDY0024]. The following kinds of primitives create namespace bindings:
    %%    upd:insertAttributes creates one namespace binding on the $target element corresponding to the implied namespace binding of the name of each attribute node in $content.
    %%    upd:replaceNode creates one namespace binding on the $target element corresponding to the implied namespace binding of the name of each attribute node in $replacement.
    %%    upd:rename creates a namespace binding on $target, or on the parent (if any) of $target if $target is an attribute node, corresponding to the implied namespace binding of $newName.
    ok.


% merges and groups all updates by DB, Type, and node
mergeUpdates(Pul) ->
    mergeUpdates(Pul, #{put => []}).

mergeUpdates([{put, _, _, _} = H|T], #{put := Puts} = Acc) ->
    mergeUpdates(T, Acc#{put := [H|Puts]});
mergeUpdates([{delete, {Db, DocId, Id}}|T], Acc) -> % db node
    mergeUpdates(T, do_merge(Acc, Db, delete, {DocId, Id}, []));
mergeUpdates([{delete, {Db, Id}}|T], Acc) -> % mem node
    mergeUpdates(T, do_merge(Acc, Db, delete, Id, []));
mergeUpdates([{Type, {Db, DocId, Id}, Val}|T], Acc) ->
    mergeUpdates(T, do_merge(Acc, Db, Type, {DocId, Id}, Val));
mergeUpdates([{Type, {Db, Pos}, Val}|T], Acc) ->
    mergeUpdates(T, do_merge(Acc, Db, Type, Pos, Val));
mergeUpdates([], Acc) -> Acc.

do_merge(Acc, Db, Type, Pos, Val) when is_reference(Db) -> % mem nodes
    DbMap = maps:get(Db, Acc, #{}),
    List = maps:get(Type, DbMap, []),
    List1 = [{Pos,Val}|List],
    Acc#{Db => DbMap#{Type => List1}};
do_merge(Acc, Db, Type, {DocId, Pos}, Val) -> % db nodes
    DbMap = maps:get(Db, Acc, #{}),
    DbDocMap = maps:get(DocId, DbMap, #{}),
    List = maps:get(Type, DbDocMap, []),
    List1 = [{Pos,Val}|List],
    Acc#{Db => DbMap#{DocId => DbDocMap#{Type => List1}}}.

do_put(Node, DocUri) ->
    xqldb_dml:insert_doc_node(DocUri, Node).

% applies updates to persisted DB nodes, non DB nodes ignored
applyUpdates(#{trans := Agent} = Ctx, PulMap) ->
    DBs = [Key || Key <- maps:keys(PulMap),
                  not is_reference(Key),
                  Key =/= put],
    Puts = maps:get(put, PulMap, []),
    ok = lock_targets(Agent, PulMap),
    % wait for all locks 
    % check that all documents being changed are the same as selected
    % if any are not, throw error and do not continue
    % Optimistic Concurrency
    ok = 
        lists:foreach(
          fun(put) -> ok;
             (DbPid) ->
                DB = xqldb_db:database(DbPid),
                DocMap = maps:get(DbPid, PulMap),
                DocIds = maps:keys(DocMap),
                Ok = lists:all(
                       fun({Nm, Ts}) ->
                             {xml, Ts1} = xqldb_path_table:lookup(DB, Nm),
                             Ts1 == Ts
                       end, DocIds),
                if 
                    Ok ->
                        ok;
                    true ->
                        locks:end_transaction(Agent),
                        throw({error, unstable_document})
                end
          end, DBs),

    UFun =
        fun(DbPid) ->
            DocMap = maps:get(DbPid, PulMap),
            DocIds = maps:keys(DocMap),
            DB = xqldb_db:database(DbPid),
            NewPuts =
                [begin
                    Upds = maps:get(DocId, DocMap),
                    Root = xqldb_nodes:get_single_node(DB, DocId, []),
                    MemDoc = xqldb_nodes:deep_copy_node(Root),
                    case do_updates(MemDoc, Upds) of
                        [] -> % complete doc delete
                            xqldb_path_table:maybe_delete_doc_ref(DB, DocId),
                            {DocName, _OldStamp} = DocId,
                            _ = xqldb_path_table:delete(DB, DocName),
                            [];
                        Frank ->
                            MemNode = xqerl_node:contruct(Ctx#{updating => true}, Frank),
                            DocUri = xqldb_nodes:document_uri(Root),
                            {_DbUri,DocName} = xqldb_uri:split_uri(DocUri),
                            Stamp = erlang:system_time(),
                            %% XXX make this work
                            _ = xqldb_sax:parse_node(DB, MemNode, DocName, Stamp),
                            xqldb_path_table:insert(DB, {DocName, xml, Stamp}),
                            xqldb_path_table:maybe_delete_doc_ref(DB, DocId),
                            %_ = xqldb_path_table:delete(Paths, {DocUri, xml, DocPos}),
                            in_put_list(Frank, Puts, {DbPid, DocId})
                    end
                 end
                || DocId <- DocIds],
            NewPuts
        end,
    NewPuts1 = 
        case catch lists:flatten(lists:map(UFun, DBs)) of
            % duplicate attributes
            ?ERROR_MATCH(<<"XQDY0025">>) ->
                ?err('XUDY0021');
            #xqError{} = E ->
                throw(E);
            {error, unknown_namespace} ->
                ?err('XUDY0023');
            [] ->
                [];
            Puts0 when is_list(Puts0) ->
                Puts0;
            O ->
                %?dbg("O",O),
                O
        end,
    PutFun = fun({put, PNode, PUri, _Params}) -> %TODO use Params
                    ok = do_put(PNode, PUri)
             end,
    _ = lists:foreach(PutFun, merge_puts(Puts, NewPuts1)),
    locks:end_transaction(Agent),
    ok.

merge_puts(OldPuts, NewPuts) ->
    F = fun({_,_,U,_} = P, Acc) ->
               lists:keyreplace(U, 3, Acc, P)
        end,
    lists:foldl(F, OldPuts, NewPuts).

in_put_list([Frank], Puts, OldId) -> in_put_list(Frank, Puts, OldId);
in_put_list(#{id := {Ref, _Pos}} = Frank, [{put, #{id := {OPid, ODoc, OPos}}, U, O}|_], {OPid, ODoc}) ->
    case do_find_node({Ref, OPos}, Frank) of
        [] ->
            [];
        List ->
            [{put, N, U, O} || N <- List]
    end;
in_put_list(#{id := {Ref, _Pos}} = Frank, [{put, #{id := {ORef, OPos}}, U, O}|_], ORef) ->
    case do_find_node({Ref, OPos}, Frank) of
        [] ->
            [];
        List ->
            [{put, N, U, O} || N <- List]
    end;
in_put_list(Frank, [_|Puts], Id) ->
    in_put_list(Frank, Puts, Id);
in_put_list(_, [], _) -> [].


% applies updates to in-memory nodes from copy-modify statement
applyUpdates(Ctx, #{put := Puts} = PulMap, Vars) ->
    _ = [?err('XUDY0037') || _ <- Puts],
    Refs = [put|[element(1,id(V)) || V <- Vars]],
    Keys = maps:keys(PulMap),
    AllLoc = lists:all(fun(Key) ->
                              lists:member(Key, Refs)
                       end, Keys),
    if 
        not AllLoc ->
            ?err('XUDY0014'); % non-local update
        true ->
            F = fun(V) ->
                        Id = id(V),
                        Ref = element(1,Id),
                        case maps:find(Ref, PulMap) of
                            error ->
                                % ensure a copy of the node even when no update
                                % this will rebuild namespace scopes
                                xqerl_node:contruct(Ctx#{updating => true}, V);
                            {ok, Val} ->
                                Frank = do_updates(V, Val),
                                xqerl_node:contruct(Ctx#{updating => true}, Frank)
                        end
                end,
            lists:map(F, Vars)
    end.

%% {insertInto, {Db, Pos}, Val}
%% {insertAttributes, {Db, Pos}, Val}
%% {replaceValue, {Db, Pos}, Val} * 
%% {rename, {Db, Pos}, Val} * 
%% {insertBefore, {Db, Pos}, Val}
%% {insertAfter, {Db, Pos}, Val}
%% {insertIntoAsFirst, {Db, Pos}, Val}
%% {insertIntoAsLast, {Db, Pos}, Val}
%% {replaceNode, {Db, Pos}, Val}
%% {replaceElementContent, {Db, Pos}, Val}
%% {delete, {Db, Pos}}
%% {put, Node, Uri, Params}

do_updates(V0, UpdateMap) ->
    V1 = local_insert_into(V0, maps:get(insertInto, UpdateMap, [])),
    V2 = local_insert_attributes(V1, maps:get(insertAttributes, UpdateMap, [])),
    V3 = local_replace_value(V2, maps:get(replaceValue, UpdateMap, [])),
    V4 = local_rename(V3, maps:get(rename, UpdateMap, [])),
    V5 = local_insert_before(V4, maps:get(insertBefore, UpdateMap, [])),
    V6 = local_insert_after(V5, maps:get(insertAfter, UpdateMap, [])),
    V7 = local_insert_into_as_first(V6, maps:get(insertIntoAsFirst, UpdateMap, [])),
    V8 = local_insert_into_as_last(V7, maps:get(insertIntoAsLast, UpdateMap, [])),
    V9 = local_replace_node(V8, maps:get(replaceNode, UpdateMap, [])),
    V10 = local_replace_element_content(V9, maps:get(replaceElementContent, UpdateMap, [])),
    V11 = local_delete(V10, maps:get(delete, UpdateMap, [])),
    V12 = expand_children(V11),
    ok = check_attributes(V12),
    V12.

local_insert_into(Node, []) -> Node;
local_insert_into(Node, Upds) -> 
    {Ref,_} = id(Node),
    Repl = fun(#{ch := Ch} = N, Val) when is_list(Val) ->
                  N#{ch := Ch ++ Val};
              (#{ch := Ch} = N, Val) ->
                  N#{ch := Ch ++ [Val]};
              (N, Val) when is_list(Val) ->
                  N#{ch => Val};
              (N, Val) ->
                  N#{ch => [Val]}
           end,
    F = fun({Pos, New}, AccNode) ->
               do_replace_node({Ref,Pos}, AccNode, Repl, New)
        end,
    lists:foldl(F, Node, Upds).

local_insert_attributes(Node, []) -> Node;
local_insert_attributes(Node, Upds) -> 
    {Ref,_} = id(Node),
    Repl = fun(#{at := Ch} = N, Val) when is_list(Val) ->
                  N#{at := Val ++ Ch};
              (#{at := Ch} = N, Val) ->
                  N#{at := [Val|Ch]};
              (N, Val) when is_list(Val) ->
                  N#{at => Val};
              (N, Val) ->
                  N#{at => [Val]}
           end,
    F = fun({Pos, New}, AccNode) ->
               do_replace_node({Ref,Pos}, AccNode, Repl, New)
        end,
    lists:foldl(F, Node, Upds).

local_replace_value(Node, []) -> Node;
local_replace_value(Node, Upds) -> 
    {Ref,_} = id(Node),
    Repl = fun(N, Val) ->
                  N#{sv => xqerl_types:string_value(Val)}
           end,
    F = fun({Pos, New}, AccNode) ->
               do_replace_node({Ref,Pos}, AccNode, Repl, New)
        end,
    lists:foldl(F, Node, Upds).

local_rename(Node, []) -> Node;
local_rename(Node, Upds) ->
    {Ref,_} = id(Node),
    Repl = fun(N, Val) -> N#{nn => Val} end,
    F = fun({Pos, New}, AccNode) ->
               do_replace_node({Ref,Pos}, AccNode, Repl, New)
        end,
    lists:foldl(F, Node, Upds).

local_insert_before(Node, []) -> Node;
local_insert_before(Node, Upds) ->
    {Ref,_} = id(Node),
    F = fun({Pos, New}, AccNode) ->
               do_place_node({Ref,Pos}, AccNode, before, New)
        end,
    lists:foldr(F, Node, Upds).

local_insert_after(Node, []) -> Node;
local_insert_after(Node, Upds) ->
    {Ref,_} = id(Node),
    F = fun({Pos, New}, AccNode) ->
               do_place_node({Ref,Pos}, AccNode, 'after', New)
        end,
    lists:foldr(F, Node, Upds).

local_insert_into_as_first(Node, []) -> Node;
local_insert_into_as_first(Node, Upds) ->
    {Ref,_} = id(Node),
    Repl = fun(#{ch := Ch} = N, Val) when is_list(Val) ->
                  N#{ch := Val ++ Ch};
              (#{ch := Ch} = N, Val) ->
                  N#{ch := [Val|Ch]};
              (N, Val) when is_list(Val) ->
                  N#{ch => Val};
              (N, Val) ->
                  N#{ch => [Val]}
           end,
    F = fun({Pos, New}, AccNode) ->
               do_replace_node({Ref,Pos}, AccNode, Repl, New)
        end,
    lists:foldr(F, Node, Upds).

local_insert_into_as_last(Node, []) -> Node;
local_insert_into_as_last(Node, Upds) ->
    {Ref,_} = id(Node),
    Repl = fun(#{ch := Ch} = N, Val) when is_list(Val) ->
                  N#{ch := Ch ++ Val};
              (#{ch := Ch} = N, Val) ->
                  N#{ch := Ch ++ [Val]};
              (N, Val) when is_list(Val) ->
                  N#{ch => Val};
              (N, Val) ->
                  N#{ch => [Val]}
           end,
    F = fun({Pos, New}, AccNode) ->
               do_replace_node({Ref,Pos}, AccNode, Repl, New)
        end,
    lists:foldl(F, Node, Upds).

local_replace_node(Node, []) -> Node;
local_replace_node(Node, Upds) ->
    {Ref,_} = id(Node),
    Repl = fun(_, Val) when is_list(Val) -> Val end,
    F = fun({Pos, New}, AccNode) ->
               do_replace_node({Ref,Pos}, AccNode, Repl, New)
        end,
    lists:foldl(F, Node, Upds).

local_replace_element_content(Node, []) -> Node;
local_replace_element_content(Node, Upds) -> 
    {Ref,_} = id(Node),
    Repl = fun(N, Val) when is_list(Val) ->
                  N#{ch => Val};
              (N, Val) ->
                  N#{ch => [Val]}
           end,
    F = fun({Pos, New}, AccNode) ->
               do_replace_node({Ref,Pos}, AccNode, Repl, New)
        end,
    lists:foldl(F, Node, Upds).

local_delete(Node, []) -> Node;
local_delete(Node, Upds) ->
    {Ref,_} = id(Node),
    F = fun({Pos, _}, AccNode) ->
               do_delete_node({Ref,Pos}, AccNode)
        end,
    lists:foldl(F, Node, Upds).

%% ====================================================================
%% Internal functions
%% ====================================================================

check_rename([], _Content) -> ?err('XUDY0027');
check_rename([Target], Content) -> check_rename(Target, Content);
check_rename(Target, [Content]) -> check_rename(Target, Content);
check_rename(Target, Content) -> 
    ok = check_rename_target(Target),
    {rename, id(Target), Content}.

check_rename_target(#{nk := element}) -> ok;
check_rename_target(#{nk := attribute}) -> ok;
check_rename_target(#{nk := 'processing-instruction'}) -> ok;
check_rename_target(_) -> ?err('XUTY0012').

check_delete([#{nk := _} = H|T]) ->
    case xqldb_xpath:parent_node(H, {[]}) of
        %% nodes without parent (such as document) cannot be deleted this way.
        %% TODO add DB module to delete nodes completely.
        [] ->
            check_delete(T);
        _ ->
            [id(H)|check_delete(T)]
    end;
check_delete([_|_]) -> ?err('XUTY0007');
check_delete([]) -> [];
check_delete(L) -> check_delete([L]).

check_replace_value([], _Replacement) -> ?err('XUDY0027');
check_replace_value(Target, [Value]) ->
    check_replace_value(Target, Value);
check_replace_value(Target, Value) ->
    Target1 = check_replace_value_target(Target),
    Target2 = id(Target1),
    case xqldb_mem_nodes:node_kind(Target1) of
        element ->
            {replaceElementContent, Target2, Value};
        Kind ->
            StringValue = xqerl_types:string_value(Value),
            ok = check_string_value(Kind, StringValue),
            {replaceValue, Target2, StringValue}
    end.

check_string_value(comment, StringValue) ->
    double_hyphen(StringValue);
check_string_value('processing-instruction', StringValue) ->
    qgt(StringValue);
check_string_value(_, _) -> ok.

qgt(<<$?, $>, _/binary>>) -> ?err('XQDY0026');
qgt(<<_, Rest/binary>>) -> qgt(Rest);
qgt(<<>>) -> ok.

double_hyphen(<<$-, $-, _/binary>>) -> ?err('XQDY0072');
double_hyphen(<<$->>) -> ?err('XQDY0072');
double_hyphen(<<_, Rest/binary>>) ->
    double_hyphen(Rest);
double_hyphen(<<>>) -> ok.

check_replace_node([], _Replacement) -> ?err('XUDY0027');
check_replace_node(Target, Replacement) -> 
    Repl1 = normalize_insertion_sequence(Replacement),
    Target0 = check_replace_target(Target),
    Target1 = id(Target0),
    case xqldb_mem_nodes:node_kind(Target0) of
        attribute ->
            case all_att(Repl1) of
                true ->
                    {replaceNode, Target1, Repl1}; % TODO namespace conflicts
                false ->
                    ?err('XUTY0011')
            end;
        _ ->
            case all_not_att(Repl1) of
                true ->
                    {replaceNode, Target1, Repl1}; % TODO namespace conflicts
                false ->
                    ?err('XUTY0010')
            end
    end.

check_replace_value_target([Target]) ->
    check_replace_value_target(Target);
check_replace_value_target(#{nk := document}) -> ?err('XUTY0008');
check_replace_value_target(#{nk := _} = Target) -> Target;
check_replace_value_target(_) -> ?err('XUTY0008').

check_replace_target([Target]) ->
    check_replace_target(Target);
check_replace_target(#{nk := document}) -> ?err('XUTY0008');
check_replace_target(#{nk := _} = Target) ->
    case xqldb_xpath:parent_node(Target, {[]}) of
        [] ->
            ?err('XUDY0009');
        _ ->
            Target
    end;
check_replace_target(_) -> ?err('XUTY0008').

all_not_att([#{nk := attribute}|_]) -> false;
all_not_att([#{nk := _}|T]) ->
    all_not_att(T);
all_not_att([]) -> true.

all_att([#{nk := attribute}|T]) -> 
    all_att(T);
all_att([#{nk := _}|_]) -> false;
all_att([]) -> true.


check_split_insert(_Command, [], _Content) -> ?err('XUDY0027');
% sibling
check_split_insert(Command, [Target], Content) ->
    check_split_insert(Command, Target, Content);
check_split_insert(Command, Target, Content) when Command == 'before';
                                                  Command == 'after' ->
    {AList, CList} = split_insertion_sequence(Content),
    Parent = check_sibling_target_type(Target, AList), % TODO namespace conflicts
    TargetI = id(Target),
    ParentI = id(Parent),
    case {AList, CList} of
        {[], []} -> 
            [];
        {_, []} ->
            {insertAttributes, ParentI, AList};
        {[], _} when Command == before ->
            {insertBefore, TargetI, CList};
        {[], _} when Command == 'after' ->
            {insertAfter, TargetI, CList};
        {_, _} when Command == before ->
            [{insertAttributes, ParentI, AList},
             {insertBefore, TargetI, CList}];
        {_, _} when Command == 'after' ->
            [{insertAttributes, ParentI, AList},
             {insertAfter, TargetI, CList}]
    end;
% into
check_split_insert(Command, Target, Content) ->
    {AList, CList} = split_insertion_sequence(Content),
    ok = check_into_target_type(Target, AList), % TODO namespace conflicts
    TargetI = id(Target),
    case {AList, CList} of
        {[], []} -> 
            [];
        {_, []} ->
            {insertAttributes, TargetI, AList};
        {[], _} when Command == into ->
            {insertInto, TargetI, CList};
        {[], _} when Command == into_first ->
            {insertIntoAsFirst, TargetI, CList};
        {[], _} when Command == into_last ->
            {insertIntoAsLast, TargetI, CList};
        {_, _} when Command == into ->
            [{insertAttributes, TargetI, AList},
             {insertInto, TargetI, CList}];
        {_, _} when Command == into_first ->
            [{insertAttributes, TargetI, AList},
             {insertIntoAsFirst, TargetI, CList}];
        {_, _} when Command == into_last ->
            [{insertAttributes, TargetI, AList},
             {insertIntoAsLast, TargetI, CList}]
    end.

normalize_insertion_sequence([#{nk := document} = H|T]) ->
    xqldb_xpath:child_node(H, {[]}) ++ normalize_insertion_sequence(T);
normalize_insertion_sequence([#{nk := attribute} = H1,
                              #{nk := K2} = H2|T]) when K2 =/= attribute ->
    IsAtt = fun(#{nk := attribute}) -> true;
               (_) -> false
            end,  
    case lists:any(IsAtt, T) of
        true ->
            ?err('XUTY0004');
        false ->
            [H1|normalize_insertion_sequence([H2|T])]
    end;
normalize_insertion_sequence([H|T])
  when is_record(H, xqAtomicValue);
       is_binary(H);
       is_number(H);
       is_atom(H) ->
    H1 = #{nk => text, sv => xqerl_types:string_value(H)},
    [H1|normalize_insertion_sequence(T)];
normalize_insertion_sequence([H|T]) ->
    [H|normalize_insertion_sequence(T)];
normalize_insertion_sequence([]) -> [];
normalize_insertion_sequence(L) -> 
    normalize_insertion_sequence([L]).

split_insertion_sequence(Seq) when is_list(Seq) ->
    Norm = normalize_insertion_sequence(Seq),
    Atts = [Node || #{nk := attribute} = Node <- Norm], 
    {Atts, Norm -- Atts};
split_insertion_sequence(Seq) ->
    split_insertion_sequence([Seq]).

check_into_target_type([A], AList) -> check_into_target_type(A, AList);
check_into_target_type(#{nk := document}, []) -> ok;
check_into_target_type(#{nk := document}, _) -> ?err('XUTY0022');
check_into_target_type(#{nk := element}, _) -> ok;
check_into_target_type(_, _) -> ?err('XUTY0005').


check_sibling_target_type([A], AList) -> check_sibling_target_type(A, AList);
check_sibling_target_type(#{nk := element} = N, AList) -> 
    check_sibling_parent(N, AList);
check_sibling_target_type(#{nk := text} = N, AList) -> 
    check_sibling_parent(N, AList);
check_sibling_target_type(#{nk := comment} = N, AList) -> 
    check_sibling_parent(N, AList);
check_sibling_target_type(#{nk := 'processing-instruction'} = N, AList) -> 
    check_sibling_parent(N, AList);
check_sibling_target_type(_, _) -> ?err('XUTY0006').

check_sibling_parent(Node, AList) ->
    case xqldb_xpath:parent_node(Node, {[]}) of
        [] ->
            ?err('XUDY0029');
        P when AList == [] ->
            P;
        [#{nk := element} = P] ->
            P;
        _ ->
            ?err('XUDY0030')
    end.

if_dupe(List, Err) ->
    case has_duplicates(List) of
        true ->
            ?err(Err);
        false ->
            ok
    end.

has_duplicates(L) ->
    lists:usort(L) =/= lists:sort(L).


id(#{id := Id}) -> Id;
id([#{id := Id}]) -> Id.

loop({Pid, List}) ->
    receive
        Any ->
            case Any of
                done ->
                    Pid ! {self(), List};
                _ ->
                    loop({Pid, [Any|List]})
            end
    end.


do_replace_node({Ref,Pos}, #{id := {Ref, Pos1},
                             at := At1,
                             ch := Ch1} = Node, Fun, New) when Pos1 < Pos ->
    Node#{at := do_replace_node({Ref,Pos}, sort_atts(At1), Fun, New),
          ch := do_replace_node({Ref,Pos}, Ch1, Fun, New)};
do_replace_node({Ref,Pos}, #{id := {Ref, Pos1},
                             ch := Ch1} = Node, Fun, New) when Pos1 < Pos ->
    Node#{ch := do_replace_node({Ref,Pos}, Ch1, Fun, New)};
do_replace_node({Ref,Pos}, #{id := {Ref, Pos1}} = Node, _Fun, _New) when Pos1 > Pos ->
    Node;
do_replace_node({Ref,Pos}, #{id := {Ref, Pos1}} = Node, Fun, New) when Pos1 == Pos ->
    Fun(Node, expand_children(New));
do_replace_node({_,_}, #{id := {_, _}} = Node, _Fun, _New) ->
    Node;
do_replace_node({Ref,Pos}, [#{id := {Ref, Pos1},
                              at := At1,
                              ch := Ch1} = Node|T], Fun, New) when Pos1 < Pos ->
    [Node#{at := do_replace_node({Ref,Pos}, sort_atts(At1), Fun, New),
           ch := do_replace_node({Ref,Pos}, Ch1, Fun, New)}|do_replace_node({Ref,Pos}, T, Fun, New)];
do_replace_node({Ref,Pos}, [#{id := {Ref, Pos1},
                              ch := Ch1} = Node|T], Fun, New) when Pos1 < Pos ->
    [Node#{ch := do_replace_node({Ref,Pos}, Ch1, Fun, New)}|do_replace_node({Ref,Pos}, T, Fun, New)];
do_replace_node({Ref,Pos}, [#{id := {Ref, Pos1}} = Node1|T], Fun, New) when Pos1 < Pos ->
    [Node1|do_replace_node({Ref,Pos}, T, Fun, New)];
do_replace_node({Ref,Pos}, [#{id := {Ref, Pos1}} = Node1|T], _Fun, _New) when Pos1 > Pos ->
    [Node1|T];
do_replace_node({Ref,Pos}, [#{id := {Ref, Pos1}} = Node1|T], Fun, New) when Pos1 == Pos ->
    R = Fun(Node1, expand_children(New)),
    if
        is_list(R) ->
            R ++ T;
        true ->
            [R|T]
    end;
do_replace_node({Ref,Pos}, [Node|T], Fun, New) ->
    [Node|do_replace_node({Ref,Pos}, T, Fun, New)];
do_replace_node(_, [], _Fun, _New) -> 
    [].

do_place_node({Ref,Pos}, #{id := {Ref, Pos1},
                           at := At1,
                           ch := Ch1} = Node, Fun, New) when Pos1 < Pos ->
    Node#{at := do_place_node({Ref,Pos}, sort_atts(At1), Fun, New),
          ch := do_place_node({Ref,Pos}, Ch1, Fun, New)};
do_place_node({Ref,Pos}, #{id := {Ref, Pos1},
                           ch := Ch1} = Node, Fun, New) when Pos1 < Pos ->
    Node#{ch := do_place_node({Ref,Pos}, Ch1, Fun, New)};
do_place_node({Ref,Pos}, #{id := {Ref, Pos1}} = Node, _Fun, _New) when Pos1 > Pos ->
    Node;
do_place_node({_,_}, #{id := {_, _}} = Node, _Fun, _New) ->
    Node;

do_place_node({Ref,Pos}, [#{id := {Ref, Pos1},
                            at := At1,
                            ch := Ch1} = Node|T], Fun, New) when Pos1 < Pos ->
    [Node#{at := do_place_node({Ref,Pos}, sort_atts(At1), Fun, New),
           ch := do_place_node({Ref,Pos}, Ch1, Fun, New)}|do_place_node({Ref,Pos}, T, Fun, New)];
do_place_node({Ref,Pos}, [#{id := {Ref, Pos1},
                            ch := Ch1} = Node|T], Fun, New) when Pos1 < Pos ->
    [Node#{ch := do_place_node({Ref,Pos}, Ch1, Fun, New)}|do_place_node({Ref,Pos}, T, Fun, New)];
do_place_node({Ref,Pos}, [#{id := {Ref, Pos1}} = Node1|T], Fun, New) when Pos1 < Pos ->
    [Node1|do_place_node({Ref,Pos}, T, Fun, New)];
do_place_node({Ref,Pos}, [#{id := {Ref, Pos1}} = Node1|T], _Fun, _New) when Pos1 > Pos ->
    [Node1|T];
do_place_node({Ref,Pos}, [#{id := {Ref, Pos1}} = Node1|T], Fun, New0) when Pos1 == Pos ->
    New = expand_children(New0),
    case Fun of
        before when is_list(New) ->
            New ++ [Node1|T];
        before ->
            [New|[Node1|T]];
        _ when is_list(New) ->
            [Node1|New] ++ T;
        _ ->
            [Node1,New|T]
    end;
do_place_node({Ref,Pos}, [Node|T], Fun, New) ->
    [Node|do_place_node({Ref,Pos}, T, Fun, New)];
do_place_node(_, [], _Fun, _New) -> [].

do_delete_node({Ref,Pos}, #{id := {Ref, Pos1},
                            at := At1,
                            ch := Ch1} = Node) when Pos1 < Pos ->
    Node#{at := do_delete_node({Ref,Pos}, sort_atts(At1)),
          ch := do_delete_node({Ref,Pos}, Ch1)};
do_delete_node({Ref,Pos}, #{id := {Ref, Pos1},
                             ch := Ch1} = Node) when Pos1 < Pos ->
    Node#{ch := do_delete_node({Ref,Pos}, Ch1)};
do_delete_node({Ref,Pos}, #{id := {Ref, Pos1}} = Node) when Pos1 > Pos ->
    Node;
do_delete_node({Ref,Pos}, #{id := {Ref, Pos1}}) when Pos1 == Pos ->
    [];
do_delete_node({_,_}, #{id := {_, _}} = Node) ->
    Node;
do_delete_node({Ref,Pos}, [#{id := {Ref, Pos1},
                             at := At1,
                             ch := Ch1} = Node|T]) when Pos1 < Pos ->
    [Node#{at := do_delete_node({Ref,Pos}, sort_atts(At1)),
           ch := do_delete_node({Ref,Pos}, Ch1)}|do_delete_node({Ref,Pos}, T)];
do_delete_node({Ref,Pos}, [#{id := {Ref, Pos1},
                             ch := Ch1} = Node|T]) when Pos1 < Pos ->
    [Node#{ch := do_delete_node({Ref,Pos}, Ch1)}|do_delete_node({Ref,Pos}, T)];
do_delete_node({Ref,Pos}, [#{id := {Ref, Pos1}} = Node1|T]) when Pos1 < Pos ->
    [Node1|do_delete_node({Ref,Pos}, T)];
do_delete_node({Ref,Pos}, [#{id := {Ref, Pos1}} = Node1|T]) when Pos1 > Pos ->
    [Node1|T];
do_delete_node({Ref,Pos}, [#{id := {Ref, Pos1}}|T]) when Pos1 == Pos ->
    T;
do_delete_node({Ref,Pos}, [Node|T]) ->
    [Node|do_delete_node({Ref,Pos}, T)];
do_delete_node(_, []) -> [].

do_find_node({Ref,Pos}, #{id := {Ref, Pos1},
                          ch := Ch1}) when Pos1 < Pos ->
    do_find_node({Ref,Pos}, Ch1);
do_find_node({Ref,Pos}, #{id := {Ref, Pos1}}) when Pos1 > Pos ->
    [];
do_find_node({Ref,Pos}, #{id := {Ref, Pos1}} = Node) when Pos1 == Pos ->
    [Node];
do_find_node({_,_}, #{id := {_, _}}) -> [];
do_find_node({Ref,Pos}, [#{id := {Ref, Pos1},
                           ch := Ch1}|T]) when Pos1 < Pos ->
    case do_find_node({Ref,Pos}, Ch1) of
        [] ->
            do_find_node({Ref,Pos}, T);
        N ->
            N
    end;
do_find_node({Ref,Pos}, [#{id := {Ref, Pos1}}|T]) when Pos1 < Pos ->
    do_find_node({Ref,Pos}, T);
do_find_node({Ref,Pos}, [#{id := {Ref, Pos1}}|_]) when Pos1 > Pos ->
    [];
do_find_node({Ref,Pos}, [#{id := {Ref, Pos1}} = N|_]) when Pos1 == Pos ->
    [N];
do_find_node({Ref,Pos}, [_|T]) ->
    do_find_node({Ref,Pos}, T);
do_find_node(_, []) -> [].

expand_children(#{ch := _} = Node) ->
    Ch = xqldb_mem_nodes:children(Node),
    Ch1 = [expand_children(C) || C <- Ch],
    Node#{ch := Ch1};
expand_children(Node) -> Node.

sort_atts(Atts) ->
    Fun = fun(#{id := A}, #{id := B}) -> A =< B end,
    lists:sort(Fun, Atts).

check_attributes(#{at := Ats,
                   ch := Ch}) ->
    ok = check_attributes(Ats),
    _ = [check_attributes(C) || C <- Ch],
    ok;
check_attributes(#{ch := Ch}) ->
    _ = [check_attributes(C) || C <- Ch],
    ok;
check_attributes(#{nk := _}) -> ok;
check_attributes(Ats) ->
    Nms = [Nn || #{nn := Nn} <- Ats],
    Srt = lists:sort(Nms),
    case Srt == lists:usort(Srt) of
        true ->
            ok;
        _ ->
            ?err('XUDY0021')
    end.
