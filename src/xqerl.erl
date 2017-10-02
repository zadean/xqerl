%% @author Zack
%% @doc @todo Add description to xqerl.


-module(xqerl).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([trun/1]). 
-export([trun/2]). 

-export([run/1]). 
-export([run/2]). 
-export([compile/1]). 
-export([compile_main/1]). 


-record(module, {key,
                 text,
                 bin,
                 variables,
                 functions,
                 stamp,
                 imports
                 }).


compile(FileName) ->
   % saving the docs between runs to not have to reparse
   Docs = erlang:get('available-documents'),
   erlang:erase(),
   {ok, Bin} = file:read_file(FileName),
   Str = binary_to_list(Bin),
   Str2 = xqerl_scanner:remove_all_comments(Str),
   Toks = scan_tokens(Str2),
%   ?dbg("Toks",Toks),
   erlang:put(xquery_id, xqerl_context:init(self())),
   Tree = parse_tokens(Toks),
   Static = scan_tree_static(Tree),
%   ?dbg("Toks1",Toks1),
   Ret = scan_tree(Static),
%   ?dbg("Ret",Ret),
   case compile:forms(Ret, [debug_info,verbose,return_errors,no_auto_import,nowarn_unused_vars]) of
      {ok,M,B} ->
%         ?dbg("Mod name",M),
         print_erl(B),   
%%          Rec = #module{key = {library,M,FileName},
%%                        text = Bin,
%%                        bin = B,
%%                        stamp = erlang:system_time()},
%%          Add = fun() ->
%%                      mnesia:write(Rec)
%%                end,
%%          {atomic, ok} = mnesia:transaction(Add),
         Relative = 
             filename:rootname(
           filename:join(
             code:lib_dir(xqerl, lib),
             filename:join((filename:split(FileName) -- filename:split(code:lib_dir(xqerl))))
                        )),
         ?dbg(?LINE,Relative),
         ?dbg(?LINE,M),
         ok = filelib:ensure_dir(Relative++".beam"),
         X = file:write_file(Relative++".beam", B),
         ?dbg(?LINE,X),
         code:load_binary(M, M, B);
      Other ->
         ?dbg("Mod error",Other),
         Other
   end,
   erlang:erase(),
   erlang:put('available-documents', Docs),
   ok.   

%%  f() ->
%%     F = fun() ->
%%           mnesia:write({foo, 1, 2}),
%%           mnesia:write({foo, 1, 3}),
%%           mnesia:read({foo, 1})
%%         end,
%%     mnesia:transaction(F).



run(Str) -> run(Str, []).

run(Str, Options) ->
   % saving the docs between runs to not have to reparse
   Docs = erlang:get('available-documents'),
   erlang:erase(),
   
   catch code:purge(xqerl_main),
   catch code:delete(xqerl_main),
   try
      Str2 = strip_comments(Str),
      Tokens = scan_tokens(Str2),
      _ = erlang:put(xquery_id, xqerl_context:init(self())),
      Tree = parse_tokens(Tokens),
      Static = scan_tree_static(Tree),
      Abstract = scan_tree(Static),
      _ = compile_abstract(Abstract),
      erlang:erase(),
      erlang:put('available-documents', Docs),
      xqerl_main:main(Options)
%%    .

   catch
      _:#xqError{} = E ->
         ?dbg("run",E),
         E;
      _:E ->
         ?dbg("run",E),
         {'EXIT',E1} = (catch xqerl_error:error('XPST0003')),
         E1
   end.

% returns Stripped
strip_comments(Str) ->
   try xqerl_scanner:remove_all_comments(Str) of
      Stripped ->
         Stripped
   catch 
      _:#xqError{} = E ->
         ?dbg("strip_comments",E),
         throw(E);
      _:E ->
         ?dbg("strip_comments",E),
         xqerl_error:error('XPST0003')
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
      _:E ->
         ?dbg("scan_tokens",E),
         xqerl_error:error('XPST0003')
   end.

