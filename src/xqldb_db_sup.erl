% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

-module(xqldb_db_sup).

-behaviour(supervisor).

-export([init/1]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    start_link/0,
    start_child/1
]).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

start_child(Uri) ->
    try
        case xqldb_db_server:new(Uri) of
            {error, Err0} ->
                throw(Err0);
            {open, P, Id} ->
                {ok, P, Id};
            {closed, DBDirectory, Id} ->
                {ok, P} = supervisor:start_child(?MODULE, [DBDirectory, Uri]),
                {ok, P, Id};
            {opening, Id} ->
                {error, {already_started, Id}};
            {DBDirectory, Id} ->
                ok = filelib:ensure_dir(DBDirectory ++ "/x"),
                {ok, P} = supervisor:start_child(?MODULE, [DBDirectory, Uri]),
                ok = xqldb_db_server:open(Uri, P),
                {ok, P, Id}
        end
    catch
        _:Err:_ ->
            ok = xqldb_db:close(Uri),
            throw(Err)
    end.

%% ====================================================================
%% Behavioural functions
%% ====================================================================

init([]) ->
    SupFlags = #{strategy => simple_one_for_one},
    ChildSpec = #{
        id => xqldb_db,
        shutdown => brutal_kill,
        type => supervisor,
        start => {xqldb_db, create_or_open, []}
    },
    {ok, {SupFlags, [ChildSpec]}}.

%% ====================================================================
%% Internal functions
%% ====================================================================
