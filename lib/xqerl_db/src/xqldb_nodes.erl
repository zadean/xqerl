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

-export([string_value/1,
         parent/1,
         ancestors/1,
         descendants/1,
         following/1,
         preceding/1,
         siblings/1,
         children/1,
         attributes/1]).

-export([document/1,
         element/5,
         text/1,
         attribute/5,
         comment/1,
         proc_inst/2]).

-export([trunc_id/1,
         deep_copy_node/1,
         nodes_to_postings/4,
         ids_to_root/1]).

%% NodeBin filters on type name, value
-export([is_element/2,
         is_attribute/3,
         is_proc_inst/2,
         is_comment/1,
         is_text/2,
         is_document/1]).

-export([get_doc/1, 
         base_uri/1,
         document_uri/1,
         namespace_nodes/1,
         iterator_to_node_list/2, 
         iterator_to_node_set/2, 
         iterator_to_atom_set/2, 
         iterator_to_dbl_set/2, 
         select_with_prefix/2,
         select_following_siblings/2,
         select_preceding_siblings/2,
         get_single_node/3,
         
test/0]).


%% d - Kind:8 | Text:32                   = 40
document(UriRef) ->
   <<?document, UriRef/binary>>.

%% e - Kind:8 |         | Name:21 | Ns:11 | NsF:1 | Atts:7 = 48
element(NameRef, NsRef, PxRef, HasNs, AttCnt) ->
   H = if HasNs -> 1; true -> 0 end,              
   <<?element, 
     NameRef:24/integer, NsRef:12/integer, PxRef:12/integer, 
     H:1, AttCnt:7/integer>>.

%% t - Kind:8 | Text:32 |                 = 40
text(TextRef) ->
   <<?text, TextRef/binary>>.

%% a - Kind:4 | Type:4  | Text:32 | Name:21 | Ns:11 = 72
attribute(NameRef, NsRef, PxRef, TextRef, Type) ->
   <<?attribute:4, Type:4, 
     NameRef:24/integer, NsRef:12/integer, PxRef:12/integer, TextRef/binary>>.

%% c - Kind:8 | Text:32 |                 = 40
comment(TextRef) ->
   <<?comment:8, TextRef/binary>>.

%% p - Kind:8 | Text:32 | Name:24         = 64
proc_inst(NameRef, TextRef) ->
   <<?proc_inst:8, NameRef:24/integer, TextRef/binary>>.


% List of nodes as index postings
nodes_to_postings(Index, Field, Nodes, Timestamp) ->
   [{Index, Field, Id, Bin, [], Timestamp} || {Id, Bin} <- Nodes].


% Path to root from binary node id 
ids_to_root(<<>>) -> [<<>>];
ids_to_root(NodeId) ->
   [NodeId|ids_to_root(binary:part(NodeId, {0, byte_size(NodeId) - 4}))].
%% ids_to_root(NodeId) ->
%%    Size = byte_size(NodeId) div 4,
%%    [begin
%%        B = I * 4,
%%        <<N:B/binary,_/binary>> = NodeId,
%%        N
%%     end ||
%%     I <- lists:seq(0, Size)].

%% Returns if this NodeBin is an element with Name, NameId is a list.
-spec is_element(Name :: {UriId  :: '_' | non_neg_integer(), 
                          NameId :: '_' | non_neg_integer()},
                 NodeBin :: binary()) ->
         boolean().

is_element(Name, <<?element, NameRef:24/integer, NsRef:12/integer, 
                   _PxRef:12/integer, _H:1, _AttCnt:7/integer>>) -> 
   case Name of
      {'_', '_'} -> true;
      {'_', NameRef} -> true;
      {NsRef, '_'} -> true;
      {NsRef, NameRef} -> true;
      _ -> false
   end;
is_element(_, _) -> false.

%% Returns if this NodeBin is an attribute with Name and Value, NameId is a list.
-spec is_attribute(Name :: {UriId  :: '_' | non_neg_integer(), 
                            NameId :: '_' | non_neg_integer()},
                   Value :: '_' | non_neg_integer(),
                   NodeBin :: binary()) ->
         boolean().

