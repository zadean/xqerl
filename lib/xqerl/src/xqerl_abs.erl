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

%% @doc  The messy spaghetti-code that writes abstract Erlang.

-module(xqerl_abs).

-export([scan_mod/1,
         handle_predicate/2]).

-define(L,?LINE).
-define(s(E,T), {call,?L,{remote,?L,{atom,?L,xqerl_types},
                          {atom,?L,cast_as_seq}},[E,abs_seq_type(Ctx,T)]}).
-define(e, erl_syntax).
-define(A(T),<<T>>).
-define(FN,?A("http://www.w3.org/2005/xpath-functions")).
-define(XS,?A("http://www.w3.org/2001/XMLSchema")).

-include("xqerl.hrl").
-include_lib("syntax_tools/include/merl.hrl").

% revert everything from merl
-define(P(Text), revert(?Q(Text))).

-compile(inline_list_funcs).


records() ->
   ["-record(xqError,{name,description,value,location}).",
    "-record(xqAtomicValue,{type,value}).",
    "-record(qname,{namespace,prefix,local_name}).",
    "-record(xqFunction,{id,annotations,name,arity,params,type,body}).",
    "-record(xqNode,{doc,node}).",
    "-record(xqDocumentNode,{identity,desc_count,base_uri,children,
      value,string_value,path_index,expr}).",
    "-record(xqElementNode,{identity,desc_count,name,parent_node,children,
      attributes,inscope_ns,nilled,type,base_uri,path_index,expr}).",
    "-record(xqAttributeNode,{identity,name,parent_node,value,string_value,
      path_index,expr}).",
    "-record(xqTextNode,{identity,parent_node,cdata,path_index,expr}).",
    "-record(xqCommentNode,{identity,parent_node,string_value,path_index,
      expr}).",
    "-record(xqProcessingInstructionNode,{identity,name,parent_node,
      base_uri,path_index,expr}).",
    "-record(xqNamespaceNode,{identity,name,parent_node,path_index,expr}).",
    "-record(xqNamespace,{namespace,prefix}).",
    "-record(xqFunTest,{kind,annotations,name,params,type}).",
    "-record(xqSeqType,{type,occur}).",
    "-record(xqKindTest,{kind,name,type,test}).",
    "-record(xqRange,{min,max,cnt})."
   ].

revert(L) when is_list(L) ->
   [erl_syntax:revert(I) || I <- L];
revert(I) ->
   erl_syntax:revert(I).


init_mod_scan() ->
   erlang:put(imp_mod, 1),
   erlang:put(ctx, 1),
   erlang:put(var_tuple, 1),
   erlang:put(iter_loop, 1).

scan_functions(#{tab := Tab}, Functions,ModName, public) ->
   Specs = [ {Name#qname{prefix = <<>>}, 
              Type, 
              Annos,
              begin
                 {F,A} = xqerl_static:function_hash_name(Name,Arity),
                 {ModName,F,A}
              end, 
              %function_function_name(Id, Arity), 
              Arity, 
              param_types(Params) } 
           || #xqFunction{%id = Id, 
                          annotations = Annos, 
                          arity = Arity,
                          params = Params,
                          name = Name, 
                          type = Type} 
           <- Functions,
              not_private(Annos) ],
   xqerl_context:import_functions(Specs,Tab),
   Specs.

%% {Name, Type, Annos, function_name, External }
scan_variables(Ctx, Variables) ->
   scan_variables(Ctx, Variables, all).

scan_variables(#{tab := Tab}, Variables, _Scope) ->
   Specs = [{Name#qname{prefix = <<>>}, Type, Annos,
             xqerl_static:variable_hash_name(Name),External}
           || #xqVar{annotations = Annos, 
                     name = Name,
                     external = External, 
                     type = Type} 
           <- Variables%,
              %Scope == all orelse not_private(Annos) 
           ],
   xqerl_context:import_variables(Specs,Tab),
   Specs.

exp_local_funs(#{module        := Mod,
                 known_fx_sigs := Funs} = Ctx) ->
   NewFuns = lists:map(fun({_,_,_,{F,A},_,_} = S) ->
                             setelement(4, S, {Mod,F,A});
                          (S) ->
                             S
                       end, Funs),
   Ctx#{known_fx_sigs := NewFuns}.

init_fun_abs(Ctx0, KeysToAdd) ->
   Ctx = exp_local_funs(Ctx0),
   Fun = fun(Name, M) ->
               add_context_key(M,Name,Ctx)
         end,
   Map3 = lists:foldl(Fun, #{}, KeysToAdd),
   a_term(Map3).

add_context_key(Map, default_calendar, _) -> Map;
add_context_key(Map, default_place, _) -> Map;
add_context_key(Map, default_language, _) -> Map;
add_context_key(Map, dynamic_known_functions, #{known_fx_sigs := K}) ->
   Map#{named_functions => K};
add_context_key(Map, known_decimal_formats, #{known_dec_formats := K}) ->
   Map#{known_dec_formats => K};
add_context_key(Map, base_uri, #{'base-uri' := K}) ->
   Map#{'base-uri' => K};
add_context_key(Map, known_collations, #{'base-uri' := B,
                                         'default-collation' := D,
                                         known_collations := K}) ->
   Map#{'base-uri' => B,
        'default-collation' => D,
        known_collations => K};
add_context_key(Map, known_namespaces, #{'copy-namespaces' := C,
                                         namespaces := N}) ->
   Map#{'copy-namespaces' => C,
        namespaces => N};
% when named-functions added, everything is needed
add_context_key(Map, named_functions, #{'base-uri'          := B,
                                        'construction-mode' := M,
                                        'copy-namespaces'   := C,
                                        'default-collation' := D,
                                        known_collations    := O,
                                        known_dec_formats   := K}) ->
   Map#{'base-uri'          => B,
        'construction-mode' => M,
        'copy-namespaces'   => C,
        'default-collation' => D,
        known_collations    => O,
        known_dec_formats   => K};
add_context_key(Map,Key,Ctx) ->
   Map#{Key => maps:get(Key, Ctx)}.

%% dynamic_context_items() ->
%%    context_item,
%%    context_position,
%%    context_size,
%%    variable_values,           % lives in process dictionary for global variables, locals stay local
%%    named_functions,           % only filled when fn:function-lookup is used, filled with statically known
%%    current_date_time,         % lives in process dictionary
%%    implicit_timezone,         % lives in process dictionary
%%    available_documents,       % lives in seperate process
%%    available_text_resources,  % lives in seperate process
%%    available_collections,     % lives in seperate process
%%    default_collection,        % always empty
%%    available_uri_collections, % lives in seperate process
%%    default_uri_collection,    % always empty
%%    ok.

scan_mod(#{body := B} = Map) ->
   X = scan_mod(B, maps:remove(body, Map)),
?dbg("here",ok),
   X.
   
scan_mod(#xqModule{prolog = Prolog, 
                   declaration = {_,{ModNs,_Prefix}}, 
                   type = library,
                   body = _}, Map) ->
   _ = init_mod_scan(),
   ok = set_globals(Prolog, Map),
   DefElNs     = xqerl_static:pro_def_elem_ns(Prolog),
   %ContextItem = xqerl_static:pro_context_item(Prolog,main),
   Namespaces  = xqerl_static:pro_namespaces(Prolog,[],DefElNs),
   Variables   = xqerl_static:pro_glob_variables(Prolog,[]),
   Functions   = xqerl_static:pro_glob_functions(Prolog,[]),
   StaticNamespaces = xqerl_context:static_namespaces(),
   %?dbg("{Variables}",{Variables}),
   ConstNamespaces  = xqerl_static:overwrite_static_namespaces(StaticNamespaces, 
                                                               Namespaces),
   EmptyMap = Map#{namespaces => ConstNamespaces},
   ImportedMods = lists:filtermap(fun({'module-import', {_,<<>>}}) -> false;
                                     ({'module-import', {N,_}}) -> 
                                        {true, xqerl_static:string_atom(N)};
                                     (_) -> false
                                  end,Prolog),
   
   ModName = xqerl_static:string_atom(ModNs),
   StatProps = maps:get(stat_props, EmptyMap),
   
   P1 = scan_variables(EmptyMap,Variables, public), 
   P2 = scan_functions(EmptyMap,Functions,ModName, public),
   P3 = ?P(["-module('@ModName@').",
            "-export([static_props/0]).",
            "-export([init/1])."
            ]),
   P4 = lists:flatten([
         ?P(export_variables(Variables, EmptyMap)),
         ?P(export_functions(Functions)),
         ?P(records())
        ]),
   P5 = ?P(["-compile(inline_list_funcs).",
            "-compile(native).",
            "static_props() -> _@StatProps@."]),
    % this will also setup the global variable match
   P6 = init_function(scan_variables(EmptyMap,Variables),Prolog),
   P7 = variable_functions(EmptyMap, Variables),
   P8 = function_functions(EmptyMap, Functions),
   P9 = get_global_funs(),
   P10 = P3 ++ P4 ++ P5 ++ P6 ++ P7 ++ P8 ++ P9,
   {ModNs,
    library,
    ImportedMods,
    P1,
    P2,
    % abstract after this point
    P10
   };

scan_mod(#xqModule{prolog = Prolog, 
                   type = main, 
                   body = Body}, #{file_name := FileName, tab := Tab} =  Map) ->
   xqerl_context:set_statically_known_functions(Tab,[]), %%% get rid of this!!
   _ = init_mod_scan(),
   ok = set_globals(Prolog, Map),
   % the prolog is sorted in reverse order
   Imports     = xqerl_static:pro_mod_imports(Prolog),
   
   VarFun = fun(#xqVar{} = V) ->
                  {true,V};
               ({'context-item',{_,_,_} = V}) ->
                  {true,{'context-item',V}};
               (_) ->
                  false
            end,
   Variables   = lists:filtermap(VarFun, Prolog),
   Functions   = xqerl_static:pro_glob_functions(Prolog,[]),
   {Functions1, Variables1, StaticProps} = 
     xqerl_context:get_module_exports(Imports),
   
   ImportedMods = lists:filtermap(fun({'module-import', {_,<<>>}}) -> false;
                                     ({'module-import', {N,_}}) -> 
                                        {true, xqerl_static:string_atom(N)};
                                     (_) -> false
                                  end,Prolog),
  
   ok = xqerl_context:import_variables(Variables1,Tab),
   ok = xqerl_context:import_functions(Functions1,Tab),
   
   VarFun1 = fun(#xqVar{annotations = Annos,
                        external = External,
                        name = Name,
                        type = Type}) ->
                   Name2 = xqerl_static:variable_hash_name(Name),
                   {Name, Type, Annos, {Name2,1},External };
                (X) ->
                   X
             end,
   
   EmptyMap = Map#{%namespaces => ConstNamespaces,
                   variables => lists:map(VarFun1, Variables)
                  }, 
   
   ModName = xqerl_static:string_atom(FileName),
   MapItems = init_fun_abs(
                EmptyMap#{module => ModName},
                maps:get(stat_props, EmptyMap) ++ StaticProps),
   {FileName,
    main,
    ImportedMods,
    scan_variables(EmptyMap,Variables, public),
    scan_functions(EmptyMap,Functions,ModName, public),
    % abstract after this point
    ?P(["-module('@ModName@').",
        "-export([main/1])."
       ]) ++
      lists:flatten([
         ?P(export_functions(Functions)),
         ?P(records())
        ]) ++
    ?P(["-compile(inline_list_funcs).",
        "-compile(native).",
        "init() ->",
         "  _ = xqerl_lib:lnew(),",
         "  Tab = xqerl_context:init(),",
         "  Map = maps:put(tab,Tab,_@MapItems),",
         "  xqerl_context:set_named_functions(Tab,maps:get(named_functions,Map,[])),",
         "  maps:remove(named_functions,Map)."]) ++
    body_function(EmptyMap, Body, Prolog) ++ % this will also setup the global variable match
    variable_functions(EmptyMap, Variables) ++ 
    function_functions(EmptyMap, Functions) ++
    get_global_funs()
   }.

%% used in library modules instead of main init 
init_function(Variables,Prolog) ->
   Stats = [N || {_,N} <- xqerl_context:static_namespaces()],
   ImportedMods = [E || 
                   {'module-import',{N,P} = E} <- Prolog,
                   not lists:member(N, Stats),
                   P =/= <<>>],
   ?dbg("{Variables,ImportedMods}",{Variables,ImportedMods}),
   
   ImpSetFun = fun({I,_} = _M, CtxVar) ->
                     NC0 = next_ctx_var_name(),
                     NV0 = {var,?L,NC0},
                     At = xqerl_static:string_atom(I),
                     O = ?P("_@NV0 = '@At@':init(_@CtxVar)"),
                     {O,NV0}
               end,
   {ImportedVars,FCtx} = lists:mapfoldl(ImpSetFun, {var,?L,'Ctx'}, ImportedMods),
   
   VarSetFun = fun({_N,_T,_A,V,_Ext}, CtxVar) -> %%% mapfold here to make new ctx for each variable
                     NC = next_ctx_var_name(),
                     NV = {var,?L,NC},
                     VV = {var,?L,V},
                     O = ?P("_@VV = '@V@'(_@CtxVar), "
                            "_@NV = (_@CtxVar)#{'@V@' => _@VV}"),
                     {O,NV}
               end,
   {VarSetAbs,LastCtx} = lists:mapfoldl(VarSetFun, FCtx, lists:reverse(Variables)),
   %VarList = [{var,?L,V} || {_,_,_A,V,_} <- lists:sort(Variables)%,
   %                         %not_private(A)
   %            ],
   VarTup = ?P("_@LastCtx"),
   
   Imps = ?P("_@@ImportedVars"),
   
   %?dbg("Imps",ImportedMods),
   Body = lists:flatten([Imps, VarSetAbs, [VarTup]]),
   [{function,?L,init,1,[{clause,?L,[{var,?L,'Ctx'}],[],Body}]}].

get_imported_variables(Module) ->
   {_,Variables,_} = xqerl_context:get_module_exports(Module),
   [{var,?L,V} || {_,_,_A,{_,V},_} <- lists:sort(Variables)].

get_local_variables(Variables) ->
   [{var,?L,V} || {_,_,_,V,_} <- Variables].

%% get_imported_variable_tuple(Module) ->
%%    VarList = get_imported_variables(Module),
%%    ?P("{_@@VarList}").

set_globals(Prolog, Map) ->
   Vars = xqerl_static:pro_glob_variables(Prolog,[]),
   Variables = scan_variables(Map, Vars),
   Locals = get_local_variables(Variables),
   Stats = [N || {_,N} <- xqerl_context:static_namespaces()],
   ImportedMods = [E || 
                {'module-import',{N,P} = E} <- Prolog,
                not lists:member(N, Stats),
                P =/= []],
   ok = global_variable_map_match(ImportedMods,Locals),
   ok = global_variable_map_set(ImportedMods,Locals),
   ok.

global_variable_map_match(Modules,Locals) ->
   Vars = lists:flatten([get_imported_variables(M) || M <- Modules]),
   ?dbg("Vars",Vars),
   Matches = [{map_field_exact,?L,{atom,?L,V},V1} || {_,_,V} = V1 <- Vars ++ Locals],
   O = {map,?L,Matches},
   erlang:put(global_var_match, O),
   ok.

global_variable_map_set(Modules,Locals) ->
   Vars = lists:flatten([get_imported_variables(M) || M <- Modules]),
   ?dbg("Vars",Vars),
   Matches = [{map_field_assoc,?L,{atom,?L,V},V1} || {_,_,V} = V1 <- Vars ++ Locals],
   O = {map,?L,Matches},
   erlang:put(global_var_set, O),
   ok.


