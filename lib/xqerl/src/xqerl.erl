%% @author Zack
%% @doc @todo Add description to xqerl.


-module(xqerl).

-define(PRINT,false).
%-define(PRINT,true).

-include("xqerl.hrl").
-include("xqerl_parser.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([run/1]). 
-export([run/2,
         test/1]). 


test(Expression) ->
    {ok, Tokens, _} = erl_scan:string(Expression),    % scan the code into tokens
    {ok, Parsed} = erl_parse:parse_exprs(Tokens),     % parse the tokens into an abstract form
    {value, Result, _} = erl_eval:exprs(Parsed, []),  % evaluate the expression, return the value
    Result.


run(Mod) -> run(Mod, #{}).

run(Mod, Options) when is_atom(Mod) ->
   try
      Mod:main(Options)
   catch
      _:#xqError{} = E:S ->
         ?dbg("run",E),
         E#xqError{additional = xqerl_lib:format_stacktrace(S)};
      _:E:S ->
         ?dbg("run",E),
         ?dbg("run",S),
         {'EXIT',E1} = (catch xqerl_error:error('XPST0003')),
         E1
   end;
run(#xqError{} = E, _Options) -> E;
run(Str, Options) ->
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
      erlang:erase() % TODO only erase stuff added by the execution
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