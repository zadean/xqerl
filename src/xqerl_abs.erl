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


init_mod_scan() ->
   erlang:put(imp_mod, 1),
   erlang:put(ctx, 1),
   erlang:put(var_tuple, 1),
   erlang:put(iter, 1),
   erlang:put(iter_loop, 1).

%% {Name, Type, Annos, function_name, Arity, [param_types] }
scan_functions(Functions) ->
   %?dbg("Functions",Functions),
   Specs = [ {Name, % Name#qname{namespace = xqerl_context:get_statically_known_namespace_from_prefix(Name#qname.prefix)}, 
              Type, Annos, function_function_name(Id, Arity), Arity, param_types(Params) } 
           || #xqFunction{id = Id, 
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
   xqerl_context:import_functions(Specs),
   %xqerl_context:set_statically_known_functions(Specs),
   [attribute(functions, Specs)].

%% {Name, Type, Annos, function_name] }
scan_variables(State, Variables) ->
   Specs = [begin
               Name1 = resolve_qname(Name, State),
               {Name1, Type, Annos, variable_function_name(Id) }
            end
           || #xqVar{id = Id, 
                     annotations = Annos, 
                     name = Name, 
                     type = Type} 
           <- Variables   ],
   xqerl_context:import_variables(Specs),
   %xqerl_context:set_in_scope_variables(Specs),
   [attribute(variables, Specs)].

erl_term_abs(Term) ->
   erl_syntax:revert(erl_syntax:abstract(Term)).

init_fun_abs(Ctx, KeysToAdd) ->
   Map  = add_context_key(#{},namespaces,Ctx),
   Map2 = add_context_key(Map,named_functions,Ctx),
   erl_term_abs(Map2).

add_context_key(Map,namespaces,Ctx) ->
   Map#{namespaces => maps:get(namespaces, Ctx)};
add_context_key(Map,known_collations,Ctx) ->
   Map#{known_collations => maps:get(known_collations, Ctx)};

% when named-functions added, everything is needed
add_context_key(Map,named_functions,Ctx) ->
   Map#{'base-uri' => maps:get('base-uri', Ctx),
        'default-collation' => maps:get('default-collation', Ctx),
        known_collations => maps:get(known_collations, Ctx),
        named_functions  => maps:get(known_fx_sigs, Ctx) %[]%
       };

add_context_key(Map,Key,Ctx) ->
   Map.

dynamic_context_items() ->
   context_item,
   context_position,
   context_size,
   variable_values,           % lives in process dictionary for global variables, locals stay local
   named_functions,           % only filled when fn:function-lookup is used, filled with statically known
   current_date_time,         % lives in process dictionary
   implicit_timezone,         % lives in process dictionary
   available_documents,       % lives in seperate process
   available_text_resources,  % lives in seperate process
   available_collections,     % lives in seperate process
   default_collection,        % always empty
   available_uri_collections, % lives in seperate process
   default_uri_collection,    % always empty
   ok.



scan_mod(Map) when is_map(Map) ->
   scan_mod(maps:get(body, Map), maps:remove(body, Map)).
   
scan_mod(#xqModule{version = {Version,Encoding}, 
                   prolog = Prolog, 
                   declaration = {_,{ModNs,_Prefix} = ModNsPx}, 
                   type = library,
                   body = _},Map) ->
%%    _ = valid_ver(Version),
%%    _ = valid_enc(string:to_upper(Encoding)),      
   _ = init_mod_scan(),
   DefElNs     = xqerl_static:pro_def_elem_ns(Prolog),
%%    _           = pro_def_func_ns(Prolog),
   ContextItem = xqerl_static:pro_context_item(Prolog,main),
%%    Setters     = pro_setters(Prolog),
   Namespaces  = xqerl_static:pro_namespaces(Prolog,[],DefElNs),
%%    Imports     = pro_mod_imports(Prolog),
%%    Options     = pro_options(Prolog),
   Variables   = xqerl_static:pro_glob_variables(Prolog),
   Functions   = xqerl_static:pro_glob_functions(Prolog),
   StaticNamespaces = xqerl_context:static_namespaces(),
   ?dbg("{Variables}",{Variables}),
   ConstNamespaces  = xqerl_static:overwrite_static_namespaces(StaticNamespaces, Namespaces),
%%    {Functions1, Variables1} = xqerl_context:import_modules(Imports),
   %io:format("{Functions1, Variables1}: ~p~n",[{Functions1, Variables1}]),
   % analyze for cyclical references
%%    true = analyze_fun_vars(Functions, Variables),
   %?dbg("DefElNs",DefElNs),
   %?dbg("Namespaces",Namespaces),
   %?dbg("StaticNamespaces",StaticNamespaces),
   %?dbg("ConstNamespaces",ConstNamespaces),
   %?dbg("Functions1",Functions1),
  
%%    SettersAbs = scan_setters(Setters),
%%    NamespaceAbs = scan_namespaces(Namespaces),
%%    OptionAbs = scan_options(Options),
   FunctionAbs = scan_functions(Functions),
%%    ok = xqerl_context:import_variables(Variables1),
%%    ok = xqerl_context:import_functions(Functions1),
%%    SetterMap = lists:foldl(fun({_,_,S,V},M) ->
%%                                  maps:put(S, V, M)
%%                            end, maps:new(), SettersAbs),
   EmptyMap = Map#{namespaces => ConstNamespaces}, 

   VariableAbs = scan_variables(EmptyMap,Variables),
%%    [attribute('element-namespace', DefElNs),
%%     attribute('import-functions', Functions1),
%%     attribute('import-variables', Variables1),
%%     attribute('context-item', if_empty(ContextItem, {'item', 'external', 'undefined'}))
%%    ] ++ 
%%    SettersAbs ++ 
%%    NamespaceAbs ++
%%    OptionAbs ++ 
   [attribute(module, list_to_atom(ModNs))]++
   VariableAbs ++
   FunctionAbs ++ 
   export_variables(Variables, EmptyMap) 
   ++
   export_functions(Functions)
   ++
   variable_functions(EmptyMap, Variables) 
   ++ 
   function_functions(EmptyMap, Functions);

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

scan_mod(#xqModule{version = {Version,Encoding}, 
                   prolog = Prolog, 
                   type = main, 
                   body = Body}, Map) ->
%%    _ = valid_ver(Version),
%%    _ = valid_enc(string:to_upper(Encoding)),      
   xqerl_context:set_statically_known_functions([]), %%% get rid of this!!
   xqerl_context:init(),
   _ = init_mod_scan(),
   DefElNs     = xqerl_static:pro_def_elem_ns(Prolog),
%%    _           = pro_def_func_ns(Prolog),
   ContextItem = xqerl_static:pro_context_item(Prolog,main),
%%    Setters     = pro_setters(Prolog),
   Namespaces  = xqerl_static:pro_namespaces(Prolog,[],DefElNs),
   Imports     = xqerl_static:pro_mod_imports(Prolog),
%%    Options     = pro_options(Prolog),
   Variables   = xqerl_static:pro_glob_variables(Prolog),
   Functions   = xqerl_static:pro_glob_functions(Prolog),
   StaticNamespaces = xqerl_context:static_namespaces(),
   %?dbg("{Variables}",{Variables}),
   ConstNamespaces  = xqerl_static:overwrite_static_namespaces(StaticNamespaces, Namespaces),
   {Functions1, Variables1} = xqerl_context:get_module_exports(Imports),
   %io:format("{Functions1, Variables1}: ~p~n",[{Functions1, Variables1}]),
   % analyze for cyclical references
%%    true = analyze_fun_vars(Functions, Variables),
   ?dbg("Imports",Imports),
   %?dbg("DefElNs",DefElNs),
   %?dbg("Namespaces",Namespaces),
   %?dbg("StaticNamespaces",StaticNamespaces),
   %?dbg("ConstNamespaces",ConstNamespaces),
   %?dbg("Functions1",Functions1),
  
%%    SettersAbs = scan_setters(Setters),
%%    NamespaceAbs = scan_namespaces(Namespaces),
%%    OptionAbs = scan_options(Options),
   FunctionAbs = scan_functions(Functions),
   ok = xqerl_context:import_variables(Variables1),
   ok = xqerl_context:import_functions(Functions1),
%%    SetterMap = lists:foldl(fun({_,_,S,V},M) ->
%%                                  maps:put(S, V, M)
%%                            end, maps:new(), SettersAbs),
   EmptyMap = Map#{namespaces => ConstNamespaces,
                   variables => 
                    [begin
                        Name1 = resolve_qname(Name, Map),
                        {Name2,A} = variable_function_name(Id),
                        {Name1, Type, Annos, {Name2,A} }
                     end
                    || #xqVar{id = Id, 
                              annotations = Annos, 
                              name = Name, 
                              type = Type} 
                    <- Variables   ]}, 
   %?dbg("Variables",Variables),
   VariableAbs = scan_variables(EmptyMap,Variables),
   %?dbg("VariableAbs",VariableAbs),
%%    [attribute('element-namespace', DefElNs),
%%     attribute('import-functions', Functions1),
%%     attribute('import-variables', Variables1),
%%     attribute('context-item', if_empty(ContextItem, {'item', 'external', 'undefined'}))
%%    ] ++ 
%%    SettersAbs ++ 
%%    NamespaceAbs ++
%%    OptionAbs ++ 
   VariableAbs ++
   FunctionAbs ++ 
   export_variables(Variables, EmptyMap) 
   ++
   export_functions(Functions)
   ++
   variable_functions(EmptyMap, Variables) 
   ++ 
   function_functions(EmptyMap, Functions)
   ++ 
   body_function(EmptyMap, Body, ContextItem)
   .

body_function(ContextMap, Body, ContextItem) ->
   _ = erlang:put(ctx, 1),
[
 {function,?L,init,0,
  [{clause,?L,
    [],
    [],
    [ % body here
      {call,7,{remote,7,{atom,7,xqerl_context},{atom,7,init}},[]},
      init_fun_abs(ContextMap, [])
    ]}
 ]
}, 
 {function,?L,main,1,
[{clause,?L,[{var,?L,'Options'}],[],
[{match,?L,{var,?L,'Ctx0'},
  {call,?L,{atom,?L,init},[]}}
%%    [{atom,2,namespaces},
%%     begin
%%        Base = maps:get(namespaces, ContextMap),
%%        lists:foldr(fun({P,N},Acc) ->
%%                          {cons,?L,{tuple,?L,[{string,?L,P},atom_or_string(N)]},Acc}
%%                    end, {nil,?L}, Base)
%%     end,
%% {call,3,{remote,3,{atom,3,maps},{atom,3,put}},[{atom,3,'base-uri'}, expr_do([], maps:get('base-uri', ContextMap)),
%% {call,6,{remote,6,{atom,6,lists},{atom,6,foldl}},
%%  [%fun
%%   {'fun',?L,{clauses,[{clause,?L,[{tuple,?L,[{var,?L,'K'},{var,?L,'V'}]},{var,?L,'M'}],[],
%%                        [{call,?L,{remote,?L,{atom,?L,maps},{atom,?L,put}},
%%                         [{var,?L,'K'},{var,?L,'V'},{var,?L,'M'}]}]
%%                         }]}},
%%   {call,6,{remote,6,{atom,6,maps},{atom,6,new}},[]},
%%   {var,?L,'Options'}
%%   ]}
%% ]}
%% ]}},
%% {call,7,{remote,7,{atom,7,xqerl_context},{atom,7,init}},[]}%,
%% %{call,7,{atom,7,get_namespaces},[]}
]++
[{match,?L,{var,?L,'Ctx'}, 
  if ContextItem == [] -> % is context set?
        {var,?L,'Ctx0'};
     true ->
        NextVar = next_var_name(),
        {block,?L,
        [{match,?L,{var,?L,NextVar}, expr_do(ContextMap, ContextItem)},
         {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_context_position}},
          [{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_context_item}},
             [{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_context_size}},
               [{var,?L,'Ctx0'},
                {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,size}},[{var,?L,NextVar}]}             
               ]},
              {var,?L,NextVar}
             ]},
           {integer,?L,1}
           ]}
         ]}
   end
 }] ++
     lists:map(fun({N,_,_,{V,_}}) ->
                 ?dbg("{N,V}",{N,V}),
                 %{VarAbs,_Type} = get_variable_ref(N, maps:put(ctx_var, 'Ctx',ContextMap)),
                 %?dbg("VarAbs",VarAbs),
                 {call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,put}},[{atom,?L,V},{call,?L,{atom,?L,V},[{var,?L,'Ctx'}]} ]}  
           end, lists:reverse(maps:get(variables, ContextMap))) % reverse list that the dependencies are correct
 ++    
 % set all the external variables here
 alist(expr_do(maps:put(ctx_var, 'Ctx',ContextMap), Body))
}]}]
.
%xqerl_context:get_in_scope_variables()
%get_variable_ref(#qname{namespace = Ns, prefix = Px, local_name = Ln}, Map)
   
variable_functions(ContextMap, Variables) ->
   CtxName = get_context_variable_name(ContextMap),
   %?dbg(?FUNCTION_NAME,?LINE),
   Specs = [begin 
               erlang:put(ctx, 1),
               {Name, Arity} = variable_function_name(Id),
               %{Name, Arity} = variable_function_name(resolve_qname(QName, ContextMap)),
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
                                   [{atom,?L,Name},{var,?L,CtxName}, {var,?L,'Tmp'} ]},
                                  [
                                   {clause,?L,[{atom,?L,undefined}],[],
                                    [{call,?L,{remote,?L,{atom,?L,xqerl_error},{atom,?L,error}},
                                      [{atom,?L,'XPDY0002'}]}]},
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
               {function, ?L, Name, Arity,
                [{clause,?L, 
                  [{var,?L, CtxName}], % params
                  [], % guards
                  % body
                 %% when external, check for set value first, then default, or then XPDY0002 when not set. 

                  %xqerl_context:add_variable_value(Key, Value)
                  ExternAbs
                 }]}
            end  
           || #xqVar{id = Id, name = QName, expr = Expr, external = Ext} 
           <- Variables   ],
   Specs.

function_functions(ContextMap, Functions) ->
   CtxName = get_context_variable_name(ContextMap),
   Specs = [begin
               erlang:put(ctx, 1),
               {FName, Arity1} = function_function_name(Id, Arity),
               % add parameters to scope
               {List,Map2} =  lists:mapfoldl(fun(#xqVar{id = VId,
                                                        name = #qname{namespace = Ns, prefix = Px} = Name,
                                                        type = Type, 
                                                        annotations = Annos}, Map) ->
                                     VarName = list_to_atom(lists:concat(["Param__var_", VId])),
                                     Ns2 = case Ns of
                                              undefined ->
                                                 proplists:get_value(Px, maps:get(namespaces, ContextMap));
                                              _ ->
                                                 Ns
                                           end,
                                     Name1 = Name#qname{namespace = Ns2},
                                     %% {name,type,annos,Name}
                                     NewMap = add_param({Name1,Type,Annos,VarName}, Map),
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
                        [expr_do(Map2, Expr)]
                     end
                     }]},
               Internal
            end  
           || #xqFunction{id = Id, 
                          arity = Arity,
                          params = Params,
                          body = Expr,
                          type = ReturnType} 
           <- Functions   ],
   Specs.

