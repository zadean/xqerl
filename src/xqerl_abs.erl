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

%% @doc  Currently the messy spaghetti-code that writes abstract Erlang. Also tries to figure out
%%       WAY too much about what is going on. This need to be broken apart into a static and dynamic phase.
%%       * The static phase will attempt to in-line what it can and pre-run any code that can be run, such as 
%%          hard-coded values and deterministic/context-independent function calls on known values.
%%          Also, any optimizations that can be safely done should be done here. (eg. let clause 
%%          moved before a for clause when the value doesn't rely on the variables in the for clause) 
%%       * The dynamic phase will "simply" be the Erlang code that is left after the static phase. 

-module(xqerl_abs).

-export([scan_mod/1]).

-define(L,?LINE).
-define(s(E,T), {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,cast_as_seq}},[E,abs_seq_type(Ctx,T)]}).
%-define(as(E,T),{call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,as_seq}},[E,abs_seq_type(T)]}).
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
   %?dbg("Functions",Functions),
   Specs = [ {Name#qname{prefix = []}, % Name#qname{namespace = xqerl_context:get_statically_known_namespace_from_prefix(Name#qname.prefix)}, 
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
              not lists:any(fun({annotation, #qname{namespace = "http://www.w3.org/2012/xquery", local_name = "private"}, _}) ->
                                  true;
                               (_) ->
                                  false
                            end, Annos)   ],
   xqerl_context:import_functions(Specs,Tab),
   %xqerl_context:set_statically_known_functions(Specs),
   %[attribute(functions, Specs)].
   Specs.

%% {Name, Type, Annos, function_name, External }
scan_variables(#{tab := Tab}, Variables) ->
   Specs = [begin
               {Name#qname{prefix = []}, Type, Annos, xqerl_static:variable_hash_name(Name),External}
            end
           || #xqVar{%id = Id, 
                     annotations = Annos, 
                     name = Name,
                     external = External, 
                     type = Type} 
           <- Variables   ],
   xqerl_context:import_variables(Specs,Tab),
   %xqerl_context:set_in_scope_variables(Specs),
   %[attribute(variables, Specs)].
   Specs.

erl_term_abs(Term) ->
   erl_syntax:revert(erl_syntax:abstract(Term)).

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
   Map  = add_context_key(#{},namespaces,Ctx),
   Map2 = add_context_key(Map,named_functions,Ctx),
   Fun = fun(Name, M) ->
               add_context_key(M,Name,Ctx)
         end,
   Map3 = lists:foldl(Fun, Map2, KeysToAdd),
   erl_term_abs(Map3).

add_context_key(Map,namespaces,Ctx) ->
   Map#{namespaces => maps:get(namespaces, Ctx)};
add_context_key(Map,known_collations,Ctx) ->
   Map#{known_collations => maps:get(known_collations, Ctx)};


% when named-functions added, everything is needed
add_context_key(Map,named_functions,Ctx) ->
   Map#{'base-uri'          => maps:get('base-uri', Ctx),
        'construction-mode' => maps:get('construction-mode', Ctx),
        'copy-namespaces'   => maps:get('copy-namespaces', Ctx),
        'default-collation' => maps:get('default-collation', Ctx),
        known_collations    => maps:get(known_collations, Ctx),
        known_dec_formats   => maps:get(known_dec_formats, Ctx)%,
        %named_functions     => maps:get(known_fx_sigs, Ctx)%[]%  
       };

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



scan_mod(Map) when is_map(Map) ->
   scan_mod(maps:get(body, Map), maps:remove(body, Map)).
   
scan_mod(#xqModule{prolog = Prolog, 
                   declaration = {_,{ModNs,_Prefix}}, 
                   type = library,
                   body = _},Map) ->
   _ = init_mod_scan(),
   DefElNs     = xqerl_static:pro_def_elem_ns(Prolog),
   %ContextItem = xqerl_static:pro_context_item(Prolog,main),
   Namespaces  = xqerl_static:pro_namespaces(Prolog,[],DefElNs),
   Variables   = xqerl_static:pro_glob_variables(Prolog),
   Functions   = xqerl_static:pro_glob_functions(Prolog),
   StaticNamespaces = xqerl_context:static_namespaces(),
   %?dbg("{Variables}",{Variables}),
   ConstNamespaces  = xqerl_static:overwrite_static_namespaces(StaticNamespaces, Namespaces),
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
     export_variables(Variables, EmptyMap) 
     ++
     export_functions(Functions)
     ++
     [attribute(compile,inline_list_funcs)] ++ 
     init_function(scan_variables(EmptyMap,Variables),ImportedMods)
     ++
     variable_functions(EmptyMap, Variables) 
     ++ 
     function_functions(EmptyMap, Functions)
     ++ 
     get_global_funs()
    };

%%    _ = valid_ver(Version),
%%    _ = valid_enc(string:to_upper(Encoding)),      
%%    _ = init_mod_scan(),
%%    DefElNs     = pro_def_elem_ns(Prolog),
%%    _           = pro_def_func_ns(Prolog),
%%    ContextItem = pro_context_item(Prolog,library),
%%    Setters     = pro_setters(Prolog),
%%    Namespaces  = pro_namespaces(Prolog,ModNsPx,DefElNs),
%%    Imports     = pro_mod_imports(Prolog),
%%    Options     = pro_options(Prolog),
%%    Variables   = pro_glob_variables(Prolog),
%%    Functions   = pro_glob_functions(Prolog),
%%    
%%    StaticNamespaces = xqerl_context:static_namespaces(),
%%    ConstNamespaces  = overwrite_static_namespaces(StaticNamespaces, Namespaces),
%%    {Functions1, Variables1} = xqerl_context:import_modules(Imports),
%% 
%%    %?dbg("DefElNs",DefElNs),
%%    %?dbg("Namespaces",Namespaces),
%%    %?dbg("StaticNamespaces",StaticNamespaces),
%%    %?dbg("ConstNamespaces",ConstNamespaces),
%%    
%%    %?dbg("Functions1",Functions1),
%%    % analyze for cyclical references
%%    true = analyze_fun_vars(Functions, Variables),
%%    
%%    SettersAbs = xqerl_static:scan_setters(Setters),
%%    NamespaceAbs = xqerl_static:scan_namespaces(Namespaces),
%%    OptionAbs = xqerl_static:scan_options(Options,library),
%%    ok = xqerl_context:import_variables(Variables1),
%%    ok = xqerl_context:import_functions(Functions1),
%%    FunctionAbs = xqerl_static:scan_functions(Functions),
%%    SetterMap = lists:foldl(fun({_,_,S,V},M) ->
%%                                  maps:put(S, V, M)
%%                            end, maps:new(), SettersAbs),
%%    EmptyMap = maps:put(namespaces, ConstNamespaces, 
%%                        maps:put(variables, [], 
%%                        maps:put(var_tuple, [], 
%%                        maps:put(iter, [], 
%%                        maps:put(iter_loop, [], 
%%                           maps:put(ctx_var, 'Ctx0', 
%%                                 maps:put(parameters, [], 
%%                                          SetterMap))))))),
%%    VariableAbs = xqerl_static:scan_variables(Variables, EmptyMap),
%%    [attribute(module, list_to_atom(ModNs)),
%%     attribute('module-namespace', ModNsPx),
%%     attribute('import-functions', Functions1),
%%     attribute('import-variables', Variables1),
%%     attribute('element-namespace', DefElNs),
%%     attribute('context-item', if_empty(ContextItem, {'item', 'external', 'undefined'}))
%%    ] ++ SettersAbs ++ NamespaceAbs ++
%%    OptionAbs ++ VariableAbs ++
%%    FunctionAbs ++ 
%%    export_variables(Variables, EmptyMap) 
%%    ++
%%    export_functions(Functions)
%%    ++
%%    variable_functions(EmptyMap, Variables) 
%%    ++ 
%%    function_functions(EmptyMap, Functions);

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
   {Functions1, Variables1} = xqerl_context:get_module_exports(Imports),
   ImportedMods = lists:filtermap(fun({'module-import', {_,[]}}) -> false;
                                     ({'module-import', {N,_}}) -> 
                                        {true, xqerl_static:string_atom(N)};
                                     (_) -> false
                                  end,Prolog),
   %?dbg("Prolog",Body),
   %?dbg("Imports",Imports),
   %?dbg("DefElNs",DefElNs),
   %?dbg("Namespaces",Namespaces),
   %?dbg("StaticNamespaces",StaticNamespaces),
   %?dbg("ConstNamespaces",ConstNamespaces),
   %?dbg("Functions1",Functions1),
  
   ok = xqerl_context:import_variables(Variables1,Tab),
   ok = xqerl_context:import_functions(Functions1,Tab),
   
   VarFun1 = fun(#xqVar{%id = Id,
                        annotations = Annos,
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
   %?dbg("Variables",Variables),
   ModName = xqerl_static:string_atom(FileName),
   {FileName,
    main,
    ImportedMods,
    scan_variables(EmptyMap,Variables),
    scan_functions(EmptyMap,Functions,ModName),
   
   %?dbg("VariableAbs",VariableAbs),
   %VariableAbs ++
   %FunctionAbs ++ 
   [attribute(module, ModName)] ++ 
   [attribute(export , [{main,1}] )] ++
   %export_variables(Variables, EmptyMap) ++
   export_functions(Functions) ++
   [attribute(compile,inline_list_funcs)] ++
   %[attribute(compile,native)] ++ 
   [ {function,?L,init,0,
     [{clause,?L,
       [],
       [],
       [ % body here
         {match,?L,{var,?L,'Tab'},{call,7,{remote,7,{atom,7,xqerl_context},{atom,7,init}},[]}},
         {call,7,{remote,7,{atom,7,xqerl_context},{atom,7,set_named_functions}},
          [{var,?L,'Tab'},erl_term_abs(maps:get(known_fx_sigs,exp_local_funs(EmptyMap#{module => ModName})))]
         },
         {call,7,{remote,7,{atom,7,maps},{atom,7,put}},
          [{atom,7,tab},
           {var,?L,'Tab'},
           init_fun_abs(EmptyMap#{module => ModName}, []) ]}
       ]}
    ]
   }] ++ 
   variable_functions(EmptyMap, Variables) 
   ++ 
   function_functions(EmptyMap, Functions)
   ++
   body_function(EmptyMap, Body, ImportedMods)
   ++ 
   get_global_funs()
   }
   .

init_function(Variables,ImportedMods) ->
   VarNss = lists:usort([Ns || {#qname{namespace =Ns},_T,_A,_V,_Ext} <- Variables]),
   VarAtomNss = [xqerl_static:string_atom(A) || A <- VarNss],
   VarSetFun = fun({_N,_T,_A,V,_Ext} = _Var) ->
                     %?dbg("Var",Var),
                      {call,?L,
                       {remote,?L,
                        {atom,?L,xqerl_lib},
                        {atom,?L,lput}},
                       [{atom,?L,V},{call,?L,{atom,?L,V},[{var,?L,'Ctx'}]} ]};
                  (O) ->
                     ?dbg("O",O)
               end,
   ImpFun = fun(Ns) ->
                  case lists:member(Ns, VarAtomNss) of
                     true ->
                        {true,{call,?L,{remote,?L,{atom,?L,Ns},{atom,?L,init}},[{var,?L,'Ctx'}]}};
                     _ ->
                        false
                  end
            end,
   VarSetAbs = lists:map(VarSetFun, Variables),
   Imps = lists:filtermap(ImpFun, ImportedMods),
   ?dbg("Imps",ImportedMods),
   [{function,?L,init,1,[{clause,?L,[{var,?L,'Ctx'}],[],Imps ++ VarSetAbs ++ [{atom,?L,ok}]}]}].

body_function(ContextMap, Body,ImportedMods) ->
   _ = erlang:put(ctx, 1),
   BodyAbs = alist(expr_do(maps:put(ctx_var, 'Ctx',ContextMap), Body)),
   VarSetFun = fun({_N,_T,_A,{V,1},_Ext}, CtxVar) ->
                     {
                      {call,?L,{remote,?L,{atom,?L,xqerl_lib},{atom,?L,lput}},[{atom,?L,V},{call,?L,{atom,?L,V},[{var,?L,CtxVar}]} ]},
                      CtxVar
                     };
                  ({'context-item',{CType,External,Expr}}, _CtxVar) ->
                     NextVar = next_var_name(),
                     {{match,?L,{var,?L,'Ctx'}, 
                      {block,?L,
                       [{match,?L,{var,?L,NextVar}, 
                         {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,promote}},[
                          {call,?L,{remote,?L,{atom,?L,maps},{atom,?L,get}},
                           [{atom,?L,'context-item'},{var,?L,'Options'},expr_do(ContextMap, Expr)]},
                            expr_do(ContextMap, #xqSeqType{type = CType, occur = if External =:= external ->
                                                                                       zero_or_one;
                                                                                       %one;
                                                                                    Expr =/= [] ->
                                                                                       one;
                                                                                    true ->
                                                                                       zero_or_one
                                                                                 end})]}},
                        
                        {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_context_item}},
                         [{var,?L,'Ctx0'},
                          {var,?L,NextVar},
                          {integer,?L,1},
                          {tuple,?L,[{atom,?L,xqAtomicValue},{atom,?L,'xs:integer'},
                                     {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,size}},[{var,?L,NextVar}]}]}
                                    ]}                                
                       ]}
                      }, 'Ctx'}    
                end,                 
   % reverse list that the dependencies are correct   
   {VarSetAbs,LastCtx} = lists:mapfoldl(VarSetFun, 'Ctx0', lists:reverse(maps:get(variables, ContextMap))),
   ImpFun = fun(Ns) ->
                  {call,?L,{remote,?L,{atom,?L,Ns},{atom,?L,init}},[{var,?L,'Ctx0'}]}
            end,
   Imps = lists:map(ImpFun, ImportedMods),
   %?dbg("Imps",Imps),
   %?dbg("BodyAbs",BodyAbs),
   %?dbg("VarSetAbs",VarSetAbs),
   [
    {function,?L,main,1,[{clause,?L,[{var,?L,'Options'}],[],
                          [{match,?L,{var,?L,'Ctx0'},
                            {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,merge}},
                             [{call,?L,{atom,?L,init},[]},
                               {var,?L,'Options'}]}}] ++
                            Imps ++ 
                            if LastCtx == 'Ctx0' ->
                                  [{match,?L,{var,?L,'Ctx'},{var,?L,'Ctx0'}} | VarSetAbs];
                               true ->
                                  VarSetAbs
                            end
                            ++
                            % set all the external variables here
                            BodyAbs}]}].
   
variable_functions(ContextMap, Variables) ->
   CtxName = get_context_variable_name(ContextMap),
   %?dbg(?FUNCTION_NAME,?LINE),
   Specs = [begin 
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
               Expr1 = begin
                          Ex = expr_do(ContextMap, Expr),
                          if is_list(Ex) -> Ex;
                             true -> [Ex]
                          end
                       end,
               %?dbg("Expr1",Expr1),
               ExternAbs = if Ext == true ->
                                 [{match,?L,{var,?L,'Tmp'},{block,?L,Expr1}},
                                  {'case' ,?L,
                                  {call,?L,{remote,?L,{atom,?L,maps},{atom,?L,get}},
                                   [{string,?L,QNameStr},{var,?L,CtxName}, {var,?L,'Tmp'} ]},
                                  [
                                   {clause,?L,[{atom,?L,undefined}],[],
                                    [{call,?L,{remote,?L,{atom,?L,xqerl_error},{atom,?L,error}},
                                      [{atom,?L,'XPDY0002'}]}]},
                                   {clause,?L,[{tuple,?L,[{atom,?L,array},{var,?L,'Vals'}]}],
                                    [],
                                    [{tuple,?L,[{atom,?L,array},{var,?L,'Vals'}]}                                      
                                    ]},
                                   {clause,?L,[{tuple,?L,[{var,?L,'Id'},{var,?L,'Doc'}]}],[],
                                    [{match,?L,{var,?L,'_'},
                                      {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,add_available_document}},
                                       [{var,?L,'Id'},{var,?L,'Doc'}]}},
                                     {tuple,?L,[{atom,?L,xqNode},{var,?L,'Id'},{integer,?L,1}]}                                      
                                    ]},
                                   {clause,?L,[{var,?L,'X'}],[],
                                    [{var,?L,'X'}]}
                                  ]
                                 }];
                              true ->
                                 Expr1
                           end,
               {function, ?L, Name, 1,
                [{clause,?L, 
                  [{var,?L, CtxName}], % params
                  [], % guards
                  % body
                 %% when external, check for set value first, then default, or then XPDY0002 when not set. 

                  %xqerl_context:add_variable_value(Key, Value)
                  ExternAbs
                 }]}
            end  
           || #xqVar{id = _, name = QName, expr = Expr, external = Ext} 
           <- Variables   ],
   Specs.

function_functions(ContextMap, Functions) ->
   CtxName = get_context_variable_name(ContextMap),
   CtxName2 = next_ctx_var_name(),
   Specs = [begin
               erlang:put(ctx, 1),
               {FName, Arity1} = xqerl_static:function_hash_name(FxName, Arity),
               %{FName, Arity1} = function_function_name(Id, Arity),
               % add parameters to scope
               {List,Map2} =  lists:mapfoldl(fun(#xqVar{id = VId,
                                                        name = Name,
                                                        type = Type, 
                                                        annotations = Annos}, Map) ->
                                     VarName = list_to_atom(lists:concat(["Param__var_", VId])),
                                     %% {name,type,annos,Name}
                                     NewMap = add_param({Name,Type,Annos,VarName}, Map),
                                     {{var,?L, VarName}, NewMap}
                                end, ContextMap, Params),
               Internal = 
                  {function, ?L, FName, Arity1,
                   [{clause,?L, 
                     case Arity of 
                        0 ->
                           [{var,?L, CtxName}];
                        _ ->
                           lists:flatten([{var,?L, CtxName}|List])
                     end,
                     [], % guards
                     % body
                     begin
                        Map3 = set_context_variable_name(Map2, CtxName2),
                        % do not allow functions to access the current context item
                        [{match,?L,{var,?L,CtxName2},
                          {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_empty_context_item}}, [ {var,?L, CtxName}] }},
                         expr_do(Map3, Expr)]
                     end
                     }]},
               Internal
            end  
           || #xqFunction{id = _, 
                          name = FxName,
                          arity = Arity,
                          params = Params,
                          body = Expr} 
           <- Functions   ],
   Specs.

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
   erlang:list_to_tuple([attribute,?L,Name,Val]).
   

