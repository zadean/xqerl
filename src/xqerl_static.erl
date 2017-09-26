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
-export([pro_context_item/2]).
-export([overwrite_static_namespaces/2]).
-export([scan_functions/1]).
-export([scan_variables/2]).


-define(true,#xqAtomicValue{type = 'xs:boolean', value = true}).
-define(false,#xqAtomicValue{type = 'xs:boolean', value = false}).
-define(atomic(Type,Val),#xqAtomicValue{type = Type, value = Val}).

% state should hold the entire static context, augmented by statements that can do it in their own scope.
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
         inscope_ns,
         statement_type, % give type information back to caller
         statement       % possibly optimized statement
   }).

handle_tree(#xqModule{version = {Version,Encoding}, 
                   prolog = Prolog, 
                   type = ModuleType,% main|library, 
                   body = Body} = Mod) ->
   State = #state{},
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
   {Functions1, Variables1} = xqerl_context:import_modules(Imports),
   ?dbg(?LINE,{Functions1, Variables1}),
   % analyze for cyclical references
   true = analyze_fun_vars(Functions, Variables),
   State1 = scan_setters(State, Setters),
   State2 = scan_namespaces(State1, ConstNamespaces),
   OptionAbs = scan_options(Options),
   FunctionAbs = scan_functions(Functions),
   ok = xqerl_context:import_variables(Variables1),
   ok = xqerl_context:import_functions(Functions1),
   VariableAbs = scan_variables(State2,Variables),
   
   FinalState = handle_node(State2, Body),
   S1 = FinalState#state.statement,
   ?dbg(?LINE,S1),
   %erlang:erase(),
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
                body => Mod#xqModule{body = S1}
               }, 
   %% default_elem_ns,
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
                     #state{statement = St} = handle_node(State, Node),
                     St
                   end, Nodes),
   State#state{statement = All};
%% 3.1 Primary Expressions
handle_node(State, #xqQuery{query = Qry} )-> 
   Statements = lists:map(fun(Q) ->
                                #state{statement = S} = handle_node(State, Q),
                                S
                          end, Qry),
   State#state{statement = #xqQuery{query = Statements}};
%% 3.1.1 Literals
handle_node(State, #xqAtomicValue{type = T} = At) -> 
   State#state{statement = At, statement_type = #xqSeqType{type = T, occur = one}};
%% 3.1.2 Variable References
handle_node(State, #xqVarRef{name = Name} = Node) -> default_return(State, Node);
%% 3.1.3 Parenthesized Expressions
handle_node(State, {expr, Expr} = Node) -> 
   ?dbg(?LINE,?MODULE),
   #state{statement = S} = handle_node(State, Expr),
   State#state{statement = {expr, S}};
%% 3.1.4 Context Item Expression
handle_node(State, 'context-item' = Node) -> default_return(State, Node);
handle_node(State, {'context-item', {Type,External,Expr}} )-> State;
%% 3.1.5 Static Function Calls
% boolean functions
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "exists"}, 1, [Arg]}) -> 
   #state{statement = S1, statement_type = #xqSeqType{occur = O1}} = handle_node(State, Arg),
   Val = if O1 == one ->
               #xqAtomicValue{type = 'xs:boolean', value = true};
            O1 == one_or_many ->
               #xqAtomicValue{type = 'xs:boolean', value = true};
            true ->
               {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "exists"}, 1, [S1]}
         end,
   State#state{statement = Val, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "true"}, 0, []}) -> 
   State#state{statement = ?true, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};
handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                            local_name = "false"}, 0, []}) -> 
   State#state{statement = ?false, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};

