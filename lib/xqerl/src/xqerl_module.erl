%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2018 Zachary N. Dean  All Rights Reserved.
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

%% @doc API module for handling XQuery code compilation.
%% Uses mnesia 
-module(xqerl_module).

%-include_lib("stdlib/include/qlc.hrl").
-include("xqerl.hrl").

-define(PRINT,false).
%-define(PRINT,true).

%% ====================================================================
%% Tables
%% ====================================================================

%% ====================================================================
%% xq_module
%% ====================================================================
%% target_namespace     * string namespace for this module; Used with  
%%                        library module, original file location if 
%%                        main module
%% type                 - main / library
%% status               - compiled / error / waiting
%% name_atom            - Namespace (or base URI) as atom,  
%%                        used internally as module name
%% full_text            - original text of XQuery module
%% error                - last compile error
%% last_compile_time    - last attempted compile timestamp
%% first_compile_time   - first attempted compile timestamp
%% imported_modules     - module namespaces that this module imports
%% binary               - last successful BEAM binary
%% erl_code             - Erlang code from debug_info 
-record(xq_module, 
        {target_namespace           :: string() | '_',
         type              = main   :: main | library | '_',
         status            = waiting:: loaded | unloaded | compiled | 
                                       error | waiting | '_',
         name_atom                  :: atom() | '$1' | '_',
         full_text                  :: string() | '_',
         error                      :: term() | '_',
         last_compile_time          :: term() | '_',
         first_compile_time         :: term() | '_',
         imported_modules  = []     :: [string()] | '_' | '$2',
         binary            = <<>>   :: binary() | '_',
         erl_code                   :: string() | atom() | '_'
        }).

%% ====================================================================
%% xq_function
%% ====================================================================
%% module               * The module namespace as atom
%% name_atom            * Function QName string as atom, used internally
%% signature            - Function signature used in static phase
%% name                 - string name of this function
%% external             - flag if this function is external
%% annotations          - list of annotations for this function
-record(xq_function, 
        {module_name_atom           :: {atom(),atom(),integer()} | 
                                       {atom(),'_','_'}, % {M,F,A}
         signature                  :: term() | '_',
         name                       :: binary() | '_',
         external                   :: boolean() | '_',
         annotations       = []     :: [term()] | '_'
        }).

%% ====================================================================
%% xq_variable
%% ====================================================================
%% module               * The module namespace as atom
%% name_atom            * Variable QName string as atom, used internally
%% signature            - Variable signature used in static phase
%% name                 - string name of this variable
%% position             - Order of initialization for this variable
%% external             - flag if this variable can be externally set
%% annotations          - list of annotations for this variable
-record(xq_variable, 
        {module_name_atom           :: {atom(),atom()} | {atom(),'_'},
         signature                  :: term() | '_',
         name                       :: binary() | '_',
         position                   :: integer() | '_',
         external                   :: boolean() | '_',
         annotations       = []     :: [term()] | '_'
        }).

%% ====================================================================
%% API functions
%% ====================================================================
-export([test_compile/2, push/1]).

-export([get_signatures/1]).
-export([get_module_name/1]).
-export([get_static_signatures/0]).

-export([compile/1,
         compile/2,
         compile/3]).

-export([load/1]).
-export([unload/1]).


%% ====================================================================
%% One-time init.
%% ====================================================================
-export([one_time_init/0]).

one_time_init() ->
   ok = application:ensure_started(mnesia),
   TabDefMod = [{attributes,record_info(fields, xq_module)},
                {ram_copies, [node()]},
                %{disc_only_copies, [nodes()]},
                {index, []},
                {type, set}
               ],
   TabDefFun = [{attributes,record_info(fields, xq_function)},
                {disc_copies,[]},
                {index, []},
                {type, set}
               ],
   TabDefVar = [{attributes,record_info(fields, xq_variable)},
                {disc_copies,[]},
                {index, []},
                {type, set}
               ],
   _ = mnesia:delete_table(xq_module),
   _ = mnesia:delete_table(xq_function),
   _ = mnesia:delete_table(xq_variable),
   {atomic,ok} = mnesia:create_table(xq_module  , TabDefMod),
   {atomic,ok} = mnesia:create_table(xq_function, TabDefFun),
   {atomic,ok} = mnesia:create_table(xq_variable, TabDefVar),
   ok.


