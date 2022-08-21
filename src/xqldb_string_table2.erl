% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% A string table is a lookup for each distinct string and a 32 bit integer.
%% The ID for the string is made up of a hash followed by a pigeonhole
%% offset value in case of collision.
%% When a collision occurs, the offset is increased and appended to the hash.
%% When there is no collision, 0 is appended.
%% Looking up a value by string means getting its hash value, appending
%% min and max (all 1 bits) tails, and then selecting each possible ID until it
%% is found. This means that there is a maximum nr. of collisions possible,
%% so the table should not get too large. (95% max size?)
%% Linear Probing
%% Every value is written to file. This can slow down insert operations.

%% Note: For all intents and purposes, a 'string' is a UTF8 binary value.

-module(xqldb_string_table2).

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
    lookup/2
]).

-type state() :: #{indx_file => file:io_device()}.

%% Open or create a new string table server.
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
-spec stop(db()) -> ok | {ok, _}.
stop(#{texts := Pid}) when is_pid(Pid) ->
    gen_server:stop(Pid).

%% Returns the binary value for the given ID, or error if no such ID exists.
-spec lookup(db(), Id :: binary()) -> Value :: binary() | error.
lookup(#{texts := Pid}, Id) when is_pid(Pid), byte_size(Id) =< 63 ->
    Id;
lookup(#{texts := Pid}, Id) when is_pid(Pid), byte_size(Id) =:= 64 ->
    gen_server:call(Pid, {lookup, Id});
lookup(_, _) ->
    error.

%% Returns the ID for a binary value in the table.
%% If no such value exists, creates a new value in the table and returns its ID.
-spec insert(db(), Value :: binary()) -> Id :: binary().
insert(#{texts := Pid}, Value) when is_pid(Pid), byte_size(Value) =< 63 ->
    Value;
insert(#{texts := Pid}, Value) when is_pid(Pid) ->
    gen_server:call(Pid, {insert, Value}).

%% ====================================================================
%% Internal functions
%% ====================================================================

%% Creates a new string table in the DBDirectory in the DB DBName,
%% with the name TableName. Deletes any existing DB file with the same name.
-spec new(
    DBDirectory :: file:name_all(),
    TableName :: string()
) -> state().
new(DBDirectory, TableName) when is_binary(DBDirectory) ->
    new(binary_to_list(DBDirectory), TableName);
new(DBDirectory, TableName) ->
    init_state(DBDirectory, TableName).

%% Opens an existing string table in the DBDirectory in the DB DBName,
%% with the name TableName.
-spec open(
    DBDirectory :: file:name_all(),
    TableName :: string()
) -> state().
open(DBDirectory, TableName) when is_binary(DBDirectory) ->
    open(binary_to_list(DBDirectory), TableName);
open(DBDirectory, TableName) ->
    init_state(DBDirectory, TableName).

init_state(DBDirectory, TableName) ->
    AbsTabName = filename:join(DBDirectory, TableName),
    ok = filelib:ensure_dir(AbsTabName),
    IndxName = AbsTabName ++ ".heap",
    {ok, IndxFile} = dets:open_file(IndxName, []),
    #{indx_file => IndxFile}.

lookup_string_from_id(Id, IndxFile, ReplyTo) ->
    Reply =
        case dets:lookup(IndxFile, Id) of
            [] ->
                error;
            [{_, String}] ->
                String
        end,
    gen_server:reply(ReplyTo, Reply).

upsert_string_value(String, #{indx_file := IndxFile} = State) ->
    Hash = hash(String),
    case dets:lookup(IndxFile, Hash) of
        [] ->
            dets:insert(IndxFile, {Hash, String}),
            {Hash, State};
        [_] ->
            {Hash, State}
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

terminate(_Reason, #{indx_file := IndxFile}) ->
    dets:close(IndxFile).

handle_cast(_Request, State) -> {noreply, State}.

handle_call({insert, Value}, _From, State) ->
    {Reply, State1} = upsert_string_value(Value, State),
    {reply, Reply, State1};
handle_call({lookup, Id}, From, #{indx_file := IndxFile} = State) ->
    Fun = fun() ->
        lookup_string_from_id(Id, IndxFile, From)
    end,
    _ = erlang:spawn_link(Fun),
    {noreply, State}.

handle_info(_Request, State) -> {noreply, State}.

code_change(_, State, _) -> {ok, State}.

hash(Value) ->
    crypto:hash(sha512, Value).
