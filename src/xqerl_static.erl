%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2019 Zachary N. Dean  All Rights Reserved.
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

%-include("xqerl.hrl").
-include("xqerl_parser.hrl").

%% -dialyzer({[no_unused], [get_can_inline/1,
%%                          set_can_inline/2]}).

%% ====================================================================
%% API functions
%% ====================================================================
-export([handle_tree/2,
         handle_tree/3]).

-export([variable_hash_name/1]).
-export([function_hash_name/2]).
-export([string_atom/1,
         prolog_order/1]).


-define(true, true).
-define(false, false).
-define(atomic(Type,Val),atomic_value(Type,Val)).

-define(seqtype(A, T, O), #xqSeqType{anno = A, type = T, occur = O}).
-define(seqtype(A), #xqSeqType{anno = A}).

-define(boolone(Line), ?seqtype(Line, 'xs:boolean', one)).
-define(boolzone(Line), ?seqtype(Line, 'xs:boolean', zero_or_one)).
-define(stringone(Line), ?seqtype(Line, 'xs:string', one)).
-define(intone(Line), ?seqtype(Line, 'xs:integer', one)).
-define(qname_one(Line), ?seqtype(Line, 'xs:QName', one)).

-define(FN,<<"http://www.w3.org/2005/xpath-functions">>).
-define(XS,<<"http://www.w3.org/2001/XMLSchema">>).
-define(ERROR_MATCH(Err), 
        _:#xqError{name = #xqAtomicValue{value = {qname, _, _, Err}}}).
-define(ERR_VAR(N), #xqQName{namespace = <<"http://www.w3.org/2005/xqt-errors">>,
                           prefix = <<"err">>, 
                           local_name = N}).

-define(CALL(Name, Arity, Args, Line),
        #xqFunctionCall{name = Name,
                        arity = Arity, args = Args, anno = Line}).
-define(CALL(Fun, Line), #xqFunctionCall{call = Fun, anno = Line}).

-define(POSITION(L), 
        ?CALL(#xqQName{namespace = ?FN, local_name = <<"position">>}, 0, [], L)).
-define(HEAD(A, L),
        ?CALL(#xqQName{namespace = ?FN, local_name = <<"head">>}, 1, [A], L)).
-define(SUBSEQ2(A, B, L),
        ?CALL(#xqQName{namespace = ?FN, local_name = <<"subsequence">>},
              2, [A,B], L)).
-define(SUBSEQ3(A, B, C, L),
        ?CALL(#xqQName{namespace = ?FN, local_name = <<"subsequence">>},
              3, [A,B,C], L)).

-define(LN(LineNum), {undefined, LineNum}).

-define(NO_UPD(State, Line), 
        case is_updating(State) of true -> ?parse_err('XUST0001', ?LN(Line)); _ -> ok end).

% state should hold the entire static context, augmented by statements that 
% can do it in their own scope.
-record(context,
        {statement,      % possibly optimized statement
         statement_type, % give type information back to caller
         inscope_ns   = [#xqNamespace{namespace = <<>>, prefix = <<>>},
                         #xqNamespace{namespace = 
                                        <<"http://www.w3.org/XML/1998/namespace">>, 
                                      prefix = <<"xml">>}] ,
         static_count,
         can_inline   = false,
         is_db_node = false, % does this thing belong to a DB doc/collection  
         in_constructor = false, % currently in an XML constructor 
         in_predicate = false % currently in a predicate 
        }).

-record(state, 
        {% static context
         module_type,
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
         revalidation,
         is_updating = false,
         % helpers
         context,
         tab,
         digraph
   }).

handle_tree(Mod, BaseUri) -> handle_tree(Mod, BaseUri, []).

handle_tree(#xqModule{version     = {Version,Encoding}, 
                      prolog      = PrologAll,
                      declaration = Decl, 
                      type        = ModuleType,% main|library, 
                      body        = Body} = Mod,
            BaseUri, ImportAst) ->
    {ImportAstFuns, ImportSigFuns, 
     ImportAstVars, ImportSigVars} = 
        case ImportAst of
            _ when is_tuple(ImportAst) -> ImportAst;
            [] -> {[],[],[],[]}
        end,
    _ = erlang:put(var_id, 1),
    _ = valid_ver(Version),
    _ = valid_enc(string:uppercase(Encoding)),
    Tab = init_mod_scan(),
    _ = xqerl_context:set_static_base_uri(Tab,BaseUri),
    
    ModNs       = get_module_ns(Decl),
    {Prolog1, Prolog2} = prolog_order(PrologAll),
    %?parse_dbg("{Prolog1, Prolog2}",{Prolog1, Prolog2}),
    DefElNs     = get_def_elem_ns(Prolog1), 
    _           = get_def_func_ns(Prolog1),
    
    State = #state{known_collations = xqerl_context:static_collations(),
                   default_elem_ns = DefElNs,
                   context = #context{},
                   tab = Tab,
                   base_uri = BaseUri, 
                   module_type = ModuleType},

    Imports     = pro_mod_imports(Prolog1, Decl),
    Namespaces  = get_namespaces(Prolog1, ModNs, DefElNs),
    StaticNamespaces = xqerl_context:static_namespaces(),
    ConstNamespaces  = overwrite_static_namespaces(StaticNamespaces, Namespaces),
    State1 = set_namespaces(State, ConstNamespaces),
    
    State2 = scan_setters(State1, Prolog1),

    % any errors are in the static props
    %?parse_dbg("Imports", Imports),
    {ImpFunctions, ImpVariables, StaticProps} = get_imports(Imports, ModuleType),

    % throw error for imports not found
    %_ = [?parse_err(Err, ?LN(0)) || #xqError{} = Err <- StaticProps],

    ContextItem = pro_context_item(Prolog2, ModuleType),
    %?parse_dbg("ContextItem", ContextItem),

    Options     = pro_options(Prolog2, ModuleType),
    OptionMap   = scan_options(Options, BaseUri),

    Variables   = pro_glob_variables(Prolog2, ModNs),
    Functions   = pro_glob_functions(Prolog2, ModNs),
    % analyze for cyclical references
    AnalyzeFuns = ImportAstFuns ++ ImpFunctions ++ Functions ++ ImportSigFuns,
    AnalyzeVars = ImportAstVars ++ ImpVariables ++ Variables ++ ImportSigVars,
    DiGraph = xqerl_static_analysis:analyze(Body,
                                            AnalyzeFuns, 
                                            ContextItem ++ AnalyzeVars),

    Functions1 = maybe_append_imports(ImpFunctions, ImportSigFuns), 
    Variables1 = maybe_append_imports(ImpVariables, ImportSigVars),

    LU = {?FN, <<"function-lookup">>},

    _ = case lists:member({0,LU,2}, digraph:vertices(DiGraph)) of
            true ->
                [xqerl_static_analysis:add_edge(DiGraph, {Id,N,A}, ModuleType) 
                || {Id,N,A} 
                <- digraph:vertices(DiGraph), 
                Id =/= 0];
            _ ->
                ok
        end,
    AV = ContextItem ++ Variables1 ++ Variables,
    FV = Functions1 ++ Functions,

    ok = xqerl_static_analysis:has_cycle(DiGraph, AV),
    % add all the fun/vars in if library
    if 
        ModuleType == library ->
            add_all_to_graph(AV, FV, DiGraph);
        true ->
            ok
    end,

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
    OrderedGraph1 = 
        case lists:member(context_item, OrderedGraph) of
            true -> OrderedGraph;
            false -> [context_item|OrderedGraph]
        end,
    FunVarFltr = fun(context_item) ->
                        true;
                    (S) when is_tuple(S), element(1, S) =/= 0 ->
                        {true, element(1, S)};
                    (_) ->
                        false
                 end,
    FunVarOrd = lists:filtermap(FunVarFltr, OrderedGraph1),

    FunVarSorted =
        lists:filtermap(
            fun(context_item) ->
                   if ContextItem == [] ->
                          {true, #xqContextItemDecl{anno = 0,
                                                    external = true,
                                                    type = ?seqtype(0)}};
                      true ->
                          {true, ContextItem}
                   end;
               (FVId) ->
                   case lists:keyfind(FVId, #xqFunctionDef.id, Functions) of
                       false ->
                           case lists:keyfind(FVId, #xqVar.id, Variables) of
                               false -> false;
                               V -> {true,V}
                           end;
                       F -> {true,F}
                   end
            end, FunVarOrd),

    FunOrd = [FId || {FId,_, _}  <- OrderedGraph1, FId =/= 0],
    VarOrd = [VId || {VId,_}  <- OrderedGraph1, VId =/= 0],
    StatProps = [Prop || {static,Prop}  <- OrderedGraph1],
    FunctionsSorted = [F || 
                       I <- FunOrd,
                       #xqFunctionDef{id = FId} = F <- Functions,
                       I == FId], 
    VariablesSorted = [V || 
                       I <- VarOrd,
                       #xqVar{id = VId} = V <- Variables,
                       I == VId], 
    State3 = State2#state{digraph = DiGraph},

    FunctionSigs = scan_functions(FunctionsSorted),
    VariableSigs = scan_variables(VariablesSorted),

    CtxItemType =
        case ContextItem of
            [] ->
                ?seqtype(0);
            [#xqContextItemDecl{type = T1}] ->
                T1
        end,
%%                 TempS = 
%%                     State3#state{known_fx_sigs = FunctionSigs ++ Functions1,
%%                                  inscope_vars = VariableSigs ++ Variables1,
%%                                  context = #context{}},
%%                 CtxState = handle_node(TempS, ContextItem),
%%                 get_statement_type(CtxState)
%%         end,

    State4 = State3#state{context_item_type = CtxItemType,
                          known_fx_sigs = FunctionSigs ++ Functions1,
                          inscope_vars = VariableSigs ++ Variables1},
    %?parse_dbg("FunctionSigs", FunctionSigs),
    % here do the variable and function bodies
    {VarFunPart, FinalState} =
        lists:mapfoldl(
            fun(Node,IState1) ->
                   % reset the context type for each fun
                   IState3 = set_statement_type(IState1, CtxItemType),
                   IState = handle_node(IState3#state{context_item_type = CtxItemType}, Node),
                   {get_statement(IState), IState}
            end, State4, FunVarSorted ++ [Body]),

    digraph:delete(DiGraph),
    S1 = [X || #xqQuery{} = X  <- VarFunPart],
    S2 = [X || X  <- lists:reverse(VarFunPart), not is_record(X, xqQuery)],
   %%% for now, return a map with everything in it for the abstract part. 
   %% just until it has no idea of static context
   EmptyMap = #{file_name => BaseUri,
                imports => {ImpFunctions, ImpVariables, StaticProps},
                namespaces => FinalState#state.known_ns,
                variables => [], %FinalState#state.inscope_vars,
                var_tuple => [],
                options => OptionMap,
                ctx_var => 'Ctx0',
                parameters => [],
                context_item_type => CtxItemType,
                known_fx_sigs => FinalState#state.known_fx_sigs,
                tab => Tab,
                contains_updates => get_contains_updates(), 
                stat_props => StatProps,
                'boundary-space' => FinalState#state.boundary_space,
                'construction-mode' => FinalState#state.construction_mode,
                'default-collation' => FinalState#state.default_collation,
                'base-uri' => ?atomic('xs:anyURI', FinalState#state.base_uri),
                'ordering-mode' => FinalState#state.order_mode,
                'empty-seq-order' => FinalState#state.empty_order,
                'copy-namespaces' => FinalState#state.copy_ns_mode,
                known_collations => FinalState#state.known_collations,
                known_dec_formats => FinalState#state.known_dec_formats,
                body => Mod#xqModule{prolog = #xqProlog{sect_1 = Prolog1,
                                                        sect_2 = lists:flatten(S2)},
                                     body = S1}
               }, 
   EmptyMap.


handle_node(State, #xqUpdateExpr{anno = Line,
                                 kind = InsertKind, src = Src, tgt = Tgt} = Upd)
   % inserts
   when InsertKind == 'after';
        InsertKind == 'before';
        InsertKind == 'into_first';
        InsertKind == 'into_last';
        InsertKind == 'into' -> 
    State1 = set_updating(State, true),
    SrcState = handle_node(State1, Src),
    TgtState = handle_node(State1, Tgt),
    SrcStmt = get_statement(SrcState),
    TgtStmt = get_statement(TgtState),
    Node = Upd#xqUpdateExpr{src = SrcStmt, tgt = TgtStmt},
    set_statement_and_type(State1, Node, 
                           ?seqtype(Line, 'empty-sequence', zero)); 
handle_node(State, #xqUpdateExpr{kind = delete, tgt = Tgt, anno = Ln} = Upd) ->
    State1 = set_updating(State, true),
    TgtState = handle_node(State1, Tgt),
    TgtStmt = get_statement(TgtState),
    TgtType = get_statement_type(TgtState),
    TgtNodes = check_type_match(TgtType, ?seqtype(Ln, node, zero_or_many)),
    if 
        TgtNodes == false ->
            ?parse_err('XUTY0007', ?LN(Ln));
        true ->
            ok
    end,
    Node = Upd#xqUpdateExpr{tgt = TgtStmt},
    set_statement_and_type(State1, Node, 
                           ?seqtype(Ln, 'empty-sequence', zero)); 
handle_node(State, #xqUpdateExpr{id = Id, kind = replace_value, src = Val, tgt = Tgt, anno = Ln} = Upd) -> 
    State1 = set_updating(State, true),
    ValState = handle_node(State1,
                           #xqNodeConstructor{id = Id, 
                                              type = comp,
                                              cons = #xqTextNode{anno = Ln,
                                                                 type = comp,
                                                                 text = #xqEnclosedExpr{expr = Val}}}
                            ),
    ValStmt = get_statement(ValState),
    TgtState = handle_node(State1, Tgt),
    TgtStmt = get_statement(TgtState),
    TgtType = get_statement_type(TgtState),
    TgtNodes = check_type_match(TgtType, ?seqtype(Ln, node, zero_or_many)),
    if 
        TgtNodes == false ->
            ?parse_err('XUTY0008', ?LN(Ln));
        true ->
            ok
    end,
    Node = Upd#xqUpdateExpr{src = ValStmt, tgt = TgtStmt},
    set_statement_and_type(State1, Node, 
                           ?seqtype(Ln, 'empty-sequence', zero)); 
handle_node(State, #xqUpdateExpr{kind = replace, src = Val, tgt = Tgt, anno = Ln} = Upd) ->
    State1 = set_updating(State, true),
    ValState = handle_node(State1, Val),
    ValStmt = get_statement(ValState),
    TgtState = handle_node(State1, Tgt),
    TgtStmt = get_statement(TgtState),
    TgtType = get_statement_type(TgtState),
    TgtNodes = check_type_match(TgtType, ?seqtype(Ln, node, zero_or_many)),
    if 
        TgtNodes == false ->
            ?parse_err('XUTY0008', ?LN(Ln));
        true ->
            ok
    end,
    Node = Upd#xqUpdateExpr{src = ValStmt, tgt = TgtStmt},
    set_statement_and_type(State1, Node, 
                           ?seqtype(Ln, 'empty-sequence', zero)); 
handle_node(State, #xqUpdateExpr{kind = rename, src = Val, tgt = Tgt, anno = Ln} = Upd) -> 
    State1 = set_updating(State, true),
    ValState = handle_node(State1, Val),
    ValStmt = get_statement(ValState),
    ValStmt1 = resolve_element_name(State, ValStmt),
    ValType = get_statement_type(ValState),
    ValChk = check_type_match(ValType, 
                              ?seqtype(Ln, node, one)),
    %?parse_dbg("ValChk",{ValChk, ValType}),
    case ValType of
        #xqSeqType{type = 'xs:QName'} -> ok;
        #xqSeqType{type = 'xs:string'} -> ok;
        #xqSeqType{type = 'xs:untypedAtomic'} -> ok;
        _ when ValChk =/= false -> ok;
        _ ->
            ?parse_err('XPTY0004', ?LN(Ln))
    end,
    TgtState = handle_node(State1, Tgt),
    TgtStmt = get_statement(TgtState),
    TgtType = get_statement_type(TgtState),
    TgtNodes = check_type_match(TgtType, ?seqtype(Ln, node, zero_or_many)),
    if 
        TgtNodes == false ->
            ?parse_err('XUTY0012', ?LN(Ln));
        true ->
            ok
    end,
    Node = Upd#xqUpdateExpr{src = ValStmt1, tgt = TgtStmt},
    set_statement_and_type(State1, Node, 
                           ?seqtype(Ln, 'empty-sequence', zero)); 
handle_node(State, #xqModifyExpr{vars = Vars, expr = Expr, 
                                 return = Return} = Upd) ->
    State1 = set_updating(State, copy),
    CopyFold =
        fun(#xqVar{id = VId, 
                   name = Name, 
                   type = Type,
                   anno = Line} = X, IState) ->
               OldStatement =
                    case get_statement(IState) of
                        undefined -> [];
                        List when is_list(List) -> List;
                        Tuple -> [Tuple]
                    end,
               NewState = handle_node(IState, X),
               St2 = get_statement(NewState),
               StTy = get_statement_type(NewState),
               ErlVarName = copy_variable_name(VId),
               NewVar  = {Name,Type,[],ErlVarName, false},
               NewState1 = add_inscope_variable(NewState, NewVar),           
               case check_type_match(StTy, ?seqtype(Line, node, one)) of
                   false ->
                       ?parse_err('XUTY0013', ?LN(Line));
                   _ ->
                       set_statement(NewState1, OldStatement ++ [St2])
               end
        end,
    ReturnVarFold =
        fun(#xqVar{id = VId, 
                   name = Name, 
                   type = Type}, IState) ->
               ErlVarName = local_variable_name(VId),
               NewVar  = {Name,Type,[],ErlVarName, false},
               add_inscope_variable(IState, NewVar)
        end,
    CopyState = lists:foldl(CopyFold, set_statement(State1, undefined), Vars),
    VarsStmt = get_statement(CopyState),
    ExprState = handle_node(CopyState, Expr),
    ExprStmt = get_statement(ExprState),
    ReturnState0 = lists:foldl(ReturnVarFold, State1, Vars),
    ReturnState = handle_node(set_updating(ReturnState0,false), Return),
    ReturnStmt = get_statement(ReturnState),
    ReturnType = get_statement_type(ReturnState),
    Node = Upd#xqModifyExpr{vars = VarsStmt, 
                            expr = ExprStmt, 
                            return = ReturnStmt},
    set_statement_and_type(CopyState, Node, ReturnType); 
handle_node(State, #xqQName{anno = Line,
                            namespace = <<>>, 
                            prefix = Px, 
                            local_name = Ln} = QName)
  when is_binary(Px), is_binary(Ln) ->
    set_statement_and_type(State, QName, ?qname_one(Line));
handle_node(State, #xqQName{anno = Line,
                            namespace = Ns, 
                            prefix = Px, 
                            local_name = Ln} = QName)
  when is_binary(Ns), is_binary(Px), is_binary(Ln) ->
    set_statement_and_type(State, QName, ?qname_one(Line));
handle_node(State, #xqQName{anno = Line,
                            namespace = NsExpr, 
                            prefix = PxExpr, 
                            local_name = LnExpr} = QName) ->
    FNs = 
        fun(#xqEnclosedExpr{anno = A, expr = NsE} = N) ->
            NS1 = handle_node(State, NsE),
            NTy = get_statement_type(NS1),
            case check_type_match(NTy, ?stringone(A)) of
                false ->
                    ?parse_err('XPTY0004', ?LN(A));
                _ ->
                    case get_statement(NS1) of
                        Str when is_binary(Str) ->
                            Str;
                        Av1 when is_record(Av1, xqAtomicValue) ->
                            xqerl_types:cast_as(Av1, 'xs:string');
                        O ->
                            N#xqEnclosedExpr{expr = O}
                    end
            end;
           (default) ->
               State#state.default_elem_ns;
           (NsE) ->
               NsE
         end,
   FPx = 
        fun(#xqEnclosedExpr{anno = A, expr = PxE}) ->
            PS1 = handle_node(State, PxE),
            #xqSeqType{type = PTy} = get_statement_type(PS1),
            if 
                ?xs_string(PTy);
                ?node(PTy);
                is_record(PTy, xqKindTest), ?node(PTy#xqKindTest.kind);
                PTy == 'xs:untypedAtomic' ->
                    get_statement(PS1);
                true ->
                    ?parse_err('XPTY0004', ?LN(A))
               end;
            (PxE) ->
               PxE
         end,
   NsExpr1 = FNs(NsExpr),
   PxExpr1 = FPx(PxExpr),
   LnExpr1 = FPx(LnExpr),
   set_statement_and_type(State, QName#xqQName{namespace = NsExpr1, 
                                      prefix = PxExpr1, 
                                      local_name = LnExpr1}, ?qname_one(Line));
%% handle_node(State, [Node]) -> 
%%    handle_node(State, Node);
handle_node(State, Nodes) when is_list(Nodes) ->
    F = fun(Node) ->
            St = handle_node(State, Node),
            S = get_statement(St),
            T = get_statement_type(St),
            C = get_static_count(St),
            U = is_updating(St),
            {S,T,C,U}
        end,
    All = lists:map(F, Nodes),
    Upd = lists:any(fun({_,_,_,U}) -> U == true end, All),
    Statements = [S || {S,_,_,_} <- All],
    Types  = [T || {_S,T,_,_} <- All, 
                   T =/= #xqSeqType{type = 'empty-sequence', occur = zero}],
    Counts = [C || {_S,T,C,_} <- All, 
                   T =/= #xqSeqType{type = 'empty-sequence', occur = zero}],
    Counts1 = 
        lists:foldl(fun(_, undefined) -> undefined;
                       (I, Acc) when is_integer(I) -> I + Acc;
                       (undefined, _) -> undefined
                    end, 0, Counts),
    Type = get_list_type(Types),
    State1 = set_updating(State, Upd),
    set_static_count(set_statement_and_type(State1, Statements, Type), Counts1);
%% 3.1 Primary Expressions
handle_node(State, #xqQuery{query = Qry})-> 
    % clear all but global variables !!
    Statements = lists:map(fun(Q) ->
                                 get_statement(handle_node(State, Q))
                           end, Qry),
    set_statement(State, #xqQuery{query = Statements});
%% 3.1.1 Literals
handle_node(State, At) when is_binary(At) -> 
    S2 = set_static_count(State, 1),
    set_statement_and_type(S2, At, ?stringone(0));
handle_node(State, At) when is_integer(At) -> 
    S2 = set_static_count(State, 1),
    set_statement_and_type(S2, At, ?intone(0));
handle_node(State, At) when is_float(At);
                            At == infinity;
                            At == neg_infinity;
                            At == neg_zero;
                            At == nan -> 
    S2 = set_static_count(State, 1),
    set_statement_and_type(S2, At, ?seqtype(0, 'xs:double', one));
handle_node(State, #xqAtomicValue{type = T} = At) -> 
    S2 = set_static_count(State, 1),
    set_statement_and_type(S2, At, ?seqtype(0, T, one));
%% 3.1.2 Variable References
handle_node(State, #xqVarRef{name = Name, anno = Ln}) -> 
    St = get_variable(State, Name, Ln),
    Type = element(2, St),
    Varname = {variable, element(4, St)},
    case get_variable_static_value(State, Varname) of
        undefined ->
            set_statement_and_type(State, Varname, Type);
        true ->
            set_statement_and_type(set_is_db(State, true), Varname, Type);
        Literal ->
            set_statement_and_type(State, Literal, Type)
    end;
%% 3.1.3 Parenthesized Expressions
handle_node(State, #xqSequence{vals = [Single]}) ->
    handle_node(State, Single);
handle_node(State, #xqSequence{vals = Expr}) -> 
    S = handle_node(State, Expr),
    Upd = is_updating(S),
    State1 = set_updating(State, Upd),
    St = get_statement(S),
    T = get_statement_type(S),
    Cnt = get_static_count(S),
    Seq = #xqSequence{vals = l(St)},
    set_static_count(
      set_statement_and_type(State1, Seq, T), Cnt);
%% 3.1.4 Context Item Expression
handle_node(State = #state{context_item_type = CIType}, {'context-item', Line}) -> 
    set_statement_and_type(State, {'context-item', Line}, CIType);

handle_node(State, #xqContextItemDecl{anno = A,
                                      type = Type,
                                      external = External,
                                      default = Expr} = CI) -> 
    S1 = handle_node(State, Expr),
    St1 = get_statement(S1),
    ST  = get_statement_type(S1),
    SC = get_static_count(S1),
    case check_type_match(ST, Type) of
        _ when Expr == undefined ->
            ok;
        true when SC == 1;
                  SC == undefined;
                  External == true ->
            ok;
        _ ->
            ?parse_dbg("ST, Type1", {ST, Type}),
            ?parse_err('XPTY0004', ?LN(A))
    end,
    set_statement_and_type(State, CI#xqContextItemDecl{default = St1}, ST);
%% 3.1.5 Static Function Calls
handle_node(_State, #xqPartialFunctionCall{anno = A, 
                                           name = #xqQName{namespace = ?FN,
                                                           local_name = <<"concat">>},
                                           arity = 1}) ->
   ?parse_err('XPST0017', ?LN(A));
handle_node(State, #xqPartialFunctionCall{anno = A, 
                                          name = #xqQName{namespace = ?FN,
                                                          local_name = <<"concat">>} = Name,
                                          arity = Arity,
                                          args = Args}) ->
    if Arity == length(Args) ->
           ok;
        true ->
            ?parse_err('XPTY0004', ?LN(A))
    end,
    F = get_static_function(State, {Name, Arity}),
    StateC = set_in_constructor(State, false),
    SimpArgs = handle_list(StateC, Args),
    % zero_or_one to allow empty sequence
    FakeArgs = lists:duplicate(Arity, ?seqtype(A, 'xs:anyAtomicType', zero_or_one)),
    CheckArgs = check_fun_arg_types(State, SimpArgs, FakeArgs, A),
    NewArgs = 
        lists:map(fun({S,undefined}) -> % unknown size
                       S;
                     ({S,C}) when C =< 1 ->
                       S;
                     ({_S,_C}) -> % no known sequences
                       ?parse_err('XPTY0004', ?LN(A))
                  end, CheckArgs),
    % NewArgs wrapped as list on purpose!
    PlaceHolders = placeholders(Args),
    AnonArity = length(PlaceHolders),
    AnonFun = #xqFunctionDef{params = PlaceHolders,
                             arity = AnonArity,
                             body = ?CALL(F#xqFunctionDef{params = [#xqSequence{vals = NewArgs}]}, A),
                             type = ?stringone(A)},
    FakeArgs1 = lists:duplicate(AnonArity, 
                                ?seqtype(A, 'xs:anyAtomicType', zero_or_one)),
    ST = ?seqtype(A, #xqFunTest{kind = function,
                                params = FakeArgs1,
                                type = ?stringone(A)}, one),
    set_statement_and_type(State, AnonFun, ST);
handle_node(State, #xqPartialFunctionCall{anno = A, 
                                          name = Name,
                                          arity = Arity,
                                          args = Args}) -> 
    #xqFunctionDef{params = Params, 
                   type = Type} = F = get_static_function(State, {Name, Arity}),
    StateC = set_in_constructor(State, false),
    SimpArgs = handle_list(StateC, Args),
    CheckArgs = check_fun_arg_types(State, SimpArgs, Params, A),
    NewArgs = lists:map(fun({S,_C}) ->
                            S
                        end, CheckArgs),
    PlaceHolders = placeholders_1(Params, Args),
    AnonArity = length(PlaceHolders),
    AnonParamTypes = lists:filtermap(fun({P, #xqArgumentPlaceholder{}}) ->
                                            {true,P};
                                        (_) ->
                                            false
                                     end, lists:zip(Params, Args)),
    AnonFun = #xqFunctionDef{params = PlaceHolders,
                             arity = AnonArity,
                             body = ?CALL(F#xqFunctionDef{params = NewArgs}, A),
                             type = Type},
    ST = ?seqtype(A, #xqFunTest{kind = function,
                                params = AnonParamTypes,
                                type = Type}, one),
    set_statement_and_type(State, AnonFun, ST);

%% 3.1.5.1 Evaluating Static and Dynamic Function Calls
%% 3.1.5.2 Function Conversion Rules
%% 3.1.5.3 Function Coercion
%% 3.1.6 Named Function References
handle_node(_State, #xqFunctionRef{anno = A,
                                   name = #xqQName{namespace = ?FN,
                                                   local_name = <<"concat">>}, 
                                   arity = 1}) ->
    ?parse_err('XPST0017', ?LN(A));
handle_node(State, #xqFunctionRef{anno = A,
                                  name = #xqQName{namespace = ?FN,
                                                  local_name = <<"concat">>} = Name, 
                                  arity = Arity}) -> 
    #xqFunctionDef{type = T} = F = get_static_function(State, {Name, Arity}),
    NewP = lists:duplicate(Arity, ?seqtype(A, 'xs:anyAtomicType', zero_or_one)),
    Type = #xqFunTest{kind = function, params = NewP, type = T} ,
    set_statement_and_type(State, 
                           F#xqFunctionDef{anno = A, arity = Arity}, 
                           ?seqtype(A, Type, one));
handle_node(State, 
            #xqFunctionRef{anno = A,
                           name = #xqQName{namespace = ?FN,
                                           local_name = <<"static-base-uri">>}, 
                           arity = 0}) -> 
    RType = ?seqtype(A, 'xs:anyURI', zero_or_one),
    Base = xqerl_context:get_static_base_uri(State#state.tab),
    ArgSt = ?atomic('xs:anyURI', Base),
    Type = #xqFunTest{kind = function, params = [], 
                      type = RType},
    set_statement_and_type(State, 
                           #xqFunctionDef{anno = A,
                                          arity = 0,
                                          type = RType,
                                          body = ArgSt}, 
                           ?seqtype(A, Type, one));
handle_node(State, #xqFunctionRef{anno = A,
                                  name = Name,
                                  arity = Arity}) -> 
    #xqFunctionDef{params = P, 
                   type = T} = F = get_static_function(State, {Name, Arity}),
    Type = #xqFunTest{kind = function, params = P, type = T} ,
    set_statement_and_type(State, 
                           F#xqFunctionDef{anno = A, arity = Arity}, 
                           ?seqtype(A, Type, one));
%% 3.1.7 Inline Function Expressions
% this is a global variable
handle_node(State, #xqVar{name = Name, 
                          type = Type, 
                          external = true,
                          expr = undefined} = Node) ->
    GlobVarName = global_variable_name(Name),
    NewVar  = {Name,Type,[],{GlobVarName,1},true},
    State1 = add_inscope_variable(State, NewVar),
    set_statement_and_type(State1, Node, Type);
