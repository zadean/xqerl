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

%% @doc Functions for stepping around XML documents

-module(xqerl_step).

-include("xqerl.hrl").

-export([filter/3]).
-export([ids/2]).
-export([idrefs/2]).
-export([any_root/2]).
-export([root/2]).
-export([forward/5]).
-export([reverse/5]).

-define(ctx, xqerl_context).

% for internal use when the root node is not a document
any_root(Ctx, Seq) when not is_list(Seq) ->
   any_root(Ctx, [Seq]);
any_root(_Ctx, Nodes) ->
   Fun = fun(#xqNode{doc = {doc,File}}) ->
               Doc = ?get({doc,File}),
               Root = xqerl_xdm:root(Doc),
               Roots = if is_list(Root) ->
                             Root;
                          true ->
                             [Root]
                       end,
               as_xqnodes(Doc, Roots);
            (#xqNode{doc = Doc}) ->
               Root = xqerl_xdm:root(Doc),
               Roots = if is_list(Root) ->
                             Root;
                          true ->
                             [Root]
                       end,
               as_xqnodes(Doc, Roots)
         end,
   PreSort = lists:flatmap(Fun, Nodes),
   lists:usort(PreSort).

root(Ctx, Seq) when not is_list(Seq) ->
   root(Ctx, [Seq]);
root(_Ctx, Nodes) ->
   Fun = fun(#xqNode{doc = {doc,File}}) ->
               Doc = ?get({doc,File}),
               Root = xqerl_xdm:root(Doc),
               Roots = if is_list(Root) ->
                             %?dbg("Root",Root),
                             ?err('XPDY0050');
                          true ->
                             [Root]
                       end,
               Type = xqerl_xdm:dm_node_kind(Doc, Root),
               if Type == document ->
                     as_xqnodes(Doc, Roots);
                  true ->
                     ?err('XPDY0050')
               end;
            (#xqNode{doc = Doc}) ->
               Root = xqerl_xdm:root(Doc),
               Roots = if is_list(Root) ->
                             %?dbg("Root",Root),
                             ?err('XPDY0050');
                          true ->
                             [Root]
                       end,
               Type = xqerl_xdm:dm_node_kind(Doc, Root),
               if Type == document ->
                     as_xqnodes(Doc, Roots);
                  true ->
                     ?err('XPDY0050')
               end
         end,
   PreSort = lists:flatmap(Fun, Nodes),
   lists:usort(PreSort).

ids(_Ctx, Nodes) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = attribute(Node1),
                Ids = lists:filter(fun(P) ->
                                         xqerl_xdm:dm_is_id(Doc, P)
                                   end, Pointers),
                as_xqnodes(Doc, Ids);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:flatmap(Fun1, lists:flatten(Nodes)),
   lists:usort(PrePredicate).

idrefs(_Ctx, Nodes) ->
   % check if is single root doc
   _ = root([],Nodes),
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                
                Pointers = attribute(Node1),
                Ids = lists:filter(fun(P) ->
                                         xqerl_xdm:dm_is_idrefs(Doc, P)
                                   end, Pointers),
                as_xqnodes(Doc, Ids);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:flatmap(Fun1, Nodes),
   lists:usort(PrePredicate).


forward(Ctx, Nodes, Axis, Name, PredFuns) when not is_list(Nodes) ->
   forward(Ctx, [Nodes], Axis, Name, PredFuns);

forward(Ctx0, N, Axis, Name, PredFuns) when is_record(N, xqElementNode);
                                            is_record(N, xqDocumentNode);
                                            is_record(N, xqAttributeNode);
                                            is_record(N, xqCommentNode);
                                            is_record(N, xqTextNode);
                                            is_record(N, xqProcessingInstructionNode);
                                            is_record(N, xqNamespaceNode) ->
   % this happens when stepping on a non-created node
   Node = xqerl_node:new_fragment(Ctx0, N),
   forward(Ctx0, Node, Axis, Name, PredFuns);

forward(Ctx, Nodes, child, #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc, node = Node1}) ->
                Pointers = get_named_children(Doc,Node1,Name),
                as_xqnodes(Doc, Pointers);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, child, #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc, node = Node1}) ->
                Pointers = get_named_children(Doc,Node1,Name),
                TFiltered = kind_filter(Pointers, Kind),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, descendant, #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = descendant(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                as_xqnodes(Doc, NFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, descendant, #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = descendant(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                TFiltered = kind_filter(NFiltered, Kind),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, attribute, #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = attribute(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                as_xqnodes(Doc, NFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, attribute, #xqKindTest{kind = Kind, name = Name, type = Type}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = attribute(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                KFiltered = kind_filter(NFiltered, Kind),
                TFiltered = type_filter(KFiltered, Type),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, self, #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = self(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                as_xqnodes(Doc, NFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, self, [], PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = self(Node1),
                as_xqnodes(Doc, Pointers);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, self, #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = self(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                TFiltered = kind_filter(NFiltered, Kind),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, 'descendant-or-self', #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = descendant_or_self(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                as_xqnodes(Doc, NFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, 'descendant-or-self', #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = descendant_or_self(Node1),
                %?dbg("Pointers",Pointers),
                NFiltered = name_filter(Doc, Pointers, Name),
                %?dbg("NFiltered",NFiltered),
                TFiltered = kind_filter(NFiltered, Kind),
                %?dbg("TFiltered",TFiltered),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, 'following-sibling', #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = following_sibling(Node1,Name),
                as_xqnodes(Doc, Pointers);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, 'following-sibling', #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = following_sibling(Node1,Name),
                TFiltered = kind_filter(Pointers, Kind),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, following, #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = following(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                as_xqnodes(Doc, NFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);

forward(Ctx, Nodes, following, #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = following(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                TFiltered = kind_filter(NFiltered, Kind),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, Nodes),
   PostPredicat = do_preds(Ctx, PrePredicate, PredFuns),
   lists:usort(PostPredicat);
   
forward(_Ctx, _Seq, Axis, Kt, _PredFuns) ->
   exit({'unknown', kind_test, Axis, Kt}).



reverse(Ctx, Nodes, Axis, Name, PredFuns) when not is_list(Nodes) ->
   reverse(Ctx, [Nodes], Axis, Name, PredFuns);
reverse(Ctx0, N, Axis, Name, PredFuns) when is_record(N, xqElementNode);
                                            is_record(N, xqDocumentNode);
                                            is_record(N, xqAttributeNode);
                                            is_record(N, xqCommentNode);
                                            is_record(N, xqTextNode);
                                            is_record(N, xqProcessingInstructionNode);
                                            is_record(N, xqNamespaceNode) ->
   % this happens when stepping on a non-created node
   Node = xqerl_node:new_fragment(Ctx0, N),
   reverse(Ctx0, Node, Axis, Name, PredFuns);

reverse(Ctx, Nodes, parent, #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = parent(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                as_xqnodes(Doc, NFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, lists:flatten(Nodes)),
   PostPredicat = do_preds(Ctx, lists:reverse(PrePredicate), PredFuns),
   lists:usort(PostPredicat);

reverse(Ctx, Nodes, parent, #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = parent(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                TFiltered = kind_filter(NFiltered, Kind),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, lists:flatten(Nodes)),
   PostPredicat = do_preds(Ctx, lists:reverse(PrePredicate), PredFuns),
   lists:usort(PostPredicat);

reverse(Ctx, Nodes, ancestor, #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = ancestor(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                as_xqnodes(Doc, NFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, lists:flatten(Nodes)),
   PostPredicat = do_preds(Ctx, lists:reverse(PrePredicate), PredFuns),
   lists:usort(PostPredicat);

reverse(Ctx, Nodes, ancestor, #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = ancestor(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                TFiltered = kind_filter(NFiltered, Kind),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, lists:flatten(Nodes)),
   PostPredicat = do_preds(Ctx, lists:reverse(PrePredicate), PredFuns),
   lists:usort(PostPredicat);

reverse(Ctx, Nodes, 'preceding-sibling', #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = preceding_sibling(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                as_xqnodes(Doc, NFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, lists:flatten(Nodes)),
   PostPredicat = do_preds(Ctx, lists:reverse(PrePredicate), PredFuns),
   lists:usort(PostPredicat);

reverse(Ctx, Nodes, 'preceding-sibling', #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = preceding_sibling(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                TFiltered = kind_filter(NFiltered, Kind),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, lists:flatten(Nodes)),
   PostPredicat = do_preds(Ctx, lists:reverse(PrePredicate), PredFuns),
   lists:usort(PostPredicat);

reverse(Ctx, Nodes, preceding, #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = preceding(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                as_xqnodes(Doc, NFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, lists:flatten(Nodes)),
   PostPredicat = do_preds(Ctx, lists:reverse(PrePredicate), PredFuns),
   lists:usort(PostPredicat);

reverse(Ctx, Nodes, preceding, #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = preceding(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                TFiltered = kind_filter(NFiltered, Kind),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, lists:flatten(Nodes)),
   PostPredicat = do_preds(Ctx, lists:reverse(PrePredicate), PredFuns),
   lists:usort(PostPredicat);

reverse(Ctx, Nodes, 'ancestor-or-self', #qname{} = Name, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = ancestor_or_self(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                as_xqnodes(Doc, NFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, lists:flatten(Nodes)),
   PostPredicat = do_preds(Ctx, lists:reverse(PrePredicate), PredFuns),
   lists:usort(PostPredicat);

reverse(Ctx, Nodes, 'ancestor-or-self', #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   Fun1 = fun(#xqNode{doc = Doc} = Node1) ->
                Pointers = ancestor_or_self(Node1),
                NFiltered = name_filter(Doc, Pointers, Name),
                TFiltered = kind_filter(NFiltered, Kind),
                as_xqnodes(Doc, TFiltered);
             (_) ->
                ?err('XPTY0019')
          end,
   PrePredicate = lists:map(Fun1, lists:flatten(Nodes)),
   PostPredicat = do_preds(Ctx, lists:reverse(PrePredicate), PredFuns),
   lists:usort(PostPredicat);

reverse(_Ctx, _Seq, Axis, Kt, _PredFuns) ->
   exit({'unknown',reverse, Axis, Kt}).

filter(Ctx, PredFuns,PreFilterSeq) ->
   case is_list(PreFilterSeq) of
      true ->
         do_preds(Ctx, PreFilterSeq, PredFuns);
      _ -> % can be called from abs code
         do_preds(Ctx, ?seq:singleton(PreFilterSeq), PredFuns)
  end.


do_preds(Ctx, PreFilterSeq, PredFuns) ->
   L = lists:map(fun(Sub) ->
      lists:foldl(fun([],SeqAcc) ->
                        SeqAcc;
                     (Pred,SeqAcc) ->
                        %?dbg("Line",PreFilterSeq),
                        ?seq:filter(Ctx, Pred, SeqAcc)
                  end, Sub, PredFuns)
             end, PreFilterSeq),
   lists:flatten(L).



%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%  Axis functions - each takes a node and return 0 or more nodes as list
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

descendant(#xqNode{doc = Doc, node = Node}) ->
   descendant_1(Doc,Node).

descendant_1(Doc,Node) -> 
   Children = get_children(Doc, Node),
   if Children == [] ->
         []; 
      true ->
         lists:flatmap(fun(C) ->
                           [C|descendant_1(Doc, C)]
                       end, Children)
   end.

attribute(#xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   xqerl_xdm:dm_attributes(Doc, Node);
attribute(#xqNode{doc = Doc, node = Node}) ->
   xqerl_xdm:dm_attributes(Doc, Node).

self(#xqNode{node = Node}) ->
   [Node].

descendant_or_self(#xqNode{doc = Doc, node = Node}) ->
   [Node|descendant_1(Doc,Node)].

following_sibling(#xqNode{doc = {doc,File}, node = Node},Name) ->
   Doc = ?get({doc,File}),
   following_sibling(#xqNode{doc = Doc, node = Node},Name);
following_sibling(#xqNode{doc = Doc, node = Node},Name) ->
   case xqerl_xdm:dm_node_kind(Doc, Node) of
      attribute ->
         [];
      _ ->
         Parent = xqerl_xdm:dm_parent(Doc, Node),
         Children = get_named_children(Doc, Parent, Name),
         NodeId = xqerl_xdm:uid(Node),
         xqerl_xdm:after_id(Children, NodeId)
   end.

following(#xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   following(#xqNode{doc = Doc, node = Node});
following(#xqNode{doc = Doc, node = Node}) ->
   Root = xqerl_xdm:node_root(Doc, Node),
   All = descendant(#xqNode{doc = Doc, node = Root}),
   LastId = xqerl_xdm:uid(Node) + xqerl_xdm:size(Node),
   xqerl_xdm:after_id(All, LastId).

parent(#xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   parent(#xqNode{doc = Doc, node = Node});
parent(#xqNode{doc = Doc, node = Node}) ->
   case xqerl_xdm:dm_parent(Doc, Node) of
      [] ->
         [];
      P ->
         [P]
   end.

ancestor(#xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   ancestor(#xqNode{doc = Doc, node = Node});
ancestor(#xqNode{doc = Doc, node = Node}) ->
   ancestor_1(Doc,Node).

ancestor_1(_,[]) -> [];
ancestor_1(Doc,Node) ->
   Parent = xqerl_xdm:dm_parent(Doc, Node),
   if Parent == [] ->
         [];
      true ->
         [Parent|ancestor_1(Doc,Parent)]
   end.


preceding_sibling(#xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   preceding_sibling(#xqNode{doc = Doc, node = Node});
preceding_sibling(#xqNode{doc = Doc, node = Node}) ->
   case xqerl_xdm:dm_node_kind(Doc, Node) of
      attribute ->
         [];
      _ ->
         Parent = xqerl_xdm:dm_parent(Doc, Node),
         Children = get_children(Doc, Parent),
         NodeId = xqerl_xdm:uid(Node),
         Sibs = lists:filter(fun(N) ->
                                   xqerl_xdm:uid(N) < NodeId
                             end, Children),
         lists:reverse(Sibs)
   end.

preceding(#xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   preceding(#xqNode{doc = Doc, node = Node});
preceding(#xqNode{doc = Doc, node = Node}) ->
   Root = xqerl_xdm:node_root(Doc, Node),
   All = descendant(#xqNode{doc = Doc, node = Root}),
   Ans = ancestor_1(Doc,Node),
   FirstId = xqerl_xdm:uid(Node),
   Prec = lists:filter(fun(N) ->
                             xqerl_xdm:uid(N) < FirstId andalso not lists:member(N, Ans)
                       end, All),
   lists:reverse(Prec).

ancestor_or_self(#xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   ancestor_or_self(#xqNode{doc = Doc, node = Node});
ancestor_or_self(#xqNode{doc = Doc, node = Node}) ->
   [Node|ancestor_1(Doc,Node)].

as_xqnodes(_, []) ->
   [];
as_xqnodes(Doc, [H|Nodes]) ->
   [#xqNode{doc = Doc, node = H}|as_xqnodes(Doc, Nodes)].

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%  Node type/name functions - filters a list of nodes to a given type/name
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

kind_filter([], _Type) -> [];
kind_filter(List, node) -> List;
kind_filter([H|T], Type) ->
   Kind = xqerl_xdm:dm_node_kind([], H),
   %?dbg("{Kind,Type}",{Kind,Type}),
   case Kind =:= Type of
      true ->
         [H|kind_filter(T, Type)];
      _ ->
         kind_filter(T, Type)
   end.

type_filter([], _Type) -> [];
type_filter(List, undefined) -> List;
type_filter(List, #xqSeqType{type = 'xs:anyType'}) -> List;
type_filter(List, #xqSeqType{type = Type}) -> type_filter(List, Type);
type_filter([H|T], SType) ->
   Type = xqerl_xdm:dm_type_name([], H),
   %?dbg("{Kind,Type}",{Kind,Type}),
   case SType =:= Type of
      true ->
         [H|type_filter(T, SType)];
      _ ->
         type_filter(T, SType)
   end.

name_filter(_Doc, Nodes, undefined) ->
   Nodes;
name_filter({doc,File}, Nodes, QName) ->
   Doc = ?get({doc,File}),
   name_filter(Doc, Nodes, QName);
name_filter(Doc, Nodes, #qname{namespace = Ns, local_name = Ln}) ->
   NsId = if Ns == "*" ->
                any;
             true ->
                xqerl_xdm:namespace_id(Doc, Ns)
          end,
   LnId = if Ln == "*" ->
                any;
             true ->
                xqerl_xdm:name_id(Doc, Ln)
          end,
   %?dbg("{Nodes,NsId,LnId}",{Nodes,NsId,LnId}),
   name_filter_1(Nodes,NsId,LnId).

name_filter_1([], _,_) -> [];
name_filter_1([<<_:32,N:3,_:93>> = H|T], any,any) when N == 1;
                                                       N == 3 -> 
   [H|name_filter_1(T, any,any)];
name_filter_1([<<_:128>>|T], any,any) ->
   name_filter_1(T, any,any);
name_filter_1([<<_:32,N:3,_:13,LnId:16,_:64>> = H|T], any,LnId) when N == 1;
                                                                     N == 3 -> 
   [H|name_filter_1(T, any, LnId)];
name_filter_1([<<_:128>>|T], any,LnId) ->
   name_filter_1(T, any,LnId);
name_filter_1([<<_:32,N:3,_:5,NsId:8,_:80>> = H|T],NsId, any) when N == 1;
                                                                   N == 3 -> 
   [H|name_filter_1(T, NsId, any)];
name_filter_1([<<_:128>>|T], NsId, any) ->
   name_filter_1(T, NsId, any);
name_filter_1([<<_:32,N:3,_:5,NsId:8,LnId:16,_:64>> = H|T],NsId,LnId) when N == 1;
                                                                           N == 3;
                                                                           N == 6 -> 
   [H|name_filter_1(T, NsId, LnId)];
name_filter_1([_|T], NsId,LnId) -> 
   name_filter_1(T, NsId,LnId).


get_children({doc,File},Node) ->
   Doc = ?get({doc,File}),
   get_children(Doc,Node);
get_children(#{file := File} = Doc,Node) ->
   case ?get({children,File,Node}) of
      [] ->
         Children = xqerl_xdm:dm_children(Doc, Node),
         _ = ?put({children,File,Node}, Children),
         %?dbg("Children",Children),
         Children;
      Val ->
         %?dbg("Val",Val),
         Val
   end.

get_named_children({doc,File},Node,Name) ->
   Doc = ?get({doc,File}),
   get_named_children(Doc,Node,Name);
get_named_children(#{file := File} = Doc,Node,Name) ->
   case ?get({named_children,File,Name,Node}) of
      [] ->
         Children = xqerl_xdm:dm_children(Doc, Node),
         Named = name_filter(Doc, Children, Name),
         _ = ?put({named_children,File,Name,Node}, Named),
         %?dbg("Named",Named),
         Named;
      Val ->
         Val
   end.

