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

-export([scan_mod/1]).

-define(L,?LINE).
-define(s(E,T), {call,?L,{remote,?L,{atom,?L,xqerl_types},
                          {atom,?L,cast_as_seq}},[E,abs_seq_type(Ctx,T)]}).
-define(e, erl_syntax).

-include("xqerl.hrl").
-compile(inline_list_funcs).

init_mod_scan() ->
   erlang:put(imp_mod, 1),
   erlang:put(ctx, 1),
   erlang:put(var_tuple, 1),
   erlang:put(iter_loop, 1).

%% {Name, Type, Annos, function_name, Arity, [param_types] }
scan_functions(#{tab := Tab}, Functions,ModName) ->
   IsPriv = fun({annotation, 
                 #qname{namespace = "http://www.w3.org/2012/xquery", 
                        local_name = "private"}, _}) ->
                  true;
               (_) ->
                  false
            end,
   Specs = [ {Name#qname{prefix = []}, 
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
              % block private functions from being visible
              not lists:any(IsPriv, Annos) ],
   xqerl_context:import_functions(Specs,Tab),
   Specs.

%% {Name, Type, Annos, function_name, External }
scan_variables(#{tab := Tab}, Variables) ->
   Specs = [{Name#qname{prefix = []}, Type, Annos,
             xqerl_static:variable_hash_name(Name),External}
           || #xqVar{annotations = Annos, 
                     name = Name,
                     external = External, 
                     type = Type} 
           <- Variables ],
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
   scan_mod(B, maps:remove(body, Map)).
   
scan_mod(#xqModule{prolog = Prolog, 
                   declaration = {_,{ModNs,_Prefix}}, 
                   type = library,
                   body = _}, Map) ->
   _ = init_mod_scan(),
   DefElNs     = xqerl_static:pro_def_elem_ns(Prolog),
   %ContextItem = xqerl_static:pro_context_item(Prolog,main),
   Namespaces  = xqerl_static:pro_namespaces(Prolog,[],DefElNs),
   Variables   = xqerl_static:pro_glob_variables(Prolog),
   Functions   = xqerl_static:pro_glob_functions(Prolog),
   StaticNamespaces = xqerl_context:static_namespaces(),
   %?dbg("{Variables}",{Variables}),
   ConstNamespaces  = xqerl_static:overwrite_static_namespaces(StaticNamespaces, 
                                                               Namespaces),
   EmptyMap = Map#{namespaces => ConstNamespaces},
   ImportedMods = lists:filtermap(fun({'module-import', {_,[]}}) -> false;
                                     ({'module-import', {N,_}}) -> 
                                        {true, xqerl_static:string_atom(N)};
                                     (_) -> false
                                  end,Prolog),
   %?dbg("Prolog",Prolog),
   {ModNs,
    library,
    ImportedMods,
    scan_variables(EmptyMap,Variables),
    scan_functions(EmptyMap,Functions, ModNs),
    [attribute(module, xqerl_static:string_atom(ModNs))]++
    [attribute(export , [{init,1}] )] ++
    [attribute(export , [{static_props,0}] )] ++
    export_variables(Variables, EmptyMap) ++
    export_functions(Functions) ++
    [attribute(compile,inline_list_funcs)] ++
    [attribute(compile,native)] ++ 
    [{function,?L,static_props,0,
      [{clause,?L,[],[],[a_term(maps:get(stat_props, EmptyMap))] }]}] ++
    init_function(scan_variables(EmptyMap,Variables),ImportedMods) ++
    variable_functions(EmptyMap, Variables) ++ 
    function_functions(EmptyMap, Functions) ++ 
    get_global_funs()
   };

scan_mod(#xqModule{prolog = Prolog, 
                   type = main, 
                   body = Body}, #{file_name := FileName, tab := Tab} =  Map) ->
   xqerl_context:set_statically_known_functions(Tab,[]), %%% get rid of this!!
   _ = init_mod_scan(),
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
   Functions   = xqerl_static:pro_glob_functions(Prolog),
   {Functions1, Variables1, StaticProps} = 
     xqerl_context:get_module_exports(Imports),
   
   ImportedMods = lists:filtermap(fun({'module-import', {_,[]}}) -> false;
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
   {FileName,
    main,
    ImportedMods,
    scan_variables(EmptyMap,Variables),
    scan_functions(EmptyMap,Functions,ModName),
   [attribute(module, ModName)] ++ 
   [attribute(export , [{main,1}] )] ++
   export_functions(Functions) ++
   [attribute(compile,inline_list_funcs)] ++
   [attribute(compile,native)] ++ 
   [ {function,?L,init,0,
     [{clause,?L,
       [],
       [],
       [ % body here
         a_match('Tab',?L,a_remote_call({xqerl_context,init,?L},[])),
         a_match('Map',?L,
                 a_remote_call({maps,put,?L},
                               [{atom,7,tab},{var,?L,'Tab'},
                                init_fun_abs(EmptyMap#{module => ModName},
                                             maps:get(stat_props, EmptyMap) ++
                                               StaticProps)
                               ])),
         a_remote_call(
           {xqerl_context,set_named_functions,?L},
           [{var,?L,'Tab'},
            a_remote_call({maps,get,?L},
                          [{atom,?L,named_functions},{var,?L,'Map'},{nil,?L}])
           ]),
         a_remote_call({maps,remove,?L},
                       [{atom,?L,named_functions},{var,?L,'Map'}])
       ]}
    ]
   }] ++ 
   variable_functions(EmptyMap, Variables) ++ 
   function_functions(EmptyMap, Functions) ++
   body_function(EmptyMap, Body, ImportedMods) ++ 
   get_global_funs()
   }.

init_function(Variables,ImportedMods) ->
   VarNss = lists:usort([Ns || {#qname{namespace =Ns},_T,_A,_V,_Ext} 
                        <- Variables]),
   VarAtomNss = [xqerl_static:string_atom(A) || A <- VarNss],
   VarSetFun = fun({_N,_T,_A,V,_Ext} = _Var) ->
                     a_remote_call(
                       {xqerl_lib,lput,?L}, 
                       [{atom,?L,V},{call,?L,{atom,?L,V},[{var,?L,'Ctx'}]}]);
                  (O) ->
                     ?dbg("O",O)
               end,
   ImpFun = fun(Ns) ->
                  case lists:member(Ns, VarAtomNss) of
                     true ->
                        {true, a_remote_call({Ns,init,?L},[{var,?L,'Ctx'}])};
                     _ ->
                        false
                  end
            end,
   VarSetAbs = lists:map(VarSetFun, Variables),
   Imps = lists:filtermap(ImpFun, ImportedMods),
   %?dbg("Imps",ImportedMods),
   Body = lists:append([Imps, VarSetAbs, [{atom,?L,ok}]]),
   [{function,?L,init,1,[{clause,?L,[{var,?L,'Ctx'}],[],Body}]}].

body_function(ContextMap, Body,ImportedMods) ->
   _ = erlang:put(ctx, 1),
   BodyAbs = alist(expr_do(maps:put(ctx_var, 'Ctx',ContextMap), Body)),
   VarSetFun = 
      fun({_N,_T,_A,{V,1},_Ext}, CtxVar) ->
            {a_remote_call(
               {xqerl_lib,lput,?L},
               [{atom,?L,V},{call,?L,{atom,?L,V},[{var,?L,CtxVar}]}]),
             CtxVar};
         ({'context-item',{CType,External,Expr}}, _CtxVar) ->
            NextVar = next_var_name(),
            Occ = if External =:= external -> zero_or_one;
                     Expr =/= []           -> one;
                     true                  -> zero_or_one
                  end,
            C1 = a_remote_call({maps,get,?L}, 
                               [{atom,?L,'context-item'},
                                {var,?L,'Options'},
                                expr_do(ContextMap, Expr)]),
            C2 = a_remote_call({xqerl_types,promote,?L}, 
                               [C1,
                                expr_do(ContextMap, 
                                        #xqSeqType{type = CType, occur = Occ})
                               ]),
            C3 = a_match(NextVar,?L,C2),
            T1 = a_remote_call({?seq,size,?L},[{var,?L,NextVar}]),
            T2 = {tuple,?L,[{atom,?L,xqAtomicValue},{atom,?L,'xs:integer'},T1]},
            T3 = a_remote_call({xqerl_context,set_context_item,?L},
                               [{var,?L,'Ctx0'},
                                {var,?L,NextVar},
                                {integer,?L,1},
                                T2]),
            B1 = a_block(?L,[C3,T3]),
            {a_match('Ctx',?L,B1), 'Ctx'}
      end,                 
   % reverse list that the dependencies are correct   
   {VarSetAbs,LastCtx} = 
     lists:mapfoldl(VarSetFun, 'Ctx0',
                    lists:reverse(maps:get(variables, ContextMap))),
   ImpFun = fun(Ns) ->
                  a_remote_call({Ns,init,?L}, [{var,?L,'Ctx0'}])
            end,
   Imps = lists:map(ImpFun, ImportedMods),
   Merge = a_remote_call({xqerl_context,merge,?L}, 
                         [{call,?L,{atom,?L,init},[]},
                          {var,?L,'Options'}]),
   C0 = [a_match('Ctx0',?L,Merge)],
   V1 = if LastCtx == 'Ctx0' ->
              [a_match('Ctx',?L, {var,?L,'Ctx0'}) | VarSetAbs];
           true ->
              VarSetAbs
        end,
   MainBody = lists:append([C0, Imps, V1, BodyAbs]),
   [{function,?L,main,1,[{clause,?L,[{var,?L,'Options'}],[],MainBody}]}].
   
variable_functions(ContextMap, Variables) ->
   CtxName = get_context_variable_name(ContextMap),
   F = fun(#xqVar{id = _, name = QName, expr = Expr, external = Ext}) ->
             #qname{namespace = Ns1, prefix = P1, local_name = L1} = QName,
             QNameStr = if P1 == [] ->
                              L1;
                           P1 == undefined ->
                              "Q{" ++ Ns1 ++ "}" ++ L1;
                           true ->
                              P1 ++ ":" ++ L1
                        end,
             erlang:put(ctx, 1),
             Name = xqerl_static:variable_hash_name(QName),
             Ex = expr_do(ContextMap, Expr),
             Expr1 = if is_list(Ex) -> Ex;
                        true -> [Ex]
                     end,
             % when external, check for set value first, then default, 
             % or then XPDY0002 when not set.
             R2 = a_remote_call({xqerl_error,error,?L}, 
                                [{atom,?L,'XPDY0002'}]),
             R3 = a_remote_call({maps,get,?L}, 
                                [{string,?L,QNameStr},
                                 {var,?L,CtxName}, 
                                 {var,?L,'Tmp'}]),
             B1 = a_block(?L, Expr1),
             M2 = a_match('Tmp', ?L, B1),
             C1 = [M2,
                   {'case',?L, R3,
                    [{clause,?L,[{atom,?L,undefined}],[],[R2]},
                     {clause,?L,[{var,?L,'X'}],[],[{var,?L,'X'}]}
                    ]}],
            {function, ?L, Name, 1,
             [{clause,?L,[{var,?L, CtxName}], [],
               if Ext == true ->
                     C1;
                  true -> 
                     Expr1
               end
              }]}
     end,
   [F(V) || #xqVar{} = V <- Variables].

function_functions(ContextMap, Functions) ->
   CtxName = get_context_variable_name(ContextMap),
   CtxName2 = next_ctx_var_name(),
   F =fun(#xqFunction{id = _,
                      name = FxName,
                      arity = Arity,
                      params = Params,
                      body = Expr}) ->
            erlang:put(ctx, 1),
            {FName, Arity1} = xqerl_static:function_hash_name(FxName, Arity),
            % add parameters to scope
            VF = fun(#xqVar{id = VId,
                            name = Name,
                            type = Type,
                            annotations = Annos}, Map) ->
                       VarName = list_to_atom(
                                   lists:concat(["Param__var_", VId])),
                       %% {name,type,annos,Name}
                       NewMap = add_param({Name,Type,Annos,VarName}, Map),
                       {{var,?L, VarName}, NewMap}
                 end,
            {List,Map2} =  lists:mapfoldl(VF, ContextMap, Params),
            Map3 = set_context_variable_name(Map2, CtxName2),
            % do not allow functions to access the current context item
            R1 = a_remote_call({xqerl_context,set_empty_context_item,?L},
                               [{var,?L, CtxName}]),
            M1 = a_match(CtxName2,?L,R1),
            E1 = expr_do(Map3, Expr),
            {function, ?L, FName, Arity1,
             [{clause,?L, lists:flatten([{var,?L, CtxName}|List]),
               [], % guards
               [ M1, E1 ]
              }]}
     end,
   [F(V) || #xqFunction{} = V <- Functions].

export_functions(Functions) ->
   Specs = [ xqerl_static:function_hash_name(Name, Arity) 
           || #xqFunction{name = Name, 
                          arity = Arity} 
           <- Functions   ],
   [attribute(export, Specs)].

export_variables(Variables, _Ctx) ->
   Specs = [ {xqerl_static:variable_hash_name(Name),1}
           || #xqVar{name = Name} 
           <- Variables   ],
   [attribute(export, Specs)].

attribute(Name,Val) ->
   {attribute,?L,Name,Val}.

param_types(Params) ->
   [ T || #xqVar{type = T} <- Params].

% cardinality ensure
expr_do(Ctx, {ensure, Var, #xqSeqType{type = item, occur = zero_or_many}}) ->
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
   a_remote_call({?seq,FunName,?L}, alist(Expr));
% ignoring pragmas for now
expr_do(_Ctx, {pragma, _Pragmas, []}) ->
   ?err('XQST0079');
expr_do(Ctx, {pragma, _Pragmas, Exprs}) ->
   expr_do(Ctx, Exprs);

expr_do(_Ctx, undefined) ->
   {atom,?L,undefined};
% try/catch
expr_do(Ctx, {'try',Id,Expr,{'catch',CatchClauses}}) ->
   TryAbs = expr_do(Ctx, Expr),
   
   CodeVar = list_to_atom("CodeVar" ++ integer_to_list(Id)),
   DescVar = list_to_atom("DescVar" ++ integer_to_list(Id)),
   ValuVar = list_to_atom("ValuVar" ++ integer_to_list(Id)),
   ModuVar = list_to_atom("ModuVar" ++ integer_to_list(Id)),
   LineVar = list_to_atom("LineVar" ++ integer_to_list(Id)),
   ColnVar = list_to_atom("ColnVar" ++ integer_to_list(Id)),
   
   ErrNs = "http://www.w3.org/2005/xqt-errors",
   
   NewCodeVar = {#qname{namespace = ErrNs,prefix = "err", 
                        local_name = "code"},
                 #xqSeqType{type = 'xs:QName', 
                            occur = one},[],CodeVar},
   NewDescVar = {#qname{namespace = ErrNs,prefix = "err", 
                        local_name = "description"},
                 #xqSeqType{type = 'xs:string', 
                            occur = zero_or_one},[],DescVar},
   NewValuVar = {#qname{namespace = ErrNs,prefix = "err", 
                        local_name = "value"},
                 #xqSeqType{type = 'item', 
                            occur = zero_or_many},[],ValuVar},
   NewModuVar = {#qname{namespace = ErrNs,prefix = "err", 
                        local_name = "module"},
                 #xqSeqType{type = 'xs:string', 
                            occur = zero_or_one},[],ModuVar},
   NewLineVar = {#qname{namespace = ErrNs,prefix = "err", 
                        local_name = "line-number"},
                 #xqSeqType{type = 'xs:integer', 
                            occur = zero_or_one},[],LineVar},
   NewColnVar = {#qname{namespace = ErrNs,prefix = "err", 
                        local_name = "column-number"},
                 #xqSeqType{type = 'xs:integer', 
                            occur = zero_or_one},[],ColnVar},
   
   Ctx0 = add_variable(NewCodeVar, Ctx),
   Ctx1 = add_variable(NewDescVar, Ctx0),
   Ctx2 = add_variable(NewValuVar, Ctx1),
   Ctx3 = add_variable(NewModuVar, Ctx2),
   Ctx4 = add_variable(NewLineVar, Ctx3),
   Ctx5 = add_variable(NewColnVar, Ctx4),
   
   ClsFun = 
     fun({Errors,DoExpr}) ->
           DoExprAbs = expr_do(Ctx5, DoExpr),
           lists:map(
             fun(#xqNameTest{name = #qname{namespace = Ns,local_name = Ln}}) ->
                   NamePattern = 
                     {tuple,?L,
                      [{atom,?L,'xqError'},
                       {match,?L,
                        {tuple,?L,
                         [{var,?L,'_'},
                          {var,?L,'_'},
                          {tuple,?L,
                           [{atom,?L,'qname'},
                            if Ns == "*" -> {var,?L,'_'};
                               true -> {string,?L,Ns}
                            end,
                            {var,?L,'_'},
                            if Ln == "*" -> {var,?L,'_'};
                               true -> {string,?L,Ln}
                            end]}]},
                          {var,?L,CodeVar}
                         },
                       {var,?L,DescVar},
                       {var,?L,ValuVar},
                       {tuple,?L,
                        [{var,?L,ModuVar},{var,?L,LineVar},{var,?L,ColnVar}]}
                      ]},
                   {clause,?L,
                    [{tuple,?L,[{var,?L,'_'},NamePattern,{var,?L,'_'}]}], % pattern
                      [], % guard
                      alist(DoExprAbs)}
               end, Errors)
     end,
   
   Clauses = lists:flatmap(ClsFun, CatchClauses),
   {'try',?L,
    alist(TryAbs),
    [], % guard
    Clauses,
    [] % after
   };

expr_do(Ctx, #xqNameTest{name = Name}) ->
   abs_qname(Ctx, Name);

% inline errors
expr_do(_Ctx, {error, ErrCode}) when is_atom(ErrCode) ->
   a_remote_call({xqerl_error,error,?L}, [{atom,?L,ErrCode}]);

% bang operator
expr_do(Ctx, {'simple-map',SeqExpr,{'simple-map',_,_} = MapExpr}) ->
   SeqAbs = expr_do(Ctx, SeqExpr),
   step_expr_do(Ctx, MapExpr, SeqAbs);

expr_do(Ctx, {'simple-map',SeqExpr,MapExpr}) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   SeqAbs = expr_do(Ctx, SeqExpr),
   FunAbs = {'fun',?L,
             {clauses,
              [{clause,?L,[{var,?L,NextCtxVar}],[],
                alist(expr_do(Ctx1, MapExpr))}]}},
   a_remote_call({xqerl_flwor,simple_map,?L}, [{var,?L,CtxVar},SeqAbs,FunAbs]);

% inline anonymous functions
expr_do(Ctx, #xqFunction{id = _Id,
                         name = undefined, % fun object
                         annotations = _, 
                         arity = _,
                         params = Params,
                         body = Expr} = F) ->
   NextCtxVar = next_ctx_var_name(),
   NextNextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   % add parameters to scope
   PFun = fun(#xqVar{id = ID, 
                     name = #qname{} = Name,
                     type = Type, 
                     annotations = Annos}, Map) ->
                VarName = list_to_atom(lists:concat(["Param__var_", ID])),
                %% {name,type,annos,Name}
                NewMap = add_param({Name,Type,Annos,VarName}, Map),
                {{var,?L, VarName}, NewMap}
          end,
   {ParamList,Ctx2} =  lists:mapfoldl(PFun, Ctx1, Params),
   Ctx3 = set_context_variable_name(Ctx2, NextNextCtxVar),
   Body = {'fun',?L,
    {clauses,
     [{clause,?L,[{var,?L, NextNextCtxVar}|ParamList],[],
       [expr_do(Ctx3, Expr)]
      }]
    }
   },
   abs_function(Ctx, F, Body) ;

