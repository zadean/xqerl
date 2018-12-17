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
-define(REST, <<"http://exquery.org/ns/restxq">>).

-include("xqerl.hrl").
-include("xqerl_parser.hrl").

-include_lib("syntax_tools/include/merl.hrl").

% revert everything from merl
-define(P(Text), revert(?Q(Text))).

-compile(inline_list_funcs).


records() ->
   %% TODO add default values
   Recs = 
   [{xqError,                     "-record(xqError,{name,description,value,location,additional})."},
    {xqAtomicValue,               "-record(xqAtomicValue,{type,value})."},
    {qname,                       "-record(qname,{namespace,prefix,local_name})."},
    {xqFunction,                  "-record(xqFunction,{id,annotations,name,arity,params,type,body,external})."},
    {xqDocumentNode,              "-record(xqDocumentNode,{identity,desc_count,base_uri,children,value,string_value,path_index,expr})."},
    {xqElementNode,               "-record(xqElementNode,{identity,desc_count,name,parent_node,children,attributes,inscope_ns,nilled,type,base_uri,path_index,expr})."},
    {xqAttributeNode,             "-record(xqAttributeNode,{identity,name,parent_node,value,string_value,path_index,expr})."},
    {xqTextNode,                  "-record(xqTextNode,{identity,parent_node,cdata,path_index,expr})."},
    {xqCommentNode,               "-record(xqCommentNode,{identity,parent_node,string_value,path_index,expr})."},
    {xqProcessingInstructionNode, "-record(xqProcessingInstructionNode,{identity,name,parent_node,base_uri,path_index,expr})."},
    {xqNamespaceNode,             "-record(xqNamespaceNode,{identity,name,parent_node,path_index,expr})."},
    {xqNamespace,                 "-record(xqNamespace,{namespace,prefix})."},
    {xqFunTest,                   "-record(xqFunTest,{kind,annotations,name,params,type})."},
    {xqSeqType,                   "-record(xqSeqType,{type,occur})."},
    {xqKindTest,                  "-record(xqKindTest,{kind,name,type})."},
    {xqRange,                     "-record(xqRange,{min,max,cnt})."}
   ],
   Used = get_used_record_types(),
   lists:map(fun(A) ->
                   proplists:get_value(A, Recs)
             end, Used).
   
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
add_context_key(Map, module, #{module := M}) ->
   Map#{module => M};
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
%?dbg("here",ok),
   X.
   
scan_mod(#xqModule{prolog = Prolog, 
                   declaration = {_,{ModNs,_Prefix}}, 
                   type = library,
                   body = _}, Map) ->
   
   Dis = cowboy_router:compile([{'_', []}]),
   _ = cowboy:start_clear(xqerl_listener, [{port, 8082}], #{env => #{dispatch => Dis}}),
   
   _ = init_mod_scan(),
   ok = set_globals(Prolog, Map),
   _ = add_used_record_type(xqAtomicValue),
   DefElNs     = xqerl_static:pro_def_elem_ns(Prolog),
   %ContextItem = xqerl_static:pro_context_item(Prolog,main),
   Namespaces  = xqerl_static:pro_namespaces(Prolog,[],DefElNs),
   Variables   = xqerl_static:pro_glob_variables(Prolog,[]),
   Functions   = xqerl_static:pro_glob_functions(Prolog,[]),
   StaticNamespaces = xqerl_context:static_namespaces(),
   %?dbg("{Variables}",{Variables}),
   ConstNamespaces  = xqerl_static:overwrite_static_namespaces(StaticNamespaces, 
                                                               Namespaces),
   ModName = xqerl_static:string_atom(ModNs),
   EmptyMap = Map#{module => ModName, 
                   namespaces => ConstNamespaces},
   ImportedMods = lists:filtermap(fun({'module-import', {_,<<>>}}) -> false;
                                     ({'module-import', {N,_}}) -> 
                                        {true, xqerl_static:string_atom(N)};
                                     (_) -> false
                                  end,Prolog),
   
   StatProps = maps:get(stat_props, EmptyMap),
   
   P1a = {attribute,1,file,{binary_to_list(ModNs),2}},
   P1 = scan_variables(EmptyMap,Variables, public), 
   P2 = scan_functions(EmptyMap,Functions,ModName, public),
   P3 = ?P(["-module('@ModName@').",
            "-export([static_props/0]).",
            "-export([init/1])."
            ]),
   P5 = ?P([%"-compile(inline_list_funcs).",
            "-compile(inline).",
            "static_props() -> _@StatProps@."]),
    % this will also setup the global variable match
   P6 = init_function(scan_variables(EmptyMap,Variables),Prolog),
   P7 = variable_functions(EmptyMap, Variables),
   P8 = function_functions(EmptyMap, Functions),
   {RestExports, RestWrappers} = rest_functions(EmptyMap, Functions),
   P9 = get_global_funs(),
   P4 = lists:flatten([
         ?P(export_variables(Variables, EmptyMap)),
         ?P(export_functions(Functions)),
         RestExports,
         ?P(records())
        ]),
   P10 = P3 ++ [P1a|P4] ++ P5 ++ P6 ++ P7 ++ P8 ++ P9,
   RestEndpoints = xqerl_restxq:build_endpoints(ModName, RestWrappers),
   Dispatch = cowboy_router:compile([{'_', RestEndpoints}]),
 ?dbg("Dispatch",Dispatch),
   _ = cowboy:set_env(xqerl_listener, dispatch, Dispatch),
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
   _ = add_used_record_type(xqAtomicValue),
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
                maps:get(stat_props, EmptyMap) ++ [options|[module|StaticProps]]),
    % abstract after this point
   FileName1 = binary_to_list(FileName),
   P1 = ?P(["-module('@ModName@').",
            "-export([main/1])."
           ]),
   P1a = {attribute,1,file,{FileName1,2}},
   P3 = ?P([%"-compile(inline_list_funcs).",
            "-compile(inline).",
            %"-compile({inline_size,150}).",
            "init() ->",
            "  _ = xqerl_lib:lnew(),",
            "  Tab = xqerl_context:init(),",
            "  Map = maps:put(tab,Tab,_@MapItems),",
            "  xqerl_context:set_named_functions(Tab,maps:get(named_functions,Map,[])),",
            "  maps:remove(named_functions,Map)."]),
   P4 = body_function(EmptyMap, Body, Prolog), % this will also setup the global variable match
   P5 = variable_functions(EmptyMap, Variables), 
   P6 = function_functions(EmptyMap, Functions),
   {RestExports, RestWrappers} = rest_functions(EmptyMap, Functions),
   P7 = get_global_funs(),
   P2 = lists:flatten([?P(export_functions(Functions)),
                       RestExports,
                       ?P(records())]),
   {FileName,
    main,
    ImportedMods,
    scan_variables(EmptyMap,Variables, public),
    scan_functions(EmptyMap,Functions,ModName, public),
    P1 ++ [P1a|P2] ++ P3 ++ P4 ++ P5 ++ P6 ++ P7
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
   Imps = ?P("_@@ImportedVars"),
   Body = lists:flatten([Imps, VarSetAbs, [LastCtx]]),
   [{function,?L,init,1,[{clause,?L,[{var,?L,'Ctx'}],[],Body}]}].

% RESTXQ functions:
% needs to init like a main module, and like a library
% Context setup in REST wrapper
% new context, plus all global variables set, pulls in all options set 
% at the module level and overloads them with annotations.
% all path templates as string cast to parameter type,
% all other templates as string cast to parameter type or empty sequence 
% body can be any of the accepted types, xml, json, text, binary; 
% parsed to parameter type
% if return method has body, the function can return sequence where first 
% is an xml element with all header values set. 
% external variable are not set by rest
% if rest: init/2   -> {cowboy_rest, Req, Opts}
% if get/head content_types_provided/2 -> {List, Req, State} 
% if put/post content_types_accepted/2 -> {List, Req, State}
% if delete   delete_resource/2 -> {true, Req, State}
rest_functions(Ctx, Functions) ->
   % internal function name to call from REST wrapper
   FxNameFun = 
     fun(#xqFunction{name = FxName, arity = FxArity}) ->
           {FName, _} = xqerl_static:function_hash_name(FxName, FxArity),
           FName
     end,
   RestFuns = [{F#xqFunction.id,
                FxNameFun(F),
                F#xqFunction.params,
                xqerl_restxq:parse_annos(F#xqFunction.annotations)} || 
               #xqFunction{annotations = Annos} = F <-  Functions,
               #annotation{name = #qname{namespace = ?REST, 
                                  local_name = <<"path">>}} <- Annos],
   if RestFuns == [] ->
         ok;
      true ->
         init_ctx_function(Ctx)
   end,
   %?dbg("RestFuns",RestFuns),
   UsedMethods = lists:usort([M || {_,_,_,#{method := Ms}} <- RestFuns, M <- Ms]),
   % allowed_methods callback
   MethodBinFun = fun(Atom) -> string:uppercase(atom_to_binary(Atom, latin1)) end,
   Ms = [MethodBinFun(M) || M <- UsedMethods],
   E0 = if UsedMethods == [] -> [];
           true ->
              G0 = ?P(["allowed_methods(Req, State) -> {_@Ms@, Req, State}."]),
              _ = add_global_funs([G0]),
              ?Q("-export([allowed_methods/2]).")
        end,
   %?dbg("UsedMethods",UsedMethods),
   IsProv = UsedMethods =/= [],%[1 || M <- UsedMethods, M == get orelse M == head orelse M == put orelse M == post] =/= [],
   IsAccp = UsedMethods =/= [],%[1 || M <- UsedMethods, M == put orelse M == post] =/= [],
   IsDele = lists:member(delete, UsedMethods),
   
   E1 = if IsProv ->
              Cls_1 = 
                 [begin
                     Mb = MethodBinFun(M),
                     ?P(["content_types_provided(#{method := _@Mb@} = Req, ",
                        "#{_@M@ := #{output_media_types := M}} = State) ->",
                        " {M,Req,State}."])
                  end
                 || 
                  M <- UsedMethods],
             G1 = join_functions(Cls_1),
             _ = add_global_funs([G1]),
             ?Q("-export([content_types_provided/2]).");
          true -> []
       end,
   E2 = if IsAccp ->
              Cls_2 = 
                 [begin
                     Mb = MethodBinFun(M),
                     ?P(["content_types_accepted(#{method := _@Mb@} = Req, ",
                        "#{_@M@ := #{input_media_types := M}} = State) ->",
                        " {M,Req,State}."])
                  end
                 || 
                  M <- UsedMethods],
             G2 = join_functions(Cls_2),
             _ = add_global_funs([G2]),
             ?Q("-export([content_types_accepted/2]).");
          true -> []
       end,
   E3 = if IsDele ->
             G3 = ?P(["delete_resource(Req, State) ->",
                     " {true, Req, State}."]),
             _ = add_global_funs([G3]),
             ?Q("-export([delete_resource/2]).");
          true -> []
       end,
   E4 = lists:flatten([E0,E1,E2,E3]),
   Exports1 = if E4 == [] ->
                    [];
                 true ->
                    G4 = ?P("init(Req, Opts) -> {cowboy_rest, Req, Opts}."),
                    _ = add_global_funs([G4]),
                    [?Q("-export([init/2]).")|E4]
              end,
   % cowboy callbacks are done, now on to the wrapper functions
   ParamMapFun = 
     fun(#xqVar{id = Id,
                name = #qname{prefix = Px, local_name = Ln}, 
                type = Ty}, VarMap) ->
           Nm = if Px == <<>> -> Ln;
                   true -> <<Px/binary,":", Ln/binary>>
                end,
           VarMap#{Nm => {Id,Ty}}
     end,
   FunMap = 
     fun({FId, FName, FParams, #{fields := Fields,
                                 output := Serial0,
                                 param_cookie := PCookies,
                                 param_form := PForm,
                                 param_header := PHead,
                                 param_query := PQry} = FRestMap}) ->
           Serial = if is_map_key('omit-xml-declaration', Serial0) ->
                          Serial0;
                       true ->
                          Serial0#{'omit-xml-declaration' => false}
                    end,
           ParamMap = lists:foldl(ParamMapFun, #{}, FParams),
           FieldPart = param_fields(Fields, ParamMap),
           CookiePart = param_cookies(PCookies, ParamMap),
           HeaderPart = param_headers(PHead, ParamMap),
           FormPart = param_forms(PForm, ParamMap),
           QryPart = param_queries(PQry, ParamMap),
           Parts = lists:flatten([FieldPart,CookiePart,HeaderPart,FormPart,QryPart]),
           LocalParams = [{var,?L,list_to_atom("Var_" ++ integer_to_list(Id))} 
                         || #xqVar{id = Id} <- FParams],
           ?dbg("Parts",Parts),
           FunName = rest_fun_name(FId),
           G5 = ?P(["'@FunName@'(#{method := Method} = Req, State) -> ",
                    "_@Parts,",
                    "Ctx = init_ctx(),"
                    "XQuery = '@FName@'(Ctx, _@@LocalParams),",
                    "ReturnVal = xqerl_types:rest_return_value(XQuery,#{options => _@Serial@}),",
                    "xqerl_context:destroy(Ctx),",
                    "if Method == <<\"POST\">>; Method == <<\"PUT\">> -> ",
                    " {true, cowboy_req:set_resp_body(ReturnVal, Req), State};",
                    "true -> {ReturnVal, Req, State}"
                    "end."]),
           add_global_funs([G5]),
           
           {FunName, FRestMap}
     end,
   Wrappers = lists:map(FunMap, RestFuns),
   Exports2 = lists:foldl(fun({Fx,_}, Acc) ->
                                [?P("-export(['@Fx@'/2]).")|Acc]
                          end, Exports1, Wrappers),
   {Exports2, Wrappers}.

rest_fun_name(Id) ->
   list_to_atom("rest_wrap__" ++ integer_to_list(Id)).

% each function has been created by ?P("afun(_@A,_@B) -> _@X."
% join their clauses to one function.
join_functions([]) -> [];
join_functions(Funs) ->
   [{function,L,N,A,_}|_] = Funs,
   {function,L,N,A,[C || {_,_,_,_,Cs} <- Funs, C <- Cs]}.


init_ctx_function(Ctx) ->
   MapItems = init_fun_abs(Ctx, maps:get(stat_props, Ctx) ++ [options,module]),
   G = ?P(["init_ctx() ->",
           "  _ = xqerl_lib:lnew(),",
           "  Tab = xqerl_context:init(),",
           "  Map = maps:put(tab,Tab,_@MapItems),",
           "  xqerl_context:set_named_functions(Tab,maps:get(named_functions,Map,[])),",
           "  maps:remove(named_functions,Map)."]),
   add_global_funs([G]).

param_fields([],_) -> [];
param_fields([{body, VarName}|T],Map) ->
   {VarId, _VarType} = maps:get(VarName, Map),
   VarAtom = {var,?L,list_to_atom("Var_" ++ integer_to_list(VarId))},
   TmpAtom = {var,?L,list_to_atom("TVar_" ++ integer_to_list(VarId))},
   [?P(["{ok, _@TmpAtom, _} = cowboy_req:read_body(Req),",
        "ContentType = cowboy_req:header(<<\"content-type\">>, Req),",
        "_@VarAtom = xqerl_http_client:parse_body(ContentType, _@TmpAtom)"
       ])|param_fields(T,Map)];
param_fields([{Atom, VarName}|T],Map) ->
   {VarId, VarType} = maps:get(VarName, Map),
   VarAtom = {var,?L,list_to_atom("Var_" ++ integer_to_list(VarId))},
   TmpAtom = {var,?L,list_to_atom("TVar_" ++ integer_to_list(VarId))},
   [?P(["_@TmpAtom = cowboy_req:binding(_@Atom@, Req),",
        "_@VarAtom = xqerl_types:cast_as(#xqAtomicValue{type = 'xs:string', value = _@TmpAtom}, _@VarType@)"
       ])|param_fields(T,Map)].

param_headers([],_) -> [];
param_headers(Params,Map) ->
   [begin
       {VarId, VarType} = maps:get(VarName, Map),
       VarAtom = {var,?L,list_to_atom("Var_" ++ integer_to_list(VarId))},
       TmpAtom = {var,?L,list_to_atom("TVar_" ++ integer_to_list(VarId))},
       ?P(["_@TmpAtom = cowboy_req:header(_@ParamName@, Req, _@Default0@),",
           "_@VarAtom = xqerl_types:cast_as(#xqAtomicValue{type = 'xs:string', value = _@TmpAtom}, _@VarType@)"
           ])
    end || {ParamName, VarName, Default0} <- Params].

param_cookies([],_) -> [];
param_cookies(Params,Map) ->
   [?Q("Cookies = cowboy_req:parse_cookies(Req)")|
   [begin
       {VarId, VarType} = maps:get(VarName, Map),
       VarAtom = {var,?L,list_to_atom("Var_" ++ integer_to_list(VarId))},
       TmpAtom = {var,?L,list_to_atom("TVar_" ++ integer_to_list(VarId))},
       ?P(["_@TmpAtom = proplists:get_value(_@CookieName@, Cookies, _@Default0@),",
           "_@VarAtom = xqerl_types:cast_as(#xqAtomicValue{type = 'xs:string', value = _@TmpAtom}, _@VarType@)"
           ])
    end || {CookieName, VarName, Default0} <- Params]
   ].

param_forms([],_) -> [];
param_forms(Params,Map) ->
   [?Q("{ok, FormKeyVals, _} = cowboy_req:read_urlencoded_body(Req)")|
   [begin
       {VarId, VarType} = maps:get(VarName, Map),
       VarAtom = {var,?L,list_to_atom("Var_" ++ integer_to_list(VarId))},
       TmpAtom = {var,?L,list_to_atom("TVar_" ++ integer_to_list(VarId))},
       ?P(["_@TmpAtom = proplists:get_value(_@ParamName@, FormKeyVals, _@Default0@),",
           "_@VarAtom = xqerl_types:cast_as(#xqAtomicValue{type = 'xs:string', value = _@TmpAtom}, _@VarType@)"
           ])
    end || {ParamName, VarName, Default0} <- Params]].

param_queries([],_) -> [];
param_queries(Params,Map) ->
   [?Q("QueryKeyVals = cowboy_req:parse_qs(Req)")|
   [begin
       {VarId, VarType} = maps:get(VarName, Map),
       VarAtom = {var,?L,list_to_atom("Var_" ++ integer_to_list(VarId))},
       TmpAtom = {var,?L,list_to_atom("TVar_" ++ integer_to_list(VarId))},
       ?P(["_@TmpAtom = proplists:get_value(_@ParamName@, QueryKeyVals, _@Default0@),",
           "_@VarAtom = xqerl_types:cast_as(#xqAtomicValue{type = 'xs:string', value = _@TmpAtom}, _@VarType@)"
           ])
    end || {ParamName, VarName, Default0} <- Params]].

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
%?dbg("Vars",Vars),
   Matches = [{map_field_exact,?L,{atom,?L,V},V1} || {_,_,V} = V1 <- Vars ++ Locals],
   O = {map,?L,Matches},
   erlang:put(global_var_match, O),
   ok.

global_variable_map_set(Modules,Locals) ->
   Vars = lists:flatten([get_imported_variables(M) || M <- Modules]),
%?dbg("Vars",Vars),
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
%?dbg("ImportedMods",ImportedMods),
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
            AV = {var,?L,next_var_name()},
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
                    " {CI,_} = maps:get('context-item', Options, {_@E2, 1}),"
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
   LocCtx = set_context_variable_name(ContextMap, '__Ctx'),
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
             Expr1 = expr_do(LocCtx, Expr),
             % when external, check for set value first, then default, 
             % or then XPDY0002 when not set.
             if Ext == true ->
                  ?P(["'@Name@'(__Ctx) ->",
                      "   Tmp = begin _@Expr1 end,",
                      "   case maps:get(_@QNameStr@,__Ctx,Tmp) of",
                      "      undefined -> xqerl_error:error('XPDY0002');",
                      "      X -> xqerl_types:promote(X, _@Type@) end."]);
                true ->
                  ?P(["'@Name@'(__Ctx) ->",
                      "   _@Expr1."])
             end
     end,
   [F(V) || #xqVar{} = V <- Variables].

function_functions(ContextMap, Functions) ->
   CtxName = get_context_variable_name(ContextMap),
   F =fun(#xqFunction{id = _,
                      name = FxName,
                      arity = Arity,
                      %type = RType,
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
                "   _@E1."]),
                %"   xqerl_types:promote(_@E1, _@RType@)."]),
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
                          annotations = _Annos} <- Functions%,
              %not_private(Annos)
           ],
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
   _ = add_used_record_type(xqError),
   _ = add_used_record_type(xqAtomicValue),
   CodeVar = list_to_atom("__CodeVar" ++ integer_to_list(Id)),
   DescVar = list_to_atom("__DescVar" ++ integer_to_list(Id)),
   ValuVar = list_to_atom("__ValuVar" ++ integer_to_list(Id)),
   ModuVar = list_to_atom("__ModuVar" ++ integer_to_list(Id)),
   LineVar = list_to_atom("__LineVar" ++ integer_to_list(Id)),
   ColnVar = list_to_atom("__ColnVar" ++ integer_to_list(Id)),
   AddlVar = list_to_atom("__AddlVar" ++ integer_to_list(Id)),
   
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
   NewAddlVar = {#qname{namespace = ErrNs,prefix = ?A("err"), 
                        local_name = ?A("additional")},
                 #xqSeqType{type = item, 
                            occur = zero_or_many},[],AddlVar},
   
   Ctx0 = add_variable(NewCodeVar, Ctx),
   Ctx1 = add_variable(NewDescVar, Ctx0),
   Ctx2 = add_variable(NewValuVar, Ctx1),
   Ctx3 = add_variable(NewModuVar, Ctx2),
   Ctx4 = add_variable(NewLineVar, Ctx3),
   Ctx5 = add_variable(NewColnVar, Ctx4),
   Ctx6 = add_variable(NewAddlVar, Ctx5),

   CodeVar1 = {var,?L,CodeVar},
   DescVar1 = {var,?L,DescVar},
   ValuVar1 = {var,?L,ValuVar},
   ModuVar1 = {var,?L,ModuVar},
   LineVar1 = {var,?L,LineVar},
   ColnVar1 = {var,?L,ColnVar},
   AddlVar1 = {var,?L,AddlVar},
   
   ClsFun = 
     fun({Errors,DoExpr}) ->
           DoExprAbs = expr_do(Ctx6, DoExpr),
           lists:map(
             fun(#xqNameTest{name = #qname{namespace = ?A("*"),local_name = ?A("*")}}) ->
                   C = ?Q("{_,#xqError{name = _@CodeVar1,
                                 description = _@DescVar1,
                                 value = _@ValuVar1,
                                 location = {_@ModuVar1, _@LineVar1, _@ColnVar1}},_@AddlVar1}"),
                   D = revert(?Q("_@DoExprAbs")),
                   {clause,?L,[revert(C)],[],[D]};
                (#xqNameTest{name = #qname{namespace = ?A("*"),local_name = Ln}}) ->
                   _ = add_used_record_type(qname),
                   C = ?Q("{_,#xqError{name = #xqAtomicValue{value = #qname{local_name = _@Ln@}} = _@CodeVar1,
                                 description = _@DescVar1,
                                 value = _@ValuVar1,
                                 location = {_@ModuVar1, _@LineVar1, _@ColnVar1}},_@AddlVar1}"),
                   D = revert(?Q("_@DoExprAbs")),
                   {clause,?L,[revert(C)],[],[D]};
                (#xqNameTest{name = #qname{namespace = Ns,local_name = ?A("*")}}) ->
                   _ = add_used_record_type(qname),
                   C = ?Q("{_,#xqError{name = #xqAtomicValue{value = #qname{namespace = _@Ns@}} = _@CodeVar1,
                                 description = _@DescVar1,
                                 value = _@ValuVar1,
                                 location = {_@ModuVar1, _@LineVar1, _@ColnVar1}},_@AddlVar1}"),
                   D = revert(?Q("_@DoExprAbs")),
                   {clause,?L,[revert(C)],[],[D]};
                (#xqNameTest{name = #qname{namespace = Ns,local_name = Ln}}) ->
                   _ = add_used_record_type(qname),
                   C = ?Q("{_,#xqError{name = #xqAtomicValue{value = #qname{namespace = _@Ns@,
                                                     local_name = _@Ln@}} = _@CodeVar1,
                                 description = _@DescVar1,
                                 value = _@ValuVar1,
                                 location = {_@ModuVar1, _@LineVar1, _@ColnVar1}},_@AddlVar1}"),
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
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   SeqAbs = expr_do(Ctx, SeqExpr),

   NextCtxVar = next_ctx_var_name(),
   NextCtxVar1 = {var,?L,NextCtxVar},
   
   IntCtxVar = {var,?L,next_var_name()},
   PosVar = {var,?L,next_var_name()},
   SizeVar = {var,?L,next_var_name()},

   AddFun = fun(N,C) ->
                  add_variable(N, C)
            end,
   Ctx0 = lists:foldl(AddFun, Ctx, 
                      [{context_variable,IntCtxVar},
                       {position_variable,PosVar},
                       {size_variable,SizeVar}
                      ]),   
   Ctx1 = set_context_variable_name(Ctx0, NextCtxVar),
   Ctx2 = Ctx1#{context_variable => IntCtxVar,
                position_variable => PosVar,
                size_variable => SizeVar},
   
   BodyAbs = expr_do(Ctx2, MapExpr),

   FunAbs = ?P("fun(_@NextCtxVar1,_@IntCtxVar,_@PosVar,_@SizeVar) -> _@BodyAbs end"),
   ?P("xqerl_seq3:map(_@CtxVar,_@FunAbs,_@SeqAbs)");