export_functions(Functions) ->
   Specs = [ function_function_name(Id, Arity) 
           || #xqFunction{id = Id, 
                          arity = Arity} 
           <- Functions   ],
   [attribute(export, Specs)].

export_variables(Variables, Ctx) ->
   Specs = [ variable_function_name(Id)
             %variable_function_name(resolve_qname(Name, Ctx))
           
           || #xqVar{id = Id, name = Name} 
           <- Variables   ],
   [attribute(export, Specs)].


attribute(Name,Val) ->
   erlang:list_to_tuple([attribute,?L,Name,Val]).
   
variable_function_name(Id) ->
   {list_to_atom(lists:concat(["var$^",integer_to_list(Id)])), 1}.

function_function_name(Id, Arity) ->
   {list_to_atom(lists:concat(["fx$^",integer_to_list(Id)])), Arity + 1}.

param_types(Params) ->
   %?dbg("param_types", Params),
   [ T || #xqVar{type = T} <- Params].


% ignoring pragmas for now
expr_do(_Ctx, {pragma, _Pragmas, []}) ->
   xqerl_error:error('XQST0079');
expr_do(Ctx, {pragma, Pragmas, Exprs}) ->
   % just check for good names
   _ = lists:foreach(fun({Name,_}) ->
                           #qname{namespace = N} = resolve_qname(Name, Ctx),
                           if N == default -> % no default pragma namespace
                                 xqerl_error:error('XPST0081');
                              N == "" -> % no default pragma namespace
                                 xqerl_error:error('XPST0081');
                              true ->
                                 ok
                           end
                     end, Pragmas),
   expr_do(Ctx, Exprs);

expr_do(_Ctx, undefined) ->
   {atom,?L,undefined};
% try/catch
expr_do(Ctx, {'try',Expr,{'catch',CatchClauses}}) ->
   TryAbs = expr_do(Ctx, Expr),
   
   CodeVar = next_var_name(),
   DescVar = next_var_name(),
   ValuVar = next_var_name(),
   ModuVar = next_var_name(),
   LineVar = next_var_name(),
   ColnVar = next_var_name(),
   
   ErrNs = "http://www.w3.org/2005/xqt-errors",
   
   NewCodeVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "code"},#xqSeqType{type = 'xs:QName', occur = one},[],CodeVar},
   NewDescVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "description"},#xqSeqType{type = 'xs:string', occur = zero_or_one},[],DescVar},
   NewValuVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "value"},#xqSeqType{type = 'item', occur = zero_or_many},[],ValuVar},
   NewModuVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "module"},#xqSeqType{type = 'xs:string', occur = zero_or_one},[],ModuVar},
   NewLineVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "line-number"},#xqSeqType{type = 'xs:integer', occur = zero_or_one},[],LineVar},
   NewColnVar = {#qname{namespace = ErrNs,prefix = "err", local_name = "column-number"},#xqSeqType{type = 'xs:integer', occur = zero_or_one},[],ColnVar},
   
   Ctx0 = add_variable(NewCodeVar, Ctx),
   Ctx1 = add_variable(NewDescVar, Ctx0),
   Ctx2 = add_variable(NewValuVar, Ctx1),
   Ctx3 = add_variable(NewModuVar, Ctx2),
   Ctx4 = add_variable(NewLineVar, Ctx3),
   Ctx5 = add_variable(NewColnVar, Ctx4),
   
   Clauses = lists:flatmap(fun({Errors,DoExpr}) ->
                             DoExprAbs = expr_do(Ctx5, DoExpr),
                             lists:map(fun(#xqNameTest{name = #qname{namespace = Ns,local_name = Ln}}) ->
                                             NamePattern = {tuple,?L,[{atom,?L,'xqError'},
                                                                      {match,?L,
                                                                      {tuple,?L,
                                                                       [{atom,?L,'qname'},
                                                                         if Ns == "*" -> {var,?L,'_'};
                                                                            %true -> {string,?L,mask_namespace(Ns)}
                                                                            true -> {string,?L,Ns}
                                                                         end,
                                                                         {var,?L,'_'},
                                                                         if Ln == "*" -> {var,?L,'_'};
                                                                            true -> {string,?L,Ln}
                                                                         end]},
                                                                       {var,?L,CodeVar}
                                                                      },
                                                                      {var,?L,DescVar},
                                                                      {var,?L,ValuVar},
                                                                      {tuple,?L,[{var,?L,ModuVar},{var,?L,LineVar},{var,?L,ColnVar}]}
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
   Body = {'fun',?L,
    {clauses,
     [{clause,?L,[{var,?L, NextCtxVar}|ParamList],[],
       [expr_do(Ctx2, Expr)]
      }]
    }
   },
   %?dbg("ParamList",Fx),
   abs_function(Ctx, F, Body) ;
%% % named function ref
%% expr_do(Ctx, #xqFunction{id = _Id,
%%                          name = #qname{} = Name, % fun object
%%                          annotations = _Annotations, 
%%                          arity = Arity,
%%                          params = _Params,
%%                          body = _Expr}) ->
%%    get_function_ref({Name, Arity},Ctx);

%% expr_do(Ctx, {'function-ref', #qname{} = Name, Arity} ) ->
%%    get_function_ref({Name, Arity},Ctx);
%TODO fix the context item
expr_do(Ctx, {'context-item', {Type,External,Expr}} )->
   expr_do(Ctx, Expr);
expr_do(_Ctx, {map, []} ) -> % empty map
   {call,?L,{remote,?L,{atom,?L,maps},{atom,?L,new}}, []};
expr_do(Ctx, {map, Vals} ) ->
   {map,?L,
    lists:map(fun({'map-key-val',Key,Val}) ->
                    KeyExp = expr_do(Ctx,Key),
                    {map_field_assoc,?L,
                     {call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,key_val}}, [KeyExp]},
                     {tuple,?L,[KeyExp, expr_do(Ctx,Val)]}}
              end, Vals)
   }
   ;
expr_do(Ctx, {array, {expr, Expr}} )->
   ?dbg("array",Expr),
   {call,?L,{remote,?L,{atom,?L,xqerl_array},{atom,?L,from_list}},
    [lists:foldr(fun(E,Acc) ->
                       {cons,?L,expr_do(Ctx, E),Acc}
               end,{nil,?L}, Expr)
     ]
   };
expr_do(Ctx, {array, Expr} )->
   ?dbg("array",Expr),
   {call,?L,{remote,?L,{atom,?L,xqerl_array},{atom,?L,from_list}},
    [lists:foldr(fun(E,Acc) ->
                       {cons,?L,expr_do(Ctx, E),Acc}
               end,{nil,?L}, Expr)
     ]
   };
expr_do(Ctx, #xqQuery{query = Qry} )->
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,return_value}},[
   expr_do(Ctx, Qry)]};
expr_do(Ctx, [T]) when is_tuple(T) ->
   expr_do(Ctx, T);
%% expr_do(_Ctx, {xqAtomicValue,'xs:string',Val}) ->
%%    {tuple,?L,[{atom,?L,xqAtomicValue},{atom,?L,'xs:string'},{string,?L,Val}]};
%% expr_do(_Ctx, {xqAtomicValue,'xs:integer',Val}) ->
%%    {tuple,?L,[{atom,?L,xqAtomicValue},{atom,?L,'xs:integer'},{integer,?L,Val}]};
%% expr_do(_Ctx, {xqAtomicValue,'xs:decimal',Val}) ->
%%    {tuple,?L,[{atom,?L,xqAtomicValue},{atom,?L,'xs:decimal'},{float,?L,Val}]};
%% expr_do(_Ctx, {xqAtomicValue,'xs:double',Val}) ->
%%    {tuple,?L,[{atom,?L,xqAtomicValue},{atom,?L,'xs:double'},{float,?L,Val}]};
expr_do(_Ctx, #xqAtomicValue{} = A) ->
   erl_syntax:revert(erl_syntax:abstract(A));

expr_do(Ctx, 'context-item') ->
   CtxName = get_context_variable_name(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[{var,?L,CtxName}]};
   %{var,?L,CtxName};
expr_do(Ctx, {range,Expr1,Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,range}},
    [
     {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,as_seq}},[expr_do(Ctx, Expr1),
                                                                       abs_seq_type(Ctx, #xqSeqType{type = 'xs:integer', occur = zero_or_one})]},
     {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,as_seq}},[expr_do(Ctx, Expr2),
                                                                       abs_seq_type(Ctx, #xqSeqType{type = 'xs:integer', occur = zero_or_one})]}
    ]};
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

%% expr_do(Ctx, {List, Preds}) when is_tuple(List), is_list(Preds) ->
%%    {block,?L,
%%    [{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,set_context_item}},[expr_do(Ctx, List)]},
%%    expr_do(Ctx, Preds)
%%    ]};

% instance of / castable
expr_do(Ctx, {instance_of,Expr1,Expr2}) ->
   %?dbg("instance_of abs",{Ctx, Expr2}),
   E1 = expr_do(Ctx, Expr1),
   E2 = expr_do(Ctx, Expr2),
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,instance_of}},[E1,E2]};

