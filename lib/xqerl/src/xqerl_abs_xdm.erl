
-module(xqerl_abs_xdm).

-include("xqerl.hrl").
-include("xqerl_parser.hrl").

-include_lib("syntax_tools/include/merl.hrl").

% revert everything from merl
-define(P(Text), revert(?Q(Text))).


%% ====================================================================
%% API functions
%% ====================================================================
-export([compile_path_statement/3]).

compile_path_statement(Ctx,Last,Steps) ->
   %?dbg("Steps",Steps),
   case compile_path_statement(Ctx,Last,Steps,0,[]) of
      {0,_,_} ->
         {[],Steps};
      {Cnt,Gens} ->
         VarName = var_name(Cnt),
         Body = {lc,?LINE,{var,?LINE,VarName},Gens},
         {Body,[]};
      {Cnt,Gens,Rest} ->
        %?dbg("Steps",Steps),
        %?dbg("Rest",Rest),
         VarName = var_name(Cnt),
         LVarName = {var,?LINE,var_name(Cnt - 1)},
         Body = {lc,?LINE,{var,?LINE,VarName},Gens++[generate(VarName, p2(nodify,LVarName))]},
         {Body,Rest}
   end.


%% ====================================================================
%% Internal functions
%% ====================================================================

revert(L) when is_list(L) ->
   [erl_syntax:revert(I) || I <- L];
revert(I) ->
   erl_syntax:revert(I).

-define(FN,<<"http://www.w3.org/2005/xpath-functions">>).
-define(XS,<<"http://www.w3.org/2001/XMLSchema">>).

-define(FN_MATCH(Name),{'function-call',
                         #xqFunction{params = __Params,
                                     name =
                                       #qname{namespace = ?FN,
                                              local_name = Name}}}).
-define(FN_UPDATE(Name,Params),{'function-call',
                         #xqFunction{params = Params,
                                     name =
                                       #qname{namespace = ?FN,
                                              local_name = Name}}}).