is_attribute(Name, Value, <<?attribute:4, _Type:4, 
                            NameRef:24/integer, NsRef:12/integer, 
                            _PxRef:12/integer, TextRef/binary>>) -> 
   case {Name, Value} of
      {{'_', '_'}, '_'} -> true;
      {{'_', NameRef}, '_'} -> true;
      {{NsRef, '_'}, '_'} -> true;
      {{NsRef, NameRef}, '_'} -> true;
      {{'_', '_'}, TextRef} -> true;
      {{'_', NameRef}, TextRef} -> true;
      {{NsRef, '_'}, TextRef} -> true;
      {{NsRef, NameRef}, TextRef} -> true;
      _ -> false
   end;
is_attribute(_, _, _) -> false.

%% Returns if this NodeBin is a processing-instruction with NameId.
-spec is_proc_inst(Name :: '_' | non_neg_integer(),
                   NodeBin :: binary()) ->
         boolean().

is_proc_inst('_', <<?proc_inst, _/binary>>) -> true;
is_proc_inst(NameRef, <<?proc_inst, NameRef:24/integer, _/binary>>) -> 
   true;
is_proc_inst(_, _) -> false.

%% Returns if this NodeBin is a comment.
-spec is_comment(NodeBin :: binary()) -> boolean().

is_comment(<<?comment, _/binary>>) -> 
   true;
is_comment(_) -> false.

%% Returns if this NodeBin is a text with Value.
-spec is_text(Value :: '_' | binary(),
              NodeBin :: binary()) ->
         boolean().

is_text(Value, <<?text, TextRef/binary>>) ->
   case Value of
      '_' -> true;
      TextRef -> true;
      _ -> false
   end;
is_text(_, _) -> false.

%% Returns if this NodeBin is a document. TODO add root element name
-spec is_document(NodeBin :: binary()) -> boolean().

is_document(<<?document, _/binary>>) -> 
   true;
is_document(_) -> false.


get_doc({DbPid, DocId, <<>>} = XNode) ->
   Node = erlang:node(DbPid),
   case Node == node() of
      false ->
         % non-local XML should be built where it came from
         rpc:call(Node, ?MODULE, ?FUNCTION_NAME, [XNode]);
      true ->
         local_doc(DbPid, DocId)
   end.

db_node_to_node(_, []) -> [];
db_node_to_node(#{db_name := DbPid} = DB, {NodeId, [{b,Bin},{d,DocId},{p,Path}]}) ->
   Map = map_from_node_bin(DB, Bin),
   Map#{id => {DbPid, DocId, NodeId},
        pa => Path}.

db_node_to_atom(_, []) -> [];
db_node_to_atom(DB, Node) ->
   Nd = db_node_to_node(DB, Node),
   Tv = xqerl_types:atomize(Nd),
   Nd#{tv => Tv}. % typed value

db_node_to_dbl(_, []) -> [];
db_node_to_dbl(DB, Node) ->
   Nd = db_node_to_node(DB, Node),
   Tv = xqerl_types:cast_as(Nd, 'xs:double'),
   Nd#{tv => Tv}. % typed value

%% db_node_to_node_key(_, []) -> [];
%% db_node_to_node_key(#{db_name := DbPid} = DB, {NodeId, [{b,Bin},{d,DocId},{p,Path}]}) ->
%%    Map = map_from_node_bin(DB, Bin),
%%    {NodeId, Map#{id => {DbPid, DocId, NodeId},
%%                  pa => Path}}.

map_from_node_bin(#{names      := Names,
                    namespaces := Nmsps},
                  <<?element, NameRef:24/integer, 
                        NsRef:12/integer, PxRef:12/integer, 
                        H:1/integer, AttCnt:7/integer>>) ->
   #{nk => element,
     nn => get_name(NsRef, PxRef, NameRef, Names, Nmsps),
     hn => if H == 1 -> true; true -> false end,
     at => AttCnt};