param_types(Params) ->
   %?dbg("param_types", Params),
   [ T || #xqVar{type = T} <- Params].

% cardinality ensure
expr_do(Ctx, {ensure, Var, #xqSeqType{type = item, occur = one_or_many}}) ->
   expr_do(Ctx, Var);
expr_do(Ctx, {ensure, Var, #xqSeqType{occur = Occur}}) ->
   Expr = expr_do(Ctx, Var),
   FunName = if Occur == one ->
                   ensure_one;
                Occur == one_or_many ->
                   ensure_one_or_more;
                Occur == zero_or_one ->
                   ensure_zero_or_one;
                Occur == zero_or_many ->
                   ensure_zero_or_more;
                true ->
                   ensure_zero_or_more
             end,
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,FunName}}, alist(Expr)};
% ignoring pragmas for now
expr_do(_Ctx, {pragma, _Pragmas, []}) ->
   xqerl_error:error('XQST0079');
expr_do(Ctx, {pragma, _Pragmas, Exprs}) ->
   expr_do(Ctx, Exprs);

expr_do(_Ctx, undefined) ->
   {atom,?L,undefined};
% try/catch
expr_do(Ctx, {'try',Expr,{'catch',CatchClauses}}) ->
   TryAbs = expr_do(Ctx, Expr),
   
%%    CodeVar = next_var_name(),
%%    DescVar = next_var_name(),
%%    ValuVar = next_var_name(),
%%    ModuVar = next_var_name(),
%%    LineVar = next_var_name(),
%%    ColnVar = next_var_name(),
   
   ErrNs = "http://www.w3.org/2005/xqt-errors",
   
   NewCodeVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "code"},#xqSeqType{type = 'xs:QName', occur = one},[],'CodeVar'},
   NewDescVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "description"},#xqSeqType{type = 'xs:string', occur = zero_or_one},[],'DescVar'},
   NewValuVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "value"},#xqSeqType{type = 'item', occur = zero_or_many},[],'ValuVar'},
   NewModuVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "module"},#xqSeqType{type = 'xs:string', occur = zero_or_one},[],'ModuVar'},
   NewLineVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "line-number"},#xqSeqType{type = 'xs:integer', occur = zero_or_one},[],'LineVar'},
   NewColnVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "column-number"},#xqSeqType{type = 'xs:integer', occur = zero_or_one},[],'ColnVar'},
   
   Ctx0 = add_variable(NewCodeVar, Ctx),
   Ctx1 = add_variable(NewDescVar, Ctx0),
   Ctx2 = add_variable(NewValuVar, Ctx1),
   Ctx3 = add_variable(NewModuVar, Ctx2),
   Ctx4 = add_variable(NewLineVar, Ctx3),
   Ctx5 = add_variable(NewColnVar, Ctx4),
   
   Clauses = lists:flatmap(fun({Errors,DoExpr}) ->
                             DoExprAbs = expr_do(Ctx5, DoExpr),
                             lists:map(fun(#xqNameTest{name = #qname{namespace = Ns,local_name = Ln}}) ->
                                             NamePattern = {tuple,?L,
                                                            [
                                                             {atom,?L,'xqError'},
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
                                                              {var,?L,'CodeVar'}
                                                             },
                                                             {var,?L,'DescVar'},
                                                             {var,?L,'ValuVar'},
                                                             {tuple,?L,[{var,?L,'ModuVar'},{var,?L,'LineVar'},{var,?L,'ColnVar'}]}
                                                            ]}, 
                                             {clause,?L,
                                              [{tuple,?L,
                                                [{var,?L,'_'},
                                                 NamePattern,
                                                 {var,?L,'_'}]}], % pattern
                                              [], % guard
                                              alist(DoExprAbs)}
                                       end, Errors)
                       end, CatchClauses),
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
   {call,?L,{remote,?L,{atom,?L,xqerl_error},{atom,?L,error}}, [{atom,?L,ErrCode}]};

% bang operator
expr_do(Ctx, {'simple-map',SeqExpr,{'simple-map',_,_}=MapExpr}) ->
   SeqAbs = expr_do(Ctx, SeqExpr),
   step_expr_do(Ctx, MapExpr, SeqAbs);

expr_do(Ctx, {'simple-map',SeqExpr,MapExpr}) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   SeqAbs = expr_do(Ctx, SeqExpr),
   FunAbs = {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[],alist(expr_do(Ctx1, MapExpr))}]}},
   {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,simple_map}}, [{var,?L,CtxVar},SeqAbs,FunAbs]};
% inline anonymous functions
expr_do(Ctx, #xqFunction{id = _Id,
                         name = undefined, % fun object
                         annotations = Annotations, 
                         arity = _Arity,
                         params = Params,
                         body = Expr} = F) ->
   _ = lists:foreach(fun({annotation,{#qname{namespace = "http://www.w3.org/2012/xquery",local_name = "private"},_LiteralList}}) ->
                           xqerl_error:error('XQST0125');
                        ({annotation,{#qname{namespace = "http://www.w3.org/2012/xquery",local_name = "public"},_LiteralList}}) ->
                           xqerl_error:error('XQST0125');
                        (_) ->
                           false
                     end, Annotations),
   %?dbg("Annotations",Annotations),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   % add parameters to scope
   {ParamList,Ctx2} =  lists:mapfoldl(fun(#xqVar{id = ID, name = #qname{} = Name,type = Type, annotations = Annos}, Map) ->
                         VarName = list_to_atom(lists:concat(["Param__var_", ID])),
                         %% {name,type,annos,Name}
                         NewMap = add_param({Name,Type,Annos,VarName}, Map),
                         %as_seq check
                         {{var,?L, VarName}, NewMap}
                    end, Ctx1, Params),
   NextNextCtxVar = next_ctx_var_name(),
   Ctx3 = set_context_variable_name(Ctx2, NextNextCtxVar),
   Body = {'fun',?L,
    {clauses,
     [{clause,?L,[{var,?L, NextCtxVar}|ParamList],[],
       [ % do not allow functions to access the current context item
         {match,?L,{var,?L,NextNextCtxVar},
           {var,?L, NextCtxVar} },
           %{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_empty_context_item}}, [ {var,?L, NextCtxVar}] }},
          expr_do(Ctx3, Expr)
       ]
      }]
    }
   },
   %?dbg("ParamList",Fx),
   abs_function(Ctx, F, Body) ;

expr_do(Ctx, {'context-item', {_Type,_External,Expr}} )->
   expr_do(Ctx, Expr);
expr_do(_Ctx, {map, []} ) -> % empty map
   {call,?L,{remote,?L,{atom,?L,maps},{atom,?L,new}}, []};
expr_do(Ctx, {map, Vals} ) ->
   CtxVar = get_context_variable_name(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_map},{atom,?L,construct}}, 
    [{var,?L,CtxVar},
     lists:foldl(fun({'map-key-val',Key,Val}, Abs) ->
                       KeyExp = expr_do(Ctx,Key),
                       ValExp = expr_do(Ctx,Val),
                       {cons,?L,{tuple,?L,[KeyExp, ValExp]}, Abs}
                 end, {nil,?L}, Vals)]
   }
   ;
%% expr_do(Ctx, {map, Vals} ) ->
%%    {map,?L,
%%     lists:map(fun({'map-key-val',Key,Val}) ->
%%                     KeyExp = expr_do(Ctx,Key),
%%                     {map_field_assoc,?L,
%%                      {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,key_val}}, [KeyExp]},
%%                      {tuple,?L,[KeyExp, expr_do(Ctx,Val)]}}
%%               end, Vals)
%%    }
%%    ;
expr_do(Ctx, {array, {expr, Expr}} )->
   %?dbg("array",Expr),
   {call,?L,{remote,?L,{atom,?L,xqerl_array},{atom,?L,from_list}},
    [lists:foldr(fun(E,Acc) ->
                       Ex = expr_do(Ctx, E),
                       case Ex of
                          {nil,_} ->
                             {cons,?L,{cons,?L,{nil,?L},Acc}};
                          _ ->
                             %?dbg("Ex",Ex),
                             {cons,?L,Ex,Acc}
                       end
               end,{nil,?L}, Expr)
     ]
   };
% this is a constructor
expr_do(Ctx, {array, [{content_expr, Expr}]} ) ->
   %?dbg("array",Expr),
   {call,?L,{remote,?L,{atom,?L,xqerl_array},{atom,?L,from_list}},[
    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,flatten}},
     [lists:foldr(fun(E,Acc) ->
                       Ex = expr_do(Ctx, E),
                       case Ex of
                          {nil,_} ->
                             %?dbg("Ex",Ex),
                             {cons,?L,{cons,?L,{nil,?L},Acc}};
                          _ ->
                             %?dbg("Ex",Ex),
                             {cons,?L,Ex,Acc}
                       end
               end,{nil,?L}, alist(Expr))
     ]
   }]};
expr_do(Ctx, {array, Expr} ) ->
   %?dbg("array",Expr),
   {call,?L,{remote,?L,{atom,?L,xqerl_array},{atom,?L,from_list}},
    [lists:foldr(fun(E,Acc) ->
                       Ex = expr_do(Ctx, E),
                       case Ex of
                          {nil,_} ->
                             %?dbg("Ex",Ex),
                             {cons,?L,{cons,?L,{nil,?L},Acc}};
                          _ ->
                             %?dbg("Ex",Ex),
                             {cons,?L,Ex,Acc}
                       end
               end,{nil,?L}, Expr)
     ]
   };
expr_do(Ctx, #xqQuery{query = Qry} )->
   {block,?L,
    [{match,?L,{var,?L,'Query'},expr_do(Ctx, Qry)},
     {match,?L,{var,?L,'ReturnVal'},{call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,return_value}},[{var,?L,'Query'}]}},
     {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,destroy}},[{var,?L,get_context_variable_name(Ctx)}]},
     {var,?L,'ReturnVal'}
     ]};
   
expr_do(Ctx, [T]) when is_tuple(T) ->
   expr_do(Ctx, T);
expr_do(_Ctx, #xqAtomicValue{} = A) ->
   Ab = erl_syntax:revert(erl_syntax:abstract(A)),
   %?dbg("A",A),
   %?dbg("Ab",Ab),
   Ab;

expr_do(Ctx, {'string-constructor', Expr}) ->
   {tuple,?L,
    [{atom,?L,xqAtomicValue},
     {atom,?L,'xs:string'},
     {call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},
      [lists:foldr(fun(I,Abs) ->
                      {cons,?L,{call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,string_value}},[expr_do(Ctx,I)]},Abs}
                end, {nil,?L}, alist(Expr))]
     }
     ]};

expr_do(Ctx, 'context-item') ->
   CtxName = get_context_variable_name(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[{var,?L,CtxName}]};
   %{var,?L,CtxName};
expr_do(Ctx, {range,Expr1,Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,range}},
    [expr_do(Ctx, Expr1),
     expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'and',Expr1,Expr2}) ->
   CtxName = get_context_variable_name(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}}, 
    [
     {var,?L,CtxName},
     {op,?L,'andalso',
      {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,eff_bool_val}}, [ expr_do(Ctx, Expr1)] },
      {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,eff_bool_val}}, [ expr_do(Ctx, Expr2)] }
     }
    ]};
expr_do(Ctx, {'or',Expr1,Expr2}) ->
   CtxName = get_context_variable_name(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}}, 
    [
     {var,?L,CtxName},
     {op,?L,'orelse',
      {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,eff_bool_val}}, [ expr_do(Ctx, Expr1)] },
      {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,eff_bool_val}}, [ expr_do(Ctx, Expr2)] }
     }
    ]};

% instance of / castable
expr_do(Ctx, {instance_of,Expr1,Expr2}) ->
   ?dbg("instance_of abs",{Expr1, Expr2}),
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,instance_of}},[E1,E2]};

expr_do(_Ctx, {castable_as,'empty-sequence',#xqSeqType{occur = one}}) -> % bad empty cast
   abs_boolean(false);
expr_do(_Ctx, {castable_as,'empty-sequence',#xqSeqType{occur = zero_or_one}}) -> % good empty cast
   abs_boolean(true);
expr_do(Ctx, {castable_as,Expr1,#xqSeqType{type = #qname{prefix = "xs",local_name = "QName"}}}) -> % namespace sensitive
   Namespaces = abs_ns_list(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,castable}},
    [expr_do(Ctx, Expr1), {atom,?L,'xs:QName'} ,Namespaces]
   };
expr_do(Ctx, {castable_as,Expr1,#xqSeqType{type = 'xs:QName'}}) -> % namespace sensitive
   Namespaces = abs_ns_list(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,castable}},
    [expr_do(Ctx, Expr1), {atom,?L,'xs:QName'} ,Namespaces]
   };
expr_do(Ctx, {castable_as,Expr1,Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,castable}},[expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)
   ]};

expr_do(Ctx, {cast_as,Expr1,#xqSeqType{type = #qname{prefix = "xs",local_name = "QName"}}}) -> % namespace sensitive
   Namespaces = abs_ns_list(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,cast_as}},
    [expr_do(Ctx, Expr1), {atom,?L,'xs:QName'} ,Namespaces]
   };
expr_do(Ctx, {cast_as,Expr1,#xqSeqType{type = 'xs:QName'}}) -> % namespace sensitive
   Namespaces = abs_ns_list(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,cast_as}},
    [expr_do(Ctx, Expr1), {atom,?L,'xs:QName'} ,Namespaces]
   };
expr_do(Ctx, {cast_as,Expr1,Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,cast_as}},[expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)
   ]};