body_function(ContextMap, Body,Prolog) ->
   Stats = [N || {_,N} <- xqerl_context:static_namespaces()],
   ImportedMods = [E || 
                   {'module-import',{N,P} = E} <- Prolog,
                   not lists:member(N, Stats),
                   P =/= <<>>],
   _ = erlang:put(ctx, 1),
   ?dbg("ImportedMods",ImportedMods),
   ImpSetFun = fun({I,_} = _M, CtxVar) ->
                     NC0 = next_ctx_var_name(),
                     NV0 = {var,?L,NC0},
                     At = xqerl_static:string_atom(I),
                     O = ?P("_@NV0 = '@At@':init(_@CtxVar)"),
                     {O,NV0}
               end,
   {ImportedVars,FCtx} = lists:mapfoldl(ImpSetFun, {var,?L,'Ctx0'}, ImportedMods),
   
   VarSetFun = 
      fun({_N,_T,_A,{V,1},_Ext}, CtxVar) ->
            AV = {var,?L,V},
            NC = next_ctx_var_name(),
            NV = {var,?L,NC},
            P = ?P(["_@AV = '@V@'(_@CtxVar),",
                    "_@NV = (_@CtxVar)#{'@V@' => _@AV}"]),
            %P = ?P("xqerl_lib:lput('@V@','@V@'(_@CV))"),
            {P, NV};
         ({'context-item',{CType,External,Expr}}, {_,_,C} = CtxVar1) ->
            NC = next_ctx_var_name(),
            NV = {var,?L,NC},
            NextVar = {var,?L,next_var_name()},
            Occ = if External =:= external -> zero_or_one;
                     Expr =/= []           -> one;
                     true                  -> zero_or_one
                  end,
            NewC = set_context_variable_name(ContextMap, C),
            E1 = expr_do(NewC, #xqSeqType{type = CType, occur = Occ}),
            E2 = expr_do(NewC, Expr),
            P = ?P(["_@NV = begin ",
                    " CI = maps:get('context-item', Options, _@E2),"
                    " _@NextVar = xqerl_types:promote(CI,_@E1),",
                    " xqerl_context:set_context_item(_@CtxVar1,_@NextVar,1,",
                    "   #xqAtomicValue{type = 'xs:integer', value = ",
                    "      xqerl_seq3:size(_@NextVar)})"
                    "end"]),
            {P, NV}
      end,                 
   % reverse list that the dependencies are correct   
   {VarSetAbs0,{_,_,LastCtx}} = 
     lists:mapfoldl(VarSetFun, FCtx,
                    lists:reverse(maps:get(variables, ContextMap))),
   VarSetAbs = lists:flatten(VarSetAbs0),
   BodyAbs = expr_do(maps:put(ctx_var, LastCtx,ContextMap), Body),
   V1 = ?P("_@@VarSetAbs"),
   M = ?P(["main(Options) ->",
           " Ctx0 = xqerl_context:merge(init(), Options),",
           " _@@ImportedVars,",
           " _@@V1,",
           "_@BodyAbs",
           "."]),
%%    ?dbg("M",M),
   [M].
   
variable_functions(ContextMap, Variables) ->
   CtxName = {var,?L,get_context_variable_name(ContextMap)},
   F = fun(#xqVar{id = _, name = QName, expr = Expr, external = Ext, type = Type0}) ->
             Type = if Type0 == undefined ->
                          #xqSeqType{type = item, occur = zero_or_many};
                       true ->
                          Type0
                    end,
             #qname{namespace = Ns1, prefix = P1, local_name = L1} = QName,
             QNameStr = if P1 == <<>> ->
                              L1;
                           P1 == undefined ->
                              <<"Q{", Ns1/binary, "}", L1/binary>>;
                           true ->
                              <<P1/binary, ":", L1/binary>>
                        end,
             erlang:put(ctx, 1),
             Name = xqerl_static:variable_hash_name(QName),
             Expr1 = expr_do(ContextMap, Expr),
             % when external, check for set value first, then default, 
             % or then XPDY0002 when not set.
             if Ext == true ->
                  ?P(["'@Name@'(_@CtxName) ->",
                      "   Tmp = begin _@Expr1 end,",
                      "   case maps:get(_@QNameStr@,_@CtxName,Tmp) of",
                      "      undefined -> xqerl_error:error('XPDY0002');",
                      "      X -> xqerl_types:promote(X, _@Type@) end."]);
                true ->
                  ?P(["'@Name@'(_@CtxName) ->",
                      "   _@Expr1."])
             end
     end,
   [F(V) || #xqVar{} = V <- Variables].

function_functions(ContextMap, Functions) ->
   CtxName = get_context_variable_name(ContextMap),
   F =fun(#xqFunction{id = _,
                      name = FxName,
                      arity = Arity,
                      type = RType,
                      params = Params,
                      body = Expr}) ->
            erlang:put(ctx, 1),
            {FName, _} = xqerl_static:function_hash_name(FxName, Arity),
            % add parameters to scope
            VF = fun(#xqVar{id = VId,
                            name = Name,
                            type = Type,
                            annotations = Annos}, Map) ->
                       VarName = list_to_atom(
                                   lists:concat([param_prefix(), VId])),
                       %% {name,type,annos,Name}
                       NewMap = add_param({Name,Type,Annos,VarName}, Map),
                       {{var,?L,VarName}, NewMap}
                 end,
            {List,Map2} =  lists:mapfoldl(VF, ContextMap, Params),
            CtxName2 = next_ctx_var_name(),
            Map3 = set_context_variable_name(Map2, CtxName2),
            E1 = alist(expr_do(Map3#{in_local_fun => true}, Expr)),
            C1 = {var,?L,CtxName},
            C2 = {var,?L,CtxName2},
            % do not allow functions to access the current context item
            Out = ?P(["'@FName@'(_@C1,_@@List) ->",
                "   _@C2 = xqerl_context:set_empty_context_item(_@C1),",
                "   xqerl_types:promote(_@E1, _@RType@)."]),
            Out
     end,
   [ F(V)
     || #xqFunction{} = V <- Functions].

not_private(Annos) ->
   [ok || 
    #annotation{name = #qname{namespace = ?A("http://www.w3.org/2012/xquery"),
                              local_name = ?A("private")}} <- Annos] == [].


export_functions(Functions) ->
   Specs = [ xqerl_static:function_hash_name(Name, Arity) 
           || #xqFunction{name = Name, 
                          arity = Arity,
                          annotations = Annos} <- Functions,
              not_private(Annos)],
   export_atts(Specs).

export_variables(Variables, _Ctx) ->
   Specs = [ {xqerl_static:variable_hash_name(Name),1}
           || #xqVar{name = Name, 
                     annotations = _Annos} <- Variables%,
              %not_private(Annos)
           ],
   export_atts(Specs).

export_atts([]) -> [];
export_atts([{F,A}|T]) ->
   lists:concat(["-export(['",F,"'/",A,"]). ",export_atts(T)]).

param_types(Params) ->
   [ T || #xqVar{type = T} <- Params].

% cardinality ensure
expr_do(Ctx, {ensure, #xqAtomicValue{} = Var, _}) ->
   expr_do(Ctx, Var);
expr_do(Ctx, {ensure, Var, #xqSeqType{occur = zero_or_many}}) ->
   expr_do(Ctx, Var);
expr_do(Ctx, {ensure, Var, #xqSeqType{occur = Occur}}) ->
   Expr = expr_do(Ctx, Var),
   FunName = if Occur == one ->
                   ensure_one;
                Occur == one_or_many ->
                   ensure_one_or_more;
                Occur == zero_or_one ->
                   ensure_zero_or_one;
                true ->
                   ensure_zero_or_more
             end,
   ?P("xqerl_seq3:'@FunName@'(_@Expr)");
% ignoring pragmas for now
expr_do(_Ctx, {pragma, _Pragmas, []}) ->
   ?err('XQST0079');
expr_do(Ctx, {pragma, [{#qname{namespace = ?A("http://xqerl.org/xquery"),
                               local_name = ?A("parallel")},P}], Exprs}) ->
   case string:trim(P) of
      ?A("unordered") ->
         {unordered_parallel,expr_do(Ctx, Exprs)};
      _ ->
         {parallel,expr_do(Ctx, Exprs)}
   end;
expr_do(Ctx, {pragma, _Pragmas, Exprs}) ->
   expr_do(Ctx, Exprs);

expr_do(_Ctx, undefined) ->
   {atom,?L,undefined};
% try/catch
expr_do(Ctx, {'try',Id,Expr,{'catch',CatchClauses}}) ->
   CodeVar = list_to_atom("CodeVar" ++ integer_to_list(Id)),
   DescVar = list_to_atom("DescVar" ++ integer_to_list(Id)),
   ValuVar = list_to_atom("ValuVar" ++ integer_to_list(Id)),
   ModuVar = list_to_atom("ModuVar" ++ integer_to_list(Id)),
   LineVar = list_to_atom("LineVar" ++ integer_to_list(Id)),
   ColnVar = list_to_atom("ColnVar" ++ integer_to_list(Id)),
   
   ErrNs = ?A("http://www.w3.org/2005/xqt-errors"),
   
   NewCodeVar = {#qname{namespace = ErrNs,prefix = ?A("err"), 
                        local_name = ?A("code")},
                 #xqSeqType{type = 'xs:QName', 
                            occur = one},[],CodeVar},
   NewDescVar = {#qname{namespace = ErrNs,prefix = ?A("err"), 
                        local_name = ?A("description")},
                 #xqSeqType{type = 'xs:string', 
                            occur = zero_or_one},[],DescVar},
   NewValuVar = {#qname{namespace = ErrNs,prefix = ?A("err"), 
                        local_name = ?A("value")},
                 #xqSeqType{type = 'item', 
                            occur = zero_or_many},[],ValuVar},
   NewModuVar = {#qname{namespace = ErrNs,prefix = ?A("err"), 
                        local_name = ?A("module")},
                 #xqSeqType{type = 'xs:string', 
                            occur = zero_or_one},[],ModuVar},
   NewLineVar = {#qname{namespace = ErrNs,prefix = ?A("err"), 
                        local_name = ?A("line-number")},
                 #xqSeqType{type = 'xs:integer', 
                            occur = zero_or_one},[],LineVar},
   NewColnVar = {#qname{namespace = ErrNs,prefix = ?A("err"), 
                        local_name = ?A("column-number")},
                 #xqSeqType{type = 'xs:integer', 
                            occur = zero_or_one},[],ColnVar},
   
   Ctx0 = add_variable(NewCodeVar, Ctx),
   Ctx1 = add_variable(NewDescVar, Ctx0),
   Ctx2 = add_variable(NewValuVar, Ctx1),
   Ctx3 = add_variable(NewModuVar, Ctx2),
   Ctx4 = add_variable(NewLineVar, Ctx3),
   Ctx5 = add_variable(NewColnVar, Ctx4),

   CodeVar1 = {var,?L,CodeVar},
   DescVar1 = {var,?L,DescVar},
   ValuVar1 = {var,?L,ValuVar},
   ModuVar1 = {var,?L,ModuVar},
   LineVar1 = {var,?L,LineVar},
   ColnVar1 = {var,?L,ColnVar},
   
   ClsFun = 
     fun({Errors,DoExpr}) ->
           DoExprAbs = expr_do(Ctx5, DoExpr),
           lists:map(
             fun(#xqNameTest{name = #qname{namespace = ?A("*"),local_name = ?A("*")}}) ->
                   C = ?Q("{_,#xqError{name = _@CodeVar1,
                                 description = _@DescVar1,
                                 value = _@ValuVar1,
                                 location = {_@ModuVar1, _@LineVar1, _@ColnVar1}},_}"),
                   D = revert(?Q("_@DoExprAbs")),
                   {clause,?L,[revert(C)],[],[D]};
                (#xqNameTest{name = #qname{namespace = ?A("*"),local_name = Ln}}) ->
                   C = ?Q("{_,#xqError{name = #xqAtomicValue{value = #qname{local_name = _@Ln@}} = _@CodeVar1,
                                 description = _@DescVar1,
                                 value = _@ValuVar1,
                                 location = {_@ModuVar1, _@LineVar1, _@ColnVar1}},_}"),
                   D = revert(?Q("_@DoExprAbs")),
                   {clause,?L,[revert(C)],[],[D]};
                (#xqNameTest{name = #qname{namespace = Ns,local_name = ?A("*")}}) ->
                   C = ?Q("{_,#xqError{name = #xqAtomicValue{value = #qname{namespace = _@Ns@}} = _@CodeVar1,
                                 description = _@DescVar1,
                                 value = _@ValuVar1,
                                 location = {_@ModuVar1, _@LineVar1, _@ColnVar1}},_}"),
                   D = revert(?Q("_@DoExprAbs")),
                   {clause,?L,[revert(C)],[],[D]};
                (#xqNameTest{name = #qname{namespace = Ns,local_name = Ln}}) ->
                   C = ?Q("{_,#xqError{name = #xqAtomicValue{value = #qname{namespace = _@Ns@,
                                                     local_name = _@Ln@}} = _@CodeVar1,
                                 description = _@DescVar1,
                                 value = _@ValuVar1,
                                 location = {_@ModuVar1, _@LineVar1, _@ColnVar1}},_}"),
                   D = revert(?Q("_@DoExprAbs")),
                   {clause,?L,[revert(C)],[],[D]}
               end, Errors)
     end,
   
   TryAbs = alist(expr_do(Ctx, Expr)),
   Clauses = revert(lists:flatmap(ClsFun, CatchClauses)),
   {'try',?L,
     TryAbs,
     [], % guard
     alist(revert(Clauses)),
     [] % after
   };

