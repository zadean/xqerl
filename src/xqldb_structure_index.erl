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

%% Structure index holds the structure of all documents combined.
%% Mapping of Unique Path to Path ID / Path ID to Unique Path.
-module(xqldb_structure_index).

-behaviour(gen_server).

-include("xqerl_db.hrl").

-export([
    init/1,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    terminate/2,
    code_change/3
]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    start_link/3,
    stop/1,
    add/2,
    get/2,
    incr_counts/2,
    analyze/1,
    compile_path/2
]).

-type state() :: #{
    'axes' := atom() | ets:tid(),
    'idx' := atom() | ets:tid(),
    'table' := any()
}.

-type xpath() :: [{UriId :: integer(), NameId :: integer()}].

%% Open or create a new structure index server.
-spec start_link(
    open | new,
    DBDirectory :: file:name_all(),
    {DBName :: file:name_all(), TableName :: string()}
) -> {ok, Pid :: pid()}.
start_link(new, DBDirectory, TableName) ->
    gen_server:start_link(?MODULE, [new, DBDirectory, TableName], []);
start_link(open, DBDirectory, TableName) ->
    gen_server:start_link(?MODULE, [open, DBDirectory, TableName], []).

%% Shutdown this server.
-spec stop(db()) -> ok.
stop(#{structure := Pid}) when is_pid(Pid) ->
    gen_server:stop(Pid).

%% Adds Path to DB, returning its ID.
-spec add(db(), Path :: xpath()) -> integer().
add(#{structure := Pid}, Path) when is_pid(Pid) ->
    gen_server:call(Pid, {add, Path}).

%% Returns all paths beginning with Pattern.
-spec get(db(), [{integer(), integer()}]) -> [{integer(), Path :: xpath()}].
get(#{structure := Pid}, Pattern) when is_pid(Pid) ->
    gen_server:call(Pid, {get, Pattern}).

%% Adds usage counts to Paths.
-spec incr_counts(db(), PathCounts :: list({integer(), integer()})) -> ok.
incr_counts(#{structure := Pid}, PathCounts) when is_pid(Pid) ->
    gen_server:cast(Pid, {incr_counts, PathCounts}).

analyze(#{structure := Pid}) when is_pid(Pid) ->
    gen_server:call(Pid, analyze).

compile_path(#{structure := Pid}, Path) when is_pid(Pid) ->
    case check_path(Path) of
        undefined ->
            undefined;
        _ ->
            gen_server:call(Pid, {compile_path, Path})
    end.

%% ====================================================================
%% Internal functions
%% ====================================================================

%% Creates a new structure index in the DBDirectory in the DB DBName.
%% Uses dets.
-spec new(
    DBDirectory :: file:name_all(),
    TableName :: string()
) -> state().
new(DBDirectory, TableName) when is_binary(DBDirectory) ->
    new(binary_to_list(DBDirectory), TableName);
new(DBDirectory, TableName) ->
    HeapName = filename:join(DBDirectory, TableName ++ ".idx"),
    {ok, Tab} = dets:open_file(HeapName, []),
    dets:insert(Tab, [{counter, 0}]),
    ETab = ets:new(?MODULE, [ordered_set]),
    AxesTab = ets:new(axes, [bag]),
    #{
        idx => ETab,
        axes => AxesTab,
        table => Tab
    }.

%% Opens an existing name table in the DBDirectory in the DB DBName,
%% with the name TableName.
-spec open(
    DBDirectory :: file:name_all(),
    TableName :: string()
) -> state().
open(DBDirectory, TableName) when is_binary(DBDirectory) ->
    open(binary_to_list(DBDirectory), TableName);
open(DBDirectory, TableName) ->
    HeapName = filename:join(DBDirectory, TableName ++ ".idx"),
    {ok, Tab} = dets:open_file(HeapName, []),
    ETab = ets:new(?MODULE, [ordered_set]),
    AxesTab = ets:new(axes, [bag]),
    dets:to_ets(Tab, ETab),
    % now load the axes table
    Fold = fun
        ({Path, Id}, _) when is_integer(Id), is_list(Path) ->
            add_axes(Id, Path, AxesTab, ETab);
        (_, _) ->
            ok
    end,
    ets:foldl(Fold, [], ETab),
    #{
        idx => ETab,
        axes => AxesTab,
        table => Tab
    }.

traverse_prefix(Tab, Pattern) when is_list(Pattern) ->
    MPattern = Pattern ++ ['_'],
    MatchSpec = [
        {{Pattern, '_'}, [], ['$_']},
        {{MPattern, '_'}, [], ['$_']}
    ],
    ets:select(Tab, MatchSpec);
traverse_prefix(Tab, Key) when is_integer(Key) ->
    [{Key, OPattern}] = ets:lookup(Tab, Key),
    MPattern = OPattern ++ ['_'],
    MatchSpec = [
        {{MPattern, '_'}, [], ['$_']},
        {{'$1', '$2'}, [{'==', '$1', Key}], [{{'$2', '$1'}}]}
    ],
    ets:select(Tab, MatchSpec);
traverse_prefix(Tab, all) ->
    MatchSpec = [{{'$1', '$2'}, [{is_list, '$1'}], [{{'$1', '$2'}}]}],
    ets:select(Tab, MatchSpec).

increase_counters([{PathId, Incr} | T], Dets, Ets) ->
    _ = dets:update_counter(Dets, PathId, {3, Incr}),
    _ = ets:update_counter(Ets, PathId, {3, Incr}),
    increase_counters(T, Dets, Ets);
increase_counters([], _, _) ->
    ok.

% given an ets table with {id, path_list, count} analyze each path for
% cost by axis.

% returns {Path, Id, Children} for roots
analyze_cardinality(Tab) ->
    Roots = get_roots(Tab),
    Tree = [
        {Parent, Id, recurse_children(Tab, Parent)}
     || {Parent, Id} <- Roots
    ],
    CostTab = set_costs(Tree, Tab),
    divide_costs(CostTab, Tab).

recurse_children(Tab, Parent) ->
    Children = get_children(Tab, Parent),
    [{Child, Id, recurse_children(Tab, Child)} || {Child, Id} <- Children].

% returns {Path, Id} for roots
get_roots(Tab) ->
    MS = [{{['$1'], '$2'}, [], [{{['$1'], '$2'}}]}],
    ets:select(Tab, MS).

% returns {Path, Id} for roots
get_children(Tab, Parent) ->
    Pattern = Parent ++ ['_'],
    MS = [{{Pattern, '_'}, [], ['$_']}],
    ets:select(Tab, MS).

get_count(Tab, Id) ->
    [[Cnt]] = ets:match(Tab, {Id, '_', '$1'}),
    Cnt.

add_cost(L, A, R, V, Costs) ->
    ets:update_counter(Costs, {L, A, R}, V, {{L, A, R}, V}).

%% first get all root nodes
% then recursively look up children
% each time, adding ID to the stack and adding the cost

% {{ LHS id, axis, RHS name }, SumCost} use this as summary then calculate cost
% Cost == child count / parent (ancestor) count
% sibling is sum of all children
set_costs(Tree, Tab) ->
    Costs = ets:new(costs, []),
    F = fun(Root) ->
        set_costs(Root, [], Tab, Costs)
    end,
    _ = lists:foreach(F, Tree),
    Costs.

set_costs({_, Id, Children}, Stack, Tab, Costs) ->
    ChildNameCosts = [
        {lists:last(L), get_count(Tab, I)}
     || {L, I, _} <- Children
    ],
    % set child cost
    _ = [
        begin
            add_cost(Id, child, Nm, Ct, Costs),
            add_cost(Id, child, any, Ct, Costs)
        end
     || {Nm, Ct} <- ChildNameCosts
    ],
    % set desc cost
    _ = [
        begin
            add_cost(I, desc, Nm, Ct, Costs),
            add_cost(I, desc, any, Ct, Costs)
        end
     || {Nm, Ct} <- ChildNameCosts,
        I <- Stack
    ],
    % now do the children
    _ = [set_costs(Child, [Id | Stack], Tab, Costs) || Child <- Children],
    ok.

divide_costs(CostTab, Tab) ->
    Fold = fun({{Id, _, _} = K, C}, _) ->
        PC = get_count(Tab, Id),
        NewC = C / PC,
        ets:insert(CostTab, {K, NewC})
    end,
    ets:foldl(Fold, true, CostTab),
    ok.

%% ====================================================================
%% Callbacks
%% ====================================================================

init([new, DBDirectory, TableName]) ->
    State = new(DBDirectory, TableName),
    {ok, State};
init([open, DBDirectory, TableName]) ->
    State = open(DBDirectory, TableName),
    {ok, State}.

terminate(_Reason, #{table := Name} = _State) ->
    ok = dets:close(Name),
    ok.

handle_cast(
    {incr_counts, PathCounts},
    #{
        idx := Ets,
        table := Dets
    } = State
) ->
    %% {incr_counts, PathCounts}
    increase_counters(PathCounts, Dets, Ets),
    {noreply, State};
handle_cast(_Request, State) ->
    {noreply, State}.

handle_call({compile_path, Path}, _From, #{axes := AxesTab} = State) ->
    %% XXX 3
    Reply = do_compile_path(Path, AxesTab),
    {reply, Reply, State};
handle_call(analyze, _From, #{idx := Idx} = State) ->
    {reply, analyze_cardinality(Idx), State};
handle_call({get, Pattern}, _From, #{idx := Idx} = State) ->
    {reply, traverse_prefix(Idx, Pattern), State};
handle_call(
    {add, Value},
    _From,
    #{
        idx := Idx,
        axes := AxesTab,
        table := Name
    } = State
) ->
    Reply =
        case ets:lookup(Idx, Value) of
            [] ->
                NextId = dets:update_counter(Name, counter, 1),
                ok = dets:insert(Name, [{NextId, Value, 0}, {Value, NextId}]),
                true = ets:insert(Idx, [{NextId, Value, 0}, {Value, NextId}]),
                _ = add_axes(NextId, Value, AxesTab, Idx),
                NextId;
            [{_, Id}] ->
                Id
        end,
    {reply, Reply, State}.

handle_info(_Request, State) -> {noreply, State}.

code_change(_, State, _) -> {ok, State}.

%% TODO process
% foreach path,
% get all ancestor, descendant, sibling paths
% make a table of all these connections from path_id to path_id
% using axis X each named and unnamed, with node kind or no kind,
%  all matching 'node' except attribute
% this should run each time a new path is inserted.

% sibling axis is done after all else is finished. taken from parent axis
% for each path. all with same parent are siblings

% could add cost to each of these... that might help, but later

%% request
% requests can come in with a path id and list of axes.
% returns each path id that could answer path, or 'none' if using
% some non-existent path, or 'undefined' if using a crazy axis some place.

% crazy axes are preceding, following.
% following/preceding-sibling are just 'sibling'.
% the following/preceding part of sibling has to be done by node id.

add_axes(PathId, [], AxesTab, _) ->
    % ensure document self axis
    Slf = {PathId, self, [], PathId},
    ets:insert(AxesTab, Slf);
add_axes(PathId, Path, AxesTab, IdxTab) ->
    AllPaths = paths_to_root(Path, [PathId], IdxTab),
    Last = lists:last(Path),
    Axes = [Last],
    IsAtt = is_attribute(Last),
    case AllPaths of
        [PathId | [{ParentId, ParN} | _] = Anss] when IsAtt ->
            Slf = {PathId, self, Last, PathId},
            Par = {PathId, parent, ParN, ParentId},
            Anc = [{PathId, ancestor, AnscN, AnscId} || {AnscId, AnscN} <- Anss],
            Chd = [{ParentId, attribute, Ax, PathId} || Ax <- Axes],
            ToAdd = [Slf, Par | Anc ++ Chd],
            ets:insert(AxesTab, ToAdd);
        [PathId | [{ParentId, ParN} | _] = Anss] ->
            Slf = {PathId, self, Last, PathId},
            Par = {PathId, parent, ParN, ParentId},
            Anc = [{PathId, ancestor, AnscN, AnscId} || {AnscId, AnscN} <- Anss],
            % no document text
            Chd =
                case ParN of
                    [] when Last == text ->
                        [];
                    _ ->
                        [{ParentId, child, Ax, PathId} || Ax <- Axes]
                end,
            % no document text
            Des =
                case ParN of
                    [] when Last == text ->
                        [];
                    _ ->
                        [
                            {AnscId, descendant, Ax, PathId}
                         || Ax <- Axes,
                            {AnscId, _} <- Anss
                        ]
                end,
            ToAdd = [Slf, Par | Anc ++ Chd ++ Des],
            ets:insert(AxesTab, ToAdd),
            expand_siblings(ParentId, AxesTab)
    end,
    ok.

paths_to_root([], Acc, _) ->
    lists:reverse(Acc);
paths_to_root(Path, Acc, Idx) ->
    Next = lists:droplast(Path),
    [{_, Id}] = ets:lookup(Idx, Next),
    Last = maybe_last(Next),
    paths_to_root(Next, [{Id, Last} | Acc], Idx).

maybe_last([]) -> [];
maybe_last(List) -> lists:last(List).

is_attribute({att, _, _}) -> true;
is_attribute(_) -> false.

expand_siblings(ParentId, AxesTab) ->
    MS = [{{ParentId, child, '$1', '$2'}, [], [{{'$1', '$2'}}]}],
    Children = ets:select(AxesTab, MS),
    Sibs = [
        {LI, sibling, RN, RI}
     || {_, LI} <- Children,
        {RN, RI} <- Children
    ],
    ets:insert(AxesTab, Sibs).

% compiles a path list into a function that when given a path id
% returns all path ids that the path list can point to.
% A function wrapped around a map
do_compile_path(Path, AxesTab) ->
    case Path of
        [Singleton] ->
            KVs = get_initial(Singleton, AxesTab),
            Map = merge_map_kvs(KVs),
            map_fun(Map);
        [Initial | Rest] ->
            %% XXX 2
            Init = get_initial(Initial, AxesTab),
            KVs = refine_path(Rest, Init, AxesTab),
            Map = merge_map_kvs(KVs),
            map_fun(Map)
    end.

get_initial({Axis, Name}, AxesTab) ->
    Ms = initial_match_spec(Axis, Name),
    %% XXX 1
    Res = ets:select(AxesTab, Ms),
    lists:usort(Res).

refine_path(Rest, Init, AxesTab) ->
    lists:usort(
        [
            {I, L}
         || {I, N} <- Init,
            L <- lists:flatten(refine_path_1(N, Rest, AxesTab))
        ]
    ).

refine_path_1(N, [{Axis, Name}], AxesTab) ->
    Ms = secondary_match_spec(N, Axis, Name),
    ets:select(AxesTab, Ms);
refine_path_1(N, [{Axis, Name} | Rest], AxesTab) ->
    Ms = secondary_match_spec(N, Axis, Name),
    Ns = ets:select(AxesTab, Ms),
    [refine_path_1(Nn, Rest, AxesTab) || Nn <- Ns].

initial_match_spec('ancestor-or-self', {'_', '_'}) -> initial_or_self(ancestor);
initial_match_spec('ancestor-or-self', Name) -> initial_or_self(ancestor, Name);
initial_match_spec('descendant-or-self', {'_', '_'}) -> initial_or_self(descendant);
initial_match_spec('descendant-or-self', Name) -> initial_or_self(descendant, Name);
initial_match_spec('following-sibling', {'_', '_'}) -> initial_sibling();
initial_match_spec('following-sibling', Name) -> initial_sibling(Name);
initial_match_spec('preceding-sibling', {'_', '_'}) -> initial_sibling();
initial_match_spec('preceding-sibling', Name) -> initial_sibling(Name);
initial_match_spec(Axis, {'_', '_'}) -> [initial_axis(Axis)];
initial_match_spec(Axis, Name) -> [initial_axis(Axis, Name)].

initial_axis(Axis, Name) ->
    {{'$1', Axis, Name, '$2'}, [], [{{'$1', '$2'}}]}.

initial_axis(Axis) ->
    {{'$1', Axis, {'$2', '_'}, '$3'}, [{'=/=', '$2', pi}], [{{'$1', '$3'}}]}.

initial_or_self(Axis, Name) ->
    [initial_axis(Axis, Name), {{'$1', self, Name, '$2'}, [], [{{'$1', '$2'}}]}].

initial_or_self(Axis) ->
    [initial_axis(Axis), {{'$1', self, {'$2', '_'}, '$3'}, [{'=/=', '$2', pi}], [{{'$1', '$3'}}]}].

initial_sibling(Name) ->
    [{{'$1', sibling, Name, '$2'}, [], [{{'$1', '$2'}}]}].

initial_sibling() ->
    [{{'$1', sibling, {'$2', '_'}, '$3'}, [{'=/=', '$2', pi}], [{{'$1', '$3'}}]}].

secondary_match_spec(N, 'ancestor-or-self', {'_', '_'}) -> secondary_or_self(N, ancestor);
secondary_match_spec(N, 'ancestor-or-self', Name) -> secondary_or_self(N, ancestor, Name);
secondary_match_spec(N, 'descendant-or-self', {'_', '_'}) -> secondary_or_self(N, descendant);
secondary_match_spec(N, 'descendant-or-self', Name) -> secondary_or_self(N, descendant, Name);
secondary_match_spec(N, 'following-sibling', {'_', '_'}) -> secondary_sibling(N);
secondary_match_spec(N, 'following-sibling', Name) -> secondary_sibling(N, Name);
secondary_match_spec(N, 'preceding-sibling', {'_', '_'}) -> secondary_sibling(N);
secondary_match_spec(N, 'preceding-sibling', Name) -> secondary_sibling(N, Name);
secondary_match_spec(N, Axis, {'_', '_'}) -> [secondary_axis(N, Axis)];
secondary_match_spec(N, Axis, Name) -> [secondary_axis(N, Axis, Name)].

secondary_axis(N, Axis, Name) -> {{N, Axis, Name, '$1'}, [], ['$1']}.

secondary_axis(N, Axis) -> {{N, Axis, {'$1', '_'}, '$2'}, [{'=/=', '$1', pi}], ['$2']}.

secondary_sibling(N, Name) -> [{{N, sibling, Name, '$1'}, [], ['$1']}].

secondary_sibling(N) -> [{{N, sibling, {'$1', '_'}, '$2'}, [{'=/=', '$1', pi}], ['$2']}].

secondary_or_self(N, Axis, Name) ->
    [secondary_axis(N, Axis, Name), {{N, self, Name, '$1'}, [], ['$1']}].

secondary_or_self(N, Axis) ->
    [secondary_axis(N, Axis), {{N, self, {'_', '$1'}, '$2'}, [{'=/=', '$1', pi}], ['$2']}].

% takes a list of {K, V} and returns a merges map of #{K => [Vs]}
merge_map_kvs(KVs) ->
    F = fun({K, V}, Map) ->
        case Map of
            #{K := OVs} ->
                Map#{K := [V | OVs]};
            _ ->
                Map#{K => [V]}
        end
    end,
    lists:foldl(F, #{}, KVs).

% wrap a map in a fun
map_fun(Map) ->
    fun(K) ->
        case Map of
            #{K := V} ->
                V;
            _ ->
                []
        end
    end.

check_path([]) -> [];
check_path([{following, _} | _]) -> undefined;
check_path([{preceding, _} | _]) -> undefined;
check_path([_ | T]) -> check_path(T).
