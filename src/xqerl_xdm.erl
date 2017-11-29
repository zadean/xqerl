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

%% @doc XML Data Model  

-module(xqerl_xdm).

%% XML doc is a map: #{file  => DocumentUri,- URI from the document during loading, doc-store lookup key
%%                     base  => BaseUri,    - Base URI for the document. can be different than Doc URI, e.g. set in query, also overridden by xml:base
%%                     names => NCNames,    - map of string() to integer(), key is the NCName, value is NAME ID below
%%                     namsp => Namespaces, - map of string() to integer(), key is the URI, value is NSP ID below
%%                     texts => TextValues, - map of integer() to string(), key is the 'Text Reference' ID below, value is the text
%%                     nodes => NodeBinary  - positional binary of 16 bytes with the following layout
%%                     att_types => AttTypes- Map of {ElementName,AttributeName} => Type (from DTD for ID and IDREF)
%%                    }

%% ANC:              attribute/namespace count. it overflows at 31, so if == 31, scan forward for more
%% DOK:              Document Order Key - at front for unique sorting
%% NSP:              namespace ID
%% NAME:             NCName ID, used for Element, Attribute PI, and the prefix of namespaces
%% TEXT ID:          text value ID
%% OFFSET TO PARENT: the number of node-widths to look back and find the parent node
%% ID:               ID flag for attribute - 1 = ID 2 = IDREF

%% DOCUMENT
%% |============== DOK ================|000|                                                                    |======== NODE SIZE ================|   
%% *00000000*00000000*00000000*00000000*000|00000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*
%% 
%% ELEMENT
%% |============== DOK ================|001| ANC |= NSP ==|===== NAME ======|======== OFFSET TO PARENT =========|======== NODE SIZE ================|   
%% *00000000*00000000*00000000*00000000*000|00000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*
%% 
%% NAMESPACE
%% |============== DOK ================|010|     |= NSP ==|===== NAME ======|                                   |======== OFFSET TO PARENT =========|   
%% *00000000*00000000*00000000*00000000*000|00000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*
%% 
%% ATTRIBUTE
%% |============== DOK ================|011|ID|   |= NSP ==|===== NAME ======|======== TEXT ID ==================|======== OFFSET TO PARENT =========|   
%% *00000000*00000000*00000000*00000000*000|00|000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*
%% 
%% TEXT
%% |============== DOK ================|100|                                |======== TEXT ID ==================|======== OFFSET TO PARENT =========|   
%% *00000000*00000000*00000000*00000000*000|00000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*
%% 
%% COMMENT
%% |============== DOK ================|101|                                |======== TEXT ID ==================|======== OFFSET TO PARENT =========|   
%% *00000000*00000000*00000000*00000000*000|00000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*
%% 
%% PI
%% |============== DOK ================|110|     |= NSP ==|===== NAME ======|======== TEXT ID ==================|======== OFFSET TO PARENT =========|   
%% *00000000*00000000*00000000*00000000*000|00000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*00000000*

% block/byte size
-define(BS,16).
-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================

-export([after_id/2,
         name_id/2,
         prefix/2,
         namespace_id/2,
         size/1,
         uid/1,
         uri/1,
         path_to_root/2,
         inscope_namespaces/2,
         node_root/2,
         root/1,
         %
         copy/2
         ]).

% node "constructors"
-export([document_node/2,
         element_node/6,
         namespace_node/4,
         attribute_node/6,
         text_node/3,
         comment_node/3,
         pi_node/5
        ]).
% node accessors
-export([dm_attributes/2,
         dm_base_uri/2,
         dm_children/2,
         dm_document_uri/2,
         dm_is_id/2,
         dm_is_idrefs/2,
         dm_namespace_nodes/2,
         dm_nilled/2,
         dm_node_kind/2,
         dm_node_name/2,
         dm_parent/2,
         dm_string_value/2,
         dm_type_name/2,
         dm_typed_value/2,
         dm_unparsed_entity_public_id/2,
         dm_unparsed_entity_system_id/2
        ]).

%% ====================================================================
%% Node constructor functions
%% ====================================================================

document_node(Size, Id) ->
   <<Id:32,0:64,Size:32>>.
element_node(AtNsSize, Nsp, Name, Offset, Size, Id) when AtNsSize >= 31 ->
   <<Id:32,1:3,31:5,Nsp:8,Name:16,Offset:32,Size:32>>;
element_node(AtNsSize, Nsp, Name, Offset, Size, Id) ->
   <<Id:32,1:3,AtNsSize:5,Nsp:8,Name:16,Offset:32,Size:32>>.