map_from_node_bin(DB, <<?text, TextRef/binary>>) ->
   #{nk => text,
     sv => get_string_value(TextRef, DB)};
map_from_node_bin(#{names      := Names,
                    namespaces := Nmsps} = DB, 
                  <<?attribute:4, Type:4/integer, NameRef:24/integer, 
                    NsRef:12/integer, PxRef:12/integer, TextRef/binary>>) ->
   #{nk => attribute,
     nn => get_name(NsRef, PxRef, NameRef, Names, Nmsps),
     tn => attribute_type_to_name(Type),
     sv => get_string_value(TextRef, DB)};
map_from_node_bin(_, <<?document, UriRef/binary>>) ->
   #{nk => document,
     du => UriRef};
map_from_node_bin(DB, <<?comment, TextRef/binary>>) ->
   #{nk => comment,
     sv => get_string_value(TextRef, DB)};
map_from_node_bin(#{names := Names} = DB, <<?proc_inst, NameRef:24/integer, 
                                       TextRef/binary>>) ->
   #{nk => 'processing-instruction',
     nn => {<<>>,<<>>,maps:get(NameRef, Names)},
     sv => get_string_value(TextRef, DB)}.


get_name(NsRef, PxRef, NameRef, Names, Nmsps) ->
   #{NameRef := Name} = Names,
   #{PxRef   := Px,
     NsRef   := Ns} = Nmsps,
   {Ns, Px, Name}.

attribute_type_to_name(?att_id) -> 'xs:ID';
attribute_type_to_name(?att_idref) -> 'xs:IDREF';
attribute_type_to_name(_) -> 'xs:untypedAtomic'.   

iterator_to_node_list(Iter, DB) when is_function(Iter) ->
   iterator_to_node_list(Iter(), DB);
iterator_to_node_list([Iter], DB) when is_function(Iter) ->
   iterator_to_node_list(Iter(), DB);
iterator_to_node_list([H|T], DB) ->
   [db_node_to_node(DB, H) | iterator_to_node_list(T, DB)];
iterator_to_node_list([], _) ->
   [].

   
local_doc(DbPid, DocId) ->
   DB = xqerl_context:get_db(DbPid),
   Server = maps:get(index, DB),
   [Node] = merge_index:lookup_sync(Server, doc, DocId, <<>>, true),
   db_node_to_node(DB, Node).