expr_do(_Ctx, {castable_as,_Expr1,#xqSeqType{type = #qname{prefix = "xs",local_name = "NOTATION"}}}) -> % namespace sensitive
   xqerl_error:error('XPST0080');
expr_do(_Ctx, {castable_as,'empty-sequence',#xqSeqType{occur = one}}) -> % bad empty cast
   abs_boolean(false);
expr_do(_Ctx, {castable_as,'empty-sequence',#xqSeqType{occur = zero_or_one}}) -> % good empty cast
   abs_boolean(true);
expr_do(_Ctx, {castable_as,_Expr1,#xqSeqType{type = #qname{prefix = "xs",local_name = "*"}}}) -> % bad cast
   xqerl_error:error('XPST0003');
expr_do(Ctx, {castable_as,Expr1,#xqSeqType{type = #qname{prefix = "xs",local_name = "QName"}}}) -> % namespace sensitive
   Namespaces = abs_ns_list(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,castable}},
    [expr_do(Ctx, Expr1), {atom,?L,'xs:QName'} ,Namespaces]
   };
expr_do(Ctx, {castable_as,Expr1,Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,castable}},[expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)
   ]};

expr_do(_Ctx, {cast_as,_Expr1,#xqSeqType{type = #qname{prefix = "xs",local_name = "NOTATION"}}}) -> % namespace sensitive
   xqerl_error:error('XPST0080');
expr_do(_Ctx, {cast_as,'empty-sequence',#xqSeqType{occur = one}}) -> % bad empty cast
   xqerl_error:error('XPTY0004');
expr_do(Ctx, {cast_as,'empty-sequence',#xqSeqType{occur = zero_or_one}}) -> % good empty cast
   expr_do(Ctx, 'empty-sequence');
expr_do(_Ctx, {cast_as,_Expr1,#xqSeqType{type = #qname{prefix = "xs",local_name = "*"}}}) -> % bad cast
   xqerl_error:error('XPST0003');
expr_do(Ctx, {cast_as,Expr1,#xqSeqType{type = #qname{prefix = "xs",local_name = "QName"}}}) -> % namespace sensitive
   Namespaces = abs_ns_list(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,cast_as}},
    [expr_do(Ctx, Expr1), {atom,?L,'xs:QName'} ,Namespaces]
   };
expr_do(Ctx, {cast_as,Expr1,Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,cast_as}},[expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)
   ]};

expr_do(Ctx, {promote_to,Expr1,Expr2}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,cast_as_seq}},[expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)
   ]};
%TODO treat statement for static/dynamic typing
%% expr_do(Ctx, {treat_as,Expr1,Expr2}) ->
%%    {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,treat_as_seq}},[expr_do(Ctx, Expr1),expr_do(Ctx, Expr2)
%%    ]};

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
expr_do(Ctx, {content_expr, Expr}) ->
   expr_do(Ctx, {expr, Expr});
expr_do(Ctx, {'node-cons', Expr0}) ->
   Expr = maybe_strip_boundry_space(Ctx,Expr0),
   {call,?L,{remote,?L,{atom,?L,xqerl_node},{atom,?L,new_fragment}},
    [expr_do(Ctx, Expr),
     expr_do([],maps:get('base-uri', Ctx)) % base_uri     
    ]};
expr_do(Ctx, {direct_cons, Expr0}) ->
   Expr = maybe_strip_boundry_space(Ctx,Expr0),
   {call,?L,{remote,?L,{atom,?L,xqerl_node},{atom,?L,new_fragment}},
    [expr_do(Ctx, Expr),
     expr_do([],maps:get('base-uri', Ctx)) % base_uri     
    ]};
expr_do(Ctx, {comp_cons, Expr0}) ->
   Expr = maybe_strip_boundry_space(Ctx,Expr0),
   {call,?L,{remote,?L,{atom,?L,xqerl_node},{atom,?L,new_fragment}},
    [expr_do(Ctx, Expr),
     expr_do([],maps:get('base-uri', Ctx)) % base_uri     
    ]};
expr_do(Ctx, {atomize, Expr0}) ->
   {call,?L,{remote,?L,{atom,?L,xqerl_node},{atom,?L,atomize_nodes}},
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
                              {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},
                               [{call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}},
                                 [{var,?L,get_context_variable_name(Ctx)},
                                  expr_do(Ctx3, Test)] }]},
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
expr_do(Ctx, #xqFunction{params = Params, body = {M,F,A}}) ->
   CtxName = get_context_variable_name(Ctx),
   NewArgs = lists:map(fun(P) ->
                             expr_do(Ctx,P)
                       end, Params),
   {'fun',?L,
    {'function',
     {atom,?L,M},
     {atom,?L,F},
     {integer,?L,A}}};
expr_do(Ctx, #xqFunction{params = Params, body = {F,A}}) ->
   CtxName = get_context_variable_name(Ctx),
   NewArgs = lists:map(fun(P) ->
                             expr_do(Ctx,P)
                       end, Params),
   {'fun',?L,
    {'function',
     F,
     A}};

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
   from_list_to_seq(Exprs);

expr_do(Ctx, {expr,E}) ->
   expr_do(Ctx, E);
expr_do(Ctx, {sequence,E}) ->
   expr_do(Ctx, E);



expr_do(_Ctx, []) ->
    {nil,?L};

% steps

expr_do(Ctx, #xqAxisStep{} = Step) ->
   CtxVar = get_context_variable_name(Ctx),
   Base = {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[{var,?L,CtxVar}]},
   step_expr_do(Ctx, {step, Step}, Base);

% function based path
expr_do(Ctx, {step, {'function-call', _, _, _} = Base, Step}) ->
   Src = expr_do(Ctx, {expr, Base}),
   step_expr_do(Ctx, Step, Src);
%%    step_expr_do(Ctx, {step, Base, Step}, []);


expr_do(Ctx, {step, #xqVarRef{name = Name}, Step}) ->
   {VarAbs,_} = get_variable_ref(Name, Ctx),
   Src = {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,union}},
          [VarAbs,
           {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,empty}},[]} ]},
   step_expr_do(Ctx, Step, Src);

expr_do(_Ctx, {variable, {Name,_}}) when is_atom(Name) ->
   {call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,get}},[{atom,?L,Name}]};
expr_do(_Ctx, {variable, Name}) when is_atom(Name) ->
   {var,?L,Name};

expr_do(Ctx, {step, {expr, Base}, Step}) ->
   Src = expr_do(Ctx, {expr, Base}),
   step_expr_do(Ctx, Step, Src);

expr_do(Ctx, {step, Base, Step}) ->
   Src = expr_do(Ctx, Base),
   step_expr_do(Ctx, Step, Src);
%%    CurrCtxVar = get_context_variable_name(Ctx),
%%    Src = CurrCtxVar,
%% %%    Src = {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[{var,?L,CurrCtxVar}]},
%%    BaseAbs = step_expr_do(Ctx, Base, Src),
%%    %?dbg("BaseAbs",BaseAbs),
%%    %?dbg("Step",Step),
%%    step_expr_do(Ctx, Step, BaseAbs);

expr_do(Ctx, {step, Base}) ->
   CurrCtxVar = get_context_variable_name(Ctx),
   Src = {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[{var,?L,CurrCtxVar}]},
   step_expr_do(Ctx, Base, Src);

expr_do(Ctx, {postfix, {'function-ref',Q,V}, {predicates = [{arguments,Args}]}}) ->
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

%%    CurrCtxVar = get_context_variable_name(Ctx),
%%    Var = expr_do(Ctx, {'function-ref',Q,V}),
%%    
%%    ArgAbs = lists:map(fun(Arg) ->
%%                             expr_do(Ctx, Arg)
%%                       end, Args),
%%    {call,?L,Var,[{var,?L,CurrCtxVar}]++ArgAbs};

expr_do(Ctx, {postfix, InlineFunc, [{arguments,Args}|TArgs]}) ->
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
   TempVar = next_var_name(),
   Fx = expr_do(Ctx, InlineFunc),% this is a fun
   %?dbg("Fx",Fx),
   {block,?L, 
       [{match,?L,{var,?L,NextVar},
         {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,value}},[
          Fx% this is a fun, or map or array...
         ]}},
         {'case',?L,
           {op,?L,'==', {var,?L,NextVar}, {'fun',?L,{function,{atom,?L,xqerl_fn},{atom,?L,concat},{integer,?L,2}}}},
          [
           {clause,?L,[{atom,?L,true}],[],
            [{call,?L,{var,?L,NextVar},[{var,?L,CtxVar},
                                        from_list_to_seq(ArgAbs)
                                      ]}]
           }
          ,
           {clause,?L,
            [{tuple,?L,[{atom,?L,xqFunction},{var,?L,'_'},{var,?L,'_'},{var,?L,'_'},
                        {var,?L,'_'},{var,?L,'_'},{var,?L,'_'},{var,?L,TempVar}]}],
            [],
            [{call,?L,{var,?L,TempVar},[{var,?L,CtxVar}|ArgAbs]}
            ]}
          ,
           {clause,?L,
            [{var,?L,'_'}],
            [[{call,?L,{remote,?L,{atom,?L,erlang},{atom,?L,is_map}},[{var,?L,NextVar}]}]],
            [{call,?L,{remote,?L,{atom,?L,xqerl_map},{atom,?L,get}},
              [{var,?L,CtxVar},{var,?L,NextVar},if ArgAbs == [] ->
                                                      {nil,?L};
                                                   true ->
                                                      hd(ArgAbs)
                                                end]}
            ]}
          ,
           {clause,?L,[{var,?L,'_'}],[],
            [{call,?L,{var,?L,NextVar},[{var,?L,CtxVar}|ArgAbs]}]}
           
          ] % clauses   expr_do(Ctx, RetExpr)
         }        
        ]
       };

expr_do(Ctx, {postfix, Base, Step }) ->
   NextVar = next_var_name(),
   Source = expr_do(Ctx, Base),
   {block,?L,
    [
      {match,?L,{var,?L,NextVar}, Source},
      step_expr_do(Ctx, Step, {var,?L,NextVar})
    ]};

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

%%    Local = (catch something),
%%    if RootExpr == Local ->
%%          ok;
%%       true ->
%%          Local1 = somethingelse,
%%          if RootExpr == Local1 ->
%%                ok;
%%             true ->
%%                notok            
%%          end
%%    end;
%% [{match,1,{var,1,'Local'},{'catch',1,{atom,1,something}}},
%%  {'if',2,
%%        [{clause,2,[],
%%                 [[{op,2,'==',{var,2,'RootExpr'},{var,2,'Local'}}]],
%%                 [{atom,3,ok}]},
%%         {clause,4,[],
%%                 [[{atom,4,true}]],
%%                 [{match,5,{var,5,'Local1'},{atom,5,somethingelse}},
%%                  {'if',6,
%%                        [{clause,6,[],
%%                                 [[{op,6,'==',
%%                                       {var,6,'RootExpr'},
%%                                       {var,6,'Local1'}}]],
%%                                 [{atom,7,ok}]},
%%                         {clause,8,[],
%%                                 [[{atom,8,true}]],
%%                                 [{atom,9,notok}]}]}]}]}]
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
                                   end, Abs, MatchExprs)
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
                            {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},[
                            {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,instance_of}},[{var,?L,CaseVar},abs_seq_type(Ctx,Type)]}]},
                            [
                             {clause,?L,[abs_boolean(true)],[],
                              [{block,?L,
                              [{match,?L,{var,?L,VarName},
                               {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,cast_as_seq}},
                                [{var,?L,CaseVar},abs_seq_type(Ctx,Type)]}},
                                 expr_do(NewCtx, RetExpr)
                               ]}]},
                             {clause,?L,[{var,?L,'_'}  ],[],Acc}
                             ] % clauses   expr_do(Ctx, RetExpr)
                           }];
                        ({'case-novar',{'type', Type},{return,RetExpr}}, Acc) ->
                           [{'case',?L,
                             {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},[
                            {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,instance_of}},[{var,?L,CaseVar},abs_seq_type(Ctx,Type)]}]},
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
                     end, {nil,?L}, ExpandedCases),   
   %?dbg("CaseNestExprs",CaseNestExprs),
   {block,?L,[
    {match,?L,{var,?L,CaseVar}, expr_do(Ctx,RootExpr)},
    CaseNestExprs
   ]};

   