handle_node(State, #xqVar{name = Name, 
                          type = Type, 
                          external = Ext,
                          expr = Expr,
                          anno = Line} = Node) ->
    GlobVarName = global_variable_name(Name),
    VarState = handle_node(State, Expr),
    VarType = get_statement_type(VarState),
    VarStmt = get_statement(VarState),
    IsDB = get_is_db(VarState),
    SVarType = VarType,
    ?NO_UPD(VarState, Line),                                    
    VarStmt1 =
        case check_type_match(VarType, Type) of
            false ->
                ?parse_err('XPTY0004', ?LN(Line));
            cast when VarType#xqSeqType.type =/= item ->
                ?parse_err('XPTY0004', ?LN(Line));
            cast when Type#xqSeqType.type =/= item,
                      VarType#xqSeqType.type == item ->
                type_promote(VarStmt, Type, Line);
            cast when Type#xqSeqType.type =/= item ->
                ?parse_dbg("cast", {Type, VarType}),
                % declared type needs to be cast to match and was set
                ?parse_err('XPTY0004', ?LN(Line));
            _ ->
                VarStmt
        end,
   External = 
        case is_static_literal(VarStmt) of
            true when not Ext ->
                {false, VarStmt};
            _ when IsDB ->
                {false, true};
            _ ->
                Ext
        end,
    NewVar  = {Name,SVarType,[],{GlobVarName,1},External},
    State1 = add_inscope_variable(set_is_db(State, IsDB), NewVar),
    NewStatement = Node#xqVar{expr = VarStmt1},
    set_statement_and_type(State1, NewStatement, VarType);
handle_node(State, #xqFunctionDef{name = FName, 
                                  type = FType0, 
                                  annotations = Annotations,
                                  params = Params, 
                                  body = Expr,
                                  external = External,
                                  anno = Line} = Node) ->
    try
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

        UpdAnno = get_update_anno(Annotations),
        S1 = handle_node(State1, Expr),
        case is_updating(S1) of
            true when UpdAnno == simple -> ?parse_err('XUST0001', ?LN(Line)); 
            true when UpdAnno == none, External == false -> 
                ?parse_err('XUST0001', ?LN(Line)); 
            _ -> ok
        end,
        % ensure functions that return sequences are sequences
        St1 = case get_statement(S1) of
                  L when is_list(L), length(L) > 1 ->
                      #xqSequence{vals = L};
                  L ->
                      L
              end,
        Sty = get_statement_type(S1),
        ParamTypes = [T || #xqVar{type = T} <- Params],
        ST  = ?seqtype(Line, #xqFunTest{anno = Line,
                                        kind = function,
                                        params = ParamTypes,
                                        type = Sty}, one),
        SC = get_static_count(S1),
        FType = if FType0 == undefined ->
                       Sty;
                   true ->
                       get_statement(handle_node(State, FType0))
                end,
        FType1 = ?seqtype(Line, #xqFunTest{anno = Line,
                                           kind = function,
                                           params = ParamTypes,
                                           type = FType}, one),
        %?parse_dbg("FUN", {ST, FType1}),
        NoCast = check_type_match(ST, FType1),
        SimType = FType#xqSeqType.type,
        %?parse_dbg("FUN", {FType#xqSeqType.type, NoCast, ST, FType1}),
        St2 = if NoCast == true, is_record(SimType, xqFunTest) ->
                     case SimType#xqFunTest.type of
                         any ->
                             type_ensure(Sty, FType, St1, Line);
                         _ ->
                             type_promote(St1, FType, Line)
                     end; % function coercion
                 NoCast == true ->
                     type_ensure(Sty, FType, St1, Line);
                 NoCast == cast ->
                     % the function return type promotes the output
                     type_promote(St1, FType, Line); 
                 NoCast == atomize ->
                     Promote = check_type_match(atomized_node_type(ST),FType),
                     if Promote == cast ->
                            type_promote({atomize, St1}, FType, Line);
                        Promote == true ->
                            type_promote(St1, FType, Line);
                        true ->
                            ?parse_err('XPTY0004', ?LN(Line))
                     end; % namespace PI and comment are strings, rest untypedAtomic
                 true ->
                     ?parse_dbg("XPTY0004", {NoCast, ST, FType1}),
                     ?parse_err('XPTY0004', ?LN(Line)) 
               end,
    Node1 = Node#xqFunctionDef{type = FType, body = St2},
    OState = update_function_type(State, Node1),
    set_static_count(set_statement_and_type(OState, Node1, FType1), SC)
    catch
        ?ERROR_MATCH(<<"XQST0052">>) -> ?parse_err('XPST0051', ?LN(Line));
        _:#xqError{} = Err -> ?parse_err(Err, ?LN(Line))
    end;
%% 3.1.8 Enclosed Expressions
handle_node(State, #xqEnclosedExpr{expr = Expr} = Node) -> 
    S1 = handle_node(State, Expr),
    Stm = get_statement(S1),
    Sty = get_statement_type(S1),
    IsUpd = is_updating(S1),
    set_statement_and_type(set_updating(State, IsUpd), 
                           Node#xqEnclosedExpr{expr = Stm}, 
                           Sty);

%% 3.2 Postfix Expressions
handle_node(State, #xqPostfixExpr{part = false,
                                  expr = ?CALL(_, _) = Fx, 
                                  post = PostFixArgs} = Node) -> 
    % postfix with a function call will be fn:function-lookup
    S1 = handle_node(State, Fx),
    St = get_statement(S1),
    Ty = get_statement_type(S1),
    IsFun = check_type_match(Ty, ?seqtype(0, function, one)),
    IsArgs = is_record(hd(PostFixArgs), xqArgumentList),
    if 
        IsArgs == true, IsFun =/= true ->
            [#xqArgumentList{anno = A}|_] = PostFixArgs,
            ?parse_err('XPTY0004', ?LN(A));
        true ->
            ok
    end,
    NewPreds = handle_predicates(S1, PostFixArgs),
    NewPredSt = get_statement(NewPreds),
    NewPredTy = get_statement_type(NewPreds),
    set_statement_and_type(State, 
                           Node#xqPostfixExpr{expr = St,
                                              post = NewPredSt}, 
                           NewPredTy);

handle_node(State, 
            #xqPostfixExpr{part = false,
                           expr = 
                             #xqFunctionRef{anno = A,
                                            name = #xqQName{namespace = ?XS} = Name,
                                            arity = 1},
                           post = [#xqArgumentList{args = [Arg]}]}) -> 
    S1 = handle_node(State, Arg),
    St1 = get_statement(S1),
    case St1 of
        #xqAtomicValue{} ->
            handle_node(State, ?CALL(Name, 1, [St1], A));
        _ when is_integer(St1);
               is_float(St1);
               is_binary(St1) ->
            handle_node(State, ?CALL(Name, 1, [St1], A));
        _ ->
            #xqFunctionDef{params = Params, 
                           type = Type} = F = get_static_function(State, {Name, 1}),
            CheckArg = check_fun_arg_types(State, [S1], Params, A),
            NewArgs = lists:map(fun({S,_C}) ->
                                       S
                                end, CheckArg),
            set_statement_and_type(State,
                                   ?CALL(F#xqFunctionDef{anno = A,
                                                         params = NewArgs}, A), 
                                   Type)
    end;
handle_node(_State, 
            #xqPostfixExpr{
               expr = #xqFunctionRef{anno = A,
                                     name = #xqQName{namespace = ?FN, 
                                                     local_name = <<"concat">>},
                                     arity = 1}}) -> 
    ?parse_err('XPST0017', ?LN(A));
handle_node(State, 
            #xqPostfixExpr{
               part = false,
               expr = #xqFunctionRef{anno = A,
                                     name = #xqQName{namespace = ?FN, 
                                                     local_name = <<"concat">>} = Name,
                                     arity = Arity},
               post = [#xqArgumentList{args = Args}]}) -> 
    if 
        Arity =/= length(Args) ->
            ?parse_err('XPTY0004', ?LN(A));
        true -> ok
    end,
    #xqFunctionDef{type = Type} = F = get_static_function(State, {Name, Arity}),
    Params = lists:duplicate(Arity, ?seqtype(A, 'xs:anyAtomicType', zero_or_one)),
    SimpArgs = handle_list(State, Args),
    CheckArgs = check_fun_arg_types(State, SimpArgs, Params, A),
    NewArgs = lists:map(fun({S,_C}) ->
                           S
                       end, CheckArgs),
    set_statement_and_type(State, 
                           ?CALL(F#xqFunctionDef{anno = A,
                                                 params = [NewArgs]}, A), 
                           Type);
handle_node(State, 
            #xqPostfixExpr{
               part = false,
               expr = #xqFunctionRef{anno = A,
                                     name = #xqQName{} = Name,
                                     arity = Arity},
               post = [#xqArgumentList{args = Args}]}) -> 
    if 
        Arity =/= length(Args) ->
            ?parse_err('XPTY0004', ?LN(A));
        true -> ok
    end,
    #xqFunctionDef{params = Params, type = Type} =
      F = get_static_function(State, {Name, Arity}),
    SimpArgs = handle_list(State, Args),
    CheckArgs = check_fun_arg_types(State, SimpArgs, Params, A),
    NewArgs = lists:map(fun({S,_C}) ->
                            S
                        end, CheckArgs),
    set_statement_and_type(State, 
                           ?CALL(F#xqFunctionDef{anno = A,
                                                 params = NewArgs}, A), 
                           Type);
