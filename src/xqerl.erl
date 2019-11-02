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

-module(xqerl).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([run/1, 
         run/2,
         compile/1]). 

compile(Filename) ->
    xqerl_code_server:compile(Filename).

run(Mod) -> run(Mod, #{}).

run(Mod, Options) when is_atom(Mod) ->
    try
        Mod:main(Options)
    catch
        _:#xqError{} = E ->
            %?dbg("run",E),
            xqerl_lib:format_stacktrace(E)
    end;
run(#xqError{} = E, _Options) -> E;
run(Str, Options) ->
    OldProcDict = erlang:erase(),
    try
       xqerl_code_server:compile(
         "/xqerl_run" ++
         integer_to_list(erlang:unique_integer()) ++ 
         ".xq", Str, false)
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
        [erlang:put(K, V) || {K,V} <- OldProcDict]
    end.