% atomize/promote bodies of functions
expr_do(Ctx, {promote_to, {atomize, #xqFunction{body = Body} = Expr1},#xqSeqType{type = #xqFunTest{type = Expr2}}}) ->
   %?dbg("Body",Body),
   expr_do(Ctx, Expr1#xqFunction{body = {promote_to, {atomize, Body}, Expr2}});
expr_do(Ctx, {promote_to, #xqFunction{body = Body} = Expr1,#xqSeqType{type = #xqFunTest{type = Expr2}}}) ->
   %?dbg("Body",Body),
   expr_do(Ctx, Expr1#xqFunction{body = {promote_to, Body, Expr2}});
expr_do(Ctx, {promote_to,Expr1,Expr2}) ->
   %?dbg("Body",{Expr1,Expr2}),
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,promote}},[expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)
   ]};

expr_do(_Ctx, #xqSeqType{type = Atom, occur = O}) when is_atom(Atom) ->
   {tuple,?L,[{atom,?L,xqSeqType},{atom,?L,Atom},{atom,?L,O}]};
expr_do(Ctx, #xqSeqType{type = #qname{namespace = N, prefix = Px, local_name = Ln}, occur = O}) ->
   Ns = maps:get(namespaces, Ctx),
   N1 = namespace_from_prefix(Px, Ns, N),
   case N1 of
      "http://www.w3.org/2001/XMLSchema" -> % only known types
         Atom = erlang:list_to_atom("xs:" ++ Ln),
         {tuple,?L,[{atom,?L,xqSeqType},{atom,?L,Atom},{atom,?L,O}]};
      "xqerl_xs" -> % only known types
         Atom = erlang:list_to_atom("xs:" ++ Ln),
         {tuple,?L,[{atom,?L,xqSeqType},{atom,?L,Atom},{atom,?L,O}]};
      _ ->
         xqerl_error:error('XPST0081')
   end;
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
   Exprs = lists:map(fun('empty-sequence') -> {nil,?L};
                        (E) ->
                           expr_do(Ctx, E)
                     end, [List]),
   abs_list(Exprs);
expr_do(Ctx, {direct_cons, Expr}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_node},{atom,?L,new_fragment}},
    [{var,?L,get_context_variable_name(Ctx)},
     expr_do(Ctx, Expr)]};
expr_do(Ctx, {comp_cons, Expr}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_node},{atom,?L,new_fragment}},
    [{var,?L,get_context_variable_name(Ctx)},
     expr_do(Ctx, Expr)]};

expr_do(Ctx, {atomize, #xqFunction{body = Body} = Expr1}) ->
   expr_do(Ctx, Expr1#xqFunction{body = {atomize, Body}});
expr_do(Ctx, {atomize, Expr0}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,atomize}},
    [expr_do(Ctx, Expr0)]};


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
expr_do(Ctx, {Op,Vars,Test}) when Op == every;
                                  Op == some->
 % add the variables to the stack
   VarNames = [{[],[],[],local_variable_name(Id)} || #xqVar{id = Id} <- Vars],
   VarTup = get_variable_tuple(Ctx, VarNames),

   {Gens,Ctx3} = lists:mapfoldl(fun(#xqVar{id = Id,
                             name = Name,
                             type = Type,
                             expr = Expr}, Ctx1) ->
                             VarName = local_variable_name(Id),
                             TmpVar = next_var_name(),
                             Ctx2 = add_variable({Name,Type,[],VarName}, Ctx1),
                             {[{generate,?L,
                                {var,?L,TmpVar},
                                {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,to_list}},
                                 [expr_do(Ctx1, Expr)]}},
                               {generate,?L,
                                {var,?L,VarName},
                                {cons,?L,
                                 {var,?L,TmpVar},
                                 {nil,?L}}
                              }],Ctx2}
                       end, Ctx,Vars),
   %?dbg("Gens",Gens),
   Ret = {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton}},
          [{tuple,?L,
            [{atom,?L,xqAtomicValue},{atom,?L,'xs:boolean'},
             {call,?L,
              {remote,?L,{atom,?L,lists},{atom,?L,
                                          case Op of
                                             every -> all;
                                             some -> any
                                          end
                                         }},
              [{'fun',?L,{clauses,
                          [{clause,?L,[VarTup],[],
                            [{op,?L,'==',
                              {call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}},
                               [{var,?L,get_context_variable_name(Ctx)},
                                  expr_do(Ctx3, Test)] } ,
                              abs_boolean(true)}]
                           }]}},
               {lc,?L,VarTup, lists:flatten(Gens)}
              ]}]}]},
   %?dbg("Ret",Ret),
   Ret;
%{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,expand_nodes}},[{block,?L, ListEx }]}

% ordering
expr_do(Ctx, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions", 
                                      local_name = "unordered"}, 1, Args}) ->
   VarName1 = next_var_name(),
   VarName2 = next_var_name(),
   {block,?L,[{match,?L,
    {var,?L,VarName1},
    {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_ordering_mode}},[{atom,?L,unordered}]}},
    {match,?L,{var,?L,VarName2},expr_do(Ctx, Args)},
   {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_ordering_mode}},[{var,?L,VarName1}]},
   {var,?L,VarName2}]};
expr_do(_Ctx, {'unordered-expr', 'empty-expr'}) -> xqerl_error:error('XPST0003');
expr_do(Ctx, {'unordered-expr', Expr}) ->
   VarName1 = next_var_name(),
   VarName2 = next_var_name(),
   {block,?L,[{match,?L,
    {var,?L,VarName1},
    {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_ordering_mode}},[{atom,?L,unordered}]}},
    {match,?L,{var,?L,VarName2},expr_do(Ctx, Expr)},
   {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_ordering_mode}},[{var,?L,VarName1}]},
   {var,?L,VarName2}]};
expr_do(_Ctx, {'ordered-expr', 'empty-expr'}) -> xqerl_error:error('XPST0003');
expr_do(Ctx, {'ordered-expr', Expr}) ->
   VarName1 = next_var_name(),
   VarName2 = next_var_name(),
   {block,?L,[{match,?L,
    {var,?L,VarName1},
    {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_ordering_mode}},[{atom,?L,ordered}]}},
    {match,?L,{var,?L,VarName2},expr_do(Ctx, Expr)},
   {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_ordering_mode}},[{var,?L,VarName1}]},
   {var,?L,VarName2}]};

% functions
%% expr_do(Ctx, [{'function-call', Name, Arity, Args}]) ->
%%    get_function_ref({Name,Arity,Args}, Ctx);
%% expr_do(Ctx, {'function-call', Name, Arity, Args}) ->
%%    get_function_ref({Name,Arity,Args}, Ctx);

%OK
expr_do(Ctx, {'function-call', #xqFunction{params = Params, body = {M,F,_A}}}) ->
   CtxName = get_context_variable_name(Ctx),
   NewArgs = lists:map(fun(P) ->
                             expr_do(Ctx,P)
                       end, Params),
   {call,?L,
    {remote,?L,
     {atom,?L,M},
     {atom,?L,F}},
    [{var,?L,CtxName}|NewArgs]};

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
     erl_term_abs(Annos), % annotations
     erl_term_abs(Name),  % name
     erl_term_abs(Ay),    % arity
     erl_term_abs(Params),% params
     erl_term_abs(Type),  % Type
     {'fun',?L,{'function',{atom,?L,xqerl_fn},{atom,?L,concat},{integer,?L,2}}}
     ]};
expr_do(_Ctx, #xqFunction{annotations = Annos, 
                          name = Name, 
                          arity = Ay, 
                          params = Params,
                          type = Type,
                          body = {M,F,A}}) ->
   %?dbg("Fn",Fn),
   {tuple,?L,
    [{atom,?L,xqFunction},
     {integer,?L,0},      % id
     erl_term_abs(Annos), % annotations
     erl_term_abs(Name),  % name
     erl_term_abs(Ay),    % arity
     erl_term_abs(Params),% params
     erl_term_abs(Type),  % Type
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
     erl_term_abs(Annos), % annotations
     erl_term_abs(Name),  % name
     erl_term_abs(Ay),    % arity
     erl_term_abs(Params),% params
     erl_term_abs(Type),  % Type
     {'fun',?L,{'function',F,A}}
     ]};

%OK
expr_do(Ctx, {'function-call', #xqFunction{params = Params, body = {F,_A}}}) ->
   CtxName = get_context_variable_name(Ctx),
   NewArgs = lists:map(fun(P) ->
                             expr_do(Ctx,P)
                       end, Params),
   {call,?L,
     {atom,?L,F},
    [{var,?L,CtxName}|NewArgs]};

%% % partial functions
%% expr_do(Ctx, [{'partial-function-call', _, _, _} = P]) ->
%%    expr_do(Ctx, P);
%% expr_do(Ctx, {'partial-function-call', Name, Arity, Args}) ->
%%    PlaceHolders = lists:flatmap(fun(Arg) ->
%%                                       if Arg == '?' ->
%%                                             VarName = next_var_name(),
%%                                             [{var,?L,VarName}];
%%                                          true ->
%%                                              []
%%                                       end
%%                                 end, Args),
%%    NextCtxVar = next_ctx_var_name(),
%%    Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
%%    {NewArgs, _Empty} = lists:mapfoldl(fun(Arg,PHs) ->
%%                                             if Arg == '?' ->
%%                                                   {hd(PHs),tl(PHs)};
%%                                                true ->
%%                                                   {Arg,PHs}
%%                                             end
%%                                       end, PlaceHolders, Args),
%%    InFun = get_function_ref({Name,Arity,NewArgs}, Ctx1),
%%    Body = {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}|PlaceHolders],[], [InFun] }]}},
%%    abs_function(Ctx, #xqFunction{name = Name,arity = Arity}, Body) ;

% list 
expr_do(Ctx, {expr,[#xqAtomicValue{} = Sing]}) ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton}},[expr_do(Ctx, Sing)]};
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
   %Stmts = [L || L <- List, L =/= 'empty-sequence'],
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
   Base = {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[{var,?L,CtxVar}]},
   step_expr_do(Ctx, Step, Base);

expr_do(_Ctx, {variable, {Name,1}}) when is_atom(Name) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_lib},{atom,?L,lget}},[{atom,?L,Name}]};
expr_do(Ctx, {variable, {Mod,Name}}) when is_atom(Mod),is_atom(Name) ->
   {call,?L,{remote,?L,{atom,?L,Mod},{atom,?L,Name}},[{var,?L,get_context_variable_name(Ctx)}]};
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
   % match next Ctx variable out
   {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,root}},
    [{var,?L,CurrCtxVar},{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[{var,?L,CurrCtxVar}]}]};
expr_do(Ctx, {'any-root'}) ->
   CurrCtxVar = get_context_variable_name(Ctx),
   % match next Ctx variable out
   {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,any_root}},
    [{var,?L,CurrCtxVar},{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[{var,?L,CurrCtxVar}]}]};

expr_do(Ctx, {postfix, {'function-ref',Q,V}, [{arguments,Args}]}) ->
   PlaceHolders = lists:flatmap(fun(Arg) ->
                                      if Arg == '?' ->
                                            VarName = next_var_name(),
                                            [{var,?L,VarName}];
                                         true ->
                                             []
                                      end
                                end, Args),
   {NewArgs, _Empty} = lists:mapfoldl(fun(Arg,PHs) ->
                                            if Arg == '?' ->
                                                  {hd(PHs),tl(PHs)};
                                               true ->
                                                  {Arg,PHs}
                                            end
                                      end, PlaceHolders, Args),
   ArgAbs = lists:map(fun({var,_,_} = Arg) ->
                            Arg;
                         (Arg) ->
                            expr_do(Ctx, Arg)                      
                      end, NewArgs),
   CtxVar = get_context_variable_name(Ctx),
   NextVar = next_var_name(),
   if PlaceHolders == [] ->
         {block,?L, 
             [{match,?L,{var,?L,NextVar},
               {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},[
                expr_do(Ctx, {'function-ref',Q,V})% this is a fun
               ]}},
              {call,?L,
               {var,?L,NextVar},
               [{var,?L,CtxVar}|ArgAbs]}
              ]
             };
      true -> % has placeholders, so only a ref to new function
         {'fun',?L,{clauses,[{clause,?L,[{var,?L,CtxVar}|PlaceHolders],[],
                              [{match,?L,{var,?L,NextVar},
                                {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},[
                                 expr_do(Ctx, {'function-ref',Q,V})% this is a fun
                                  ]}},
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
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
    [{var,?L,CtxVar},MapExpr, ValExp]};
expr_do(Ctx, {postfix, Map, [{map_lookup, wildcard}]}) ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = expr_do(Ctx, Map),
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
    [{var,?L,CtxVar},MapExpr,{atom,?L,all}]};
expr_do(Ctx, {postfix, Map, [{map_lookup, Val}]}) ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = expr_do(Ctx, Map),
   ValExp =  expr_do(Ctx, Val),
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
    [{var,?L,CtxVar},MapExpr,ValExp]};

% array unary lookups
expr_do(Ctx, {postfix, Map, [{array_lookup, {sequence,_} = Val}]}) ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = expr_do(Ctx, Map),
   ValExp =  expr_do(Ctx, Val),
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
    [{var,?L,CtxVar},MapExpr, ValExp]};
expr_do(Ctx, {postfix, Map, [{array_lookup, wildcard}]}) ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = expr_do(Ctx, Map),
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
    [{var,?L,CtxVar},MapExpr,{atom,?L,all}]};
expr_do(Ctx, {postfix, Map, [{array_lookup, Val}]}) ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = expr_do(Ctx, Map),
   ValExp =  expr_do(Ctx, Val),
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
    [{var,?L,CtxVar},MapExpr,ValExp]};

expr_do(Ctx, {LU, Val}) when LU == array_lookup;
                             LU == map_lookup ->
   CtxVar = get_context_variable_name(Ctx),
   MapExpr = {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[{var,?L,CtxVar}]},
   ValExp = if Val == wildcard ->
                  {atom,?L,all};
               true ->
                  expr_do(Ctx, Val)
            end,
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
    [{var,?L,CtxVar},MapExpr,ValExp]};

%% expr_do(Ctx, {postfix, InlineFunc, [{arguments,Args}|TArgs]}) ->
%%    PlaceHolders = lists:flatmap(fun(Arg) ->
%%                                       if Arg == '?' ->
%%                                             VarName = next_var_name(),
%%                                             [{var,?L,VarName}];
%%                                          true ->
%%                                              []
%%                                       end
%%                                 end, Args),
%%    {NewArgs, _Empty} = lists:mapfoldl(fun(Arg,PHs) ->
%%                                             if Arg == '?' ->
%%                                                   {hd(PHs),tl(PHs)};
%%                                                true ->
%%                                                   {Arg,PHs}
%%                                             end
%%                                       end, PlaceHolders, Args),
%%    ArgAbs = lists:map(fun({var,_,_} = Arg) ->
%%                             Arg;
%%                          (Arg) ->
%%                             expr_do(Ctx, Arg)                      
%%                       end, NewArgs),
%%    CtxVar = get_context_variable_name(Ctx),
%%    NextVar = next_var_name(),
%%    TempVar = next_var_name(),
%%    Fx = expr_do(Ctx, InlineFunc),% this is a fun
%%    %?dbg("Fx",Fx),
%%    Block = {block,?L, 
%%        [{match,?L,{var,?L,NextVar},
%%          {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,value}},[
%%           Fx% this is a fun, or map or array...
%%          ]}},
%%          {'case',?L,{var,?L,NextVar},[
%%            {clause,?L,
%%             [{tuple,?L,[{atom,?L,xqFunction},{var,?L,'_'},{var,?L,'_'},{var,?L,'_'},
%%                         {var,?L,'_'},{var,?L,'_'},{var,?L,'_'},{var,?L,TempVar}]}],
%%             [],
%%             [{call,?L,{var,?L,TempVar},[{var,?L,CtxVar}|ArgAbs]}
%%             ]}
%%           ,
%%            {clause,?L,
%%             [{var,?L,'_'}],
%%             [[{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_map}},[{var,?L,NextVar}]}]],
%%             [{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
%%               [{var,?L,CtxVar},{var,?L,NextVar},if ArgAbs == [] ->
%%                                                       {nil,?L};
%%                                                    true ->
%%                                                       hd(ArgAbs)
%%                                                 end]}
%%             ]}
%%           ,
%%            {clause,?L,
%%             [{match,?L,{tuple,?L,[{atom,?L,array},{var,?L,'_'}]},{var,?L,TempVar}}],
%%             [],
%%             [{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
%%               [{var,?L,CtxVar},{var,?L,TempVar},if ArgAbs == [] ->
%%                                                       {nil,?L};
%%                                                    true ->
%%                                                       hd(ArgAbs)
%%                                                 end]}
%%             ]}
%%           ,
%%            {clause,?L,
%%             [{var,?L,'_'}],
%%             [],
%%             [{'case',?L,{op,?L,'==', {var,?L,NextVar}, {'fun',?L,{function,{atom,?L,xqerl_fn},{atom,?L,concat},{integer,?L,2}}}},
%%               [{clause,?L,
%%                 [{atom,?L,true}],
%%                 [],
%%                 [{call,?L,{var,?L,NextVar},
%%                   [{var,?L,CtxVar},
%%                    from_list_to_seq(ArgAbs)
%%                   ]}]},
%%                {clause,?L,
%%                 [{var,?L,'_'}],
%%                 [],
%%                 [{call,?L,{var,?L,NextVar},[{var,?L,CtxVar}|ArgAbs]}]}]
%%                }]}
%%           ] % clauses   expr_do(Ctx, RetExpr)
%%          }        
%%         ]
%%        },
%%    if TArgs == [] ->
%%          Block;
%%       true ->
%%          TempVar1 = next_var_name(),
%%          {block,?L,
%%           [{match,?L,{var,?L,TempVar1}, Block},
%%            expr_do(Ctx, {postfix, {variable,TempVar1}, TArgs})
%%            ]}
%%    end;

