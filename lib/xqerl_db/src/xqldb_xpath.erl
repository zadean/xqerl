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

%% XXX Here, make a new function that builds chained XPaths into one function.
%% also, add functions for DB nodes. DB nodes will have a different ID to 
%% tell them apart from in-memory nodes.
%% Also need a grouping function for node lists. Group by DB id.

-module(xqldb_xpath).

-compile({inline,[name_type_match/3,
                  name_match/2]}).

%% ==========================================================================
%% API functions
%% ==========================================================================
-export([id/2,
         idref/2,
         base_uri/1,
         document_uri/1,
         lang/1,
         namespace_nodes/1]).

-export([document_order/1,
         simple_path/2]).

-export([
   ancestor_document_node/2,
   ancestor_element/2,
   ancestor_node/2,
   ancestor_or_self_attribute/2,
   ancestor_or_self_comment/2,
   ancestor_or_self_document_node/2,
   ancestor_or_self_element/2,
   ancestor_or_self_node/2,
   ancestor_or_self_processing_instruction/2,
   ancestor_or_self_text/2,
   attribute_attribute/2,
   attribute_node/2,
   child_comment/2,
   child_element/2,
   child_node/2,
   child_processing_instruction/2,
   child_text/2,
   descendant_comment/2,
   descendant_element/2,
   descendant_node/2,
   descendant_or_self_attribute/2,
   descendant_or_self_comment/2,
   descendant_or_self_document_node/2,
   descendant_or_self_element/2,
   descendant_or_self_node/2,
   descendant_or_self_processing_instruction/2,
   descendant_or_self_text/2,
   descendant_processing_instruction/2,
   descendant_text/2,
   following_comment/2,
   following_element/2,
   following_node/2,
   following_processing_instruction/2,
   following_sibling_comment/2,
   following_sibling_element/2,
   following_sibling_node/2,
   following_sibling_processing_instruction/2,
   following_sibling_text/2,
   following_text/2,
   parent_document_node/2,
   parent_element/2,
   parent_node/2,
   preceding_comment/2,
   preceding_element/2,
   preceding_node/2,
   preceding_processing_instruction/2,
   preceding_sibling_comment/2,
   preceding_sibling_element/2,
   preceding_sibling_node/2,
   preceding_sibling_processing_instruction/2,
   preceding_sibling_text/2,
   preceding_text/2,
   self_attribute/2,
   self_comment/2,
   self_document_node/2,
   self_element/2,
   self_namespace/2,
   self_node/2,
   self_processing_instruction/2,
   self_text/2
]).

-type attribute() :: #{'nk' := attribute, _ => _}.
-type comment()   :: #{'nk' := comment, _ => _}.
-type document()  :: #{'nk' := document, _ => _}.
-type element()   :: #{'nk' := element, _ => _}.
-type proc_inst() :: #{'nk' := 'processing-instruction', _ => _}.
-type namespace() :: #{'nk' := namespace, _ => _}.
-type text()      :: #{'nk' := text, _ => _}.
-type anynode()   :: attribute() | comment() | document() | 
                     element() | proc_inst() | text().
-type anychild()  :: comment() | element() | proc_inst() | text().
% Name for element/attribute and processing-instruction
-type name() :: {Namespace  :: '_' | binary(), 
                 LocalName  :: '_' | binary(),
                 Type       :: atom()} | 
                {LocalName  :: '_' | binary()} .
-type predicate() :: fun((Node :: anynode(), 
                          Position :: non_neg_integer(), 
                          Last :: non_neg_integer()) -> boolean()).
-type step() :: {Name :: name(), % for named node kinds
                 Predicates :: [predicate()]} |
                {Predicates :: [predicate()]} .

-define(DB_ND, {_,_,_}).

%% NodeName is {Ns,Prefix,Local}