namespace_nodes(#{id := {DbPid, DocId, NodeId}}) ->
   DB = xqerl_context:get_db(DbPid),
   IdsToRoot = ids_to_root(NodeId), % list from current to root
   NsMaps = [get_namespaces(DB, DocId, Id) || Id <- IdsToRoot],
   IsNss = lists:foldr(fun(M, A) ->
                             maps:merge(A, M)
                       end, #{<<"xml">> => <<"http://www.w3.org/XML/1998/namespace">>}, NsMaps),
   maps:to_list(IsNss).


document_uri(#{id := {DbPid, _, <<>>},
               du := U}) ->
   #{uri   := DbUri} = xqerl_context:get_db(DbPid),
   xqldb_uri:join(DbUri, U);
document_uri(_) -> [].

base_uri(#{id := {DbPid, DocId, _}} = Node) ->
   #{index := Indx,
     uri   := DbUri} = DB = xqerl_context:get_db(DbPid),
   [Doc] = merge_index:lookup_sync(Indx, doc, DocId, <<>>, true),
   #{du := U} = db_node_to_node(DB, Doc),
   Base = xqldb_uri:join(DbUri, U),
   Ancestors = ancestors(Node),
   Steps = [{attribute, {att, <<"http://www.w3.org/XML/1998/namespace">>, <<"base">>}}],
   BaseAtts = xqldb_xpath:simple_path([Node|Ancestors], Steps),
   Fold = fun(#{sv := Sv}, OldBase) ->
                xqldb_lib:join_uris(OldBase, Sv)
          end,
   lists:foldl(Fold, Base, BaseAtts).

trunc_id(<<>>) -> <<>>;
trunc_id(<<_:4/binary>> = A) -> A;
trunc_id(<<_:8/binary>> = A) -> A;
trunc_id(<<_:12/binary>> = A) -> A;
%trunc_id(<<_:16/binary>> = A) -> A;
trunc_id(<<A:12/binary,_/binary>>) -> A.  

test() -> ok.

%% ====================================================================
%% Internal functions
%% ====================================================================
 
%% d - Kind:8 | Text:32                   = 40
%% e - Kind:8 |         | Name:21 | Ns:11 | NsF:1 | Atts:7 = 48
%% t - Kind:8 | Text:32 |                 = 40
%% a - Kind:4 | Type:4  | Text:32 | Name:21 | Ns:11 = 72
%% c - Kind:8 | Text:32 |                 = 40
%% p - Kind:8 | Text:32 | Name:24         = 64

parent_id(Par) ->
   binary:part(Par, {0, byte_size(Par) - 4}).


preceding(#{id := {DbPid, DocId, NodeId},
            nk := _} = _) ->
   Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, NodeId},
   case xqerl_lib:lget(Key) of
      undefined ->
         AnsIds = ids_to_root(NodeId),
         #{index := Indx} = DB = xqerl_context:get_db(DbPid),
         TruncH = trunc_id(NodeId),
         Filter = fun(I, L) when I < NodeId ->
                        not is_attribute({'_','_'}, '_', proplists:get_value(b, L)) andalso
                        not lists:member(I, AnsIds);
                     (_, _) -> false
                  end,
         Iter = merge_index:range(Indx, doc, DocId, <<>>, TruncH, all, Filter),
         % reversed results for predicates
         Out = lists:reverse(iterator_to_node_list(Iter, DB)),
         xqerl_lib:lput(Key, Out);
      Out ->
         Out
   end;
preceding(_) -> [].

following(#{id := {DbPid, DocId, NodeId},
            nk := _} = _) ->
   Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, NodeId},
   case xqerl_lib:lget(Key) of
      undefined ->
         #{index := Indx} = DB = xqerl_context:get_db(DbPid),
         {_Low, High} = get_node_id_range(NodeId),
         TruncL = trunc_id(NodeId),
         Filter = fun(I, L) when byte_size(I) == 4, I >= High -> 
                        not is_text('_', proplists:get_value(b, L)); % block document text
                     (I, L) when I >= High -> 
                        not is_attribute({'_','_'}, '_', proplists:get_value(b, L));
                     (_, _) -> false
                  end,
         Iter = merge_index:range(Indx, doc, DocId, TruncL, undefined, all, Filter),
         Out = iterator_to_node_list(Iter, DB),
         xqerl_lib:lput(Key, Out);
      Out ->
         Out
   end;
following(_) -> [].

descendants(#{id := {DbPid, DocId, NodeId},
              nk := Nk} = _) when Nk == element;
                                  Nk == document ->
   Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, NodeId},
   case xqerl_lib:lget(Key) of
      undefined ->
         #{index := Indx} = DB = xqerl_context:get_db(DbPid),
         {Low, High} = get_node_id_range(NodeId),
         Filter = filter_fun(Low, High),
         Iter = case NodeId of
                   <<>> ->
                      merge_index:range(Indx, doc, DocId, undefined, undefined, all, Filter);
                   _ ->
                      TruncL = trunc_id(Low),
                      TruncH = trunc_id(High),
                      if TruncL == TruncH ->
                            merge_index:lookup(Indx, doc, DocId, TruncH, Filter);
                         true ->
                            merge_index:range(Indx, doc, DocId, TruncL, TruncH, all, Filter)
                      end
                end,
         Out = iterator_to_node_list(Iter, DB),
         xqerl_lib:lput(Key, Out);
      Out ->
         Out
   end;
descendants(_) -> [].

