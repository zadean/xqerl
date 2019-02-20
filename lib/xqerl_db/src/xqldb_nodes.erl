%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2019 Zachary N. Dean  All Rights Reserved.
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

%% This module is for use with DB nodes only. Root is always single document.
-module(xqldb_nodes).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================

-export([document/1,
         element/4,
         text/1,
         attribute/4,
         comment/1,
         proc_inst/2]).

-export([nodes_to_postings/4,
         ids_to_root/1]).

%% NodeBin filters on type name, value
-export([is_element/2,
         is_attribute/3,
         is_proc_inst/2,
         is_comment/1,
         is_text/2,
         is_document/1]).

-export([copy_node/1,
         
test/0]).


%% d - Kind:8 | Text:32                   = 40
document(UriRef) ->
   <<?document, UriRef:32/integer>>.

%% e - Kind:8 |         | Name:21 | Ns:11 | NsF:1 | Atts:7 = 48
element(NameRef, NsRef, HasNs, AttCnt) ->
   H = if HasNs -> 1; true -> 0 end,              
   <<?element, NameRef:21/integer, NsRef:11/integer, H:1, AttCnt:7/integer>>.

%% t - Kind:8 | Text:32 |                 = 40
text(TextRef) ->
   <<?text, TextRef:32/integer>>.

%% a - Kind:4 | Type:4  | Text:32 | Name:21 | Ns:11 = 72
attribute(NameRef, NsRef, TextRef, Type) ->
   <<?attribute:4, Type:4, TextRef:32/integer, NameRef:21/integer, NsRef:11>>.

%% c - Kind:8 | Text:32 |                 = 40
comment(TextRef) ->
   <<?comment:8, TextRef:32/integer>>.

%% p - Kind:8 | Text:32 | Name:24         = 64
proc_inst(NameRef, TextRef) ->
   <<?proc_inst:8, TextRef:32/integer, NameRef:24/integer>>.


% List of nodes as index postings
nodes_to_postings(Index, Field, Nodes, Timestamp) ->
   [{Index, Field, Id, Bin, [], Timestamp} || {Id, Bin} <- Nodes].


% Path to root from binary node id 
ids_to_root(NodeId) ->
   Size = byte_size(NodeId) div 4,
   [begin
       B = I * 4,
       <<N:B/binary,_/binary>> = NodeId,
       N
    end ||
    I <- lists:seq(0, Size)].

%% Returns if this NodeBin is an element with Name, NameId is a list.
-spec is_element(Name :: {UriId  :: '_' | non_neg_integer(), 
                          NameId :: '_' | [non_neg_integer()]},
                 NodeBin :: binary()) ->
         boolean().

is_element(Name, <<?element, NameRef:21/integer, 
                             NsRef:11/integer, _:1, _:7/integer>>) -> 
   case Name of
      {'_', '_'} -> true;
      {'_', [NameRef]} -> true;
      {NsRef, '_'} -> true;
      {NsRef, [NameRef]} -> true;
      {NsRef, Names} ->
         [NameRef] == [N || N <- Names, N == NameRef];
      _ -> false
   end;
is_element(_, _) -> false.

%% Returns if this NodeBin is an attribute with Name and Value, NameId is a list.
-spec is_attribute(Name :: {UriId  :: '_' | non_neg_integer(), 
                            NameId :: '_' | [non_neg_integer()]},
                   Value :: '_' | non_neg_integer(),
                   NodeBin :: binary()) ->
         boolean().

is_attribute(Name, Value, <<?attribute:4, _:4, TextRef:32/integer, 
                            NameRef:21/integer, NsRef:11>>) -> 
   case {Name, Value} of
      {{'_', '_'}, '_'} -> true;
      {{'_', [NameRef]}, '_'} -> true;
      {{NsRef, '_'}, '_'} -> true;
      {{NsRef, [NameRef]}, '_'} -> true;
      {{NsRef, Names}, '_'} ->
         [NameRef] == [N || N <- Names, N == NameRef];
      {{'_', '_'}, TextRef} -> true;
      {{'_', [NameRef]}, TextRef} -> true;
      {{NsRef, '_'}, TextRef} -> true;
      {{NsRef, [NameRef]}, TextRef} -> true;
      {{NsRef, Names}, TextRef} ->
         [NameRef] == [N || N <- Names, N == NameRef];
      _ -> false
   end;
is_attribute(_, _, _) -> false.

%% Returns if this NodeBin is a processing-instruction with NameId.
-spec is_proc_inst(Name :: '_' | non_neg_integer(),
                   NodeBin :: binary()) ->
         boolean().

is_proc_inst(NameRef, <<?proc_inst:8, _:32/integer, NameRef:24/integer>>) -> 
   true;
is_proc_inst(_, _) -> false.

%% Returns if this NodeBin is a comment.
-spec is_comment(NodeBin :: binary()) -> boolean().

is_comment(<<?comment:8, _:32/integer>>) -> 
   true;
is_comment(_) -> false.

%% Returns if this NodeBin is a text with Value.
-spec is_text(Value :: '_' | non_neg_integer(),
              NodeBin :: binary()) ->
         boolean().

