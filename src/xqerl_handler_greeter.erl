% Copyright (c) 2019-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

-module(xqerl_handler_greeter).
% REST Callbacks
-export([init/2]).
-export([allowed_methods/2]).
-export([content_types_provided/2]).
% Callback Callbacks
-export([greeter_response/2]).

init(Req, Opts) ->
    {cowboy_rest, Req, Opts}.

allowed_methods(Req, State) ->
    {[<<"GET">>], Req, State}.

content_types_provided(Req, State) ->
    {[{<<"text/html">>, greeter_response}], Req, State}.

greeter_response(Req, State) ->
    Reply = gen_server:call(xqerl_main_mod_server, greeter),
    {Reply, Req, State}.
