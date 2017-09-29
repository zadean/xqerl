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

%% @doc  Static phase of compilation.

-module(xqerl_static).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([handle_tree/1]).
-export([pro_def_elem_ns/1]).
-export([pro_glob_variables/1]).
-export([pro_glob_functions/1]).
-export([pro_namespaces/3]).
-export([pro_mod_imports/1]).
-export([pro_context_item/2]).
-export([overwrite_static_namespaces/2]).
-export([scan_functions/1]).
-export([scan_variables/2]).


-define(true,#xqAtomicValue{type = 'xs:boolean', value = true}).
-define(false,#xqAtomicValue{type = 'xs:boolean', value = false}).
-define(atomic(Type,Val),#xqAtomicValue{type = Type, value = Val}).
-define(err(Code),xqerl_error:error(Code)).

% state should hold the entire static context, augmented by statements that can do it in their own scope.
-record(context,{statement,      % possibly optimized statement
                 statement_type, % give type information back to caller
                 inscope_ns,
                 static_count                 
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
         context
   }).

handle_tree(#xqModule{version = {Version,Encoding}, 
                   prolog = Prolog, 
                   type = ModuleType,% main|library, 
                   body = Body} = Mod) ->
   State = #state{},
   _ = erlang:put(var_id, 1),
   _ = valid_ver(Version),
   _ = valid_enc(string:to_upper(Encoding)),      
   _ = init_mod_scan(),
   DefElNs     = pro_def_elem_ns(Prolog),
   _           = pro_def_func_ns(Prolog),
   ContextItem = pro_context_item(Prolog,ModuleType),
   Setters     = pro_setters(Prolog),
   Namespaces  = pro_namespaces(Prolog,[],DefElNs),
   ?dbg(?LINE,Namespaces),
   Imports     = pro_mod_imports(Prolog),
   Options     = pro_options(Prolog),
   Variables   = pro_glob_variables(Prolog),
   Functions   = pro_glob_functions(Prolog),
   StaticNamespaces = xqerl_context:static_namespaces(),
   ConstNamespaces  = overwrite_static_namespaces(StaticNamespaces, Namespaces),
   StaticImports = [{"xqerl_fn", "fn"},
                    {"xqerl_xs", "xs"},
                    {"xqerl_math", "math"},
                    {"xqerl_map", "map"},
                    {"xqerl_array", "array"},
                    {"xqerl_error", "error"}
                   ],
   {Functions1, Variables1} = xqerl_context:get_module_exports(Imports ++ StaticImports),
   %?dbg(?LINE,{Functions1, Variables1}),
   % analyze for cyclical references
   true = analyze_fun_vars(Functions, Variables),
   State1 = scan_setters(State, Setters),
   State2 = scan_namespaces(State1, ConstNamespaces),
   OptionAbs = scan_options(Options),
   FunctionSigs = scan_functions(Functions),
   ?dbg("FunctionSigs",FunctionSigs),
   %ok = xqerl_context:import_variables(Variables1),
   %ok = xqerl_context:import_functions(Functions1),
   VariableSigs = scan_variables(State2,Variables),
   
   State3 = State2#state{known_collations = ["http://www.w3.org/2005/xpath-functions/collation/codepoint"], % move this someplace configurable
                         default_collation = "http://www.w3.org/2005/xpath-functions/collation/codepoint",  % move this someplace configurable
                         default_elem_ns = DefElNs,
                         known_fx_sigs = FunctionSigs ++ Functions1,
                         inscope_vars = VariableSigs ++ Variables1,
                         context = #context{}
                         },
   ?dbg("ContextItem",ContextItem),
   CtxItemType = if ContextItem == [] ->
                       #xqSeqType{type = item, occur = zero_or_many};
                    true ->
                       get_statement_type(handle_node(State3, ContextItem))
                 end,
   ?dbg("CtxItemType",CtxItemType),
   
   % here do the variable and function bodies
   VarPart = lists:map(fun(Node) ->
                             get_statement(handle_node(State3, Node))
                       end, Variables),
   FunPart = lists:map(fun(Node) ->
                             IState = handle_node(State3, Node),
                             ?dbg("Node",Node),
                             get_statement(IState)
                       end, Functions),
   ?dbg("VarPart",VarPart),
   ?dbg("FunPart",FunPart),
   
   State4 = State3#state{context_item_type = CtxItemType,
                         known_fx_sigs = scan_functions(FunPart) ++ Functions1,
                         inscope_vars = scan_variables(State2,VarPart) ++ Variables1},
   
   FinalState = handle_node(State4, Body),
   S1 = FinalState#state.context#context.statement,
   %%% for now, return a map with everything in it for the abstract part. just until it has no idea of static context
   EmptyMap = #{namespaces => FinalState#state.known_ns,
                variables => [],
                var_tuple => [],
                iter => [],
                iter_loop => [],
                ctx_var => 'Ctx0',
                parameters => [],
                'boundary-space' => FinalState#state.boundary_space,
                'construction-mode' => FinalState#state.construction_mode,
                'default-collation' => FinalState#state.default_collation,
                'base-uri' => ?atomic('xs:anyURI', FinalState#state.base_uri),
                'ordering-mode' => FinalState#state.order_mode,
                'empty-seq-order' => FinalState#state.empty_order,
                'copy-namespaces' => FinalState#state.copy_ns_mode,
                body => Mod#xqModule{prolog = Prolog, % just for now
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


handle_node(State, [Node]) -> 
   handle_node(State, Node);
handle_node(State, Nodes) when is_list(Nodes) ->
   All = lists:map(fun(Node) ->
                     St = handle_node(State, Node),
                     S = get_statement(St),
                     T = get_statement_type(St),
                     {S,T}
                   end, Nodes),
   Statements = [S || {S,T} <- All, T =/= #xqSeqType{type = 'empty-sequence', occur = zero}],
   Types = [T || {_S,T} <- All, T =/= #xqSeqType{type = 'empty-sequence', occur = zero}],
   ?dbg("Types",Types),
   Type = get_list_type(Types),
   set_statement_and_type(State, Statements, Type);
%% 3.1 Primary Expressions
handle_node(State, #xqQuery{query = Qry} )-> 
   Statements = lists:map(fun(Q) ->
                                #state{context = #context{statement = S}} = handle_node(State, Q),
                                S
                          end, Qry),
   set_statement(State, #xqQuery{query = Statements});
%% 3.1.1 Literals
handle_node(State, #xqAtomicValue{type = T} = At) -> 
   ?dbg("T",T),
   S1 = set_statement_type(State, #xqSeqType{type = T, occur = one}),
   S2 = set_static_count(S1, 1),
   S3 = set_statement(S2, At),
   S3;
%% 3.1.2 Variable References
handle_node(State, #xqVarRef{name = Name}) -> 
   St = get_variable(State, Name),
   ?dbg("St",St),
   Val = element(4, St), % ErlVar
   Type = element(2, St),
   set_statement_and_type(State, {variable, Val}, Type);
%% 3.1.3 Parenthesized Expressions
handle_node(State, {sequence, Expr}) -> 
   S = handle_node(State, Expr),
   St = get_statement(S),
   T = get_statement_type(S),
   ?dbg("{St,T}",{St,T}),
   if is_list(St) ->
         Cnt = get_static_count(S),
         ?dbg("Cnt",Cnt),
         set_static_count(
           set_statement_and_type(State, {sequence, St}, T), Cnt);
      true ->
         set_statement_and_type(State, St, T)
   end;
%% 3.1.4 Context Item Expression
handle_node(State = #state{context_item_type = CIType}, 'context-item') -> 
   set_statement_and_type(State, 'context-item', CIType);
handle_node(State, {'context-item', {Type,External,Expr}} )-> 
   S1 = handle_node(State, Expr),
   St1 = get_statement(S1),
   ST  = get_statement_type(S1),
   set_statement_and_type(State, St1, ST);
%% 3.1.5 Static Function Calls
handle_node(State, {'partial-function-call', {name, Name}, {arity, Arity}, {args, Args}} = Node) -> default_return(State, Node);
%% 3.1.5.1 Evaluating Static and Dynamic Function Calls
%% 3.1.5.2 Function Conversion Rules
%% 3.1.5.3 Function Coercion
%% 3.1.6 Named Function References
handle_node(State, {'function-ref', #qname{} = Name, Arity}) -> 
   F = get_static_function(State, {Name, Arity}),
   set_statement_and_type(State, F, #xqSeqType{type = function, occur = one});
%% 3.1.7 Inline Function Expressions
handle_node(State, #xqVar{type = VarType, expr = E} = Node) -> 
   %inscope_vars
   S1 = handle_node(State, E),
   St1 = get_statement(S1),
   ST  = get_statement_type(S1),
   set_statement(State, Node#xqVar{type = ST, expr = St1});
handle_node(State, #xqFunction{type = _Type, params = Params, body = Expr} = Node) -> 
   % add parameters to state
   State1 = lists:foldl(fun(#xqVar{id = Id,name = Name,type = Type}, TState) ->
                           ErlVarName = local_variable_name(Id),
                           NewVar  = {Name,Type,[],ErlVarName},
                           add_inscope_variable(TState, NewVar)
                        end, State, Params),
   S1 = handle_node(State1, Expr),
   St1 = get_statement(S1),
   ST  = get_statement_type(S1),
   ?dbg("ST", ST),
   set_statement(State, Node#xqFunction{type = ST, body = St1});

%% 3.1.8 Enclosed Expressions
handle_node(State, {expr, Expr} = Node) -> default_return(State, Node);

%% 3.2 Postfix Expressions
handle_node(State, {postfix, {'function-call', _, _, _} = Fx, PostFixArgs}) -> 
   % postfix with a function call will be fn:function-lookup
   S1 = handle_node(State, Fx),
   St = get_statement(S1),
   Ty = get_statement_type(S1),
   Ty1 = maybe_zero_type(Ty),
   ?dbg("postfix Ty", Ty),
   set_statement_and_type(State, {postfix, St, PostFixArgs}, Ty1);

handle_node(State, {postfix, {'function-ref',Q,V}, #xqPostfixStep{predicates = [{arguments,Args}]}} = Node) -> default_return(State, Node);
handle_node(State, {postfix, #xqVarRef{} = Var, #xqPostfixStep{} = Step} = Node) -> default_return(State, Node);
handle_node(State, {postfix, Sequence, Filters }) -> 
   S1 = handle_node(State, Sequence),
   St = get_statement(S1),
   Ty = get_statement_type(S1),
   set_statement_and_type(State, {postfix, St, Filters}, Ty);

%% 3.2.1 Filter Expressions
%% 3.2.2 Dynamic Function Calls
%% 3.3 Path Expressions
%% 3.3.1 Relative Path Expressions
%% 3.3.1.1 Path operator (/)
%% 3.3.2 Steps
%% the type of a step path is the last steps type as 0 or many
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
handle_node(State, {root}) ->
   set_statement_and_type(State, {'root'}, #xqSeqType{type = 'node', occur = zero_or_one});
handle_node(State, {step, #xqVarRef{} = Var, Step}) ->
   State1 = handle_node(State, Step),
   State2 = handle_node(State, Var),
   Val = get_statement(State1),
   Val2 = get_statement(State2),
   Typ = get_statement_type(State1),
   set_statement_and_type(State, {step, Val2, Val}, Typ);
handle_node(State, {step, Base, Step}) ->
   State1 = handle_node(State, Step),
   State2 = handle_node(State, Base),
   Val1 = get_statement(State1),
   Val2 = get_statement(State2),
   Typ = get_statement_type(State1),
   set_statement_and_type(State, {step, Val2, Val1}, Typ);
handle_node(State, {step, Base}) -> 
   St = handle_node(State, Base),
   S = get_statement(St),
   set_statement_and_type(St, {step, S}, #xqSeqType{type = node, occur = zero_or_many});
%% handle_node(State, {step, {'function-call', Name, Arity, _} = Base, Step} = Node) -> 
%%    #xqFunction{type = Type} = get_static_function(State, {Name, Arity}),
%%    S1 = set_statement_type(State, Type),
%%    set_statement(S1, Node);
%% handle_node(State, {step, {'function-ref', _, _} = FuncStep, Next} = Node) -> default_return(State, Node);
%% handle_node(State, {step, {expr, Base}, Step}) ->
%%    State1 = handle_node(State, Step),
%%    State2 = handle_node(State, Base),
%%    Val1 = get_statement(State1),
%%    Val2 = get_statement(State2),
%%    Typ = get_statement_type(State1),
%%    set_statement_and_type(State, {step, {expr, Val2}, Val1}, Typ);


%% 3.3.2.1 Axes
handle_node(State, #xqAxisStep{} = Node) -> default_return(State, Node);
%% 3.3.2.2 Node Tests
handle_node(State, #xqAxisStep{direction = Direction, axis = Axis, node_test = #xqKindTest{kind = Kind, name = KName} = Kt, predicates = Preds} = Node) -> default_return(State, Node);
handle_node(State, #xqAxisStep{direction = Direction, axis = Axis, node_test = #xqNameTest{name = Q}, predicates = Preds} = Node) -> default_return(State, Node);
%% 3.3.3 Predicates within Steps
%% 3.3.4 Unabbreviated Syntax
%% 3.3.5 Abbreviated Syntax
%% 3.4 Sequence Expressions
handle_node(State, 'empty-expr' = Node) -> default_return(State, Node);
handle_node(State, 'empty-sequence') ->
   S1 = set_statement(State, []),
   S2 = set_static_count(S1, 0),
   set_statement_type(S2, #xqSeqType{type = 'empty-sequence', occur = zero});
%% 3.4.1 Constructing Sequences
handle_node(State, {range, Expr1, Expr2} = _Node) -> 
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   S3 = set_statement(State, {range, S1, S2}),
   Atomics = both_atomics(S1, S2),
   if Atomics ->
         #xqAtomicValue{value = Diff} = xqerl_operators:subtract(S2, S1),
         Cnt = if Diff < 0 ->
                     0;
                  true ->
                     Diff + 1
               end,
         ?dbg("Cnt",Cnt),
         set_static_count(
            set_statement_type(S3, #xqSeqType{type = 'xs:integer', occur = one_or_many}), Cnt);
      true ->
         set_statement_type(S3, #xqSeqType{type = 'xs:integer', occur = zero_or_many})
   end;
         
%% 3.4.2 Combining Node Sequences
handle_node(State, {'union', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'intersect', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'except', Expr1, Expr2} = Node) -> default_return(State, Node);
%% 3.5 Arithmetic Expressions
handle_node(State, {'add', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:add(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         T1 = get_statement_type(S1),
         T2 = get_statement_type(S2),
         T3 = static_operator_type('add',T1,T2),
         set_statement_and_type(State, {'add', St1, St2}, #xqSeqType{type = T3, occur = one})
   end; 
handle_node(State, {'subtract', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   %?dbg("{Atomic, St1, St2}",{Atomic, St1, St2}),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:subtract(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         T1 = get_statement_type(S1),
         T2 = get_statement_type(S2),
         ?dbg("{T1,T2}",{T1,T2}),
         T3 = static_operator_type('subtract',T1,T2),
         ?dbg("{T3}",{T3}),
         set_statement_and_type(State, {'subtract', St1, St2}, #xqSeqType{type = T3, occur = one})
   end; 
handle_node(State, {'multiply', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:multiply(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         T1 = get_statement_type(S1),
         T2 = get_statement_type(S2),
         T3 = static_operator_type('multiply',T1,T2),
         set_statement_and_type(State, {'multiply', St1, St2}, #xqSeqType{type = T3, occur = one})
   end; 
handle_node(State, {'divide', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:divide(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         T1 = get_statement_type(S1),
         T2 = get_statement_type(S2),
         T3 = static_operator_type('divide',T1,T2),
         set_statement_and_type(State, {'divide', St1, St2}, #xqSeqType{type = T3, occur = one})
   end; 
handle_node(State, {'integer-divide', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:idivide(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         T1 = get_statement_type(S1),
         T2 = get_statement_type(S2),
         T3 = static_operator_type('idivide',T1,T2),
         set_statement_and_type(State, {'integer-divide', St1, St2}, #xqSeqType{type = T3, occur = one})
   end; 
handle_node(State, {'modulo', Expr1, Expr2}) ->
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   St1 = get_statement(S1),
   St2 = get_statement(S2),
   Atomic = both_atomics(St1, St2),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:modulo(St1, St2),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         T1 = get_statement_type(S1),
         T2 = get_statement_type(S2),
         T3 = static_operator_type('modulo',T1,T2),
         set_statement_and_type(State, {'modulo', St1, St2}, #xqSeqType{type = T3, occur = one})
   end; 
handle_node(State, {'unary', '+', Expr1} = _Node) ->
   St1 = get_statement(handle_node(State, Expr1)),
   Atomic = all_atomics(St1),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:unary_plus(St1),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         set_statement_and_type(State, {'unary', '+', St1}, #xqSeqType{type = 'xs:numeric', occur = one})
   end; 
handle_node(State, {'unary', '-', Expr1} = _Node) -> 
   St1 = get_statement(handle_node(State, Expr1)),
   Atomic = all_atomics(St1),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:unary_minus(St1),
         set_statement_and_type(State, Eq, #xqSeqType{type = T, occur = one});
      true ->
         set_statement_and_type(State, {'unary', '-', St1}, #xqSeqType{type = 'xs:numeric', occur = one})
   end; 
%% 3.6 String Concatenation Expressions
handle_node(State, {'concat', Expr1, Expr2} = Node) -> 
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   S3 = {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                 local_name = "concat"}, 2, [S1,S2]},
   set_statement_and_type(State, S3, #xqSeqType{type = 'xs:string', occur = one}); 
%% 3.7 Comparison Expressions
%% 3.7.1 Value Comparisons
handle_node(State, {'eq', Expr1, Expr2}) -> 
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:equal(S1, S2),
         set_statement_and_type(State, Eq, #xqSeqType{type = 'xs:boolean', occur = zero_or_one});
      true ->
         set_statement_and_type(State, {'eq', S1, S2}, #xqSeqType{type = 'xs:boolean', occur = zero_or_one})
   end; 
handle_node(State, {'ne', Expr1, Expr2}) ->
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:not_equal(S1, S2),
         set_statement_and_type(State, Eq, #xqSeqType{type = 'xs:boolean', occur = zero_or_one});
      true ->
         set_statement_and_type(State, {'ne', S1, S2}, #xqSeqType{type = 'xs:boolean', occur = zero_or_one})
   end; 
handle_node(State, {'ge', Expr1, Expr2}) ->
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:greater_than_eq(S1, S2),
         set_statement_and_type(State, Eq, #xqSeqType{type = 'xs:boolean', occur = zero_or_one});
      true ->
         set_statement_and_type(State, {'ge', S1, S2}, #xqSeqType{type = 'xs:boolean', occur = zero_or_one})
   end; 
handle_node(State, {'gt', Expr1, Expr2}) ->
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:greater_than(S1, S2),
         set_statement_and_type(State, Eq, #xqSeqType{type = 'xs:boolean', occur = zero_or_one});
      true ->
         set_statement_and_type(State, {'gt', S1, S2}, #xqSeqType{type = 'xs:boolean', occur = zero_or_one})
   end; 
handle_node(State, {'le', Expr1, Expr2}) ->
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:less_than_eq(S1, S2),
         set_statement_and_type(State, Eq, #xqSeqType{type = 'xs:boolean', occur = zero_or_one});
      true ->
         set_statement_and_type(State, {'le', S1, S2}, #xqSeqType{type = 'xs:boolean', occur = zero_or_one})
   end; 
handle_node(State, {'lt', Expr1, Expr2}) ->
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:less_than(S1, S2),
         set_statement_and_type(State, Eq, #xqSeqType{type = 'xs:boolean', occur = zero_or_one});
      true ->
         set_statement_and_type(State, {'lt', S1, S2}, #xqSeqType{type = 'xs:boolean', occur = zero_or_one})
   end; 
%% 3.7.2 General Comparisons
handle_node(State, {Op, Expr1, Expr2} = _Node) when Op == '=';
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
         set_statement_and_type(State, Eq, #xqSeqType{type = 'xs:boolean', occur = zero_or_one});
      true ->
         set_statement_and_type(State, {Op, S1, S2}, #xqSeqType{type = 'xs:boolean', occur = zero_or_one})
   end; 
%% 3.7.3 Node Comparisons
handle_node(State, {'is', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'<<', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'>>', Expr1, Expr2} = Node) -> default_return(State, Node);
%% 3.8 Logical Expressions
handle_node(State, {'and', Expr1, Expr2} = _Node) -> 
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   set_statement_and_type(State, {'and', S1, S2}, #xqSeqType{type = 'xs:boolean', occur = one});
handle_node(State, {'or', Expr1, Expr2} = _Node) ->
   S1 = get_statement(handle_node(State, Expr1)),
   S2 = get_statement(handle_node(State, Expr2)),
   set_statement_and_type(State, {'or', S1, S2}, #xqSeqType{type = 'xs:boolean', occur = one});
%% 3.9 Node Constructors
%% 3.9.1 Direct Element Constructors
handle_node(State, {direct_cons, Cons} = _Node) ->
   S1 = handle_direct_constructor(State, Cons),
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
   ?dbg("St",St),
   set_statement_and_type(State, {direct_cons,St}, #xqSeqType{type = Typ, occur = one});
%% 3.9.1.1 Attributes
%% 3.9.1.2 Namespace Declaration Attributes
%% 3.9.1.3 Content
%% 3.9.1.4 Boundary Whitespace
%% 3.9.2 Other Direct Constructors
%% 3.9.3 Computed Constructors
handle_node(State, {comp_cons, Cons} = _Node) ->
   set_statement_and_type(State, {'node-cons',Cons}, #xqSeqType{type = 'node', occur = zero_or_one});
%% 3.9.3.1 Computed Element Constructors
handle_node(State = #state{base_uri = BU}, #xqElementNode{expr = Expr} = Node) ->
   S1 = get_statement(handle_node(State, Expr)),
   set_statement_and_type(State, Node#xqElementNode{expr = S1, base_uri = ?atomic('xs:anyURI',BU)}, #xqSeqType{type = 'element', occur = one});
%% 3.9.3.2 Computed Attribute Constructors
handle_node(State, #xqAttributeNode{expr = Expr} = Node) ->
   S1 = get_statement(handle_node(State, Expr)),
   set_statement_and_type(State, Node#xqAttributeNode{expr = S1}, #xqSeqType{type = 'attribute', occur = one});
%% 3.9.3.3 Document Node Constructors
handle_node(State = #state{base_uri = BU}, #xqDocumentNode{expr = Expr} = Node) -> 
   S1 = get_statement(handle_node(State, Expr)),
   set_statement_and_type(State, Node#xqDocumentNode{expr = S1, base_uri = ?atomic('xs:anyURI',BU)}, #xqSeqType{type = 'document-node', occur = one});
%% 3.9.3.4 Text Node Constructors
handle_node(State, #xqTextNode{} = Node) -> default_return(State, Node);
%% 3.9.3.5 Computed Processing Instruction Constructors
handle_node(State, #xqProcessingInstructionNode{} = Node) -> default_return(State, Node);
%% 3.9.3.6 Computed Comment Constructors
handle_node(State, #xqCommentNode{} = Node) -> default_return(State, Node);
%% 3.9.3.7 Computed Namespace Constructors
handle_node(State, #xqNamespaceNode{} = Node) -> default_return(State, Node);
%% 3.9.4 In-scope Namespaces of a Constructed Element
%% 3.10 String Constructors
handle_node(State, {'string-constructor', Expr} = Node) -> default_return(State, Node);
%% 3.11 Maps and Arrays
%% 3.11.1 Maps
%% 3.11.1.1 Map Constructors
handle_node(State, {map, Vals} = Node) -> default_return(State, Node);
%% 3.11.1.2 Map Lookup using Function Call Syntax
%% 3.11.2 Arrays
%% 3.11.2.1 Array Constructors
handle_node(State, {array, Expr} = Node) -> default_return(State, Node);
%% 3.11.2.2 Array Lookup using Function Call Syntax
%% 3.11.3 The Lookup Operator ("?") for Maps and Arrays
%% 3.11.3.1 Unary Lookup
%% 3.11.3.2 Postfix Lookup
%% 3.12 FLWOR Expressions
handle_node(State, #xqFlwor{loop = Loop, return = Return} = Node) -> 
   % fold each section into the context
   FlworFold = 
     fun({Section,X}, IState) ->
           ?dbg("Section",Section),
           ?dbg("X",X),
           OldStatement = case get_statement(IState) of
                             undefined ->
                                [];
                             List when is_list(List) ->
                                List;
                             Tuple ->
                                [Tuple]
                          end,
           % for_let is a list of for/let/window statements
           % map/fold the statements and state 
           {Statements, NewState} = 
             lists:mapfoldl(
               fun(V,S1) ->
                     S2 = handle_node(S1, V), % sets the variable
                     St2 = get_statement(S2),
                     ?dbg("St2",St2),
                     {St2,S2}
               end, IState, X),
           ?dbg("Statements",Statements),
           set_statement(NewState, OldStatement ++ [{Section,Statements}])
     end,
   StateEmpty = set_statement_and_type(State, undefined, undefined),
   PreReturnState = lists:foldl(FlworFold, StateEmpty, Loop),
?dbg("prereturn",get_statement(PreReturnState)),
   ReturnState = handle_node(PreReturnState, Return),
   ReturnType = get_statement_type(ReturnState),
?dbg("ReturnType",ReturnType),
?dbg("Return",get_statement(ReturnState)),
   set_statement_and_type(State, #xqFlwor{loop = get_statement(PreReturnState), 
                                          return = get_statement(ReturnState)}, ReturnType);

%% 3.12.1 Variable Bindings
%% 3.12.2 For Clause
handle_node(State,{'for',#xqVar{id = Id,
                                name = Name, 
                                type = Type, 
                                empty = Empty,
                                expr = Expr, 
                                position = undefined}} = _Node) ->
   ErlVarName = local_variable_name(Id),
   ForState = handle_node(State, Expr),
   ForType = get_statement_type(ForState), % for loop type is one out of a sequence
   ForStmt = get_statement(ForState),
   SForType = ForType#xqSeqType{occur = zero_or_one},
   OkType = check_type_match(SForType, Type),
   ?dbg("OkType",OkType),
   NewVar  = {Name,SForType,[],ErlVarName},
   
   State1 = add_inscope_variable(State, NewVar),
   
   NewStatement = {'for',#xqVar{id = Id,
                                name = Name, 
                                type = SForType, 
                                empty = Empty,
                                expr = ForStmt, 
                                position = undefined}},
   set_statement(State1, NewStatement);
handle_node(State,{'for',#xqVar{id = Id,
                                name = Name, 
                                type = Type, 
                                empty = Empty,
                                expr = Expr, 
                                position = #xqPosVar{id = Pid, name = PName}}}) ->
   _ = if PName == Name ->
             xqerl_error:error('XQST0089');
          true ->
             ok
       end,
   ErlVarName = local_variable_name(Id),
   ErlPosName = local_variable_name(Pid),
   ForState = handle_node(State, Expr),
   ForType = get_statement_type(ForState), % for loop type is one out of a sequence
   ForStmt = get_statement(ForState),
   SForType = ForType#xqSeqType{occur = zero_or_one},
   OkType = check_type_match(SForType, Type),
   ?dbg("OkType",OkType),
   NewVar  = {Name,SForType,[],ErlVarName},
   NewPos  = {PName,#xqSeqType{type = 'xs:integer', occur = one},[],ErlPosName},
   
   State1 = add_inscope_variable(State, NewVar),
   State2 = add_inscope_variable(State1, NewPos),
   
   NewStatement = {'for',#xqVar{id = Id,
                                name = Name, 
                                type = SForType, 
                                empty = Empty,
                                expr = ForStmt, 
                                position = #xqPosVar{id = Pid, name = PName}}},
   set_statement(State2, NewStatement);


%% 3.12.3 Let Clause
handle_node(State, {'let',#xqVar{id = Id, 
                                 name = Name, 
                                 type = Type, 
                                 expr = Expr}}) ->
   ErlVarName = local_variable_name(Id),
   LetState = handle_node(State, Expr),
   LetType = get_statement_type(LetState),
   OkType = check_type_match(LetType, Type),
   ?dbg("OkType",OkType),
   NewVar  = {Name,LetType,[],ErlVarName},
   
   State1 = add_inscope_variable(State, NewVar),
   
   NewStatement = {'let',#xqVar{id = Id, 
                                name = Name, 
                                type = LetType, 
                                expr = Expr}},
   set_statement(State1, NewStatement);

%% 3.12.4 Window Clause
handle_node(State, #xqWindow{} = Node) -> 
   default_return(State, Node);
%% 3.12.4.1 Tumbling Windows
%% 3.12.4.2 Sliding Windows
%% 3.12.4.3 Effects of Window Clauses on the Tuple Stream
%% 3.12.5 Where Clause
handle_node(State, {where, Expr} = Node) -> default_return(State, Node);
%% 3.12.6 Count Clause
handle_node(State, {count, Expr} = Node) -> default_return(State, Node);
%% 3.12.7 Group By Clause
handle_node(State, {group, Expr} = Node) -> default_return(State, Node);
%% 3.12.8 Order By Clause
handle_node(State, {order, OExpr, {modifier,_,_,{_,Collation}} = Mod}) -> 
   ?dbg("OExpr",OExpr),
   Collations = State#state.known_collations, 
   DefColl    = State#state.default_collation, 
   BaseUri    = State#state.base_uri,
   % check/resolve the collation
   NewColl =  if Collation == default ->
                     DefColl;
                  true ->
                     xqerl_lib:resolve_against_base_uri(BaseUri, Collation)
               end,
   Ok = lists:member(NewColl, Collations),
   if Ok ->
         NewMod = setelement(4, Mod, {collation, NewColl}),
         SimOExpr = get_statement(handle_node(State, OExpr)),
         set_statement(State, {order, SimOExpr, NewMod});
      true ->
         ?err('XQST0076')
   end;
%% 3.12.9 Return Clause
%% 3.13 Ordered and Unordered Expressions
handle_node(State, {'ordered-expr', Expr} = Node) -> default_return(State, Node);
handle_node(State, {'unordered-expr', Expr} = Node) -> default_return(State, Node);
%% 3.14 Conditional Expressions
handle_node(State, {'if-then-else', If, Then, Else}) -> 
   IfS1 = handle_node(State, If),
   ThS1 = handle_node(State, Then),
   ElS1 = handle_node(State, Else),
   IfSt = get_statement(IfS1),
   ThSt = get_statement(ThS1),
   ElSt = get_statement(ElS1),
   %IfTy = get_statement_type(IfS1),
   #xqSeqType{occur = ThOc} = ThTy = get_statement_type(ThS1),
   #xqSeqType{occur = ElOc} = ElTy = get_statement_type(ElS1),
   ?dbg("{ThTy,ElTy}",{ThTy,ElTy}),
   BothType = if ThOc == zero;
                 ElOc == zero ->
                    maybe_zero_type(get_list_type([ThTy,ElTy]));
                 true ->
                    get_list_type([ThTy,ElTy])
              end,
   set_statement_and_type(State, {'if-then-else', IfSt, ThSt, ElSt}, BothType);
%% 3.15 Switch Expression
handle_node(State, {'switch', RootExpr, [Cases, {'default', DefaultExpr}]} = Node) -> default_return(State, Node);
%% 3.16 Quantified Expressions
handle_node(State, {some, Vars, Test} = Node) -> default_return(State, Node);
handle_node(State, {every, Vars, Test} = Node) -> default_return(State, Node);
%% 3.17 Try/Catch Expressions
handle_node(State, {'try', Expr, {'catch', CatchClauses}} = Node) -> default_return(State, Node);
%% 3.18 Expressions on SequenceTypes
%% 3.18.1 Instance Of
handle_node(State, {instance_of, Expr1, Expr2} = Node) -> default_return(State, Node);
%% 3.18.2 Typeswitch
handle_node(State, {'typeswitch', RootExpr, CasesDefault} = Node) -> default_return(State, Node);
%% 3.18.3 Cast
handle_node(State, {cast_as, Expr1, Expr2} = Node) -> default_return(State, Node);
%% 3.18.4 Castable
handle_node(State, {castable_as, Expr1, Expr2} = Node) -> default_return(State, Node);
%% 3.18.5 Constructor Functions
handle_node(State, Node = {'function-call',#qname{namespace = "http://www.w3.org/2001/XMLSchema",
                                                  local_name = Type}, 1, [#xqAtomicValue{type = AtType, value = AtVal} = Av]}) -> 
   TypeAtom = list_to_atom("xs:" ++ Type),
   BOType = xqerl_btypes:get_type(TypeAtom),
   BIType = xqerl_btypes:get_type(AtType),
   NoCast = xqerl_btypes:can_substitute(BIType, BOType),
   NewNode = if NoCast ->
                   ?dbg("Av",Av),
                   #xqAtomicValue{type = TypeAtom, value = AtVal};
                Type == "QName";
                Type == "NOTATION" ->
                   ?dbg("Av",Av),
                   xqerl_types:cast_as(Av, TypeAtom, State#state.known_ns);
                true ->
                   ?dbg("Av",Av),
                   xqerl_types:cast_as(Av, TypeAtom)
             end,
   set_statement_and_type(State, NewNode, #xqSeqType{type = TypeAtom, occur = zero_or_one});
handle_node(State, {'function-call',#qname{namespace = "http://www.w3.org/2001/XMLSchema",
                                           local_name = _Type}, 1, ['empty-sequence']}) ->
   set_statement_and_type(State, 'empty-sequence', #xqSeqType{type = 'empty-sequence', occur = zero});

handle_node(State, {'function-call',#qname{namespace = "http://www.w3.org/2001/XMLSchema"} = Name, 1, [Other]}) ->
   S1 = handle_node(State, Other),
   St1 = get_statement(S1),
   case St1 of
      #xqAtomicValue{} ->
         ?dbg("St1",St1),
         handle_node(State, {'function-call', Name, 1, [St1]});
      _ ->
         ?dbg("Other",Other),
         #xqFunction{params = Params, type = Type} = F = get_static_function(State, {Name, 1}),
         ?dbg("Params",Params),
         SimpArg = [S1],
         CheckArg = check_fun_arg_types(State, SimpArg, Params),
         NewArgs = lists:map(fun({S,_C}) ->
                                 S
                             end, CheckArg),
         ?dbg("NewArgs",NewArgs),
         ?dbg("Type",Type),
         set_statement_and_type(State, {'function-call', F#xqFunction{params = NewArgs}}, Type)
   end;

% cardinality check functions - defer type checking until runtime
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "zero-or-one"} = Name, 1, [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   SimpArg = handle_node(State, Arg),
   #xqSeqType{type = Type} = get_statement_type(SimpArg),
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, {'function-call',F#xqFunction{params = [ArgSt]}}, #xqSeqType{type = Type, occur = zero_or_one});
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "one-or-more"} = Name, 1, [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   SimpArg = handle_node(State, Arg),
   #xqSeqType{type = Type} = get_statement_type(SimpArg),
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, {'function-call',F#xqFunction{params = [ArgSt]}}, #xqSeqType{type = Type, occur = one_or_many});
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "exactly-one"} = Name, 1, [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   SimpArg = handle_node(State, Arg),
   #xqSeqType{type = Type} = get_statement_type(SimpArg),
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, {'function-call',F#xqFunction{params = [ArgSt]}}, #xqSeqType{type = Type, occur = one});

% list reordering / takes type of the arg
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "reverse"} = Name, 1, [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   SimpArg = handle_node(State, Arg),
   Type = get_statement_type(SimpArg),
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, {'function-call',F#xqFunction{params = [ArgSt], type = Type}}, Type);

% list distinct / takes type of the arg
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "distinct-values"} = Name, 1, [Arg]}) -> 
   F = get_static_function(State, {Name, 1}),
   SimpArg = handle_node(State, Arg),
   Type = get_statement_type(SimpArg),
   ArgSt = get_statement(SimpArg),
   set_statement_and_type(State, {'function-call',F#xqFunction{params = [ArgSt], type = Type}}, Type);


% boolean functions
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "exists"}, 1, [Arg]}) -> 
   S2 = handle_node(State, Arg),
   S1 = get_statement(S2),
   SType = get_statement_type(S2),
   O1 = case SType of
           #xqSeqType{occur = O2} ->
              O2;
           _ ->
              zero_or_many
        end,
   Val = if O1 == one ->
               #xqAtomicValue{type = 'xs:boolean', value = true};
            O1 == one_or_many ->
               #xqAtomicValue{type = 'xs:boolean', value = true};
            true ->
               {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "exists"}, 1, [S1]}
         end,
   set_statement_and_type(State, Val, #xqSeqType{type = 'xs:boolean', occur = one});
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "true"}, 0, []}) -> 
   set_statement_and_type(State, ?true, #xqSeqType{type = 'xs:boolean', occur = one});
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "false"}, 0, []}) -> 
   set_statement_and_type(State, ?false, #xqSeqType{type = 'xs:boolean', occur = one});
% concat
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "concat"} = Name, Arity, Args}) ->
   if Arity == 1 ->
         ?err('XPST0017');
      true ->
         ok
   end,
   F = get_static_function(State, {Name, Arity}),
   SimpArgs = handle_list(State, Args),
   % zero_or_one to allow empty sequence
   CheckArgs = check_fun_arg_types(State, SimpArgs, lists:duplicate(Arity, {xqSeqType,'xs:anyAtomicType',zero_or_one})),
   NewArgs = lists:map(fun({S,undefined}) -> % unknown size
                           S;
                          ({S,C}) when C =< 1 ->
                           S;
                          ({_S,_C}) -> % no known sequences
                           ?err('XPTY0004')
                       end, CheckArgs),
   ?dbg("NewArgs",NewArgs),
   set_statement_and_type(State, {'function-call',F#xqFunction{params = [NewArgs]}}, #xqSeqType{type = 'xs:string', occur = one});


% catch all for all fx's
handle_node(State, {'function-call', Name, Arity, Args} = Node) ->
   #xqFunction{params = Params, type = Type} = F = get_static_function(State, {Name, Arity}),
   ?dbg("{Params,Type}",{Params,Type}),
   SimpArgs = handle_list(State, Args),
   CheckArgs = check_fun_arg_types(State, SimpArgs, Params),
   NewArgs = lists:map(fun({S,_C}) ->
                           S
                       end, CheckArgs),
   set_statement_and_type(State, {'function-call', F#xqFunction{params = NewArgs}}, Type);

%% 3.18.6 Treat
% just sets the static type of an expression
handle_node(State, {treat_as, Expr1, Expr2}) -> 
   ST = handle_node(State, Expr1),
   S1 = get_statement(ST),
   set_statement_and_type(State, S1, Expr2);
%% 3.19 Simple map operator (!)
handle_node(State, {'simple-map', SeqExpr, MapExpr} = Node) -> default_return(State, Node);
%% 3.20 Arrow operator (=>) 
% done in parser
%% 3.21 Validate Expressions
% not implemented
%% 3.22 Extension Expressions
handle_node(State, {pragma, Pragmas, Exprs} = Node) -> default_return(State, Node);
handle_node(State, {pragma, _Pragmas, []} = Node) -> 
   default_return(State, Node);

handle_node(State, {'node-cons', Expr} = Node) -> 
   ST = handle_node(State, Expr),
   S1 = get_statement(ST),
   ST1 = get_statement_type(ST),
   set_statement_and_type(State, S1, ST1);



%% handle_node(State, #xqNamespace{} = N) ->
%% handle_node(State, #xqNameTest{name = Name}) ->
%% handle_node(State, #xqSeqType{type = #qname{namespace = N, prefix = Px, local_name = Ln}, occur = O}) ->
%% handle_node(State, #xqSeqType{type = Atom, occur = O}) when is_atom(Atom) ->
%% handle_node(State, #xqSeqType{type = T, occur = O}) when is_record(T, xqFunTest) ->
%% handle_node(State, #xqSeqType{type = T, occur = O}) when is_record(T, xqKindTest) ->
%% handle_node(State, {'node-cons', Expr0}) ->

%% handle_node(State, undefined) ->
%%    State;

handle_node(State, Node) ->
   %?dbg("UNKNOWN NODE", Node),
   State.


default_return(State, Node) ->
   S1 = set_statement_type(State, #xqSeqType{type = item, occur = zero_or_many}),
   set_statement(S1, Node).

%% ====================================================================
%% Internal functions
%% ====================================================================


analyze_fun_vars(Functions, Variables) ->
   G = digraph:new([acyclic]),
   % add the variables
   %io:format("Variables: ~p ~n", [Variables]),
   M1 = lists:foldl(fun(#xqVar{id = Id, name = Nm}, Map) ->
                        digraph:add_vertex(G, {Id,Nm}),
                        maps:put(Nm, Id, Map);
                       (#xqPosVar{id = Id, name = Nm}, Map) ->
                        digraph:add_vertex(G, {Id,Nm}),
                        maps:put(Nm, Id, Map)
                    end,
                    maps:new(), 
                    Variables),
   % add the functions
   M2 = lists:foldl(fun(#xqFunction{id = Id, name = Nm, arity = Ar}, Map) ->
                       digraph:add_vertex(G, {Id,Nm, Ar}),
                       case maps:is_key({Nm, Ar}, Map) of
                          true ->
                             xqerl_error:error('XQST0034');
                          _ ->
                             maps:put({Nm, Ar}, Id, Map)
                       end
                    end, 
                    M1,
                    Functions),
   % globals are set now recurse for dependencies
   %_ = x(G, M2, Variables, []),
   % comment out / only checking variables ??
   _ = x(G, M2, Functions ++ Variables, []),
   _ = digraph:vertices(G),
   digraph:delete(G).

% scan everything, when new Var found, add edge and make parent, 
% when new Ref found, find id and make link to parent, leave parent as is
x(G, Map, [#xqFunction{id = Id, name = Nm, arity = Ar, body = Body, params = Params}|T], _Data) ->
   digraph:add_vertex(G, {Id,Nm,Ar}),
   % overload params
   Map1 = lists:foldl(fun(#xqVar{id = Id1, name = Nm1}, M) ->
                            digraph:add_vertex(G, {Id1,Nm1}),
                            maps:put(Nm1, Id1, M)
                      end, Map, Params),
   x(G, Map1, {Id,Nm, Ar}, Body),
   x(G, Map, T, []);
x(G, Map, [#xqVar{id = Id, name = Nm, value = Body}|T], _Data) ->
   %?dbg(?LINE,{Body,{Id,Nm}}),
   digraph:add_vertex(G, {Id,Nm}),
   x(G, Map, {Id,Nm}, Body),
   x(G, Map, T, []);
x(G, Map, Parent, Data) when is_list(Data) ->
   lists:foldl(fun(D,M) ->
                       x(G, M, Parent, D)
                 end, Map, Data);
x(G, Map, Parent, Data) when is_tuple(Data) ->
   %?dbg(?LINE,{Data,Parent}),
   case Data of
      #xqFlwor{} ->
         xf(G, Map, Parent, Data),
         Map;
      #xqPosVar{id = Id1, name = Nm1} ->
         digraph:add_vertex(G, {Id1,Nm1}),
         add_edge(G, {Id1,Nm1}, Parent),
         M2 = maps:put(Nm1, Id1, Map),
         x(G, M2, Parent, []),
         M2;
      #xqVar{id = Id, name = Nm, value = D, position = Pos} ->
         digraph:add_vertex(G, {Id,Nm}),
         ?dbg("adding edge",{?LINE, {Id,Nm}, Parent}),
         add_edge(G, {Id,Nm}, Parent),
         M1 = maps:put(Nm, Id, Map),
         case Pos of
            #xqPosVar{id = Id1, name = Nm1} ->
               digraph:add_vertex(G, {Id1,Nm1}),
               add_edge(G, {Id1,Nm1}, Parent),
               M2 = maps:put(Nm1, Id1, M1),
               x(G, M2, Parent, []),
               M2;
            _ ->
               x(G, M1, Parent, D),
               M1
         end;
      #xqVarRef{name = Nm} ->
         case catch maps:get(Nm, Map) of
            {'EXIT',_} ->
               xqerl_error:error('XPST0008');
            Id ->
               ?dbg("adding edge",{?LINE, {Id,Nm}, Parent}),
               add_edge(G, {Id,Nm}, Parent),
               Map
         end;
      {'function-call', Nm, Ar, Args } ->
         %?dbg(?LINE,{{Nm,Ar}, Parent}),
         case maps:is_key({Nm, Ar}, Map) of 
            true ->
               Id = maps:get({Nm, Ar}, Map),
               ?dbg("adding edge",{?LINE, {Id,Nm}, Parent}),
               add_edge(G, {Id,Nm,Ar}, Parent),
               x(G, Map, Parent, Args);
            _ -> % non local function
               ?dbg("nonlocal!!",{Nm,Ar}),
               ok
         end,
         Map;
      _ ->
         D1 = tuple_to_list(Data),
         x(G, Map, Parent, D1)
   end;
x(_G, Map, Parent, Data) ->
   %?dbg("dead end??",{?LINE, {Parent, Data}}),
   Map.

xf(G, Map, Parent, #xqFlwor{loop = Loop, return = Ret}) ->
   Le = lists:flatmap(fun({_,E}) ->
                        E
                    end, Loop),
   LM = lists:foldl(fun(E,M) ->
                        x(G, M, Parent, E)
                    end, Map, Le),
   x(G, LM, Parent, Ret).




add_edge(_G, A, A) ->
   io:format("NOT adding edge ~p -> ~p ~n", [A, A]),
   ok;
%% add_edge(_G, A, B) when size(A) == 3, size(B) == 3 ->
%%    io:format("Function loop NOT adding edge ~p -> ~p ~n", [A, B]),
%%    ok;

add_edge(G, A, B) ->
   %io:format("adding edge ~p -> ~p ~n", [A, B]),
   case digraph:add_edge(G, A, B) of
      {error, E} ->
         io:format("Error: ~p ~p ~p ~n", [E,digraph:vertices(G),digraph:edges(G) ]),
         xqerl_error:error('XQDY0054'); % cyclical reference
      _ ->
         ok
   end.









valid_enc("US-ASCII") -> true;
valid_enc("ISO-8859-1") -> true;
valid_enc("UTF-16") -> true;
valid_enc("UTF-8") -> true;
valid_enc(_) -> xqerl_error:error('XQST0087').

valid_ver("1.0") -> true;
valid_ver("3.0") -> true;
valid_ver("3.1") -> true;
valid_ver(_) -> xqerl_error:error('XQST0031').

init_mod_scan() ->
   erlang:put(imp_mod, 1),
   erlang:put(ctx, 1),
   erlang:put(var_tuple, 1),
   erlang:put(iter, 1),
   erlang:put(iter_loop, 1).

pro_def_elem_ns(Prolog) ->
   D = lists:filtermap(fun({'element-namespace', E}) ->
                             {true,E};
                          (_) -> 
                             false
                       end, Prolog),
   if D == [] ->
         'no-namespace';
      length(D) > 1 ->
         xqerl_error:error('XQST0066');
      true ->
         lists:flatten(D)
   end.

pro_def_func_ns(Prolog) ->
   D = lists:filtermap(fun({'function-namespace', E}) ->
                             {true,E};
                          (_) -> 
                             false
                       end, Prolog),
   if length(D) > 1 ->
         xqerl_error:error('XQST0066');
      true ->
         ok
   end.

pro_context_item(Prolog, library) ->
   D = lists:filter(fun({'context-item', _}) ->
                          true;
                       (_) ->
                          false
                    end, Prolog),
   if length(D) > 0 ->
         xqerl_error:error('XQST0113');
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
         xqerl_error:error('XQST0099');
      true ->
         D
   end.

pro_setters(Prolog) ->
   lists:filtermap(fun({'set', E}) -> {true,E};
                   (_) -> false
                end, Prolog).

pro_namespaces(Prolog,ModNsPx,DefElNs) ->
   Namespaces = [{DefElNs,[]}|
                   lists:filtermap(fun({'namespace', N}) -> {true,N};
                                      ({'module-import', N}) -> {true,N};
                                      (_) -> false
                                   end, Prolog)],
   Namespaces1 = if ModNsPx == [] ->
                       Namespaces;
                    true ->
                       [ModNsPx|Namespaces]
                 end,
   % check for dup prefixes
   _ = lists:foldl(fun({_,Px},Dict) ->
                         case dict:is_key(Px, Dict) of
                            true ->
                               xqerl_error:error('XQST0033');
                            _ ->
                               dict:append(Px, Px, Dict)
                         end
                   end, dict:new(), Namespaces1),
   % check for overwritten namespaces
   _ = lists:foreach(fun({"http://www.w3.org/2000/xmlns/",_}) ->
                         xqerl_error:error('XQST0070');
                      ({"http://www.w3.org/XML/1998/namespace",_}) ->
                         xqerl_error:error('XQST0070');
                      (_) ->
                         ok
                   end, Namespaces1),
   Namespaces1.

pro_mod_imports(Prolog) ->
   Imports = lists:filtermap(fun({'module-import', E}) -> {true,E};
                             (_) -> false
                          end, Prolog),
   % check for dup imports
   _ = lists:foldl(fun({Ns,_},Dict) ->
                         case dict:is_key(Ns, Dict) of
                            true ->
                               xqerl_error:error('XQST0047');
                            _ ->
                               dict:append(Ns, ok, Dict)
                         end
                   end, dict:new(), Imports),
   Imports.

pro_options(Prolog) ->
   lists:filtermap(fun({'option', E}) -> {true,E};
                      (_) -> false
                   end, Prolog).

pro_glob_variables(Prolog) ->
   Variables = lists:filter(fun(#xqVar{}) -> true;
                               (_) -> false
                            end, Prolog),
   % check for dup vars
   _ = lists:foldl(fun(#xqVar{name = #qname{namespace = Ns,local_name = Ln}, annotations = Annos},Dict) ->
                        % check reserved annotation NS http://www.w3.org/2012/xquery
                        _ = lists:foreach(fun({annotation,{#qname{namespace = "http://www.w3.org/2012/xquery", 
                                                                  local_name = L},_}}) when L == "public";
                                                                                            L == "private" ->
                                                ok;
                                             ({annotation,{#qname{namespace = N},_}}) ->
                                                ok = xqerl_lib:reserved_namespaces(N)
                                             
                                          end, Annos),
                         case dict:is_key({Ns,Ln}, Dict) of
                            true ->
                               xqerl_error:error('XQST0049');
                            _ ->
                               dict:append({Ns,Ln}, ok, Dict)
                         end
                   end, dict:new(), Variables),
   Variables.

pro_glob_functions(Prolog) ->
   Functions = lists:filter(fun(#xqFunction{}) -> true;
                               (_) -> false
                            end, Prolog),
   % check for dup funs, reserved namespaces, dup params
   _ = lists:foldl(fun(#xqFunction{name = #qname{namespace = Ns,local_name = Ln}, 
                                   annotations = Annos,
                                   arity = A,
                                   params = Params},Dict) ->
                         % check for dup params
                        _ = lists:foldl(fun(#xqVar{name = Nm1},Dict1) ->
                                           case dict:is_key(Nm1, Dict1) of
                                              true ->
                                                 xqerl_error:error('XQST0039');
                                              _ ->
                                                 dict:append(Nm1, ok, Dict1)
                                           end
                                     end, dict:new(), Params),
                        % check reserved NS 
                        ok = xqerl_lib:reserved_namespaces(Ns),
                        % check reserved annotation NS 
                        _ = lists:foreach(fun({annotation,{#qname{namespace = "http://www.w3.org/2012/xquery", 
                                                                  local_name = L},_}}) when L == "public";
                                                                                            L == "private" ->
                                                ok;
                                             ({annotation,{#qname{namespace = N},_}}) ->
                                                ok = xqerl_lib:reserved_namespaces(N)
                                          end, Annos),
                        % check dup fun
                         case dict:is_key({{Ns,Ln},A}, Dict) of
                            true ->
                               xqerl_error:error('XQST0034');
                            _ ->
                               dict:append({{Ns,Ln},A}, ok, Dict)
                         end
                   end, dict:new(), Functions),
   Functions.

overwrite_static_namespaces(StaticNamespaces, LocalNamespaces) ->
   lists:foldl(fun({Ns,Px},List) ->
                     lists:keystore(Px, 1, List, {Px,Ns})
               end, StaticNamespaces, LocalNamespaces).

set_or_error(Name,List,Default,Error) ->
   case proplists:get_all_values(Name,List) of
      [] ->
         Default;
      [H] ->
         H;
      _ ->
         xqerl_error:error(Error)
   end.  

scan_setters(State, SetList) ->
   BS = set_or_error('boundary-space', SetList, strip, 'XQST0068'),
   DC = set_or_error('default-collation', SetList, "http://www.w3.org/2005/xpath-functions/collation/codepoint", 'XQST0038'),
   BU = set_or_error('base-uri', SetList, xqerl_context:get_static_base_uri(), 'XQST0032'),
   CM = set_or_error('construction-mode', SetList, preserve, 'XQST0067'),
   OM = set_or_error('ordering-mode', SetList, ordered, 'XQST0065'),
   EO = set_or_error('empty-seq-order', SetList, greatest, 'XQST0069'),
   CN = set_or_error('copy-namespaces', SetList, {preserve, 'no-inherit'}, 'XQST0055'),
   DF = scan_dec_formats(proplists:lookup_all('decimal-format', SetList)),
   
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
   %xqerl_context:import_functions(Specs),
   %xqerl_context:set_statically_known_functions(Specs),
   %[attribute(functions, Specs)].
   Specs.

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
   %xqerl_context:import_variables(Specs),
   %xqerl_context:set_in_scope_variables(Specs),
   %State#state{inscope_vars = Specs}.
   Specs.

scan_namespaces(State, Namespaces) ->
   NsList = [begin
                %_ = xqerl_context:add_statically_known_namespace(Ns, Px),
                #xqNamespace{namespace = Ns, prefix = Px}
             end
            || {Px,Ns} <- Namespaces],
   State#state{known_ns = NsList}.

scan_options(Options,library) ->
   %?dbg(?LINE,Options),
   Ok = lists:any(fun({#qname{prefix = "output"},_}) ->
                        false;
                     (_) ->
                        true
                  end, Options),
   if Ok;
      Options == [] ->
         scan_options(Options);
      true ->
         xqerl_error:error('XQST0108')
   end.
   
scan_options(Options) ->
   _ = xqerl_options:validate(Options),
   [attribute(options,Options)].

scan_dec_formats(Formats) ->
   [begin
       Rec = lists:foldl(fun({F,V}, R) ->
                               case F of
                                  'decimal-separator' ->
                                     R#dec_format{decimal = V};
                                  'grouping-separator' ->
                                     R#dec_format{grouping = V};
                                  'infinity' ->
                                     R#dec_format{infinity = V};
                                  'minus-sign' ->
                                     R#dec_format{minus = V};
                                  'NaN' ->
                                     R#dec_format{nan = V};
                                  'percent' ->
                                     R#dec_format{percent = V};
                                  'per-mille' ->
                                     R#dec_format{per_mille = V};
                                  'zero-digit' ->
                                     R#dec_format{zero = V};
                                  'digit' ->
                                     R#dec_format{digit = V};
                                  'pattern-separator' ->
                                     R#dec_format{pattern = V};
                                  'exponent-separator' ->
                                     R#dec_format{exponent = V};
                                  _ ->
                                     xqerl_error:error('XQST0097')
                               end
                         end, #dec_format{}, FList),
       {Name, Rec}
    end || {'decimal-format', Name, FList} <- Formats].

attribute(Name,Val) -> erlang:list_to_tuple([attribute,?LINE,Name,Val]).

%% variable_function_name(#qname{namespace = _Ns, prefix = Px, local_name = Ln}) ->
%%    %?dbg("variable_function_name",{Ns,Px,Ln}),
%%    List = if Px == [] ->
%%                 Ln;
%%              true ->
%%                 Px ++ ":" ++ Ln
%%           end,
%%    {list_to_atom(List), 1};
%% variable_function_name(Name) ->
%%    ?dbg("variable_function_name",Name).
variable_function_name(Id) ->
   {list_to_atom(lists:concat(["var$^",integer_to_list(Id)])), 1}.

function_function_name(Id, Arity) ->
   {list_to_atom(lists:concat(["fx$^",integer_to_list(Id)])), Arity + 1}.

resolve_qname(#qname{namespace = Ns, prefix = undefined, local_name = Ln}, #state{known_ns = Nss}) ->
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
   Fun = fun(#xqNamespaceNode{name = #qname{namespace = Ns, prefix = []}}, State1) ->
               State1#state{default_elem_ns = Ns};
            (#xqNamespaceNode{name = #qname{namespace = Ns, prefix = Px}}, State1) ->
               New = #xqNamespace{namespace = Ns, prefix = Px},
               Known = State1#state.known_ns,
               NewKnown = lists:keystore(Px, 3, Known, New),
               State1#state{known_ns = NewKnown}
         end,
   lists:foldl(Fun, State, Namespaces).

resolve_element_name(State, #qname{prefix = []} = QName) ->
   DefaultNs = State#state.default_elem_ns,
   QName#qname{namespace = DefaultNs};
resolve_element_name(State, #qname{prefix = Px} = QName) ->
   StatNs    = State#state.known_ns,
   Ns = lists:keyfind(Px, 3, StatNs),
   QName#qname{namespace = Ns}.

resolve_attribute_name(_State, #qname{prefix = []} = QName) ->
   QName#qname{namespace = 'no-namespace'};
resolve_attribute_name(State, #qname{prefix = Px} = QName) ->
   StatNs    = State#state.known_ns,
   Ns = lists:keyfind(Px, 3, StatNs),
   QName#qname{namespace = Ns}.

resolve_attribute_names(State, Attributes) ->
   Fun = fun(#xqAttributeNode{name = QName} = Att) ->
               NewName = resolve_attribute_name(State, QName),
               Att#xqAttributeNode{name = NewName}
         end,
   lists:map(Fun, Attributes).

check_unique_att_names(Attributes) ->
   Names = [{Ns,Ln} || #xqAttributeNode{name = #qname{namespace = Ns, local_name = Ln}} <- Attributes ],
   case lists:sort(Names) == lists:usort(Names) of
      true ->
         ok;
      _ ->
         ?err('XQST0040')
   end.


%% 3.9.1 Direct Element Constructors
handle_direct_constructor(State, #xqElementNode{name = QName, attributes = AttsNs, expr = Content}) ->
   Namespaces = namespace_nodes(AttsNs),
   Attributes = attribute_nodes(AttsNs),
   State1 = override_namespaces(State, Namespaces),
   QName1 = resolve_element_name(State1, QName),
   Attributes1 = resolve_attribute_names(State1, Attributes),
   ok = check_unique_att_names(Attributes1),
   Attributes2 = lists:map(fun(Att) ->
                                 get_statement(handle_direct_constructor(State1, Att))
                             end, Attributes1), 
   SContent = get_statement(handle_element_content(State1, Content)),
   ?dbg(?LINE, Content),
   ?dbg(?LINE, SContent),
   ?dbg(?LINE, Attributes2),
   ?dbg(?LINE, QName1),
   %?dbg(?LINE, State2),
   set_statement(State, #xqElementNode{name = QName1, expr = Namespaces ++ Attributes2 ++ SContent});
%% 3.9.1.1 Attributes
handle_direct_constructor(State, #xqAttributeNode{expr = Content} = Node) ->
   default_return(State, Node);
%% 3.9.1.2 Namespace Declaration Attributes
handle_direct_constructor(State, #xqNamespaceNode{name = QName} = Node) ->
   default_return(State, Node);
%% 3.9.2 Other Direct Constructors
handle_direct_constructor(State, #xqProcessingInstructionNode{name = QName, expr = Content} = Node) ->
   default_return(State, Node#xqProcessingInstructionNode{base_uri = []});
handle_direct_constructor(State, #xqCommentNode{expr = Content} = Node) ->
   default_return(State, Node);
handle_direct_constructor(State, Cons) ->
   default_return(State, Cons).


%% 3.9.1.3 Content
%% 3.9.1.4 Boundary Whitespace
handle_element_content(State, Content) ->
   Content1 = maybe_strip_whitespace(State,Content),
   Content2 = combine_literals_to_text(Content1),
   CFun = fun(C) ->
                #state{context = #context{statement = S}} = handle_direct_constructor(State, C),
                S
          end,
   Content3 = lists:map(CFun, Content2), 
   ?dbg(?LINE,Content3),
   set_statement(State, Content3).


maybe_strip_whitespace(#state{boundary_space = preserve}, Content) ->
   Content;
maybe_strip_whitespace(#state{boundary_space = strip}, undefined) -> [];
maybe_strip_whitespace(#state{boundary_space = strip}, []) -> [];
maybe_strip_whitespace(#state{boundary_space = strip}, {content_expr, Expr}) -> Expr;
maybe_strip_whitespace(#state{boundary_space = strip}, Content) ->
   Content1 = remove_empty_head(Content),
   Content2 = remove_empty_head(lists:reverse(Content1)),
   lists:reverse(Content2).

remove_empty_head([]) -> [];
remove_empty_head([#xqAtomicValue{} = H1,#xqTextNode{} = H2|T]) ->
   [H1|remove_empty_head([H2|T])];
remove_empty_head([#xqTextNode{} = H1,#xqAtomicValue{} = H2|T]) ->
   [H1,H2|remove_empty_head(T)];
remove_empty_head([#xqAtomicValue{type = 'xs:string', value = Val} = H|T]) ->
   case string:trim(Val) of
      [] ->
         remove_empty_head(T);
      _ ->
         [H|remove_empty_head(T)]
   end;
remove_empty_head([H|T]) -> [H|remove_empty_head(T)].

combine_literals_to_text(undefined) -> [];
combine_literals_to_text([]) -> [];
combine_literals_to_text([#xqAtomicValue{type = 'xs:string', value = Val1},
                          #xqAtomicValue{type = 'xs:string', value = Val2}|T]) ->
   combine_literals_to_text([#xqAtomicValue{type = 'xs:string', value = Val1++Val2}|T]);
combine_literals_to_text([#xqAtomicValue{type = 'xs:string'} = H|T]) ->
   [#xqTextNode{expr = H, cdata = true}|combine_literals_to_text(T)];
combine_literals_to_text([H|T]) ->
   [H|combine_literals_to_text(T)].

  
% the one "special" function
get_static_function(State,{#qname{namespace = "http://www.w3.org/2005/xpath-functions", 
                                  local_name = "concat"} = Name, Arity}) when Arity =/= 1 ->
   if Arity > 1 ->
         get_static_function(State, {Name, 1});
      true ->
         ?dbg("Arity",Arity),
         xqerl_error:error('XPST0017')
   end;
get_static_function(#state{known_fx_sigs = Sigs},{#qname{namespace = Ns, local_name = Ln}, Arity}) ->
   Lookup = [#xqFunction{annotations = Annotations,
                         name = Name1,
                         arity = Arity1,
                         params = ParamTypes,
                         type = ReturnType,
                         %body = fun M:F/A}
                         body = Location}
            || {#qname{namespace = Ns1, local_name = Ln1} = Name1,
                #xqSeqType{} = ReturnType, 
                Annotations, 
                Location,
                Arity1,
                ParamTypes}
            <- Sigs,
               Ns == Ns1,
               Ln == Ln1,
               Arity == Arity1],
   FunSig = if length(Lookup) == 1 ->
                  hd(Lookup);
               true ->
                  % 0 or > 1 fun found
                 ?dbg("Ns",Ns),
                 ?dbg("Ln",Ln),
                 ?dbg("Arity",Arity),
                 xqerl_error:error('XPST0017')
            end,
   FunSig.

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
check_fun_arg_types(State, Args, ArgTypes) ->
   Arg_ArgTypes = lists:zip(Args, ArgTypes),
   Fun = fun({Arg, ArgType}) ->
               ?dbg("ArgS",get_statement(Arg)),
               ?dbg("ArgT",get_statement_type(Arg)),
               S1 = check_fun_arg_type(State, Arg, ArgType),
               Cnt = get_static_count(S1),
               ?dbg("Cnt",Cnt),
               Stmnt = get_statement(S1),
               {Stmnt, Cnt}
         end,
   lists:map(Fun, Arg_ArgTypes).

check_fun_arg_type(_State, Arg, TargetType) ->
   %?dbg("Arg",get_statement(Arg)),
   ?dbg("TargetType",TargetType),
   ParamType = get_statement_type(Arg),
   Param = get_statement(Arg),
   ?dbg("ParamType",ParamType),
   ok = check_occurance_match(ParamType, TargetType),
   % now check the types
   NoCast = check_type_match(ParamType, TargetType),
   ?dbg("NoCast",{NoCast,ParamType,TargetType}),
   if NoCast ->
         Arg;
      NoCast == cast ->
         set_statement(Arg, {cast_as, Param, TargetType});
      NoCast == atomize -> %TODO make this do something
         Arg;
      true ->
         %oops
         ?err('XPTY0004')
   end.

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
get_list_type(Types) ->
   LT = get_list_type(Types, []),
   ?dbg("LT",LT),
   LT.

get_list_type([], []) ->
   #xqSeqType{type = 'empty-sequence', occur = zero};
get_list_type([], BType) ->
   #xqSeqType{type = xqerl_btypes:get_type(BType), occur = one_or_many};
get_list_type([#xqSeqType{type = H}|Types], []) ->
   if H == 'empty-sequence' ->
         get_list_type(Types, []);
      true ->
         get_list_type(Types, xqerl_btypes:get_type(H))
   end;
get_list_type([#xqSeqType{type = H}|Types], BType) ->
   if H == 'empty-sequence' ->
         get_list_type(Types, BType);
      true ->
         HType = xqerl_btypes:get_type(H),
         HN = xqerl_btypes:is_numeric(HType),
         BN = xqerl_btypes:is_numeric(BType),
         if HN andalso BN andalso HType =/= BType ->
               get_list_type(Types, xqerl_btypes:get_type('xs:numeric'));
            true ->
               get_list_type(Types, HType band BType)
         end
   end.


% check if the types are compatable with/out cast or atomization
check_type_match(#xqSeqType{type = node}, #xqSeqType{type = TargetType}) when ?anyAtomicType(TargetType) -> 
   atomize;
check_type_match(#xqSeqType{type = function}, #xqSeqType{type = TargetType}) when ?anyAtomicType(TargetType) -> 
   ?err('FOTY0013');

check_type_match(#xqSeqType{type = 'empty-sequence'}, _TargetType) -> true;

check_type_match(#xqSeqType{type = #xqKindTest{kind = ParamType}}, #xqSeqType{type = #xqKindTest{kind = TargetType}}) -> % needs name checking
   BP = xqerl_btypes:get_type(ParamType),
   BT = xqerl_btypes:get_type(TargetType),
   check_type_cast(BP, BT);   

check_type_match(ParamType, #xqSeqType{type = #xqKindTest{kind = TargetType}}) -> % needs name checking
   BP = xqerl_btypes:get_type(ParamType#xqSeqType.type),
   BT = xqerl_btypes:get_type(TargetType),
   check_type_cast(BP, BT);   
check_type_match(#xqSeqType{type = #xqKindTest{kind = ParamType}}, TargetType) -> % needs name checking
   BP = xqerl_btypes:get_type(ParamType),
   BT = xqerl_btypes:get_type(TargetType#xqSeqType.type),
   ?dbg("{BP, BT}",{BP, BT}),
   check_type_cast(BP, BT);   

check_type_match(ParamType, #xqSeqType{type = #xqFunTest{kind = TargetType}}) -> % needs type checking
   BP = xqerl_btypes:get_type(ParamType#xqSeqType.type),
   BT = xqerl_btypes:get_type(TargetType),
   check_type_cast(BP, BT);   
check_type_match(#xqSeqType{type = #xqFunTest{kind = ParamType}}, TargetType) -> % needs type checking
   BP = xqerl_btypes:get_type(ParamType),
   BT = xqerl_btypes:get_type(TargetType#xqSeqType.type),
   ?dbg("{BP, BT}",{BP, BT}),
   check_type_cast(BP, BT);   

check_type_match(ParamType, TargetType) ->
   BP = xqerl_btypes:get_type(ParamType#xqSeqType.type),
   BT = xqerl_btypes:get_type(TargetType#xqSeqType.type),
   check_type_cast(BP, BT).

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
check_occurance_match(#xqSeqType{occur = InType}, #xqSeqType{occur = TargetType}) ->
   check_occurance_match1(InType, TargetType).

check_occurance_match1(zero, zero) -> ok;
check_occurance_match1(zero, zero_or_one) -> ok;
check_occurance_match1(zero, zero_or_many) -> ok;

check_occurance_match1(zero_or_one, zero) -> ok; % maybe
check_occurance_match1(zero_or_one, one) -> ok; % maybe
check_occurance_match1(zero_or_one, zero_or_many) -> ok;
check_occurance_match1(zero_or_one, zero_or_one) -> ok;

check_occurance_match1(one, one) -> ok;
check_occurance_match1(one, zero_or_one) -> ok;
check_occurance_match1(one, one_or_many) -> ok;
check_occurance_match1(one, zero_or_many) -> ok;

check_occurance_match1(one_or_many, one) -> ok; % maybe
check_occurance_match1(one_or_many, zero_or_one) -> ok; % maybe
check_occurance_match1(one_or_many, one_or_many) -> ok;
check_occurance_match1(one_or_many, zero_or_many) -> ok;

check_occurance_match1(zero_or_many, zero) -> ok; % maybe
check_occurance_match1(zero_or_many, zero_or_one) -> ok; % maybe
check_occurance_match1(zero_or_many, one) -> ok; % maybe
check_occurance_match1(zero_or_many, one_or_many) -> ok; % maybe
check_occurance_match1(zero_or_many, zero_or_many) -> ok;
check_occurance_match1(In, Target) ->
   ?dbg("{In,Target}",{In,Target}),
   xqerl_error:error('XPTY0004').


%% ====================================================================
%% GETTER/SETTERS for static context information being passed around
%% ====================================================================
set_statement(#state{context = #context{} = Ctx} = State, Statement) ->
   NewCtx = Ctx#context{statement = Statement},
   State#state{context = NewCtx}.

get_statement(#state{context = #context{statement = Statement}}) -> Statement.

set_statement_type(#state{context = #context{} = Ctx} = State, StatementType) ->
   NewCtx = Ctx#context{statement_type = StatementType},
   State#state{context = NewCtx}.

get_statement_type(#state{context = #context{statement_type = StatementType}}) -> StatementType.

set_statement_and_type(#state{context = #context{} = Ctx} = State, Statement, StatementType) ->
   NewCtx = Ctx#context{statement = Statement, statement_type = StatementType},
   State#state{context = NewCtx}.

set_static_count(#state{context = #context{} = Ctx} = State, StaticCount) ->
   NewCtx = Ctx#context{static_count = StaticCount},
   State#state{context = NewCtx}.

get_static_count(#state{context = #context{static_count = StaticCount}}) -> StaticCount.

set_inscope_ns(#state{context = #context{} = Ctx} = State, InscopeNs) ->
   NewCtx = Ctx#context{inscope_ns = InscopeNs},
   State#state{context = NewCtx}.

get_inscope_ns(#state{context = #context{inscope_ns = InscopeNs}}) -> InscopeNs.





next_var() ->
   Id = erlang:get(var_id),
   _ = erlang:put(var_id, Id + 1),
   list_to_atom("Var__"++integer_to_list(Id)).

local_variable_name(Id) ->
  list_to_atom(lists:concat(["XQ__var_", Id])).


% {Name,Type,Annos,ErlVarName}
add_inscope_variable(#state{inscope_vars = Vars} = State, {#qname{namespace = Ns, local_name = Ln},_,_,_} = NewVar) ->
   ?dbg("Vars",Vars),
   NewVars = [NewVar | [Var || {#qname{namespace = Ns1, local_name = Ln1},_,_,_} = Var  <- Vars, {Ns1,Ln1} =/= {Ns,Ln}]],
   State#state{inscope_vars = NewVars}.

get_variable(#state{inscope_vars = Vars}, #qname{namespace = Ns, local_name = Ln}) ->
   [O] = [Var || {#qname{namespace = Ns1, local_name = Ln1},_,_,_} = Var  <- Vars, {Ns1,Ln1} == {Ns,Ln}],
   O.

l(L) when is_list(L) ->
  L;
l(L) ->
  [L].



static_operator_type(Op,#xqSeqType{type = T1},#xqSeqType{type = T2}) ->
   ?dbg("{Op,T1,T2}",{Op,T1,T2}),
   xqerl_btypes:static_operator_type(Op, T1, T2).

maybe_zero_type(Type = #xqSeqType{occur = Occur}) ->
   NewOccur = if Occur == one ->
                    zero_or_one;
                 Occur == one_or_many ->
                    zero_or_many;
                 true ->
                    Occur
              end,
   Type#xqSeqType{occur = NewOccur}.

                 
      


