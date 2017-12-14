%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017 Zachary N. Dean  All Rights Reserved.
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
        {target_namespace           :: string(),
         type              = main   :: main | library,
         status            = waiting:: loaded | compiled | error | waiting,
         name_atom                  :: atom(),
         full_text                  :: string(),
         error                      :: term(),
         last_compile_time          :: term(),
         first_compile_time         :: term(),
         imported_modules  = []     :: [string()],
         binary            = <<>>   :: binary(),
         erl_code                   :: string()
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
        {module_name_atom           :: {atom(),atom(),integer()}, % {M,F,A}
         signature                  :: term(),
         name                       :: string(),
         external                   :: boolean(),
         annotations       = []     :: [term()]
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
        {module_name_atom           :: {atom(),atom()},
         signature                  :: term(),
         name                       :: string(),
         position                   :: integer(),
         external                   :: boolean(),
         annotations       = []     :: [term()]
        }).

%% ====================================================================
%% API functions
%% ====================================================================
-export([get_signatures/1]).
-export([get_static_signatures/0]).
-export([compile/1]).
-export([compile/2]).
-export([load/1]).
-export([unload/1]).

%% ====================================================================
%% One-time init.
%% ====================================================================
-export([one_time_init/0]).

one_time_init() ->
   ok = application:ensure_started(mnesia),
   TabDefMod = [{attributes,record_info(fields, xq_module)},
                {disc_copies,[]},
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



%% ====================================================================
%% Internal functions
%% ====================================================================

get_signatures(ModNamespace) ->
   Query = fun() ->
                 ModName = #xq_module{name_atom = '$1', target_namespace = ModNamespace,  _ = '_'},
                 ModNameAtom0 = mnesia:select(xq_module, [{ModName, [], ['$1']}]),
                 %?dbg("ModNameAtom",ModNameAtom0),
                 ModNameAtom = if ModNameAtom0 == [] ->
                                     ?dbg("Unknown ModNamespace",ModNamespace),
                                     ?err('XQST0059');
                                  true ->
                                     hd(ModNameAtom0)
                               end,
                 Fun = #xq_function{signature = '$1', module_name_atom = {ModNameAtom,'_','_'},  _ = '_'},
                 Funs = mnesia:select(xq_function, [{Fun, [], ['$1']}]),
                 Var = #xq_variable{signature = '$1', module_name_atom = {ModNameAtom,'_'},  _ = '_'},
                 Vars = mnesia:select(xq_variable, [{Var, [], ['$1']}]),
                 {Funs,Vars}
           end,
   mnesia:transaction(Query).

get_static_signatures() ->
   Mods = [xqerl_fn,xqerl_math,xqerl_map,xqerl_array,xqerl_xs,xqerl_error],
   Query = fun(Mod,{PFunsAcc,PVarsAcc}) ->
                 Atts = Mod:module_info(attributes),
                 Vars = proplists:get_value(variables, Atts, []),
                 Funs = proplists:get_value(functions, Atts, []),
                 PVars = [begin
                             {F, A} = element(4, V),
                             setelement(4, V, {Mod,F,A})
                          end || V <- Vars],
                 PFuns = [begin
                             {F, A} = element(4, V),
                             setelement(4, V, {Mod,F,A})
                          end || V <- Funs],
                 {PFuns ++ PFunsAcc, PVars ++ PVarsAcc}
           end,
   lists:foldl(Query, {[],[]}, Mods).


%% -record(xq_module, 
%%         {target_namespace           :: string(),
%%          type              = main   :: main | library,
%%          status            = waiting:: compiled | error | waiting | loaded,
%%          name_atom                  :: atom(),
%%          full_text                  :: string(),
%%          error                      :: term(),
%%          last_compile_time          :: term(),
%%          first_compile_time         :: term(),
%%          imported_modules  = []     :: [string()],
%%          binary            = <<>>   :: binary(),
%%          erl_code                   :: string()
%%         }).
compile(FileName) ->
   ?dbg("compile",FileName),
   {ok, Bin} = file:read_file(FileName),
   Str = binary_to_list(Bin),
   compile(FileName, Str).

compile(FileName, Str) ->
   try
      Str2 = xqerl_scanner:remove_all_comments(Str),
      Toks = scan_tokens(Str2),
      erlang:erase(),
      % init the parse
      erlang:put(xquery_id, xqerl_context:init(self())),
      Tree = parse_tokens(Toks),
      erlang:erase(),
      Static = scan_tree_static(Tree, "file:///"++FileName),
      erlang:erase(),
      {ModNs,ModType,ImportedMods,VarSigs,FunSigs,Ret} = scan_tree(Static),
      %?dbg("Ret",Ret),
      erlang:erase(),
      {ok,M,B} = compile:forms(Ret, [debug_info,verbose,return_errors,no_auto_import,nowarn_unused_vars]),
      Erl = print_erl(B),
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
        FunSigs,
        VarSigs,
        M
       }
   of
      {Rec,FS,VS,MN} ->
         MFun = fun() ->
                      Key = Rec#xq_module.target_namespace,
                      OldRec = mnesia:read({xq_module,Key}),
                      NewFirst = if OldRec == [] ->
                                       Rec#xq_module.last_compile_time;
                                    true ->
                                       (hd(OldRec))#xq_module.first_compile_time
                                 end,
                      delete_functions(MN),
                      mnesia:write(Rec#xq_module{first_compile_time = NewFirst}),
                      Funs = build_fun_recs(MN, FS),
                      Vars = build_var_recs(MN, VS),
                      lists:foreach(fun(F) ->
                                          mnesia:write(F)
                                    end, Funs),
                      lists:foreach(fun(V) ->
                                          mnesia:write(V)
                                    end, Vars),
                      load(Key)
                end,
         {atomic, ok} = mnesia:transaction(MFun),
         MN
   catch 
      _:Error ->
         ?dbg("Error",Error),
         ?dbg("Error",erlang:get_stacktrace()),
         % TODO save the error
         Error
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
   

delete_functions(ModName) ->
   F = fun() ->
             Fun = #xq_function{module_name_atom = {ModName,'_','_'},  _ = '_'},
             Funs = mnesia:select(xq_function, [{Fun, [], ['$_']}]),
             _ = lists:foreach(fun(F) ->
                                     mnesia:delete({xq_function,F#xq_function.module_name_atom})
                               end, Funs),
             Var = #xq_variable{module_name_atom = {ModName,'_'},  _ = '_'},
             Vars = mnesia:select(xq_variable, [{Var, [], ['$_']}]),
             _ = lists:foreach(fun(V) ->
                                     mnesia:delete({xq_variable,V#xq_variable.module_name_atom})
                               end, Vars),
             ok
       end,
   {atomic,ok} = mnesia:transaction(F),
   ok.
   

%% -record(xq_function, 
%%         {module_name_atom           :: {atom(),atom(),integer()},
%%          signature                  :: term(),
%%          name                       :: string(),
%%          external                   :: boolean(),
%%          annotations       = []     :: [term()]
%%         }).
build_fun_recs(ModName,FunSigs) ->
   Fx = fun({#qname{namespace = Namespace, local_name = LocalName},_,Annos,{FunName,A},Arity,_} = Sig) ->
               #xq_function{module_name_atom = {ModName,FunName,Arity}, signature = setelement(4, Sig, {ModName,FunName,A}) ,
                            name = "Q{"++Namespace++"}"++LocalName, 
                            external = false, annotations = Annos};
           ({#qname{namespace = Namespace, local_name = LocalName},_,Annos,{_ModName1,FunName,A},Arity,_} = Sig) ->
               #xq_function{module_name_atom = {ModName,FunName,Arity}, signature = setelement(4, Sig, {ModName,FunName,A}) ,
                            name = "Q{"++Namespace++"}"++LocalName, 
                            external = false, annotations = Annos}
        end,
   lists:map(Fx, FunSigs).

%% -record(xq_variable, 
%%         {module_name_atom           :: {atom(),atom()},
%%          signature                  :: term(),
%%          name                       :: string(),
%%          position                   :: integer(),
%%          external                   :: boolean(),
%%          annotations       = []     :: [term()]
%%         }).
build_var_recs(ModName,VarSigs) ->
   IsPriv = fun(Annos) ->
                  lists:any(fun({annotation,{#qname{namespace="http://www.w3.org/2012/xquery",local_name="private"},_}}) ->
                                  true;
                               (_) ->
                                  false
                            end, Annos)
            end,
   Fx = fun({#qname{namespace = Namespace0, local_name = LocalName},_,Annos,VarName,External} = Sig,Pos) ->
                 Namespace = if Namespace0 == 'no-namespace' ->
                                   "";
                                true ->
                                   Namespace0
                             end,
                 NewSig = setelement(4, Sig, {ModName,VarName}),
                 {#xq_variable{module_name_atom = {ModName,VarName}, signature = NewSig,
                               name = "Q{"++Namespace++"}"++LocalName, 
                               external = External, position = Pos, annotations = Annos}, 
                  Pos + 1}
        end,
   {Ret,_} = lists:mapfoldl(Fx, 1, lists:filter(fun({_,_,I,_,_}) -> not IsPriv(I) end, VarSigs)),
   Ret.



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
   try 
      xqerl_abs:scan_mod(Tree) 
   of
      Abstract ->
         Abstract
   catch
      _:#xqError{} = E ->
         ?dbg("scan_tree",E),
         throw(E);
      _:_ ->
         ?dbg("scan_tree",erlang:get_stacktrace()),
         xqerl_error:error('XPST0003')
   end.

scan_tree_static(Tree, BaseUri) ->
   try xqerl_static:handle_tree(Tree, BaseUri) of
      Abstract ->
         Abstract
   catch
      _:#xqError{} = E ->
         ?dbg("scan_tree_static",E),
         ?dbg("scan_tree_static",erlang:get_stacktrace()),
         throw(E);
      _:_ ->
         ?dbg("scan_tree_static",erlang:get_stacktrace()),
         xqerl_error:error('XPST0003')
   end.

% see what comes out
%print_erl(_) -> wait;
print_erl(B) ->
   {ok,{_,[{abstract_code,{_,AC}}]}} = beam_lib:chunks(B,[abstract_code]),
   FL = erl_syntax:form_list(AC),
   PP = (catch erl_prettypr:format(FL, [{ribbon, 80},{paper, 140}, {encoding, utf8}])),
   Flat = lists:flatten(io_lib:fwrite("~ts~n", [PP])),
   %?dbg("",Flat),
   %io:fwrite("~ts~n", [PP]),
   Flat.   


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
   %?dbg("Mods",Mods),
   _ = lists:foreach(fun([_,[]]) ->
                           ok;
                        ([M,I]) ->
                           digraph:add_vertex(G, M),
                           lists:foreach(fun(J) ->
                                               digraph:add_vertex(G, J),
                                               digraph:add_edge(G, J, M)
                                         end, I)
                     end, Mods),
   %?dbg("Mods",digraph:edges(G)),
   digraph:delete(G),
   ok.

%% add_adge(G, V1, V2) ->
%%    case digraph:add_edge(G, V1, V2) of
%%       {error,_} ->
%%          ?err('')
