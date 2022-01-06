%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
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
-module(xqldb_dml).

%% Reading functions set the read locks in the function.
%% Writing functions should only be called from a Pending Update List
%%  where the write locks have already been acquired.

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================

-export([analyze/1]).

-export([
    commit/1,
    select_paths/2,
    select_collection/2, select_collection/3,
    delete_collection/1, delete_collection/2,
    import_from_directory/2,
    insert_doc_as_collection/3
]).

%% Generic
-export([select/2]).

%% XML

% only used in test
-export([delete_doc/1]).

-export([
    exists_doc/2,
    select_doc/1, select_doc/2
]).

-export([
    insert_doc/2,
    insert_doc_node/3
]).

%% Text/Binary Resource - Internal/External
-export([
    exists_resource/1, exists_resource/2,
    select_resource/3
]).

-export([
    insert_resource/2,
    insert_text_resource/3,
    insert_binary_resource/3,
    link_resource/3
]).

%% XDM Values
-export([
    exists_item/2,
    select_item/2
]).

-export([insert_item/2, insert_item/3]).

-define(BIN(Bin), #xqAtomicValue{type = 'xs:base64Binary', value = Bin}).

% used by fn:uri-collection
select_paths(#{trans := Agent}, Uri) ->
    DBs = xqldb_db:databases(Uri),
    ok = read_lock_all(Agent, DBs),
    Fun = fun(DB) ->
        DbUri = xqldb_path_table:uri(DB),
        [
            xqldb_uri:join(DbUri, element(1, Rec))
         || Rec <- xqldb_path_table:all(DB)
        ]
    end,
    lists:flatmap(Fun, DBs).

% used by fn:collection
select_collection(#{trans := Agent} = Ctx, Uri) ->
    DBs = xqldb_db:databases(Uri),
    ok = read_lock_all(Agent, DBs),
    Fun = fun(DB) ->
        [
            normalize_item(Ctx, P, DB)
         || P <- xqldb_path_table:all(DB)
        ]
    end,
    lists:flatten(lists:flatmap(Fun, DBs)).

select_collection(#{trans := Agent} = Ctx, Uri, Type) ->
    DBs = xqldb_db:databases(Uri),
    ok = read_lock_all(Agent, DBs),
    Fun = fun(DB) ->
        [
            normalize_item(Ctx, P, DB)
         || P <- xqldb_path_table:all(DB, Type)
        ]
    end,
    lists:flatten(lists:flatmap(Fun, DBs)).

% used in test suite so create lock agent
delete_collection(Uri) ->
    Agent = new_agent(),
    delete_collection(#{trans => Agent}, Uri),
    locks:end_transaction(Agent).

%% TODO remove Agent and put lock in PUL
delete_collection(#{trans := Agent}, Uri) ->
    DBs = xqldb_db:databases(Uri),
    ok = write_lock_all(Agent, DBs),
    _ = [xqldb_path_table:delete_all(DB) || DB <- DBs],
    ok.

read_lock_all(Agent, DBs) ->
    % read-lock all [DbPid]
    Locks = [
        {[DbPid], read}
     || #{db_name := DbPid} <- DBs
    ],
    ok = locks:lock_objects(Agent, Locks),
    % now wait for the read locks
    await_locks(Agent).

write_lock_all(Agent, DBs) ->
    Locks = [
        {[DbPid, write], write}
     || #{db_name := DbPid} <- DBs
    ],
    ok = locks:lock_objects(Agent, Locks),
    % now wait for the write locks
    await_locks(Agent).

read_lock_one(Agent, #{db_name := DbPid}, Name) ->
    ok = locks:lock_nowait(Agent, [DbPid, Name], read),
    % now wait for the read lock
    await_locks(Agent).

%xqldb_structure_index:incr_counts(?STRUCT_INDEX_P(DB), Counts),
analyze(DocUri) when is_binary(DocUri) ->
    {DbUri, _Name} = xqldb_uri:split_uri(DocUri),
    case xqldb_db:exists(DbUri) of
        false ->
            {error, not_exists};
        true ->
            DB = xqldb_db:database(DbUri),
            xqldb_structure_index:analyze(DB)
    end.

select(#{trans := Agent} = Ctx, DocUri) when is_binary(DocUri) ->
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    case xqldb_db:exists(DbUri) of
        false ->
            {error, not_exists};
        true ->
            DB = xqldb_db:database(DbUri),
            ok = read_lock_one(Agent, DB, Name),
            Rec = xqldb_path_table:lookup(DB, Name),
            normalize_item(Ctx, Rec, Name, DB)
    end.

exists_doc(#{trans := Agent}, DocUri) when is_binary(DocUri) ->
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    case xqldb_db:exists(DbUri) of
        false ->
            false;
        true ->
            DB = xqldb_db:database(DbUri),
            ok = read_lock_one(Agent, DB, Name),
            case xqldb_path_table:lookup(DB, Name) of
                {xml, _} ->
                    true;
                _ ->
                    false
            end
    end.

% called from test suite
select_doc(DocUriL) ->
    DocUri = unicode:characters_to_binary(DocUriL),
    Agent = new_agent(),
    Doc = select_doc(#{trans => Agent}, DocUri),
    locks:end_transaction(Agent),
    Doc.

select_doc(#{trans := Agent}, DocUri) when is_binary(DocUri) ->
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    case xqldb_db:exists(DbUri) of
        false ->
            {error, not_exists};
        true ->
            DB = xqldb_db:database(DbUri),
            ok = read_lock_one(Agent, DB, Name),
            #{db_name := DBId} = DB = xqldb_db:database(DbUri),
            case xqldb_path_table:lookup(DB, Name) of
                {xml, Stamp} ->
                    NodeId = {DBId, {Name, Stamp}, []},
                    xqldb_nodes:get_doc(NodeId);
                _ ->
                    {error, not_exists}
            end
    end.

% called from test suite
insert_doc(DocUriL, Filename) ->
    DocUri = unicode:characters_to_binary(DocUriL),
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    Agent = new_agent(),
    locks:lock_nowait(Agent, [DbUri, Name]),
    ok = await_locks(Agent),
    DB = xqldb_db:database(DbUri),
    case xqldb_path_table:lookup(DB, Name) of
        [] ->
            try
                Stamp = erlang:system_time(),
                ok = xqldb_sax:parse_file(DB, Filename, Name, Stamp),
                xqldb_path_table:insert(DB, {Name, xml, Stamp})
            after
                locks:end_transaction(Agent)
            end;
        _ ->
            locks:end_transaction(Agent)
    end.

% only used in xquts_SUITE
delete_doc(DocUriL) ->
    DocUri = unicode:characters_to_binary(DocUriL),
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    Agent = new_agent(),
    locks:lock_nowait(Agent, [DbUri, Name]),
    ok = await_locks(Agent),
    case xqldb_db:exists(DbUri) of
        false ->
            locks:end_transaction(Agent);
        true ->
            DB = xqldb_db:database(DbUri),
            case xqldb_path_table:lookup(DB, Name) of
                {xml, _} ->
                    commit([{DB, delete, Name}]),
                    locks:end_transaction(Agent);
                _ ->
                    locks:end_transaction(Agent)
            end
    end.

% called from xqerl_update, already in transaction
% return {DB, insert, InsertRec}
insert_doc_node(Node, DB, Name) ->
    Stamp = erlang:system_time(),
    ok = xqldb_sax:parse_node(DB, Node, Name, Stamp),
    {DB, insert, {Name, xml, Stamp}}.

% used in test suite
exists_resource(DocUri) when is_binary(DocUri) ->
    Agent = new_agent(),
    Res = exists_resource(#{trans => Agent}, DocUri),
    locks:end_transaction(Agent),
    Res.

exists_resource(#{trans := Agent}, DocUri) when is_binary(DocUri) ->
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    case xqldb_db:exists(DbUri) of
        false ->
            false;
        true ->
            DB = xqldb_db:database(DbUri),
            ok = read_lock_one(Agent, DB, Name),
            case xqldb_path_table:lookup(DB, Name) of
                {text, _, _} -> true;
                {raw, _, _} -> true;
                {link, _, _} -> true;
                _ -> false
            end
    end.

select_resource(#{trans := Agent} = Ctx, DocUri, Type) when is_binary(DocUri) ->
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    case xqldb_db:exists(DbUri) of
        false ->
            % not locking anything
            try
                get_remote_resource(Ctx, DocUri, Type)
            catch
                _:_ ->
                    {error, not_exists}
            end;
        true ->
            DB = xqldb_db:database(DbUri),
            ok = read_lock_one(Agent, DB, Name),
            case xqldb_path_table:lookup(DB, Name) of
                [] ->
                    try
                        get_remote_resource(Ctx, DocUri, Type)
                    catch
                        _:_ ->
                            {error, not_exists}
                    end;
                Rec ->
                    normalize_item(Ctx, Rec, Name, DB)
            end
    end.

% called from test suite for unparsed-text
insert_resource(DocUri, Bin) ->
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    Agent = new_agent(),
    locks:lock_nowait(Agent, [DbUri, Name]),
    ok = await_locks(Agent),
    DB = xqldb_db:database(DbUri),
    case xqldb_path_table:lookup(DB, Name) of
        [] ->
            try
                Stamp = erlang:system_time(),
                NewPosSize = xqldb_resource_table:insert(DB, Bin),
                xqldb_path_table:insert(DB, {Name, text, NewPosSize, Stamp})
            after
                locks:end_transaction(Agent)
            end;
        _ ->
            locks:end_transaction(Agent)
    end.

% this should be called in a transaction that already has
% write locks on everything.
% Returns {DB, insert, Rec}
insert_text_resource(DB, Name, Bin) ->
    Stamp = erlang:system_time(),
    NewPosSize = xqldb_resource_table:insert(DB, Bin),
    {DB, insert, {Name, text, NewPosSize, Stamp}}.

insert_binary_resource(DB, Name, Bin) ->
    Stamp = erlang:system_time(),
    NewPosSize = xqldb_resource_table:insert(DB, Bin),
    {DB, insert, {Name, raw, NewPosSize, Stamp}}.

% Returns {DB, insert, Rec}
link_resource(DB, Name, Filename) ->
    Stamp = erlang:system_time(),
    {DB, insert, {Name, link, Filename, Stamp}}.

exists_item(#{trans := Agent}, DocUri) when is_binary(DocUri) ->
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    case xqldb_db:exists(DbUri) of
        false ->
            false;
        true ->
            DB = xqldb_db:database(DbUri),
            ok = read_lock_one(Agent, DB, Name),
            case xqldb_path_table:lookup(DB, Name) of
                Term when is_tuple(Term) ->
                    true;
                _ ->
                    false
            end
    end.

select_item(#{trans := Agent}, DocUri) when is_binary(DocUri) ->
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    case xqldb_db:exists(DbUri) of
        false ->
            {error, not_exists};
        true ->
            DB = xqldb_db:database(DbUri),
            ok = read_lock_one(Agent, DB, Name),
            case xqldb_path_table:lookup(DB, Name) of
                {item, _, PosSize} ->
                    Res = xqldb_resource_table:get(DB, PosSize),
                    binary_to_term(Res, [safe]);
                [] ->
                    {error, not_exists}
            end
    end.

create_or_open_db(DbUri) ->
    case xqldb_db:exists(DbUri) of
        false ->
            _ = xqldb_db:open(DbUri),
            xqldb_db:database(DbUri);
        true ->
            xqldb_db:database(DbUri)
    end.

% called from test suite out of transaction
insert_item(DocUri, Item) when is_binary(DocUri) ->
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    DB = create_or_open_db(DbUri),
    Stamp = erlang:system_time(),
    Bin = term_to_binary(Item),
    PosSize = xqldb_resource_table:insert(DB, Bin),
    xqldb_path_table:insert(DB, {Name, item, PosSize, Stamp}).

% Returns {DB, insert, Rec}
insert_item(DB, Name, Item) ->
    Stamp = erlang:system_time(),
    Bin = term_to_binary(Item),
    PosSize = xqldb_resource_table:insert(DB, Bin),
    {DB, insert, {Name, item, PosSize, Stamp}}.

insert_doc_as_collection(DocUri, Filename, BasePath) when is_binary(DocUri) ->
    ReplyTo = self(),
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    DB = create_or_open_db(DbUri),
    InsFun = fun(Events) ->
        F = fun() ->
            Self = self(),
            uuid:new(Self),
            UUID = uuid:get_v4_urandom(),
            NName = uuid:uuid_to_string(UUID, binary_standard),
            Name1 = <<Name/binary, $-, NName/binary>>,
            Stamp = erlang:system_time(),
            xqldb_sax:parse_list(DB, Events, Name1, Stamp),
            _ = xqldb_path_table:insert(DB, {Name1, xml, Stamp}),
            ReplyTo ! {Self, done}
        end,
        erlang:spawn_link(F)
    end,
    Path = path_to_stack(BasePath),
    xqldb_sax:split_parse_file(Filename, InsFun, Path).

import_from_directory(BaseUri, Directory) when is_list(Directory) ->
    Dir = filename:absname(Directory),
    % all relative filenames
    All = filelib:wildcard("**/*.xml", Dir),
    Grouped = group(All, dict:new(), Dir, list_to_binary(BaseUri)),
    Parent = self(),
    Fun = fun(DbUri, Vals, Acc) ->
        DB =
            case xqldb_db:exists(DbUri) of
                true ->
                    xqldb_db:database(DbUri);
                false ->
                    {ok, _, _} = xqldb_db:open(DbUri),
                    xqldb_db:database(DbUri)
            end,
        Fun1 = fun() ->
            {Agent, _} = locks:begin_transaction(),
            % lock entire database
            {ok, _} = locks:lock(Agent, [DbUri]),
            [
                try
                    Stamp = erlang:system_time(),
                    xqldb_sax:parse_file(DB, FN, Name, Stamp),
                    _ = xqldb_path_table:insert(DB, {Name, xml, Stamp}),
                    ok
                catch
                    _:_ -> ok
                end
             || {FN, Name} <- Vals
            ],
            locks:end_transaction(Agent),
            Parent ! {done, self(), DbUri}
        end,
        Child = erlang:spawn(Fun1),
        [{Child, DbUri} | Acc]
    end,
    Uris = dict:fold(Fun, [], Grouped),
    collect_uris(Uris).

%% ====================================================================
%% Internal functions
%% ====================================================================

collect_uris([]) ->
    ok;
collect_uris([{Pid, Uri} | T]) ->
    receive
        {done, Pid, Uri} ->
            collect_uris(T)
    after 600000 ->
        erlang:exit(Pid, timeout),
        collect_uris(T)
    end.

path_to_stack(Path) when is_binary(Path) ->
    path_to_stack(binary_to_list(Path));
path_to_stack(Path) when is_list(Path) ->
    Split = filename:split(Path),
    compile_stack(Split, []).

compile_stack(["/" | Ts], Acc) ->
    compile_stack(Ts, [document | Acc]);
compile_stack([QName | Ts], Acc) ->
    case string:split(QName, ":") of
        [Prefix, Name] ->
            compile_stack(Ts, [{element, Prefix, Name} | Acc]);
        [Name] ->
            compile_stack(Ts, [{element, [], Name} | Acc])
    end;
compile_stack([], Acc) ->
    Acc.

group([], Dict, _, _) ->
    Dict;
group([F | Fs], Dict, FileDir, BaseUri0) ->
    BaseUri =
        case binary:last(BaseUri0) of
            $/ ->
                BaseUri0;
            _ ->
                <<BaseUri0/binary, $/>>
        end,
    FileName = filename:join([FileDir, F]),
    DocUri = xqldb_lib:join_uris(BaseUri, unicode:characters_to_binary(F)),
    {DbUri, Name} = xqldb_uri:split_uri(DocUri),
    Value = {FileName, Name},
    group(Fs, dict:append(DbUri, Value, Dict), FileDir, BaseUri).

get_remote_resource(#{tab := Tab}, Uri, Type) ->
    Key = {remote, Type, Uri},
    case ets:lookup(Tab, Key) of
        [Obj] ->
            Obj;
        [] ->
            Res = xqerl_lib:get_remote_resource(Uri, Type),
            ets:insert(Tab, {Key, Res}),
            Res
    end.

new_agent() ->
    {ok, Agent} = locks_agent:start([
        {abort_on_deadlock, true},
        {link, true}
    ]),
    Agent.

%% Takes a list of {DB, insert | delete, Rec} where Rec is what is to inserted to the path table or
% the name of the Rec by delete.
-spec commit([{map(), insert | delete, tuple() | binary()}]) -> ok.
commit(Transaction) ->
    _ = [
        case InsDel of
            insert ->
                xqldb_path_table:delete(DB, element(1, Rec)),
                xqldb_path_table:insert(DB, Rec);
            delete when Rec =:= all ->
                xqldb_path_table:delete_all(DB);
            delete ->
                % Rec is the Name
                xqldb_path_table:delete(DB, Rec)
        end
     || {DB, InsDel, Rec} <- Transaction
    ],
    ok.

await_locks(Agent) ->
    case locks_agent:transaction_status(Agent) of
        no_locks ->
            ok;
        _ ->
            {have_all_locks, _} = locks:await_all_locks(Agent),
            ok
    end.

normalize_item(_, {xml, Sp}, N, #{db_name := DbPid}) ->
    NodeId = {DbPid, {N, Sp}, []},
    xqldb_nodes:get_doc(NodeId);
normalize_item(Ctx, {A, B, C}, N, DB) ->
    normalize_item(Ctx, {N, A, B, C}, DB).

% given path table record and DB, return the item
normalize_item(_, {N, xml, Sp}, #{db_name := DbPid}) ->
    NodeId = {DbPid, {N, Sp}, []},
    xqldb_nodes:get_doc(NodeId);
normalize_item(#{tab := Tab}, {_, link, _, Filename}, _) ->
    Key = {remote, link, Filename},
    case ets:lookup(Tab, Key) of
        [Obj] ->
            ?BIN(Obj);
        [] ->
            {ok, Bin} = file:read_file(Filename),
            ets:insert(Tab, {Key, Bin}),
            ?BIN(Bin)
    end;
normalize_item(_, {_, text, _, {Pos, Len}}, DB) ->
    xqldb_resource_table:get(DB, {Pos, Len});
normalize_item(_, {_, raw, _, {Pos, Len}}, DB) ->
    Bin = xqldb_resource_table:get(DB, {Pos, Len}),
    ?BIN(Bin);
normalize_item(_, {_, item, _, {Pos, Len}}, DB) ->
    Res = xqldb_resource_table:get(DB, {Pos, Len}),
    binary_to_term(Res, [safe]).