%% ====================================================================
%% API functions
%% ====================================================================


-define(NOT_FOUND(V), _:#xqError{name = 
                                   #xqAtomicValue{value = #qname{prefix = <<"err">>,
                                                 local_name = <<"XQST0059">>}},
                 value = V}).


%% ====================================================================
%% Internal functions
%% ====================================================================

get_signatures(ModNamespace) ->
   Q = fun() ->
              ModName = #xq_module{name_atom = '$1', 
                                   target_namespace = ModNamespace,
                                   _ = '_'},
              ModNameAtom0 = mnesia:select(xq_module, [{ModName, [], ['$1']}]),
?dbg("ModNameAtom",ModNameAtom0),
              ModNameAtom = if ModNameAtom0 == [] ->
                                  ?dbg("Unknown ModNamespace",ModNamespace),
                                  xqerl_error:error('XQST0059', 
                                                    "Unknown ModNamespace", 
                                                    ModNamespace);
                               true ->
                                  hd(ModNameAtom0)
                            end,
              Fun = #xq_function{signature = '$1', 
                                 module_name_atom = {ModNameAtom,'_','_'},  
                                 _ = '_'},
              Funs = mnesia:select(xq_function, [{Fun, [], ['$1']}]),
              Var = #xq_variable{signature = '$1', 
                                 module_name_atom = {ModNameAtom,'_'},  
                                 _ = '_'},
              Vars = mnesia:select(xq_variable, [{Var, [], ['$1']}]),
              {Funs,lists:sort(Vars)}
        end,
   mnesia:transaction(Q).

get_module_name(ModNamespace) ->
   Q = fun() ->
             ModName = #xq_module{name_atom = '$1', 
                                  target_namespace = ModNamespace,  
                                  _ = '_'},
             ModNameAtom0 = mnesia:select(xq_module, [{ModName, [], ['$1']}]),
             %?dbg("ModNameAtom",ModNameAtom0),
             if ModNameAtom0 == [] ->
                   ?dbg("Unknown ModNamespace",ModNamespace),
                   ?err('XQST0059');
                true ->
                   hd(ModNameAtom0)
             end
       end,
   mnesia:transaction(Q).
   

get_static_signatures() ->
   Mods = [xqerl_fn,
           xqerl_math,
           xqerl_map,
           xqerl_array,
           xqerl_xs,
           xqerl_expath_file,
           xqerl_error],
   Query = fun(Mod,{PFunsAcc,PVarsAcc,_}) ->
                 Atts = Mod:module_info(attributes),
                 Vars = proplists:get_value(variables, Atts, []),
                 Funs = proplists:get_value(functions, Atts, []),
                 PVars = [begin
                             {F, A} = element(4, V),
                             setelement(4, V, {Mod,F,A})
                          end || V <- Vars],
                 PFuns = [begin
                             {F, A} = element(4, V),
                             %erlang:append_element(
                               setelement(4, V, {Mod,F,A}) %, false)
                          end || V <- Funs],
                 {PFuns ++ PFunsAcc, PVars ++ PVarsAcc,[]}
           end,
   lists:foldl(Query, {[],[],[]}, Mods).

compile(FileName) ->
   %?dbg("compile",FileName),
   {ok, Bin} = file:read_file(FileName),
   Str = binary_to_list(Bin),
   compile(FileName, Str).

compile(_, []) -> ?err('XPST0003'); % empty query
compile(FileName, Str) ->
   compile(FileName, Str, []).

compile(FileName, [], Hints) ->
   %?dbg("compile",FileName),
   {ok, Bin} = file:read_file(FileName),
   Str = binary_to_list(Bin),
   if Str == [] ->
         [];
      true ->
         compile(FileName, Str,Hints)
   end;
   
compile(FileName, Str, Hints) ->
   try
      Str2 = xqerl_scanner:remove_all_comments(Str),
      Toks = scan_tokens(Str2),
      erlang:erase(),
      % init the parse
      erlang:put(xquery_id, xqerl_context:init(parser)),
%?dbg("Toks",Toks),
      Tree = parse_tokens(Toks),
%?dbg("Tree",Tree),
      Static = scan_tree_static(
                 Tree, 
                 xqldb_lib:filename_to_uri(unicode:characters_to_binary(FileName))),