%%    {'case',?L,
%%     {call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,boolean}}, [{var,?L,'Ctx'}, expr_do(Ctx, If)] },
%%     [{clause,?L,[abs_boolean(#xqAtomicValue{type = 'xs:boolean', value = true})],[],xqerl_flwor:singleton(expr_do(Ctx, Then))},
%%      {clause,?L,[{var,?L,'_'}  ],[],xqerl_flwor:singleton(expr_do(Ctx, Else))}]};


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

% loop is grouped in sections by type for/let/where/window together because they can be done atomically
%% match each section to a variable that holds a list of variable tuples, send variable into next section
expr_do(Ctx, #xqFlwor{loop = Loop, return = Return}) ->
   %FlworTupName = next_var_tuple_name(),
   Ctx0 = set_iterator_name(Ctx,[]), % Clear any nested names
   %Ctx1 = set_variable_tuple_name(Ctx0, FlworTupName),
   % mapfold to map each abs section and fold the context up
   {Abs1,Ctx2} = 
     lists:mapfoldl(fun(Section, Ctx3) ->
                         %?dbg("Ctx3",Ctx3),
                         case Section of
                            % each must return {Abs,NewCtx}
                            {for_let,X} ->
                               {Abs,NewCtx} = flw_do(Ctx3, X),
                               FlworTupName1 = next_var_tuple_name(),
                               Ctx4 = set_variable_tuple_name(NewCtx, FlworTupName1),
                               { {match,?L,{var,?L,FlworTupName1},
                                  {call,?L,
                                   {'named_fun',?L, next_var_name(),
                                     [{clause,?L,[],[],alist(Abs)}]
                                   },[]}},Ctx4};
                            {where,X} ->
                               {Abs,NewCtx} = where_clause_gen(Ctx3, X),
                               FlworTupName1 = next_var_tuple_name(),
                               Ctx4 = set_variable_tuple_name(NewCtx, FlworTupName1),
                               { {match,?L,{var,?L,FlworTupName1},
                                  {call,?L,
                                   {'named_fun',?L, next_var_name(),
                                     [{clause,?L,[],[],alist(Abs)}]
                                   },[]}},Ctx4};
                            {order,X} ->
                               {Abs,NewCtx} = order_do(Ctx3, X),
                               FlworTupName1 = next_var_tuple_name(),
                               Ctx4 = set_variable_tuple_name(NewCtx, FlworTupName1),
                               { {match,?L,{var,?L,FlworTupName1},
                                  {call,?L,
                                   {'named_fun',?L, next_var_name(),
                                     [{clause,?L,[],[],alist(Abs)}]
                                   },[]}},Ctx4};
                            {group,X} ->
                               {Abs,NewCtx} = group_do(Ctx3, X),
                               FlworTupName1 = next_var_tuple_name(),
                               Ctx4 = set_variable_tuple_name(NewCtx, FlworTupName1),
                               { {match,?L,{var,?L,FlworTupName1},
                                  {call,?L,
                                   {'named_fun',?L, next_var_name(),
                                     [{clause,?L,[],[],alist(Abs)}]
                                   },[]}},Ctx4};
                            {count,X} ->
                               {Abs,NewCtx} = count_do(Ctx3, X),
                               FlworTupName1 = next_var_tuple_name(),
                               Ctx4 = set_variable_tuple_name(NewCtx, FlworTupName1),
                               { {match,?L,{var,?L,FlworTupName1},
                                  {call,?L,
                                   {'named_fun',?L, next_var_name(),
                                     [{clause,?L,[],[],alist(Abs)}]
                                   },[]}},Ctx4};
                            _ ->
                              io:format("GOT: ~p~n",[Section]),
                              {[], Ctx3}
                         end
                   end, Ctx0, Loop),
   RetAbs = return_do(Ctx2, get_variable_tuple_name(Ctx2), Return),
   {block,?L, lists:flatten(Abs1 ++ [RetAbs])};

expr_do(Ctx, [Sing]) ->
   expr_do(Ctx, Sing);
expr_do(Ctx, List) when is_list(List) ->
   Exprs = lists:map(fun(E) ->
                           expr_do(Ctx, E)
                     end, List),
   from_list_to_seq(Exprs);

expr_do(_Ctx, Expr) ->
   ?dbg("TODO", Expr),
   {nil,?L}.

step_expr_do(Ctx, {postfix,#xqVarRef{} = Var, #xqPostfixStep{} = Step}, _Source) -> % variables aren't step, but can be dupes
   step_expr_do(Ctx, Step,expr_do(Ctx, Var));

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

step_expr_do(Ctx, {step, {'function-call', _, _, _} = FuncStep, Next}, SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   NewSource = {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
                [{var,?L,CtxVar},
                 {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, FuncStep))}]}},
                 SourceVarName]},
   step_expr_do(Ctx, Next, NewSource);
step_expr_do(Ctx, {step, {'function-ref', _, _} = FuncStep, Next}, _Source) ->
   NewSource = expr_do(Ctx, FuncStep),
   step_expr_do(Ctx, Next, NewSource);

step_expr_do(Ctx, {step, Step, Next}, SourceVarName) ->
   %?dbg(step_expr_do,?LINE),
   %NextCtxVar = next_ctx_var_name(),
   %Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   NewSource = step_expr_do(Ctx, Step, SourceVarName),
   step_expr_do(Ctx, Next, NewSource);

step_expr_do(Ctx, #xqAxisStep{direction = Direction, axis = Axis, node_test = #xqNameTest{name = Q}, predicates = Preds}, SourceVarName) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   PredFuns = lists:foldr(fun({predicate, P}, Abs) ->
                              case P of
                                 [#xqAtomicValue{type = 'xs:integer'} = A] -> % positional predicate
                                    {cons,?L,abs_simp_atomic_value(A), Abs};
                                 _ ->
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
   if Axis == namespace andalso Kind == 'namespace';
      Axis == self andalso Kind == 'namespace' ->
         ok;
      Axis == child andalso Kind == 'namespace' ->
         xqerl_error:error('XPST0003');
      Kind == 'namespace' ->
         xqerl_error:error('XPST0005');
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
                                 [#xqAtomicValue{type = 'xs:integer'} = A] -> % positional predicate
                                    {cons,?L,abs_simp_atomic_value(A), Abs};
                                 _ ->
                                    {cons,?L,{'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], alist(expr_do(Ctx1, P))}]}}, Abs}
                              end
                      end, {nil,?L}, Preds),
   KtAbs = abs_kind_test(Ctx,Kt#xqKindTest{name = KName1}),
   {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,Direction}},
    [{var,?L,CtxVar},SourceVarName,{atom,?L,Axis}, KtAbs, PredFuns]};

step_expr_do(Ctx, Preds, SourceVarName) when is_list(Preds) ->
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   PredFuns = lists:foldl(fun({predicate, P}, Abs) ->
                                    %?dbg("P",P),
                                    case P of
                                       [#xqAtomicValue{type = 'xs:integer'} = A] -> % positional predicate
                                          {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,filter}},
                                           [{var,?L,CtxVar},{cons,?L,abs_simp_atomic_value(A),{nil,?L}}, Abs]};
                                       [#xqAtomicValue{type = 'xs:decimal'} = A] -> % positional predicate
                                          {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,filter}},
                                           [{var,?L,CtxVar},{cons,?L,abs_simp_atomic_value(A),{nil,?L}}, Abs]};
                                       [#xqAtomicValue{type = 'xs:double'} = A] -> % positional predicate
                                          {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,filter}},
                                           [{var,?L,CtxVar},{cons,?L,abs_simp_atomic_value(A),{nil,?L}}, Abs]};
                                       [#xqVarRef{name = Name}] -> % positional predicate
                                          {VarAbs,#xqSeqType{type = VarType}} = get_variable_ref(Name, Ctx),
                                          if VarType == 'xs:integer' orelse VarType == 'xs:double' ->
                                                {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,filter}},
                                                 [{var,?L,CtxVar},
                                                  {cons,?L,
                                                   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,singleton_value}},[VarAbs]},
                                                   {nil,?L}}, Abs]};
                                             true ->
                                                {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,filter}},
                                                 [{var,?L,CtxVar},
                                                  {cons,?L,
                                                   {'fun',?L,{clauses,
                                                              [{clause,?L,[{var,?L,NextCtxVar}],[],
                                                                %[{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,eff_bool_val}},
                                                                  alist(expr_do(Ctx1, P))%}]
                                                                }]}},{nil,?L}} ,
                                                   Abs]}
                                          end;
                                       _ ->
                                          {call,?L,{remote,?L,{atom,?L,xqerl_step},{atom,?L,filter}},
                                           [{var,?L,CtxVar},
                                            {cons,?L,
                                             {'fun',?L,{clauses,[{clause,?L,[{var,?L,NextCtxVar}],[], 
                                                                %[{call,?L,{remote,?L,{atom,?L,xqerl_operators},{atom,?L,eff_bool_val}},
                                                                  alist(expr_do(Ctx1, P))%}]
                                                                 }]}},{nil,?L}} ,
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
                                 ?dbg(?LINE,Args),
                                 ?dbg(?LINE,PlaceHolders),
                                 ?dbg(?LINE,NewArgs),
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
                                    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,node_map}},
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

step_expr_do(Ctx, {step, Step}, SourceVarName) ->
   step_expr_do(Ctx, Step, SourceVarName);

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
   %NextCtxVar = next_ctx_var_name(),
   %Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   %{block,?L,
   % [
   %  {match,?L,{var,?L,NextCtxVar},if is_atom(SourceVarName) ->
   %                            {var,?L,SourceVarName};
   %                         true ->
   %                            SourceVarName
   %                      end},
     {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,union}},
      [step_expr_do(Ctx, Expr1,SourceVarName),step_expr_do(Ctx, Expr2,SourceVarName)]}     
   %  ]};
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
step_expr_do(Ctx, {postfix, {'function-ref',Q,V}, {predicates = [{arguments,Args}]}}, SourceVarName) ->
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

step_expr_do(Ctx, {postfix, {'function-call',_,_,_} = Other, {predicates = [{arguments,Args}]}}, SourceVarName) ->
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
                            [expr_do(Ctx1, Expr),
                             abs_simp_atomic_value(#xqAtomicValue{type = 'xs:anyURI', value = maps:get('base-uri', Ctx1)}) % base_uri     
                            ]}
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


%%    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,from_list}},[
%%    lists:foldr(fun(E, Abs) ->
%%                    {cons,?L,step_expr_do(Ctx, E,Source), Abs} 
%%              end, {nil,?L}, List)
%%    ]};
step_expr_do(Ctx, {expr,E}, Source) ->
   step_expr_do(Ctx, E, Source);

step_expr_do(Ctx, 'empty-sequence', _Source) ->
   expr_do(Ctx, 'empty-sequence');

step_expr_do(Ctx, Other, Source) ->
   %?dbg(?LINE,Other),
%%    expr_do(Ctx, Other).
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
     ]}
   .


%get_function_ref({Name,Arity,Args}, Ctx);

%% % return part, changes tuple stream to a sequence
%% fun Loop(I,Stream) ->
%%        case xqerl_flwor:stream_next(I) of
%%           none ->
%%              Stream;
%%           {_K,{Local__var_0,Local__var_1},NewI} ->
%%              % return statement
%%              RetVal =  ?seq:from_list([Local__var_1,
%%                                             
%%                ?seq:from_list([{xqAtomicValue, 'xs:integer', 6},{xqAtomicValue, 'xs:integer', 5},{xqAtomicValue, 'xs:integer', 4}])
%%                                            ]),
%%                
%%              Loop(NewI,?seq:append(RetVal,Stream) )
%%        end
%% end(xqerl_flwor:stream_iter(VarTup__1), ?seq:empty())

return_do(Ctx0, _LastVar,Clause) -> 
   Tuple = {var,?L,get_variable_tuple_name(Ctx0)},
   AllVars = get_variable_tuple(Ctx0),
   %?dbg("return_do",?L),
   RetVal = expr_do(
              set_variable_tuple_name(
              set_iterator_name(Ctx0, []), []) 
                   , Clause),
   NextIterLoop = next_iter_loop_name(),
   NextIterVar = next_iter_name(),
   NextVarTupVar = next_var_name(),
   NextNextIterVar = next_iter_name(),
   
  {call,?L,
   {named_fun,?L,NextIterLoop,
    [{clause,?L,[{var,?L,NextIterVar},{var,?L,NextVarTupVar}],[],
      [{'case',?L,{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,'stream_next'}},[{var,?L,NextIterVar}]}, % case XXX of
       [{clause,?L,[{atom,?L,none}],[],
         [{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,'sort_seq'}},
           [{var,?L,NextVarTupVar}]}
          ]
        },
        {clause,?L,[{tuple,?L,[ {var,?L,'_'},AllVars,{var,?L,NextNextIterVar} ]}],[],
         [{call,?L,{var,?L,NextIterLoop},
           [{var,?L,NextNextIterVar},{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,'append'}},
                                      [RetVal,{var,?L,NextVarTupVar}]}]}]

        }
        ]}]
     }]},
   [{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_iter}},[Tuple]},
    {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,empty}},[]}
   ]
  }.


%{Abs,NewCtx}
order_do(Ctx0, Clauses) -> 
   %set_variable_tuple_name(Ctx, NextVarTupVar)
   NextVarTupVar = next_var_tuple_name(),
   VarTup = get_variable_tuple(Ctx0),
   %?dbg("return_do",?L),
   VarTupName = {var,?L,get_variable_tuple_name(Ctx0)},
   %All = xqerl_context:get_statically_known_collations() ++ [default],
%%    BaseUri = xqerl_types:value(maps:get('base-uri', Ctx0)),
   Funs = lists:foldr(fun({order, Expr, {modifier,{_,Dir},{_,Empty},{_,_Collation}}},Acc) ->
%%                             Coll = if Collation == default ->
%%                                          default;
%%                                       true ->
%%                                          xqerl_lib:resolve_against_base_uri(BaseUri, Collation)
%%                                    end,
%%                            case lists:any(fun(U) -> U == Coll end, All) of
%%                               true ->
%%                                  ok;
%%                               _ ->
%%                                  xqerl_error:error('XQST0076')
%%                            end,
                           {cons,?L,
                            {tuple,?L, [{'fun',?L,{clauses,
                                          [{clause,?L,[VarTup],[],alist(expr_do(Ctx0, Expr))}]}},
                                         {atom,?L,Dir},{atom,?L,Empty}]}
                            , Acc} 
                      end, {nil,?L}, Clauses),
   {
    {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,orderbyclause}},[VarTupName, Funs]},
    set_iterator_name(set_variable_tuple_name(Ctx0, NextVarTupVar),[])
   }.

%{Abs,NewCtx}
count_do(Ctx, [{_, #xqVar{id = Id, name = Name}}]) ->
   VarTupListIn = get_variable_tuple(Ctx),
   CurrVarTupVar = get_variable_tuple_name(Ctx),
   NextVarTupVar = next_var_tuple_name(),
   %NextNextVarTupVar = next_var_tuple_name(),
   NextIterVar = next_iter_name(),
   NextNextIterVar = next_iter_name(),
   NextIterLoop = next_iter_loop_name(),
   TmpCnt = next_var_name(),
   VarName = local_variable_name(Id),
   NewVar  = {Name,#xqSeqType{type = 'xs:integer', occur = 'one'},[],VarName},
   NewCtx  = add_variable(NewVar, Ctx),
   VarTupListOut = get_variable_tuple(NewCtx),
   %CurrIter = get_iterator_name(Ctx),
   %?dbg("VarTupListIn", VarTupListIn),
   %?dbg("VarTupListOut", VarTupListOut),
   {
     % named fun call
     {call,?L,
      {named_fun,?L,NextIterLoop,
       [{clause,?L,[{var,?L,NextIterVar},{var,?L,NextVarTupVar}],[],
         [{'case',?L,{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_next}},[{var,?L,NextIterVar}]}, % case XXX of
          [{clause,?L,[{atom,?L,none}],[],[{var,?L,NextVarTupVar}]},
           {clause,?L,[{tuple,?L,[ {var,?L,TmpCnt},VarTupListIn,{var,?L,NextNextIterVar} ]}],[],
            [{match,?L,{var,?L,VarName},{tuple,?L,[ {atom,?L,xqAtomicValue},{atom,?L,'xs:integer'},{var,?L,TmpCnt} ]}},
             {call,?L,{var,?L,NextIterLoop},
                 [{var,?L,NextNextIterVar},{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,'stream_append'}},[VarTupListOut,{var,?L,NextVarTupVar}]}]
             }
            ]
           }
          ]
          }
         ]}]},
      [{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_iter}},[{var,?L,CurrVarTupVar}]},
       %{var,?L,CurrIter}
       {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_new}},[]}
       ]
     },
   %NewCtx
   set_iterator_name(
       set_variable_tuple_name(NewCtx, NextVarTupVar),[])
   }
   .