% this could be a function/map/array variable
handle_node(State, 
            #xqPostfixExpr{
               part = false,
               expr = #xqVarRef{name = Name, anno = Ln} = Ref,
               post = [#xqArgumentList{args = Args} = Al]} = Node) -> 
    {_Name,FType,_Annos,_VarName,_External} = get_variable(State, Name, Ln),
    {Params,Type} =
        case FType of
            #xqSeqType{type = #xqFunTest{params = IParams, type = IType}} ->
                if IType == any;
                    IType == undefined ->
                        {IParams, ?seqtype(Ln)};
                   true ->
                       {IParams, IType}
                end;
            #xqSeqType{} ->
                {[], FType};
            _Other ->
                {[], ?seqtype(Ln)}
        end,
    SimpArgs = handle_list(State, Args),
    CheckArgs = check_fun_arg_types(State, SimpArgs, Params, Ln),
    NewArgs = lists:map(fun({S,_C}) ->
                            S
                        end, CheckArgs),
    Ref1 = get_statement(handle_node(State, Ref)),
    set_statement_and_type(State, 
                           Node#xqPostfixExpr{
                                  expr = Ref1,
                                  post = [Al#xqArgumentList{args = NewArgs}]},
                           Type);
handle_node(State, 
            #xqPostfixExpr{
               part = true,
               expr = #xqVarRef{name = Name, anno = Ln} = Ref,
               post = [#xqArgumentList{args = Args}|RestArgs]} = Node) -> 
    {_Name,FType,_Annos,_VarName,_External} = get_variable(State, Name, Ln),
    {Params,Type} =
        case FType of
            #xqSeqType{type = #xqFunTest{kind = map, 
                                         params = IParams, type = IType}} ->
            if 
                IType == any ->
                    {IParams, ?seqtype(Ln, item, one)};
                true ->
                    {IParams, IType}
            end;
            #xqSeqType{type = #xqFunTest{params = IParams, type = IType}} ->
                {IParams, IType};
            #xqSeqType{type = _UType} ->
                {[], FType}
        end,
    StateC = set_in_constructor(State, false),
    SimpArgs = handle_list(StateC, Args),
    CheckArgs = check_fun_arg_types(State, SimpArgs, Params, Ln),
    NewArgs = lists:map(fun({S,_C}) ->
                            S
                        end, CheckArgs),
    PlaceHolders = placeholders_1(Params, Args),
    AnonArity = length(PlaceHolders),
    AnonParamTypes = 
        if 
            Params == any ->
                [?seqtype(AA) || 
                 #xqArgumentPlaceholder{anno = AA} <- Args];
            true ->
                lists:filtermap(fun({P, #xqArgumentPlaceholder{}}) ->
                                       {true,P};
                                    (_) -> false
                                end, lists:zip(Params, Args))
        end,
    AnonBody = Node#xqPostfixExpr{
                      part = false,
                      expr = Ref,
                      post = [#xqArgumentList{args = NewArgs}|RestArgs]},
    AnonFun = #xqFunctionDef{anno = Ln,
                             params = PlaceHolders,
                             arity = AnonArity,
                             body = AnonBody,
                             type = Type},
    %?parse_dbg("AnonFun",AnonFun),
    ST = ?seqtype(Ln, #xqFunTest{kind = function,
                                 params = AnonParamTypes,
                                 type = Type}, one),
    set_statement_and_type(State, AnonFun, ST);
handle_node(State, 
            #xqPostfixExpr{
               part = true,
               expr = #xqFunctionRef{anno = Ln,
                                     name = #xqQName{},
                                     arity = Arity} = Ref,
               post = [#xqArgumentList{args = Args}|RestArgs]} = Node) -> 
    if 
        Arity =/= length(Args) ->
            ?parse_err('XPTY0004', ?LN(Ln));
        true -> ok
    end,
    FState = handle_node(State, Ref),
    Fx = get_statement(FState),
    #xqFunctionDef{params = Params0, type = Type, body = B} = Fx,
    Params = if 
                 B == {xqerl_mod_fn,concat,2} ->
                    lists:duplicate(length(Args), hd(Params0));
                true -> Params0
             end,
    StateC = set_in_constructor(State, false),
    SimpArgs = handle_list(StateC, Args),
    CheckArgs = check_fun_arg_types(State, SimpArgs, Params, Ln),
    NewArgs = lists:map(fun({S,_C}) ->
                            S
                        end, CheckArgs),
    PlaceHolders = placeholders_1(Params, Args),
    AnonArity = length(PlaceHolders),
    AnonParamTypes = lists:filtermap(fun({P, #xqArgumentPlaceholder{}}) ->
                                            {true,P};
                                         (_) ->
                                             false
                                     end, lists:zip(Params, Args)),
    AnonBody = Node#xqPostfixExpr{part = false,
                                  expr = Fx,
                                  post = [#xqArgumentList{args = NewArgs}|RestArgs]},
    AnonFun = #xqFunctionDef{anno = Ln,
                             params = PlaceHolders,
                             arity = AnonArity,
                             body = AnonBody,
                             type = Type},
    ST = ?seqtype(Ln, #xqFunTest{kind = function,
                                 params = AnonParamTypes,
                                 type = Type}, one),
    set_statement_and_type(State, AnonFun, ST);

handle_node(State, 
            #xqPostfixExpr{
               part = true,
               expr = ?CALL(#xqQName{}, Arity, Args, Line) = Ref,
               post = [#xqArgumentList{args = Args2}|RestArgs]} = Node) -> 
    % this is a function-lookup call
    if 
        Arity =/= length(Args) ->
            ?parse_err('XPTY0004', ?LN(Line));
        true -> ok
    end,
    FState = handle_node(State, Ref),
    Fx = get_statement(FState),
    ?CALL(#xqFunctionDef{params = _Params, type = Type, anno = Line}, Line) = Fx,
    StateC = set_in_constructor(State, false),
    SimpArgs = handle_list(StateC, Args2),
    %CheckArgs = check_fun_arg_types(State, SimpArgs, Params),
    NewArgs = lists:map(fun(S) ->
                            get_statement(S)
                        end, SimpArgs),
    PlaceHolders = placeholders(Args2),
    AnonArity = length(PlaceHolders),
    AnonParamTypes = lists:filtermap(fun(#xqArgumentPlaceholder{anno = AA}) ->
                                            {true,?seqtype(AA)};
                                        (_) ->
                                            false
                                     end, Args2),
    AnonBody = Node#xqPostfixExpr{part = false,
                                  expr = Fx,
                                  post = [#xqArgumentList{args = NewArgs}]},
    AnonFun = #xqFunctionDef{anno = Line,
                             params = PlaceHolders,
                             arity = AnonArity,
                             body = AnonBody,
                             type = Type},
    ST = ?seqtype(Line, #xqFunTest{kind = function,
                                   params = AnonParamTypes,
                                   type = Type}, one),
    case RestArgs of
        [] ->
            set_statement_and_type(State, AnonFun, ST);
        _ ->
            Node1 = Node#xqPostfixExpr{part = false,
                                       expr = AnonFun,
                                       post = RestArgs},
            set_statement(State, Node1)
    end;
handle_node(State, 
            #xqPostfixExpr{
               part = true,
               expr = #xqFunctionDef{anno = A,
                                     params = Params, 
                                     body = Body,
                                     type = Type} = F,
               post = [#xqArgumentList{args = Args}]}) -> 
    StateC = set_in_constructor(State, false),
    SimpArgs = handle_list(StateC, Args),
    CheckArgs = check_fun_arg_types(State, SimpArgs, Params, A),
    NewArgs = lists:map(fun({S,_C}) ->
                            S
                        end, CheckArgs),
    PlaceHolders = placeholders_1(Params, Args),
    AnonArity = length(PlaceHolders),
    AnonParamTypes = lists:filtermap(fun({P, #xqArgumentPlaceholder{}}) ->
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
    AnonFun = #xqFunctionDef{anno = A,
                             params = {PlaceHolders,Params},
                             arity = AnonArity,
                             body = F#xqFunctionDef{anno = A,
                                                    params = NewArgs,
                                                    body = BodyF},
                             type = Type},
    ST = ?seqtype(A, #xqFunTest{kind = function,
                                params = AnonParamTypes,
                                type = Type}, one),
    set_statement_and_type(State, #xqFunctionCall{call = AnonFun,
                                                  anno = A}, ST);

handle_node(State, #xqPostfixExpr{expr = Sequence,
                                  post = Filters} = P) when length(Filters) > 1 -> 
    L = lists:foldl(fun(Fltr,Acc) ->
                           P#xqPostfixExpr{expr = Acc, post = [Fltr]}
                    end, Sequence, Filters),
    %?parse_dbg("L",L),
    handle_node(State, L);

handle_node(State, #xqPostfixExpr{id = Id,
                                  expr = Sequence,
                                  post = Filters} = P) -> 
    S1 = handle_node(State, Sequence),
    St = get_statement(S1),
    Sc = get_static_count(S1),
    %?parse_dbg("get_static_count(S1)",{St,Sc,Filters}),
    _ = [?parse_err('XPTY0004', ?LN(A)) || 
         #xqArgumentList{anno = A} <- l(Filters), 
         Sc > 1, 
         Sc =/= undefined],
    Lines = [A || #xqArgumentList{anno = A} <- l(Filters), A =/= undefined] ++
            [A || #xqPredicate{anno = A} <- l(Filters), A =/= undefined],
    Line = case Lines of
               [A|_] ->
                   A;
               [] ->
                   #xqSeqType{anno = Ba} = get_statement_type(S1),
                   Ba
           end,
    F1 = handle_predicates(S1, Filters),
    Ty = get_statement_type(F1),
    Ft = get_statement(F1),
    Pf = P#xqPostfixExpr{expr = St, post = Ft},
    case Ty of
        #xqSeqType{type = NodeType} when ?node(NodeType) ->
            Ps = #xqPathExpr{anno = Line, id = Id, expr = [Pf]},
            set_statement_and_type(State, Ps, Ty);
        _ ->
            set_statement_and_type(State, Pf, Ty)
    end;
%% 3.2.1 Filter Expressions
%% 3.2.2 Dynamic Function Calls
%% 3.3 Path Expressions
%% 3.3.1 Relative Path Expressions
%% 3.3.1.1 Path operator (/)
%% 3.3.2 Steps
%% the type of a step path is the last steps type as 0 or many
% Steps is a list of steps to take in order
handle_node(State, atomize) ->
   Type = ?seqtype(0, 'xs:anyAtomicType', zero_or_many),
   set_statement_and_type(State, atomize, Type);
handle_node(State, double) ->
   Type = ?seqtype(0, 'xs:double', zero_or_many),
   set_statement_and_type(State, double, Type);
handle_node(State, {atomize, #xqPathExpr{id = Id, expr = Steps} = Pe}) ->
    case erlang:get({'$_where', Id}) of
        undefined ->
            handle_node(State, Pe#xqPathExpr{expr = Steps ++ [atomize]});
        OtherSide ->
            Type = get_statement_type(handle_node(State, OtherSide)),
            #xqSeqType{type = St} = get_simple_type(Type),
            %?parse_dbg("Type",Type),
            %?parse_dbg("St  ",St),
            if 
                ?xs_numeric(St) ->
                    handle_node(State, Pe#xqPathExpr{expr = Steps ++ [double]});
                true ->
                    handle_node(State, Pe#xqPathExpr{expr = Steps ++ [atomize]})
            end
    end;
handle_node(State, #xqPathExpr{anno = A, expr = Steps} = Pe) ->
    %% Anno patched here as the parser may have not given one
    StateC = set_in_constructor(State, false),
    IsMaybeDb = case get_in_predicate(State) of
                    true ->
                        get_is_db(State);
                    _ ->
                        false
                end,
    %?parse_dbg("Type",get_statement_type(State)),
    Fold = 
        fun(Step, {LastType, LastDB, LastLine}) ->
               State2 = set_statement_type(StateC, LastType),
               State1 = handle_node(State2, Step),
               Val = get_statement(State1),
               Typ = case get_statement_type(State1) of
                         undefined ->
                             ?seqtype(LastLine, node, zero_or_many);
                         Other ->
                             Other#xqSeqType{occur = zero_or_many}
                     end,
               Line1 = case LastLine of
                           undefined ->
                               #xqSeqType.anno;
                           _ ->
                               LastLine
                       end,
               {Val, {Typ, LastDB orelse get_is_db(State1), Line1}}
        end,
    {Statements, {Type, IsDB, Line}} = 
        lists:mapfoldl(Fold, {get_statement_type(State), IsMaybeDb, A}, Steps),
    %?parse_dbg("{Id, Statements}",{Id, Statements}),
    Ps = Pe#xqPathExpr{anno = Line, expr = Statements},
    set_statement_and_type(set_is_db(State, IsDB), Ps, Type);
handle_node(State, {root, A}) ->
   set_statement_and_type(State, {'root', A}, 
                          ?seqtype(A, 'document-node', zero_or_one));
%% 3.3.2.1 Axes
handle_node(State, #xqKindTest{anno = A,
                               kind = Kind, 
                               name = Name, 
                               type = Type} = Node) ->
    QName = resolve_qname(Name, State),
    if 
        Kind == 'schema-element';
        Kind == 'schema-attribute' -> % not supported, so all names are unknown
            ?parse_err('XPST0008', ?LN(A));
        true -> ok
    end,
    Type1 = if 
                Type == undefined -> undefined;
                true -> resolve_kind_type(State, Type)
            end,
    set_statement(State, Node#xqKindTest{name = QName, type = Type1});
handle_node(State, #xqNameTest{name = Name} = Node) ->
    QName = resolve_qname(Name, State),
    set_statement(State, Node#xqNameTest{name = QName});
handle_node(State, #xqFunTest{params = Params, 
                              type = Type, 
                              annotations = Annos} = Node) ->
    Check = fun(#xqAnnotation{
                   name = #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>,
                                   local_name = L}}) 
                when L == <<"public">>;
                     L == <<"private">> ->
                   ok;
               (#xqAnnotation{anno = A, name = #xqQName{namespace = N}}) ->
                   _ = reserved_namespaces(A, N),
                   ok
            end,
    _ = lists:foreach(Check, Annos),    
    Params1 = if Params == any -> any;
                 true ->
                     l(get_statement(handle_node(State,Params)))
              end,
    Type1 = if Type == any -> any;
               true ->
                   get_statement(handle_node(State,Type))
            end,
    set_statement(State, Node#xqFunTest{params = Params1, type = Type1});
%% 3.3.2.2 Node Tests
handle_node(State, #xqAxisStep{direction = Direction, 
                               axis = Axis, 
                               node_test = #xqKindTest{kind = Kind, 
                                                       name = KName,
                                                       type = KType} = Kt, 
                               predicates = Preds,
                               anno = Line} = Node) ->
    LastType = State#state.context_item_type,
    InPred = get_in_predicate(State),
    case check_type_match(LastType, ?seqtype(Line, node, zero_or_many)) of
        false when InPred ->
            ?parse_err('XPTY0020', ?LN(Line)); % static error step on non-node in predicate
        false ->
            ?parse_dbg("LastType",LastType),
            ?parse_err('XPTY0019', ?LN(Line)); % static error step on non-node
        _ ->
            ok
    end,

    KName1 = 
        if 
            Kind == 'processing-instruction' ->
                resolve_pi_name(State, KName);
            Kind == 'element' ->
                resolve_element_name(State, KName);
            Kind == 'attribute' ->
                resolve_attribute_name(State, KName);
            true ->
                resolve_qname(KName, State)
        end,
    if 
        Kind == 'schema-element';
        Kind == 'schema-attribute' -> % not supported, so all names are unknown
            ?parse_err('XPST0008', ?LN(Line));
        true ->
            ok
    end,
    KType1 = resolve_kind_type(State, KType),
    OType = ?seqtype(Line, Kt#xqKindTest{name = KName1,
                                         type = KType1}, zero_or_one),
    %?parse_dbg("OType", OType),
    State1 = 
        if 
            Direction == forward andalso Axis == attribute ->
                set_statement_and_type(State, Node, 
                                       ?seqtype(Line, attribute, zero_or_one));
            Direction == forward ->
                set_statement_and_type(State, Node, 
                                       ?seqtype(Line, element, zero_or_one));
            true ->
                set_statement_and_type(State, Node, ?seqtype(Line))
        end,
    NewPreds = get_statement(handle_predicates(State1, Preds)),
    set_statement_and_type(State1,
                           Node#xqAxisStep{predicates = NewPreds,
                                           node_test =
                                             Kt#xqKindTest{name = KName1, 
                                                           type = KType1}},
                           OType);
%% 3.3.3 Predicates within Steps
%% 3.3.4 Unabbreviated Syntax
%% 3.3.5 Abbreviated Syntax
%% 3.4 Sequence Expressions
handle_node(State, 'empty-expr') ->
   S1 = set_statement(State, []),
   S2 = set_static_count(S1, 0),
   set_statement_type(S2, ?seqtype(0, 'empty-sequence', zero));
handle_node(State, 'empty-sequence') ->
   S1 = set_statement(State, 'empty-sequence'),
   S2 = set_static_count(S1, 0),
   set_statement_type(S2, ?seqtype(0, 'empty-sequence', zero));
%% 3.4.1 Constructing Sequences
handle_node(State, #xqRange{anno = A,
                            from = Expr1, 
                            to = Expr2}) -> 
   Type = ?seqtype(A, 'xs:integer', zero_or_one),
   S1 = handle_node(State, Expr1),
   S2 = handle_node(State, Expr2),
   T1 = get_statement_type(S1),
   T2 = get_statement_type(S2),
   NC1 = check_type_match(T1, Type),
   NC2 = check_type_match(T2, Type),
   Stm1 = get_statement(S1),
   Stm2 = get_statement(S2),
   St1 = 
        if 
            NC1 -> Stm1;
            NC1 == cast ->
                type_promote(Stm1, Type, A);
            NC1 == atomize ->
                type_promote({atomize, Stm1}, Type, A);
            Stm1 == neg_zero ->
                0;
            true -> 
                ?parse_err('XPTY0004', ?LN(A))
        end,
    St2 = 
        if 
            NC2 -> Stm2;
            NC2 == cast ->
                type_promote(Stm2, Type, A);
            NC2 == atomize ->
                type_promote({atomize, Stm2}, Type, A);
            Stm2 == neg_zero ->
                0;
            true ->
                ?parse_err('XPTY0004', ?LN(A))
        end,
    Izm = ?seqtype(A, 'xs:integer', zero_or_many),
    Iom = ?seqtype(A, 'xs:integer', one_or_many),
    Rng = #xqRange{anno = A, from = St1, to = St2},
    Atomics = both_atomics(St1, St2),
    if 
        Atomics ->
            Diff = xqerl_operators:subtract(St2, St1),
            if 
                Diff < 0 ->
                    set_statement_and_type(State, 
                                           'empty-sequence',
                                           ?seqtype(A, 'empty-sequence', zero));
                is_number(Diff) ->
                    set_static_count(
                        set_statement_and_type(State, Rng, Iom), Diff + 1);
                true ->
                    ?parse_err('XPTY0004', ?LN(A)) % was decimal?
            end;
        true ->
            set_statement_and_type(State, Rng, Izm)
    end;
%% 3.4.2 Combining Node Sequences
handle_node(State, #xqNodeUnionExpr{anno = A, expr = [Expr|Exprs]} = U) ->
    Sh = handle_node(State, Expr),
    Sth = get_statement(Sh),
    Th = get_statement_type(Sh),
    Map = fun(Ex, Ty) ->
                 S = handle_node(State, Ex),
                 St = get_statement(S),
                 T = get_statement_type(S),
                 {St, get_list_type([Ty,T])}
          end,
    {Tail, Type} = lists:mapfoldl(Map, Th, Exprs),
    NdTyp = ?seqtype(A, node, zero_or_many),
    _ = case check_type_match(Type, NdTyp) of
            false ->
                ?parse_err('XPTY0004', ?LN(A));
            _ -> ok
        end,
    U1 = U#xqNodeUnionExpr{expr = [Sth|Tail]},
    set_statement_and_type(State, U1, Type);
handle_node(State, #xqNodeSetExpr{anno = A,
                                  kind = K,
                                  lhs = Expr1,
                                  rhs = Expr2}) -> 
    State1 = handle_node(State, Expr1),
    State2 = handle_node(State, Expr2),
    Val1 = get_statement(State1),
    Val2 = get_statement(State2),
    Typ1 = get_statement_type(State1),
    Typ2 = get_statement_type(State2),
    Typ = if K == except ->
                 maybe_zero_type(Typ1);
             true ->
                 maybe_zero_type(get_list_type([Typ1,Typ2]))
          end,
    NdTyp = ?seqtype(A, node, zero_or_many),
    Check = fun(T) ->
                 case check_type_match(T, NdTyp) of
                    false ->
                       ?parse_err('XPTY0004', ?LN(A));
                    _ ->
                       ok
                 end
            end,
    ok = Check(Typ1),
    ok = Check(Typ2),
    set_statement_and_type(State, #xqNodeSetExpr{anno = A,
                                                 kind = K,
                                                 lhs = Val1,
                                                 rhs = Val2}, Typ);
%% 3.5 Arithmetic Expressions
handle_node(State, #xqArithExpr{op = Op,
                                lhs = Expr1,
                                rhs = Expr2,
                                anno = Line} = Expr) ->
    S1 = handle_node(State, Expr1),
    S2 = handle_node(State, Expr2),
    St1 = get_statement(S1),
    St2 = get_statement(S2),
    T1 = get_statement_type(S1),
    T2 = get_statement_type(S2),
    try
        T3 = static_operator_type(Op,T1,T2),
        Atomic = both_atomics(St1, St2),
        BothOne = both_singleton(T1, T2),
        NewExpr =
            if 
                Atomic, Op =:= '+' ->
                    xqerl_operators:add(St1, St2);
                Atomic, Op =:= '-' ->
                    xqerl_operators:subtract(St1, St2);
                Atomic, Op =:= '-' ->
                    xqerl_operators:subtract(St1, St2);
                Atomic, Op =:= '*' ->
                    xqerl_operators:multiply(St1, St2);
                Atomic, Op =:= 'div', is_record(St2, xqAtomicValue), element(3, St2) /= 0 ->
                    xqerl_operators:divide(St1, St2);
                Atomic, Op =:= 'div', is_number(St2), St2 /= 0 ->
                    xqerl_operators:divide(St1, St2);
                Atomic, Op =:= 'idiv' ->
                    xqerl_operators:idivide(St1, St2);
                Atomic, Op =:= 'mod' ->
                    xqerl_operators:modulo(St1, St2);
                ?node(T1#xqSeqType.type), ?node(T2#xqSeqType.type) ->
                    Expr#xqArithExpr{lhs = {double, St1}, rhs = {double, St2}};
                ?node(T1#xqSeqType.type) ->
                    Expr#xqArithExpr{lhs = {double, St1}, rhs = St2};
                ?node(T2#xqSeqType.type) ->
                    Expr#xqArithExpr{lhs = St1, rhs = {double, St2}};
                true ->
                    %?parse_dbg("{T1, T2, T3}", {T1, T2, T3}),
                    Expr#xqArithExpr{lhs = St1, rhs = St2}
            end,
        Type = 
            if 
                is_record(NewExpr, xqAtomicValue) ->
                     ?seqtype(Line, NewExpr#xqAtomicValue.type, one);
                is_integer(NewExpr) ->
                     ?seqtype(Line, 'xs:integer', one);
                is_float(NewExpr) ->
                     ?seqtype(Line, 'xs:double', one);
                BothOne ->
                     ?seqtype(Line, T3, one);
                true ->
                     ?seqtype(Line, T3, zero_or_one)
             end,
        set_statement_and_type(State, NewExpr, Type)
    catch
        _:#xqError{} = Err ->
            ?parse_err(Err, ?LN(Line));
        _:Err when is_atom(Err) ->
            ?parse_err(Err, ?LN(Line))
    end;
handle_node(State, #xqUnaryExpr{anno = A,
                                sign = Sign, 
                                expr = Expr} = Node) ->
    S1 = handle_node(State, Expr),
    St1 = get_statement(S1),
    Sty = get_statement_type(S1),
    CheckNum = check_type_match(Sty, ?seqtype(A, 'xs:numeric', zero_or_one)),
    if CheckNum == false -> ?parse_err('XPTY0004', ?LN(A));
       true -> ok
    end,
    Atomic = all_atomics(St1),
    IsOne = Sty#xqSeqType.occur == one,
    Inv = inverse_numeric_type(Sty#xqSeqType.type),
    if 
        Atomic, Sign == '+' ->
            Eq = xqerl_operators:unary_plus(St1),
            set_statement_and_type(State, Eq, Sty);
        Atomic ->
            Eq = xqerl_operators:unary_minus(St1),
            set_statement_and_type(State, Eq, ?seqtype(A, Inv, one));
        IsOne ->
            set_statement_and_type(State, Node#xqUnaryExpr{expr = St1}, Sty);
        Sign == '+' ->
            set_statement_and_type(State, 
                                   Node#xqUnaryExpr{expr = St1},
                                   Sty#xqSeqType{occur = zero_or_one});
        true ->
            set_statement_and_type(State, 
                                   Node#xqUnaryExpr{expr = St1},
                                   Sty#xqSeqType{type = Inv, 
                                                 occur = zero_or_one})
    end; 
%% 3.6 String Concatenation Expressions
handle_node(State, #xqConcatExpr{anno = A, expr = List}) ->
   S3 = ?CALL(#xqQName{namespace = ?FN,
                       local_name = <<"concat">>}, length(List), List, A),
   handle_node(State, S3);
%% 3.7 Comparison Expressions
%% 3.7.1 Value Comparisons
handle_node(State, #xqComparisonExpr{comp = Comp, 
                                      lhs = Expr1, 
                                      rhs = Expr2,
                                      anno = Line} = Expr)
    when Comp =:= 'eq';
         Comp =:= 'ne';
         Comp =:= 'ge';
         Comp =:= 'gt';
         Comp =:= 'le';
         Comp =:= 'lt' -> 
    S1 = get_statement(handle_node(State, Expr1)),
    S2 = get_statement(handle_node(State, Expr2)),
    try
        DefColl = xqerl_coll:parse(State#state.default_collation),
        Atomic = both_atomics(S1, S2),
        NewExpr =
          if Atomic, Comp =:= 'eq' ->
                 xqerl_operators:equal(S1, S2, DefColl);
             Atomic, Comp =:= 'ne' ->
                 xqerl_operators:not_equal(S1, S2);
             Atomic, Comp =:= 'ge' ->
                 xqerl_operators:greater_than_eq(S1, S2);
             Atomic, Comp =:= 'gt' ->
                 xqerl_operators:greater_than(S1, S2);
             Atomic, Comp =:= 'le' ->
                 xqerl_operators:less_than_eq(S1, S2);
             Atomic, Comp =:= 'lt' ->
                 xqerl_operators:less_than(S1, S2);
             true ->
                 Expr#xqComparisonExpr{lhs = S1, 
                                       rhs = S2}
          end,
        set_statement_and_type(State, NewExpr, ?boolzone(Line))
    catch
        _:#xqError{} = Err -> ?parse_err(Err, ?LN(Line))
    end;
%% 3.7.2 General Comparisons
handle_node(State, #xqComparisonExpr{comp = Comp,
                                     lhs = Expr1, 
                                     rhs = Expr2,
                                     anno = Line} = Expr)
  when Comp =:= '=';
       Comp =:= '!=';
       Comp =:= '<';
       Comp =:= '<=';
       Comp =:= '>';
       Comp =:= '>=' ->
    S1 = handle_node(State, Expr1),
    S2 = handle_node(State, Expr2),
    St1 = get_statement(S1),
    St2 = get_statement(S2),
    Atomic = both_atomics(St1, St2),
    try
        NewExpr =
            if Atomic ->
                   xqerl_operators:general_compare(Comp, St1, St2);
                true ->
                    Expr#xqComparisonExpr{lhs = St1,
                                          rhs = St2}
            end,
        set_statement_and_type(State, NewExpr, ?boolone(Line))
    catch
        _:#xqError{} = Err -> ?parse_err(Err, ?LN(Line))
    end;
%% 3.7.3 Node Comparisons
handle_node(State, #xqComparisonExpr{comp = Comp,
                                     lhs = Expr1, 
                                     rhs = Expr2,
                                     anno = Line} = Expr)
  when Comp =:= 'is';
       Comp =:= '>>';
       Comp =:= '<<' ->
    ArgType = ?seqtype(Line, node, zero_or_one),
    S1 = handle_node(State, Expr1),
    St1 = get_statement(S1),
    Sty1 = get_statement_type(S1),
    S2 = handle_node(State, Expr2),
    St2 = get_statement(S2),
    Sty2 = get_statement_type(S2),
    A = check_type_match(Sty1, ArgType),
    B = check_type_match(Sty2, ArgType),
    if 
        A == true andalso B == true ->
            NewExpr = Expr#xqComparisonExpr{lhs = St1, rhs = St2},
            set_statement_and_type(State, NewExpr, ?boolzone(Line));
        true ->
            %?parse_dbg("A",{Sty1, ArgType,A}),
            %?parse_dbg("B",{Sty2, ArgType,B}),
            ?parse_err('XPTY0004', ?LN(Line))
    end;
%% 3.8 Logical Expressions 'and'/'or'
handle_node(State, #xqLogicalExpr{anno = Line,
                                  lhs = Expr1,
                                  rhs = Expr2} = Expr) ->
    %% TODO maybe do something with each side,
    % reorder, check if one is true/false?
    % will end up an andalso/orelse
    % can reorder at will, so use the best
    State1 = handle_node(State, Expr1),
    State2 = handle_node(State, Expr2),
    S1 = get_statement(State1),
    S2 = get_statement(State2),
    T1 = get_statement_type(State1),
    T2 = get_statement_type(State2),
    C1 = check_type_match(T1, ?boolone(Line)) == true,
    C2 = check_type_match(T2, ?boolone(Line)) == true,
    S1_1 = if C1 -> S1;
              true -> {eff_bool, Line, S1}
           end,
    S2_1 = if C2 -> S2;
              true -> {eff_bool, Line, S2}
           end,
    NewExpr = Expr#xqLogicalExpr{lhs = S1_1,
                                 rhs = S2_1},
    set_statement_and_type(State, NewExpr, ?boolone(Line));
%% 3.9 Node Constructors
%% 3.9.1 Direct Element Constructors
handle_node(State, #xqNodeConstructor{type = direct, cons = Cons} = Node) ->
    %IC = get_in_constructor(State),
    State1 = set_in_constructor(State, true),
    S1 = handle_direct_constructor(State1, Cons),
    St = get_statement(S1),
    {Typ, Line} = 
        case St of
            #xqElementNode{anno = L, name = Name} ->
                {#xqKindTest{anno = L, kind = element, name = Name}, L};
            #xqCommentNode{anno = L} ->
                {comment, L};
            #xqProcessingInstructionNode{anno = L, name = Name} ->
                {#xqKindTest{anno = L, kind = 'processing-instruction', name = Name}, L};
            _ ->
                {node, undefined}
         end,
    NewSt = Node#xqNodeConstructor{cons = St},
    set_statement_and_type(State, NewSt, ?seqtype(Line, Typ, one));
%% 3.9.1.1 Attributes
%% 3.9.1.2 Namespace Declaration Attributes
%% 3.9.1.3 Content
%% 3.9.1.4 Boundary Whitespace
%% 3.9.2 Other Direct Constructors
%% 3.9.3 Computed Constructors
handle_node(State, #xqNodeConstructor{type = comp, cons = Cons} = Node) ->
    %IC = get_in_constructor(State),
    State1 = set_in_constructor(State, true),
    S1 = handle_comp_constructor(State1, Cons),
    St = get_statement(S1),
    {Typ, Line} = 
        case St of
            #xqDocumentNode{anno = L} ->
                {'document-node', L};
            #xqElementNode{anno = L, name = Name} ->
                {#xqKindTest{anno = L, kind = element, name = Name}, L};
            #xqAttributeNode{anno = L, name = Name} ->
                {#xqKindTest{anno = L, kind = attribute, name = Name}, L};
            #xqNamespaceNode{anno = L} ->
                {namespace, L};
            #xqCommentNode{anno = L} ->
                {comment, L};
            #xqTextNode{anno = L} ->
                {text, L};
            #xqProcessingInstructionNode{anno = L, name = Name} ->
                {#xqKindTest{anno = L, kind = 'processing-instruction', name = Name}, L};
            'empty-sequence' ->
                {'empty-sequence', 0};
            _ ->
                {node, 0}
        end,
    NewSt = Node#xqNodeConstructor{cons = St},
    if 
        Typ == 'empty-sequence' ->
            set_statement_and_type(State, 
                                  'empty-sequence', 
                                  ?seqtype(Line, Typ, zero));
        true ->
            set_statement_and_type(State, 
                                   NewSt, 
                                   ?seqtype(Line, Typ, zero_or_one))
    end;
%% 3.10 String Constructors
handle_node(State, #xqStringConstructor{anno = Line, content = Expr} = Node) -> 
   S1 = get_statement(handle_node(State, Expr)),
   set_statement_and_type(State,
                          Node#xqStringConstructor{content = S1}, 
                          ?seqtype(Line, 'xs:string', zero_or_one));
%% 3.11 Maps and Arrays
%% 3.11.1 Maps
%% 3.11.1.1 Map Constructors
handle_node(State, #xqMapConst{anno = Line,
                               content = Entries} = Node) ->
    KeyTy = ?seqtype(Line, 'xs:anyAtomicType', one),
    OutTy = ?seqtype(Line,
                     #xqFunTest{anno = Line,
                                kind = map,
                                params = [?seqtype(Line, 'xs:anyAtomicType', one)],
                                type = ?seqtype(Line)},
                     one),
    %% XXX this could be typed better
    F = fun(#xqMapEntry{anno = A, key = K, value = V} = E) ->
                KS1 = handle_node(State, K),
                KSt = get_statement(KS1),
                KTy = get_statement_type(KS1),
                KC = check_type_match(KTy, KeyTy),
                KSt1 = 
                    if
                        KC -> KSt;
                        KC == cast ->
                            type_promote(KSt, KeyTy, A);
                        KC == atomize ->
                            type_promote({atomize, KSt}, KeyTy, A);
                        true ->
                            ?parse_err('XPTY0004', ?LN(A))
                    end,
                VS1 = handle_node(State, V),
                VSt = get_statement(VS1),
                E#xqMapEntry{key = KSt1, value = VSt}
        end,
    Entries1 = lists:map(F, Entries),
    set_statement_and_type(State, Node#xqMapConst{content = Entries1}, OutTy);
%% 3.11.1.2 Map Lookup using Function Call Syntax
%% 3.11.2 Arrays
%% 3.11.2.1 Array Constructors
handle_node(State, #xqArrayConst{anno = Line, content = Expr} = Node) -> 
    S1 = handle_node(State, Expr),
    St = get_statement(S1),
    Ty = case get_statement_type(S1) of
             #xqSeqType{type = item} ->
                 any;
             O ->
                 O
          end,
    %?parse_dbg("Ty",{Ty, St}),
    set_statement_and_type(State, Node#xqArrayConst{content = St},
                           ?seqtype(Line, #xqFunTest{anno = Line,
                                                     kind = array,
                                                     type = Ty},
                                    one));
%% 3.11.2.2 Array Lookup using Function Call Syntax
%% 3.11.3 The Lookup Operator ("?") for Maps and Arrays
%% 3.11.3.1 Unary Lookup
%% 3.11.3.2 Postfix Lookup
%% 3.12 FLWOR Expressions
handle_node(State, #xqFlwor{} = FL) ->
    Det = fun(?CALL(Name, Arity, _, _)) ->
                 case catch get_static_function(State, {Name, Arity}) of
                     #xqFunctionDef{annotations = Annos} -> Annos;
                     _ -> []
                 end
          end,
    case xqerl_flwor:optimize(FL, State#state.digraph, Det) of
        #xqFlwor{id = Id, loop = Loop, return = Return} ->
            %?parse_dbg("FLW",FLW),
            % fold each section into the context
            FlworFold =
                fun(X, IState) ->
                       OldStatement = 
                            case get_statement(IState) of
                                undefined ->
                                    [];
                                Other ->
                                    l(Other)
                            end,
                       NewState = handle_node(IState, X),
                       case is_updating(NewState) of
                           true ->
                               A = get_clause_anno(X),
                               ?parse_err('XUST0001', ?LN(A));
                           _ ->
                               St2 = get_statement(NewState),
                               set_statement(NewState, OldStatement ++ [St2])
                       end
                end,
            CtxItemType = State#state.context_item_type,
            StateEmpty0 = set_statement_and_type(State, undefined, undefined),
            StateEmpty = StateEmpty0#state{context_item_type = CtxItemType},
            LoopState0 = lists:foldl(FlworFold, StateEmpty, Loop),
            LoopState = LoopState0#state{context_item_type = CtxItemType},
            %?parse_dbg("Return",Return),
            ReturnState = handle_node(LoopState, Return),
            ReturnType = get_statement_type(ReturnState),
            %ReturnType1 = maybe_zero_type(ReturnType),
            ReturnType2 = 
                case [L || #xqFor{} = L <- Loop] ++ 
                     [L || #xqWindow{} = L <- Loop] of
                    [] ->
                        ReturnType;
                    _ ->
                        ReturnType#xqSeqType{occur = zero_or_many}
                end,
            IsUpd = is_updating(ReturnState),
            set_statement_and_type(set_updating(State, IsUpd),
                                   #xqFlwor{id = Id, 
                                            loop = get_statement(LoopState), 
                                            return = get_statement(ReturnState)},
                                   ReturnType2);
        Other -> % flwor optimized away
            handle_node(State, Other)
    end;
%% 3.12.1 Variable Bindings
%% 3.12.2 For Clause
handle_node(State, #xqFor{var = #xqVar{id = Id,
                                       name = Name, 
                                       type = Type, 
                                       empty = Empty,
                                       expr = Expr, 
                                       position = undefined,
                                       anno = Line} = Node}) ->
    StateC = set_is_db(set_in_constructor(State, false), false),
    ErlVarName = local_variable_name(Id),
    ForState = handle_node(StateC, Expr),
    IsDB = get_is_db(ForState),
    ?NO_UPD(ForState, Line),
    % for loop type is one out of a sequence
    ForType = get_statement_type(ForState),
    OutType = if Type == undefined -> maybe_unmany_type(ForType);
                 true -> Type
              end,
    MakeLet = ForType#xqSeqType.occur == one andalso Empty == false,
    ForStmt = get_statement(ForState),
    SForType = 
        if 
            MakeLet ->
                ?parse_dbg("changing for to let",Name),
                ForType;
            true ->
                ForType#xqSeqType{occur = one}
        end,
    OkType = check_type_match(SForType, OutType),
    %?parse_dbg("ForType", {OkType, SForType, OutType}),
    ForStmt1 = 
        if 
            OkType == false ->
                ?parse_dbg("XPTY0004", {OkType, SForType, OutType, Type}),
                ?parse_err('XPTY0004', ?LN(Line));
            OkType =/= true ->
                type_check(ForStmt, OutType, Line);
            true -> 
                ForStmt
        end,
    External = 
        case is_static_literal(ForStmt) of
            true ->
                {false, ForStmt};
            _ when IsDB ->
                {false, true};
            _ ->
                false %ForStmt
        end,
    NewVar  = {Name,SForType,[],ErlVarName,External},
    State1 = set_is_db(add_inscope_variable(State, NewVar), IsDB),
    Node1 = Node#xqVar{type = OutType, expr = ForStmt1},
    if 
        MakeLet ->
            set_statement(State1, #xqLet{var = Node1});
        true ->
            set_statement(State1, #xqFor{var = Node1})
    end;
handle_node(State, #xqFor{var = #xqVar{id = Id,
                                       name = Name, 
                                       type = Type, 
                                       expr = Expr, 
                                       position = #xqPosVar{id = Pid, 
                                                            name = PName},
                                       anno = Line} = Node}) ->
    #xqQName{namespace = Pns, local_name = Pln} = PName,
    #xqQName{namespace = Fns, local_name = Fln} = Name,
    _ = if 
            {Pns, Pln} == {Fns, Fln} ->
                ?parse_err('XQST0089', ?LN(Line));
            true ->
                ok
        end,
    StateC = set_is_db(set_in_constructor(State, false), false),
    ErlVarName = local_variable_name(Id),
    ErlPosName = local_variable_name(Pid),
    ForState = handle_node(StateC, Expr),
    IsDB = get_is_db(ForState),
    ?NO_UPD(ForState, Line),
    % for loop type is one out of a sequence   
    ForType = get_statement_type(ForState), 
    OutType = 
        if 
            Type == undefined ->
                maybe_unmany_type(ForType);
            true ->
                Type
        end,
    %?parse_dbg("ForType",ForType),
    %?parse_dbg("Type",Type),
    ForStmt = get_statement(ForState),
    SForType = ForType#xqSeqType{occur = one},
    OkType = check_type_match(SForType, OutType),
    %?parse_dbg("ForType", {SForType, OutType}),
    ForStmt1 = 
        if 
            OkType == false ->
                ?parse_err('XPTY0004', ?LN(Line));
            OkType =/= true ->
                type_check(ForStmt, OutType, Line);
            true -> 
                ForStmt
        end,
    NewVar  = {Name,SForType,[],ErlVarName},
    NewPos  = {PName,?intone(Line),[],ErlPosName},

    State1 = set_is_db(add_inscope_variable(State, NewVar), IsDB),
    State2 = add_inscope_variable(State1, NewPos),

    NewStatement = #xqFor{var = Node#xqVar{type = OutType, 
                                           expr = ForStmt1}},
    set_statement(State2, NewStatement);

%% 3.12.3 Let Clause
handle_node(State, #xqLet{var = #xqVar{id = Id, 
                                       name = Name, 
                                       type = Type, 
                                       expr = Expr,
                                       anno = Line} = Node}) ->
    StateC = set_is_db(set_in_constructor(State, false), false),
    ErlVarName = local_variable_name(Id),
    LetState = handle_node(StateC, Expr),
    IsDB = get_is_db(LetState),
    ?NO_UPD(LetState, Line),
    LetType = get_statement_type(LetState),
    OutType = if Type == undefined -> LetType; true -> Type end,
    %?parse_dbg("LetType",LetType),
    %?parse_dbg("Type",Type),
    LetStmt = get_statement(LetState),
    %?parse_dbg("LetType",{LetType, Type}),
    OkType = check_type_match(LetType, Type),
    %?parse_dbg("LetType",{LetType, Type, OkType}),
    LetStmt1 =
        if 
            OkType == false ->
                ?parse_err('XPTY0004', ?LN(Line));
            OkType =/= true ->
                type_check(LetStmt, OutType, Line);
            Type#xqSeqType.occur =/= LetType#xqSeqType.occur ->
                %?parse_dbg("LetType",{OutType, LetType, OkType}),
                type_ensure(LetType, OutType, LetStmt, Line);
            true ->
                LetStmt
        end,
    External = 
        case is_static_literal(LetStmt1) of
            true ->
                {false, LetStmt1};
            _ when IsDB ->
                {false, true};
            _ ->
                false 
        end,
    NewVar  = {Name,OutType,[],ErlVarName, External},
    State1 = set_is_db(add_inscope_variable(State, NewVar), IsDB),
    NewStatement = #xqLet{var = Node#xqVar{type = OutType,
                                           expr = LetStmt1}},
    set_statement(State1, NewStatement);
%% 3.12.4 Window Clause
handle_node(State, #xqWindow{type = WindowType,
                             win_variable = #xqVar{id = Id,
                                                   name = WName,
                                                   type = WType0,
                                                   expr = Expr,
                                                   anno = Line} = Node, 
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
    Check = fun(undefined, Map) ->
                   Map;
               (#xqVar{name = #xqQName{anno = A,
                                       namespace = N, 
                                       local_name = L}}, Map) ->
                   Key = {N, L},
                   case Map of
                       #{Key := _} ->
                           ?parse_err('XQST0103', ?LN(A));
                       _ ->
                           Map#{Key => A}
                   end;
               (#xqPosVar{name = #xqQName{anno = A,
                                          namespace = N, 
                                          local_name = L}}, Map) ->
                   Key = {N, L},
                   case Map of
                       #{Key := _} ->
                           ?parse_err('XQST0103', ?LN(A));
                       _ ->
                           Map#{Key => A}
                   end
            end,
    _ = lists:foldl(Check, #{}, [Node, S, SPos, SPrev, SNext,
                                 E, EPos, EPrev, ENext]),
    % window statement variable
    StateC = set_is_db(set_in_constructor(State, false), false),
    ErlVarName = local_variable_name(Id),
    WinState = handle_node(StateC, Expr),
    WinType = get_statement_type(WinState), 
    WType = if WType0 == undefined -> WinType; true -> WType0 end,
    WinStmt = get_statement(WinState),
    SWinType = WinType#xqSeqType{occur = zero_or_many},
    OkType = check_type_match(WType, SWinType),
    WTypeOut = 
        if 
            OkType == false ->
                ?parse_err('XPTY0004', ?LN(Line));
            OkType == cast ->
                WType;
            SWinType#xqSeqType.occur =/= WinType#xqSeqType.occur ->
                WType;
            true ->
                ignore
        end,
    %?parse_dbg("WType",{OkType,WType,WType0,WTypeOut,SWinType}),
    PosType = ?intone(Line),
    WinVar  = {WName,SWinType,[],ErlVarName},
    % variables for start expression
    SState = 
        case S of
            #xqVar{id = SId,name = SName} ->
                SErlName = local_variable_name(SId),
                SVar = {SName,SWinType,[],SErlName},
                add_inscope_variable(StateC,  SVar);
            undefined ->
                StateC
        end,
    SPosState = 
        case SPos of
            #xqPosVar{id = SPosId,name = SPosName} ->
                SPosErlName = local_variable_name(SPosId),
                SPosVar = {SPosName,PosType,[],SPosErlName},
                add_inscope_variable(SState,  SPosVar);
            undefined ->
                SState
        end,
    SPrevState = 
        case SPrev of
            #xqVar{id = SPrevId,name = SPrevName} ->
                SPrevErlName = local_variable_name(SPrevId),
                SPrevVar = {SPrevName,SWinType,[],SPrevErlName},
                add_inscope_variable(SPosState,  SPrevVar);
            undefined ->
                SPosState
        end,
    SNextState = 
        case SNext of
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
    EState = 
        case E of
            #xqVar{id = EId,name = EName} ->
                EErlName = local_variable_name(EId),
                EVar = {EName,SWinType,[],EErlName},
                add_inscope_variable(State2,  EVar);
            undefined ->
                State2
        end,
    EPosState =
        case EPos of
            #xqPosVar{id = EPosId,name = EPosName} ->
                EPosErlName = local_variable_name(EPosId),
                EPosVar = {EPosName,PosType,[],EPosErlName},
                add_inscope_variable(EState,  EPosVar);
            undefined ->
                EState
        end,
    EPrevState = 
        case EPrev of
            #xqVar{id = EPrevId,name = EPrevName} ->
                EPrevErlName = local_variable_name(EPrevId),
                EPrevVar = {EPrevName,SWinType,[],EPrevErlName},
                add_inscope_variable(EPosState,  EPrevVar);
            undefined ->
                EPosState
        end,
    ENextState = 
        case ENext of
            #xqVar{id = ENextId,name = ENextName} ->
                ENextErlName = local_variable_name(ENextId),
                ENextVar = {ENextName,SWinType,[],ENextErlName},
                add_inscope_variable(EPrevState,  ENextVar);
            undefined ->
                EPrevState
        end,
    EndState = handle_node(ENextState, EndExpr),
    EndStatement = 
        case get_statement(EndState) of
            [] -> undefined;
            ES -> ES
        end,
    % window variable is only in scope at the end
    State1 = add_inscope_variable(EndState,  WinVar),
    ?NO_UPD(State1, Line),
    Output = #xqWindow{type = WindowType,
                       win_variable = Node#xqVar{id = Id,
                                             name = WName,
                                             type = WTypeOut,
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
handle_node(State, #xqWhere{anno = Line, expr = Expr} = Node) -> 
    S1 = handle_node(State, Expr),
    ?NO_UPD(S1, Line),
    St = get_statement(S1),
    StTy = get_statement_type(S1),
    Eff = check_type_match(StTy, ?boolone(Line)) == true,
    St1 = if Eff -> St; true -> {eff_bool, Line, St} end,
    set_statement_and_type(State, 
                           Node#xqWhere{expr = St1},
                           ?boolone(Line));
%% 3.12.6 Count Clause
handle_node(State, #xqCount{var = #xqVar{anno = Line,
                                         id = Id, 
                                         name = Name, 
                                         type = Type} = Node}) ->
    ErlVarName = local_variable_name(Id),
    CntType = ?intone(Line),
    _ = check_type_match(CntType, Type),
    NewVar  = {Name,CntType,[],ErlVarName},
    State1 = add_inscope_variable(State, NewVar),
    NewStatement = #xqCount{var = Node#xqVar{type = CntType,
                                             expr = []}},
    set_statement(State1, NewStatement);
%% 3.12.7 Group By Clause
handle_node(State, #xqGroup{vars = GExprs} = Node) ->
   State1 = increase_occur_inscope_vars(State),
   S1 = handle_node(State1, GExprs),
   St = get_statement(S1),
   set_statement(State1, Node#xqGroup{vars = St});
handle_node(State, #xqGroupBy{grp_variable = #xqVarRef{name = Name, anno = Ln}, 
                               collation = Coll} = Gb) -> 
    DefColl = State#state.default_collation,
    BaseUri = State#state.base_uri,
    NewColl =
        case Coll of
            default ->
                DefColl;
            #xqURILiteral{str = Collation1} ->
                xqerl_lib:resolve_against_base_uri(BaseUri, Collation1)
        end,
    try
        _ = xqerl_coll:parse(NewColl),
        St = get_variable(State, Name, Ln),
        NewVar = {variable, element(4, St)},
        set_statement(State, Gb#xqGroupBy{grp_variable = NewVar, 
                                          collation = NewColl})
    catch
        _:_ ->
            ?parse_err('XQST0076', ?LN(Ln))
    end;
%% 3.12.8 Order By Clause
handle_node(State, #xqOrderByClause{spec = OrderSpecs} = Node) ->
    S1 = handle_node(State, OrderSpecs),
    St = get_statement(S1),
    set_statement(State, Node#xqOrderByClause{spec = St});
handle_node(State, #xqOrderSpec{expr = OExpr,
                                modifier = 
                                  #xqOrderModifier{empty     = Empty,
                                                   collation = Collation,
                                                   anno = Line} = Mod}) ->
    DefColl = State#state.default_collation, 
    BaseUri = State#state.base_uri,
    EmptOrd = State#state.empty_order,
    % check/resolve the collation
    try
        {NewColl, NewEmptO} = 
            case {Collation, Empty} of
                {default, default} ->
                    {DefColl, 
                     EmptOrd};
                {#xqURILiteral{str = Collation1}, default} ->
                    {xqerl_lib:resolve_against_base_uri(BaseUri, Collation1), 
                     EmptOrd};
                {default, _} ->
                    {DefColl, Empty};
                {#xqURILiteral{str = Collation1}, _} ->
                    {xqerl_lib:resolve_against_base_uri(BaseUri, Collation1), 
                     Empty}
            end,
        _ = xqerl_coll:parse(NewColl),
        NewMod = Mod#xqOrderModifier{empty = NewEmptO,
                                     collation = NewColl},
        OState = handle_node(State, OExpr),
        ?NO_UPD(OState, Line),
        SimOExpr = get_statement(OState),
        set_statement(State, #xqOrderSpec{expr = {atomize, SimOExpr},
                                          modifier = NewMod})
    catch
        _:_ ->
            ?parse_err('XQST0076', ?LN(Line))
    end;
%% 3.12.9 Return Clause
%% 3.13 Ordered and Unordered Expressions
%% handle_node(State, {'ordered-expr', Expr}) -> 
%%    State1 = handle_node(State, Expr),
%%    Statement = get_statement(State1),
%%    Type = get_statement_type(State1),
%%    set_statement_and_type(State, Statement, Type);
%% handle_node(State, {'unordered-expr', Expr}) -> 
%%    State1 = handle_node(State, Expr),
%%    Statement = get_statement(State1),
%%    Type = get_statement_type(State1),
%%    set_statement_and_type(State, Statement, Type);
%% 3.14 Conditional Expressions
handle_node(State, {error, Line, Error}) ->
    set_statement_and_type(State, {error, Line, Error},
                           ?seqtype(Line, 'empty-sequence', zero));
handle_node(State, #xqIfExpr{anno = Line,
                             condition = If,
                             if_true = {B1, Then0}, 
                             if_false = {B2, Else0}} = Node) ->
    %% B1 B2 are branch ids
    Then = case erlang:get({'if-then-else', B1}) of
               undefined -> Then0;
               E -> {error, Line, E}
            end,
    Else = case erlang:get({'if-then-else', B2}) of
               undefined -> Else0;
               E1 -> {error, Line, E1}
           end,
    IfS1 = handle_node(State, If),
    ?NO_UPD(IfS1, Line),
    ThS1 = (catch handle_node(State, Then)),
    ElS1 = (catch handle_node(State, Else)),
    IfSt = get_statement(IfS1),
    ThSt0 = get_statement(ThS1),
    ElSt0 = get_statement(ElS1),
    IfTy = get_statement_type(IfS1), % is boolean
    #xqSeqType{occur = ThOc, anno = Ta} = ThTy0 = get_statement_type(ThS1),
    #xqSeqType{occur = ElOc, anno = Ea} = ElTy0 = get_statement_type(ElS1),
    ThCt = get_static_count(ThS1),
    ElCt = get_static_count(ElS1),
    Upd = is_updating(ThS1) == true orelse is_updating(ElS1) == true, 
    State1 = set_updating(State, Upd),
    % see if a positional predicate is hiding here
    InPred = get_in_predicate(State),
    ThIsInt = (catch check_type_match(ThTy0, ?seqtype(Ta, 'xs:integer', one_or_many))),
    ElIsInt = (catch check_type_match(ElTy0, ?seqtype(Ea, 'xs:integer', one_or_many))),
    Pos = get_statement(handle_node(State, ?POSITION(Line))),
    {ThSt, ThTy} =
        if 
            InPred andalso ThIsInt ->
                {#xqComparisonExpr{anno = Ta, id = B1, comp = '=', lhs = Pos, rhs = ThSt0},
                 ?boolone(Ta)};
            true ->
                {ThSt0, ThTy0}
        end,
    {ElSt, ElTy} =
        if InPred andalso ElIsInt ->
               {#xqComparisonExpr{anno = Ea, id = B2, comp = '=', lhs = Pos, rhs = ElSt0}, 
                ?boolone(Ea)};
            true ->
                {ElSt0, ElTy0}
        end,
    %check_type_match
    IfStBool = check_type_match(IfTy, ?boolone(Line)) == true,
    % is the if statement a boolean value?
    if 
        IfSt == ?true ->
            set_static_count(set_statement_and_type(State1, ThSt, ThTy), ThCt);
        IfSt == ?false ->
            set_static_count(set_statement_and_type(State1, ElSt, ElTy), ElCt);
        is_record(IfSt, xqAtomicValue) -> % atomics can be checked now
            EBV = xqerl_operators:eff_bool_val(IfSt),
            if 
                EBV == true ->
                    set_static_count(
                      set_statement_and_type(State1, ThSt, ThTy), ThCt);
                true ->
                    set_static_count(
                      set_statement_and_type(State1, ElSt, ElTy), ElCt)
            end;
        true ->
            %?parse_dbg("{ThTy,ElTy}",{ThTy,ElTy}),
            BothType = 
                if 
                    ThOc == zero;
                    ElOc == zero ->
                        maybe_zero_type(get_list_type([ThTy,ElTy]));
                    ThOc == one, ElOc == one ->
                        OT = (get_list_type([ThTy,ElTy])),
                        OT#xqSeqType{occur = one};
                    true ->
                        get_list_type([ThTy,ElTy])
                end,
            %?parse_dbg("BothType",BothType),
            BothCount = if ThCt == ElCt -> ElCt; true -> undefined end,
            IfSt2 = 
              if 
                  IfStBool -> IfSt;
                  true -> {eff_bool, Line, IfSt}
              end,
            State2 = set_statement_and_type(State1, 
                                            Node#xqIfExpr{condition = IfSt2,
                                                          if_true = ThSt, 
                                                          if_false = ElSt}, 
                                            BothType), 
            set_static_count(State2, BothCount)
    end;
