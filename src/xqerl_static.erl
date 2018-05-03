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

%% @doc  Static phase of compilation.

-module(xqerl_static).

-include("xqerl.hrl").

-dialyzer({[no_unused], [get_can_inline/1,
                         set_can_inline/2]}).

%% ====================================================================
%% API functions
%% ====================================================================
-export([handle_tree/2]).

-export([variable_hash_name/1]).
-export([function_hash_name/2]).
-export([string_atom/1]).

-export([pro_def_elem_ns/1]).
-export([pro_glob_variables/2]).
-export([pro_glob_functions/2]).
-export([pro_namespaces/3]).
-export([pro_mod_imports/1]).
-export([pro_context_item/2]).
-export([overwrite_static_namespaces/2]).
-export([scan_functions/1]).
-export([scan_variables/2]).


-define(true,#xqAtomicValue{type = 'xs:boolean', value = true}).
-define(false,#xqAtomicValue{type = 'xs:boolean', value = false}).
-define(atomic(Type,Val),#xqAtomicValue{type = Type, value = Val}).
-define(boolone,#xqSeqType{type = 'xs:boolean', occur = one}).
-define(boolzone,#xqSeqType{type = 'xs:boolean', occur = zero_or_one}).
-define(stringone,#xqSeqType{type = 'xs:string', occur = one}).
-define(intone,#xqSeqType{type = 'xs:integer', occur = one}).
-define(FN,"http://www.w3.org/2005/xpath-functions").
-define(XS,"http://www.w3.org/2001/XMLSchema").
-define(ERROR_MATCH(Err), 
        _:#xqError{name = #xqAtomicValue{value= #qname{local_name = Err}}}).
-define(ERR_VAR(N), #qname{namespace = "http://www.w3.org/2005/xqt-errors",
                           prefix = "err", 
                           local_name = N}).

% state should hold the entire static context, augmented by statements that 
% can do it in their own scope.
-record(context,
        {statement,      % possibly optimized statement
         statement_type, % give type information back to caller
         inscope_ns   = [#xqNamespace{namespace = 'no-namespace', prefix = []},
                         #xqNamespace{namespace = 
                                        "http://www.w3.org/XML/1998/namespace", 
                                      prefix = "xml"}] ,
         static_count,
         can_inline   = false,  
         in_constructor = false % currently in an XML constructor 
        }).

-record(state, 
        {% static context
         known_ns,
         default_elem_ns,
         inscope_vars,
         context_item_type,
         order_mode,
         default_fx_ns,
         inscope_schema_types,
         inscope_elem_decls,
         inscope_att_decls,
         known_fx_sigs,
         default_collation,
         construction_mode,
         empty_order,
         boundary_space,
         copy_ns_mode,
         base_uri,
         known_dec_formats,
         known_docs,
         known_collections,
         default_collection_type,
         known_collations,
         % helpers
         context,
         tab,
         digraph
   }).

handle_tree(#xqModule{version = {Version,Encoding}, 
                      prolog = Prolog,
                      declaration = Decl, 
                      type = ModuleType,% main|library, 
                      body = Body} = Mod,
            BaseUri) ->
   State = #state{base_uri = BaseUri},
   _ = erlang:put(var_id, 1),
   _ = valid_ver(Version),
   _ = valid_enc(string:uppercase(Encoding)),      
   Tab = init_mod_scan(),
   _ = xqerl_context:set_static_base_uri(Tab,BaseUri),
   ok = check_prolog_order(Prolog),
   DefElNs     = pro_def_elem_ns(Prolog),
   _           = pro_def_func_ns(Prolog),
   ContextItem = pro_context_item(Prolog,ModuleType),
   Setters     = pro_setters(Prolog),
   ModNs       = pro_module_ns(Decl),
   Namespaces  = pro_namespaces(Prolog,ModNs,DefElNs),
   Imports     = pro_mod_imports(Prolog),
   Options     = pro_options(Prolog, ModuleType), % use later
   Variables   = pro_glob_variables(Prolog, ModNs),
   Functions   = pro_glob_functions(Prolog, ModNs),
   StaticNamespaces = xqerl_context:static_namespaces(),
   ConstNamespaces  = overwrite_static_namespaces(StaticNamespaces, Namespaces),
   StaticImports = [],
   {Functions1, Variables1, StaticProps} = % any errors are in the static props
     xqerl_context:get_module_exports(Imports ++ StaticImports),
   % analyze for cyclical references
   DiGraph = xqerl_static_analysis:analyze(Body, Functions1 ++ Functions, 
                              ContextItem ++ Variables1 ++ Variables),
   LU = {?FN,"function-lookup"},
   _ = case lists:member({0,LU,2}, digraph:vertices(DiGraph)) of
          true ->
             [xqerl_static_analysis:add_edge(DiGraph, {Id,N,A}, ModuleType) || 
                {Id,N,A} <- digraph:vertices(DiGraph), 
                Id =/= 0];
          _ ->
             ok
       end,
   AV = ContextItem ++ Variables1 ++ Variables,
   FV = Functions1 ++ Functions,
   ok = xqerl_static_analysis:has_cycle(DiGraph, AV),
   % add all the fun/vars in if library
   if ModuleType == library ->
         [_ = {xqerl_static_analysis:add_edge(DiGraph, {0,sim_name(Nm)}, library),
           xqerl_static_analysis:add_edge(DiGraph, library, {0,sim_name(Nm)})} 
         || {#qname{} = Nm,_,_,_,_} <- AV],
         [_ = {xqerl_static_analysis:add_edge(DiGraph, {Id,sim_name(Nm)}, library),
           xqerl_static_analysis:add_edge(DiGraph, library, {Id,sim_name(Nm)})} 
         || #xqVar{id = Id, name = Nm} <- AV],
         [_ = {xqerl_static_analysis:add_edge(DiGraph, {Id,sim_name(Nm), Ar}, library),
           xqerl_static_analysis:add_edge(DiGraph, library, {Id,sim_name(Nm), Ar})}           
         || #xqFunction{id = Id,
                        name = Nm,
                        arity = Ar} <- FV],
         ok;
      true ->
         ok
   end,
   UsedImports = lists:usort([N || {_,{N,_}} <- digraph:vertices(DiGraph)] ++ 
                 [N || {A,{N,_},_} <- digraph:vertices(DiGraph), A =/= 0]),
                   
   AllImports = [N || {N,_} <- Imports],
   UnusedImports = AllImports -- UsedImports,
%?dbg("edges",digraph:edges(DiGraph,main)),
   ?dbg("UsedImports",UsedImports),
   ?dbg("UnusedImports",UnusedImports),
   %?dbg("StaticProps",StaticProps),
   
   % check used imports for any errors
   [throw(ImpErr) || 
    #xqError{value = ImpE} = ImpErr <- StaticProps,
     ImpU <- UsedImports,
     ImpU == ImpE
     ],
   
   
   OrderedGraph = 
     case digraph_utils:topsort(DiGraph) of
        false ->
           lists:sort(digraph_utils:reaching([ModuleType],DiGraph));
        Ord  ->
           lists:filter(fun(OV) ->
                              R = digraph_utils:reaching([ModuleType],DiGraph),
                              lists:member(OV, R)
                        end, Ord)
     end,
%?dbg("OrderedGraph",OrderedGraph),

   OrderedGraph1 = case lists:member(context_item, OrderedGraph) of
                      true ->
                         OrderedGraph;
                      _ ->
                         [context_item|OrderedGraph]
                   end,
   FunVarOrd = [if S == context_item ->
                      S;
                   true ->
                     element(1, S)
                end || S <- OrderedGraph1, 
                       S == context_item orelse 
                         (is_tuple(S) andalso 
                            element(1, S) =/= 0)],
   %?dbg("FunVarOrd",FunVarOrd),
   FunVarSorted = 
     lists:filtermap(
       fun(context_item) ->
             if ContextItem == [] ->
                   {true,{'context-item', {item,external,undefined}}};
                true ->
                   {true,ContextItem}
             end;
          (FVId) ->
             case lists:keyfind(FVId, #xqFunction.id, Functions) of
                false ->
                   case lists:keyfind(FVId, #xqVar.id, Variables) of
                      false -> false;
                      V -> {true,V}
                   end;
                F -> {true,F}
             end
       end, FunVarOrd),
   
   %?dbg("FunVarSorted",FunVarSorted),
   
   FunOrd = [FId || {FId,_, _}  <- OrderedGraph1, FId =/= 0],
   VarOrd = [VId || {VId,_}  <- OrderedGraph1, VId =/= 0],
   StatProps = [Prop || {static,Prop}  <- OrderedGraph1],
   FunctionsSorted = [F || I <- FunOrd,
                           #xqFunction{id = FId} = F <- Functions,
                           I == FId], 
   VariablesSorted = [V || I <- VarOrd,
                           #xqVar{id = VId} = V <- Variables,
                           I == VId], 
   State0 = State#state{known_collations = xqerl_context:static_collations(),
                        default_elem_ns = DefElNs,
                        context = #context{},
                        tab = Tab,
                        digraph = DiGraph
                       },
   State1 = scan_namespaces(State0, ConstNamespaces),
   State2 = scan_setters(State1, Setters),
   OptionAbs = scan_options(Options), % use later
   FunctionSigs = scan_functions(FunctionsSorted),
   %StatFuncSigs = scan_functions(Functions1),
   VariableSigs = scan_variables(State2,VariablesSorted),
   CtxItemType = 
     if ContextItem == [] ->
           #xqSeqType{type = item, occur = zero_or_many};
        true ->
           TempS = State2#state{known_fx_sigs = FunctionSigs ++ Functions1,
                                inscope_vars = VariableSigs ++ Variables1,
                                context = #context{}},
           CtxState = handle_node(TempS, ContextItem),
           get_statement_type(CtxState)
     end,
   
   State3 = State2#state{context_item_type = CtxItemType,
                         known_fx_sigs = FunctionSigs ++ Functions1,
                         inscope_vars = VariableSigs ++ Variables1
                         },
   
   % here do the variable and function bodies
   {VarFunPart,State4} = 
     lists:mapfoldl(fun(Node,IState1) ->
                          % reset the context type for each fun
                          IState = 
                            handle_node(IState1#state{context_item_type = 
                                                        CtxItemType}, Node),
                          {get_statement(IState), IState}
                    end, State3, FunVarSorted ++ [Body]),
                    %end, State3, lists:reverse(FunVarSorted) ++ [Body]),
   
   FinalState = State4, %handle_node(State4, Body),
   digraph:delete(DiGraph),
   S1 = [X || #xqQuery{} = X  <- VarFunPart],
   S2 = [X || X  <- lists:reverse(VarFunPart), 
              not is_record(X, xqQuery)%,
              %not (element(1, X) == 'context-item' 
               %    andalso element(3,element(2,X)) == [])
              ],
   S3 = [X || X <-  Prolog, 
              not (is_record(X, xqVar) orelse 
                   is_record(X, xqFunction) orelse 
                   element(1, X) == 'context-item')],
   S3_1 = strip_unused_imports(S3,UnusedImports),
   %%% for now, return a map with everything in it for the abstract part. 
   %% just until it has no idea of static context
   EmptyMap = #{file_name => BaseUri,
                namespaces => FinalState#state.known_ns,
                variables => [], %FinalState#state.inscope_vars,
                var_tuple => [],
                iter => [],
                iter_loop => [],
                ctx_var => 'Ctx0',
                parameters => [],
                known_fx_sigs => FinalState#state.known_fx_sigs,
                tab => Tab,
                stat_props => StatProps,
                'boundary-space' => FinalState#state.boundary_space,
                'construction-mode' => FinalState#state.construction_mode,
                'default-collation' => FinalState#state.default_collation,
                'base-uri' => ?atomic('xs:anyURI', FinalState#state.base_uri),
                %'static-base-uri' => ?atomic('xs:anyURI', xqerl_context:get_static_base_uri(Tab)),
                'ordering-mode' => FinalState#state.order_mode,
                'empty-seq-order' => FinalState#state.empty_order,
                'copy-namespaces' => FinalState#state.copy_ns_mode,
                known_collations => FinalState#state.known_collations,
                known_dec_formats => FinalState#state.known_dec_formats,
                body => Mod#xqModule{prolog = S3_1 ++ S2,
                                     body = S1}
               }, 
   %%% not sent in %%%  
   %% default_elem_ns, *
   %% inscope_vars,
   %% context_item_type,
   %% default_fx_ns,
   %% inscope_schema_types,
   %% inscope_elem_decls,
   %% inscope_att_decls,
   %% known_fx_sigs,
   %% known_dec_formats,
   %% known_docs,
   %% known_collections,
   %% default_collection_type,
   %% known_collations,
   EmptyMap.

strip_unused_imports([],_) -> [];
strip_unused_imports([{'module-import', {N,_}} = H|T],UnusedImports) ->
   case lists:member(N, UnusedImports) of
      true ->
         ?dbg("stripping",N),
         strip_unused_imports(T,UnusedImports);
      false ->
         ?dbg("not stripping",H),
         [H|strip_unused_imports(T,UnusedImports)]
   end;
strip_unused_imports([H|T],UnusedImports) ->
   [H|strip_unused_imports(T,UnusedImports)].


handle_node(State, #qname{namespace = NsExpr, 
                          prefix = PxExpr, 
                          local_name = LnExpr}) ->
   FNs = fun(NsE) when is_tuple(NsE) ->
               NS1 = handle_node(State, NsExpr),
               NTy = get_statement_type(NS1),
               case check_type_match(NTy, ?stringone) of
                  false ->
                     ?err('XPTY0004');
                  _ ->
                     St1 = case get_statement(NS1) of
                              {expr,#xqAtomicValue{} = Av1} ->
                                 Av1;
                              O ->
                                 O
                           end,
                     AllAtom1 = all_atomics(St1),
                     if AllAtom1 ->
                           xqerl_types:value(
                             xqerl_types:cast_as(St1, 'xs:string'));
                        true ->
                           St1
                     end
               end;
            (default) ->
               State#state.default_elem_ns;
            (NsE) ->
               NsE
         end,
   FPx = fun(PxE) when is_tuple(PxE) ->
               PS1 = handle_node(State, PxExpr),
               #xqSeqType{type = PTy} = get_statement_type(PS1),
               if ?string(PTy);
                  ?node(PTy);
                  PTy == 'xs:untypedAtomic' ->
                     get_statement(PS1);
                  true ->
                     ?err('XPTY0004')
               end;
            (PxE) ->
               PxE
         end,
   NsExpr1 = FNs(NsExpr),
   PxExpr1 = FPx(PxExpr),
   LnExpr1 = FPx(LnExpr),
   set_statement(State, #qname{namespace = NsExpr1, 
                               prefix = PxExpr1, 
                               local_name = LnExpr1});
handle_node(State, [Node]) -> 
   handle_node(State, Node);
handle_node(State, Nodes) when is_list(Nodes) ->
   F = fun(Node) ->
         St = handle_node(State, Node),
         S = get_statement(St),
         T = get_statement_type(St),
         C = get_static_count(St),
         {S,T,C}
       end,
   All = lists:map(F, Nodes),
   Statements = [S || {S,_,_} <- All],
   Types  = [T || {_S,T,_} <- All, 
                  T =/= #xqSeqType{type = 'empty-sequence', occur = zero}],
   Counts = [C || {_S,T,C} <- All, 
                  T =/= #xqSeqType{type = 'empty-sequence', occur = zero}],
   Counts1 = lists:foldl(fun(_I,undefined) ->
                               undefined;
                            (I,Acc) when is_integer(I) ->
                               I + Acc;
                            (undefined,_Acc) ->
                               undefined
                         end, 0, Counts),
   Type = get_list_type(Types),
   set_static_count(set_statement_and_type(State, Statements, Type), Counts1);
%% 3.1 Primary Expressions
handle_node(State, #xqQuery{query = Qry} )-> 
   % clear all but global variables !!
   Statements = lists:map(fun(Q) ->
                                get_statement(handle_node(State, Q))
                          end, Qry),
   set_statement(State, #xqQuery{query = Statements});
%% 3.1.1 Literals
handle_node(State, #xqAtomicValue{type = T} = At) -> 
   S2 = set_static_count(State, 1),
   set_statement_and_type(S2, At, #xqSeqType{type = T, occur = one});
%% 3.1.2 Variable References
handle_node(State, #xqVarRef{name = Name}) -> 
   St = get_variable(State, Name),
   Val = element(4, St), % ErlVar
   Type = element(2, St),
   set_statement_and_type(State, {variable, Val}, Type);
%% 3.1.3 Parenthesized Expressions
handle_node(State, {sequence, Expr}) -> 
   S = handle_node(State, Expr),
   St = get_statement(S),
   T = get_statement_type(S),
   Cnt = get_static_count(S),
   if is_list(St) ->
         set_static_count(
           set_statement_and_type(State, {sequence, St}, T), Cnt);
      true ->
         set_static_count(
         set_statement_and_type(State, {sequence, l(St)}, T), Cnt)
   end;
%% 3.1.4 Context Item Expression
handle_node(State = #state{context_item_type = CIType}, 'context-item') -> 
   set_statement_and_type(State, 'context-item', CIType);
handle_node(State, {'context-item', {Type,external,undefined}}) ->
   set_statement_and_type(State, 
                          {'context-item', {Type,external,[]}}, 
                          #xqSeqType{type = Type, occur = zero_or_one});
handle_node(State, {'context-item', {Type,External,Expr}}) -> 
   S1 = handle_node(State, Expr),
   St1 = get_statement(S1),
   ST  = get_statement_type(S1),
   SC = get_static_count(S1),
   case check_type_match(ST, #xqSeqType{type = Type, occur = zero_or_one}) of
      true when SC == 1;
                SC == undefined;
                External == external ->
         ok;
      _ ->
         ?err('XPTY0004')
   end,
   set_statement_and_type(State, {'context-item', {Type,External,St1}}, ST);
%% 3.1.5 Static Function Calls
handle_node(_, {'partial-function',
                #qname{namespace = ?FN,
                       local_name = "concat"}, 1, _}) ->
   ?err('XPST0017');
handle_node(State, {'partial-function', 
                    #qname{namespace = ?FN,
                           local_name = "concat"} = Name, Arity, Args}) ->
   if Arity == length(Args) ->
         ok;
      true ->
         ?err('XPTY0004')
   end,
   F = get_static_function(State, {Name, Arity}),
   StateC = set_in_constructor(State, false),
   SimpArgs = handle_list(StateC, Args),
   % zero_or_one to allow empty sequence
   FakeArgs = lists:duplicate(Arity, 
                              {xqSeqType,'xs:anyAtomicType',zero_or_one}),
   CheckArgs = check_fun_arg_types(State, SimpArgs, FakeArgs),
   NewArgs = lists:map(fun({S,undefined}) -> % unknown size
                           S;
                          ({S,C}) when C =< 1 ->
                           S;
                          ({_S,_C}) -> % no known sequences
                             ?err('XPTY0004')
                       end, CheckArgs),
   % NewArgs wrapped as list on purpose!
   PlaceHolders = placeholders(Args),
   AnonArity = length(PlaceHolders),
   AnonFun = #xqFunction{params = PlaceHolders,
                         arity = AnonArity,
                         body = {'function-call',
                                 F#xqFunction{params = [{sequence, NewArgs}]}},
                         type = ?stringone},
   FakeArgs1 = lists:duplicate(AnonArity, 
                               {xqSeqType,'xs:anyAtomicType',zero_or_one}),
   ST = #xqSeqType{type = #xqFunTest{kind = function,
                                     params = FakeArgs1,
                                     type = ?stringone}, occur = one},
   set_statement_and_type(State, AnonFun, ST);

handle_node(State, {'partial-function', Name, Arity, Args}) -> 
   #xqFunction{params = Params, 
               type = Type} = F = get_static_function(State, {Name, Arity}),
   StateC = set_in_constructor(State, false),
   SimpArgs = handle_list(StateC, Args),
   CheckArgs = check_fun_arg_types(State, SimpArgs, Params),
   NewArgs = lists:map(fun({S,_C}) ->
                           S
                       end, CheckArgs),
   PlaceHolders = placeholders_1(Params, Args),
   AnonArity = length(PlaceHolders),
   AnonParamTypes = lists:filtermap(fun({P,{'?',_}}) ->
                                          {true,P};
                                       (_) ->
                                          false
                                    end, lists:zip(Params, Args)),
   AnonFun = #xqFunction{params = PlaceHolders,
                         arity = AnonArity,
                         body = {'function-call',
                                 F#xqFunction{params = NewArgs}},
                         type = Type},
   ST = #xqSeqType{type = #xqFunTest{kind = function,
                                     params = AnonParamTypes,
                                     type = Type}, occur = one} ,
   set_statement_and_type(State, AnonFun, ST);

%% 3.1.5.1 Evaluating Static and Dynamic Function Calls
%% 3.1.5.2 Function Conversion Rules
%% 3.1.5.3 Function Coercion
%% 3.1.6 Named Function References
handle_node(_, {'function-ref', 
                #qname{namespace = ?FN,
                       local_name = "concat"}, 1}) ->
   ?err('XPST0017');
handle_node(State, {'function-ref', 
                    #qname{namespace = ?FN,
                           local_name = "concat"} = Name, Arity}) -> 
   #xqFunction{type = T} = F = get_static_function(State, {Name, Arity}),
   NewP = lists:duplicate(Arity, {xqSeqType,'xs:anyAtomicType',zero_or_one}),   
   Type = #xqFunTest{kind = function, params = NewP, type = T} ,
   set_statement_and_type(State, 
                          F#xqFunction{arity = Arity}, 
                          #xqSeqType{type = Type, occur = one});
handle_node(State, {'function-ref', 
                    #qname{namespace = ?FN,
                           local_name = "static-base-uri"}, 0}) -> 
   RType = #xqSeqType{type = 'xs:anyURI',occur = zero_or_one},
   Base = xqerl_context:get_static_base_uri(State#state.tab),
   ArgSt = #xqAtomicValue{type = 'xs:anyURI', value = Base},
   Type = #xqFunTest{kind = function, params = [], 
                     type = RType} ,
   set_statement_and_type(State, 
                          #xqFunction{arity = 0,
                                      type = RType,
                                      body = ArgSt}, 
                          #xqSeqType{type = Type, occur = one});
handle_node(State, {'function-ref', #qname{} = Name, Arity}) -> 
   #xqFunction{params = P, 
               type = T} = F = get_static_function(State, {Name, Arity}),
   Type = #xqFunTest{kind = function, params = P, type = T} ,
   set_statement_and_type(State, 
                          F#xqFunction{arity = Arity}, 
                          #xqSeqType{type = Type, occur = one});
%% 3.1.7 Inline Function Expressions
% this is a global variable
handle_node(State,#xqVar{name = Name, 
                         type = Type, 
                         external = true,
                         expr = undefined} = Node) ->
   GlobVarName = global_variable_name(Name),
   NewVar  = {Name,Type,[],{GlobVarName,1},true},
   State1 = add_inscope_variable(State, NewVar),
   NewStatement = Node#xqVar{expr = undefined},
   set_statement_and_type(State1, NewStatement, Type);
   
handle_node(State,#xqVar{id = Id,
                         name = Name, 
                         type = Type, 
                         expr = Expr} = Node) ->
   GlobVarName = global_variable_name(Name),
   VarState = handle_node(State, Expr),
   VarType = get_statement_type(VarState),
   VarStmt = get_statement(VarState),
   SVarType = VarType,
   case check_type_match(VarType, Type) of
      false ->
         ?err('XPTY0004');
      cast ->
         ?err('XPTY0004');
      _ ->
         ok
   end,
   case check_type_match(VarType, SVarType) of
      false ->
         ?err('XPTY0004');
      _ ->
         ok
   end,
   NewVar  = {Name,SVarType,[],{GlobVarName,1},false},
   State1 = add_inscope_variable(State, NewVar),
   NewStatement = Node#xqVar{id = Id,
                             name = Name, 
                             type = SVarType, 
                             expr = VarStmt},
   set_statement_and_type(State1, NewStatement, VarType);

handle_node(State, #xqFunction{name = FName, type = FType0, 
                               annotations = Annotations,
                               params = Params, body = Expr} = Node) -> 
   if FName == undefined ->
         ok = check_anon_fun_annos(Annotations);
      true -> ok
   end,
   % add parameters to state
   ParFld = fun(#xqVar{id = Id,name = Name,type = Type}, {TState,Pos}) ->
                  ErlVarName = param_variable_name(Id),
                  NewType = Type,
                  NewVar  = {Name,NewType,[],ErlVarName},
                  {add_inscope_variable(TState, NewVar),Pos + 1}
            end,
   {State1,_} = lists:foldl(ParFld, {State,1}, Params),
   _ = check_parameter_names(Params),
   S1 = handle_node(State1, Expr),
   % ensure functions that return sequences are sequences
   St1 = case get_statement(S1) of
            L when is_list(L), length(L) > 1 ->
               {sequence,L};
            L ->
               L
         end,
   Sty = get_statement_type(S1),
   ParamTypes = [T || #xqVar{type = T} <- Params],
   ST  = #xqSeqType{type = #xqFunTest{kind = function,
                                      params = ParamTypes,
                                      type = Sty}, occur = one},
   SC = get_static_count(S1),
   %?dbg("{Sty,FType0}",{Sty,FType0}),
   FType = if FType0 == undefined ->
                 Sty;
              true ->
                 get_statement(handle_node(State, FType0))
           end,   
   FType1 = #xqSeqType{type = #xqFunTest{kind = function,
                                         params = ParamTypes,
                                         type = FType}, occur = one},
   NoCast = check_type_match(ST, FType1),
   St2 = if NoCast == true ->
               type_ensure(Sty, FType,St1);
            NoCast == cast ->
               % the function return type promotes the output
               {promote_to, St1, FType}; 
            NoCast == atomize ->
               Promote = check_type_match(atomized_node_type(ST),FType),
               if Promote == cast ->
                     {promote_to,{atomize, St1},FType};
                  Promote == true ->
                     {promote_to,St1,FType};
                  true ->
                     ?err('XPTY0004')
               end; % namespace PI and comment are strings, rest untypedAtomic
            true ->
               ?err('XPTY0004') 
         end,
%%    if element(2, Sty) == item ->
%%          Node1 = Node#xqFunction{type = Sty, body = St2},
%%          update_function_type(State, Node1),
%%          set_static_count(set_statement_and_type(State, Node1, ST),SC);
%%       true ->
%%          Node1 = Node#xqFunction{type = FType, body = St2},
%%          update_function_type(State, Node1),
%%          set_static_count(set_statement_and_type(State, Node1, ST),SC)
%%    end;
   Node1 = Node#xqFunction{type = FType, body = St2},
   OState = update_function_type(State, Node1),
   set_static_count(set_statement_and_type(OState, Node1, FType1),SC);

%% 3.1.8 Enclosed Expressions
handle_node(State, {expr, Expr}) -> 
   S1 = handle_node(State, Expr),
   Stm = get_statement(S1),
   Sty = get_statement_type(S1),
   set_statement_and_type(State, {expr, Stm}, Sty);

%% 3.2 Postfix Expressions
handle_node(State, {postfix, Id, {'function-call', _, _, _} = Fx, PostFixArgs}) -> 
   % postfix with a function call will be fn:function-lookup
   S1 = handle_node(State, Fx),
   St = get_statement(S1),
   Ty = get_statement_type(S1),
   IsFun = check_type_match(Ty, #xqSeqType{type = function, occur = one}),
   IsArgs = element(1,hd(PostFixArgs)) == arguments,
   if IsArgs == true, IsFun =/= true ->
         ?err('XPTY0004');
      true ->
         ok
   end,
   NewPreds = handle_predicates(S1, PostFixArgs),
   NewPredSt = get_statement(NewPreds),
   NewPredTy = get_statement_type(NewPreds),
   set_statement_and_type(State, {postfix, Id, St, NewPredSt}, NewPredTy);

handle_node(State, 
            {postfix,_Id,
             {'function-ref',
               #qname{namespace = ?XS} = Name,1}, 
             [{arguments,[Arg]}]}) -> 
   S1 = handle_node(State, Arg),
   St1 = get_statement(S1),
   case St1 of
      #xqAtomicValue{} ->
         handle_node(State, {'function-call', Name, 1, [St1]});
      _ ->
         #xqFunction{params = Params, type = Type} = 
           F = get_static_function(State, {Name, 1}),
         SimpArg = [S1],
         CheckArg = check_fun_arg_types(State, SimpArg, Params),
         NewArgs = lists:map(fun({S,_C}) ->
                                 S
                             end, CheckArg),
         set_statement_and_type(State, {'function-call', 
                                        F#xqFunction{params = NewArgs}}, Type)
   end;
handle_node(_, {postfix, _,
                    {'function-ref',#qname{namespace = ?FN, 
                                           local_name = "concat"}, 1}, 
                    [{arguments,_}]}) -> ?err('XPST0017');
handle_node(State, {postfix, _,
                    {'function-ref',#qname{namespace = ?FN, 
                                           local_name = "concat"} = Name, 
                     Arity}, 
                    [{arguments,Args}]}) ->
   if Arity =/= length(Args) ->
         ?err('XPTY0004');
      true ->
         ok
   end,
   #xqFunction{type = Type} = F = get_static_function(State, {Name, Arity}),
   Params = lists:duplicate(Arity, {xqSeqType,'xs:anyAtomicType',zero_or_one}),
   SimpArgs = handle_list(State, Args),
   CheckArgs = check_fun_arg_types(State, SimpArgs, Params),
   NewArgs0 = lists:map(fun({S,_C}) ->
                           S
                       end, CheckArgs),
   NewArgs = [NewArgs0],
   set_statement_and_type(State, {'function-call', 
                                  F#xqFunction{params = NewArgs}}, Type);
   
handle_node(State, {postfix, _,
                    {'function-ref',#qname{} = Name, Arity}, 
                    [{arguments,Args}]}) -> 
   if Arity =/= length(Args) ->
         ?err('XPTY0004');
      true ->
         ok
   end,
   #xqFunction{params = Params, type = Type} = 
     F = get_static_function(State, {Name, Arity}),
   SimpArgs = handle_list(State, Args),
   CheckArgs = check_fun_arg_types(State, SimpArgs, Params),
   NewArgs = lists:map(fun({S,_C}) ->
                           S
                       end, CheckArgs),
   set_statement_and_type(State, {'function-call', 
                                  F#xqFunction{params = NewArgs}}, Type);

% this could be a function/map/array variable
handle_node(State, {postfix, Id, #xqVarRef{name = Name} = Ref, 
                    [{arguments,Args}]}) ->
   {_Name,FType,_Annos,_VarName,_External} = get_variable(State, Name),
   {Params,Type} = 
     case FType of
        #xqSeqType{type = #xqFunTest{params = IParams, type = IType}} ->
           if IType == any;
              IType == undefined ->
                 {IParams, #xqSeqType{type = item, occur = zero_or_many}};
              true ->
                 {IParams, IType}
           end;
        #xqSeqType{} ->
           {[],FType};
        Other ->
           ?dbg("Other",{Other,Name}),
            {[],#xqSeqType{}}
     end,
   SimpArgs = handle_list(State, Args),
   CheckArgs = check_fun_arg_types(State, SimpArgs, Params),
   NewArgs = lists:map(fun({S,_C}) ->
                           S
                       end, CheckArgs),
   set_statement_and_type(State, {postfix, Id, Ref, [{arguments,NewArgs}]}, Type);

handle_node(State, {partial_postfix, Id, #xqVarRef{name = Name} = Ref, 
                    [{arguments,Args}|RestArgs]}) ->
   {_Name,FType,_Annos,_VarName,_External} = get_variable(State, Name),
   {Params,Type} = 
     case FType of
        #xqSeqType{type = #xqFunTest{kind = map, 
                                     params = IParams, type = IType}} ->
           if IType == any ->
                 {IParams, #xqSeqType{type = item, occur = one}};
              true ->
                 {IParams, IType}
           end;
        #xqSeqType{type = #xqFunTest{params = IParams, type = IType}} ->
           {IParams, IType};
        #xqSeqType{type = _UType} ->
           {[],FType}
     end,
   StateC = set_in_constructor(State, false),
   SimpArgs = handle_list(StateC, Args),
   CheckArgs = check_fun_arg_types(State, SimpArgs, Params),
   NewArgs = lists:map(fun({S,_C}) ->
                           S
                       end, CheckArgs),
   PlaceHolders = placeholders_1(Params, Args),
   AnonArity = length(PlaceHolders),
   AnonParamTypes = if Params == any ->
                          [#xqSeqType{type = item,occur = zero_or_many} 
                          || {'?',_} <- Args];
                       true ->
                          lists:filtermap(fun({P,{'?',_}}) ->
                                                {true,P};
                                             (_) -> false
                                          end, lists:zip(Params, Args))
                    end,
   AnonFun = #xqFunction{params = PlaceHolders,
                         arity = AnonArity,
                         body = {postfix, Id, Ref, [{arguments,NewArgs}|RestArgs]},
                         type = Type},
   %?dbg("AnonFun",AnonFun),
   ST = #xqSeqType{type = #xqFunTest{kind = function,
                                     params = AnonParamTypes,
                                     type = Type}, occur = one} ,
   set_statement_and_type(State, AnonFun, ST);

handle_node(State, {partial_postfix, Id, {'function-ref',#qname{}, Arity} = Ref, 
                    [{arguments,Args}|RestArgs]}) ->
   if Arity =/= length(Args) ->
         ?err('XPTY0004');
      true ->
         ok
   end,
   FState = handle_node(State, Ref),
   Fx = get_statement(FState),
   #xqFunction{params = Params0, type = Type, body = B} = Fx,
   Params = if B == {xqerl_fn,concat,2} ->
                  lists:duplicate(length(Args), hd(Params0));
               true ->
                  Params0
            end,
   StateC = set_in_constructor(State, false),
   SimpArgs = handle_list(StateC, Args),
   CheckArgs = check_fun_arg_types(State, SimpArgs, Params),
   NewArgs = lists:map(fun({S,_C}) ->
                           S
                       end, CheckArgs),
   PlaceHolders = placeholders_1(Params, Args),
   AnonArity = length(PlaceHolders),
   AnonParamTypes = lists:filtermap(fun({P,{'?',_}}) ->
                                          {true,P};
                                       (_) ->
                                          false
                                    end, lists:zip(Params, Args)),
   AnonFun = #xqFunction{params = PlaceHolders,
                         arity = AnonArity,
                         body = {postfix, Id, Fx, [{arguments,NewArgs}|RestArgs]},
                         type = Type},
   ST = #xqSeqType{type = #xqFunTest{kind = function,
                                     params = AnonParamTypes,
                                     type = Type}, occur = one} ,
   set_statement_and_type(State, AnonFun, ST);

handle_node(State, {partial_postfix, _, #xqFunction{params = Params, 
                                                 body = Body,
                                                 type = Type} = F,
                     [{arguments,Args}]}) ->
   StateC = set_in_constructor(State, false),
   SimpArgs = handle_list(StateC, Args),
   CheckArgs = check_fun_arg_types(State, SimpArgs, Params),
   NewArgs = lists:map(fun({S,_C}) ->
                           S
                       end, CheckArgs),
   PlaceHolders = placeholders_1(Params, Args),
   AnonArity = length(PlaceHolders),
   AnonParamTypes = lists:filtermap(fun({P,{'?',_}}) ->
                                          {true,P};
                                       (_) ->
                                          false
                                    end, lists:zip(Params, Args)),
   ParFld = fun(#xqVar{id = Id,name = Name,type = NewType}, {TState,Pos}) ->
                  ErlVarName = param_variable_name(Id),
                  NewVar  = {Name,NewType,[],ErlVarName},
                  {add_inscope_variable(TState, NewVar),Pos + 1}
            end,
   {State1,_} = lists:foldl(ParFld, {State,1}, Params),
   BodyS = handle_node(State1, Body),
   BodyF = get_statement(BodyS),
   AnonFun = #xqFunction{params = {PlaceHolders,Params},
                         arity = AnonArity,
                         body = F#xqFunction{params = NewArgs,
                                             body = BodyF},
                         type = Type},
   ST = #xqSeqType{type = #xqFunTest{kind = function,
                                     params = AnonParamTypes,
                                     type = Type}, occur = one} ,
   set_statement_and_type(State, {'anon-call',AnonFun}, ST);

