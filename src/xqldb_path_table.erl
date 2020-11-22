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

%% Path to each document.
%% Table record :
%%  {Name, {xml,  VersionStamp}}
%%  {Name, {item, VersionStamp, {Pos, Len}}}
%%  {Name, {link, VersionStamp, FileName}}
%%  {Name, {res,  VersionStamp, {Pos, Len}}}
%%  {Name, {json, VersionStamp, {Pos, Len}}}

%% VersionStamp is systemtime in microseconds as retreived by this process.
%%  It can be set by insertion or update
%%  This process is always the last thing to be updated.

-module(xqldb_path_table).

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
    start_link/4,
    stop/1,
    uri/1,
    insert/2,
    lookup/2,
    all/1, all/2,
    delete/2,
    delete_all/1,

    maybe_delete_doc_ref/2
]).

% TODO put this value in the config
-define(CLOSE_TIMEOUT, 12000000).

-type state() :: #{
    tab => dets:tab_name(),
    next => non_neg_integer()
}.

%% Open or create a new string table server.
-spec start_link(
    open | new,
    DBDirectory :: file:name_all(),
    TableName :: string(),
    Uri :: binary()
) -> {ok, Pid :: pid()}.
start_link(new, DBDirectory, TableName, Uri) ->
    gen_server:start_link(?MODULE, [new, DBDirectory, TableName, Uri], []);
start_link(open, DBDirectory, TableName, Uri) ->
    gen_server:start_link(?MODULE, [open, DBDirectory, TableName, Uri], []).