% inline anonymous functions
expr_do(Ctx, #xqFunction{id = _Id,
                         name = undefined, % fun object
                         annotations = _, 
                         arity = _,
                         params = Params,
                         body = Expr} = F) ->
   _ = add_used_record_type(xqFunction),
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
   case maps:find(in_pred, Ctx) of
      error ->
         FunBod = expr_do(clear_context_variables(Ctx3), Expr),
         Body = ?P(["fun(_@CtxP,_@@ParamList) ->",
                    " _@CtxI = xqerl_context:set_empty_context_item(_@CtxP),",
                    " _@@Checks,",   
                    " _@FunBod end"]),
         abs_function(Ctx, F, Body) ;
      {ok,true} ->
         FunBod = expr_do(Ctx3, Expr),
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
       "ReturnVal = xqerl_types:return_value(XQuery,_@CtxVar),",
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

% context item can be a variable of set in the context map
expr_do(#{context_variable := CtxVar}, 'context-item') ->
   ?P("_@CtxVar");
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
   %?P("xqerl_types:castable(_@E1,'xs:QName',_@Namespaces)");
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
   %?P("_@E");
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

expr_do(Ctx0, {path_expr,_Id,[ 'context-item' | Steps ]}) ->
   CtxItem = expr_do(Ctx0, 'context-item'),
   Ctx = clear_context_variables(Ctx0),
   CtxSeq = ?P("xqerl_seq3:sequence(_@CtxItem)"),
   Comp = step_expr_do(Ctx, Steps, CtxSeq),
   ?P(["begin",
       " _@@Comp",
       "end"
      ]);
expr_do(Ctx0, {path_expr,_Id,[ R | Steps ]}) when R == {'any-root'};
                                                  R == {'root'} ->
   CtxItem = expr_do(Ctx0, 'context-item'),
   Ctx = clear_context_variables(Ctx0),
   CtxSeq = ?P("xqerl_seq3:sequence(_@CtxItem)"),
   case xqerl_abs_xdm:compile_path_statement(Ctx,'Root',[R|Steps]) of
      {[],_Rest} -> % nothing simple, only complex
         Comp = step_expr_do(Ctx, [R|Steps], CtxSeq),
         ?P(["begin",
             " _@@Comp",
             "end"
            ])%;
   end;
         

expr_do(Ctx0, {path_expr,_Id,[ {variable,Var} | Steps ]}) ->
   Ctx = clear_context_variables(Ctx0),
   CurrCtxVar = {var,?L,get_context_variable_name(Ctx)},
   CtxSeq = a_var(Var,CurrCtxVar),
   case xqerl_abs_xdm:compile_path_statement(Ctx,'Root',Steps) of
      {[],_} -> % nothing simple, only complex
         Comp = step_expr_do(Ctx, Steps, CtxSeq),
         O = ?P(["begin",
                 " _@@Comp",
                 "end"
            ]),
         O%;
   end;



expr_do(Ctx0, {path_expr,_Id,[ Base | Steps ]}) ->
   Ctx = clear_context_variables(Ctx0),
   CtxSeq = case Base of
               {postfix,_,_,_} -> % use old context item
                  expr_do(Ctx0, {expr, Base});
               #xqAxisStep{} -> % use old context item, 
                  expr_do(Ctx0, {expr, Base});
               _ ->
                  expr_do(Ctx, {expr, Base})
            end,
   case xqerl_abs_xdm:compile_path_statement(Ctx,'Root',Steps) of
      {[],_} -> % nothing simple, only complex
         Comp = step_expr_do(Ctx, Steps, CtxSeq),
         O = ?P(["begin",
                 " _@@Comp",
                 "end"
            ]),
         O%;
   end;

expr_do(Ctx, {atomize, {path_expr,_Id,Steps}}) ->
   expr_do(Ctx, {path_expr,_Id,Steps ++ [atomize]});

expr_do(Ctx, {root}) ->
   expr_do(Ctx, 'context-item');
expr_do(Ctx, {'any-root'}) ->
   expr_do(Ctx, 'context-item');

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

% position replacement
expr_do(#{position_variable := PosVar}, 
        {'function-call', #xqFunction{body = {xqerl_fn,position,_}}}) ->
   ?P("_@PosVar");
expr_do(#{size_variable := SizeVar}, 
        {'function-call', #xqFunction{body = {xqerl_fn,last,_}}}) ->
   ?P("_@SizeVar");
% 'lang' call on context item
expr_do(#{context_variable := _} = Ctx, 
        {'function-call', #xqFunction{params = [A], 
                                      body = {xqerl_fn,lang,2}} = FC}) ->
   expr_do(Ctx,{'function-call', 
                FC#xqFunction{params = [A,'context-item'], 
                              body = {xqerl_fn,lang,3}}});
% magic functions that automatically use the context item
expr_do(#{context_variable := _} = Ctx, 
        {'function-call', #xqFunction{body = {xqerl_fn,Fn,1}} = FC})
   when Fn == 'node-name';        Fn == 'nilled';
        Fn == 'string';           Fn == 'data';
        Fn == 'base-uri';         Fn == 'document-uri';
        Fn == 'number';           Fn == 'normalize-space';
        Fn == 'string-length';    Fn == 'name';
        Fn == 'local-name';       Fn == 'namespace-uri';
        Fn == 'root';             Fn == 'path';
        Fn == 'has-children';     Fn == 'generate-id' -> 
   expr_do(Ctx,{'function-call', 
                FC#xqFunction{params = ['context-item'], 
                              body = {xqerl_fn,Fn,2}}});

%% expr_do(Ctx0, 
%%         {'function-call', #xqFunction{body = {xqerl_fn,'function-lookup',4}} = FC}) ->
%%    Ctx = clear_context_variables(Ctx0),
%%    expr_do(Ctx,{'function-call', FC});

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
   _ = add_used_record_type(xqFunction),
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
   _ = add_used_record_type(xqFunction),
   CtxVar = context_map_abs(Ctx), 
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
   _ = add_used_record_type(xqFunction),
   CtxVar = context_map_abs(Ctx), 
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
   V = {var,?L,Name},
   case atom_to_list(Name) of
      "__AddlVar" ++ _ ->
         ?P("xqerl_lib:format_stacktrace(_@V)");
      _ ->
         V
   end;

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
   MapExpr = expr_do(Ctx, 'context-item'),
   ?P("xqerl_operators:lookup(_@CtxVar,_@MapExpr,all)");
expr_do(Ctx, {LU, wildcard})
   when LU =:= array_lookup;
        LU =:= map_lookup ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   MapExpr = expr_do(Ctx, 'context-item'),
   ?P("xqerl_operators:lookup(_@CtxVar,_@MapExpr,all)");
expr_do(Ctx, {LU, Val}) 
   when LU =:= array_lookup;
        LU =:= map_lookup ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   MapExpr = expr_do(Ctx, 'context-item'),
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
   Base = expr_do(Ctx, 'context-item'),
   S = step_expr_do(Ctx, [Step], Base),
   ?P("begin _@S end");

expr_do(_Ctx, <<>>) ->
   ?Q("<<>>");

% catch-all
expr_do(_Ctx, Expr) ->
   ?dbg("TODO", Expr),
   {nil,?L}.


step_expr_do(_, [], SourceVar) ->
   ?P("_@SourceVar");
step_expr_do(_, [atomize], SourceVar) -> 
   DocVar = {var,?L,next_var_name()},
   ?P([" xqerl_seq3:path_map(",
       "      fun(_@DocVar,_,_) ->",
       "             xqerl_types:atomize(_@DocVar)",
       "      end, _@SourceVar)"       
      ]);
step_expr_do(Ctx, [Step1|Rest], SourceVar) when Step1 == {'root'};
                                                Step1 == {'any-root'} ->
   CurrCtxVar = {var,?L,get_context_variable_name(Ctx)},
   NextVar = {var,?L,next_var_name()},
   PosVar = {var,?L,next_var_name()},
   SizVar = {var,?L,next_var_name()},
   NodeVar = {var,?L,next_var_name()},
   R1 = alist(step_expr_do(Ctx, Rest, NextVar)),
   O1 = ?P([" _@NextVar = xqerl_seq3:path_map(",
            "      fun(#{nk := document} = _@NodeVar,_@PosVar,_@SizVar) ->",
            "              _@NodeVar",
            "        ;(#{nk := _} = _@NodeVar,_@PosVar,_@SizVar) ->",
            "              xqerl_error:error('XPDY0050')",
            "        ;(_,_,_) -> xqerl_error:error('XPTY0019')",
            "      end, xqerl_fn:root(_@CurrCtxVar, _@SourceVar))"
           ]), 
   [O1|R1];
% empty predicates so no context item needs to be set
step_expr_do(Ctx, [#xqAxisStep{predicates = []} = Step1|Rest], SourceVar) ->
%?dbg("SourceVar",SourceVar),
   NextVar = {var,?L,next_var_name()},
   TempVar = {var,?L,next_var_name()},
   NodeVar = {var,?L,next_var_name()},
   ErrVar = {var,?L,next_var_name()},
   NextCtxVar = next_ctx_var_name(),
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   E1 = step_expr_do(Ctx1, Step1, NodeVar),
   R1 = alist(step_expr_do(Ctx, Rest, NextVar)),
   O1 = ?P([" _@NextVar = ",
            "case catch xqldb_xpath:document_order(lists:flatten([_@E1 || _@NodeVar <- xqerl_seq3:sequence(_@SourceVar)]))",
            "of {'EXIT',{function_clause,_}} -> xqerl_error:error('XPTY0019'); ",
            "{'EXIT',_@ErrVar} -> erlang:throw(_@ErrVar); ",
            "_@TempVar -> _@TempVar end"
           ]), 
   [O1|R1];
step_expr_do(Ctx, [Step1|Rest], SourceVar) -> % stepping on an unknown
   CurrCtxVar = {var,?L,get_context_variable_name(Ctx)},
   NextVar = {var,?L,next_var_name()},
   PosVar = {var,?L,next_var_name()},
   SizVar = {var,?L,next_var_name()},
   NodeVar = {var,?L,next_var_name()},
   NextCtxVar = next_ctx_var_name(),
   NextCtxVVar = {var,?L,NextCtxVar},
   Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
   E1 = step_expr_do(Ctx1, Step1, NodeVar),
   R1 = alist(step_expr_do(Ctx, Rest, NextVar)),
   O1 = ?P([" _@NextVar = xqerl_seq3:path_map(",
            "      fun(#{nk := _} = _@NodeVar,_@PosVar,_@SizVar) ->",
            "              _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,_@NodeVar,_@PosVar,_@SizVar),",
            "             _@E1",
            "        ;(_,_,_) -> xqerl_error:error('XPTY0019')",
            "      end, _@SourceVar)"       
           ]), 
   [O1|R1];
step_expr_do(Ctx, #xqAxisStep{} = As, SourceAbs) ->
   do_axis_step(Ctx, SourceAbs, As);
step_expr_do(Ctx, Other, _) ->
   expr_do(Ctx, Other).

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
flwor(Ctx, [{Curr,_,_} = F], RetId, Return, Internal, Global,TupleVar,Inline) 
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
flwor(Ctx, [{Curr,_,_} = F,{Next,_,_} = N|T], RetId, Return, Internal, 
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
flwor(Ctx, [{Curr,_,_} = F|T], RetId, Return, Internal, Global,TupleVar,Inline) 
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
                           let_part(Ctx, F, [], not Inline andalso Internal =/= []);
                        true ->
                           for_loop(Ctx, F, [], not Inline andalso Internal =/= [])
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
   {NewCtx,FunAbs} = window_loop(Ctx, F, [], Internal == []),
   
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
flwor(Ctx, [{order_by,Id,_} = F|T], RetId, Return, Internal, 
      Global,TupleVar,_Inline) ->
   NextTupleVar = {var,?L,next_var_tuple_name()},
   CurrContext = {var,?L,get_context_variable_name(Ctx)},
   ThisFun = glob_fun_name({order_by,Id}),
   {NewCtx,FunAbs} = order_part(Ctx, F),
   Call2 = [?P("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
   NewInternal = Internal ++ Call2,
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   flwor(NewCtx1, T, RetId, Return, NewInternal, 
         FunAbs ++ Global,NextTupleVar,false).

return_part(Ctx,{Id, Expr},IsList) ->
   FunctionName = glob_fun_name({return,Id}),
   OldVariableTupleMatch = get_variable_tuple(Ctx),
   LocCtx = set_context_variable_name(Ctx, '__Ctx'),
   %InLine = attribute(compile, {inline,{FunctionName,2}}),
   E1 = expr_do(LocCtx,Expr),
   %?dbg("Expr",Expr),
   R = if IsList ->
              ?P(["'@FunctionName@'(_,[]) -> [];",
                  "'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
                  "   ['@FunctionName@'(Ctx,X) || X <- L];",
                  "'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
                  "   _@E1."
                  ]);
          true ->
              ?P(["'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
                  "   _@E1."
                  ])
              end,
   %{Ctx,[InLine, R]}.
   {Ctx,[R]}.

where_part(Ctx,{'where',Id, Expr},_NextFunAtom) ->
   FunctionName = glob_fun_name({where, Id}),
   OldVariableTupleMatch = get_variable_tuple(Ctx),
   %InLine = attribute(compile, {inline,{FunctionName,2}}),
   LocCtx = set_context_variable_name(Ctx, '__Ctx'),

   E1 = expr_do(LocCtx,Expr),
   R =?P(["'@FunctionName@'(_,[]) -> [];",
          "'@FunctionName@'(__Ctx,List) ->",
          "[I || _@OldVariableTupleMatch = I <- List,",
          " xqerl_operators:eff_bool_val(_@E1)]."
         ]),
   
   %{Ctx,[InLine,WhereFun]}.
   {Ctx,[R]}.

order_part(Ctx,{'order_by',Id, Exprs}) ->
   FunctionName = glob_fun_name({order_by, Id}),
   LocCtx = set_context_variable_name(Ctx, '__Ctx'),
   VarTup = get_variable_tuple(Ctx),
   OFun = fun({order,Expr,{modifier,Dir,{_,Empty},{_,_Collation}}},Acc) ->
                E1 = expr_do(LocCtx, Expr),
                ?P("[{fun(_@VarTup) -> xqerl_seq3:singleton_value(_@E1) end,
                      '@Dir@','@Empty@'}|_@Acc]")
          end,
   Funs = lists:foldr(OFun, {nil,?L}, alist(Exprs)),
   
   R =?P(["'@FunctionName@'(_,[]) -> [];",
          "'@FunctionName@'(__Ctx, Stream) ->",
          "   xqerl_flwor:orderbyclause(Stream,_@Funs)."
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
                    [VA|L]
                    %[?Q("_@VA")|L]
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
%?dbg("_@@CollMatch",?P("_@@CollMatch")),
   GrpFun1 = 
     ?P(["'@FunctionName@'(_,[]) -> [];",
         "'@FunctionName@'(Ctx,List) when erlang:is_list(List) -> ",
         "   _@@CollMatch, Split = _@Flatten, Rest = _@Rest,",
         "   '@FunctionName@'(Ctx,Split,Rest)."]),
   GrpFun2 =
     ?P(["'@FunctionName@'(_Ctx,_@OutgoingVarTup,_@CollNT) -> _@ToGroupTuple;",
         "'@FunctionName@'(_Ctx,Split,_@OuterTups) -> ",
         "   Grouped = xqerl_flwor:groupbyclause(Split), ",
         "   [_@OutgoingVarTup || _@OutputTuple <- Grouped]."]),
   {Ctx,[GrpFun1,GrpFun2]}.

let_part(Ctx,{'let',#xqVar{id = Id,
                           name = Name,
                           type = Type,
                           expr = Expr},
              AType} = Part,NextFunAtom,IsList) ->
   VarName = local_variable_name(Id),
   NewVar  = {Name,Type,[],VarName},
   FunctionName = glob_fun_name(Part),
   LocCtx = set_context_variable_name(Ctx, '__Ctx'),
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
   Ens = ensure_type(Ctx,VarName1,Type,AType),
   LetFun = 
     if NextFunAtom == [] andalso IsList ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) ->",
            "   ['@FunctionName@'(Ctx,X) || X <- L];",
            "'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
            "   _@VarName1 = _@E1,",
            "   _@Ens,",
            "   _@NewVariableTupleMatch."
           ]);
        NextFunAtom == [] ->
        ?P(["'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
            "   _@VarName1 = _@E1,",
            "   _@Ens,",
            "   _@NewVariableTupleMatch."
           ]);
        IsList ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) ->",
            "   ['@FunctionName@'(Ctx,X) || X <- L];",
            "'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
            "   _@VarName1 = _@E1,",
            "   _@Ens,",
            "   '@NextFunAtom@'(__Ctx,_@NewVariableTupleMatch)."
           ]);
        true ->
        ?P(["'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
            "   _@VarName1 = _@E1,",
            "   _@Ens,",
            "   '@NextFunAtom@'(__Ctx,_@NewVariableTupleMatch)."
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
                           end_expr = EndExpr}, NextFunAtom, IsInitial) ->
   OldCtxname = get_context_variable_name(Ctx),
   LocCtx = set_context_variable_name(Ctx, '__Ctx'),
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
   StartFunAbs = case StartExpr of
                    #xqAtomicValue{value = true} -> % very common start
                       ?Q("true");
                    _ ->
                       E1 = expr_do(Ctx6, StartExpr),
                       ?P("fun(_@StartTup) -> _@E1 end")
                 end,

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
                ?P("'@NextFunAtom@'(__Ctx,_@NewVariableTupleMatch)")
          end,
   
   WinFun =
     if IsInitial ->
        ?P(["'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) -> ",
            "   List = _@E3,",
            "   _@TempStreamVar = _@WinCall,",
            "   [_@Next || _@OutTup <- _@TempStreamVar]."]);
        true ->
           ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
               "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
               "'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) -> ",
               "   List = _@E3,",
               "   _@TempStreamVar = _@WinCall,",
               "   [_@Next || _@OutTup <- _@TempStreamVar]."])
     end,
   OutCtx = set_context_variable_name(Ctx20, OldCtxname),
   {OutCtx,[WinFun]}.

% for loop with no position var
for_loop(Ctx,{'for',#xqVar{id = Id,
                           name = Name, 
                           type = Type, 
                           empty = Empty,
                           expr = Expr, 
                           position = undefined},
              AType} = Part, NextFunAtom, IsList) ->
%?dbg("list?",{Id,IsList}),
   VarName = local_variable_name(Id),
   NewVar    = {Name,Type,[],VarName},
   NoEmptyType = (Type#xqSeqType.occur == one orelse 
                  Type#xqSeqType.occur == one_or_many), 
   NewCtx  = add_grouping_variable(NewVar, Ctx),
   FunctionName = glob_fun_name(Part),
   LocCtx = set_context_variable_name(Ctx, '__Ctx'),
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
                      %{pformap,E} % just for fun
                      {formap,E}
                end,
   Next = if NextFunAtom == [] ->
                ?P("_@NewVariableTupleMatch");
             true ->
                ?P("'@NextFunAtom@'(__Ctx,_@NewVariableTupleMatch)")
          end,
   %HasNext = NextFunAtom =/= [] ,
   Ens = ensure_type(Ctx,VarName1,Type,AType),
   ForFun1 = 
     if IsList andalso Empty andalso NoEmptyType ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/3,",
            "   if List =:= [] -> ",
            "         xqerl_error:error('XPTY0004');",
            "      true -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List)",
            "   end."]);
        IsList andalso Empty ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/3, ",
            "   if List =:= [] -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, [List]);",
            "      true -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List)",
            "   end."]);
        Empty andalso NoEmptyType ->
        ?P(["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/3, ",
            "   if List =:= [] -> ",
            "         xqerl_error:error('XPTY0004');",
            "      true -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List)",
            "   end."]);
        Empty ->
        ?P(["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/3, ",
            "   if List =:= [] -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, [List]);",
            "      true -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List)",
            "   end."]);
        IsList ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/3, ",
            "   xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List)."]);
        true ->
        ?P(["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/3, ",
            "   xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List)."])
        end,
   ForFun2 = ?P(["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch, _@VarName1) -> _@Ens,_@Next."]),
   {NewCtx,[ForFun1, ForFun2]};