handle_node(State, {postfix, Id, Sequence, Filters }) when length(Filters) > 1 ->
   L = lists:foldl(fun(Fltr,Acc) ->
                         {postfix, Id, Acc, [Fltr]}
                   end, Sequence, Filters),
   ?dbg("L",L),
   handle_node(State, L);

handle_node(State, {postfix, Id, Sequence, Filters }) -> 
   S1 = handle_node(State, Sequence),
   St = get_statement(S1),
   Sc = get_static_count(S1),
   %?dbg("get_static_count(S1)",{St,Sc}),
   _ = [?err('XPTY0004') || {arguments,_} <- Filters, Sc > 1, Sc =/= undefined],
   F1 = handle_predicates(S1, Filters),
   Ft = get_statement(F1),
   Ty = get_statement_type(F1),
   %?dbg("Ft",Ft),
   %?dbg("Ty",Ty),
   case Ty of
      #xqSeqType{type = node} ->
         set_statement_and_type(State, {path_expr, Id, [{postfix, Id, St, Ft}]}, Ty);
      _ ->
         set_statement_and_type(State, {postfix, Id, St, Ft}, Ty)
   end;

%% 3.2.1 Filter Expressions
%% 3.2.2 Dynamic Function Calls
%% 3.3 Path Expressions
%% 3.3.1 Relative Path Expressions
%% 3.3.1.1 Path operator (/)
%% 3.3.2 Steps
%% the type of a step path is the last steps type as 0 or many
% Steps is a list of steps to take in order
handle_node(State, {path_expr, Id, Steps}) ->
   StateC = set_in_constructor(State, false),
   Fold = fun(Step, LastType) ->
               State2 = set_statement_type(StateC, LastType),
               State1 = handle_node(State2, Step),
               Val = get_statement(State1),
               Typ = case get_statement_type(State1) of
                        undefined ->
                           #xqSeqType{type = node, occur = zero_or_many};
                        Other ->
                           Other#xqSeqType{occur = zero_or_many}
                     end,
               %?dbg("{Val, Typ}",{Val, Typ}),
               {Val, Typ}
          end,
   {Statements, Type} = lists:mapfoldl(Fold, get_statement_type(State), Steps),
   set_statement_and_type(State, {path_expr, Id, Statements}, Type);
handle_node(State, {'any-root', Step}) ->
   State1 = handle_node(State, Step),
   Val = get_statement(State1),
   Typ = get_statement_type(State1),
   set_statement_and_type(State, {'any-root', Val}, Typ);
handle_node(State, {root, Step}) ->
   State1 = handle_node(State, Step),
   Val = get_statement(State1),
   Typ = get_statement_type(State1),
   set_statement_and_type(State, {'root', Val}, Typ);

handle_node(State, root) ->
   set_statement_and_type(State, {'root'}, 
                          #xqSeqType{type = 'document-node', 
                                     occur = zero_or_one});
