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
-export([any_root/2]).
-export([root/2]).
-export([forward/5]).
-export([reverse/5]).

-define(ctx, xqerl_context).

% for internal use when the root node is not a document
any_root(Ctx0, {Id,Doc}) ->
   % this happens when stepping on a newly created document
   _ = xqerl_context:add_available_document(Id, Doc),
   Node = #xqNode{frag_id = Id,identity = 1},
   any_root(Ctx0, Node);
any_root(Ctx0, Seq) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               Roots = xqerl_node:child_ids({0, Doc}),
               List = lists:map(fun(I) ->
                                    #xqNode{frag_id = F, identity = I}
                                end, Roots),
               ?seq:from_list(List)
         end,
   doc_ord(Ctx0, Fun, Seq).

root(Ctx0, {Id,Doc}) ->
   % this happens when stepping on a newly created document
   _ = xqerl_context:add_available_document(Id, Doc),
   Node = #xqNode{frag_id = Id,identity = 1},
   root(Ctx0, Node);
root(Ctx0, Seq) ->
   Seq1 = case ?seq:is_sequence(Seq) of
             true ->
                ?seq:singleton_value(Seq);
             _ ->
                Seq
          end,
   % root axis returns the document root node
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               %?dbg("Line",?LINE),
               Doc = xqerl_context:get_available_document(F),
               %?dbg("Line",?LINE),
               Roots = xqerl_node:child_ids({0, Doc}),
               %?dbg("Line",?LINE),
               % can get more than one root, but is an error if it is
               List = lists:map(fun(I) ->
                                    case xqerl_node:get_node_type({I,Doc}) of
                                       'document-node' ->
                                          %?dbg("Line",?LINE),
                                          #xqNode{frag_id = F, identity = I};
                                       _ ->
                                          xqerl_error:error('XPDY0050')
                                    end
                                end, Roots),
               ?seq:from_list(List)
         end,
   %?dbg("Line",?LINE),
   doc_ord(Ctx0, Fun, Seq1).

forward(Ctx0, {Id,Doc}, Axis, Name, PredFuns) ->
   % this happens when stepping on a newly created document
   _ = xqerl_context:add_available_document(Id, Doc),
   Node = #xqNode{frag_id = Id,identity = 1},
   forward(Ctx0, Node, Axis, Name, PredFuns);
   