expr_do(Ctx, {'context-item', {_Type,_External,Expr}} )->
   expr_do(Ctx, Expr);
expr_do(_Ctx, {map, []} ) -> % empty map
   a_term(#{});
expr_do(Ctx, {map, Vals} ) ->
   CtxVar = get_context_variable_name(Ctx),
   AVals = lists:foldl(
             fun({'map-key-val',Key,Val}, Abs) ->
                   KeyExp = expr_do(Ctx,Key),
                   ValExp = expr_do(Ctx,Val),
                   {cons,?L,{tuple,?L,[KeyExp, ValExp]}, Abs}
             end, {nil,?L}, alist(Vals)), 
   a_remote_call({xqerl_map,construct,?L},[{var,?L,CtxVar},AVals]);
expr_do(Ctx, {array, {expr, Expr}} )->
   Vals = lists:foldr(
            fun(E,Acc) ->
                  Ex = expr_do(Ctx, E),
                  case Ex of
                     {nil,_} ->
                        {cons,?L,{cons,?L,{nil,?L},Acc}};
                     _ ->
                        {cons,?L,Ex,Acc}
                  end
            end,{nil,?L}, alist(Expr)),
   a_remote_call({xqerl_array,from_list,?L}, [Vals]);
% this is a constructor
expr_do(Ctx, {array, [{content_expr, Expr}]} ) ->
   Vals = lists:foldr(
            fun(E,Acc) ->
                  Ex = expr_do(Ctx, E),
                  case Ex of
                     {nil,_} ->
                        {cons,?L,{nil,?L},Acc};
                     _ ->
                        {cons,?L,Ex,Acc}
                  end
            end,{nil,?L}, alist(Expr)),
   F1 = a_remote_call({?seq,flatten,?L}, [Vals]),
   a_remote_call({xqerl_array,from_list,?L}, [F1]);
expr_do(Ctx, {array, Expr} ) ->
   Vals = lists:foldr(
            fun(E,Acc) ->
                  Ex = expr_do(Ctx, E),
                  case Ex of
                     {nil,_} ->
                        {cons,?L,{nil,?L},Acc};
                     _ ->
                        {cons,?L,Ex,Acc}
                  end
            end,{nil,?L}, alist(Expr)),
   a_remote_call({xqerl_array,from_list,?L}, [Vals]);
expr_do(Ctx, #xqQuery{query = Qry}) ->
   S1 = a_match('Query', ?L, expr_do(Ctx, Qry)),
   S2 = a_remote_call({xqerl_types,return_value,?L}, [{var,?L,'Query'}]),
   S3 = a_match('ReturnVal', ?L, S2),
   S4 = a_remote_call({xqerl_context,destroy,?L}, 
                      [{var,?L,get_context_variable_name(Ctx)}]),
   S5 = {var,?L,'ReturnVal'},
   a_block(?L,[S1,S3,S4,S5]);
   
expr_do(Ctx, [T]) when is_tuple(T) ->
   expr_do(Ctx, T);
expr_do(_Ctx, #xqAtomicValue{} = A) ->
   a_term(A);

expr_do(Ctx, {'string-constructor', Expr}) ->
   F = fun(I,Abs) ->
             R = a_remote_call({xqerl_types,string_value,?L}, [expr_do(Ctx,I)]),
             {cons,?L,R,Abs}
       end,
   Es = lists:foldr(F, {nil,?L}, alist(Expr)),
   {tuple,?L,
    [{atom,?L,xqAtomicValue},
     {atom,?L,'xs:string'},
     a_remote_call({?seq,flatten,?L}, [Es])
    ]};

expr_do(Ctx, 'context-item') ->
   CtxName = get_context_variable_name(Ctx),
   a_remote_call({xqerl_context,get_context_item,?L}, 
                 [{var,?L,CtxName}]);
expr_do(Ctx, {range,Expr1,Expr2}) ->
   a_remote_call({?seq,range,?L}, 
                 [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'and',Expr1,Expr2}) ->
   S1 = a_remote_call({xqerl_operators,eff_bool_val,?L}, [expr_do(Ctx, Expr1)]),
   S2 = a_remote_call({xqerl_operators,eff_bool_val,?L}, [expr_do(Ctx, Expr2)]),
   {tuple,?L,
    [{atom,?L,xqAtomicValue},
     {atom,?L,'xs:boolean'},
     {op,?L,'andalso', S1, S2}
    ]};
expr_do(Ctx, {'or',Expr1,Expr2}) ->
   S1 = a_remote_call({xqerl_operators,eff_bool_val,?L}, [expr_do(Ctx, Expr1)]),
   S2 = a_remote_call({xqerl_operators,eff_bool_val,?L}, [expr_do(Ctx, Expr2)]),
   {tuple,?L,
    [{atom,?L,xqAtomicValue},
     {atom,?L,'xs:boolean'},
     {op,?L,'orelse', S1, S2}
    ]};

% instance of / castable
expr_do(Ctx, {instance_of,Expr1,Expr2}) ->
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   a_remote_call({xqerl_types,instance_of,?L}, [E1,E2]);

expr_do(_Ctx, {castable_as,'empty-sequence',#xqSeqType{occur = one}}) -> 
   % bad empty cast
   abs_boolean(false);
expr_do(_Ctx, {castable_as,'empty-sequence',#xqSeqType{occur = zero_or_one}}) -> 
   % good empty cast
   abs_boolean(true);
expr_do(Ctx, {castable_as,Expr1,
              #xqSeqType{type = #qname{prefix = "xs",local_name = "QName"}}}) ->
   expr_do(Ctx, {castable_as,Expr1,#xqSeqType{type = 'xs:QName'}});
expr_do(Ctx, {castable_as,Expr1,#xqSeqType{type = 'xs:QName'}}) -> 
   % namespace sensitive
   Namespaces = abs_ns_list(Ctx),
   a_remote_call({xqerl_types,castable,?L}, 
                 [expr_do(Ctx, Expr1), 
                  {atom,?L,'xs:QName'},
                  Namespaces]);
expr_do(Ctx, {castable_as,Expr1,Expr2}) ->
   a_remote_call({xqerl_types,castable,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);

expr_do(Ctx, {cast_as,Expr1,
              #xqSeqType{type = #qname{prefix = "xs",local_name = "QName"}}}) -> 
   expr_do(Ctx, {cast_as,Expr1,#xqSeqType{type = 'xs:QName'}});
expr_do(Ctx, {cast_as,Expr1,#xqSeqType{type = 'xs:QName'}}) -> 
   % namespace sensitive
   Namespaces = abs_ns_list(Ctx),
   a_remote_call({xqerl_types,cast_as,?L}, 
                 [expr_do(Ctx, Expr1), 
                  {atom,?L,'xs:QName'},
                  Namespaces]);
expr_do(Ctx, {cast_as,Expr1,Expr2}) ->
   a_remote_call({xqerl_types,cast_as,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);

% atomize/promote bodies of functions
expr_do(Ctx, {promote_to, {atomize, #xqFunction{body = Body} = Expr1},
              #xqSeqType{type = #xqFunTest{type = Expr2}}}) ->
   expr_do(Ctx, Expr1#xqFunction{body = {promote_to, {atomize, Body}, Expr2}});
expr_do(Ctx, {promote_to, #xqFunction{body = Body} = Expr1,
              #xqSeqType{type = #xqFunTest{type = Expr2}}}) ->
   expr_do(Ctx, Expr1#xqFunction{body = {promote_to, Body, Expr2}});
expr_do(Ctx, {promote_to,Expr1,Expr2}) ->
   a_remote_call({xqerl_types,promote,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);

expr_do(_Ctx, #xqSeqType{type = Atom, occur = O}) when is_atom(Atom) ->
   {tuple,?L,[{atom,?L,xqSeqType},{atom,?L,Atom},{atom,?L,O}]};
expr_do(_Ctx, #xqSeqType{type = #qname{local_name = Ln}, occur = O}) ->
   Atom = erlang:list_to_atom("xs:" ++ Ln),
   {tuple,?L,[{atom,?L,xqSeqType},{atom,?L,Atom},{atom,?L,O}]};
expr_do(Ctx, #xqSeqType{type = T, occur = O}) when is_record(T, xqKindTest) ->
   {tuple,?L,[{atom,?L,xqSeqType},abs_kind_test(Ctx,T),{atom,?L,O}]};
expr_do(Ctx, #xqSeqType{type = T, occur = O}) when is_record(T, xqFunTest) ->
   {tuple,?L,[{atom,?L,xqSeqType},abs_fun_test(Ctx,T),{atom,?L,O}]};

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
expr_do(Ctx, {direct_cons, Expr}) ->
   C = get_context_variable_name(Ctx),
   a_remote_call({xqerl_node,new_fragment,?L},
                 [{var,?L,C},expr_do(Ctx, Expr)]);
expr_do(Ctx, {comp_cons, Expr}) ->
   C = get_context_variable_name(Ctx),
   a_remote_call({xqerl_node,new_fragment,?L},
                 [{var,?L,C},expr_do(Ctx, Expr)]);

expr_do(Ctx, {atomize, #xqFunction{body = Body} = Expr1}) ->
   expr_do(Ctx, Expr1#xqFunction{body = {atomize, Body}});
expr_do(Ctx, {atomize, Expr}) ->
   a_remote_call({xqerl_types,atomize,?L}, [expr_do(Ctx, Expr)]);

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
               TmpVar = next_var_name(),
               Ctx2 = add_variable({Name,Type,[],VarName}, Ctx1),
               {[{generate,?L,
                  {var,?L,TmpVar},
                  a_remote_call({?seq,to_list,?L}, [expr_do(Ctx1, Expr)])},
                 {generate,?L,
                  {var,?L,VarName},
                  {cons,?L,{var,?L,TmpVar},{nil,?L}}}],
                Ctx2}
         end,
   {Gens,Ctx3} = lists:mapfoldl(Fun, Ctx,Vars),
   F = case Op of
          every -> all;
          some -> any
       end,
   {tuple,?L,
    [{atom,?L,xqAtomicValue},
     {atom,?L,'xs:boolean'},
     a_remote_call({lists,F,?L}, 
                   [{'fun',?L,
                     {clauses,
                      [{clause,?L,[VarTup],[],
                        [a_remote_call({xqerl_operators,eff_bool_val,?L},
                                       [expr_do(Ctx3, Test)])
                        ]}]}},
                    {lc,?L,VarTup, lists:flatten(Gens)}
                   ])
    ]};

% ordering
expr_do(Ctx, {'function-call', 
              #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                     local_name = "unordered"}, 1, Args}) ->
   expr_do(Ctx, {'unordered-expr', Args});
expr_do(_Ctx, {'unordered-expr', 'empty-expr'}) -> ?err('XPST0003');
expr_do(Ctx, {'unordered-expr', Expr}) ->
   % new context to unordered
   % run expression with new context
   % continue with old context
   C = get_context_variable_name(Ctx),
   NextCtx = next_ctx_var_name(),
   S1 = a_remote_call({xqerl_context,set_ordering_mode,?L}, 
                      [{var,?L,C},{atom,?L,unordered}]),
   S2 = a_match(NextCtx, ?L, S1),
   Ctx1 = set_context_variable_name(Ctx, NextCtx),
   S3 = expr_do(Ctx1, Expr),
   a_block(?L, [S2,S3]);

expr_do(_Ctx, {'ordered-expr', 'empty-expr'}) -> ?err('XPST0003');
expr_do(Ctx, {'ordered-expr', Expr}) ->
   % new context to ordered
   % run expression with new context
   % continue with old context
   C = get_context_variable_name(Ctx),
   NextCtx = next_ctx_var_name(),
   S1 = a_remote_call({xqerl_context,set_ordering_mode,?L}, 
                      [{var,?L,C},{atom,?L,ordered}]),
   S2 = a_match(NextCtx, ?L, S1),
   Ctx1 = set_context_variable_name(Ctx, NextCtx),
   S3 = expr_do(Ctx1, Expr),
   a_block(?L, [S2,S3]);

expr_do(Ctx, {'function-call', #xqFunction{params = Params, 
                                           body = {M,F,_A}}}) ->
   CtxName = get_context_variable_name(Ctx),
   NewArgs = lists:map(fun(P) ->
                             expr_do(Ctx,P)
                       end, Params),
   a_remote_call({M,F,?L}, [{var,?L,CtxName}|NewArgs]);

%% -record(xqFunction, {
%%    id                = 0 :: integer(),
%%    annotations       = [] :: [ #annotation{} ],
%%    name              = undefined :: #qname{} | undefined,
%%    arity             = 0 :: integer(),
%%    params            = [],
%%    type              = #xqSeqType{} :: any | #xqSeqType{},
%%    body              = undefined :: term()
%% }).
expr_do(_Ctx, #xqFunction{annotations = Annos, 
                          name = Name, 
                          arity = Ay, 
                          params = Params,
                          type = Type,
                          body = {xqerl_fn,concat,_}}) ->
   {tuple,?L,
    [{atom,?L,xqFunction},
     {integer,?L,0},      % id
     a_term(Annos), % annotations
     a_term(Name),  % name
     a_term(Ay),    % arity
     a_term(Params),% params
     a_term(Type),  % Type
     {'fun',?L,{'function',{atom,?L,xqerl_fn},{atom,?L,concat},{integer,?L,2}}}
     ]};
expr_do(_Ctx, #xqFunction{annotations = Annos, 
                          name = Name, 
                          arity = Ay, 
                          params = Params,
                          type = Type,
                          body = {M,F,A}}) ->
   {tuple,?L,
    [{atom,?L,xqFunction},
     {integer,?L,0},      % id
     a_term(Annos), % annotations
     a_term(Name),  % name
     a_term(Ay),    % arity
     a_term(Params),% params
     a_term(Type),  % Type
     {'fun',?L,{'function',{atom,?L,M},{atom,?L,F},{integer,?L,A}}}
     ]};

expr_do(_Ctx, #xqFunction{annotations = Annos, 
                          name = Name, 
                          arity = Ay, 
                          params = Params,
                          type = Type,
                          body = {F,A}}) ->
   {tuple,?L,
    [{atom,?L,xqFunction},
     {integer,?L,0},      % id
     a_term(Annos), % annotations
     a_term(Name),  % name
     a_term(Ay),    % arity
     a_term(Params),% params
     a_term(Type),  % Type
     {'fun',?L,{'function',F,A}}
     ]};

expr_do(Ctx, {'function-call', #xqFunction{params = Params, 
                                           body = {F,_A}}}) ->
   CtxName = get_context_variable_name(Ctx),
   NewArgs = lists:map(fun(P) ->
                             expr_do(Ctx,P)
                       end, Params),
   {call,?L,
     {atom,?L,F},
    [{var,?L,CtxName}|NewArgs]};

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

% steps
expr_do(Ctx, #xqAxisStep{} = Step) ->
   CtxVar = get_context_variable_name(Ctx),
   Base = a_remote_call({xqerl_context,get_context_item,?L}, 
                        [{var,?L,CtxVar}]),
   step_expr_do(Ctx, Step, Base);

expr_do(_Ctx, {variable, {Name,1}}) when is_atom(Name) ->
   a_remote_call({xqerl_lib,lget,?L}, [{atom,?L,Name}]);
expr_do(Ctx, {variable, {Mod,Name}}) when is_atom(Mod),is_atom(Name) ->
   a_remote_call({Mod,Name,?L}, [{var,?L,get_context_variable_name(Ctx)}]);
expr_do(_Ctx, {variable, Name}) when is_atom(Name) ->
   {var,?L,Name};

% paths
expr_do(Ctx, {path_expr,[ Base | Steps ]}) ->
   Src = expr_do(Ctx, {expr, Base}),
   lists:foldl(fun(Exp, SrcAbs) ->
                     step_expr_do(Ctx, Exp, SrcAbs)
               end, Src, Steps);

expr_do(Ctx, {root}) ->
   CurrCtxVar = get_context_variable_name(Ctx),
   C = a_remote_call({xqerl_context,get_context_item,?L}, 
                     [{var,?L,CurrCtxVar}]),
   a_remote_call({xqerl_step,root,?L}, [{var,?L,CurrCtxVar},C]);
expr_do(Ctx, {'any-root'}) ->
   CurrCtxVar = get_context_variable_name(Ctx),
   C = a_remote_call({xqerl_context,get_context_item,?L}, 
                     [{var,?L,CurrCtxVar}]),
   a_remote_call({xqerl_step,any_root,?L}, [{var,?L,CurrCtxVar},C]);

expr_do(Ctx, {postfix, {'function-ref',Q,V}, [{arguments,Args}]}) ->
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
   CtxVar = get_context_variable_name(Ctx),
   NextVar = next_var_name(),
   if PlaceHolders =:= [] ->
         M1 = a_match(NextVar,?L,expr_do(Ctx, {'function-ref',Q,V})),
         a_block(?L,[M1,{call,?L,{var,?L,NextVar},[{var,?L,CtxVar}|ArgAbs]}]);
      true -> % has placeholders, so only a ref to new function
         {'fun',?L,{clauses,[{clause,?L,[{var,?L,CtxVar}|PlaceHolders],[],
                              [a_match(NextVar,?L,
                                       expr_do(Ctx, {'function-ref',Q,V})),
                               {call,?L,
                                {var,?L,NextVar},
                                [{var,?L,CtxVar}|ArgAbs]}]
                             }]}}
   end;
% map unary lookups
expr_do(Ctx, {postfix, Map, [{map_lookup, {sequence,_} = Val}]}) ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = expr_do(Ctx, Map),
   ValExp =  expr_do(Ctx, Val),
   a_remote_call({xqerl_operators,lookup,?L},
                 [{var,?L,CtxVar},MapExpr, ValExp]);
expr_do(Ctx, {postfix, Map, [{map_lookup, wildcard}]}) ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = expr_do(Ctx, Map),
   a_remote_call({xqerl_operators,lookup,?L},
                 [{var,?L,CtxVar},MapExpr,{atom,?L,all}]);
expr_do(Ctx, {postfix, Map, [{map_lookup, Val}]}) ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = expr_do(Ctx, Map),
   ValExp =  expr_do(Ctx, Val),
   a_remote_call({xqerl_operators,lookup,?L},
                 [{var,?L,CtxVar},MapExpr,ValExp]);

% array unary lookups
expr_do(Ctx, {postfix, Map, [{array_lookup, {sequence,_} = Val}]}) ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = expr_do(Ctx, Map),
   ValExp =  expr_do(Ctx, Val),
   a_remote_call({xqerl_operators,lookup,?L},
                 [{var,?L,CtxVar},MapExpr, ValExp]);
expr_do(Ctx, {postfix, Map, [{array_lookup, wildcard}]}) ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = expr_do(Ctx, Map),
   a_remote_call({xqerl_operators,lookup,?L},
                 [{var,?L,CtxVar},MapExpr,{atom,?L,all}]);
expr_do(Ctx, {postfix, Map, [{array_lookup, Val}]}) ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = expr_do(Ctx, Map),
   ValExp =  expr_do(Ctx, Val),
   a_remote_call({xqerl_operators,lookup,?L},
                 [{var,?L,CtxVar},MapExpr,ValExp]);

expr_do(Ctx, {LU, Val}) when LU =:= array_lookup;
                             LU =:= map_lookup ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = a_remote_call({xqerl_context,get_context_item,?L}, 
                           [{var,?L,CtxVar}]),
   ValExp = if Val =:= wildcard ->
                  {atom,?L,all};
               true ->
                  expr_do(Ctx, Val)
            end,
   a_remote_call({xqerl_operators,lookup,?L},
                 [{var,?L,CtxVar},MapExpr,ValExp]);

expr_do(Ctx, {postfix, Base, Preds}) when is_list(Preds) ->
   Source = expr_do(Ctx, Base),
   lists:foldl(fun(Val, Abs) ->
                     ?dbg("Val",Val),
                     handle_predicate({Ctx, Val}, Abs)
               end, Source, Preds);

% node sequences
expr_do(Ctx, {'intersect', Expr1, Expr2}) ->
   a_remote_call({?seq,intersect,?L},[expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'union', Expr1, Expr2}) ->
   a_remote_call({?seq,union,?L},[expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'except', Expr1, Expr2}) ->
   a_remote_call({?seq,except,?L},[expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]);

expr_do(Ctx, #xqVarRef{name = Name}) ->
   {V,_} = get_variable_ref(Name, Ctx),
   V;

expr_do(Ctx, {'switch', RootExpr, [Cases, {'default', DefaultExpr}]}) ->
   RootVar = next_var_name(),
   RootExpr1 = {ensure,RootExpr,#xqSeqType{type = item, occur = zero_or_one}},
   Atom = a_remote_call({xqerl_types,atomize,?L}, 
                        [expr_do(Ctx,RootExpr1)]),
   Value = a_remote_call({xqerl_types,value,?L}, [Atom]),
   RootVarSet = a_match(RootVar, ?L, Value),
   DefaultRet = alist(expr_do(Ctx,DefaultExpr)),
   % cases are {[MatchExprs], {return, ReturnExpr}}
   OFold = 
     fun({MatchExprs,{return, ReturnExpr}},Abs) ->
           MatchExprs2 = if MatchExprs == [] -> [[]];
                            true -> MatchExprs
                         end,
           ReturnAbs = expr_do(Ctx, ReturnExpr),
           IFold = fun(MatchExpr, Abs1) ->
                         Var = next_var_name(),
                         MatchExpr1 = 
                           {ensure,MatchExpr,
                            #xqSeqType{type = item, occur = zero_or_one}},
                         Atom1 = a_remote_call({xqerl_types,atomize,?L}, 
                                               [expr_do(Ctx,MatchExpr1)]),
                         Value1 = a_remote_call({xqerl_types,value,?L}, 
                                                [Atom1]),
                         Var1 = a_match(Var, ?L, Value1),
                         [Var1,
                          {'if',?L,
                           [{clause,?L,[],
                             [[{op,?L,'==',
                                {var,?L,RootVar},{var,?L,Var}}]],
                             [ReturnAbs]},
                            {clause,?L,[],[[{atom,?L,true}]],Abs1}
                           ]}
                         ]
                   end,
           lists:foldr(IFold, Abs, MatchExprs2)
     end,
   
   IfStatements = (catch lists:foldr(OFold, DefaultRet, Cases)),
   a_block(?L, [RootVarSet|IfStatements]);

expr_do(Ctx, {'typeswitch', RootExpr, CasesDefault}) ->
   CaseVar = next_var_name(),
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
                 [{'case',?L,
                   a_remote_call({xqerl_types,instance_of,?L}, 
                                 [{var,?L,CaseVar},
                                  abs_seq_type(Ctx,Type)]),
                   [{clause,?L,[abs_boolean(true)],[],
                     alist(expr_do(Ctx, RetExpr))},
                    {clause,?L,[{var,?L,'_'}  ],[],Acc}]
                  }];
              ({'case-var',{'type', Type},#xqVar{id = Id, 
                                                 name = Name, 
                                                 expr = RetExpr}}, Acc) ->
                 VarName = local_variable_name(Id),
                 NewVar  = {Name,Type,[],VarName},
                 NewCtx  = add_variable(NewVar, Ctx),
                 [{'case',?L,
                   a_remote_call({xqerl_types,instance_of,?L}, 
                                 [{var,?L,CaseVar},
                                  abs_seq_type(Ctx,Type)]),
                   [{clause,?L,[abs_boolean(true)],[],
                     [a_match(VarName, ?L, {var,?L,CaseVar}),
                      expr_do(NewCtx, RetExpr)
                     ]},
                    {clause,?L,[{var,?L,'_'}  ],[],Acc}
                   ]
                  }];
              ({'def-var',#xqVar{id = Id, 
                                 name = Name, 
                                 type = Type, 
                                 expr = RetExpr}}, _Acc) ->
                 VarName = local_variable_name(Id),
                 NewVar  = {Name,Type,[],VarName},
                 NewCtx  = add_variable(NewVar, Ctx),
                 [a_match(VarName, ?L, {var,?L,CaseVar}),
                  expr_do(NewCtx, RetExpr)];
              ({'def-novar',{return,RetExpr}}, _Acc) ->
                 alist(expr_do(Ctx, RetExpr))
           end,
   [CaseNestExprs] = lists:foldr(CaseF, [{nil,?L}], ExpandedCases),
   a_block(?L,[a_match(CaseVar, ?L, expr_do(Ctx,RootExpr)),
               CaseNestExprs]);

expr_do(Ctx, {'if-then-else', If, Then, Else}) ->
   True = alist(expr_do(Ctx, Then)),
   False = alist(expr_do(Ctx, Else)),
   Case = a_remote_call({xqerl_operators,eff_bool_val,?L}, 
                        alist(expr_do(Ctx, If))),
   {'case',?L,Case,
    [{clause,?L,[{atom,?L,true}],[],True},
     {clause,?L,[{var,?L,'_'}  ],[],False}]};

expr_do(Ctx, {Op, Expr1, Expr2}) when Op =:= '=';
                                      Op =:= '!=';
                                      Op =:= '>';
                                      Op =:= '>=';
                                      Op =:= '<';
                                      Op =:= '<=' ->
   a_remote_call({xqerl_operators,general_compare,?L}, 
                 [{atom,?L,Op},expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'eq', Expr1, Expr2}) -> 
   a_remote_call({xqerl_operators,equal,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'ne', Expr1, Expr2}) ->
   a_remote_call({xqerl_operators,not_equal,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'lt', Expr1, Expr2}) ->
   a_remote_call({xqerl_operators,less_than,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'le', Expr1, Expr2}) ->
   a_remote_call({xqerl_operators,less_than_eq,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'gt', Expr1, Expr2}) ->
   a_remote_call({xqerl_operators,greater_than,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'ge', Expr1, Expr2}) ->
   a_remote_call({xqerl_operators,greater_than_eq,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);
expr_do(Ctx, {Op, Expr1, Expr2}) when Op =:= 'add';
                                      Op =:= 'subtract';
                                      Op =:= 'multiply';
                                      Op =:= 'divide';
                                      Op =:= 'modulo' ->
   a_remote_call({xqerl_operators,Op,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'integer-divide', Expr1, Expr2}) ->
   a_remote_call({xqerl_operators,idivide,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'<<', Expr1, Expr2}) ->
   a_remote_call({xqerl_operators,node_before,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'>>', Expr1, Expr2}) ->
   a_remote_call({xqerl_operators,node_after,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'is', Expr1, Expr2}) ->
   a_remote_call({xqerl_operators,node_is,?L}, 
                 [expr_do(Ctx, Expr1),
                  expr_do(Ctx, Expr2)]);
expr_do(Ctx, {'unary', '-', Expr1}) ->
   a_remote_call({xqerl_operators,unary_minus,?L}, 
                 [expr_do(Ctx, Expr1)]);
expr_do(Ctx, {'unary', '+', Expr1}) ->
   a_remote_call({xqerl_operators,unary_plus,?L}, 
                 [expr_do(Ctx, Expr1)]);

expr_do(_Ctx, 'empty-sequence') -> {nil,?L};
expr_do(_Ctx, 'empty-expr') -> {nil,?L};

% each position of the flwor is put in its own function.
% every function is a body call to the next section and tail to self.
expr_do(Ctx, #xqFlwor{id = RetId, loop = Loop, return = Return}) ->
   Ctx1 = Ctx#{grp_variables => []}, % Clear any grouping variables
   VarTup = get_variable_tuple_name(Ctx1),
   {_NewCtx,In,Out} = flwor(Ctx1, Loop, RetId, Return, [], [],VarTup, false),
   add_global_funs(Out),
   a_remote_call({?seq,flatten,?L}, [a_block(?L, alist(In))]);

expr_do(Ctx, [Sing]) ->
   expr_do(Ctx, Sing);
expr_do(Ctx, List) when is_list(List) ->
   Exprs = lists:map(fun(E) ->
                           expr_do(Ctx, E)
                     end, List),
   abs_list(Exprs);

% catch-all
expr_do(_Ctx, Expr) ->
   ?dbg("TODO", Expr),
   {nil,?L}.


% return clause end loop and returns {NewCtx,Internal,Global}
flwor(Ctx, [], RetId, Return, Internal, Global,TupleVar,true) ->
   {NewCtx,FunAbs} = return_part(Ctx, {RetId,Return}),
   NewCtx1 = set_variable_tuple_name(NewCtx, TupleVar),
   {NewCtx1,Internal,FunAbs ++ Global};
flwor(Ctx, [], RetId, Return, Internal, Global,TupleVar,_Inline) ->
   FunctionName = glob_fun_name({return,RetId}),
   CurrContext = get_context_variable_name(Ctx),
   NextTupleVar = next_var_tuple_name(),
   {NewCtx,FunAbs} = return_part(Ctx, {RetId,Return}),
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   Call = [{call,?L,{atom,?L,FunctionName},
            [{var,?L,CurrContext},{var,?L, TupleVar}]}],
   NewInt = Internal ++ Call,
   {NewCtx1,NewInt,FunAbs ++ Global};

% (for|let)/return
flwor(Ctx, [{Curr,_} = F], RetId, Return, Internal, Global,TupleVar,Inline) 
   when Curr =:= 'let';
        Curr =:= 'for' ->
   Vars = case get_variable_tuple(Ctx) of
             {nil,_} -> {atom,?L,new};
             O -> O
          end,
   NextTupleVar = if TupleVar =:= [];
                     Inline =:= false ->
                        next_var_tuple_name();
                     true ->
                        TupleVar
                  end,
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name(F),
   NextFun = glob_fun_name({return, RetId}),
   {NewCtx,FunAbs} = if Curr =:= 'let' ->
                           let_part(Ctx, F, NextFun);
                        true ->
                           for_loop(Ctx, F, NextFun)
                     end,
   Call1 = [a_match(NextTupleVar,?L,
                    {call,?L,{atom,?L,ThisFun},
                     [{var,?L,CurrContext},Vars]})],
   Call2 = [a_match(NextTupleVar,?L,
                    {call,?L,{atom,?L,ThisFun},
                     [{var,?L,CurrContext},{var,?L,TupleVar}]})],
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
   Vars = case get_variable_tuple(Ctx) of
             {nil,_} -> {atom,?L,new};
             O -> O
          end,
   NextTupleVar = if TupleVar =:= [];
                     Inline =:= false ->
                        next_var_tuple_name();
                     true ->
                        TupleVar
                  end,
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name(F),
   NextFun = glob_fun_name(N),
   {NewCtx,FunAbs} = if Curr =:= 'let' ->
                           let_part(Ctx, F, NextFun);
                        true ->
                           for_loop(Ctx, F, NextFun)
                     end,
   Call1 = [a_match(NextTupleVar,?L,{call,?L,{atom,?L,ThisFun},
                                     [{var,?L,CurrContext},Vars]})],
   Call2 = [a_match(NextTupleVar,?L,{call,?L,{atom,?L,ThisFun},
                                     [{var,?L,CurrContext},
                                      {var,?L,TupleVar}]})],
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
                        next_var_tuple_name();
                     true ->
                        TupleVar
                  end,
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name(F),
   {NewCtx,FunAbs} = if Curr =:= 'let' ->
                           let_part(Ctx, F, []);
                        true ->
                           for_loop(Ctx, F, [])
                     end,
   Call1 = [a_match(NextTupleVar, ?L, {call,?L,{atom,?L,ThisFun},
                                       [{var,?L,CurrContext},Vars]})],
   Call2 = [a_match(NextTupleVar, ?L, {call,?L,{atom,?L,ThisFun},
                                       [{var,?L,CurrContext},
                                        {var,?L,TupleVar}]})],
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
                        next_var_tuple_name();
                     true ->
                        TupleVar
                  end,
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name({window,Id}),
   {NewCtx,FunAbs} = window_loop(Ctx, F, []),
   
   Call1 = [a_match(NextTupleVar,?L,{call,?L,{atom,?L,ThisFun},
                                     [{var,?L,CurrContext},Vars]})],
   Call2 = [a_match(NextTupleVar,?L,{call,?L,{atom,?L,ThisFun},
                                     [{var,?L,CurrContext},
                                      {var,?L,TupleVar}]})],
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
flwor(Ctx, [{where,{Id,_}} = W|T], RetId, Return, Internal, 
      Global,TupleVar,_Inline) ->
   NextTupleVar = next_var_tuple_name(),
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name({where,Id}),
   {NewCtx,FunAbs} = where_part(Ctx, W, []),
   Call2 = [a_match(NextTupleVar,?L,{call,?L,{atom,?L,ThisFun},
                                     [{var,?L,CurrContext},
                                      {var,?L,TupleVar}]})],
   NewInternal = Internal ++ Call2,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, 
         FunAbs ++ Global,NextTupleVar,false);

% count
flwor(Ctx, [{count,_} = C|T], RetId, Return, Internal, 
      Global,TupleVar,_Inline) ->
   NextTupleVar = next_var_tuple_name(),
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name(C),
   {NewCtx,FunAbs} = count_part(Ctx, C, []),
   Call2 = [a_match(NextTupleVar,?L,{call,?L,{atom,?L,ThisFun},
                                     [{var,?L,CurrContext},
                                      {var,?L,TupleVar}]})],
   NewInternal = Internal ++ Call2,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, 
         FunAbs ++ Global,NextTupleVar,false);

% group
flwor(Ctx, [{group_by,Id,_} = F|T], RetId, Return, Internal, 
      Global,TupleVar,_Inline) ->
   NextTupleVar = next_var_tuple_name(),
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name({group_by,Id}),
   {NewCtx,FunAbs} = group_part(Ctx, F),
   Call2 = [a_match(NextTupleVar,?L,{call,?L,{atom,?L,ThisFun},
                                     [{var,?L,CurrContext},
                                      {var,?L,TupleVar}]})],
   NewInternal = Internal ++ Call2,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, 
         FunAbs ++ Global,NextTupleVar,false);

% order
flwor(Ctx, [{order_by,Exprs}|T], RetId, Return, Internal, 
      Global,TupleVar,_Inline) ->
   NextTupleVar = next_var_tuple_name(),
   VarTup = get_variable_tuple(Ctx),
   OFun = fun({order,Expr,{modifier,{_,Dir},{_,Empty},{_,_Collation}}},Acc) ->
                B = a_remote_call({?seq,singleton_value,?L},
                                  [expr_do(Ctx, Expr)]),
                {cons,?L,
                 {tuple,?L, 
                  [{'fun',?L,{clauses,[{clause,?L,[VarTup],[],[B]}]}},
                   {atom,?L,Dir},
                   {atom,?L,Empty}]}
                , Acc}
          end,
   Funs = lists:foldr(OFun, {nil,?L}, alist(Exprs)),
   Flat = a_remote_call({?seq,flatten,?L}, [{var,?L,TupleVar}]),
   Clause = a_remote_call({xqerl_flwor,orderbyclause,?L},[Flat,Funs]),
   Match = a_match(NextTupleVar, ?L, Clause),
   NewInternal = Internal ++ [Match],
   NewCtx = set_variable_tuple_name(Ctx, NextTupleVar),
   flwor(NewCtx, T, RetId, Return, NewInternal, Global, NextTupleVar, false).

return_part(Ctx,{Id, Expr}) ->
   FunctionName = glob_fun_name({return,Id}),
   OldVariableTupleMatch = get_variable_tuple(Ctx),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   %InLine = attribute(compile, {inline,{FunctionName,2}}),
   IsList = a_remote_call({erlang,is_list,?L}, [{var,?L,'List'}]),
   RetFun = {function, ?L, FunctionName, 2,
              [{clause,?L, [{var,?L, '_'},{nil,?L}],[],[{nil,?L}]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'List'}], [[IsList]],
                [{lc,?L,
                  {call,?L,{atom,?L,FunctionName},
                   [{var,?L,'Ctx'},{var,?L, 'T'}]},
                  [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]}
                ]},
               {clause,?L, [{var,?L, 'Ctx'},OldVariableTupleMatch],[],
                [expr_do(LocCtx,Expr)]
               }]},
   %{Ctx,[InLine, RetFun]}.
   {Ctx,[RetFun]}.

where_part(Ctx,{'where',{Id, Expr}},_NextFunAtom) ->
   FunctionName = glob_fun_name({where, Id}),
   OldVariableTupleMatch = get_variable_tuple(Ctx),
   %InLine = attribute(compile, {inline,{FunctionName,2}}),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   IsList = a_remote_call({erlang,is_list,?L}, [{var,?L,'Stream'}]),
   Bool = a_remote_call({xqerl_operators,eff_bool_val,?L}, 
                        [expr_do(LocCtx,Expr)]),
   WhereFun = 
     {function, ?L, FunctionName, 2,
      [{clause,?L, [{var,?L, '_'},{nil,?L}],[],[{nil,?L}]},
       {clause,?L, [{var,?L, 'Ctx'},{var,?L,'Stream'}],
        [[{op,?L,'not',IsList}]],
        [{call,?L,{atom,?L,FunctionName},
          [{var,?L,'Ctx'},{cons,?L,{var,?L,'Stream'},{nil,?L}}]}]},
       {clause,?L, [{var,?L, 'Ctx'},
                    {cons,?L,OldVariableTupleMatch,{var,?L,'T'}}],[],
        [a_match('True', ?L, Bool),
         {'if',?L,
          [{clause,?L,[],[[{op,?L,'==',{var,?L,'True'},{atom,?L,true}}]],
            [{cons,?L,
              OldVariableTupleMatch,
              {call,?L,{atom,?L,FunctionName},
               [{var,?L,'Ctx'},{var,?L, 'T'}]}
             }]},
           {clause,?L,[],[[{atom,?L,true}]],
            [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'}]}
            ]}]}]}]},
   %{Ctx,[InLine,WhereFun]}.
   {Ctx,[WhereFun]}.

count_part(Ctx,{'count',#xqVar{id = Id,
                               name = Name}} = Part,NextFunAtom) ->
   VarName = local_variable_name(Id),
   NewVar  = {Name,#xqSeqType{type = 'xs:integer', occur = 'one'},[],VarName},
   FunctionName = glob_fun_name(Part),
   NewCtx  = add_grouping_variable(NewVar, Ctx),
   OldVariableTupleMatch = get_variable_tuple(Ctx),
   NewVariableTupleMatch = get_variable_tuple(NewCtx),
   CntFun1 = 
     {function, ?L, FunctionName, 2,
      [{clause,?L, [{var,?L, 'Ctx'},{var,?L, 'Stream'}],[],
        [{call,?L,{atom,?L,FunctionName},
          [{var,?L,'Ctx'},{integer,?L,1}, {var,?L, 'Stream'}]}]
       }]},
   CntFun2 = 
     {function, ?L, FunctionName, 3,
      [{clause,?L, [{var,?L, '_'},{var,?L, '_'},{nil,?L}],[],[{nil,?L}]},
       {clause,?L, [{var,?L, 'Ctx'},
                    {var,?L,'Pos'},
                    {cons,?L,OldVariableTupleMatch,{var,?L,'T'}}],[],
        [a_match(VarName, ?L, {tuple,?L,
                               [atom_or_string(xqAtomicValue),
                                atom_or_string('xs:integer'),
                                {var,?L,'Pos'}]}),
         {cons,?L,
          if NextFunAtom == [] ->
                NewVariableTupleMatch;
             true ->
                {call,?L,{atom,?L,NextFunAtom},
                 [{var,?L,'Ctx'},NewVariableTupleMatch]}
          end,
          {call,?L,{atom,?L,FunctionName},
           [{var,?L,'Ctx'},
            {op,?L,'+',{var,?L,'Pos'},{integer,?L,1}},{var,?L,'T'}]}
         }]}]},
   {NewCtx,[CntFun1,CntFun2]}.

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
                    {
                     Acc#{Str =>
                            {a_remote_call(
                             {xqerl_coll,parse,?L},
                             [{string,?L,Str}]),
                          I}}, I + 1}
              end,
   {CollsMap,_} = lists:foldl(CollsFun, {#{},1}, UColls),
   CollMFun = fun(_K,{V,Id1},L) ->
                    [a_match(list_to_atom("C"++integer_to_list(Id1)), ?L, V)|L]
              end,
   CollMatch = maps:fold(CollMFun, [], CollsMap),
   CollNFun = fun(_K,{_V,Id1},L) ->
                    [{var,?L,list_to_atom("C"++integer_to_list(Id1))}|L]
              end,
   CollNT = {tuple,?L,maps:fold(CollNFun, [], CollsMap)},
   
   KeyTuples   = [begin
                     {_,Id2} = maps:get(Coll, CollsMap),
                     VName = list_to_atom("C"++integer_to_list(Id2)),
                     {tuple,?L,[{var,?L,Name},{var,?L,VName}]}
                  end || 
                  #xqGroupBy{grp_variable = {variable, Name}, 
                             collation = Coll} <- alist(Clauses)],
   KeyNamesTup = [{var,?L,Name} || 
                  #xqGroupBy{grp_variable = 
                               {variable, Name}} <- alist(Clauses)],

   KeyTuple    = if KeyTuples == [] ->
                       {nil,?L};
                    true ->
                       {tuple,?L,KeyTuples}
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
   
   IsList = a_remote_call({erlang,is_list,?L}, [{var,?L,'List'}]),
   
   LC1 = {lc,?L,
          {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'},CollNT]},
          [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]},
   LC2 = {lc,?L,OuterTups,[{generate,?L,OutgoingVarTup,{var,?L, 'List'}}]},
   Flatten = a_remote_call({lists,flatten,?L}, [LC1]),
   Hd = a_remote_call({erlang,hd,?L}, [LC2]),
   Rest = if OuterVars =:= [] -> {nil,?L};
             true -> Hd
          end,
   Grouped = a_remote_call({xqerl_flwor,groupbyclause,?L},[{var,?L,'Split'}]),
   GrpFun1 = 
     {function, ?L, FunctionName, 2,
      [{clause,?L, [{var,?L,'_'},{nil,?L}],[],[{nil,?L}]},
       {clause,?L, [{var,?L,'Ctx'},{var,?L,'List'}],[[IsList]],
        CollMatch ++ 
        [a_match('Split', ?L, Flatten),
         a_match('Rest', ?L, Rest),
         {call,?L,{atom,?L,FunctionName},
          [{var,?L,'Ctx'},{var,?L, 'Split'},{var,?L,'Rest'}]}
        ]}
       ]},
   GrpFun2 = 
     {function, ?L, FunctionName, 3,
      [{clause,?L, [{var,?L, 'Ctx'}, OutgoingVarTup, CollNT],[],
        [ToGroupTuple]},
       {clause,?L, [{var,?L, 'Ctx'},{var,?L,'Split'},OuterTups],[],
        [a_match('Grouped',?L,Grouped),
         {lc,?L,OutgoingVarTup,[{generate,?L,OutputTuple,{var,?L,'Grouped'}}]}
        ]}]},
   {Ctx,[GrpFun1,GrpFun2]}.
%CollNT
let_part(Ctx,{'let',#xqVar{id = Id,
                           name = Name,
                           type = Type,
                           expr = Expr}} = Part,NextFunAtom) ->
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

   IsList = a_remote_call({erlang,is_list,?L}, [{var,?L,'List'}]),
   LC = {lc,?L,
         {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'}]},
         [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]},
   Flat = a_remote_call({lists,flatten,?L}, [LC]),
   LetFun = 
     {function, ?L, FunctionName, 2,
      [{clause,?L, [{var,?L, 'Ctx'},{var,?L,'List'}],[[IsList]],[Flat]},
       {clause,?L, [{var,?L, 'Ctx'},OldVariableTupleMatch],[],
        [a_match(VarName, ?L, expr_do(LocCtx,Expr)),
         if NextFunAtom == [] ->
               NewVariableTupleMatch;
            true ->
               {call,?L,{atom,?L,NextFunAtom},
                [{var,?L,'Ctx'},NewVariableTupleMatch]}
         end]}]},
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
                        {{[],[],[],'_'},Ctx}
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
   StartFunAbs = {'fun',?L,{clauses,[{clause,?L,[StartTup],[],
                                      alist(expr_do(Ctx6, StartExpr))}]}},

   WinCall= if EndExpr =:= undefined ->
                  a_remote_call({xqerl_flwor,windowclause,?L}, 
                                [{var,?L,'List'}, StartFunAbs]);
               true ->
                  EndFunAbs = {'fun',?L,
                               {clauses,[{clause,?L,[EndTup],[],
                                          alist(expr_do(Ctx16, EndExpr))}]}},
                  a_remote_call({xqerl_flwor,windowclause,?L},
                                [{var,?L,'List'}, 
                                 StartFunAbs, 
                                 EndFunAbs, 
                                 {tuple,?L,[{atom,?L,Type},{atom,?L,Only}]}])
            end,

   FunctionName = glob_fun_name({window,WId}),
   OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                              {nil,_} ->
                                 {var,?L, '_'};
                              O ->
                                 O
                           end,
   NewVariableTupleMatch = get_variable_tuple(Ctx20),

   TempStreamVar = next_var_name(),
   
   IsFirst = case get_variable_tuple(Ctx) of
                {nil,_} -> true;
                _ -> false
             end,
   ListEx = a_match('List', ?L, expr_do(Ctx, Expr)),
   IsList1 = a_remote_call({erlang,is_list,?L}, [{var,?L,'List'}]),
   IsList2 = a_remote_call({erlang,is_list,?L}, [{var,?L,'NoList'}]),
   
   WinFun1 = 
     {function, ?L, FunctionName, 2,
      if IsFirst ->
            [{clause,?L, [{var,?L, 'Ctx'},{atom,?L,new}],[],
              [ListEx,
               a_match(TempStreamVar, ?L, WinCall),
               {call,?L,{atom,?L,FunctionName},
                [{var,?L,'Ctx'},{var,?L,TempStreamVar},{nil,?L}]}
              ]}];
         true ->
            []
      end ++
      [{clause,?L, [{var,?L, '_'},{nil,?L}],[],[{nil,?L}]},
       {clause,?L, [{var,?L, 'Ctx'},{var,?L,'List'}],[[IsList1]],
        [a_remote_call({lists,flatten,?L}, 
                       [{lc,?L,
                         {call,?L,{atom,?L,FunctionName},
                          [{var,?L,'Ctx'},{var,?L, 'T'}]},
                         [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]}])
        ]},
       {clause,?L, [{var,?L, 'Ctx'}, 
                    a_match(OldVariableTupleMatch, ?L, {var,?L,'Stream'})],[],
        [ListEx,
         a_match(TempStreamVar, ?L, WinCall),
         {call,?L,{atom,?L,FunctionName},
          [{var,?L,'Ctx'},{var,?L,TempStreamVar},{var,?L, 'Stream'}]}
        ]}]},
   %{promote_to,Expr1,Expr2}
   WinFun2 = 
     {function, ?L, FunctionName, 3,
      [{clause,?L, [{var,?L, '_'},{nil,?L},{var,?L, '_'}],[],[{nil,?L}]},
       {clause,?L, [{var,?L, 'Ctx'},{var,?L,'NoList'},{var,?L,'Stream'}],
        [[{op,?L,'not',IsList2}]],
        [{call,?L,{atom,?L,FunctionName},
          [{var,?L,'Ctx'},
           {cons,?L,{var,?L,'NoList'},{nil,?L}},
           {var,?L, 'Stream'}]}]},
       {clause,?L, [{var,?L, 'Ctx'},
                    {cons,?L,OutTup,{var,?L,'T'}},OldVariableTupleMatch],[],
        [{cons,?L,
          if NextFunAtom == [] ->
                NewVariableTupleMatch;
             true ->
                {call,?L,{atom,?L,NextFunAtom},
                 [{var,?L,'Ctx'},NewVariableTupleMatch]}
          end,
          {call,?L,{atom,?L,FunctionName},
           [{var,?L,'Ctx'},{var,?L, 'T'},get_variable_tuple(Ctx)]}
         }]}
      ]},
   OutCtx = set_context_variable_name(Ctx20, OldCtxname),
   {OutCtx,[WinFun1,WinFun2]}.

for_loop(Ctx,{'for',#xqVar{id = Id,
                           name = Name, 
                           type = Type, 
                           empty = Empty,
                           expr = Expr, 
                           position = undefined}} = Part, NextFunAtom) ->
   IsFirst = case get_variable_tuple(Ctx) of
                {nil,_} -> true;
                _ -> false
             end,
   VarName = local_variable_name(Id),
   NewVar    = {Name,Type,[],VarName},
   NoEmptyType = (Type#xqSeqType.occur == one orelse 
                  Type#xqSeqType.occur == one_or_many), 
   NewCtx  = add_grouping_variable(NewVar, Ctx),
   FunctionName = glob_fun_name(Part),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   ListAbs = a_match('List', ?L, expr_do(LocCtx, Expr)),
   OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                              {nil,_} -> {var,?L, '_'};
                              O -> O
                           end,
   NewVariableTupleMatch = get_variable_tuple(NewCtx),

   Flatten = fun(S) -> a_remote_call({lists,flatten,?L}, S) end,                   
   IsList = fun(S) -> a_remote_call({erlang,is_list,?L}, S) end,
   ForFun1 = 
     {function, ?L, FunctionName, 2,
      if IsFirst ->
            [{clause,?L, [{var,?L, 'Ctx'},{atom,?L,new}],[],
              [ListAbs,
               {'if',?L,
                [{clause,?L,[],[[{op,?L,'=:=',{var,?L,'List'},{nil,?L}}]],
                  [Flatten([{call,?L,{atom,?L,FunctionName},
                             [{var,?L,'Ctx'},{atom,?L,empty},{nil,?L}]}])]},
                 {clause,?L,[],[[{atom,?L,true}]],
                  [Flatten([{call,?L,{atom,?L,FunctionName},
                             [{var,?L,'Ctx'},{var,?L, 'List'},{nil,?L}]}])]}
                ]}
              ]}];
         true ->
            []
      end ++
      [{clause,?L, [{var,?L, '_'},{nil,?L}],[],[{nil,?L}]},
       {clause,?L, 
        [{var,?L, 'Ctx'},{var,?L,'List'}],
        [[IsList([{var,?L,'List'}])]],
        [Flatten(
           [{lc,?L,{call,?L,{atom,?L,FunctionName},
                    [{var,?L,'Ctx'},{var,?L, 'T'}]},
             [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]}])]},
       {clause,?L,
        [{var,?L, 'Ctx'},
         a_match(OldVariableTupleMatch, ?L, {var,?L, 'Stream'})],[],
        [ListAbs,
         {'if',?L,
          [{clause,?L,[],[[{op,?L,'=:=',{var,?L,'List'},{nil,?L}}]],
            [Flatten([{call,?L,{atom,?L,FunctionName},
                       [{var,?L,'Ctx'},{atom,?L,empty},{var,?L, 'Stream'}]}])
            ]},
           {clause,?L,[],[[{atom,?L,true}]],
            [Flatten([{call,?L,{atom,?L,FunctionName},
                       [{var,?L,'Ctx'},{var,?L, 'List'},{var,?L, 'Stream'}]}])]}
          ]}
        ]}
      ]},
   % standard   
   ForFun2 = 
     {function, ?L, FunctionName, 3,
      [{clause,?L, [{var,?L, '_'},{atom,?L,empty},{var,?L, '_'}],[],[{nil,?L}]},
       {clause,?L, [{var,?L, '_'},{nil,?L},{var,?L, '_'}],[],[{nil,?L}]},
       {clause,?L, [{var,?L, 'Ctx'},{var,?L,'NoList'},{var,?L, 'Stream'}],
        [[{op,?L,'not', IsList([{var,?L,'NoList'}])}]],
        [{call,?L,{atom,?L,FunctionName},
          [{var,?L,'Ctx'},
           {cons,?L,{var,?L,'NoList'},{nil,?L}},
           {var,?L,'Stream'}]}]},
       {clause,?L, [{var,?L, 'Ctx'},
                    {cons,?L,{var,?L,VarName},{var,?L,'T'}},
                    OldVariableTupleMatch],[],
        [{cons,?L,
          if NextFunAtom == [] ->
                NewVariableTupleMatch;
             true ->
                {call,?L,{atom,?L,NextFunAtom},
                 [{var,?L,'Ctx'},NewVariableTupleMatch]}
          end,
          {call,?L,{atom,?L,FunctionName},
           [{var,?L,'Ctx'},{var,?L, 'T'},get_variable_tuple(Ctx)]}}
        ]}
      ]},
   % allow empty
   ForFun4 = 
     {function, ?L, FunctionName, 3,
      [{clause,?L, [{var,?L, 'Ctx'},{atom,?L,empty},OldVariableTupleMatch],[],
        if NoEmptyType ->
              [a_remote_call({xqerl_error,error,?L},[{atom,?L,'XPTY0004'}])];
           true ->
              [a_match(VarName,?L,{nil,?L}),
               {cons,?L,
                if NextFunAtom == [] ->
                      NewVariableTupleMatch;
                   true ->
                      {call,?L,{atom,?L,NextFunAtom},
                       [{var,?L,'Ctx'},NewVariableTupleMatch]}
                end,
                {nil,?L}}]
        end},
       {clause,?L, [{var,?L, '_'},{nil,?L},{var,?L, '_'}],[],[{nil,?L}]},
       {clause,?L, 
        [{var,?L, 'Ctx'},{var,?L,'NoList'},{var,?L, 'Stream'}],
        [[{op,?L,'not',IsList([{var,?L,'NoList'}])}]],
        [{call,?L,{atom,?L,FunctionName},
          [{var,?L,'Ctx'},
           {cons,?L,{var,?L,'NoList'},{nil,?L}},
           {var,?L, 'Stream'}]}]},
       {clause,?L, [{var,?L, 'Ctx'},
                    {cons,?L,{var,?L,VarName},{var,?L,'T'}},
                    OldVariableTupleMatch],[],
        [{cons,?L,
          if NextFunAtom == [] ->
                NewVariableTupleMatch;
             true ->
                {call,?L,{atom,?L,NextFunAtom},
                 [{var,?L,'Ctx'},NewVariableTupleMatch]}
          end,
          {call,?L,{atom,?L,FunctionName},
           [{var,?L,'Ctx'},{var,?L, 'T'},get_variable_tuple(Ctx)]}}]}
      ]},
   if Empty ->
         {NewCtx,[ForFun1,ForFun4]};
      true ->
         {NewCtx,[ForFun1,ForFun2]}
   end;

for_loop(Ctx,{'for',#xqVar{id = Id,
                           name = Name, 
                           type = Type, 
                           empty = Empty,
                           expr = Expr, 
                           position = #xqPosVar{id = PId, 
                                                name = PName}}} = Part, 
         NextFunAtom) ->
   IsFirst = case get_variable_tuple(Ctx) of
                {nil,_} -> true;
                _ -> false
             end,
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
   ListAbs = a_match('List', ?L, expr_do(LocCtx, Expr)),
   OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                              {nil,_} -> {var,?L, '_'};
                              O -> O
                           end,
   NewVariableTupleMatch = get_variable_tuple(NewCtx),

   Flatten = fun(S) -> a_remote_call({lists,flatten,?L}, S) end,                   
   IsList = fun(S) -> a_remote_call({erlang,is_list,?L}, S) end,
   
   ForFun1 = 
     {function, ?L, FunctionName, 2,
      if IsFirst ->
            [{clause,?L, [{var,?L, 'Ctx'},{atom,?L,new}],[],
              [ListAbs,
               {'if',?L,
                [{clause,?L,[],[[{op,?L,'=:=',{var,?L,'List'},{nil,?L}}]],
                  [Flatten([{call,?L,{atom,?L,FunctionName},
                             [{var,?L,'Ctx'},
                              {integer,?L,0},{atom,?L,empty},{nil,?L}]}])]},
                 {clause,?L,[],[[{atom,?L,true}]],
                  [Flatten([{call,?L,{atom,?L,FunctionName},
                             [{var,?L,'Ctx'},
                              {integer,?L,0},{var,?L, 'List'},{nil,?L}]}])]}
                ]}
              ]}];
         true ->
            []
      end ++
      [{clause,?L, [{var,?L, '_'},{nil,?L}],[],[{nil,?L}]},
       {clause,?L, 
        [{var,?L, 'Ctx'},{var,?L,'List'}],
        [[IsList([{var,?L,'List'}])]],
        [Flatten([{lc,?L,{call,?L,{atom,?L,FunctionName},
                          [{var,?L,'Ctx'},{var,?L, 'T'}]},
                   [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]}])]},
       {clause,?L, [{var,?L, 'Ctx'},
                    a_match(OldVariableTupleMatch,?L,{var,?L, 'Stream'})],[],
        [ListAbs,
         {'if',?L,
          [{clause,?L,[],[[{op,?L,'=:=',{var,?L,'List'},{nil,?L}}]],
            [Flatten([{call,?L,{atom,?L,FunctionName},
                       [{var,?L,'Ctx'},
                        {integer,?L,0},
                        {atom,?L,empty},
                        {var,?L, 'Stream'}]}])]},
           {clause,?L,[],[[{atom,?L,true}]],
            [Flatten([{call,?L,{atom,?L,FunctionName},
                       [{var,?L,'Ctx'},
                        {integer,?L,0},
                        {var,?L, 'List'},
                        {var,?L, 'Stream'}]}])]}]}]}
      ]},
   % position variable
   ForFun3 = 
     {function, ?L, FunctionName, 4,
      [{clause,?L, [{var,?L, '_'},{var,?L, '_'},{atom,?L,empty},{var,?L, '_'}],
        [],[{nil,?L}]},
       {clause,?L, [{var,?L, '_'},{var,?L, '_'},{nil,?L},{var,?L, '_'}],
        [],[{nil,?L}]},
       {clause,?L, [{var,?L, 'Ctx'},
                    {var,?L,'Pos'},
                    {var,?L,'NoList'},
                    {var,?L, 'Stream'}],
        [[{op,?L,'not',IsList([{var,?L,'NoList'}])}]],
         [{call,?L,{atom,?L,FunctionName},
           [{var,?L,'Ctx'},
            {var,?L,'Pos'},
            {cons,?L,{var,?L,'NoList'},{nil,?L}},
            {var,?L, 'Stream'}]}]},
        {clause,?L, [{var,?L, 'Ctx'},
                     {var,?L,'Pos'},
                     {cons,?L,{var,?L,VarName},{var,?L,'T'}},
                     OldVariableTupleMatch],[],
         [a_match('NewPos',?L,{op,?L,'+',{var,?L,'Pos'},{integer,?L,1}}),
          a_match(PosVarName,?L,{tuple,?L,
                                 [atom_or_string(xqAtomicValue),
                                  atom_or_string('xs:integer'),
                                  {var,?L,'NewPos'}]}),
          {cons,?L,
           if NextFunAtom == [] ->
                 NewVariableTupleMatch;
              true ->
                 {call,?L,{atom,?L,NextFunAtom},
                  [{var,?L,'Ctx'},NewVariableTupleMatch]}
           end,
           {call,?L,{atom,?L,FunctionName},
            [{var,?L,'Ctx'},
             {var,?L,'NewPos'},
             {var,?L, 'T'},
             get_variable_tuple(Ctx)]}}]}
       ]},
   % allow empty with position variable
   ForFun5 = 
     {function, ?L, FunctionName, 4,
      [{clause,?L, [{var,?L, 'Ctx'},
                    {var,?L, '_'},
                    {atom,?L,empty},
                    OldVariableTupleMatch],[],
        if NoEmptyType ->
              [a_remote_call({xqerl_error,error,?L},[{atom,?L,'XPTY0004'}])];
           true ->
              [a_match(VarName,?L,{nil,?L}),
               a_match(PosVarName,?L,{tuple,?L,
                                      [atom_or_string(xqAtomicValue),
                                       atom_or_string('xs:integer'),
                                       {integer,?L,0} ]}),
               {cons,?L,
                if NextFunAtom == [] ->
                      NewVariableTupleMatch;
                   true ->
                      {call,?L,{atom,?L,NextFunAtom},
                       [{var,?L,'Ctx'},NewVariableTupleMatch]}
                end,
                {nil,?L}}
              ]
        end},
       {clause,?L, [{var,?L,'_'},{var,?L,'_'},{nil,?L},{var,?L, '_'}],[],
        [{nil,?L}]},
       {clause,?L, [{var,?L, 'Ctx'},
                    {var,?L,'Pos'},
                    {var,?L,'NoList'},
                    {var,?L,'Stream'}],
        [[{op,?L,'not',IsList([{var,?L,'NoList'}])}]],
        [{call,?L,{atom,?L,FunctionName},
          [{var,?L,'Ctx'},
           {var,?L,'Pos'},
           {cons,?L,{var,?L,'NoList'},{nil,?L}},
           {var,?L, 'Stream'}]}]},
       {clause,?L, [{var,?L, 'Ctx'},
                    {var,?L,'Pos'},
                    {cons,?L,{var,?L,VarName},{var,?L,'T'}},
                    OldVariableTupleMatch],[],
        [a_match('NewPos',?L,{op,?L,'+',{var,?L,'Pos'},{integer,?L,1}}),
         a_match(PosVarName,?L,{tuple,?L,
                                [atom_or_string(xqAtomicValue),
                                 atom_or_string('xs:integer'),
                                 {var,?L,'NewPos'}]}),
         {cons,?L,
          if NextFunAtom == [] ->
                NewVariableTupleMatch;
             true ->
                {call,?L,{atom,?L,NextFunAtom},
                 [{var,?L,'Ctx'},NewVariableTupleMatch]}
          end,
          {call,?L,{atom,?L,FunctionName},
           [{var,?L,'Ctx'},
            {var,?L,'NewPos'},
            {var,?L, 'T'},
            get_variable_tuple(Ctx)]}}]}
      ]},
   if Empty ->
         {NewCtx,[ForFun1,ForFun5]};
      true ->
         {NewCtx,[ForFun1,ForFun3]}
   end.

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

step_expr_do(Ctx, #xqVarRef{name = Name}, Source) -> 
   % variables aren't step, but can be dupes
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   {VarAbs,_} = get_variable_ref(Name, Ctx),
   a_remote_call({?seq,node_map,?L},
                 [{var,?L,CtxVar},
                  {'fun',?L,
                   {clauses,
                    [{clause,?L,[{var,?L,NextCtxVar}],[],alist(VarAbs)}]}},
                  if is_atom(Source) ->
                        {var,?L,Source};
                     true ->
                        Source
                  end]);
step_expr_do(Ctx, {variable, {Name,1}}, Source) ->
   % variables aren't step, but can be dupes
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   {VarAbs,_} = get_variable_ref(Name, Ctx),
   a_remote_call({?seq,node_map,?L},
                 [{var,?L,CtxVar},
                  {'fun',?L,
                   {clauses,
                    [{clause,?L,[{var,?L,NextCtxVar}],[],alist(VarAbs)}]}},
                  if is_atom(Source) ->
                        {var,?L,Source};
                     true ->
                        Source
                  end]);

% bang operator
step_expr_do(Ctx, {'simple-map',SeqExpr,
                   {'simple-map',_,_} = MapExpr}, Source) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   FunAbs = {'fun',?L,
             {clauses,
              [{clause,?L,[{var,?L,NextCtxVar}],[],
                alist(expr_do(Ctx1, SeqExpr))}]}},
   NewSource = a_remote_call({xqerl_flwor,simple_map,?L},
                             [{var,?L,CtxVar},Source,FunAbs]),
   step_expr_do(Ctx, MapExpr, NewSource);
% bang operator at end
step_expr_do(Ctx, {'simple-map',SeqExpr,MapExpr}, Source) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   NextNextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   Ctx2 = set_context_variable_name(Ctx, NextNextCtxVar),
   FunAbs  = {'fun',?L,
              {clauses,
               [{clause,?L,[{var,?L,NextCtxVar}],[],
                 alist(expr_do(Ctx1, SeqExpr))}]}},
   FunAbs2 = {'fun',?L,
              {clauses,
               [{clause,?L,[{var,?L,NextNextCtxVar}],[],
                 alist(expr_do(Ctx2, MapExpr))}]}},
   Sim1 = a_remote_call({xqerl_flwor,simple_map,?L}, 
                        [{var,?L,CtxVar},Source,FunAbs]),
   a_remote_call({xqerl_flwor,simple_map,?L},[{var,?L,CtxVar},Sim1,FunAbs2]);

step_expr_do(Ctx, {root, Step}, _Source) ->
   NextCtxVar = next_var_name(),
   CurrCtxVar = get_context_variable_name(Ctx),
   Stp2 = alist(step_expr_do(Ctx, Step, {var,?L,NextCtxVar})),
   Ci = a_remote_call({xqerl_context,get_context_item,?L}, 
                      [{var,?L,CurrCtxVar}]),
   Rt = a_remote_call({xqerl_step,root,?L}, [{var,?L,CurrCtxVar},Ci]), 
   Vr = a_match(NextCtxVar, ?L, Rt),
   Lt = [Vr|Stp2],
   a_block(?L, Lt);
step_expr_do(Ctx, {'any-root', Step}, Source) ->
   NextCtxVar = next_var_name(),
   CurrCtxVar = get_context_variable_name(Ctx),
   Stp2 = alist(step_expr_do(Ctx, Step, {var,?L,NextCtxVar})),
   Ci = a_remote_call({xqerl_context,get_context_item,?L}, 
                      [{var,?L,Source}]),
   Rt = a_remote_call({xqerl_step,any_root,?L}, [{var,?L,CurrCtxVar},Ci]), 
   Vr = a_match(NextCtxVar, ?L, Rt),
   Lt = [Vr|Stp2],
   a_block(?L, Lt);

step_expr_do(Ctx, {root}, Source) ->
   CurrCtxVar = get_context_variable_name(Ctx),
   Ci = a_remote_call({xqerl_context,get_context_item,?L}, 
                      [{var,?L,Source}]),
   a_remote_call({xqerl_step,root,?L}, [{var,?L,CurrCtxVar},Ci]);

step_expr_do(Ctx, #xqAxisStep{direction = Direction, 
                              axis = Axis, 
                              node_test = #xqNameTest{name = Q}, 
                              predicates = Preds}, SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   PfF = fun({_, #xqAtomicValue{type = Type} = P}, Abs) 
               when ?integer(Type) ->
               {cons,?L,abs_simp_atomic_value(P), Abs};
            ({positional_predicate, {variable,Name}}, Abs) ->
               {cons,?L,{var,?L,Name}, Abs};
            ({_, P}, Abs) ->
               {cons,?L,
                {'fun',?L,
                 {clauses,
                  [{clause,?L,[{var,?L,NextCtxVar}],[], 
                    alist(expr_do(Ctx1, P))}]}}, Abs}
         end,
   PredFuns = lists:foldr(PfF, {nil,?L}, Preds),     
   QName = if Axis == attribute andalso Q#qname.prefix == [] -> 
                 % no namespace when prefix empty
                 abs_ns_qname(Ctx,Q#qname{namespace = 'no-namespace'});
              true ->
                 abs_qname(Ctx,Q)
           end,
   a_remote_call({xqerl_step,Direction,?L}, 
                 [{var,?L,CtxVar},
                  SourceVarName,
                  {atom,?L,Axis},
                  QName,
                  PredFuns]);

step_expr_do(Ctx, #xqAxisStep{direction = Direction, 
                              axis = Axis, 
                              node_test = #xqKindTest{kind = _Kind, 
                                                      name = KName} = Kt, 
                              predicates = Preds}, SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   KName1 = case KName of
               #qname{} -> KName;
               undefined -> KName;
               _ -> expr_do(Ctx, KName)
            end,   
   PfF = fun({_, #xqAtomicValue{type = Type} = P}, Abs) 
               when ?integer(Type) ->
               {cons,?L,abs_simp_atomic_value(P), Abs};
            ({positional_predicate, {variable,Name}}, Abs) ->
               {cons,?L,{var,?L,Name}, Abs};
            ({_, P}, Abs) ->
               {cons,?L,
                {'fun',?L,
                 {clauses,
                  [{clause,?L,[{var,?L,NextCtxVar}],[], 
                    alist(expr_do(Ctx1, P))}]}}, Abs}
         end,
   PredFuns = lists:foldr(PfF, {nil,?L}, Preds),     
   KtAbs = abs_kind_test(Ctx,Kt#xqKindTest{name = KName1}),
   a_remote_call({xqerl_step,Direction,?L},
                 [{var,?L,CtxVar},
                  SourceVarName,
                  {atom,?L,Axis},
                  KtAbs,
                  PredFuns]);

step_expr_do(Ctx, Preds, SourceVarName) when is_list(Preds) ->
   lists:foldl(fun(P,Abs) ->
                     handle_predicate({Ctx,P}, Abs)
               end,SourceVarName, Preds);

step_expr_do(Ctx, 'context-item', SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   Var2 = if is_atom(SourceVarName) ->
                {var,?L,SourceVarName};
             true ->
                SourceVarName
          end,
   a_remote_call({xqerl_step,forward,?L}, 
                 [{var,?L,CtxVar},Var2,{atom,?L,self},{nil,?L},{nil,?L}]);

step_expr_do(Ctx, {'union', Expr1, Expr2}, SourceVarName) ->
   a_remote_call({?seq,union,?L}, 
                 [step_expr_do(Ctx, Expr1,SourceVarName),
                  step_expr_do(Ctx, Expr2,SourceVarName)]);

step_expr_do(Ctx, {'function-call', _, _, _} = Other, SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   Var2 = if is_atom(SourceVarName) ->
                {var,?L,SourceVarName};
             true ->
                SourceVarName
          end,
   a_remote_call({?seq,node_map,?L}, 
                 [{var,?L,CtxVar},
                  {'fun',?L,
                   {clauses,
                    [{clause,?L,[{var,?L,NextCtxVar}],[],
                      alist(expr_do(Ctx1, Other))}]}},
                  Var2]);
step_expr_do(Ctx, {'function-ref', _, _} = Other, SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   Var2 = if is_atom(SourceVarName) ->
                {var,?L,SourceVarName};
             true ->
                SourceVarName
          end,
   a_remote_call({?seq,node_map,?L}, 
                 [{var,?L,CtxVar},
                  {'fun',?L,
                   {clauses,
                    [{clause,?L,[{var,?L,NextCtxVar}],[],
                      alist(expr_do(Ctx1, Other))}]}},
                  Var2]);
step_expr_do(Ctx, {postfix, 
                   {'function-ref',Q,V}, 
                   [{arguments,Args}]}, SourceVarName) ->
   PhF = fun('?') ->
               VarName = next_var_name(),
               [{var,?L,VarName}];
            (_) ->
               []
         end,
   PlaceHolders = lists:flatmap(PhF, Args),
   NaF = fun('?',PHs) ->
               {hd(PHs),tl(PHs)};
            (Arg,PHs) ->
               {Arg,PHs}
         end,
   {NewArgs, _Empty} = lists:mapfoldl(NaF, PlaceHolders, Args),
   ArF = fun({var,_,_} = Arg) ->
               Arg;
            (Arg) ->
               expr_do(Ctx, Arg)
         end,
   ArgAbs = lists:map(ArF, NewArgs),
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   NextVar = next_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   Var2 = if is_atom(SourceVarName) ->
                {var,?L,SourceVarName};
             true ->
                SourceVarName
          end,
   a_remote_call({?seq,node_map,?L}, 
                 [{var,?L,CtxVar},
                  {'fun',?L,
                   {clauses,
                    [{clause,?L,[{var,?L,NextCtxVar}],[],
                      [a_match(NextVar,?L,
                               a_remote_call({?seq,singleton_value,?L}, 
                                             [expr_do(Ctx1, 
                                                      {'function-ref',Q,V})])
                               ),
                          {call,?L,{var,?L,NextVar},
                           [{var,?L,NextCtxVar}|ArgAbs]}
                          ]
                         }]}},
                  Var2]);

step_expr_do(Ctx, {postfix, {'function-call',_,_,_} = Other, 
                   [{arguments,Args}]}, SourceVarName) ->
   PhF = fun('?') ->
               VarName = next_var_name(),
               [{var,?L,VarName}];
            (_) ->
               []
         end,
   PlaceHolders = lists:flatmap(PhF, Args),
   NaF = fun('?',PHs) ->
               {hd(PHs),tl(PHs)};
            (Arg,PHs) ->
               {Arg,PHs}
         end,
   {NewArgs, _Empty} = lists:mapfoldl(NaF, PlaceHolders, Args),
   ArF = fun({var,_,_} = Arg) ->
               Arg;
            (Arg) ->
               expr_do(Ctx, Arg)
         end,
   ArgAbs = lists:map(ArF, NewArgs),
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   NextVar = next_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   Var2 = if is_atom(SourceVarName) ->
                {var,?L,SourceVarName};
             true ->
                SourceVarName
          end,
   a_remote_call({?seq,node_map,?L}, 
                 [{var,?L,CtxVar},
                  {'fun',?L,
                   {clauses,
                    [{clause,?L,[{var,?L,NextCtxVar}],[],
                      [a_match(NextVar,?L,
                               a_remote_call({?seq,singleton_value,?L}, 
                                             [expr_do(Ctx1,Other)])
                               ),
                          {call,?L,{var,?L,NextVar},
                           [{var,?L,NextCtxVar}|ArgAbs]}
                          ]
                         }]}},
                  Var2]);

step_expr_do(Ctx, {'node-cons',Expr}, SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   Var2 = if is_atom(SourceVarName) ->
                {var,?L,SourceVarName};
             true ->
                SourceVarName
          end,
   Frag = a_remote_call({xqerl_node,new_fragment,?L}, 
                        [{var,?L,CtxVar}, expr_do(Ctx1, Expr)]),
   a_remote_call({?seq,node_map,?L}, 
                 [{var,?L,CtxVar},
                  {'fun',?L,
                   {clauses,
                    [{clause,?L,[{var,?L,NextCtxVar}],[],[Frag]}]}},
                  Var2]);

step_expr_do(Ctx, {expr,[Sing]}, SourceVarName) ->
   step_expr_do(Ctx, Sing, SourceVarName);
step_expr_do(Ctx, {expr,List}, SourceVarName) when is_list(List) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   Var2 = if is_atom(SourceVarName) ->
                {var,?L,SourceVarName};
             true ->
                SourceVarName
          end,
   a_remote_call({?seq,node_map,?L}, 
                 [{var,?L,CtxVar},
                  {'fun',?L,
                   {clauses,
                    [{clause,?L,[{var,?L,NextCtxVar}],[],
                      alist(expr_do(Ctx1, List))}]}},
                  Var2]);
step_expr_do(Ctx, {expr,E}, Source) ->
   step_expr_do(Ctx, E, Source);
step_expr_do(Ctx, 'empty-sequence', _Source) ->
   expr_do(Ctx, 'empty-sequence');
step_expr_do(Ctx, Other, SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   Var2 = if is_atom(SourceVarName) ->
                {var,?L,SourceVarName};
             true ->
                SourceVarName
          end,
   a_remote_call({?seq,node_map,?L}, 
                 [{var,?L,CtxVar},
                  {'fun',?L,
                   {clauses,
                    [{clause,?L,[{var,?L,NextCtxVar}],[],
                      alist(expr_do(Ctx1, Other))}]}},
                  Var2]).

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
               #qname{namespace = Ns1, prefix = "", local_name = Ln};
            _ ->
               Qn#qname{prefix = ""}
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
               #qname{namespace = Ns1, prefix = "", local_name = Ln};
            _ ->
               Qn#qname{prefix = ""}
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
         case tuple_size(Loc) of
            2 ->
               Get = a_remote_call({xqerl_lib,lget,?L}, 
                                   [{atom,?L,element(1, Loc)}]),
               {Get,Typ};
            3 ->
               Var = a_remote_call({element(1, Loc),element(2, Loc),?L}, 
                                   [{var,?L,get_context_variable_name(Map)}]),
               MFA = {tuple,?L,
                      [{atom,?L,element(1, Loc)},
                       {atom,?L,element(2, Loc)},
                       {integer,?L,element(3, Loc)}]},
               GetV = a_remote_call({xqerl_context,get_variable_value,?L}, 
                                    [MFA, Var]),
               {GetV,Typ}
         end
   end.

alist(L) when is_list(L) -> lists:flatten(L);
alist(L) -> [L].

abs_document_node(Ctx, #xqDocumentNode{expr = E, base_uri = BU}) ->
   BU1 = case maps:get('base-uri', Ctx) of
            undefined ->
               BU;
            B ->
               B
         end,   
   {tuple,?L,
    [
     atom_or_string(xqDocumentNode),
     atom_or_string(undefined),
     atom_or_string(undefined),
     expr_do([],BU1), % base_uri
     empty_seq(),
     atom_or_string(undefined),
     atom_or_string(undefined),
     atom_or_string(undefined),
     case is_list(E) of
        true ->
           if length(E) == 1 ->
                 expr_do(Ctx, E);
              true ->
                 lists:foldr(fun(X, Abs) ->
                            {cons,?L,expr_do(Ctx, X), Abs} 
                      end, {nil,?L}, E)
           end;
        _ ->
           if E == undefined -> empty_seq();
              true ->
                 expr_do(Ctx, E)
           end
     end]}.

abs_element_node(Ctx, #xqElementNode{name = N, 
                                     attributes = A1, 
                                     expr = E1, 
                                     type = Type, 
                                     base_uri = BU, 
                                     inscope_ns = IsNs}) ->
   {tuple,?L,
    [atom_or_string(xqElementNode),
     atom_or_string(undefined),
     atom_or_string(undefined),
     case N of
        #qname{} ->
           abs_qname(Ctx,N);
        _ ->
           expr_do(Ctx, N)
     end,
     atom_or_string(undefined), % parent
     empty_seq(),               % children
     expr_do(Ctx, A1),          % attributes
     a_term(IsNs),        % inscope_ns
     atom_or_string(undefined),
     case maps:get('construction-mode', Ctx) of
        strip ->
           {atom,?L,'xs:untyped'};
        _ when Type == undefined ->
           {atom,?L,'xs:anyType'};
        _ ->
           {atom,?L,Type}
     end, % type
     expr_do(Ctx,BU), % base_uri
     atom_or_string(undefined), % path_index
     if E1 == [undefined] -> empty_seq();
        true ->
           expr_do(Ctx,E1)
     end]}.

abs_attribute_node(Ctx, #xqAttributeNode{name = N, expr = E}) ->
   {tuple,?L,
    [
     atom_or_string(xqAttributeNode),
     atom_or_string(undefined),
     case N of
        #qname{namespace = _Ns, prefix = Px} ->
           if Px == [] ->
                 % no default namespace for these
                 abs_ns_qname(Ctx,N#qname{namespace = 'no-namespace'});
              true ->
                 abs_qname(Ctx,N)
           end;
        _ ->
           expr_do(Ctx, N)
     end,
     atom_or_string(undefined),
     atom_or_string(undefined),
     atom_or_string(undefined),
     atom_or_string(undefined),
     if E == [undefined] -> empty_seq();
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
     end]}.

abs_text_node(Ctx, #xqTextNode{expr = E, cdata = C}) ->
   {tuple,?L,
    [atom_or_string(xqTextNode),
     atom_or_string(undefined),
     atom_or_string(undefined),
     atom_or_string(C),
     atom_or_string(undefined),
     case is_list(E) of
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
     end]}.

abs_comment_node(Ctx, #xqCommentNode{string_value = S, expr = E}) ->
   {tuple,?L,
    [atom_or_string(xqCommentNode),
     atom_or_string(undefined),
     atom_or_string(undefined),
     atom_or_string(S),
     atom_or_string(undefined),
     case is_list(E) of
        true ->
           lists:foldr(fun(X, Abs) ->
                             {cons,?L,expr_do(Ctx, X), Abs}
                       end, {nil,?L}, E);
        _ ->
           if E == undefined -> empty_seq();
              true ->
                 expr_do(Ctx, E)
           end
     end]}.

abs_pi_node(Ctx, #xqProcessingInstructionNode{name = N, 
                                              expr = E, 
                                              base_uri = BU}) ->
   BU1 = case maps:get('base-uri', Ctx) of
            undefined when BU =/= [] ->
               BU;
            undefined ->
               [];
            _ ->
               BU
         end,   
   {tuple,?L,
    [atom_or_string(xqProcessingInstructionNode),
     atom_or_string(undefined),
     case N of
        #qname{} ->
           abs_qname(Ctx,N);
        _ ->
           expr_do(Ctx, N)
     end,
     atom_or_string(undefined),
     expr_do([],BU1), % base_uri
     atom_or_string(undefined),
     case is_list(E) of
        true ->
            lists:foldr(fun(X, Abs) ->
                            {cons,?L,expr_do(Ctx, X), Abs} 
                      end, {nil,?L}, E);
        _ ->
           if E == undefined -> empty_seq();
              true ->
                 expr_do(Ctx, E)
           end
     end]}.

abs_namespace_node(_Ctx, #xqNamespace{namespace = N, prefix = P}) ->
   {tuple,?L,
    [atom_or_string(xqNamespace),
     atom_or_string(N),
     atom_or_string(P)]};

abs_namespace_node(Ctx, #xqNamespaceNode{name = Name}) ->
   {tuple,?L,
    [atom_or_string(xqNamespaceNode),
     atom_or_string(undefined),
     abs_ns_qname(Ctx,Name),
     atom_or_string(undefined),
     atom_or_string(undefined),
     atom_or_string(undefined)]}.

abs_fun_test(Ctx,#xqFunTest{kind = Kind, 
                            annotations = Annos, 
                            name = Name, 
                            params = Params, 
                            type = Type}) ->
   AnnoF = fun({annotation,{#qname{namespace = "http://www.w3.org/2012/xquery",
                                   local_name = L} = Q,_}}, Abs) 
                 when L == "public";
                      L == "private" ->
                 {cons,?L,abs_qname(Ctx, Q), Abs};
              ({annotation,{#qname{namespace = N} = Q,_}}, Abs) ->
                 _ = xqerl_lib:reserved_namespaces(N),
                 {cons,?L,abs_qname(Ctx, Q), Abs}
           end,
   {tuple,?L,
    [atom_or_string(xqFunTest),
     atom_or_string(Kind),
     if Annos == [] ->
           {nil,?L};
        true ->
           lists:foldr(AnnoF, {nil,?L}, Annos)
     end,
     abs_qname(Ctx,Name),
     if Params =:= any ->
           atom_or_string(any);
        is_atom(Params) ->
           {cons,?L,abs_seq_type(Ctx,Params), {nil,?L}};
        true ->
           lists:foldr(fun(P, Abs) ->
                             {cons,?L,abs_seq_type(Ctx,P), Abs}
                       end, {nil,?L}, Params)
     end,
     if Type =:= any ->
           atom_or_string(any);
        true ->
           abs_seq_type(Ctx,Type)
     end]}.

abs_seq_type(_Ctx,Type) when is_atom(Type) ->
   {tuple,?L,
    [
     atom_or_string(xqSeqType),
     atom_or_string(Type),
     atom_or_string(one)
     ]};
abs_seq_type(Ctx,#xqSeqType{type = #xqFunTest{} = Ft, occur = O}) ->
   {tuple,?L,
    [
     atom_or_string(xqSeqType),
     abs_fun_test(Ctx,Ft),
     atom_or_string(O)
     ]};
abs_seq_type(Ctx,#xqSeqType{type = #xqKindTest{} = Kt, occur = O}) ->
   {tuple,?L,
    [
     atom_or_string(xqSeqType),
     abs_kind_test(Ctx,Kt),
     atom_or_string(O)
     ]};
abs_seq_type(_Ctx,#xqSeqType{type = T, occur = O}) ->
   {tuple,?L,
    [
     atom_or_string(xqSeqType),
     atom_or_string(T),
     atom_or_string(O)
     ]}.   

abs_qname(_Ctx, undefined) ->
   atom_or_string(undefined);
abs_qname(_Ctx, #qname{namespace = N, prefix = P, local_name = L}) ->
   {tuple, ?L, 
    [
     atom_or_string(qname),
     atom_or_string(N),
     atom_or_string(P),
     atom_or_string(L)
    ]}.

abs_ns_qname(_Ctx, undefined) ->
   atom_or_string(undefined);
abs_ns_qname(Ctx, #qname{namespace = N, prefix = P, local_name = L}) ->
   {tuple, ?L, 
    [atom_or_string(qname),
     if is_tuple(N) ->
           expr_do(Ctx, N);
        true ->
           atom_or_string(N)
     end,
     if is_tuple(P) ->
           case P of
              #xqAtomicValue{value = ""} ->
                 atom_or_string("");
              _ ->
                 expr_do(Ctx, P)
           end;
        true ->
           atom_or_string(P)
     end,
     atom_or_string(L)
    ]}.

% {xqKindTest,node,undefined,undefined,undefined}
abs_kind_test(Ctx,#xqKindTest{kind = K, name = Q, type = T, test = Ts}) ->
   {tuple, ?L, 
    [atom_or_string(xqKindTest),
     atom_or_string(K),
     abs_qname(Ctx,Q),
     if is_atom(T) ->
           atom_or_string(T);
        true ->
           expr_do(Ctx, T)
     end,
     case Ts of
        undefined -> atom_or_string(undefined);
        _ -> abs_kind_test(Ctx,Ts)
     end]}.

abs_function(Ctx,#xqFunction{annotations = _A,
                             name = N,
                             arity = Ar,
                             params = Params,
                             type = Type}, BodyAbs) ->
   {tuple, ?L, 
    [atom_or_string(xqFunction),
     atom_or_string(undefined), %id
     atom_or_string(undefined), %annotations
     abs_qname(Ctx, N)        , %name
     {integer,?L,Ar}          , %arity
     abs_param_list(Ctx, Params), %params
     abs_seq_type(Ctx, Type)  , %type
     BodyAbs                    %body
     ]}.

abs_param_list(Ctx, List) ->
   lists:foldr(fun(#xqSeqType{} = St,Acc) ->
                     {cons,?L,abs_seq_type(Ctx, St) ,Acc};
                  (#xqVar{type = #xqSeqType{} = St},Acc) ->
                     {cons,?L,abs_seq_type(Ctx, St) ,Acc}
               end, {nil,?L}, List).
   
abs_boolean(Bool) ->
   {tuple, ?L, 
    [atom_or_string(xqAtomicValue),
     atom_or_string('xs:boolean'),
     atom_or_string(Bool)]}.

abs_simp_atomic_value(#xqAtomicValue{} = A) ->
   a_term(A).

atom_or_string([]) ->
   {nil,?L};
atom_or_string(AS) ->
   if is_atom(AS) -> {atom,?L,AS};
      is_integer(AS) -> {integer,?L,AS};
      is_float(AS) -> {float,?L,AS};
      true -> {string,?L,AS}
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
                     {cons,?L,
                      {tuple,?L,
                       [{atom,?L,xqNamespace},
                        atom_or_string(N),
                        atom_or_string(P)]}, Abs}
               end, {nil,?L}, maps:get(namespaces,Ctx)).   

next_var_tuple_name() ->
   list_to_atom("VarTup__"++integer_to_list(next_id(var_tuple))).

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

get_variable_tuple(Map) when is_map(Map) ->
   Vars = maps:get(variables, Map),
   Cnt = length([ok||{_,_,_,M} <- Vars, is_atom(M)]),
   if Cnt == 0 ->
         {nil,?L};
      true ->
         get_variable_tuple(Map, Vars)
   end.

get_variable_tuple(_Ctx, List) when is_list(List) ->
   Vars = [{var,?L,Name} || {_QName,_,_,Name} <- List, is_atom(Name)],
   {tuple,?L,Vars}.

abs_list(List) ->
    lists:foldr(fun(E, Abs) ->
                      {cons,?L, E, Abs}
                end, {nil,?L}, List).
from_list_to_seq(List) ->
   a_remote_call({?seq,flatten,?L}, [abs_list(List)]).

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

a_match({var,_,_} = V,L,Expr) when is_integer(L),
                         is_tuple(Expr) ->
   {match,L,V,Expr};
a_match(Var,L,Expr) when is_atom(Var),
                         is_integer(L),
                         is_tuple(Expr) ->
   {match,L,{var,L,Var},Expr};
a_match(V,L,Expr) when is_integer(L),
                       is_tuple(Expr) ->
   {match,L,V,Expr}.

a_remote_call({M,F,L},Args) when is_atom(M),
                                 is_atom(F),
                                 is_integer(L),
                                 is_list(Args) ->
   {call,L,{remote,L,{atom,L,M},{atom,L,F}},Args}.

a_term(Term) ->
   erl_syntax:revert(erl_syntax:abstract(Term)).

a_block(L,Block) when is_integer(L),
                      is_list(Block) ->
   {block,L,Block}.


handle_predicate({Ctx, {LU, wildcard}}, Abs) 
   when LU =:= map_lookup;
        LU =:= array_lookup ->
   ValExp =  {atom,?L,all},
   CtxVar = get_context_variable_name(Ctx),
   a_remote_call({xqerl_operators,lookup,?L}, [{var,?L,CtxVar},Abs, ValExp]);
handle_predicate({Ctx, {LU, Val}}, Abs) 
   when LU =:= map_lookup;
        LU =:= array_lookup ->
   ValExp =  expr_do(Ctx, Val),
   CtxVar = get_context_variable_name(Ctx),
   a_remote_call({xqerl_operators,lookup,?L}, [{var,?L,CtxVar},Abs, ValExp]);

handle_predicate({Ctx, {positional_predicate, [P]}}, Abs) ->
   handle_predicate({Ctx, {positional_predicate, P}}, Abs);
handle_predicate({Ctx, {positional_predicate, {variable, Name}}}, Abs) ->
   CtxVar = get_context_variable_name(Ctx),
   a_remote_call({?seq,position_filter,?L},[{var,?L,CtxVar},{var,?L,Name},Abs]);
handle_predicate({Ctx, {positional_predicate, #xqAtomicValue{} = A}}, Abs) -> 
   CtxVar = get_context_variable_name(Ctx),
   a_remote_call({?seq,position_filter,?L},
                 [{var,?L,CtxVar},abs_simp_atomic_value(A),Abs]);
handle_predicate({Ctx, {positional_predicate, #xqVarRef{name = Name}}}, Abs) -> 
   CtxVar = get_context_variable_name(Ctx),
   {VarAbs, #xqSeqType{type = _VarType}} = get_variable_ref(Name, Ctx),
   a_remote_call({?seq,position_filter,?L},
                       [{var,?L,CtxVar},VarAbs,Abs]);
handle_predicate({Ctx, {positional_predicate, P}}, Abs) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   a_remote_call({?seq,position_filter,?L},
                 [{var,?L,CtxVar},
                  {'fun',?L,
                   {clauses,
                    [{clause,?L,
                      [{var,?L,NextCtxVar}],[], 
                      alist(expr_do(Ctx1, P))}]}}, 
                  Abs]);

handle_predicate({Ctx, {predicate, [P]}}, Abs) ->
   handle_predicate({Ctx, {predicate, P}}, Abs);
handle_predicate({Ctx, {predicate, #xqAtomicValue{type = Type} = A}}, Abs) 
   when ?numeric(Type) ->
   CtxVar = get_context_variable_name(Ctx),
   a_remote_call({?seq,position_filter,?L},
                 [{var,?L,CtxVar},abs_simp_atomic_value(A),Abs]);
handle_predicate({Ctx, {predicate, #xqVarRef{name = Name}}}, Abs) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   {VarAbs, #xqSeqType{type = VarType}} = get_variable_ref(Name, Ctx),
   if ?numeric(VarType) ->
         a_remote_call({?seq,position_filter,?L},
                       [{var,?L,CtxVar},VarAbs,Abs]);
      true ->
         a_remote_call({?seq,filter,?L},
                       [{var,?L,CtxVar},
                        {'fun',?L,
                         {clauses,
                          [{clause,?L,
                            [{var,?L,NextCtxVar}],[], 
                            alist(VarAbs)}]}},
                        Abs])
   end;
handle_predicate({Ctx, {predicate, P}}, Abs) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   a_remote_call({?seq,filter,?L},
                 [{var,?L,CtxVar},
                  {'fun',?L,
                   {clauses,
                    [{clause,?L,
                      [{var,?L,NextCtxVar}],[], 
                      alist(expr_do(Ctx1, P))}]}},
                  Abs]);

handle_predicate({Ctx, {arguments, Args}}, Abs) ->
   CtxVar = get_context_variable_name(Ctx),
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
   NextCtxVar2 = next_ctx_var_name(),
   NextVar2 = next_var_name(),
   
   IsMap = a_remote_call({erlang,is_map,?L}, [{var,?L,NextVar2}]),
   IsFun = a_remote_call({erlang,is_function,?L}, [{var,?L,NextVar2}]),
   ArgHdNil = if ArgAbs =:= [] -> {nil,?L};
                 true -> hd(ArgAbs)
              end,
   if PlaceHolders == [] ->
      a_remote_call({?seq,val_map,?L},
       [{'fun',?L,
         {clauses,
          [{clause,?L,[{var,?L,NextVar2}],[[IsMap]],
            [a_remote_call({xqerl_operators,lookup,?L},
                           [{var,?L,CtxVar},{var,?L,NextVar2},ArgHdNil])
            ]},
           {clause,?L,[{nil,?L}],[],
            [a_remote_call({xqerl_error,error,?L},
                           [{atom,?L,'XPTY0004'}])
            ]},
           {clause,?L,[{cons,?L,{var,?L,NextVar2},{nil,?L}}],[[IsMap]],
            [a_remote_call({xqerl_operators,lookup,?L},
                           [{var,?L,CtxVar},{var,?L,NextVar2},ArgHdNil])
            ]},
           {clause,?L,[a_match(NextVar2,?L,
                               {tuple,?L,[{atom,?L,array},{var,?L,'_'}]})],[],
            [a_remote_call({xqerl_operators,lookup,?L},
                           [{var,?L,CtxVar},{var,?L,NextVar2},ArgHdNil])
            ]},
           {clause,?L,[{var,?L,NextCtxVar2}|PlaceHolders],[],
            [
             a_match(NextVar2,?L,a_remote_call({xqerl_types,value,?L},[Abs])),
             {'if',?L,
              [{clause,?L,[],[[IsFun]],
                [
                 {'case',?L,
                  {op,?L,'==',
                   {var,?L,NextVar2},
                   {'fun',?L,{function,
                              {atom,?L,xqerl_fn},
                              {atom,?L,concat},
                              {integer,?L,2}}}},
                  [{clause,?L,[{atom,?L,true}],[],
                    [
                     {call,?L,{var,?L,NextVar2},
                      [{var,?L,CtxVar},from_list_to_seq(ArgAbs)]}
                    ]},
                   {clause,?L,[{var,?L,'_'}],[],
                    [
                     {call,?L,{var,?L,NextVar2},
                      [{var,?L,CtxVar}|ArgAbs]}
                    ]}
                  ]}
                ]},
               {clause,?L,[],[[{atom,?L,true}]],
                [a_remote_call({xqerl_operators,lookup,?L},
                           [{var,?L,CtxVar},{var,?L,NextVar2},ArgHdNil])]}
              ]}
            ]}
          ]}
        }, Abs
       ]);
      true ->
         {'fun',?L,
          {clauses,
           [{clause,?L,[{var,?L,NextCtxVar2}|PlaceHolders],[],
             [a_match(NextVar2,?L,a_remote_call({xqerl_types,value,?L},[Abs])),
              {call,?L,{var,?L,NextVar2},
               [{var,?L,NextCtxVar2}|ArgAbs]}
             ]}
           ]}
         }
   end.