%io:format("~p~n",[maps:get(body, Static)]),
%?dbg("Static",maps:get(body, Static)),
      {ModNs,ModType,ImportedMods,VarSigs,FunSigs,Ret} = scan_tree(Static),
%?dbg("Ret",Ret),
%io:format("~p~n",[Ret]),
      xqerl_context:destroy(Static),
%?dbg("here",erts_debug:flat_size(Ret)),
   
      {ok,M,B} = 
      %merl:compile(Ret, 
      compile:forms(Ret, 
                      [debug_info,verbose,return_errors,
                                     no_auto_import,nowarn_unused_vars]),
      _Erl = print_erl(M,B),
      ok = check_cycle(M,ImportedMods),
%?dbg("Erl",Erl),
      {
       #xq_module{target_namespace = ModNs,
                  type = ModType,
                  status = compiled,
                  name_atom = M,
                  full_text = Str,
                  error = undefined,
                  last_compile_time = erlang:system_time(),
                  imported_modules = ImportedMods,
                  binary = B,
                  erl_code = wait},
                  %erl_code = _Erl},
        FunSigs,
        VarSigs,
        M
       }
   of
      {Rec,FS,VS,MN} ->
         save_module(Rec,FS,VS,MN)
   catch 
      ?NOT_FOUND(V) = Error ->
         <<"Q{", KN/binary>> = V,
         KN1 = binary:part(KN, 0, byte_size(KN) - 1),
         case lists:keyfind(KN1, 2, Hints) of
            false ->
               Error;
            {F1,_} = G ->
               ?dbg("V, Hints",{F1, KN1, Hints}),
               case compile(F1, [], Hints -- [G]) of
                  #xqError{} = Ex ->
                     Ex;
                  _ ->
                     compile(FileName, Str, Hints)
               end
         end;
      _:Error:StackTrace ->
         ?dbg("Error",Error),
         ?dbg("Error",StackTrace),
         % TODO save the error
         Error
   end.   

save_module(ModuleRecord,Functions,Variables,ModuleName) ->
         MFun = fun() ->
                      Key = ModuleRecord#xq_module.target_namespace,
                      OldRec = mnesia:read({xq_module,Key}),
                      NewFirst = if OldRec == [] ->
                                       ModuleRecord#xq_module.last_compile_time;
                                    true ->
                                       (hd(OldRec))#xq_module.first_compile_time
                                 end,
                      delete_functions(ModuleName),
                      Rec1 = ModuleRecord#xq_module{first_compile_time = NewFirst},
                      mnesia:write(Rec1),
                      Funs = build_fun_recs(ModuleName, Functions),
                      Vars = build_var_recs(ModuleName, Variables),
                      lists:foreach(fun(F) ->
                                          mnesia:write(F)
                                    end, Funs),
                      lists:foreach(fun(V) ->
                                          mnesia:write(V)
                                    end, Vars),
                      load(Key),
                      ok
                end,
         {atomic, ok} = mnesia:transaction(MFun),
         ModuleName.