expr_do(Ctx, {postfix, Base, Preds }) when is_list(Preds) ->
   Source = expr_do(Ctx, Base),
   CtxVar = get_context_variable_name(Ctx),
   PredFuns = lists:foldl(fun({LU, {sequence,_} = Val}, Abs) when LU == map_lookup;
                                                                  LU == array_lookup ->
                                ValExp =  expr_do(Ctx, Val),
                                {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
                                 [{var,?L,CtxVar},Abs, ValExp]};
                             ({LU, wildcard}, Abs) when LU == map_lookup;
                                                        LU == array_lookup ->
                                {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
                                 [{var,?L,CtxVar},Abs,{atom,?L,all}]};
                             ({LU, #xqAtomicValue{} = Val}, Abs) when LU == map_lookup;
                                                                      LU == array_lookup ->
                                ValExp =  expr_do(Ctx, Val),
                                {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
                                 [{var,?L,CtxVar},Abs,ValExp]};
                             ({LU, Val}, Abs) when LU == map_lookup;
                                                   LU == array_lookup ->
                                ValExp =  expr_do(Ctx, Val),
                                {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
                                 [{var,?L,CtxVar},Abs,ValExp]};
                             ({positional_predicate, P}, Abs) ->
                              NextCtxVar = next_ctx_var_name(),
                              Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
                              case P of
                                 {variable, Name} -> 
                                    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                     [{var,?L,CtxVar},
                                      {var,?L,Name},
                                      Abs]};
                                 #xqAtomicValue{} = A -> % positional predicate
                                    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                     [{var,?L,CtxVar},
                                      abs_simp_atomic_value(A), 
                                      Abs]};
                                 [#xqAtomicValue{} = A] -> % positional predicate
                                    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                     [{var,?L,CtxVar},
                                      abs_simp_atomic_value(A), 
                                      Abs]};
                                 #xqVarRef{name = Name} -> 
                                    {VarAbs,#xqSeqType{type = VarType}} = get_variable_ref(Name, Ctx),
                                    if ?numeric(VarType) ->
                                          {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                           [{var,?L,CtxVar},
                                            VarAbs,
                                            Abs]};
                                       true ->
                                          {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                           [{var,?L,CtxVar},
                                            %expr_do(Ctx, P), 
                                            {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, P))}]}}, 
                                            Abs
                                            ]}
                                    end;
                                 [#xqVarRef{name = Name}] -> 
                                    {VarAbs,#xqSeqType{type = VarType}} = get_variable_ref(Name, Ctx),
                                    if ?numeric(VarType) ->
                                          {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                           [{var,?L,CtxVar},
                                            VarAbs,
                                            Abs]};
                                       true ->
                                          {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                           [{var,?L,CtxVar},
                                            %expr_do(Ctx, P), 
                                            {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, P))}]}}, 
                                            Abs
                                            ]}
                                    end;
                                 _ ->
                                    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                     [{var,?L,CtxVar},
                                      %expr_do(Ctx, P), 
                                      {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, P))}]}}, 
                                      Abs
                                      ]}
                              end;
                             ({predicate, P}, Abs) ->
                              NextCtxVar = next_ctx_var_name(),
                              Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
                                    %?dbg("P",P),
                                    case P of
                                       #xqAtomicValue{type = Type} = A when ?numeric(Type) -> % positional predicate
                                          {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                           [{var,?L,CtxVar},{cons,?L,abs_simp_atomic_value(A),{nil,?L}}, Abs]};
                                       [#xqVarRef{name = Name}] -> % positional predicate
                                          {VarAbs,#xqSeqType{type = VarType}} = get_variable_ref(Name, Ctx),
                                          if ?numeric(VarType) ->
                                                {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                                 [{var,?L,CtxVar},
                                                  {cons,?L,VarAbs,{nil,?L}}, Abs]};
                                             true ->
                                                {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,filter}},
                                                 [{var,?L,CtxVar},
                                                   {'fun',?L,{clauses,
                                                              [{clause,?L,[{var,?L,NextCtxVar}],[],
                                                                %[{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,eff_bool_val}},
                                                                  alist(expr_do(Ctx1, P))%}]
                                                                }]}} ,
                                                   Abs]}
                                          end;
                                       _ ->
                                          {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,filter}},
                                           [{var,?L,CtxVar},
                                             {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], 
                                                                %[{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,eff_bool_val}},
                                                                  alist(expr_do(Ctx1, P))%}]
                                                                 }]}} ,
                                             Abs]}
                                    end;
                             ({arguments, Args}, Abs) ->
                                 PlaceHolders = lists:flatmap(fun(Arg) ->
                                                                    if Arg == '?' ->
                                                                          VarName = next_var_name(),
                                                                          [{var,?L,VarName}];
                                                                       true ->
                                                                           []
                                                                    end
                                                              end, Args),
                                 {NewArgs, _Empty} = lists:mapfoldl(fun(Arg,PHs) ->
                                                                          if Arg == '?' ->
                                                                                {hd(PHs),tl(PHs)};
                                                                             true ->
                                                                                {Arg,PHs}
                                                                          end
                                                                    end, PlaceHolders, Args),
                                 %?dbg(?LINE,Args),
                                 %?dbg(?LINE,PlaceHolders),
                                 %?dbg(?LINE,NewArgs),
                                 ArgAbs = lists:map(fun({var,_,_} = Arg) ->
                                                          Arg;
                                                       (Arg) ->
                                                          expr_do(Ctx, Arg)                      
                                                    end, NewArgs),
                                 NextCtxVar2 = next_ctx_var_name(),
                                 NextVar2 = next_var_name(),
                                 %{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,map}},
                                 % [{var,?L,CtxVar},                                      
                                  if PlaceHolders == [] ->
                                    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,val_map}},
                                     [%{var,?L,CtxVar},
                                      {'fun',?L,{clauses,
                                                [{clause,?L,
                                                  [{var,?L,NextVar2}],
                                                  [[{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_map}},[{var,?L,NextVar2}]}]],
                                                  [{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
                                                    [{var,?L,CtxVar},{var,?L,NextVar2},
                                                     if ArgAbs == [] -> {nil,?L};
                                                        true -> hd(ArgAbs)
                                                     end]}]},
                                                 {clause,?L,[{nil,?L}],[],
                                                  [{call,?L,{remote,?L,{atom,?L,xqerl_error},{atom,?L,error}},[{atom,?L,'XPTY0004'}]}]},
                                                 {clause,?L,
                                                  [{cons,?L,{var,?L,NextVar2},{nil,?L}}],
                                                  [[{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_map}},[{var,?L,NextVar2}]}]],
                                                  [{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
                                                    [{var,?L,CtxVar},{var,?L,NextVar2},
                                                     if ArgAbs == [] -> {nil,?L};
                                                        true -> hd(ArgAbs)
                                                     end]}]},
                                                 {clause,?L,
                                                  [{match,?L,{tuple,?L,[{atom,?L,array},{var,?L,'_'}]},{var,?L,NextVar2}}],
                                                  [],
                                                  [{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
                                                    [{var,?L,CtxVar},{var,?L,NextVar2},
                                                     if ArgAbs == [] -> {nil,?L};
                                                        true -> hd(ArgAbs)
                                                     end]}]},
                                                 {clause,?L,
                                                  [{var,?L,NextCtxVar2}|PlaceHolders],
                                                  [],
                                                  [{match,?L,{var,?L,NextVar2},
                                                    {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,value}},[Abs]}},
                                                   % check if its a function or not
                                                   {'if',?L,
                                                    [{clause,?L,[],
                                                      [[{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_function}},[{var,?L,NextVar2}]}]],
                                                         [{'case',?L,{op,?L,'==', 
                                                                      {var,?L,NextVar2}, 
                                                                      {'fun',?L,{function,{atom,?L,xqerl_fn},{atom,?L,concat},{integer,?L,2}}}},
                                                           [{clause,?L,
                                                             [{atom,?L,true}],
                                                             [],
                                                             [{call,?L,{var,?L,NextVar2},
                                                               [{var,?L,CtxVar},
                                                                from_list_to_seq(ArgAbs)
                                                               ]}]},
                                                            {clause,?L,
                                                             [{var,?L,'_'}],
                                                             [],
                                                             [{call,?L,{var,?L,NextVar2},[{var,?L,CtxVar}|ArgAbs]}]}]
                                                            }]},
                                                     {clause,?L,[],
                                                      [[{atom,?L,true}]],
                                                      [{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,lookup}},
                                                       [{var,?L,CtxVar},{var,?L,NextVar2},
                                                        if ArgAbs == [] -> {nil,?L};
                                                           true -> hd(ArgAbs)
                                                        end]}]
                                                      }
                                                    ]}
                                                     ]}
                                                ]}}, Abs
                                     ]};
                                  true ->
                                     {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar2}|PlaceHolders],[], 
                                                          [{match,?L,{var,?L,NextVar2},
                                                            {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,value}},[
                                                             Abs % this is a fun
                                                            ]}},
                                                           {call,?L,{var,?L,NextVar2},[{var,?L,NextCtxVar2}|ArgAbs]}
                                                           ]
                                                          }]}}
                                 end
                                 % Abs
                                 % ]}
                          end, Source, Preds),
   %?dbg("PredFuns",PredFuns),
   PredFuns;

%% abs_kind_test

% node sequences
expr_do(Ctx, {'intersect', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,intersect}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'union', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,union}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'except', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,except}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};


expr_do(Ctx, #xqVarRef{name = Name}) ->
   {V,_} = get_variable_ref(Name, Ctx),
   V;

expr_do(Ctx, {'switch', RootExpr, [Cases, {'default', DefaultExpr}]}) ->
   RootVariable = next_var_name(),
   RootVarSet = {match,?L,{var,?L,RootVariable},
                 {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,value}}, [
                 {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,atomize}},[
                 {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},
                  [expr_do(Ctx,RootExpr)]}]}]}},
   DefaultRet = alist(expr_do(Ctx,DefaultExpr)),
   % cases are {[MatchExprs], {return, ReturnExpr}}
   %?dbg("DefaultRet",DefaultRet),
   IfStatements = (catch
     lists:foldr(fun({MatchExprs, {return, ReturnExpr}},Abs) ->
                       MatchExprs2 = if MatchExprs == [] -> % match the empty sequence
                                           [[]];
                                        true ->
                                           MatchExprs
                                     end,
                       ReturnAbs = expr_do(Ctx, ReturnExpr),
                       %?dbg("MatchExprs",MatchExprs),
                       lists:foldr(fun(MatchExpr, Abs1) ->
                                         Var = next_var_name(),
                                         [{match,?L,{var,?L,Var}, 
                                           {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,value}}, [
                                            {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,atomize}},[
                                             {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},
                                              [expr_do(Ctx,MatchExpr)]}]}]}},
                                          {'if',?L,
                                           [{clause,?L,[],
                                             [[{op,?L,'==',{var,?L,RootVariable},{var,?L,Var}}]],
                                             [ReturnAbs]},
                                            {clause,?L,[],
                                             [[{atom,?L,true}]],
                                             Abs1}                                            
                                            ]}
                                          ]
                                   end, Abs, MatchExprs2)
                 end, DefaultRet, Cases)),
   %?dbg("IfStatements",IfStatements),
   Ret = {block,?L,[RootVarSet|IfStatements]},
   %?dbg("Ret",Ret),
   Ret;

expr_do(Ctx, {'typeswitch', RootExpr, CasesDefault}) ->
   CaseVar = next_var_name(),
   %?dbg("CasesDefault",CasesDefault),
   ExpandedCases = lists:flatmap(
                     fun({'case-var',{'types', Types},XqVar}) ->
                           lists:map(fun(Type) ->
                                           {'case-var',{'type', Type}, XqVar}
                                     end, Types);
                        ({'case-novar',{'types', Types},XqVar}) ->
                           lists:map(fun(Type) ->
                                           {'case-novar',{'type', Type}, XqVar}
                                     end, Types);
                        (Def) ->
                           [Def]
                     end, CasesDefault),
   %?dbg("ExpandedCases",ExpandedCases),
   [CaseNestExprs] = lists:foldr(
                     fun({'case-var',{'type', Type},#xqVar{id = Id, name = Name, expr = RetExpr}}, Acc) ->
                           VarName = local_variable_name(Id),
                           NewVar  = {Name,Type,[],VarName},
                           NewCtx  = add_variable(NewVar, Ctx),
                           [{'case',?L,
                            {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,instance_of}},[{var,?L,CaseVar},abs_seq_type(Ctx,Type)]},
                            [
                             {clause,?L,[abs_boolean(true)],[],
                              [{block,?L,
                              [{match,?L,{var,?L,VarName},{var,?L,CaseVar}},expr_do(NewCtx, RetExpr)
                               ]}]},
                             {clause,?L,[{var,?L,'_'}  ],[],Acc}
                             ] % clauses   expr_do(Ctx, RetExpr)
                           }];
                        ({'case-novar',{'type', Type},{return,RetExpr}}, Acc) ->
                           [{'case',?L,
                            {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,instance_of}},[{var,?L,CaseVar},abs_seq_type(Ctx,Type)]},
                            [
                             {clause,?L,[abs_boolean(true)],[],alist(expr_do(Ctx, RetExpr))},
                             {clause,?L,[{var,?L,'_'}  ],[],Acc}
                             ] % clauses   expr_do(Ctx, RetExpr)
                           }];
                        ({'def-var',#xqVar{id = Id, name = Name, type = Type, expr = RetExpr}}, _Acc) ->
                           VarName = local_variable_name(Id),
                           NewVar  = {Name,Type,[],VarName},
                           NewCtx  = add_variable(NewVar, Ctx),
                          [{block,?L,
                           [{match,?L,{var,?L,VarName},{var,?L,CaseVar}},
                            expr_do(NewCtx, RetExpr)]}];
                        ({'def-novar',{return,RetExpr}}, _Acc) ->
                           alist(expr_do(Ctx, RetExpr))
                     end, [{nil,?L}], ExpandedCases),   
   %?dbg("CaseNestExprs",CaseNestExprs),
   {block,?L,[
    {match,?L,{var,?L,CaseVar}, expr_do(Ctx,RootExpr)},
    CaseNestExprs
   ]};

expr_do(Ctx, {'if-then-else', If, Then, Else}) ->
   {'case',?L,
    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}}, [
    {call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}}, [{var,?L,get_context_variable_name(Ctx)}, expr_do(Ctx, If)] }]},
    [{clause,?L,[abs_boolean(true)],[],alist(expr_do(Ctx, Then))},
     {clause,?L,[{var,?L,'_'}  ],[],alist(expr_do(Ctx, Else))}]};