%{Abs,NewCtx}
group_do(Ctx0, Clauses) ->
   Incoming = get_variable_tuple_name(Ctx0),
   IncomingVarTup = get_variable_tuple(Ctx0),
   ?dbg("group_do",?L),
   %?dbg("Incoming",Incoming),
   % split the tuples into key and variable tuples
   % reusing the old variable names is okay, because they are out of scope
   % Base contains the match-out for the LC
   NextVarTupVar = next_var_tuple_name(),
   KeyNames = [ Name || #xqGroupBy{grp_variable = #xqVarRef{name = Name}} <- Clauses],
   All = xqerl_context:get_statically_known_collations() ++ [default],
   _ = lists:foreach(fun(#xqGroupBy{collation = Coll}) ->
                           case lists:any(fun(U) -> U == Coll end, All) of
                              true ->
                                 ok;
                              _ ->
                                 xqerl_error:error('XQST0076')
                           end
                     end, Clauses),
   KeyVars = lists:map(fun(Q) ->
                          {V,_} = get_variable_ref(Q, Ctx0),
                          V
                    end, KeyNames),
   KeyTuple = {tuple,?L,KeyVars},
   AllNames = maps:get(variables, Ctx0),
   AllVars = [{var,?L,Name} || {_,_,_,Name} <- AllNames],
   RestVars = lists:filter(fun({var,_,V}) ->
                                 not lists:any(fun({var,_,V1}) ->
                                                     V1 == V
                                               end, KeyVars)
                           end, AllVars),
   RestTuple = {tuple,?L,RestVars},
   AllTuple = {tuple,?L,[KeyTuple,RestTuple]}, % split var name tuple
   CombTuple = {tuple,?L,KeyVars ++ RestVars}, % big tuple for the response
   %?dbg("KeyTuple",KeyTuple),
   %?dbg("RestTuple",RestTuple),
   %?dbg("AllTuple",AllTuple),
   %?dbg("CombTuple",CombTuple),
   TempVar = next_var_name(),
   TempVar1 = next_var_name(),
   TempVar2 = next_var_name(),
   TempVar3 = next_var_name(),
   {
     {block,?L,
      [{match,?L,{var,?L,TempVar},{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_to_list}},[{var,?L,Incoming}]}},
       {match,?L,{var,?L,TempVar1},{lc,?L, AllTuple, [{generate,?L,IncomingVarTup,{var,?L,TempVar}}] }},
       {match,?L,{var,?L,TempVar2},{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,groupbyclause}},[{var,?L,TempVar1}]}},
       {match,?L,{var,?L,TempVar3},{lc,?L, IncomingVarTup, [{generate,?L,CombTuple,{var,?L,TempVar2}}] }},
       {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_from_list}},[{var,?L,TempVar3}]}
     ]},
    set_variable_tuple_name(Ctx0, NextVarTupVar)}.


% for/let/where statement
% return [{qname, atom}|...]
flw_do(Ctx, [] ) ->
   {for_let_where_block_vars(Ctx),
    set_iterator_name(Ctx, [])};

flw_do(Ctx, [C|T]) ->
   % each must return {Abs, Ctx}
   XOut = 
   case C of
      %#xqVar{id = next_id(), 'name' = '$2', 'type' = '$3', 'expr' = '$5'}
      {'let',#xqVar{id = Id, 
                    name = Name, 
                    type = Type, 
                    expr = Expr}} ->
         VarName = local_variable_name(Id),
         NewVar  = {Name,Type,[],VarName},
         %NewCtx  = add_variable(NewVar, Ctx),
         let_clause_gen(Ctx, NewVar, Expr, T);
      %#xqVar{id = next_id(), 'name' = '$2', 'type' = '$3', expr = '$7'}
      {'for',#xqVar{id = Id, 
                    name = Name, 
                    type = Type, 
                    empty = Empty,
                    expr = Expr, 
                    position = undefined}} ->
         VarName = local_variable_name(Id),
         NewVar  = {Name,Type,[],VarName},
         %NewCtx  = add_variable(NewVar, Ctx),
         for_clause_gen(Ctx, NewVar, [], Expr, Empty, T);
      %#xqVar{id = next_id(), 'name' = '$2', 'type' = '$3', position = '$5', expr = '$7'}
      {'for',#xqVar{id = Id, 
                    name = Name, 
                    type = Type,
                    empty = Empty,
                    expr = Expr, 
                    position = #xqPosVar{id = Pid, name = PName}}} ->
         _ = if PName == Name ->
                   xqerl_error:error('XQST0089');
                true ->
                   ok
             end,
         VarName    = local_variable_name(Id),
         PosVarName = local_variable_name(Pid),
         NewVar     = {Name,Type,[],VarName},
         NewPosVar  = {PName,#xqSeqType{type = 'xs:integer', occur = 'one'},[],PosVarName},
         %NewCtx     = add_variable(NewVar, Ctx),
         %NewCtx1    = add_variable(NewPosVar, NewCtx),
         for_clause_gen(Ctx, NewVar, NewPosVar, Expr, Empty, T);
      #xqWindow{} = Wc ->
         window_clause_gen(Ctx, Wc, T)
   end,
   %?dbg("XOut",XOut),
   XOut.


for_let_where_block_vars(Ctx) ->
   AllVars = get_variable_tuple(Ctx),
   %?dbg("for_let_where_block_vars",Ctx),
   Iterator = get_iterator_name(Ctx),
   {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_append}},
    [AllVars,
     if Iterator == [] ->
           {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_new}},[]};
        true ->
           {var,?L,Iterator}
     end
    ]}.


%{Abs, Ctx}
window_clause_gen(Ctx, #xqWindow{type = Type,
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
                                end_expr = EndExpr}, Rest) ->
   {SVar,Ctx0} =  case S of
                     #xqVar{id = Id1,name = Name1} ->
                        Vn1 = local_variable_name(Id1),
                        Var1 = {Name1,WType,[],Vn1},
                        Ctx1 = add_variable(Var1, Ctx),
                        {Var1,Ctx1};
                     undefined ->
                        {{[],[],[],'_'},Ctx}
                  end,
   {SPosVar,Ctx2} =  case SPos of
                        #xqPosVar{id = Id2,name = Name2} ->
                           Vn2 = local_variable_name(Id2),
                           Var2 = {Name2,WType,[],Vn2},
                           Ctx3 = add_variable(Var2, Ctx0),
                           {Var2,Ctx3};
                        undefined ->
                           {{[],[],[],'_'},Ctx0}
                     end,
   {SPrevVar,Ctx4} = case SPrev of
                        #xqVar{id = Id3,name = Name3} ->
                           Vn3 = local_variable_name(Id3),
                           Var3 = {Name3,WType,[],Vn3},
                           Ctx5 = add_variable(Var3, Ctx2),
                           {Var3,Ctx5};
                        undefined ->
                           {{[],[],[],'_'},Ctx2}
                     end,
   {SNextVar,Ctx6} = case SNext of
                        #xqVar{id = Id4,name = Name4} ->
                           Vn4 = local_variable_name(Id4),
                           Var4 = {Name4,WType,[],Vn4},
                           Ctx7 = add_variable(Var4, Ctx4),
                           {Var4,Ctx7};
                        undefined ->
                           {{[],[],[],'_'},Ctx4}
                     end,
   {EVar,Ctx10} = case E of
                     #xqVar{id = Id11,name = Name11} ->
                        Vn11 = local_variable_name(Id11),
                        Var11 = {Name11,WType,[],Vn11},
                        Ctx11 = add_variable(Var11, Ctx6),
                        {Var11,Ctx11};
                     undefined ->
                        {{[],[],[],'_'},Ctx6}
                  end,
   {EPosVar,Ctx12} = case EPos of
                        #xqPosVar{id = Id12,name = Name12} ->
                           Vn12 = local_variable_name(Id12),
                           Var12 = {Name12,WType,[],Vn12},
                           Ctx13 = add_variable(Var12, Ctx10),
                           {Var12,Ctx13};
                        undefined ->
                           {{[],[],[],'_'},Ctx10}
                     end,
   {EPrevVar,Ctx14} =   case EPrev of
                           #xqVar{id = Id13,name = Name13} ->
                              Vn13 = local_variable_name(Id13),
                              Var13 = {Name13,WType,[],Vn13},
                              Ctx15 = add_variable(Var13, Ctx12),
                              {Var13,Ctx15};
                           undefined ->
                              {{[],[],[],'_'},Ctx12}
                        end,
   {ENextVar,Ctx16} =   case ENext of
                           #xqVar{id = Id14,name = Name14} ->
                              Vn14 = local_variable_name(Id14),
                              Var14 = {Name14,WType,[],Vn14},
                              Ctx17 = add_variable(Var14, Ctx14),
                              {Var14,Ctx17};
                           undefined ->
                              {{[],[],[],'_'},Ctx14}
                        end,
          
   WVn = local_variable_name(WId),
   WVar = {WName,WType,[],WVn},
   Ctx21 = add_variable(WVar, Ctx16),
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
   TempWinVarName = next_var_name(),
   TempWinVar = {[],[],[],TempWinVarName},
   OutTup   = get_variable_tuple(Ctx, [SVar,SPosVar,SPrevVar,SNextVar,EVar,EPosVar,EPrevVar,ENextVar,TempWinVar]),
   %Ctx21 = set_variable_tuple_name(Ctx, Name)
   %?dbg("window",?LINE),
   %?dbg("window",Ctx6),
   %?dbg("window",StartExpr),
   StartFunAbs = {'fun',?L,{clauses,[{clause,?L,[StartTup],[],alist(expr_do(Ctx6, StartExpr))}]}},
   %?dbg("window",?LINE),
   
   %Positions = get_set_win_positions([SVar,SPosVar,SPrevVar,SNextVar,EVar,EPosVar,EPrevVar,ENextVar,WinVar],1,[]),
   %?dbg("Positions",Positions),
   ListEx = case expr_do(Ctx, Expr) of
               X when is_list(X) ->
                  X;
               X ->
                  [X]
            end,
   %?dbg("window",?LINE),
   WinAbs = if EndExpr == undefined ->
                   {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,windowclause}},
                    [ {block,?L, ListEx}, StartFunAbs  ] };
               true ->
                  EndFunAbs = {'fun',?L,{clauses,[{clause,?L,[EndTup],  [],alist(expr_do(Ctx16, EndExpr))}]}},
                   {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,windowclause}},
                    [ {block,?L, ListEx}, StartFunAbs, EndFunAbs, {tuple,?L,
                                                                   [{atom,?L,Type},
                                                                    {atom,?L,Only}]} ] }
            end,
   %?dbg("window",?LINE),
   Incoming = get_variable_tuple_name(Ctx),
   %?dbg("Incoming",Incoming),
   CurrIter = get_iterator_name(Ctx),
   NextIterLoop = next_iter_loop_name(),
   NextIterVar = next_iter_name(),
   %NextVarTupVar = next_var_name(),
   NextNextVarTupVar = next_var_name(),
   PosVarTupVar = next_var_name(),
   NextNextIterVar = next_iter_name(),
   Ctx22 = set_iterator_name(Ctx20, NextNextVarTupVar),
   INextVarTupVar = next_var_name(),

   {RestAbs, Ctx23} = flw_do(Ctx22, Rest),
   %?dbg("window_clause_gen",RestAbs),
   Internal = {block,?L,[{call,?L,
      {named_fun,?L,NextIterLoop,
        [
        {clause,?L,[{var,?L,NextIterVar},{var,?L,NextNextVarTupVar}],[],
         [{'case',?L,{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_next}},[{var,?L,NextIterVar}]}, % case XXX of
          [{clause,?L,[{atom,?L,none}],[],
            % none came in, so check for an empty stream, then append empty sequence if allowed
            [{var,?L,NextNextVarTupVar}]
           }] ++
           % when on last in loop and about to return variables, don't loop again. it will clear the vars
           [{clause,?L,[{tuple,?L,[ {var,?L,PosVarTupVar},OutTup,{nil,?L} ]}],[],
                  [{match,?L,{var,?L,WVn}, {var,?L,TempWinVarName}}|
                   alist(RestAbs)]
           },
           {clause,?L,[{tuple,?L,[ {var,?L,PosVarTupVar},OutTup,{var,?L,NextNextIterVar} ]}],[],
            [% first cast the variable to it's type
             {match,?L,{var,?L,WVn},{var,?L,TempWinVarName}},
             {call,?L,{var,?L,NextIterLoop},
              [{var,?L,NextNextIterVar}|
               alist(RestAbs)               
              ]}]}
           ]                 
           }]
        }
       ]
      },
      [{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_iter}},[WinAbs]},
       if Incoming == [] ->
          if CurrIter == [] ->
                {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_new}},[]};
             true ->
                {var,?L,CurrIter}
          end;
          true ->
             {var,?L,INextVarTupVar}
       end
      ]
    }]},
   if Incoming == [] ->
         {Internal,Ctx23};
      true ->
         ITuple = {var,?L,get_variable_tuple_name(Ctx)},
         IAllVars = get_variable_tuple(Ctx),
         INextIterLoop = next_iter_loop_name(),
         INextIterVar = next_iter_name(),
         INextNextIterVar = next_iter_name(),
         
        {{call,?L,
         {named_fun,?L,INextIterLoop,
          [{clause,?L,[{var,?L,INextIterVar},{var,?L,INextVarTupVar}],[],
            [{'case',?L,{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,'stream_next'}},[{var,?L,INextIterVar}]}, % case XXX of
          [{clause,?L,[{atom,?L,none}],[],
            [{var,?L,INextVarTupVar}]
           },
           {clause,?L,[{tuple,?L,[ {var,?L,'_'},IAllVars,{var,?L,INextNextIterVar} ]}],[],
               [{call,?L,{var,?L,INextIterLoop},
                 [{var,?L,INextNextIterVar},Internal]}]}
              ]}]
           }]},
         [{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_iter}},[ITuple]},
          {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_new}},[]}
          %{var,?L,Incoming}
         ]
        },Ctx23}         
   end.