ancestors(#{id := {DbPid, DocId, NodeId},
            nk := Nk} = _) when Nk =/= document ->
   Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, NodeId},
   case xqerl_lib:lget(Key) of
      undefined ->
         AncIds = tl(ids_to_root(NodeId)),
         DB = xqerl_context:get_db(DbPid),
         Res = [get_single_node(DB, DocId, Id) ||
                Id <- AncIds],
         xqerl_lib:lput(Key, Res);
      Out ->
         Out
   end;
ancestors(_) -> [].

siblings(#{id := _, %{DbPid, DocId, ChildId},
           nk := Nk} = Nd) when Nk =/= document ->
   Parent = parent(Nd),
   % call children on fake parent node
   children(Parent).

% child axis for DB nodes
parent(#{id := {DbPid, DocId, ChildId},
         nk := Nk} = _) when Nk =/= document ->
   ParentId = parent_id(ChildId),
   Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, ParentId},
   case xqerl_lib:lget(Key) of
      undefined ->
         #{index := Indx} = DB = xqerl_context:get_db(DbPid),
         Seg = trunc_id(ParentId),
         Filter = fun(I, _) when I == ParentId -> 
                        true;
                     (_, _) -> false
                  end,
         Res = merge_index:lookup(Indx, doc, DocId, Seg, Filter),
         [Out] = iterator_to_node_list(Res, DB),
         xqerl_lib:lput(Key, Out);
      Out ->
         Out
   end;
parent(_) -> [].

% child axis for DB nodes
children(#{id := {DbPid, DocId, NodeId},
           nk := Nk} = _) when Nk == element;
                               Nk == document ->
   Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, NodeId},
   case xqerl_lib:lget(Key) of
      undefined ->
   #{index := Indx} = DB = xqerl_context:get_db(DbPid),
   Bs = byte_size(NodeId),
   Bp = Bs + 4,
   Low  = <<NodeId:Bs/binary,0,0,0,0>>,
   High = <<NodeId:Bs/binary,255,255,255,255>>,
   LowT  = trunc_id(Low),
   HighT = trunc_id(High),
   Filter = fun(I, P) when Nk == document, byte_size(I) == Bp, I > Low, I < High -> 
                  not is_text('_', proplists:get_value(b, P)); % block document text
               (I, L) when byte_size(I) == Bp, I > Low, I < High -> 
                  not is_attribute({'_','_'}, '_', proplists:get_value(b, L));
               (_, _) -> false
            end,
   Res = if LowT == HighT ->
               merge_index:lookup(Indx, doc, DocId, LowT, Filter);
            true ->
               merge_index:range(Indx, doc, DocId, LowT, HighT, all, Filter)
         end,
   Out = iterator_to_node_list(Res, DB),
   xqerl_lib:lput(Key, Out);
      Out ->
         Out
   end;
children(_) -> [].

attributes(#{id := _,%{DbPid, DocId, NodeId},
             nk := element,
             at := Atc} = Nd) when Atc > 0  ->
   xqldb_xpath:simple_path(Nd, [{attribute, {att, '_', '_'}}]);
%%    Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, NodeId},
%%    case xqerl_lib:lget(Key) of
%%       undefined ->
%%          #{index := Indx} = DB = xqerl_context:get_db(DbPid),
%%          Bs = byte_size(NodeId),
%%          Bp = Bs + 4,
%%          Low  = <<NodeId:Bs/binary,0,0,0,0>>,
%%          High = <<NodeId:Bs/binary,255,255,255,255>>,
%%          LowT  = trunc_id(Low),
%%          HighT = trunc_id(High),
%%          Filter = fun(I, L) when byte_size(I) == Bp, I > Low, I < High -> 
%%                         is_attribute({'_','_'}, '_', proplists:get_value(b, L));
%%                      (_, _) -> false
%%                   end,
%%          Res = if LowT == HighT ->
%%                      merge_index:lookup(Indx, doc, DocId, LowT, Filter);
%%                   true ->
%%                      merge_index:range(Indx, doc, DocId, LowT, HighT, all, Filter)
%%                end,
%%          Out = iterator_to_node_list(Res, DB),
%%          xqerl_lib:lput(Key, Out);
%%       Out ->
%%          Out
%%    end;
attributes(_) -> [].