expr_do(Ctx, #xqNameTest{name = Name}) ->
   abs_qname(Ctx, Name);

% inline errors
expr_do(_Ctx, {error, ErrCode}) when is_atom(ErrCode) ->
   ?P("xqerl_error:error(_@ErrCode@)");

% bang operator
%% expr_do(Ctx, {'simple-map',SeqExpr,{'simple-map',_,_} = MapExpr}) ->
%%    SeqAbs = expr_do(Ctx, SeqExpr),
%%    step_expr_do(Ctx, MapExpr, SeqAbs);

expr_do(Ctx, {'simple-map',SeqExpr,MapExpr}) ->
   %?dbg("{'simple-map',SeqExpr,MapExpr}",{'simple-map',SeqExpr,MapExpr}),
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   SeqAbs = expr_do(Ctx, SeqExpr),
   BodyAbs = expr_do(Ctx1, MapExpr),
   Param = {var,?L,NextCtxVar},
   FunAbs = ?P("fun(_@Param) -> _@BodyAbs end"),
   ?P("xqerl_flwor:simple_map(_@CtxVar,_@SeqAbs,_@FunAbs)");

% inline anonymous functions
expr_do(Ctx, #xqFunction{id = _Id,
                         name = undefined, % fun object
                         annotations = _, 
                         arity = _,
                         params = Params,
                         body = Expr} = F) ->
   NextCtxVar = next_ctx_var_name(),
   NextNextCtxVar = next_ctx_var_name(),
   NextNextNextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   % add parameters to scope
   PFun = fun(#xqVar{id = ID, 
                     name = #qname{} = Name,
                     type = Type, 
                     annotations = Annos}, Map) ->
                VarName = list_to_atom(lists:concat([param_prefix(), ID])),
                TVarName = list_to_atom(lists:concat(["T",param_prefix(), ID])),
                %% {name,type,annos,Name}
                NewMap = add_param({Name,Type,Annos,VarName}, Map),
                {{var,?L,TVarName}, NewMap};
             (X,Map) ->
               X1 = expr_do(Ctx,X),
               {X1,Map}
          end,
   {ParamList,Ctx2} =  lists:mapfoldl(PFun, Ctx1, Params),
   % check parameter types
   Checks = [begin
                V = {var,?L,list_to_atom(lists:concat([param_prefix(), ID]))},
                T = {var,?L,list_to_atom(lists:concat(["T",param_prefix(), ID]))},
                ensure_param_type(Ctx, V, T, Type)
             end ||
             #xqVar{id = ID, type = Type} <- Params],
   % do not allow functions to access the current context item
   Ctx3 = set_context_variable_name(Ctx2, NextNextNextCtxVar),
   CtxP = {var,?L,NextNextCtxVar},
   CtxI = {var,?L,NextNextNextCtxVar},
   FunBod = expr_do(Ctx3, Expr),
   case maps:find(in_pred, Ctx) of
      error ->
         Body = ?P(["fun(_@CtxP,_@@ParamList) ->",
                    " _@CtxI = xqerl_context:set_empty_context_item(_@CtxP),",
                    " _@@Checks,",   
                    " _@FunBod end"]),
         abs_function(Ctx, F, Body) ;
      {ok,true} ->
         Body = ?P(["fun(_@CtxI,_@@ParamList) ->",
                    " _@@Checks,",   
                    " _@FunBod end"]),
         abs_function(Ctx, F, Body) 
   end;
         

expr_do(Ctx, {'context-item', {_Type,_External,Expr}} )->
   expr_do(Ctx, Expr);
expr_do(_Ctx, {map, []} ) -> % empty map
   ?Q("#{}");
expr_do(Ctx, {map, Vals} ) ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   AVals = lists:foldl(
             fun({'map-key-val',Key,Val}, Abs) ->
                   KeyExp = expr_do(Ctx,Key),
                   ValExp = expr_do(Ctx,Val),
                   ?P("[{_@KeyExp, _@ValExp}|_@Abs]")
             end, {nil,?L}, alist(Vals)), 
   ?P("xqerl_map:construct(_@CtxVar,_@@AVals)");
expr_do(Ctx, {array, {expr, Expr}} )->
   Vals = lists:foldr(
            fun(E,Acc) ->
                  Ex = expr_do(Ctx, E),
                  case Ex of
                     {nil,_} ->
                        ?P("[[]|_@Acc]");
                     _ ->
                        ?P("[_@Ex|_@Acc]")
                  end
            end,{nil,?L}, alist(Expr)),
   ?P("xqerl_array:from_list(_@Vals)");

% this is a constructor
expr_do(Ctx, {array, [{content_expr, Expr}]} ) ->
   Vals = lists:foldr(
            fun(E,Acc) ->
                  Ex = expr_do(Ctx, E),
                  case Ex of
                     {nil,_} ->
                        ?P("_@Acc");
                     _ ->
                        ?P("[_@Ex|_@Acc]")
                  end
            end,{nil,?L}, alist(Expr)),
   ?P("xqerl_array:from_list(xqerl_seq3:flatten(xqerl_seq3:expand(_@Vals)))");
expr_do(Ctx, {array, Expr}) ->
   expr_do(Ctx, {array, {expr,Expr}});

expr_do(Ctx, #xqQuery{query = Qry}) ->
   XQ = alist(expr_do(Ctx, Qry)),
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   ?P(["XQuery = begin _@XQ end,",
       "ReturnVal = xqerl_types:return_value(XQuery),",
       "xqerl_context:destroy(_@CtxVar),",
       "ReturnVal"
      ]);
   
expr_do(Ctx, [T]) when is_tuple(T) ->
   expr_do(Ctx, T);
expr_do(_Ctx, #xqAtomicValue{type = T, value = V}) ->
   ?P("#xqAtomicValue{type = _@T@, value = _@V@}");

expr_do(Ctx, {'string-constructor', Expr}) ->
   F = fun(#xqAtomicValue{type = 'xs:string', value = V}, Abs) ->
             if V == <<>> ->
                   Abs;
                true ->
                   V1 = binary_to_list(V),
                   B = {bin_element, ?L,{string,?L,V1},default,default},
                     %?P("<<_@V1>>"),
                   [B|Abs]
             end;
          (I,Abs) ->
             V = expr_do(Ctx,I),
             ?dbg("I",I),
             {_,_,[B]} = ?P("<<(xqerl_types:string_value(_@V))/binary>>"),
             [B|Abs]          
       end,
   Es = lists:foldr(F, [], alist(Expr)),
   Fl = {bin,?L,Es},
   ?P("#xqAtomicValue{type = 'xs:string', value = _@Fl}");

expr_do(Ctx, 'context-item') ->
   CtxName = {var,?L,get_context_variable_name(Ctx)},
   ?P("xqerl_context:get_context_item(_@CtxName)");
expr_do(Ctx, {range,Expr1,Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_seq3:range(_@E1,_@E2)");
expr_do(Ctx, {'and',Expr1,Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   S1 = ?P("xqerl_operators:eff_bool_val(_@E1)"),
   S2 = ?P("xqerl_operators:eff_bool_val(_@E2)"),
   ?P("#xqAtomicValue{type = 'xs:boolean', value = _@S1 andalso _@S2}");
expr_do(Ctx, {'or',Expr1,Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   S1 = ?P("xqerl_operators:eff_bool_val(_@E1)"),
   S2 = ?P("xqerl_operators:eff_bool_val(_@E2)"),
   ?P("#xqAtomicValue{type = 'xs:boolean', value = _@S1 orelse _@S2}");

% instance of / castable
expr_do(Ctx, {instance_of,Expr1,Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_types:instance_of(_@E1,_@E2)");

expr_do(_Ctx, {castable_as,'empty-sequence',#xqSeqType{occur = one}}) -> 
   % bad empty cast
   abs_boolean(false);
expr_do(_Ctx, {castable_as,'empty-sequence',#xqSeqType{occur = zero_or_one}}) -> 
   % good empty cast
   abs_boolean(true);
expr_do(Ctx, {castable_as,Expr1,
              #xqSeqType{type = #qname{prefix = ?A("xs"),local_name = ?A("QName")}}}) ->
   expr_do(Ctx, {castable_as,Expr1,#xqSeqType{type = 'xs:QName'}});
expr_do(Ctx, {castable_as,Expr1,#xqSeqType{type = 'xs:QName'}}) -> 
   % namespace sensitive
   Namespaces = abs_ns_list(Ctx),
   E1 = expr_do(Ctx, Expr1),
   ?P("xqerl_types:castable(_@E1,'xs:QName',_@Namespaces)");
expr_do(Ctx, {castable_as,Expr1,Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_types:castable(_@E1,_@E2)");

expr_do(Ctx, {cast_as,Expr1,
              #xqSeqType{type = #qname{prefix = ?A("xs"),local_name = ?A("QName")}}}) -> 
   expr_do(Ctx, {cast_as,Expr1,#xqSeqType{type = 'xs:QName'}});
expr_do(Ctx, {cast_as,Expr1,#xqSeqType{type = 'xs:QName'}}) -> 
   % namespace sensitive
   Namespaces = abs_ns_list(Ctx),
   E1 = expr_do(Ctx, Expr1),
   ?P("xqerl_types:cast_as(_@E1,'xs:QName',_@Namespaces)");
expr_do(Ctx, {cast_as,Expr1,Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_types:cast_as(_@E1,_@E2)");

% atomize/promote bodies of functions
expr_do(Ctx, {promote_to, {atomize, #xqFunction{body = Body} = Expr1},
              #xqSeqType{type = #xqFunTest{type = Expr2}}}) ->
   expr_do(Ctx, Expr1#xqFunction{body = {promote_to, {atomize, Body}, Expr2}});
expr_do(Ctx, {promote_to, #xqFunction{body = Body} = Expr1,
              #xqSeqType{type = #xqFunTest{type = Expr2}}}) ->
   expr_do(Ctx, Expr1#xqFunction{body = {promote_to, Body, Expr2}});
expr_do(Ctx, {promote_to,Expr1,Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_types:promote(_@E1,_@E2)");

expr_do(Ctx, #xqSeqType{type = #qname{local_name = Ln}} = ST) ->
   Atom = erlang:binary_to_atom(<<"xs:", Ln/binary>>, latin1),
   abs_seq_type(Ctx, ST#xqSeqType{type = Atom});
expr_do(Ctx, #xqSeqType{} = ST) ->
   abs_seq_type(Ctx, ST);

% node construction
% just for now
expr_do(Ctx, {content_expr, List}) when is_list(List) ->
   Exprs = lists:map(fun('empty-sequence') -> {nil,?L};
                        (E) ->
                           expr_do(Ctx, E)
                     end, List),
   abs_list(Exprs);
expr_do(Ctx, {content_expr, List}) ->
   expr_do(Ctx, {content_expr, [List]});

expr_do(Ctx, {Cons, Expr}) when Cons =:= direct_cons;
                                Cons =:= comp_cons ->
   C = {var,?L,get_context_variable_name(Ctx)},
   E = expr_do(Ctx, Expr),
   ?P("xqerl_node:new_fragment(_@C,_@E)");

expr_do(Ctx, {atomize, #xqFunction{body = Body} = Expr1}) ->
   expr_do(Ctx, Expr1#xqFunction{body = {atomize, Body}});

% paths
%TODO move path expressions to local functions
% should take Base as the original context
expr_do(_,{path_expr,_,['empty-sequence'|_]}) ->
   {nil,?L};

%% Split path into simple and complex parts: 
%% Simple is path with only positional/easy predicates
%%  they send a fun to the document process 
%% Complex are joins and complex predicates  
%%  they call the document process per function 

expr_do(Ctx, {path_expr,_Id,[ R | Steps ]}) when R == {'any-root'};
                                                 R == {'root'} ->
   CurrCtxVar = {var,?L,get_context_variable_name(Ctx)},
   CtxItem = ?P("xqerl_context:get_context_item(_@CurrCtxVar)"),
   CtxSeq = ?P("xqerl_seq3:sequence(_@CtxItem)"),
%   NextCtxVar = next_ctx_var_name(),
   %NextCtxVVar = {var,?L,NextCtxVar},
   case xqerl_abs_xdm:compile_path_statement(Ctx,'Root',[R|Steps]) of
      {[],_Rest} -> % nothing simple, only complex
%?dbg("{P,Rest}",{[],Rest}),
         Comp = step_expr_do(Ctx, Steps, CtxSeq),
         ?P(["fun() ->",
             " _@@Comp",
             "end()"
            ]);
      {P,[]} -> % all simple
         ?P(["fun() ->",
             " xqerl_seq3:path_map(fun(#xqNode{doc = Doc1,node = Root},_,_) ->",
             "                       F = fun(Doc) -> _@P end,",
             "         fun() -> ",
             "          case xqldb_doc:run(Doc1,F) of",
             "           #xqError{} = E -> erlang:throw(E);",
             "           function_clause -> [];",
             "           O -> O end",
             "         end()",
             "                     ;(_,_,_) -> xqerl_error:error('XPTY0019')"
             "                     end, _@CtxSeq)",
             "end()"
            ]);
      {P,Rest} -> % simple and complex
%?dbg("{P,Rest}",{P,Rest}),
         NextVar = {var,?L,next_var_name()},
%         PosVar = {var,?L,next_var_name()},
%         SizVar = {var,?L,next_var_name()},
%         Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
         E1 = step_expr_do(Ctx, Rest, NextVar),
         % new context need position and size
         ?P(["fun() ->",
             " _@NextVar = xqerl_seq3:path_map(",
             "            fun(#xqNode{doc = Doc1,node = Root},_,_) ->",
             %"            fun(#xqNode{doc = Doc1,node = Root},_@PosVar,_@SizVar) ->",
             %"              _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,#xqNode{doc = Doc1,node = Root},_@PosVar,_@SizVar),",
             "              F = fun(Doc) -> _@P end,",
             "         fun() -> ",
             "          case xqldb_doc:run(Doc1,F) of",
             "           #xqError{} = E -> erlang:throw(E);",
             "           function_clause -> [];",
             "           O -> O end",
             "         end()",
             "             ;(_,_,_) -> xqerl_error:error('XPTY0019')"
             "            end, _@CtxSeq),",
             " _@@E1",
             "end()"
            ])
   end;
         

expr_do(Ctx, {path_expr,_Id,[ {variable,Var} | Steps ]}) ->
%?dbg("Steps",Steps),
   CurrCtxVar = {var,?L,get_context_variable_name(Ctx)},
   CtxSeq = a_var(Var,CurrCtxVar),
   NextCtxVar = next_ctx_var_name(),
   NextCtxVVar = {var,?L,NextCtxVar},
   case xqerl_abs_xdm:compile_path_statement(Ctx,'Root',Steps) of
      {[],_} -> % nothing simple, only complex
         %?dbg("{P,Rest}",{[],Rest,Src}),
         Comp = step_expr_do(Ctx, Steps, CtxSeq),
         %?dbg("Comp",Comp),
         O = ?P(["fun() ->",
                 " _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,_@CtxSeq),",
                 " _@@Comp",
                 "end()"
            ]),
         %?dbg("O",O),
         O;
      {P,[]} ->
         ?P(["xqerl_seq3:path_map(fun(#xqNode{doc = Doc1,node = Root},_,_) ->",
             "                    F = fun(Doc) -> _@P end,",
             "         fun() -> ",
             "          case xqldb_doc:run(Doc1,F) of",
             "           #xqError{} = E -> erlang:throw(E);",
             "           function_clause -> [];",
             "           O -> O end",
             "         end()",
             "                      ;(_,_,_) -> xqerl_error:error('XPTY0019')"
             "              end, xqerl_seq3:sequence(_@CtxSeq))"
            ]);
      {P,Rest} ->
         %?dbg("{P,Rest}",{P,Rest}),
         NextVar = {var,?L,next_var_name()},
%         PosVar = {var,?L,next_var_name()},
%         SizVar = {var,?L,next_var_name()},
%         Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
         E1 = step_expr_do(Ctx, Rest, NextVar),
         % new context need position and size
         ?P(["fun() ->",
             " _@NextVar = xqerl_seq3:path_map(",
             "            fun(#xqNode{doc = Doc1,node = Root},_,_) ->",
             %"            fun(#xqNode{doc = Doc1,node = Root},_@PosVar,_@SizVar) ->",
             %"              _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,#xqNode{doc = Doc1,node = Root},_@PosVar,_@SizVar),",
             "              F = fun(Doc) -> _@P end,",
             "         fun() -> ",
             "          case xqldb_doc:run(Doc1,F) of",
             "           #xqError{} = E -> erlang:throw(E);",
             "           function_clause -> [];",
             "           O -> O end",
             "         end()",
             "             ;(_,_,_) -> xqerl_error:error('XPTY0019')"
             "            end, _@CtxSeq),",
             " _@@E1",
             "end()"
            ])
%%          %?dbg("{P,Rest}",{P,Rest}),
%%          NextVar = {var,?L,next_var_name()},
%%          E1 = step_expr_do(Ctx, Rest, NextVar),
%%          ?P(["xqerl_seq3:path_map(fun(#xqNode{doc = Doc,node = Root} = _@NextVar) -> _@E1 end,",
%%              " xqerl_seq3:path_map(fun(#xqNode{doc = Doc1,node = Root}) ->",
%%              "                     F = fun(Doc) -> _@P end,",
%%              "                     fun() -> xqldb_doc:run(Doc1,F) end()",
%%              "                      ;(_) -> xqerl_error:error('XPTY0019')"
%%              "               end, xqerl_seq3:sequence(_@Src))",
%%              " )" 
%%             ])
   end;



expr_do(Ctx, {path_expr,_Id,[ Base | Steps ]}) ->
%?dbg("[ Base | Steps ]",[ Base | Steps ]),
   CurrCtxVar = {var,?L,get_context_variable_name(Ctx)},
   NextCtxVar = next_ctx_var_name(),
   NextCtxVVar = {var,?L,NextCtxVar},
   CtxSeq = expr_do(Ctx, {expr, Base}),
   case xqerl_abs_xdm:compile_path_statement(Ctx,'Root',Steps) of
      {[],_} -> % nothing simple, only complex
         %?dbg("{P,Rest}",{[],Rest,Src}),
         Comp = step_expr_do(Ctx, Steps, CtxSeq),
         %?dbg("Comp",Comp),
         O = ?P(["fun() ->",
                 " _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,_@CtxSeq),",
                 " _@@Comp",
                 "end()"
            ]),
         %?dbg("O",O),
         O;
      {P,[]} ->
         ?P(["xqerl_seq3:path_map(fun(#xqNode{doc = Doc1,node = Root},_,_) ->",
             "                    F = fun(Doc) -> _@P end,",
             "         fun() -> ",
             "          case xqldb_doc:run(Doc1,F) of",
             "           #xqError{} = E -> erlang:throw(E);",
             "           function_clause -> [];",
             "           O -> O end",
             "         end()",
             "                      ;(_,_,_) -> xqerl_error:error('XPTY0019')"
             "              end, xqerl_seq3:sequence(_@CtxSeq))"
            ]);
      {P,Rest} ->
         ?dbg("{P,Rest}",{P,Rest}),
         NextVar = {var,?L,next_var_name()},
%         PosVar = {var,?L,next_var_name()},
%         SizVar = {var,?L,next_var_name()},
%         Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
         E1 = step_expr_do(Ctx, Rest, NextVar),
         % new context need position and size
         ?P(["fun() ->",
             " _@NextVar = xqerl_seq3:path_map(",
             "            fun(#xqNode{doc = Doc1,node = Root},_,_) ->",
             %"            fun(#xqNode{doc = Doc1,node = Root},_@PosVar,_@SizVar) ->",
             %"              _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,#xqNode{doc = Doc1,node = Root},_@PosVar,_@SizVar),",
             "              F = fun(Doc) -> _@P end,",
             "         fun() -> ",
             "          case xqldb_doc:run(Doc1,F) of",
             "           #xqError{} = E -> erlang:throw(E);",
             "           function_clause -> [];",
             "           O -> O end",
             "         end()",
             "             ;(_,_,_) -> xqerl_error:error('XPTY0019')"
             "            end, _@CtxSeq),",
             " _@@E1",
             "end()"
            ])
%%          Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
%%          E1 = expr_do(Ctx1, Rest),
%%          ?P(["xqerl_seq3:path_map(fun(#xqNode{doc = Doc,node = Root} = _@NextCtxVVar) -> _@E1 end,",
%%              " xqerl_seq3:path_map(fun(#xqNode{doc = Doc1,node = Root}) ->",
%%              "                    F = fun(Doc) -> _@P end,",
%%              "                    fun() -> xqldb_doc:run(Doc1,F) end()",
%%              "                      ;(_) -> xqerl_error:error('XPTY0019')"
%%              "              end, xqerl_seq3:sequence(_@Src))",
%%              " )"
%%             ])
   end;

expr_do(Ctx, {atomize, {path_expr,_Id,Steps}}) ->
   expr_do(Ctx, {path_expr,_Id,Steps ++ [atomize]});

expr_do(Ctx, {root}) ->
   CurrCtxVar = {var,?L,get_context_variable_name(Ctx)},
   ?P("xqerl_context:get_context_item(_@CurrCtxVar)");
expr_do(Ctx, {'any-root'}) ->
   CurrCtxVar = {var,?L,get_context_variable_name(Ctx)},
   ?P("xqerl_context:get_context_item(_@CurrCtxVar)");

expr_do(Ctx, {atomize, Expr}) ->
   E = expr_do(Ctx, Expr),
   ?P("xqerl_types:atomize(_@E)");

expr_do(Ctx, #xqDocumentNode{} = N) ->
   abs_document_node(Ctx, N);
expr_do(Ctx, #xqElementNode{} = N) ->
   abs_element_node(Ctx, N);
expr_do(Ctx, #xqAttributeNode{} = N) ->
   abs_attribute_node(Ctx, N);
expr_do(Ctx, #xqTextNode{} = N) ->
   abs_text_node(Ctx, N);
expr_do(Ctx, #xqCommentNode{} = N) ->
   abs_comment_node(Ctx, N);
expr_do(Ctx, #xqProcessingInstructionNode{} = N) ->
   abs_pi_node(Ctx, N);
expr_do(Ctx, #xqNamespace{} = N) ->
   abs_namespace_node(Ctx, N);
expr_do(Ctx, #xqNamespaceNode{} = N) ->
   abs_namespace_node(Ctx, N);

% some, every == lists: any, all
expr_do(Ctx, {Op,Vars,Test}) when Op =:= every;
                                  Op =:= some ->
   % add the variables to the stack
   VarNames = [{[],[],[],local_variable_name(Id)} || #xqVar{id = Id} <- Vars],
   VarTup = get_variable_tuple(Ctx, VarNames),
   
   Fun = fun(#xqVar{id = Id,
                    name = Name,
                    type = Type,
                    expr = Expr}, Ctx1) ->
               VarName = local_variable_name(Id),
               Ctx2 = add_variable({Name,Type,[],VarName}, Ctx1),
               E = expr_do(Ctx1, Expr),
               {{generate,?L,
                  {var,?L,VarName}, ?P("xqerl_seq3:to_list(_@E)")},
                Ctx2}
         end,
   {Gens,Ctx3} = lists:mapfoldl(Fun, Ctx,Vars),
   F = case Op of
          every -> ?Q("lists:all");
          some ->  ?Q("lists:any")
       end,
   E = expr_do(Ctx3, Test),
   ?P(["#xqAtomicValue{",
       "    type = 'xs:boolean',", 
       "    value =" ,
       "      _@F(fun(_@VarTup) ->",
       "               xqerl_operators:eff_bool_val(_@E)",
       "          end,[_@VarTup || _@Gens])}"]);

% ordering
expr_do(Ctx, {'function-call', 
              #qname{namespace = ?FN,
                     local_name = ?A("unordered")}, 1, Args}) ->
   expr_do(Ctx, {'unordered-expr', Args});
expr_do(_Ctx, {'unordered-expr', 'empty-expr'}) -> ?err('XPST0003');
expr_do(Ctx, {'unordered-expr', Expr}) ->
   % new context to unordered
   % run expression with new context
   % continue with old context
   C = {var,?L,get_context_variable_name(Ctx)},
   NextCtx = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtx),
   V = {var,?L,NextCtx},
   S3 = expr_do(Ctx1, Expr),
   ?P("begin _@V = xqerl_context:set_ordering_mode(_@C,unordered), _@S3 end");

expr_do(_Ctx, {'ordered-expr', 'empty-expr'}) -> ?err('XPST0003');
expr_do(Ctx, {'ordered-expr', Expr}) ->
   % new context to ordered
   % run expression with new context
   % continue with old context
   C = {var,?L,get_context_variable_name(Ctx)},
   NextCtx = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtx),
   V = {var,?L,NextCtx},
   S3 = expr_do(Ctx1, Expr),
   ?P("begin _@V = xqerl_context:set_ordering_mode(_@C,ordered), _@S3 end");

expr_do(Ctx, {'function-call', #xqFunction{params = Params, 
                                           body = {M,F,_A}}}) when is_atom(M),
                                                                   is_atom(F) ->
   CtxName = {var,?L,get_context_variable_name(Ctx)},
   NewArgs = lists:map(fun(P) ->
                             expr_do(Ctx,P)
                       end, Params),
   ?P("'@M@':'@F@'(_@CtxName,_@@NewArgs)");

expr_do(_Ctx, #xqFunction{annotations = Annos, 
                          name = Name, 
                          arity = Ay, 
                          params = Params,
                          type = Type,
                          body = {xqerl_fn,concat,_}}) ->
   ?P(["#xqFunction{id = 0,"
       "            annotations = _@Annos@," 
       "            name = _@Name@," 
       "            arity = _@Ay@," 
       "            params = _@Params@,"
       "            type = _@Type@,"
       "            body = fun xqerl_fn:concat/2}"]);
expr_do(Ctx, #xqFunction{annotations = Annos, 
                          name = Name, 
                          arity = Ay, 
                          params = Params,
                          type = Type,
                          body = {M,F,_}}) ->
   CtxNm = get_context_variable_name(Ctx),
   CtxVar = {var,?L,CtxNm}, 
   Fun = if Ay > 0 ->
               DArgs = [{var,?L,list_to_atom("P__"++integer_to_list(I))} ||
                        I <- lists:seq(1, Ay)],
               ?P("fun(_,_@@DArgs) -> '@M@':'@F@'(_@CtxVar,_@@DArgs) end");
            true ->
               ?P("fun(_) -> '@M@':'@F@'(_@CtxVar) end")
         end,
   ?P(["#xqFunction{id = 0,"
       "            annotations = _@Annos@," 
       "            name = _@Name@," 
       "            arity = _@Ay@," 
       "            params = _@Params@,"
       "            type = _@Type@,"
       "            body = _@Fun}"]);

expr_do(Ctx, #xqFunction{annotations = Annos, 
                          name = Name, 
                          arity = Ay, 
                          params = Params,
                          type = Type,
                          body = {F,_}}) ->
   CtxNm = get_context_variable_name(Ctx),
   CtxVar = {var,?L,CtxNm}, 
   Fun = if Ay > 0 ->
               DArgs = [{var,?L,list_to_atom("P__"++integer_to_list(I))} ||
                        I <- lists:seq(1, Ay)],
               ?P("fun(_,_@@DArgs) -> '@F@'(_@CtxVar,_@@DArgs) end");
            true ->
               ?P("fun(_) -> '@F@'(_@CtxVar) end")
         end,
   ?P(["#xqFunction{id = 0,"
       "            annotations = _@Annos@," 
       "            name = _@Name@," 
       "            arity = _@Ay@," 
       "            params = _@Params@,"
       "            type = _@Type@,"
       "            body = _@Fun}"]);

expr_do(Ctx, {'function-call', #xqFunction{params = Params, 
                                           body = {F,_A}}}) ->
   CtxName = {var,?L,get_context_variable_name(Ctx)},
   NewArgs = lists:map(fun(P) ->
                             expr_do(Ctx,P)
                       end, Params), 
   ?P("'@F@'(_@CtxName,_@@NewArgs)");

expr_do(Ctx, {'anon-call', #xqFunction{params = {P1,OldP1},
                                       body = #xqFunction{params = P2,
                                                          body = B2}}}) ->
   CtxVar = get_context_variable_name(Ctx),
   PFun = fun(#xqVar{id = ID, 
                     name = #qname{} = Name,
                     type = Type, 
                     annotations = Annos}, Map) ->
                VarName = list_to_atom(lists:concat([param_prefix(), ID])),
                %% {name,type,annos,Name}
                NewMap = add_param({Name,Type,Annos,VarName}, Map),
                {{var,?L,VarName}, NewMap};
             (X,Map) ->
               X1 = expr_do(Ctx,X),
               {X1,Map}
          end,
   {P1_1,Ctx2} =  lists:mapfoldl(PFun, Ctx, P1),
   {P1_2,Ctx3} =  lists:mapfoldl(PFun, Ctx2, OldP1),
   P2_1 = lists:map(fun(P) ->
                             expr_do(Ctx3,P)
                       end, P2),
   B2_1 = alist(expr_do(Ctx3, B2)),
   CtxVar1 = {var,?L,CtxVar},
   ?P(["fun (_@CtxVar1,_@@P1_1) -> ",
       "   fun(_@CtxVar1,_@@P1_2) -> _@@B2_1 end(_@CtxVar1,_@@P2_1)",
       "end"]);

% list 
expr_do(Ctx, {expr,[Sing]}) ->
   expr_do(Ctx, Sing);
expr_do(Ctx, {expr,List}) when is_list(List) ->
   Exprs = lists:map(fun(E) ->
                           expr_do(Ctx, E)
                     end, List),
   abs_list(Exprs);

expr_do(Ctx, {expr,E}) ->
   expr_do(Ctx, E);
expr_do(Ctx, {sequence,List}) ->
   Exprs = lists:map(fun('empty-sequence') -> {nil,?L};
                        (E) ->
                           expr_do(Ctx, E)
                     end, List),
   from_list_to_seq(Exprs);

expr_do(_Ctx, []) ->
    {nil,?L};


%% expr_do(#{in_local_fun := true} = Ctx, {variable, {Name,1}}) when is_atom(Name) ->
expr_do(Ctx, {variable, {Name,1}}) when is_atom(Name) ->
   M = {var,?L,get_context_variable_name(Ctx)},
   ?P("maps:get('@Name@',_@M)");
expr_do(Ctx, {variable, {Mod,Name}}) when is_atom(Mod),is_atom(Name) ->
   a_var({Mod,Name},{var,?L,get_context_variable_name(Ctx)});
expr_do(_Ctx, {variable, Name}) when is_atom(Name) ->
   N = {var,?L,Name},
   ?P("_@N");

expr_do(Ctx, {postfix,_Id, {'function-ref',Q,V}, [{arguments,Args}]}) ->
   PhF = fun('?') ->
               VarName = next_var_name(),
               [{var,?L,VarName}];
            (_) ->
               []
         end,
   PlaceHolders = lists:flatmap(PhF, Args),
   NwF = fun('?',PHs) ->
               {hd(PHs),tl(PHs)};
            (Arg,PHs) ->
               {Arg,PHs}
         end,
   {NewArgs, _Empty} = lists:mapfoldl(NwF, PlaceHolders, Args),
   ArF = fun({var,_,_} = Arg) ->
               Arg;
            (Arg) ->
               expr_do(Ctx, Arg)
         end,
   ArgAbs = lists:map(ArF, NewArgs),
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   NextVar = {var,?L,next_var_name()},
   E1 = expr_do(Ctx, {'function-ref',Q,V}),
   if PlaceHolders =:= [] ->
         ?P("begin _@NextVar = _@E1, _@NextVar(_@CtxVar,_@@ArgAbs) end");
      true -> % has placeholders, so only a ref to new function
         ?P("fun(_@CtxVar,_@@PlaceHolders) -> 
                _@NextVar = _@E1, _@NextVar(_@CtxVar,_@@ArgAbs) end")
   end;

% map/array unary lookups
expr_do(Ctx, {postfix,_Id, Map, [{LU, {sequence,_} = Val}]}) 
   when LU =:= array_lookup;
        LU =:= map_lookup ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   MapExpr = expr_do(Ctx, Map),
   ValExp =  expr_do(Ctx, Val),
   ?P("xqerl_operators:lookup(_@CtxVar,_@MapExpr,_@ValExp)");
expr_do(Ctx, {postfix,_Id, Map, [{LU, wildcard}]})
   when LU =:= array_lookup;
        LU =:= map_lookup ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   MapExpr = expr_do(Ctx, Map),
   ?P("xqerl_operators:lookup(_@CtxVar,_@MapExpr,all)");
expr_do(Ctx, {postfix,_Id, Map, [{LU, Val}]})
   when LU =:= array_lookup;
        LU =:= map_lookup ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   MapExpr = expr_do(Ctx, Map),
   ValExp =  expr_do(Ctx, Val),
   ?P("xqerl_operators:lookup(_@CtxVar,_@MapExpr,_@ValExp)");
expr_do(Ctx, {LU, all}) 
   when LU =:= array_lookup;
        LU =:= map_lookup ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   MapExpr = ?P("xqerl_context:get_context_item(_@CtxVar)"),
   ?P("xqerl_operators:lookup(_@CtxVar,_@MapExpr,all)");
expr_do(Ctx, {LU, wildcard})
   when LU =:= array_lookup;
        LU =:= map_lookup ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   MapExpr = ?P("xqerl_context:get_context_item(_@CtxVar)"),
   ?P("xqerl_operators:lookup(_@CtxVar,_@MapExpr,all)");
expr_do(Ctx, {LU, Val}) 
   when LU =:= array_lookup;
        LU =:= map_lookup ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   MapExpr = ?P("xqerl_context:get_context_item(_@CtxVar)"),
   ValExp = expr_do(Ctx, Val),
   ?P("xqerl_operators:lookup(_@CtxVar,_@MapExpr,_@ValExp)");

expr_do(Ctx, {postfix,_Id, Base, Preds}) when is_list(Preds) ->
   % flag that ctx item is accessible
   Source = expr_do(Ctx#{in_pred => true}, Base), 
   lists:foldl(fun(Val, Abs) ->
                     handle_predicate({Ctx, Val}, Abs)
               end, Source, Preds);

% node sequences
expr_do(Ctx, {'intersect', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_seq3:intersect(_@E1,_@E2)");
expr_do(Ctx, {'union', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_seq3:union(_@E1,_@E2)");
expr_do(Ctx, {'except', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_seq3:except(_@E1,_@E2)");

expr_do(Ctx, #xqVarRef{name = Name}) ->
   {V,_} = get_variable_ref(Name, Ctx),
   V;

expr_do(Ctx, {'switch', RootExpr, [Cases, {'default', DefaultExpr}]}) ->
   RootVar = {var,?L,next_var_name()},
   RootExpr1 = {ensure,RootExpr,#xqSeqType{type = item, occur = zero_or_one}},
   E1 = expr_do(Ctx,RootExpr1),
   Atom = ?P("xqerl_types:atomize(_@E1)"),
   Value = ?P("xqerl_types:value(_@Atom)"),
   RootVarSet = ?P("_@RootVar = _@Value"),
   DefaultRet = alist(expr_do(Ctx,DefaultExpr)),
   % cases are {[MatchExprs], {return, ReturnExpr}}
   OFold = 
     fun({MatchExprs,{return, ReturnExpr}},Abs) ->
           MatchExprs2 = if MatchExprs == [] -> [[]];
                            true -> MatchExprs
                         end,
           ReturnAbs = expr_do(Ctx, ReturnExpr),
           IFold = fun(MatchExpr, Abs1) ->
                         Var = {var,?L,next_var_name()},
                         MatchExpr1 = expr_do(Ctx, 
                           {ensure,MatchExpr,
                            #xqSeqType{type = item, occur = zero_or_one}}),
                         Atom1 = ?P("xqerl_types:atomize(_@MatchExpr1)"),
                         Value1 = ?P("xqerl_types:value(_@Atom1)"),
                         ?P("_@Var = _@Value1, 
                             if _@RootVar == _@Var -> _@ReturnAbs;
                                true -> _@Abs1 end")
                   end,
           lists:foldr(IFold, Abs, MatchExprs2)
     end,
   
   IfStatements = (catch lists:foldr(OFold, DefaultRet, Cases)),
   ?P("begin _@RootVarSet, _@@IfStatements end");

expr_do(Ctx, {'typeswitch', RootExpr, CasesDefault}) ->
   CaseVar = {var,?L,next_var_name()},
   Root = expr_do(Ctx,RootExpr),
   True = abs_boolean(true),
   ExpF = fun({'case-var',{'types', Types},XqVar}) ->
                lists:map(fun(Type) -> 
                                {'case-var',{'type', Type}, XqVar} 
                          end, Types);
             ({'case-novar',{'types', Types},XqVar}) ->
                lists:map(fun(Type) ->
                                {'case-novar',{'type', Type}, XqVar}
                          end, Types);
             (Def) ->
                [Def]
          end,
   ExpandedCases = lists:flatmap(ExpF, CasesDefault),
   CaseF = fun({'case-novar',{'type', Type},{return,RetExpr}}, Acc) ->
                 AType = abs_seq_type(Ctx,Type),
                 R1 = expr_do(Ctx, RetExpr),
                 ?P(["case xqerl_types:instance_of(_@CaseVar,_@AType) of",
                     " _@True -> _@R1;",
                     " _ -> _@Acc end"]);
              ({'case-var',{'type', Type},#xqVar{id = Id, 
                                                 name = Name, 
                                                 expr = RetExpr}}, Acc) ->
                 AType = abs_seq_type(Ctx,Type),
                 VarName = local_variable_name(Id),
                 NewVar  = {Name,Type,[],VarName},
                 NewCtx  = add_variable(NewVar, Ctx),
                 R1 = expr_do(NewCtx, RetExpr),
                 VarName1 = {var,?L,VarName},
                 ?P(["case xqerl_types:instance_of(_@CaseVar,_@AType) of",
                     " _@True -> _@VarName1 = _@CaseVar, _@R1;",
                     " _ -> _@Acc end"]);
              ({'def-var',#xqVar{id = Id, 
                                 name = Name, 
                                 type = Type, 
                                 expr = RetExpr}}, _Acc) ->
                 VarName = local_variable_name(Id),
                 NewVar  = {Name,Type,[],VarName},
                 NewCtx  = add_variable(NewVar, Ctx),
                 R1 = expr_do(NewCtx, RetExpr),
                 VarName1 = {var,?L,VarName},
                 ?P("_@VarName1 = _@CaseVar, _@R1");
              ({'def-novar',{return,RetExpr}}, _Acc) ->
                 alist(expr_do(Ctx, RetExpr))
           end,
   CaseNestExprs = lists:foldr(CaseF, [{nil,?L}], ExpandedCases),
   ?P("begin _@CaseVar = _@Root, _@@CaseNestExprs end");

expr_do(Ctx, {'if-then-else', If, Then, Else}) ->
   IfSt = expr_do(Ctx, If),
   True = expr_do(Ctx, Then),
   False = expr_do(Ctx, Else),
   ?P(["case xqerl_operators:eff_bool_val(_@IfSt) of",
       "   true -> _@True; _ -> _@False end"]);

expr_do(Ctx, {Op, Expr1, Expr2}) when Op =:= '='; Op =:= '!=';
                                      Op =:= '>'; Op =:= '>=';
                                      Op =:= '<'; Op =:= '<=' ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:general_compare('@Op@',_@E1,_@E2)");
expr_do(Ctx, {'eq', Expr1, Expr2}) -> 
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:equal(_@E1,_@E2)");
expr_do(Ctx, {'ne', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:not_equal(_@E1,_@E2)");
expr_do(Ctx, {'lt', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:less_than(_@E1,_@E2)");
expr_do(Ctx, {'le', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:less_than_eq(_@E1,_@E2)");
expr_do(Ctx, {'gt', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:greater_than(_@E1,_@E2)");
expr_do(Ctx, {'ge', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:greater_than_eq(_@E1,_@E2)");
expr_do(Ctx, {Op, Expr1, Expr2}) when Op =:= 'add';
                                      Op =:= 'subtract';
                                      Op =:= 'multiply';
                                      Op =:= 'divide';
                                      Op =:= 'modulo' ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:'@Op@'(_@E1,_@E2)");
expr_do(Ctx, {'integer-divide', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:idivide(_@E1,_@E2)");
expr_do(Ctx, {'<<', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:node_before(_@E1,_@E2)");
expr_do(Ctx, {'>>', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:node_after(_@E1,_@E2)");
expr_do(Ctx, {'is', Expr1, Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   ?P("xqerl_operators:node_is(_@E1,_@E2)");
expr_do(Ctx, {'unary', '-', Expr1}) ->
   E1 = expr_do(Ctx, Expr1),
   ?P("xqerl_operators:unary_minus(_@E1)");
expr_do(Ctx, {'unary', '+', Expr1}) ->
   E1 = expr_do(Ctx, Expr1),
   ?P("xqerl_operators:unary_plus(_@E1)");

expr_do(_Ctx, 'empty-sequence') -> {nil,?L};
expr_do(_Ctx, 'empty-expr') -> {nil,?L};

% each position of the flwor is put in its own function.
% every function is a body call to the next section and tail to self.
expr_do(Ctx, #xqFlwor{id = RetId, loop = Loop, return = Return}) ->
   Ctx1 = Ctx#{grp_variables => []}, % Clear any grouping variables
   VarTup = get_variable_tuple_name(Ctx1),
   {_NewCtx,In,Out} = flwor(Ctx1, Loop, RetId, Return, [], [],VarTup, false),
   add_global_funs(Out),
   %?P("(begin _@In end)");
   ?P("xqerl_seq3:flatten(begin _@In end)");

expr_do(Ctx, [Sing]) ->
   expr_do(Ctx, Sing);
expr_do(Ctx, List) when is_list(List) ->
   Exprs = lists:map(fun(E) ->
                           expr_do(Ctx, E)
                     end, List),
   abs_list(Exprs);

% steps
expr_do(Ctx, #xqAxisStep{} = Step) ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   Base = ?P("xqerl_context:get_context_item(_@CtxVar)"),
   S = step_expr_do(Ctx, [Step], Base),
   ?P("begin _@S end");

% catch-all
expr_do(_Ctx, Expr) ->
   ?dbg("TODO", Expr),
   {nil,?L}.


%% node Source should be tuple {D,N} for the doc and node variables
step_expr_do(_, [], SourceVar) -> 
   DocVar = {var,?L,next_var_name()},
   ?P([" xqerl_seq3:path_map(",
       "      fun(_@DocVar,_,_) ->",
       "             _@DocVar",
       "      end, _@SourceVar)"       
      ]);
step_expr_do(_, [atomize], SourceVar) -> 
   DocVar = {var,?L,next_var_name()},
   ?P([" xqerl_seq3:path_map(",
       "      fun(_@DocVar,_,_) ->",
       "             xqerl_types:atomize(_@DocVar)",
       "      end, _@SourceVar)"       
      ]);
step_expr_do(Ctx, [Step1|Rest], SourceVar) ->
%   ?dbg("[Step1|Rest]",[Step1|Rest]),
   CurrCtxVar = {var,?L,get_context_variable_name(Ctx)},
   NextVar = {var,?L,next_var_name()},
   PosVar = {var,?L,next_var_name()},
   SizVar = {var,?L,next_var_name()},
   DocVar = {var,?L,next_var_name()},
   NodeVar = {var,?L,next_var_name()},
   NextCtxVar = next_ctx_var_name(),
   NextCtxVVar = {var,?L,NextCtxVar},
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   E1 = step_expr_do(Ctx1, Step1, {DocVar,NodeVar}),
%   ?dbg("E1",E1),
   R1 = alist(step_expr_do(Ctx, Rest, NextVar)),
%   ?dbg("R1",R1),
   O1 = ?P([" _@NextVar = xqerl_seq3:path_map(",
            "      fun(#xqNode{doc = _@DocVar,node = _@NodeVar},_@PosVar,_@SizVar) ->",
            "              _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,#xqNode{doc = _@DocVar,node = _@NodeVar},_@PosVar,_@SizVar),",
            "             _@E1",
            "        ;(_,_,_) -> xqerl_error:error('XPTY0019')",
            "      end, _@SourceVar)"       
           ]), 
%   ?dbg("O1",O1),
   [O1|R1];
step_expr_do(Ctx, #xqAxisStep{direction = Direction,
                              axis = Axis,
                              predicates = Preds,
                              node_test = NodeTest}, SourceAbs) ->
%   ?dbg("SourceAbs",SourceAbs),
   PathAbs = do_path(Direction,SourceAbs,Axis,NodeTest),
   lists:foldl(fun(P,Abs) ->
                     handle_predicate({Ctx,P}, Abs)
               end,PathAbs, Preds);
   
step_expr_do(Ctx, Other, {D,N}) ->
   NextVar = {var,?L,next_var_name()},
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   NextCtxVar = next_ctx_var_name(),
   CtxVar1 = {var,?L,NextCtxVar},
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   E1 = expr_do(Ctx1, Other),
   Base = ?P("_@CtxVar1 = xqerl_context:set_context_item(_@CtxVar,"
             "#xqNode{doc = _@D, node = _@N}),"
             "_@NextVar = _@E1"),
   Base;
step_expr_do(Ctx, Other, SourceVar) ->
   CurrCtxVar = {var,?L,get_context_variable_name(Ctx)},
   PosVar = {var,?L,next_var_name()},
   SizVar = {var,?L,next_var_name()},
   DocVar = {var,?L,next_var_name()},
   NodeVar = {var,?L,next_var_name()},
   NextCtxVar = next_ctx_var_name(),
   NextCtxVVar = {var,?L,NextCtxVar},
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   E1 = expr_do(Ctx1, Other),
%   ?dbg("R1",R1),
   ?P(["xqerl_seq3:path_map(fun(#xqNode{doc = _@DocVar,node = _@NodeVar},_@PosVar,_@SizVar) ->",
            "              _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,#xqNode{doc = _@DocVar,node = _@NodeVar},_@PosVar,_@SizVar),",
            "             _@E1",
            "        ;(_,_,_) -> xqerl_error:error('XPTY0019')",
            "      end, _@SourceVar)"       
           ]).

% return clause end loop and returns {NewCtx,Internal,Global}
flwor(Ctx, [], RetId, Return, Internal, Global,TupleVar,true) ->
   {NewCtx,FunAbs} = return_part(Ctx, {RetId,Return},false),
   NewCtx1 = set_variable_tuple_name(NewCtx, revert(TupleVar)),
   {NewCtx1,Internal,FunAbs ++ Global};
flwor(Ctx, [], RetId, Return, Internal, Global,TupleVar,_Inline) ->
   FunctionName = glob_fun_name({return,RetId}),
   CurrContext = {var,?L,get_context_variable_name(Ctx)},
   NextTupleVar = next_var_tuple_name(),
   {NewCtx,FunAbs} = return_part(Ctx, {RetId,Return},true),
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   Call = [?P("'@FunctionName@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
   NewInt = Internal ++ Call,
   %?dbg("FunAbs",FunAbs),
   {NewCtx1,NewInt,FunAbs ++ Global};

% (for|let)/return
flwor(Ctx, [{Curr,_} = F], RetId, Return, Internal, Global,TupleVar,Inline) 
   when Curr =:= 'let';
        Curr =:= 'for' ->
   IsList = if Internal =:= [] ->
                  false;
               Inline =:= false ->
                  true;
               true ->
                  false
            end,
   Vars = case get_variable_tuple(Ctx) of
             {nil,_} -> {atom,?L,new};
             O -> O
          end,
   NextTupleVar = if TupleVar =:= [];
                     Inline =:= false ->
                        {var,?L,next_var_tuple_name()};
                     true ->
                        TupleVar
                  end,
   CurrContext = {var,?L,get_context_variable_name(Ctx)},
   ThisFun = glob_fun_name(F),
   NextFun = glob_fun_name({return, RetId}),
   {NewCtx,FunAbs} = if Curr =:= 'let' ->
                           let_part(Ctx, F, NextFun, IsList);
                        true ->
                           for_loop(Ctx, F, NextFun, IsList)
                     end,
   Call1 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,_@@Vars)")],
   Call2 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
   NewInternal = if Internal =:= [] ->
                       Internal ++ Call1;
                    Inline =:= false ->
                       Internal ++ Call2;
                    true ->
                       Internal
                 end,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, [], RetId, Return, NewInternal, 
         FunAbs ++ Global,NextTupleVar,true);

% for/let
flwor(Ctx, [{Curr,_} = F,{Next,_} = N|T], RetId, Return, Internal, 
      Global,TupleVar,Inline) 
   when Curr == 'let' andalso Next == 'let';
        Curr == 'let' andalso Next == 'for';
        Curr == 'for' andalso Next == 'let';
        Curr == 'for' andalso Next == 'for' ->
   IsList = if Internal =:= [] ->
                  false;
               Inline =:= false ->
                  true;
               true ->
                  false
            end,
   Vars = case get_variable_tuple(Ctx) of
             {nil,_} -> {atom,?L,new};
             O -> O
          end,
   NextTupleVar = if TupleVar =:= [];
                     Inline =:= false ->
                        {var,?L,next_var_tuple_name()};
                     true ->
                        TupleVar
                  end,
   CurrContext = {var,?L,get_context_variable_name(Ctx)},
   ThisFun = glob_fun_name(F),
   NextFun = glob_fun_name(N),
   {NewCtx,FunAbs} = if Curr =:= 'let' ->
                           let_part(Ctx, F, NextFun, IsList);
                        true ->
                           for_loop(Ctx, F, NextFun, IsList)
                     end,
   Call1 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,_@@Vars)")],
   Call2 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
   NewInternal = if Internal =:= [] ->
                       Internal ++ Call1;
                    Inline =:= false ->
                       Internal ++ Call2;
                    true ->
                       Internal
                 end,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, [N|T], RetId, Return, NewInternal, 
         FunAbs ++ Global,NextTupleVar,true);

% for/other
flwor(Ctx, [{Curr,_} = F|T], RetId, Return, Internal, Global,TupleVar,Inline) 
   when Curr =:= 'let';
        Curr =:= 'for' ->
   Vars = case get_variable_tuple(Ctx) of
             {nil,_} -> {atom,?L,new};
             O -> O
          end,
   NextTupleVar = if TupleVar =:= [];
                     Inline =:= false ->
                        {var,?L,next_var_tuple_name()};
                     true ->
                        TupleVar
                  end,
   CurrContext = {var,?L,get_context_variable_name(Ctx)},
   ThisFun = glob_fun_name(F),
   {NewCtx,FunAbs} = if Curr =:= 'let' ->
                           let_part(Ctx, F, [], Internal =/= []);
                        true ->
                           for_loop(Ctx, F, [], Internal =/= [])
                     end,
   Call1 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,_@@Vars)")],
   Call2 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
   NewInternal = if Internal =:= [] ->
                       Internal ++ Call1;
                    Inline =:= false ->
                       Internal ++ Call2;
                    true ->
                       Internal
                 end,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, 
         FunAbs ++ Global,NextTupleVar,false);

flwor(Ctx, [#xqWindow{win_variable = #xqVar{id = Id}} = F|T], RetId, 
      Return, Internal, Global,TupleVar,Inline) ->
   Vars = case get_variable_tuple(Ctx) of
             {nil,_} -> {atom,?L,new};
             O -> O
          end,
   NextTupleVar = if TupleVar =:= [];
                     Inline =:= false ->
                        {var,?L,next_var_tuple_name()};
                     true ->
                        TupleVar
                  end,
   CurrContext = {var,?L,get_context_variable_name(Ctx)},
   ThisFun = glob_fun_name({window,Id}),
   {NewCtx,FunAbs} = window_loop(Ctx, F, []),
   
   Call1 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,_@@Vars)")],
   Call2 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
   NewInternal = if Internal =:= [] ->
                       Internal ++ Call1;
                    Inline =:= false andalso TupleVar =/= [] ->
                       Internal ++ Call2;
                    true ->
                       Internal ++ Call1
                 end,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, 
         FunAbs ++ Global,NextTupleVar,false);

% where
flwor(Ctx, [{where,Id,_} = W|T], RetId, Return, Internal, 
      Global,TupleVar,_Inline) ->
   NextTupleVar = {var,?L,next_var_tuple_name()},
   CurrContext = {var,?L,get_context_variable_name(Ctx)},
   ThisFun = glob_fun_name({where,Id}),
   {NewCtx,FunAbs} = where_part(Ctx, W, []),
   
   Call2 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
   NewInternal = Internal ++ Call2,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, 
         FunAbs ++ Global,NextTupleVar,false);

% count
flwor(Ctx, [{count,_} = C|T], RetId, Return, Internal, 
      Global,TupleVar,_Inline) ->
   NextTupleVar = {var,?L,next_var_tuple_name()},
   CurrContext = {var,?L,get_context_variable_name(Ctx)},
   ThisFun = glob_fun_name(C),
   {NewCtx,FunAbs} = count_part(Ctx, C, []),
   Call2 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
   NewInternal = Internal ++ Call2,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, 
         FunAbs ++ Global,NextTupleVar,false);

% group
flwor(Ctx, [{group_by,Id,_} = F|T], RetId, Return, Internal, 
      Global,TupleVar,_Inline) ->
   NextTupleVar = {var,?L,next_var_tuple_name()},
   CurrContext = {var,?L,get_context_variable_name(Ctx)},
   ThisFun = glob_fun_name({group_by,Id}),
   {NewCtx,FunAbs} = group_part(Ctx, F),
   Call2 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
   NewInternal = Internal ++ Call2,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, 
         FunAbs ++ Global,NextTupleVar,false);

% order
flwor(Ctx, [{order_by,_Id,Exprs}|T], RetId, Return, Internal, 
      Global,TupleVar,_Inline) ->
   NextTupleVar = {var,?L,next_var_tuple_name()},
   VarTup = get_variable_tuple(Ctx),
   OFun = fun({order,Expr,{modifier,{_,Dir},{_,Empty},{_,_Collation}}},Acc) ->
                E1 = expr_do(Ctx, Expr),
                ?P("[{fun(_@VarTup) -> xqerl_seq3:singleton_value(_@E1) end,
                      '@Dir@','@Empty@'}|_@Acc]")
          end,
   Funs = lists:foldr(OFun, {nil,?L}, alist(Exprs)),
   Flat = ?P("xqerl_seq3:flatten(_@TupleVar)"),
   Clause = ?P("xqerl_flwor:orderbyclause(_@Flat,_@Funs)"),
   Match = ?P("_@NextTupleVar = _@Clause"),
   NewInternal = Internal ++ [Match],
   NewCtx = set_variable_tuple_name(Ctx, NextTupleVar),
   flwor(NewCtx, T, RetId, Return, NewInternal, Global, NextTupleVar, false).

return_part(Ctx,{Id, Expr},IsList) ->
   FunctionName = glob_fun_name({return,Id}),
   OldVariableTupleMatch = get_variable_tuple(Ctx),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   %InLine = attribute(compile, {inline,{FunctionName,2}}),
   E1 = expr_do(LocCtx,Expr),
   %?dbg("Expr",Expr),
   R = if IsList ->
              ?P(["'@FunctionName@'(_,[]) -> [];",
                  "'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
                  "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
                  "'@FunctionName@'(Ctx,_@OldVariableTupleMatch) ->",
                  "   _@E1."
                  ]);
          true ->
              ?P(["'@FunctionName@'(Ctx,_@OldVariableTupleMatch) ->",
                  "   _@E1."
                  ])
              end,
   %{Ctx,[InLine, R]}.
   {Ctx,[R]}.

where_part(Ctx,{'where',Id, Expr},_NextFunAtom) ->
   FunctionName = glob_fun_name({where, Id}),
   OldVariableTupleMatch = get_variable_tuple(Ctx),
   %InLine = attribute(compile, {inline,{FunctionName,2}}),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),

   E1 = expr_do(LocCtx,Expr),
   R =?P(["'@FunctionName@'(_,[]) -> [];",
          "'@FunctionName@'(Ctx,NonList) when not erlang:is_list(NonList) ->",
          "   '@FunctionName@'(Ctx,[NonList]);",
          "'@FunctionName@'(Ctx,[_@OldVariableTupleMatch|T]) ->",
          "   case xqerl_operators:eff_bool_val(_@E1) of",
          "      true -> [_@OldVariableTupleMatch|'@FunctionName@'(Ctx,T)];",
          "      _ -> '@FunctionName@'(Ctx,T)",
          "   end."
         ]),
   
   %{Ctx,[InLine,WhereFun]}.
   {Ctx,[R]}.

count_part(Ctx,{'count',#xqVar{id = Id,
                               name = Name}} = Part,NextFunAtom) ->
   VarName = local_variable_name(Id),
   VarName1 = {var,?L,VarName},
   NewVar  = {Name,#xqSeqType{type = 'xs:integer', occur = 'one'},[],VarName},
   FunctionName = glob_fun_name(Part),
   NewCtx  = add_grouping_variable(NewVar, Ctx),
   OldVariableTupleMatch = get_variable_tuple(Ctx),
   NewVariableTupleMatch = get_variable_tuple(NewCtx),
   
   NextFun = if NextFunAtom == [] ->
                   NewVariableTupleMatch;
                true ->
                   ?P("'@NextFunAtom@'(Ctx,_@NewVariableTupleMatch)")
             end,
   
   R1 = ?P(["'@FunctionName@'(Ctx,Stream) ->",
            "   '@FunctionName@'(Ctx,1,Stream)."
           ]),
   R2 = ?P(["'@FunctionName@'(_,_,[]) -> [];",
            "'@FunctionName@'(Ctx,Pos,[_@OldVariableTupleMatch|T]) ->",
            "   _@VarName1 = #xqAtomicValue{type = 'xs:integer', value = Pos},",
            "   [_@NextFun|'@FunctionName@'(Ctx,Pos + 1,T)]."
           ]),
   {NewCtx,[R1,R2]}.

group_part(#{grp_variables := GrpVars,
             variables     := Vars} = Ctx, {group_by,Id,Clauses}) ->
   % 1. seperate the local/group-able variables from the out-of-scope variables.
   AllInScopeVars = [N || {_,_,_,N} <- Vars, is_atom(N)],
   GroupVars      = [N || {_,_,_,N} <- GrpVars],
   OuterVars      = AllInScopeVars -- GroupVars,
   % 2. split key/vals
   KeyNames = [ Name || 
                #xqGroupBy{grp_variable = {variable, Name}} <- alist(Clauses)],
   OK = lists:all(fun(N) ->
                        lists:member(N, GroupVars)
                  end, KeyNames),
   if OK ->
         ok;
      true ->
         %TODO move this check to static phase
         ?err('XQST0094')% out of scope grouping variable
   end,
   UColls = lists:usort([Coll ||
                         #xqGroupBy{collation = Coll} <- alist(Clauses)]),
   
   CollsFun = fun(Str,{Acc,I}) ->
                    {Acc#{Str => {?P("xqerl_coll:parse('@Str@')"),I}}, I + 1}
              end,
   {CollsMap,_} = lists:foldl(CollsFun, {#{},1}, UColls),
   CollMFun = fun(_K,{V,Id1},L) ->
                    VA = {var,?L,list_to_atom("C"++integer_to_list(Id1))},
                    [?P("_@VA = _@V")|L]
              end,
   CollMatch = maps:fold(CollMFun, [], CollsMap),
   CollNFun = fun(_K,{_V,Id1},L) ->
                    VA = {var,?L,list_to_atom("C"++integer_to_list(Id1))},
                    [?P("_@VA")|L]
              end,
   CollNT = {tuple,?L,maps:fold(CollNFun, [], CollsMap)},
   
   KeyTuples   = [begin
                     {_,Id2} = maps:get(Coll, CollsMap),
                     VName = {var,?L,list_to_atom("C"++integer_to_list(Id2))},
                     Name1 = {var,?L,Name},
                     ?P("{_@Name1,_@VName}")
                  end || 
                  #xqGroupBy{grp_variable = {variable, Name}, 
                             collation = Coll} <- alist(Clauses)],
   KeyNamesTup = [{var,?L,Name} || 
                  #xqGroupBy{grp_variable = 
                               {variable, Name}} <- alist(Clauses)],

   KeyTuple    = if KeyTuples == [] ->
                       {nil,?L};
                    true ->
                       ?P("{_@@KeyTuples}")
                 end,
   GroupedVars = GroupVars -- KeyNames,
   GroupedTups = [{var,?L,Name} || Name <- GroupedVars],
   OuterTups   = if OuterVars == [] ->
                       {nil,?L};
                    true ->
                       {tuple,?L,[{var,?L,Name} || Name <- OuterVars]}
                 end,
   GroupedTup  = {tuple,?L,GroupedTups},
   % 3. group key/vals
   ToGroupTuple = {tuple,?L,[KeyTuple,GroupedTup]},
   OutputTuple  = {tuple,?L,KeyNamesTup ++ GroupedTups},
   % 4. send back entire tuple
   OutgoingVarTup = get_variable_tuple(Ctx),

   FunctionName = glob_fun_name({group_by, Id}),
   
   Hd = ?P("erlang:hd([_@OuterTups || _@OutgoingVarTup <- List])"),
   Flatten = ?P("lists:flatten(['@FunctionName@'(Ctx,T,_@CollNT) || T <- List])"),
   Rest = if OuterVars =:= [] -> {nil,?L}; true -> Hd end,
   ?dbg("_@@CollMatch",?P("_@@CollMatch")),
   GrpFun1 = 
     ?P(["'@FunctionName@'(_,[]) -> [];",
         "'@FunctionName@'(Ctx,List) when erlang:is_list(List) -> ",
         "   _@@CollMatch, Split = _@Flatten, Rest = _@Rest,",
         "   '@FunctionName@'(Ctx,Split,Rest)."]),
   GrpFun2 =
     ?P(["'@FunctionName@'(Ctx,_@OutgoingVarTup,_@CollNT) -> _@ToGroupTuple;",
         "'@FunctionName@'(Ctx,Split,_@OuterTups) -> ",
         "   Grouped = xqerl_flwor:groupbyclause(Split), ",
         "   [_@OutgoingVarTup || _@OutputTuple <- Grouped]."]),
   {Ctx,[GrpFun1,GrpFun2]}.

let_part(Ctx,{'let',#xqVar{id = Id,
                           name = Name,
                           type = Type,
                           expr = Expr}} = Part,NextFunAtom,IsList) ->
   VarName = local_variable_name(Id),
   NewVar  = {Name,Type,[],VarName},
   FunctionName = glob_fun_name(Part),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   NewCtx  = add_grouping_variable(NewVar, Ctx),
   OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                              {nil,_} ->
                                 {var,?L, '_'};
                              O ->
                                 O
                           end,
   NewVariableTupleMatch = get_variable_tuple(NewCtx),
   %InLine = attribute(compile, {inline,{FunctionName,2}}),
   
   E1 = expr_do(LocCtx,Expr),
   VarName1 = {var,?L,VarName},
   Ens = ensure_type(Ctx,VarName1,Type),
   LetFun = 
     if NextFunAtom == [] andalso IsList ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) ->",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(Ctx,_@OldVariableTupleMatch) ->",
            "   _@VarName1 = _@E1,",
            "   _@Ens,",
            "   _@NewVariableTupleMatch."
           ]);
        NextFunAtom == [] ->
        ?P(["'@FunctionName@'(Ctx,_@OldVariableTupleMatch) ->",
            "   _@VarName1 = _@E1,",
            "   _@Ens,",
            "   _@NewVariableTupleMatch."
           ]);
        IsList ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) ->",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(Ctx,_@OldVariableTupleMatch) ->",
            "   _@VarName1 = _@E1,",
            "   _@Ens,",
            "   '@NextFunAtom@'(Ctx,_@NewVariableTupleMatch)."
           ]);
        true ->
        ?P(["'@FunctionName@'(Ctx,_@OldVariableTupleMatch) ->",
            "   _@VarName1 = _@E1,",
            "   _@Ens,",
            "   '@NextFunAtom@'(Ctx,_@NewVariableTupleMatch)."
           ])
        end,
   %?dbg("LetFun",LetFun),
   %{NewCtx,[InLine, LetFun]}.
   {NewCtx,[LetFun]}.

window_loop(Ctx, #xqWindow{type = Type,
                           win_variable = #xqVar{id = WId,
                                                 name = WName,
                                                 type = WType,
                                                 expr = Expr}, 
                           s     = S,
                           spos  = SPos,
                           sprev = SPrev,
                           snext = SNext,
                           e     = E,
                           epos  = EPos,
                           eprev = EPrev,
                           enext = ENext,
                           only  = Only,
                           start_expr = StartExpr,
                           end_expr = EndExpr}, NextFunAtom) ->
   OldCtxname = get_context_variable_name(Ctx),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   {SVar,Ctx0} =  case S of
                     #xqVar{id = Id1,name = Name1} ->
                        Vn1 = local_variable_name(Id1),
                        Var1 = {Name1,WType,[],Vn1},
                        Ctx1 = add_grouping_variable(Var1, LocCtx),
                        {Var1,Ctx1};
                     undefined ->
                        {{[],[],[],'_'},LocCtx}
                  end,
   {SPosVar,Ctx2} =  case SPos of
                        #xqPosVar{id = Id2,name = Name2} ->
                           Vn2 = local_variable_name(Id2),
                           Var2 = {Name2,WType,[],Vn2},
                           Ctx3 = add_grouping_variable(Var2, Ctx0),
                           {Var2,Ctx3};
                        undefined ->
                           {{[],[],[],'_'},Ctx0}
                     end,
   {SPrevVar,Ctx4} = case SPrev of
                        #xqVar{id = Id3,name = Name3} ->
                           Vn3 = local_variable_name(Id3),
                           Var3 = {Name3,WType,[],Vn3},
                           Ctx5 = add_grouping_variable(Var3, Ctx2),
                           {Var3,Ctx5};
                        undefined ->
                           {{[],[],[],'_'},Ctx2}
                     end,
   {SNextVar,Ctx6} = case SNext of
                        #xqVar{id = Id4,name = Name4} ->
                           Vn4 = local_variable_name(Id4),
                           Var4 = {Name4,WType,[],Vn4},
                           Ctx7 = add_grouping_variable(Var4, Ctx4),
                           {Var4,Ctx7};
                        undefined ->
                           {{[],[],[],'_'},Ctx4}
                     end,
   {EVar,Ctx10} = case E of
                     #xqVar{id = Id11,name = Name11} ->
                        Vn11 = local_variable_name(Id11),
                        Var11 = {Name11,WType,[],Vn11},
                        Ctx11 = add_grouping_variable(Var11, Ctx6),
                        {Var11,Ctx11};
                     undefined ->
                        {{[],[],[],'_'},Ctx6}
                  end,
   {EPosVar,Ctx12} = case EPos of
                        #xqPosVar{id = Id12,name = Name12} ->
                           Vn12 = local_variable_name(Id12),
                           Var12 = {Name12,WType,[],Vn12},
                           Ctx13 = add_grouping_variable(Var12, Ctx10),
                           {Var12,Ctx13};
                        undefined ->
                           {{[],[],[],'_'},Ctx10}
                     end,
   {EPrevVar,Ctx14} =   case EPrev of
                           #xqVar{id = Id13,name = Name13} ->
                              Vn13 = local_variable_name(Id13),
                              Var13 = {Name13,WType,[],Vn13},
                              Ctx15 = add_grouping_variable(Var13, Ctx12),
                              {Var13,Ctx15};
                           undefined ->
                              {{[],[],[],'_'},Ctx12}
                        end,
   {ENextVar,Ctx16} =   case ENext of
                           #xqVar{id = Id14,name = Name14} ->
                              Vn14 = local_variable_name(Id14),
                              Var14 = {Name14,WType,[],Vn14},
                              Ctx17 = add_grouping_variable(Var14, Ctx14),
                              {Var14,Ctx17};
                           undefined ->
                              {{[],[],[],'_'},Ctx14}
                        end,
          
   WVn = local_variable_name(WId),
   WVar = {WName,WType,[],WVn},
   Ctx21 = add_grouping_variable(WVar, Ctx16),
   {WinVar,Ctx20} = {WVar,Ctx21},
   % first check for bad name shadows
   AllVars = [SVar,SPosVar,SPrevVar,SNextVar,
              EVar,EPosVar,EPrevVar,ENextVar,
              WinVar],
   lists:foldl(fun({_,_,_,'_'},Acc) ->
                     Acc;
                  ({A,_,B,_},Acc) ->
                     case sets:is_element({A,B}, Acc) of
                        true ->
                           %TODO move to static phase
                           ?err('XQST0103');
                        _ ->
                           sets:add_element({A,B}, Acc)
                     end
               end, sets:new(), AllVars),
   StartTup = get_variable_tuple(Ctx, [SVar,SPosVar,SPrevVar,SNextVar]),
   EndTup   = get_variable_tuple(Ctx, [SVar,SPosVar,SPrevVar,SNextVar,
                                       EVar,EPosVar,EPrevVar,ENextVar]),
   % mask the win variable name to type-check it later
   %TempWinVarName = next_var_name(),
   %TempWinVar = {[],[],[],TempWinVarName},

   OutTup   = get_variable_tuple(Ctx, [SVar,SPosVar,SPrevVar,SNextVar,
                                       EVar,EPosVar,EPrevVar,ENextVar,WinVar]),
   E1 = expr_do(Ctx6, StartExpr),
   StartFunAbs = ?P("fun(_@StartTup) -> _@E1 end"),

   WinCall= if EndExpr =:= undefined ->
                  ?P("xqerl_flwor:windowclause(List,_@StartFunAbs,_@WType@)");
               true ->
                  E2 = alist(expr_do(Ctx16, EndExpr)),
                  EndFunAbs = ?P("fun(_@EndTup) -> _@E2 end"),
                  ?P(["xqerl_flwor:windowclause(List,_@StartFunAbs,",
                      "_@EndFunAbs,{'@Type@','@Only@'},_@WType@)"])
            end,

   FunctionName = glob_fun_name({window,WId}),
   OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                              {nil,_} ->
                                 {var,?L, '_'};
                              O ->
                                 O
                           end,
   NewVariableTupleMatch = get_variable_tuple(Ctx20),

   TempStreamVar = {var,?L,next_var_name()},
   
   E3 = expr_do(LocCtx, Expr),
   Next = if NextFunAtom == [] ->
                ?P("_@NewVariableTupleMatch");
             true ->
                ?P("'@NextFunAtom@'(Ctx,_@NewVariableTupleMatch)")
          end,
   
   WinFun =
     ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
         "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
         "'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
         "   List = _@E3,",
         "   _@TempStreamVar = _@WinCall,",
         "   if erlang:is_list(_@TempStreamVar) -> ",
         "         lists:map(fun(_@OutTup) -> _@Next end, _@TempStreamVar);",
         "      true -> ",
         "         _@OutTup = _@TempStreamVar,",
         "         _@Next",
         "   end."]),
   OutCtx = set_context_variable_name(Ctx20, OldCtxname),
   {OutCtx,[WinFun]}.

% for loop with no position var
for_loop(Ctx,{'for',#xqVar{id = Id,
                           name = Name, 
                           type = Type, 
                           empty = Empty,
                           expr = Expr, 
                           position = undefined}} = Part, 
         NextFunAtom, IsList) ->
   ?dbg("list?",{Id,IsList}),
   VarName = local_variable_name(Id),
   NewVar    = {Name,Type,[],VarName},
   NoEmptyType = (Type#xqSeqType.occur == one orelse 
                  Type#xqSeqType.occur == one_or_many), 
   NewCtx  = add_grouping_variable(NewVar, Ctx),
   FunctionName = glob_fun_name(Part),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                              {nil,_} -> {var,?L, '_'};
                              O -> O
                           end,
   NewVariableTupleMatch = get_variable_tuple(NewCtx),
   VarName1 = {var,?L,VarName},
   {FName,E1} = case expr_do(LocCtx, Expr) of
                  {parallel,E} ->
                      {pformap,E};
                  {unordered_parallel,E} ->
                      {pmap,E};
                   E ->
                      {formap,E}
                end,
   Next = if NextFunAtom == [] ->
                ?P("_@NewVariableTupleMatch");
             true ->
                ?P("'@NextFunAtom@'(Ctx,_@NewVariableTupleMatch)")
          end,
   %HasNext = NextFunAtom =/= [] ,
   Ens = ensure_type(Ctx,VarName1,Type),
   ForFun = 
     if IsList andalso Empty andalso NoEmptyType ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1) -> _@Ens,_@Next end,",
            "   if List =:= [] -> ",
            "         xqerl_error:error('XPTY0004');",
            "      true -> ",
            "         xqerl_seq3:'@FName@'(Fun, List)",
            "   end."]);
        IsList andalso Empty ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1) -> _@Ens,_@Next end,",
            "   if List =:= [] -> ",
            "         xqerl_seq3:'@FName@'(Fun, [List]);",
            "      true -> ",
            "         xqerl_seq3:'@FName@'(Fun, List)",
            "   end."]);
        Empty andalso NoEmptyType ->
        ?P(["'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1) -> _@Ens,_@Next end,",
            "   if List =:= [] -> ",
            "         xqerl_error:error('XPTY0004');",
            "      true -> ",
            "         xqerl_seq3:'@FName@'(Fun, List)",
            "   end."]);
        Empty ->
        ?P(["'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1) -> _@Ens,_@Next end,",
            "   if List =:= [] -> ",
            "         xqerl_seq3:'@FName@'(Fun, [List]);",
            "      true -> ",
            "         xqerl_seq3:'@FName@'(Fun, List)",
            "   end."]);
        IsList ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1) -> _@Ens,_@Next end,",
            "   xqerl_seq3:'@FName@'(Fun, List)."
           ]);
        true ->
        ?P(["'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1) -> _@Ens,_@Next end,",
            "   xqerl_seq3:'@FName@'(Fun, List)."
           ])
        end,
   {NewCtx,[ForFun]};
% for loop with position var
for_loop(Ctx,{'for',#xqVar{id = Id,
                           name = Name, 
                           type = Type, 
                           empty = Empty,
                           expr = Expr, 
                           position = #xqPosVar{id = PId, 
                                                name = PName}}} = Part, 
         NextFunAtom, IsList) ->
   VarName = local_variable_name(Id),
   NewVar    = {Name,Type,[],VarName},
   PosVarName = local_variable_name(PId),
   NewVar     = {Name,Type,[],VarName},
   NewPosVar  = {PName,#xqSeqType{type = 'xs:integer', 
                                  occur = 'one'},[],PosVarName},
   NoEmptyType = (Type#xqSeqType.occur == one orelse 
                  Type#xqSeqType.occur == one_or_many), 
   NewCtx      = add_grouping_variable(NewPosVar, 
                                       add_grouping_variable(NewVar, Ctx)),
   FunctionName = glob_fun_name(Part),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                              {nil,_} -> {var,?L, '_'};
                              O -> O
                           end,
   NewVariableTupleMatch = get_variable_tuple(NewCtx),

   VarName1 = {var,?L,VarName},
   PosVarName1 = {var,?L,PosVarName},
   {FName,E1} = case expr_do(LocCtx, Expr) of
                  {parallel,E} ->
                      {forposmap,E};
                  {unordered_parallel,E} ->
                      {forposmap,E};
                   E ->
                      {forposmap,E}
                end,
   Next = if NextFunAtom == [] ->
                ?P("_@NewVariableTupleMatch");
             true ->
                ?P("'@NextFunAtom@'(Ctx,_@NewVariableTupleMatch)")
          end,
   Ens = ensure_type(Ctx,VarName1,Type),
   ForFun = 
     if IsList andalso Empty andalso NoEmptyType ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1,Pos) ->",
            "    _@PosVarName1 = #xqAtomicValue{type = 'xs:integer', ",
            "                                   value = Pos},",
            "    _@Ens,_@Next end,",
            "   if List =:= [] -> ",
            "         xqerl_error:error('XPTY0004');",
            "      true -> ",
            "         xqerl_seq3:'@FName@'(Fun, List, 1)",
            "   end."]);
        IsList andalso Empty ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1,Pos) ->",
            "    _@PosVarName1 = #xqAtomicValue{type = 'xs:integer', ",
            "                                   value = Pos},",
            "    _@Ens,_@Next end,",
            "   if List =:= [] -> ",
            "         xqerl_seq3:'@FName@'(Fun, [List], 0);",
            "      true -> ",
            "         xqerl_seq3:'@FName@'(Fun, List, 1)",
            "   end."]);
        Empty andalso NoEmptyType ->
        ?P(["'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1,Pos) ->",
            "    _@PosVarName1 = #xqAtomicValue{type = 'xs:integer', ",
            "                                   value = Pos},",
            "    _@Ens,_@Next end,",
            "   if List =:= [] -> ",
            "         xqerl_error:error('XPTY0004');",
            "      true -> ",
            "         xqerl_seq3:'@FName@'(Fun, List, 1)",
            "   end."]);
        Empty ->
        ?P(["'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1,Pos) ->",
            "    _@PosVarName1 = #xqAtomicValue{type = 'xs:integer', ",
            "                                   value = Pos},",
            "    _@Ens,_@Next end,",
            "   if List =:= [] -> ",
            "         xqerl_seq3:'@FName@'(Fun, [List], 0);",
            "      true -> ",
            "         xqerl_seq3:'@FName@'(Fun, List, 1)",
            "   end."]);
        IsList ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1,Pos) ->",
            "    _@PosVarName1 = #xqAtomicValue{type = 'xs:integer', ",
            "                                   value = Pos},",
            "    _@Ens,_@Next end,",
            "   xqerl_seq3:'@FName@'(Fun, List, 1)."
           ]);
        true ->
        ?P(["'@FunctionName@'(Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E1,",
            "   Fun = fun(_@VarName1,Pos) ->",
            "    _@PosVarName1 = #xqAtomicValue{type = 'xs:integer', ",
            "                                   value = Pos},",
            "    _@Ens,_@Next end,",
            "   xqerl_seq3:'@FName@'(Fun, List, 1)."
           ])
        end,
   {NewCtx,[ForFun]}.

glob_fun_name({window,Id}) ->
   list_to_atom("window__" ++ integer_to_list(Id));
glob_fun_name({group_by,Id}) ->
   list_to_atom("group__" ++ integer_to_list(Id));
glob_fun_name({return,Id}) ->
   list_to_atom("return__" ++ integer_to_list(Id));
glob_fun_name({where,Id}) ->
   list_to_atom("where__" ++ integer_to_list(Id));
glob_fun_name({count,#xqVar{id = Id}}) ->
   list_to_atom("count__" ++ integer_to_list(Id));
glob_fun_name({for,#xqVar{id = Id}}) ->
   list_to_atom("for__" ++ integer_to_list(Id));
glob_fun_name({'let',#xqVar{id = Id}}) ->
   list_to_atom("let__" ++ integer_to_list(Id)).

%% {name,type,annos,Name}
add_param(Variable, Map) ->
   NewMap = add_variable(Variable, Map),
   Vars = maps:get(parameters, Map),
   Key = element(1, Variable),
   NewVars = lists:keystore(Key, 1, Vars, Variable),
   maps:put(parameters, NewVars, NewMap).

%% {name,type,annos,Name}
add_variable({#qname{} = Qn,_,_,_} = Variable, #{tab := Tab} = Map) ->
   Qn1 = case Qn of
            #qname{namespace = undefined, prefix = Px, local_name = Ln} ->
               Nss = maps:get(namespaces, Map),
               Ns1 = proplists:get_value(Px, Nss),
               #qname{namespace = Ns1, prefix = <<>>, local_name = Ln};
            _ ->
               Qn#qname{prefix = <<>>}
         end,
   Variable1 = erlang:setelement(1, Variable, Qn1),
   
   _ = xqerl_context:add_in_scope_variable(Tab,Variable1),
   
   Vars = maps:get(variables, Map),
   Key = Qn1,
   Vars1 = lists:keydelete(Key, 1, Vars),
   NewVars = lists:keystore(Key, 1, Vars1, Variable1),
   maps:put(variables, NewVars, Map).

add_grouping_variable({#qname{} = Qn,_,_,_} = Variable, #{tab := Tab} = Map) ->
   Qn1 = case Qn of
            #qname{namespace = undefined, prefix = Px, local_name = Ln} ->
               Nss = maps:get(namespaces, Map),
               Ns1 = proplists:get_value(Px, Nss),
               #qname{namespace = Ns1, prefix = <<>>, local_name = Ln};
            _ ->
               Qn#qname{prefix = <<>>}
         end,
   Variable1 = erlang:setelement(1, Variable, Qn1),
   
   _ = xqerl_context:add_in_scope_variable(Tab,Variable1),
   
   Vars = maps:get(variables, Map),
   GVars = maps:get(grp_variables, Map),
   Key = Qn1,
   Vars1 = lists:keydelete(Key, 1, Vars),
   NewVars = lists:keystore(Key, 1, Vars1, Variable1),
   GVars1 = lists:keydelete(Key, 1, GVars),
   GNewVars = lists:keystore(Key, 1, GVars1, Variable1),
   Map#{variables => NewVars,
        grp_variables => GNewVars}.

get_variable_ref(#qname{namespace = Ns, prefix = Px, local_name = Ln}, 
                 #{tab        := Tab,
                   parameters := Vars1,
                   variables  := Vars2,
                   namespaces := Nss} = Map) ->
   Vars0 = xqerl_context:get_in_scope_variables(Tab),
   Vars = Vars2 ++ Vars1 ++ Vars0,
   Ns2 = case Ns of
            undefined ->
               proplists:get_value(Px, Nss);
            _ ->
               Ns
         end,
   Var = lists:filter(fun(E) ->
                           case element(1, E) of
                              #qname{namespace = Ns2, local_name = Ln} ->
                                 true;
                              _ ->
                                 false
                           end
                        end, Vars),
   Loc = case Var of 
            [] ->
               ?err('XPST0008');
            [H] ->
               element(4, H);
            [H|_] ->
               element(4, H)
         end,
   Typ = case Var of 
            [H1] ->
               element(2, H1);
            [H1|_] ->
               element(2, H1)
         end,
   if is_atom(Loc) ->
         {{var,?L,Loc},Typ};
      true ->
         case Loc of
            {F,_} ->
               CtxVar = get_context_variable_name(Map),
               CV = {var,?L,CtxVar},
               %GV = {var,?L,F},
               Get = ?P("maps:get('@F@',_@CV)"),
               {Get,Typ}
         end
   end.

alist(L) when is_list(L) -> lists:flatten(L);
alist(L) -> [L].

abs_document_node(Ctx, #xqDocumentNode{identity = Id, 
                                       expr = E, 
                                       base_uri = BU}) ->
   VarTup = get_variable_tuple(Ctx),
   FN = node_function_name(Id),
   CV1 = {var,?L,'Ctx1'},
   Ctx1 = set_context_variable_name(Ctx, 'Ctx1'),
   BU1 = case maps:get('base-uri', Ctx) of
            undefined -> BU;
            B -> B
         end,
   E1 = expr_do(Ctx,BU1),
   P1 = ?P(["BaseUri = _@E1,",
            "_@CV1 = Ctx#{'base-uri' := BaseUri}"]),
   E2 = case is_list(E) of
           true ->
              if length(E) == 1 ->
                    expr_do(Ctx1, E);
                 true ->
                    lists:foldr(fun(X, Abs) ->
                               {cons,?L,expr_do(Ctx1, X), Abs} 
                         end, {nil,?L}, E)
              end;
           _ ->
              if E == undefined -> empty_seq();
                 true ->
                    expr_do(Ctx1, E)
              end
        end,
   Fun = ?P(["'@FN@'(Ctx,_@VarTup) ->",
            " _@P1,",
            " Expr = _@E2,",
            " #xqDocumentNode{base_uri = BaseUri, children = [], expr = Expr}."
            ]),
   add_global_funs([Fun]),
   CCtx = {var,?L,get_context_variable_name(Ctx)},
   ?P("'@FN@'(_@CCtx,_@VarTup)").

abs_element_node(Ctx, #xqElementNode{name = N, 
                                     attributes = A1, % namespaces in here
                                     expr = E0, 
                                     type = Type, 
                                     base_uri = BU, 
                                     inscope_ns = IsNs}) ->
   E1 = case N of
           #qname{} ->
              abs_qname(Ctx,N);
           _ ->
              expr_do(Ctx, N)
        end,
   E2 = expr_do(Ctx, A1),
   E3 = case maps:get('construction-mode', Ctx) of
           strip ->
              {atom,?L,'xs:untyped'};
           _ when Type == undefined ->
              {atom,?L,'xs:anyType'};
           _ ->
              {atom,?L,Type}
        end,
   E4 = expr_do(Ctx,BU),
   E5 = if E0 == [undefined] -> {nil,?L};
           true ->
              expr_do(Ctx,E0)
              %NC = next_ctx_var_name(),
              %Ctx1 = set_context_variable_name(Ctx, NC),
              %Ex = expr_do(Ctx1,E0),
              %NV = {var,?L,NC},
              %?P("fun(_@NV) -> _@Ex end")
        end,
   ?P(["#xqElementNode{name = _@E1, children = [], attributes = _@E2,",
       " inscope_ns = _@IsNs@, type = _@E3, base_uri = _@E4, expr = _@E5}"]).


%% attribute_nodes(AttsNs) ->
%%    [Att || #xqAttributeNode{} = Att <- AttsNs].

%% namespace_nodes(AttsNs) ->
%%    [Ns || #xqNamespaceNode{} = Ns <- AttsNs].

abs_attribute_node(Ctx, #xqAttributeNode{name = N, expr = E}) ->
   E1 = case N of
           #qname{namespace = _Ns, prefix = Px} ->
              if Px == <<>> ->
                    % no default namespace for these
                    abs_ns_qname(Ctx,N#qname{namespace = 'no-namespace'});
                 true ->
                    abs_qname(Ctx,N)
              end;
           _ ->
              expr_do(Ctx, N)
        end,
   E2 = if E == [undefined] -> {nil,?L};
           true ->
              Flat = lists:map(fun(Ex) ->
                                     expr_do(Ctx,Ex)
                               end, alist(E)), 
              case E of
                 {content_expr, _} ->
                    {cons,?L,lists:foldr(fun(X, Abs) ->
                               {cons,?L,X, Abs} 
                         end, {nil,?L}, Flat),{nil,?L}};
                 _ ->
                    lists:foldr(fun(X, Abs) ->
                               {cons,?L,X, Abs} 
                         end, {nil,?L}, Flat)
              end
        end,
   ?P("#xqAttributeNode{name = _@E1, expr = _@E2}").

abs_text_node(Ctx, #xqTextNode{expr = E, cdata = C}) ->
   E1 = case is_list(E) of
           true ->
              lists:foldr(fun(X, Abs) ->
                                {cons,?L,expr_do(Ctx, X), Abs}
                          end, {nil,?L}, E);
           _ ->
              if E == undefined -> empty_seq();
                 E == 'empty-expr' -> empty_seq();
                 E == 'empty-sequence' -> empty_seq();
                 true ->
                    expr_do(Ctx, E)
              end
        end,
   ?P("#xqTextNode{cdata = _@C@, expr = _@E1}").

abs_comment_node(Ctx, #xqCommentNode{string_value = S, expr = E}) ->
   E1 = case is_list(E) of
           true ->
              lists:foldr(fun(X, Abs) ->
                                {cons,?L,expr_do(Ctx, X), Abs}
                          end, {nil,?L}, E);
           _ ->
              if E == undefined -> empty_seq();
                 true ->
                    expr_do(Ctx, E)
              end
        end,
   ?P("#xqCommentNode{string_value = _@S@, expr = _@E1}").

abs_pi_node(Ctx, #xqProcessingInstructionNode{name = N, 
                                              expr = E, 
                                              base_uri = BU}) ->
   BU1 = case maps:get('base-uri', Ctx) of
            undefined when BU =/= <<>> ->
               BU;
            undefined ->
               [];
            _ ->
               BU
         end,
   E1 = case N of
           #qname{} ->
              abs_qname(Ctx,N);
           _ ->
              expr_do(Ctx, N)
        end,
   E2 = expr_do(Ctx,BU1),
   E3 = case is_list(E) of
           true ->
               lists:foldr(fun(X, Abs) ->
                               {cons,?L,expr_do(Ctx, X), Abs} 
                         end, {nil,?L}, E);
           _ ->
              if E == undefined -> empty_seq();
                 true ->
                    expr_do(Ctx, E)
              end
        end,
   ?P("#xqProcessingInstructionNode{name = _@E1,base_uri = _@E2,expr = _@E3}").

abs_namespace_node(_Ctx, #xqNamespace{namespace = N, prefix = P}) ->
   if is_atom(N) ->
         ?P("#xqNamespace{namespace = '@N@', prefix = _@P}");
      true ->
         ?P("#xqNamespace{namespace = _@N@, prefix = _@P}")
   end;
abs_namespace_node(Ctx, #xqNamespaceNode{name = Name}) ->
   E1 = abs_ns_qname(Ctx,Name),
   ?P("#xqNamespaceNode{name = _@E1}").

abs_fun_test(Ctx,#xqFunTest{kind = Kind, 
                            annotations = Annos, 
                            name = Name, 
                            params = Params, 
                            type = Type}) ->
   AnnoF = fun(#annotation{name = #qname{namespace = ?A("http://www.w3.org/2012/xquery"),
                                   local_name = L} = Q}, Abs) 
                 when L == ?A("public");
                      L == ?A("private") ->
                 {cons,?L,abs_qname(Ctx, Q), Abs};
              (#annotation{name = #qname{namespace = N} = Q}, Abs) ->
                 _ = xqerl_lib:reserved_namespaces(N),
                 {cons,?L,abs_qname(Ctx, Q), Abs}
           end,
   E1 = if Annos == [] ->
              {nil,?L};
           true ->
              lists:foldr(AnnoF, {nil,?L}, Annos)
        end,
   E2 = abs_qname(Ctx,Name),
   E3 = if Params =:= any ->
              atom_or_string(any);
           is_atom(Params) ->
              {cons,?L,abs_seq_type(Ctx,Params), {nil,?L}};
           true ->
              lists:foldr(fun(P, Abs) ->
                                {cons,?L,abs_seq_type(Ctx,P), Abs}
                          end, {nil,?L}, Params)
        end,
   E4 = if Type =:= any ->
              atom_or_string(any);
           true ->
              abs_seq_type(Ctx,Type)
        end,
   ?P("#xqFunTest{kind = '@Kind@', annotations = _@E1, name = _@E2,
         params = _@E3, type = _@E4}").

abs_seq_type(_Ctx,Type) when is_atom(Type) ->
   ?P("#xqSeqType{type = '@Type@', occur = one}");
abs_seq_type(Ctx,#xqSeqType{type = #xqFunTest{} = Ft, occur = O}) ->
   E1 = abs_fun_test(Ctx,Ft),
   ?P("#xqSeqType{type = _@E1, occur = _@O@}");
abs_seq_type(Ctx,#xqSeqType{type = #xqKindTest{} = Kt, occur = O}) ->
   E1 = abs_kind_test(Ctx,Kt),
   ?P("#xqSeqType{type = _@E1, occur = _@O@}");
abs_seq_type(_Ctx,#xqSeqType{type = T, occur = O}) ->
   ?P("#xqSeqType{type = _@T@, occur = _@O@}").   

abs_qname(_Ctx, undefined) ->
   atom_or_string(undefined);
abs_qname(_Ctx, #qname{namespace = N, prefix = P, local_name = L}) ->
   if is_atom(N) ->
         ?P("#qname{namespace = '@N@', prefix = _@P@, local_name = _@L@}");
      true ->
         ?P("#qname{namespace = _@N@, prefix = _@P@, local_name = _@L@}")
   end.

abs_ns_qname(_Ctx, undefined) ->
   atom_or_string(undefined);
abs_ns_qname(Ctx, #qname{namespace = N, prefix = P, local_name = L}) ->
   E1 = if is_tuple(N) ->
              expr_do(Ctx, N);
           true ->
              atom_or_string(N)
        end,
   E2 = if is_tuple(P) ->
              case P of
                 #xqAtomicValue{value = <<>>} ->
                    atom_or_string(<<>>);
                 _ ->
                    expr_do(Ctx, P)
              end;
           true ->
              atom_or_string(P)
        end,
   ?P("#qname{namespace = _@E1, prefix = _@E2, local_name = _@L@}").

% {xqKindTest,node,undefined,undefined,undefined}
abs_kind_test(Ctx,#xqKindTest{kind = K, name = Q, type = T, test = Ts}) ->
   E1 = abs_qname(Ctx,Q),
   E2 = if is_atom(T) ->
              atom_or_string(T);
           true ->
              expr_do(Ctx, T)
        end,
   E3 = case Ts of
           undefined -> atom_or_string(undefined);
           _ -> abs_kind_test(Ctx,Ts)
        end,
   ?P("#xqKindTest{kind = _@K@, name = _@E1, type = _@E2, test = _@E3}").

abs_function(Ctx,#xqFunction{annotations = _A,
                             name = N,
                             arity = Ar,
                             params = Params,
                             type = Type}, BodyAbs) ->
   
   AbsName = abs_qname(Ctx, N),
   AbsArity = {integer,?L,Ar},
   AbsParams = abs_param_list(Ctx, Params),
   AbsType = abs_seq_type(Ctx, Type),
   ?P("#xqFunction{
          name =   _@AbsName,
          arity =  _@AbsArity,
          params = _@AbsParams,
          type =   _@AbsType,
          body =   _@BodyAbs}").

abs_param_list(Ctx, List) ->
   lists:foldr(fun(#xqSeqType{} = St,Acc) ->
                     {cons,?L,abs_seq_type(Ctx, St) ,Acc};
                  (#xqVar{type = #xqSeqType{} = St},Acc) ->
                     {cons,?L,abs_seq_type(Ctx, St) ,Acc};
                  (#xqVar{type = undefined},Acc) ->
                     {cons,?L,abs_seq_type(Ctx, #xqSeqType{occur = zero_or_many,
                                                           type = item}) ,Acc};
                  (#xqAtomicValue{type = St},Acc) ->
                     {cons,?L,abs_seq_type(Ctx, 
                                           #xqSeqType{occur = one,
                                                      type = St}) ,Acc}
               end, {nil,?L}, List).
   
abs_boolean(Bool) ->
   ?P("#xqAtomicValue{type = 'xs:boolean', value = _@Bool@}").

abs_simp_atomic_value(#xqAtomicValue{type = T, value = V}) ->
   ?P("#xqAtomicValue{type = _@T@, value = _@V@}").

atom_or_string(<<>>) ->
   {bin,?L, []};
%% atom_or_string([]) ->
%%    {nil,?L};
atom_or_string(AS) ->
   if is_atom(AS) -> {atom,?L,AS};
      is_binary(AS) -> ?P("_@AS@");
      %is_list(AS) -> {string,?L,AS};
      true -> throw({string,?L,AS})
   end.

empty_seq() ->
   {nil,?L}.

get_context_variable_name(#{ctx_var := V}) -> V.
set_context_variable_name(Ctx, Name) ->
   Ctx#{ctx_var => Name}.

get_variable_tuple_name(#{var_tuple := V}) -> V.
set_variable_tuple_name(Ctx, Name) ->
   Ctx#{var_tuple => Name}.

abs_ns_list(Ctx) ->
   lists:foldr(fun(#xqNamespace{prefix = P,namespace = N}, Abs) ->
                     ?P("[#xqNamespace{prefix = _@P@,namespace = _@N@}|_@Abs]")
               end, {nil,?L}, maps:get(namespaces,Ctx)).   

next_var_tuple_name() ->
   list_to_atom("__VarTup__"++integer_to_list(next_id(var_tuple))).

next_id(Atom) ->
   Id = erlang:get(Atom),
   erlang:put(Atom, Id + 1),
   Id.

next_id() ->
   Id = erlang:get(imp_mod),
   erlang:put(imp_mod, Id + 1),
   Id.

next_ctx_id() ->
   Id = erlang:get(ctx),
   erlang:put(ctx, Id + 1),
   Id.

next_var_name() ->
   list_to_atom("__Local__"++integer_to_list(next_id())).

next_ctx_var_name() ->
   list_to_atom("__Ctx__"++integer_to_list(next_ctx_id())).

local_variable_name(Id) ->
  list_to_atom(lists:concat(["__XQ__var_", Id])).

node_function_name(Id) ->
   list_to_atom(lists:concat(["node_cons__", Id])).

get_variable_tuple(Map) when is_map(Map) ->
   Vars = maps:get(variables, Map),
   Cnt = length(Vars),
   if Cnt == 0 ->
         {nil,?L};
      true ->
         get_variable_tuple(Map, Vars)
   end.

get_variable_tuple(_Ctx, List) when is_list(List) ->
%%    CtxVar = {var,?L,get_context_variable_name(Ctx)},
%%    InFun = maps:is_key(in_local_fun, Ctx),
   F = fun({_,_,_,Name}) when is_atom(Name) ->
             {true,{var,?L,Name}};
%%           ({_,_,_,{Name,1},_}) when InFun ->
%%              {true,a_var({Name,1}, CtxVar)};
%%           ({_,_,_,{Name,1},_}) ->
%%              {true,{var,?L,Name}};
          (_) ->
             false
       end,
   Vars = lists:filtermap(F, List),
   ?P("{_@@Vars}").

abs_list(List) ->
    lists:foldr(fun(E, Abs) ->
                      {cons,?L, E, Abs}
                end, {nil,?L}, List).

from_list_to_seq([List]) ->
   ?P("(_@List)");
from_list_to_seq(List) when is_list(List) ->
   E1 = abs_list(List),
   ?P("xqerl_seq3:flatten(_@E1)").
%% ;
%% from_list_to_seq(NonList) ->
%%    ?P("(_@NonList)").

get_global_funs() ->
   case erlang:get(global_funs) of
      undefined ->
         [];
      F ->
         F
   end.

add_global_funs(Funs) ->
   case erlang:get(global_funs) of
      undefined ->
         erlang:put(global_funs,Funs);
      Gs ->
         erlang:put(global_funs,Funs ++ Gs)
   end.

a_term(Term) ->
   erl_syntax:revert(erl_syntax:abstract(Term)).

handle_predicate({Ctx, {LU, wildcard}}, Abs) 
   when LU =:= map_lookup;
        LU =:= array_lookup ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   ?P("xqerl_operators:lookup(_@CtxVar,_@Abs,all)");
handle_predicate({Ctx, {LU, Val}}, Abs) 
   when LU =:= map_lookup;
        LU =:= array_lookup ->
   %?dbg("Val",Val),
   E1 =  expr_do(Ctx, Val),
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   ?P("xqerl_operators:lookup(_@CtxVar,_@Abs,_@E1)");

handle_predicate({Ctx, {positional_predicate, [P]}}, Abs) ->
   handle_predicate({Ctx, {positional_predicate, P}}, Abs);
handle_predicate({Ctx, {positional_predicate, {sequence,[P]}}}, Abs) ->
   handle_predicate({Ctx, {positional_predicate, P}}, Abs);
handle_predicate({Ctx, {positional_predicate, {variable, Name}}}, Abs) ->
   Name1 = {var,?L,Name},
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   ?P("xqerl_seq3:position_filter(_@CtxVar,_@Name1,_@Abs)");
handle_predicate({Ctx, {positional_predicate, #xqAtomicValue{} = A}}, Abs) -> 
   A1 = abs_simp_atomic_value(A),
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   ?P("xqerl_seq3:position_filter(_@CtxVar,_@A1,_@Abs)");
handle_predicate({Ctx, {positional_predicate, #xqVarRef{name = Name}}}, Abs) -> 
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   {VarAbs, _} = get_variable_ref(Name, Ctx),
   ?P("xqerl_seq3:position_filter(_@CtxVar,_@VarAbs,_@Abs)");
handle_predicate({Ctx, {positional_predicate, P}}, Abs) ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   NextCtxVar = next_ctx_var_name(),
   NextCtxVar1 = {var,?L,NextCtxVar},
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   E1 = expr_do(Ctx1, P),
   ?P("xqerl_seq3:position_filter(_@CtxVar,fun(_@NextCtxVar1) ->"
      " _@E1 end,_@Abs)");

handle_predicate({Ctx, {predicate, [P]}}, Abs) ->
   handle_predicate({Ctx, {predicate, P}}, Abs);
handle_predicate({Ctx, {predicate, #xqAtomicValue{type = Type} = A}}, Abs) 
   when ?numeric(Type) ->
   A1 = abs_simp_atomic_value(A),
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   ?P("xqerl_seq3:position_filter(_@CtxVar,_@A1,_@Abs)");

handle_predicate({Ctx, {predicate, #xqVarRef{name = Name}}}, Abs) ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   {VarAbs, #xqSeqType{type = VarType}} = get_variable_ref(Name, Ctx),
   if ?numeric(VarType) ->
         ?P("xqerl_seq3:position_filter(_@CtxVar,_@VarAbs,_@Abs)");
      true ->
         NextCtxVar = {var,?L,next_ctx_var_name()},
         ?P("xqerl_seq3:filter(_@CtxVar,fun(_@NextCtxVar) -> "
            "_@VarAbs end,_@Abs)")
   end;
handle_predicate({Ctx, {predicate, P}}, Abs) ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   NextCtxVar = next_ctx_var_name(),
   NextCtxVar1 = {var,?L,NextCtxVar},
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   E1 = expr_do(Ctx1, P),
   ?P("xqerl_seq3:filter(_@CtxVar,fun(_@NextCtxVar1) -> _@E1 end,_@Abs)");

handle_predicate({Ctx, {arguments, Args}}, Abs) ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   PhF = fun('?') ->
               VarName = next_var_name(),
               [{var,?L,VarName}];
            (_) ->
               []
         end,
   PlaceHolders = lists:flatmap(PhF, Args),
   NwF = fun('?',PHs) ->
               {hd(PHs),tl(PHs)};
            (Arg,PHs) ->
               {Arg,PHs}
         end,
   {NewArgs, _} = lists:mapfoldl(NwF, PlaceHolders, Args),
   AgF = fun({var,_,_} = Arg) ->
               Arg;
            (Arg) ->
               expr_do(Ctx, Arg)
         end,
   ArgAbs = lists:map(AgF, NewArgs),
   NextCtxVar2 = {var,?L,next_ctx_var_name()},
   NextVar2    = {var,?L,next_var_name()},
   Fun1 = ?P(["fun([]) ->",
              "     xqerl_error:error('XPTY0004');",
              "   (_@NextVar2) ->",
              "     xqerl_seq3:do_call(_@CtxVar,_@NextVar2,{_@@ArgAbs})",
              "end"]),
   Fun2 = ?P(["fun(_@NextCtxVar2,_@@PlaceHolders) ->",
              " _@NextVar2 = xqerl_types:value(_@Abs),",
              " _@NextVar2(_@NextCtxVar2,_@@ArgAbs)",
              "end"]),
   if PlaceHolders == [] ->
         ?P("xqerl_seq3:val_map(_@Fun1,_@Abs)");
      true ->
         Fun2
   end.

a_var({_,Name},CtxVar) when is_atom(Name) -> % imported var
   V = {atom,?L,Name},
   ?P("maps:get(_@V, _@CtxVar)");
a_var({Name,1},CtxVar) when is_atom(Name) ->
   V = {atom,?L,Name},
   ?P("maps:get(_@V, _@CtxVar)");
a_var(Name,_CtxVar) when is_atom(Name) ->
   {var,?L,Name}.


param_prefix() -> "__Param__var_".


do_path(Direction,Source,Axis,NodeTest) ->
   case Direction of 
      forward ->
         forward_path(Source, Axis, NodeTest);
      reverse ->
         reverse_path(Source, Axis, NodeTest)
   end.


forward_path(Source, attribute, #xqNameTest{name = Q}) -> 
   p3(named_attributes,Source,qname_tuple(Q));
forward_path(Source, attribute, #xqKindTest{kind = attribute, 
                                            name = #qname{} = Q}) ->
   p3(named_attributes,Source,qname_tuple(Q));
forward_path(Source, attribute, #xqKindTest{kind = K}) when K =:= attribute;
                                                            K =:= node -> 
   p2(attributes,Source);
forward_path(_Source, attribute, #xqKindTest{}) -> 
   {nil,?LINE};
%% ----------------------------------------------------------------------------
forward_path(Source, child, #xqNameTest{name = Q}) -> 
   p3(named_element_children,Source,qname_tuple(Q));
forward_path(Source, child, #xqKindTest{kind = element, 
                                        name = #qname{} = Q}) ->
   p3(named_element_children,Source,qname_tuple(Q));
forward_path(Source, child, #xqKindTest{kind = element}) -> 
   p2(element_children,Source);
forward_path(Source, child, #xqKindTest{kind = node}) -> 
   p2(children,Source);
forward_path(Source, child, #xqKindTest{kind = namespace}) -> 
   p2(namespaces,Source);
forward_path(Source, child, #xqKindTest{kind = text}) -> 
   p2(text_children,Source);
forward_path(Source, child, #xqKindTest{kind = comment}) -> 
   p2(comment_children,Source);
forward_path(Source, child, #xqKindTest{kind = 'processing-instruction', 
                                        name = #qname{local_name = Ln}}) ->
   p3(named_pi_children,Source,atom_or_string(Ln));
forward_path(Source, child, #xqKindTest{kind = 'processing-instruction'}) ->  
   p2(pi_children,Source);
%% ----------------------------------------------------------------------------
forward_path(Source, self, #xqNameTest{name = Q}) -> 
   p3(named_element_selfs,Source,qname_tuple(Q));
forward_path(Source, self, #xqKindTest{kind = 'document-node'}) -> 
   p2(document_selfs,Source);
forward_path(Source, self, #xqKindTest{kind = element, 
                                       name = #qname{} = Q}) ->
   p3(named_element_selfs,Source,qname_tuple(Q));
forward_path(Source, self, #xqKindTest{kind = element}) -> 
   p2(element_selfs,Source);
forward_path(Source, self, #xqKindTest{kind = attribute, 
                                       name = #qname{} = Q}) ->
   p3(named_attribute_selfs,Source,qname_tuple(Q));
forward_path(Source, self, #xqKindTest{kind = attribute}) -> 
   p2(attribute_selfs,Source);
forward_path(Source, self, #xqKindTest{kind = node}) -> 
   p2(selfs,Source);
forward_path(Source, self, #xqKindTest{kind = namespace}) -> 
   p2(namespaces,Source);
forward_path(Source, self, #xqKindTest{kind = text}) -> 
   p2(text_selfs,Source);
forward_path(Source, self, #xqKindTest{kind = comment}) -> 
   p2(comment_selfs,Source);
forward_path(Source, self, #xqKindTest{kind = 'processing-instruction', 
                                       name = #qname{local_name = Ln}}) ->
   p3(named_pi_selfs,Source,atom_or_string(Ln));
forward_path(Source, self, #xqKindTest{kind = 'processing-instruction'}) ->  
   p2(pi_selfs,Source);
%% ----------------------------------------------------------------------------
forward_path(Source, descendant, #xqNameTest{name = Q}) -> 
   p3(named_element_descendants,Source,qname_tuple(Q));
forward_path(Source, descendant, #xqKindTest{kind = element, 
                                             name = #qname{} = Q}) ->
   p3(named_element_descendants,Source,qname_tuple(Q));
forward_path(Source, descendant, #xqKindTest{kind = element}) -> 
   p2(element_descendants,Source);
forward_path(Source, descendant, #xqKindTest{kind = node}) -> 
   p2(descendants,Source);
forward_path(Source, descendant, #xqKindTest{kind = text}) -> 
   p2(text_descendants,Source);
forward_path(Source, descendant, #xqKindTest{kind = comment}) -> 
   p2(comment_descendants,Source);
forward_path(Source, descendant, 
             #xqKindTest{kind = 'processing-instruction',
                         name = #qname{local_name = Ln}}) ->
   p3(named_pi_descendants,Source,atom_or_string(Ln));
forward_path(Source, descendant, 
             #xqKindTest{kind = 'processing-instruction'}) ->  
   p2(pi_descendants,Source);
%% ----------------------------------------------------------------------------
forward_path(Source, 'descendant-or-self', #xqNameTest{name = Q}) -> 
   p3(named_element_descendant_or_selfs,Source,qname_tuple(Q));
forward_path(Source, 'descendant-or-self', #xqKindTest{kind = element, 
                                       name = #qname{} = Q}) ->
   p3(named_element_descendant_or_selfs,Source,qname_tuple(Q));
forward_path(Source, 'descendant-or-self', #xqKindTest{kind = element}) -> 
   p2(element_descendant_or_selfs,Source);
forward_path(Source, 'descendant-or-self', #xqKindTest{kind = node}) -> 
   p2(descendant_or_selfs,Source);
forward_path(Source, 'descendant-or-self', #xqKindTest{kind = document}) -> 
   p2(document_descendant_or_selfs,Source);
forward_path(Source, 'descendant-or-self', #xqKindTest{kind = text}) -> 
   p2(text_descendant_or_selfs,Source);
forward_path(Source, 'descendant-or-self', #xqKindTest{kind = comment}) -> 
   p2(comment_descendant_or_selfs,Source);
forward_path(Source, 'descendant-or-self', 
             #xqKindTest{kind = 'processing-instruction',
                         name = #qname{local_name = Ln}}) ->
   p3(named_pi_descendant_or_selfs,Source,atom_or_string(Ln));
forward_path(Source, 'descendant-or-self', 
             #xqKindTest{kind = 'processing-instruction'}) ->  
   p2(pi_descendant_or_selfs,Source);
%% ----------------------------------------------------------------------------
forward_path(Source, 'following-sibling', #xqNameTest{name = Q}) -> 
   p3(named_element_following_siblings,Source,qname_tuple(Q));
forward_path(Source, 'following-sibling', #xqKindTest{kind = element, 
                                                       name = #qname{} = Q}) ->
   p3(named_element_following_siblings,Source,qname_tuple(Q));
forward_path(Source, 'following-sibling', #xqKindTest{kind = element}) -> 
   p2(element_following_siblings,Source);
forward_path(Source, 'following-sibling', #xqKindTest{kind = node}) -> 
   p2(following_siblings,Source);
forward_path(Source, 'following-sibling', #xqKindTest{kind = text}) -> 
   p2(text_following_siblings,Source);
forward_path(Source, 'following-sibling', #xqKindTest{kind = comment}) -> 
   p2(comment_following_siblings,Source);
forward_path(Source, 'following-sibling', 
             #xqKindTest{kind = 'processing-instruction',
                         name = #qname{local_name = Ln}}) ->
   p3(named_pi_following_siblings,Source,atom_or_string(Ln));
forward_path(Source, 'following-sibling', 
             #xqKindTest{kind = 'processing-instruction'}) ->  
   p2(pi_following_siblings,Source);
%% ----------------------------------------------------------------------------
forward_path(Source, following, #xqNameTest{name = Q}) -> 
   p3(named_element_followings,Source,qname_tuple(Q));
forward_path(Source, following, #xqKindTest{kind = element, 
                                            name = #qname{} = Q}) ->
   p3(named_element_followings,Source,qname_tuple(Q));
forward_path(Source, following, #xqKindTest{kind = element}) -> 
   p2(element_followings,Source);
forward_path(Source, following, #xqKindTest{kind = node}) -> 
   p2(followings,Source);
forward_path(Source, following, #xqKindTest{kind = text}) -> 
   p2(text_followings,Source);
forward_path(Source, following, #xqKindTest{kind = comment}) -> 
   p2(comment_followings,Source);
forward_path(Source, following, #xqKindTest{kind = 'processing-instruction', 
                                            name = #qname{local_name = Ln}}) ->
   p3(named_pi_followings,Source,atom_or_string(Ln));
forward_path(Source, following, #xqKindTest{kind = 'processing-instruction'}) ->  
   p2(pi_followings,Source);
%% ----------------------------------------------------------------------------
% garbage stuff
forward_path(_, _, #xqKindTest{kind = 'document-node'}) -> {nil,?LINE};
forward_path(_, _, #xqKindTest{kind = attribute}) -> {nil,?LINE};

forward_path(_, Axis, NodeTest) ->
   ?dbg("Unknown axis",{Axis, NodeTest}),
   {error,NodeTest}.

reverse_path(Source, parent, #xqNameTest{name = Q}) -> 
   p3(named_element_parents,Source,qname_tuple(Q));
reverse_path(Source, parent, #xqKindTest{kind = element, 
                                       name = #qname{} = Q}) ->
   p3(named_element_parents,Source,qname_tuple(Q));
reverse_path(Source, parent, #xqKindTest{kind = element}) -> 
   p2(element_parents,Source);
reverse_path(Source, parent, #xqKindTest{kind = node}) -> 
   p2(parents,Source);
reverse_path(Source, parent, #xqKindTest{kind = document}) -> 
   p2(document_parents,Source);
reverse_path(Source, parent, _) -> 
   p2(other_parents,Source);
%% ----------------------------------------------------------------------------
reverse_path(Source, ancestor, #xqNameTest{name = Q}) -> 
   p3(named_element_ancestors,Source,qname_tuple(Q));
reverse_path(Source, ancestor, #xqKindTest{kind = element, 
                                           name = #qname{} = Q}) ->
   p3(named_element_ancestors,Source,qname_tuple(Q));
reverse_path(Source, ancestor, #xqKindTest{kind = element}) -> 
   p2(element_ancestors,Source);
reverse_path(Source, ancestor, #xqKindTest{kind = node}) -> 
   p2(ancestors,Source);
reverse_path(Source, ancestor, #xqKindTest{kind = document}) -> 
   p2(document_ancestors,Source);
reverse_path(Source, ancestor, _) -> 
   p2(other_ancestors,Source);
%% ----------------------------------------------------------------------------
reverse_path(Source, 'ancestor-or-self', #xqNameTest{name = Q}) -> 
   p3(named_element_ancestor_or_selfs,Source,qname_tuple(Q));
reverse_path(Source, 'ancestor-or-self', #xqKindTest{kind = element, 
                                                     name = #qname{} = Q}) ->
   p3(named_element_ancestor_or_selfs,Source,qname_tuple(Q));
reverse_path(Source, 'ancestor-or-self', #xqKindTest{kind = element}) -> 
   p2(element_ancestor_or_selfs,Source);
reverse_path(Source, 'ancestor-or-self', #xqKindTest{kind = node}) -> 
   p2(ancestor_or_selfs,Source);
reverse_path(Source, 'ancestor-or-self', #xqKindTest{kind = document}) -> 
   p2(document_ancestor_or_selfs,Source);
reverse_path(Source, 'ancestor-or-self', _) -> 
   p2(other_ancestor_or_selfs,Source);
%% ----------------------------------------------------------------------------
reverse_path(Source, 'preceding-sibling', #xqNameTest{name = Q}) -> 
   p3(named_element_preceding_siblings,Source,qname_tuple(Q));
reverse_path(Source, 'preceding-sibling', #xqKindTest{kind = element, 
                                                      name = #qname{} = Q}) ->
   p3(named_element_preceding_siblings,Source,qname_tuple(Q));
reverse_path(Source, 'preceding-sibling', #xqKindTest{kind = element}) -> 
   p2(element_preceding_siblings,Source);
reverse_path(Source, 'preceding-sibling', #xqKindTest{kind = node}) -> 
   p2(preceding_siblings,Source);
reverse_path(Source, 'preceding-sibling', #xqKindTest{kind = text}) -> 
   p2(text_preceding_siblings,Source);
reverse_path(Source, 'preceding-sibling', #xqKindTest{kind = comment}) -> 
   p2(comment_preceding_siblings,Source);
reverse_path(Source, 'preceding-sibling', 
             #xqKindTest{kind = 'processing-instruction',
                         name = #qname{local_name = Ln}}) ->
   p3(named_pi_preceding_siblings,Source,atom_or_string(Ln));
reverse_path(Source, 'preceding-sibling', 
             #xqKindTest{kind = 'processing-instruction'}) ->  
   p2(pi_preceding_siblings,Source);
%% ----------------------------------------------------------------------------
reverse_path(Source, preceding, #xqNameTest{name = Q}) -> 
   p3(named_element_precedings,Source,qname_tuple(Q));
reverse_path(Source, preceding, #xqKindTest{kind = element,
                                            name = #qname{} = Q}) ->
   p3(named_element_precedings,Source,qname_tuple(Q));
reverse_path(Source, preceding, #xqKindTest{kind = element}) -> 
   p2(element_precedings,Source);
reverse_path(Source, preceding, #xqKindTest{kind = node}) -> 
   p2(precedings,Source);
reverse_path(Source, preceding, #xqKindTest{kind = text}) -> 
   p2(text_precedings,Source);
reverse_path(Source, preceding, #xqKindTest{kind = comment}) -> 
   p2(comment_precedings,Source);
reverse_path(Source, preceding, #xqKindTest{kind = 'processing-instruction', 
                                            name = #qname{local_name = Ln}}) ->
   p3(named_pi_precedings,Source,atom_or_string(Ln));
reverse_path(Source, preceding, #xqKindTest{kind = 'processing-instruction'}) ->  
   p2(pi_precedings,Source);
%% ----------------------------------------------------------------------------
reverse_path(_, Axis, NodeTest) ->
   ?dbg("Unknown axis",{Axis, NodeTest}),
   {error,NodeTest}.

qname_tuple(#qname{namespace = 'no-namespace', local_name = Ln}) ->
   ?P("{<<>>,_@Ln@}");
qname_tuple(#qname{namespace = Ns, local_name = Ln}) ->
   ?P("{_@Ns@,_@Ln@}").

p2(F,{D,N}) ->  ?P("[#xqNode{doc = _@D, node = [N]} || N1 <- xqldb_doc:'@F@'(_@D,_@N), N <- N1, N =/= []]").
p3(F,{D,N},V) ->?P("[#xqNode{doc = _@D, node = [N]} || N1 <- xqldb_doc:'@F@'(_@D,_@N,_@V), N <- N1, N =/= []]").

ensure_type(_,_,#xqSeqType{type = item, occur = zero_or_many}) ->
   {nil,?L};
ensure_type(_,_,#xqSeqType{type = Type, 
                           occur = zero_or_many}) when ?node(Type) ->
   {nil,?L};
ensure_type(_,_,#xqSeqType{type = #xqFunTest{}}) ->
   {nil,?L};
ensure_type(Ctx,Var,Type) ->
   T = expr_do(Ctx,Type),
   ?P("_ = case xqerl_types:instance_of(_@Var,_@T) of "
      "#xqAtomicValue{value = true} -> _@Var; "
      "_ -> xqerl_error:error('XPTY0004') end").

ensure_param_type(_Ctx,Var,TVar,#xqSeqType{type = item, occur = zero_or_many}) ->
   ?P("_@Var = _@TVar");
ensure_param_type(_Ctx,Var,TVar,undefined) ->
   ?P("_@Var = _@TVar");
ensure_param_type(Ctx,Var,TVar,Type) ->
   T = expr_do(Ctx,Type),
   ?P("_@Var = xqerl_types:promote(_@TVar,_@T)").