namespace_node(Nsp, Name, Offset, Id) ->
   <<Id:32,2:3,0:5,Nsp:8,Name:16,0:32,Offset:32>>.
attribute_node(Nsp, Name, Value, IdFlag, Offset, Id) ->
   <<Id:32,3:3,IdFlag:2,0:3,Nsp:8,Name:16,Value:32,Offset:32>>.
text_node(Value, Offset, Id) ->
   <<Id:32,4:3,0:29,Value:32,Offset:32>>.
comment_node(Value, Offset, Id) ->
   <<Id:32,5:3,0:29,Value:32,Offset:32>>.
pi_node(Nsp,Name,Value, Offset, Id) ->
   <<Id:32,6:3,0:5,Nsp:8,Name:16,Value:32,Offset:32>>.


%% ====================================================================
%% Node comparison and access functions
%% ====================================================================

% name id in this doc for Name
name_id(#{names := Names},Name) ->
   lookup_by_key(Names,Name).

% namespace id in this doc for Namespace
namespace_id(#{namsp := Namsp},Namespace) ->
   lookup_by_key(Namsp,Namespace).

% size of the node
size(Node) ->
   get_size(Node).

prefix(Doc, Node) ->
   {Namespace,_} = dm_node_name(Doc, Node),
   prefix(Doc, Node, Namespace).

prefix(_, [], _) -> [];
% special case stand-alone attribute, attribute at position 2
prefix(#{nodes := Nodes} = Doc, <<2:32,3:3,_:5,_:56,0:32>>, _) ->
   Namespace = binary_part(Nodes,0,?BS),
   case dm_node_name(Doc, Namespace) of
      [] ->
         [];
      {_,P} ->
         P
   end;
% always statically known
prefix(_Doc, _Node, "http://www.w3.org/XML/1998/namespace") ->
   "xml";
% else walk up the parent axis for inscope prefix for namespace
prefix(Doc, Node, Namespace) ->
   Namespaces = dm_namespace_nodes(Doc, Node),
   Match = [P || Ns <- Namespaces,
                 dm_string_value(Doc, Ns) == Namespace,
                 {_,P} <- [dm_node_name(Doc, Ns)]],
   case Match of
      [] ->
         Parent = dm_parent(Doc, Node),
         prefix(Doc, Parent, Namespace);
      [P] ->
         P;
      P ->
         hd(P)
   end.

%% Walks up the parent axis for all inscope namespaces, 
%% adding only what is not already in-scope.
%% returns [{Namespace,Prefix}] 
inscope_namespaces(Doc, Node) ->
   inscope_namespaces(Doc, Node,[{"http://www.w3.org/XML/1998/namespace","xml"}]).

inscope_namespaces(_, [], Acc) -> Acc;
inscope_namespaces(Doc, Node, Acc) ->
   Namespaces = dm_namespace_nodes(Doc, Node),
   %?dbg("Namespaces",Namespaces),
   Matches = [begin
                 Uri = dm_string_value(Doc, Ns),
                 case dm_node_name(Doc, Ns) of
                    {_,P} ->
                       {Uri,P};
                    [] when Uri == [] ->
                       {'no-namespace',[]};
                    [] ->
                       {Uri,[]}
                 end
              end || Ns <- Namespaces],
   Merged = merge_insp_ns(Matches, Acc),
   Parent = dm_parent(Doc, Node),
   inscope_namespaces(Doc, Parent, Merged).

merge_insp_ns(Matches, Acc) ->
   New = lists:filter(fun({_,[]}) ->
                            not lists:keymember([], 2, Acc);
                         ({_,P}) ->
                            not lists:keymember(P, 2, Acc)
%%                          ({U,_}) ->
%%                             not lists:keymember(U, 1, Acc)
                      end, Matches),
   New ++ Acc.


% the Unique ID for this node within its document
uid(<<Id:32,_:96>>) ->
   Id.

after_id([<<Id:32,_:96>>|T],CId) when CId >= Id ->
   after_id(T,CId);
after_id(L,_CId) ->
   L.

% the URI for this file, or ID for locally built docs
uri({doc, File}) ->
   File;
uri(#{file := File}) ->
   File.

node_root(Doc, Node) ->
   Parent = dm_parent(Doc, Node),
   if Parent == [] ->
         Node;
      true ->
         node_root(Doc, Parent)
   end.

path_to_root(Doc, Node) ->
   path_to_root(Doc, Node,[Node]).

path_to_root(_, [], Acc) -> Acc;
path_to_root(Doc, Node, Acc) ->
   Parent = dm_parent(Doc, Node),
   if Parent == [] ->
         path_to_root(Doc, Parent, Acc);
      true ->
         path_to_root(Doc, Parent, [Parent|Acc])
   end.

% special case of stand-alone attribute, lead by namespace
root(#{nodes := <<_:32,2:3,_:93,A:32,3:3,B:93>>}) ->
   <<A:32,3:3,B:93>>;
% the root node of the document. Does not have to be a document
root(#{nodes := Nodes}) ->
   MaybeRoot = binary_part(Nodes, 0, 16),
   MRootSize = get_size(MaybeRoot),
   MultiRoot = byte_size(Nodes) =/= MRootSize * ?BS + ?BS,
   %?dbg("MRootSize",MRootSize),
   %?dbg("byte_size(Nodes)",byte_size(Nodes)),
   if MultiRoot ->
         root_1(Nodes);
      true ->
         MaybeRoot
   end.

root_1(<<>>) ->
   [];
root_1(Bin) ->
   Root = binary_part(Bin, 0, 16),
   Size = get_size(Root),
   BSize = byte_size(Bin),
   [Root|root_1( binary_part(Bin, Size * ?BS + ?BS, BSize - (Size * ?BS + ?BS)) )].



%% ====================================================================
%% XDM Accessor functions, dm_* Data Model
%% ====================================================================

% return all attribute nodes for an element
dm_attributes(_Doc,<<_Id:32,1:3,0:5,_Nsp:8,_Name:16,_Offset:32,_Size:32>>) -> % no atts/ns
   [];
dm_attributes(#{nodes := Nodes},<<Id:32,1:3,AtNsSize:5,_Nsp:8,_Name:16,_Offset:32,Size:32>>) ->
   Possible = if AtNsSize == 31 ->
                    binary_part(Nodes, Id * ?BS, Size * ?BS);
                 true ->
                    binary_part(Nodes, Id * ?BS, AtNsSize * ?BS)
              end,
   get_attributes_1(Possible);
dm_attributes(_Doc,_Node) ->
   [].

% return the base-uri for a node if there is one
dm_base_uri(_,[]) -> [];
dm_base_uri(#{base := Base},<<_:32,0:3,_:93>>) ->
   Base;
dm_base_uri(#{base  := Base,
              nodes := Nodes,
              texts := Texts,
              names := #{"base" := LnId},
              namsp := #{"http://www.w3.org/XML/1998/namespace" := NsId}} = Doc,
            <<_:32,1:3,_:5,_Nsp:8,_Name:16,_Offset:32,_:32>> = Node) ->
   Path = path_to_root(Doc,Node),
   augment_base_uri(Texts,Nodes,Base,Path,NsId,LnId);
dm_base_uri(#{base := Base},<<_:32,1:3,_:93>>) -> % no base in document
   Base;
dm_base_uri(_,<<_:32,2:3,_:93>>) ->
   [];
dm_base_uri(Doc,<<_:32,N:3,_:93>> = Node) when N == 3;
                                               N == 4;
                                               N == 5 ->
   Parent = dm_parent(Doc,Node),
   if Parent == [] ->
         [];
      true ->
         dm_base_uri(Doc,Parent)
   end;
dm_base_uri(Doc,<<_:32,6:3,_:93>> = Node) ->
   Parent = dm_parent(Doc,Node),
   dm_base_uri(Doc,Parent).

augment_base_uri(_,_,CurrentBase,[],_,_) -> CurrentBase;
augment_base_uri(Texts,Nodes,CurrentBase,[<<_:32,0:3,_:61,_:32>>|Rest],NsId,LnId) ->
   augment_base_uri(Texts,Nodes,CurrentBase,Rest,NsId,LnId);
augment_base_uri(Texts,Nodes,CurrentBase,[<<Id:32,1:3,_:61,Size:32>>|Rest],NsId,LnId) ->
   Possible = binary_part(Nodes, Id * ?BS, Size * ?BS),
   %{_, Resolved} = xqerl_lib:resolve_against_base_uri(Base, XmlBase)
   case get_attribute_by_eqname(Possible,NsId,LnId) of
      [] ->
         augment_base_uri(Texts,Nodes,CurrentBase,Rest,NsId,LnId);
      <<_:32,3:3,_:29,Value:32,_:32>> ->
         Rel = maps:get(Value,Texts),
         Resolved = xqerl_lib:resolve_against_base_uri(CurrentBase, Rel),
         augment_base_uri(Texts,Nodes,Resolved,Rest,NsId,LnId)
   end.

% return all child nodes for an element or document, 
% children can not be namespace, attribute, or document nodes
dm_children(#{nodes := Nodes},<<Id:32,0:64,Size:32>>) ->
   Possible = binary_part(Nodes, Id * ?BS, Size * ?BS),
   get_children_1(Possible);
dm_children(#{nodes := Nodes},<<Id:32,1:3,_AtNsSize:5,_Nsp:8,_Name:16,_Offset:32,Size:32>>) ->
   Possible = binary_part(Nodes, Id * ?BS, Size * ?BS),
   %?dbg("Possible",Possible),
   %?dbg("Nodes",Nodes),
   %Possible = binary_part(Nodes, (Id * ?BS) + (AtNsSize * ?BS), (Size - AtNsSize) * ?BS),
   get_children_1(Possible);
dm_children(#{nodes := _Nodes},_Node) ->
   [].

% Returns the absolute URI of the resource from which the Document Node was constructed, 
% or the empty sequence if no such absolute URI is available.
dm_document_uri(#{file := Uri},<<_:32,0:64,_:32>>) when not is_integer(Uri) ->
   Uri;
dm_document_uri(_Doc,_Node) ->
   [].

dm_is_id(#{names := #{"id" := LnId},
           namsp := #{"http://www.w3.org/XML/1998/namespace" := NsId}},
         <<_:32,3:3,_:5,NsId:8,LnId:16,_:32,_:32>>) ->
   true;
dm_is_id(_,<<_:32,3:3,1:2,_:3,_:8,_:16,_:32,_:32>>) ->
   true;
dm_is_id(_,_) ->
   false.

dm_is_idrefs(_,<<_:32,3:3,2:2,_:3,_:8,_:16,_:32,_:32>>) ->
   true;
dm_is_idrefs(_,_) ->
   false.

dm_namespace_nodes(_Doc,<<_:32,1:3,0:5,_:96>>) -> % no atts/ns
   [];
dm_namespace_nodes(#{nodes := Nodes},<<Id:32,1:3,AtNsSize:5,_Nsp:8,_Name:16,_Offset:32,Size:32>>) ->
   Possible = if AtNsSize == 31 ->
                    binary_part(Nodes, Id * ?BS, Size * ?BS);
                 true ->
                    binary_part(Nodes, Id * ?BS, AtNsSize * ?BS)
              end,
   get_namespaces_1(Possible);
dm_namespace_nodes(_Doc,_Node) ->
   [].

dm_nilled(_,_) -> % can only work with schema typed elements
   false.

dm_node_kind(_,<<_:32,0:3,_:93>>) ->
   document;
dm_node_kind(_,<<_:32,1:3,_:93>>) ->
   element;
dm_node_kind(_,<<_:32,2:3,_:93>>) ->
   namespace;
dm_node_kind(_,<<_:32,3:3,_:93>>) ->
   attribute;
dm_node_kind(_,<<_:32,4:3,_:93>>) ->
   text;
dm_node_kind(_,<<_:32,5:3,_:93>>) ->
   comment;
dm_node_kind(_,<<_:32,6:3,_:93>>) ->
   'processing-instruction'.

dm_node_name(_,<<_:32,N:3,_:93>>) when N == 0;
                                       N == 4;
                                       N == 5->
   [];
dm_node_name(#{names := Names,
               namsp := Namsp},
             <<_:32,N:3,_:5,Nsp:8,Name:16,_:32,_:32>>) when N == 1;
                                                            N == 3 ->
   LocalName = lookup_by_value(Names,Name),
   Namespace = lookup_by_value(Namsp,Nsp),
   {Namespace,LocalName};
dm_node_name(#{names := Names},
             <<_:32,2:3,_:5,_:8,Name:16,_:32,_:32>>) ->
   LocalName = lookup_by_value(Names,Name),
   if LocalName == [] ->
         [];
      true ->
         {[],LocalName}
   end;
dm_node_name(#{names := Names},
             <<_:32,6:3,_:5,_:8,Name:16,_:32,_:32>>) ->
   LocalName = lookup_by_value(Names,Name),
   {'no-namespace',LocalName}.

% document has no parent
dm_parent(#{nodes := _Nodes},<<_:32,0:64,_:32>>) -> [];
%element - no parent
dm_parent(#{nodes := _Nodes},<<_:32,1:3,_:29,0:32,_:32>>) -> [];
dm_parent(#{nodes := _Nodes},<<1:32,1:3,_:29,_:32,_:32>>) -> [];
% all other nodes - no parent
dm_parent(#{nodes := _Nodes},<<_:32,N:3,_:61,0:32>>) when N > 1 -> [];
dm_parent(#{nodes := _Nodes},<<1:32,N:3,_:61,_:32>>) when N > 1 -> [];
% element with parent
dm_parent(#{nodes := Nodes},<<Id:32,1:3,_:29,Offset:32,_:32>>) ->
   ParPos = (Id - Offset -1) * ?BS,
   binary_part(Nodes, ParPos, ?BS);
% all other nodes with parent
dm_parent(#{nodes := Nodes},<<Id:32,_:64,Offset:32>>) ->
   ParPos = (Id - Offset - 1) * ?BS,
   binary_part(Nodes, ParPos, ?BS).

dm_string_value(#{nodes := Nodes,
                  texts := Texts},<<Id:32,N:3,_:61,Size:32>>) when N == 0;
                                                                   N == 1 ->
   Possible = binary_part(Nodes, Id * ?BS, Size * ?BS),
   AllTexts = get_texts_1(Possible),
   lists:flatmap(fun(<<_:64,Value:32,_:32>>) ->
                       maps:get(Value,Texts)
                 end, AllTexts);
dm_string_value(#{texts := Texts},<<_:32,N:3,_:29,Value:32,_:32>>) when N == 3;
                                                                        N == 4;
                                                                        N == 5;
                                                                        N == 6 ->
   maps:get(Value,Texts);
% namespace returns URI
dm_string_value(#{namsp := Namsp},<<_:32,2:3,_:5,Nsp:8,_:80>>) ->
   lookup_by_value(Namsp,Nsp).

dm_type_name(_,<<_:32,1:3,_:93>>) ->
   'xs:untyped';
dm_type_name(_,<<_:32,3:3,_:93>>) ->
   'xs:untypedAtomic';
dm_type_name(_,<<_:32,4:3,_:93>>) ->
   'xs:untypedAtomic';
dm_type_name(_,_) ->
   [].

dm_typed_value(Doc,Node) ->
   dm_string_value(Doc, Node).

dm_unparsed_entity_public_id(_,_) ->
   [].

dm_unparsed_entity_system_id(_,_) ->
   [].

%% ====================================================================
%% Merge and Extract functions for XML trees
%% ====================================================================

empty_doc() ->
   #{file  => "",
     base  => "",
     names => #{},
     namsp => #{},
     texts => #{},
     nodes => <<>>}.


% Creates a copy of this node and it's sub-tree as its own node. 
% Doc shrinks to only what is in use.
% Document URI is cleared, base URI is that of this node.
% Namespaces that are in-scope outside this node are copied in as children of the root element (if any).
% If the root is an attribute or processing-instruction, node 1 is its namespace, node 2 is the attribute (special case).
%  This means that PI has no-namespace as namespace and attribute has whatever it is.
copy(Doc,Node) ->
   NodeKind = dm_node_kind(Doc, Node),
   EmptyDoc = empty_doc(),
   if NodeKind == attribute ->
         {ANs,ALn} = dm_node_name(Doc, Node),
         APx = prefix(Doc, Node, ANs),
         AVal = dm_string_value(Doc, Node),
         
         {ANsId,Doc1} = get_namespace_id(EmptyDoc, ANs),
         {APxId,Doc2} = get_local_name_id(Doc1, APx),
         {ALnId,Doc3} = get_local_name_id(Doc2, ALn),
         {AVlId,Doc4} = get_text_id(Doc3, AVal),

         AId    = case dm_is_id(Doc, Node) of true -> 1; _ -> 0 end,
         AIdRef = case dm_is_idrefs(Doc, Node) of true -> 2; _ -> 0 end,
         
         NewNs = namespace_node(ANsId, APxId, 0, 1),
         NewAt = attribute_node(ANsId, ALnId, AVlId, AId + AIdRef, 0, 2),
         NewNodes = erlang:iolist_to_binary([NewNs,NewAt]),
         Doc5 = add_text_lookup(Doc4),
         {Doc5#{nodes := NewNodes},NewAt};
      NodeKind == document ->
         {Doc#{file := ""},Node};
      NodeKind == 'processing-instruction' ->
         {ANs,ALn} = dm_node_name(Doc, Node),
         AVal = dm_string_value(Doc, Node),
         {ANsId,Doc1} = get_namespace_id(EmptyDoc, ANs),
         {ALnId,Doc2} = get_local_name_id(Doc1, ALn),
         {AVlId,Doc3} = get_text_id(Doc2, AVal),
         NewPi = pi_node(ANsId, ALnId, AVlId, 0, 1),
         Doc4 = add_text_lookup(Doc3),
         {Doc4#{nodes := NewPi},NewPi};
      NodeKind == namespace ->
         Prefix = case dm_node_name(Doc, Node) of
                     [] ->
                        [];
                     {_,P} ->
                        P
                  end,
         Uri = dm_string_value(Doc, Node),
         {ANsId,Doc1} = get_namespace_id(EmptyDoc, Uri),
         {APxId,Doc2} = get_local_name_id(Doc1, Prefix),
         NewNs = namespace_node(ANsId, APxId, 0, 1),
         {Doc2#{nodes := NewNs},NewNs};
      NodeKind == text ->
         AVal = dm_string_value(Doc, Node),
         {AVlId,Doc1} = get_text_id(EmptyDoc, AVal),
         NewTx = text_node(AVlId, 0, 1),
         Doc2 = add_text_lookup(Doc1),
         {Doc2#{nodes := NewTx},NewTx};
      NodeKind == comment ->
         AVal = dm_string_value(Doc, Node),
         {AVlId,Doc1} = get_text_id(EmptyDoc, AVal),
         NewCt = comment_node(AVlId, 0, 1),
         Doc2 = add_text_lookup(Doc1),
         {Doc2#{nodes := NewCt},NewCt};
      NodeKind == element ->
         case uid(Node)of
            1 ->{Doc#{file := ""},Node};
            _ ->
               NewBaseUri = dm_base_uri(Doc, Node),
               InScopeNs = inscope_namespaces(Doc, Node),
               {Doc1,Ct} = copy(Doc, Node, 1, EmptyDoc#{base  := NewBaseUri}, InScopeNs),
               Doc2 = add_text_lookup(Doc1),
               {Doc2,Ct}
         end
   end.

copy(OldDoc,Node, Position, NewDoc, OuterNamespaces) ->
   OuterNamespaces1 = lists:keydelete('no-namespace',1,
                        lists:keydelete("xml", 2, OuterNamespaces)),
   NsFold = fun({Ns,Px},{Doc,Dist}) ->
                  {NsId,Doc1} = get_namespace_id(Doc, Ns),
                  {PxId,Doc2} = get_local_name_id(Doc1, Px),
                  NewNs = namespace_node(NsId, PxId, Dist, Dist + Position),
                  {NewNs,{Doc2,Dist + 1}}               
            end,
   {NSNodes,{Doc1,Dist1}} = lists:mapfoldl(NsFold, {NewDoc,1}, OuterNamespaces1),
   AtFold = fun(<<_:32,3:3,IdFlag:2,0:3,_:8,_:16,_:32,_:32>> = ANode,{Doc,Dist}) ->
                  {Ns,Px} = dm_node_name(OldDoc, ANode),
                  Val = dm_string_value(OldDoc, ANode),
                  {NsId,Doc1a} = get_namespace_id(Doc, Ns),
                  {NmId,Doc2a} = get_local_name_id(Doc1a, Px),
                  {TxId,Doc3a} = get_text_id(Doc2a, Val),
                  NewAtt = attribute_node(NsId, NmId, TxId, IdFlag, Dist, Dist + Position),
                  {NewAtt,{Doc3a,Dist + 1}}
            end,
   {AtNodes,{Doc2,Dist2}} = lists:mapfoldl(AtFold, {Doc1,Dist1}, dm_attributes(OldDoc, Node)),
   ChFold = fun(CNode,{Doc,Pos}) ->
                  copy(OldDoc,CNode, {Position,Pos}, Doc)
            end,
   {ChNodes,{Doc3,_}} = lists:mapfoldl(ChFold, {Doc2,Position + Dist2}, dm_children(OldDoc, Node)),
   All = lists:flatten([NSNodes, AtNodes, ChNodes]),
   Size = length(All),
   {ENs,EPx} = dm_node_name(OldDoc, Node),
   {ENsId,Doc4} = get_namespace_id(Doc3, ENs),
   {ENmId,Doc5} = get_local_name_id(Doc4, EPx),
   Elem = element_node(max(31,Dist2), ENsId, ENmId, 0, Size, 1),
   NewNodes = erlang:iolist_to_binary([Elem|All]),
   {Doc5#{nodes := NewNodes}, Elem}.

% 'processing-instruction'
copy(OldDoc, <<_:32,6:3,_:93>> = Node, {ParentPos,Position}, NewDoc) ->
   Offset = Position - ParentPos,
   {Namespace,Name} = dm_node_name(OldDoc, Node),
   {NmId,Doc1} = get_local_name_id(NewDoc, Name),
   {NsId,Doc2} = get_namespace_id(Doc1, Namespace),
   Text = dm_string_value(OldDoc, Node),
   {TxId,Doc3} = get_text_id(Doc2, Text),
   NewNode = pi_node(NsId, NmId, TxId, Offset, Position),
   {NewNode,{Doc3,Position + 1}};
% comment
copy(OldDoc, <<_:32,5:3,_:93>> = Node, {ParentPos,Position}, NewDoc) ->
   Offset = Position - ParentPos,
   Text = dm_string_value(OldDoc, Node),
   {TxId,Doc1} = get_text_id(NewDoc, Text),
   NewNode = comment_node(TxId, Offset, Position),
   {NewNode,{Doc1,Position + 1}};
% text
copy(OldDoc, <<_:32,4:3,_:93>> = Node, {ParentPos,Position}, NewDoc) ->
   Offset = Position - ParentPos,
   Text = dm_string_value(OldDoc, Node),
   {TxId,Doc1} = get_text_id(NewDoc, Text),
   NewNode = text_node(TxId, Offset, Position),
   {NewNode,{Doc1,Position + 1}};
% element
copy(OldDoc, <<_:32,1:3,_:93>> = Node, {ParentPos,Position}, NewDoc) ->
   Offset = Position - ParentPos,
   NsFold = fun(NsNode,{Doc,Dist}) ->
                  Ns = dm_string_value(OldDoc, NsNode),
                  Px = case dm_node_name(OldDoc, NsNode) of
                          [] ->
                             [];
                          {_,P} ->
                             P
                       end,
                  {NsId,Doc1} = get_namespace_id(Doc, Ns),
                  {PxId,Doc2} = get_local_name_id(Doc1, Px),
                  NewNs = namespace_node(NsId, PxId, Dist, Dist + Position),
                  {NewNs,{Doc2,Dist + 1}}               
            end,
   {NSNodes,{Doc1,Dist1}} = lists:mapfoldl(NsFold, {NewDoc,1}, dm_namespace_nodes(OldDoc, Node)),
   AtFold = fun(<<_:32,3:3,IdFlag:2,0:3,_:8,_:16,_:32,_:32>> = ANode,{Doc,Dist}) ->
                  {Ns,Px} = dm_node_name(OldDoc, ANode),
                  Val = dm_string_value(OldDoc, ANode),
                  {NsId,Doc1a} = get_namespace_id(Doc, Ns),
                  {NmId,Doc2a} = get_local_name_id(Doc1a, Px),
                  {TxId,Doc3a} = get_text_id(Doc2a, Val),
                  NewAtt = attribute_node(NsId, NmId, TxId, IdFlag, Dist, Dist + Position),
                  {NewAtt,{Doc3a,Dist + 1}}
            end,
   {AtNodes,{Doc2,Dist2}} = lists:mapfoldl(AtFold, {Doc1,Dist1}, dm_attributes(OldDoc, Node)),
   ChFold = fun(CNode,{Doc,Pos}) ->
                  copy(OldDoc,CNode, {Position,Pos}, Doc)
            end,
   {ChNodes,{Doc3,_}} = lists:mapfoldl(ChFold, {Doc2,Position + Dist2}, dm_children(OldDoc, Node)),
   All = lists:flatten([NSNodes,AtNodes,ChNodes]),
   Size = length(All),
   {ENs,EPx} = dm_node_name(OldDoc, Node),
   {ENsId,Doc4} = get_namespace_id(Doc3, ENs),
   {ENmId,Doc5} = get_local_name_id(Doc4, EPx),
   Elem = element_node(max(31,Dist2), ENsId, ENmId, Offset, Size, Position),
   {[Elem|All],{Doc5,Position + Size + 1}}.


% inserts INode (with sub-tree from IDoc) at Pos into this Doc
% Namespace copy mode?
insert(_Doc,_IDoc,_INode,_Pos) ->
   ok.

% removes Node (and sub-tree) from Doc
% removes no namespaces, texts, or names from the doc - just faster
remove(_Doc,_Node) ->
   ok.



%% XML doc is a map: #{file  => DocumentUri,- URI from the document during loading, doc-store lookup key
%%                     base  => BaseUri,    - Base URI for the document. can be different than Doc URI, e.g. set in query, also overridden by xml:base
%%                     names => NCNames,    - map of string() to integer(), key is the NCName, value is NAME ID below
%%                     namsp => Namespaces, - map of string() to integer(), key is the URI, value is NSP ID below
%%                     texts => TextValues, - map of integer() to string(), key is the 'Text Reference' ID below, value is the text
%%                     nodes => NodeBinary  - positional binary of 16 bytes with the following layout
%%                    }




%% ====================================================================
%% Internal functions
%% ====================================================================

lookup_by_value(Map, Value) ->
   List = maps:to_list(Map),
   case lists:keyfind(Value, 2, List) of
      false ->
        [];
      {Key,Value} ->
         Key
   end.

lookup_by_key(Map, Key) ->
   maps:get(Key, Map, []).

% ignore attributes
get_namespaces_1(<<_:32,3:3,_:93,Rest/binary>>) ->
   get_namespaces_1(Rest);
% collect namespaces
get_namespaces_1(<<_:32,2:3,_:93,Rest/binary>> = Bin) ->
   [binary_part(Bin, {0,?BS})|get_namespaces_1(Rest)];
% end of the road
get_namespaces_1(_) ->
   [].

% ignore namespaces
get_attributes_1(<<_:32,2:3,_:93,Rest/binary>>) ->
   get_attributes_1(Rest);
% collect attributes
get_attributes_1(<<_:32,3:3,_:93,Rest/binary>> = Bin) ->
   [binary_part(Bin, {0,?BS})|get_attributes_1(Rest)];
% end of the road
get_attributes_1(_) ->
   [].

get_texts_1(<<_:32,4:3,_:93,Rest/binary>> = Bin) ->
   [binary_part(Bin, {0,?BS})|get_texts_1(Rest)];
get_texts_1(<<_:128,Rest/binary>>) ->
   get_texts_1(Rest);
get_texts_1(<<>>) ->
   [].

get_children_1(<<_:32,1:3,_:5,_:8,_:16,_:32,Size:32,_/binary>> = Bin) when Size > 0 ->
   Child = binary_part(Bin, {0,?BS}),
   %?dbg("Child",Child),
   NextPoint = (Size + 1) * ?BS,
   Next  = if NextPoint >= byte_size(Bin) ->
                 <<>>;
              true ->
                 binary_part(Bin, {NextPoint, byte_size(Bin) - NextPoint })
           end,
   %?dbg("Next",Next),
   [Child|get_children_1(Next)];
get_children_1(<<_:32,1:3,_:5,_:8,_:16,_:32,0:32,Rest/binary>> = Bin) ->
   Child = binary_part(Bin, {0,?BS}),
   %?dbg("Child",Child),
   [Child|get_children_1(Rest)];
get_children_1(<<_:32,N:3,_:93>> = Bin) when N == 4;
                                             N == 5;
                                             N == 6 ->
   Child = binary_part(Bin, {0,?BS}),
   %?dbg("Child",Child),
   [Child];
get_children_1(<<_:32,N:3,_:93,Rest/binary>> = Bin) when N == 4;
                                                         N == 5;
                                                         N == 6 ->
   Child = binary_part(Bin, {0,?BS}),
   %?dbg("Child",Child),
   %?dbg("Rest",Rest),
   [Child|get_children_1(Rest)];
get_children_1(<<_:32,N:3,_:93,Rest/binary>>) when N == 0;
                                                   N == 2;
                                                   N == 3 ->
   %?dbg("Rest",N),
   get_children_1(Rest);
get_children_1(_) ->
   %?dbg("O",O),
   [].

get_attribute_by_eqname(<<_:32,3:3,0:5,NsId:8,LnId:16,_:32,_:32,_/binary>> = Bin,NsId,LnId) ->
   binary_part(Bin, {0,?BS});
get_attribute_by_eqname(<<_:32,N:3,_:93,Rest/binary>>,NsId,LnId) when N == 2;
                                                                      N == 3 ->
   get_attribute_by_eqname(Rest,NsId,LnId);
% end of the road
get_attribute_by_eqname(_,_,_) ->
   [].

get_size(<<_:32,N:3,_:61,Size:32>>) when N == 0;
                                         N == 1 ->
   Size;
get_size(_) ->
   0.

get_local_name_id(#{names := Names} = Doc, Val) ->
   case maps:find(Val, Names) of
      {ok, Id} ->
         {Id,Doc};
      error ->
         Cnt = maps:size(Names) + 1,
         NewNames = maps:put(Val, Cnt, Names),
         {Cnt, Doc#{names := NewNames}}
   end.

get_namespace_id(#{namsp := Names} = Doc, Val) ->
   case maps:find(Val, Names) of
      {ok, Id} ->
         {Id,Doc};
      error ->
         Cnt = maps:size(Names) + 1,
         NewNames = maps:put(Val, Cnt, Names),
         {Cnt, Doc#{namsp := NewNames}}
   end.

get_text_id(#{texts := Names} = Doc, Val) ->
   case maps:find(Val, Names) of
      {ok, Id} ->
         {Id,Doc};
      error ->
         Cnt = maps:size(Names) + 1,
         NewNames = maps:put(Val, Cnt, Names),
         {Cnt, Doc#{texts := NewNames}}
   end.

add_text_lookup(#{texts := Texts} = Doc) ->
   F = fun(K,V,AccIn) -> AccIn#{V => K} end,
   TextLu = maps:fold(F,#{},Texts),
   Doc#{texts := TextLu}.
