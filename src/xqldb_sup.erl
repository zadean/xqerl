% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

-module(xqldb_sup).

-behaviour(supervisor).

-export([init/1]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/0]).

start_link() ->
    supervisor:start_link(?MODULE, []).

%% ====================================================================
%% Behavioural functions
%% ====================================================================

init([]) ->
    SupFlags = #{strategy => rest_for_one},
    Server = child_map(worker, xqldb_db_server, []),
    Super = child_map(supervisor, xqldb_db_sup, []),

    {ok, {SupFlags, [Server, Super]}}.

%% ====================================================================
%% Internal functions
%% ====================================================================

child_map(Type, Module, Args) ->
    #{
        id => Module,
        type => Type,
        shutdown => brutal_kill,
        start => {Module, start_link, Args},
        modules => [Module]
    }.
