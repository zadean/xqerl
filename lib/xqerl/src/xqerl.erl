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
      _:#xqError{} = E:S ->
         ?dbg("run",E),
         ?dbg("run",S),
         E#xqError{additional = xqerl_lib:format_stacktrace(S)};
      _:E:S ->
         ?dbg("run",E),
         ?dbg("run",S),
         {'EXIT',E1} = (catch xqerl_error:error('XPST0003')),
         E1#xqError{additional = xqerl_lib:format_stacktrace(S)}
   end;
run(#xqError{} = E, _Options) -> E;
run(Str, Options) ->
   OldProcDict = erlang:erase(),
   try
      M = xqerl_code_server:compile(
            "/xqerl_run" ++
              integer_to_list(erlang:unique_integer()) ++ 
              ".xq", Str, false),
      run(M, Options)
   catch
      _:#xqError{} = E:StackTrace ->
         E#xqError{additional = xqerl_lib:format_stacktrace(StackTrace)};
      _:E:StackTrace ->
         #xqError{name = 
                    #xqAtomicValue{type = 'xs:QName', 
                                   value =
                                     #qname{namespace = <<"http://www.w3.org/2005/xqt-errors">>,
                                            prefix = <<"err">>, 
                                local_name = <<"XPST0000">>}},
                  description = E,
                  additional = xqerl_lib:format_stacktrace(StackTrace)}
   after
      _ = erlang:erase(),
      [erlang:put(K, V) || {K,V} <- OldProcDict]
   end.