is_text(Value, <<?text, TextRef:32/integer>>) ->
   case Value of
      '_' -> true;
      TextRef -> true;
      _ -> false
   end;
is_text(_, _) -> false.

%% Returns if this NodeBin is a document. TODO add root element name
-spec is_document(NodeBin :: binary()) -> boolean().

is_document(<<?document, _:32/integer>>) -> 
   true;
is_document(_) -> false.



%% Get the Erlang node this came from.
get_source_pid(#xqDocumentNode{identity = {Node,_,_}}) -> Node;
get_source_pid(#xqElementNode{identity = {Node,_,_}}) -> Node;
get_source_pid(#xqAttributeNode{identity = {Node,_,_}}) -> Node;
get_source_pid(#xqTextNode{identity = {Node,_,_}}) -> Node;
get_source_pid(#xqCommentNode{identity = {Node,_,_}}) -> Node;
get_source_pid(#xqNamespaceNode{identity = {Node,_,_}}) -> Node;
get_source_pid(#xqProcessingInstructionNode{identity = {Node,_,_}}) -> Node.

%% Get the Doc this node this came from.
get_doc_id(#xqDocumentNode{identity = {_,I,_}}) -> I;
get_doc_id(#xqElementNode{identity = {_,I,_}}) -> I;
get_doc_id(#xqAttributeNode{identity = {_,I,_}}) -> I;
get_doc_id(#xqTextNode{identity = {_,I,_}}) -> I;
get_doc_id(#xqCommentNode{identity = {_,I,_}}) -> I;
get_doc_id(#xqNamespaceNode{identity = {_,I,_}}) -> I;
get_doc_id(#xqProcessingInstructionNode{identity = {_,I,_}}) -> I.

%% Get the Doc this node this came from.
get_node_id(#xqDocumentNode{identity = {_,_,I}}) -> I;
get_node_id(#xqElementNode{identity = {_,_,I}}) -> I;
get_node_id(#xqAttributeNode{identity = {_,_,I}}) -> I;
get_node_id(#xqTextNode{identity = {_,_,I}}) -> I;
get_node_id(#xqCommentNode{identity = {_,_,I}}) -> I;
get_node_id(#xqNamespaceNode{identity = {_,_,I}}) -> I;
get_node_id(#xqProcessingInstructionNode{identity = {_,_,I}}) -> I.


%% makes a deep copy of the node given in `record` form without ancestors.
%% all in-scope namespaces are retained here and can be stripped by any
%% new parent nodes making another copy.
copy_node(XNode) ->
   Node = erlang:node(get_source_pid(XNode)),
   case Node == node() of
      false ->
         % non-local XML should be built where it came from
         rpc:call(Node, ?MODULE, ?FUNCTION_NAME, [XNode]);
      true ->
         copy_local_node(XNode)
   end.
% each DB node has {SupPid, DocId, NodeId} as its ID Sup gives node() and DB
% in-memory nodes have {Ref, NodeId}

copy_local_node(XNode) ->
   DbPid = get_source_pid(XNode),
   DocId = get_doc_id(XNode),
   NodeId = get_node_id(XNode),
   DB = xqldb_db:database(DbPid),
   Server = maps:get(index, DB),
   {Low, High} = get_node_id_range(NodeId),
   Filter = filter_fun(High, NodeId), 
   AllNodes = merge_index:range_sync(Server, doc, DocId, Low, High, any, Filter),
   AllNodes.

get_node_id_range(<<>>) -> {undefined, undefined};
get_node_id_range(NodeId) -> 
   ByteSize = byte_size(NodeId),
   HeadSize = (ByteSize - 4),
   <<H:HeadSize/binary,T:32/integer>> = NodeId,
   T1 = T + 1,
   High = <<H:HeadSize/binary,T1:32/integer>>,
   {trunc_id(NodeId), High}.

trunc_id(<<>>) -> <<>>;
trunc_id(<<_:4/binary>> = A) -> A;
trunc_id(<<_:8/binary>> = A) -> A;
trunc_id(<<A:8/binary,_/binary>>) -> <<A:8/binary>>.

test() ->
   DB = xqldb_db:database(<<"file:///git/zadean/xqerl/test/QT3-test-suite/fn/">>),
   Nd = #xqDocumentNode{identity = {maps:get(db_name, DB),<<"72">>,<<0,0,0,1,0,0,0,12>>}},
   copy_node(Nd).

filter_fun(undefined, _) ->
   fun(_, _) -> true end;
filter_fun(High, NodeId) ->
   fun({L,_,_},_) when L < NodeId -> false;
      ({H,_,_},_) when High =< H -> false;
      (_,_) -> true
   end.


%% ====================================================================
%% Internal functions
%% ====================================================================
 
%% d - Kind:8 | Text:32                   = 40
%% e - Kind:8 |         | Name:21 | Ns:11 | NsF:1 | Atts:7 = 48
%% t - Kind:8 | Text:32 |                 = 40
%% a - Kind:4 | Type:4  | Text:32 | Name:21 | Ns:11 = 72
%% c - Kind:8 | Text:32 |                 = 40
%% p - Kind:8 | Text:32 | Name:24         = 64
