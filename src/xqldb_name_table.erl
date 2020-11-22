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

%% A name table is a lookup for each distinct node name (local, prefix or uri).

-module(xqldb_name_table).

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
    insert/2,
    lookup/2,
    match/2,
    id_map/1
]).

-type state() :: #{
    tab => ets:tid(),
    file => file:io_device(),
    next => non_neg_integer()
}.

-type name() :: LocalName :: binary().

%% Open or create a new name table server.
-spec start_link(
    open | new,
    DBDirectory :: file:name_all(),
    TableName :: string()
) -> {ok, Pid :: pid()}.
start_link(new, DBDirectory, TableName) ->
    gen_server:start_link(?MODULE, [new, DBDirectory, TableName], []);
start_link(open, DBDirectory, TableName) ->
    gen_server:start_link(?MODULE, [open, DBDirectory, TableName], []).

%% Shutdown this server.
-spec stop(db()) -> ok.
stop(#{names := Pid}) when is_pid(Pid) ->
    gen_server:stop(Pid).

-spec id_map(db()) -> map().
id_map(#{names := Pid}) when is_pid(Pid) ->
    gen_server:call(Pid, id_map).

%% Returns the ID for a name in the table.
%% If no such value exists, creates a new value in the table and returns its ID.
-spec insert(db(), Value :: name()) -> Id :: non_neg_integer().
insert(#{names := Pid}, Value) when is_pid(Pid) ->
    gen_server:call(Pid, {insert, Value}).

%% Returns the {LocalName,Prefix} value for the given ID,
%% or the ID for the given {LocalName,Prefix} tuple or error.
-spec lookup(db(), Id :: non_neg_integer() | name()) -> Name :: name() | non_neg_integer() | error.
lookup(#{names := Pid}, Id) when is_pid(Pid) ->
    gen_server:call(Pid, {lookup, Id}).

%% Returns a list of IDs for all names that contain the LocalName.
-spec match(db(), LocalName :: binary()) -> [non_neg_integer()].
match(#{names := Pid}, LocalName) when is_pid(Pid) ->
    gen_server:call(Pid, {match, LocalName}).

%% ====================================================================
%% Internal functions
%% ====================================================================

%% Creates a new name table in the DBDirectory in the DB DBName,
%% with the name TableName. Deletes any existing DB file with the same name.
-spec new(
    DBDirectory :: file:name_all(),
    TableName :: string()
) -> state().
new(DBDirectory, TableName) when is_binary(DBDirectory) ->
    new(binary_to_list(DBDirectory), TableName);
new(DBDirectory, TableName) ->
    HeapName = filename:absname_join(DBDirectory, TableName ++ ".heap"),
    % new heap
    {ok, HeapFile} = dets:open_file(HeapName, []),
    Table = ets:new(list_to_atom(TableName), [
        public,
        set,
        {read_concurrency, true},
        {write_concurrency, true}
    ]),
    #{
        tab => Table,
        file => HeapFile,
        next => 1
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
    HeapName = filename:absname_join(DBDirectory, TableName ++ ".heap"),
    {ok, HeapFile} = dets:open_file(HeapName, []),
    Table = ets:new(list_to_atom(TableName), [
        public,
        set,
        {read_concurrency, true},
        {write_concurrency, true}
    ]),
    _ = dets:to_ets(HeapFile, Table),
    Nxt = get_next_id(Table),
    #{
        tab => Table,
        next => Nxt,
        file => HeapFile
    }.

get_next_id(Tab) ->
    M = [{{'$1', '_'}, [{is_integer, '$1'}], ['$1']}],
    L = ets:select(Tab, M),
    case L of
        [] -> 1;
        _ -> lists:max(L) + 1
    end.

%% ====================================================================
%% Callbacks
%% ====================================================================

init([new, DBDirectory, TableName]) ->
    State = new(DBDirectory, TableName),
    {ok, State};
init([open, DBDirectory, TableName]) ->
    State = open(DBDirectory, TableName),
    {ok, State}.

terminate(_Reason, #{
    tab := Table,
    file := HeapFile
}) ->
    ok = file:close(HeapFile),
    true = ets:delete(Table),
    ok.

handle_cast(_Request, State) -> {noreply, State}.

handle_call(id_map, _From, #{tab := Table} = State) ->
    Ms = [{{'$1', '$2'}, [], [{{'$1', '$2'}}]}],
    List = ets:select(Table, Ms),
    Reply = maps:from_list(List),
    {reply, Reply, State};
handle_call(tid, _From, #{tab := Table} = State) ->
    {reply, Table, State};
handle_call(
    {insert, Value},
    _From,
    #{
        tab := Table,
        next := Next,
        file := HeapFile
    } = State
) ->
    case ets:insert_new(Table, {Value, Next}) of
        % not already there
        true ->
            true = ets:insert_new(Table, {Next, Value}),
            ok = dets:insert(HeapFile, [{Next, Value}, {Value, Next}]),
            {reply, Next, State#{next := Next + 1}};
        false ->
            [{_, Id}] = ets:lookup(Table, Value),
            {reply, Id, State}
    end;
handle_call({lookup, Id}, _From, #{tab := Table} = State) ->
    case ets:lookup(Table, Id) of
        [{Id, Value}] ->
            {reply, Value, State};
        [] ->
            {reply, error, State}
    end;
handle_call({match, LocalName}, _From, #{tab := Table} = State) ->
    Id = ets:lookup_element(Table, LocalName, 2),
    {reply, Id, State}.

handle_info(_Request, State) -> {noreply, State}.

code_change(_, State, _) -> {ok, State}.