% for loop with position var
for_loop(Ctx,{'for',#xqVar{id = Id,
                           name = Name, 
                           type = Type, 
                           empty = Empty,
                           expr = Expr, 
                           position = #xqPosVar{id = PId, 
                                                name = PName}},
              AType} = Part, NextFunAtom, IsList) ->
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
   LocCtx = set_context_variable_name(Ctx, '__Ctx'),
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
                ?P("'@NextFunAtom@'(__Ctx,_@NewVariableTupleMatch)")
          end,
   Ens = ensure_type(Ctx,VarName1,Type,AType),
   ForFun1 = 
     if IsList andalso Empty andalso NoEmptyType ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/4,",
            "   if List =:= [] -> ",
            "         xqerl_error:error('XPTY0004');",
            "      true -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1)",
            "   end."]);
        IsList andalso Empty ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/4,",
            "   if List =:= [] -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, [List], 0);",
            "      true -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1)",
            "   end."]);
        Empty andalso NoEmptyType ->
        ?P(["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/4,",
            "   if List =:= [] -> ",
            "         xqerl_error:error('XPTY0004');",
            "      true -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1)",
            "   end."]);
        Empty ->
        ?P(["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/4,",
            "   if List =:= [] -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, [List], 0);",
            "      true -> ",
            "         xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1)",
            "   end."]);
        IsList ->
        ?P(["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
            "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
            "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/4,",
            "   xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1)."
           ]);
        true ->
        ?P(["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
            "   List = _@E1,",
            "   Fun = fun '@FunctionName@'/4,",
            "   xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1)."
           ])
        end,
   ForFun2 = ?P(["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch, _@VarName1,",
                 " Pos) ->_@PosVarName1 = #xqAtomicValue{type = 'xs:integer', ",
                 "                                       value = Pos},",
                 "    _@Ens,_@Next."]),
   {NewCtx,[ForFun1, ForFun2]}.