% catch all for fn
%% handle_node(State, {'function-call', #qname{namespace = "http://www.w3.org/2005/xpath-functions"}, _, _} = Node) -> 
%%    default_return(State, Node);
%handle_node(State, {'function-call', Name, Arity, Args} = Node) -> default_return(State, Node);
handle_node(State, {'partial-function-call', {name, Name}, {arity, Arity}, {args, Args}} = Node) -> default_return(State, Node);
%% 3.1.5.1 Evaluating Static and Dynamic Function Calls
%% 3.1.5.2 Function Conversion Rules
%% 3.1.5.3 Function Coercion
%% 3.1.6 Named Function References
handle_node(State, {'function-ref', #qname{} = Name, Arity} = Node) -> default_return(State, Node);
%% 3.1.7 Inline Function Expressions
handle_node(State, #xqFunction{} = Node) -> default_return(State, Node);
%% 3.1.8 Enclosed Expressions
handle_node(State, {expr, Expr} = Node) -> default_return(State, Node);
%% 3.2 Postfix Expressions
handle_node(State, #xqPostfixStep{predicates = Preds} = Node) -> default_return(State, Node);
handle_node(State, {postfix, Base, Step } = Node) -> default_return(State, Node);
handle_node(State, {postfix, InlineFunc, #xqPostfixStep{predicates = [{arguments,Args}]}} = Node) -> default_return(State, Node);
handle_node(State, {postfix, {'function-ref',Q,V}, #xqPostfixStep{predicates = [{arguments,Args}]}} = Node) -> default_return(State, Node);
handle_node(State, {postfix, #xqVarRef{} = Var, #xqPostfixStep{} = Step} = Node) -> default_return(State, Node);
%% 3.2.1 Filter Expressions
%% 3.2.2 Dynamic Function Calls
%% 3.3 Path Expressions
%% 3.3.1 Relative Path Expressions
%% 3.3.1.1 Path operator (/)
%% 3.3.2 Steps
handle_node(State, {'any-root', Step} = Node) -> default_return(State, Node);
handle_node(State, {root, Step} = Node) -> default_return(State, Node);
handle_node(State, {root} = Node) -> default_return(State, Node);
handle_node(State, {step, #xqVarRef{name = Name}, Step} = Node) -> default_return(State, Node);
handle_node(State, {step, Base, Step} = Node) -> default_return(State, Node);
handle_node(State, {step, Base} = Node) -> default_return(State, Node);
handle_node(State, {step, {'function-call', _, _, _} = Base, Step} = Node) -> default_return(State, Node);
handle_node(State, {step, {'function-ref', _, _} = FuncStep, Next} = Node) -> default_return(State, Node);
handle_node(State, {step, {expr, Base}, Step} = Node) -> default_return(State, Node);
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
   ?dbg(?LINE, 'empty-sequence'),
   State#state{statement = [], statement_type = #xqSeqType{occur = zero}};
%% 3.4.1 Constructing Sequences
handle_node(State, {range, Expr1, Expr2} = _Node) -> 
   #state{statement = S1} = handle_node(State, Expr1),
   #state{statement = S2} = handle_node(State, Expr2),
   State#state{statement = {range, S1, S2}, statement_type = #xqSeqType{type = 'xs:integer', occur = zero_or_many}};
%% 3.4.2 Combining Node Sequences
handle_node(State, {'union', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'intersect', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'except', Expr1, Expr2} = Node) -> default_return(State, Node);
%% 3.5 Arithmetic Expressions
handle_node(State, {'add', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'subtract', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'multiply', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'divide', Expr1, Expr2}) ->
   #state{statement = S1} = handle_node(State, Expr1),
   #state{statement = S2} = handle_node(State, Expr2),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         #xqAtomicValue{type = T} = Eq = xqerl_operators:divide(S1, S2),
         State#state{statement = Eq, statement_type = #xqSeqType{type = T, occur = one}};
      true ->
         State#state{statement = {'divide', S1, S2}, 
                     statement_type = #xqSeqType{type = 'xs:numeric', occur = one}}
   end; 
handle_node(State, {'integer-divide', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'modulo', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'unary', '+', Expr1} = Node) -> default_return(State, Node);
handle_node(State, {'unary', '-', Expr1} = Node) -> default_return(State, Node);
%% 3.6 String Concatenation Expressions
handle_node(State, {'concat', Expr1, Expr2} = Node) -> default_return(State, Node); 
%% 3.7 Comparison Expressions
%% 3.7.1 Value Comparisons
handle_node(State, {'eq', Expr1, Expr2}) -> 
   #state{statement = S1} = handle_node(State, Expr1),
   #state{statement = S2} = handle_node(State, Expr2),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:equal(S1, S2),
         State#state{statement = Eq, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};
      true ->
         State#state{statement = {'eq', S1, S2}, 
                     statement_type = #xqSeqType{type = 'xs:boolean', occur = one}}
   end; 
handle_node(State, {'ne', Expr1, Expr2}) ->
   #state{statement = S1} = handle_node(State, Expr1),
   #state{statement = S2} = handle_node(State, Expr2),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:not_equal(S1, S2),
         State#state{statement = Eq, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};
      true ->
         State#state{statement = {'ne', S1, S2}, 
                     statement_type = #xqSeqType{type = 'xs:boolean', occur = one}}
   end; 
handle_node(State, {'ge', Expr1, Expr2}) ->
   #state{statement = S1} = handle_node(State, Expr1),
   #state{statement = S2} = handle_node(State, Expr2),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:greater_than_eq(S1, S2),
         State#state{statement = Eq, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};
      true ->
         State#state{statement = {'ge', S1, S2}, 
                     statement_type = #xqSeqType{type = 'xs:boolean', occur = one}}
   end; 
handle_node(State, {'gt', Expr1, Expr2}) ->
   #state{statement = S1} = handle_node(State, Expr1),
   #state{statement = S2} = handle_node(State, Expr2),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:greater_than(S1, S2),
         State#state{statement = Eq, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};
      true ->
         State#state{statement = {'gt', S1, S2}, 
                     statement_type = #xqSeqType{type = 'xs:boolean', occur = one}}
   end; 
handle_node(State, {'le', Expr1, Expr2}) ->
   #state{statement = S1} = handle_node(State, Expr1),
   #state{statement = S2} = handle_node(State, Expr2),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:less_than_eq(S1, S2),
         State#state{statement = Eq, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};
      true ->
         State#state{statement = {'le', S1, S2}, 
                     statement_type = #xqSeqType{type = 'xs:boolean', occur = one}}
   end; 
handle_node(State, {'lt', Expr1, Expr2}) ->
   #state{statement = S1} = handle_node(State, Expr1),
   #state{statement = S2} = handle_node(State, Expr2),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:less_than(S1, S2),
         State#state{statement = Eq, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};
      true ->
         State#state{statement = {'lt', S1, S2}, 
                     statement_type = #xqSeqType{type = 'xs:boolean', occur = one}}
   end; 
%% 3.7.2 General Comparisons
handle_node(State, {Op, Expr1, Expr2} = _Node) when Op == '=';
                                                   Op == '!=';
                                                   Op == '<';
                                                   Op == '<=';
                                                   Op == '>';
                                                   Op == '>=' -> 
   #state{statement = S1} = handle_node(State, Expr1),
   #state{statement = S2} = handle_node(State, Expr2),
   Atomic = both_atomics(S1, S2),
   if Atomic ->
         Eq = xqerl_operators:general_compare(Op, S1, S2),
         State#state{statement = Eq, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};
      true ->
         State#state{statement = {Op, S1, S2}, 
                     statement_type = #xqSeqType{type = 'xs:boolean', occur = one}}
   end; 
%% 3.7.3 Node Comparisons
handle_node(State, {'is', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'<<', Expr1, Expr2} = Node) -> default_return(State, Node);
handle_node(State, {'>>', Expr1, Expr2} = Node) -> default_return(State, Node);
%% 3.8 Logical Expressions
handle_node(State, {'and', Expr1, Expr2} = _Node) -> 
   #state{statement = S1} = handle_node(State, Expr1),
   #state{statement = S2} = handle_node(State, Expr2),
   State#state{statement = {'and', S1, S2}, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};
handle_node(State, {'or', Expr1, Expr2} = _Node) ->
   #state{statement = S1} = handle_node(State, Expr1),
   #state{statement = S2} = handle_node(State, Expr2),
   State#state{statement = {'or', S1, S2}, statement_type = #xqSeqType{type = 'xs:boolean', occur = one}};
%% 3.9 Node Constructors
%% 3.9.1 Direct Element Constructors
%% 3.9.1.1 Attributes
%% 3.9.1.2 Namespace Declaration Attributes
%% 3.9.1.3 Content
%% 3.9.1.4 Boundary Whitespace
%% 3.9.2 Other Direct Constructors
%% 3.9.3 Computed Constructors
%% 3.9.3.1 Computed Element Constructors
handle_node(State = #state{base_uri = BU}, #xqElementNode{expr = Expr} = Node) ->
   ?dbg(?MODULE,{BU,?FUNCTION_NAME,?LINE}),
   #state{statement = S1} = handle_node(State, Expr),
   State#state{statement = Node#xqElementNode{expr = S1, base_uri = ?atomic('xs:anyURI',BU)}, statement_type = #xqSeqType{type = 'element', occur = one}};
%% 3.9.3.2 Computed Attribute Constructors
handle_node(State, #xqAttributeNode{expr = Expr} = Node) ->
   #state{statement = S1} = handle_node(State, Expr),
   State#state{statement = Node#xqAttributeNode{expr = S1}, statement_type = #xqSeqType{type = 'attribute', occur = one}};
%% 3.9.3.3 Document Node Constructors
handle_node(State = #state{base_uri = BU}, #xqDocumentNode{expr = Expr} = Node) -> 
   ?dbg(?MODULE,{BU,?FUNCTION_NAME,?LINE}),
   #state{statement = S1} = handle_node(State, Expr),
   State#state{statement = Node#xqDocumentNode{expr = S1, base_uri = ?atomic('xs:anyURI',BU)}, statement_type = #xqSeqType{type = 'document-node', occur = one}};
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
handle_node(State, #xqFlwor{loop = Loop, return = Return} = Node) -> default_return(State, Node);
%% 3.12.1 Variable Bindings
%% 3.12.2 For Clause
handle_node(State, {for_let, Expr} = Node) -> default_return(State, Node);
%% 3.12.3 Let Clause
%% 3.12.4 Window Clause
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
handle_node(State, {order, Expr} = Node) -> default_return(State, Node);
%% 3.12.9 Return Clause
%% 3.13 Ordered and Unordered Expressions
handle_node(State, {'ordered-expr', Expr} = Node) -> default_return(State, Node);
handle_node(State, {'unordered-expr', Expr} = Node) -> default_return(State, Node);
%% 3.14 Conditional Expressions
handle_node(State, {'if-then-else', If, Then, Else} = Node) -> default_return(State, Node);
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
   ?dbg(?LINE,State),
   TypeAtom = list_to_atom("xs:" ++ Type),
   BOType = xqerl_btypes:get_type(TypeAtom),
   BIType = xqerl_btypes:get_type(AtType),
   NoCast = xqerl_btypes:is_promotable(BIType, BOType),
   NewNode = if NoCast ->
                   #xqAtomicValue{type = TypeAtom, value = AtVal};
                Type == "QName";
                Type == "NOTATION" ->
                   xqerl_types:cast_as(Av, TypeAtom, State#state.known_ns);
                true ->
                   xqerl_types:cast_as(Av, TypeAtom)
             end,
   State#state{statement_type = #xqSeqType{type = Type, occur = zero_or_one}, statement = NewNode};
handle_node(State, {'function-call',#qname{namespace = "http://www.w3.org/2001/XMLSchema",
                                           local_name = _Type}, 1, ['empty-sequence']}) -> 
   State#state{statement_type = #xqSeqType{type = 'empty-sequence', occur = zero}, statement = 'empty-sequence'};
handle_node(State, {'function-call',#qname{namespace = "http://www.w3.org/2001/XMLSchema"} = Name, 1, [Other]}) ->
   #state{statement = S1} = handle_node(State, Other),
   ?dbg(?LINE,S1),
   State#state{statement = {'function-call',Name,1,[S1]}};
% catch all for all fx's
handle_node(State, {'function-call', Name, Arity, Args} = _Node) ->
   ?dbg(?MODULE,{?FUNCTION_NAME,?LINE}),
   Args1 = lists:map(fun(Arg) ->
                           #state{statement = S1} = handle_node(State, Arg),
                           S1
                     end, Args),
   State#state{statement = {'function-call', Name, Arity, Args1}};

%% 3.18.6 Treat
handle_node(State, {treat_as, Expr1, Expr2} = Node) -> default_return(State, Node);
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
   ?dbg(?MODULE,{?FUNCTION_NAME,?LINE}),
   #state{statement = S1, statement_type = ST1} = handle_node(State, Expr),
   State#state{statement = {'node-cons', S1}, statement_type = ST1};



%% handle_node(State, #xqNamespace{} = N) ->
%% handle_node(State, #xqNameTest{name = Name}) ->
%% handle_node(State, #xqSeqType{type = #qname{namespace = N, prefix = Px, local_name = Ln}, occur = O}) ->
%% handle_node(State, #xqSeqType{type = Atom, occur = O}) when is_atom(Atom) ->
%% handle_node(State, #xqSeqType{type = T, occur = O}) when is_record(T, xqFunTest) ->
%% handle_node(State, #xqSeqType{type = T, occur = O}) when is_record(T, xqKindTest) ->
%% handle_node(State, {'node-cons', Expr0}) ->


handle_node(State, Node) ->
   ?dbg("UNKNOWN NODE", Node),
   State.


default_return(State, Node) ->
   State#state{statement_type = #xqSeqType{type = item, occur = zero_or_many}, statement = Node}.

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
   _ = x(G, M2, Variables ++ Functions, []),
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
               add_edge(G, {Id,Nm}, Parent),
               Map
         end;
      {'function-call', {name, Nm}, {arity, Ar}, {args, Args} } ->
         %?dbg(?LINE,{{Nm,Ar}, Parent}),
         case maps:is_key({Nm, Ar}, Map) of 
            true ->
               Id = maps:get({Nm, Ar}, Map),
               add_edge(G, {Id,Nm,Ar}, Parent),
               x(G, Map, Parent, Args);
            _ -> % non local function
               %?dbg("nonlocal!!",{Nm,Ar}),
               ok
         end,
         Map;
      _ ->
         D1 = tuple_to_list(Data),
         x(G, Map, Parent, D1)
   end;
x(_G, Map, _Parent, _Data) ->
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
   _ = lists:foldl(fun(#xqVar{name = Nm, annotations = Annos},Dict) ->
                        % check reserved annotation NS http://www.w3.org/2012/xquery
                        _ = lists:foreach(fun({annotation,{#qname{namespace = "http://www.w3.org/2012/xquery", 
                                                                  local_name = L},_}}) when L == "public";
                                                                                            L == "private" ->
                                                ok;
                                             ({annotation,{#qname{namespace = N},_}}) ->
                                                ok = xqerl_lib:reserved_namespaces(N)
                                             
                                          end, Annos),
                         case dict:is_key(Nm, Dict) of
                            true ->
                               xqerl_error:error('XQST0049');
                            _ ->
                               dict:append(Nm, ok, Dict)
                         end
                   end, dict:new(), Variables),
   Variables.

pro_glob_functions(Prolog) ->
   Functions = lists:filter(fun(#xqFunction{}) -> true;
                               (_) -> false
                            end, Prolog),
   % check for dup funs, reserved namespaces, dup params
   _ = lists:foldl(fun(#xqFunction{name = #qname{namespace = Ns} = Nm, 
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
                         case dict:is_key({Nm,A}, Dict) of
                            true ->
                               xqerl_error:error('XQST0034');
                            _ ->
                               dict:append({Nm,A}, ok, Dict)
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
   xqerl_context:import_functions(Specs),
   %xqerl_context:set_statically_known_functions(Specs),
   [attribute(functions, Specs)].

%% {Name, Type, Annos, function_name] }
scan_variables(State, Variables) ->
   Specs = [begin
               Name1 = resolve_qname(Name, State),
               {Name1, Type, Annos, variable_function_name(Name1) }
            end
           || #xqVar{id = _Id, 
                     annotations = Annos, 
                     name = Name, 
                     type = Type} 
           <- Variables   ],
   %xqerl_context:import_variables(Specs),
   %xqerl_context:set_in_scope_variables(Specs),
   State#state{inscope_vars = Specs}.

scan_namespaces(State, Namespaces) ->
   NsList = [begin
                %_ = xqerl_context:add_statically_known_namespace(Ns, Px),
                #xqNamespace{namespace = Ns, prefix = Px}
             end
            || {Ns,Px} <- Namespaces],
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

variable_function_name(#qname{namespace = _Ns, prefix = Px, local_name = Ln}) ->
   %?dbg("variable_function_name",{Ns,Px,Ln}),
   List = if Px == [] ->
                Ln;
             true ->
                Px ++ ":" ++ Ln
          end,
   {list_to_atom(List), 1};
variable_function_name(Name) ->
   ?dbg("variable_function_name",Name).
%% variable_function_name(Id) ->
%%    {list_to_atom(lists:concat(["var$^",integer_to_list(Id)])), 1}.

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

