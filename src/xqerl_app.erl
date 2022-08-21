% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

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