get_single_node(#{index := Indx} = DB, DocId, NodeId) ->
   Seg = trunc_id(NodeId),
   Filter = fun(I, _) when I == NodeId -> true;
               (_, _) -> false
            end,
   Res = merge_index:lookup_sync(Indx, doc, DocId, Seg, Filter),
   [Out] = iterator_to_node_list(Res, DB),
   Out.   


string_value(#{id := {_, _, _},
               nk := Nk} = N) when Nk == element;
                                   Nk == document ->
   Texts = xqldb_xpath:simple_path([N], [{descendant, text}]),
   iolist_to_binary([Sv || #{sv := Sv} <- Texts]);
string_value(#{id := {_, _, _},
               nk := Nk,
               sv := Sv} = _) when Nk == text;
                                   Nk == attribute;
                                   Nk == comment;
                                   Nk == 'processing-instruction' ->
   Sv;
string_value(_) -> [].


select_with_prefix(Set, Prefix) ->
   L = split_id(Prefix),
   MS = [{{lists:append(L, '_'),'$1'},[],['$1']}],
   ets:select(Set, MS).

select_following_siblings(Set, Prefix) ->
   L = split_id(Prefix),
   [C|R] = lists:reverse(L),
   M = lists:reverse(['$1'|R]),
   MS = [{{M,'$2'},[{'>', '$1', C}],['$2']}],
   ets:select(Set, MS).
%% select_following_siblings(Set, Prefix) ->
%%    L = split_id(Prefix),
%%    [_C|R] = lists:reverse(L),
%%    M = lists:reverse(['_'|R]),
%%    MS = [{{M,'_'},[],['$_']}],
%%    [B || {A,B} <- ets:select(Set, MS), A > L].

select_preceding_siblings(Set, Prefix) ->
   L = split_id(Prefix),
   [C|R] = lists:reverse(L),
   M = lists:reverse(['$1'|R]),
   MS = [{{M,'$2'},[{'<', '$1', C}],['$2']}],
   ets:select(Set, MS).



%% XXX better here to completely build the nodes expanding string values to
%% their full size if need be. Also get all nested nodes and add as children.
%% leave their ID as-is, this will allow getting 
%% parent/ancestor/preceding/following axes later
deep_copy_node(#{id := {DbPid, _, Id},
                 nk := Nk,
                 sv := Sv} = N) 
   when Nk =:= text;
        Nk =:= comment;
        Nk =:= attribute;
        Nk =:= 'processing-instruction' ->
   if byte_size(Sv) =:= 64 ->
         #{texts := Tab} = xqerl_context:get_db(DbPid),
         S = xqldb_string_table2:lookup(Tab, Sv),
         N#{id := {0,Id},
            sv := S};
      true ->
         N#{id := {0,Id}} 
   end;