%% 3.15 Switch Expression
handle_node(State, #xqSwitch{operand = RootExpr,
                             clauses = Cases,
                             default = DefaultExpr,
                             anno    = Line} = Node) -> 
    RState = handle_node(State, RootExpr),
    ?NO_UPD(RState, Line),
    RSt = get_statement(RState),
    StateC = set_in_constructor(State, false),
    ClFun = fun(#xqSwitchClause{operands = Matches,
                                expr     = Return} = C) ->
                   ReturnState = handle_node(State, Return),
                   MatchesState = handle_node(StateC, Matches),
                   MaSt = get_statement(MatchesState),
                   RnSt = get_statement(ReturnState),
                   RnTy = get_statement_type(ReturnState),
                   C1 = C#xqSwitchClause{operands = l(MaSt),
                                         expr     = RnSt},
                   set_statement_and_type(State, C1, RnTy)
            end,
    CStates = lists:map(ClFun, Cases),
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
    Upd = lists:any(fun(S) ->
                          is_updating(S)
                    end, [DState|CStates]),
    set_statement_and_type(set_updating(State, Upd), 
                           Node#xqSwitch{operand = RSt, 
                                         clauses = CSt,
                                         default = DSt}, 
                           StatementType);
%% 3.16 Quantified Expressions
handle_node(State, #xqQuantifiedExpr{in_expr = Vars, 
                                     satisfies = Test} = Node) -> 
    Fold = 
        fun(Var, TempState) ->
               TempSt = get_statement(TempState),
               NewState = handle_internal_var_node(TempState, Var, false),
               NewSt = get_statement(NewState),
               %NewSty = get_statement_type(NewState),
               set_statement(NewState, TempSt ++ [NewSt])
         end,
    State1 = lists:foldl(Fold, set_statement(State, []), Vars),
    TestS1 = handle_node(State1, Test),
    VarsSt = get_statement(State1),
    TestSt = get_statement(TestS1),
    set_statement_and_type(State, 
                           Node#xqQuantifiedExpr{in_expr = l(VarsSt),
                                                 satisfies = TestSt}, ?boolone(0));
%% 3.17 Try/Catch Expressions
handle_node(State, #xqTryCatch{id = Id,
                               expr = Expr,
                               catches = CatchClauses} = Node) ->
    Line = 0, % not set
    %?parse_dbg("Line", ?LINE),
    CodeVar = list_to_atom("__CodeVar" ++ integer_to_list(Id)),
    DescVar = list_to_atom("__DescVar" ++ integer_to_list(Id)),
    ValuVar = list_to_atom("__ValuVar" ++ integer_to_list(Id)),
    ModuVar = list_to_atom("__ModuVar" ++ integer_to_list(Id)),
    LineVar = list_to_atom("__LineVar" ++ integer_to_list(Id)),
    ColnVar = list_to_atom("__ColnVar" ++ integer_to_list(Id)),
    AddlVar = list_to_atom("__AddlVar" ++ integer_to_list(Id)),

    TryState = (catch handle_node(State, Expr)),
    TryUpd = is_updating(TryState),
    TrySt = get_statement(TryState),
    TryTy = get_statement_type(TryState),
    CatchFun =
        fun({Errors,DoExpr}, {InType, CatchUpd0}) ->
            % add the magic error variables
            Stat1 = add_inscope_variable(
                     State, 
                     {?ERR_VAR(<<"code">>),
                      ?seqtype(Line, 'xs:QName', one),[],CodeVar}),
            Stat2 = add_inscope_variable(
                     Stat1, 
                     {?ERR_VAR(<<"description">>),
                      ?seqtype(Line, 'xs:string', zero_or_one),
                      [],DescVar}),
            Stat3 = add_inscope_variable(
                     Stat2, 
                     {?ERR_VAR(<<"value">>),
                      ?seqtype(Line),
                      [],ValuVar}),
            Stat4 = add_inscope_variable(
                     Stat3, 
                     {?ERR_VAR(<<"module">>),
                      ?seqtype(Line, 'xs:string', zero_or_one),
                      [],ModuVar}),
            Stat5 = add_inscope_variable(
                     Stat4, 
                     {?ERR_VAR(<<"line-number">>),
                      ?seqtype(Line, 'xs:integer', zero_or_one),
                      [],LineVar}),
            Stat6 = add_inscope_variable(
                     Stat5, 
                     {?ERR_VAR(<<"column-number">>),
                      ?seqtype(Line, 'xs:integer', zero_or_one),
                      [],ColnVar}),
            Stat7 = add_inscope_variable(
                     Stat6, 
                     {?ERR_VAR(<<"additional">>),
                      ?seqtype(Line),
                      [],AddlVar}),
            CatchState = handle_node(Stat7, DoExpr),
            CatchSt = get_statement(CatchState),
            CatchTy = get_statement_type(CatchState),
            CombType = get_list_type([InType,CatchTy]),
            CatchUpd1 = CatchUpd0 orelse is_updating(CatchState),
            ResErrors = 
                lists:map(fun(#xqNameTest{name = EName}) ->
                                 #xqNameTest{name = resolve_qname(EName, State)}
                          end, Errors),
            {{ResErrors, CatchSt}, {CombType, CatchUpd1}}
        end,
    {Statements, {Type, Upd}} =
        lists:mapfoldl(CatchFun, {TryTy, TryUpd}, CatchClauses),
    set_statement_and_type(set_updating(State, Upd),
                           Node#xqTryCatch{expr = TrySt,
                                           catches = Statements}, Type);
%% 3.18 Expressions on SequenceTypes
%% 3.18.1 Instance Of
handle_node(State, #xqTypingExpr{anno = Line,
                                 kind = instance,
                                 expr = Expr1, 
                                 type = Expr2} = Node) ->
    OutType = ?boolone(Line),
    S1 = handle_node(State, Expr1),
    %?parse_dbg("Expr2",Expr2),
    St2 = #xqSeqType{type = TType} =
        try
            get_statement(handle_node(State, Expr2))
        catch
            ?ERROR_MATCH(<<"XQST0052">>) -> ?parse_err('XPST0051', ?LN(Line));
            _:Err -> ?parse_err(Err, ?LN(Line))
        end,
    %?parse_dbg("TType",TType),
    case TType of
        #xqKindTest{} -> ok;
        #xqFunTest{} -> ok;
        'empty-sequence' -> ok;
        'xs:NMTOKENS' -> 
            ?parse_err('XPST0051', ?LN(Line));
        _ ->
            try 
                xqerl_btypes:get_type(TType) %just check if it exists
            catch _:_ -> ?parse_err('XPST0051', ?LN(Line)) end
    end,
    St = get_statement(S1),
    set_statement_and_type(State, 
                           Node#xqTypingExpr{expr = St, type = St2}, 
                           OutType);
%% 3.18.3 Cast
% wraps the expression in a call to constructor function at run-time
handle_node(State, #xqTypingExpr{anno = Line,
                                 kind = cast,
                                 expr = 'empty-sequence', 
                                 type = #xqSeqType{type = T,
                                                   occur = zero_or_one}}) ->
    case T of
        #xqQName{local_name = L} when L =/= <<"NOTATION">> ->
            set_statement(State, 'empty-sequence');
        _ when is_atom(T), T =/= 'xs:NOTATION' ->
            set_statement(State, 'empty-sequence');
        _ ->
            ?parse_err('XPST0080', ?LN(Line))
    end;
handle_node(State, #xqTypingExpr{anno = Line,
                                 kind = cast,
                                 expr = Av, 
                                 type = #xqSeqType{type = T} = Type} = Node) ->
    case T of
        #xqQName{local_name = Ln} when Ln == <<"NOTATION">>;
                                       Ln == <<"anyAtomicType">>;
                                       Ln == <<"anySimpleType">> ->
            ?parse_err('XPST0080', ?LN(Line));
        TypeAtom when TypeAtom == 'xs:NOTATION';
                      TypeAtom == 'xs:anyAtomicType';
                      TypeAtom == 'xs:anySimpleType' ->
            ?parse_err('XPST0080', ?LN(Line));
        #xqQName{} = Name when is_number(Av);
                               is_binary(Av);
                               is_boolean(Av);
                               is_record(Av, xqAtomicValue) ->
            St2 = get_statement(handle_node(State, resolve_qname(Name, State))),
            try
                handle_node(State, ?CALL(St2, 1, [Av], Line))
            catch
                ?ERROR_MATCH(<<"XPST0017">>) -> ?parse_err('XQST0052', ?LN(Line));
                _:#xqError{} = E -> ?parse_err(E, ?LN(Line));
                _:_ -> ?parse_err('XQST0052', ?LN(Line)) % unknown type in cast
            end;
        _ ->
            St2 = get_statement(handle_node(State, Type)),
            ES1 = handle_node(State, Av),
            ESt = get_statement(ES1),
            NewStatement1 = Node#xqTypingExpr{expr = ESt, type = St2},
            set_statement_and_type(State, NewStatement1, St2)
    end;
%% 3.18.4 Castable
handle_node(State, #xqTypingExpr{anno = Line,
                                 kind = castable,
                                 expr = 'empty-sequence', 
                                 type = #xqSeqType{type = T,
                                                   occur = O}}) ->
    case T of
        #xqQName{local_name = L} when L =/= <<"NOTATION">>, O == zero_or_one ->
            set_statement_and_type(State, ?true, ?boolone(Line));
        #xqQName{local_name = L} when L =/= <<"NOTATION">>, O == one ->
            set_statement_and_type(State, ?false, ?boolone(Line));
        _ when is_atom(T), T =/= 'xs:NOTATION', O == zero_or_one ->
            set_statement_and_type(State, ?true, ?boolone(Line));
        _ when is_atom(T), T =/= 'xs:NOTATION', O == one ->
            set_statement_and_type(State, ?false, ?boolone(Line));
        _ ->
            ?parse_err('XPST0080', ?LN(Line))
    end;

handle_node(State, #xqTypingExpr{anno = Line,
                                 kind = castable,
                                 expr = Expr, 
                                 type = #xqSeqType{type = T} = Type} = Node) ->
    case T of
        #xqQName{local_name = Ln} when Ln == <<"NOTATION">>;
                                       Ln == <<"anyAtomicType">>;
                                       Ln == <<"anySimpleType">> ->
            ?parse_err('XPST0080', ?LN(Line));
        _ when T == 'xs:NOTATION';
               T == 'xs:anyAtomicType';
               T == 'xs:anySimpleType' ->
            ?parse_err('XPST0080', ?LN(Line));
        _ ->
            ES1 = handle_node(State, Expr),
            ESt = get_statement(ES1),
            ES2 = handle_node(State, Type),
            ESt2 = get_statement(ES2),
            NewStatement1 = Node#xqTypingExpr{expr = ESt, type = ESt2},
            set_statement_and_type(State, NewStatement1, ?boolone(Line))
    end;
%% 3.18.6 Treat
% just sets the static type of an expression
% wraps in if then and throws error if bad type
handle_node(State, #xqTypingExpr{anno = Line,
                                 kind = treat,
                                 expr = Expr, 
                                 type = #xqSeqType{} = Type}) ->
    S1 = handle_node(State, Expr),
    St1 = get_statement(S1),
    St2 = #xqSeqType{type = TType} = get_statement(handle_node(State, Type)),
    case TType of
        #xqKindTest{} -> ok;
        'empty-sequence' -> ok;
        _ ->
            try 
                xqerl_btypes:get_type(TType) %just check if it exists
            catch _:_ -> ?parse_err('XPST0051', ?LN(Line)) end
    end,
    NewStatement = #xqIfExpr{anno = Line,
                             condition = #xqTypingExpr{anno = Line,
                                                       kind = instance,
                                                       expr = St1,
                                                       type = St2},
                             if_true = St1,
                             if_false = {error, Line, 'XPDY0050'}},
    set_statement_and_type(State, NewStatement, St2);
%% 3.18.2 Typeswitch
% TODO check static typing for matching branch
handle_node(State, #xqTypeswitch{anno = Line,
                                 input = RootExpr,
                                 cases = Cases,
                                 default = Default} = Node) -> 
    S1 = handle_node(State, RootExpr),
    ?NO_UPD(S1, Line),
    St1 = get_statement(S1),
    S2 = handle_node(S1, Cases),
    S3 = handle_node(S1, Default),
    St2 = get_statement(S2),
    St3 = get_statement(S3),
    Sty = get_statement_type(S3),
    Upd = is_updating(S2) orelse is_updating(S3),
    State1 = set_updating(State, Upd),
    Statement = Node#xqTypeswitch{input = St1,
                                  cases = St2,
                                  default = St3},
    set_statement_and_type(State1, Statement, Sty);
handle_node(State, #xqTypeswitchCase{types = default, 
                                     variable = undefined, 
                                     expr = Expr} = Node) ->
    S1 = handle_node(State, Expr),
    St1 = get_statement(S1),
    Sty = get_statement_type(S1),
    set_statement_and_type(State, Node#xqTypeswitchCase{expr = St1}, Sty);
handle_node(State, #xqTypeswitchCase{types = default, 
                                     variable = Var} = Node) ->
    S1 = handle_internal_var_node(State, Var, true),
    St1 = get_statement(S1),
    Sty = get_statement_type(S1),
    set_statement_and_type(State, Node#xqTypeswitchCase{variable = St1}, Sty);
handle_node(State, #xqTypeswitchCase{variable = undefined, 
                                     expr = Expr} = Node) ->
    S1 = handle_node(State, Expr),
    St1 = get_statement(S1),
    Sty = get_statement_type(S1),
    set_statement_and_type(State, Node#xqTypeswitchCase{expr = St1}, Sty);
handle_node(State, #xqTypeswitchCase{variable = Var} = Node) ->
    S1 = handle_internal_var_node(State, Var, true),
    St1 = get_statement(S1),
    Sty = get_statement_type(S1),
    set_statement_and_type(State, Node#xqTypeswitchCase{variable = St1}, Sty);

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 3.18.5 Constructor Functions
handle_node(State, ?CALL(#xqQName{namespace = ?XS}, 1, ['empty-sequence'], Line)) ->
    set_statement_and_type(State, 'empty-sequence', 
                           ?seqtype(Line, 'empty-sequence', zero));
handle_node(State, ?CALL(#xqQName{namespace = ?XS,
                                  local_name = Type}, 
                         1,
                         [Av0], 
                         Line)) 
  when is_number(Av0);
       is_binary(Av0);
       is_boolean(Av0);
       is_record(Av0, xqAtomicValue) ->
    {AtType, AtVal} =
        case Av0 of
            #xqAtomicValue{type = AtType0, value = AtVal0} ->
                {AtType0, AtVal0};
            _ when is_integer(Av0) ->
                {'xs:integer', Av0};
            _ when is_float(Av0) ->
                {'xs:double', Av0};
            _ when is_binary(Av0) ->
                {'xs:string', Av0};
            _ when is_boolean(Av0) ->
                {'xs:boolean', Av0}
        end,
    TypeAtom = list_to_atom("xs:" ++ binary_to_list(Type)),
    try
        BOType = xqerl_btypes:get_type(TypeAtom),
        BIType = xqerl_btypes:get_type(AtType),
        NoCast = xqerl_btypes:can_substitute(BIType, BOType),
        NewNode = 
            if 
                Type == <<"integer">>, ?xs_integer(AtType);
                Type == <<"boolean">>, AtType == 'xs:boolean';
                Type == <<"string">>, ?xs_string(AtType);
                Type == <<"double">>, AtType == 'xs:double' ->
                    AtVal;
                Type == <<"numeric">>;
                Type == <<"decimal">>;
                Type == <<"double">>;
                Type == <<"float">> ->
                    xqerl_types:cast_as(Av0, TypeAtom);
                NoCast ->
                    atomic_value(TypeAtom, AtVal);
                Type == <<"NOTATION">> ->
                    ?parse_err('XPST0017', ?LN(Line));
                Type == <<"QName">> andalso AtType == 'xs:untypedAtomic' ->
                    ?parse_err('FORG0001', ?LN(Line));
                Type == <<"QName">> ->
                    xqerl_types:cast_as(Av0, TypeAtom, State#state.known_ns);
                Type == <<"NMTOKENS">> ->
                    #xqSequence{vals = [xqerl_types:cast_as(Av0, TypeAtom)]};
                true ->
                    xqerl_types:cast_as(Av0, TypeAtom)
            end,
        if 
            Type == <<"NMTOKENS">> ->
                set_statement_and_type(State, NewNode,
                                       ?seqtype(Line, 'xs:NMTOKEN', zero_or_many));
            true ->
                set_statement_and_type(State, NewNode,
                                       ?seqtype(Line, TypeAtom, zero_or_one))
        end
    catch
        ?ERROR_MATCH(_) = Error ->
            ?parse_err(Error, ?LN(Line))
    end;
handle_node(State, ?CALL(#xqQName{namespace = ?XS} = Name, 1, 
                         [Other], Line) = C) ->
    StateC = set_in_constructor(State, false),
    S1 = handle_node(StateC, Other),
    St1 = get_statement(S1),
    if
        is_record(St1, xqAtomicValue);
        is_integer(St1);
        is_float(St1);
        is_binary(St1) ->
            handle_node(State, ?CALL(Name, 1, [St1], Line));
        true ->
            F = get_static_function(State, {Name, 1}),
            #xqFunctionDef{params = Params, type = Type} = F, 
            CheckArg = check_fun_arg_types(State, [S1], Params, Line),
            NewArgs = lists:map(fun({S,_C}) ->
                                       S
                                end, CheckArg),
            set_statement_and_type(State,
                                   C?CALL(F#xqFunctionDef{anno = Line,
                                                          params = NewArgs}, Line), 
                                   Type)
    end;

% context item dependent functions with 0 arity
% node-name, nilled, string, data, base-uri, document-uri, number, 
% normalize-space, string-length, name, local-name, namespace-uri, root, path, 
% has-children, generate-id
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = Ln} = Name, 0, [], Line) = Call) 
   when Ln == <<"node-name">>;        Ln == <<"nilled">>;
        Ln == <<"string">>;           Ln == <<"data">>;
        Ln == <<"base-uri">>;         Ln == <<"document-uri">>;
        Ln == <<"number">>;           Ln == <<"normalize-space">>;
        Ln == <<"string-length">>;    Ln == <<"name">>;
        Ln == <<"local-name">>;       Ln == <<"namespace-uri">>;
        Ln == <<"root">>;             Ln == <<"path">>;
        Ln == <<"has-children">>;     Ln == <<"generate-id">> -> 
    #xqFunctionDef{params = [TargetType], type = Type} =
      get_static_function(State, {Name, 1}),
    CtxType = State#state.context_item_type,
    ok = check_occurance_match(CtxType, TargetType, 1, Line), % ctx item
    % now check the types
    NoCastC = check_type_match(CtxType, TargetType),
    if 
        NoCastC == false ->
            ?parse_err('XPTY0004', ?LN(Line));
        true ->
            ok                        
    end,
    F = get_static_function(State, {Name, 0}),
    OutStatement = Call?CALL(F#xqFunctionDef{anno = Line}, Line),
    set_statement_and_type(State, OutStatement, Type);
% context item dependent functions with arity 1
% 2nd parameter of arity 2 is context item
% lang, id, element-with-id, idref,      
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = Ln} = Name, 1, [Arg], Line) = Call) 
   when Ln == <<"lang">>;
        Ln == <<"id">>;
        Ln == <<"element-with-id">>;
        Ln == <<"idref">> -> 
    #xqFunctionDef{params = [TargetType1,TargetType2], type = Type} = 
      get_static_function(State, {Name, 2}),
    CtxType = State#state.context_item_type,
    StateC = set_in_constructor(State, false),
    SimArgS = handle_node(StateC, Arg),
    SimArgT  = get_statement_type(SimArgS),
    SimArgSt = get_statement(SimArgS),
    StatCnt  = get_static_count(SimArgS),
    ok = check_occurance_match(SimArgT, TargetType1, StatCnt, Line), % 1st arg
    ok = check_occurance_match(CtxType, TargetType2, 1, Line), % ctx item
    % now check the types
    NoCastA = check_type_match(SimArgT, TargetType1),
    NoCastC = check_type_match(CtxType, TargetType2),
    %?parse_dbg("NoCast",{NoCastA,NoCastC}),
    NewStatement = 
        if 
            NoCastA == false;
            NoCastC == false ->
                ?parse_err('XPTY0004', ?LN(Line));
            NoCastA == cast ->
                type_cast(SimArgSt, TargetType1, Line);
            NoCastA == atomize ->
                type_promote({atomize, SimArgSt}, TargetType1, Line);
            true ->
                SimArgSt
        end,
    F = get_static_function(State, {Name, 1}),
    OutStatement = Call?CALL(F#xqFunctionDef{anno = Line,
                                             params = [NewStatement]}, Line),
    set_statement_and_type(State, OutStatement, Type);

% cardinality check functions - defer type checking until runtime
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = Ln} = Name, 
                          1, [Arg], Line) = Call)
  when Ln == <<"zero-or-one">>;
       Ln == <<"one-or-more">>;
       Ln == <<"exactly-one">> -> 
    F = get_static_function(State, {Name, 1}),
    StateC = set_in_constructor(State, false),
    SimpArg = handle_node(StateC, Arg),
    #xqSeqType{type = Type} = get_statement_type(SimpArg),
    ArgSt = get_statement(SimpArg),
    Occur = 
        case Ln of
            <<"zero-or-one">> -> zero_or_one;
            <<"one-or-more">> -> one_or_many;
            <<"exactly-one">> -> one
        end,
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line, 
                                                     params = [ArgSt]}, Line), 
                           ?seqtype(Line, Type, Occur));
% list part / takes type of the arg, unless node, then double
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = LocalName} = Name, 
                          1, [Arg], Line) = Call) 
   when LocalName == <<"min">>;
        LocalName == <<"max">>;
        LocalName == <<"abs">>;
        LocalName == <<"avg">>;
        LocalName == <<"sum">>;
        LocalName == <<"floor">>;
        LocalName == <<"ceiling">> -> 
    F = get_static_function(State, {Name, 1}),
    [TargetType] = F#xqFunctionDef.params,
    StateC = set_in_constructor(State, false),
    SimpArg = handle_node(StateC, Arg),
    Type0 = get_statement_type(SimpArg),
    %?parse_dbg("Type0",Type0),
    Type = 
        case Type0 of
            #xqSeqType{type = Ty} when ?node(Ty) ->
                Type0#xqSeqType{type = 'xs:double'};
            #xqSeqType{type = 'xs:anyAtomicType'} when LocalName == <<"avg">> ->
                Type0;
            #xqSeqType{type = #xqFunTest{type = T}} when LocalName == <<"avg">> ->
                try
                    NT = static_operator_type('div', T#xqSeqType.type,'xs:integer'),
                    T#xqSeqType{type = NT}
                catch
                    _:_ ->
                        ?parse_dbg("Type0",Type0),
                        ?parse_err('FORG0006', ?LN(Line))
                end;
            _ when LocalName == <<"avg">>, Type0#xqSeqType.type =/= item ->
                try
                    NT = static_operator_type('div', Type0,'xs:integer'),
                    Type0#xqSeqType{type = NT}
                catch 
                    _:_ ->
                        ?parse_dbg("Type0",get_statement(SimpArg)),
                        ?parse_dbg("Type0",Type0#xqSeqType.type),
                        ?parse_err('FORG0006', ?LN(Line))
                end;
            _ ->
                Type0
        end,
    NoCast = check_fun_arg_type(State,SimpArg, TargetType, Line),
    ArgSt = get_statement(NoCast),
    Zero = Type#xqSeqType{occur = zero_or_one},
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line, 
                                                     params = [ArgSt], 
                                                     type = Zero}, Line), 
                           Type);
% functions on functions
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                 local_name = <<"function-arity">>} = FName, 
                          1, [Arg], Line) = Call) -> 
    Type = ?intone(Line),
    F = get_static_function(State, {FName, 1}),
    case Arg of
        #xqPostfixExpr{part = true, post = [#xqArgumentList{args = Args}]} ->
            PlaceHolders = [ok || #xqArgumentPlaceholder{} <- Args],
            Cnt = length(PlaceHolders),
            set_statement_and_type(State, Cnt, Type);
        #xqFunctionRef{arity = Arity} ->
            set_statement_and_type(State, Arity, Type);
        #xqVarRef{anno = Ln, name = Name} ->
            St = get_variable(State, Name, Ln),
            Val = element(4, St), % xqSeqType
            case element(2, St) of
                #xqSeqType{type = #xqFunTest{params = any}} ->
                    set_statement_and_type(State, 
                                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                                     params = [{variable, Val}]}, Line), 
                                           Type);
                #xqSeqType{type = #xqFunTest{params = Ps}} ->
                    set_statement_and_type(State, length(Ps), Type);
                _ ->
                    set_statement_and_type(State, 
                                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                                     params = [{variable, Val}]}, Line),
                                           Type)
            end;
        {variable, Name} ->
            St = get_variable(State, {variable,Name}, Line),
            Val = element(4, St), % xqSeqType
            case element(2, St) of
                #xqSeqType{type = #xqFunTest{params = Ps}} ->
                    set_statement_and_type(State, length(Ps), Type);
                _ ->
                    set_statement_and_type(State, 
                                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                                     params = [{variable, Val}]}, Line), 
                                           Type)
            end;
        {sequence,_} ->
            ?parse_err('XPTY0004', ?LN(Line));
        _ ->
            StateC = set_in_constructor(State, false),
            SimpArg = handle_node(StateC, Arg),
            ArgSt = get_statement(SimpArg),
            set_statement_and_type(State, 
                                   Call?CALL(F#xqFunctionDef{anno = Line,
                                                             params = [ArgSt], 
                                                             type = Type}, Line), 
                                   Type)
    end;
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"function-name">>} = FName, 
                          1, [Arg], Line) = Call) -> 
    Type = ?seqtype(Line, 'xs:QName', zero_or_one),
    case Arg of
        #xqPostfixExpr{part = true} ->
            set_statement_and_type(State, 'empty-sequence', 
                                   #xqSeqType{type = 'empty-sequence', 
                                              occur = zero});
        #xqFunctionRef{name = Name} ->
            set_statement_and_type(State, ?atomic('xs:QName', Name), Type);
        _ ->
            StateC = set_in_constructor(State, false),
            SimpArg = handle_node(StateC, Arg),
            F = get_static_function(State, {FName, 1}),
            ArgSt = get_statement(SimpArg),
            set_statement_and_type(State, 
                                   Call?CALL(F#xqFunctionDef{anno = Line, params = [ArgSt], type = Type}, Line), 
                                   Type)
   end;
% functions that can return () if arg1 is () XXX ?? more?
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = LocalName} = Name, 
                          Arity, Args, Line) = Call) 
  when Arity > 0, 
       LocalName == <<"tokenize">> -> 
    #xqFunctionDef{params = Params, type = Type} = 
      F = get_static_function(State, {Name, Arity}),
    StateC = set_in_constructor(State, false),
    SimpArgs = handle_list(StateC, Args),
    CheckArgs = check_fun_arg_types(State, SimpArgs, Params, Line),
    Type1 = 
        case hd(CheckArgs) of
            {_,0} -> Type;
            {_,_} -> maybe_unzero_type(Type)
        end,
    NewArgs = lists:map(fun({S,_C}) ->
                            S
                        end, CheckArgs),
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = NewArgs,
                                                     type = Type1}, Line), Type1);
% DB node calls
handle_node(State, ?CALL(#xqQName{namespace = ?FN, local_name = Ln} = Name, 
                          1, [Arg], Line) = Call) when Ln == <<"doc">>;
                                                       Ln == <<"collection">> -> 
    F = get_static_function(State, {Name, 1}),
    StateC = set_in_constructor(State, false),
    SimpArg = handle_node(StateC, Arg),
    Type =
        case Ln of
            <<"doc">> ->
                ?seqtype(Line, document, zero_or_one);
            _ ->
                ?seqtype(Line)
        end,
    ArgSt = get_statement(SimpArg),
    set_statement_and_type(set_is_db(State, true), 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = [ArgSt], 
                                                     type = Type}, Line), Type);