expr_do(Ctx, {'=', Expr1, Expr2}) ->
    %{call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}}, [{var,?L,get_context_variable_name(Ctx)}, 
    {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,general_compare}},
    [{atom,?L,'='},expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]}; %]};
expr_do(Ctx, {'!=', Expr1, Expr2}) ->
   %{call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}}, [{var,?L,get_context_variable_name(Ctx)}, 
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,general_compare}},
   [{atom,?L,'!='},expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]}; %]};
expr_do(Ctx, {'>', Expr1, Expr2}) ->
   %{call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}}, [{var,?L,get_context_variable_name(Ctx)}, 
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,general_compare}},
   [{atom,?L,'>'},expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]}; %]};
expr_do(Ctx, {'>=', Expr1, Expr2}) ->
   %{call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}}, [{var,?L,get_context_variable_name(Ctx)}, 
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,general_compare}},
   [{atom,?L,'>='},expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]}; %]};
expr_do(Ctx, {'<', Expr1, Expr2}) ->
   %{call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}}, [{var,?L,get_context_variable_name(Ctx)}, 
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,general_compare}},
   [{atom,?L,'<'},expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]}; %]};
expr_do(Ctx, {'<=', Expr1, Expr2}) ->
   %{call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}}, [{var,?L,get_context_variable_name(Ctx)}, 
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,general_compare}},
   [{atom,?L,'<='},expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]}; %]};

expr_do(Ctx, {'eq', Expr1, Expr2}) -> % can return the empty-sequence
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,equal}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'ne', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,not_equal}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'lt', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,less_than}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'le', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,less_than_eq}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'gt', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,greater_than}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'ge', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,greater_than_eq}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};

expr_do(Ctx, {'add', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,add}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'subtract', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,subtract}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'multiply', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,multiply}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'divide', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,divide}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'integer-divide', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,idivide}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'modulo', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,modulo}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'<<', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,node_before}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'>>', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,node_after}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'is', Expr1, Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,node_is}},
   [expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)]};
expr_do(Ctx, {'unary', '-', Expr1}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,unary_minus}},
   [expr_do(Ctx, Expr1)]};
expr_do(Ctx, {'unary', '+', Expr1}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,unary_plus}},
   [expr_do(Ctx, Expr1)]};

expr_do(_Ctx, 'empty-sequence') ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,empty}},[]};
expr_do(_Ctx, 'empty-expr') ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,empty}},[]};

% each position of the flwor is put in its own function.
% every function is a tail call to the next section and self.
expr_do(Ctx, #xqFlwor{id = RetId, loop = Loop, return = Return}) ->
   Ctx1 = Ctx#{grp_variables => []}, % Clear any grouping variables
   VarTup = get_variable_tuple_name(Ctx1),
   {_NewCtx,In,Out} = flwor(Ctx1, Loop, RetId, Return, [], [],VarTup, false),
   add_global_funs(Out),
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,flatten}}, [{block,?L,alist(In)}]};

expr_do(Ctx, [Sing]) ->
   expr_do(Ctx, Sing);
expr_do(Ctx, List) when is_list(List) ->
   Exprs = lists:map(fun(E) ->
                           expr_do(Ctx, E)
                     end, List),
   abs_list(Exprs);
   %from_list_to_seq(Exprs);

expr_do(_Ctx, Expr) ->
   ?dbg("TODO", Expr),
   {nil,?L}.


% return clause end loop and returns {NewCtx,Internal,Global}
flwor(Ctx, [], RetId, Return, Internal, Global,TupleVar,Inline) ->
   %?dbg("get_variable_tuple(Ctx)",get_variable_tuple(Ctx)),
   %?dbg("{Inline,TupleVar}",{Inline,TupleVar}),
   FunctionName = glob_fun_name({return,RetId}),
   CurrContext = get_context_variable_name(Ctx),
   NextTupleVar = next_var_tuple_name(),
   {NewCtx,FunAbs} = return_part(Ctx, {RetId,Return}),
   %?dbg("variables",maps:get(variables, NewCtx)),
   if Inline == true ->
         %?dbg("Internal",Internal),
         NewCtx1 = set_variable_tuple_name(NewCtx, TupleVar),
         {NewCtx1,Internal,FunAbs ++ Global};
      true ->
         NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
         NewInt = Internal ++ [{call,?L,{atom,?L,FunctionName},[{var,?L,CurrContext},{var,?L, TupleVar}]}],
         %?dbg("NewInt",NewInt),
         {NewCtx1,NewInt,FunAbs ++ Global}
   end;

% (for|let)/return
flwor(Ctx, [{Curr,_} = F], RetId, Return, Internal, Global,TupleVar,Inline) when Curr == 'let';
                                                                                 Curr == 'for' ->
   Vars = case get_variable_tuple(Ctx) of
             {nil,_} ->
                {atom,?L,new};
             O ->
                O
          end,
   NextTupleVar = if TupleVar == [] ->
                        next_var_tuple_name();
                     Inline == false ->
                        next_var_tuple_name();
                     true ->
                        TupleVar
                  end,
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name(F),
   NextFun = glob_fun_name({return, RetId}),
   {NewCtx,FunAbs} = if Curr == 'let' ->
                           let_part(Ctx, F, NextFun);
                        true ->
                           for_loop(Ctx, F, NextFun)
                     end,
   NewInternal = if Internal == [] ->
                       Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},Vars]}}];
                    Inline == false ->
                       Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},{var,?L,TupleVar}]}}];
                    true ->
                       Internal
                 end,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, [], RetId, Return, NewInternal, FunAbs ++ Global,NextTupleVar,true);

% for/let
flwor(Ctx, [{Curr,_} = F,{Next,_} = N|T], RetId, Return, Internal, Global,TupleVar,Inline) when Curr == 'let', Next == 'let';
                                                                                                Curr == 'let', Next == 'for';
                                                                                                Curr == 'for', Next == 'let';
                                                                                                Curr == 'for', Next == 'for' ->
   Vars = case get_variable_tuple(Ctx) of
             {nil,_} ->
                {atom,?L,new};
             O ->
                O
          end,
   NextTupleVar = if TupleVar == [] ->
                        next_var_tuple_name();
                     Inline == false ->
                        next_var_tuple_name();
                     true ->
                        TupleVar
                  end,
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name(F),
   NextFun = glob_fun_name(N),
   {NewCtx,FunAbs} = if Curr == 'let' ->
                           let_part(Ctx, F, NextFun);
                        true ->
                           for_loop(Ctx, F, NextFun)
                     end,
   NewInternal = if Internal == [] ->
                       Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},Vars]}}];
                    Inline == false ->
                       Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},{var,?L,TupleVar}]}}];
                    true ->
                       Internal
                 end,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, [N|T], RetId, Return, NewInternal, FunAbs ++ Global,NextTupleVar,true);

% for/other
flwor(Ctx, [{Curr,_} = F|T], RetId, Return, Internal, Global,TupleVar,Inline) when Curr == 'let';
                                                                                   Curr == 'for' ->
   Vars = case get_variable_tuple(Ctx) of
             {nil,_} ->
                {atom,?L,new};
             O ->
                O
          end,
   NextTupleVar = if TupleVar == [] ->
                        next_var_tuple_name();
                     Inline == false ->
                        next_var_tuple_name();
                     true ->
                        TupleVar
                  end,
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name(F),
   {NewCtx,FunAbs} = if Curr == 'let' ->
                           let_part(Ctx, F, []);
                        true ->
                           for_loop(Ctx, F, [])
                     end,
   NewInternal = if Internal == [] ->
                       Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},Vars]}}];
                    Inline == false ->
                       Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},{var,?L,TupleVar}]}}];
                    true ->
                       Internal
                 end,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, FunAbs ++ Global,NextTupleVar,false);

flwor(Ctx, [#xqWindow{win_variable = #xqVar{id = Id}} = F|T], RetId, Return, Internal, Global,TupleVar,Inline) ->
   Vars = case get_variable_tuple(Ctx) of
             {nil,_} ->
                {atom,?L,new};
             O ->
                O
          end,
   NextTupleVar = if TupleVar == [] ->
                        next_var_tuple_name();
                     Inline == false ->
                        next_var_tuple_name();
                     true ->
                        TupleVar
                  end,
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name({window,Id}),
   {NewCtx,FunAbs} = window_loop(Ctx, F, []),
   NewInternal = if Internal == [] ->
                       Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},Vars]}}];
                    Inline == false andalso TupleVar =/= [] ->
                       Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},{var,?L,TupleVar}]}}];
                    true ->
                       Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},Vars]}}]
                 end,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, FunAbs ++ Global,NextTupleVar,false);

% where
flwor(Ctx, [{where,{Id,_}} = W|T], RetId, Return, Internal, Global,TupleVar,_Inline) ->
   NextTupleVar = next_var_tuple_name(),
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name({where,Id}),
   {NewCtx,FunAbs} = where_part(Ctx, W, []),
   NewInternal = Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},{var,?L,TupleVar}]}}],
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, FunAbs ++ Global,NextTupleVar,false);

% count
flwor(Ctx, [{count,_} = C|T], RetId, Return, Internal, Global,TupleVar,_Inline) ->
   NextTupleVar = next_var_tuple_name(),
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name(C),
   {NewCtx,FunAbs} = count_part(Ctx, C, []),
   NewInternal = Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},{var,?L,TupleVar}]}}],
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, FunAbs ++ Global,NextTupleVar,false);

% group
flwor(Ctx, [{group_by,Id,_} = F|T], RetId, Return, Internal, Global,TupleVar,_Inline) ->
   NextTupleVar = next_var_tuple_name(),
   CurrContext = get_context_variable_name(Ctx),
   ThisFun = glob_fun_name({group_by,Id}),
   {NewCtx,FunAbs} = group_part(Ctx, F),
   NewInternal = Internal ++ [{match,?L,{var,?L,NextTupleVar},{call,?L,{atom,?L,ThisFun},[{var,?L,CurrContext},{var,?L,TupleVar}]}}],
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, FunAbs ++ Global,NextTupleVar,false);

% order
flwor(Ctx, [{order_by,Exprs}|T], RetId, Return, Internal, Global,TupleVar,_Inline) ->
   %?dbg("Exprs",Exprs),
   NextTupleVar = next_var_tuple_name(),
   VarTup = get_variable_tuple(Ctx),
   Funs = lists:foldr(fun({order, Expr, {modifier,{_,Dir},{_,Empty},{_,_Collation}}},Acc) ->
                           {cons,?L,
                            {tuple,?L, [{'fun',?L,{clauses,
                                          [{clause,?L,[VarTup],[],
                                            [{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},
                                              [expr_do(Ctx, Expr)]}]}]}},
                                         {atom,?L,Dir},{atom,?L,Empty}]}
                            , Acc} 
                      end, {nil,?L}, alist(Exprs)),
   NewInternal = Internal ++ [{match,?L,{var,?L,NextTupleVar},
                               {call,?L,{remote,?L,{atom,?L,xqerl_flwor},
                                         {atom,?L,orderbyclause}},
                                [{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,flatten}},
                                           [{var,?L,TupleVar}]},
                                 Funs]}}],
   NewCtx = set_variable_tuple_name(Ctx, NextTupleVar),
   flwor(NewCtx, T, RetId, Return, NewInternal, Global, NextTupleVar, false).

return_part(Ctx,{Id, Expr}) ->
   FunctionName = glob_fun_name({return,Id}),
   OldVariableTupleMatch = get_variable_tuple(Ctx),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   InLine = attribute(compile, {inline,{FunctionName,2}}),
   RetFun = {function, ?L, FunctionName, 2,
              [{clause,?L, [{var,?L, '_'},{nil,?L}],
                [], % guards
                [{nil,?L}
                ]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'List'}],
                [[{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'List'}]}]], % guards
                [{lc,?L,
                  {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'}]},
                  [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]}
                ]},
               {clause,?L, [{var,?L, 'Ctx'},OldVariableTupleMatch],[], % guards
                [expr_do(LocCtx,Expr)]
               }]},
   {Ctx,[InLine, RetFun]}.

where_part(Ctx,{'where',{Id, Expr}},_NextFunAtom) ->
   FunctionName = glob_fun_name({where, Id}),
   OldVariableTupleMatch = get_variable_tuple(Ctx),
   InLine = attribute(compile, {inline,{FunctionName,2}}),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   WhereFun = {function, ?L, FunctionName, 2,
              [{clause,?L, [{var,?L, '_'},{nil,?L}],
                [], % guards
                [{nil,?L}
                ]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'Stream'}],
                [[{op,?L,'not',{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'Stream'}]}}]], % guards
                [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{cons,?L,{var,?L,'Stream'},{nil,?L}}]}]},
               {clause,?L, [{var,?L, 'Ctx'},{cons,?L,OldVariableTupleMatch,{var,?L,'T'}}],
                [], % guards
                [{match,?L,{var,?L,'True'}, 
                  {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,eff_bool_val}},
                   [expr_do(LocCtx,Expr)]}},
                 {'if',?L,
                  [{clause,?L,[],
                    [[{op,?L,'==',{var,?L,'True'},{atom,?L,true}} ]],
                    [
                     {cons,?L,
                      OldVariableTupleMatch, 
                      {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'}]}} 
                    ]},
                   {clause,?L,[],
                    [[{atom,?L,true}]],
                    [
                     {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'}]}
                    ]}]}
                ]}]},
   {Ctx,[InLine,WhereFun]}.

count_part(Ctx,{'count',#xqVar{id = Id,
                               name = Name}} = Part,NextFunAtom) ->
   VarName = local_variable_name(Id),
   NewVar  = {Name,#xqSeqType{type = 'xs:integer', occur = 'one'},[],VarName},
   FunctionName = glob_fun_name(Part),
   NewCtx  = add_grouping_variable(NewVar, Ctx),
   OldVariableTupleMatch = get_variable_tuple(Ctx),
   NewVariableTupleMatch = get_variable_tuple(NewCtx),
   CntFun1 = {function, ?L, FunctionName, 2,
              [{clause,?L, [{var,?L, 'Ctx'},{var,?L, 'Stream'}],[], % guards
                [{call,?L,
                  {atom,?L,FunctionName},
                  [{var,?L,'Ctx'},{integer,?L,1}, {var,?L, 'Stream'}]}]
               }]},
   CntFun2 = {function, ?L, FunctionName, 3,
              [{clause,?L, [{var,?L, '_'},
                            % H|T list
                            {var,?L, '_'},
                            {nil,?L}
                           ],[], % guards
                [{nil,?L}]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'Pos'},{cons,?L,OldVariableTupleMatch,{var,?L,'T'}} ],[], % guards
                [{match,?L,{var,?L,VarName}, 
                  {tuple,?L,[ atom_or_string(xqAtomicValue),
                              atom_or_string('xs:integer'),
                              {var,?L,'Pos'} ]}},
                  {cons,?L,
                   if NextFunAtom == [] ->
                         NewVariableTupleMatch;
                      true ->
                         {call,?L,{atom,?L,NextFunAtom},[{var,?L,'Ctx'},NewVariableTupleMatch]}
                   end,
                   {call,?L,
                    {atom,?L,FunctionName},
                    [{var,?L,'Ctx'},{op,?L,'+',{var,?L,'Pos'},{integer,?L,1}},{var,?L,'T'}]}
                  }
                ]
               }
              ]},
   {NewCtx,[CntFun1,CntFun2]}.