%% element and document node copies should pull in all descendant nodes at one 
%% time. This can be an iterator list. Also, get the inscope-namespaces.
deep_copy_node(#{id := {DbPid, DocId, NodeId}}) ->
   DB = xqerl_context:get_db(DbPid),
   IdsToRoot = ids_to_root(NodeId), % list from current to root
   NsMaps = [get_namespaces(DB, DocId, Id) || Id <- IdsToRoot],
   %?dbg("NsMaps",NsMaps),
   IsNss = lists:foldr(fun(M, A) ->
                             maps:merge(A, M)
                       end, #{}, NsMaps),
   Server = maps:get(index, DB),
   {Low, High} = get_node_id_range(NodeId),
   Filter = filter_fun(Low, High),
   Iter = case NodeId of
             <<>> ->
                merge_index:range(Server, doc, DocId, undefined, undefined, all, Filter);
             _ ->
                TruncL = trunc_id(Low),
                TruncH = trunc_id(High),
                if TruncL == TruncH ->
                      merge_index:lookup(Server, doc, DocId, TruncH, Filter);
                   true ->
                      merge_index:range(Server, doc, DocId, TruncL, TruncH, all, Filter)
                end
          end,
   List = iterator_to_node_list(Iter, DB),
   {[B], []} = build_node_from_list(List, DB#{inscope_ns => IsNss}, node_depth(NodeId), [], erlang:make_ref()),
   B.

get_node_id_range(<<>>) -> {undefined, undefined};
get_node_id_range(NodeId) ->
   Bs = byte_size(NodeId),
   Ps = Bs - 4,
   <<Pre:Ps/binary,L:32/integer>> = NodeId,
   N = L + 1, 
   High = <<Pre:Ps/binary,N:32/integer>>,
   {NodeId, High}.

filter_fun(undefined, undefined) -> 
   fun(I,P) when byte_size(I) == 4 ->
         % no root text items
         not is_text('_', proplists:get_value(b, P));
      (_,_) -> true         
   end;
filter_fun(Low, High) ->
   fun(I,P) when I >= Low andalso I < High ->
         if byte_size(I) == 4 ->
               % no root text items
               not is_text('_', proplists:get_value(b, P));
            true ->
               true
         end;
      (_,_) -> false         
   end.


%% at = attributes
%% bu = base-uri (list of all xml:base atts to document)
%% ch = children
%% du = document-uri
%% id = node-identity (unique ID in document)
%% ii = is-id
%% ir = is-idrefs
%% hn = has namespaces, flag to look them up from an element
%% ns = namespace-nodes (in-scope namespaces)
%% nd = nilled
%% nk = node-kind
%% nn = node-name
%% pt = parent
%% sv = string-value
%% tn = type-name
%% tv = typed-value
%% pa = path id in DB

% everything should return {Siblings, Rest}
build_node_from_list([], _DB, _Depth, Siblings, _Ref) ->
   {lists:reverse(Siblings), []};
build_node_from_list([#{nk := Nk,
                        id := {_,_,Id}} = N|T], DB, Depth, Siblings, Ref) 
   when Nk =:= text;
        Nk =:= comment;
        Nk =:= 'processing-instruction' ->
   Nd = node_depth(N),
   if Nd == Depth ->
         build_node_from_list(T, DB, Depth, [N#{id := {Ref,Id}}|Siblings], Ref);
      Nd < Depth ->
         {lists:reverse(Siblings), [N|T]}
   end;
% everything should return {Siblings, Rest}
build_node_from_list([#{nk := element,
                        id := {_, DocId, Id} = NodeId,
                        hn := HasNs,
                        at := AttCnt} = N|T], 
                     #{inscope_ns := Ins} = DB, Depth, Siblings, Ref) ->
   % inscope_ns is on the DB map and is the inscope for the head element
   % each element with namespaces pulls in its own and merges to map
   case Depth > node_depth(NodeId) of
      true ->
         {lists:reverse(Siblings), [N|T]};
      false ->
         Ins1 = if HasNs ->
                      maps:merge(Ins, get_namespaces(DB, DocId, Id));
                   true ->
                      Ins
                end,
         {Atts, Rest} = 
            case AttCnt of
               0 ->
                  {[], T};
               _ ->
                  take_attributes(T, [], DB, Ref)
            end,
         {Ch, Rest1} = build_node_from_list(Rest, DB#{inscope_ns := Ins1}, Depth + 1, [], Ref),
         Nd = N#{at := Atts,
                 id := {Ref,Id},
                 ns => Ins1,
                 ch => Ch,
                 tn => 'xs:untypedAtomic'},
         build_node_from_list(Rest1, DB, Depth, [Nd|Siblings], Ref)
   end;
% everything should return {Siblings, Rest}
build_node_from_list([#{nk := document,
                        du := Sr} = N|T], DB, _Depth, _Siblings, Ref) ->
   Sv = get_string_value(Sr, DB),
   {Ch, Rest} = build_node_from_list(T, DB, 1, [], Ref), 
   {[N#{du := Sv,
        id := {Ref,<<>>},
        ch => Ch}], Rest}.




node_depth(#{id := {_,_,NdId}}) ->
   byte_size(NdId) div 4;
node_depth({_,_,NdId}) ->
   byte_size(NdId) div 4;
node_depth(NdId) when is_binary(NdId) ->
   byte_size(NdId) div 4.

% expand all attributes at head of the list return {Atts, Rest}
take_attributes([#{nk := attribute,
                   id := {_,_,Id}} = N|T], Atts, DB, Ref) ->
   take_attributes(T, [N#{id := {Ref,Id}}|Atts], DB, Ref);
take_attributes(List, Atts, _DB, _Ref) ->
   {Atts, List}.
   
get_namespaces(#{index := Index,
                 namespaces := NmspMap},  DocId, NodeId) ->
   List = merge_index:lookup_sync(Index, namespace, DocId, NodeId, true),
   List1 = [begin
               #{UriId := Ns} = NmspMap,
               {Prefix, Ns}
            end || {{_, UriId, Prefix},_} <- List],
   maps:from_list(List1).

get_string_value(Ref, _) when byte_size(Ref) < 64 ->
   Ref;
get_string_value(Ref, #{texts := Tab}) ->
   xqldb_string_table2:lookup(Tab, Ref).
   
   
iterator_to_node_set(Iter, DB) ->
   List = iterator_to_node_set_1(Iter, DB),
   Tab = ets:new(?MODULE, [ordered_set]),
   ets:insert(Tab, List),
   Tab.

iterator_to_atom_set(Iter, DB) ->
   List = iterator_to_atom_set_1(Iter, DB),
   Tab = ets:new(xqldb_nodes_atom, [ordered_set]),
   ets:insert(Tab, List),
   Tab.

iterator_to_dbl_set(Iter, DB) ->
   List = iterator_to_dbl_set_1(Iter, DB),
   Tab = ets:new(xqldb_nodes_dbl, [ordered_set]),
   ets:insert(Tab, List),
   Tab.

iterator_to_node_set_1(Iter, DB) when is_function(Iter) ->
   iterator_to_node_set_1(Iter(), DB);
iterator_to_node_set_1([Iter], DB) when is_function(Iter) ->
   iterator_to_node_set_1(Iter(), DB);
iterator_to_node_set_1([{I,_} = H|T], DB) ->
   [{split_id(I), db_node_to_node(DB, H)} | iterator_to_node_set_1(T, DB)];
iterator_to_node_set_1([], _) ->
   [].

iterator_to_atom_set_1(Iter, DB) when is_function(Iter) ->
   iterator_to_atom_set_1(Iter(), DB);
iterator_to_atom_set_1([Iter], DB) when is_function(Iter) ->
   iterator_to_atom_set_1(Iter(), DB);
iterator_to_atom_set_1([{I,_} = H|T], DB) ->
   [{split_id(I), db_node_to_atom(DB, H)} | iterator_to_atom_set_1(T, DB)];
iterator_to_atom_set_1([], _) ->
   [].

iterator_to_dbl_set_1(Iter, DB) when is_function(Iter) ->
   iterator_to_dbl_set_1(Iter(), DB);
iterator_to_dbl_set_1([Iter], DB) when is_function(Iter) ->
   iterator_to_dbl_set_1(Iter(), DB);
iterator_to_dbl_set_1([{I,_} = H|T], DB) ->
   [{split_id(I), db_node_to_dbl(DB, H)} | iterator_to_dbl_set_1(T, DB)];
iterator_to_dbl_set_1([], _) ->
   [].

split_id(<<A:32/integer, B:32/integer, C:32/integer, D:32/integer, Rest/binary>>) ->
   [A,B,C,D|split_id(Rest)];
split_id(<<A:32/integer, B:32/integer, C:32/integer, Rest/binary>>) ->
   [A,B,C|split_id(Rest)];
split_id(<<A:32/integer, B:32/integer, Rest/binary>>) ->
   [A,B|split_id(Rest)];
split_id(<<A:32/integer, Rest/binary>>) ->
   [A|split_id(Rest)];
split_id(<<>>) -> [].
  

