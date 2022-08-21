% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

-module(xqerl).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    run/1,
    run/2,
    compile/1
]).

compile(Filename) ->
    xqerl_code_server:compile(Filename).

run(Mod) -> run(Mod, #{}).

run(Mod, Options) when is_atom(Mod) ->
    OldProcDict = erlang:erase(),
    try
        Mod:main(Options)
    catch
        _:#xqError{} = E ->
            xqerl_lib:format_stacktrace(E)
    after
        _ = erlang:erase(),
        [erlang:put(K, V) || {K, V} <- OldProcDict]
    end;
run(#xqError{} = E, _Options) ->
    E;
run(Str, Options) ->
    OldProcDict = erlang:erase(),
    try
        xqerl_code_server:compile(
            "/xqerl_run" ++
                integer_to_list(erlang:unique_integer()) ++
                ".xq",
            Str,
            false
        )
    of
        #xqError{} = M ->
            M;
        M ->
            run(M, Options)
    catch
        _:#xqError{} = E ->
            xqerl_lib:format_stacktrace(E)
    after
        _ = erlang:erase(),
        [erlang:put(K, V) || {K, V} <- OldProcDict]
    end.