for_clause_gen(Ctx, {_,_Type,_,VarName} = NewVar, PosVar, Expr, Empty, Rest) ->
   PosVarName = if PosVar == [] ->
                      '_';
                   true ->
                      element(4, PosVar)
                end,
   NewCtx  = if PosVar == [] ->
                   add_variable(NewVar, Ctx);
                true ->
                   add_variable(PosVar, add_variable(NewVar, Ctx))
             end,
   Incoming = get_variable_tuple_name(Ctx),
   CurrIter = get_iterator_name(Ctx),
   NextIterLoop = next_iter_loop_name(),
   NextIterVar = next_iter_name(),
   NextVarTupVar = next_var_name(),
   NextNextVarTupVar = next_var_name(),
   PosVarTupVar = next_var_name(),
   NextNextIterVar = next_iter_name(),
   Ctx1 = set_iterator_name(NewCtx, NextNextVarTupVar),
   RetVal = expr_do(Ctx, Expr),
   INextVarTupVar = next_var_name(),

   {RestAbs, NextCtx} = flw_do(Ctx1, Rest),
   %?dbg("NextCtx",NextCtx),
   %?dbg("for_clause_gen",RestAbs),
   Internal = {call,?L,
      {named_fun,?L,NextIterLoop,
        [
        {clause,?L,[{var,?L,NextIterVar},{var,?L,NextNextVarTupVar}],[],
         [{'case',?L,{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,next}},[{var,?L,NextIterVar}]}, % case XXX of
          [{clause,?L,[{atom,?L,empty}],[],
            % none came in, so check for an empty stream, then append empty sequence if allowed
            if Empty == true ->
                  if PosVar == [] -> 
                      [{match,?L,{var,?L,VarName},{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,empty}},[]}}|
                       alist(RestAbs)];
                      true ->
                      [{match,?L,{var,?L,VarName},{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,empty}},[]}},
                       {match,?L,{var,?L,PosVarName},{tuple,?L,
                                                      [{atom,?L,xqAtomicValue},{atom,?L,'xs:integer'},{integer,?L,0}]}}|
                       alist(RestAbs)]
                   end;
               true ->
                  [{var,?L,NextNextVarTupVar}]
            end
           }] ++
          [{clause,?L,[{atom,?L,none}],[],
            % none came in, so check for an empty stream, then append empty sequence if allowed
               [{var,?L,NextNextVarTupVar}]
           }] ++
           % when on last in loop and about to return variables, don't loop again. it will clear the vars
           [
%%             {clause,?L,[{tuple,?L,[ {var,?L,PosVarTupVar},{var,?L,NextVarTupVar},{nil,?L} ]}],[],
%%             if PosVar == [] -> 
%%                   [{match,?L,{var,?L,VarName},{call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,as_seq}},
%%                                                [{var,?L,NextVarTupVar},abs_seq_type(Ctx,Type)]}}|
%%                    alist(RestAbs)];
%%                 true ->
%%                    [{match,?L,{var,?L,VarName},{call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,as_seq}},
%%                                                 [{var,?L,NextVarTupVar},abs_seq_type(Ctx,Type)]}},
%%                     {match,?L,{var,?L,PosVarName},{tuple,?L,
%%                                                    [ {atom,?L,xqAtomicValue},{atom,?L,'xs:integer'},{var,?L,PosVarTupVar} ]}}|alist(RestAbs)]
%%              end
%%            },
           {clause,?L,[{tuple,?L,[ {var,?L,PosVarTupVar},{var,?L,NextVarTupVar},{var,?L,NextNextIterVar} ]}],[],
            [% first cast the variable to it's type
             if PosVar == [] -> {nil,?L};
                true ->
                   {match,?L,{var,?L,PosVarName},{tuple,?L,[ {atom,?L,xqAtomicValue},{atom,?L,'xs:integer'},{var,?L,PosVarTupVar} ]}}
             end,
             {match,?L,{var,?L,VarName},{var,?L,NextVarTupVar}},
             {call,?L,{var,?L,NextIterLoop},
              [{var,?L,NextNextIterVar}|
               alist(RestAbs)
              ]}]}
           ]                 
           }]
        }
       ]
      },
      [{call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,get_seq_iter}},[RetVal]},
       if Incoming == [] ->
          if CurrIter == [] ->
                {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_new}},[]};
             true ->
                {var,?L,CurrIter}
          end;
          true ->
             {var,?L,INextVarTupVar}
       end
      ]
    },
   if Incoming == [] ->
         %?dbg("2171",Internal),
         {[Internal],NextCtx};
      true ->
         ITuple = {var,?L,get_variable_tuple_name(Ctx)},
         IAllVars = get_variable_tuple(Ctx),
         INextIterLoop = next_iter_loop_name(),
         INextIterVar = next_iter_name(),
         INextNextIterVar = next_iter_name(),
         
        {{call,?L,
         {named_fun,?L,INextIterLoop,
          [{clause,?L,[{var,?L,INextIterVar},{var,?L,INextVarTupVar}],[],
            [{'case',?L,{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,'stream_next'}},[{var,?L,INextIterVar}]}, % case XXX of
          [{clause,?L,[{atom,?L,none}],[],
            [{var,?L,INextVarTupVar}]
           },
           {clause,?L,[{tuple,?L,[ {var,?L,'_'},IAllVars,{var,?L,INextNextIterVar} ]}],[],
               [{call,?L,{var,?L,INextIterLoop},
                 [{var,?L,INextNextIterVar}|[Internal]]}]}
              ]}]
           }]},
         [{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_iter}},[ITuple]},
          {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_new}},[]}
          %{var,?L,Incoming}
         ]
        },
         NextCtx}         
   end.

let_clause_gen(Ctx, {_,_Type,_,VarName} = NewVar, Expr, Rest) ->
   Incoming = get_variable_tuple_name(Ctx),
   NewCtx  = add_variable(NewVar, Ctx),
   INextVarTupVar = next_var_name(),
   INextIterVar = next_iter_name(),
   INextNextIterVar = next_iter_name(),
   Ctx1 = set_iterator_name(NewCtx, INextVarTupVar),
   {RestAbs, NextCtx} = if Incoming == [] ->
                              flw_do(NewCtx, Rest);
                           true ->
                              flw_do(set_variable_tuple_name(Ctx1,INextVarTupVar), Rest)
                        end,
   %?dbg("RestAbs",RestAbs),
   Internal = [{block,?L,
         [{match,?L,{var,?L,VarName},expr_do(Ctx, Expr)}|
          alist(RestAbs)]}],
   if Incoming == [] ->
         %?dbg("let_clause_gen internal",Internal),
         {Internal, NextCtx};
      true ->
         ITuple = {var,?L,get_variable_tuple_name(Ctx)},
         IAllVars = get_variable_tuple(Ctx),
         INextIterLoop = next_iter_loop_name(),
        {{call,?L,
         {named_fun,?L,INextIterLoop,
          [{clause,?L,[{var,?L,INextIterVar},{var,?L,INextVarTupVar}],[],
            [{'case',?L,{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,'stream_next'}},[{var,?L,INextIterVar}]}, % case XXX of
          [{clause,?L,[{atom,?L,none}],[],
            [{var,?L,INextVarTupVar}]
           },
           {clause,?L,[{tuple,?L,[ {var,?L,'_'},IAllVars,{var,?L,INextNextIterVar} ]}],[],
               [{call,?L,{var,?L,INextIterLoop},
                 [{var,?L,INextNextIterVar}|Internal]}]}
              ]}]
           }]},
         [{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_iter}},[ITuple]},
          {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_new}},[]}
          %{var,?L,INextVarTupVar}
          %{var,?L,Incoming}
          %ITuple
         ]
        },
        Ctx1 
        %set_iterator_name(set_variable_tuple_name(NextCtx, INextVarTupVar),[]) 
        }         
   end.


%{Abs,NewCtx}
where_clause_gen(Ctx, Expr) ->
   %?dbg("where_clause_gen", Ctx),
   VarTupList = get_variable_tuple(Ctx),
   CurrVarTupVar = get_variable_tuple_name(Ctx),
   NextVarTupVar = next_var_tuple_name(),
   %NextNextVarTupVar = next_var_tuple_name(),
   NextIterVar = next_iter_name(),
   NextNextIterVar = next_iter_name(),
   NextIterLoop = next_iter_loop_name(),
   CheckFun = fun({where, Ex}) ->
                  {op,?L,'==',
                   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,'singleton_value'}},
                    [{call,?L,{remote,?L,{atom,?L,xqerl_fn},{atom,?L,'boolean'}},
                      [{nil,?L},
                       expr_do(Ctx, Ex)
                      ]}
                    ]},
                   {tuple, ?L, [atom_or_string(xqAtomicValue),atom_or_string('xs:boolean'),atom_or_string(false)]}
                   }                    
              end,
   Check1 = CheckFun(hd(Expr)),
   Checks = lists:foldl(fun({where, Ex}, Acc) ->
                              {op,?L,'orelse', Acc, CheckFun({where, Ex})}
                        end, Check1, tl(Expr)),
   {
     % named fun call
     {call,?L,
      {named_fun,?L,NextIterLoop,
       [{clause,?L,[{var,?L,NextIterVar},{var,?L,NextVarTupVar}],[],
         [{'case',?L,{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_next}},[{var,?L,NextIterVar}]}, % case XXX of
          [{clause,?L,[{atom,?L,none}],[],[{var,?L,NextVarTupVar}]},
           {clause,?L,[{tuple,?L,[ {var,?L,'_'},VarTupList,{var,?L,NextNextIterVar} ]}],[],
            [{'case',?L,% case XXX of
                        {block,?L,
                         [Checks]
                         }
             , 
             [{clause,?L,[atom_or_string(true)],[],
               [{call,?L,{var,?L,NextIterLoop},
                [{var,?L,NextNextIterVar},{var,?L,NextVarTupVar}]}]
              },
              {clause,?L,[{var,?L,'_'}],[],
                [{call,?L,{var,?L,NextIterLoop},
                 [{var,?L,NextNextIterVar},{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,'stream_append'}},[VarTupList,{var,?L,NextVarTupVar}]}]}]
              }
              ]}]
           }
           ]}]
        }]},
      [{call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_iter}},[{var,?L,CurrVarTupVar}]},
       {call,?L,{remote,?L,{atom,?L,xqerl_flwor},{atom,?L,stream_new}},[]}
       ] % args to named fun
   },
   %set_variable_tuple_name(Ctx, NextVarTupVar)
   Ctx
   }
   .




%% {name,type,annos,Name}
add_param(Variable, Map) ->
   Vars = maps:get(parameters, Map),
   Key = element(1, Variable),
   NewVars = lists:keystore(Key, 1, Vars, Variable),
   maps:put(parameters, NewVars, Map).

%% {name,type,annos,Name}
add_variable({#qname{} = Qn,_,_,_} = Variable, Map) ->
   Qn1 = case Qn of
            #qname{namespace = undefined, prefix = Px, local_name = Ln} ->
               Nss = maps:get(namespaces, Map),
               Ns1 = proplists:get_value(Px, Nss),
               #qname{namespace = Ns1, prefix = "", local_name = Ln};
            _ ->
               Qn#qname{prefix = ""}
         end,
   Variable1 = erlang:setelement(1, Variable, Qn1),
   Vars = maps:get(variables, Map),
   Key = Qn1,
   Vars1 = lists:keydelete(Key, 1, Vars),
   NewVars = lists:keystore(Key, 1, Vars1, Variable1),
   maps:put(variables, NewVars, Map).

get_variable_ref(Name, Map) ->
   #qname{namespace = Ns, prefix = Px, local_name = Ln} = resolve_qname(Name, Map),
   Vars0 = xqerl_context:get_in_scope_variables(),
   Vars1 = maps:get(parameters, Map),
   Vars = maps:get(variables, Map) ++ Vars1 ++ Vars0,
   Nss = maps:get(namespaces, Map),
   %?dbg("get_variable_ref Nss", Nss),
   %?dbg("Vars0", Vars0),
   %?dbg("Vars1", Vars1),
   %?dbg("Vars", Vars),
   %?dbg("get_variable_ref Ns, Px, Ln", {Ns,Px, Ln}),
   Ns2 = case Ns of
            undefined ->
               proplists:get_value(Px, Nss);
               %xqerl_context:get_statically_known_namespace_from_prefix(Px);
            _ ->
               Ns
         end,
   %?dbg("get_variable_ref Ns2, Px, Ln", {Ns2, Px, Ln, Vars}),
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
               ?dbg("get_variable_ref Ns, Px, Ln", {Ns2,Px, Ln,Vars}),
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
                  {atom,?L,erlang},
                  {atom,?L,get}},
                [{atom,?L,element(1, Loc)}]},Typ};
            3 ->
               {{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_variable_value}},
                [{tuple,?L,[{atom,?L,element(1, Loc)},{atom,?L,element(2, Loc)},{integer,?L,element(3, Loc)}]},
                 {call,?L,{remote,?L,{atom,?L,element(1, Loc)},{atom,?L,element(2, Loc)}},[{var,?L,get_context_variable_name(Map)}]} ]},Typ}
         end
   end.

