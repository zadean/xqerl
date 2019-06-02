%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2019 Zachary N. Dean  All Rights Reserved.
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
   Trace = event_child_map(xqerl_trace_man),
   Event = event_child_map(xqerl_event_man),
   
   {ok, {SupFlags, [Server, Trace, Event]}}.

%% ====================================================================
%% Internal functions
%% ====================================================================

child_map(Type, Module, Args) ->
   #{id        => Module,
     type      => Type,
     shutdown  => brutal_kill,
     start     => {Module, start_link, Args},
     modules   => [Module]}.

event_child_map(Name) ->
   #{id        => Name,
     start     => {gen_event, start_link, [{local, Name}]},
     modules   => dynamic}.