-define(FX_MATCH(Name),{'function-call',
                         #xqFunction{body = Body,
                                     name =
                                       #qname{}}}).

-dialyzer({nowarn_function, [revert/1,
                             generate/2,
                             compile_path_statement/5,
                             do_gen/4]}).

compile_path_statement(_Ctx,Source,[],Level,Acc) -> %flatten the results to proper list
   VarName = var_name(Level),
   Rev = [generate(VarName, p2(nodify,Source))|Acc],
   {Level,lists:reverse(Rev)};
compile_path_statement(_Ctx,Source,[atomize],Level,Acc) ->
   VarName = var_name(Level),
   Rev = [generate(VarName, p2(atomize,Source))|Acc],
   {Level,lists:reverse(Rev)};

compile_path_statement(Ctx,Last,[{path_expr,E}|Rest],Level,Acc) ->
   compile_path_statement(Ctx,Last,E ++ Rest,Level,Acc);

compile_path_statement(_Ctx,Source,[?FN_MATCH(<<"string">>)],Level,Acc) 
   when __Params == [];
        __Params == [{ensure,'context-item',{xqSeqType,item,zero_or_one}}]->
   VarName = var_name(Level),
   VarName1 = var_name(Level + 1),
   VVarName = merl:var(VarName),
   Gen1 = generate_l(VarName1, ?P("xqerl_types:cast_as(_@VVarName,'xs:string')")),
   Rev = [Gen1,generate(VarName, p2(atomize,Source))|Acc],
   {Level + 1,lists:reverse(Rev)};
compile_path_statement(_Ctx,Source,[?FN_MATCH(<<"string">>) = S],Level,Acc) ->
   VarName = var_name(Level),
   Rev = [generate(VarName, p2(nodify,Source))|Acc],
   {Level,lists:reverse(Rev),S};
compile_path_statement(_Ctx,Source,[?FN_MATCH(<<"name">>) = S],Level,Acc) ->
   VarName = var_name(Level),
   Rev = [generate(VarName, p2(nodify,Source))|Acc],
   {Level,lists:reverse(Rev),S};
compile_path_statement(_Ctx,Source,[?FN_MATCH(<<"local-name">>) = S],Level,Acc) ->
   VarName = var_name(Level),
   Rev = [generate(VarName, p2(nodify,Source))|Acc],
   {Level,lists:reverse(Rev),S};
compile_path_statement(_Ctx,Source,[?FN_MATCH(<<"node-name">>) = S],Level,Acc) ->
   VarName = var_name(Level),
   Rev = [generate(VarName, p2(nodify,Source))|Acc],
   {Level,lists:reverse(Rev),S};
compile_path_statement(_Ctx,Source,[?FN_MATCH(<<"data">>)],Level,Acc) 
   when __Params == [];
        __Params == [{ensure,'context-item',{xqSeqType,item,zero_or_one}}]->
   VarName = var_name(Level),
   Rev = [generate(VarName, p2(atomize,Source))|Acc],
   {Level,lists:reverse(Rev)};

compile_path_statement(_,Source,[?FN_MATCH(_) = S|Rest],Level,Acc) ->
   VarName = var_name(Level),
   Rev = [generate(VarName, p2(nodify,Source))|Acc],
   {Level,lists:reverse(Rev),[S|Rest]};


%% % variable, could be join, or local BLOCK THIS NOT SAFE
compile_path_statement(_Ctx,_,[{variable,_Var} = S|Rest],Level,Acc) ->
   {Level,lists:reverse(Acc),[S|Rest]};
%%    ExtVar = {var,?LINE,Var},
%%    {Cnt,Path1} = compile_path_statement(Ctx,{var,?LINE,'Node2'},Rest,Level + 1,[]),
%%    VarNameB = var_name(Cnt),
%%    BodyB = {lc,?LINE,{var,?LINE,VarNameB},Path1},
%%    R =  ?P(["lists:flatmap(",
%%             "fun(#xqNode{doc = Doc2, node = Node2}) when Doc2 == erlang:self() ->", %% TODO : not self ...
%%             " _@BodyB",
%%             "end",
%%             ",xqerl_seq3:sequence(_@ExtVar))"]),
%%    VarName = var_name(Level),
%%    Rev = [generate(VarName,  R)|Acc],
%%    {Level,lists:reverse(Rev)};


% non-final steps
compile_path_statement(Ctx,Last,[#xqAxisStep{} = Step|Rest],Level,Acc) ->
   case do_gen(Ctx,Last, Step, Level) of
      nope ->
        %?dbg("{Level,Acc}",{Level,Acc}),
         {Level,lists:reverse(Acc),[Step|Rest]};
      {VarName,Level1,Gen} ->
         %?dbg("{VarName,Level1,Gen}",{VarName,Level1,Gen}),
         if Level1 =/= Level -> % predicates, so wrap varname in list
               VarName1 = var_name(Level1 + 1),
               Gen2 = generate_l(VarName1, {cons,?LINE,{var,?LINE,VarName},{nil,?LINE}}),
               compile_path_statement(Ctx,VarName1,Rest, Level1 + 2,[Gen2|Gen] ++ Acc);
            true ->
               compile_path_statement(Ctx,VarName,Rest, Level1 + 1,Gen ++ Acc)
         end
   end;
compile_path_statement(Ctx,Last,[Root|Rest],Level,Acc) when Root == {'any-root'};
                                                            Root == {'root'} ->
   case do_gen(Ctx,Last, root, Level) of
      nope ->
        %?dbg("{Level,Acc}",{Level,Acc}),
         {Level,lists:reverse(Acc),[Root|Rest]};
      {VarName,Level1,Gen} ->
         %?dbg("{Level1,Level}",{Level1,Level}),
         if Level1 =/= Level -> % predicates, so wrap varname in list
               VarName1 = var_name(Level1 + 1),
               Gen2 = generate_l(VarName1, {cons,?LINE,{var,?LINE,VarName},{nil,?LINE}}),
               compile_path_statement(Ctx,VarName1,Rest, Level1 + 2,[Gen2|Gen] ++ Acc);
            true ->
               compile_path_statement(Ctx,VarName,Rest, Level1 + 1,Gen ++ Acc)
         end
   end;

compile_path_statement(Ctx,Last,[{sequence,[{union,A,'empty-sequence'}]}|Rest],Level,Acc) ->
   compile_path_statement(Ctx,Last,[A|Rest],Level,Acc);
compile_path_statement(_,Source,[{sequence,[{union,_,{Cons,_}}]} = S|Rest],Level,Acc) 
   when Cons =:= comp_cons;
        Cons =:= direct_cons ->
   VarName = var_name(Level),
   Rev = [generate(VarName, p2(nodify,Source))|Acc],
   {Level,lists:reverse(Rev),[S|Rest]};

compile_path_statement(Ctx,Last,[{sequence,[{union,A,B}]} = C|Rest],Level,Acc) ->
  %?dbg("{union,A,B}",{union,A,B}),
   try
      VarName = var_name(Level),
      {CntA,NonGenA} = compile_path_statement(Ctx,Last, [A],Level+1,[]),
      {CntB,NonGenB} = compile_path_statement(Ctx,Last, [B],Level+1,[]),
      VarNameA = var_name(CntA),
      VarNameB = var_name(CntB),
      BodyA = {lc,?LINE,{var,?LINE,VarNameA},NonGenA},
      BodyB = {lc,?LINE,{var,?LINE,VarNameB},NonGenB},
      Gen = generate(VarName, ?P("xqldb_xdm:union(_@BodyA,_@BodyB)")),
      compile_path_statement(Ctx,VarName,Rest, Level + 1,[Gen|Acc])
   catch 
      _:{badmatch,_} ->
         {Level,lists:reverse(Acc),[C|Rest]}
   end;



compile_path_statement(Ctx,Last,[{sequence,[{except,A,'empty-sequence'}]}|Rest],Level,Acc) ->
   compile_path_statement(Ctx,Last,[A|Rest],Level,Acc);
compile_path_statement(Ctx,Last,[{sequence,[{except,A,{Cons,_}}]}|Rest],Level,Acc) when Cons =:= comp_cons;
                                                                                        Cons =:= direct_cons ->
   compile_path_statement(Ctx,Last,[A|Rest],Level,Acc);
   
compile_path_statement(Ctx,Last,[{sequence,[{except,A,B}]} = C|Rest],Level,Acc) ->
  %?dbg("{except,A,B}",{except,A,B}),
   try
      VarName = var_name(Level),
      {CntA,NonGenA} = compile_path_statement(Ctx,Last, [A],Level+1,[]),
      {CntB,NonGenB} = compile_path_statement(Ctx,Last, [B],Level+1,[]),
      VarNameA = var_name(CntA),
      VarNameB = var_name(CntB),
      BodyA = {lc,?LINE,{var,?LINE,VarNameA},NonGenA},
      BodyB = {lc,?LINE,{var,?LINE,VarNameB},NonGenB},
      Gen = generate(VarName, ?P("xqldb_xdm:except(_@BodyA,_@BodyB)")),
      compile_path_statement(Ctx,VarName,Rest, Level + 1,[Gen|Acc])
   catch 
      _:{badmatch,_} ->
         {Level,lists:reverse(Acc),[C|Rest]}
   end;



% intersect
compile_path_statement(Ctx,_Last,[{sequence,[{intersect,_,'empty-sequence'}]}|Rest],Level,Acc) ->
   VarName = var_name(Level),
   Gen = generate(VarName, ?P("[[]]")),
   compile_path_statement(Ctx,VarName,Rest, Level + 1,[Gen|Acc]);
compile_path_statement(Ctx,_Last,[{sequence,[{intersect,_,{Cons,_}}]}|Rest],Level,Acc) 
   when Cons =:= comp_cons;
        Cons =:= direct_cons ->
   VarName = var_name(Level),
   Gen = generate(VarName, ?P("[[]]")),
   compile_path_statement(Ctx,VarName,Rest, Level + 1,[Gen|Acc]);
   
compile_path_statement(Ctx,Last,[{sequence,[{intersect,A,B}]} = C|Rest],Level,Acc) ->
  %?dbg("{intersect,A,B}",{intersect,A,B}),
   try
      VarName = var_name(Level),
      {CntA,NonGenA} = compile_path_statement(Ctx,Last, [A],Level+1,[]),
      {CntB,NonGenB} = compile_path_statement(Ctx,Last, [B],Level+1,[]),
      VarNameA = var_name(CntA),
      VarNameB = var_name(CntB),
      BodyA = {lc,?LINE,{var,?LINE,VarNameA},NonGenA},
      BodyB = {lc,?LINE,{var,?LINE,VarNameB},NonGenB},
      Gen = generate(VarName, ?P("xqldb_xdm:intersect(_@BodyA,_@BodyB)")),
      compile_path_statement(Ctx,VarName,Rest, Level + 1,[Gen|Acc])
   catch 
      _:{badmatch,_} ->
         {Level,lists:reverse(Acc),[C|Rest]}
   end;


compile_path_statement(_Ctx,Source,[{sequence,_} = S|Rest],Level,Acc) ->
   VarName = var_name(Level),
   Rev = [generate(VarName, p2(nodify,Source))|Acc],
   {Level,lists:reverse(Rev),[S|Rest]};


compile_path_statement(_Ctx,Last,['context-item'|Rest],Level,Acc) ->
   compile_path_statement(_Ctx,Last,Rest,Level,Acc);

compile_path_statement(_Ctx,Last,[#xqAtomicValue{} = S],Level,Acc) ->
   VarName = var_name(Level),
   VarName1 = var_name(Level + 1),
   Gen2 = generate(VarName, Last),
   Rev = [generate(VarName1, ?P("[_@S@]")),Gen2|Acc],
   {Level + 1,lists:reverse(Rev)};


compile_path_statement(_Ctx,_Last,Rest,Level,Acc) ->
%  %?dbg("Last,[Unknown |Rest],Level,Acc",{Last,Rest,Level,Acc}),
   {Level,lists:reverse(Acc),Rest}.



do_gen(_Ctx,_Source,root,Level) ->
   VarName = var_name(Level),
   VVarName = merl:var(VarName),
   Check = ?P("true == (xqldb_xdm:node_kind(Doc,_@VVarName) == [document] orelse xqerl_error:error('XPDY0050'))"),
   {VarName,Level,[Check,generate(VarName, p1(roots,{var,?LINE,'Doc'}))]};
do_gen(Ctx,Last,#xqAxisStep{direction = Direction,
                            axis = Axis,
                            predicates = Preds,
                            node_test = NodeTest} = _S, Level) ->
   VarName = var_name(Level),
   case Preds of
      [] ->
         {VarName,Level,[generate(VarName, do_path(Direction,Last,Axis,NodeTest))]};
      _ ->
         Src = generate(VarName, do_path(Direction,Last,Axis,NodeTest)),
         % generate new var from pred filters -> cons of result
         %  original source is the last generated VarName
         Level1 = Level + 1,
         VarName1 = var_name(Level1),
         case generate_preds(Ctx,{var,?LINE,VarName},Preds) of
            nope ->
              %?dbg("nope",S),
               nope;
            P ->
               {VarName1,Level1,[generate(VarName1, P),Src]}
         end
   end.

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
   p3(named_pi_children,Source,?P("_@Ln@"));
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
   p3(named_pi_selfs,Source,?P("_@Ln@"));
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
   p3(named_pi_descendants,Source,?P("_@Ln@"));
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
   p3(named_pi_descendant_or_selfs,Source,?P("_@Ln@"));
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
   p3(named_pi_following_siblings,Source,?P("_@Ln@"));
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
   p3(named_pi_followings,Source,?P("_@Ln@"));
forward_path(Source, following, #xqKindTest{kind = 'processing-instruction'}) ->  
   p2(pi_followings,Source);
%% ----------------------------------------------------------------------------
% garbage stuff
forward_path(_, _, #xqKindTest{kind = 'document-node'}) -> {nil,?LINE};
forward_path(_, _, #xqKindTest{kind = attribute}) -> {nil,?LINE};

forward_path(_, _Axis, NodeTest) ->
  %?dbg("Unknown axis",{Axis, NodeTest}),
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
   p3(named_pi_preceding_siblings,Source,?P("_@Ln@"));
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
   p3(named_pi_precedings,Source,?P("_@Ln@"));
reverse_path(Source, preceding, #xqKindTest{kind = 'processing-instruction'}) ->  
   p2(pi_precedings,Source);
%% ----------------------------------------------------------------------------
reverse_path(_, _Axis, NodeTest) ->
  %?dbg("Unknown axis",{Axis, NodeTest}),
   {error,NodeTest}.


generate(TargetVar,Source) when is_atom(TargetVar),is_atom(Source) ->
   {generate,?LINE,{var,?LINE,TargetVar},{var,?LINE,Source}};
generate(TargetVar,Source) when is_atom(TargetVar) ->
   {generate,?LINE,{var,?LINE,TargetVar}, ?P("_@Source")}.

generate_l(TargetVar,Source) ->
   {generate,?LINE,{var,?LINE,TargetVar}, {cons,?LINE,Source,{nil,?LINE}}}.

qname_tuple(#qname{namespace = 'no-namespace', local_name = Ln}) ->
   ?P("{<<>>,_@Ln@}");
qname_tuple(#qname{namespace = Ns, local_name = Ln}) ->
   ?P("{_@Ns@,_@Ln@}").

var_name(Level) ->
   list_to_atom("A"++integer_to_list(Level)).


% Ctx for any context-aware functions used (fn:*)
% Preds Lists of predicates
% VarName source list name
% Level current depth in statement 
generate_preds(_,Source,[]) -> Source;
generate_preds(Ctx,Source,[{positional_predicate,?FN_MATCH(<<"last">>)}|Preds]) ->
  %?dbg("Preds left",Preds),
   Filt = pos_pred(Source, {atom,?LINE,last}),
   generate_preds(Ctx,Filt,Preds);
generate_preds(Ctx,Source,[{positional_predicate,{variable,VarAtom}}|Preds]) ->
  %?dbg("Preds left",Preds),
   V = merl:var(VarAtom),
   Filt = pos_pred(Source, ?P("{eq,xqerl_types:value(_@V)}")),
   generate_preds(Ctx,Filt,Preds);
generate_preds(Ctx,Source,[{positional_predicate,#xqAtomicValue{value = Val}}|Preds]) when is_integer(Val) ->
  %?dbg("Preds left",Preds),
   Filt = pos_pred(Source, ?P("{eq,_@Val@}")),
   generate_preds(Ctx,Filt,Preds);

generate_preds(Ctx,Source,[{predicate,?FN_MATCH(<<"position">>)}]) -> 
   PathVar = {var,?LINE,next_var_name()},
   BoolFun = ?P("fun(_@PathVar) -> {true,_@PathVar} end"),
   Filt = pred(Source, BoolFun),
   generate_preds(Ctx,Filt,[]);
generate_preds(Ctx,Source,[{predicate,#xqAtomicValue{value = true}}]) -> 
   PathVar = {var,?LINE,next_var_name()},
   BoolFun = ?P("fun(_@PathVar) -> {true,_@PathVar} end"),
   Filt = pred(Source, BoolFun),
   generate_preds(Ctx,Filt,[]);
generate_preds(Ctx,Source,[{predicate,#xqAtomicValue{value = false}}]) -> 
   BoolFun = ?P("fun(_) -> false end"),
   Filt = pred(Source, BoolFun),
   generate_preds(Ctx,Filt,[]);

% path value = < > something?
generate_preds(Ctx,Source,[{predicate,{Op,#xqAxisStep{} = A, {path_expr,Path}}}|Preds] = P) ->
   try
     %?dbg("Preds left",Preds),
      PathVar = {var,?LINE,next_var_name()},
      {Cnt,Gens} = compile_path_statement(Ctx, {cons,?LINE,PathVar,{nil,?LINE}} ,[A,atomize],100,[]),
      {Cnt1,Gens1} = compile_path_statement(Ctx, {cons,?LINE,PathVar,{nil,?LINE}} ,Path++[atomize],100,[]),
      NewVarName = var_name(Cnt),
      Body = {lc,?LINE,{var,?LINE,NewVarName},Gens},
      NewVarName1 = var_name(Cnt1),
      Body1 = {lc,?LINE,{var,?LINE,NewVarName1},Gens1},
      Same = case Op of
                'eq' -> ?P("xqerl_operators:equal(_@Body,_@Body1)");
                'lt' -> ?P("xqerl_operators:less_than(_@Body,_@Body1)");
                'le' -> ?P("xqerl_operators:less_than_eq(_@Body,_@Body1)");
                'gt' -> ?P("xqerl_operators:greater_than(_@Body,_@Body1)");
                'ge' -> ?P("xqerl_operators:greater_than_eq(_@Body,_@Body1)");
                'ne' -> ?P("xqerl_operators:not_equal(_@Body,_@Body1)");
                _ ->
                   ?P("xqerl_operators:general_compare('@Op@',_@Body,_@Body1)")
             end,
      BoolFun = ?P("fun(_@PathVar) -> xqerl_operators:eff_bool_val(_@Same) end"),
      Filt = pred(Source, BoolFun),
      generate_preds(Ctx,Filt,Preds)
   catch
      _:_ ->
         ?dbg("Unknown predicate",P),
         nope
   end;
generate_preds(Ctx,Source,[{predicate,{Op,A,{sequence,[Sing]}}}|Preds]) ->
   generate_preds(Ctx,Source,[{predicate,{Op,A,Sing}}|Preds]);

generate_preds(Ctx,Source,[{predicate,{Op,#xqAxisStep{} = A, #xqAtomicValue{} = AVal}}|Preds] = P) ->
   try
     %?dbg("Preds left",Preds),
      PathVar = {var,?LINE,next_var_name()},
      {Cnt,Gens} = compile_path_statement(Ctx, {cons,?LINE,PathVar,{nil,?LINE}} ,[A,atomize],100,[]),
      %{Cnt1,Gens1} = compile_path_statement(Ctx, {cons,?LINE,PathVar,{nil,?LINE}} ,Path++[atomize],100,[]),
      NewVarName = var_name(Cnt),
      Body = {lc,?LINE,{var,?LINE,NewVarName},Gens},
      %NewVarName1 = var_name(Cnt1),
      %Body1 = {lc,?LINE,{var,?LINE,NewVarName1},Gens1},
      Same = case Op of
                'eq' -> ?P("xqerl_operators:equal(_@Body,_@AVal@)");
                'lt' -> ?P("xqerl_operators:less_than(_@Body,_@AVal@)");
                'le' -> ?P("xqerl_operators:less_than_eq(_@Body,_@AVal@)");
                'gt' -> ?P("xqerl_operators:greater_than(_@Body,_@AVal@)");
                'ge' -> ?P("xqerl_operators:greater_than_eq(_@Body,_@AVal@)");
                'ne' -> ?P("xqerl_operators:not_equal(_@Body,_@AVal@)");
                _ ->
                   ?P("xqerl_operators:general_compare('@Op@',_@Body,_@AVal@)")
             end,
      BoolFun = ?P("fun(_@PathVar) -> xqerl_operators:eff_bool_val(_@Same) end"),
      Filt = pred(Source, BoolFun),
      generate_preds(Ctx,Filt,Preds)
   catch
      _:_ ->
         ?dbg("Unknown predicate",P),
         nope
   end;

generate_preds(Ctx,Source,[{predicate,?FN_UPDATE(<<"empty">>,[#xqAxisStep{} = A])}|Preds] = P) ->
   try
     %?dbg("Preds left",Preds),
      PathVar = {var,?LINE,next_var_name()},
      {Cnt,Gens} = compile_path_statement(Ctx, {cons,?LINE,PathVar,{nil,?LINE}} ,[A],100,[]),
      NewVarName = var_name(Cnt),
      Body = {lc,?LINE,{var,?LINE,NewVarName},Gens},
      BoolFun = ?P("fun(_@PathVar) -> _@Body == [] end"),
      Filt = pred(Source, BoolFun),
      generate_preds(Ctx,Filt,Preds)
   catch
      _:_ ->
         ?dbg("Unknown predicate",P),
         nope
   end;

generate_preds(_Ctx,_Source,[{predicate,{_Op,#xqAxisStep{} = _A, {variable,_V}}}|_Preds] = P) ->
   ?dbg("Unknown predicate",P),
   nope;
%%    B = {var,?LINE,V},
%%    try
%%       ?dbg("Preds left",Preds),
%%       PathVar = {var,?LINE,next_var_name()},
%%       {Cnt,Gens} = compile_path_statement(Ctx, {cons,?LINE,PathVar,{nil,?LINE}} ,[A,atomize],100,[]),
%%       NewVarName = var_name(Cnt),
%%       Body = {lc,?LINE,{var,?LINE,NewVarName},Gens},
%%       Same = case Op of
%%                 'eq' -> ?P("xqerl_operators:equal(_@Body,_@B)");
%%                 'lt' -> ?P("xqerl_operators:less_than(_@Body,_@B)");
%%                 'le' -> ?P("xqerl_operators:less_than_eq(_@Body,_@B)");
%%                 'gt' -> ?P("xqerl_operators:greater_than(_@Body,_@B)");
%%                 'ge' -> ?P("xqerl_operators:greater_than_eq(_@Body,_@B)");
%%                 'ne' -> ?P("xqerl_operators:not_equal(_@Body,_@B)");
%%                 _ ->
%%                    ?P("xqerl_operators:general_compare('@Op@',_@Body,_@B)")
%%              end,
%%       BoolFun = ?P("fun(_@PathVar) -> xqerl_operators:eff_bool_val(_@Same) end"),
%%       Filt = pred(Source, BoolFun),
%%       generate_preds(Ctx,Filt,Preds)
%%    catch
%%       _:_ ->
%%          nope
%%    end;

% does the path predicate exist?
generate_preds(Ctx,Source,[{predicate,{path_expr,Path}}|Preds] = P) ->
   try
     %?dbg("Preds left",Preds),
      PathVar = {var,?LINE,next_var_name()},
      {Cnt,Gens} = compile_path_statement(Ctx, {cons,?LINE,PathVar,{nil,?LINE}} ,Path,100,[]),
      NewVarName = var_name(Cnt),
      Body = {lc,?LINE,{var,?LINE,NewVarName},Gens},
      BoolFun = ?P("fun(_@PathVar) -> xqerl_operators:eff_bool_val(_@Body) end"),
      Filt = pred(Source, BoolFun),
      generate_preds(Ctx,Filt,Preds)
   catch
      _:_ ->
         ?dbg("Unknown predicate",P),
         nope
   end;

generate_preds(Ctx,Source,[{predicate,#xqAxisStep{} = Path}|Preds] = P) ->
   try
     %?dbg("Preds left",Preds),
      PathVar = {var,?LINE,next_var_name()},
      {Cnt,Gens} = compile_path_statement(Ctx, {cons,?LINE,PathVar,{nil,?LINE}} ,Path,100,[]),
      NewVarName = var_name(Cnt),
      Body = {lc,?LINE,{var,?LINE,NewVarName},Gens},
      BoolFun = ?P("fun(_@PathVar) -> xqerl_operators:eff_bool_val(_@Body) end"),
      Filt = pred(Source, BoolFun),
      generate_preds(Ctx,Filt,Preds)
   catch
      _:_ ->
         ?dbg("Unknown predicate",P),
         nope
   end;

generate_preds(Ctx,Source,[{predicate,?FN_MATCH(<<"lang">>)}|Preds]) ->
  %?dbg("Preds left",Preds),
   PathVar = {var,?LINE,next_var_name()},
   [Arg] = __Params,
   Body = has_lang(Arg,PathVar),
   BoolFun = ?P("fun(_@PathVar) -> xqerl_operators:eff_bool_val(_@Body) end"),
   Filt = pred(Source, BoolFun),
   generate_preds(Ctx,Filt,Preds);

generate_preds(Ctx,Source,[{predicate,{Op,?FN_MATCH(<<"position">>), 
                                       #xqAtomicValue{value = #xsDecimal{int = Val, scf = 0}}}}|Preds]) 
   when Op =/= 'and',
        Op =/= 'or',
        is_integer(Val) ->
   Filt = pos_pred(Source, ?P("{'@Op@',_@Val@}")),
   generate_preds(Ctx,Filt,Preds);
generate_preds(Ctx,Source,[{predicate,{Op,?FN_MATCH(<<"position">>), 
                                       #xqAtomicValue{value = Val}}}|Preds]) 
   when Op =/= 'and',
        Op =/= 'or',
        is_integer(Val) ->
   Filt = pos_pred(Source, ?P("{'@Op@',_@Val@}")),
   generate_preds(Ctx,Filt,Preds);

generate_preds(Ctx,Source,[{predicate,{'=',?FN_MATCH(<<"node-name">>),#xqAtomicValue{} = NodeName}}|Preds]) ->
  %?dbg("Preds left",Preds),
   PathVar = {var,?LINE,next_var_name()},
   Body = has_node_name(?P("xqldb_xdm:node_name(Doc,_@PathVar)"),NodeName),
   BoolFun = ?P("fun(_@PathVar) -> xqerl_operators:eff_bool_val(_@Body) end"),
   Filt = pred(Source, BoolFun),
   generate_preds(Ctx,Filt,Preds);

generate_preds(Ctx,Source,[{predicate,{'=',?FN_MATCH(<<"name">>),#xqAtomicValue{} = NodeName}}|Preds]) ->
  %?dbg("Preds left",Preds),
   PathVar = {var,?LINE,next_var_name()},
   Body = has_name(?P("xqldb_xdm:node_name(Doc,_@PathVar)"),NodeName),
   BoolFun = ?P("fun(_@PathVar) -> xqerl_operators:eff_bool_val(_@Body) end"),
   Filt = pred(Source, BoolFun),
   generate_preds(Ctx,Filt,Preds);

generate_preds(Ctx,Source,[{predicate,{'!=',?FN_MATCH(<<"name">>),#xqAtomicValue{} = NodeName}}|Preds]) ->
  %?dbg("Preds left",Preds),
   PathVar = {var,?LINE,next_var_name()},
   Body = has_name(?P("xqldb_xdm:node_name(Doc,_@PathVar)"),NodeName),
   BoolFun = ?P("fun(_@PathVar) -> not xqerl_operators:eff_bool_val(_@Body) end"),
   Filt = pred(Source, BoolFun),
   generate_preds(Ctx,Filt,Preds);

generate_preds(Ctx,Source,[{predicate,{'eq',?FN_MATCH(<<"node-name">>),#xqAtomicValue{} = NodeName}}|Preds]) ->
  %?dbg("Preds left",Preds),
   PathVar = {var,?LINE,next_var_name()},
   Body = has_node_name(?P("xqldb_xdm:node_name(Doc,_@PathVar)"),NodeName),
   BoolFun = ?P("fun(_@PathVar) -> xqerl_operators:eff_bool_val(_@Body) end"),
   Filt = pred(Source, BoolFun),
   generate_preds(Ctx,Filt,Preds);

generate_preds(Ctx,Source,[{predicate,{'or',A,B}}|Preds] = P) ->
  %?dbg("Preds left",Preds),
   PathVar = {var,?LINE,next_var_name()},
   Bool1 = generate_preds(Ctx,?P("[_@PathVar]"),[{predicate,A}]),
   Bool2 = generate_preds(Ctx,?P("[_@PathVar]"),[{predicate,B}]),
   if Bool1 == nope orelse Bool2 == nope ->
         ?dbg("Unknown predicate",P),
         nope;
      true ->
         Body = ?P("xqerl_operators:eff_bool_val(_@Bool1 =/= []) orelse xqerl_operators:eff_bool_val(_@Bool2 =/= [])"),
         BoolFun = ?P("fun(_@PathVar) -> _@Body end"),
         Filt = pred(Source, BoolFun),
         generate_preds(Ctx,Filt,Preds)
   end;

generate_preds(Ctx,Source,[{predicate,{'and',A,B}}|Preds] = P) ->
  %?dbg("Preds left",Preds),
   PathVar = {var,?LINE,next_var_name()},
   Bool1 = generate_preds(Ctx,?P("[_@PathVar]"),[{predicate,A}]),
   Bool2 = generate_preds(Ctx,?P("[_@PathVar]"),[{predicate,B}]),
  %?dbg("Preds left",{Bool1,Bool2}),
   if Bool1 == nope orelse Bool2 == nope ->
         ?dbg("Unknown predicate",P),
         nope;
      true ->
         Body = ?P("xqerl_operators:eff_bool_val(_@Bool1 =/= []) andalso xqerl_operators:eff_bool_val(_@Bool2 =/= [])"),
         BoolFun = ?P("fun(_@PathVar) -> _@Body end"),
         Filt = pred(Source, BoolFun),
         generate_preds(Ctx,Filt,Preds)
   end;

generate_preds(_,_,P) ->
   ?dbg("Unknown predicate",P),
   nope.

pos_pred(SourceList,PosTuple) ->
   ?P("xqldb_xdm:position(_@SourceList,_@PosTuple)").

pred(SourceList,FilterFun) ->
   ?P("lists:filtermap(_@FilterFun,_@SourceList)").


has_lang(Arg,Source) ->
   Lang = ?P(["(begin case xqldb_xdm:lang(Doc,_@Source) of [] -> false;",
              " [LINT] ->",
              "  string:lowercase(LINT) == string:lowercase(xqerl_types:string_value(_@Arg@)) orelse string:prefix(string:lowercase(LINT),<<(string:lowercase(xqerl_types:string_value(_@Arg@)))/binary, \"-\">>) =/= nomatch", 
              "end end)"]),
   Lang.

has_node_name(Arg,Source) ->
   V = case Source of
          %{variable,Vr} -> merl:var(Vr);
          _ -> Source
       end,
   ?P("begin 
         {Ns0,_,Ln1} = _@Arg, Ns1 = case  Ns0 of <<>> -> 'no-namespace'; _ -> Ns0 end, 
         #xqAtomicValue{value = #qname{namespace = Ns2, local_name = Ln2}} = _@V,
         Ns1 == Ns2 andalso Ln1 == Ln2
      end").

has_name(Arg,Source) ->
   V = case Source of
          %{variable,Vr} -> merl:var(Vr);
          _ -> Source
       end,
   ?P("begin 
         {Ns0,_,Ln1} = _@Arg, Ns1 = case  Ns0 of <<>> -> 'no-namespace'; _ -> Ns0 end, 
         xqerl_operators:equal(
         xqerl_types:cast_as(#xqAtomicValue{value = #qname{namespace = Ns1, local_name = Ln1}},'xs:string'),
         _@V@)
      end").


next_id() ->
   Id = erlang:get(imp_mod),
   erlang:put(imp_mod, Id + 1),
   Id.

next_var_name() ->
   list_to_atom("__Xdm__"++integer_to_list(next_id())).

p1(F,V) -> ?P("xqldb_xdm:'@F@'(_@V)").
p2(F,S) when is_atom(S) -> 
   S1 = {var,?LINE,S},
   ?P("xqldb_xdm:'@F@'(Doc,_@S1)");
p2(F,S) ->  ?P("xqldb_xdm:'@F@'(Doc,_@S)").
p3(F,S,V) when is_atom(S) -> 
   S1 = {var,?LINE,S},
   ?P("xqldb_xdm:'@F@'(Doc,_@S1,_@V)");
p3(F,S,V) ->?P("xqldb_xdm:'@F@'(Doc,_@S,_@V)").
