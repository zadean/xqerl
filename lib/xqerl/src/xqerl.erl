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
      _:#xqError{} = E ->
         ?dbg("run",E),
         E;
      _:E:S ->
         ?dbg("run",E),
         ?dbg("run",S),
         {'EXIT',E1} = (catch xqerl_error:error('XPST0003')),
         E1
   end;
run(#xqError{} = E, _Options) -> E;
run(Str, Options) ->
   %catch code:purge(xqerl_main),
   %catch code:delete(xqerl_main),
   try
      Tokens = scan_tokens(Str),
%io:format("~p~n",[Tokens]),
      % init the parse
      erlang:put(xquery_id, xqerl_context:init(parser)),
      Tree = parse_tokens(Tokens),
      Static = scan_tree_static(Tree, xqldb_lib:filename_to_uri(filename:absname(<<"xqerl_main.xq">>))),
      #{body := #xqModule{} = X} = Static,
      {_,_,_,_,_,Ret} = scan_tree(Static#{body := X#xqModule{type = expression}}),
%io:format("~p~n",[Tree]),
%io:format("~p~n",["***************************************************"]),
%io:format("~p~n",[maps:get(body, Static)]),
      xqerl_context:destroy(Static),
%io:format("~p~n",[Ret]),
      {value, Res, _} = erl_eval:exprs(Ret, 
                                       [{'Options',Options}],
                                       {value, fun handle_local_function/2}),
%      erlang:erase(),
%io:format("~p~n",[Res]),
      Res
   catch
      _:#xqError{} = E:StackTrace ->
         ?dbg("run",E),
         ?dbg("run",StackTrace),
         E;
      _:E:StackTrace ->
         ?dbg("run",E),
         ?dbg("run",StackTrace),
         {'EXIT',E1} = (catch xqerl_error:error('XPST0000')),
         E1
         %E
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

% ok | error
compile_abstract(Abstract) ->
   try 
      compile:forms(Abstract, 
                      [debug_info,verbose,return_errors,no_auto_import,nowarn_unused_vars]) of
      {ok,M,B} ->
         code:load_binary(M, M, B),
         B;
      {error,E,_} ->
         ?dbg("compile_abstract",E),
         throw(E)
   catch
      _:#xqError{} = E ->
         ?dbg("compile_abstract",E),
         throw(E);
      _:E:StackTrace ->
         ?info("compile_abstract",E),
         ?info("compile_abstract",StackTrace),
         xqerl_error:error('XPST0008')
   end.

-if(?PRINT).
   % see what comes out
   print_erl(B) ->
      {ok,{_,[{abstract_code,{_,AC}}]}} = beam_lib:chunks(B,[abstract_code]),
      FL = erl_syntax:form_list(AC),
      PP = (catch erl_prettypr:format(FL, [{ribbon, 80},{paper, 140}, {encoding, utf8}])),
      io:fwrite("~ts~n", [PP]),
      ok.
-elif(true).
   print_erl(_) -> ok.
-endif.

handle_local_function(FunctionName, Arguments) ->
    io:format("Local call to ~p with ~p~n", [FunctionName, Arguments]).