group_part(#{grp_variables := GrpVars,
             variables     := Vars} = Ctx, {group_by,Id,Clauses}) ->
   % 1. seperate the local/group-able variables from the out-of-scope variables.
   AllInScopeVars = [N || {_,_,_,N} <- Vars, is_atom(N)],
   GroupVars      = [N || {_,_,_,N} <- GrpVars],
   OuterVars      = AllInScopeVars -- GroupVars,
   %?dbg("{AllInScopeVars,GroupVars,OuterVars}",{AllInScopeVars,GroupVars,OuterVars}),
   % 2. split key/vals
   KeyNames = [ Name || #xqGroupBy{grp_variable = {variable, Name}} <- alist(Clauses)],
   OK = lists:all(fun(N) ->
                        lists:member(N, GroupVars)
                  end, KeyNames),
   if OK ->
         ok;
      true ->
         ?err('XQST0094')% out of scope grouping variable
   end,
   KeyTuples   = [{tuple,?L,[{var,?L,Name},{string,?L,Coll}]} || #xqGroupBy{grp_variable = {variable, Name}, collation = Coll} <- alist(Clauses)],
   KeyNamesTup = [{var,?L,Name} || #xqGroupBy{grp_variable = {variable, Name}} <- alist(Clauses)],
   %?dbg("{KeyNames,Clauses,KeyTuples}",{KeyNames,Clauses,KeyTuples}),
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
   
   GrpFun1 = {function, ?L, FunctionName, 2,
              [{clause,?L, [{var,?L, '_'},{nil,?L}],
                [], % guards
                [{nil,?L}]
               },
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'List'}],
                [[{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'List'}]}]], % guards
                [{match,?L,{var,?L,'Split'},
                  {call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},[
                  {lc,?L,{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'}]},
                   [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]}]}},
                 {match,?L,{var,?L,'Rest'},
                  if OuterVars == [] -> 
                        {nil,?L};
                     true ->
                        {call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,hd}},[{lc,?L,OuterTups,[{generate,?L,OutgoingVarTup,{var,?L, 'List'}}]}]}
                  end},
                 {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'Split'},{var,?L,'Rest'}]}
                ]},
               {clause,?L, [{var,?L, 'Ctx'}, OutgoingVarTup],[], % guards
                [ToGroupTuple]
               }]},
   GrpFun2 = {function, ?L, FunctionName, 3,
              [{clause,?L, [{var,?L, 'Ctx'},{var,?L,'Split'},OuterTups],
                [], % guards
                [{match,?L,{var,?L,'Grouped'},
                  {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,groupbyclause}},
                   [{var,?L,'Split'}]}},
                 {lc,?L,OutgoingVarTup,[{generate,?L,OutputTuple,{var,?L,'Grouped'}}]}
                ]}]},
   {Ctx,[GrpFun1,GrpFun2]}.
   
   
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
   InLine = attribute(compile, {inline,{FunctionName,2}}),
   LetFun = {function, ?L, FunctionName, 2,
              [{clause,?L, [{var,?L, 'Ctx'},{var,?L,'List'}],
                [[{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'List'}]}]], % guards
                [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},[
                 {lc,?L,{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'}]},
                  [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]}]}
                ]},
               {clause,?L, [{var,?L, 'Ctx'},OldVariableTupleMatch],[], % guards
                [{match,?L,{var,?L,VarName}, expr_do(LocCtx,Expr)},
                   if NextFunAtom == [] ->
                         NewVariableTupleMatch;
                      true ->
                         {call,?L,{atom,?L,NextFunAtom},[{var,?L,'Ctx'},NewVariableTupleMatch]}
                   end
                ]
               }]},
   {NewCtx,[InLine, LetFun]}.

window_loop(Ctx, #xqWindow{type = Type,
                           win_variable = #xqVar{id = WId,name = WName,type = WType,expr = Expr}, 
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
   AllVars = [SVar,SPosVar,SPrevVar,SNextVar,EVar,EPosVar,EPrevVar,ENextVar,WinVar],
   lists:foldl(fun({_,_,_,'_'},Acc) ->
                     Acc;
                  ({A,_,B,_},Acc) ->
                     case sets:is_element({A,B}, Acc) of
                        true ->
                           xqerl_error:error('XQST0103');
                        _ ->
                           sets:add_element({A,B}, Acc)
                     end
               end, sets:new(), AllVars),
   StartTup = get_variable_tuple(Ctx, [SVar,SPosVar,SPrevVar,SNextVar]),
   EndTup   = get_variable_tuple(Ctx, [SVar,SPosVar,SPrevVar,SNextVar,EVar,EPosVar,EPrevVar,ENextVar]),
   % mask the win variable name to type check it later
   %TempWinVarName = next_var_name(),
   %TempWinVar = {[],[],[],TempWinVarName},

   OutTup   = get_variable_tuple(Ctx, [SVar,SPosVar,SPrevVar,SNextVar,EVar,EPosVar,EPrevVar,ENextVar,WinVar]),
   StartFunAbs = {'fun',?L,{clauses,[{clause,?L,[StartTup],[],alist(expr_do(Ctx6, StartExpr))}]}},

   WinCall= if EndExpr == undefined ->
                   {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,windowclause}},
                    [ {var,?L,'List'}, StartFunAbs  ] };
               true ->
                  EndFunAbs = {'fun',?L,{clauses,[{clause,?L,[EndTup],  [],alist(expr_do(Ctx16, EndExpr))}]}},
                   {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,windowclause}},
                    [ {var,?L,'List'}, StartFunAbs, EndFunAbs, {tuple,?L,
                                                                   [{atom,?L,Type},
                                                                    {atom,?L,Only}]} ] }
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
                {nil,_} ->
                   true;
                _ ->
                   false
             end,
   ListEx = {match,?L,{var,?L,'List'},expr_do(Ctx, Expr)},
   
   WinFun1 = {function, ?L, FunctionName, 2,
              if IsFirst ->
                    [{clause,?L, [{var,?L, 'Ctx'},{atom,?L,new}],[], % guards
                      [ListEx,
                       {match,?L,{var,?L,TempStreamVar},WinCall},
                       {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L,TempStreamVar},{nil,?L}]}
                      ]}];
                 true ->
                    []
              end ++
              [{clause,?L, [{var,?L, '_'},{nil,?L}],
                [], % guards
                [{nil,?L}
                ]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'List'}],
                [[{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'List'}]}]], % guards
                [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},[
                 {lc,?L,{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'}]},
                  [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]}]}
                ]},
               {clause,?L, [{var,?L, 'Ctx'},{match,?L,OldVariableTupleMatch,{var,?L, 'Stream'}}],[], % guards
                  [ListEx,
                   {match,?L,{var,?L,TempStreamVar},WinCall},
                   {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L,TempStreamVar},{var,?L, 'Stream'}]}
                  ]
               }
              ]},
%{promote_to,Expr1,Expr2}
   WinFun2 = {function, ?L, FunctionName, 3,
              [{clause,?L, [{var,?L, '_'},{nil,?L},{var,?L, '_'}],[],
                [{nil,?L}]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'NoList'},{var,?L, 'Stream'}],
                [[{op,?L,'not',{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'NoList'}]}}]], % guards
                [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{cons,?L,{var,?L,'NoList'},{nil,?L}},{var,?L, 'Stream'}]}]},
               {clause,?L, [{var,?L, 'Ctx'},{cons,?L,OutTup,{var,?L,'T'}},OldVariableTupleMatch],[], % guards
                [{cons,?L,
                     if NextFunAtom == [] ->
                           NewVariableTupleMatch;
                        true ->
                           {call,?L,{atom,?L,NextFunAtom},[{var,?L,'Ctx'},NewVariableTupleMatch]}
                     end,
                     {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'},get_variable_tuple(Ctx)]}
                   }
                 ]}]},
   OutCtx = set_context_variable_name(Ctx20, OldCtxname),
   {OutCtx,[WinFun1,WinFun2]}.
   


for_loop(Ctx,{'for',#xqVar{id = Id,
                           name = Name, 
                           type = Type, 
                           empty = Empty,
                           expr = Expr, 
                           position = undefined}} = Part, NextFunAtom) ->
   IsFirst = case get_variable_tuple(Ctx) of
                {nil,_} ->
                   true;
                _ ->
                   false
             end,
   VarName = local_variable_name(Id),
   NewVar    = {Name,Type,[],VarName},
   NewVar     = {Name,Type,[],VarName},
   NoEmptyType = (Type#xqSeqType.occur == one orelse Type#xqSeqType.occur == one_or_many), 
   NewCtx  = add_grouping_variable(NewVar, Ctx),
   FunctionName = glob_fun_name(Part),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   ListAbs = {match,?L,{var,?L,'List'},expr_do(LocCtx, Expr)},
   OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                              {nil,_} ->
                                 {var,?L, '_'};
                              O ->
                                 O
                           end,
   NewVariableTupleMatch = get_variable_tuple(NewCtx),

   ForFun1 = {function, ?L, FunctionName, 2,
              if IsFirst ->
              [{clause,?L, [{var,?L, 'Ctx'},{atom,?L,new}],[], % guards
                   [
                    ListAbs,
                    {'if',?L,
                     [{clause,?L,[],
                       [[{op,?L,'==',{var,?L,'List'},{nil,?L}}]],
                       [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},
                         [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{atom,?L,empty},{nil,?L}]}]}]},
                      {clause,?L,[],
                       [[{atom,?L,true}]],
                       [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},
                         [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'List'},{nil,?L}]}]}]}
                     ]}
                   ]}];
              true ->
               []
               end ++
               [{clause,?L, [{var,?L, '_'},{nil,?L}],
                [], % guards
                [{nil,?L}
                ]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'List'}],
                [[{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'List'}]}]], % guards
                [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},[
                 {lc,?L,{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'}]},
                  [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]}]}
                ]},
               {clause,?L, [{var,?L, 'Ctx'},{match,?L,OldVariableTupleMatch,{var,?L, 'Stream'}}],[], % guards
                [
                 ListAbs,
                 {'if',?L,
                  [{clause,?L,[],
                    [[{op,?L,'==',{var,?L,'List'},{nil,?L}}]],
                    [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},
                     [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{atom,?L,empty},{var,?L, 'Stream'}]}]}
                     ]},
                   {clause,?L,[],
                    [[{atom,?L,true}]],
                    [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},
                     [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'List'},{var,?L, 'Stream'}]}]}]}
                  ]}
                ]
               }
              ]},
   % standard   
   ForFun2 = {function, ?L, FunctionName, 3,
              [{clause,?L, [{var,?L, '_'},{atom,?L,empty},{var,?L, '_'}],[],
                [{nil,?L}]},
               {clause,?L, [{var,?L, '_'},{nil,?L},{var,?L, '_'}],[],
                [{nil,?L}]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'NoList'},{var,?L, 'Stream'}],
                [[{op,?L,'not',{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'NoList'}]}}]], % guards
                [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{cons,?L,{var,?L,'NoList'},{nil,?L}},{var,?L, 'Stream'}]}]},
               {clause,?L, [{var,?L, 'Ctx'},{cons,?L,{var,?L,VarName},{var,?L,'T'}},OldVariableTupleMatch],[], % guards
               [{cons,?L,
                     if NextFunAtom == [] ->
                           NewVariableTupleMatch;
                        true ->
                           {call,?L,{atom,?L,NextFunAtom},[{var,?L,'Ctx'},NewVariableTupleMatch]}
                     end,
                     {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'},get_variable_tuple(Ctx)]}
                   }
                ]}]},
   % allow empty
   ForFun4 = {function, ?L, FunctionName, 3,
              [{clause,?L, [{var,?L, 'Ctx'},{atom,?L,empty},OldVariableTupleMatch],[],
                if NoEmptyType ->
                      [{call,?L,{remote,?L,{atom,?L,xqerl_error},{atom,?L,error}},
                       [{atom,?L,'XPTY0004'}]}];
                   true ->
                      [{match,?L,{var,?L,VarName},{nil,?L}},
                      {cons,?L,
                          if NextFunAtom == [] ->
                                NewVariableTupleMatch;
                             true ->
                                {call,?L,{atom,?L,NextFunAtom},[{var,?L,'Ctx'},NewVariableTupleMatch]}
                          end,
                          {nil,?L}}]
                 end},
               {clause,?L, [{var,?L, '_'},{nil,?L},{var,?L, '_'}],[],
                [{nil,?L}]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'NoList'},{var,?L, 'Stream'}],
                [[{op,?L,'not',{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'NoList'}]}}]], % guards
                [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{cons,?L,{var,?L,'NoList'},{nil,?L}},{var,?L, 'Stream'}]}]},
               {clause,?L, [{var,?L, 'Ctx'},{cons,?L,{var,?L,VarName},{var,?L,'T'}},OldVariableTupleMatch],[], % guards
               [{cons,?L,
                     if NextFunAtom == [] ->
                           NewVariableTupleMatch;
                        true ->
                           {call,?L,{atom,?L,NextFunAtom},[{var,?L,'Ctx'},NewVariableTupleMatch]}
                     end,
                     {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'},get_variable_tuple(Ctx)]}
                   }
                ]}]},
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
                           position = #xqPosVar{id = PId, name = PName}}} = Part, NextFunAtom) ->
   IsFirst = case get_variable_tuple(Ctx) of
                {nil,_} ->
                   true;
                _ ->
                   false
             end,
   VarName = local_variable_name(Id),
   NewVar    = {Name,Type,[],VarName},
   PosVarName = local_variable_name(PId),
   NewVar     = {Name,Type,[],VarName},
   NewPosVar  = {PName,#xqSeqType{type = 'xs:integer', occur = 'one'},[],PosVarName},
   NoEmptyType = (Type#xqSeqType.occur == one orelse Type#xqSeqType.occur == one_or_many), 
   NewCtx      = add_grouping_variable(NewPosVar, add_grouping_variable(NewVar, Ctx)),
   FunctionName = glob_fun_name(Part),
   LocCtx = set_context_variable_name(Ctx, 'Ctx'),
   ListAbs = {match,?L,{var,?L,'List'},expr_do(LocCtx, Expr)},
   OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                              {nil,_} ->
                                 {var,?L, '_'};
                              O ->
                                 O
                           end,
   NewVariableTupleMatch = get_variable_tuple(NewCtx),

   ForFun1 = {function, ?L, FunctionName, 2,
              if IsFirst ->
              [{clause,?L, [{var,?L, 'Ctx'},{atom,?L,new}],[], % guards
                [
                 ListAbs,
                 {'if',?L,
                  [{clause,?L,[],
                    [[{op,?L,'==',{var,?L,'List'},{nil,?L}}]],
                    [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},
                      [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{integer,?L,0},{atom,?L,empty},{nil,?L}]}]}]},
                   {clause,?L,[],
                    [[{atom,?L,true}]],
                    [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},
                      [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{integer,?L,0},{var,?L, 'List'},{nil,?L}]}]}]}
                  ]}
                ]}];
              true ->
               []
               end ++
               [{clause,?L, [{var,?L, '_'},{nil,?L}],
                [], % guards
                [{nil,?L}
                ]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'List'}],
                [[{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'List'}]}]], % guards
                [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},[
                 {lc,?L,{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L, 'T'}]},
                  [{generate,?L,{var,?L, 'T'},{var,?L, 'List'}}]}]}
                ]},
               {clause,?L, [{var,?L, 'Ctx'},{match,?L,OldVariableTupleMatch,{var,?L, 'Stream'}}],[], % guards
                [
                 ListAbs,
                 {'if',?L,
                  [{clause,?L,[],
                    [[{op,?L,'==',{var,?L,'List'},{nil,?L}}]],
                    [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},
                     [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{integer,?L,0},{atom,?L,empty},{var,?L, 'Stream'}]}]}
                    ]},
                   {clause,?L,[],
                    [[{atom,?L,true}]],
                    [{call,?L,{remote,?L,{atom,?L,lists},{atom,?L,flatten}},
                     [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{integer,?L,0},{var,?L, 'List'},{var,?L, 'Stream'}]}]}
                    ]}
                  ]}
                ]
               }
              ]},
   % position variable
   ForFun3 = {function, ?L, FunctionName, 4,
              [{clause,?L, [{var,?L, '_'},{var,?L, '_'},{atom,?L,empty},{var,?L, '_'}],[],
                [{nil,?L}]},
               {clause,?L, [{var,?L, '_'},{var,?L, '_'},{nil,?L},{var,?L, '_'}],[],
                [{nil,?L}]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'Pos'},{var,?L,'NoList'},{var,?L, 'Stream'}],
                [[{op,?L,'not',{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'NoList'}]}}]], % guards
                [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L,'Pos'},{cons,?L,{var,?L,'NoList'},{nil,?L}},{var,?L, 'Stream'}]}]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'Pos'},{cons,?L,{var,?L,VarName},{var,?L,'T'}},OldVariableTupleMatch],[], % guards
                [{match,?L,{var,?L,'NewPos'},{op,?L,'+',{var,?L,'Pos'},{integer,?L,1}}},
                 {match,?L,{var,?L,PosVarName},
                  {tuple,?L,[ atom_or_string(xqAtomicValue),
                              atom_or_string('xs:integer'),
                              {var,?L,'NewPos'} ]}},
                 {cons,?L,
                  if NextFunAtom == [] ->
                        NewVariableTupleMatch;
                     true ->
                        {call,?L,{atom,?L,NextFunAtom},[{var,?L,'Ctx'},NewVariableTupleMatch]}
                  end,
                  {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L,'NewPos'},{var,?L, 'T'},get_variable_tuple(Ctx)]}}]}
              ]
             },
   % allow empty with position variable
   ForFun5 = {function, ?L, FunctionName, 4,
              [{clause,?L, [{var,?L, 'Ctx'},{var,?L, '_'},{atom,?L,empty},OldVariableTupleMatch],[],
                if NoEmptyType ->
                      [{call,?L,{remote,?L,{atom,?L,xqerl_error},{atom,?L,error}},
                       [{atom,?L,'XPTY0004'}]}];
                   true ->
                      [{match,?L,{var,?L,VarName},{nil,?L}},
                       {match,?L,{var,?L,PosVarName},
                        {tuple,?L,[ atom_or_string(xqAtomicValue),
                                    atom_or_string('xs:integer'),
                                    {integer,?L,0} ]}},
                       {cons,?L,
                        if NextFunAtom == [] ->
                              NewVariableTupleMatch;
                           true ->
                              {call,?L,{atom,?L,NextFunAtom},[{var,?L,'Ctx'},NewVariableTupleMatch]}
                        end,
                        {nil,?L}}
                      ]
                end},
               {clause,?L, [{var,?L, '_'},{var,?L, '_'},{nil,?L},{var,?L, '_'}],[],
                [{nil,?L}]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'Pos'},{var,?L,'NoList'},{var,?L, 'Stream'}],
                [[{op,?L,'not',{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_list}},[{var,?L,'NoList'}]}}]], % guards
                [{call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L,'Pos'},{cons,?L,{var,?L,'NoList'},{nil,?L}},{var,?L, 'Stream'}]}]},
               {clause,?L, [{var,?L, 'Ctx'},{var,?L,'Pos'},{cons,?L,{var,?L,VarName},{var,?L,'T'}},OldVariableTupleMatch],[], % guards
                [{match,?L,{var,?L,'NewPos'},{op,?L,'+',{var,?L,'Pos'},{integer,?L,1}}},
                 {match,?L,{var,?L,PosVarName},
                  {tuple,?L,[ atom_or_string(xqAtomicValue),
                              atom_or_string('xs:integer'),
                              {var,?L,'NewPos'} ]}},
                 {cons,?L,
                  if NextFunAtom == [] ->
                        NewVariableTupleMatch;
                     true ->
                        {call,?L,{atom,?L,NextFunAtom},[{var,?L,'Ctx'},NewVariableTupleMatch]}
                  end,
                  {call,?L,{atom,?L,FunctionName},[{var,?L,'Ctx'},{var,?L,'NewPos'},{var,?L, 'T'},get_variable_tuple(Ctx)]}}]}
              ]
             },
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

