%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2019-2020 Zachary N. Dean  All Rights Reserved.
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

-module(xqerl_trace_h).

-behaviour(gen_event).

-export([init/1, handle_event/2, handle_call/2, handle_info/2, terminate/2, code_change/3]).

%% ====================================================================
%% Behavioural functions
%% ====================================================================

init([]) ->
    {ok, #{}}.

handle_event({trace, Label, Value}, State) ->
    io:format("*** TRACE ***~n~s:~p~n", [Label, Value]),
    {ok, State};
handle_event({trace, Value}, State) ->
    io:format("*** TRACE ***~n~p~n", [Value]),
    {ok, State};
handle_event(Unknown, State) ->
    io:format("*** UNKNOWN TRACE ***~n~p~n", [Unknown]),
    {ok, State}.

handle_call(_Request, State) ->
    Reply = ok,
    {ok, Reply, State}.

handle_info(_Info, State) -> {ok, State}.

terminate(_, _) -> ok.

code_change(_OldVsn, State, _Extra) -> {ok, State}.
