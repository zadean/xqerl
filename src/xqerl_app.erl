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

%% @doc The application.

-module(xqerl_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).
-export([init/0]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    % turn on some logging for now
    logger:set_primary_config(level, debug),
    xqerl_config:normalize(xqerl),
    case xqerl_sup:start_link() of
        {ok, Pid} ->
            _ = logger:add_handlers(xqerl),

            Trace = application:get_env(xqerl, trace_handler, xqerl_trace_h),
            ok = gen_event:add_handler(xqerl_trace_man, Trace, []),

            Events = application:get_env(xqerl, event_handlers, []),
            AddEvent = fun(H) ->
                ok = gen_event:add_handler(xqerl_event_man, H, [])
            end,
            ok = lists:foreach(AddEvent, Events),
            {ok, Pid};
        Error ->
            Error
    end.

stop(_State) ->
    ok.

init() ->
    ok.