% list reordering / takes type of the arg
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"subsequence">>} = Name, 2,
                          [Arg1, Arg2], Line) = Call) -> 
    F = get_static_function(State, {Name, 2}),
    StateC = set_in_constructor(State, false),
    SimpArg1 = handle_node(StateC, Arg1),
    ArgSt1 = get_statement(SimpArg1),
    Dbl = ?seqtype(Line, 'xs:double', one),
    SimpArgs = handle_list(StateC, [Arg2]),
    CheckArgs = check_fun_arg_types(State, SimpArgs, [Dbl], Line),
    NewArgs = lists:map(fun({S,_C}) ->
                            S
                        end, CheckArgs),
    Type1 = maybe_zero_type(get_statement_type(SimpArg1)),
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = [ArgSt1|NewArgs], 
                                                     type = Type1}, Line), Type1);
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"subsequence">>} = Name, 3,
                          [Arg1, Arg2, Arg3], Line) = Call) -> 
    F = get_static_function(State, {Name, 2}),
    StateC = set_in_constructor(State, false),
    SimpArg1 = handle_node(StateC, Arg1),
    ArgSt1 = get_statement(SimpArg1),
    Dbl = ?seqtype(Line, 'xs:double', one),
    SimpArgs = handle_list(StateC, [Arg2,Arg3]),
    CheckArgs = check_fun_arg_types(State, SimpArgs, [Dbl,Dbl], Line),
    NewArgs = lists:map(fun({S,_C}) ->
                            S
                        end, CheckArgs),
    Type1 = maybe_zero_type(get_statement_type(SimpArg1)),
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = [ArgSt1|NewArgs], 
                                                     type = Type1}, Line), Type1);
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"reverse">>} = Name, 1,
                          [Arg], Line) = Call) -> 
    F = get_static_function(State, {Name, 1}),
    StateC = set_in_constructor(State, false),
    SimpArg = handle_node(StateC, Arg),
    Type = get_statement_type(SimpArg),
    ArgSt = get_statement(SimpArg),
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = [ArgSt], 
                                                     type = Type}, Line), Type);
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"head">>} = Name, 
                          1, [Arg], Line) = Call) -> 
    F = get_static_function(State, {Name, 1}),
    StateC = set_in_constructor(State, false),
    SimpArg = handle_node(StateC, Arg),
    Type = (get_statement_type(SimpArg))#xqSeqType{occur = zero_or_one},
    ArgSt = get_statement(SimpArg),
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = [ArgSt], 
                                                     type = Type}, Line), Type);
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"tail">>} = Name, 
                          1, [Arg], Line) = Call) -> 
    F = get_static_function(State, {Name, 1}),
    StateC = set_in_constructor(State, false),
    SimpArg = handle_node(StateC, Arg),
    Type = (get_statement_type(SimpArg))#xqSeqType{occur = zero_or_many},
    ArgSt = get_statement(SimpArg),
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = [ArgSt], 
                                                     type = Type}, Line), Type);
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"count">>} = Name, 
                          1, [Arg], Line) = Call) -> 
    F = get_static_function(State, {Name, 1}),
    StateC = set_in_constructor(State, false),
    SimpArg = handle_node(StateC, Arg),
    Type = ?intone(Line),
    ArgSt = get_statement(SimpArg),
    ArgCt = get_static_count(SimpArg),
    % TODO sum of known counts + fn:count of unknowns
    if 
        ArgCt == undefined ->
            set_statement_and_type(State, 
                                   Call?CALL(F#xqFunctionDef{anno = Line,
                                                             params = [ArgSt], 
                                                             type = Type}, Line), 
                                   Type);
        true ->
            set_statement_and_type(State, ArgCt, Type)
    end;
handle_node(State, ?CALL(#xqQName{namespace = ?FN, 
                                  local_name = <<"filter">>} = Name, 
                          2, [Arg,#xqFunctionDef{} = Fun], Line) = Call) -> 
    Fun1 = 
        case Fun#xqFunctionDef.type of
            #xqSeqType{type = item} -> % generic type
                Fun#xqFunctionDef{type = ?boolone(Line)};
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
    %?parse_dbg("FunTy",FunTy),
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = [ArgSt,FunSt], 
                                                     type = Type}, Line), 
                           Type);
% static context functions
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"default-collation">>}, 
                    0, [], Line)) -> 
    DefCol = State#state.default_collation,
    Type = ?stringone(Line),
    set_statement_and_type(State, DefCol, Type);
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"static-base-uri">>}, 
                    0, [], Line)) -> 
    Base = xqerl_context:get_static_base_uri(State#state.tab),
    Type = ?seqtype(Line, 'xs:anyURI', zero_or_one),
    ArgSt = ?atomic('xs:anyURI', Base),
    set_statement_and_type(State, ArgSt, Type);
% BLOCKed functions
% TODO the rest of them...
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"environment-variable">>}, 
                         1, [Arg], Line)) -> 
    Type = ?seqtype(Line, 'xs:string', zero_or_one),
    ArgS = handle_node(State, Arg),
    _ = check_fun_arg_types(State, [ArgS], [?stringone(Line)], Line),   
    set_statement_and_type(State, 'empty-sequence', Type);
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"available-environment-variables">>}, 
                         0, [], Line)) -> 
    Type = ?seqtype(Line, 'xs:string', zero_or_many),
    set_statement_and_type(State, 'empty-sequence', Type);
% list distinct / takes type of the arg, unless node then xs:anyAtomicType
handle_node(State, ?CALL(#xqQName{namespace = ?FN,
                                  local_name = <<"distinct-values">>} = Name, 
                         1, [Arg], Line) = Call) -> 
    F = get_static_function(State, {Name, 1}),
    StateC = set_in_constructor(State, false),
    SimpArg = handle_node(StateC, Arg),
    Type0 = get_statement_type(SimpArg),
    Type = 
        case Type0 of
            #xqSeqType{type = Ty} when ?node(Ty) ->
                Type0#xqSeqType{type = 'xs:anyAtomicType'};
            _ ->
                Type0
        end,
    ArgSt = get_statement(SimpArg),
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = [ArgSt], 
                                                     type = Type}, Line), Type);
% data function return type is based on type of the argument, 
% atomics keep their type 
handle_node(State, ?CALL(#xqQName{namespace = ?FN, 
                                  local_name = <<"data">>} = Name, 
                          1, [Arg], Line) = Call) -> 
    #xqFunctionDef{type = FType} = F = get_static_function(State, {Name, 1}),
    StateC = set_in_constructor(State, false),
    SimpArg = handle_node(StateC, Arg),
    Type = get_statement_type(SimpArg),
    ArgSt = get_statement(SimpArg),
    Type1 = 
        case Type of
            #xqSeqType{type = T} when ?xs_anyAtomicType(T) ->
                Type;
            _ ->
                FType
        end,
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = [ArgSt], 
                                                     type = Type1}, Line), 
                           Type1);
% boolean functions
% not(exists(Arg)) == empty(Arg)
handle_node(State, 
            ?CALL(#xqQName{namespace = ?FN, local_name = <<"not">>}, 1,
                  [?CALL(#xqQName{namespace = ?FN, local_name = <<"exists">>}, 1,
                         [Arg], _)], Line)) ->
    handle_node(State, ?CALL(#xqQName{namespace = ?FN, local_name = <<"empty">>}, 
                             1, [Arg], Line));
handle_node(State, ?CALL(#xqQName{namespace = ?FN, 
                                  local_name = <<"exists">>} = FName, 
                          1, [Arg], Line) = Call) -> 
    StateC = set_in_constructor(State, false),
    S2 = handle_node(StateC, Arg),
    S1 = get_statement(S2),
    SType = get_statement_type(S2),
    O1 = 
        case SType of
            #xqSeqType{occur = O2} ->
                O2;
            _ ->
                zero_or_many
        end,
    Val = 
        if 
            O1 == one;
            O1 == one_or_many ->
               ?true;
            true ->
               F = get_static_function(State, {FName,1}),
               Call?CALL(F#xqFunctionDef{anno = Line, params = [S1]}, Line)
         end,
    set_statement_and_type(State, Val, ?boolone(Line));
handle_node(State, ?CALL(#xqQName{namespace = ?FN, 
                                  local_name = <<"empty">>} = FName, 
                          1, [Arg], Line) = Call) -> 
    StateC = set_in_constructor(State, false),
    S2 = handle_node(StateC, Arg),
    S1 = get_statement(S2),
    F = get_static_function(State, {FName,1}),
    Val = Call?CALL(F#xqFunctionDef{anno = Line, params = [S1]}, Line),
    set_statement_and_type(State, Val, ?boolone(Line));
handle_node(State, ?CALL(#xqQName{anno = Line,
                                  namespace = ?FN, 
                                  local_name = <<"true">>}, 0, [], _)) -> 
    set_statement_and_type(State, ?true, ?boolone(Line));
handle_node(State, ?CALL(#xqQName{anno = Line,
                                  namespace = ?FN, 
                                  local_name = <<"false">>}, 0, [], _)) -> 
    set_statement_and_type(State, ?false, ?boolone(Line));
% concat
handle_node(_State, ?CALL(#xqQName{namespace = ?FN, 
                                   local_name = <<"concat">>}, 1, _, Line)) -> 
   ?parse_err('XPST0017', ?LN(Line));
handle_node(State, ?CALL(#xqQName{namespace = ?FN, 
                                  local_name = <<"concat">>} = Name,
                          Arity, Args, Line) = Call) ->
    F = get_static_function(State, {Name, Arity}),
    StateC = set_in_constructor(State, false),
    SimpArgs = handle_list(StateC, Args),
    % zero_or_one to allow empty sequence
    Fake = lists:duplicate(Arity, ?seqtype(Line, 'xs:anyAtomicType', zero_or_one)),
    CheckArgs = check_fun_arg_types(State, SimpArgs, Fake, Line),
    NewArgs = lists:map(fun({S,undefined}) -> % unknown size
                            S;
                           ({S,C}) when C =< 1 ->
                            S;
                           ({_S,_C}) -> % no known sequences
                            ?parse_err('XPTY0004', ?LN(Line))
                        end, CheckArgs),
    % NewArgs wrapped as list on purpose!
    set_statement_and_type(State, 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = [#xqSequence{vals = NewArgs}]}, Line), 
                           ?stringone(Line));
% unknown namespace from parser
handle_node(State, ?CALL(#xqQName{namespace = undefined} = Name,
                         Arity, Args, Line)) ->
    QName = resolve_qname(Name, State),
    handle_node(State, ?CALL(QName, Arity, Args, Line));
% catch-all for all fx's
handle_node(State, ?CALL(Name, Arity, Args, Line) = Call) ->
    #xqFunctionDef{params = Params, type = Type, annotations = Annos} = 
        F = get_static_function(State, {Name, Arity}),
    UpdAnno = get_update_anno(Annos),
    State1 = 
        if 
            UpdAnno == updating ->
                set_updating(State, true);
            true ->
                State
        end,
    StateC = set_in_constructor(State, false),
    SimpArgs = handle_list(StateC, Args),
    CheckArgs = check_fun_arg_types(State, SimpArgs, Params, Line),
    NewArgs = lists:map(fun({S,_C}) ->
                            S
                        end, CheckArgs),
    set_statement_and_type(State1, 
                           Call?CALL(F#xqFunctionDef{anno = Line,
                                                     params = NewArgs}, Line), 
                           Type);
