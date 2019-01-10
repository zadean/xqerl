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

-define(PRINT,false).
%-define(PRINT,true).

-include("xqerl.hrl").
-include("xqerl_parser.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([run/1, run/2,
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
      Tokens = scan_tokens(Str),
      % init the parse
      _ = xqerl_context:init(parser),
      Tree = parse_tokens(Tokens),
      Static = scan_tree_static(Tree, xqldb_lib:filename_to_uri(filename:absname(<<"xqerl_main.xq">>))),
      #{body := #xqModule{} = X} = Static,
      {_,_,_,_,_,Ret} = scan_tree(Static#{body := X#xqModule{type = expression}}),
      xqerl_context:destroy(Static),
      {value, Res, _} = erl_eval:exprs(Ret, 
                                       [{'Options',Options}],
                                       {value, fun handle_local_function/2}),
      Res
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

% returns Tokens
scan_tokens(Str) ->
   try 
      xqerl_scanner:tokens(Str) 
   of
      Tokens ->
         Tokens
   catch
      _:#xqError{} = E ->
         ?dbg("scan_tokens e",E),
         throw(E);
      _:_:StackTrace ->
         ?dbg("scan_tokens",StackTrace),
         xqerl_error:error('XPST0003')
   end.

% returns Tree
parse_tokens(Tokens) ->
   try 
      {ok, Tree} = xqerl_parser:parse(Tokens),
      Tree
   catch
      _:#xqError{} = E ->
         ?dbg("parse_tokens",E),
         throw(E);
      _:Err:StackTrace ->
         ?dbg("Err",Err),
         ?dbg("Tokens",Tokens),
         ?dbg("parse_tokens e",StackTrace),
         xqerl_error:error('XPST0003')
   end.
   
% returns Abstract
scan_tree(Tree) ->
   try xqerl_abs:scan_mod(Tree) of
      Abstract ->
         Abstract
   catch
      _:#xqError{} = E:StackTrace ->
         ?dbg("scan_tree",E),
         ?dbg("scan_tree",StackTrace),
         throw(E);
      _:E:StackTrace ->
         ?dbg("scan_tree",E),
         ?dbg("scan_tree",StackTrace),
         xqerl_error:error('XPST0003')
   end.

scan_tree_static(Tree,FileName) ->
   try xqerl_static:handle_tree(Tree,FileName) of
      Abstract ->
         Abstract
   catch
      _:#xqError{} = E:StackTrace ->
         ?dbg("scan_tree_static",E),
         ?dbg("scan_tree_static",StackTrace),
         throw(E);
      _:_:StackTrace ->
         ?dbg("scan_tree_static",StackTrace),
         xqerl_error:error('XPST0003')
   end.


handle_local_function(FunctionName, Arguments) ->
    io:format("Local call to ~p with ~p~n", [FunctionName, Arguments]).