%% Shutdown this server.
-spec stop(db()) -> ok | {ok, _}.
stop(#{paths := Pid}) when is_pid(Pid) ->
    gen_server:stop(Pid).

%% Insert new value
-spec uri(db()) -> binary().
uri(#{paths := Pid}) when is_pid(Pid) ->
    gen_server:call(Pid, uri).

%% Insert new value
-spec insert(
    db(),
    {Name :: binary(), Type :: res_type(),
        {Pos :: non_neg_integer(), Size :: non_neg_integer()} | binary()}
    | {Name :: binary(), Type :: res_type(), {Pos :: non_neg_integer(), Size :: non_neg_integer()},
        Stamp :: integer()}
    | {Name :: binary(), xml, Stamp :: integer()}
) -> ok.
insert(#{paths := Pid}, {_, xml, _} = Value) when is_pid(Pid) ->
    gen_server:call(Pid, {insert, Value});
insert(#{paths := Pid}, {_, _, _, _} = Value) when is_pid(Pid) ->
    gen_server:call(Pid, {insert, Value}).

%% Delete all values with Name
-spec delete(db(), Name :: binary()) -> ok.
delete(#{paths := Pid} = DB, Name) when is_pid(Pid), is_binary(Name) ->
    gen_server:call(Pid, {delete, Name, DB}).

%% Delete all values with Name
-spec delete_all(db()) -> ok.
delete_all(#{paths := Pid} = DB) ->
    gen_server:call(Pid, {delete_all, DB}, 60000).

%% Returns record for a given name if any.
-spec lookup(db(), Name) ->
    {xml, VersionStamp}
    | {item, VersionStamp, {Pos, Len}}
    | {link, VersionStamp, FileName}
    | {text, VersionStamp, {Pos, Len}}
    | {raw, VersionStamp, {Pos, Len}}
    | []
when
    VersionStamp :: integer(),
    Name :: binary(),
    Pos :: integer(),
    Len :: integer(),
    FileName :: binary().
lookup(#{paths := Pid}, Req) when is_pid(Pid) ->
    gen_server:call(Pid, {lookup, Req}).

%% Returns all names in the table.
-spec all(db()) ->
    [
        {Name :: binary(), Type :: res_type(), VersionStamp :: integer()}
        | {Name :: binary(), Type :: res_type(), VersionStamp :: integer(),
            {Pos :: non_neg_integer(), Size :: non_neg_integer()} | binary()}
    ].
all(#{paths := Pid}) when is_pid(Pid) ->
    gen_server:call(Pid, all).

%% Returns all names of a given type in the table.
-spec all(db(), Type :: res_type()) ->
    [
        {Name :: binary(), Type :: res_type(), VersionStamp :: integer()}
        | {Name :: binary(), Type :: res_type(), VersionStamp :: integer(),
            {Pos :: non_neg_integer(), Size :: non_neg_integer()} | binary()}
    ].
all(#{paths := Pid}, Type) when is_pid(Pid) ->
    gen_server:call(Pid, {all, Type}).

%% ====================================================================
%% Internal functions
%% ====================================================================

%% Creates a new name table in the DBDirectory
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
    {ok, HeapFile} = dets:open_file(HeapName, [{type, set}]),
    %{ok,HeapFile} = dets:open_file(HeapName, [{type, bag}]),
    #{tab => HeapFile}.

%% Opens an existing name table in the DBDirectory
%% with the name TableName.
-spec open(
    DBDirectory :: file:name_all(),
    TableName :: string()
) -> state().
open(DBDirectory, TableName) when is_binary(DBDirectory) ->
    open(binary_to_list(DBDirectory), TableName);
open(DBDirectory, TableName) ->
    HeapName = filename:absname_join(DBDirectory, TableName ++ ".heap"),
    {ok, HeapFile} = dets:open_file(HeapName),
    #{tab => HeapFile}.

%% ====================================================================
%% Callbacks
%% ====================================================================

init([new, DBDirectory, TableName, Uri]) ->
    State = new(DBDirectory, TableName),
    {ok, State#{uri => Uri}};
init([open, DBDirectory, TableName, Uri]) ->
    State = open(DBDirectory, TableName),
    {ok, State#{uri => Uri}}.

terminate(_Reason, #{tab := HeapFile}) ->
    ok = dets:close(HeapFile),
    ok.

handle_call(uri, _From, #{uri := Uri} = State) ->
    {reply, Uri, State, ?CLOSE_TIMEOUT};
handle_call(
    {insert, {Name, xml, Timestamp}},
    _From,
    #{tab := HeapFile} = State
) ->
    ok = dets:insert(HeapFile, {Name, {xml, Timestamp}}),
    {reply, ok, State, ?CLOSE_TIMEOUT};
handle_call(
    {insert, {Name, Type, Pos, Timestamp}},
    _From,
    #{tab := HeapFile} = State
) ->
    ok = dets:insert(HeapFile, {Name, {Type, Timestamp, Pos}}),
    {reply, ok, State, ?CLOSE_TIMEOUT};
handle_call(all, _From, #{tab := HeapFile} = State) ->
    MatchSpec = [
        {{'$1', {'$2', '$3'}}, [], [{{'$1', '$2', '$3'}}]},
        {{'$1', {'$2', '$3', '$4'}}, [], [{{'$1', '$2', '$3', '$4'}}]}
    ],
    Got = dets:select(HeapFile, MatchSpec),
    {reply, lists:sort(lists:flatten(Got)), State, ?CLOSE_TIMEOUT};
handle_call({all, Type}, _From, #{tab := HeapFile} = State) ->
    MatchSpec = [
        {{'$1', {Type, '$2'}}, [], [{{'$1', Type, '$2'}}]},
        {{'$1', {Type, '$2', '$3'}}, [], [{{'$1', Type, '$2', '$3'}}]}
    ],
    Got = dets:select(HeapFile, MatchSpec),
    {reply, lists:sort(lists:flatten(Got)), State, ?CLOSE_TIMEOUT};
handle_call(
    {delete, Name, DB},
    _From,
    #{tab := HeapFile} = State
) ->
    case dets:lookup(HeapFile, Name) of
        [{Name, {xml, Sp}}] ->
            _ = spawn(fun() ->
                maybe_delete_doc_ref(DB, {Name, Sp})
            end),
            dets:delete(HeapFile, Name);
        [{Name, {Type, _, PosLen}}] when Type == raw; Type == text; Type == item ->
            xqldb_resource_table:delete(DB, PosLen),
            dets:delete(HeapFile, Name);
        % link
        [{Name, _}] ->
            dets:delete(HeapFile, Name);
        % not found
        _ ->
            ok
    end,
    {reply, ok, State, ?CLOSE_TIMEOUT};
handle_call({delete_all, DB}, _From, #{tab := HeapFile} = State) ->
    Delete = fun
        ({Name, {xml, Sp}}) ->
            maybe_delete_doc_ref(DB, {Name, Sp}),
            dets:delete(HeapFile, Name),
            continue;
        ({Name, {Type, _, PosLen}}) when Type == raw; Type == text; Type == item ->
            xqldb_resource_table:delete(DB, PosLen),
            dets:delete(HeapFile, Name),
            continue;
        ({Name, _}) ->
            dets:delete(HeapFile, Name),
            continue
    end,
    dets:traverse(HeapFile, Delete),
    {reply, ok, State, ?CLOSE_TIMEOUT};
handle_call({lookup, Name}, _From, #{tab := HeapFile} = State) ->
    Got =
        case dets:lookup(HeapFile, Name) of
            [{Name, R}] ->
                R;
            [] ->
                []
        end,
    {reply, Got, State, ?CLOSE_TIMEOUT}.

handle_cast(_Request, State) -> {noreply, State}.

handle_info(timeout, #{uri := Uri} = State) ->
    _ = xqldb_db:close(Uri),
    {noreply, State};
handle_info(_Request, State) ->
    {noreply, State}.

code_change(_, State, _) -> {ok, State}.

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Delete procedures.
%% Can/Should be moved out into own area that makes sense.
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
maybe_delete_doc_ref(DB, DocId) ->
    ok = ?INDEX:delete(DB, DocId),
    _ = xqldb_query_server:delete(DB, DocId),
    ok.