% sequence type 
handle_node(State, #xqSeqType{type = #xqQName{} = Name} = Node) ->
    %?parse_dbg("Name",Name),
    #xqQName{anno = Line, namespace = Ns, local_name = Ln} = resolve_qname(Name, State),
    Atom = 
        if 
            Ns == ?XS ->
                list_to_atom("xs:" ++ binary_to_list(Ln));
            true ->
                ?parse_err('XQST0052', ?LN(Line))
          end,
    set_statement(State, Node#xqSeqType{type = Atom});
handle_node(State, #xqSeqType{type = T} = Node) when not is_atom(T) ->
    %% XXX can this happen?
    NewT = get_statement(handle_node(State, T)),
    set_statement(State, Node#xqSeqType{type = NewT});
handle_node(State, #xqSeqType{} = Node) ->
    set_statement(State, Node);
%% 3.19 Simple map operator (!)
handle_node(State, #xqSimpleMap{lhs = SeqExpr, rhs = MapExpr} = Sm) ->
    SeqState     = handle_node(State, SeqExpr),
    SeqStatement = get_statement(SeqState),
    SeqType      = get_statement_type(SeqState),
    NewSeqType   = SeqType#xqSeqType{occur = one},
    State1       = set_statement_and_type(State, SeqStatement, NewSeqType),
    MapState     = handle_node(State1, MapExpr),
    MapStatement = get_statement(MapState),
    MapType      = get_statement_type(MapState),
    set_statement_and_type(State, 
                           Sm#xqSimpleMap{lhs = SeqStatement, rhs = MapStatement}, 
                           maybe_many_type(MapType));
%% 3.20 Arrow operator (=>) 
% done in parser
%% 3.21 Validate Expressions
% not implemented
%% 3.22 Extension Expressions
handle_node(State, #xqExtensionExpr{pragmas = Pragmas, expr = Exprs} = Node) -> 
    S1 = handle_node(State, Exprs),
    Upd = is_updating(S1),
    State1 = set_updating(State, Upd),
    St = get_statement(S1),
    Sty = get_statement_type(S1),
    % just resolve any names
    F = fun({Name, Contents}) ->
               case resolve_pragma_qname(Name, State) of
                   #xqQName{namespace = <<>>} ->
                       false;
                   QName ->
                       {true, {QName,Contents}}
               end
        end,
    P = lists:filtermap(F, Pragmas),
    set_statement_and_type(State1, Node#xqExtensionExpr{pragmas = P, 
                                                        expr = St}, Sty);
handle_node(State, #xqNodeConstructor{cons = Expr} = Node) -> 
    ST = handle_node(State, Expr),
    S1 = get_statement(ST),
    ST1 = get_statement_type(ST),
    Upd = is_updating(ST),
    State1 = set_updating(State, Upd),
    set_statement_and_type(State1, Node#xqNodeConstructor{cons = S1}, ST1);
handle_node(State, #xqLookup{} = L) -> 
    handle_predicate(State, L);
handle_node(State, #xqArgumentPlaceholder{anno = A, id = Id}) ->
    Name = param_variable_name(Id),
    set_statement_and_type(State,
                           {variable, Name}, 
                           ?seqtype(A));

handle_node(State, undefined) ->
    set_statement(State, undefined);
handle_node(State, Node) ->
    ?parse_dbg("UNKNOWN NODE", Node),
    %?parse_dbg("UNKNOWN NODE", State#state.context),
    State.

both_singleton(#xqSeqType{occur = one}, 
               #xqSeqType{occur = one}) -> true;
both_singleton(_, _) -> false.   

% TODO make this a foldr to wrap up chained calls and get correct return type
handle_predicates(State, []) -> 
    set_statement(State,[]);
handle_predicates(State, Predicates) ->
    CtxT = get_statement_type(State),
    State0 = set_in_predicate(State, true),
    {PredStatements, OutType} = 
        lists:mapfoldl(fun(P, InType) ->
                              State2 = set_statement_type(State0, InType),
                              State1 = handle_predicate(State2, P),
                              Type = get_statement_type(State1),
                              {get_statement(State1),Type}
                      end, CtxT, l(Predicates)),
    set_statement_and_type(State, PredStatements, OutType).

handle_predicate(State, 
                 #xqPredicate{anno = Line,
                              expr = 
                                [#xqComparisonExpr{
                                     comp = '=',
                                     lhs = ?POSITION(_),
                                     rhs = Rhs}]} = Node) ->
    % positional predicate in list, allow this through.
    State0 = set_in_predicate(State, true),
    PreFilterType = get_statement_type(State),
    PostFilterType = maybe_zero_type(PreFilterType), 
    ContextType = (get_statement_type(State))#xqSeqType{occur = one},
    State1 = State0#state{context_item_type = ContextType},
    SimExpr = handle_node(State1, Rhs),
    SimSt0 = get_statement(SimExpr),
    SimSt = case SimSt0 of
                L when is_list(L) ->
                    #xqSequence{vals = L};
                _ ->
                    SimSt0
            end,
    Type = get_statement_type(SimExpr),
    IsNum = check_type_match(Type, ?seqtype(Line, 'xs:numeric', zero_or_many)),
    % numerics are position filters, all else is always false
    if 
        IsNum ->
            set_statement_and_type(State, Node#xqPredicate{expr = SimSt, 
                                                           pos = true}, 
                                   PostFilterType);
        true ->
            set_statement_and_type(State, false, ?boolone(Line))
    end;
handle_predicate(State, #xqPredicate{anno = A, 
                                     expr = Expr} = Node) ->
    State0 = set_in_predicate(State, true),
    PreFilterType = get_statement_type(State),
    PostFilterType = maybe_zero_type(PreFilterType), 
    ContextType = (get_statement_type(State))#xqSeqType{occur = one},
    State1 = State0#state{context_item_type = ContextType},
    SimExpr = handle_node(State1, Expr),
    SimSt0 = get_statement(SimExpr),
    SimSt = case SimSt0 of
                L when is_list(L) ->
                    #xqSequence{vals = L};
                _ ->
                    SimSt0
            end,
    #xqSeqType{type = SimTy} = Type = get_statement_type(SimExpr),
    SimCnt = get_static_count(SimExpr),
    Node1 = Node#xqPredicate{expr = SimSt},
    if 
        SimTy == item;
        ?node(SimTy);
        SimTy == 'xs:boolean' ->
            set_statement_and_type(State, Node1, PostFilterType);
        true ->
            try 
                IsNum = check_type_match(Type, ?seqtype(A, 'xs:numeric', zero_or_one)),
                %?parse_dbg("IsNum",IsNum),
                %?parse_dbg("SimCnt",SimCnt),
                if 
                    IsNum andalso (SimCnt == undefined orelse SimCnt < 2) ->
                        set_statement_and_type(State, Node1#xqPredicate{pos = true}, 
                                               PostFilterType);
                    true ->
                        set_statement_and_type(State, Node1, PostFilterType)
                end
            catch 
                _:_ ->
                    set_statement_and_type(State, Node1, PostFilterType)
            end
    end;
handle_predicate(State, #xqArgumentList{anno = A, args = Args} = Node) ->
    State0 = set_in_predicate(State, true),
    SimpArgs = handle_list(State0, Args),
    NewArgs = lists:map(fun(Arg) ->
                              get_statement(Arg)
                        end, SimpArgs),
    set_statement_and_type(State, Node#xqArgumentList{args = NewArgs}, 
                           ?seqtype(A));
% unary lookups
handle_predicate(State, #xqLookup{anno = A, key = wildcard} = Node) ->
    NewType = ?seqtype(A), 
    % what type of lookup? map/array
    Kind = 
        case get_statement_type(State) of
            #xqSeqType{type = #xqFunTest{kind = Kind1}} -> Kind1;
            _ -> item
        end,
    if 
        Kind == map ->
            Node1 = Node#xqLookup{kind = map},
            set_statement_and_type(State, Node1, NewType);
        true ->
            Node1 = Node#xqLookup{kind = map},
            set_statement_and_type(State, Node1, NewType)
   end;
handle_predicate(State, #xqLookup{anno = A, key = Arg} = Node) ->
    State0 = set_in_predicate(State, true),
    NewType = ?seqtype(A), 
    SimpArgs = handle_node(State0, Arg),
    NewArg = get_statement(SimpArgs),
    %Type = get_statement_type(SimpArgs),
    LUType = 
        case get_statement_type(State) of
            #xqSeqType{type = #xqFunTest{kind = Kind}} ->
                Kind;
            _ ->
                unknown
        end,
    if 
        LUType == map ->
            Node1 = Node#xqLookup{key = NewArg, kind = map},
            set_statement_and_type(State, Node1, NewType);
        true ->
            Node1 = Node#xqLookup{key = NewArg, kind = array},
            set_statement_and_type(State, Node1, NewType)
    end.

% boolean allows using variable inside the expression, or not.
handle_internal_var_node(State,#xqVar{id   = Id,
                                      name = Name, 
                                      type = Type0, 
                                      expr = Expr,
                                      anno = A} = Node, true) ->
    ErlVarName = local_variable_name(Id),
    NewVar0  = {Name,Type0,[],ErlVarName},
    State0 = add_inscope_variable(State, NewVar0),
    VarState = handle_node(State0, Expr),
    VarType = get_statement_type(VarState),
    IsDB = get_is_db(VarState),
    Type = if Type0 == undefined -> VarType; true -> Type0 end,
    VarStmt = get_statement(VarState),
    case check_type_match(VarType, Type) of
        false ->
            ?parse_err('XPTY0004', ?LN(A));
        _ ->
            ok
    end,
    External = 
        case is_static_literal(VarStmt) of
            true ->
                {false, VarStmt};
            _ when IsDB ->
                {false, true};
            _ ->
                false
        end,
    NewVar  = {Name,VarType,[],ErlVarName, External},
    State1 = add_inscope_variable(State, NewVar),
    NewStatement = Node#xqVar{type = VarType,
                              expr = VarStmt},
    set_statement_and_type(State1, NewStatement, VarType);
handle_internal_var_node(State,#xqVar{id = Id,
                                      name = Name, 
                                      type = Type0, 
                                      expr = Expr,
                                      anno = A} = Node, false) ->
    ErlVarName = local_variable_name(Id),
    VarState = handle_node(State, Expr),
    VarType = get_statement_type(VarState),
    IsDB = get_is_db(VarState),
    Type = if Type0 == undefined -> VarType; true -> Type0 end,
    VarStmt = get_statement(VarState),
    case check_type_match(VarType, Type) of
        false ->
            ?parse_err('XPTY0004', ?LN(A));
        _ ->
            ok
    end,
    External = 
        case is_static_literal(VarStmt) of
            true ->
                {false, VarStmt};
            _ when IsDB ->
                {false, true};
            _ ->
                false
        end,
    NewVar  = {Name,VarType,[],ErlVarName, External},
    State1 = add_inscope_variable(State, NewVar),
    NewStatement = Node#xqVar{type = VarType, 
                              expr = VarStmt},
    set_statement(State1, NewStatement).

check_parameter_names(Params) ->
    M = fun(#xqVar{anno = A, name = #xqQName{namespace = N, 
                                             local_name = L}}, Map) ->
               Key = {N, L},
               case Map of
                   #{Key := _} ->
                       ?parse_err('XQST0039', ?LN(A));
                   _ ->
                       Map#{Key => A}
               end
        end,
    _ = lists:foldl(M, #{}, Params),
    ok.


% returns a list of states for the list of Nodes
handle_list(State, NodeList) ->
   lists:map(fun(Arg) ->
                   handle_node(State, Arg)
             end, NodeList).























%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

param_prefix() -> "__Param__var_".

global_variable_name(Name) ->
    variable_hash_name(Name).

local_variable_name(Id) ->
    list_to_atom(lists:concat(["__XQ__var_", Id])).

copy_variable_name(Id) ->
    list_to_atom(lists:concat(["__Copy__var_", Id])).

param_variable_name(Id) ->
    list_to_atom(lists:concat([param_prefix(), Id])).

is_static_literal(#xqAtomicValue{}) -> true;
is_static_literal(V) when is_number(V) -> true;
is_static_literal(V) when is_binary(V) -> true;
is_static_literal(V) when is_boolean(V) -> true;
is_static_literal(_) -> false.

get_module_ns(undefined) -> [];
get_module_ns(#xqModuleDecl{namespace = Ns,
                            prefix = Px}) ->
    {Ns, Px}.

reserved_namespaces(LineNum, Ns) ->
    % check reserved NS 
    if Ns == <<"http://www.w3.org/XML/1998/namespace">>;
       Ns == <<"http://www.w3.org/2001/XMLSchema">>;
       Ns == <<"http://www.w3.org/2001/XMLSchema-instance">>;
       Ns == <<"http://www.w3.org/2005/xpath-functions">>;
       Ns == <<"http://www.w3.org/2005/xpath-functions/math">>;
       Ns == <<"http://www.w3.org/2005/xpath-functions/array">>;
       Ns == <<"http://www.w3.org/2005/xpath-functions/map">>;
       Ns == <<"http://www.w3.org/2012/xquery">> -> 
            ?parse_err('XQST0045', {undefined, LineNum});
        true ->
            ok
    end.

valid_enc(<<"US-ASCII">>) -> true;
valid_enc(<<"ISO-8859-1">>) -> true;
valid_enc(<<"UTF-16">>) -> true;
valid_enc(<<"UTF-8">>) -> true;
valid_enc(_) -> ?parse_err('XQST0087', {undefined, 1}).

valid_ver(<<"1.0">>) -> true;
valid_ver(<<"3.0">>) -> true;
valid_ver(<<"3.1">>) -> true;
valid_ver(_) -> ?parse_err('XQST0031', {undefined, 1}).

init_mod_scan() ->
   xqerl_context:init().

prolog_order(undefined) -> {[], []};
prolog_order(Prolog) ->
    % 1st part : default namespaces, setters, namespace declarations, imports
    FirstFun = 
        fun(R) when is_record(R, xqDefaultNamespaceDecl);
                    is_record(R, xqNamespaceDecl);
                    is_record(R, xqImport);
                    is_record(R, xqDecimalFormatDecl);
                    is_record(R, xqRevalidationDecl);
                    is_record(R, xqCopyNamespacesDecl);
                    is_record(R, xqEmptyOrderDecl);
                    is_record(R, xqOrderingModeDecl);
                    is_record(R, xqConstructionDecl);
                    is_record(R, xqBaseURIDecl);
                    is_record(R, xqDefaultCollationDecl);
                    is_record(R, xqBoundarySpaceDecl) -> true;
           (_) -> false
        end,
    {Part1, Rest} = lists:splitwith(FirstFun, Prolog),
    % 2nd part : context item, variables and functions options
    SecondFun = 
        fun(R) when is_record(R, xqContextItemDecl);
                    is_record(R, xqOptionDecl);
                    is_record(R, xqVar);
                    is_record(R, xqFunctionDef) -> true;
           (_) -> false
        end,               
    {Part2, Rest1} = lists:splitwith(SecondFun, Rest),
    case Rest1 of
        [] ->
            {Part1, Part2};
        [E|_] ->
            A = element(2, E), % should be line number
            ?parse_err('XPST0003', ?LN(A))
    end.

get_def_elem_ns(Prolog) ->
    D = [E || #xqDefaultNamespaceDecl{kind = element} = E <- Prolog],
    case D of
        [] ->
            <<>>;
        [#xqDefaultNamespaceDecl{uri = Ns}] ->
            Ns;
        [_,#xqDefaultNamespaceDecl{anno = L}|_] ->
            ?parse_err('XQST0066', ?LN(L))
    end.

get_def_func_ns(Prolog) ->
    D = [E || #xqDefaultNamespaceDecl{kind = function} = E <- Prolog],
    case D of
        [] -> ok;
        [#xqDefaultNamespaceDecl{uri = U, anno = A}] 
            when U == <<"http://www.w3.org/2000/xmlns/">>;
                 U == <<"http://www.w3.org/XML/1998/namespace">> ->
            ?parse_err('XQST0070', ?LN(A));
        [_] -> ok;
        [_,#xqDefaultNamespaceDecl{anno = A}|_] ->
            ?parse_err('XQST0066', ?LN(A))
    end.

get_dec_formats(Prolog, State) ->
    Formats = [D || #xqDecimalFormatDecl{} = D <- Prolog],
    RecF = 
        fun({F, A, V}, R) ->
               L = [C || <<C/utf8>> <= V],
               case F of
                   'decimal-separator' when length(L) == 1 ->
                        R#dec_format{decimal = L};
                   'grouping-separator' when length(L) == 1 ->
                        R#dec_format{grouping = L};
                   'infinity' ->
                        R#dec_format{infinity = L};
                   'minus-sign' when length(L) == 1 ->
                        R#dec_format{minus = L};
                   'NaN' ->
                        R#dec_format{nan = L};
                   'percent' when length(L) == 1 ->
                        R#dec_format{percent = L};
                   'per-mille' when length(L) == 1 ->
                        R#dec_format{per_mille = L};
                   'zero-digit' when length(L) == 1 ->
                        % check if value is zero
                        Zb = xqerl_format:zero_base_by_family(hd(L)),
                        if [Zb] == L ->
                               R#dec_format{zero = L};
                           true ->
                               ?parse_err('XQST0097', ?LN(A))
                        end;
                   'digit' when length(L) == 1 ->
                        R#dec_format{digit = L};
                   'pattern-separator' when length(L) == 1 ->
                        R#dec_format{pattern = L};
                   'exponent-separator' when length(L) == 1 ->
                        R#dec_format{exponent = L};
                   _ ->
                        ?parse_err('XQST0097', ?LN(A))
                end
        end,
    MapF = 
        fun(#xqDecimalFormatDecl{anno = A, name = Name, props = FList}) ->
               Rec = lists:foldl(RecF, #dec_format{}, FList),
               [Zero] = Rec#dec_format.zero,
               Nums = [[N] || N <- lists:seq(Zero + 1, Zero + 9)],
               Names = lists:sort([N || {N,_,_} <- FList]),
               % remove items not in picture string
               Rem = Rec#dec_format{nan = nan, 
                                    minus = minus, 
                                    infinity = infinity},
               Sort = lists:sort(Nums ++ tl(tuple_to_list(Rem))),
               % check for duplicate values and names
               OK = lists:usort(Sort) == Sort,
               Dup = lists:usort(Names) == Names,
               if OK, Dup -> ok;
                   OK -> ?parse_err('XQST0114', ?LN(A));
                   true -> ?parse_err('XQST0098', ?LN(A))
               end,    
               ResName = 
                    if Name == undefined -> <<>>;
                       true ->
                           try
                               #xqQName{namespace = Uri,
                                        prefix = Prefix,
                                        local_name = Local} = 
                                 resolve_qname(Name, State),
                               {qname, Uri, Prefix, Local}
                           catch 
                               _:_ ->
                                   ?parse_dbg("FODF1280", Name),
                                   ?parse_err('FODF1280', ?LN(A))
                           end
                    end,
                {ResName, A, Rec}
        end,
    All = lists:map(MapF, Formats),
    % check for duplicate format names
    _ = lists:foldl(fun({N, A, _}, M) ->
                           K = case N of
                                   {_,U0,_,P0} ->
                                       {U0, P0};
                                   _ ->
                                       N
                               end,
                           case M of
                               #{K := _} ->
                                   ?parse_err('XQST0111', ?LN(A));
                               _ ->
                                   M#{K => A}
                           end
                    end, #{}, All),
   % maybe add default
   case lists:keyfind(<<>>, 1, All) of
      false ->
         [{<<>>,0,#dec_format{}}|All];
      _ ->
         All
   end.

get_base_uri([#xqBaseURIDecl{} = B|T], [], Default) ->
    get_base_uri(T, B, Default);
get_base_uri([#xqBaseURIDecl{anno = A}|_], _, _) ->
    ?parse_err('XQST0032', ?LN(A));
get_base_uri([_|T], Acc, Default) ->
    get_base_uri(T, Acc, Default);
get_base_uri([], [], Default) -> Default;
get_base_uri([], #xqBaseURIDecl{anno = A, uri = U}, Default) ->
    case xqerl_lib:is_absolute_uri(U) of
        true -> U;
        false ->
            try
                xqerl_lib:resolve_against_base_uri(Default, U)
            of
                {error,_} -> ?parse_err('XQST0046', ?LN(A));
                N -> N
            catch
                _:_ ->
                    ?parse_err('XQST0046', ?LN(A))
            end
    end.

get_boundary_space([#xqBoundarySpaceDecl{} = B|T], [], Default) ->
    get_boundary_space(T, B, Default);
get_boundary_space([#xqBoundarySpaceDecl{anno = A}|_], _, _) ->
    ?parse_err('XQST0068', ?LN(A));
get_boundary_space([_|T], Acc, Default) ->
    get_boundary_space(T, Acc, Default);
get_boundary_space([], [], Default) -> Default;
get_boundary_space([], #xqBoundarySpaceDecl{mode = M}, _) -> 
    M.

get_default_collation([#xqDefaultCollationDecl{} = B|T], [], Default, Known) ->
    get_default_collation(T, B, Default, Known);
get_default_collation([#xqDefaultCollationDecl{anno = A}|_], _, _, _) ->
    ?parse_err('XQST0038', ?LN(A));
get_default_collation([_|T], Acc, Default, Known) ->
    get_default_collation(T, Acc, Default, Known);
get_default_collation([], [], {_, Default}, _) -> Default;
get_default_collation([], #xqDefaultCollationDecl{anno = A, uri = U}, {Base, _}, Known) -> 
    try
        case xqerl_lib:resolve_against_base_uri(Base, U) of
            <<"http://www.w3.org/2013/collation/UCA",_/binary>> = R ->
                R;
            R ->
                case lists:member(R, Known) of
                    true ->
                        R;
                    false ->
                        throw({error, 'XQST0038'})
                end
        end
    catch
        _:_ ->
            ?parse_err('XQST0038', ?LN(A))
    end.

get_construction_mode([#xqConstructionDecl{} = B|T], [], Default) ->
    get_construction_mode(T, B, Default);
get_construction_mode([#xqConstructionDecl{anno = A}|_], _, _) ->
    ?parse_err('XQST0067', ?LN(A));
get_construction_mode([_|T], Acc, Default) ->
    get_construction_mode(T, Acc, Default);
get_construction_mode([], [], Default) -> Default;
get_construction_mode([], #xqConstructionDecl{mode = M}, _) -> 
    M.

get_ordering_mode([#xqOrderingModeDecl{} = B|T], [], Default) ->
    get_ordering_mode(T, B, Default);
get_ordering_mode([#xqOrderingModeDecl{anno = A}|_], _, _) ->
    ?parse_err('XQST0065', ?LN(A));
get_ordering_mode([_|T], Acc, Default) ->
    get_ordering_mode(T, Acc, Default);
get_ordering_mode([], [], Default) -> Default;
get_ordering_mode([], #xqOrderingModeDecl{mode = M}, _) -> 
    M.

get_empty_order_mode([#xqEmptyOrderDecl{} = B|T], [], Default) ->
    get_empty_order_mode(T, B, Default);
get_empty_order_mode([#xqEmptyOrderDecl{anno = A}|_], _, _) ->
    ?parse_err('XQST0069', ?LN(A));
get_empty_order_mode([_|T], Acc, Default) ->
    get_empty_order_mode(T, Acc, Default);
get_empty_order_mode([], [], Default) -> Default;
get_empty_order_mode([], #xqEmptyOrderDecl{mode = M}, _) -> 
    M.

get_copy_namespaces([#xqCopyNamespacesDecl{} = B|T], [], Default) ->
    get_copy_namespaces(T, B, Default);
get_copy_namespaces([#xqCopyNamespacesDecl{anno = A}|_], _, _) ->
    ?parse_err('XQST0055', ?LN(A));
get_copy_namespaces([_|T], Acc, Default) ->
    get_copy_namespaces(T, Acc, Default);
get_copy_namespaces([], [], Default) -> Default;
get_copy_namespaces([], #xqCopyNamespacesDecl{pre = P, inh = I}, _) -> 
    {P, I}.

get_revalidation([#xqRevalidationDecl{} = B|T], [], Default) ->
    get_revalidation(T, B, Default);
get_revalidation([#xqRevalidationDecl{anno = A}|_], _, _) ->
    ?parse_err('XUST0003', ?LN(A));
get_revalidation([_|T], Acc, Default) ->
    get_revalidation(T, Acc, Default);
get_revalidation([], [], Default) -> Default;
get_revalidation([], #xqRevalidationDecl{kind = K}, _) -> 
    K.

scan_setters(#state{tab = Tab,
                    known_collations = KC} = State, Prolog) ->
   D = <<"http://www.w3.org/2005/xpath-functions/collation/codepoint">>,
   S = xqerl_context:get_static_base_uri(Tab),
   BU = get_base_uri(Prolog, [], S),
   _ = xqerl_context:set_static_base_uri(Tab, BU),
   BS = get_boundary_space(Prolog, [], strip),
   DC = get_default_collation(Prolog, [], {BU,D}, KC),
   CM = get_construction_mode(Prolog, [], preserve),
   OM = get_ordering_mode(Prolog, [], ordered),
   EO = get_empty_order_mode(Prolog, [], greatest),
   CN = get_copy_namespaces(Prolog, [], {preserve, 'inherit'}),
   RM = get_revalidation(Prolog, [], lax),
   DF = get_dec_formats(Prolog, State),
   
   State#state{boundary_space = BS,
               default_collation = DC,
               base_uri = BU,
               construction_mode = CM,
               order_mode = OM,
               empty_order = EO,
               copy_ns_mode = CN,
               known_dec_formats = DF,
               revalidation = RM}.

% returns [{Ns, Px}]
get_namespaces(Prolog,ModNsPx,DefElNs) ->
    %?parse_dbg("{Prolog,ModNsPx,DefElNs}",{Prolog,ModNsPx,DefElNs}),
    MF = 
        fun (#xqNamespaceDecl{anno = A, uri = U, prefix = P}, Acc) ->
                case lists:keyfind(P, 2, Acc) of
                    false ->
                        [{U, P}|Acc];
                    _ ->
                        ?parse_err('XQST0033', ?LN(A))
                end;
            (#xqImport{anno = A, uri = U, prefix = P}, Acc) ->
                case lists:keyfind(P, 2, Acc) of
                    false ->
                        [{U, P}|Acc];
                    _ when P == <<>> ->
                        Acc;
                    _ ->
                        ?parse_err('XQST0033', ?LN(A))
                end;
            (_, Acc) ->
                Acc
        end,
    Namespaces = lists:foldl(MF, [{DefElNs,<<>>}], Prolog),
    case ModNsPx of
        [] -> Namespaces;
        _ ->
            [ModNsPx|Namespaces]
    end.

set_namespaces(State, Namespaces) ->
   NsList = [#xqNamespace{namespace = Ns, prefix = Px}
             || {Px,Ns} <- Namespaces],
   State#state{known_ns = NsList}.

overwrite_static_namespaces(StaticNamespaces, LocalNamespaces) ->
    lists:foldl(fun({Ns, Px}, List) ->
                       lists:keystore(Px, 1, List, {Px, Ns})
                end, StaticNamespaces, LocalNamespaces).

get_imports(Imports, ModuleType) ->
    {Funs, Vars, Props} = xqerl_context:get_static_module_exports(),
    get_imports(Imports, 
                {translate_funs(Funs), 
                 translate_vars(Vars), 
                 Props}, ModuleType).

get_imports([#xqImport{anno = A, uri = U, prefix = P}|T], {F, V, S}, ModuleType) ->
    case xqerl_context:get_module_exports({U, P}) of
        {[], [], #xqError{} = E} when ModuleType == main ->
            ?parse_err(E, ?LN(A));
        {[], [], #xqError{} = E} ->
            get_imports(T, {F, V, [E|S]}, ModuleType);
        {F1, V1, S1} ->
            F2 = translate_funs(F1),
            V2 = translate_vars(V1),
            get_imports(T, {F2 ++ F,
                            V2 ++ V,
                            S1 ++ S}, ModuleType)
    end;
get_imports([], Acc, _) -> Acc.

translate_funs([{QName, Type, Annos, MFA, Ar, Params}|T]) ->
    N = {translate_record(QName), 
         translate_record(Type), 
         [translate_record(A) || A <- Annos], 
         MFA, 
         Ar, 
         [translate_record(P) || P <- Params]},
    [N|translate_funs(T)];
translate_funs([]) ->
    [].

translate_vars([{QName, Type, Annos, MF, Ext}|T]) ->
    N = {translate_record(QName), 
         translate_record(Type), 
         [translate_record(A) || A <- Annos], 
         MF, 
         Ext},
    [N|translate_vars(T)];
translate_vars([]) -> [].

translate_record(any) -> any;
translate_record(undefined) -> undefined;
translate_record(List) when is_list(List) -> 
    [translate_record(A) || A <- List];
translate_record({kindTest,Kind,Name,Type}) ->
    #xqKindTest{anno = 0, 
                kind = Kind,
                name = translate_record(Name),
                type = translate_record(Type)};
translate_record({funTest,Kind,Annos,Name,Params,Type}) ->
    #xqFunTest{anno = 0, 
               kind = Kind,
               annotations = [translate_record(A) || A <- Annos],
               name = translate_record(Name),
               params = translate_record(Params),
               type = translate_record(Type)};
translate_record({annotation, QName, Vals}) ->
    #xqAnnotation{anno = 0, 
                  name = translate_record(QName),
                  values = Vals};
translate_record({qname,Ns,Px,Ln}) ->
    #xqQName{anno = 0, namespace = Ns, prefix = Px, local_name = Ln};
translate_record({seqType,Ty,Oc}) when is_atom(Ty) ->
    ?seqtype(0, Ty, Oc);
translate_record({seqType,Ty,Oc}) ->
    Ty1 = translate_record(Ty),
    ?seqtype(0, Ty1, Oc);

translate_record(#xqKindTest{} = R) -> R;
translate_record(#xqFunTest{} = R) -> R;
translate_record(#xqAnnotation{} = R) -> R;
translate_record(#xqQName{} = R) -> R;
translate_record(#xqSeqType{} = R) -> R.



pro_mod_imports(Prolog, undefined) -> 
    Pred = fun(#xqImport{kind = module}) -> true;
              (_) -> false
           end,
    Imports = lists:filtermap(Pred, Prolog),
    pro_mod_imports(Imports);
pro_mod_imports(Prolog, #xqModuleDecl{namespace = ModNs}) -> 
    % block self import in library
    Pred = fun(#xqImport{uri = U, kind = module}) when U == ModNs -> false;
              (#xqImport{kind = module}) -> true;
              (_) -> false
           end,
    Imports = lists:filtermap(Pred, Prolog),
    pro_mod_imports(Imports).

pro_mod_imports(Imports) ->
    % check for dup imports
    Check = fun(#xqImport{anno = A, uri = U}, M) ->
                   case M of
                       #{U := _} ->
                           ?parse_err('XQST0047', ?LN(A));
                       _ ->
                           M#{U => A}
                   end
            end,
    _ = lists:foldl(Check, #{}, Imports),
    Imports.

pro_context_item(Prolog, library) ->
    Cs = [C || C <- Prolog, is_record(C, xqContextItemDecl)],
    _ = [?parse_err('XQST0113', ?LN(A)) || 
         #xqContextItemDecl{anno = A, default = D, external = E} <- Cs, 
         D =/= undefined orelse E == false],
    case Cs of
        [] -> [];
        [_] -> Cs;
        [_,#xqContextItemDecl{anno = A}|_] ->
            ?parse_err('XQST0099', ?LN(A))
    end;
pro_context_item(Prolog, main) ->
    Cs = [C || C <- Prolog, is_record(C, xqContextItemDecl)],
    case Cs of
        [] -> [];
        [_] -> Cs;
        [_,#xqContextItemDecl{anno = A}|_] ->
            ?parse_err('XQST0099', ?LN(A))
    end.

pro_options(Prolog, library) ->
    [?parse_err('XQST0108', ?LN(A)) || #xqOptionDecl{anno = A} <- Prolog];
pro_options(Prolog, main) ->
    Opts = [E || #xqOptionDecl{} = E <- Prolog],
    F = fun(#xqOptionDecl{anno = A, name = #xqQName{prefix = <<"output">>, local_name = Ln}}, M) ->
               case M of
                   #{Ln := _} ->
                       ?parse_err('XQST0110', ?LN(A));
                   _ ->
                       M#{Ln => A}
               end;
           (_, M) ->
               M
        end,
    _ = lists:foldl(F, #{}, Opts),
    Opts.

scan_options([], _) -> #{};
scan_options([#xqOptionDecl{anno = A}|_] = Options, BaseUri) ->
    % qname record is a tuple here for validation 
    % this could be done better by checking each option individually
    Opts = [{{qname, U, P, L}, V} || 
            #xqOptionDecl{name = #xqQName{namespace = U, 
                                          prefix = P, 
                                          local_name = L}, val = V} <- Options],
    try
        xqerl_options:static_serialization_option_map(Opts, BaseUri)
    catch
        _:E ->
            ?parse_err(E, ?LN(A))
    end.

pro_glob_variables(Prolog, ModNs) ->
    Variables = [V || #xqVar{} = V <- Prolog],
    F = fun(#xqVar{name = #xqQName{namespace = Ns,local_name = Ln}, 
                   annotations = Annos, anno = LineNum}, Map) ->
                % check reserved annotation NS http://www.w3.org/2012/xquery
                A = fun(#xqAnnotation{
                          name = #xqQName{
                                   namespace = <<"http://www.w3.org/2012/xquery">>,
                                   local_name = L}}) 
                           when L == <<"public">>;
                                L == <<"private">> ->
                           ok;
                       (#xqAnnotation{anno = Aa, name = #xqQName{namespace = N}}) ->
                           % will throw error if reserved
                           ok = reserved_namespaces(Aa, N)
                    end,
                _ = lists:foreach(A, Annos),
                % check dupe public/private 
                B = fun(#xqAnnotation{
                          name = #xqQName{
                                   namespace = <<"http://www.w3.org/2012/xquery">>,
                                   local_name = L}}, []) 
                           when L == <<"public">>;
                                L == <<"private">> ->
                           anno;
                       (#xqAnnotation{
                          anno = Aa, 
                          name = #xqQName{
                                   namespace = <<"http://www.w3.org/2012/xquery">>,
                                   local_name = L}}, anno) 
                           when L == <<"public">>;
                                L == <<"private">> ->
                           ?parse_err('XQST0116', ?LN(Aa));
                       (_,D) -> D
                    end,
                _ = lists:foldl(B, [], Annos),
                % check for bad variable namespace
                case ModNs of
                    [] -> ok;
                    {Ns1,_} ->
                        if Ns =/= Ns1 ->
                               ?parse_err('XQST0048', ?LN(LineNum));
                           true ->
                               ok
                        end
                end,
                % check for dup vars
                case maps:is_key({Ns,Ln}, Map) of
                    true ->
                        ?parse_err('XQST0049', ?LN(LineNum));
                    _ ->
                        Map#{{Ns,Ln} => LineNum}
                end
        end,
    _ = lists:foldl(F, #{}, Variables),
    Variables.

pro_glob_functions(Prolog, ModNs) ->
    Functions = [V || #xqFunctionDef{} = V <- Prolog],
    VarDupe = fun(#xqVar{anno = Va, 
                         name = #xqQName{namespace = Ns1,
                                         local_name = Ln1}}, Map1) ->
                     case maps:is_key({Ns1, Ln1}, Map1) of
                         true -> ?parse_err('XQST0039', ?LN(Va));
                         _ -> Map1#{{Ns1, Ln1} => Va}
                     end
              end,
    ResAnno = fun(#xqAnnotation{name = 
                    #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>,
                             local_name = L}}) 
                     when L == <<"updating">>;
                          L == <<"public">>;
                          L == <<"private">> ->
                     ok;
                 (#xqAnnotation{anno = Aa,
                                name = 
                    #xqQName{namespace = N}}) ->
                     ok = reserved_namespaces(Aa, N)
              end,
    AnnoDupe = fun(#xqAnnotation{name = 
                     #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>,
                              local_name = L}}, []) 
                      when L == <<"public">>;
                           L == <<"private">> ->
                      anno;
                  (#xqAnnotation{anno = Aa,
                                 name = 
                     #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>,
                              local_name = L}}, anno) 
                      when L == <<"public">>;
                           L == <<"private">> ->
                       ?parse_err('XQST0106', ?LN(Aa));
                  (_, D) -> D
               end,
    % check for dup funs, reserved namespaces, dup params
    F = fun(#xqFunctionDef{name = #xqQName{namespace = Ns,local_name = Ln}, 
                           annotations = Annos,
                           arity = A,
                           params = Params,
                           anno = LineNum}, Map) ->
               % no null namespaces for functions
               if Ns == <<>>;
                  Ns == <<>> -> ?parse_err('XQST0060', ?LN(LineNum)); 
                  true -> ok 
               end,
               % check for dupe params
                _ = lists:foldl(VarDupe, #{}, Params),
             % check reserved NS 
             ok = reserved_namespaces(LineNum, Ns),
             % check reserved annotation NS 
             _ = lists:foreach(ResAnno, Annos),
             % check dupe public/private 
             _ = lists:foldl(AnnoDupe, [], Annos),
             % check for bad function namespace, ModNs can be [] or {_,_}
             case ModNs of
                 [] -> ok;
                 {Ns1,_} ->
                     if Ns =/= Ns1 ->
                            ?parse_err('XQST0048', ?LN(LineNum));
                        true -> ok
                     end
             end,
             % check dupe fun
             case maps:is_key({{Ns,Ln},A}, Map) of
                 true ->
                     ?parse_err('XQST0034', ?LN(LineNum));
                 _ -> 
                     Map#{{{Ns,Ln},A} => LineNum}
             end
        end,
    _ = lists:foldl(F, #{}, Functions),
    Functions.

add_all_to_graph(AV, FV, DiGraph) ->
    digraph:add_vertex(DiGraph, library),
    ok = add_all_vars_to_graph(AV, DiGraph),
    ok = add_all_funs_to_graph(FV, DiGraph),
    ok.

% AV
add_all_vars_to_graph([#xqVar{id = Id, name = Nm}|T], DiGraph) ->
    xqerl_static_analysis:add_edge(DiGraph, {Id,sim_name(Nm)}, library),
    xqerl_static_analysis:add_edge(DiGraph, library, {Id,sim_name(Nm)}),
    add_all_vars_to_graph(T, DiGraph);
add_all_vars_to_graph([#xqContextItemDecl{}|T], DiGraph) ->
    add_all_vars_to_graph(T, DiGraph);
add_all_vars_to_graph([{Nm,_,_,_,_}|T], DiGraph) ->
    xqerl_static_analysis:add_edge(DiGraph, {0,sim_name(Nm)}, library),
    xqerl_static_analysis:add_edge(DiGraph, library, {0,sim_name(Nm)}),
    add_all_vars_to_graph(T, DiGraph);
add_all_vars_to_graph([], _) -> ok.

% FV
add_all_funs_to_graph([#xqFunctionDef{id = Id, name = Nm, arity = Ar}|T], DiGraph) ->
    xqerl_static_analysis:add_edge(DiGraph, {Id,sim_name(Nm), Ar}, library),
    xqerl_static_analysis:add_edge(DiGraph, library, {Id,sim_name(Nm), Ar}),
    add_all_funs_to_graph(T, DiGraph);
add_all_funs_to_graph([_|T], DiGraph) -> % skip static function sigs
    add_all_funs_to_graph(T, DiGraph);
add_all_funs_to_graph([], _) -> ok.

sim_name(#xqQName{namespace = N, local_name = L}) -> {N, L};
sim_name({qname, N, _, L}) -> {N, L}.

%% {Name, Type, Annos, function_name, Arity, [param_types] }
scan_functions(Functions) ->
    P = fun(A) ->
               [ok ||
                #xqAnnotation{name = 
                  #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>,
                           local_name = <<"private">>}} <- A] == []
        end,

    [{Name, Type, Annos, function_hash_name(Name,Arity),
      Arity, param_types(Params)}
    || #xqFunctionDef{annotations = Annos,
                      arity = Arity,
                      params = Params,
                      name = Name, 
                      type = Type} <- Functions,
       % block private functions from being visible
        P(Annos) /= []].

%% {Name, Type, Annos, function_name, External }
scan_variables(Variables) ->
    [{Name, Type, Annos, {variable_hash_name(Name),1}, External}
    || #xqVar{annotations = Annos, 
              name = Name, 
              external = External,
              type = Type} <- Variables ].

maybe_append_imports(Compiled, Imported) ->
   InComp = fun(K) ->
                  lists:any(fun(E) ->
                                  element(4,E) == K
                            end, Compiled)
            end,
   Ins = fun(Imp, Acc) ->
               case InComp(element(4,Imp)) of
                  true ->
                     Acc;
                  false ->
                     [Imp|Acc]
               end
         end,
   lists:foldl(Ins, Compiled, Imported).

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

maybe_zero_type(Type = #xqSeqType{occur = one}) ->
    Type#xqSeqType{occur = zero_or_one};
maybe_zero_type(Type = #xqSeqType{occur = one_or_many}) ->
    Type#xqSeqType{occur = zero_or_many};
maybe_zero_type(Type) -> Type.

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

maybe_unmany_type(Type = #xqSeqType{occur = zero_or_many}) ->
   Type#xqSeqType{occur = zero_or_one};
maybe_unmany_type(Type = #xqSeqType{occur = one_or_many}) ->
   Type#xqSeqType{occur = one};
maybe_unmany_type(Type) -> Type.

get_contains_updates() ->
    case erlang:get(contains_updates) of
        undefined -> false;
        O -> O
    end.

atomic_value('xs:integer', V) -> V;
atomic_value('xs:string', V) -> V;
atomic_value('xs:double', V) -> V;
atomic_value('xs:boolean', V) -> V;
atomic_value(T, V) -> 
    #xqAtomicValue{type = T, value = V}.

resolve_kind_type(State, #xqSeqType{anno = LineNum} = KType) ->
    try
        KTypeST1 = get_statement(handle_node(State, KType)),
        case catch xqerl_btypes:get_type(KTypeST1#xqSeqType.type) of
            {'EXIT',_} -> ?parse_err('XPST0008', ?LN(LineNum)); %XXX linenum
            _ ->
                _ = check_type_match(KTypeST1,
                                     ?seqtype(LineNum, 'xs:anyAtomicType', zero_or_many)),
                KTypeST1
        end
    catch
        ?ERROR_MATCH(<<"XPST0051">>) -> ?parse_err('XPST0008', ?LN(LineNum));
        ?ERROR_MATCH(<<"XQST0052">>) -> ?parse_err('XPST0008', ?LN(LineNum)); %XXX linenum
        _:#xqError{} = E -> ?parse_err(E, ?LN(LineNum)); %XXX linenum
        _:_ -> ?parse_err('XPST0008', ?LN(LineNum))
    end;
resolve_kind_type(_, Type) -> Type.

placeholders(Args) ->
   [#xqVar{anno = A,
           id = Id,
           name = #xqQName{anno = A,
                           local_name = list_to_binary("aVeryLongBogusName__" ++
                                        integer_to_list(Id))}}
   || #xqArgumentPlaceholder{anno = A, id = Id} <- Args].

placeholders_1(any, Args) ->
   [#xqVar{anno = A,
           id = Id,
           type = ?seqtype(A),
           name = #xqQName{anno = A,
                           local_name = list_to_binary("aVeryLongBogusName__" ++ 
                                        integer_to_list(Id))}}
   || #xqArgumentPlaceholder{anno = A, id = Id} <- Args];
placeholders_1(Params, Args) ->
   [#xqVar{anno = A,
           id = Id,
           type = P,
           name = #xqQName{anno = A,
                           local_name = list_to_binary("aVeryLongBogusName__" ++ 
                                        integer_to_list(Id))}}
   || {P, #xqArgumentPlaceholder{anno = A, id = Id}} <- lists:zip(Params, Args)].

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

inverse_numeric_type('xs:nonPositiveInteger') -> 'xs:positiveInteger';
inverse_numeric_type('xs:positiveInteger') -> 'xs:nonPositiveInteger';
inverse_numeric_type('xs:nonNegativeInteger') -> 'xs:negativeInteger';
inverse_numeric_type('xs:negativeInteger') -> 'xs:nonNegativeInteger';
inverse_numeric_type('xs:unsignedByte') -> 'xs:byte';
inverse_numeric_type('xs:unsignedShort') -> 'xs:short';
inverse_numeric_type('xs:unsignedInt') -> 'xs:int';
inverse_numeric_type('xs:unsignedLong') -> 'xs:long';
inverse_numeric_type(Other) -> Other.

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
   throw('FOTY0013');
static_operator_type(_,#xqSeqType{type = #xqFunTest{kind = Bad}},_) 
   when Bad == function;
        Bad == map ->
   throw('FOTY0013');
static_operator_type(Op,T1,#xqSeqType{type = #xqFunTest{type = T2}}) ->
   static_operator_type(Op, T1, T2);
static_operator_type(Op,#xqSeqType{type = #xqFunTest{type = T1}},T2) ->
   static_operator_type(Op, T1, T2);
static_operator_type(Op,#xqSeqType{type = T1},T2) ->
   static_operator_type(Op, T1, T2);
static_operator_type(Op,T1,#xqSeqType{type = T2}) ->
   static_operator_type(Op, T1, T2);
static_operator_type(Op, 'xs:numeric', T) -> 
   static_operator_type(Op, 'xs:double', T);
static_operator_type(Op, T, 'xs:numeric') -> 
   static_operator_type(Op, T, 'xs:double');

static_operator_type(Op, 'xs:untypedAtomic', T) -> 
   static_operator_type(Op, 'xs:double', T);
static_operator_type(Op, T, 'xs:untypedAtomic') -> 
   static_operator_type(Op, T, 'xs:double');

static_operator_type('+', Int1, Int2) when ?xs_integer(Int1) andalso ?xs_integer(Int2) -> 'xs:integer';
static_operator_type('+', Int1, 'xs:decimal') when ?xs_integer(Int1) -> 'xs:decimal';
static_operator_type('+', Int1, 'xs:float')   when ?xs_integer(Int1) -> 'xs:float';
static_operator_type('+', Int1, 'xs:double')  when ?xs_integer(Int1) -> 'xs:double';
static_operator_type('+', 'xs:decimal', Int2) when ?xs_integer(Int2) -> 'xs:decimal';
static_operator_type('+', 'xs:decimal', 'xs:decimal') -> 'xs:decimal';
static_operator_type('+', 'xs:decimal', 'xs:float')   -> 'xs:float';
static_operator_type('+', 'xs:decimal', 'xs:double')  -> 'xs:double';
static_operator_type('+', 'xs:float',   Int2) when ?xs_integer(Int2) -> 'xs:float';
static_operator_type('+', 'xs:float',   'xs:decimal') -> 'xs:float';
static_operator_type('+', 'xs:float',   'xs:float')   -> 'xs:float';
static_operator_type('+', 'xs:float',   'xs:double')  -> 'xs:double';
static_operator_type('+', 'xs:double',  Int2) when ?xs_integer(Int2) -> 'xs:double';
static_operator_type('+', 'xs:double',  'xs:decimal') -> 'xs:double';
static_operator_type('+', 'xs:double',  'xs:float')   -> 'xs:double';
static_operator_type('+', 'xs:double',  'xs:double')  -> 'xs:double';

static_operator_type('+', 'xs:date', D) when ?xs_duration(D) -> 'xs:date';
static_operator_type('+', 'xs:dateTime', D) when ?xs_duration(D) -> 'xs:dateTime';
static_operator_type('+', 'xs:dayTimeDuration', 'xs:date') -> 'xs:date';
static_operator_type('+', 'xs:dayTimeDuration', 'xs:dateTime') -> 'xs:dateTime';
static_operator_type('+', 'xs:dayTimeDuration', 'xs:dayTimeDuration') -> 'xs:dayTimeDuration';
static_operator_type('+', 'xs:dayTimeDuration', 'xs:duration') -> 'xs:duration';
static_operator_type('+', 'xs:dayTimeDuration', 'xs:time') -> 'xs:time';
static_operator_type('+', 'xs:duration', 'xs:date') -> 'xs:date';
static_operator_type('+', 'xs:duration', 'xs:dateTime') -> 'xs:dateTime';
static_operator_type('+', 'xs:duration', D) when ?xs_duration(D) -> 'xs:duration';
static_operator_type('+', 'xs:duration', 'xs:time') -> 'xs:time';
static_operator_type('+', 'xs:time', 'xs:dayTimeDuration') -> 'xs:time';
static_operator_type('+', 'xs:time', 'xs:duration') -> 'xs:time';
static_operator_type('+', 'xs:yearMonthDuration', 'xs:date') -> 'xs:date';
static_operator_type('+', 'xs:yearMonthDuration', 'xs:dateTime') -> 'xs:dateTime';
static_operator_type('+', 'xs:yearMonthDuration', 'xs:duration') -> 'xs:duration';
static_operator_type('+', 'xs:yearMonthDuration', 'xs:yearMonthDuration') -> 'xs:yearMonthDuration';

static_operator_type('div', Int1, Int2) when ?xs_integer(Int1) andalso ?xs_integer(Int2) -> 'xs:decimal';
static_operator_type('div', Int1, 'xs:decimal') when ?xs_integer(Int1) -> 'xs:decimal';
static_operator_type('div', Int1, 'xs:float')   when ?xs_integer(Int1) -> 'xs:float';
static_operator_type('div', Int1, 'xs:double')  when ?xs_integer(Int1) -> 'xs:double';
static_operator_type('div', 'xs:decimal', Int2) when ?xs_integer(Int2) -> 'xs:decimal';
static_operator_type('div', 'xs:decimal', 'xs:decimal') -> 'xs:decimal';
static_operator_type('div', 'xs:decimal', 'xs:float')   -> 'xs:float';
static_operator_type('div', 'xs:decimal', 'xs:double')  -> 'xs:double';
static_operator_type('div', 'xs:float',   Int2) when ?xs_integer(Int2) -> 'xs:float';
static_operator_type('div', 'xs:float',   'xs:decimal') -> 'xs:float';
static_operator_type('div', 'xs:float',   'xs:float')   -> 'xs:float';
static_operator_type('div', 'xs:float',   'xs:double')  -> 'xs:double';
static_operator_type('div', 'xs:double',  Int2) when ?xs_integer(Int2) -> 'xs:double';
static_operator_type('div', 'xs:double',  'xs:decimal') -> 'xs:double';
static_operator_type('div', 'xs:double',  'xs:float')   -> 'xs:double';
static_operator_type('div', 'xs:double',  'xs:double')  -> 'xs:double';

static_operator_type('div', D, Int2) when ?xs_integer(Int2), ?xs_duration(D) -> D;
static_operator_type('div', D, 'xs:decimal')when ?xs_duration(D) -> D;
static_operator_type('div', D, 'xs:float')  when ?xs_duration(D) -> D;
static_operator_type('div', D, 'xs:double') when ?xs_duration(D) -> D;
static_operator_type('div', D, D) when ?xs_duration(D) -> 'xs:decimal';
static_operator_type('div', 'xs:duration', D) when ?xs_duration(D) -> 'xs:decimal';
static_operator_type('div', D, 'xs:duration') when ?xs_duration(D) -> 'xs:decimal';

static_operator_type('idiv', Int1, Int2) when ?xs_integer(Int1) andalso ?xs_integer(Int2) -> 'xs:integer';
static_operator_type('idiv', Int1, 'xs:decimal') when ?xs_integer(Int1) -> 'xs:integer';
static_operator_type('idiv', Int1, 'xs:float')   when ?xs_integer(Int1) -> 'xs:integer';
static_operator_type('idiv', Int1, 'xs:double')  when ?xs_integer(Int1) -> 'xs:integer';
static_operator_type('idiv', 'xs:decimal', Int2) when ?xs_integer(Int2) -> 'xs:integer';
static_operator_type('idiv', 'xs:decimal', 'xs:decimal') -> 'xs:integer';
static_operator_type('idiv', 'xs:decimal', 'xs:float')   -> 'xs:integer';
static_operator_type('idiv', 'xs:decimal', 'xs:double')  -> 'xs:integer';
static_operator_type('idiv', 'xs:float',   Int2) when ?xs_integer(Int2) -> 'xs:integer';
static_operator_type('idiv', 'xs:float',   'xs:decimal') -> 'xs:integer';
static_operator_type('idiv', 'xs:float',   'xs:float')   -> 'xs:integer';
static_operator_type('idiv', 'xs:float',   'xs:double')  -> 'xs:integer';
static_operator_type('idiv', 'xs:double',  Int2) when ?xs_integer(Int2) -> 'xs:integer';
static_operator_type('idiv', 'xs:double',  'xs:decimal') -> 'xs:integer';
static_operator_type('idiv', 'xs:double',  'xs:float')   -> 'xs:integer';
static_operator_type('idiv', 'xs:double',  'xs:double')  -> 'xs:integer';

static_operator_type('mod', Int1, Int2) when ?xs_integer(Int1) andalso ?xs_integer(Int2) -> 'xs:integer';
static_operator_type('mod', Int1, 'xs:decimal') when ?xs_integer(Int1) -> 'xs:decimal';
static_operator_type('mod', Int1, 'xs:float')   when ?xs_integer(Int1) -> 'xs:float';
static_operator_type('mod', Int1, 'xs:double')  when ?xs_integer(Int1) -> 'xs:double';
static_operator_type('mod', 'xs:decimal', Int2) when ?xs_integer(Int2) -> 'xs:decimal';
static_operator_type('mod', 'xs:decimal', 'xs:decimal') -> 'xs:decimal';
static_operator_type('mod', 'xs:decimal', 'xs:float')   -> 'xs:float';
static_operator_type('mod', 'xs:decimal', 'xs:double')  -> 'xs:double';
static_operator_type('mod', 'xs:float',   Int2) when ?xs_integer(Int2) -> 'xs:float';
static_operator_type('mod', 'xs:float',   'xs:decimal') -> 'xs:float';
static_operator_type('mod', 'xs:float',   'xs:float')   -> 'xs:float';
static_operator_type('mod', 'xs:float',   'xs:double')  -> 'xs:double';
static_operator_type('mod', 'xs:double',  Int2) when ?xs_integer(Int2) -> 'xs:double';
static_operator_type('mod', 'xs:double',  'xs:decimal') -> 'xs:double';
static_operator_type('mod', 'xs:double',  'xs:float')   -> 'xs:double';
static_operator_type('mod', 'xs:double',  'xs:double')  -> 'xs:double';

static_operator_type('*', Int1, Int2) when ?xs_integer(Int1) andalso ?xs_integer(Int2) -> 'xs:integer';
static_operator_type('*', Int1, 'xs:decimal') when ?xs_integer(Int1) -> 'xs:decimal';
static_operator_type('*', Int1, 'xs:float')   when ?xs_integer(Int1) -> 'xs:float';
static_operator_type('*', Int1, 'xs:double')  when ?xs_integer(Int1) -> 'xs:double';
static_operator_type('*', 'xs:decimal', Int2) when ?xs_integer(Int2) -> 'xs:decimal';
static_operator_type('*', 'xs:decimal', 'xs:decimal') -> 'xs:decimal';
static_operator_type('*', 'xs:decimal', 'xs:float')   -> 'xs:float';
static_operator_type('*', 'xs:decimal', 'xs:double')  -> 'xs:double';
static_operator_type('*', 'xs:float',   Int2) when ?xs_integer(Int2) -> 'xs:float';
static_operator_type('*', 'xs:float',   'xs:decimal') -> 'xs:float';
static_operator_type('*', 'xs:float',   'xs:float')   -> 'xs:float';
static_operator_type('*', 'xs:float',   'xs:double')  -> 'xs:double';
static_operator_type('*', 'xs:double',  Int2) when ?xs_integer(Int2) -> 'xs:double';
static_operator_type('*', 'xs:double',  'xs:decimal') -> 'xs:double';
static_operator_type('*', 'xs:double',  'xs:float')   -> 'xs:double';
static_operator_type('*', 'xs:double',  'xs:double')  -> 'xs:double';

static_operator_type('*'  ,Int1, D  ) when ?xs_integer(Int1), ?xs_duration(D) -> D;
static_operator_type('*'  ,'xs:decimal', D  ) when ?xs_duration(D) -> D;
static_operator_type('*'  ,'xs:float'  , D  ) when ?xs_duration(D) -> D;
static_operator_type('*'  ,'xs:double' , D  ) when ?xs_duration(D) -> D;

static_operator_type('*', D,  Int2) when ?xs_integer(Int2), ?xs_duration(D) -> D;
static_operator_type('*', D,  'xs:decimal') when ?xs_duration(D) -> D;
static_operator_type('*', D,  'xs:float')   when ?xs_duration(D) -> D;
static_operator_type('*', D,  'xs:double')  when ?xs_duration(D) -> D;

static_operator_type('-', Int1, Int2) when ?xs_integer(Int1) andalso ?xs_integer(Int2) -> 'xs:integer';
static_operator_type('-', Int1, 'xs:decimal') when ?xs_integer(Int1) -> 'xs:decimal';
static_operator_type('-', Int1, 'xs:float')   when ?xs_integer(Int1) -> 'xs:float';
static_operator_type('-', Int1, 'xs:double')  when ?xs_integer(Int1) -> 'xs:double';
static_operator_type('-', 'xs:decimal', Int2) when ?xs_integer(Int2) -> 'xs:decimal';
static_operator_type('-', 'xs:decimal', 'xs:decimal') -> 'xs:decimal';
static_operator_type('-', 'xs:decimal', 'xs:float')   -> 'xs:float';
static_operator_type('-', 'xs:decimal', 'xs:double')  -> 'xs:double';
static_operator_type('-', 'xs:float',   Int2) when ?xs_integer(Int2) -> 'xs:float';
static_operator_type('-', 'xs:float',   'xs:decimal') -> 'xs:float';
static_operator_type('-', 'xs:float',   'xs:float')   -> 'xs:float';
static_operator_type('-', 'xs:float',   'xs:double')  -> 'xs:double';
static_operator_type('-', 'xs:double',  Int2) when ?xs_integer(Int2) -> 'xs:double';
static_operator_type('-', 'xs:double',  'xs:decimal') -> 'xs:double';
static_operator_type('-', 'xs:double',  'xs:float')   -> 'xs:double';
static_operator_type('-', 'xs:double',  'xs:double')  -> 'xs:double';

static_operator_type('-', 'xs:date', 'xs:date') -> 'xs:dayTimeDuration';
static_operator_type('-', 'xs:date', D) when ?xs_duration(D) -> 'xs:date';
static_operator_type('-', 'xs:dateTime', 'xs:dateTime') -> 'xs:dayTimeDuration';
static_operator_type('-', 'xs:dateTime', D) when ?xs_duration(D) -> 'xs:dateTime';
static_operator_type('-', 'xs:dayTimeDuration', 'xs:duration') -> 'xs:duration';
static_operator_type('-', 'xs:dayTimeDuration', 'xs:dayTimeDuration') -> 'xs:dayTimeDuration';
static_operator_type('-', 'xs:duration', D) when ?xs_duration(D) -> 'xs:duration';
static_operator_type('-', 'xs:time', 'xs:dayTimeDuration') -> 'xs:time';
static_operator_type('-', 'xs:time', 'xs:duration') -> 'xs:time';
static_operator_type('-', 'xs:time', 'xs:time') -> 'xs:dayTimeDuration';
static_operator_type('-', 'xs:yearMonthDuration', 'xs:duration') -> 'xs:duration';
static_operator_type('-', 'xs:yearMonthDuration', 'xs:yearMonthDuration') -> 'xs:yearMonthDuration';

static_operator_type(_,'empty-sequence',_) -> 'empty-sequence';
static_operator_type(_,_,'empty-sequence') -> 'empty-sequence';
static_operator_type(_,_,_) ->
   throw('XPTY0004').

l(L) when is_list(L) -> L;
l(L) -> [L].

update_function_type(#state{known_fx_sigs = Sigs} = State, #xqFunctionDef{} = F) ->
    [NewSig] = scan_functions([F]),
    NewSigs = lists:keyreplace(element(4, NewSig), 4, Sigs, NewSig),
    State#state{known_fx_sigs = NewSigs}.

% static value can be undefined | an atomic, or true for DB nodes
get_variable_static_value(#state{inscope_vars = Vars}, {variable, VarAtom}) ->
    Val = [Value || 
           {_,_,_,VarAtom1,{false,Value}} <- Vars, 
           VarAtom1 == VarAtom], 
    case Val of
        [O] -> O;
        [] -> undefined
    end.

get_variable(#state{inscope_vars = Vars}, 
             #xqQName{namespace = Ns, local_name = Ln}, LineNum) ->
    V = [Var || 
         {#xqQName{namespace = Ns1, local_name = Ln1},_,_,_,_} = Var <- Vars, 
         {Ns1,Ln1} == {Ns,Ln}],
    case V of
        [O] -> O;
        [] ->
            ?parse_dbg("XPST0008", Vars),
            ?parse_err('XPST0008', ?LN(LineNum))
    end;
get_variable(#state{inscope_vars = Vars}, {variable, VarAtom}, LineNum) ->
    V = [Var || {_,_,_,VarAtom1,_} = Var <- Vars, VarAtom1 = VarAtom],
    case V of
        [O] -> O;
        [] -> ?parse_err('XPST0008', ?LN(LineNum))
    end.

increase_occur_inscope_vars(#state{inscope_vars = Vars} = State) ->
    O = fun(one) -> one_or_many; 
           (zero_or_one) -> zero_or_many;
           (Ot) -> Ot
        end,
    % remove any static inline values that they can be grouped correctly
    % this function is only called when a group by expression is used
    NewVars = [setelement(5, setelement(2, Var, T#xqSeqType{occur = O(Occ)}), false)
              || {_,#xqSeqType{occur = Occ} = T,_,_,_} = Var <- Vars],
    NV = lists:foldl(fun(V,A) ->
                           lists:keyreplace(element(1,V), 1, A, V)
                     end, Vars, NewVars),
    State#state{inscope_vars = NV}.

% {Name,Type,Annos,ErlVarName}
add_inscope_variable(State, {A,B,C,D}) ->
   add_inscope_variable(State, {A,B,C,D,false});

% {Name,Type,Annos,ErlVarName,External}
add_inscope_variable(#state{inscope_vars = Vars} = State, 
                     {#xqQName{namespace = Ns, local_name = Ln},
                      _,_,_,_} = NewVar) ->
   NewVars = [NewVar |
                [Var || 
                 {#xqQName{namespace = Ns1, local_name = Ln1},_,_,_,_} = Var 
                 <- Vars, 
                 {Ns1,Ln1} =/= {Ns,Ln}]],
   State#state{inscope_vars = NewVars}.

%% TODO - use these functions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%% set_can_inline(#state{context = #context{} = Ctx} = State, CanInline) ->
%%    NewCtx = Ctx#context{can_inline = CanInline},
%%    State#state{context = NewCtx}.
%% 
%% get_can_inline(#state{context = #context{can_inline = CanInline}}) -> 
%%    CanInline.
%% 
%% TODO - use these functions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ====================================================================
%% GETTER/SETTERS for static context information being passed around
%% ====================================================================
set_statement(#state{context = #context{} = Ctx} = State, Statement) ->
    NewCtx = Ctx#context{statement = Statement},
    State#state{context = NewCtx}.

get_statement(#state{context = #context{statement = Statement}}) -> Statement;
get_statement(#xqError{name = #xqAtomicValue{value = {qname,_,_,Ln}}}) -> 
   {error, 0, binary_to_atom(Ln, utf8)};
get_statement({'EXIT',
               #xqError{name = #xqAtomicValue{value = {qname,_,_,Ln}}}}) -> 
   {error, 0, binary_to_atom(Ln, utf8)}.

set_statement_type(#state{context = #context{} = Ctx} = State, StatementType) ->
    NewCtx = Ctx#context{statement_type = StatementType},
    State#state{context_item_type = StatementType, context = NewCtx}.

get_statement_type(#state{context = 
                            #context{statement_type = StatementType}}) -> 
    case StatementType of
        undefined -> ?seqtype(0);
        _ -> StatementType
    end;
get_statement_type(#xqError{}) -> 
   ?seqtype(0, 'empty-sequence', zero);
get_statement_type({'EXIT',_}) -> 
   ?seqtype(0, 'empty-sequence', zero).


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
    NewCtx = 
        if 
            Occ == zero;
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
get_static_count(#xqError{}) -> 0;
get_static_count({'EXIT',_}) -> 0.

set_updating(State, Upd) ->
    Copy = is_updating(State) == copy,
    if 
        Copy -> ok;
        Upd -> erlang:put(contains_updates, true);
        true -> ok
    end,
    State#state{is_updating = Upd}.

is_updating({'EXIT', _}) -> false;
is_updating(#xqError{}) -> false;
is_updating(#state{is_updating = U}) -> U.

set_in_constructor(#state{context = #context{} = Ctx} = State, InConstructor) ->
    NewCtx = Ctx#context{in_constructor = InConstructor},
    State#state{context = NewCtx}.

set_in_predicate(#state{context = #context{} = Ctx} = State, InPred) ->
    NewCtx = Ctx#context{in_predicate = InPred},
    State#state{context = NewCtx}.

%% get_in_constructor(#state{context = 
%%                             #context{in_constructor = InConstructor}}) -> 
%%     InConstructor.

get_in_predicate(#state{context = #context{in_predicate = InPred}}) -> InPred.

set_inscope_ns(#state{context = #context{} = Ctx} = State, InscopeNs) ->
    NewCtx = Ctx#context{inscope_ns = InscopeNs},
    State#state{context = NewCtx}.

get_inscope_ns(#state{context = #context{inscope_ns = InscopeNs}}) -> InscopeNs.

set_is_db(#state{context = #context{} = Ctx} = State, IsDb) ->
    NewCtx = Ctx#context{is_db_node = IsDb},
    State#state{context = NewCtx}.

get_is_db(#state{context = #context{is_db_node = IsDb}}) -> IsDb.

check_anon_fun_annos(Annotations) ->
   _ = lists:foreach(
         fun(#xqAnnotation{anno = A,
                           name = 
                             #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>,
                                      local_name = <<"private">>}}) ->
               ?parse_err('XQST0125', ?LN(A));
            (#xqAnnotation{anno = A,
                           name = 
                             #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>,
                                      local_name = <<"public">>}}) ->
               ?parse_err('XQST0125', ?LN(A));
            (_) ->
               false
         end, Annotations),
   ok.

get_update_anno(Annos) ->
    get_update_anno(Annos, []).

get_update_anno([#xqAnnotation{
                   name =
                     #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>, 
                              local_name = <<"simple">>}}|T], []) ->
   get_update_anno(T, simple);
get_update_anno([#xqAnnotation{
                   anno = A,
                   name = 
                     #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>,
                              local_name = <<"simple">>}}|_], _) ->
   ?parse_err('XUST0033', ?LN(A));
get_update_anno([#xqAnnotation{
                   name = 
                     #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>, 
                              local_name = <<"updating">>}}|T], []) ->
   get_update_anno(T, updating);
get_update_anno([#xqAnnotation{
                   anno = A,
                   name = 
                     #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>, 
                              local_name = <<"updating">>}}|_], _) ->
   ?parse_err('XUST0033', ?LN(A));
get_update_anno([_|T], A) ->
   get_update_anno(T, A);
get_update_anno([], []) -> none;
get_update_anno([], A) -> A.

% check if the occurance marker is okay for these types in a function
check_occurance_match(#xqSeqType{} = InType, #xqVar{type = TargetType}, Cnt, Line) ->
    check_occurance_match(InType, TargetType, Cnt, Line);
check_occurance_match(#xqSeqType{occur = InType}, 
                      #xqSeqType{occur = TargetType}, undefined, Line) ->
    try
        check_occurance_match1(InType, TargetType, 1)
    catch
        _:_ ->
            ?parse_err('XPTY0004', ?LN(Line))
    end;
check_occurance_match(#xqSeqType{occur = InType}, 
                      #xqSeqType{occur = TargetType}, StatCnt, Line) ->
    try
        check_occurance_match1(InType, TargetType, StatCnt)
    catch
        _:_ ->
            ?parse_err('XPTY0004', ?LN(Line))
    end.

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
    throw('XPTY0004').

% check_type_match(AnalyzedType, RequiredType) -> 

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
check_type_match(#xqSeqType{type = node}, 
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
check_type_match(#xqSeqType{type = #xqKindTest{kind = node}}, 
                 #xqSeqType{type = #xqKindTest{kind = TargetType}}) 
   when ?node(TargetType) -> 
   true;

check_type_match(#xqSeqType{type = 'xs:anyAtomicType'}, 
                 #xqSeqType{type = 'xs:anyAtomicType'}) -> 
   true;
check_type_match(#xqSeqType{type = 'xs:anyAtomicType'}, 
                 #xqSeqType{type = TargetType}) 
   when ?xs_anyAtomicType(TargetType) -> 
   cast;
% check if the types are compatable with/out cast or atomization
check_type_match(#xqSeqType{type = #xqKindTest{kind = ParamType}}, 
                 #xqSeqType{type = TargetType}) 
   when ?node(ParamType) andalso ?xs_anyAtomicType(TargetType) -> 
   atomize;
check_type_match(#xqSeqType{type = ParamType}, 
                 #xqSeqType{type = TargetType}) 
   when ?node(ParamType) andalso ?xs_anyAtomicType(TargetType) -> 
   atomize;
check_type_match(#xqSeqType{type = 'xs:numeric'}, 
                 #xqSeqType{type = TargetType}) 
   when ?xs_numeric(TargetType) -> 
   cast;
check_type_match(#xqSeqType{anno = A,
                            type = function}, 
                 #xqSeqType{type = TargetType}) 
   when ?xs_anyAtomicType(TargetType) -> 
   ?parse_err('FOTY0013', ?LN(A)); %XXX linenum
check_type_match(#xqSeqType{type = 'xs:decimal'}, 
                 #xqSeqType{type = TargetType}) 
   when ?xs_integer(TargetType) -> 
   cast;
% untyped to number
check_type_match(#xqSeqType{type = 'xs:untypedAtomic'}, 
                 #xqSeqType{type = TargetType}) 
   when ?xs_numeric(TargetType) -> 
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
% empty map has parameter any in a list
check_type_match(#xqSeqType{type = #xqFunTest{kind = map,
                                              params = [any]}}, 
                 #xqSeqType{type = #xqFunTest{kind = map}}) ->
   true;   
check_type_match(#xqSeqType{type = #xqFunTest{kind = map}}, 
                 #xqSeqType{type = #xqFunTest{kind = map, 
                                              params = any, 
                                              type = any}}) ->
   true;   
% empty arrays are any type
check_type_match(#xqSeqType{type = #xqFunTest{kind = array,
                                              type = #xqSeqType{type = 'empty-sequence'}}}, 
                 #xqSeqType{type = #xqFunTest{kind = array}}) ->
   true;   
check_type_match(#xqSeqType{type = #xqFunTest{kind = array}}, 
                 #xqSeqType{type = #xqFunTest{kind = array, 
                                              params = any, 
                                              type = any}}) ->
   true;   
check_type_match(#xqSeqType{type = #xqFunTest{kind = array, type = Type1}}, 
                 #xqSeqType{type = #xqFunTest{kind = array, type = Type2}}) ->
   case check_type_match(Type1,Type2) of
      false ->
         % empty arrays can match
         false_not_empty;
      O ->
         O
   end;
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
   if length(Params1) =:= length(Params2);
      Params1 =:= any;
      Params2 =:= any ->
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
         case check_type_match(Type1,Type2) of
            false ->
               % empty arrays can match
               false_not_empty;
            O ->
               O
         end;
      true ->
         false_not_empty
   end;
check_type_match(#xqSeqType{type = #xqFunTest{kind = function}}, 
                 #xqSeqType{type = #xqFunTest{}}) -> % function coercion 
   true;
check_type_match(#xqSeqType{type = function}, 
                 #xqSeqType{type = #xqFunTest{}}) -> % function coercion 
   true;

% types can come in as EQNames
check_type_match(#xqSeqType{type = #xqQName{namespace = ?XS, 
                                            local_name = Ln}} = A, B) ->
   Atom = list_to_atom("xs:" ++ binary_to_list(Ln)),
   check_type_match(A#xqSeqType{type = Atom},B);
check_type_match(A, #xqSeqType{type = #xqQName{namespace = ?XS, 
                                               local_name = Ln}} = B) ->
   Atom = list_to_atom("xs:" ++ binary_to_list(Ln)),
   check_type_match(A,B#xqSeqType{type = Atom});

% named node types
check_type_match(#xqSeqType{type = ParamType}, 
                 #xqSeqType{type = #xqKindTest{kind = TargetType, 
                                               name = #xqQName{}}})
  when ParamType == TargetType ->
    cast;
check_type_match(#xqSeqType{type = #xqKindTest{kind = ParamType, 
                                               name = undefined}}, 
                 #xqSeqType{type = #xqKindTest{kind = TargetType, 
                                               name = #xqQName{}}})
  when ParamType == TargetType ->
    cast;
check_type_match(#xqSeqType{anno = A,
                            type = #xqKindTest{kind = ParamType, 
                                               name = #xqQName{namespace = PNs,
                                                               local_name = PLn}}}, 
                 #xqSeqType{type = #xqKindTest{kind = TargetType, 
                                               name = #xqQName{namespace = TNs,
                                                               local_name = TLn}}}) -> 
    if 
        TNs == PNs, TLn == PLn;
        TNs == <<"*">>, TLn == PLn;
        TNs == PNs, TLn == <<"*">>;
        TNs == <<"*">>, TLn == <<"*">> ->
            BP = xqerl_btypes:get_type(ParamType),
            BT = xqerl_btypes:get_type(TargetType),
            check_type_cast(BP, BT);
        true ->
            ?parse_err('XPTY0004', ?LN(A)) %XXX linenum
    end;

check_type_match(#xqSeqType{type = #xqKindTest{kind = ParamType}}, 
                 #xqSeqType{type = #xqKindTest{kind = TargetType}}) -> 
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
   %?parse_dbg("{BP, BT}",{BP, BT}),
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
   cast; % any to something needs to be checked in runtime
check_type_match(undefined, _TargetType) ->
   true;

check_type_match(#xqSeqType{anno = A, type = T}, TargetType) ->
   BP = xqerl_btypes:get_type(T),
   try 
      BT = xqerl_btypes:get_type(TargetType#xqSeqType.type),
      check_type_cast(BP, BT)
   catch 
      _:_ ->
         ?parse_err('XPST0051', ?LN(A))
   end.

check_type_cast(0, _) -> false;
check_type_cast(_, 0) -> false;
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

get_simple_type(#xqKindTest{kind = K}) -> K;
get_simple_type(#xqFunTest{kind = map}) -> map;
get_simple_type(#xqFunTest{kind = array} = Array) -> 
    get_array_type(Array);
get_simple_type(#xqFunTest{type = any}) -> item;
get_simple_type(#xqFunTest{type = #xqSeqType{type = K}}) -> 
    get_simple_type(K);
get_simple_type(H) -> H.

get_array_type(#xqFunTest{kind = array, type = any}) -> array;
get_array_type(#xqFunTest{kind = array, type = #xqSeqType{type = AType}}) ->
    get_array_type(AType);
get_array_type(#xqFunTest{kind = map}) -> map;
get_array_type(O) -> O.

all_atomics([]) -> false;
all_atomics(#xqAtomicValue{}) -> true;
all_atomics(V) when is_number(V);
                    is_boolean(V);
                    is_binary(V) -> true;
all_atomics(List) when is_list(List) ->
   lists:all(fun(V) ->
                   all_atomics(V)
             end, List);
all_atomics(_) ->
  false.

get_list_type([_,any]) -> any;
get_list_type([any,_]) -> any;
get_list_type([#xqSeqType{anno = LineNum,
                          type = 
                            #xqFunTest{type = TypeA,
                                       kind = KindA,
                                       params = ParamsA}},
               #xqSeqType{type = 
                            #xqFunTest{type = TypeB,
                                       kind = KindB,
                                       params = ParamsB}}]) ->
   OccFun = fun(A,A) -> A;
               (_,_) -> zero_or_many
            end,
   KindC = if KindA == function;
              KindB == function ->
                 function;
              KindA == KindB ->
                 KindA;
              true ->
                 function
           end,
   OccC = if is_record(TypeA,xqSeqType),is_record(TypeB,xqSeqType) ->
                OccFun(TypeA#xqSeqType.occur, TypeB#xqSeqType.occur);
             true ->
                zero_or_many
          end,
   TypeC = case get_list_type([TypeA,TypeB]) of
              any ->
                 any;
              #xqSeqType{} = SeqT ->
                 SeqT#xqSeqType{occur = OccC}
           end,
   ParamsC = if length(ParamsA) =/= length(ParamsB) ->
                   any;
                ParamsA == any;
                ParamsA == [any];
                ParamsB == any;
                ParamsB == [any] ->
                   any;
                true ->
                   Comb = fun(A,B) ->
                                OccI = OccFun(A#xqSeqType.occur, B#xqSeqType.occur),
                                (get_list_type([A,B]))#xqSeqType{occur = OccI}
                          end,
                   lists:zipwith(Comb, ParamsA, ParamsB)
             end,
   ?seqtype(LineNum, 
            #xqFunTest{anno = LineNum, type = TypeC, kind = KindC, params = ParamsC}, 
            zero_or_many);
get_list_type([]) -> ?seqtype(0, 'empty-sequence', zero);
get_list_type([#xqSeqType{} = S]) -> S;
get_list_type(Types) when is_list(Types) ->
   get_list_type(Types, []).

get_list_type([], []) ->
   ?seqtype(0, 'empty-sequence', zero);
get_list_type([], BType) ->
   ?seqtype(0, xqerl_btypes:get_type(BType), one_or_many);
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
         %?parse_dbg("H",H),
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

type_ensure(_,#xqSeqType{type = item, occur = zero_or_many},Statement, _) ->
    Statement;
type_ensure(#xqSeqType{type = AT, occur = Oc}, 
            #xqSeqType{type = 'xs:anyAtomicType', occur = zero_or_one},
            Statement, _) 
  when ?xs_anyAtomicType(AT) andalso (Oc == one orelse Oc == zero_or_one) ->
    Statement;
type_ensure(ActType, TargType, Statement, Line) ->
    if
        ActType#xqSeqType.occur =/= TargType#xqSeqType.occur ->
            #xqTypingExpr{anno = Line,
                          kind = ensure,
                          expr = Statement,
                          type = TargType};
        true ->
            Statement
    end.

type_promote(Statement, TargType, Line) ->
    #xqTypingExpr{anno = Line,
                  kind = promote,
                  expr = Statement,
                  type = TargType}.

type_check(Statement, TargType, Line) ->
    #xqTypingExpr{anno = Line,
                  kind = check,
                  expr = Statement,
                  type = TargType}.

type_cast(Statement, TargType, Line) ->
    #xqTypingExpr{anno = Line,
                  kind = cast,
                  expr = Statement,
                  type = TargType}.

% ensure the correct type for the function,
% the typing is no longer of interest after in the function
% so typing information doesn't need to be sent back,
% just the statement portion, and possibly count,
% the statements will tell the code builder what casts (if any)
% need to happen
% returns [{Stmnt, Cnt}|...]
check_fun_arg_types(_State, Args, [], _) -> 
   % this is when anonymous function called with anon function argument
   lists:map(fun(Arg) ->
                   {get_statement(Arg),get_static_count(Arg)}
             end, Args);
check_fun_arg_types(_State, Args, any, _) ->
   lists:map(fun(Arg) ->
                   {get_statement(Arg),get_static_count(Arg)}
             end, Args);
check_fun_arg_types(State, Args, ArgTypes, LineNum) ->
    if 
        length(Args) =:= length(ArgTypes) ->
            try
                Arg_ArgTypes = lists:zip(Args, ArgTypes),
                Fun = 
                    fun({Arg, #xqVar{type = ArgType}}) ->
                            S1 = check_fun_arg_type(State, Arg, ArgType, LineNum),
                            Cnt = get_static_count(S1),
                            Stmnt = get_statement(S1),
                            {Stmnt, Cnt};
                       ({ArgState, ArgType}) ->
                            S1 = check_fun_arg_type(State, ArgState, ArgType, LineNum),
                            Cnt = get_static_count(S1),
                            Stmnt = get_statement(S1),
                            {Stmnt, Cnt}
                    end,
                lists:map(Fun, Arg_ArgTypes)
            catch
                _:#xqError{} = Err ->
                    ?parse_err(Err, ?LN(LineNum))
            end;
        true ->
            ?parse_err('XPTY0004', ?LN(LineNum))
    end.

check_fun_arg_type(State, Arg, TargetType, Line) ->
    ParamType = get_statement_type(Arg),
    Param = get_statement(Arg),
    ParamType1 =
        case ParamType of
            #xqSeqType{type = {parameter,_}} -> % passed in as 'item'
                ParamType#xqSeqType{type = item};
            undefined ->
                ?seqtype(0);
            _ ->
                case Param of
                    {'context-item', _} ->
                        State#state.context_item_type;
                    _ ->
                        ParamType
                end
        end, 
    StatCnt = get_static_count(Arg),
    ok = check_occurance_match(ParamType1, TargetType, StatCnt, Line),
    % now check the types
    NoCast = check_type_match(ParamType1, TargetType),
    #xqSeqType{type = TT} = TargetType,
    if 
        NoCast ->
            set_statement(Arg, type_ensure(ParamType1,TargetType,Param, Line));
        NoCast == false_not_empty ->
            set_statement(Arg, {false_not_empty, Line, Param});
        NoCast == cast ->
            set_statement(Arg, type_promote(Param, TargetType, Line));
        NoCast == atomize andalso 
            (TT == 'xs:QName' orelse TT == 'xs:NOTATION') ->
            ?parse_err('XPTY0117', ?LN(Line));
        NoCast == atomize ->
            set_statement(Arg, type_promote({atomize, Param}, TargetType, Line));
        true ->
            #xqSeqType{type = PT} = ParamType1,
            if 
                PT == 'xs:untypedAtomic' andalso
                  (TT == 'xs:QName' orelse TT == 'xs:NOTATION');
                PT == 'text' andalso
                  (TT == 'xs:QName' orelse TT == 'xs:NOTATION');
                PT == 'attribute' andalso 
                  (TT == 'xs:QName' orelse TT == 'xs:NOTATION');
                PT == 'element' andalso 
                  (TT == 'xs:QName' orelse TT == 'xs:NOTATION');
                PT == 'document-node' andalso 
                  (TT == 'xs:QName' orelse TT == 'xs:NOTATION') ->
                    ?parse_err('XPTY0117', ?LN(Line));
                true ->
                    %?parse_dbg("oops", {ParamType1,TargetType}),
                    ?parse_err('XPTY0004', ?LN(Line))
         end
   end.

% the one "special" function
get_static_function(State,
                    {#xqQName{anno = A, namespace = ?FN,local_name = <<"concat">>} = Name, 
                     Arity}) when Arity =/= 1 ->
   if Arity > 1 ->
         get_static_function(State, {Name, 1});
      true ->
         ?parse_err('XPST0017', ?LN(A))
   end;
get_static_function(_State,{#xqQName{anno = A, namespace = <<>>}, _} = Q) ->
    ?parse_dbg("XPST0081",Q),
    ?parse_err('XPST0081', ?LN(A));
get_static_function(#state{known_fx_sigs = Sigs},
                    {#xqQName{anno = A, namespace = Ns, local_name = Ln}, Arity}) ->
   Lookup = [#xqFunctionDef{annotations = Annotations,
                            name = Name1,
                            arity = Arity1,
                            params = ParamTypes,
                            type = ReturnType#xqSeqType{anno = 0},
                            %body = fun M:F/A}
                            body = Location}
            || {#xqQName{namespace = Ns1, local_name = Ln1} = Name1,
                ReturnType, 
                Annotations, 
                Location,
                Arity1,
                ParamTypes}
            <- Sigs,
               Ns == Ns1,
               Ln == Ln1,
               Arity == Arity1],
   case Lookup of
      [FunSig] ->
         FunSig;
      O ->
         ?parse_dbg("Ns",Ns),
         ?parse_dbg("Ln",{Ln, A, O}),
         ?parse_dbg("Arity",Arity),
         ?parse_err('XPST0017', ?LN(A))%;
   end.

combine_literals(undefined) -> [];
combine_literals([]) -> [];
combine_literals([#xqCharRef{ref = Val1}, Val2|T]) when is_binary(Val2) ->
   combine_literals([<<Val1/binary, Val2/binary>>|T]);
combine_literals([#xqEntityRef{ref = Val1}, Val2|T]) when is_binary(Val2) ->
   combine_literals([<<Val1/binary, Val2/binary>>|T]);
combine_literals([Val1, #xqCharRef{ref = Val2}|T]) when is_binary(Val1) ->
   combine_literals([<<Val1/binary, Val2/binary>>|T]);
combine_literals([Val1, #xqEntityRef{ref = Val2}|T]) when is_binary(Val1) ->
   combine_literals([<<Val1/binary, Val2/binary>>|T]);
combine_literals([#xqCharRef{ref = Val1}, #xqCharRef{ref = Val2}|T]) ->
   combine_literals([<<Val1/binary, Val2/binary>>|T]);
combine_literals([#xqEntityRef{ref = Val1}, #xqCharRef{ref = Val2}|T]) ->
   combine_literals([<<Val1/binary, Val2/binary>>|T]);
combine_literals([#xqCharRef{ref = Val1}, #xqEntityRef{ref = Val2}|T]) ->
   combine_literals([<<Val1/binary, Val2/binary>>|T]);
combine_literals([#xqEntityRef{ref = Val1}, #xqEntityRef{ref = Val2}|T]) ->
   combine_literals([<<Val1/binary, Val2/binary>>|T]);
combine_literals([Val1, Val2|T]) when is_binary(Val1), is_binary(Val2) ->
   combine_literals([<<Val1/binary, Val2/binary>>|T]);
combine_literals([#xqCharRef{ref = Txt}|T]) ->
   [Txt|combine_literals(T)];
combine_literals([#xqEntityRef{ref = Txt}|T]) ->
   [Txt|combine_literals(T)];
combine_literals([H|T]) ->
   [H|combine_literals(T)].

combine_literals_to_text(undefined) -> [];
combine_literals_to_text([]) -> [];
combine_literals_to_text([[Val1]|T]) ->
    combine_literals_to_text([Val1|T]);
combine_literals_to_text([Val1, [Val2]|T]) ->
    combine_literals_to_text([Val1, Val2|T]);
combine_literals_to_text([#xqCharRef{ref = Val1}, #xqCharRef{ref = Val2}|T]) ->
   combine_literals_to_text([<<Val1/binary, Val2/binary>>|T]);
combine_literals_to_text([#xqEntityRef{ref = Val1}, #xqCharRef{ref = Val2}|T]) ->
   combine_literals_to_text([<<Val1/binary, Val2/binary>>|T]);
combine_literals_to_text([#xqCharRef{ref = Val1}, #xqEntityRef{ref = Val2}|T]) ->
   combine_literals_to_text([<<Val1/binary, Val2/binary>>|T]);
combine_literals_to_text([#xqEntityRef{ref = Val1}, #xqEntityRef{ref = Val2}|T]) ->
   combine_literals_to_text([<<Val1/binary, Val2/binary>>|T]);
combine_literals_to_text([Val1, Val2|T]) when is_binary(Val1), is_binary(Val2) ->
   combine_literals_to_text([<<Val1/binary, Val2/binary>>|T]);
combine_literals_to_text([#xqCharRef{ref = Val1}, Val2|T]) when is_binary(Val2) ->
   combine_literals_to_text([<<Val1/binary, Val2/binary>>|T]);
combine_literals_to_text([#xqEntityRef{ref = Val1}, Val2|T]) when is_binary(Val2) ->
   combine_literals_to_text([<<Val1/binary, Val2/binary>>|T]);
combine_literals_to_text([Val1, #xqCharRef{ref = Val2}|T]) when is_binary(Val1) ->
   combine_literals_to_text([<<Val1/binary, Val2/binary>>|T]);
combine_literals_to_text([Val1, #xqEntityRef{ref = Val2}|T]) when is_binary(Val1) ->
   combine_literals_to_text([<<Val1/binary, Val2/binary>>|T]);
combine_literals_to_text([#xqCharRef{ref = Txt}|T]) ->
   [#xqTextNode{type = direct, text = Txt}|combine_literals_to_text(T)];
combine_literals_to_text([#xqEntityRef{ref = Txt}|T]) ->
   [#xqTextNode{type = direct, text = Txt}|combine_literals_to_text(T)];
combine_literals_to_text([H|T]) when is_binary(H) ->
   [#xqTextNode{type = direct, text = H}|combine_literals_to_text(T)];
combine_literals_to_text([H|T]) ->
   [H|combine_literals_to_text(T)].

is_whitespace(Str) ->
    xqerl_lib:trim(Str) == <<>>.

-define(IS_BOUNDARY(I), is_list(I) orelse
                        (is_record(I, xqEnclosedExpr) orelse  
                         is_record(I, xqElementNode) orelse  
                         is_record(I, xqCommentNode))). % comment nodes??
-define(IS_NONBOUNDARY(I), is_record(I, xqCharRef) orelse  
                           is_record(I, xqEntityRef) orelse  
                           is_record(I, xqTextNode)).

%% Here, boundary whitespace is any whitespace that occurs between the 
%% beginning of the content and the end, or any cdata, or any character 
%% reference, or any content expression 
remove_empty_head([]) -> [];
remove_empty_head([Str1, Str2|T]) when is_binary(Str1), is_binary(Str2) ->
    Str3 = <<Str1/binary,Str2/binary>>,
    remove_empty_head([Str3|T]);
remove_empty_head([H1, Str, H3|T]) 
  when is_binary(Str) andalso (?IS_BOUNDARY(H1)) andalso (?IS_BOUNDARY(H3)) ->
    case is_whitespace(Str) of
        true ->
            [H1|remove_empty_head([H3|T])];
        _ ->
            [H1, Str|remove_empty_head([H3|T])]
    end;
remove_empty_head([Str ,H3]) 
  when is_binary(Str) andalso (?IS_BOUNDARY(H3)) ->
    case is_whitespace(Str) of
        true -> [H3];
        _ -> [Str, H3]
    end;
remove_empty_head([H1, Str]) 
  when is_binary(Str) andalso (?IS_BOUNDARY(H1)) ->
    case is_whitespace(Str) of
        true -> [H1];
        _ -> [H1, Str]
    end;
remove_empty_head([Str,H2|T]) 
  when is_binary(Str) andalso (?IS_NONBOUNDARY(H2)) ->
    [Str|remove_empty_head([H2|T])];
remove_empty_head([H1, Str, H3|T]) 
  when is_binary(Str) andalso (?IS_NONBOUNDARY(H1)) andalso (?IS_BOUNDARY(H3)) ->
    [H1, Str|remove_empty_head([H3|T])];
remove_empty_head([H1, Str, H3|T]) 
  when is_binary(Str) andalso (?IS_BOUNDARY(H1)) andalso (?IS_NONBOUNDARY(H3)) ->
    [H1, Str|remove_empty_head([H3|T])];
remove_empty_head([H1, Str, H3|T]) 
  when is_binary(Str) andalso (?IS_NONBOUNDARY(H1)) andalso (?IS_BOUNDARY(H3)) ->
    [H1, Str|remove_empty_head([H3|T])];
remove_empty_head([Str, H3|T]) 
  when is_binary(Str) andalso (?IS_BOUNDARY(H3)) ->
    case is_whitespace(Str) of
        true ->
            remove_empty_head([H3|T]);
        _ ->
            [Str|remove_empty_head([H3|T])]
    end;
remove_empty_head([H1, Str|T]) 
  when is_binary(Str) andalso (?IS_NONBOUNDARY(H1)) ->
    [H1, Str|remove_empty_head(T)];
remove_empty_head([Str, H3|T]) 
  when is_binary(Str) andalso (?IS_NONBOUNDARY(H3)) ->
    [Str|remove_empty_head([H3|T])];
remove_empty_head([Str]) when is_binary(Str) ->
    case is_whitespace(Str) of
        true -> [];
        _ -> [Str]
    end;
remove_empty_head([H|T]) -> [H|remove_empty_head(T)].

variable_hash_name(#xqQName{namespace = <<>>,local_name = L}) ->
    string_atom_1(<<"_Q{}", L/binary>>);
variable_hash_name(#xqQName{namespace = N,local_name = L}) ->
    string_atom_1(<<"_Q{", N/binary, "}", L/binary>>).

function_hash_name(undefined, Arity) ->
    {undefined, Arity + 1};
function_hash_name(#xqQName{namespace = N,local_name = L}, Arity) ->
    Bin = <<"Q{", N/binary, "}", L/binary>>,
    {string_atom_1(Bin), Arity + 1}.

string_atom_1(Bin) ->
    binary_to_atom(Bin, unicode).

string_atom(Term) ->
    Bin = binary:replace(
           unicode:characters_to_binary(Term),
           [<<"/">>,<<"\\">>,<<"?">>,<<"%">>,<<"*">>,<<":">>,<<"|">>,
            <<"\"">>,<<"<">>,<<">">>],<<"_">>,
           [global]),
    binary_to_atom(Bin, latin1).

resolve_qname(#xqQName{prefix = undefined} = Q, _) ->
    Q#xqQName{prefix = <<"*">>};
resolve_qname(#xqQName{prefix = <<"*">>} = Q, _) ->
    Q;
resolve_qname(#xqQName{prefix = default} = Q, X) ->
    resolve_qname(Q#xqQName{prefix = <<>>}, X);
resolve_qname(#xqQName{anno = A,
                       prefix = Px} = Q, #state{known_ns = Nss}) ->
    case lists:keyfind(Px, 3, Nss) of
        false ->
            ?parse_dbg("XPST0081",{Px,Nss}),
            ?parse_err('XPST0081', ?LN(A)); % unable to expand
        #xqNamespace{namespace = Ns} ->
            Q#xqQName{namespace = Ns}
    end;
resolve_qname(Name, _Ctx) ->
    Name.

resolve_pragma_qname(#xqQName{anno = A,
                              namespace = undefined, 
                              prefix = Px} = Q, #state{known_ns = Nss}) ->
    case lists:keyfind(Px, 3, Nss) of
        false ->
            ?parse_err('XPST0081', ?LN(A)); % unable to expand
        #xqNamespace{namespace = Ns} ->
            Q#xqQName{namespace = Ns}
    end;
resolve_pragma_qname(#xqQName{anno = A,
                              namespace = default} = Q, #state{known_ns = Nss}) ->
    case lists:keyfind(<<>>, 3, Nss) of
        false ->
            Q#xqQName{namespace = <<>>, prefix = <<>>};
        #xqNamespace{namespace = undefined} ->
            ?parse_err('XPST0081', ?LN(A));
        #xqNamespace{namespace = <<>>} ->
            ?parse_err('XPST0081', ?LN(A));
        #xqNamespace{namespace = Ns, prefix = Px} ->
            Q#xqQName{namespace = Ns, prefix = Px}
    end;
resolve_pragma_qname(#xqQName{anno = A,
                              namespace = <<>>,
                              prefix = Px}, _) when Px =/= <<>> ->
    ?parse_err('XPST0081', ?LN(A));
resolve_pragma_qname(Name, _) ->
    Name.

param_types(Params) ->
   [ T || #xqVar{type = T} <- Params].

both_atomics(#xqAtomicValue{}, B) 
   when is_record(B, xqAtomicValue);
        is_number(B);
        is_binary(B);
        is_boolean(B) -> 
   true;
both_atomics(A, B) 
   when is_number(A), is_record(B, xqAtomicValue);
        is_number(A), is_number(B);
        is_number(A), is_binary(B);
        is_number(A), is_boolean(B) -> 
   true;
both_atomics(A, B) 
   when is_binary(A), is_record(B, xqAtomicValue);
        is_binary(A), is_number(B);
        is_binary(A), is_binary(B);
        is_binary(A), is_boolean(B) -> 
   true;
both_atomics(A, B) 
   when is_boolean(A), is_record(B, xqAtomicValue);
        is_boolean(A), is_number(B);
        is_boolean(A), is_binary(B);
        is_boolean(A), is_boolean(B) -> 
   true;
both_atomics(_,_) ->
   false.

attribute_nodes(undefined) -> [];
attribute_nodes(AttsNs) ->
   [Att || #xqAttributeNode{} = Att <- AttsNs].

namespace_nodes(undefined) -> [];
namespace_nodes(AttsNs) ->
   [Ns || #xqNamespaceNode{} = Ns <- AttsNs].

override_namespaces(State, Namespaces) ->
    Fun = 
        fun(#xqNamespaceNode{uri = Ns, prefix = Px} = Namespace, State1) ->
               New = #xqNamespace{namespace = Ns, prefix = Px},
               Known = State1#state.known_ns,
               NewKnown = lists:keystore(Px, 3, Known, New),
               State2 = State1#state{known_ns = NewKnown},
               add_inscope_namespace(State2, Namespace)
        end,
    lists:foldl(Fun, State, Namespaces).

add_inscope_namespace(State, #xqNamespaceNode{uri = Ns, prefix = Px}) ->
    New = #xqNamespace{namespace = Ns, prefix = Px},
    Known = get_inscope_ns(State),
    NewKnown = lists:keystore(Px, 3, Known, New),
    set_inscope_ns(State, NewKnown).

resolve_element_name(_State, #xqQName{prefix = <<"*">>} = QName) ->
    QName#xqQName{namespace = <<"*">>};
resolve_element_name(_State, #xqQName{namespace = <<"*">>} = QName) ->
    QName#xqQName{prefix = <<"*">>};
%% resolve_element_name(State, #xqQName{namespace = Ns,
%%                                      prefix = <<>>} = QName) when Ns =/= <<>> ->
%%     DefaultNs = State#state.default_elem_ns,
%%     QName#xqQName{namespace = DefaultNs};
resolve_element_name(State, #xqQName{namespace = Ns,
                                     prefix = undefined} = QName) ->
    try
        StatNs = State#state.known_ns,
        Px = lists:keyfind(Ns, 2, StatNs),
        QName#xqQName{prefix = element(3,Px)}
    catch
        _:_ ->
            NPx = xqerl_lib:next_comp_prefix(State#state.known_ns),
            QName#xqQName{prefix = NPx}
    end;
resolve_element_name(State, #xqQName{anno = A, prefix = Px} = QName) ->
    try
        StatNs = State#state.known_ns,
        Ns = lists:keyfind(Px, 3, StatNs),
        QName#xqQName{namespace = element(2,Ns)}
    catch
        _:_ ->
            ?parse_err('XPST0081', ?LN(A))
    end;
resolve_element_name(_State, QName) ->
    QName.

resolve_attribute_name(State, A) when is_record(A, xqAtomicValue);
                                      is_binary(A) ->
    try
        Cast = xqerl_types:cast_as(A,'xs:QName',State#state.known_ns),
        case xqerl_types:value(Cast) of
            %% XXX runtime qname
            {qname, _, <<>>, L} ->
                #xqQName{namespace = <<>>, prefix = <<>>, local_name = L};
            {qname, N, P, L} ->
                #xqQName{namespace = N, prefix = P, local_name = L}
        end
    catch
        _:_ ->
            A
    end;
resolve_attribute_name(_State, #xqQName{prefix = <<"*">>} = QName) ->
    QName#xqQName{namespace = <<"*">>};
resolve_attribute_name(_State, #xqQName{namespace = <<"*">>} = QName) ->
    QName#xqQName{prefix = <<"*">>};
resolve_attribute_name(_State, #xqQName{prefix = <<>>} = QName) ->
    QName#xqQName{namespace = <<>>};
resolve_attribute_name(State, #xqQName{namespace = Ns, 
                                       prefix = undefined} = QName) ->
    try
        StatNs = State#state.known_ns,
        Px = lists:keyfind(Ns, 2, StatNs),
        QName#xqQName{prefix = element(3,Px)}
    catch
        _:_ ->
            NPx = xqerl_lib:next_comp_prefix(State#state.known_ns),
            QName#xqQName{prefix = NPx}
    end;
resolve_attribute_name(State, #xqQName{anno = A, prefix = Px} = QName) ->
    try
        StatNs = State#state.known_ns,
        Ns = lists:keyfind(Px, 3, StatNs),
        QName#xqQName{namespace = element(2,Ns)}
    catch
        _:_ ->
            ?parse_err('XPST0081', ?LN(A))
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

%% XXX check this, is just a flatten of sorts
resolve_pi_name(State, ['empty-sequence'|T]) ->
    resolve_pi_name(State, T);
resolve_pi_name(State, [QName|T]) ->
    [QName|resolve_pi_name(State, T)];
resolve_pi_name(_State, QName) ->
    QName.

check_unique_att_names(Attributes) ->
    M = fun(#xqAttributeNode{anno = A,
                             name = 
                               #xqQName{namespace = Ns,
                                        local_name = Ln}}, Map) ->
               Key = {Ns,Ln},
               case Map of
                   #{Key := _} ->
                       ?parse_err('XQST0040', ?LN(A));
                   _ ->
                       Map#{Key => A}
               end
        end,
    _ = lists:foldl(M, #{}, Attributes),
    ok.

check_direct_namespaces(Namespaces) ->
    C = fun(#xqNamespaceNode{prefix = P, anno = A}, M) when is_map_key(P, M) ->
               ?parse_err('XQST0071', ?LN(A));
            (#xqNamespaceNode{prefix = P, anno = A}, M) ->
                M#{P => A}
        end,
    _ = lists:foldl(C, #{}, Namespaces),
    Check = 
        fun(#xqNamespaceNode{anno = A, uri = N2, prefix = P2}) ->
                % attempt to reset xml or xsi namespace
                if
                    P2 == <<"xml">> andalso N2 =/= <<"http://www.w3.org/XML/1998/namespace">> ->
                        ?parse_err('XQST0070', ?LN(A));
                    P2 =/= <<"xml">> andalso N2 == <<"http://www.w3.org/XML/1998/namespace">> ->
                        ?parse_err('XQST0070', ?LN(A));
                    P2 == <<"xmlns">> ->
                        ?parse_err('XQST0070', ?LN(A));
                    P2 =/= <<"xmlns">> andalso N2 == <<"http://www.w3.org/2000/xmlns/">> ->
                        ?parse_err('XQST0070', ?LN(A));
                    N2 == <<>>, P2 =/= <<>> ->
                        ?parse_err('XQST0085', ?LN(A));
                    true ->
                        ok
                end
        end,
   lists:foreach(Check, Namespaces),
   ok.


%% 3.9.1 Direct Element Constructors
handle_direct_constructor(State, 
                          #xqElementNode{name = QName, 
                                         attributes = AttsNs, 
                                         content = Content} = Node) ->
   Namespaces = namespace_nodes(AttsNs),
   Attributes = attribute_nodes(AttsNs),
   State1 = override_namespaces(State, Namespaces),
   QName1 = resolve_element_name(State1, QName),
   %?parse_dbg("Namespaces", Namespaces),
   %?parse_dbg("QName ", QName ),
   %?parse_dbg("QName1", QName1),
   Attributes1 = resolve_attribute_names(State1, Attributes),
   Attributes2 = 
     lists:map(fun(Att) ->
                     %?parse_dbg("Att", Att),
                     get_statement(handle_direct_constructor(State1, Att))
               end, Attributes1), 
   %?parse_dbg(?LINE, Content),
   SContent = case get_statement(handle_element_content(State1, Content)) of
                 [#xqEnclosedExpr{expr = <<>>}] ->
                    % one that can sneak through
                    [];
                 O ->
                    O
              end,
   %?parse_dbg("SContent", SContent),
   ok = check_unique_att_names(Attributes2),
   ok = check_direct_namespaces(Namespaces),
   set_statement(State, 
                 Node#xqElementNode{name = QName1, 
                                    attributes = Namespaces ++ Attributes2, 
                                    content = SContent});
%% 3.9.1.1 Attributes
handle_direct_constructor(State, #xqAttributeNode{text = Content} = Node) ->
   S1 = handle_attribute_content(State, Content),
   St = get_statement(S1),
   set_statement(State, Node#xqAttributeNode{text = St});
%% 3.9.1.2 Namespace Declaration Attributes
%% 3.9.2 Other Direct Constructors
handle_direct_constructor(
  State, 
  #xqProcessingInstructionNode{anno = A,
                               name = #xqQName{local_name = Ln}} = Node) ->
   case string:lowercase(Ln) of
      <<"xml">> ->
         ?parse_err('XPST0003', ?LN(A));
      _ ->
         ok
   end,
   set_statement(State, Node);
handle_direct_constructor(State, #xqCommentNode{text = Content} = Node) ->
   S1 = handle_node(State, Content),
   St = get_statement(S1),
   set_statement(State, Node#xqCommentNode{text = St});
handle_direct_constructor(State, #xqTextNode{text = Content} = Node) ->
   S1 = handle_node(State, Content),
   St = get_statement(S1),
   set_statement(State, Node#xqTextNode{text = St});
% catch-all for expressions
handle_direct_constructor(State, Cons) ->
    handle_node(State, Cons).

%% 3.9.3.1 Computed Element Constructors
handle_comp_constructor(State, 
                        #xqElementNode{anno = A, name = Name, content = Expr} = Node) ->
    S1 = get_statement(handle_node(State, Expr)),
    S2 = 
        case Name of
            'empty-sequence' ->
                ?parse_err('XPTY0004', ?LN(A));
            #xqQName{namespace = undefined} ->
                ?parse_err('XPST0081', ?LN(A));
            _ ->
                get_statement(handle_node(State, Name))
            end,
    set_statement_and_type(State, 
                           Node#xqElementNode{name = 
                                                resolve_element_name(State, S2),
                                              content = S1}, 
                           ?seqtype(A, 'element', one));
%% 3.9.3.2 Computed Attribute Constructors
handle_comp_constructor(State, #xqAttributeNode{anno = A,
                                                name = Name, 
                                                text = Expr} = Node) ->
    S1 = get_statement(handle_node(State, Expr)),
    Name1 = 
        case Name of
            'empty-sequence' ->
                ?parse_err('XPTY0004', ?LN(A));
            #xqQName{namespace = undefined} ->
                ?parse_err('XPST0081', ?LN(A));
            _ ->
                get_statement(handle_node(State, Name))
        end,
    Name2 = resolve_attribute_name(State, Name1),
    set_statement_and_type(State, 
                           Node#xqAttributeNode{name = Name2, text = S1}, 
                           ?seqtype(A, 'attribute', one));
%% 3.9.3.3 Document Node Constructors
handle_comp_constructor(State, 
                        #xqDocumentNode{anno = A, content = Expr} = Node) -> 
   S1 = get_statement(handle_node(State, Expr)),
   set_statement_and_type(State, 
                          Node#xqDocumentNode{content = S1}, 
                          ?seqtype(A, 'document-node', one));
%% 3.9.3.4 Text Node Constructors
handle_comp_constructor(State, #xqTextNode{anno = A, text = Content} = Node) -> 
    S1 = handle_node(State, Content),
    St = get_statement(S1),
    case St of
        #xqEnclosedExpr{expr = ['empty-sequence']} ->
            set_statement(State, 'empty-sequence');
        #xqEnclosedExpr{expr = 'empty-sequence'} ->
            set_statement(State, 'empty-sequence');
        #xqEnclosedExpr{expr = []} ->
            set_statement(State, 'empty-sequence');
        _ ->
            Ty = ?seqtype(A, 'element', zero_or_one),
            set_statement_and_type(State, 
                                   Node#xqTextNode{text = St},
                                   Ty)
    end;
%% 3.9.3.5 Computed Processing Instruction Constructors
handle_comp_constructor(State, 
                        #xqProcessingInstructionNode{anno = A,
                                                     name = Name, 
                                                     data = Expr} = Node) -> 
    S1 = get_statement(handle_node(State, Expr)),
    NState = handle_node(State, Name),
    NSty = get_statement_type(NState),
    NStm = get_statement(NState),
    NType = ?seqtype(A, 'xs:anyAtomicType', zero_or_one),
    N1 = 
        case check_type_match(NSty, NType) of
            true ->
                NStm;
            false ->
                ?parse_err('XPTY0004', ?LN(A));
            _ ->
                %?parse_dbg("NSty, NType", {NStm, NSty, NType}),
                type_cast(NStm, NType, A)
        end,
   set_statement_and_type(State, 
                          Node#xqProcessingInstructionNode{name = N1, 
                                                           data = S1}, 
                          ?seqtype(A, 'processing-instruction', one));
%% 3.9.3.6 Computed Comment Constructors
handle_comp_constructor(State, #xqCommentNode{text = Content} = Node) -> 
   S1 = handle_node(State, Content),
   St = get_statement(S1),
   set_statement(State, Node#xqCommentNode{text = St});
%% 3.9.3.7 Computed Namespace Constructors
handle_comp_constructor(State, #xqNamespaceNode{anno = A, 
                                                uri = U, 
                                                prefix = P} = Node) ->
    U1 = case U of
             'empty-sequence' ->
                 ?parse_err('XPTY0004', ?LN(A));
             undefined ->
                 ?parse_err('XPST0081', ?LN(A));
             _ ->
                 UState = handle_node(State, U),
                 USty = get_statement_type(UState),
                 UStm = get_statement(UState),
                 Type = ?seqtype(A, 'xs:string', one),
                 case check_type_match(USty, Type) of
                     true ->
                         UStm;
                     false ->
                         ?parse_dbg("{USty, Type}", {USty, Type}),
                         ?parse_err('XPTY0004', ?LN(A));
                     _ ->
                         type_cast(UStm, Type, A)
                 end
         end,
    PState = handle_node(State, P),
    PSty = get_statement_type(PState),
    PStm = get_statement(PState),
    PType = ?seqtype(A, 'xs:anyAtomicType', zero_or_one),
    P1 = 
        case check_type_match(PSty, PType) of
            true ->
                PStm;
            false ->
                ?parse_dbg("{USty, Type}", {PSty, PType}),
                ?parse_err('XPTY0004', ?LN(A));
            _ ->
                type_cast(PStm, PType, A)
        end,
    set_statement_and_type(State,
                           Node#xqNamespaceNode{uri = U1, prefix = P1},
                           ?seqtype(A, 'namespace', one)).

%% 3.9.1.3 Content
%% 3.9.1.4 Boundary Whitespace
handle_element_content(State, Content) ->
   Content1 = maybe_strip_whitespace(State,Content),
   Content2 = combine_literals_to_text(Content1),
   CFun = fun([C]) ->
                 Expr = [get_statement(handle_direct_constructor(State, C))],
                 #xqEnclosedExpr{anno = 0, expr = Expr};
             (C) ->
                 get_statement(handle_direct_constructor(State, C))
          end,
   Content3 = lists:map(CFun, Content2), 
   %?parse_dbg("Content ",Content),
   %?parse_dbg("Content1",Content1),
   %?parse_dbg("Content2",Content2),
   %?parse_dbg("Content3",Content3),
   set_statement(State, Content3).

handle_attribute_content(State, Content) ->
   %Content1 = maybe_strip_whitespace(State,Content),
   Content2 = combine_literals(Content),
   CFun = fun(C) ->
                get_statement(handle_direct_constructor(State, C))
          end,
   Content3 = lists:map(CFun, Content2), 
   %?parse_dbg("Content",Content),
   %?parse_dbg("Content1",Content1),
   %?parse_dbg("Content2",Content2),
   %?parse_dbg("Content3",Content3),
   set_statement(State, Content3).

maybe_strip_whitespace(#state{boundary_space = preserve}, undefined) -> [];
maybe_strip_whitespace(#state{boundary_space = preserve}, []) -> [];
maybe_strip_whitespace(#state{boundary_space = preserve}, Content0) ->
    Content0;

%%    Content = lists:map(fun(#xqEnclosedExpr{expr = Expr}) ->
%%                              Expr;
%%                           (Expr) ->
%%                              Expr
%%                        end, Content0),
%%    Content;
maybe_strip_whitespace(#state{boundary_space = strip}, undefined) -> [];
maybe_strip_whitespace(#state{boundary_space = strip}, []) -> [];
maybe_strip_whitespace(#state{boundary_space = strip}, 
                       #xqEnclosedExpr{expr = Expr}) -> 
   Expr;
maybe_strip_whitespace(#state{boundary_space = strip}, Content0) ->
%%    Content = lists:map(fun(#xqEnclosedExpr{expr = Expr}) ->
%%                              Expr;
%%                           (Expr) ->
%%                              Expr
%%                        end, Content0),
   Content1 = remove_empty_head(Content0),
   Content2 = remove_empty_head(lists:reverse(Content1)),
   %?parse_dbg("Content ",Content),
   %?parse_dbg("Content1",Content1),
   %?parse_dbg("Content2",Content2),
   lists:reverse(Content2).

get_clause_anno(#xqFor{var = #xqVar{anno = A}}) -> A;
get_clause_anno(#xqLet{var = #xqVar{anno = A}}) -> A;
get_clause_anno(#xqGroupBy{grp_variable = #xqVarRef{anno = A}}) -> A;
get_clause_anno(#xqWindow{win_variable = #xqVar{anno = A}}) -> A;
get_clause_anno(_) -> undefined.


  
    