handle_node(State, 'any-root') ->
   set_statement_and_type(State, {'any-root'}, 
                          #xqSeqType{type = 'node', occur = zero_or_one});

%% 3.3.2.1 Axes
handle_node(State, #xqKindTest{kind = 'document-node', 
                               test = #xqKindTest{} = Element} = Node) ->
   S1 = handle_node(State, Element),
   St = get_statement(S1),
   set_statement(State, Node#xqKindTest{test = St});

handle_node(State, #xqKindTest{kind = Kind, name = Name, type = Type} = Node) ->
   QName = resolve_qname(Name, State),
   if Kind == 'schema-element';
      Kind == 'schema-attribute' -> % not supported, so all names are unknown
         ?err('XPST0008');
      true ->
         ok
   end,
   Type1 = if Type == undefined ->
                 undefined;
              true ->
                 (try get_statement(handle_node(State,Type)) 
                  catch _:_ -> ?err('XPST0008') end)
           end,
   set_statement(State, Node#xqKindTest{name = QName, type = Type1});

handle_node(State, #xqNameTest{name = Name} = Node) ->
   QName = resolve_qname(Name, State),
   set_statement(State, Node#xqNameTest{name = QName});

handle_node(State, #xqFunTest{params = Params, type = Type} = Node) ->
   Params1 = if Params == any ->
                   any;
                true ->
                   l(get_statement(handle_node(State,Params)))
             end,
   Type1 = if Type == any ->
                 any;
              true ->
                 get_statement(handle_node(State,Type))
           end,
   set_statement(State, Node#xqFunTest{params = Params1, type = Type1});

%% 3.3.2.2 Node Tests
handle_node(State, #xqAxisStep{direction = Direction, 
                               axis = Axis, 
                               node_test = #xqKindTest{kind = Kind, 
                                                       name = KName,
                                                       test = KTest, 
                                                       type = KType} = Kt, 
                               predicates = Preds} = Node) ->
   KName1 = if Kind == 'processing-instruction' ->
                  resolve_pi_name(State, KName);
               Kind == 'element' ->
                  resolve_element_name(State, KName);
               Kind == 'attribute' ->
                  resolve_attribute_name(State, KName);
               true ->
                  resolve_qname(KName, State)
            end,
   if Kind == 'schema-element';
      Kind == 'schema-attribute' -> % not supported, so all names are unknown
         ?err('XPST0008');
      true ->
         ok
   end,
   KTest1 = case KTest of
               #xqKindTest{} = KTt ->
                  get_statement(handle_node(State, KTt));
               T ->
                  T
            end,
   KType1 = case KType of
               #xqSeqType{} = KTypeST ->
                  try 
                     KTypeST1 = get_statement(handle_node(State, KTypeST)),
                     case 
                        catch xqerl_btypes:get_type(KTypeST1#xqSeqType.type) 
                     of
                        {'EXIT',_} -> ?err('XPST0008');
                        _ ->
                           _ = check_type_match(
                                 KTypeST1, 
                                 #xqSeqType{type = 'xs:anyAtomicType', 
                                            occur = zero_or_many}),
                           KTypeST1
                     end
                  catch 
                     ?ERROR_MATCH("XPST0051") -> ?err('XPST0008');
                     _:#xqError{} = E -> throw(E);
                     _:_ -> ?err('XPST0008')
                  end;
               T1 ->
                  T1
            end,
   OType = #xqSeqType{type = Kind, occur = zero_or_one},
   State1 = if Direction == forward andalso Axis == attribute ->
                  set_statement_and_type(State, Node, 
                                         #xqSeqType{type = attribute, 
                                                    occur = zero_or_one});
               Direction == forward ->
                  set_statement_and_type(State, Node, 
                                         #xqSeqType{type = element, 
                                                    occur = zero_or_one});
               true ->
                  default_return(State, Node)
            end,
   NewPreds = get_statement(handle_predicates(State1, Preds)),
   set_statement_and_type(State1, 
                          Node#xqAxisStep{predicates = NewPreds, 
                                          node_test = 
                                             Kt#xqKindTest{name = KName1, 
                                                           test = KTest1, 
                                                           type = KType1}},
                          OType);

handle_node(State, #xqAxisStep{direction = Direction, 
                               axis = Axis, 
                               node_test = #xqNameTest{name = QName} = Nt, 
                               predicates = Preds} = Node) -> 
   Q1 = if Axis == attribute ->
              resolve_attribute_name(State, QName);
           true ->
              resolve_element_name(State, QName)
        end,
   Type  = if Direction == forward andalso Axis == attribute ->
                  #xqSeqType{type = attribute, occur = zero_or_one};
               Direction == forward ->
                  #xqSeqType{type = element, occur = zero_or_one};
               true ->
                  #xqSeqType{type = node, occur = zero_or_one}
            end,
   State1 = set_statement_type(State, Type),
   NewPreds = get_statement(handle_predicates(State1, Preds)),
   set_statement_and_type(State, 
                          Node#xqAxisStep{predicates = NewPreds,
                                          node_test = Nt#xqNameTest{name = Q1}},
                          Type);
%% 3.3.3 Predicates within Steps
%% 3.3.4 Unabbreviated Syntax
%% 3.3.5 Abbreviated Syntax
%% 3.4 Sequence Expressions
handle_node(State, 'empty-expr') ->
   S1 = set_statement(State, []),
   S2 = set_static_count(S1, 0),
   set_statement_type(S2, #xqSeqType{type = 'empty-sequence', occur = zero});
handle_node(State, 'empty-sequence') ->
   S1 = set_statement(State, 'empty-sequence'),
   S2 = set_static_count(S1, 0),
   set_statement_type(S2, #xqSeqType{type = 'empty-sequence', occur = zero});
%% 3.4.1 Constructing Sequences
handle_node(State, {range, Expr1, Expr2}) -> 
   Type = #xqSeqType{type = 'xs:integer', occur = zero_or_one},
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   T1 = get_statement_type(S1),
   T2 = get_statement_type(S2),
   NC1 = check_type_match(T1, Type),
   NC2 = check_type_match(T2, Type),
   Stm1 = get_statement(S1),
   Stm2 = get_statement(S2),
   %?dbg("{NC1,NC2}",{NC1,NC2}),
   St1 = if NC1 ->
               Stm1;
            NC1 == cast ->
               {cast_as, Stm1, Type};
            NC1 == atomize ->
               {promote_to, {atomize, Stm1}, Type};
            true -> 
               % special case
               case Stm1 of
                  #xqAtomicValue{value = neg_zero} ->
                     #xqAtomicValue{type = 'xs:integer',value = 0};
                  _ ->
                     %?dbg("F",{T1, Type}),
                     ?err('XPTY0004')
               end
         end,
   St2 = if NC2 ->
               Stm2;
            NC2 == cast ->
               {cast_as, Stm2, Type};
            NC2 == atomize ->
               {promote_to, {atomize, Stm2}, Type};
            true ->
               % special case
               case Stm2 of
                  #xqAtomicValue{value = neg_zero} ->
                     #xqAtomicValue{type = 'xs:integer',value = 0};
                  _ ->
                     %?dbg("F",{T2, Type}),
                     ?err('XPTY0004')
               end
         end,
   Izm = #xqSeqType{type = 'xs:integer', occur = zero_or_many},
   Iom = #xqSeqType{type = 'xs:integer', occur = one_or_many},
   S3 = set_statement(State, {range, St1, St2}),
   Atomics = both_atomics(St1, St2),
   if Atomics ->
         #xqAtomicValue{value = Diff} = xqerl_operators:subtract(St2, St1),
         if Diff < 0 ->
               set_statement_and_type(
                 State, 'empty-sequence', 
                 #xqSeqType{type = 'empty-sequence', occur = zero});
            true ->
               set_static_count(
                  set_statement_type(S3, Iom), Diff + 1)
         end;
      true ->
         set_statement_and_type(S3,{range, St1, St2}, Izm)
   end;
         
%% 3.4.2 Combining Node Sequences
handle_node(State, {Op, Expr1, Expr2}) when Op == union;
                                            Op == intersect;
                                            Op == except -> 
   State1 = handle_node(State, Expr1),
   State2 = handle_node(State, Expr2),
   Val1 = get_statement(State1),
   Val2 = get_statement(State2),
   Typ = #xqSeqType{type = 'node', occur = zero_or_many},
   set_statement_and_type(State, {Op, Val1, Val2}, Typ);

%% 3.5 Arithmetic Expressions
handle_node(State, {'add', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   T1 = get_statement_type(S1),
   T2 = get_statement_type(S2),
   %?dbg("T1",T1),
   %?dbg("T2",T2),
   T3 = static_operator_type('add',T1,T2),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:add(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         T1 = get_statement_type(S1),
         T2 = get_statement_type(S2),
         T3 = static_operator_type('add',T1,T2),
         set_statement_and_type(State, {'add', St1, St2}, 
                                #xqSeqType{type = T3, occur = zero_or_one})
   end; 
handle_node(State, {'subtract', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   T1 = get_statement_type(S1),
   T2 = get_statement_type(S2),
   T3 = static_operator_type('subtract',T1,T2),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:subtract(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         set_statement_and_type(State, {'subtract', St1, St2}, 
                                #xqSeqType{type = T3, occur = zero_or_one})
   end; 
handle_node(State, {'multiply', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   T1 = get_statement_type(S1),
   T2 = get_statement_type(S2),
   T3 = static_operator_type('multiply',T1,T2),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:multiply(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         set_statement_and_type(State, {'multiply', St1, St2}, 
                                #xqSeqType{type = T3, occur = zero_or_one})
   end; 
handle_node(State, {'divide', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   T1 = get_statement_type(S1),
   T2 = get_statement_type(S2),
   T3 = static_operator_type('divide',T1,T2),
   if Atomic andalso element(3, St2) =/= 0 ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:divide(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         set_statement_and_type(State, {'divide', St1, St2}, 
                                #xqSeqType{type = T3, occur = zero_or_one})
   end; 
handle_node(State, {'integer-divide', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   T1 = get_statement_type(S1),
   T2 = get_statement_type(S2),
   T3 = static_operator_type('idivide',T1,T2),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:idivide(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         set_statement_and_type(State, {'integer-divide', St1, St2}, 
                                #xqSeqType{type = T3, occur = zero_or_one})
   end; 
handle_node(State, {'modulo', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   T1 = get_statement_type(S1),
   T2 = get_statement_type(S2),
   T3 = static_operator_type('modulo',T1,T2),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:modulo(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         set_statement_and_type(State, {'modulo', St1, St2}, 
                                #xqSeqType{type = T3, occur = zero_or_one})
   end; 
handle_node(State, {'unary', '+', Expr1} = _Node) ->
   S1 = handle_node(State, Expr1),
   St1 = get_statement(S1),
   Sty = get_statement_type(S1),
   CheckNum = check_type_match(Sty, #xqSeqType{type = 'xs:numeric', 
                                               occur = zero_or_one}),
   if CheckNum == false ->
         %?dbg("F",{Sty}),
         ?err('XPTY0004');
      true ->
         ok
   end,
   Atomic = all_atomics(St1),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:unary_plus(St1),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         set_statement_and_type(State, {'unary', '+', St1}, 
                                #xqSeqType{type = Sty#xqSeqType.type, 
                                           occur = zero_or_one})
   end; 
handle_node(State, {'unary', '-', Expr1} = _Node) -> 
   S1 = handle_node(State, Expr1),
   St1 = get_statement(S1),
   Sty = get_statement_type(S1),
   CheckNum = check_type_match(Sty, #xqSeqType{type = 'xs:numeric', 
                                               occur = zero_or_one}),
   if CheckNum == false ->
         %?dbg("F",{Sty}),
         ?err('XPTY0004');
      true ->
         ok
   end,
   Atomic = all_atomics(St1),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:unary_minus(St1),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         set_statement_and_type(State, {'unary', '-', St1}, 
                                #xqSeqType{type = inverse_numeric_type(Sty#xqSeqType.type), 
                                           occur = zero_or_one})
   end; 
%% 3.6 String Concatenation Expressions
handle_node(State, {'concat', Expr1, Expr2}) -> 
   S3 = {'function-call', #qname{namespace = ?FN,
                                 local_name = "concat"}, 2, [Expr1,Expr2]},
   handle_node(State, S3);
%% 3.7 Comparison Expressions
%% 3.7.1 Value Comparisons
handle_node(State, {'eq', Expr1, Expr2}) -> 
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:equal(S1, S2),
         set_statement_and_type(State, Eq, ?boolzone);
      true ->
         set_statement_and_type(State, {'eq', S1, S2}, ?boolzone)
   end; 
handle_node(State, {'ne', Expr1, Expr2}) ->
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:not_equal(S1, S2),
         set_statement_and_type(State, Eq, ?boolzone);
      true ->
         set_statement_and_type(State, {'ne', S1, S2}, ?boolzone)
   end; 
handle_node(State, {'ge', Expr1, Expr2}) ->
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:greater_than_eq(S1, S2),
         set_statement_and_type(State, Eq, ?boolzone);
      true ->
         set_statement_and_type(State, {'ge', S1, S2}, ?boolzone)
   end; 
handle_node(State, {'gt', Expr1, Expr2}) ->
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:greater_than(S1, S2),
         set_statement_and_type(State, Eq, ?boolzone);
      true ->
         set_statement_and_type(State, {'gt', S1, S2}, ?boolzone)
   end; 
handle_node(State, {'le', Expr1, Expr2}) ->
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:less_than_eq(S1, S2),
         set_statement_and_type(State, Eq, ?boolzone);
      true ->
         set_statement_and_type(State, {'le', S1, S2}, ?boolzone)
   end; 
handle_node(State, {'lt', Expr1, Expr2}) ->
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:less_than(S1, S2),
         set_statement_and_type(State, Eq, ?boolzone);
      true ->
         set_statement_and_type(State, {'lt', S1, S2}, ?boolzone)
   end; 
%% 3.7.2 General Comparisons
handle_node(State, {'=', {sequence,[{range,_,_} = Range]}, Expr}) ->
   handle_node(State, {'=', Range, Expr});
handle_node(State, {'=', {range,Min1,Max1} = Range, Expr}) ->
   {range,Min,Max} = get_statement(handle_node(State, Range)),
   EState = handle_node(State, Expr),
   Stmt = get_statement(EState),
   Type = get_statement_type(EState),
   if Type#xqSeqType.occur == one, ?integer(Type#xqSeqType.type) ;
      Type#xqSeqType.occur == zero_or_one, ?integer(Type#xqSeqType.type) ->
         NewStatement =  {'and',
                          {'>=',Expr,Min1},
                          {'<=',Expr,Max1}                         
                         },
         handle_node(State, NewStatement);
      Type#xqSeqType.type == 'xs:untypedAtomic' ->
         set_statement_and_type(State, 
                                {'=', {range,Min,Max},
                                 {cast_as,Stmt,#xqSeqType{type = 'xs:double'}}},
                                ?boolone);
      true ->
         set_statement_and_type(State, {'=', {range,Min,Max}, Stmt}, ?boolone)
   end;
handle_node(State, {Op, Expr1, Expr2}) when Op == '=';
                                            Op == '!=';
                                            Op == '<';
                                            Op == '<=';
                                            Op == '>';
                                            Op == '>=' -> 
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:general_compare(Op, S1, S2),
         set_statement_and_type(State, Eq, ?boolone);
      true ->
         set_statement_and_type(State, {Op, S1, S2}, ?boolone)
   end; 
%% 3.7.3 Node Comparisons
handle_node(State, {Comp, Expr1, Expr2}) when Comp =:= 'is';
                                              Comp =:= '>>';
                                              Comp =:= '<<' ->
   ArgType = #xqSeqType{type = node, occur = zero_or_one},
   S1 = handle_node(State, Expr1),
   St1 = get_statement(S1),
   Sty1 = get_statement_type(S1),
   S2 = handle_node(State, Expr2),
   St2 = get_statement(S2),
   Sty2 = get_statement_type(S2),
   A = check_type_match(Sty1, ArgType),
   B = check_type_match(Sty2, ArgType),
   if A == true andalso B == true ->
         set_statement_and_type(State, {Comp, St1, St2}, ?boolzone);
      true ->
         ?dbg("A",{Sty1, ArgType,A}),
         ?dbg("B",{Sty2, ArgType,B}),
         ?err('XPTY0004')
   end;

%% 3.8 Logical Expressions
handle_node(State, {Op, Expr1, Expr2}) when Op == 'and';
                                            Op == 'or' -> 
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   set_statement_and_type(State, {Op, S1, S2}, ?boolone);
%% 3.9 Node Constructors
%% 3.9.1 Direct Element Constructors
handle_node(State, {direct_cons, Cons}) ->
   IC = get_in_constructor(State),
   State1 = set_in_constructor(State, true),
   S1 = handle_direct_constructor(State1, Cons),
   St = get_statement(S1),
   Typ = case St of
            #xqElementNode{} ->
               element;
            #xqCommentNode{} ->
               comment;
            #xqProcessingInstructionNode{} ->
               'processing-instruction';
            _ ->
               node
         end,
   NewSt = if IC ->
                 St;
              true ->
                 {direct_cons,St}
           end,
   set_statement_and_type(State, NewSt, #xqSeqType{type = Typ, occur = one});
%% 3.9.1.1 Attributes
%% 3.9.1.2 Namespace Declaration Attributes
%% 3.9.1.3 Content
%% 3.9.1.4 Boundary Whitespace
%% 3.9.2 Other Direct Constructors
%% 3.9.3 Computed Constructors
handle_node(State, {comp_cons, Cons} = _Node) ->
   IC = get_in_constructor(State),
   State1 = set_in_constructor(State, true),
   S1 = handle_comp_constructor(State1, Cons),
   St = get_statement(S1),
   Typ = case St of
            #xqDocumentNode{} ->
               'document-node';
            #xqElementNode{} ->
               element;
            #xqAttributeNode{} ->
               attribute;
            #xqNamespaceNode{} ->
               namespace;
            #xqCommentNode{} ->
               comment;
            #xqTextNode{} ->
               text;
            #xqProcessingInstructionNode{} ->
               'processing-instruction';
            'empty-sequence' ->
               'empty-sequence';
            _ ->
               node
         end,
   NewSt = if IC andalso Typ =/= 'document-node' ->
                 St;
              true ->
                 {comp_cons,St}
           end,
   if Typ == 'empty-sequence' ->
         set_statement_and_type(State, 
                                'empty-sequence', 
                                #xqSeqType{type = Typ, occur = zero});
      true ->
         set_statement_and_type(State, 
                                NewSt, 
                                #xqSeqType{type = Typ, occur = one})
   end;
%% 3.10 String Constructors
handle_node(State, {'string-constructor', Expr}) -> 
   S1 = get_statement(handle_node(State, Expr)),
   set_statement_and_type(State, 
                          {'string-constructor', S1}, 
                          #xqSeqType{type = 'xs:string', occur = zero_or_one});
%% 3.11 Maps and Arrays
%% 3.11.1 Maps
%% 3.11.1.1 Map Constructors
handle_node(State, {'map', Vals}) -> 
   {KVSts,KVTys} = lists:mapfoldl(fun(KV, Types) ->
                                   KVS1 = handle_node(State, KV),
                                   KVSt = get_statement(KVS1),
                                   KVSty = get_statement_type(KVS1),
                                   {KVSt,[KVSty|Types]}
                             end, [], Vals),
   Sty = case get_list_type(KVTys) of
            #xqSeqType{type = item} ->
               any;
            O ->
               O
         end,
   set_statement_and_type(State, {'map', KVSts}, 
                          #xqSeqType{type = #xqFunTest{kind = map, 
                                                       type = Sty}, 
                                     occur = one});
handle_node(State, {'map-key-val', Key, Val}) -> 
   KeyS1 = handle_node(State, Key),
   KeySt = get_statement(KeyS1),
   ValS1 = handle_node(State, Val),
   ValSt = get_statement(ValS1),
   ValTy = get_statement_type(ValS1),
   set_statement_and_type(State, {'map-key-val', KeySt, ValSt}, ValTy);

%% 3.11.1.2 Map Lookup using Function Call Syntax
%% 3.11.2 Arrays
%% 3.11.2.1 Array Constructors
handle_node(State, {'array', Expr}) -> 
   S1 = handle_node(State, Expr),
   St = get_statement(S1),
   Ty = get_statement_type(S1),
   set_statement_and_type(State, 
                          {'array', l(St)}, 
                          #xqSeqType{type = #xqFunTest{kind = array, 
                                                       type = Ty}, 
                                     occur = one});
%% 3.11.2.2 Array Lookup using Function Call Syntax
%% 3.11.3 The Lookup Operator ("?") for Maps and Arrays
%% 3.11.3.1 Unary Lookup
%% 3.11.3.2 Postfix Lookup
%% 3.12 FLWOR Expressions
handle_node(State, #xqFlwor{} = FL) ->
   case xqerl_flwor:optimize(FL, State#state.digraph) of
      #xqFlwor{id = Id, loop = Loop, return = Return} = _FLW ->
         %?dbg("FLW",FLW),
         % fold each section into the context
         FlworFold = 
           fun(X, IState) ->
                 OldStatement = case get_statement(IState) of
                                   undefined ->
                                      [];
                                   List when is_list(List) ->
                                      List;
                                   Tuple ->
                                      [Tuple]
                                end,
                 NewState = handle_node(IState, X),
                 St2 = get_statement(NewState),
                 set_statement(NewState, OldStatement ++ [St2])
           end,
         CtxItemType = State#state.context_item_type,
         StateEmpty0 = set_statement_and_type(State, undefined, undefined),
         StateEmpty = StateEmpty0#state{context_item_type = CtxItemType},
         LoopState0 = lists:foldl(FlworFold, StateEmpty, Loop),
         LoopState = LoopState0#state{context_item_type = CtxItemType},
         %?dbg("Return",Return),
         ReturnState = handle_node(LoopState, Return),
         ReturnType = get_statement_type(ReturnState),
         ReturnType1 = ReturnType,
         %ReturnType1 = maybe_zero_type(ReturnType),
         ReturnType2 = case [L || {for,_} = L <- Loop] ++ 
                              [L || #xqWindow{} = L <- Loop] of
                          [] ->
                             ReturnType1;
                          _ ->
                             ReturnType1#xqSeqType{occur = zero_or_many}                       
                       end,
         set_statement_and_type(State, 
                                #xqFlwor{id = Id, 
                                         loop = get_statement(LoopState), 
                                         return = get_statement(ReturnState)}, 
                                ReturnType2);
      Other ->
         handle_node(State, Other)
   end;

%% 3.12.1 Variable Bindings
%% 3.12.2 For Clause
handle_node(State,{'for',#xqVar{id = Id,
                                name = Name, 
                                type = Type, 
                                empty = Empty,
                                expr = Expr, 
                                position = undefined}}) ->
%?dbg("Expr",Expr),
   StateC = set_in_constructor(State, false),
   ErlVarName = local_variable_name(Id),
   ForState = handle_node(StateC, Expr),
   % for loop type is one out of a sequence
   ForType = get_statement_type(ForState),
   OutType = if Type == undefined ->
                   ForType;
                true ->
                   Type
             end,
   %?dbg("ForType",ForType),
   %?dbg("Type",Type),
   MakeLet = ForType#xqSeqType.occur == one andalso Empty == false,
   ForStmt = get_statement(ForState),
   SForType = if MakeLet ->
                    ?dbg("changing for to let",Name),
                    ForType;
                 true ->
                    ForType#xqSeqType{occur = zero_or_one}
              end,
   OkType = check_type_match(SForType, OutType),
   if OkType == false;
      OkType == cast ->
         ?err('XPTY0004');
      true ->
         ok
   end,
   ForLet = if MakeLet -> 'let'; true -> 'for' end,
   NewVar  = {Name,SForType,[],ErlVarName},
   State1 = add_inscope_variable(State, NewVar),
   NewStatement = {ForLet,#xqVar{id = Id,
                                name = Name, 
                                type = OutType, 
                                empty = Empty,
                                expr = ForStmt, 
                                position = undefined}},
   set_statement_and_type(State1, NewStatement,SForType);
handle_node(State,{'for',#xqVar{id = Id,
                                name = Name, 
                                type = Type, 
                                empty = Empty,
                                expr = Expr, 
                                position = #xqPosVar{id = Pid, 
                                                     name = PName}}}) ->
   _ = if PName == Name ->
             ?err('XQST0089');
          true ->
             ok
       end,
   StateC = set_in_constructor(State, false),
   ErlVarName = local_variable_name(Id),
   ErlPosName = local_variable_name(Pid),
   ForState = handle_node(StateC, Expr),
   % for loop type is one out of a sequence   
   ForType = get_statement_type(ForState), 
   OutType = if Type == undefined ->
                   ForType;
                true ->
                   Type
             end,
   ?dbg("ForType",ForType),
   ?dbg("Type",Type),
   ForStmt = get_statement(ForState),
   SForType = ForType#xqSeqType{occur = one},
   %SForType = ForType#xqSeqType{occur = zero_or_one},
   OkType = check_type_match(SForType, OutType),
   if OkType == false;
      OkType == cast  ->
         ?dbg("SForType, OutType",{SForType, OutType}),
         ?err('XPTY0004');
      true ->
         ok
   end,
   NewVar  = {Name,SForType,[],ErlVarName},
   NewPos  = {PName,?intone,[],ErlPosName},
   
   State1 = add_inscope_variable(State, NewVar),
   State2 = add_inscope_variable(State1, NewPos),

   NewStatement = {'for',#xqVar{id = Id,
                                name = Name, 
                                type = OutType, 
                                empty = Empty,
                                expr = ForStmt, 
                                position = #xqPosVar{id = Pid, name = PName}}},
   set_statement_and_type(State2, NewStatement, SForType);

%% 3.12.3 Let Clause
handle_node(State, {'let',#xqVar{id = Id, 
                                 name = Name, 
                                 type = Type, 
                                 expr = Expr}}) ->
   StateC = set_in_constructor(State, false),
   ErlVarName = local_variable_name(Id),
   LetState = handle_node(StateC, Expr),
   LetType = get_statement_type(LetState),
   OutType = if Type == undefined ->
                   LetType;
                true ->
                   Type
             end,
   %?dbg("LetType",LetType),
   %?dbg("Type",Type),
   LetStmt = get_statement(LetState),
   OkType = check_type_match(LetType, Type),
   if OkType == false ->
         ?err('XPTY0004');
      OkType == cast , element(2, LetType) == item ->
         ok;
      OkType == cast , element(2, Type) =/= item ->
         ?err('XPTY0004');
      true ->
         ok
   end,
   
   LetStmt1 = if OkType =/= true;
                 Type#xqSeqType.occur =/= LetType#xqSeqType.occur ->
                    {ensure, LetStmt, OutType};
                 true ->
                    LetStmt
              end,
   
   NewVar  = {Name,LetType,[],ErlVarName},
   
   State1 = add_inscope_variable(State, NewVar),
   
   NewStatement = {'let',#xqVar{id = Id, 
                                name = Name, 
                                type = OutType, 
                                expr = LetStmt1}},
   set_statement_and_type(State1, NewStatement, LetType);

%% 3.12.4 Window Clause
handle_node(State, #xqWindow{type = WindowType,
                             win_variable = #xqVar{id = Id,
                                                   name = WName,
                                                   type = WType0,
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
                             end_expr   = EndExpr}) -> 
   % window statement variable
   StateC = set_in_constructor(State, false),
   ErlVarName = local_variable_name(Id),
   WinState = handle_node(StateC, Expr),
   WinType = get_statement_type(WinState), 
   WType = if WType0 == undefined ->
                 WinType;
              true ->
                 WType0
           end,
   %?dbg("WType",{WType,WType0}),
   WinStmt = get_statement(WinState),
   SWinType = WinType#xqSeqType{occur = zero_or_many},
   OkType = check_type_match(SWinType, WType),
   if OkType == false ->
         ?err('XPTY0004');
      OkType == cast ->
         ?dbg("promote",OkType),
         ok;
      true ->
         ?dbg("OkType",OkType),
         ok
   end,
   PosType = ?intone,
   WinVar  = {WName,SWinType,[],ErlVarName},
   % variables for start expression
   SState = case S of
               #xqVar{id = SId,name = SName} ->
                  SErlName = local_variable_name(SId),
                  SVar = {SName,SWinType,[],SErlName},
                  add_inscope_variable(StateC,  SVar);
               undefined ->
                  StateC
            end,
   SPosState = case SPos of
                  #xqPosVar{id = SPosId,name = SPosName} ->
                     SPosErlName = local_variable_name(SPosId),
                     SPosVar = {SPosName,PosType,[],SPosErlName},
                     add_inscope_variable(SState,  SPosVar);
                  undefined ->
                     SState
               end,
   SPrevState = case SPrev of
                  #xqVar{id = SPrevId,name = SPrevName} ->
                     SPrevErlName = local_variable_name(SPrevId),
                     SPrevVar = {SPrevName,SWinType,[],SPrevErlName},
                     add_inscope_variable(SPosState,  SPrevVar);
                  undefined ->
                     SPosState
               end,
   SNextState = case SNext of
                  #xqVar{id = SNextId,name = SNextName} ->
                     SNextErlName = local_variable_name(SNextId),
                     SNextVar = {SNextName,SWinType,[],SNextErlName},
                     add_inscope_variable(SPrevState,  SNextVar);
                  undefined ->
                     SPrevState
               end,
   % start variables all set, so do expression
   StartState = handle_node(SNextState, StartExpr),
   StartStatement = get_statement(StartState),
   State2 = set_statement(StartState, []),
   % now the ending variables and statement
   EState = case E of
               #xqVar{id = EId,name = EName} ->
                  EErlName = local_variable_name(EId),
                  EVar = {EName,SWinType,[],EErlName},
                  add_inscope_variable(State2,  EVar);
               undefined ->
                  State2
            end,
   EPosState =  case EPos of
                  #xqPosVar{id = EPosId,name = EPosName} ->
                     EPosErlName = local_variable_name(EPosId),
                     EPosVar = {EPosName,PosType,[],EPosErlName},
                     add_inscope_variable(EState,  EPosVar);
                  undefined ->
                     EState
               end,
   EPrevState = case EPrev of
                  #xqVar{id = EPrevId,name = EPrevName} ->
                     EPrevErlName = local_variable_name(EPrevId),
                     EPrevVar = {EPrevName,SWinType,[],EPrevErlName},
                     add_inscope_variable(EPosState,  EPrevVar);
                  undefined ->
                     EPosState
               end,
   ENextState = case ENext of
                  #xqVar{id = ENextId,name = ENextName} ->
                     ENextErlName = local_variable_name(ENextId),
                     ENextVar = {ENextName,SWinType,[],ENextErlName},
                     add_inscope_variable(EPrevState,  ENextVar);
                  undefined ->
                     EPrevState
               end,
   EndState = handle_node(ENextState, EndExpr),
   EndStatement = case get_statement(EndState) of
                     [] ->
                        undefined;
                     ES ->
                        ES
                  end,
   % window variable is only in scope at the end
   State1 = add_inscope_variable(EndState,  WinVar),

   Output = #xqWindow{ type = WindowType,
                       win_variable = #xqVar{id = Id,
                                             name = WName,
                                             type = WType,
                                             expr = WinStmt}, 
                       s     = S,
                       spos  = SPos,
                       sprev = SPrev,
                       snext = SNext,
                       e     = E,
                       epos  = EPos,
                       eprev = EPrev,
                       enext = ENext,
                       only  = Only,
                       start_expr = StartStatement,
                       end_expr   = EndStatement},
   set_statement(State1, Output);
%% 3.12.4.1 Tumbling Windows
%% 3.12.4.2 Sliding Windows
%% 3.12.4.3 Effects of Window Clauses on the Tuple Stream
%% 3.12.5 Where Clause
handle_node(State, {where, Id, Expr}) -> 
   ?dbg("where",{Id,Expr}),
   S1 = handle_node(State, Expr),
   St = get_statement(S1),
   set_statement_and_type(State, {where, Id, St}, ?boolone);
  
%% 3.12.6 Count Clause
handle_node(State, {count,#xqVar{id = Id, 
                                 name = Name, 
                                 type = Type}}) ->
   ErlVarName = local_variable_name(Id),
   CntType = ?intone,
   _ = check_type_match(CntType, Type),
   NewVar  = {Name,CntType,[],ErlVarName},
   State1 = add_inscope_variable(State, NewVar),
   NewStatement = {count,#xqVar{id = Id, 
                                name = Name, 
                                type = CntType, 
                                expr = []}},
   set_statement(State1, NewStatement);
%% 3.12.7 Group By Clause
handle_node(State, {group_by, Id, GExprs}) ->
   
   State1 = increase_occur_inscope_vars(State),
   
   S1 = handle_node(State1, GExprs),
   St = get_statement(S1),
   set_statement(State1, {group_by, Id, St});
handle_node(State, #xqGroupBy{grp_variable = #xqVarRef{} = Var, 
                              collation = Coll} = Gb) -> 
   Collations = State#state.known_collations, 
   DefColl    = State#state.default_collation, 
   BaseUri    = State#state.base_uri,
   NewColl =  if Coll == default ->
                     DefColl;
                  true ->
                     xqerl_lib:resolve_against_base_uri(BaseUri, Coll)
               end,
   Ok = lists:member(NewColl, Collations),
   if Ok ->
         ok;
      true ->
         ?err('XQST0076')
   end,
   NewVar = get_statement(handle_node(State, Var)),
   set_statement(State, Gb#xqGroupBy{grp_variable = NewVar, 
                                     collation = NewColl});
%% 3.12.8 Order By Clause
handle_node(State, {order_by, Id, OExprs}) ->
   S1 = handle_node(State, OExprs),
   St = get_statement(S1),
   set_statement(State, {order_by, Id, St});
   
handle_node(State, {order, OExpr, {modifier,Dir,
                                   {empty,Empty},
                                   {collation,Collation}}}) -> 
   Collations = State#state.known_collations, 
   DefColl    = State#state.default_collation, 
   BaseUri    = State#state.base_uri,
   EmptOrd    = State#state.empty_order,
   % check/resolve the collation
   NewColl =  if Collation == default ->
                     DefColl;
                  true ->
                     xqerl_lib:resolve_against_base_uri(BaseUri, Collation)
               end,
   NewEmptO =  if Empty == default ->
                     EmptOrd;
                  true ->
                     Empty
               end,
   Ok = lists:member(NewColl, Collations),
   if Ok ->
         NewMod = {modifier,Dir,{empty,NewEmptO},{collation,NewColl}},
         SimOExpr = get_statement(handle_node(State, OExpr)),
         set_statement(State, {order, {atomize, SimOExpr}, NewMod});
      true ->
         ?err('XQST0076')
   end;
%% 3.12.9 Return Clause
%% 3.13 Ordered and Unordered Expressions
handle_node(State, {'ordered-expr', Expr}) -> 
   State1 = handle_node(State, Expr),
   Statement = get_statement(State1),
   Type = get_statement_type(State1),
   set_statement_and_type(State, Statement, Type);
handle_node(State, {'unordered-expr', Expr}) -> 
   State1 = handle_node(State, Expr),
   Statement = get_statement(State1),
   Type = get_statement_type(State1),
   set_statement_and_type(State, Statement, Type);
%% 3.14 Conditional Expressions
handle_node(State, {error,Error}) ->
   set_statement_and_type(State, {error,Error},
                          #xqSeqType{type = 'empty-sequence',occur = zero});
handle_node(State, {'if-then-else', If, {B1, Then0}, {B2, Else0}}) ->
   %% B1 B2 are branch ids
   Then = case erlang:get({'if-then-else',B1}) of
             undefined -> Then0;
             E -> {error,E}
          end,
   Else = case erlang:get({'if-then-else',B2}) of
             undefined -> Else0;
             E1 -> {error,E1}
          end,
   %?dbg("Then",Then),
   %?dbg("Else",Else),
   %?dbg("IfSt",State#state.context_item_type),
   IfS1 = handle_node(State, If),
   ThS1 = (catch handle_node(State, Then)),
   ElS1 = (catch handle_node(State, Else)),
   IfSt = get_statement(IfS1),
   %?dbg("IfSt",IfSt),
   ThSt = get_statement(ThS1),
%?dbg("ThSt",ThSt),
   ElSt = get_statement(ElS1),
%?dbg("ElSt",ElSt),
%?dbg("ElSt",get_statement_type(ElS1)),
   %IfTy = get_statement_type(IfS1), % is boolean
   #xqSeqType{occur = ThOc} = ThTy = get_statement_type(ThS1),
   #xqSeqType{occur = ElOc} = ElTy = get_statement_type(ElS1),
   ThCt = get_static_count(ThS1),
   ElCt = get_static_count(ElS1),
   %TODO here check for boolean to reduce the if statement to 1 branch
   %TODO static type feature here
%?dbg("{ThTy,ElTy}",{ThTy,ElTy}),
   BothType = if ThOc == zero;
                 ElOc == zero ->
                    maybe_zero_type(get_list_type([ThTy,ElTy]));
                 true ->
                    get_list_type([ThTy,ElTy])
              end,
%?dbg("BothType",BothType),
   BothCount = if ThCt == ElCt ->
                     ElCt;
                  true ->
                     undefined
               end,
   set_static_count(
     set_statement_and_type(State, {'if-then-else', IfSt, ThSt, ElSt}, 
                            BothType), BothCount);
%% 3.15 Switch Expression
handle_node(State, {'switch', RootExpr, [Cases, {'default', DefaultExpr}]}) -> 
   RState = handle_node(State, RootExpr),
   RSt = get_statement(RState),
   StateC = set_in_constructor(State, false),
   CStates = lists:map(fun({Matches,{return, Return}}) ->
                          ReturnState = handle_node(State, Return),
                          MatchesState = handle_node(StateC, Matches),
                          MaSt = get_statement(MatchesState),
                          RnSt = get_statement(ReturnState),
                          RnTy = get_statement_type(ReturnState),
                          set_statement_and_type(State, 
                                                 {l(MaSt),{return, RnSt}}, RnTy)
                    end, Cases),
   CSt = lists:map(fun(CState) ->
                         get_statement(CState)
                   end, CStates),
   CSty = get_list_type(lists:map(fun(CState) ->
                                        get_statement_type(CState)
                                  end, CStates)),
   DState = handle_node(State, DefaultExpr),
   DSt = get_statement(DState),
   DSty = get_statement_type(DState),
   StatementType = get_list_type([CSty,DSty]),
   set_statement_and_type(State, 
                          {'switch', RSt, [CSt, {'default', DSt}]}, 
                          StatementType);
%% 3.16 Quantified Expressions
handle_node(State, {Op, Vars, Test}) when Op == some;
                                          Op == every -> 
   State0 = set_statement(State, []),
   Fold = fun(Var, TempState) ->
                TempSt = get_statement(TempState),
                NewState = handle_internal_var_node(TempState, Var,false),
                NewSt = get_statement(NewState),
                %NewSty = get_statement_type(NewState),
                set_statement(NewState, TempSt ++ [NewSt])
          end,
   State1 = lists:foldl(Fold, State0, Vars),
   TestS1 = handle_node(State1, Test),
   VarsSt = get_statement(State1),
   TestSt = get_statement(TestS1),
   set_statement_and_type(State, {Op, l(VarsSt), TestSt}, ?boolone);

%% 3.17 Try/Catch Expressions
handle_node(State, {'try', Id, Expr, {'catch', CatchClauses}}) -> 
   CodeVar = list_to_atom("CodeVar" ++ integer_to_list(Id)),
   DescVar = list_to_atom("DescVar" ++ integer_to_list(Id)),
   ValuVar = list_to_atom("ValuVar" ++ integer_to_list(Id)),
   ModuVar = list_to_atom("ModuVar" ++ integer_to_list(Id)),
   LineVar = list_to_atom("LineVar" ++ integer_to_list(Id)),
   ColnVar = list_to_atom("ColnVar" ++ integer_to_list(Id)),

   TryState = (catch handle_node(State, Expr)),
   TrySt = get_statement(TryState),
   TryTy = get_statement_type(TryState),
   CatchFun = 
     fun({Errors,DoExpr}, InType) ->
           % add the magic error variables
           Stat1 = add_inscope_variable(
                     State, 
                     {?ERR_VAR("code"),
                      #xqSeqType{type = 'xs:QName', occur = one},[],CodeVar}),
           Stat2 = add_inscope_variable(
                     Stat1, 
                     {?ERR_VAR("description"),
                      #xqSeqType{type = 'xs:string', occur = zero_or_one},
                      [],DescVar}),
           Stat3 = add_inscope_variable(
                     Stat2, 
                     {?ERR_VAR("value"),
                      #xqSeqType{type = 'item', occur = zero_or_many},
                      [],ValuVar}),
           Stat4 = add_inscope_variable(
                     Stat3, 
                     {?ERR_VAR("module"),
                      #xqSeqType{type = 'xs:string', occur = zero_or_one},
                      [],ModuVar}),
           Stat5 = add_inscope_variable(
                     Stat4, 
                     {?ERR_VAR("line-number"),
                      #xqSeqType{type = 'xs:integer', occur = zero_or_one},
                      [],LineVar}),
           Stat6 = add_inscope_variable(
                     Stat5, 
                     {?ERR_VAR("column-number"),
                      #xqSeqType{type = 'xs:integer', occur = zero_or_one},
                      [],ColnVar}),
           CatchState = handle_node(Stat6, DoExpr),
           CatchSt = get_statement(CatchState),
           CatchTy = get_statement_type(CatchState),
           CombType = get_list_type([InType,CatchTy]),
           ResErrors = 
             lists:map(fun(#xqNameTest{name = EName}) ->
                             #xqNameTest{name = resolve_qname(EName, State)}
                       end, Errors),
           {{ResErrors, CatchSt}, CombType}
     end,   
   {Statements, Type} = lists:mapfoldl(CatchFun, TryTy, CatchClauses),
   set_statement_and_type(State, {'try', Id, TrySt, 
                                  {'catch', Statements}}, Type);
%% 3.18 Expressions on SequenceTypes
%% 3.18.1 Instance Of
handle_node(State, {instance_of, Expr1, Expr2}) ->
   OutType = ?boolone,
   S1 = handle_node(State, Expr1),
   %?dbg("Expr2",Expr2),
   St2 = #xqSeqType{type = TType} = get_statement(handle_node(State, Expr2)),
   %?dbg("TType",TType),
   case TType of
      #xqKindTest{} ->
         ok;
      #xqFunTest{} ->
         ok;
      'empty-sequence' ->
         ok;
      'xs:NMTOKENS' ->
         ?err('XPST0051');
      _ ->
         try xqerl_btypes:get_type(TType) of %just check if it exists
            _ -> ok
         catch _:_ -> ?err('XPST0051') end
   end,             
   St = get_statement(S1),
   set_statement_and_type(State, {instance_of, St, St2}, OutType);
%% 3.18.2 Typeswitch
handle_node(State, {'typeswitch', RootExpr, CasesDefault}) -> 
   S1 = handle_node(State, RootExpr),
   St1 = get_statement(S1),
   S2 = handle_node(S1, CasesDefault),
   St2 = get_statement(S2),
   Sty = get_statement_type(S2),
   set_statement_and_type(State, {'typeswitch', St1, St2}, Sty);

handle_node(State, {'def-novar', {'return', Expr}}) ->
   S1 = handle_node(State, Expr),
   St1 = get_statement(S1),
   Sty = get_statement_type(S1),
   set_statement_and_type(State, {'def-novar', {'return', St1}}, Sty);

handle_node(State, {'def-var', Var}) ->
   S1 = handle_internal_var_node(State, Var,true),
   St1 = get_statement(S1),
   Sty = get_statement_type(S1),
   set_statement_and_type(State, {'def-var', St1}, Sty);

handle_node(State, {'case-novar', Types,{'return', Expr} }) ->
   S1 = handle_node(State, Expr),
   St1 = get_statement(S1),
   Sty = get_statement_type(S1),
   set_statement_and_type(State, {'case-novar', Types,{'return', St1}}, Sty);

handle_node(State, {'case-var'  , Types, Var }) ->
   S1 = handle_internal_var_node(State, Var,true),
   St1 = get_statement(S1),
   Sty = get_statement_type(S1),
   set_statement_and_type(State, {'case-var', Types, St1},Sty);
%% 3.18.3 Cast
% wraps the expression in a call to constructor function at run-time
handle_node(State, {cast_as, 'empty-sequence', 
                    #xqSeqType{type = #qname{local_name = L}, 
                               occur = zero_or_one}}) 
   when L =/= "NOTATION" ->
   set_statement(State, 'empty-sequence');
handle_node(State, {cast_as, 'empty-sequence', 
                    #xqSeqType{type = T, occur = zero_or_one}}) 
   when is_atom(T), T =/= 'xs:NOTATION' ->
   set_statement(State, 'empty-sequence');
handle_node(State, {cast_as, #xqAtomicValue{} = Av, 
                    #xqSeqType{type = #qname{local_name = Ln} = Name}}) -> 
   if Ln == "NOTATION";
      Ln == "anyAtomicType";
      Ln == "anySimpleType" ->
         ?err('XPST0080');
      true ->
         ok
   end,
   St2 = get_statement(handle_node(State, Name)),
   try
      handle_node(State, {'function-call',St2, 1, [Av]})
   catch
      ?ERROR_MATCH("XPST0017") -> ?err('XQST0052');
      _:#xqError{} = E -> throw(E);
      _:_ -> ?err('XQST0052') % unknown type in cast
  end;
handle_node(State, {cast_as, Expr1, 
                    #xqSeqType{type = #qname{local_name = Ln}} = Expr2}) -> 
   if Ln == "NOTATION";
      Ln == "anyAtomicType";
      Ln == "anySimpleType" ->
         ?err('XPST0080');
      true ->
         ok
   end,
   St2 = get_statement(handle_node(State, Expr2)),
   ES1 = handle_node(State, Expr1),
   ESt = get_statement(ES1),
   NewStatement1 = {cast_as, ESt, St2},
   set_statement_and_type(State, NewStatement1, St2);
handle_node(State, {cast_as, Expr1, #xqSeqType{type = TypeAtom} = Expr2}) -> 
   if TypeAtom == 'xs:NOTATION';
      TypeAtom == 'xs:anyAtomicType';
      TypeAtom == 'xs:anySimpleType' ->
         ?err('XPST0080');
      true ->
         ok
   end,
   ES1 = handle_node(State, Expr1),
   ESt = get_statement(ES1),
   NewStatement1 = {cast_as, ESt, Expr2},
   set_statement_and_type(State, NewStatement1, Expr2#xqSeqType{type = TypeAtom});
%% 3.18.4 Castable
handle_node(State, {castable_as, 'empty-sequence', 
                    #xqSeqType{type = #qname{local_name = L}, 
                               occur = zero_or_one}}) 
   when L =/= "NOTATION" ->
   set_statement_and_type(State, ?true, ?boolone);
handle_node(State, {castable_as, 'empty-sequence', 
                    #xqSeqType{type = T, occur = zero_or_one}}) 
   when is_atom(T), T =/= 'xs:NOTATION' ->
   set_statement_and_type(State, ?true, ?boolone);
handle_node(State, {castable_as, 'empty-sequence', 
                    #xqSeqType{type = #qname{local_name = L}, occur = one}}) 
   when L =/= "NOTATION" ->
   set_statement_and_type(State, ?false, ?boolone);
handle_node(State, {castable_as, 'empty-sequence', 
                    #xqSeqType{type = T, occur = one}}) 
   when is_atom(T), T =/= 'xs:NOTATION' ->
   set_statement_and_type(State, ?false, ?boolone);
handle_node(State, {castable_as, Expr1, 
                    #xqSeqType{type = #qname{local_name = Ln}} = Expr2}) -> 
   if Ln == "NOTATION";
      Ln == "anyAtomicType";
      Ln == "anySimpleType" ->
         ?err('XPST0080');
      true ->
         ok
   end,
   ES1 = handle_node(State, Expr1),
   ESt = get_statement(ES1),
   ES2 = handle_node(State, Expr2),
   ESt2 = get_statement(ES2),
   NewStatement1 = {castable_as, ESt, ESt2},
   set_statement_and_type(State, NewStatement1, ?boolone);
handle_node(State, {castable_as, Expr1, #xqSeqType{type = TypeAtom} = Expr2}) -> 
   if TypeAtom == 'xs:NOTATION';
      TypeAtom == 'xs:anyAtomicType';
      TypeAtom == 'xs:anySimpleType' ->
         ?err('XPST0080');
      true ->
         ok
   end,
   ES1 = handle_node(State, Expr1),
   ESt = get_statement(ES1),
   ES2 = handle_node(State, Expr2),
   ESt2 = get_statement(ES2),
   NewStatement1 = {castable_as, ESt, ESt2},
   set_statement_and_type(State, NewStatement1, ?boolone);

%% 3.18.5 Constructor Functions
handle_node(State, {'function-call',#qname{namespace = ?XS,
                                           local_name = Type}, 1, 
                    [#xqAtomicValue{type = AtType, value = AtVal} = Av]}) -> 
   TypeAtom = list_to_atom("xs:" ++ Type),
   BOType = xqerl_btypes:get_type(TypeAtom),
   BIType = xqerl_btypes:get_type(AtType),
   NoCast = xqerl_btypes:can_substitute(BIType, BOType),
   NewNode = if Type == "numeric";
                Type == "decimal";
                Type == "double";
                Type == "float" ->
                   xqerl_types:cast_as(Av, TypeAtom);
                NoCast ->
                   #xqAtomicValue{type = TypeAtom, value = AtVal};
                Type == "NOTATION" ->
                   ?err('XPST0017');
                Type == "QName" andalso AtType == 'xs:untypedAtomic' ->
                   ?err('FORG0001');
                Type == "QName" ->
                   xqerl_types:cast_as(Av, TypeAtom, State#state.known_ns);
                Type == "NMTOKENS" ->
                   {sequence,xqerl_types:cast_as(Av, TypeAtom)};
                true ->
                   ?dbg("{Av,TypeAtom}",{Av,TypeAtom}),
                   xqerl_types:cast_as(Av, TypeAtom)
             end,
   if Type == "NMTOKENS" ->
         set_statement_and_type(State, NewNode, 
                                #xqSeqType{type = 'xs:NMTOKEN', 
                                           occur = zero_or_many});
      true ->
         set_statement_and_type(State, NewNode, 
                                #xqSeqType{type = TypeAtom, 
                                           occur = zero_or_one})
   end;
handle_node(State, {'function-call',#qname{namespace = ?XS}, 1, 
                    ['empty-sequence']}) ->
   set_statement_and_type(State, 'empty-sequence', 
                          #xqSeqType{type = 'empty-sequence', occur = zero});

handle_node(State, {'function-call',#qname{namespace = ?XS} = Name, 1, 
                    [Other]}) ->
   StateC = set_in_constructor(State, false),
   S1 = handle_node(StateC, Other),
   St1 = get_statement(S1),
   case St1 of
      #xqAtomicValue{} ->
         handle_node(State, {'function-call', Name, 1, [St1]});
      _ ->
         #xqFunction{params = Params, type = Type} = 
           F = get_static_function(State, {Name, 1}),
         SimpArg = [S1],
         CheckArg = check_fun_arg_types(State, SimpArg, Params),
         NewArgs = lists:map(fun({S,_C}) ->
                                 S
                             end, CheckArg),
         set_statement_and_type(State, 
                                {'function-call', 
                                 F#xqFunction{params = NewArgs}}, Type)
   end;

% context item dependent functions with 0 arity
% node-name, nilled, string, data, base-uri, document-uri, number, 
% normalize-space, string-length, name, local-name, namespace-uri, root, path, 
% has-children, generate-id
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,
                           local_name = Ln} = Name, 0, []}) 
   when Ln == "node-name";        Ln == "nilled";
        Ln == "string";           Ln == "data";
        Ln == "base-uri";         Ln == "document-uri";
        Ln == "number";           Ln == "normalize-space";
        Ln == "string-length";    Ln == "name";
        Ln == "local-name";       Ln == "namespace-uri";
        Ln == "root";             Ln == "path";
        Ln == "has-children";     Ln == "generate-id" -> 
   #xqFunction{params = [TargetType], type = Type} = 
     get_static_function(State, {Name, 1}),
   CtxType = State#state.context_item_type,
   ok = check_occurance_match(CtxType, TargetType, 1), % ctx item
   % now check the types
   NoCastC = check_type_match(CtxType, TargetType),
   if NoCastC == false ->
         ?err('XPTY0004');
      true ->
         []                        
   end,
   F = get_static_function(State, {Name, 0}),
   OutStatement = {'function-call',F},
   set_statement_and_type(State, OutStatement, Type);

% context item dependent functions with 1 arity
% 2nd parameter of arity 2 is context item
% lang, id, element-with-id, idref,      
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,
                           local_name = Ln} = Name, 1, [Arg]}) 
   when Ln == "lang";
        Ln == "id";
        Ln == "element-with-id";
        Ln == "idref" -> 
   #xqFunction{params = [TargetType1,TargetType2], type = Type} = 
     get_static_function(State, {Name, 2}),
   CtxType = State#state.context_item_type,
   StateC = set_in_constructor(State, false),
   SimArgS = handle_node(StateC, Arg),
   SimArgT  = get_statement_type(SimArgS),
   SimArgSt = get_statement(SimArgS),
   StatCnt  = get_static_count(SimArgS),
   ok = check_occurance_match(SimArgT, TargetType1, StatCnt), % 1st arg
   ok = check_occurance_match(CtxType, TargetType2, 1), % ctx item
   % now check the types
   NoCastA = check_type_match(SimArgT, TargetType1),
   NoCastC = check_type_match(CtxType, TargetType2),
   %?dbg("NoCast",{NoCastA,NoCastC}),
   NewStatement = if NoCastA == false;
                     NoCastC == false ->
                        ?err('XPTY0004');
                     NoCastA == cast ->
                        {cast_as, SimArgSt, TargetType1};
                     NoCastA == atomize ->
                        {promote_to, {atomize, SimArgSt}, TargetType1};
                     true ->
                        SimArgSt                        
                  end,
   F = get_static_function(State, {Name, 1}),
   OutStatement = {'function-call',F#xqFunction{params = [NewStatement]}},
   set_statement_and_type(State, OutStatement, Type);

% cardinality check functions - defer type checking until runtime
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN, 
                           local_name = "zero-or-one"} = Name, 1, [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   StateC = set_in_constructor(State, false),
   SimpArg = handle_node(StateC, Arg),
   #xqSeqType{type = Type} = get_statement_type(SimpArg),
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, 
                          {'function-call',F#xqFunction{params = [ArgSt]}}, 
                          #xqSeqType{type = Type, occur = zero_or_one});
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN, 
                           local_name = "one-or-more"} = Name, 1, [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   StateC = set_in_constructor(State, false),
   SimpArg = handle_node(StateC, Arg),
   #xqSeqType{type = Type} = get_statement_type(SimpArg),
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, {'function-call',
                                  F#xqFunction{params = [ArgSt]}}, 
                          #xqSeqType{type = Type, occur = one_or_many});
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,
                           local_name = "exactly-one"} = Name, 1, [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   StateC = set_in_constructor(State, false),
   SimpArg = handle_node(StateC, Arg),
   #xqSeqType{type = Type} = get_statement_type(SimpArg),
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, {'function-call',
                                  F#xqFunction{params = [ArgSt]}}, 
                          #xqSeqType{type = Type, occur = one});

% list part / takes type of the arg, unless node, then double
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,
                           local_name = LocalName} = Name, 1, [Arg]}) 
   when LocalName == "min";
        LocalName == "max";
        LocalName == "abs";
        LocalName == "avg";
        LocalName == "sum";
        LocalName == "floor";
        LocalName == "ceiling" -> 
   F = get_static_function(State, {Name, 1}),
   [TargetType] = F#xqFunction.params,
   StateC = set_in_constructor(State, false),
   SimpArg = handle_node(StateC, Arg),
   Type0 = get_statement_type(SimpArg),
   Type = case Type0 of
             #xqSeqType{type = Ty} when ?node(Ty) ->
                Type0#xqSeqType{type = 'xs:double'};
             #xqSeqType{type = 'xs:anyAtomicType'} when LocalName == "avg" ->
                Type0;
             #xqSeqType{type = 
                #xqFunTest{type = T}} when LocalName == "avg" ->
                
                try
                   NT = static_operator_type(divide,
                                             T#xqSeqType.type,'xs:integer'),
                   T#xqSeqType{type = NT}
                catch 
                   _:_ ->
                      ?dbg("Type0",Type0),
                      ?err('FORG0006')
                end;
             _ when LocalName == "avg" ->
                try
                   NT = static_operator_type(divide,
                                             Type0#xqSeqType.type,'xs:integer'),
                   Type0#xqSeqType{type = NT}
                catch 
                   _:_ ->
                      ?dbg("Type0",get_statement(SimpArg)),
                      ?dbg("Type0",Type0),
                      ?err('FORG0006')
                end;
             _ ->
                Type0
          end,
   NoCast = check_fun_arg_type(State,SimpArg, TargetType),
   ArgSt = get_statement(NoCast),
   Zero = Type#xqSeqType{occur = zero_or_one},
   set_statement_and_type(State, 
                          {'function-call',
                           F#xqFunction{params = [ArgSt], type = Zero}}, 
                          Type);

% functions on functions
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,
                           local_name = "function-arity"} = FName, 1, [Arg]}) -> 
   Type = ?intone,
   F = get_static_function(State, {FName, 1}),
   case Arg of
      {'partial-function', _Name,_Arity,Args} ->
         PlaceHolders = [P || {'?',P} <- Args],
         Cnt = length(PlaceHolders),
         set_statement_and_type(State, #xqAtomicValue{type = 'xs:integer', 
                                                      value = Cnt}, Type);
      {'function-ref', _Name,Arity} ->
         set_statement_and_type(State, 
                                #xqAtomicValue{type = 'xs:integer', 
                                               value = Arity}, Type);
      #xqVarRef{name = Name} ->
         St = get_variable(State, Name),
         Val = element(4, St), % xqSeqType
         case element(2, St) of
            #xqSeqType{type = #xqFunTest{params = any}} ->
               set_statement_and_type(State, 
                                      {'function-call', 
                                       F#xqFunction{params = 
                                                      [{variable, Val}]}}, 
                                      Type);
            #xqSeqType{type = #xqFunTest{params = Ps}} ->
               set_statement_and_type(State, 
                                      #xqAtomicValue{type = 'xs:integer', 
                                                     value = length(Ps)}, Type);
            _VType ->
               set_statement_and_type(State, 
                                      {'function-call', 
                                       F#xqFunction{params = 
                                                      [{variable, Val}]}}, Type)
         end;
      {variable,Name} ->
         St = get_variable(State, {variable,Name}),
         Val = element(4, St), % xqSeqType
         case element(2, St) of
            #xqSeqType{type = #xqFunTest{params = Ps}} ->
               set_statement_and_type(State, 
                                      #xqAtomicValue{type = 'xs:integer', 
                                                     value = length(Ps)}, Type);
            _VType ->
               set_statement_and_type(State, 
                                      {'function-call', 
                                       F#xqFunction{params = 
                                                      [{variable, Val}]}}, Type)
         end;
      {sequence,_} ->
         ?err('XPTY0004');
      _ ->
         StateC = set_in_constructor(State, false),
         SimpArg = handle_node(StateC, Arg),
         ArgSt = get_statement(SimpArg),
         set_statement_and_type(State, 
                                {'function-call',
                                 F#xqFunction{params = [ArgSt], type = Type}}, 
                                Type)
   end;
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,
                           local_name = "function-name"} = FName, 1, [Arg]}) -> 
   Type = #xqSeqType{type = 'xs:QName', occur = zero_or_one},
   case Arg of
      {'partial-function', _Name,_Arity,_Args} ->
         set_statement_and_type(State, 'empty-sequence', 
                                #xqSeqType{type = 'empty-sequence', 
                                           occur = zero});
      {'function-ref', Name,_Arity} ->
         set_statement_and_type(State, #xqAtomicValue{type = 'xs:QName', 
                                                      value = Name}, Type);
      _ ->
         StateC = set_in_constructor(State, false),
         SimpArg = handle_node(StateC, Arg),
         F = get_static_function(State, {FName, 1}),
         ArgSt = get_statement(SimpArg),
         set_statement_and_type(State, 
                                {'function-call',
                                 F#xqFunction{params = [ArgSt], type = Type}}, 
                                Type)
   end;

% functions that can return () if arg1 is ()
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,
                           local_name = LocalName} = Name, Arity, 
                    Args})
   when Arity > 0, LocalName == "tokenize" -> 
   #xqFunction{params = Params, type = Type} = 
      F = get_static_function(State, {Name, Arity}),
   StateC = set_in_constructor(State, false),
   SimpArgs = handle_list(StateC, Args),
   CheckArgs = check_fun_arg_types(State, SimpArgs, Params),
   Type1 = case hd(CheckArgs) of
              {_,0} ->
                 Type;
              {Other,C} ->
                 ?dbg("Other",{Other,C}),
                 maybe_unzero_type(Type)
           end,
   NewArgs = lists:map(fun({S,_C}) ->
                           S
                       end, CheckArgs),
   set_statement_and_type(State, 
                          {'function-call', 
                           F#xqFunction{params = NewArgs, 
                                        type = Type1}}, Type1);

% list reordering / takes type of the arg
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,local_name = "reverse"} = Name, 1, 
                    [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   StateC = set_in_constructor(State, false),
   SimpArg = handle_node(StateC, Arg),
   Type = get_statement_type(SimpArg),
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, 
                          {'function-call',
                           F#xqFunction{params = [ArgSt], type = Type}}, Type);

handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,local_name = "head"} = Name, 1, 
                    [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   StateC = set_in_constructor(State, false),
   SimpArg = handle_node(StateC, Arg),
   Type = (get_statement_type(SimpArg))#xqSeqType{occur = zero_or_one},
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, 
                          {'function-call',
                           F#xqFunction{params = [ArgSt], type = Type}}, Type);

handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,local_name = "tail"} = Name, 1, 
                    [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   StateC = set_in_constructor(State, false),
   SimpArg = handle_node(StateC, Arg),
   Type = (get_statement_type(SimpArg))#xqSeqType{occur = zero_or_many},
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, 
                          {'function-call',
                           F#xqFunction{params = [ArgSt], type = Type}}, Type);

handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,local_name = "count"} = Name, 1, 
                    [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   StateC = set_in_constructor(State, false),
   SimpArg = handle_node(StateC, Arg),
   Type = ?intone,
   ArgSt = get_statement(SimpArg),
   ArgCt = get_static_count(SimpArg),
   % TODO sum of known counts + fn:count of unknowns
   if ArgCt == undefined ->
         set_statement_and_type(State, 
                                {'function-call',
                                 F#xqFunction{params = [ArgSt], type = Type}}, 
                                Type);
      true ->
         set_statement_and_type(State, 
                                #xqAtomicValue{type = 'xs:integer', 
                                               value = ArgCt}, Type)
   end;

handle_node(State, {'function-call', 
                    #qname{namespace = ?FN, local_name = "filter"} = Name, 2, 
                    [Arg,#xqFunction{} = Fun]}) -> 
   Fun1 = case Fun#xqFunction.type of
             #xqSeqType{type = item} -> % generic type
                Fun#xqFunction{type = ?boolone};
             _ ->
                Fun
          end,
   F = get_static_function(State, {Name, 2}),
   StateC = set_in_constructor(State, false),
   SimpArg = handle_node(StateC, Arg),
   SimpFun = handle_node(StateC, Fun1),
   Type = maybe_zero_type(get_statement_type(SimpArg)),
   ArgSt = get_statement(SimpArg),
   FunSt = get_statement(SimpFun),
   %FunTy = get_statement_type(SimpFun),
   %?dbg("FunTy",FunTy),
   set_statement_and_type(State, 
                          {'function-call',
                           F#xqFunction{params = [ArgSt,FunSt], type = Type}}, 
                          Type);

% static context functions
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,local_name = "default-collation"}, 
                    0, []}) -> 
   DefCol = State#state.default_collation,
   Type = ?stringone,
   ArgSt = #xqAtomicValue{type = 'xs:string', value = DefCol},
   set_statement_and_type(State, ArgSt, Type);
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,local_name = "static-base-uri"}, 
                    0, []}) -> 
   Base = xqerl_context:get_static_base_uri(State#state.tab),%State#state.base_uri,
   Type = #xqSeqType{type = 'xs:anyURI', occur = zero_or_one},
   ArgSt = #xqAtomicValue{type = 'xs:anyURI', value = Base},
   set_statement_and_type(State, ArgSt, Type);

% BLOCKed functions - not safe
% TODO the rest of them...
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,
                           local_name = "environment-variable"}, 1, [Arg]}) -> 
   Type = #xqSeqType{type = 'xs:string', occur = zero_or_one},
   ArgS = handle_node(State, Arg),
   _ = check_fun_arg_types(State, [ArgS], [?stringone]),   
   set_statement_and_type(State, 'empty-sequence', Type);
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,
                           local_name = "available-environment-variables"}, 0, 
                    []}) -> 
   Type = #xqSeqType{type = 'xs:string', occur = zero_or_many},
   set_statement_and_type(State, 'empty-sequence', Type);

% list distinct / takes type of the arg, unless node then xs:anyAtomicType
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN,
                           local_name = "distinct-values"} = Name, 1, [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   StateC = set_in_constructor(State, false),
   SimpArg = handle_node(StateC, Arg),
   Type0 = get_statement_type(SimpArg),
   Type = case Type0 of
             #xqSeqType{type = Ty} when ?node(Ty) ->
                Type0#xqSeqType{type = 'xs:anyAtomicType'};
             _ ->
                Type0
          end,
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, 
                          {'function-call',
                           F#xqFunction{params = [ArgSt], type = Type}}, Type);

% data function return type is based on type of the argument, 
% atomics keep their type 
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN, local_name = "data"} = Name, 1, 
                    [Arg]}) -> 
   #xqFunction{type = FType} = F = get_static_function(State, {Name, 1}),
   StateC = set_in_constructor(State, false),
   SimpArg = handle_node(StateC, Arg),
   Type = get_statement_type(SimpArg),
   ArgSt = get_statement(SimpArg),
   Type1 = case Type of
              #xqSeqType{type = T} when ?anyAtomicType(T) ->
                 Type;
              _ ->
                 FType
           end,
   set_statement_and_type(State, 
                          {'function-call',
                           F#xqFunction{params = [ArgSt], type = Type1}}, 
                          Type1);

% boolean functions
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN, local_name = "exists"} = FName, 1, 
                    [Arg]}) -> 
   StateC = set_in_constructor(State, false),
   S2 = handle_node(StateC, Arg),
   S1 = get_statement(S2),
   SType = get_statement_type(S2),
   O1 = case SType of
           #xqSeqType{occur = O2} ->
              O2;
           _ ->
              zero_or_many
        end,
   Val = if O1 == one;
            O1 == one_or_many ->
               ?true;
            true ->
               F = get_static_function(State, {FName,1}),
               {'function-call', F#xqFunction{params = [S1]} }
         end,
   set_statement_and_type(State, Val, ?boolone);
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN, local_name = "empty"} = FName, 1, 
                    [Arg]}) -> 
   StateC = set_in_constructor(State, false),
   S2 = handle_node(StateC, Arg),
   S1 = get_statement(S2),
   F = get_static_function(State, {FName,1}),
   Val = {'function-call', F#xqFunction{params = [S1]} },
   set_statement_and_type(State, Val, ?boolone);
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN, local_name = "true"}, 0, []}) -> 
   set_statement_and_type(State, ?true, ?boolone);
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN, local_name = "false"}, 0, []}) -> 
   set_statement_and_type(State, ?false, ?boolone);

% concat
handle_node(_, {'function-call', 
                #qname{namespace = ?FN, local_name = "concat"}, 1, _}) -> 
   ?err('XPST0017');
handle_node(State, {'function-call', 
                    #qname{namespace = ?FN, local_name = "concat"} = Name, 
                    Arity, Args}) ->
   F = get_static_function(State, {Name, Arity}),
   StateC = set_in_constructor(State, false),
   SimpArgs = handle_list(StateC, Args),
   % zero_or_one to allow empty sequence
   Fake = lists:duplicate(Arity, {xqSeqType,'xs:anyAtomicType',zero_or_one}),
   CheckArgs = check_fun_arg_types(State, SimpArgs, Fake),
   NewArgs = lists:map(fun({S,undefined}) -> % unknown size
                           S;
                          ({S,C}) when C =< 1 ->
                           S;
                          ({_S,_C}) -> % no known sequences
                           ?err('XPTY0004')
                       end, CheckArgs),
   % NewArgs wrapped as list on purpose!
   set_statement_and_type(State, 
                          {'function-call',
                           F#xqFunction{params = [{sequence, NewArgs}]}}, 
                          ?stringone);

% unknown namespace from parser
handle_node(State, {'function-call', #qname{namespace = undefined} = Name, 
                    Arity, Args}) ->
   QName = resolve_qname(Name, State),
   handle_node(State, {'function-call', QName, Arity, Args});

% catch all for all fx's
handle_node(State, {'function-call', Name, Arity, Args}) ->
   #xqFunction{params = Params, type = Type} = 
    F = get_static_function(State, {Name, Arity}),
   StateC = set_in_constructor(State, false),
   SimpArgs = handle_list(StateC, Args),
   CheckArgs = check_fun_arg_types(State, SimpArgs, Params),
   NewArgs = lists:map(fun({S,_C}) ->
                           S
                       end, CheckArgs),
   set_statement_and_type(State, 
                          {'function-call', 
                           F#xqFunction{params = NewArgs}}, Type);

% sequence type 
handle_node(State, #xqSeqType{type = #qname{} = Name} = Node) ->
   %?dbg("Name",Name),
   #qname{namespace = Ns, local_name = Ln} = resolve_qname(Name, State),
   Atom = if Ns == ?XS ->
                list_to_atom("xs:" ++ Ln);
             true ->
                ?err('XPST0051')
          end,
   set_statement(State, Node#xqSeqType{type = Atom});
handle_node(State, #xqSeqType{type = T} = Node) when not is_atom(T) ->
   NewT = get_statement(handle_node(State, T)),
   set_statement(State, Node#xqSeqType{type = NewT});
handle_node(State, #xqSeqType{} = Node) ->
   set_statement(State, Node);

handle_node(State, {do_ensure,Expr,Type}) ->
   St1 = handle_node(State, Expr),
   Sty = get_statement_type(St1),
   Stt = get_statement(St1),
   OkType = check_type_match(Sty, Type),
   if OkType == false;
      OkType == cast ->
         ?err('XPTY0004');
      true ->
         ?dbg("OkType",OkType),
         ?dbg("Sty",{Sty,Type}),
         ok
   end,
   if Type == undefined ->
         set_statement_and_type(State, Stt, Type);
      true ->
         set_statement_and_type(State, {promote_to,Stt,Type}, Type)
   end;
   
%% 3.18.6 Treat
% just sets the static type of an expression
% wraps in if then and throws error if bad type
handle_node(State, {treat_as, Expr1, #xqSeqType{} = Expr2}) ->
   S1 = handle_node(State, Expr1),
   St1 = get_statement(S1),
   St2 = #xqSeqType{type = TType} = get_statement(handle_node(State, Expr2)),
   case TType of
      #xqKindTest{} ->
         ok;
      'empty-sequence' ->
         ok;
      _ ->
         try xqerl_btypes:get_type(TType) of %just check if it exists
            _ -> ok
         catch _:_ -> ?err('XPST0051') end
   end,
   NewStatement = {'if-then-else', 
                   {instance_of, St1, St2}, St1, {error, 'XPDY0050'}},   
   set_statement_and_type(State, NewStatement, St2);
%% 3.19 Simple map operator (!)
handle_node(State, {'simple-map', SeqExpr, MapExpr}) -> 
   SeqState     = handle_node(State, SeqExpr),
   SeqStatement = get_statement(SeqState),
   SeqType      = get_statement_type(SeqState),
   NewSeqType   = SeqType#xqSeqType{occur = one},
   State1       = set_statement_and_type(State, SeqStatement, NewSeqType),
   MapState     = handle_node(State1, MapExpr),
   MapStatement = get_statement(MapState),
   MapType      = get_statement_type(MapState),
   set_statement_and_type(State, 
                          {'simple-map', SeqStatement, MapStatement}, 
                          maybe_many_type(MapType));
%% 3.20 Arrow operator (=>) 
% done in parser
%% 3.21 Validate Expressions
% not implemented
%% 3.22 Extension Expressions
handle_node(State, {pragma, Pragmas, Exprs}) -> 
   S1 = handle_node(State, Exprs),
   St = get_statement(S1),
   Sty = get_statement_type(S1),
   % just resolve any names
   F = fun({Name,Contents}) ->
             #qname{namespace = Ns} = QName = resolve_pragma_qname(Name, State),
             if Ns == [] -> false;
                Ns == undefined -> ?err('XPST0081');
                true ->
                   {true, {QName,Contents}}
             end
       end,
   P = lists:filtermap(F, Pragmas),
   set_statement_and_type(State, {pragma, P, St}, Sty);

handle_node(State, {'node-cons', Expr}) -> 
   ST = handle_node(State, Expr),
   S1 = get_statement(ST),
   ST1 = get_statement_type(ST),
   set_statement_and_type(State, S1, ST1);

handle_node(State, {content_expr, Expr}) -> 
   ST = handle_node(State, Expr),
   S1 = get_statement(ST),
   ST1 = get_statement_type(ST),
   case S1 of 
      %#xqAtomicValue{value = []} ->
      %  set_statement(State, 'empty-sequence');
      _ ->
         set_statement_and_type(State, {content_expr, S1}, ST1)
   end;

handle_node(State, {lookup, Expr}) -> 
   handle_predicate(State, {lookup, Expr});

handle_node(State, {'?',Id}) ->
   set_statement_and_type(State, 
                          {variable,param_variable_name(Id)}, 
                          #xqSeqType{type = item, occur = zero_or_many});

handle_node(State, Node) ->
   ?dbg("UNKNOWN NODE", Node),
   ?dbg("UNKNOWN NODE", State#state.context),
   State.

% TODO make this a foldr to wrap up chained calls and get correct return type
handle_predicates(State, []) -> 
   set_statement(State,[]);
handle_predicates(State, Predicates) ->
   {PredStatements,OutType} = lists:mapfoldl(fun(P,_InType) ->
                                         State1 = handle_predicate(State, P),
                                         Type = get_statement_type(State1),
                                         {get_statement(State1),Type}
                                   end, [],Predicates),
   set_statement_and_type(State, PredStatements,OutType).

handle_predicate(State, {predicate, Expr}) ->
   PreFilterType = get_statement_type(State),
   PostFilterType = maybe_zero_type(PreFilterType), 
   ContextType = (get_statement_type(State))#xqSeqType{occur = one},
   State1 = State#state{context_item_type = ContextType},
   %?dbg("ContextType",ContextType),
   %?dbg("Expr",Expr),
   SimExpr = handle_node(State1, Expr),
   SimSt0 = get_statement(SimExpr),
   SimSt = case SimSt0 of
              L when is_list(L) ->
                 {sequence,L};
              _ ->
                 SimSt0
           end,
   %?dbg("SimSt",SimSt),
   #xqSeqType{type = SimTy} = Type = get_statement_type(SimExpr),
   SimCnt = get_static_count(SimExpr),
   %?dbg("SimTy",SimTy),
   if SimTy == item;
      ?node(SimTy);
      SimTy == 'xs:boolean' ->
         set_statement_and_type(State, {predicate, SimSt}, PostFilterType);
      true ->
         try 
            IsNum = check_type_match(Type, #xqSeqType{type = 'xs:numeric',
                                                      occur = zero_or_one}),
            %?dbg("IsNum",IsNum),
            %?dbg("SimCnt",SimCnt),
            if IsNum andalso (SimCnt == undefined orelse SimCnt < 2) ->
                  set_statement_and_type(State, 
                                         {positional_predicate, SimSt}, 
                                          PostFilterType);
               true ->
                  set_statement_and_type(State, 
                                         {predicate, SimSt}, PostFilterType)
            end
         catch _:_ ->
            set_statement_and_type(State, {predicate, SimSt}, PostFilterType)
         end
   end;
   
handle_predicate(State, {arguments, Args}) ->
   SimpArgs = handle_list(State, Args),
   NewArgs = lists:map(fun(Arg) ->
                             get_statement(Arg)
                       end, SimpArgs),
   set_statement_and_type(State, {arguments, NewArgs}, 
                          #xqSeqType{type = item, occur = zero_or_many});
% unary lookups
handle_predicate(State, {lookup, wildcard}) ->
   NewType = #xqSeqType{type = item, occur = zero_or_many}, 
   % what type of lookup? map/array
   Kind = case get_statement_type(State) of
             #xqSeqType{type = #xqFunTest{kind = Kind1}} -> Kind1;
             _ ->
                item
          end,
   if Kind == map ->
         set_statement_and_type(State, {map_lookup, wildcard},NewType);
      true ->
         set_statement_and_type(State, {array_lookup, wildcard},NewType)
   end;
handle_predicate(State, {lookup, Args}) ->
   NewType = #xqSeqType{type = item, occur = zero_or_many}, 
   SimpArgs = handle_node(State, Args),
   NewArgs = get_statement(SimpArgs),
   %Type = get_statement_type(SimpArgs),
   LUType = case get_statement_type(State) of
               #xqSeqType{type = #xqFunTest{kind = Kind}} ->
                  Kind;
               _ ->
                  unknown
            end,
   if LUType == map ->
         set_statement_and_type(State, {map_lookup, NewArgs},NewType);
      LUType == array ->
         set_statement_and_type(State, {array_lookup, NewArgs},NewType);
      true ->
         set_statement_and_type(State, {array_lookup, NewArgs},NewType)
   end.
   
handle_internal_var_node(State,#xqVar{id = Id,
                                      name = Name, 
                                      type = Type0, 
                                      expr = Expr},true) ->
   ErlVarName = local_variable_name(Id),
   NewVar0  = {Name,Type0,[],ErlVarName},
   State0 = add_inscope_variable(State, NewVar0),
   VarState = handle_node(State0, Expr),
   VarType = get_statement_type(VarState),
   Type = if Type0 == undefined ->
                VarType;
             true ->
                Type0
          end,
   VarStmt = get_statement(VarState),
   case check_type_match(VarType, Type) of
      false ->
         ?err('XPTY0004');
      _ ->
         ok
   end,
   NewVar  = {Name,VarType,[],ErlVarName},
   State1 = add_inscope_variable(State, NewVar),
   NewStatement = #xqVar{id = Id,
                         name = Name, 
                         type = VarType, 
                         expr = VarStmt},
   set_statement_and_type(State1, NewStatement, VarType);

handle_internal_var_node(State,#xqVar{id = Id,
                                      name = Name, 
                                      type = Type0, 
                                      expr = Expr},false) ->
   ErlVarName = local_variable_name(Id),
   VarState = handle_node(State, Expr),
   VarType = get_statement_type(VarState),
   Type = if Type0 == undefined ->
                VarType;
             true ->
                Type0
          end,
   VarStmt = get_statement(VarState),
   case check_type_match(VarType, Type) of
      false ->
         ?err('XPTY0004');
      _ ->
         ok
   end,
   NewVar  = {Name,VarType,[],ErlVarName},
   State1 = add_inscope_variable(State, NewVar),
   NewStatement = #xqVar{id = Id,
                         name = Name, 
                         type = VarType, 
                         expr = VarStmt},
   set_statement_and_type(State1, NewStatement, VarType).


default_return(State, Node) ->
   S1 = set_statement_type(State, #xqSeqType{type = item, 
                                             occur = zero_or_many}),
   %?dbg("default", Node),
   set_statement(S1, Node).

check_parameter_names(Params) ->
   Names = [N || #xqVar{name = N} <- Params],
   %?dbg("Names",Names),
   case length(lists:usort(Names)) =:= length(Names) of
      true ->
         ok;
      _ ->
         ?err('XQST0039')
   end.

sim_name(#qname{namespace = N, local_name = L}) ->
   {N,L}.

valid_enc("US-ASCII") -> true;
valid_enc("ISO-8859-1") -> true;
valid_enc("UTF-16") -> true;
valid_enc("UTF-8") -> true;
valid_enc(_) -> ?err('XQST0087').

valid_ver("1.0") -> true;
valid_ver("3.0") -> true;
valid_ver("3.1") -> true;
valid_ver(_) -> ?err('XQST0031').

init_mod_scan() ->
   Tab = xqerl_context:init(),
   erlang:put(imp_mod, 1),
   erlang:put(ctx, 1),
   erlang:put(var_tuple, 1),
   erlang:put(iter, 1),
   erlang:put(iter_loop, 1),
   Tab.

check_prolog_order(Prolog) ->
   % 1st part : default namespaces, setters, namespace declarations, imports
   FirstFun = fun({'element-namespace', _}) ->
                    true;
                 ({'function-namespace', _}) ->
                    true;
                 ({'set', _}) ->
                    true;
                 ({'namespace', _}) ->
                    true;
                 ({'module-import', _}) ->
                    true;
                 (_) ->
                    false               
              end,               
   Rest = lists:dropwhile(FirstFun, Prolog),
   % 2nd part : context item, variables and functions options
   SecondFun = fun({'context-item', _}) ->
                     true;
                  (#xqFunction{}) ->
                     true;
                  (#xqVar{}) ->
                     true;
                  ({'option', _}) ->
                     true;
                  (_) ->
                     false               
              end,               
   Rest1 = lists:dropwhile(SecondFun, Rest),
   if Rest1 == [] ->
         ok;
      true ->
         ?err('XPST0003')
   end.

pro_def_elem_ns(Prolog) ->
   D = lists:filtermap(fun({'element-namespace', E}) ->
                             {true,E};
                          (_) -> 
                             false
                       end, Prolog),
   if D == [] ->
         'no-namespace';
      length(D) > 1 ->
         ?err('XQST0066');
      true ->
         lists:flatten(D)
   end.

check_def_collation(#state{known_collations = _KC}, 
                    "http://www.w3.org/2013/collation/UCA" ++ _) ->
   ok;
check_def_collation(#state{known_collations = KC}, URI) ->
   Ok = lists:member(URI, KC),
   if Ok ->
         ok;
      true ->
         ?err('XQST0038')
   end.

pro_def_func_ns(Prolog) ->
   D = lists:filtermap(fun({'function-namespace', E}) ->
                             {true,E};
                          (_) -> 
                             false
                       end, Prolog),
   if length(D) > 1 ->
         ?err('XQST0066');
      D == ["http://www.w3.org/2000/xmlns/"];
      D == ["http://www.w3.org/XML/1998/namespace"] ->
         ?err('XQST0070');
      true ->
         ok
   end.

pro_context_item(Prolog, library) ->
   D = lists:filter(fun({'context-item', {_,external,_}}) ->
                          false;
                       ({'context-item', _}) ->
                          true;
                       (_) ->
                          false
                    end, Prolog),
   if length(D) > 0 ->
         ?err('XQST0113');
      true ->
         D
   end;
pro_context_item(Prolog, main) ->
   D = lists:filter(fun({'context-item', _}) ->
                          true;
                       (_) ->
                          false
                    end, Prolog),
   if length(D) > 1 ->
         ?err('XQST0099');
      true ->
         D
   end.

pro_setters(Prolog) ->
   [E || {'set', E} <- Prolog].

pro_module_ns([]) ->
   [];
pro_module_ns({'module-namespace',{"Q{" ++Ns,Px}}) ->
   {lists:droplast(Ns),Px}.

pro_namespaces(Prolog,ModNsPx,DefElNs) ->
   Namespaces = [{DefElNs,[]}|
                   lists:filtermap(fun({'namespace', N}) -> {true,N};
                                      ({'module-import', {_,[]}}) -> false;
                                      ({'module-import', N}) -> {true,N};
                                      (_) -> false
                                   end, Prolog)],
   Namespaces1 = if ModNsPx == [] ->
                       Namespaces;
                    true ->
                       [ModNsPx|Namespaces]
                 end,
   % check for dup prefixes
   _ = lists:foldl(fun({N1,Px},Dict) ->
                         case dict:is_key(Px, Dict) of
                            true ->
                               ?err('XQST0033');
                            _ ->
                               dict:store(Px, N1, Dict)
                         end
                   end, dict:new(), Namespaces1),
   % check for overwritten namespaces
   _ = lists:foreach(fun({_,"xmlns"}) ->
                           ?err('XQST0070');
                        ({"http://www.w3.org/2000/xmlns/",P}) 
                           when P =/= "xmlns" ->
                           ?err('XQST0070');
                        ({N,"xml"}) 
                           when N =/= "http://www.w3.org/2000/xmlns/" ->
                           ?err('XQST0070');
                        ({"http://www.w3.org/XML/1998/namespace",P}) 
                           when P =/= "xml" ->
                           ?err('XQST0070');
                        (_) ->
                           ok
                     end, Namespaces1),
   Namespaces1.

pro_mod_imports(Prolog) ->
   Imports = [E || {'module-import', E} <- Prolog],
   % check for dup imports
   _ = lists:foldl(fun({Ns,_},Dict) ->
                         case dict:is_key(Ns, Dict) of
                            true ->
                               ?err('XQST0047');
                            _ ->
                               dict:append(Ns, ok, Dict)
                         end
                   end, dict:new(), Imports),
   Imports.

pro_options(Prolog, main) ->
   Opts = [E || {'option', E} <- Prolog],
   Output = [Q || {#qname{prefix = "output"} = Q,_} <- Opts],
   case lists:sort(Output) == lists:usort(Output) of
      true ->
         Opts;
      _ ->
         ?err('XQST0110')
   end;
pro_options(Prolog, library) ->
   [?err('XQST0108') || {'option', _} <- Prolog].

pro_glob_variables(Prolog, ModNs) ->
   Variables = [V || #xqVar{} = V <- Prolog],
   F = fun(#xqVar{name = #qname{namespace = Ns,local_name = Ln}, 
                  annotations = Annos},Dict) ->
             % check reserved annotation NS http://www.w3.org/2012/xquery
             A = fun(#annotation{
                      name = #qname{namespace = "http://www.w3.org/2012/xquery",
                              local_name = L}}) when L == "public";
                                                       L == "private" ->
                       ok;
                    (#annotation{name = #qname{namespace = N}}) ->
                       % will throw error if reserved
                       ok = xqerl_lib:reserved_namespaces(N)
                 end,
             _ = lists:foreach(A, Annos),
             % check dupe public/private 
             B = fun(#annotation{
                      name = #qname{namespace = "http://www.w3.org/2012/xquery",
                              local_name = L}},[]) when L == "public";
                                                        L == "private" ->
                       anno;
                    (#annotation{
                      name = #qname{namespace = "http://www.w3.org/2012/xquery",
                              local_name = L}},anno) when L == "public";
                                                          L == "private" ->
                       ?err('XQST0116');
                    (_,D) ->
                       D
                 end,
             _ = lists:foldl(B, [], Annos),                        
             % check for bad variable namespace
             case ModNs of
                [] ->
                   ok;
                {Ns1,_} ->
                   Ns2 = "Q{" ++ Ns1 ++ "}",
                   if Ns =/= Ns2 -> 
                         ?dbg("Ns =/= Ns1",{Ns,Ns1}),
                         ?err('XQST0048');
                      true ->
                         ok
                   end
             end,
             % check for dup vars
             case dict:is_key({Ns,Ln}, Dict) of
                true ->
                   ?err('XQST0049');
                _ ->
                   dict:append({Ns,Ln}, ok, Dict)
             end
       end,
   _ = lists:foldl(F, dict:new(), Variables),
   Variables.

pro_glob_functions(Prolog, ModNs) ->
   Functions = [F || #xqFunction{} = F <- Prolog],
   % check for dup funs, reserved namespaces, dup params
   F = fun(#xqFunction{name = #qname{namespace = Ns,local_name = Ln}, 
                       annotations = Annos,
                       arity = A,
                       params = Params},Dict) ->
             % no null namespaces for functions
             if Ns == [] -> ?err('XQST0060'); true -> ok end,
             % check for dupe params
             _ = lists:foldl(fun(#xqVar{name = Nm1},Dict1) ->
                                   case dict:is_key(Nm1, Dict1) of
                                      true -> ?err('XQST0039');
                                      _ -> dict:append(Nm1, ok, Dict1)
                                   end
                             end, dict:new(), Params),
             % check reserved NS 
             ok = xqerl_lib:reserved_namespaces(Ns),
             % check reserved annotation NS 
             Af = fun(#annotation{name = 
                        #qname{namespace = "http://www.w3.org/2012/xquery",
                               local_name = L}}) when L == "public";
                                                      L == "private" ->
                       ok;
                    (#annotation{name = 
                        #qname{namespace = N}}) ->
                       ok = xqerl_lib:reserved_namespaces(N)
                 end,
             _ = lists:foreach(Af, Annos),
             % check dupe public/private 
             B = fun(#annotation{name = 
                        #qname{namespace = "http://www.w3.org/2012/xquery",
                               local_name = L}},[]) when L == "public";
                                                            L == "private" ->
                       anno;
                    (#annotation{name = 
                        #qname{namespace = "http://www.w3.org/2012/xquery",
                               local_name = L}},anno) when L == "public";
                                                              L == "private" ->
                       ?err('XQST0106');
                    (_,D) ->
                       D
                 end,
             _ = lists:foldl(B, [], Annos),
             % check for bad function namespace
             case ModNs of
                [] ->
                   ok;
                {Ns1,_} ->
                   Ns2 = "Q{" ++ Ns1 ++ "}",
                   if Ns =/= Ns2 -> 
                         if Ns =/= Ns1 -> 
                               ?dbg("Ns =/= Ns1",{Ns,Ns1}),
                               ?err('XQST0048');
                            true ->
                               ok
                         end;
                      true ->
                         ok
                   end
             end,
             % check dupe fun
             case dict:is_key({{Ns,Ln},A}, Dict) of
                true -> ?err('XQST0034');
                _ -> dict:append({{Ns,Ln},A}, ok, Dict)
             end
       end,
   _ = lists:foldl(F, dict:new(), Functions),
   Functions.

overwrite_static_namespaces(StaticNamespaces, LocalNamespaces) ->
   lists:foldl(fun({[],Px},List) ->
                     lists:keydelete(Px, 1, List);
                  ({Ns,Px},List) ->
                     lists:keystore(Px, 1, List, {Px,Ns})
               end, StaticNamespaces, LocalNamespaces).

set_or_error(Name,List,Default,Error) ->
   case proplists:get_all_values(Name,List) of
      [] when Name =:= 'default-collation' ->
         {_,D} = Default,
         D;
      [] ->
         Default;
      [H] when Name =:= 'base-uri' ->
         try 
            xqerl_lib:resolve_against_base_uri(Default,H)
         of
            {error,_} ->
               ?err('XQST0046');
            N ->
               if N == Default andalso H =/= Default ->
                     ?dbg("N",N),
                     ?err('XPST0001');
                  true ->
                     N
               end
         catch 
            _:E ->
               ?dbg("E",E),
               ?err('XQST0046')
         end;
      [H] when Name =:= 'default-collation' ->
         try 
            {Base,_} = Default,
            xqerl_lib:resolve_against_base_uri(Base,H)
         catch 
            _:E ->
               ?dbg("E",E),
               ?err(Error)
         end;
      [H] ->
         H;
      _ ->
         ?err(Error)
   end.  

scan_setters(#state{tab = Tab} = State, SetList) ->
   D = "http://www.w3.org/2005/xpath-functions/collation/codepoint",
   S = xqerl_context:get_static_base_uri(Tab),
   BU = set_or_error('base-uri', SetList, S, 'XQST0032'),
   _ = xqerl_context:set_static_base_uri(Tab, BU),
   BS = set_or_error('boundary-space', SetList, strip, 'XQST0068'),
   DC = set_or_error('default-collation', SetList, {BU,D}, 'XQST0038'),
   CM = set_or_error('construction-mode', SetList, preserve, 'XQST0067'),
   OM = set_or_error('ordering-mode', SetList, ordered, 'XQST0065'),
   EO = set_or_error('empty-seq-order', SetList, greatest, 'XQST0069'),
   CN = set_or_error('copy-namespaces', SetList, 
                     {preserve, 'no-inherit'}, 'XQST0055'),
   DF = scan_dec_formats(proplists:lookup_all('decimal-format', SetList),State),
   ok = check_def_collation(State, DC),
   
   State#state{boundary_space = BS,
               default_collation = DC,
               base_uri = BU,
               construction_mode = CM,
               order_mode = OM,
               empty_order = EO,
               copy_ns_mode = CN,
               known_dec_formats = DF}.

%% {Name, Type, Annos, function_name, Arity, [param_types] }
scan_functions(Functions) ->
   P = fun(A) ->
             [ok || 
              #annotation{name = 
                #qname{namespace = "http://www.w3.org/2012/xquery", 
                       local_name = "private"}} <- A] == []
       end,
              
   [{Name, Type, Annos,
     function_hash_name(Name,Arity),Arity, param_types(Params)}
   || #xqFunction{annotations = Annos,
                  arity = Arity,
                  params = Params,
                  name = Name, 
                  type = Type} <- Functions,
      % block private functions from being visible
      P(Annos) /= []].

%% {Name, Type, Annos, function_name, External }
scan_variables(_State, Variables) ->
   [{Name, Type, Annos, {variable_hash_name(Name),1}, External}
      || #xqVar{annotations = Annos, 
                name = Name, 
                external = External,
                type = Type} <- Variables ].

scan_namespaces(State, Namespaces) ->
   NsList = [#xqNamespace{namespace = Ns, prefix = Px}
             || {Px,Ns} <- Namespaces],
   Default = [#xqNamespace{namespace = Ns, prefix = Px}
              || {Px,Ns} <- Namespaces, Px == []],
   State1 = set_inscope_ns(State, Default),
   State1#state{known_ns = NsList}.

scan_options(Options) ->
   _ = xqerl_options:validate(Options),
   Options.

scan_dec_formats(Formats,State) ->
   RecF = fun({F,V}, R) ->
                case F of
                   'decimal-separator' when length(V) == 1 ->
                      R#dec_format{decimal = V};
                   'grouping-separator' when length(V) == 1 ->
                      R#dec_format{grouping = V};
                   'infinity' ->
                      R#dec_format{infinity = V};
                   'minus-sign' when length(V) == 1 ->
                      R#dec_format{minus = V};
                   'NaN' ->
                      R#dec_format{nan = V};
                   'percent' when length(V) == 1 ->
                      R#dec_format{percent = V};
                   'per-mille' when length(V) == 1 ->
                      R#dec_format{per_mille = V};
                   'zero-digit' when length(V) == 1 ->
                      R#dec_format{zero = V};
                   'digit' when length(V) == 1 ->
                      R#dec_format{digit = V};
                   'pattern-separator' when length(V) == 1 ->
                      R#dec_format{pattern = V};
                   'exponent-separator' when length(V) == 1 ->
                      R#dec_format{exponent = V};
                   _ ->
                      ?err('XQST0097')
                end
          end,
   MapF = fun({'decimal-format', Name, FList}) ->
                Rec = lists:foldl(RecF, #dec_format{}, FList),
                Names = lists:sort([N || {N,_} <- FList]),
                % remove items not in picture string
                Rem = Rec#dec_format{nan = nan, 
                                     minus = minus, 
                                     infinity = infinity},
                Sort = lists:sort(tl(tuple_to_list(Rem))),
                % check for duplicate values and names
                OK = lists:usort(Sort) == Sort,
                Dup = lists:usort(Names) == Names,
                if OK, Dup ->
                      ok;
                   OK ->
                      ?err('XQST0114');
                   true ->
                      ?err('XQST0098')
                end,    
                ResName = if Name == [] ->
                                [];
                             true ->
                                try
                                   resolve_qname(Name, State)
                                catch _:_ ->
                                   ?err('FODF1280')
                                end
                          end,
                {ResName, Rec}
          end,
   All = lists:map(MapF, Formats),
   % check for duplicate format names
   Names2 = [N || {N,_}  <- All],
   Nl1 = length(Names2),
   Nl2 = length(lists:usort(Names2)),
   if Nl1 =:= Nl2 ->
         ok;
      true ->
         ?err('XQST0111')
   end,
   % maybe add default
   case lists:keyfind([], 1, All) of
      false ->
         [{[],#dec_format{}}|All];
      _ ->
         All
   end.

%attribute(Name,Val) -> erlang:list_to_tuple([attribute,?LINE,Name,Val]).

variable_hash_name(#qname{namespace = 'no-namespace',local_name = L}) ->
   string_atom("___Q_"++L);
variable_hash_name(#qname{namespace = N,local_name = L}) ->
   string_atom("___Q_"++N++"_"++L).

function_hash_name(undefined, Arity) ->
   {undefined, Arity + 1};
function_hash_name(#qname{namespace = N,local_name = L}, Arity) ->
   {string_atom("__Q_"++N++"_"++L), Arity + 1}.

string_atom(Term) ->
   Bin = binary:replace(
           unicode:characters_to_binary(Term),
           [<<"<">>,<<">">>,<<"@">>,<<":">>,
            <<"?">>,<<"=">>,<<"/">>,<<".">>,
            <<"{">>,<<"}">>,<<"-">>,<<"#">>,
            <<"[">>,<<"]">>],<<"_">>,
           [global]),
   binary_to_atom(Bin, latin1).

resolve_qname(#qname{namespace = Ns, 
                     prefix = undefined, 
                     local_name = Ln}, _) ->
   #qname{namespace = Ns, prefix = "*", local_name = Ln};
resolve_qname(#qname{prefix = "*"} = N, _) ->
   N;
resolve_qname(#qname{prefix = default} = N, X) ->
   resolve_qname(N#qname{prefix = []}, X);
resolve_qname(#qname{prefix = Px, 
                     local_name = Ln}, #state{known_ns = Nss}) ->
   case lists:keyfind(Px, 3, Nss) of
      false ->
         ?err('XPST0081'); % unable to expand
      #xqNamespace{namespace = Ns} ->
         #qname{namespace = Ns, prefix = Px, local_name = Ln}
   end;
resolve_qname(Name, _Ctx) ->
   Name.

resolve_pragma_qname(#qname{namespace = undefined, 
                            prefix = Px, 
                            local_name = Ln}, #state{known_ns = Nss}) ->
   case lists:keyfind(Px, 3, Nss) of
      false ->
         ?err('XPST0081'); % unable to expand
      #xqNamespace{namespace = Ns} ->
         #qname{namespace = Ns, prefix = Px, local_name = Ln}
   end;
resolve_pragma_qname(#qname{namespace = default, 
                            local_name = Ln}, #state{known_ns = Nss}) ->
   case lists:keyfind([], 3, Nss) of
      false ->
         #qname{namespace = [], prefix = [], local_name = Ln};
      #xqNamespace{namespace = undefined} ->
         ?err('XPST0081');
      #xqNamespace{namespace = Ns, prefix = Px} ->
         #qname{namespace = Ns, prefix = Px, local_name = Ln}
   end;
resolve_pragma_qname(Name, _Ctx) ->
   Name.

param_types(Params) ->
   [ T || #xqVar{type = T} <- Params].

both_atomics(#xqAtomicValue{},#xqAtomicValue{}) ->
   true;
both_atomics(_,_) ->
   false.

attribute_nodes(AttsNs) ->
   [Att || #xqAttributeNode{} = Att <- AttsNs].

namespace_nodes(AttsNs) ->
   [Ns || #xqNamespaceNode{} = Ns <- AttsNs].

override_namespaces(State, Namespaces) ->
   Fun = fun(#xqNamespaceNode{name = #qname{namespace = Ns, 
                                            prefix = []}} = Namespace, 
             State1) ->
               New = #xqNamespace{namespace = Ns, prefix = []},
               Known = State1#state.known_ns,
               NewKnown = lists:keystore([], 3, Known, New),
               State2 = State1#state{default_elem_ns = Ns,
                                     known_ns = NewKnown},
               add_inscope_namespace(State2, Namespace);
            (#xqNamespaceNode{name = #qname{namespace = Ns, 
                                            prefix = Px}} = Namespace, 
             State1) ->
               New = #xqNamespace{namespace = Ns, prefix = Px},
               Known = State1#state.known_ns,
               NewKnown = lists:keystore(Px, 3, Known, New),
               State2 = State1#state{known_ns = NewKnown},
               add_inscope_namespace(State2, Namespace)
         end,
   lists:foldl(Fun, State, Namespaces).

add_inscope_namespace(State, #xqNamespaceNode{name = #qname{namespace = Ns, 
                                                            prefix = Px}}) ->
   New = #xqNamespace{namespace = Ns, prefix = Px},
   Known = get_inscope_ns(State),
   NewKnown = lists:keystore(Px, 3, Known, New),
   set_inscope_ns(State, NewKnown).

resolve_element_name(_State, #qname{prefix = "*"} = QName) ->
   QName#qname{namespace = "*"};
resolve_element_name(_State, #qname{namespace = "*"} = QName) ->
   QName#qname{prefix = "*"};
resolve_element_name(State, #qname{prefix = []} = QName) ->
   DefaultNs = State#state.default_elem_ns,
   QName#qname{namespace = DefaultNs};
resolve_element_name(State, #qname{namespace = Ns,
                                   prefix = undefined} = QName) ->
   try
      StatNs    = State#state.known_ns,
      Px = lists:keyfind(Ns, 2, StatNs),
      QName#qname{prefix = element(3,Px)}
   catch
      _:_ ->
         QName
   end;
resolve_element_name(State, #qname{prefix = Px} = QName) ->
   try
      StatNs    = State#state.known_ns,
      Ns = lists:keyfind(Px, 3, StatNs),
      QName#qname{namespace = element(2,Ns)}
   catch
      _:_ ->
         ?err('XPST0081')
   end;
resolve_element_name(_State, QName) ->
   QName.

resolve_attribute_name(State, #xqAtomicValue{value = V} = A) when is_list(V) ->
   case lists:member($:, V) of
      true ->
         A;
      false ->
         try
            Q = xqerl_types:cast_as(A,'xs:QName',State#state.known_ns),
            (xqerl_types:value(Q))#qname{namespace = 'no-namespace'}
         catch
            _:_ ->
               A
         end
   end;
resolve_attribute_name(_State, #qname{prefix = "*"} = QName) ->
   QName#qname{namespace = "*"};
resolve_attribute_name(_State, #qname{namespace = "*"} = QName) ->
   QName#qname{prefix = "*"};
resolve_attribute_name(_State, #qname{prefix = []} = QName) ->
   QName#qname{namespace = 'no-namespace'};
resolve_attribute_name(State, #qname{namespace = Ns, 
                                     prefix = undefined} = QName) ->
   try
      StatNs    = State#state.known_ns,
      Px = lists:keyfind(Ns, 2, StatNs),
      QName#qname{prefix = element(3,Px)}
   catch
      _:_ ->
         QName
   end;
resolve_attribute_name(State, #qname{prefix = Px} = QName) ->
   try
      StatNs    = State#state.known_ns,
      Ns = lists:keyfind(Px, 3, StatNs),
      QName#qname{namespace = element(2,Ns)}
   catch
      _:_ ->
         ?err('XPST0081')
   end;
% function calls for QName
resolve_attribute_name(_State, QName) ->
   QName.

resolve_attribute_names(State, Attributes) ->
   Fun = fun(#xqAttributeNode{name = QName} = Att) ->
               NewName = resolve_attribute_name(State, QName),
               Att#xqAttributeNode{name = NewName}
         end,
   lists:map(Fun, Attributes).

resolve_pi_name(State, ['empty-sequence'|T]) ->
   resolve_pi_name(State, T);
resolve_pi_name(State, [QName|T]) ->
   [QName|resolve_pi_name(State, T)];
resolve_pi_name(_State, QName) ->
   ?dbg("QName",QName),
   QName.


check_unique_att_names(Attributes) ->
   Names = [{Ns,Ln} || #xqAttributeNode{name = #qname{namespace = Ns, 
                                                      local_name = Ln}} 
            <- Attributes ],
   case lists:sort(Names) == lists:usort(Names) of
      true ->
         ok;
      _ ->
         ?err('XQST0040')
   end.

check_direct_namespaces(Namespaces) ->
   Sorted = lists:sort(Namespaces),
   Unique = lists:usort(Namespaces),
   Prefixes = lists:usort([P || #xqNamespaceNode{name = #qname{prefix = P}} 
                           <- Unique]),
   if length(Sorted) =/= length(Prefixes) ->
         ?err('XQST0071');
      true ->
         ok
   end,    
   lists:foreach(
     fun(#xqNamespaceNode{name = #qname{namespace = N2x, prefix = P2x}}) ->
           P2 = xqerl_types:string_value(P2x),
           N2 = if is_atom(N2x) -> % no-namespace
                      N2x;
                   true ->
                      xqerl_types:string_value(N2x)
                end,
           % attempt to reset xml or xsi namespace
           if P2 == "xml" andalso 
                N2 =/= "http://www.w3.org/XML/1998/namespace" ->
                 ?err('XQST0070');
              P2 =/= "xml" andalso 
                N2 == "http://www.w3.org/XML/1998/namespace" ->
                 ?err('XQST0070');
              P2 == "xmlns" ->
                 ?err('XQST0070');
              P2 =/= "xmlns" andalso 
                N2 == "http://www.w3.org/2000/xmlns/" ->
                 ?err('XQST0070');
              N2 == "" ->
                 ?err('XQST0085');
              true ->
                 #xqNamespace{namespace = N2,prefix = P2}
           end
     end, Namespaces),
   ok.


%% 3.9.1 Direct Element Constructors
handle_direct_constructor(State = #state{base_uri = BU}, 
                          #xqElementNode{name = QName, 
                                         attributes = AttsNs, 
                                         expr = Content} = Node) ->
   InscopeNs = get_inscope_ns(State),
   Namespaces = namespace_nodes(AttsNs),
   Attributes = attribute_nodes(AttsNs),
   State1 = override_namespaces(State, Namespaces),
   %?dbg("Namespaces", State1#state.default_elem_ns),
   QName1 = resolve_element_name(State1, QName),
   Attributes1 = resolve_attribute_names(State1, Attributes),
   Attributes2 = 
     lists:map(fun(Att) ->
                     get_statement(handle_direct_constructor(State1, Att))
               end, Attributes1), 
   %?dbg(?LINE, Content),
   SContent = get_statement(handle_element_content(State1, Content)),
   %?dbg(?LINE, SContent),
   %?dbg(?LINE, QName1),
   ok = check_unique_att_names(Attributes2),
   ok = check_direct_namespaces(Namespaces),
   set_statement(State, 
                 Node#xqElementNode{name = QName1, 
                                    base_uri = ?atomic('xs:anyURI',BU),
                                    attributes = Namespaces ++ Attributes2, 
                                    expr = SContent, 
                                    inscope_ns = InscopeNs});
%% 3.9.1.1 Attributes
handle_direct_constructor(State, #xqAttributeNode{expr = Content} = Node) ->
   S1 = handle_attribute_content(State, Content),
   St = get_statement(S1),
   set_statement(State, Node#xqAttributeNode{expr = St});
%% 3.9.1.2 Namespace Declaration Attributes
%% handle_direct_constructor(State, #xqNamespaceNode{name = QName} = Node) ->
%%    default_return(State, Node);
%% 3.9.2 Other Direct Constructors
handle_direct_constructor(
  State, #xqProcessingInstructionNode{name =#qname{local_name = Ln}} = Node) ->
   case string:lowercase(Ln) of
      "xml" ->
         xqerl_error:error('XPST0003');
      _ ->
         ok
   end,
   set_statement(State, Node#xqProcessingInstructionNode{base_uri = []});
handle_direct_constructor(State, #xqCommentNode{expr = Content} = Node) ->
   S1 = handle_node(State, Content),
   St = get_statement(S1),
   set_statement(State, Node#xqCommentNode{expr = St});
handle_direct_constructor(State, #xqTextNode{expr = Content} ) ->
   S1 = handle_node(State, Content),
   St = get_statement(S1),
   set_statement(State, #xqTextNode{expr = St});
% catch-all for expressions
handle_direct_constructor(State, Cons) ->
   handle_node(State, Cons).

%% 3.9.3.1 Computed Element Constructors
handle_comp_constructor(State = #state{base_uri = BU}, 
                        #xqElementNode{name = Name, expr = Expr} = Node) ->
   InscopeNs = get_inscope_ns(State),
   S1 = get_statement(handle_node(State, Expr)),
   S2 = case Name of
           'empty-sequence' ->
              ?err('XPTY0004');
           #qname{namespace = undefined} ->
              ?err('XPST0081');
           _ ->
              get_statement(handle_node(State, Name))
        end,
   set_statement_and_type(State, 
                          Node#xqElementNode{name = 
                                               resolve_element_name(State, S2),
                                             expr = S1, 
                                             inscope_ns = InscopeNs,
                                             base_uri = 
                                               ?atomic('xs:anyURI',BU)}, 
                          #xqSeqType{type = 'element', occur = one});
%% 3.9.3.2 Computed Attribute Constructors
handle_comp_constructor(State, #xqAttributeNode{name = Name, 
                                                expr = Expr} = Node) ->
   S1 = get_statement(handle_node(State, Expr)),
   Name1 = case Name of
           'empty-sequence' ->
              ?err('XPTY0004');
           #qname{namespace = undefined} ->
              ?err('XPST0081');
           _ ->
              get_statement(handle_node(State, Name))
        end,
   Name2 = resolve_attribute_name(State, Name1),
   set_statement_and_type(State, 
                          Node#xqAttributeNode{name = Name2, expr = S1}, 
                          #xqSeqType{type = 'attribute', occur = one});
%% 3.9.3.3 Document Node Constructors
handle_comp_constructor(State = #state{base_uri = BU}, 
                        #xqDocumentNode{expr = Expr} = Node) -> 
   S1 = get_statement(handle_node(State, Expr)),
   set_statement_and_type(State, 
                          Node#xqDocumentNode{expr = S1, 
                                              base_uri = 
                                                ?atomic('xs:anyURI',BU)}, 
                          #xqSeqType{type = 'document-node', occur = one});
%% 3.9.3.4 Text Node Constructors
handle_comp_constructor(State, #xqTextNode{expr = Content} = Node) -> 
   S1 = handle_node(State, Content),
   St = get_statement(S1),
   ?dbg("St",St),
   if St == {content_expr,'empty-sequence'};
      St == {content_expr,[]} ->
         set_statement(State, 'empty-sequence');
      true ->
         set_statement(State, Node#xqTextNode{expr = St})
   end;  
%% 3.9.3.5 Computed Processing Instruction Constructors
handle_comp_constructor(State, 
                        #xqProcessingInstructionNode{name = Name, 
                                                     expr = Expr} = Node) -> 
   S1 = get_statement(handle_node(State, Expr)),
   S2 = case Name of
           'empty-sequence' ->
              ?err('XPTY0004');
           #qname{namespace = undefined} ->
              ?err('XPST0081');
           #qname{} ->
              get_statement(handle_node(State, Name));
           _ ->
              get_statement(handle_node(State, Name))
        end,
   set_statement_and_type(State, 
                          Node#xqProcessingInstructionNode{name = 
                                                             resolve_pi_name(State, S2), 
                                                           expr = S1}, 
                          #xqSeqType{type = 'processing-instruction', 
                                     occur = one});
%% 3.9.3.6 Computed Comment Constructors
handle_comp_constructor(State, #xqCommentNode{expr = Content} = Node) -> 
   S1 = handle_node(State, Content),
   St = get_statement(S1),
   set_statement(State, Node#xqCommentNode{expr = St});
%% 3.9.3.7 Computed Namespace Constructors
handle_comp_constructor(State, #xqNamespaceNode{name = Name} = Node) -> 
   S2 = case Name of
           'empty-sequence' ->
              ?err('XPTY0004');
           #qname{namespace = undefined} ->
              ?err('XPST0081');
           _ ->
              get_statement(handle_node(State, Name))
        end,
   set_statement_and_type(State, 
                          Node#xqNamespaceNode{name = S2}, 
                          #xqSeqType{type = 'namespace', occur = one}).

%% 3.9.1.3 Content
%% 3.9.1.4 Boundary Whitespace
handle_element_content(State, Content) ->
   Content1 = maybe_strip_whitespace(State,Content),
   Content2 = combine_literals_to_text(Content1),
   CFun = fun([C]) ->
                {content_expr,
                 [get_statement(handle_direct_constructor(State, C))]};
             (C) ->
                get_statement(handle_direct_constructor(State, C))
          end,
   Content3 = lists:map(CFun, Content2), 
   %?dbg("Content ",Content),
   %?dbg("Content1",Content1),
   %?dbg("Content2",Content2),
   %?dbg("Content3",Content3),
   set_statement(State, Content3).

handle_attribute_content(State, Content) ->
   %Content1 = maybe_strip_whitespace(State,Content),
   Content2 = combine_literals(Content),
   CFun = fun(C) ->
                get_statement(handle_direct_constructor(State, C))
          end,
   Content3 = lists:map(CFun, Content2), 
   %?dbg("Content",Content),
   %?dbg("Content1",Content1),
   %?dbg("Content2",Content2),
   %?dbg("Content3",Content3),
   set_statement(State, Content3).

maybe_strip_whitespace(#state{boundary_space = preserve}, undefined) -> [];
maybe_strip_whitespace(#state{boundary_space = preserve}, []) -> [];
maybe_strip_whitespace(#state{boundary_space = preserve}, Content0) ->
   Content = lists:map(fun({content_expr, Expr}) ->
                             Expr;
                          (Expr) ->
                             Expr
                       end, Content0),
   Content;
maybe_strip_whitespace(#state{boundary_space = strip}, undefined) -> [];
maybe_strip_whitespace(#state{boundary_space = strip}, []) -> [];
maybe_strip_whitespace(#state{boundary_space = strip}, {content_expr, Expr}) -> 
   Expr;
maybe_strip_whitespace(#state{boundary_space = strip}, Content0) ->
   Content = lists:map(fun({content_expr, Expr}) ->
                             Expr;
                          (Expr) ->
                             Expr
                       end, Content0),
   Content1 = remove_empty_head(Content),
   Content2 = remove_empty_head(lists:reverse(Content1)),
   %?dbg("Content ",Content),
   %?dbg("Content1",Content1),
   %?dbg("Content2",Content2),
   lists:reverse(Content2).

is_whitespace(Str) ->
   string:trim(Str) == [].

-define(IS_BOUNDARY(I), is_list(I) orelse
                        is_tuple(I) andalso
                        (element(1,I) == content_expr orelse
                         is_record(I, xqElementNode) orelse  
                         is_record(I, xqCommentNode))). % comment nodes??
-define(IS_NONBOUNDARY(I), element(1,I) == char_ref orelse
                           element(1,I) == entity_ref orelse
                           is_record(I, xqTextNode)).

%% Here, boundary whitespace is any whitespace that occurs between the 
%% beginning of the content and the end, or any cdata, or any character 
%% reference, or any content expression 
remove_empty_head([]) -> [];
remove_empty_head([H1,#xqAtomicValue{type = 'xs:string', 
                                     value = Str} = H2,H3|T]) 
   when (?IS_BOUNDARY(H1)) andalso (?IS_BOUNDARY(H3)) ->
   case is_whitespace(Str) of
      true ->
         [H1|remove_empty_head([H3|T])];
      _ ->
         [H1,H2|remove_empty_head([H3|T])]
   end;
remove_empty_head([#xqAtomicValue{type = 'xs:string', 
                                  value = Str} = H2,H3]) 
   when ?IS_BOUNDARY(H3) ->
   case is_whitespace(Str) of
      true ->
         [H3];
      _ ->
         [H2,H3]
   end;
remove_empty_head([H1,#xqAtomicValue{type = 'xs:string', value = Str} = H2]) 
   when ?IS_BOUNDARY(H1) ->
   case is_whitespace(Str) of
      true ->
         [H1];
      _ ->
         [H1,H2]
   end;
remove_empty_head([#xqAtomicValue{type = 'xs:string'} = H1,H2|T]) 
   when ?IS_NONBOUNDARY(H2) ->
   [H1|remove_empty_head([H2|T])];
remove_empty_head([H1,#xqAtomicValue{type = 'xs:string'} = H2,H3|T]) 
   when (?IS_NONBOUNDARY(H1)) andalso (?IS_BOUNDARY(H3)) ->
   [H1,H2|remove_empty_head([H3|T])];
remove_empty_head([H1,#xqAtomicValue{type = 'xs:string'} = H2,H3|T]) 
   when (?IS_BOUNDARY(H1)) andalso (?IS_NONBOUNDARY(H3)) ->
   [H1,H2|remove_empty_head([H3|T])];
remove_empty_head([H1,#xqAtomicValue{type = 'xs:string'} = H2,H3|T]) 
   when (?IS_NONBOUNDARY(H1)) andalso (?IS_BOUNDARY(H3)) ->
   [H1,H2|remove_empty_head([H3|T])];
remove_empty_head([#xqAtomicValue{type = 'xs:string', value = Str} = H2,H3|T]) 
   when ?IS_BOUNDARY(H3) ->
   case is_whitespace(Str) of
      true ->
         remove_empty_head([H3|T]);
      _ ->
         [H2|remove_empty_head([H3|T])]
   end;
remove_empty_head([H1,#xqAtomicValue{type = 'xs:string'} = H2|T]) 
   when ?IS_NONBOUNDARY(H1) ->
   [H1,H2|remove_empty_head(T)];
remove_empty_head([#xqAtomicValue{type = 'xs:string'} = H2,H3|T]) 
   when ?IS_NONBOUNDARY(H3) ->
   [H2|remove_empty_head([H3|T])];
remove_empty_head([#xqAtomicValue{type = 'xs:string', value = Str} = H2]) ->
   case is_whitespace(Str) of
      true ->
         [];
      _ ->
         [H2]
   end;
remove_empty_head([H|T]) -> [H|remove_empty_head(T)].

combine_literals_to_text(undefined) -> [];
combine_literals_to_text([]) -> [];
combine_literals_to_text([{RefType, Val1},
                          #xqAtomicValue{type = 'xs:string', value = Val2}|T]) 
   when RefType =:= char_ref;
        RefType =:= entity_ref ->
   combine_literals_to_text([#xqAtomicValue{type = 'xs:string', 
                                            value = Val1++Val2}|T]);
combine_literals_to_text([#xqAtomicValue{type = 'xs:string', value = Val1},
                          {RefType, Val2}|T]) 
   when RefType =:= char_ref;
        RefType =:= entity_ref ->
   combine_literals_to_text([#xqAtomicValue{type = 'xs:string', 
                                            value = Val1++Val2}|T]);
combine_literals_to_text([{RefType1, Val1},
                          {RefType2, Val2}|T]) 
   when RefType1 =:= char_ref orelse RefType1 =:= entity_ref andalso
        RefType2 =:= char_ref orelse RefType2 =:= entity_ref ->
   combine_literals_to_text([#xqAtomicValue{type = 'xs:string', 
                                            value = Val1++Val2}|T]);
combine_literals_to_text([#xqAtomicValue{type = 'xs:string', value = Val1},
                          #xqAtomicValue{type = 'xs:string', value = Val2}|T]) ->
   combine_literals_to_text([#xqAtomicValue{type = 'xs:string', 
                                            value = Val1++Val2}|T]);
combine_literals_to_text([{RefType,Txt}|T]) 
   when RefType =:= char_ref;
        RefType =:= entity_ref ->
   [#xqTextNode{expr = #xqAtomicValue{type = 'xs:string', 
                                      value = Txt}, 
                cdata = true}|combine_literals_to_text(T)];
combine_literals_to_text([#xqAtomicValue{type = 'xs:string'} = H|T]) ->
   [#xqTextNode{expr = H, cdata = true}|combine_literals_to_text(T)];
combine_literals_to_text([H|T]) ->
   [H|combine_literals_to_text(T)].

combine_literals(undefined) -> [];
combine_literals([]) -> [];
combine_literals([{RefType, Val1},
                  #xqAtomicValue{type = 'xs:string', value = Val2}|T]) 
   when RefType =:= char_ref;
        RefType =:= entity_ref ->
   combine_literals([#xqAtomicValue{type = 'xs:string', value = Val1++Val2}|T]);
combine_literals([#xqAtomicValue{type = 'xs:string', value = Val1},
                  {RefType, Val2}|T]) 
   when RefType =:= char_ref;
        RefType =:= entity_ref ->
   combine_literals([#xqAtomicValue{type = 'xs:string', value = Val1++Val2}|T]);
combine_literals([{RefType1, Val1},{RefType2, Val2}|T]) 
   when (RefType1 =:= char_ref orelse RefType1 =:= entity_ref) andalso
        (RefType2 =:= char_ref orelse RefType2 =:= entity_ref) ->
   combine_literals([#xqAtomicValue{type = 'xs:string', value = Val1++Val2}|T]);
combine_literals([#xqAtomicValue{type = 'xs:string', value = Val1},
                  #xqAtomicValue{type = 'xs:string', value = Val2}|T]) ->
   combine_literals([#xqAtomicValue{type = 'xs:string', value = Val1++Val2}|T]);
combine_literals([{RefType,Txt}|T]) 
   when RefType =:= char_ref;
        RefType =:= entity_ref ->
   [#xqAtomicValue{type = 'xs:string', value = Txt}|combine_literals(T)];
combine_literals([H|T]) ->
   [H|combine_literals(T)].

% the one "special" function
get_static_function(State,
                    {#qname{namespace = ?FN,local_name = "concat"} = Name, 
                     Arity}) when Arity =/= 1 ->
   if Arity > 1 ->
         get_static_function(State, {Name, 1});
      true ->
         ?err('XPST0017')
   end;
get_static_function(_,{#qname{namespace = []}, _}) -> ?err('XPST0081');
get_static_function(#state{known_fx_sigs = Sigs},
                    {#qname{namespace = Ns, local_name = Ln}, Arity}) ->
   Lookup = [#xqFunction{annotations = Annotations,
                         name = Name1,
                         arity = Arity1,
                         params = ParamTypes,
                         type = ReturnType,
                         %body = fun M:F/A}
                         body = Location}
            || {#qname{namespace = Ns1, local_name = Ln1} = Name1,
                ReturnType, 
                Annotations, 
                Location,
                Arity1,
                ParamTypes}
            <- Sigs,
               % ok == ?dbg("Name1",Name1),
               Ns == Ns1 orelse Ns == "Q{"++Ns1++"}",
               Ln == Ln1,
               Arity == Arity1],
   case Lookup of
      [FunSig] ->
         FunSig;
      _ ->
         ?dbg("Ns",Ns),
         ?dbg("Ln",Ln),
         ?dbg("Arity",Arity),
         %?dbg("Sigs",Sigs),
         ?err('XPST0017')%;
%%       _ ->
%%          ?dbg("Ns",Ns),
%%          ?dbg("Ln",Ln),
%%          ?dbg("Arity",Arity),
%%          %?dbg("Sigs",Sigs),
%%          ?err('XQST0049')
   end.

% returns a list of states for the list of Nodes
handle_list(State, NodeList) ->
   lists:map(fun(Arg) ->
                   handle_node(State, Arg)
             end, NodeList).

% ensure the correct type for the function,
% the typing is no longer of interest after in the function
% so typing information doesn't need to be sent back,
% just the statement portion, and possibly count,
% the statements will tell the code builder what casts (if any)
% need to happen
% returns [{Stmnt, Cnt}|...]
check_fun_arg_types(_State, Args, []) -> 
   % this is when anonymous function called with anon function argument
   lists:map(fun(Arg) ->
                   {get_statement(Arg),get_static_count(Arg)}
             end, Args);
check_fun_arg_types(_State, Args, any) ->
   lists:map(fun(Arg) ->
                   {get_statement(Arg),get_static_count(Arg)}
             end, Args);
check_fun_arg_types(State, Args, ArgTypes) ->
   if length(Args) =:= length(ArgTypes) ->
         Arg_ArgTypes = lists:zip(Args, ArgTypes),
         Fun = fun({Arg, #xqVar{type = ArgType}}) ->
                     S1 = check_fun_arg_type(State, Arg, ArgType),
                     Cnt = get_static_count(S1),
                     Stmnt = get_statement(S1),
                     {Stmnt, Cnt};
                  ({Arg, ArgType}) ->
                     S1 = check_fun_arg_type(State, Arg, ArgType),
                     Cnt = get_static_count(S1),
                     Stmnt = get_statement(S1),
                     {Stmnt, Cnt}
               end,
         lists:map(Fun, Arg_ArgTypes);
      true ->
         ?err('XPTY0004')
  end.

check_fun_arg_type(State, Arg, TargetType) ->
   %?dbg("Arg",get_statement(Arg)),
   ParamType = get_statement_type(Arg),
   Param = get_statement(Arg),
   %?dbg("Param",Param),
   ParamType1 = 
        case ParamType of
           #xqSeqType{type = {parameter,_}} -> % passed in as 'item'
              ParamType#xqSeqType{type = item};
           undefined ->
              #xqSeqType{type = item, occur = zero_or_many};
           _ ->
              if Param == 'context-item' ->
                    State#state.context_item_type;
                 true ->
                    ParamType
              end
        end, 
   StatCnt = get_static_count(Arg),
   %?dbg("ParamType",ParamType),
   %?dbg("TargetType",TargetType),
   %?dbg("StatCnt",StatCnt),
   ok = check_occurance_match(ParamType1, TargetType, StatCnt),
   % now check the types
   %?dbg("NoCast",{StatCnt,ParamType1,TargetType}),
   NoCast = check_type_match(ParamType1, TargetType),
   %?dbg("NoCast",{NoCast,StatCnt,ParamType1,TargetType}),
   #xqSeqType{type = TT} = TargetType,
   if NoCast ->
         set_statement(Arg, type_ensure(ParamType1,TargetType,Param));
      NoCast == cast ->
         %?err('XPTY0004');
         set_statement(Arg, {promote_to, Param, TargetType});
      NoCast == atomize andalso 
        (TT == 'xs:QName' orelse TT == 'xs:NOTATION') ->
         ?err('XPTY0117');
      NoCast == atomize ->
         set_statement(Arg, {promote_to, {atomize, Param}, TargetType});
      true ->
         #xqSeqType{type = PT} = ParamType1,
         if PT == 'xs:untypedAtomic' andalso 
              (TT == 'xs:QName' orelse TT == 'xs:NOTATION');
            PT == 'text' andalso 
              (TT == 'xs:QName' orelse TT == 'xs:NOTATION');
            PT == 'attribute' andalso 
              (TT == 'xs:QName' orelse TT == 'xs:NOTATION');
            PT == 'element' andalso 
              (TT == 'xs:QName' orelse TT == 'xs:NOTATION');
            PT == 'document-node' andalso 
              (TT == 'xs:QName' orelse TT == 'xs:NOTATION') ->
               ?err('XPTY0117');
            true ->
               %oops
               ?err('XPTY0004')
         end
   end.

type_ensure(ActType,TargType,Statement) ->
   if ActType#xqSeqType.occur =/= TargType#xqSeqType.occur ->
         {ensure, Statement, TargType};
      true ->
         Statement
   end.

all_atomics([]) -> false;
all_atomics(#xqAtomicValue{}) -> true;
all_atomics(List) when is_list(List) ->
   lists:all(fun(#xqAtomicValue{}) ->
                   true;
                (_) ->
                   false
             end, List);
all_atomics(_) ->
  false.

get_list_type([]) -> #xqSeqType{type = 'empty-sequence', occur = zero};
get_list_type([#xqSeqType{} = S]) -> S;
get_list_type(Types) when is_list(Types) ->
   get_list_type(Types, []);
get_list_type(S) -> S.

get_list_type([], []) ->
   #xqSeqType{type = 'empty-sequence', occur = zero};
get_list_type([], BType) ->
   #xqSeqType{type = xqerl_btypes:get_type(BType), occur = one_or_many};
get_list_type([undefined|Types], Acc) ->
   get_list_type(Types, Acc);
get_list_type([#xqSeqType{type = H}|Types], []) ->
   if H == 'empty-sequence' ->
         get_list_type(Types, []);
      true ->
         case H of
            #xqKindTest{kind = K} ->
               get_list_type(Types, xqerl_btypes:get_type(K));
            #xqFunTest{kind = K} ->
               get_list_type(Types, xqerl_btypes:get_type(K));
            _ ->
               get_list_type(Types, xqerl_btypes:get_type(H))
         end
   end;
get_list_type([#xqSeqType{type = H}|Types], BType) ->
   if H == 'empty-sequence' ->
         get_list_type(Types, BType);
      true ->
         %?dbg("H",H),
         H1 = get_simple_type(H),
         if H1 == 'empty-sequence' ->
               get_list_type(Types, BType);
            true ->
               HType = xqerl_btypes:get_type(H1),
               HN = xqerl_btypes:is_numeric(HType),
               BN = xqerl_btypes:is_numeric(BType),
               if HN andalso BN ->
                     Item = xqerl_btypes:get_type('item'),
                     if Item == HType band BType ->
                           get_list_type(Types, 
                                         xqerl_btypes:get_type('xs:numeric'));
                        true ->
                           get_list_type(Types, HType band BType)
                     end;
                  true ->
                     get_list_type(Types, HType band BType)
               end
         end
   end.

get_simple_type(H) ->
   case H of
      #xqKindTest{kind = K} ->
         K;
      #xqFunTest{kind = map} ->
         map;
      #xqFunTest{kind = array} = Array ->
         get_array_type(Array);
      #xqFunTest{type = any} ->
         item;
      #xqFunTest{type = #xqSeqType{type = K}} ->
         get_simple_type(K);
      _ ->
         %?dbg("H",H),
         H
   end.


get_array_type(#xqFunTest{kind = array, type = any}) ->
   array;
get_array_type(#xqFunTest{kind = array, type = #xqSeqType{type = AType}}) ->
   get_array_type(AType);
get_array_type(#xqFunTest{kind = map}) ->
   map;
get_array_type(O) ->
   ?dbg("O",O),
   O.

% for now until other stuff fixed
check_type_match(A, A) -> 
   true;
check_type_match(_, undefined) -> 
   true;

% everything is an item
check_type_match(#xqSeqType{}, #xqSeqType{type = item}) -> 
   true;
% items are not everything
check_type_match(#xqSeqType{type = item}, #xqSeqType{type = function}) -> 
   % hack HOF function parameters
   true;
check_type_match(#xqSeqType{type = item}, #xqSeqType{type = TargetType}) 
   when ?node(TargetType) -> 
   true;
check_type_match(#xqSeqType{type = item}, 
                 #xqSeqType{type = #xqKindTest{kind = TargetType}}) 
   when ?node(TargetType) -> 
   true;
check_type_match(#xqSeqType{type = item}, _) -> 
    cast;
check_type_match(#xqSeqType{type = 'empty-sequence'}, 
                 #xqSeqType{type = 'xs:error'}) -> 
   true;
check_type_match(#xqSeqType{type = 'empty-sequence'}, 
                 #xqSeqType{type = 'empty-sequence'}) -> 
   true;
check_type_match(#xqSeqType{type = 'empty-sequence'}, 
                 #xqSeqType{occur = O}) 
   when O == one;
        O == one_or_many -> 
   false;
check_type_match(#xqSeqType{occur = O}, 
                 #xqSeqType{type = 'empty-sequence'}) 
   when O == one;
        O == one_or_many -> 
   false;
check_type_match(#xqSeqType{type = #xqFunTest{kind = array, 
                                              type = ParamTypeA}}, 
                 #xqSeqType{type = #xqFunTest{kind = function, 
                                              type = ParamTypeB}}) -> 
   % needs type checking
   check_type_match(ParamTypeA,
                    ParamTypeB);
check_type_match(#xqSeqType{type = node}, 
                 #xqSeqType{type = #xqKindTest{kind = TargetType}}) 
   when ?node(TargetType) -> 
   true;
check_type_match(#xqSeqType{type = 'xs:anyAtomicType'}, 
                 #xqSeqType{type = 'xs:anyAtomicType'}) -> 
   true;
check_type_match(#xqSeqType{type = 'xs:anyAtomicType'}, 
                 #xqSeqType{type = TargetType}) 
   when ?anyAtomicType(TargetType) -> 
   cast;
% check if the types are compatable with/out cast or atomization
check_type_match(#xqSeqType{type = #xqKindTest{kind = ParamType}}, 
                 #xqSeqType{type = TargetType}) 
   when ?node(ParamType) andalso ?anyAtomicType(TargetType) -> 
   atomize;
check_type_match(#xqSeqType{type = ParamType}, 
                 #xqSeqType{type = TargetType}) 
   when ?node(ParamType) andalso ?anyAtomicType(TargetType) -> 
   atomize;
check_type_match(#xqSeqType{type = function}, 
                 #xqSeqType{type = TargetType}) 
   when ?anyAtomicType(TargetType) -> 
   ?err('FOTY0013');
% untyped to number
check_type_match(#xqSeqType{type = 'xs:untypedAtomic'}, 
                 #xqSeqType{type = TargetType}) 
   when ?numeric(TargetType) -> 
   cast;
% untyped to boolean
check_type_match(#xqSeqType{type = 'xs:untypedAtomic'}, 
                 #xqSeqType{type = 'xs:boolean'}) -> 
   cast;
check_type_match(#xqSeqType{type = 'empty-sequence'}, _TargetType) -> true;

check_type_match(#xqSeqType{type = #xqFunTest{kind = K1}}, 
                 #xqSeqType{type = #xqFunTest{kind = function, 
                                              params = any, 
                                              type = any}}) 
   when K1 == 'map';
        K1 == array;
        K1 == function ->
   true;   
check_type_match(#xqSeqType{type = #xqFunTest{kind = map}}, 
                 #xqSeqType{type = #xqFunTest{kind = map, 
                                              params = any, 
                                              type = any}}) ->
   true;   
check_type_match(#xqSeqType{type = #xqFunTest{kind = array}}, 
                 #xqSeqType{type = #xqFunTest{kind = array, 
                                              params = any, 
                                              type = any}}) ->
   true;   
check_type_match(#xqSeqType{type = #xqFunTest{kind = array, type = Type1}}, 
                 #xqSeqType{type = #xqFunTest{kind = array, type = Type2}}) ->
   check_type_match(Type1,Type2);
check_type_match(#xqSeqType{type = #xqFunTest{kind = array, 
                                              type = Type1}}, 
                 #xqSeqType{} = Type2) ->
   case check_type_match(Type1,Type2) of
      true ->
         atomize;
      O ->
         O
   end;
check_type_match(#xqSeqType{type = #xqFunTest{kind = function, 
                                              params = Params1, 
                                              type = Type1}}, 
                 #xqSeqType{type = #xqFunTest{kind = function, 
                                              params = Params2, 
                                              type = Type2}}) ->
   if length(Params1) == length(Params2) ->
         check_type_match(Type1,Type2);
      true ->
         false
   end;
check_type_match(#xqSeqType{type = #xqFunTest{kind = map, 
                                              params = Params1, 
                                              type = Type1}}, 
                 #xqSeqType{type = #xqFunTest{kind = map, 
                                              params = Params2, 
                                              type = Type2}}) ->
   if length(Params1) =:= length(Params2);
      Params1 =:= any;
      Params2 =:= any ->
         check_type_match(Type1,Type2) == true;
      true ->
         false
   end;
check_type_match(#xqSeqType{type = #xqFunTest{kind = function}}, 
                 #xqSeqType{type = #xqFunTest{}}) -> % function coercion 
   true;
check_type_match(#xqSeqType{type = function}, 
                 #xqSeqType{type = #xqFunTest{}}) -> % function coercion 
   true;

% types can come in as EQNames
check_type_match(#xqSeqType{type = #qname{namespace = ?XS, 
                                          local_name = Ln}} = A, B) ->
   Atom = list_to_atom("xs:" ++ Ln),
   check_type_match(A#xqSeqType{type = Atom},B);
check_type_match(A, #xqSeqType{type = #qname{namespace = ?XS, 
                                             local_name = Ln}} = B) ->
   Atom = list_to_atom("xs:" ++ Ln),
   check_type_match(A,B#xqSeqType{type = Atom});

check_type_match(#xqSeqType{type = #xqKindTest{kind = ParamType}}, 
                 #xqSeqType{type = #xqKindTest{kind = TargetType}}) -> 
   % needs name checking
   BP = xqerl_btypes:get_type(ParamType),
   BT = xqerl_btypes:get_type(TargetType),
   check_type_cast(BP, BT);   

check_type_match(#xqSeqType{type = #xqKindTest{kind = ParamType}}, 
                 #xqSeqType{type = 
                              #xqFunTest{type = 
                                           #xqKindTest{kind = TargetType}}}) -> 
   % needs type checking
   BP = xqerl_btypes:get_type(ParamType),
   BT = xqerl_btypes:get_type(TargetType),
   %?dbg("{BP, BT}",{BP, BT}),
   check_type_cast(BP, BT);   
check_type_match(#xqSeqType{type = 
                              #xqFunTest{type = #xqKindTest{kind = ParamType}}}, 
                 #xqSeqType{type = #xqKindTest{kind = TargetType}}) -> 
   % needs type checking
   BP = xqerl_btypes:get_type(ParamType),
   BT = xqerl_btypes:get_type(TargetType),
   check_type_cast(BP, BT);   

check_type_match(#xqSeqType{type = #xqKindTest{}} = A, 
                 #xqSeqType{type = #xqFunTest{type = TargetType}}) -> 
   % needs type checking
   check_type_match(A,TargetType);

check_type_match(#xqSeqType{type = #xqFunTest{type = ParamType}}, 
                 #xqSeqType{type = #xqKindTest{}} = B) -> 
   % needs type checking
   check_type_match(ParamType,B);

check_type_match(ParamType, 
                 #xqSeqType{type = #xqKindTest{kind = TargetType}}) -> 
   % needs name checking
   BP = xqerl_btypes:get_type(ParamType#xqSeqType.type),
   BT = xqerl_btypes:get_type(TargetType),
   check_type_cast(BP, BT);   
check_type_match(#xqSeqType{type = #xqKindTest{kind = ParamType}}, 
                 TargetType) -> % needs name checking
   BP = xqerl_btypes:get_type(ParamType),
   BT = xqerl_btypes:get_type(TargetType#xqSeqType.type),
   check_type_cast(BP, BT);   

check_type_match(ParamType, #xqSeqType{type = #xqFunTest{type = any}}) -> 
   % needs type checking
   check_type_match(ParamType, #xqSeqType{type = function, occur = one});   

check_type_match(ParamType, #xqSeqType{type = #xqFunTest{}}) -> 
   % needs type checking
   check_type_match(ParamType, #xqSeqType{type = function, occur = one});   
check_type_match(#xqSeqType{type = #xqFunTest{}}, TargetType) -> 
   % needs type checking
   check_type_match(#xqSeqType{type = function, occur = one}, TargetType);   

check_type_match(any, _TargetType) ->
   true;
check_type_match(undefined, _TargetType) ->
   true;

check_type_match(ParamType, TargetType) ->
   %?dbg("{ParamType, TargetType}",{ParamType, TargetType}),
   BP = xqerl_btypes:get_type(ParamType#xqSeqType.type),
   try 
      BT = xqerl_btypes:get_type(TargetType#xqSeqType.type),
      check_type_cast(BP, BT)
   catch 
      _:_ ->
         ?err('XPST0051')
   end.

check_type_cast(P, T) ->
   case xqerl_btypes:can_substitute(P, T) of
      true ->
         true;
      _ ->
         case xqerl_btypes:can_promote(P, T) of
            true ->
               cast;
            _ ->
               false
         end
   end.

% check if the occurance marker is okaay for these types in a function
check_occurance_match(#xqSeqType{} = InType, #xqVar{type = TargetType}, Cnt) ->
   check_occurance_match(InType, TargetType, Cnt);
check_occurance_match(#xqSeqType{occur = InType}, 
                      #xqSeqType{occur = TargetType}, undefined) ->
   check_occurance_match1(InType, TargetType, 1);
check_occurance_match(#xqSeqType{occur = InType}, 
                      #xqSeqType{occur = TargetType}, StatCnt) ->
   check_occurance_match1(InType, TargetType, StatCnt).

check_occurance_match1(zero, zero, _) -> ok;
check_occurance_match1(zero, zero_or_one, _) -> ok;
check_occurance_match1(zero, zero_or_many, _) -> ok;

% none for fn:error()
check_occurance_match1(none, zero, _) -> ok;
check_occurance_match1(none, zero_or_one, _) -> ok;
check_occurance_match1(none, zero_or_many, _) -> ok;

check_occurance_match1(zero_or_one, zero, _) -> ok; % maybe
check_occurance_match1(zero_or_one, one, _) -> ok; % maybe
check_occurance_match1(zero_or_one, zero_or_many, _) -> ok;
check_occurance_match1(zero_or_one, zero_or_one, _) -> ok;

check_occurance_match1(one, one, _) -> ok;
check_occurance_match1(one, zero_or_one, _) -> ok;
check_occurance_match1(one, one_or_many, _) -> ok;
check_occurance_match1(one, zero_or_many, _) -> ok;

check_occurance_match1(one_or_many, one, I) when I == 1 -> ok; % maybe
check_occurance_match1(one_or_many, zero_or_one, I) when I =< 1  -> ok; % maybe
check_occurance_match1(one_or_many, one_or_many, _) -> ok;
check_occurance_match1(one_or_many, zero_or_many, _) -> ok;

check_occurance_match1(zero_or_many, zero, _) -> ok; % maybe
check_occurance_match1(zero_or_many, zero_or_one, _) -> ok; % maybe
check_occurance_match1(zero_or_many, one, _) -> ok; % maybe
check_occurance_match1(zero_or_many, one_or_many, _) -> ok; % maybe
check_occurance_match1(zero_or_many, zero_or_many, _) -> ok;
check_occurance_match1(_In, _Target, _) ->
   %?dbg("{In,Target}",{In,Target}),
   ?err('XPTY0004').

check_anon_fun_annos(Annotations) ->
   _ = lists:foreach(
         fun(#annotation{name = 
                           #qname{namespace = "http://www.w3.org/2012/xquery",
                                  local_name = "private"}}) ->
               ?err('XQST0125');
            (#annotation{name = 
                           #qname{namespace = "http://www.w3.org/2012/xquery",
                                  local_name = "public"}}) ->
               ?err('XQST0125');
            (_) ->
               false
         end, Annotations),
   ok.

%% ====================================================================
%% GETTER/SETTERS for static context information being passed around
%% ====================================================================
set_statement(#state{context = #context{} = Ctx} = State, Statement) ->
   %?dbg("Statement",Statement),
   NewCtx = Ctx#context{statement = Statement},
   State#state{context = NewCtx}.

get_statement(#state{context = #context{statement = Statement}}) -> Statement;
get_statement(#xqError{name = #xqAtomicValue{value =  
                               #qname{local_name = Ln}}}) -> 
   {error,list_to_atom(Ln)};
get_statement({'EXIT',
               #xqError{name = #xqAtomicValue{value =  
                                 #qname{local_name = Ln}}}}) -> 
   {error,list_to_atom(Ln)}.

set_statement_type(#state{context = #context{} = Ctx} = State, StatementType) ->
   NewCtx = Ctx#context{statement_type = StatementType},
   State#state{context_item_type = StatementType, context = NewCtx}.

get_statement_type(#state{context = 
                            #context{statement_type = StatementType}}) -> 
   case StatementType of
      undefined ->
         #xqSeqType{};
      _ ->
         StatementType
   end;
get_statement_type(#xqError{}) -> 
   #xqSeqType{type = 'empty-sequence', occur = zero};
get_statement_type({'EXIT',_}) -> 
   #xqSeqType{type = 'empty-sequence', occur = zero}.

set_statement_and_type(#state{context = #context{} = Ctx} = State, 
                       Statement, any) ->
   NewCtx = Ctx#context{statement = Statement, statement_type = undefined},
   State#state{context_item_type = undefined, context = NewCtx};
set_statement_and_type(#state{context = #context{} = Ctx} = State, 
                       Statement, undefined) ->
   NewCtx = Ctx#context{statement = Statement, statement_type = undefined},
   State#state{context_item_type = undefined, context = NewCtx};
set_statement_and_type(#state{context = 
                                #context{static_count = _OldCnt} = Ctx} = State, 
                       Statement, #xqSeqType{occur = Occ} = StatementType) ->
   NewCtx = if Occ == zero;
               Statement == 'empty-sequence' ->
                  Ctx#context{statement = Statement, 
                              statement_type = StatementType, 
                              static_count = 0};
               Occ == one ->
                  Ctx#context{statement = Statement, 
                              statement_type = StatementType, 
                              static_count = 1};
               true ->
                  Ctx#context{statement = Statement, 
                              statement_type = StatementType, 
                              static_count = undefined}
            end,
   State#state{context_item_type = StatementType, context = NewCtx}.

set_static_count(#state{context = #context{} = Ctx} = State, StaticCount) ->
   NewCtx = Ctx#context{static_count = StaticCount},
   State#state{context = NewCtx}.

get_static_count(#state{context = #context{static_count = StaticCount}}) -> 
   StaticCount;
get_static_count({'EXIT',_}) -> 
   0.

set_in_constructor(#state{context = #context{} = Ctx} = State, InConstructor) ->
   NewCtx = Ctx#context{in_constructor = InConstructor},
   State#state{context = NewCtx}.

get_in_constructor(#state{context = 
                            #context{in_constructor = InConstructor}}) -> 
   InConstructor.

set_inscope_ns(#state{context = #context{} = Ctx} = State, InscopeNs) ->
   NewCtx = Ctx#context{inscope_ns = InscopeNs},
   State#state{context = NewCtx}.

get_inscope_ns(#state{context = #context{inscope_ns = InscopeNs}}) -> 
   InscopeNs.

set_can_inline(#state{context = #context{} = Ctx} = State, CanInline) ->
   NewCtx = Ctx#context{can_inline = CanInline},
   State#state{context = NewCtx}.

get_can_inline(#state{context = #context{can_inline = CanInline}}) -> 
   CanInline.

global_variable_name(Name) ->
   variable_hash_name(Name).
local_variable_name(Id) ->
   list_to_atom(lists:concat(["__XQ__var_", Id])).
param_variable_name(Id) ->
   list_to_atom(lists:concat([param_prefix(), Id])).

% {Name,Type,Annos,ErlVarName}
add_inscope_variable(State, {A,B,C,D}) ->
   add_inscope_variable(State, {A,B,C,D,false});
% {Name,Type,Annos,ErlVarName,External}
add_inscope_variable(#state{inscope_vars = Vars} = State, 
                     {#qname{namespace = Ns, local_name = Ln},
                      _,_,_,_} = NewVar) ->
   %?dbg("NewVar",NewVar),
   %?dbg("Vars",Vars),
   NewVars = [NewVar |
                [Var || 
                 {#qname{namespace = Ns1, local_name = Ln1},_,_,_,_} = Var 
                 <- Vars, 
                 {Ns1,Ln1} =/= {Ns,Ln}]],
   State#state{inscope_vars = NewVars}.

increase_occur_inscope_vars(#state{inscope_vars = Vars} = State) ->
   O = fun(one) -> one_or_many; 
          (zero_or_one) -> zero_or_many;
          (Ot) -> Ot
       end,
   NewVars = [setelement(2, Var, T#xqSeqType{occur = O(Occ)}) ||
              {_,#xqSeqType{occur = Occ} = T,_,_,_} = Var <- Vars],
   NV = lists:foldl(fun(V,A) ->
                          lists:keyreplace(element(1,V), 1, A, V)
                    end, Vars, NewVars),
   State#state{inscope_vars = NV}.
   

get_variable(#state{inscope_vars = Vars}, 
             #qname{namespace = Ns, local_name = Ln}) ->
   case [Var || 
         {#qname{namespace = Ns1, local_name = Ln1},_,_,_,_} = Var <- Vars, 
         {Ns1,Ln1} == {Ns,Ln}] of
      [O] ->
         O;
      [] ->
         ?dbg("Var",{Ns,Ln}),
         ?dbg("Vars",Vars),
         ?err('XPST0008')
   end;
get_variable(#state{inscope_vars = Vars}, {variable, VarAtom}) ->
   case [Var || {_,_,_,VarAtom1,_} = Var <- Vars, VarAtom1 = VarAtom] of
      [O] ->
         O;
      [] ->
         %?dbg("VarAtom",VarAtom),
         %?dbg("Vars",Vars),
         ?err('XPST0008')
   end.

l(L) when is_list(L) ->
  L;
l(L) ->
  [L].

maybe_zero_type(Type = #xqSeqType{occur = Occur}) ->
   NewOccur = if Occur == one ->
                    zero_or_one;
                 Occur == one_or_many ->
                    zero_or_many;
                 true ->
                    Occur
              end,
   Type#xqSeqType{occur = NewOccur}.

maybe_many_type(Type = #xqSeqType{occur = zero_or_one}) ->
   Type#xqSeqType{occur = zero_or_many};
maybe_many_type(Type = #xqSeqType{occur = one}) ->
   Type#xqSeqType{occur = one_or_many};
maybe_many_type(Type) -> Type.

maybe_unzero_type(Type = #xqSeqType{occur = zero_or_one}) ->
   Type#xqSeqType{occur = one};
maybe_unzero_type(Type = #xqSeqType{occur = zero_or_many}) ->
   Type#xqSeqType{occur = one_or_many};
maybe_unzero_type(Type) -> Type.

update_function_type(State = #state{known_fx_sigs = Sigs}, #xqFunction{} = F) ->
   [NewSig] = scan_functions([F]),
   NewSigs = lists:keyreplace(element(4, NewSig), 4, Sigs, NewSig),
   State#state{known_fx_sigs = NewSigs}.

% generic types for unknown static type/union types
static_operator_type(_Op,undefined,_A2) -> 
   'xs:anyAtomicType';
static_operator_type(_Op,_A1,undefined) -> 
   'xs:anyAtomicType';
static_operator_type(_Op,#xqSeqType{type = item},_A2) -> 
   'xs:anyAtomicType';
static_operator_type(_Op,#xqSeqType{type = 'xs:anyAtomicType'},_A2) -> 
   'xs:anyAtomicType';
static_operator_type(_Op,_A2,#xqSeqType{type = item}) -> 
   'xs:anyAtomicType';
static_operator_type(_Op,_A2,#xqSeqType{type = 'xs:anyAtomicType'}) -> 
   'xs:anyAtomicType';
% nodes are handled as double within operators
static_operator_type(Op,#xqSeqType{type = #xqKindTest{kind = T1}} = A1,A2) 
   when ?node(T1) ->
   static_operator_type(Op,A1#xqSeqType{type = 'xs:double'},A2);
static_operator_type(Op,A1,#xqSeqType{type = #xqKindTest{kind = T2}} = A2) 
   when ?node(T2) ->
   static_operator_type(Op,A1,A2#xqSeqType{type = 'xs:double'});
static_operator_type(Op,#xqSeqType{type = T1} = A1,A2) 
   when ?node(T1) ->
   static_operator_type(Op,A1#xqSeqType{type = 'xs:double'},A2);
static_operator_type(Op,A1,#xqSeqType{type = T2} = A2) 
   when ?node(T2) ->
   static_operator_type(Op,A1,A2#xqSeqType{type = 'xs:double'});

static_operator_type(_,_,#xqSeqType{type = #xqFunTest{kind = Bad}}) 
   when Bad == function;
        Bad == map ->
   ?err('FOTY0013');
static_operator_type(_,#xqSeqType{type = #xqFunTest{kind = Bad}},_) 
   when Bad == function;
        Bad == map ->
   ?err('FOTY0013');
static_operator_type(Op,T1,#xqSeqType{type = #xqFunTest{type = T2}}) ->
   %?dbg("{Op,T1,T2}",{Op,T1,T2}),
   static_operator_type(Op, T1, T2);
static_operator_type(Op,#xqSeqType{type = #xqFunTest{type = T1}},T2) ->
   %?dbg("{Op,T1,T2}",{Op,T1,T2}),
   static_operator_type(Op, T1, T2);
static_operator_type(Op,#xqSeqType{type = T1},T2) ->
   %?dbg("{Op,T1,T2}",{Op,T1,T2}),
   static_operator_type(Op, T1, T2);
static_operator_type(Op,T1,#xqSeqType{type = T2}) ->
   %?dbg("{Op,T1,T2}",{Op,T1,T2}),
   static_operator_type(Op, T1, T2);
static_operator_type(Op, 'xs:numeric', T) -> 
   static_operator_type(Op, 'xs:double', T);
static_operator_type(Op, T, 'xs:numeric') -> 
   static_operator_type(Op, T, 'xs:double');

static_operator_type(Op, 'xs:untypedAtomic', T) -> 
   static_operator_type(Op, 'xs:double', T);
static_operator_type(Op, T, 'xs:untypedAtomic') -> 
   static_operator_type(Op, T, 'xs:double');

static_operator_type('add', Int1, Int2) when ?integer(Int1) andalso ?integer(Int2) -> 'xs:integer';
static_operator_type('add', Int1, 'xs:decimal') when ?integer(Int1) -> 'xs:decimal';
static_operator_type('add', Int1, 'xs:float')   when ?integer(Int1) -> 'xs:float';
static_operator_type('add', Int1, 'xs:double')  when ?integer(Int1) -> 'xs:double';
static_operator_type('add', 'xs:decimal', Int2) when ?integer(Int2) -> 'xs:decimal';
static_operator_type('add', 'xs:decimal', 'xs:decimal') -> 'xs:decimal';
static_operator_type('add', 'xs:decimal', 'xs:float')   -> 'xs:float';
static_operator_type('add', 'xs:decimal', 'xs:double')  -> 'xs:double';
static_operator_type('add', 'xs:float',   Int2) when ?integer(Int2) -> 'xs:float';
static_operator_type('add', 'xs:float',   'xs:decimal') -> 'xs:float';
static_operator_type('add', 'xs:float',   'xs:float')   -> 'xs:float';
static_operator_type('add', 'xs:float',   'xs:double')  -> 'xs:double';
static_operator_type('add', 'xs:double',  Int2) when ?integer(Int2) -> 'xs:double';
static_operator_type('add', 'xs:double',  'xs:decimal') -> 'xs:double';
static_operator_type('add', 'xs:double',  'xs:float')   -> 'xs:double';
static_operator_type('add', 'xs:double',  'xs:double')  -> 'xs:double';

static_operator_type('add', 'xs:date', D) when ?duration(D) -> 'xs:date';
static_operator_type('add', 'xs:dateTime', D) when ?duration(D) -> 'xs:dateTime';
static_operator_type('add', 'xs:dayTimeDuration', 'xs:date') -> 'xs:date';
static_operator_type('add', 'xs:dayTimeDuration', 'xs:dateTime') -> 'xs:dateTime';
static_operator_type('add', 'xs:dayTimeDuration', 'xs:dayTimeDuration') -> 'xs:dayTimeDuration';
static_operator_type('add', 'xs:dayTimeDuration', 'xs:duration') -> 'xs:duration';
static_operator_type('add', 'xs:dayTimeDuration', 'xs:time') -> 'xs:time';
static_operator_type('add', 'xs:duration', 'xs:date') -> 'xs:date';
static_operator_type('add', 'xs:duration', 'xs:dateTime') -> 'xs:dateTime';
static_operator_type('add', 'xs:duration', D) when ?duration(D) -> 'xs:duration';
static_operator_type('add', 'xs:duration', 'xs:time') -> 'xs:time';
static_operator_type('add', 'xs:time', 'xs:dayTimeDuration') -> 'xs:time';
static_operator_type('add', 'xs:time', 'xs:duration') -> 'xs:time';
static_operator_type('add', 'xs:yearMonthDuration', 'xs:date') -> 'xs:date';
static_operator_type('add', 'xs:yearMonthDuration', 'xs:dateTime') -> 'xs:dateTime';
static_operator_type('add', 'xs:yearMonthDuration', 'xs:duration') -> 'xs:duration';
static_operator_type('add', 'xs:yearMonthDuration', 'xs:yearMonthDuration') -> 'xs:yearMonthDuration';


static_operator_type('divide', Int1, Int2) when ?integer(Int1) andalso ?integer(Int2) -> 'xs:decimal';
static_operator_type('divide', Int1, 'xs:decimal') when ?integer(Int1) -> 'xs:decimal';
static_operator_type('divide', Int1, 'xs:float')   when ?integer(Int1) -> 'xs:float';
static_operator_type('divide', Int1, 'xs:double')  when ?integer(Int1) -> 'xs:double';
static_operator_type('divide', 'xs:decimal', Int2) when ?integer(Int2) -> 'xs:decimal';
static_operator_type('divide', 'xs:decimal', 'xs:decimal') -> 'xs:decimal';
static_operator_type('divide', 'xs:decimal', 'xs:float')   -> 'xs:float';
static_operator_type('divide', 'xs:decimal', 'xs:double')  -> 'xs:double';
static_operator_type('divide', 'xs:float',   Int2) when ?integer(Int2) -> 'xs:float';
static_operator_type('divide', 'xs:float',   'xs:decimal') -> 'xs:float';
static_operator_type('divide', 'xs:float',   'xs:float')   -> 'xs:float';
static_operator_type('divide', 'xs:float',   'xs:double')  -> 'xs:double';
static_operator_type('divide', 'xs:double',  Int2) when ?integer(Int2) -> 'xs:double';
static_operator_type('divide', 'xs:double',  'xs:decimal') -> 'xs:double';
static_operator_type('divide', 'xs:double',  'xs:float')   -> 'xs:double';
static_operator_type('divide', 'xs:double',  'xs:double')  -> 'xs:double';

static_operator_type('divide', D, Int2) when ?integer(Int2), ?duration(D) -> D;
static_operator_type('divide', D, 'xs:decimal')when ?duration(D) -> D;
static_operator_type('divide', D, 'xs:float')  when ?duration(D) -> D;
static_operator_type('divide', D, 'xs:double') when ?duration(D) -> D;
static_operator_type('divide', D, D) when ?duration(D) -> 'xs:decimal';
static_operator_type('divide', 'xs:duration', D) when ?duration(D) -> 'xs:decimal';
static_operator_type('divide', D, 'xs:duration') when ?duration(D) -> 'xs:decimal';

static_operator_type('idivide', Int1, Int2) when ?integer(Int1) andalso ?integer(Int2) -> 'xs:integer';
static_operator_type('idivide', Int1, 'xs:decimal') when ?integer(Int1) -> 'xs:integer';
static_operator_type('idivide', Int1, 'xs:float')   when ?integer(Int1) -> 'xs:integer';
static_operator_type('idivide', Int1, 'xs:double')  when ?integer(Int1) -> 'xs:integer';
static_operator_type('idivide', 'xs:decimal', Int2) when ?integer(Int2) -> 'xs:integer';
static_operator_type('idivide', 'xs:decimal', 'xs:decimal') -> 'xs:integer';
static_operator_type('idivide', 'xs:decimal', 'xs:float')   -> 'xs:integer';
static_operator_type('idivide', 'xs:decimal', 'xs:double')  -> 'xs:integer';
static_operator_type('idivide', 'xs:float',   Int2) when ?integer(Int2) -> 'xs:integer';
static_operator_type('idivide', 'xs:float',   'xs:decimal') -> 'xs:integer';
static_operator_type('idivide', 'xs:float',   'xs:float')   -> 'xs:integer';
static_operator_type('idivide', 'xs:float',   'xs:double')  -> 'xs:integer';
static_operator_type('idivide', 'xs:double',  Int2) when ?integer(Int2) -> 'xs:integer';
static_operator_type('idivide', 'xs:double',  'xs:decimal') -> 'xs:integer';
static_operator_type('idivide', 'xs:double',  'xs:float')   -> 'xs:integer';
static_operator_type('idivide', 'xs:double',  'xs:double')  -> 'xs:integer';

static_operator_type('modulo', Int1, Int2) when ?integer(Int1) andalso ?integer(Int2) -> 'xs:integer';
static_operator_type('modulo', Int1, 'xs:decimal') when ?integer(Int1) -> 'xs:decimal';
static_operator_type('modulo', Int1, 'xs:float')   when ?integer(Int1) -> 'xs:float';
static_operator_type('modulo', Int1, 'xs:double')  when ?integer(Int1) -> 'xs:double';
static_operator_type('modulo', 'xs:decimal', Int2) when ?integer(Int2) -> 'xs:decimal';
static_operator_type('modulo', 'xs:decimal', 'xs:decimal') -> 'xs:decimal';
static_operator_type('modulo', 'xs:decimal', 'xs:float')   -> 'xs:float';
static_operator_type('modulo', 'xs:decimal', 'xs:double')  -> 'xs:double';
static_operator_type('modulo', 'xs:float',   Int2) when ?integer(Int2) -> 'xs:float';
static_operator_type('modulo', 'xs:float',   'xs:decimal') -> 'xs:float';
static_operator_type('modulo', 'xs:float',   'xs:float')   -> 'xs:float';
static_operator_type('modulo', 'xs:float',   'xs:double')  -> 'xs:double';
static_operator_type('modulo', 'xs:double',  Int2) when ?integer(Int2) -> 'xs:double';
static_operator_type('modulo', 'xs:double',  'xs:decimal') -> 'xs:double';
static_operator_type('modulo', 'xs:double',  'xs:float')   -> 'xs:double';
static_operator_type('modulo', 'xs:double',  'xs:double')  -> 'xs:double';

static_operator_type('multiply', Int1, Int2) when ?integer(Int1) andalso ?integer(Int2) -> 'xs:integer';
static_operator_type('multiply', Int1, 'xs:decimal') when ?integer(Int1) -> 'xs:decimal';
static_operator_type('multiply', Int1, 'xs:float')   when ?integer(Int1) -> 'xs:float';
static_operator_type('multiply', Int1, 'xs:double')  when ?integer(Int1) -> 'xs:double';
static_operator_type('multiply', 'xs:decimal', Int2) when ?integer(Int2) -> 'xs:decimal';
static_operator_type('multiply', 'xs:decimal', 'xs:decimal') -> 'xs:decimal';
static_operator_type('multiply', 'xs:decimal', 'xs:float')   -> 'xs:float';
static_operator_type('multiply', 'xs:decimal', 'xs:double')  -> 'xs:double';
static_operator_type('multiply', 'xs:float',   Int2) when ?integer(Int2) -> 'xs:float';
static_operator_type('multiply', 'xs:float',   'xs:decimal') -> 'xs:float';
static_operator_type('multiply', 'xs:float',   'xs:float')   -> 'xs:float';
static_operator_type('multiply', 'xs:float',   'xs:double')  -> 'xs:double';
static_operator_type('multiply', 'xs:double',  Int2) when ?integer(Int2) -> 'xs:double';
static_operator_type('multiply', 'xs:double',  'xs:decimal') -> 'xs:double';
static_operator_type('multiply', 'xs:double',  'xs:float')   -> 'xs:double';
static_operator_type('multiply', 'xs:double',  'xs:double')  -> 'xs:double';

static_operator_type('multiply'  ,Int1, D  ) when ?integer(Int1), ?duration(D) -> D;
static_operator_type('multiply'  ,'xs:decimal', D  ) when ?duration(D) -> D;
static_operator_type('multiply'  ,'xs:float'  , D  ) when ?duration(D) -> D;
static_operator_type('multiply'  ,'xs:double' , D  ) when ?duration(D) -> D;

static_operator_type('multiply', D,  Int2) when ?integer(Int2), ?duration(D) -> D;
static_operator_type('multiply', D,  'xs:decimal') when ?duration(D) -> D;
static_operator_type('multiply', D,  'xs:float')   when ?duration(D) -> D;
static_operator_type('multiply', D,  'xs:double')  when ?duration(D) -> D;

static_operator_type('subtract', Int1, Int2) when ?integer(Int1) andalso ?integer(Int2) -> 'xs:integer';
static_operator_type('subtract', Int1, 'xs:decimal') when ?integer(Int1) -> 'xs:decimal';
static_operator_type('subtract', Int1, 'xs:float')   when ?integer(Int1) -> 'xs:float';
static_operator_type('subtract', Int1, 'xs:double')  when ?integer(Int1) -> 'xs:double';
static_operator_type('subtract', 'xs:decimal', Int2) when ?integer(Int2) -> 'xs:decimal';
static_operator_type('subtract', 'xs:decimal', 'xs:decimal') -> 'xs:decimal';
static_operator_type('subtract', 'xs:decimal', 'xs:float')   -> 'xs:float';
static_operator_type('subtract', 'xs:decimal', 'xs:double')  -> 'xs:double';
static_operator_type('subtract', 'xs:float',   Int2) when ?integer(Int2) -> 'xs:float';
static_operator_type('subtract', 'xs:float',   'xs:decimal') -> 'xs:float';
static_operator_type('subtract', 'xs:float',   'xs:float')   -> 'xs:float';
static_operator_type('subtract', 'xs:float',   'xs:double')  -> 'xs:double';
static_operator_type('subtract', 'xs:double',  Int2) when ?integer(Int2) -> 'xs:double';
static_operator_type('subtract', 'xs:double',  'xs:decimal') -> 'xs:double';
static_operator_type('subtract', 'xs:double',  'xs:float')   -> 'xs:double';
static_operator_type('subtract', 'xs:double',  'xs:double')  -> 'xs:double';

static_operator_type('subtract', 'xs:date', 'xs:date') -> 'xs:dayTimeDuration';
static_operator_type('subtract', 'xs:date', D) when ?duration(D) -> 'xs:date';
static_operator_type('subtract', 'xs:dateTime', 'xs:dateTime') -> 'xs:dayTimeDuration';
static_operator_type('subtract', 'xs:dateTime', D) when ?duration(D) -> 'xs:dateTime';
static_operator_type('subtract', 'xs:dayTimeDuration', 'xs:duration') -> 'xs:duration';
static_operator_type('subtract', 'xs:dayTimeDuration', 'xs:dayTimeDuration') -> 'xs:dayTimeDuration';
static_operator_type('subtract', 'xs:duration', D) when ?duration(D) -> 'xs:duration';
static_operator_type('subtract', 'xs:time', 'xs:dayTimeDuration') -> 'xs:time';
static_operator_type('subtract', 'xs:time', 'xs:duration') -> 'xs:time';
static_operator_type('subtract', 'xs:time', 'xs:time') -> 'xs:dayTimeDuration';
static_operator_type('subtract', 'xs:yearMonthDuration', 'xs:duration') -> 'xs:duration';
static_operator_type('subtract', 'xs:yearMonthDuration', 'xs:yearMonthDuration') -> 'xs:yearMonthDuration';

static_operator_type(_,'empty-sequence',_) -> 'empty-sequence';
static_operator_type(_,_,'empty-sequence') -> 'empty-sequence';
static_operator_type(_,_,_) ->
   ?err('XPTY0004').

inverse_numeric_type('xs:nonPositiveInteger') -> 'xs:positiveInteger';
inverse_numeric_type('xs:positiveInteger') -> 'xs:nonPositiveInteger';
inverse_numeric_type('xs:nonNegativeInteger') -> 'xs:negativeInteger';
inverse_numeric_type('xs:negativeInteger') -> 'xs:nonNegativeInteger';
inverse_numeric_type('xs:unsignedByte') -> 'xs:byte';
inverse_numeric_type('xs:unsignedShort') -> 'xs:short';
inverse_numeric_type('xs:unsignedInt') -> 'xs:int';
inverse_numeric_type('xs:unsignedLong') -> 'xs:long';
inverse_numeric_type(Other) -> Other.
  

atomized_node_type(#xqSeqType{type = #xqFunTest{type = Type}}) ->
   atomized_node_type(Type);
atomized_node_type(#xqSeqType{type = namespace} = St) ->
   St#xqSeqType{type = 'xs:string'};
atomized_node_type(#xqSeqType{type = 'processing-instruction'} = St) ->
   St#xqSeqType{type = 'xs:string'};
atomized_node_type(#xqSeqType{type = comment} = St) ->
   St#xqSeqType{type = 'xs:string'};
atomized_node_type(#xqSeqType{} = St) ->
   St#xqSeqType{type = 'xs:untypedAtomic'}.

placeholders(Args) ->
   [#xqVar{id = Id,
           name = #qname{local_name = "aVeryLongBogusName__" ++
                                        integer_to_list(Id)}}
   || {'?',Id} <- Args].

placeholders_1(any,Args) ->
   [#xqVar{id = Id,
           type = #xqSeqType{type = item, occur = zero_or_many},
           name = #qname{local_name = "aVeryLongBogusName__" ++ 
                                        integer_to_list(Id)}}
   || {'?',Id} <- Args];
placeholders_1(Params,Args) ->
   [#xqVar{id = Id,
           type = P,
           name = #qname{local_name = "aVeryLongBogusName__" ++ 
                                        integer_to_list(Id)}}
   || {P, {'?',Id}} <- lists:zip(Params, Args)].

param_prefix() -> "__Param__var_".


      
   