step_expr_do(Ctx, #xqVarRef{name = Name}, Source) -> % variables aren't step, but can be dupes
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   {VarAbs,_} = get_variable_ref(Name, Ctx),
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
    [{var,?L,CtxVar},
     {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[],
                          alist(VarAbs) }]}},
     if is_atom(Source) ->
           {var,?L,Source};
        true ->
           Source
     end
     ]}
   ;

step_expr_do(Ctx, {variable, {Name,1}}, Source) -> % variables aren't step, but can be dupes
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   {VarAbs,_} = get_variable_ref(Name, Ctx),
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
    [{var,?L,CtxVar},
     {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[],
                          alist(VarAbs) }]}},
     if is_atom(Source) ->
           {var,?L,Source};
        true ->
           Source
     end
     ]}
   ;

% bang operator
step_expr_do(Ctx, {'simple-map',SeqExpr,{'simple-map',_,_} = MapExpr}, Source) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   FunAbs = {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[],alist(expr_do(Ctx1, SeqExpr))}]}},
   NewSource = {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,simple_map}}, [{var,?L,CtxVar},Source,FunAbs]},
   step_expr_do(Ctx, MapExpr, NewSource);
% bang operator at end
step_expr_do(Ctx, {'simple-map',SeqExpr,MapExpr}, Source) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   NextNextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   Ctx2 = set_context_variable_name(Ctx, NextNextCtxVar),
   FunAbs  = {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[],alist(expr_do(Ctx1, SeqExpr))}]}},
   FunAbs2 = {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextNextCtxVar}],[],alist(expr_do(Ctx2, MapExpr))}]}},
   {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,simple_map}},
    [{var,?L,CtxVar},{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,simple_map}},
      [{var,?L,CtxVar},Source,FunAbs]},FunAbs2]};
%{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,singleton}},xqerl_flwor:singleton(   )}
step_expr_do(Ctx, {root, Step}, _Source) ->
   NextCtxVar = next_var_name(),
   CurrCtxVar = get_context_variable_name(Ctx),
   %Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   % match next Ctx variable out
   %?dbg("Step",Step),
   {block,?L,[{match,?L,
    {var,?L,NextCtxVar},
        {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,root}},
         [{var,?L,CurrCtxVar},{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[{var,?L,CurrCtxVar}]}]}                
   }] ++
   alist(step_expr_do(Ctx, Step, {var,?L,NextCtxVar}))};
step_expr_do(Ctx, {'any-root', Step}, Source) ->
   NextCtxVar = next_var_name(),
   CurrCtxVar = get_context_variable_name(Ctx),
   %Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   % match next Ctx variable out
   {block,?L,[{match,?L,
    {var,?L,NextCtxVar},
        {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,any_root}},
         [{var,?L,CurrCtxVar},{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[Source]}]}                
   }] ++
   alist(step_expr_do(Ctx, Step, {var,?L,NextCtxVar}))};

step_expr_do(Ctx, {root}, Source) ->
   CurrCtxVar = get_context_variable_name(Ctx),
   % match next Ctx variable out
   {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,root}},
    [{var,?L,CurrCtxVar},{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[Source]}]};

%% step_expr_do(Ctx, {step, {'function-call', _, _, _} = FuncStep, Next}, SourceVarName) ->
%%    CtxVar = get_context_variable_name(Ctx),
%%    NextCtxVar = next_ctx_var_name(),
%%    Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
%%    NewSource = {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
%%                 [{var,?L,CtxVar},
%%                  {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, FuncStep))}]}},
%%                  SourceVarName]},
%%    step_expr_do(Ctx, Next, NewSource);
%% step_expr_do(Ctx, {step, {'function-ref', _, _} = FuncStep, Next}, _Source) ->
%%    NewSource = expr_do(Ctx, FuncStep),
%%    step_expr_do(Ctx, Next, NewSource);
%% 
%% step_expr_do(Ctx, {step, Step, Next}, SourceVarName) ->
%%    %NextCtxVar = next_ctx_var_name(),
%%    %Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
%%    NewSource = step_expr_do(Ctx, Step, SourceVarName),
%%    step_expr_do(Ctx, Next, NewSource);

step_expr_do(Ctx, #xqAxisStep{direction = Direction, axis = Axis, node_test = #xqNameTest{name = Q}, predicates = Preds}, SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   PredFuns = lists:foldr(fun({predicate, P}, Abs) ->
                              case P of
                                 #xqAtomicValue{type = Type} = A when ?integer(Type) -> % positional predicate
                                    {cons,?L,abs_simp_atomic_value(A), Abs};
                                 _ ->
                                    {cons,?L,{'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, P))}]}}, Abs}
                              end;
                             ({positional_predicate, P}, Abs) ->
                              case P of
                                 #xqAtomicValue{type = Type} = A when ?integer(Type) -> % positional predicate
                                    {cons,?L,abs_simp_atomic_value(A), Abs};
                                 {variable,Name} ->
                                    {cons,?L,{var,?L,Name}, Abs};
                                 _ ->
                                    %{cons,?L,expr_do(Ctx, P), Abs}
                                    {cons,?L,{'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, P))}]}}, Abs}
                              end
                      end, {nil,?L}, Preds),     
   QName = if Axis == attribute andalso Q#qname.prefix == [] -> % no namespace when prefix empty
                 abs_ns_qname(Ctx,Q#qname{namespace = 'no-namespace'});
              true ->
                 abs_qname(Ctx,Q)
           end,
   {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,Direction}},
    [{var,?L,CtxVar},SourceVarName,{atom,?L,Axis},QName, PredFuns]};

step_expr_do(Ctx, #xqAxisStep{direction = Direction, axis = Axis, node_test = #xqKindTest{kind = Kind, name = KName} = Kt, predicates = Preds}, SourceVarName) ->
   % TODO put this in static
   if Axis == namespace andalso Kind == 'namespace';
      Axis == self andalso Kind == 'namespace' ->
         ok;
      %Axis == child andalso Kind == 'namespace' ->
      %   xqerl_error:error('XQST0134');
      %Kind == 'namespace' ->
      %   xqerl_error:error('XPST0005');
      true ->
         ok
   end,
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   KName1 = case KName of
               #qname{} ->
                  KName;
               undefined ->
                  KName;
               _ ->
                  expr_do(Ctx, KName)
            end,   
   PredFuns = lists:foldr(fun({predicate, P}, Abs) ->
                              case P of
                                 [#xqAtomicValue{type = Type} = A] when ?integer(Type) -> % positional predicate
                                    {cons,?L,abs_simp_atomic_value(A), Abs};
                                 _ ->
                                    {cons,?L,{'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, P))}]}}, Abs}
                              end;
                             ({positional_predicate, P}, Abs) ->
                              case P of
                                 [#xqAtomicValue{type = Type} = A] when ?integer(Type) -> % positional predicate
                                    {cons,?L,abs_simp_atomic_value(A), Abs};
                                 {variable,Name} ->
                                    {cons,?L,{var,?L,Name}, Abs};
                                 _ ->
                                    %{cons,?L,expr_do(Ctx, P), Abs}
                                    {cons,?L,{'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, P))}]}}, Abs}
                              end
                      end, {nil,?L}, Preds),
   KtAbs = abs_kind_test(Ctx,Kt#xqKindTest{name = KName1}),
   {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,Direction}},
    [{var,?L,CtxVar},SourceVarName,{atom,?L,Axis}, KtAbs, PredFuns]};

step_expr_do(Ctx, Preds, SourceVarName) when is_list(Preds) ->
   CtxVar = get_context_variable_name(Ctx),
   PredFuns = lists:foldl(fun({positional_predicate, P}, Abs) ->
                              NextCtxVar = next_ctx_var_name(),
                              Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
                              case P of
                                 #xqAtomicValue{} = A -> % positional predicate
                                    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                     [{var,?L,CtxVar},
                                      abs_simp_atomic_value(A), 
                                      Abs]};
                                 [#xqAtomicValue{} = A] -> % positional predicate
                                    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                     [{var,?L,CtxVar},
                                      abs_simp_atomic_value(A), 
                                      Abs]};
                                 {variable, Name} -> 
                                    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                     [{var,?L,CtxVar},
                                      {var,?L,Name},
                                      Abs]};
                                 _ ->
                                    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                     [{var,?L,CtxVar},
                                      %expr_do(Ctx, P), 
                                      {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, P))}]}}, 
                                      Abs
                                      ]}
                              end;
                             ({predicate, P}, Abs) ->
                              NextCtxVar = next_ctx_var_name(),
                              Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
                                    %?dbg("P",P),
                                    case P of
                                       #xqAtomicValue{type = Type} = A when ?numeric(Type) -> % positional predicate
                                          {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                           [{var,?L,CtxVar},{cons,?L,abs_simp_atomic_value(A),{nil,?L}}, Abs]};
                                       [#xqVarRef{name = Name}] -> % positional predicate
                                          {VarAbs,#xqSeqType{type = VarType}} = get_variable_ref(Name, Ctx),
                                          if ?numeric(VarType) ->
                                                {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,position_filter}},
                                                 [{var,?L,CtxVar},
                                                  {cons,?L,VarAbs,{nil,?L}}, Abs]};
                                             true ->
                                                {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,filter}},
                                                 [{var,?L,CtxVar},
                                                   {'fun',?L,{clauses,
                                                              [{clause,?L,[{var,?L,NextCtxVar}],[],
                                                                %[{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,eff_bool_val}},
                                                                  alist(expr_do(Ctx1, P))%}]
                                                                }]}} ,
                                                   Abs]}
                                          end;
                                       _ ->
                                          {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,filter}},
                                           [{var,?L,CtxVar},
                                             {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], 
                                                                %[{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,eff_bool_val}},
                                                                  alist(expr_do(Ctx1, P))%}]
                                                                 }]}} ,
                                             Abs]}
                                    end;
                             ({arguments, Args}, Abs) ->
                              %NextCtxVar = next_ctx_var_name(),
                              %Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
                                 PlaceHolders = lists:flatmap(fun(Arg) ->
                                                                    if Arg == '?' ->
                                                                          VarName = next_var_name(),
                                                                          [{var,?L,VarName}];
                                                                       true ->
                                                                           []
                                                                    end
                                                              end, Args),
                                 {NewArgs, _Empty} = lists:mapfoldl(fun(Arg,PHs) ->
                                                                          if Arg == '?' ->
                                                                                {hd(PHs),tl(PHs)};
                                                                             true ->
                                                                                {Arg,PHs}
                                                                          end
                                                                    end, PlaceHolders, Args),
                                 %?dbg(?LINE,Args),
                                 %?dbg(?LINE,PlaceHolders),
                                 %?dbg(?LINE,NewArgs),
                                 ArgAbs = lists:map(fun({var,_,_} = Arg) ->
                                                          Arg;
                                                       (Arg) ->
                                                          expr_do(Ctx, Arg)                      
                                                    end, NewArgs),
                                 NextCtxVar2 = next_ctx_var_name(),
                                 NextVar2 = next_var_name(),
                                 %{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,map}},
                                 % [{var,?L,CtxVar},                                      
                                  if PlaceHolders == [] ->
                                    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,map}},
                                     [{var,?L,CtxVar},
                                     {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar2}|PlaceHolders],[], 
                                                          [{match,?L,{var,?L,NextVar2},
                                                            {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,value}},[
                                                             Abs % this is a fun
                                                            ]}},
                                                           {call,?L,{var,?L,NextVar2},[{var,?L,NextCtxVar2}|ArgAbs]}
                                                           ]
                                                          }]}}, Abs
                                     ]};
                                  true ->
                                     {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar2}|PlaceHolders],[], 
                                                          [{match,?L,{var,?L,NextVar2},
                                                            {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,value}},[
                                                             Abs % this is a fun
                                                            ]}},
                                                           {call,?L,{var,?L,NextVar2},[{var,?L,NextCtxVar2}|ArgAbs]}
                                                           ]
                                                          }]}}
                                 end
                                 % Abs
                                 % ]}
                          end, SourceVarName, Preds),
   %?dbg("PredFuns",PredFuns),
   PredFuns;

%% step_expr_do(Ctx, {step, Step}, SourceVarName) ->
%%    step_expr_do(Ctx, Step, SourceVarName);

step_expr_do(Ctx, 'context-item', SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,forward}},
    [{var,?L,CtxVar},
     if is_atom(SourceVarName) ->
                               {var,?L,SourceVarName};
                            true ->
                               SourceVarName
                         end,{atom,?L,self},{nil,?L}, {nil,?L}]};

step_expr_do(Ctx, {'union', Expr1, Expr2}, SourceVarName) ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,union}},
    [step_expr_do(Ctx, Expr1,SourceVarName),step_expr_do(Ctx, Expr2,SourceVarName)]}     
   ;
step_expr_do(Ctx, {'function-call', _, _, _} = Other, SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
    [{var,?L,CtxVar},
    {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, Other))}]}},
    if is_atom(SourceVarName) ->
          {var,?L,SourceVarName};
       true ->
          SourceVarName
    end]};
