% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

-module(xqldb_resource_table).

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

-export([
    start_link/3,
    stop/1,
    insert/2,
    delete/2,
    get/2
]).

-type state() :: #{
    free_space => [{Len :: non_neg_integer(), Pos :: non_neg_integer()}],
    file => file:io_device(),
    tail => Pos :: non_neg_integer()
}.

%% ====================================================================
%% API functions
%% ====================================================================

start_link(new, DBDirectory, TableName) ->
    gen_server:start_link(?MODULE, [new, DBDirectory, TableName], []);
start_link(open, DBDirectory, TableName) ->
    gen_server:start_link(?MODULE, [open, DBDirectory, TableName], []).

%% Shutdown this server.
-spec stop(db()) -> ok | {ok, _}.
stop(#{resources := Pid}) ->
    gen_server:stop(Pid).

%% returns entire binary for a Resource with PosSize
%% returns Binary
-spec get(db(), {Pos :: non_neg_integer(), Size :: non_neg_integer()}) -> binary().
get(#{resources := Pid}, PosSize) ->
    gen_server:call(Pid, {get_bin, PosSize}).

% inserts new resource as binary, returns Position and Size
-spec insert(db(), binary()) -> {Pos :: non_neg_integer(), Size :: non_neg_integer()}.
insert(#{resources := Pid}, Bin) ->
    gen_server:call(Pid, {insert, Bin}).

% Release binary at {Pos, Len}
-spec delete(db(), {Pos :: non_neg_integer(), Len :: non_neg_integer()}) -> ok.
delete(#{resources := Pid}, PosLen) ->
    gen_server:cast(Pid, {delete, PosLen}).

%% ====================================================================
%% Internal functions
%% ====================================================================

%% Creates a new name table in the DBDirectory
%% with the name TableName. Deletes any existing DB file with the same name.
-spec new(
    DBDirectory :: file:name_all(),
    TableName :: atom()
) -> state().
new(DBDirectory, TableName) when is_binary(DBDirectory) ->
    new(binary_to_list(DBDirectory), TableName);
new(DBDirectory, TableName) ->
    HeapName = filename:absname_join(DBDirectory, atom_to_list(TableName) ++ ".heap"),
    % delete any old data
    {ok, Trunc} = file:open(HeapName, [write]),
    file:close(Trunc),
    % new heap
    {ok, HeapFile} = file_open(HeapName),
    #{
        file => HeapFile,
        free_space => [],
        tail => 0
    }.

%% Opens an existing table in the DBDirectory
%% with the name TableName.
-spec open(
    DBDirectory :: file:name_all(),
    TableName :: atom()
) -> state().
open(DBDirectory, TableName) when is_binary(DBDirectory) ->
    open(binary_to_list(DBDirectory), TableName);
open(DBDirectory, TableName) ->
    HeapName = filename:absname_join(
        DBDirectory,
        atom_to_list(TableName) ++ ".heap"
    ),
    {ok, HeapFile} = file_open(HeapName),
    {ok, EOF} = file:position(HeapFile, eof),
    #{
        file => HeapFile,
        free_space => [],
        tail => EOF
    }.

%% Closes this table.
-spec close(State :: state()) -> ok.
close(#{file := HeapFile}) ->
    ok = file:close(HeapFile),
    ok.

get_first_fit([{Len, _Pos} | T], Len0) when Len < Len0 ->
    get_first_fit(T, Len0);
% fits
get_first_fit([{Len, Pos} | _T], _) ->
    {Len, Pos};
% none
get_first_fit([], _) ->
    [].

file_open(HeapName) ->
    file:open(HeapName, [read, write, binary, read_ahead, delayed_write, raw]).

%% ====================================================================
%% Callbacks
%% ====================================================================

init([new, DBDirectory, TableName]) ->
    State = new(DBDirectory, TableName),
    {ok, State};
init([open, DBDirectory, TableName]) ->
    State = open(DBDirectory, TableName),
    {ok, State}.

terminate(_Reason, State) ->
    close(State).

handle_cast({delete, {Pos, Len}}, #{free_space := Free} = State) ->
    Free1 = lists:sort([{Len, Pos} | Free]),
    {noreply, State#{free_space := Free1}};
handle_cast(_Request, State) ->
    {noreply, State}.

handle_call({get_bin, {Pos, Size}}, _From, #{file := File} = State) ->
    Reply =
        case file:pread(File, Pos, Size) of
            {ok, Data} -> Data;
            eof -> {error, eof};
            Error -> Error
        end,
    {reply, Reply, State};
handle_call(
    {insert, Bin},
    _From,
    #{
        file := File,
        tail := Tail,
        free_space := Fs
    } = State
) ->
    Size = byte_size(Bin),
    case get_first_fit(Fs, Size) of
        [] ->
            ok = file:pwrite(File, Tail, Bin),
            {reply, {Tail, Size}, State#{tail := Tail + Size}};
        {Len, Pos} = LP when Size < Len ->
            Fs1 = Fs -- [LP],
            ok = file:pwrite(File, Pos, Bin),
            New = {Size - Len, Pos + Size},
            Fs2 = lists:sort([New | Fs1]),
            {reply, {Pos, Size}, State#{free_space := Fs2}};
        {_, Pos} = LP ->
            Fs1 = Fs -- [LP],
            ok = file:pwrite(File, Pos, Bin),
            {reply, {Pos, Size}, State#{free_space := Fs1}}
    end.

handle_info(_Request, State) -> {noreply, State}.

code_change(_, State, _) -> {ok, State}.