forward(Ctx0, Seq, self, #qname{} = Name, PredFuns) ->
   % self axis just sorts what comes in and returns it in document order
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = Id} ||
                       Self <- [get_node(Id, Doc)],
                       (is_record(Self, xqElementNode) orelse is_record(Self, xqAttributeNode)),
                       has_name(Self, Name)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, self, #xqKindTest{kind = node}, PredFuns) ->
   % self axis just sorts what comes in and returns it in document order
   Fun = fun(Ctx) ->
               Node = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               PreFilterSeq = ?seq:singleton(Node),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, self, [], PredFuns) ->
   % self axis just sorts what comes in and returns it in document order
   Fun = fun(Ctx) ->
               Node = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               PreFilterSeq = ?seq:singleton(Node),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, self, #xqKindTest{kind = Kind, name = Name}, PredFuns) ->
   % self axis just sorts what comes in and returns it in document order
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = Id} ||
                       Self <- [get_node(Id, Doc)],
                       if Kind == 'element' ->
                             is_record(Self, xqElementNode) andalso
                             has_name(Self, Name);
                          Kind == 'attribute' ->
                             is_record(Self, xqAttributeNode) andalso
                             has_name(Self, Name);
                          Kind == 'processing-instruction' ->
                             is_record(Self, xqProcessingInstructionNode) ;
                          Kind == 'comment' ->
                             is_record(Self, xqCommentNode) ;
                          Kind == 'text' ->
                             is_record(Self, xqTextNode) ;
                          Kind == 'namespace' ->
                             is_record(Self, xqNamespaceNode) ;
                          Kind == 'document-node' ->
                             is_record(Self, xqDocumentNode) ;
                          true ->
                             false
                       end],
               if List == [] ->
                     ?seq:empty();
                  true ->
                     [L] = List,
                     PreFilterSeq = ?seq:singleton(L),
                     do_preds(Ctx0, PreFilterSeq, PredFuns)
               end
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, child, #qname{} = Name, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:child_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqElementNode),
                       has_name(Child, Name)],
               PreFilterSeq = ?seq:from_list(List),
               %?dbg("PreFilterSeq",PreFilterSeq),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, descendant, #qname{} = Name, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:descendant_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqElementNode),
                       has_name(Child, Name)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, 'descendant-or-self', #qname{} = Name, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- [Id] ++ xqerl_node:descendant_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqElementNode),
                       has_name(Child, Name)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, attribute, #qname{} = Name, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:child_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqAttributeNode),
                       has_name(Child, Name)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, 'following-sibling', #qname{} = Name, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       A <- xqerl_node:sibling_ids({Id, Doc}),
                       A > Id,
                       ANode <- [get_node(A, Doc)],
                       is_record(ANode, xqElementNode),
                       has_name(ANode, Name)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, 'following', #qname{} = Name, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       Root <- xqerl_node:child_ids({0, Doc}),
                       A <- xqerl_node:descendant_ids({Root, Doc}) --
                         xqerl_node:descendant_ids({Id, Doc}),
                       A > Id,
                       ANode <- [get_node(A, Doc)],
                       is_record(ANode, xqElementNode),
                       has_name(ANode, Name)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(_Ctx, _Seq, Axis, #qname{} = Qn, _PredFuns) ->
   exit({'unknown', forward, named, Axis, Qn});

forward(Ctx0, Seq, child, #xqKindTest{kind = node} = _Kt, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:child_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       not is_record(Child, xqAttributeNode),
                       not is_record(Child, xqNamespaceNode)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);


forward(Ctx0, Seq, child, #xqKindTest{kind = attribute, name = Name}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:child_ids({Id, Doc}),
                       %%A <- xqerl_node:child_ids({C, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqAttributeNode),
                       has_name(Child, Name)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, child, #xqKindTest{kind = namespace}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:child_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqNamespaceNode)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(_Ctx0, _Seq, child, #xqKindTest{kind = 'document-node'}, _PredFuns) -> ?seq:empty();

forward(Ctx0, Seq, attribute, #xqKindTest{kind = node}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:child_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqAttributeNode)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, self, #xqKindTest{kind = node}, PredFuns) ->
   Fun = fun(Ctx) ->
               PreFilterSeq = ?ctx:get_context_item(Ctx),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, 'following-sibling', #xqKindTest{kind = node}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       A <- xqerl_node:sibling_ids({Id, Doc}),
                       A > Id,
                       ANode <- [get_node(A, Doc)],
                       is_record(ANode, xqElementNode)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, 'following', #xqKindTest{kind = node}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       Root <- xqerl_node:child_ids({0, Doc}),
                       A <- xqerl_node:descendant_ids({Root, Doc}) --
                         xqerl_node:descendant_ids({Id, Doc}),
                       A > Id,
                       ANode <- [get_node(A, Doc)],
                       not is_record(ANode, xqAttributeNode),
                       not is_record(ANode, xqNamespaceNode)
                       ],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, 'descendant-or-self', #xqKindTest{kind = node}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- [Id] ++ xqerl_node:descendant_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       (not is_record(Child, xqAttributeNode) orelse is_record(get_node(Id, Doc), xqAttributeNode)),
                       (not is_record(Child, xqNamespaceNode) orelse is_record(get_node(Id, Doc), xqNamespaceNode)),                        
                       (is_record(Child, xqTextNode) andalso xqerl_types:string_value(Child#xqTextNode.expr) =/= [])
                       orelse not is_record(Child, xqTextNode)
                       ],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, 'descendant-or-self', #xqKindTest{kind = text}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- [Id] ++ xqerl_node:descendant_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqTextNode)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, 'descendant-or-self', #xqKindTest{kind = element}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- [Id] ++ xqerl_node:descendant_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqElementNode)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, 'descendant-or-self', #xqKindTest{kind = comment}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- [Id] ++ xqerl_node:descendant_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqCommentNode)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);
forward(Ctx0, Seq, 'descendant-or-self', #xqKindTest{kind = 'processing-instruction'}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- [Id] ++ xqerl_node:descendant_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqProcessingInstructionNode)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, 'descendant', #xqKindTest{kind = node}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:descendant_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       not is_record(Child, xqAttributeNode),
                       not is_record(Child, xqNamespaceNode)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);


forward(Ctx0, Seq, child, #xqKindTest{kind = text}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:child_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqTextNode),
                       xqerl_types:string_value(Child#xqTextNode.expr) =/= []],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, child, #xqKindTest{name = Name, kind = 'processing-instruction'}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:child_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqProcessingInstructionNode),
                       Name == undefined orelse Child#xqProcessingInstructionNode.name == Name],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, child, #xqKindTest{kind = 'comment'}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:child_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqCommentNode)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);


forward(Ctx0, Seq, child, #xqKindTest{kind = 'element',name = Name}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:child_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqElementNode),
                       has_name(Child, Name)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(Ctx0, Seq, attribute, #xqKindTest{kind = 'attribute',name = Name}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = C} ||
                       C <- xqerl_node:child_ids({Id, Doc}),
                       Child <- [get_node(C, Doc)],
                       is_record(Child, xqAttributeNode),
                       has_name(Child, Name)],
               PreFilterSeq = ?seq:from_list(List),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

forward(_Ctx0, _Seq, attribute, #xqKindTest{}, _PredFuns) -> ?seq:empty();

forward(_Ctx0, _Seq, _, #xqKindTest{kind = attribute}, _PredFuns) -> ?seq:empty();
forward(_Ctx0, _Seq, _, #xqKindTest{kind = 'document-node'}, _PredFuns) -> ?seq:empty();
   
forward(_Ctx, _Seq, Axis, #xqKindTest{} = Kt, _PredFuns) ->
   exit({'unknown', kind_test, Axis, Kt}).


reverse(Ctx0, {Id,Doc}, Axis, Name, PredFuns) ->
   % this happens when stepping on a newly created document
   _ = xqerl_context:add_available_document(Id, Doc),
   Node = #xqNode{frag_id = Id,identity = 1},
   reverse(Ctx0, Node, Axis, Name, PredFuns);

reverse(Ctx0, Seq, 'ancestor-or-self', #qname{} = Name, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       A <- xqerl_node:ancestor_ids({Id, Doc}),
                       ANode <- [get_node(A, Doc)],
                       is_record(ANode, xqElementNode),
                       has_name(ANode, Name)],
               PreFilterSeq = ?seq:from_list(lists:reverse(List)),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

reverse(Ctx0, Seq, 'ancestor', #qname{} = Name, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       A <- xqerl_node:ancestor_ids({Id, Doc}) -- [Id],
                       ANode <- [get_node(A, Doc)],
                       is_record(ANode, xqElementNode),
                       has_name(ANode, Name)],
               PreFilterSeq = ?seq:from_list(lists:reverse(List)),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

reverse(Ctx0, Seq, 'parent', #qname{} = Name, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       A <- xqerl_node:parent_id({Id, Doc}),
                       ANode <- [get_node(A, Doc)],
                       is_record(ANode, xqElementNode),
                       has_name(ANode, Name)],
               PreFilterSeq = ?seq:from_list(lists:reverse(List)),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

reverse(Ctx0, Seq, 'preceding', #qname{} = Name, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       Root <- xqerl_node:child_ids({0, Doc}),
                       A <- xqerl_node:descendant_ids({Root, Doc}) -- 
                         xqerl_node:ancestor_ids({Id, Doc}),
                       A < Id,
                       ANode <- [get_node(A, Doc)],
                       is_record(ANode, xqElementNode),
                       has_name(ANode, Name) ],
               PreFilterSeq = ?seq:from_list(lists:reverse(lists:sort(List))),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

reverse(Ctx0, Seq, 'preceding-sibling', #qname{} = Name, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       A <- xqerl_node:sibling_ids({Id, Doc}),
                       A < Id,
                       ANode <- [get_node(A, Doc)],
                       is_record(ANode, xqElementNode),
                       has_name(ANode, Name)],
               PreFilterSeq = ?seq:from_list(lists:reverse(List)),
               All = do_preds(Ctx0, PreFilterSeq, PredFuns),
               All
         end,
   doc_ord(Ctx0, Fun, Seq);

reverse(_Ctx, _Seq, Axis, #qname{} = Qn, _PredFuns) ->
   exit({'unknown',reverse, Axis, Qn});

reverse(Ctx0, Seq, 'ancestor-or-self', #xqKindTest{kind = node}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       A <- xqerl_node:ancestor_ids({Id, Doc})%,
                       %ANode <- [get_node(A, Doc)],
                       %is_record(ANode, xqElementNode)
                      ],
               PreFilterSeq = ?seq:from_list(lists:reverse(List)),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

reverse(Ctx0, Seq, 'ancestor', #xqKindTest{kind = node}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       A <- xqerl_node:ancestor_ids({Id, Doc}) -- [Id] ],
               PreFilterSeq = ?seq:from_list(lists:reverse(List)),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

reverse(Ctx0, Seq, 'preceding', #xqKindTest{kind = node}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       Root <- xqerl_node:child_ids({0, Doc}),
                       A <- xqerl_node:descendant_ids({Root, Doc}) -- 
                         xqerl_node:ancestor_ids({Id, Doc}),
                       A < Id,
                       ANode <- [get_node(A, Doc)],
                       not is_record(ANode, xqAttributeNode),
                       not is_record(ANode, xqNamespaceNode)],
               PreFilterSeq = ?seq:from_list(lists:reverse(lists:sort(List))),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

reverse(Ctx0, Seq, 'preceding-sibling', #xqKindTest{kind = node}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       A <- xqerl_node:sibling_ids({Id, Doc}),
                       A < Id,
                       ANode <- [get_node(A, Doc)],
                       not is_record(ANode, xqAttributeNode),
                       not is_record(ANode, xqNamespaceNode)],
               PreFilterSeq = ?seq:from_list(lists:reverse(List)),
               All = do_preds(Ctx0, PreFilterSeq, PredFuns),
               All
         end,
   doc_ord(Ctx0, Fun, Seq);

reverse(Ctx0, Seq, 'preceding-sibling', #xqKindTest{kind = comment}, PredFuns) ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       A <- xqerl_node:sibling_ids({Id, Doc}),
                       A < Id,
                       ANode <- [get_node(A, Doc)],
                       is_record(ANode, xqCommentNode)],
               PreFilterSeq = ?seq:from_list(lists:reverse(List)),
               All = do_preds(Ctx0, PreFilterSeq, PredFuns),
               All
         end,
   doc_ord(Ctx0, Fun, Seq);

reverse(Ctx0, Seq, 'parent', #xqKindTest{kind = Type}, PredFuns) when Type == node;
                                                                      Type == element;
                                                                      Type == 'document-node' ->
   Fun = fun(Ctx) ->
               #xqNode{frag_id = F, identity = Id} = ?seq:singleton_value(?ctx:get_context_item(Ctx)),
               Doc = xqerl_context:get_available_document(F),
               List = [#xqNode{frag_id = F, identity = A} ||
                       A <- xqerl_node:parent_id({Id, Doc}),
                       A > 0],
               PreFilterSeq = ?seq:from_list(lists:reverse(List)),
               do_preds(Ctx0, PreFilterSeq, PredFuns)
         end,
   doc_ord(Ctx0, Fun, Seq);

reverse(_Ctx0, _Seq, _Axis, #xqKindTest{kind = Type}, _PredFuns) when Type == text;
                                                                      Type == attribute;
                                                                      Type == comment;
                                                                      Type == namespace;
                                                                      Type == 'processing-instruction' ->
   ?seq:empty();

reverse(_Ctx, _Seq, Axis, #xqKindTest{} = Kt, _PredFuns) ->
   exit({'unknown',reverse, Axis, Kt}).


has_name(_, undefined) ->
   true;
has_name(#xqElementNode{name = _Name}, #qname{namespace = undefined,prefix = Px}) when Px =/= "*" ->
   % non-expandable QName
   xqerl_error:error('XPST0081');
has_name(#xqElementNode{name = Name}, #qname{namespace = Ns, prefix = Px, local_name = Loc}) ->
   %?dbg("Name,Ns,Px,Loc",{Name,Ns,Px,Loc}),
   (Px  == "*" orelse unmask_ns(Ns)  == Name#qname.namespace )    andalso 
   (Loc == "*" orelse Loc == Name#qname.local_name);
has_name(#xqAttributeNode{name = _Name}, undefined) ->
   true;
has_name(#xqAttributeNode{name = Name}, #qname{namespace = Ns, prefix = Px, local_name = Loc}) ->
   (Px  == "*" orelse unmask_ns(Ns)  == Name#qname.namespace )    andalso 
   (Loc == "*" orelse Loc == Name#qname.local_name).

unmask_ns("xqerl_fn") -> "http://www.w3.org/2005/xpath-functions";
unmask_ns("xqerl_xs") -> "http://www.w3.org/2001/XMLSchema";
unmask_ns("xqerl_math") -> "http://www.w3.org/2005/xpath-functions/math";
unmask_ns("xqerl_map") -> "http://www.w3.org/2005/xpath-functions/map";
unmask_ns("xqerl_array") -> "http://www.w3.org/2005/xpath-functions/array";
unmask_ns("xqerl_error") -> "http://www.w3.org/2005/xqt-errors";
unmask_ns(Ns) -> Ns.

get_node(Id,Doc) ->
   gb_trees:get(Id, Doc).
%TODO move to seq
doc_ord(Ctx, Fun, Seq) ->
   NewSeq = case ?seq:is_sequence(Seq) of
               true ->
                  Seq;
               _ ->
                  ?seq:singleton(Seq)
            end,
   case ?seq:all_node(NewSeq) of
      true ->
         %?dbg("Line",?LINE),
         Res = ?seq:map(Ctx, Fun, NewSeq),
         %?dbg("Res",Res),
         % unique in doc order
         ?seq:union(Res, ?seq:empty());
      _ ->
         xqerl_error:error('XPTY0020') % only step on nodes
   end.

filter(Ctx, PredFuns,PreFilterSeq) ->
   case ?seq:is_sequence(PreFilterSeq) of
      true ->
         do_preds(Ctx, PreFilterSeq, PredFuns);
      _ -> % can be called from abs code
         do_preds(Ctx, ?seq:singleton(PreFilterSeq), PredFuns)
  end.


do_preds(Ctx, PreFilterSeq, PredFuns) ->
   %?dbg("Line",PredFuns),
   lists:foldl(fun(Pred,SeqAcc) ->
                     %?dbg("Line",PreFilterSeq),
                     ?seq:filter(Ctx, Pred, SeqAcc)
               end, PreFilterSeq, PredFuns).

  