step_expr_do(Ctx, {'function-ref', _, _} = Other, SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
    [{var,?L,CtxVar},
    {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, Other))}]}},
    if is_atom(SourceVarName) ->
          {var,?L,SourceVarName};
       true ->
          SourceVarName
    end]};
step_expr_do(Ctx, {postfix, {'function-ref',Q,V}, [{arguments,Args}]}, SourceVarName) ->
   PlaceHolders = lists:flatmap(fun(Arg) ->
                                      if Arg == '?' ->
                                            VarName = next_var_name(),
                                            [{var,?L,VarName}];
                                         true ->
                                             []
                                      end
                                end, Args),
   {NewArgs, _Empty} = lists:mapfoldl(fun(Arg,PHs) ->
                                            if Arg == '?' ->
                                                  {hd(PHs),tl(PHs)};
                                               true ->
                                                  {Arg,PHs}
                                            end
                                      end, PlaceHolders, Args),
   ArgAbs = lists:map(fun({var,_,_} = Arg) ->
                            Arg;
                         (Arg) ->
                            expr_do(Ctx, Arg)                      
                      end, NewArgs),
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   NextVar = next_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
    [{var,?L,CtxVar},
    {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], 
                         [{match,?L,{var,?L,NextVar},
                           {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},[
                            expr_do(Ctx1, {'function-ref',Q,V})% this is a fun
                           ]}},
                          {call,?L,{var,?L,NextVar},[{var,?L,NextCtxVar}|ArgAbs]}
                          ]
                         }]}},
    if is_atom(SourceVarName) ->
          {var,?L,SourceVarName};
       true ->
          SourceVarName
    end]};

step_expr_do(Ctx, {postfix, {'function-call',_,_,_} = Other, [{arguments,Args}]}, SourceVarName) ->
   PlaceHolders = lists:flatmap(fun(Arg) ->
                                      if Arg == '?' ->
                                            VarName = next_var_name(),
                                            [{var,?L,VarName}];
                                         true ->
                                             []
                                      end
                                end, Args),
   {NewArgs, _Empty} = lists:mapfoldl(fun(Arg,PHs) ->
                                            if Arg == '?' ->
                                                  {hd(PHs),tl(PHs)};
                                               true ->
                                                  {Arg,PHs}
                                            end
                                      end, PlaceHolders, Args),
   ArgAbs = lists:map(fun({var,_,_} = Arg) ->
                            Arg;
                         (Arg) ->
                            expr_do(Ctx, Arg)                      
                      end, NewArgs),
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   NextVar = next_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
    [{var,?L,CtxVar},
    {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], 
                         [{match,?L,{var,?L,NextVar},
                           {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},[
                            expr_do(Ctx1, Other)% this is a fun
                           ]}},
                          {call,?L,{var,?L,NextVar},[{var,?L,NextCtxVar}|ArgAbs]}
                          ]
                         }]}},
    if is_atom(SourceVarName) ->
          {var,?L,SourceVarName};
       true ->
          SourceVarName
    end]};

step_expr_do(Ctx, {'node-cons',Expr}, Source) ->
   %?dbg(?LINE,Source),
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
    [{var,?L,CtxVar},
     {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[],
                          [{call,?L,{remote,?L,{atom,?L,xqerl_node},{atom,?L,new_fragment}},
                            [{var,?L,CtxVar}, expr_do(Ctx1, Expr)]}
                          ] }]}},
     if is_atom(Source) ->
           {var,?L,Source};
        true ->
           Source
     end
     ]};
%%    expr_do(Ctx, {'node-cons',Expr});

step_expr_do(Ctx, {expr,[Sing]}, Source) ->
   step_expr_do(Ctx, Sing, Source);
step_expr_do(Ctx, {expr,List}, Source) when is_list(List) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
    [{var,?L,CtxVar},
     {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[],
                          alist(expr_do(Ctx1, List))}]}},
     if is_atom(Source) ->
           {var,?L,Source};
        true ->
           Source
     end
     ]};

step_expr_do(Ctx, {expr,E}, Source) ->
   step_expr_do(Ctx, E, Source);

step_expr_do(Ctx, 'empty-sequence', _Source) ->
   expr_do(Ctx, 'empty-sequence');

step_expr_do(Ctx, Other, Source) ->
   %?dbg("Other",Other),
   %?dbg("Source",Source),
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   {block,?L,
    [
      {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
       [{var,?L,CtxVar},
        {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[],
                             alist(expr_do(Ctx1, Other))}]}},
        if is_atom(Source) ->
              {var,?L,Source};
           true ->
              Source
        end
        ]}
     ]}.

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

get_variable_ref(#qname{namespace = Ns, prefix = Px, local_name = Ln}, #{tab := Tab} = Map) ->
   Vars0 = xqerl_context:get_in_scope_variables(Tab),
   Vars1 = maps:get(parameters, Map),
   Vars = maps:get(variables, Map) ++ Vars1 ++ Vars0,
   Nss = maps:get(namespaces, Map),
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
               xqerl_error:error('XPST0008');
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
   %?dbg("get_variable_ref Var", Var),
   if is_atom(Loc) ->
         {{var,?L,Loc},Typ};
      true ->
         case tuple_size(Loc) of
            2 ->
               {{call,?L,
                 {remote,?L,
                  {atom,?L,xqerl_lib},
                  {atom,?L,lget}},
                [{atom,?L,element(1, Loc)}]},Typ};
            3 ->
               {{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_variable_value}},
                [{tuple,?L,[{atom,?L,element(1, Loc)},{atom,?L,element(2, Loc)},{integer,?L,element(3, Loc)}]},
                 {call,?L,{remote,?L,{atom,?L,element(1, Loc)},{atom,?L,element(2, Loc)}},[{var,?L,get_context_variable_name(Map)}]} ]},Typ}
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
           %      {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},[
                 expr_do(Ctx, E)
           %      ]}
           ;
              true ->
                 lists:foldr(fun(X, Abs) ->
                            {cons,?L,expr_do(Ctx, X), Abs} 
                      end, {nil,?L}, E)
           end;
        _ ->
           if E == undefined -> empty_seq();
              true ->
                 %{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},[
                 expr_do(Ctx, E)
                 %]}
           end
     end
     ]}.

abs_element_node(Ctx, #xqElementNode{name = N, attributes = A1, expr = E1, type = Type, base_uri = BU, inscope_ns = IsNs}) ->
   {tuple,?L,
    [
     atom_or_string(xqElementNode),
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
     erl_term_abs(IsNs),        % inscope_ns
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
     end
    ]}.

abs_attribute_node(Ctx, #xqAttributeNode{name = N, expr = E}) ->
   {tuple,?L,
    [
     atom_or_string(xqAttributeNode),
     atom_or_string(undefined),
     case N of
        #qname{namespace = _Ns, prefix = Px} ->
           if Px == [] ->
                 abs_ns_qname(Ctx,N#qname{namespace = 'no-namespace'}); % no default namespace for these
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
     end
     ]}.

abs_text_node(Ctx, #xqTextNode{expr = E, cdata = C}) ->
   %?dbg(?LINE,E),
   %?dbg(?LINE,C),
   {tuple,?L,
    [
     atom_or_string(xqTextNode),
     atom_or_string(undefined),
     atom_or_string(undefined),
     atom_or_string(C),
     atom_or_string(undefined),
     case is_list(E) of
        true ->
           {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[
            lists:foldr(fun(X, Abs) ->
                            {cons,?L,expr_do(Ctx, X), Abs} 
                      end, {nil,?L}, E)
            ]};
        _ ->
           if E == undefined -> empty_seq();
              E == 'empty-expr' -> empty_seq();
              E == 'empty-sequence' -> empty_seq();
              true ->
                 expr_do(Ctx, E)
           end
     end
     ]}.

abs_comment_node(Ctx, #xqCommentNode{string_value = S, expr = E}) ->
   {tuple,?L,
    [
     atom_or_string(xqCommentNode),
     atom_or_string(undefined),
     atom_or_string(undefined),
     atom_or_string(S),
     atom_or_string(undefined),
     case is_list(E) of
        true ->
           {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[
            lists:foldr(fun(X, Abs) ->
                            {cons,?L,expr_do(Ctx, X), Abs} 
                      end, {nil,?L}, E)
            ]};
        _ ->
           if E == undefined -> empty_seq();
              true ->
                 {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[
                 expr_do(Ctx, E)
                 ]}
           end
     end
     ]}.

abs_pi_node(Ctx, #xqProcessingInstructionNode{name = N, expr = E, base_uri = BU}) ->
   BU1 = case maps:get('base-uri', Ctx) of
            undefined when BU =/= [] ->
               BU;
            undefined ->
               [];
            %B when BU == [] ->
            %   B;
            _ ->
               BU
         end,   
   {tuple,?L,
    [
     atom_or_string(xqProcessingInstructionNode),
     atom_or_string(undefined),
     case N of
        #qname{} ->
           abs_qname(Ctx,N);
        _ ->
           %{call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,value}},
            %[
             expr_do(Ctx, N)
     %]}
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
     end
     ]}.

abs_namespace_node(_Ctx, #xqNamespace{namespace = N, prefix = P}) ->
   {tuple,?L,
    [
     atom_or_string(xqNamespace),
     atom_or_string(N),
     atom_or_string(P)
     ]};

abs_namespace_node(Ctx, #xqNamespaceNode{name = Name}) ->
   %?dbg("abs_namespace_node",Ctx),
   {tuple,?L,
    [
     atom_or_string(xqNamespaceNode),
     atom_or_string(undefined),
     abs_ns_qname(Ctx,Name),
     atom_or_string(undefined),
     atom_or_string(undefined),
     atom_or_string(undefined)
     ]}.

abs_fun_test(Ctx,#xqFunTest{kind = Kind, annotations = Annos, name = Name, params = Params, type = Type}) ->
   {tuple,?L,
    [
     atom_or_string(xqFunTest),
     atom_or_string(Kind),
     if Annos == [] ->
           {nil,?L};
        true ->
           lists:foldr(fun({annotation,{#qname{namespace = "http://www.w3.org/2012/xquery",
                                               local_name = L} = Q,_}}, Abs) when L == "public";
                                                                                  L == "private" ->
                             {cons,?L,abs_qname(Ctx, Q), Abs};
                          ({annotation,{#qname{namespace = N} = Q,_}}, Abs) ->
                             _ = xqerl_lib:reserved_namespaces(N),
                             {cons,?L,abs_qname(Ctx, Q), Abs}
                       end, {nil,?L}, Annos)
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
     end
    ]}.

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
   {tuple, ?L, [atom_or_string(qname),
                atom_or_string(N),
                atom_or_string(P),
                atom_or_string(L)
               ]}.

abs_ns_qname(_Ctx, undefined) ->
   atom_or_string(undefined);
abs_ns_qname(Ctx, #qname{namespace = N, prefix = P, local_name = L}) ->
   {tuple, ?L, [atom_or_string(qname),
                if is_tuple(N) ->
                      expr_do(Ctx, N);
                   true ->
                      atom_or_string(N)
                end,
                if is_tuple(P) ->
                      case P of 
                         %{expr, #xqAtomicValue{value = ""}} ->
                         %   atom_or_string("");
                         #xqAtomicValue{value = ""} ->
                            atom_or_string("");
                         _ ->
                            expr_do(Ctx, P)
                      end;
                   true ->
                      atom_or_string(P)
                end,
                %if is_tuple(L) ->
                %      expr_do(Ctx, L);
                %   true ->
                      atom_or_string(L)
                %end
               ]}.

% {xqKindTest,node,undefined,undefined,undefined}
abs_kind_test(Ctx,#xqKindTest{kind = K, name = Q, type = T, test = Ts}) ->
   {tuple, ?L, [atom_or_string(xqKindTest),
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

abs_function(Ctx,
             #xqFunction{annotations = _A,
                         name = N,
                         arity = Ar,
                         params = Params,
                         type = Type}, BodyAbs) ->
%%    N1 = case N of
%%            undefined ->
%%               undefined;
%%            #qname{namespace = Ns, prefix = Px} ->
%%                if Ns == 'no-namespace' orelse Px == [] ->
%%                      N#qname{namespace = "http://www.w3.org/2005/xpath-functions", prefix = "fn"};
%%                   true ->
%%                      N
%%                end
%%         end,
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
   
abs_boolean(false) ->
   {tuple, ?L, [atom_or_string(xqAtomicValue),
    atom_or_string('xs:boolean'),
    atom_or_string(false)]};
abs_boolean(true) ->
   {tuple, ?L, [atom_or_string(xqAtomicValue),
    atom_or_string('xs:boolean'),
    atom_or_string(true)]}.


abs_simp_atomic_value(#xqAtomicValue{} = A) ->
   erl_term_abs(A).
%% abs_simp_atomic_value(#xqAtomicValue{type = Type, value = Val}) ->
%%    {tuple, ?L, [atom_or_string(xqAtomicValue),
%%     atom_or_string(Type),
%%     atom_or_string(Val)]}.

atom_or_string([]) ->
   {nil,?L};
atom_or_string(AS) ->
   if is_atom(AS) -> {atom,?L,AS};
      is_integer(AS) -> {integer,?L,AS};
      is_float(AS) -> {float,?L,AS};
      true -> {string,?L,AS}
   end.

empty_seq() ->
   %{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,'empty'}},[]}.
   {nil,?L}.

get_context_variable_name(Ctx) ->
   maps:get(ctx_var, Ctx).
set_context_variable_name(Ctx, Name) ->
   maps:put(ctx_var, Name, Ctx).

get_variable_tuple_name(Ctx) ->
   maps:get(var_tuple, Ctx).
set_variable_tuple_name(Ctx, Name) ->
   maps:put(var_tuple, Name, Ctx).

abs_ns_list(Ctx) ->
   lists:foldr(fun(#xqNamespace{prefix = P,namespace = N}, Abs) ->
                     {cons,?L,{tuple,?L,[{atom,?L,xqNamespace},atom_or_string(N),atom_or_string(P)]}, Abs}
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
   list_to_atom("Local__"++integer_to_list(next_id())).

next_ctx_var_name() ->
   list_to_atom("Ctx__"++integer_to_list(next_ctx_id())).

local_variable_name(Id) ->
  list_to_atom(lists:concat(["XQ__var_", Id])).

get_variable_tuple(Map) when is_map(Map) ->
   Vars = maps:get(variables, Map),
   %?dbg("Vars",Vars),
   Cnt = length([ok||{_,_,_,M} <- Vars, is_atom(M)]),
   if Cnt == 0 ->
         {nil,?L};
      true ->
         get_variable_tuple(Map, Vars)
   end.

get_variable_tuple(_Ctx, List) when is_list(List) ->
   {tuple,?L,
    lists:flatten([case Name of
                 {_N,_} -> % global 
                     [];
                 N ->
                    {var,?L,N}
              end || {_QName,_,_,Name} <- List])}.

% prefix,namespaces,current
namespace_from_prefix("default",Ns,N) -> namespace_from_prefix([],Ns,N);
namespace_from_prefix(default,Ns,N) -> namespace_from_prefix([],Ns,N);
namespace_from_prefix(Px,Ns,N) ->
   Ns2 = [Nx1 || #xqNamespace{namespace = Nx1, prefix = Px1} <- Ns, Px == Px1] ++
           [Nx1 || {Px1,Nx1} <- Ns, Px == Px1] ++ [N],
   %Ns2 = [Nx1 || {Px1,Nx1} <- Ns, Px == Px1] ++ [N],
   %?dbg("Ns2",Ns2),
   case hd(Ns2) of
      undefined ->
         ?dbg("{Ns2,Px,Ns,N}",{Ns2,Px,Ns,N}),
         xqerl_error:error('XPST0081'); % unable to expand
      O ->
         O
   end.

abs_list(List) ->
    lists:foldr(fun(E, Abs) ->
                      {cons,?L, E, Abs}
                end, {nil,?L}, List).
from_list_to_seq(List) ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,flatten}},[abs_list(List)]}.

%% from_list_to_seq(List) ->
%%    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,sort_seq}},
%%     [
%%      lists:foldl(fun(E, Abs) ->
%%                 {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,append}},[E, Abs]} 
%%           end, empty_seq_abs(), List)]}.

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

   