glob_fun_name({window,Id}) ->
   list_to_atom("window__" ++ integer_to_list(Id));
glob_fun_name({group_by,Id}) ->
   list_to_atom("group__" ++ integer_to_list(Id));
glob_fun_name({order_by,Id}) ->
   list_to_atom("order__" ++ integer_to_list(Id));
glob_fun_name({return,Id}) ->
   list_to_atom("return__" ++ integer_to_list(Id));
glob_fun_name({where,Id}) ->
   list_to_atom("where__" ++ integer_to_list(Id));
glob_fun_name({count,#xqVar{id = Id}}) ->
   list_to_atom("count__" ++ integer_to_list(Id));
glob_fun_name({for,#xqVar{id = Id},_}) ->
   list_to_atom("for__" ++ integer_to_list(Id));
glob_fun_name({'let',#xqVar{id = Id},_}) ->
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
   maps:put(variables, NewVars, Map);
% these are the context item variables
add_variable({Name,_} = Variable, Map) when is_atom(Name) ->
   Vars = maps:get(variables, Map),
   Key = Name,
   Vars1 = lists:keydelete(Key, 1, Vars),
   NewVars = lists:keystore(Key, 1, Vars1, Variable),
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

% return module function that takes a list of nodes and returns whatever
% TODO implement
abs_path_expr(Ctx, {path_expr, Id, _Steps}) ->
   FunNameAtom = path_function_name(Id), 
   CallingCtx = {var,?L,get_context_variable_name(Ctx)},
   CallingVarTup = get_variable_tuple(Ctx),
   _FunCall = ?P("'@FunNameAtom'(_@CallingCtx,_@CallingVarTup)"),
   ok.

abs_document_node(Ctx, #xqDocumentNode{identity = Id, 
                                       expr = E, 
                                       base_uri = BU}) ->
   _ = add_used_record_type(xqDocumentNode),
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
   _ = add_used_record_type(xqElementNode),
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
        end,
   ?P(["#xqElementNode{name = _@E1, children = [], attributes = _@E2,",
       " inscope_ns = _@IsNs@, type = _@E3, base_uri = _@E4, expr = _@E5}"]).

abs_attribute_node(Ctx, #xqAttributeNode{name = N, expr = E}) ->
   _ = add_used_record_type(xqAttributeNode),
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
   _ = add_used_record_type(xqTextNode),
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
   _ = add_used_record_type(xqCommentNode),
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
   _ = add_used_record_type(xqProcessingInstructionNode),
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
   _ = add_used_record_type(xqNamespace),
   if is_atom(N) ->
         ?P("#xqNamespace{namespace = '@N@', prefix = _@P}");
      true ->
         ?P("#xqNamespace{namespace = _@N@, prefix = _@P}")
   end;
abs_namespace_node(Ctx, #xqNamespaceNode{name = Name}) ->
   _ = add_used_record_type(xqNamespaceNode),
   E1 = abs_ns_qname(Ctx,Name),
   ?P("#xqNamespaceNode{name = _@E1}").

abs_fun_test(Ctx,#xqFunTest{kind = Kind, 
                            annotations = Annos, 
                            name = Name, 
                            params = Params, 
                            type = Type}) ->
   _ = add_used_record_type(xqFunTest),
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
   _ = add_used_record_type(xqSeqType),
   ?P("#xqSeqType{type = '@Type@', occur = one}");
abs_seq_type(Ctx,#xqSeqType{type = #xqFunTest{} = Ft, occur = O}) ->
   _ = add_used_record_type(xqSeqType),
   E1 = abs_fun_test(Ctx,Ft),
   ?P("#xqSeqType{type = _@E1, occur = _@O@}");
abs_seq_type(Ctx,#xqSeqType{type = #xqKindTest{} = Kt, occur = O}) ->
   _ = add_used_record_type(xqSeqType),
   E1 = abs_kind_test(Ctx,Kt),
   ?P("#xqSeqType{type = _@E1, occur = _@O@}");
abs_seq_type(_Ctx,#xqSeqType{type = T, occur = O}) ->
   _ = add_used_record_type(xqSeqType),
   ?P("#xqSeqType{type = _@T@, occur = _@O@}").   

abs_qname(_Ctx, undefined) ->
   atom_or_string(undefined);
abs_qname(_Ctx, #qname{namespace = N, prefix = P, local_name = L}) ->
   _ = add_used_record_type(qname),
   if is_atom(N) ->
         ?P("#qname{namespace = '@N@', prefix = _@P@, local_name = _@L@}");
      true ->
         ?P("#qname{namespace = _@N@, prefix = _@P@, local_name = _@L@}")
   end.

abs_ns_qname(_Ctx, undefined) ->
   atom_or_string(undefined);
abs_ns_qname(Ctx, #qname{namespace = N, prefix = P, local_name = L}) ->
   _ = add_used_record_type(qname),
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
abs_kind_test(Ctx,#xqKindTest{kind = K, name = Q, type = T}) ->
   _ = add_used_record_type(xqKindTest),
   E1 = abs_qname(Ctx,Q),
   E2 = if is_atom(T) ->
              atom_or_string(T);
           true ->
              expr_do(Ctx, T)
        end,
   ?P("#xqKindTest{kind = _@K@, name = _@E1, type = _@E2}").

abs_function(Ctx,#xqFunction{annotations = _A,
                             name = N,
                             arity = Ar,
                             params = Params,
                             type = Type}, BodyAbs) ->
   _ = add_used_record_type(xqFunction),
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
   _ = add_used_record_type(xqAtomicValue),
   ?P("#xqAtomicValue{type = 'xs:boolean', value = _@Bool@}").

abs_simp_atomic_value(#xqAtomicValue{type = T, value = V}) ->
   _ = add_used_record_type(xqAtomicValue),
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
   _ = add_used_record_type(xqNamespace),
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

% TODO implement
path_function_name(Id) ->
   list_to_atom(lists:concat(["path_expr__", Id])).

get_variable_tuple(Map) when is_map(Map) ->
   Vars = maps:get(variables, Map),
   Cnt = length(Vars),
   if Cnt == 0 ->
         {nil,?L};
      true ->
         get_variable_tuple(Map, Vars)
   end.

get_variable_tuple(_Ctx, List) when is_list(List) ->
   F = fun({_,_,_,Name}) when is_atom(Name) ->
             {true,{var,?L,Name}};
          ({Name,{var,_,_} = Var}) when is_atom(Name) ->
             {true,Var}; % context items
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
handle_predicate({_Ctx, {positional_predicate, % Seq[last()] 
                        {'function-call', 
                         #xqFunction{body = {xqerl_fn,last,_}}}}}, Abs) ->
   ?P("xqerl_seq3:last(_@Abs)");
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
   when ?xs_numeric(Type) ->
   A1 = abs_simp_atomic_value(A),
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   ?P("xqerl_seq3:position_filter(_@CtxVar,_@A1,_@Abs)");

handle_predicate({Ctx, {predicate, #xqVarRef{name = Name}}}, Abs) ->
%%    Ctx = lists:foldl(
%%            fun(V,M) ->
%%                  maps:remove(V, M)
%%            end, Ctx0, [context_variable,position_variable,size_variable]),
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   {VarAbs, #xqSeqType{type = VarType}} = get_variable_ref(Name, Ctx),
   if ?xs_numeric(VarType) ->
         ?P("xqerl_seq3:position_filter(_@CtxVar,_@VarAbs,_@Abs)");
      true ->
         NextCtxVar = {var,?L,next_ctx_var_name()},
         ?P("xqerl_seq3:filter(_@CtxVar,fun(_@NextCtxVar,_,_,_) -> "
            "_@VarAbs end,_@Abs)")
   end;
handle_predicate({Ctx, {predicate, P}}, Abs) ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   NextCtxVar = next_ctx_var_name(),
   NextCtxVar1 = {var,?L,NextCtxVar},
   IntCtxVar = {var,?L,next_var_name()},
   PosVar = {var,?L,next_var_name()},
   SizeVar = {var,?L,next_var_name()},

   AddFun = fun(N,C) ->
                  add_variable(N, C)
            end,
   Ctx0 = lists:foldl(AddFun, Ctx, 
                      [{context_variable,IntCtxVar},
                       {position_variable,PosVar},
                       {size_variable,SizeVar}
                      ]),   
   Ctx1 = set_context_variable_name(Ctx0, NextCtxVar),
   Ctx2 = Ctx1#{context_variable => IntCtxVar,
                position_variable => PosVar,
                size_variable => SizeVar},
   E1 = expr_do(Ctx2, P),
   ?P("xqerl_seq3:filter(_@CtxVar,fun(_@NextCtxVar1,_@IntCtxVar,_@PosVar,_@SizeVar) -> _@E1 end,_@Abs)");

handle_predicate({Ctx, {arguments, Args}}, Abs) ->
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
   CtxAbs = context_map_abs(Ctx),
   Fun1 = ?P(["fun([]) ->",
              "     xqerl_error:error('XPTY0004');",
              "   (_@NextVar2) ->",
              "     xqerl_seq3:do_call(_@CtxAbs,_@NextVar2,{_@@ArgAbs})",
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



%% qname_tuple(#qname{namespace = 'no-namespace', local_name = Ln}) ->
%%    ?P("{<<>>,_@Ln@}");
%% qname_tuple(#qname{namespace = Ns, local_name = Ln}) ->
%%    ?P("{_@Ns@,_@Ln@}").

ensure_type(_,_,#xqSeqType{type = item, occur = zero_or_many},_) ->
   {nil,?L};
ensure_type(_,_,#xqSeqType{type = Type, 
                           occur = zero_or_many},_) when ?node(Type) ->
   {nil,?L};
ensure_type(_,_,#xqSeqType{type = #xqFunTest{}},_) ->
   {nil,?L};
ensure_type(_,_,Type,Type) ->
   {nil,?L};
ensure_type(_,_,
            #xqSeqType{type = Type,
                       occur = Occ1},
            #xqSeqType{type = Type,
                       occur = Occ2})
   when Occ1 == zero_or_many;
        Occ1 == zero_or_one, Occ2 == one;
        Occ1 == one_or_many, Occ2 == one ->
   {nil,?L};
ensure_type(Ctx,Var,Type,_AType) ->
   _ = add_used_record_type(xqAtomicValue),
   %?dbg("ensure_type         ",{Var,Type,AType}),
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

clear_context_variables(Map) ->
   M1 = maps:remove(context_variable, Map),
   M2 = maps:remove(position_variable, M1),
   maps:remove(size_variable, M2).

context_map_abs(#{context_variable := C,
                  position_variable := P,
                  size_variable := S} = Ctx) ->
   CtxVar = {var,?L,get_context_variable_name(Ctx)},
   ?P("xqerl_context:set_context_item(_@CtxVar,_@C,xqerl_types:value(_@P),_@S)");
context_map_abs(Ctx) ->
   {var,?L,get_context_variable_name(Ctx)}.

do_axis_step(Ctx, SourceVariable, #xqAxisStep{id = _Id, axis = Axis,
                                              node_test = NodeTest, 
                                              predicates = Preds}) ->
   AbsPreds = abs_list([handle_axis_step_pred(Ctx, P) || P <- Preds]),
   case xpath_function(Axis, NodeTest) of
      {none, Fun} -> 
         ?P("xqldb_xpath:'@Fun@'(_@SourceVariable,{_@AbsPreds})");
      {name, Fun} -> 
         N = local_name_filter(NodeTest),
         ?P("xqldb_xpath:'@Fun@'(_@SourceVariable,{_@N, _@AbsPreds})");
      {name_type, Fun} -> 
         N = name_type_filter(NodeTest),
         ?P("xqldb_xpath:'@Fun@'(_@SourceVariable,{_@N, _@AbsPreds})");
      {error, _} ->
         {nil,?L}
         %?err('XPST0005')
   end.

local_name_filter(#xqKindTest{name = #qname{local_name = Ln}}) ->
   ?P("{_@Ln@}");
local_name_filter(#xqKindTest{name = undefined}) ->
   ?Q("{any}").


name_type_filter(#xqKindTest{type = #xqSeqType{type = 'xs:anyType'}} = K) ->
   name_type_filter(K#xqKindTest{type = undefined});
name_type_filter(#xqKindTest{name = #qname{namespace = 'no-namespace'} = N} = K) ->
   name_type_filter(K#xqKindTest{name = N#qname{namespace = <<>>}});

name_type_filter(#xqKindTest{name = undefined, type = undefined}) -> ?Q("{any,any,any}");
name_type_filter(#xqKindTest{name = undefined, type = #xqSeqType{type = Type}}) -> ?P("{any,any,_@Type@}");

name_type_filter(#xqKindTest{name = #qname{namespace = <<"*">>,
                                           local_name = <<"*">>}, 
                             type = undefined}) -> 
   ?Q("{any,any,any}");
name_type_filter(#xqKindTest{name = #qname{namespace = <<"*">>,
                                           local_name = Ln}, 
                             type = undefined}) -> 
   ?P("{any,_@Ln@,any}");
name_type_filter(#xqKindTest{name = #qname{namespace = Ns,
                                           local_name = <<"*">>}, 
                             type = undefined}) -> 
   ?P("{_@Ns@,any,any}");
name_type_filter(#xqKindTest{name = #qname{namespace = Ns,
                                           local_name = Ln}, 
                             type = undefined}) -> 
   ?P("{_@Ns@,_@Ln@,any}");

name_type_filter(#xqKindTest{name = #qname{namespace = <<"*">>,
                                           local_name = <<"*">>}, 
                             type = #xqSeqType{type = Type}}) -> 
   ?P("{any,any,_@Type@}");
name_type_filter(#xqKindTest{name = #qname{namespace = <<"*">>,
                                           local_name = Ln}, 
                             type = #xqSeqType{type = Type}}) -> 
   ?P("{any,_@Ln@,_@Type@}");
name_type_filter(#xqKindTest{name = #qname{namespace = Ns,
                                           local_name = <<"*">>}, 
                             type = #xqSeqType{type = Type}}) -> 
   ?P("{_@Ns@,any,_@Type@}");
name_type_filter(#xqKindTest{name = #qname{namespace = Ns,
                                           local_name = Ln}, 
                             type = #xqSeqType{type = Type}}) -> 
   ?P("{_@Ns@,_@Ln@,_@Type@}").


handle_axis_step_pred(Ctx, {predicate, Pred}) ->
   IntCtxVar = {var,?L,next_var_name()},
   PosVar = {var,?L,next_var_name()},
   SizeVar = {var,?L,next_var_name()},

   AddFun = fun(N,C) ->
                  add_variable(N, C)
            end,
   Ctx1 = lists:foldl(AddFun, Ctx, 
                      [{context_variable,IntCtxVar},
                       {position_variable,PosVar},
                       {size_variable,SizeVar}
                      ]),   
   Ctx2 = Ctx1#{context_variable => IntCtxVar,
                %position_variable => PosVar,
                position_variable => ?P("#xqAtomicValue{type = 'xs:integer', value = _@PosVar}"),
                size_variable => ?P("#xqAtomicValue{type = 'xs:integer', value = _@SizeVar}")},
   E1 = expr_do(Ctx2, Pred),
   ?P("fun(_@IntCtxVar,_@PosVar,_@SizeVar) -> "
      "xqerl_operators:eff_bool_val(_@E1) end");
handle_axis_step_pred(Ctx, {positional_predicate, Pred}) ->
   IntCtxVar = {var,?L,next_var_name()},
   PosVar = {var,?L,next_var_name()},
   SizeVar = {var,?L,next_var_name()},

   AddFun = fun(N,C) ->
                  add_variable(N, C)
            end,
   Ctx1 = lists:foldl(AddFun, Ctx, 
                      [{context_variable,IntCtxVar},
                       {position_variable,PosVar},
                       {size_variable,SizeVar}
                      ]),   
   Ctx2 = Ctx1#{context_variable => IntCtxVar,
                %position_variable => PosVar,
                position_variable => ?P("#xqAtomicValue{type = 'xs:integer', value = _@PosVar}"),
                size_variable => ?P("#xqAtomicValue{type = 'xs:integer', value = _@SizeVar}")},
   E1 = expr_do(Ctx2, Pred),
   ?P("fun(_@IntCtxVar,_@PosVar,_@SizeVar) -> "
      "xqerl_operators:eff_bool_val("
      "  xqerl_types:value(xqerl_operators:equal(_@E1, #xqAtomicValue{type = 'xs:integer', value = _@PosVar})))"
      "   end");
handle_axis_step_pred(Ctx, Other) ->
   ?dbg("!!!SKIPPING!!!", Other),
   expr_do(Ctx, Other).


%% handle_predicate({Ctx, {predicate, P}}, Abs) ->
%%    ?P("xqerl_seq3:filter(_@CtxVar,fun(_@NextCtxVar1,_@IntCtxVar,_@PosVar,_@SizeVar) -> _@E1 end,_@Abs)");


% {name | name_type | none, fun_name}
xpath_function('ancestor', #xqKindTest{kind = 'document-node'}) -> {name_type,ancestor_document_node};
xpath_function('ancestor', #xqKindTest{kind = 'element'}) -> {name_type,ancestor_element};
xpath_function('ancestor', #xqKindTest{kind = 'node'}) -> {none,ancestor_node};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'attribute'}) -> {name_type,ancestor_or_self_attribute};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'comment'}) -> {none,ancestor_or_self_comment};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'document-node'}) -> {name_type,ancestor_or_self_document_node};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'element'}) -> {name_type,ancestor_or_self_element};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'node'}) -> {none,ancestor_or_self_node};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'processing-instruction'}) -> {name,ancestor_or_self_processing_instruction};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'text'}) -> {none,ancestor_or_self_text};
xpath_function('attribute', #xqKindTest{kind = 'attribute'}) -> {name_type,attribute_attribute};
xpath_function('attribute', #xqKindTest{kind = 'node'}) -> {none,attribute_node};
xpath_function('child', #xqKindTest{kind = 'comment'}) -> {none,child_comment};
xpath_function('child', #xqKindTest{kind = 'element'}) -> {name_type,child_element};
xpath_function('child', #xqKindTest{kind = 'node'}) -> {none,child_node};
xpath_function('child', #xqKindTest{kind = 'processing-instruction'}) -> {name,child_processing_instruction};
xpath_function('child', #xqKindTest{kind = 'text'}) -> {none,child_text};
xpath_function('descendant', #xqKindTest{kind = 'comment'}) -> {none,descendant_comment};
xpath_function('descendant', #xqKindTest{kind = 'element'}) -> {name_type,descendant_element};
xpath_function('descendant', #xqKindTest{kind = 'node'}) -> {none,descendant_node};
xpath_function('descendant', #xqKindTest{kind = 'processing-instruction'}) -> {name,descendant_processing_instruction};
xpath_function('descendant', #xqKindTest{kind = 'text'}) -> {none,descendant_text};
xpath_function('descendant-or-self', #xqKindTest{kind = 'attribute'}) -> {name_type,descendant_or_self_attribute};
xpath_function('descendant-or-self', #xqKindTest{kind = 'comment'}) -> {none,descendant_or_self_comment};
xpath_function('descendant-or-self', #xqKindTest{kind = 'document-node'}) -> {name_type,descendant_or_self_document_node};
xpath_function('descendant-or-self', #xqKindTest{kind = 'element'}) -> {name_type,descendant_or_self_element};
xpath_function('descendant-or-self', #xqKindTest{kind = 'node'}) -> {none,descendant_or_self_node};
xpath_function('descendant-or-self', #xqKindTest{kind = 'processing-instruction'}) -> {name,descendant_or_self_processing_instruction};
xpath_function('descendant-or-self', #xqKindTest{kind = 'text'}) -> {none,descendant_or_self_text};
xpath_function('following', #xqKindTest{kind = 'comment'}) -> {none,following_comment};
xpath_function('following', #xqKindTest{kind = 'element'}) -> {name_type,following_element};
xpath_function('following', #xqKindTest{kind = 'node'}) -> {none,following_node};
xpath_function('following', #xqKindTest{kind = 'processing-instruction'}) -> {name,following_processing_instruction};
xpath_function('following', #xqKindTest{kind = 'text'}) -> {none,following_text};
xpath_function('following-sibling', #xqKindTest{kind = 'comment'}) -> {none,following_sibling_comment};
xpath_function('following-sibling', #xqKindTest{kind = 'element'}) -> {name_type,following_sibling_element};
xpath_function('following-sibling', #xqKindTest{kind = 'node'}) -> {none,following_sibling_node};
xpath_function('following-sibling', #xqKindTest{kind = 'processing-instruction'}) -> {name,following_sibling_processing_instruction};
xpath_function('following-sibling', #xqKindTest{kind = 'text'}) -> {none,following_sibling_text};
xpath_function('parent', #xqKindTest{kind = 'document-node'}) -> {name_type,parent_document_node};
xpath_function('parent', #xqKindTest{kind = 'element'}) -> {name_type,parent_element};
xpath_function('parent', #xqKindTest{kind = 'node'}) -> {none,parent_node};
xpath_function('preceding', #xqKindTest{kind = 'comment'}) -> {none,preceding_comment};
xpath_function('preceding', #xqKindTest{kind = 'element'}) -> {name_type,preceding_element};
xpath_function('preceding', #xqKindTest{kind = 'node'}) -> {none,preceding_node};
xpath_function('preceding', #xqKindTest{kind = 'processing-instruction'}) -> {name,preceding_processing_instruction};
xpath_function('preceding', #xqKindTest{kind = 'text'}) -> {none,preceding_text};
xpath_function('preceding-sibling', #xqKindTest{kind = 'comment'}) -> {none,preceding_sibling_comment};
xpath_function('preceding-sibling', #xqKindTest{kind = 'element'}) -> {name_type,preceding_sibling_element};
xpath_function('preceding-sibling', #xqKindTest{kind = 'node'}) -> {none,preceding_sibling_node};
xpath_function('preceding-sibling', #xqKindTest{kind = 'processing-instruction'}) -> {name,preceding_sibling_processing_instruction};
xpath_function('preceding-sibling', #xqKindTest{kind = 'text'}) -> {none,preceding_sibling_text};
xpath_function('self', #xqKindTest{kind = 'attribute'}) -> {name_type,self_attribute};
xpath_function('self', #xqKindTest{kind = namespace}) -> {none,self_namespace};
xpath_function('self', #xqKindTest{kind = 'comment'}) -> {none,self_comment};
xpath_function('self', #xqKindTest{kind = 'document-node'}) -> {name_type,self_document_node};
xpath_function('self', #xqKindTest{kind = 'element'}) -> {name_type,self_element};
xpath_function('self', #xqKindTest{kind = 'node'}) -> {none,self_node};
xpath_function('self', #xqKindTest{kind = 'processing-instruction'}) -> {name,self_processing_instruction};
xpath_function('self', #xqKindTest{kind = 'text'}) -> {none,self_text};
xpath_function(_, _) -> {error, empty_axis}.

get_used_record_types() ->
   case erlang:get('$_used_records') of
      undefined ->
         [];
      L ->
         lists:usort(L)
   end.

add_used_record_type(Atom) ->
   case erlang:get('$_used_records') of
      undefined ->
         erlang:put('$_used_records', [Atom]),
         ok;
      L ->
         erlang:put('$_used_records', [Atom|L]),
         ok         
   end.
   