test_compile(FileName, Str) ->
   try
      Str2 = xqerl_scanner:remove_all_comments(Str),
      ?dbg("Step","1"),
      Toks = scan_tokens(Str2),
      ?dbg("Step","2"),
      erlang:erase(),
      ?dbg("Step","3"),
      erlang:put(xquery_id, xqerl_context:init(parser)),
      ?dbg("Step","4"),
      Tree = parse_tokens(Toks),
      ?dbg("Step","5"),
      Static = scan_tree_static(Tree, FileName),
      ?dbg("Step","6"),
      ?dbg("Static",Static),
      {_,_,_,_,_,Ret} = scan_tree(Static),
      ?dbg("Step","7"),
      xqerl_context:destroy(Static),
      ?dbg("Step","8"),
      merl:compile(Ret, 
      %compile:forms(Ret, 
                    [debug_info,verbose,return_errors,
                          no_auto_import,nowarn_unused_vars])
   of
      {ok,M,B} ->
         {ok,M,B}
   catch 
      _:Error:StackTrace ->
         ?dbg("Error",Error),
         ?dbg("Error",StackTrace),
         {error,Error}
   end.   

load(ModNamespace) ->
   F = fun() ->
             [Rec] = mnesia:read(xq_module, ModNamespace),
             #xq_module{name_atom = M, binary = B} = Rec,
             {module,_} = code:load_binary(M, M, B),
             ok = mnesia:write(Rec#xq_module{status = loaded}),
             ok
       end,
   {atomic,ok} = mnesia:transaction(F),
   ok.

unload(all) ->
   F = fun() ->
             Mod = #xq_module{_ = '_'},
             Mods = mnesia:select(xq_module, [{Mod, [], ['$_']}]),
             Loaded = lists:map(fun({L,_}) ->
                                      L
                                end, code:all_loaded()),
             Ms = lists:map(fun(#xq_module{name_atom = A}) ->
                                  A
                            end, Mods),
             Set = sets:intersection(sets:from_list(Loaded),sets:from_list(Ms)),
             ?dbg("Count",sets:size(Set)),
             lists:foreach(fun(A) ->
                                 code:purge(A),
                                 code:delete(A),
                                 code:purge(A)
                           end, sets:to_list(Set)),
             ok
       end,
   {atomic,ok} = mnesia:transaction(F),
   ok;
unload(_) ->
   F = fun() ->
             Mod = #xq_module{status = loaded,  _ = '_'},
             Mods = mnesia:select(xq_module, [{Mod, [], ['$_']}]),
             lists:foreach(fun(#xq_module{name_atom = A} = M) ->
                                 code:delete(A),
                                 code:purge(A),
                                 mnesia:write(M#xq_module{status = unloaded})
                           end, Mods),
             ok
       end,
   {atomic,ok} = mnesia:transaction(F),
   ok.
   

-dialyzer({[no_return], [delete_functions/1]}).
delete_functions(ModName) ->
   F = fun() ->
             Fun = #xq_function{module_name_atom = {ModName,'_','_'},  
                                _ = '_'},
             Funs = mnesia:select(xq_function, [{Fun, [], ['$_']}]),
             Del = fun(F) ->
                         mnesia:delete(
                           {xq_function,F#xq_function.module_name_atom})
                   end,
             _ = lists:foreach(Del, Funs),
             Var = #xq_variable{module_name_atom = {ModName,'_'},  _ = '_'},
             Vars = mnesia:select(xq_variable, [{Var, [], ['$_']}]),
             VDel = fun(V) ->
                          mnesia:delete(
                            {xq_variable,V#xq_variable.module_name_atom})
                    end,
             _ = lists:foreach(VDel, Vars),
             ok
       end,
   {atomic,ok} = mnesia:transaction(F),
   ok.
   
build_fun_recs(ModName,FunSigs) ->
   Fx = fun({#qname{namespace = Namespace, 
                    local_name = LocalName},_,Annos,
             {FunName,A},Arity,_} = Sig) ->
              #xq_function{module_name_atom = {ModName,FunName,Arity}, 
                           signature = setelement(4, Sig, {ModName,FunName,A}),
                           name = serial_qname(Namespace, LocalName),
                           external = false, annotations = Annos};
           ({#qname{namespace = Namespace, 
                    local_name = LocalName},_,Annos,
             {_ModName1,FunName,A},Arity,_} = Sig) ->
              #xq_function{module_name_atom = {ModName,FunName,Arity}, 
                           signature = setelement(4, Sig, {ModName,FunName,A}),
                           name = serial_qname(Namespace, LocalName),
                           external = false, annotations = Annos}
        end,
   lists:map(Fx, FunSigs).

build_var_recs(ModName,VarSigs) ->
   Priv = fun%({annotation,{#qname{namespace="http://www.w3.org/2012/xquery",
             %                     local_name="private"},_}}) ->
             %   true;
             (_) ->
                false
          end,
   IsPriv = fun(Annos) -> lists:any(Priv, Annos) end,
   Fx = fun({#qname{namespace = Namespace0, local_name = LocalName},
             _,Annos,VarName,External} = Sig,Pos) ->
              Namespace = if Namespace0 == 'no-namespace' ->
                                <<>>;
                             true ->
                                Namespace0
                          end,
              NewSig = setelement(4, Sig, {ModName,VarName}),
              {#xq_variable{module_name_atom = {ModName,VarName}, 
                            signature = NewSig,
                            name = serial_qname(Namespace, LocalName),
                            external = External, 
                            position = Pos, 
                            annotations = Annos},
               Pos + 1}
        end,
   Fil = lists:filter(fun({_,_,I,_,_}) -> not IsPriv(I) end, VarSigs),
   {Ret,_} = lists:mapfoldl(Fx, 1, Fil),
   Ret.

serial_qname(Namespace, LocalName) ->
   <<"Q{", Namespace/binary, "}", LocalName/binary>>.

scan_tokens(Str) ->
   try 
      xqerl_scanner:tokens(Str) 
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
   try 
      {ok, Tree} = xqerl_parser:parse(Tokens),
      Tree
   catch
      _:#xqError{} = E ->
         ?dbg("parse_tokens",E),
         throw(E);
      _:E:StackTrace ->
         ?dbg("parse_tokens e",E),
         ?dbg("parse_tokens e",StackTrace),
         xqerl_error:error('XPST0003')
   end.
   
% returns Abstract
scan_tree(Tree) ->
   try 
      Ret = xqerl_abs:scan_mod(Tree),
%?dbg("here",ok),      
      Ret
   catch
      _:#xqError{} = E ->
         ?dbg("scan_tree",E),
         throw(E);
      _:E:StackTrace ->
         ?dbg("scan_tree",E),
         ?dbg("scan_tree",StackTrace),
         xqerl_error:error('XPST0003')
   end.

scan_tree_static(Tree, BaseUri) ->
   try 
      xqerl_static:handle_tree(Tree, BaseUri)
   catch
      ?NOT_FOUND(V) = E:StackTrace ->
         ?dbg("scan_tree_static",V),
         ?dbg("scan_tree_static",E),
         ?dbg("scan_tree_static",StackTrace),
         throw(E);
      _:#xqError{} = E:StackTrace ->
         ?dbg("scan_tree_static",E),
         ?dbg("scan_tree_static",StackTrace),
         throw(E);
      _:E:StackTrace ->
         ?dbg("scan_tree_static",E),
         ?dbg("scan_tree_static",StackTrace),
         xqerl_error:error('XPST0003')
   end.

check_cycle(_Mod,[]) -> ok;
check_cycle(Mod,ImportedMods) ->
   G = digraph:new([acyclic]),
   digraph:add_vertex(G, Mod),
   digraph:add_edge(G, Mod, Mod),
   _ = lists:foreach(fun(I) ->
                           digraph:add_vertex(G, I),
                           digraph:add_edge(G, I, Mod)
                     end, ImportedMods),
   Match = #xq_module{name_atom = '$1',imported_modules = '$2', _ = '_'},
   Mods = mnesia:dirty_select(xq_module, [{Match, [], [['$1','$2']]}]),
   _ = lists:foreach(fun([_,[]]) ->
                           ok;
                        ([M,I]) ->
                           digraph:add_vertex(G, M),
                           lists:foreach(fun(J) ->
                                               digraph:add_vertex(G, J),
                                               digraph:add_edge(G, J, M)
                                         end, I)
                     end, Mods),
   digraph:delete(G),
   ok.

-if(?PRINT).
   % see what comes out
   print_erl(M,B) ->
      {ok,{_,[{abstract_code,{_,AC}}]}} = beam_lib:chunks(B,[abstract_code]),
      FL = erl_syntax:form_list(AC),
      PP = (catch erl_prettypr:format(FL, [{ribbon, 80},{paper, 140}, 
                                           {encoding, utf8}])),
      Flat = lists:flatten(io_lib:fwrite("~ts~n", [PP])),
      %?dbg("",Flat),
      Filename = filename:absname(atom_to_list(M)) ++ ".erl",
      ?dbg("Filename",Filename),
      {ok,FP} = file:open(Filename, [write,{encoding, utf8}]),
      %?dbg("PP",PP),
      io:put_chars(FP, PP),
      file:close(FP),
      %ok = file:write_file(Filename, list_to_binary(PP)),
      Flat.   
-elif(true).
   print_erl(_,_) -> ok.
-endif.


push(Node) -> 
   application:ensure_all_started(xqerl),
   {ok,X} = application:get_key(xqerl,modules),
   {ok,D} = application:get_key(xqerl_db,modules),
   Fun = fun(Mod) ->
               {_Module, Binary, Filename} = code:get_object_code(Mod),
               rpc:call(Node, code, load_binary, [Mod, Filename, Binary])
         end,
   [Fun(M) || M <- X ++ D].