id(DocumentNode, Vals) ->
   Eq = fun(#{id := ?DB_ND} = A,_,_) ->
              lists:member(xqldb_nodes:string_value(A), Vals);
           (A,_,_) ->
              lists:member(xqldb_mem_nodes:string_value(A), Vals)
        end,
   Pred = fun(E,_,_) ->
                N = attribute_attribute(
                     E, {{<<"http://www.w3.org/XML/1998/namespace">>,
                          <<"id">>,'_'}, [Eq]}),
                T = attribute_attribute(E, {{'_','_','xs:ID'}, [Eq]}),
                N =/= [] orelse T =/= []
          end,
   Elems = descendant_element(DocumentNode, {{'_','_','_'},[Pred]}),
   document_order(Elems).

idref(DocumentNode, Vals) ->
   Eq = fun(#{id := {_,_,_}} = A,_,_) ->
              F = fun(V) ->
                        lists:member(V, Vals)
                  end,
              lists:any(F, string:split(xqldb_nodes:string_value(A)," ",all));
           (A,_,_) ->
              F = fun(V) ->
                        lists:member(V, Vals)
                  end,
              lists:any(F, string:split(xqldb_mem_nodes:string_value(A)," ",all))
        end,
   Pred = fun(E,_,_) ->
                T = self_attribute(E, {{'_','_','xs:IDREF'}, [Eq]}),
                T =/= []
          end,
   Elems = descendant_element(DocumentNode, {{'_','_','_'},[]}),
   Atts = [A || E <- Elems,
                A <- attribute_node(E,{[Pred]})],
   document_order(Atts).


namespace_nodes(#{id := ?DB_ND} = Node) ->
   xqldb_nodes:namespace_nodes(Node);
namespace_nodes(Node) ->
   xqldb_mem_nodes:namespace_nodes(Node).

document_uri(#{id := ?DB_ND} = Node) ->
   xqldb_nodes:document_uri(Node);
document_uri(Node) ->
   xqldb_mem_nodes:document_uri(Node).

base_uri(#{id := ?DB_ND} = Node) ->
   xqldb_nodes:base_uri(Node);
base_uri(Node) ->
   xqldb_mem_nodes:base_uri(Node).
   
lang(Node) ->
   Langs = 
     [L || A <- ancestor_or_self_node(Node, {[]}),
           L <- attribute_attribute(A, {{<<"http://www.w3.org/XML/1998/namespace">>,
                        <<"lang">>, '_'},[]})],
   case lists:reverse(Langs) of
      [H|_] ->
         xqldb_mem_nodes:string_value(H);
      _ ->
         []
   end.






% when given a unique list of nodes, returns the results of all
% Steps in document order. 
simple_path(InitCtxItems, Steps) when is_list(InitCtxItems) ->
   MergedNodes = merge_nodes(InitCtxItems, #{}),
   % group IDs by Type and DB
   % mem nodes all together
   % DB nodes grouped by DB then by DocId
   % mem nodes means finding each fun for each step without predicates
   % then building a recursive list comprehension for it
   All = [select_fun(Db, Nodes, Steps) || {Db,Nodes} <- MergedNodes],
   document_order(lists:append(All));
simple_path(InitCtxItems, Steps) ->
   simple_path([InitCtxItems], Steps).
  

% merges nodes by DB, node output is reversed
merge_nodes([], Map) ->
   maps:to_list(Map);
merge_nodes([N|T], Map) ->
   Key = get_group_key(N), 
   case Map of
      #{Key := Ns} ->
         merge_nodes(T, Map#{Key := [N|Ns]});
      _ ->
         merge_nodes(T, Map#{Key => [N]})
   end.

get_group_key(#{id := {Ref, Id}}) when is_reference(Ref), is_integer(Id) ->
   mem;
get_group_key(#{id := {Pid, DocId, Id},
                pa := PathId}) when is_pid(Pid),
                                    is_binary(DocId),
                                    is_binary(Id) ->
   {Pid, DocId, PathId};
get_group_key(_) ->
   xqerl_error:error('XPTY0019').

%% do_predicates(Ds, Preds)

select_fun(mem, Nodes, Steps) ->
   Fun = build_mem_node_fun(Steps),
   lists:flatmap(Fun, Nodes);
select_fun({DbPid, DocId, InPathId}, Nodes, Steps) ->
   % caching this stuff in the query is okay, because only the stuff
   % that existed at the beginning of the query can exist in the query
   DB = xqerl_context:get_db(DbPid),
   #{structure := StructPid,
     index     := IndxPid,
     names     := NameMap,
     namespaces:= NmspMap} = DB,
   ResKey = {?MODULE, ?FUNCTION_NAME, DbPid, Steps, DocId, InPathId},
   ResultSet = 
    case xqerl_lib:lget(ResKey) of
       undefined ->
          io:format("~p~n",[Steps]),
          LookupKey = {?MODULE, ?FUNCTION_NAME, DbPid, Steps},
          PathLookup = 
             case xqerl_lib:lget(LookupKey) of
                undefined ->
                   Steps1 = normalize_step_names(Steps, NameMap, NmspMap),
                   Lookup = xqldb_structure_index:compile_path(StructPid, Steps1),
                   xqerl_lib:lput(LookupKey, Lookup);
                F ->
                   F
             end,
          Iters = 
            [merge_index:lookup(IndxPid, path, DocId, OutPathId, true) ||
               OutPathId <- PathLookup(InPathId)],
          IterUnion = xqldb_join:union(Iters),
          Results = xqldb_nodes:iterator_to_node_set(IterUnion, DB),
          xqerl_lib:lput(ResKey, Results),
          Results;
       Results ->
          Results
    end,
   EachNode = fun(#{id := {_,_,NodeId}}) ->
                    xqldb_nodes:select_with_prefix(ResultSet, NodeId)
              end,
   lists:flatmap(EachNode, Nodes).
   
normalize_step_names([{Ax,H}|T], NameMap, NmspMap) ->
   NewH = 
      case H of
         {att, A, B} ->
            {att, lookup_name(A, NmspMap), lookup_name(B, NameMap)};
         {pi,B} ->
            {pi, lookup_name(B, NameMap)};
         {A,B} ->
            {lookup_name(A, NmspMap), lookup_name(B, NameMap)};
         Other ->
            Other
      end,
   [{Ax,NewH} | normalize_step_names(T, NameMap, NmspMap)];
normalize_step_names([], _, _) ->
   [].

lookup_name('_', _) -> '_';
lookup_name(Key, Map) ->
   case Map of
      #{Key := Val} ->
         Val;
      _ ->
         error
   end.
   
%% Each path function takes one node and returns a list of nodes. 

%% ==========================
%% ancestor - reverse
%% ==========================
-spec ancestor_document_node(attribute() | comment() | element() | proc_inst() | text(), step()) -> [document()].
ancestor_document_node(#{id := {DbPid, DocId,_},
                         nk := Nk}, Step) 
  when Nk =/= document ->
   DocNode = xqldb_nodes:get_doc({DbPid, DocId, <<>>}),
   [S || #{nk := document} = D <- [DocNode],
         S <- self_document_node(D, Step)];
ancestor_document_node(#{nk := Nk} = Node, Step) when Nk =/= document ->
   [S || #{nk := document} = D <- xqldb_mem_nodes:ancestors(Node),
         S <- self_document_node(D, Step)];
ancestor_document_node(#{nk := _}, _) -> [].

-spec ancestor_element(attribute() | comment() | element() | proc_inst() | text(), step()) -> [element()].
ancestor_element(#{id := ?DB_ND,
                   nk := Nk} = Node, {NameAndType, Preds}) 
  when Nk =/= document ->
   As = [D || #{nk := element,
                nn := NodeName} = D <- xqldb_nodes:ancestors(Node),
              name_type_match(NameAndType, NodeName, '_')],
   Fil = do_predicates(As, Preds),
   lists:reverse(Fil);
ancestor_element(#{nk := Nk} = Node, {NameAndType, Preds}) 
  when Nk =/= document ->
   As = [D || #{nk := element,
                nn := NodeName,
                tn := TypeName} = D <- xqldb_mem_nodes:ancestors(Node),
              name_type_match(NameAndType, NodeName, TypeName)],
   Fil = do_predicates(As, Preds),
   lists:reverse(Fil);
ancestor_element(#{nk := _}, _) -> [].

-spec ancestor_node(attribute() | comment() | element() | proc_inst() | text(), step()) -> [document() | element()].
ancestor_node(#{id := ?DB_ND,
                nk := Nk} = Node, {Preds}) when Nk =/= document ->
   Fil = do_predicates(xqldb_nodes:ancestors(Node), Preds),
   lists:reverse(Fil);
ancestor_node(#{nk := Nk} = Node, {Preds}) when Nk =/= document ->
   Fil = do_predicates(xqldb_mem_nodes:ancestors(Node), Preds),
   lists:reverse(Fil);
ancestor_node(#{nk := _}, _) -> [].

%% ================================
%% ancestor_or_self - reverse
%% ================================
-spec ancestor_or_self_attribute(attribute(), step()) -> [attribute()].
ancestor_or_self_attribute(#{nk := attribute} = Node, Step) -> 
   self_attribute(Node, Step);
ancestor_or_self_attribute(#{nk := _}, _) -> [].

-spec ancestor_or_self_comment(comment(), step()) -> [comment()].
ancestor_or_self_comment(#{nk := comment} = Node, Step) -> 
   self_comment(Node, Step);
ancestor_or_self_comment(#{nk := _}, _) -> [].

-spec ancestor_or_self_document_node(attribute() | comment() | document() | element() | proc_inst() | text(), step()) -> [document()].
ancestor_or_self_document_node(#{id := ?DB_ND} = Node, Step) ->
   [S || #{nk := document} = D <- [Node|xqldb_nodes:ancestors(Node)],
         S <- self_document_node(D, Step)];
ancestor_or_self_document_node(Node, Step) ->
   [S || #{nk := document} = D <- [Node|xqldb_mem_nodes:ancestors(Node)],
         S <- self_document_node(D, Step)].

-spec ancestor_or_self_element(attribute() | comment() | element() | proc_inst() | text(), step()) -> [element()].
ancestor_or_self_element(#{id := ?DB_ND,
                           nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =/= document -> 
   As = [D || #{nk := element,
                nn := NodeName} = D <- [Node|xqldb_nodes:ancestors(Node)],
              name_type_match(NameAndType, NodeName, '_')],
   Fil = do_predicates(As, Preds),
   lists:reverse(Fil);
ancestor_or_self_element(#{nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =/= document -> 
   As = [D || #{nk := element,
                nn := NodeName,
                tn := TypeName} = D <- [Node|xqldb_mem_nodes:ancestors(Node)],
              name_type_match(NameAndType, NodeName, TypeName)],
   Fil = do_predicates(As, Preds),
   lists:reverse(Fil);
ancestor_or_self_element(#{nk := _}, _) -> [].

-spec ancestor_or_self_node(attribute() | comment() | document() | element() | proc_inst() | text(), step()) -> [anynode()].
ancestor_or_self_node(#{id := ?DB_ND} = Node, {Preds}) -> 
   As = [Node|xqldb_nodes:ancestors(Node)],
   Fil = do_predicates(As, Preds),
   lists:reverse(Fil);
ancestor_or_self_node(Node, {Preds}) -> 
   As = [Node|xqldb_mem_nodes:ancestors(Node)],
   Fil = do_predicates(As, Preds),
   lists:reverse(Fil).

-spec ancestor_or_self_processing_instruction(proc_inst(), step()) -> [proc_inst()].
ancestor_or_self_processing_instruction(#{nk := 'processing-instruction'} = Node, Step) -> 
   self_processing_instruction(Node, Step);
ancestor_or_self_processing_instruction(#{nk := _}, _) -> [].

-spec ancestor_or_self_text(text(), step()) -> [text()].
ancestor_or_self_text(#{nk := text} = Node, Step) -> 
   self_text(Node, Step);
ancestor_or_self_text(#{nk := _}, _) -> [].

%% ================================
%% attribute
%% ================================
-spec attribute_attribute(element(), step()) -> [attribute()].
attribute_attribute(#{nk := element, at := []}, _) -> [];
attribute_attribute(#{id := ?DB_ND,
                      nk := element,
                      at := _} = P, {NameAndType, Preds}) ->
   Cn = [N#{pt => P} || 
         #{nk := attribute,
           nn := NodeName,
           tn := TypeName} = N <- xqldb_nodes:attributes(P),
         name_type_match(NameAndType, NodeName, TypeName)],
   do_predicates(Cn, Preds);
attribute_attribute(#{nk := element,
                      at := At} = P, {NameAndType, Preds}) ->
   Cn = [N#{pt => P} || #{nk := attribute,
                nn := NodeName,
                tn := TypeName} = N <- At,
              name_type_match(NameAndType, NodeName, TypeName)],
   do_predicates(Cn, Preds);
attribute_attribute(#{nk := _}, _) -> [].

-spec attribute_node(element(), step()) -> [attribute()].
attribute_node(#{nk := element, at := []}, _) -> [];
attribute_node(#{id := ?DB_ND,
                 nk := element,
                 at := _} = P, {Preds}) ->
   do_predicates([N#{pt => P} || N <- xqldb_nodes:attributes(P)], Preds);
attribute_node(#{nk := element,
                 at := At} = P, {Preds}) ->
   do_predicates([N#{pt => P} || N <- At], Preds);
attribute_node(#{nk := _}, _) -> [].

%% ================================
%% child - forward
%% ================================
-spec child_comment(document() | element(), step()) -> [comment()].
child_comment(#{id := ?DB_ND,
                nk := Nk} = P, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N || #{nk := comment} = N <- xqldb_nodes:children(P)],
   do_predicates(Cn, Preds);
child_comment(#{nk := Nk,
                ch := _} = P, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N || #{nk := comment} = N <- xqldb_mem_nodes:children(P)],
   do_predicates(Cn, Preds);
child_comment(#{nk := _}, _) -> [].

-spec child_element(document() | element(), step()) -> [element()].
child_element(#{id := ?DB_ND,
                nk := Nk} = P, {NameAndType, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N
        || #{nk := element,
             nn := NodeName} = N <- xqldb_nodes:children(P),
           name_type_match(NameAndType, NodeName, '_')],
   do_predicates(Cn, Preds);
child_element(#{nk := Nk,
                ch := _} = P, {NameAndType, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N
        || #{nk := element,
             nn := NodeName,
             tn := TypeName} = N <- xqldb_mem_nodes:children(P),
           name_type_match(NameAndType, NodeName, TypeName)],
   do_predicates(Cn, Preds);
child_element(#{nk := _}, _) -> [].

-spec child_node(document() | element(), step()) -> [anychild()].
child_node(#{id := ?DB_ND,
             nk := Nk} = P, {Preds}) when Nk == element;
                                          Nk == document -> 
   do_predicates([N || N <- xqldb_nodes:children(P)], Preds);
child_node(#{nk := Nk} = P, {Preds}) when Nk == element;
                                          Nk == document -> 
   do_predicates([N || N <- xqldb_mem_nodes:children(P)], Preds);
child_node(#{nk := _}, _) -> [].

-spec child_processing_instruction(document() | element(), step()) -> [proc_inst()].
child_processing_instruction(#{id := ?DB_ND,
                               nk := Nk} = P, {Name, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N
        || #{nk := 'processing-instruction',
             nn := NodeName} = N <- xqldb_nodes:children(P),
           name_match(Name, NodeName)],
   do_predicates(Cn, Preds);
child_processing_instruction(#{nk := Nk,
                               ch := _} = P, {Name, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N
        || #{nk := 'processing-instruction',
             nn := NodeName} = N <- xqldb_mem_nodes:children(P),
           name_match(Name, NodeName)],
   do_predicates(Cn, Preds);
child_processing_instruction(#{nk := _}, _) -> [].

-spec child_text(document() | element(), step()) -> [text()].
child_text(#{id := ?DB_ND,
             nk := Nk} = P, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N || #{nk := text} = N <- xqldb_nodes:children(P)],
   do_predicates(Cn, Preds);
child_text(#{nk := Nk,
             ch := _} = P, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N || #{nk := text} = N <- xqldb_mem_nodes:children(P)],
   do_predicates(Cn, Preds);
child_text(#{nk := _}, _) -> [].

%% ================================
%% descendant - forward
%% ================================
-spec descendant_comment(document() | element(), step()) -> [comment()].
descendant_comment(#{id := ?DB_ND,
                     nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := comment} = N <- xqldb_nodes:descendants(Node)],
   do_predicates(Ds, Preds);
descendant_comment(#{nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := comment} = N <- xqldb_mem_nodes:descendants(Node)],
   do_predicates(Ds, Preds);
descendant_comment(#{nk := _}, _) -> [].

-spec descendant_element(document() | element(), step()) -> [element()].
descendant_element(#{id := ?DB_ND,
                     nk := Nk} = Node, {NameAndType, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := element,
                nn := NodeName} = N <- xqldb_nodes:descendants(Node),
              name_type_match(NameAndType, NodeName, '_')],
   do_predicates(Ds, Preds);
descendant_element(#{nk := Nk} = Node, {NameAndType, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := element,
                nn := NodeName,
                tn := TypeName} = N <- xqldb_mem_nodes:descendants(Node),
              name_type_match(NameAndType, NodeName, TypeName)],
   do_predicates(Ds, Preds);
descendant_element(#{nk := _}, _) -> [].

-spec descendant_node(document() | element(), step()) -> [anychild()].
descendant_node(#{id := ?DB_ND,
                  nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   do_predicates(xqldb_nodes:descendants(Node), Preds);
descendant_node(#{nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   do_predicates(xqldb_mem_nodes:descendants(Node), Preds);
descendant_node(#{nk := _}, _) -> [].

-spec descendant_processing_instruction(document() | element(), step()) -> [proc_inst()].
descendant_processing_instruction(#{id := ?DB_ND,
                                    nk := Nk} = Node, {Name, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := 'processing-instruction',
                nn := NodeName} = N <- xqldb_nodes:descendants(Node),
              name_match(Name, NodeName)],
   do_predicates(Ds, Preds);
descendant_processing_instruction(#{nk := Nk} = Node, {Name, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := 'processing-instruction',
                nn := NodeName} = N <- xqldb_mem_nodes:descendants(Node),
              name_match(Name, NodeName)],
   do_predicates(Ds, Preds);
descendant_processing_instruction(#{nk := _}, _) -> [].

-spec descendant_text(document() | element(), step()) -> [text()].
descendant_text(#{id := ?DB_ND,
                  nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := text} = N <- xqldb_nodes:descendants(Node)],
   do_predicates(Ds, Preds);
descendant_text(#{nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := text} = N <- xqldb_mem_nodes:descendants(Node)],
   do_predicates(Ds, Preds);
descendant_text(#{nk := _}, _) -> [].

%% ==========================
%% descendant_or_self - forward
%% ==========================
-spec descendant_or_self_attribute(attribute(), step()) -> [attribute()].
descendant_or_self_attribute(#{nk := attribute} = Node, Step) ->
   self_attribute(Node, Step);
descendant_or_self_attribute(#{nk := _}, _) -> [].

-spec descendant_or_self_comment(comment() | document() | element(), step()) -> [comment()].
descendant_or_self_comment(#{nk := comment} = Node, Step) ->
   self_comment(Node, Step);
descendant_or_self_comment(#{id := ?DB_ND,
                             nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := comment} = N <- xqldb_nodes:descendants(Node)],
   do_predicates(Ds, Preds);
descendant_or_self_comment(#{nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := comment} = N <- xqldb_mem_nodes:descendants(Node)],
   do_predicates(Ds, Preds);
descendant_or_self_comment(#{nk := _}, _) -> [].

-spec descendant_or_self_document_node(document(), step()) -> [document()].
descendant_or_self_document_node(#{nk := document} = Node, Step) -> 
   self_document_node(Node, Step);
descendant_or_self_document_node(#{nk := _}, _) -> [].

-spec descendant_or_self_element(document() | element(), step()) -> [element()].
descendant_or_self_element(#{id := ?DB_ND,
                             nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [D || #{nk := element,
                nn := NodeName} = D <- [Node | xqldb_nodes:descendants(Node)],
              name_type_match(NameAndType, NodeName, '_')], 
   do_predicates(Ds, Preds);
descendant_or_self_element(#{nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [D || #{nk := element,
                nn := NodeName,
                tn := TypeName} = D <- [Node | xqldb_mem_nodes:descendants(Node)],
              name_type_match(NameAndType, NodeName, TypeName)], 
   do_predicates(Ds, Preds);
descendant_or_self_element(#{nk := _}, _) -> [].

-spec descendant_or_self_node(attribute() | comment() | document() | element() | proc_inst() | text(), step()) -> [anynode()].
descendant_or_self_node(#{nk := Nk} = Node, Step) 
   when Nk =:= attribute; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   self_node(Node, Step);
descendant_or_self_node(#{id := ?DB_ND,
                          nk := Nk} = Node, {Preds}) 
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [Node | xqldb_nodes:descendants(Node)], 
   do_predicates(Ds, Preds);
descendant_or_self_node(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [Node | xqldb_mem_nodes:descendants(Node)], 
   do_predicates(Ds, Preds);
descendant_or_self_node(#{nk := _}, _) -> [].

-spec descendant_or_self_processing_instruction(document() | element() | proc_inst(), step()) -> [proc_inst()].
descendant_or_self_processing_instruction(#{nk := 'processing-instruction'} = Node, Step) ->
   self_processing_instruction(Node, Step);
descendant_or_self_processing_instruction(#{id := ?DB_ND,
                                            nk := Nk} = Node, {Name, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := 'processing-instruction',
                nn := NodeName} = N <- xqldb_nodes:descendants(Node),
              name_match(Name, NodeName)],
   do_predicates(Ds, Preds);
descendant_or_self_processing_instruction(#{nk := Nk} = Node, {Name, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := 'processing-instruction',
                nn := NodeName} = N <- xqldb_mem_nodes:descendants(Node),
              name_match(Name, NodeName)],
   do_predicates(Ds, Preds);
descendant_or_self_processing_instruction(#{nk := _}, _) -> [].

-spec descendant_or_self_text(document() | element() | text(), step()) -> [text()].
descendant_or_self_text(#{nk := text} = Node, Step) -> 
   self_text(Node, Step);
descendant_or_self_text(#{id := ?DB_ND,
                          nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := text} = N <- xqldb_nodes:descendants(Node)],
   do_predicates(Ds, Preds);
descendant_or_self_text(#{nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := text} = N <- xqldb_mem_nodes:descendants(Node)],
   do_predicates(Ds, Preds);
descendant_or_self_text(#{nk := _}, _) -> [].

%% ==========================
%% following - forward
%% ==========================
-spec following_comment(attribute() | comment() | element() | proc_inst() | text(), step()) -> [comment()].
following_comment(#{id := ?DB_ND,
                    nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := comment} = P <- xqldb_nodes:following(Node)],
   do_predicates(Fol, Preds);
following_comment(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := comment} = P <- following(Node)],
   do_predicates(Fol, Preds);
following_comment(#{nk := _}, _) -> [].

-spec following_element(attribute() | comment() | element() | proc_inst() | text(), step()) -> [element()].
following_element(#{id := ?DB_ND,
                    nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := element,
                 nn := NodeName} = P <- xqldb_nodes:following(Node),
               name_type_match(NameAndType, NodeName, '_')],
   do_predicates(Fol, Preds);
following_element(#{nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := element,
                 nn := NodeName,
                 tn := TypeName} = P <- following(Node),
               name_type_match(NameAndType, NodeName, TypeName)],
   do_predicates(Fol, Preds);
following_element(#{nk := _}, _) -> [].

-spec following_node(attribute() | comment() | element() | proc_inst() | text(), step()) -> [anychild()].
following_node(#{id := ?DB_ND,
                 nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = xqldb_nodes:following(Node),
   do_predicates(Fol, Preds);
following_node(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = following(Node),
   do_predicates(Fol, Preds);
following_node(#{nk := _}, _) -> [].

-spec following_processing_instruction(attribute() | comment() | element() | proc_inst() | text(), step()) -> [proc_inst()].
following_processing_instruction(#{id := ?DB_ND,
                                   nk := Nk} = Node, {Name, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := 'processing-instruction',
                 nn := NodeName} = P <- xqldb_nodes:following(Node),
               name_match(Name, NodeName)],
   do_predicates(Fol, Preds);
following_processing_instruction(#{nk := Nk} = Node, {Name, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := 'processing-instruction',
                 nn := NodeName} = P <- following(Node),
               name_match(Name, NodeName)],
   do_predicates(Fol, Preds);
following_processing_instruction(#{nk := _}, _) -> [].

-spec following_text(attribute() | comment() | element() | proc_inst() | text(), step()) -> [text()].
following_text(#{id := ?DB_ND,
                 nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := text} = P <- xqldb_nodes:following(Node)],
   do_predicates(Fol, Preds);
following_text(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := text} = P <- following(Node)],
   do_predicates(Fol, Preds);
following_text(#{nk := _}, _) -> [].

%% ==========================
%% following_sibling - forward
%% ==========================
-spec following_sibling_comment(comment() | element() | proc_inst() | text(), step()) -> [comment()].
following_sibling_comment(#{nk := Nk,
                            id := ?DB_ND = Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := comment} = S <- xqldb_nodes:siblings(Node), 
                SId > Id],
   do_predicates(Sibs, Preds);
following_sibling_comment(#{nk := Nk,
                            id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := comment} = S <- siblings(Node), 
                SId > Id],
   do_predicates(Sibs, Preds);
following_sibling_comment(#{nk := _}, _) -> [].

-spec following_sibling_element(comment() | element() | proc_inst() | text(), step()) -> [element()].
following_sibling_element(#{nk := Nk,
                            id := ?DB_ND = Id} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := element,
                  nn := NodeName} = S <- xqldb_nodes:siblings(Node), 
                SId > Id,
                name_type_match(NameAndType, NodeName, '_')],
   do_predicates(Sibs, Preds);
following_sibling_element(#{nk := Nk,
                            id := Id} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := element,
                  nn := NodeName,
                  tn := TypeName} = S <- siblings(Node), 
                SId > Id,
                name_type_match(NameAndType, NodeName, TypeName)],
   do_predicates(Sibs, Preds);
following_sibling_element(#{nk := _}, _) -> [].

-spec following_sibling_node(comment() | element() | proc_inst() | text(), step()) -> [anychild()].
following_sibling_node(#{nk := Nk,
                         id := ?DB_ND = Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId} = S <- xqldb_nodes:siblings(Node), 
                SId > Id],
   do_predicates(Sibs, Preds);
following_sibling_node(#{nk := Nk,
                         id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId} = S <- siblings(Node), 
                SId > Id],
   do_predicates(Sibs, Preds);
following_sibling_node(#{nk := _}, _) -> [].

-spec following_sibling_processing_instruction(comment() | element() | proc_inst() | text(), step()) -> [proc_inst()].
following_sibling_processing_instruction(#{nk := Nk,
                                           id := ?DB_ND = Id} = Node, {Name, Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := 'processing-instruction',
                  nn := NodeName} = S <- xqldb_nodes:siblings(Node), 
                SId > Id,
                name_match(Name, NodeName)],
   do_predicates(Sibs, Preds);
following_sibling_processing_instruction(#{nk := Nk,
                                           id := Id} = Node, {Name, Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := 'processing-instruction',
                  nn := NodeName} = S <- siblings(Node), 
                SId > Id,
                name_match(Name, NodeName)],
   do_predicates(Sibs, Preds);
following_sibling_processing_instruction(#{nk := _}, _) -> [].

-spec following_sibling_text(comment() | element() | proc_inst() | text(), step()) -> [text()].
following_sibling_text(#{nk := Nk,
                         id := ?DB_ND = Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := text} = S <- xqldb_nodes:siblings(Node), 
                SId > Id],
   do_predicates(Sibs, Preds);
following_sibling_text(#{nk := Nk,
                         id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := text} = S <- siblings(Node), 
                SId > Id],
   do_predicates(Sibs, Preds);
following_sibling_text(#{nk := _}, _) -> [].

%% ==========================
%% parent - reverse
%% ==========================
-spec parent_document_node(comment() | element() | proc_inst() | text(), step()) -> [document()].
parent_document_node(#{id := {_,_,<<_:4/binary>>},
                       nk := Nk} = Node, Step) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   case xqldb_nodes:parent(Node) of
      [] ->
         [];
      Par ->
         self_document_node(Par, Step)
   end;
parent_document_node(#{id := ?DB_ND,
                       nk := _}, _) ->
   [];
parent_document_node(#{nk := Nk} = Node, Step) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   case xqldb_mem_nodes:parent(Node) of
      [] ->
         [];
      Par ->
         self_document_node(Par, Step)
   end;
parent_document_node(#{nk := _}, _) -> [].

-spec parent_element(attribute() | comment() | element() | proc_inst() | text(), step()) -> [element()].
parent_element(#{id := ?DB_ND,
                 nk := Nk} = Node, Step) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   case xqldb_nodes:parent(Node) of
      [] ->
         [];
      Par ->
         self_element(Par, Step)
   end;
parent_element(#{nk := Nk} = Node, Step) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   case xqldb_mem_nodes:parent(Node) of
      [] ->
         [];
      Par ->
         self_element(Par, Step)
   end;
parent_element(#{nk := _}, _) -> [].

-spec parent_node(attribute() | comment() | element() | proc_inst() | text(), step()) -> [document() | element()].
parent_node(#{id := ?DB_ND,
              nk := Nk} = Node, Step) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   case xqldb_nodes:parent(Node) of
      [] ->
         [];
      Par ->
         self_node(Par, Step)
   end;
parent_node(#{nk := Nk} = Node, Step) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   case xqldb_mem_nodes:parent(Node) of
      [] ->
         [];
      Par ->
         self_node(Par, Step)
   end;
parent_node(#{nk := _}, _) -> [].

%% ==========================
%% preceding - reverse
%% ==========================
-spec preceding_comment(attribute() | comment() | element() | proc_inst() | text(), step()) -> [comment()].
preceding_comment(#{id := ?DB_ND,
                    nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := comment} = P <- xqldb_nodes:preceding(Node)],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_comment(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := comment} = P <- preceding(Node)],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_comment(#{nk := _}, _) -> [].

-spec preceding_element(attribute() | comment() | element() | proc_inst() | text(), step()) -> [element()].
preceding_element(#{id := ?DB_ND,
                    nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := element,
                 nn := NodeName} = P <- xqldb_nodes:preceding(Node),
               name_type_match(NameAndType, NodeName, '_')],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_element(#{nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := element,
                 nn := NodeName,
                 tn := TypeName} = P <- preceding(Node),
               name_type_match(NameAndType, NodeName, TypeName)],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_element(#{nk := _}, _) -> [].

-spec preceding_node(attribute() | comment() | element() | proc_inst() | text(), step()) -> [anychild()].
preceding_node(#{id := ?DB_ND,
                 nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = xqldb_nodes:preceding(Node),
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_node(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = preceding(Node),
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_node(#{nk := _}, _) -> [].

-spec preceding_processing_instruction(attribute() | comment() | element() | proc_inst() | text(), step()) -> [proc_inst()].
preceding_processing_instruction(#{id := ?DB_ND,
                                   nk := Nk} = Node, {Name, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := 'processing-instruction',
                 nn := NodeName} = P <- xqldb_nodes:preceding(Node),
               name_match(Name, NodeName)],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_processing_instruction(#{nk := Nk} = Node, {Name, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := 'processing-instruction',
                 nn := NodeName} = P <- preceding(Node),
               name_match(Name, NodeName)],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_processing_instruction(#{nk := _}, _) -> [].

-spec preceding_text(attribute() | comment() | element() | proc_inst() | text(), step()) -> [text()].
preceding_text(#{id := ?DB_ND,
                 nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := text} = P <- xqldb_nodes:preceding(Node)],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_text(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := text} = P <- preceding(Node)],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_text(#{nk := _}, _) -> [].

%% ==========================
%% preceding_sibling - reverse
%% ==========================
-spec preceding_sibling_comment(comment() | element() | proc_inst() | text(), step()) -> [comment()].
preceding_sibling_comment(#{nk := Nk,
                            id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = siblings(Node),
   Sibs1 = [S || #{id := SId,
                   nk := comment} = S <- Sibs, SId < Id],
   Sibs2 = lists:reverse(Sibs1),
   Sibs3 = do_predicates(Sibs2, Preds),
   lists:reverse(Sibs3);
preceding_sibling_comment(#{nk := _}, _) -> [].

-spec preceding_sibling_element(comment() | element() | proc_inst() | text(), step()) -> [element()].
preceding_sibling_element(#{nk := Nk,
                            id := ?DB_ND = Id} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = xqldb_nodes:siblings(Node),
   Sibs1 = [S || #{id := SId,
                   nk := element,
                   nn := NodeName} = S <- Sibs, 
                 name_type_match(NameAndType, NodeName, '_'),
                 SId < Id],
   Sibs2 = lists:reverse(Sibs1),
   Sibs3 = do_predicates(Sibs2, Preds),
   lists:reverse(Sibs3);
preceding_sibling_element(#{nk := Nk,
                            id := Id} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = siblings(Node),
   Sibs1 = [S || #{id := SId,
                   nk := element,
                   nn := NodeName,
                   tn := TypeName} = S <- Sibs, 
                 name_type_match(NameAndType, NodeName, TypeName),
                 SId < Id],
   Sibs2 = lists:reverse(Sibs1),
   Sibs3 = do_predicates(Sibs2, Preds),
   lists:reverse(Sibs3);
preceding_sibling_element(#{nk := _}, _) -> [].

-spec preceding_sibling_node(comment() | element() | proc_inst() | text(), step()) -> [anychild()].
preceding_sibling_node(#{nk := Nk,
                         id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = siblings(Node),
   Sibs1 = [S || #{id := SId} = S <- Sibs, SId < Id],
   Sibs2 = lists:reverse(Sibs1),
   Sibs3 = do_predicates(Sibs2, Preds),
   lists:reverse(Sibs3);
preceding_sibling_node(#{nk := _}, _) -> [].

-spec preceding_sibling_processing_instruction(comment() | element() | proc_inst() | text(), step()) -> [proc_inst()].
preceding_sibling_processing_instruction(#{nk := Nk,
                                           id := Id} = Node, {Name, Preds})
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = siblings(Node),
   Sibs1 = [S || #{id := SId,
                   nk := 'processing-instruction',
                   nn := NodeName} = S <- Sibs, 
                 name_match(Name, NodeName),
                 SId < Id],
   Sibs2 = lists:reverse(Sibs1),
   Sibs3 = do_predicates(Sibs2, Preds),
   lists:reverse(Sibs3);
preceding_sibling_processing_instruction(#{nk := _}, _) -> [].

-spec preceding_sibling_text(comment() | element() | proc_inst() | text(), step()) -> [text()].
preceding_sibling_text(#{nk := Nk,
                         id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = siblings(Node),
   Sibs1 = [S || #{id := SId,
                   nk := text} = S <- Sibs, SId < Id],
   Sibs2 = lists:reverse(Sibs1),
   Sibs3 = do_predicates(Sibs2, Preds),
   lists:reverse(Sibs3);
preceding_sibling_text(#{nk := _}, _) -> [].

%% ==========================
%% self - forward
%% ==========================
-spec self_attribute(attribute(), step()) -> [attribute()].
self_attribute(#{nk := attribute,
                 nn := NodeName,
                 tn := TypeName} = Node, {NameAndType, Preds}) -> 
   case name_type_match(NameAndType, NodeName, TypeName) of
      true ->
         do_predicates([Node], Preds);
      false ->
         []
   end;
self_attribute(#{nk := _}, _) -> [].

-spec self_comment(comment(), step()) -> [comment()].
self_comment(#{nk := comment} = Node, {Preds}) ->
   do_predicates([Node], Preds);
self_comment(#{nk := _}, _) -> [].

-spec self_document_node(document(), step()) -> [document()].
self_document_node(#{nk := document,
                     id := ?DB_ND} = Node, {NameAndType, Preds}) ->
   case child_element(Node, {{'_','_','_'}, []}) of
      [#{nn := NodeName}] ->
         case name_type_match(NameAndType, NodeName, '_') of
            true ->
               do_predicates([Node], Preds);
            false ->
               []
         end;
      _ ->
         []
   end;
self_document_node(#{nk := document,
                     ch := Ch} = Node, {NameAndType, Preds}) ->
   case child_element(Node, {{'_','_','_'}, []}) of
      [#{nn := NodeName, tn := TypeName}] ->
         case name_type_match(NameAndType, NodeName, TypeName) of
            true ->
               do_predicates([Node], Preds);
            false ->
               []
         end;
      [] when Ch == [] ->
         do_predicates([Node], Preds);
      _ ->
         []
   end;
self_document_node(#{nk := document} = Node, {Preds}) -> 
   do_predicates([Node], Preds);
self_document_node(#{nk := _}, _) -> [].

-spec self_element(element(), step()) -> [element()].
self_element(#{id := ?DB_ND,
               nk := element,
               nn := NodeName} = Node, {NameAndType, Preds}) -> 
   case name_type_match(NameAndType, NodeName, '_') of
      true ->
         do_predicates([Node], Preds);
      false ->
         []
   end;
self_element(#{nk := element,
               nn := NodeName,
               tn := TypeName} = Node, {NameAndType, Preds}) -> 
   case name_type_match(NameAndType, NodeName, TypeName) of
      true ->
         do_predicates([Node], Preds);
      false ->
         []
   end;
self_element(#{nk := _}, _) -> [].

-spec self_namespace(namespace(), step()) -> [namespace()].
self_namespace(#{nk := namespace} = Node, {Preds}) ->
   do_predicates([Node], Preds);
self_namespace(#{nk := _}, _) -> [].

-spec self_node(attribute() | comment() | document() | element() | proc_inst() | text(), step()) -> [anynode()].
self_node(Node, {Preds}) -> 
   do_predicates([Node], Preds).

-spec self_processing_instruction(proc_inst(), step()) -> [proc_inst()].
self_processing_instruction(#{nk := 'processing-instruction',
                              nn := NodeName} = Node, {Name, Preds}) ->
   case name_match(Name, NodeName) of
      true ->
         do_predicates([Node], Preds);
      false ->
         []
   end;
self_processing_instruction(#{nk := _}, _) -> [].

-spec self_text(text(), step()) -> [text()].
self_text(#{nk := text} = Node, {Preds}) ->
   do_predicates([Node], Preds);
self_text(#{nk := _}, _) -> [].

document_order(NodeList) when is_list(NodeList) ->
   case catch (doc_ord(NodeList)) of
      {'EXIT',_} ->
         {error, non_node};
      O ->
         O
   end;
document_order(Node) ->
   [Node].

%% ==========================================================================
%% Internal functions
%% ==========================================================================

doc_ord(NodeList) ->
   lists:usort(fun doc_ord_fun/2, NodeList).

doc_ord_fun(#{id := A}, #{id := B}) -> A =< B.

doc_rev_ord(NodeList) ->
   lists:usort(fun doc_rev_ord_fun/2, NodeList).
doc_rev_ord_fun(#{id := A}, #{id := B}) -> A > B.

   
   
siblings(#{id := ?DB_ND} = Node) ->
   xqldb_nodes:siblings(Node);
siblings(Node) ->
   case xqldb_mem_nodes:parent(Node) of
      #{ch := _} = P ->
         xqldb_mem_nodes:children(P);
      _ ->
         []
   end.

preceding(Node) ->
   Par = xqldb_mem_nodes:parent(Node),
   case Par of
      [] ->
         [];
      _ ->
         Acc = [N || S <- preceding_sibling_node(Node, {[]}),
                     N <- descendant_or_self_node(S, {[]})],
         All = preceding(Par, Acc),
         doc_rev_ord(All)
   end.

preceding(Node, Acc) ->
   case xqldb_mem_nodes:parent(Node) of
      [] ->
         Acc;
      Par ->
         Nds = [N || S <- preceding_sibling_node(Node, {[]}),
                     N <- descendant_or_self_node(S, {[]})],
         preceding(Par, Nds ++ Acc)
   end.

following(Node) ->
   Par = xqldb_mem_nodes:parent(Node),
   case Par of
      [] ->
         [];
      _ ->
         Acc = [N || S <- following_sibling_node(Node, {[]}),
                     N <- descendant_or_self_node(S, {[]})],
         following(Par, Acc)
   end.

following(Node, Acc) ->
   case xqldb_mem_nodes:parent(Node) of
      [] ->
         Acc;
      Par ->
         Nds = [N || S <- following_sibling_node(Node, {[]}),
                     N <- descendant_or_self_node(S, {[]})],
         following(Par, Acc ++ Nds)
   end.

name_type_match({'_', '_', '_'}, _, _) -> true;
name_type_match({'_', '_', Ty}, {_, _, _}, Ty) -> true;
name_type_match({'_', Ln,  '_'},{_, _, Ln}, _) -> true;
name_type_match({'_', Ln,  Ty}, {_, _, Ln}, Ty) -> true;
name_type_match({Ns,  '_', '_'},{Ns, _, _}, _) -> true;
name_type_match({Ns,  '_', Ty}, {Ns, _, _}, Ty) -> true;
name_type_match({Ns,  Ln,  '_'},{Ns, _, Ln}, _) -> true;
name_type_match({Ns,  Ln,  Ty}, {Ns, _, Ln}, Ty) -> true;
name_type_match(_, _, _) -> false.

name_match({'_'}, _) -> true;
name_match({Ln}, {_, _, Ln}) -> true;
name_match(_, _) -> false.

do_predicates(Nodes, []) -> Nodes;
do_predicates(Nodes, [P|Ps]) ->
   S = fun() -> length(Nodes) end,
   F = do_pred_filter(P, Nodes, 1, S),
   do_predicates(F, Ps).

do_pred_filter(Pred, [Node|Nodes], Pos, Size) ->
   case Pred(Node, Pos, Size) of
      true ->
         [Node|do_pred_filter(Pred, Nodes, Pos + 1, Size)];
      false ->
         do_pred_filter(Pred, Nodes, Pos + 1, Size)
   end;
do_pred_filter(_, [], _, _) -> [].

%% add_pos([H|T], Pos) ->
%%    [{H,Pos}|add_pos(T, Pos + 1)];
%% add_pos([], _) -> [].

%% at = attributes
%% bu = base-uri (list of all xml:base atts to document)
%% ch = children
%% du = document-uri
%% id = node-identity (unique ID in document)
%% ii = is-id
%% ir = is-idrefs
%% ns = namespace-nodes (in-scope namespaces)
%% nd = nilled
%% nk = node-kind
%% nn = node-name
%% pt = parent
%% sv = string-value
%% tn = type-name
%% tv = typed-value

build_mem_node_fun(Steps) ->
   try
      get_funs_from_steps(Steps)
   of [{H,P}|T] ->
         fun(Node) ->
               All = [N || X <- H(Node, P), N <- build_mem_node_fun(X, T)],
               document_order(lists:flatten(All))
         end
   catch 
      _:_ ->
         fun(_) -> [] end               
   end.

build_mem_node_fun(Node, []) -> [Node]; % out of steps return node
build_mem_node_fun(Node, [{H,P}|Steps]) ->
   [N ||
    X <- H(Node, P),
    N <- build_mem_node_fun(X, Steps)].

get_funs_from_steps([]) -> [];
get_funs_from_steps([{attribute, {att, '_', '_'}}|T]) ->
   [{fun attribute_node/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{attribute, {att, N, L}}|T]) ->
   [{fun attribute_attribute/2, {{N,L,'_'}, []}} | get_funs_from_steps(T)];

get_funs_from_steps([{child, comment}|T]) ->
   [{fun child_comment/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{child, {pi,L}}|T]) ->
   [{fun child_processing_instruction/2, {{L},[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{child, {N,L}}|T]) ->
   [{fun child_element/2, {{N,L,'_'},[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{child, '_'}|T]) ->
   [{fun child_node/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{child, text}|T]) ->
   [{fun child_text/2, {[]}} | get_funs_from_steps(T)];

get_funs_from_steps([{descendant, comment}|T]) ->
   [{fun descendant_comment/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{descendant, text}|T]) ->
   [{fun descendant_text/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{descendant, {pi, L}}|T]) ->
   [{fun descendant_processing_instruction/2, {{L}, []}} | get_funs_from_steps(T)];
get_funs_from_steps([{descendant, {N, L}}|T]) ->
   [{fun descendant_element/2, {{N,L,'_'}, []}} | get_funs_from_steps(T)];
get_funs_from_steps([{descendant, '_'}|T]) ->
   [{fun descendant_node/2, {[]}} | get_funs_from_steps(T)];

get_funs_from_steps([{'descendant-or-self', {att, N, L}}|T]) ->
   [{fun descendant_or_self_attribute/2, {{N,L,'_'}, []}} | get_funs_from_steps(T)];
get_funs_from_steps([{'descendant-or-self', []}|T]) ->
   [{fun descendant_or_self_document_node/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{'descendant-or-self', comment}|T]) ->
   [{fun descendant_or_self_comment/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{'descendant-or-self', text}|T]) ->
   [{fun descendant_or_self_text/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{'descendant-or-self', {pi, L}}|T]) ->
   [{fun descendant_or_self_processing_instruction/2, {{L}, []}} | get_funs_from_steps(T)];
get_funs_from_steps([{'descendant-or-self', {N, L}}|T]) ->
   [{fun descendant_or_self_element/2, {{N,L,'_'}, []}} | get_funs_from_steps(T)];
get_funs_from_steps([{'descendant-or-self', '_'}|T]) ->
   [{fun descendant_or_self_node/2, {[]}} | get_funs_from_steps(T)];

get_funs_from_steps([{self, {att, N, L}}|T]) ->
   [{fun self_attribute/2, {{N,L,'_'}, []}} | get_funs_from_steps(T)];
get_funs_from_steps([{self, []}|T]) ->
   [{fun self_document_node/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{self, comment}|T]) ->
   [{fun self_comment/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{self, text}|T]) ->
   [{fun self_text/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{self, namespace}|T]) ->
   [{fun self_namespace/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps([{self, {pi, L}}|T]) ->
   [{fun self_processing_instruction/2, {{L}, []}} | get_funs_from_steps(T)];
get_funs_from_steps([{self, {N, L}}|T]) ->
   [{fun self_element/2, {{N,L,'_'}, []}} | get_funs_from_steps(T)];
get_funs_from_steps([{self, '_'}|T]) ->
   [{fun self_node/2, {[]}} | get_funs_from_steps(T)];
get_funs_from_steps(_) -> throw({error, unknown}).


