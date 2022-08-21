% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% @doc

-module(xqerl_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

%% ===================================================================
%% API functions
%% ===================================================================

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%% ===================================================================
%% Supervisor callbacks
%% ===================================================================

init([]) ->
    SupFlags = #{strategy => one_for_one},
    Server = child_map(worker, xqerl_code_server, []),
    DB = child_map(supervisor, xqldb_sup, []),
    Main = child_map(supervisor, xqerl_main_mod_sup, []),
    Trace = event_child_map(xqerl_trace_man),
    Event = event_child_map(xqerl_event_man),
    {ok, {SupFlags, [Server, DB, Main, Trace, Event]}}.

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

event_child_map(Name) ->
    #{
        id => Name,
        start => {gen_event, start_link, [{local, Name}]},
        modules => dynamic
    }.
