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