%% %% get_function_ref({#qname{namespace = "http://www.w3.org/2005/xpath-functions", prefix = _Px, local_name = "concat"} = Name, Arity,Args}, Ctx) ->
%% %%    get_function_ref({Name#qname{namespace = "xqerl_fn"}, Arity,Args}, Ctx);
%% get_function_ref({#qname{namespace = "http://www.w3.org/2005/xpath-functions", prefix = _Px, local_name = "concat"}, Arity,Args}, Ctx)->
%%    if Arity > 1 ->
%%       CtxName = get_context_variable_name(Ctx),
%%       NewArgs = lists:flatmap(fun(Arg) -> 
%%                                 [ case Arg of
%%                                      {var,_,_} ->
%%                                         Arg;
%%                                      _ ->
%%                                        expr_do(Ctx, Arg)
%%                                   end]
%%                           end, Args),
%%       ArgList = [{var,?L,CtxName}, from_list_to_seq(NewArgs)],   
%%             {call,?L,
%%              {remote,?L,
%%               {atom,?L,'xqerl_fn'},
%%               {atom,?L,'concat'}},
%%              ArgList};
%%       true ->
%%          xqerl_error:error('XPST0017')
%%    end;
%% 
%% get_function_ref({#qname{namespace = Ns, prefix = Px, local_name = Ln},Arity,Args}, Ctx) ->
%%    %io:format("Name,Arity,Args:: ~p ~p ~p~n",[Name,Arity,Args]),
%%    CtxName = get_context_variable_name(Ctx),
%%    Funs = maps:get(known_fx_sigs, Ctx),% xqerl_context:get_statically_known_functions(),
%%    Nss = maps:get(namespaces, Ctx),
%%    %?dbg("get_function_ref",Px),
%%    Ns2 = if Px == [] ->
%%                xqerl_context:get_default_function_namespace();
%%             true ->
%%                %mask_namespace(namespace_from_prefix(Px,Nss,Ns))
%%                namespace_from_prefix(Px,Nss,Ns)
%%          end, 
%%    %?dbg("Funs", Funs), 
%%    Fun = case lists:filter(fun(E) ->
%%                            case element(1, E) of
%%                               #qname{namespace = Ns2, local_name = Ln} ->
%%                                  case element(5, E) of
%%                                     Arity ->
%%                                        true;
%%                                     _ ->
%%                                        false
%%                                  end;
%%                               _ ->
%%                                  false
%%                            end
%%                         end, Funs) of
%%             [FX] ->
%%                FX;
%%             X ->
%%                ?dbg("get_function_ref",{Ns2,Px,Ln,Arity,X}),
%%                xqerl_error:error('XPST0017')
%%          end,
%%    Loc = element(4, Fun),
%%    ArgTypes = element(6, Fun),
%%    %TODO use it!
%%    ReturnType = element(2, Fun),
%%    TypedArgs = lists:zip(ArgTypes, Args),
%%    %?dbg("Fun",TypedArgs),
%%    NewArgs = lists:flatmap(fun({Type,Arg}) -> 
%%                              [ case Arg of
%%                                   {var,_,_} ->
%%                                      Arg;
%%                                   _ ->
%%                                     expr_do(Ctx, Arg)
%%                                end]
%%                        end, TypedArgs),
%%    %?dbg("NewArgs",NewArgs),
%%    case tuple_size(Loc) of
%%       2 -> % local call
%%          %{call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,as_seq}},[
%%           {call,?L,
%%            {atom,?L,element(1, Loc)}, 
%%           [{var,?L,CtxName}|NewArgs]}
%%          %,abs_seq_type(ReturnType)]}
%%          ;
%%       3 -> % module call
%%          %{call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,as_seq}},[
%%          {call,?L,
%%           {remote,?L,
%%            {atom,?L,element(1, Loc)},
%%            {atom,?L,element(2, Loc)}},
%%           [{var,?L,CtxName}|NewArgs]}
%%           %,abs_seq_type(ReturnType)]}         
%%    end;
%% 
%% %% get_function_ref({#qname{namespace = "http://www.w3.org/2005/xpath-functions", prefix = _Px, local_name = "concat"} = Name, Arity}, Ctx) ->
%% %%    get_function_ref({Name#qname{namespace = "xqerl_fn"}, Arity}, Ctx);
%% get_function_ref({#qname{namespace = "http://www.w3.org/2005/xpath-functions", prefix = _Px, local_name = "concat"} = Name, Arity}, Ctx) ->
%%    if Arity > 1 ->
%%       abs_function(Ctx,#xqFunction{name = Name#qname{namespace = "http://www.w3.org/2005/xpath-functions", prefix = "fn"}, 
%%                                    arity = Arity,
%%                                    type = {xqSeqType, 'xs:string', one}},
%%                    {'fun',?L,{function,{atom,?L,'xqerl_fn'},{atom,?L,'concat'},{integer,?L,2}}}
%%                    );
%%       true ->
%%          xqerl_error:error('XPST0017')
%%    end;
%% get_function_ref({#qname{namespace = Ns, prefix = Px, local_name = Ln} = Name, Arity}, Ctx) ->
%%    Funs = xqerl_context:get_statically_known_functions(),
%%    %?dbg("Funs", Funs),
%%    Ns2 = case Ns of
%%             undefined ->
%%                if Px == [] ->
%%                      xqerl_context:get_default_function_namespace();
%%                   true ->
%%                      xqerl_context:get_statically_known_namespace_from_prefix(Px)
%%                      %mask_namespace(xqerl_context:get_statically_known_namespace_from_prefix(Px))
%%                end;
%%             _ ->
%%                mask_namespace(Ns)
%%          end,
%%    Name1 = Name#qname{namespace = Ns2},
%%    %?dbg("{Name,Arity,Args}", {Name1,Arity,Args}), 
%%    Fun = case lists:filter(fun(E) ->
%%                            case element(1, E) of
%%                               #qname{namespace = Ns2, local_name = Ln} ->
%%                                  case element(5, E) of
%%                                     Arity ->
%%                                        true;
%%                                     _ ->
%%                                        false
%%                                  end;
%%                               _ ->
%%                                  false
%%                            end
%%                         end, Funs) of
%%             [FX] ->
%%                FX;
%%             X ->
%%                ?dbg("get_function_ref",{Ns2,Px,Ln,Arity,X}),
%%                xqerl_error:error('XPST0017')
%%          end,
%%    %?dbg("Fun", Fun),
%%    Loc = element(4, Fun),
%%    FunType = element(2, Fun),
%%    FunAnnos = element(3, Fun),
%%    FunParams = element(6, Fun),
%%    FunAbs = case tuple_size(Loc) of
%%                2 -> % local call
%%                   %{'fun',?L,{function,element(1, Loc),element(2, Loc)}};
%%                   {'fun',?L,{function,
%%                              {atom,?L, case element(2, Name1) of
%%                                           "http://www.w3.org/2005/xquery-local-functions" ->
%%                                              'xqerl_main';
%%                                           Mod ->
%%                                              list_to_atom(Mod)
%%                                        end},
%%                              {atom,?L,element(1, Loc)},{atom,?L,element(2, Loc)}}};
%%                3 -> % module call
%%                   {'fun',?L,{function,{atom,?L,element(1, Loc)},{atom,?L,element(2, Loc)},{integer,?L,element(3, Loc)}}}
%%             end,
%%    abs_function(Ctx,
%%                 #xqFunction{name = Name,
%%                             arity = Arity,
%%                             annotations = FunAnnos,
%%                             params = FunParams,
%%                             type = FunType},
%%                 FunAbs
%%                 ).
%% 



alist(L) when is_list(L) -> lists:flatten(L);
alist(L) -> [L].

   


%% -record(xqDocumentNode, {
%%       identity     = undefined :: term(),
%%       desc_count   = 0         :: integer(),
%%       document_uri = undefined :: term(),
%%       children     = []        :: [term()],
%%       value        = undefined :: term(),
%%       string_value = ""        :: string(),
%%       path_index   = undefined :: [integer()],
%%       expr         = undefined :: term()
%%    }).
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

prepend_namespaces(Ctx,Nss) ->
   Old = maps:get(namespaces, Ctx),
   New = lists:foldl(fun({P,N}, List) ->
                           lists:keystore(P, 1, List, {P,N})
                     end, Old, Nss),
   %?dbg("prepend_namespaces",New),
   maps:put(namespaces, New, Ctx).

%% -record(xqElementNode, {
%%       identity     = undefined :: term(),
%%       desc_count   = 0         :: integer(),
%%       name         = undefined :: #qname{},
%%       parent_node  = undefined :: term(),
%%       children     = []        :: [term()],
%%       attributes   = []        :: [term()],
%%       inscope_ns   = []        ,
%%       nilled       = false     :: boolean(),
%%       value        = undefined :: [ #xqAtomicValue{} ],
%%       string_value = ""        :: string(),
%%       path_index   = undefined :: [integer()],
%%       expr         = undefined :: term()
%%    }).
abs_element_node(Ctx, #xqElementNode{name = N, attributes = A1, expr = E1, type = Type, base_uri = BU}) ->
   %?dbg("abs_element_node",{N,E1}),
   CtxVar = get_context_variable_name(Ctx),
   NextCtxVar = next_ctx_var_name(),
   %?dbg("abs_element_node",Ctx),
   BU1 = case maps:get('base-uri', Ctx) of
            undefined when BU =/= undefined->
               BU;
            undefined ->
               [];
            B ->
               B
         end, 
   % hack the attributes back in until all static
   E = A1 ++ if is_list(E1) ->
                   E1;
                E1 == undefined ->
                   [];
                true ->
                   [E1]
       end,
   %?dbg("abs_element_node",E),
   Namespaces = lists:filtermap(fun(#xqNamespaceNode{name = #qname{prefix = "",namespace = ""}}) ->
                                      {true, {"",""}};
                                   (#xqNamespaceNode{name = #qname{prefix = _,namespace = ""}}) ->
                                      xqerl_error:error('XQST0085');
                                   (#xqNamespaceNode{name = #qname{prefix = P1,namespace = N1}}) ->
                                      {true, {P1,N1}};
                                   (_) ->
                                      false
                                end, E),
   Prefixes = [P||{P,_}<-Namespaces],
   Dups = lists:sort(Prefixes) =/= lists:usort(Prefixes),
   if Dups ->
         xqerl_error:error('XQST0071');
      true ->
         ok
   end,
   NsAbs = lists:foldr(
            fun({P1,N1},Abs) ->
                  {call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,add_inscope_namespace}},
                   [Abs,atom_or_string(P1),atom_or_string(N1)]}
            end, 
            {var,?L,CtxVar}, 
            Namespaces),
   Ctx2 = prepend_namespaces(Ctx, Namespaces),
   Ctx1 = (set_context_variable_name(Ctx2, NextCtxVar))#{'base-uri' => BU1},
   %?dbg("abs_element_node",Ctx1),
   %?dbg("abs_element_node",Namespaces),
   %?dbg("abs_element_node",Ctx2),
   {tuple,?L,
    [
     atom_or_string(xqElementNode),
     atom_or_string(undefined),
     atom_or_string(undefined),
     case N of
        #qname{} ->
           abs_qname(Ctx2,N);
        _ ->
           %{call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,value}},
            %[
             expr_do(Ctx2, N)
            %]}
     end,
     atom_or_string(undefined),
     empty_seq(),
     empty_seq(),
     empty_seq(),
     atom_or_string(undefined),
     case maps:get('construction-mode', Ctx) of
        strip ->
           {atom,?L,'xs:untyped'};
        _ when Type == undefined ->
           {atom,?L,'xs:anyType'};
        _ ->
           {atom,?L,Type}
     end, % type
     expr_do([],BU1), % base_uri
     atom_or_string(undefined), % path_index
     if E == [undefined] -> empty_seq();
        true ->
           Strip = E,%maybe_strip_boundry_space(Ctx1,E),
           Flattened = flatten_node_expr(Strip),
           Flat = lists:map(fun(Ex) ->
                                  expr_do(Ctx1,Ex)
                            end, Flattened), 
           %?dbg(?LINE,E),
           %?dbg(?LINE,Strip),
           %?dbg(?LINE,Flattened),
           %?dbg(?LINE,Flat),
           {block,?L,
            [
             {match,?L,{var,?L,NextCtxVar},NsAbs},
             if length(Flat) == 1 ->
                   hd(Flat);
                true ->
                    lists:foldr(fun(X, Abs) ->
                               {cons,?L,X, Abs} 
                         end, {nil,?L}, Flat)
             end
             ]}
     end
    ]}.
flatten_node_expr(E) ->
   lists:map(fun flatten_node_cons/1, E).

flatten_att_expr(E) ->
   %?dbg("E",E),
   lists:map(fun({content_expr, Expr}) ->
               if is_list(Expr) ->
                     {expr, 
                     lists:flatmap(fun({'node-cons',NC}) ->
                                         [NC];
%%                                       (#xqAtomicValue{value = []} = A) ->
%%                                          [A];
%%                                       (#xqAtomicValue{} = A) ->
%%                                          [#xqTextNode{expr = A}];
                                      (Other) ->
                                         alist(Other)
                                   end, Expr)};
                  true ->
                     {expr, Expr}
               end;
                (O) -> O                   
             end, E).

   
flatten_node_cons({content_expr, Expr}) ->
   %?dbg(?FUNCTION_NAME,?LINE),
   if is_list(Expr) ->
         {expr, 
         lists:flatmap(fun({'node-cons',NC}) ->
                             [NC];
                          (#xqAtomicValue{} = A) ->
                             [A];
%%                           (#xqAtomicValue{} = A) ->
%%                              [#xqTextNode{expr = A}];
                          (Other) ->
                             alist(Other)
                       end, Expr)};
      true ->
         {expr, Expr}
   end;
flatten_node_cons(E) -> E.
   

%% -record(xqAttributeNode, {
%%       identity     = undefined :: term(),
%%       name         = undefined :: #qname{},
%%       parent_node  = undefined :: term(),
%%       value        = undefined :: [ #xqAtomicValue{} ],
%%       string_value = ""        :: string(),
%%       path_index   = undefined :: [integer()],
%%       expr         = undefined :: term()
%%    }).
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
           %{call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,value}},
            %[
             expr_do(Ctx, N)
            %]}
     end,
     atom_or_string(undefined),
     atom_or_string(undefined),
     atom_or_string(undefined),
     atom_or_string(undefined),
     if E == [undefined] -> empty_seq();
        true ->
           Strip = maybe_strip_boundry_space(Ctx,E),
           Flattened = flatten_att_expr(Strip),
           Flat = lists:map(fun(Ex) ->
                                  expr_do(Ctx,Ex)
                            end, Flattened), 
           %?dbg(?LINE,E),
           %?dbg(?LINE,Strip),
           %?dbg(?LINE,Flattened),
           %?dbg(?LINE,Flat),
           lists:foldr(fun(X, Abs) ->
                      {cons,?L,X, Abs} 
                end, {nil,?L}, Flat)
     end
     ]}.

%% -record(xqTextNode, {
%%       identity     = undefined :: term(),
%%       parent_node  = undefined :: term(),
%%       string_value = ""        :: string(),
%%       path_index   = undefined :: [integer()],
%%       expr         = undefined :: term()
%%    }).
abs_text_node(Ctx, #xqTextNode{expr = E, cdata = C}) ->
   ?dbg(?LINE,E),
   ?dbg(?LINE,C),
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
                 %{call,?L,{remote,?L,{atom,?L,xqerl_context},{atom,?L,get_context_item}},[
                 expr_do(Ctx, E)
                 %]}
           end
     end
     ]}.

%% -record(xqCommentNode, {
%%       identity     = undefined :: term(),
%%       parent_node  = undefined :: term(),
%%       string_value = ""        :: string(),
%%       path_index   = undefined :: [integer()],
%%       expr         = undefined :: term()
%%    }).
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

%% -record(xqProcessingInstructionNode, {
%%       identity     = undefined :: term(),
%%       name         = undefined :: #qname{},
%%       parent_node  = undefined :: term(),
%%       string_value = ""        :: string(),
%%       path_index   = undefined :: [integer()],
%%       expr         = undefined :: term()
%%    }).
abs_pi_node(Ctx, #xqProcessingInstructionNode{name = N, expr = E, base_uri = BU}) ->
   BU1 = case maps:get('base-uri', Ctx) of
            undefined when BU =/= undefined->
               BU;
            undefined ->
               [];
            B when BU == undefined ->
               B;
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

abs_namespace_node(_Ctx, #xqNamespace{namespace = N, prefix = P}) ->
   {tuple,?L,
    [
     atom_or_string(xqNamespace),
     atom_or_string(N),
     atom_or_string(P)
     ]};
%% -record(xqNamespaceNode, {
%%       identity     = undefined :: term(),
%%       name         = undefined :: #qname{},
%%       parent_node  = undefined :: term(),
%%       path_index   = undefined :: [integer()],
%%       expr         = undefined :: term()
%%    }).
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
%% -record(xqFunTest, {
%%    kind   = function :: function | map,
%%    annotations = [] :: [ #annotation{} ],
%%    name   :: #qname{},
%%    params = any :: [#xqSeqType{}] | any,
%%    type   = any :: #xqSeqType{} | any
%% }).
abs_fun_test(Ctx,#xqFunTest{kind = Kind, annotations = Annos, name = Name, params = Params, type = Type}) ->
   {tuple,?L,
    [
     atom_or_string(xqFunTest),
     atom_or_string(Kind),
     if Annos == [] ->
           {nil,?L};
        true ->
           lists:foldr(fun({annotation,{#qname{namespace = N} = Q,_}}, Abs) ->
                             _ = xqerl_lib:reserved_namespaces(N),
                             {cons,?L,abs_qname(Ctx, Q), Abs}
                       end, {nil,?L}, Annos)
     end,
     abs_qname(Ctx,Name),
     if Params == any ->
           atom_or_string(any);
        true ->
           lists:foldr(fun(P, Abs) ->
                             {cons,?L,abs_seq_type(Ctx,P), Abs}
                       end, {nil,?L}, Params)
     end,
     if Params == any ->
           atom_or_string(any);
        true ->
           abs_seq_type(Ctx,Type)
     end
    ]}.

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
                         {expr, [#xqAtomicValue{value = ""}]} ->
                            atom_or_string("");
                         _ ->
                            {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,as_seq}},
                             [expr_do(Ctx, P),abs_seq_type(Ctx, #xqSeqType{type = 'xs:NCName', occur = 'one'})]}
                      end;
                   true ->
                      atom_or_string(P)
                end,
                if is_tuple(L) ->
                      {call,?L,{remote,?L,{atom,?L,xqerl_types},{atom,?L,as_seq}},
                       [expr_do(Ctx, L),abs_seq_type(Ctx, #xqSeqType{type = 'xs:NCName', occur = 'one'})]};
                   true ->
                      atom_or_string(L)
                end
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
   N1 = if N == undefined ->
              undefined;
           true ->
              #qname{namespace = Ns, prefix = Px} = N,
               if Ns == 'no-namespace' orelse Px == [] ->
                     N#qname{namespace = "http://www.w3.org/2005/xpath-functions", prefix = "fn"};
                  true ->
                     N
               end
        end,
   {tuple, ?L, 
    [atom_or_string(xqFunction),
     atom_or_string(undefined), %id
     atom_or_string(undefined), %annotations
     abs_qname(Ctx, N1)       , %name
     {integer,?L,Ar}          , %arity
     abs_param_list(Ctx, Params), %params
     abs_seq_type(Ctx, Type)  , %type
     BodyAbs                    %body
     ]}.
%% -record(xqFunction, {
%%    id                = 0 :: integer(),
%%    annotations       = [] :: [ #annotation{} ],
%%    name              = undefined :: #'qname'{},
%%    arity             = 0 :: integer(),
%%    params            = [],
%%    type              = #xqSeqType{} :: #xqSeqType{},
%%    body              = undefined :: term()%,
%%    %nonlocal_bindings = undefined %:: [{ #'qname'{}, [#xqItem{}] }]
%% }).

abs_param_list(Ctx, List) ->
   lists:foldr(fun(#xqSeqType{} = St,Acc) ->
                     {cons,?L,abs_seq_type(Ctx, St) ,Acc};
                  (#xqVar{type = #xqSeqType{} = St},Acc) ->
                     {cons,?L,abs_seq_type(Ctx, St) ,Acc}
               end, {nil,?L}, List).
   

%% abs_boolean(true) ->
%%    C = erl_syntax:comment(["this is a comment"]),
%%    ?e:revert(
%%     ?e:set_precomments(
%%     ?e:tuple(
%%       [?e:atom(xqAtomicValue),
%%        ?e:atom('xs:boolean'),
%%        ?e:atom(true)]), C));
abs_boolean(false) ->
   {tuple, ?L, [atom_or_string(xqAtomicValue),
    atom_or_string('xs:boolean'),
    atom_or_string(false)]};
abs_boolean(true) ->
   {tuple, ?L, [atom_or_string(xqAtomicValue),
    atom_or_string('xs:boolean'),
    atom_or_string(true)]}.
%% abs_boolean(#xqAtomicValue{type = 'xs:boolean', value = Val}) ->
%%    {tuple, ?L, [atom_or_string(xqAtomicValue),
%%     atom_or_string('xs:boolean'),
%%     atom_or_string(Val)]}.


abs_simp_atomic_value(#xqAtomicValue{type = Type, value = Val}) ->
   {tuple, ?L, [atom_or_string(xqAtomicValue),
    atom_or_string(Type),
    atom_or_string(Val)]}.

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

get_iterator_name(Ctx) ->
   maps:get(iter, Ctx).
set_iterator_name(Ctx, Name) ->
   maps:put(iter, Name, Ctx).

%% get_iterator_loop_name(Ctx) ->
%%    maps:get(iter_loop, Ctx).
%% set_iterator_loop_name(Ctx, Name) ->
%%    maps:put(iter_loop, Name, Ctx).

%% abs_namespaces(Module) ->
%%    lists:foreach(fun({Ns,Px}) ->
%%                        xqerl_context:add_statically_known_namespace(Ns, Px)
%%                  end, proplists:get_value(namespaces, Module:module_info(attributes))).

abs_ns_list(Ctx) ->
   lists:foldr(fun({P,N}, Abs) ->
                     {cons,?L,{tuple,?L,[{atom,?L,xqNamespace},atom_or_string(N),atom_or_string(P)]}, Abs}
               end, {nil,?L}, maps:get(namespaces,Ctx)).   

next_var_tuple_name() ->
   list_to_atom("VarTup__"++integer_to_list(next_id(var_tuple))).

next_iter_name() ->
   list_to_atom("Iter__"++integer_to_list(next_id(iter))).
   
next_iter_loop_name() ->
   list_to_atom("IterLoop__"++integer_to_list(next_id(iter_loop))).
   
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
   get_variable_tuple(Map, Vars).

get_variable_tuple(_Ctx, List) when is_list(List) ->
   {tuple,?L,lists:flatten([case Name of
                 {_N,_} -> % global 
                     %{var,?L,N};
                     %{VarAbs,_Type} = get_variable_ref(QName, Ctx),
                     %VarAbs;
                     [];
                 N ->
                    {var,?L,N}
              end || {_QName,_,_,Name} <- List])}.

%% get_ret_variable_tuple(Ctx,Map) when is_map(Map) ->
%%    Vars = maps:get(variables, Map),
%%    %?dbg("Vars",Vars),
%%    get_ret_variable_tuple(Ctx,Vars);
%% get_ret_variable_tuple(Ctx,List) when is_list(List) ->
%%    {tuple,?L,[?s({var,?L,Name},Type) || {_,Type,_,Name} <- List]}.

% prefix,namespaces,current
namespace_from_prefix("default",Ns,N) -> namespace_from_prefix([],Ns,N);
namespace_from_prefix(default,Ns,N) -> namespace_from_prefix([],Ns,N);
namespace_from_prefix(Px,Ns,N) ->
   %?dbg("abs_qname",{Px, Ns, N}),
   case proplists:get_value(Px, Ns, N) of
      undefined ->
         xqerl_error:error('XPST0081'); % unable to expand
      O ->
         O
   end.

concat_string_content([#xqAtomicValue{type = 'xs:string', value = V1},#xqAtomicValue{type = 'xs:string', value = V2}|T]) ->
   concat_string_content([#xqAtomicValue{type = 'xs:string', value = V1 ++ V2}|T]);
concat_string_content([H|T]) ->
   [H|concat_string_content(T)];
concat_string_content([]) -> [].

% empty space around cdata is not whitespace
strip_boundry_space([#xqAtomicValue{} = A,#xqTextNode{cdata = true} = X|T]) ->
   [A|strip_boundry_space([X|T])];
strip_boundry_space([#xqTextNode{cdata = true} = X,#xqAtomicValue{} = A|T]) ->
   [X,A|strip_boundry_space(T)];
% now empty strings
strip_boundry_space([#xqAtomicValue{type = 'xs:string', value = V} = H|T]) ->
   case string:trim(V) of
      "" -> strip_boundry_space(T);
      _ -> [H|strip_boundry_space(T)]
   end;
% the rest
strip_boundry_space([H|T]) ->
   [H|strip_boundry_space(T)];
strip_boundry_space([]) ->
   [].

maybe_strip_boundry_space(Ctx,Expr0) ->
   Pol = maps:get('boundary-space', Ctx),
   Expr1 = alist(Expr0),
   Expr2 = concat_string_content(Expr1),
%   ?dbg(?LINE,Expr2),
%%    case Expr2 of
%%       [#xqAtomicValue{}] -> % single atomic 
%%          Expr2;
%%       _ ->
         if Pol == strip ->
               strip_boundry_space(Expr2);
            true ->
               Expr2
%%          end
   end.

resolve_qname(#qname{namespace = Ns, prefix = undefined, local_name = Ln}, Ctx) ->
   Nss = maps:get('namespaces', Ctx),
   case lists:keyfind(Ns, 2, Nss) of
      false ->
         xqerl_error:error('XPST0081'); % unable to expand
      {Px,_} ->
         #qname{namespace = Ns, prefix = Px, local_name = Ln}
   end;
resolve_qname(#qname{namespace = undefined, prefix = Px, local_name = Ln}, Ctx) ->
   Nss = maps:get('namespaces', Ctx),
   case proplists:get_value(Px, Nss) of
      undefined ->
         xqerl_error:error('XPST0081'); % unable to expand
      Ns ->
         #qname{namespace = Ns, prefix = Px, local_name = Ln}
   end;
resolve_qname(Name, _Ctx) ->
   Name.


empty_seq_abs() ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,empty}},[]}.

from_list_to_seq(List) ->
   {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,sort_seq}},
    [lists:foldl(fun(E, Abs) ->
                {call,?L,{remote,?L,{atom,?L,?seq},{atom,?L,append}},[E, Abs]} 
          end, empty_seq_abs(), List)]}.
