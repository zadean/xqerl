%% @author Zack
%% @doc @todo Add description to xqerl.


-module(xqerl).

-define(PRINT,false).
%-define(PRINT,true).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([run/1]). 
-export([run/2]). 

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
   catch code:purge(xqerl_main),
   catch code:delete(xqerl_main),
   try
      Str2 = xqerl_scanner:remove_all_comments(Str),
%      ?dbg("Str2",Str2),
      Tokens = scan_tokens(Str2),
%      ?dbg("Tokens",Tokens),
      % init the parse
      erlang:put(xquery_id, xqerl_context:init(parser)),
      Tree = parse_tokens(Tokens),
%      ?dbg("Tree",Tree),
      Static = scan_tree_static(Tree, xqldb_lib:filename_to_uri(filename:absname(<<"xqerl_main.xq">>))),
%      ?dbg("Static",maps:get(body, Static)),
      {ModNs,_ModType,_ImportedMods,_VarSigs,_FunSigs,Ret} = scan_tree(Static),
%      ?dbg("Ret",Ret),

%io:format("~p~n",[Tree]),
%io:format("~p~n",["***************************************************"]),
%io:format("~p~n",[maps:get(body, Static)]),
      
      xqerl_context:destroy(Static),
      B = compile_abstract(Ret),
      print_erl(B),

      Res = (xqerl_static:string_atom(ModNs)):main(Options),
      erlang:erase(),
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
   %try merl:compile(Abstract, 
   try compile:forms(Abstract, 
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