% returns Tree
parse_tokens(Tokens) ->
   try xqerl_parser:parse(Tokens) of
      {ok, Tree} ->
         Tree
   catch
      _:#xqError{} = E ->
         ?dbg("parse_tokens",E),
         throw(E);
      _:E ->
         ?dbg("parse_tokens e",E),
         xqerl_error:error('XPST0003')
   end.
   
% returns Abstract
scan_tree(Tree) ->
   try xqerl_abs:scan_mod(Tree) of
      Abstract ->
         Abstract
   catch
      _:#xqError{} = E ->
         ?dbg("scan_tree",E),
         throw(E);
      _:E ->
         ?dbg("scan_tree",E),
         xqerl_error:error('XPST0003')
   end.

scan_tree_static(Tree) ->
   try xqerl_static:handle_tree(Tree) of
      Abstract ->
         Abstract
   catch
      _:#xqError{} = E ->
         ?dbg("scan_tree",E),
         throw(E);
      _:E ->
         ?dbg("scan_tree",E),
         xqerl_error:error('XPST0003')
   end.

% ok | error
compile_abstract(Abstract) ->
   {ok, Mod1, _} = erl_scan:string("-module('xqerl_main')."),
   {ok, Mod2, _} = erl_scan:string("-export([main/1])."),
   {ok, PMod1} = erl_parse:parse_form(Mod1),
   {ok, PMod2} = erl_parse:parse_form(Mod2),
   try compile:forms([PMod1|[PMod2|Abstract]], 
                      [debug_info,verbose,return_errors,no_auto_import,nowarn_unused_vars]) of
      {ok,M,B} ->
         code:load_binary(M, M, B),
         B
   catch
      _:#xqError{} = E ->
         ?dbg("compile_abstract",E),
         throw(E);
      _:E ->
         ?dbg("compile_abstract",E),
         xqerl_error:error('XPST0008')
   end.

% see what came out
print_erl(B) ->
   {ok,{_,[{abstract_code,{_,AC}}]}} = beam_lib:chunks(B,[abstract_code]),
   FL = erl_syntax:form_list(AC),
   PP = (catch erl_prettypr:format(FL, [{ribbon, 80},{paper, 140}, {encoding, utf8}])),
   io:fwrite("~ts~n", [PP]),
   ?dbg("huh",PP),
   ok.   





compile_main(Str) ->
   % saving the docs between runs to not have to reparse
   erlang:erase(),
   
   catch code:purge(xqerl_main),
   catch code:delete(xqerl_main),
   Str2 = strip_comments(Str),
   Tokens = scan_tokens(Str2),
   _ = erlang:put(xquery_id, xqerl_context:init(self())),
   Tree = parse_tokens(Tokens),
   Abstract = scan_tree(Tree),
   B = compile_abstract(Abstract),
   print_erl(B),
   erlang:erase(),
   ok.   

trun(Str) -> trun(Str, []).
trun(Str, Opt) ->
   % saving the docs between runs to not have to reparse
   Docs = erlang:get('available-documents'),
   erlang:erase(),
   catch code:purge(xqerl_main),
   catch code:delete(xqerl_main),
      Str2 = strip_comments(Str),
%      ?dbg("Str2",Str2),
      %Tokens = scan_tokens(Str2),
      Tokens = xqerl_scanner:tokens(Str2), 
%      ?dbg("Tokens",Tokens),
      _ = erlang:put(xquery_id, xqerl_context:init(self())),
      Tree = parse_tokens(Tokens),
%      ?dbg("Tree",Tree),
      Static = xqerl_static:handle_tree(Tree),
%      ?dbg("Static",Static),
      Abstract = xqerl_abs:scan_mod(Static),
%      ?dbg("Abstract",Abstract),
      B = compile_abstract(Abstract),
      print_erl(B),
      erlang:erase(),
      erlang:put('available-documents', Docs),
      xqerl_main:main(Opt).
