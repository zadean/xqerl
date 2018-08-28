%% -------------------------------------------------------------------
%%
%% xqerl_db - XML Database for xqerl XQuery processor
%%
%% Copyright (c) 2018 Zachary N. Dean  All Rights Reserved.
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

-module(xqldb_xdm).
-compile(inline_list_funcs).
-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================

-export([struct_index/1,
         name_index/1
        ]).
-export([run/2]).

%internal
-export([attributes_by_value/2]).

% node constructors
-export([fragment/4,
         document/2,
         element/7,
         text/4,
         comment/4,
         pi/5]).

% reverse axes
-export([% parent
         parents/2,
         document_parents/2,
         element_parents/2,
         named_element_parents/3,
         other_parents/2,
         % ancestor
         ancestors/2,
         document_ancestors/2,
         element_ancestors/2,
         named_element_ancestors/3,
         other_ancestors/2,
         % ancestor-or-self
         ancestor_or_selfs/2,
         document_ancestor_or_selfs/2,
         element_ancestor_or_selfs/2,
         named_element_ancestor_or_selfs/3,
         other_ancestor_or_selfs/2,
         % preceding-sibling
         preceding_siblings/2,
         element_preceding_siblings/2,
         named_element_preceding_siblings/3,
         pi_preceding_siblings/2,
         named_pi_preceding_siblings/3,
         text_preceding_siblings/2,
         comment_preceding_siblings/2,
         % preceding
         precedings/2,
         element_precedings/2,
         named_element_precedings/3,
         pi_precedings/2,
         named_pi_precedings/3,
         text_precedings/2,
         comment_precedings/2
        ]).

% forward axes
-export([% attribute
         attributes/2,
         named_attributes/3,
         namespaces/2,
         % child
         children/2,
         element_children/2,
         named_element_children/3,
         pi_children/2,
         named_pi_children/3,
         text_children/2,
         comment_children/2,
         % self
         selfs/2,
         document_selfs/2,
         element_selfs/2,
         named_element_selfs/3,
         attribute_selfs/2,
         named_attribute_selfs/3,
         pi_selfs/2,
         named_pi_selfs/3,
         text_selfs/2,
         comment_selfs/2,         
         % descendant
         descendants/2,
         element_descendants/2,
         named_element_descendants/3,
         pi_descendants/2,
         named_pi_descendants/3,
         text_descendants/2,
         comment_descendants/2,         
         % descendant-or-self
         descendant_or_selfs/2,
         document_descendant_or_selfs/2,
         element_descendant_or_selfs/2,
         named_element_descendant_or_selfs/3,
         pi_descendant_or_selfs/2,
         named_pi_descendant_or_selfs/3,
         text_descendant_or_selfs/2,
         comment_descendant_or_selfs/2,
         % following-siblings
         following_siblings/2,
         element_following_siblings/2,
         named_element_following_siblings/3,
         pi_following_siblings/2,
         named_pi_following_siblings/3,
         text_following_siblings/2,
         comment_following_siblings/2,
         % following
         followings/2,
         element_followings/2,
         named_element_followings/3,
         pi_followings/2,
         named_pi_followings/3,
         text_followings/2,
         comment_followings/2
        ]).

% node accessors
-export([document_uri/2,
         is_id/2,
         is_idrefs/2,
         nilled/2,
         node_kind/2,
         node_name/2,
         string_value/2,
         type_name/2,
         typed_value/2,
         unparsed_entity_public_id/2,
         unparsed_entity_system_id/2
        ]).

% extras
-export([union/2,
         except/2,
         intersect/2,
         nodify/2,
         atomize/2,
         %
         roots/1,
         path_to_root/2,
         %
         build_parent_index/1,
         build_lang_index/1,
         build_base_uri_index/1,
         build_named_element_children_index/1]).

% internals
-export([name/2,
         id/2,
         ids/1,
         idref/2,
         idrefs/1,
         base_uri/2,
         namespace_uri_for_prefix/2,
         inscope_prefixes/2,
         inscope_namespaces/2,
         inscope_namespace_nodes/2,
         local_name/2,
         namespace_uri/2,
         lang/2,
         root/2,
         has_children/2,
         innermost/2,
         outermost/2,
         position/1,
         position/2,
         last/1
         ]).


struct_index(?DOC) ->
   xqldb_idx_struct:index_doc(__Nodes, __Attributes, __Text, __Comment, __Data).
name_index(?DOC) ->
   xqldb_idx_name:index_doc(__Nodes, __Attributes).



%% ====================================================================
%% XDM Node constructors
%% ====================================================================
document(__Dpt,__Nxt) -> ?DMT.
fragment(__Dpt,__Nxt,__Att,__Nms) -> ?FRG.
element(__Dpt,__Nxt,__Ln,__Px,__Ns,__Att,__Nms) -> ?ELM.
text(__Dpt,__Nxt,__Pos,__Len) -> ?TXT.
comment(__Dpt,__Nxt,__Pos,__Len) -> ?CMT.
pi(__Dpt,__Nxt,__Ln,__Pos,__Len) -> ?PIN.

%% ====================================================================
%% XDM Accessor functions, * Data Model
%% ====================================================================


% return all attribute nodes for an element
attributes(?DOC,[]) -> [];
attributes(?DOC,Ids) when is_list(Ids) ->
   F = fun(I) when is_integer(I) ->
             case ?node_get(I) of
                ?ELM = E ->
                   get_attributes(__Attributes, I, E);
                ?FRG = F ->
                   get_attributes(__Attributes, I, F);
                _ ->
                   []
             end;
          (_) ->
             []
       end,
   lists:map(F, Ids);
attributes(?DOC,I) ->
  [X] = attributes(?DOC,[I]),
  X.

attributes_by_value(?DOC,Value) ->
   F = fun(?ATT) ->
             __AVal == Value
       end,
   lists:filter(F, array:to_list(__Attributes)).

named_attributes(?DOC,Ids,{Ns,Ln}) when is_binary(Ns),is_binary(Ln) ->
   try
      {NsId,LnId} = get_name_id({Ns,Ln}, __Namesp, __Names),
      named_attributes(?DOC,Ids,{NsId,LnId})
   catch
      _:{badkey,_} when is_list(Ids) ->
         [[] || _ <- Ids];
      _:{badkey,_} ->
         []
   end;
named_attributes(?DOC,Ids,{Ns,Ln}) when is_list(Ids) ->
   F = fun(I) ->
             case cached(?FUNCTION_NAME, ?DOC, I, {Ns,Ln}) of
                undefined ->
                   Res = case ?node_get(I) of
                      ?ELM = E ->
                         get_named_attribute(__Attributes,I,E,{Ns,Ln});
                      _ -> 
                         []
                   end,
                   add_to_cache(?FUNCTION_NAME, ?DOC, I, {Ns,Ln}, Res),
                   Res;
                X ->
                   X
             end
       end,
   lists:map(F,Ids);
named_attributes(?DOC,Id,{Ns,Ln}) ->
   [X] = named_attributes(?DOC,[Id],{Ns,Ln}),
   X.

get_named_attribute(_,_,?ELM,_) when __Att == -1 -> [];
get_named_attribute(__Attributes,Par,?ELM,{Ns,Ln}) ->
   case array:get(__Att, __Attributes) of
      ?ATT = A when __APar == Par,
                    Ln == any orelse __ALn == Ln,
                    Ns == any orelse __ANs == Ns ->
         [A|get_named_attribute(__Attributes,Par,__Att + 1,{Ns,Ln})];
      ?ATT when __APar == Par ->
         get_named_attribute(__Attributes,Par,__Att + 1,{Ns,Ln});
      _ ->
         []
   end;
get_named_attribute(__Attributes,Par,__Att,{Ns,Ln}) when is_integer(__Att) ->
   case array:get(__Att, __Attributes) of
      ?ATT = A when __APar == Par,
                    Ln == any orelse __ALn == Ln,
                    Ns == any orelse __ANs == Ns ->
         [A|get_named_attribute(__Attributes,Par,__Att + 1,{Ns,Ln})];
      ?ATT when __APar == Par ->
         get_named_attribute(__Attributes,Par,__Att + 1,{Ns,Ln});
      _ ->
         []
   end;
get_named_attribute(_,_,_,_) ->
   [].

get_attributes(<<>>,_,?FRG) -> [];
get_attributes(__Attributes,_,?FRG) -> % frag can have one attribute
   case array:get(0, __Attributes) of
      undefined ->
         [];
      A ->
         [A]
   end;
get_attributes(_,_,?ELM) when __Att == -1 -> [];
get_attributes(__Attributes,Par,?ELM) ->
   case array:get(__Att, __Attributes) of
      ?ATT = A when __APar == Par ->
         [A|get_attributes(__Attributes,Par,__Att + 1)];
      _ ->
         []
   end;
get_attributes(__Attributes,Par,__Att) when is_integer(__Att) ->
   case array:get(__Att, __Attributes) of
      ?ATT = A when __APar == Par ->
         [A|get_attributes(__Attributes,Par,__Att + 1)];
      _ ->
         []
   end;
get_attributes(_,_,_) ->
   [].

% return all child nodes for an element or document, 
% children can not be namespace, attribute, or document nodes
children(_,[]) -> [];
children(?DOC,Ids) when is_list(Ids) -> 
   F = fun(I) ->
             case ?node_get(I) of
                ?ELM -> get_children(?DOC,I,__Dpt);
                ?DMT -> get_children(?DOC,I,__Dpt);
                ?FRG -> 
                   if byte_size(__Nodes) == ?BSZ ->
                         [];
                      true ->
                         hd(roots(?DOC))
                   end;
                _ -> []
             end
       end,
   lists:map(F,Ids);
children(?DOC,I) ->
  [X] = children(?DOC,[I]),
  X.

get_children(?DOC,Par,Dpt) ->
   Next = Par + 1,
   case ?node_get(Next) of
      ?NOD when __Dpt == Dpt + 1,
                __Nxt > Par,
                <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
         [Next|get_siblings(?DOC,__Nxt,Next)];
      ?NOD when __Dpt == Dpt + 1 ->
         [Next];
      _ -> 
         []
   end.

get_siblings(?DOC,Cur,Lst) ->
   case ?node_get(Cur) of
      ?FRG ->
         case byte_size(__Nodes) of 
            ?BSZ -> % empty frag, may have attributes or namespaces
               namespaces(?DOC, Cur) ++ attributes(?DOC, Cur);
            _ ->
               get_siblings(?DOC,1,1)
         end;
      ?NOD when __Nxt > Lst,
                <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
         [Cur|get_siblings(?DOC,__Nxt,Cur)];
      _ -> 
         [Cur]
   end.

% Returns the absolute URI of the resource from which the Document Node was constructed, 
% or the empty sequence if no such absolute URI is available.
document_uri(?DOC,Ids) ->
   F = fun(I) when is_integer(I) ->
             case ?node_get(I) of
                ?DMT ->
                   __Filename;
                _ ->
                   []
             end;
          (_) ->
             []
       end,
   lists:map(F, Ids).

is_id(?DOC,Ids) when is_list(Ids) ->
   try
      P = maps:get(<<"xml">>, __Names),
      L = maps:get(<<"id">>, __Names),
      F = fun(?ATT) when __APx == P andalso __ALn == L ->
                true;
             (_) ->
                false
          end,
      lists:map(F, Ids)
   catch 
      _:{badkey,_} ->
         false
   end;
is_id(?DOC,Id) ->
   [X] = is_id(?DOC,[Id]),
   X.

ids(?DOC) ->
   P = maps:get(<<"xml">>, __Names, -1),
   L = maps:get(<<"id">>, __Names, -1),
   F = fun(?ATT) when __APx == P andalso __ALn == L;
                      __ATyp =:= 'ID'  ->
             {true, __APar};
          (_) ->
             false
       end,
   lists:filtermap(F, array:to_list(__Attributes)).
   
idrefs(?DOC) ->
   F = fun(?ATT) when __ATyp =:= 'IDREF';
                      __ATyp =:= 'IDREFS' ->
             {true, __APar};
          (_) ->
             false
       end,
   lists:filtermap(F, array:to_list(__Attributes)).
   
id(?DOC,Values) ->
   P = maps:get(<<"xml">>, __Names, -1),
   L = maps:get(<<"id">>, __Names, -1),
   F = fun(?ATT) when __APx == P andalso __ALn == L;
                      __ATyp =:= 'ID'  ->
             case __AVal of
                {_,V} ->
                   Tr = lists:member(V, Values),
                   if Tr ->
                         {true, __APar};
                      true ->
                         false
                   end;
                V ->
                   Tr = lists:member(V, Values),
                   if Tr ->
                         {true, __APar};
                      true ->
                         false
                   end
             end;
          (_) ->
             false
       end,
   lists:filtermap(F, array:to_list(__Attributes)).

att_str_val({_,V}) -> V;
att_str_val(V) -> V.

   
idref(?DOC,Values) ->
   F = fun(?ATT) when __ATyp =:= 'IDREF'  ->
             V = att_str_val(__AVal),
             Tr = lists:member(V, Values),
             if Tr ->
                   {true, ?ATT};
                true ->
                   false
             end;
          (?ATT) when __ATyp =:= 'IDREFS' -> % maybe list join ?
             V = att_str_val(__AVal),
             L = string:split(V, " "), % works because the string is normalized
             Tr = lists:any(fun(I) ->
                                  lists:member(I, Values)
                            end, L),
             if Tr ->
                   {true, ?ATT};
                true ->
                   false
             end;
          (_) ->
             false
       end,
   lists:filtermap(F, array:to_list(__Attributes)).
   

is_idrefs(_,Ids) ->
   F = fun(?ATT) when __ATyp =:= 'IDREFS' ->
             true;
          (_) ->
             false
       end,
   lists:map(F, Ids).

%% The dm:namespace-nodes accessor returns the dynamic, in-scope namespaces 
%% associated with a node as a sequence containing zero or more Namespace 
%% Nodes. The order of Namespace Nodes is stable but implementation dependent.
namespaces(_,[]) -> [];
namespaces(?DOC,Ids) when is_list(Ids) -> 
   F = fun(?NSP = N) ->
             [N];
          (I) ->
             case ?node_get(I) of
                ?ELM = E when <<?nms(__Nms)>> =/= <<255,255,255,255>> ->
                   get_namespaces(__Nss, I, E);
                ?FRG = F ->
                   get_namespaces(__Nss, I, F);
                _ ->
                   []
             end
       end,
   lists:map(F, Ids);
namespaces(?DOC,I) ->
   [X] = namespaces(?DOC,[I]),
   X.
 
get_namespaces(_Namesp,_Par,?ELM) when <<?nms(__Nms)>> == <<255,255,255,255>> -> [];
get_namespaces(Namesp,Par,?ELM) -> 
   get_namespaces(Namesp,Par,__Nms);
get_namespaces(Namesp,_Par,?FRG) -> 
   case array:get(0, Namesp) of
      undefined ->
         [];
      A ->
         [A]
   end;
get_namespaces(Namesp,Par,__Nms) when is_integer(__Nms) ->
   case array:get(__Nms, Namesp) of
      ?NSP = A when __Par == Par ->
         [A|get_namespaces(Namesp,Par,__Nms + 1)];
      _ ->
         []
   end.


nilled(_,_) -> % can only work with schema typed elements
   false.

node_kind(?DOC,Ids) when is_list(Ids) ->
   F = fun(?ATT) -> attribute;
          (?NSP) -> namespace;
          (I) ->
             case ?node_get(I) of
                ?FRG -> fragment;
                ?ELM -> element;
                ?TXT -> text;
                ?CMT -> comment;
                ?PIN -> 'processing-instruction';
                ?DMT -> document                
             end
       end,
   lists:map(F, Ids);
node_kind(?DOC,I) ->
  [X] = node_kind(?DOC,[I]),
  X.

node_name(?DOC,Ids) when is_list(Ids) ->
   F = fun(?NSP) ->
             L = maps:get(__Ln, __Names),
             N = maps:get(__Ns, __Namesp),
             if N == [] ->
                   [];
                true ->
                   {<<>>,<<>>,L}
             end;
          (?ATT) ->
             L = maps:get(__ALn, __Names),
             P = maps:get(__APx, __Names),
             N = maps:get(__ANs, __Namesp),
             {N,P,L};
          (I) ->
             case ?node_get(I) of
                ?ELM ->
                   L = maps:get(__Ln, __Names),
                   P = maps:get(__Px, __Names),
                   N = maps:get(__Ns, __Namesp),
                   {N,P,L};
                ?PIN ->
                   L = maps:get(__Ln, __Names),
                   {<<>>,<<>>,L};
                ?FRG when byte_size(__Nodes) == ?BSZ ->
                   %?dbg("?FRG",?FRG),
                   %?dbg("?DOC",?DOC),
                   case namespaces(?DOC, 0) ++ attributes(?DOC, 0) of
                      [] ->
                         {<<>>,<<>>,<<>>};
                      [H|_] ->
                         node_name(?DOC,H)
                   end;
                _ ->
                   {<<>>,<<>>,<<>>}
             end
       end,
   lists:map(F, Ids);
node_name(?DOC,I) ->
  [X] = node_name(?DOC,[I]),
  X.

name(?DOC,Ids) when is_list(Ids) ->
   F = fun(?NSP) ->
             L = maps:get(__Ln, __Names),
             N = maps:get(__Ns, __Namesp),
             if N == [] ->
                   [];
                   %{'no-namespace',[],L};
                true ->
                   %{[],[],L}
                   {N,[],L}
             end;
          (?ATT) ->
             L = maps:get(__ALn, __Names),
             P = maps:get(__APx, __Names),
             N = maps:get(__ANs, __Namesp),
             {N,P,L};
          (I) ->
             case ?node_get(I) of
                ?ELM ->
                   L = maps:get(__Ln, __Names),
                   P = maps:get(__Px, __Names),
                   N = maps:get(__Ns, __Namesp),
                   {N,P,L};
                ?PIN ->
                   L = maps:get(__Ln, __Names),
                   {[],[],L};
                ?FRG when byte_size(__Nodes) == ?BSZ ->
                   %?dbg("?FRG",?FRG),
                   %?dbg("?DOC",?DOC),
                   case namespaces(?DOC, 0) ++ attributes(?DOC, 0) of
                      [] ->
                         {[],[],[]};
                      [H|_] ->
                         node_name(?DOC,H)
                   end;
                _ ->
                   {[],[],[]}
             end
       end,
   lists:map(F, Ids);
name(?DOC,I) ->
  [X] = name(?DOC,[I]),
  X.


%string_value
% document and element collect all text node values
%  if next is set and larger than current, all text between current and next - 1
%  if next smaller than current, scan forward until depth is =< current depth 
% text returns text
% pi returns data
% comment returns text
% attribute returns value
% namespace returs uri

string_value(?DOC,Ids) when is_list(Ids) ->
   F = fun(?ATT) -> 
             case __AVal of
                {_,V} ->
                   V;
                V ->
                   V
             end;
          (?NSP) -> maps:get(__Ns, __Namesp);
          (I) ->
             case ?node_get(I) of
                ?ELM when __Nxt > I -> 
                   {Pos,Len} = collect_texts(I,__Nxt - 1,[],[],__Nodes),
                   get_text_value(Pos, Len, __Text);
                ?DMT when __Nxt > I, <<?nxt(__Nxt)>> =/= <<255,255,255,255>> -> 
                   {Pos,Len} = collect_texts(I,__Nxt - 1,[],[],__Nodes),
                   get_text_value(Pos, Len, __Text);
                ?ELM -> 
                   Lst = last_descendant(I + 1,I,__Dpt,__Nodes),
                   {Pos,Len} = collect_texts(I,Lst,[],[],__Nodes),
                   get_text_value(Pos, Len, __Text);
                ?DMT -> 
                   Lst = last_descendant(I + 1,I,0,__Nodes),
                   {Pos,Len} = collect_texts(I,Lst,[],[],__Nodes),
                   get_text_value(Pos, Len, __Text);
                ?TXT -> 
                   get_text_value(__Pos, __Len, __Text);
                ?CMT -> 
                   get_text_value(__Pos, __Len, __Comment);
                ?PIN -> 
                   string:trim(get_text_value(__Pos, __Len, __Data),leading)
             end
       end,
   lists:map(F, Ids);
string_value(?DOC,Id) ->
   [X] = string_value(?DOC,[Id]),
   X.


parents(?DOC,Ids) when is_list(Ids) ->
   Parents = maps:get(parent, __Indexes),
   F = fun(?NSP) ->
             [];
             %[__Par];
          (?ATT) when __APar =/= 0 ->
             [__APar];
          (?ATT) ->
             [];
          (I) ->
             case binary_part(Parents, I * 4, 4) of
                <<255,255,255,255>> ->
                   [];
                <<?nxt(0)>> -> % check for fragment
                   case ?node_get(0) of
                      ?FRG ->
                         [];
                      _ ->
                         [0]
                   end;
                <<?nxt(P)>> ->
                   [P]
             end
       end,
   lists:usort(lists:map(F, Ids)).
document_parents(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = parents(?DOC, [I]),
             f_document_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
element_parents(?DOC,Ids) ->
   F = fun(I) ->
             [P] = parents(?DOC, [I]),
             f_element_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_element_parents(?DOC,Ids,{Ns,Ln}) -> 
   F = fun(I) ->
             [P] = parents(?DOC, [I]),
             f_named_element_nodes(?DOC, P,{Ns,Ln})
       end,
   lists:map(F, Ids).
other_parents(_,_) -> [[]].

ancestors(?DOC,Ids) ->
   F = fun(I) ->
             path_to_root(?DOC, I)
       end,
   lists:reverse(lists:usort(lists:map(F, Ids))).
document_ancestors(?DOC,Ids) ->
   F = fun(I) ->
             P = path_to_root(?DOC, I),
             f_document_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
element_ancestors(?DOC,Ids) ->
   F = fun(I) ->
             P = path_to_root(?DOC, I),
             f_element_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_element_ancestors(?DOC,Ids,{Ns,Ln}) ->
   F = fun(I) ->
             P = path_to_root(?DOC, I),
             f_named_element_nodes(?DOC, P,{Ns,Ln})
       end,
   lists:map(F, Ids).
other_ancestors(_,_) -> [[]].

ancestor_or_selfs(?DOC,Ids) -> 
   F = fun(0) ->
             case ?node_get(0) of
                ?FRG -> % some standalone namespace or attribute 
                   namespaces(?DOC, 0) ++ attributes(?DOC, 0);
                _ ->
                   [0]
             end;
          (I) ->
             X = [I|path_to_root(?DOC, I)],
             ?dbg("X",X),
             X
       end,
   lists:reverse(lists:usort(lists:map(F, Ids))).
document_ancestor_or_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             P = [I|path_to_root(?DOC, I)],
             f_document_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
element_ancestor_or_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             P = [I|path_to_root(?DOC, I)],
             f_element_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_element_ancestor_or_selfs(?DOC,Ids,{Ns,Ln}) -> 
   F = fun(I) ->
             P = [I|path_to_root(?DOC, I)],
             f_named_element_nodes(?DOC, P,{Ns,Ln})
       end,
   lists:map(F, Ids).
other_ancestor_or_selfs(_,_) -> [[]].

%TODO
preceding_siblings(?DOC,Ids) -> 
   F = fun(?ATT) -> [];
          (?NSP) -> [];
          (I) ->
             [P] = parents(?DOC, [I]),
             case children(?DOC, P) of
                [] ->
                   [];
                [C] ->
                   lists:reverse(lists:usort([X || X <- C, X < I]))
             end
       end,
   lists:map(F, Ids).
element_preceding_siblings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = preceding_siblings(?DOC, [I]),
             f_element_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_element_preceding_siblings(?DOC,Ids,{Ns,Ln}) -> 
   F = fun(I) ->
             [P] = preceding_siblings(?DOC, [I]),
             f_named_element_nodes(?DOC, P,{Ns,Ln})
       end,
   lists:map(F, Ids).
pi_preceding_siblings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = preceding_siblings(?DOC, [I]),
             f_pi_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_pi_preceding_siblings(?DOC,Ids,Ln) -> 
   F = fun(I) ->
             [P] = preceding_siblings(?DOC, [I]),
             f_named_pi_nodes(?DOC, P, Ln)
       end,
   lists:map(F, Ids).
text_preceding_siblings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = preceding_siblings(?DOC, [I]),
             f_text_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
comment_preceding_siblings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = preceding_siblings(?DOC, [I]),
             f_comment_nodes(?DOC, P)
       end,
   lists:map(F, Ids).

precedings(?DOC,Ids) ->
   F = fun(I) ->
             case path_to_root(?DOC, [I]) of
                [[]] ->
                   [];
                [PR] ->
                   R = lists:last(PR),
                   P = lists:seq(R, I - 1),
                   lists:reverse(lists:sort(P -- PR))
             end
       end,
   lists:map(F, Ids).
element_precedings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = precedings(?DOC, [I]),
             f_element_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_element_precedings(?DOC,Ids,{Ns,Ln}) -> 
   F = fun(I) ->
             [P] = precedings(?DOC, [I]),
             f_named_element_nodes(?DOC, P,{Ns,Ln})
       end,
   lists:map(F, Ids).
pi_precedings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = precedings(?DOC, [I]),
             f_pi_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_pi_precedings(?DOC,Ids,Ln) -> 
   F = fun(I) ->
             [P] = precedings(?DOC, [I]),
             f_named_pi_nodes(?DOC, P, Ln)
       end,
   lists:map(F, Ids).
text_precedings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = precedings(?DOC, [I]),
             f_text_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
comment_precedings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = precedings(?DOC, [I]),
             f_comment_nodes(?DOC, P)
       end,
   lists:map(F, Ids).

selfs(_,Ids) -> [Ids].
document_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             f_document_nodes(?DOC, [I])
       end,
   lists:map(F, Ids).
element_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             f_element_nodes(?DOC, [I])
       end,
   lists:map(F, Ids).
named_element_selfs(?DOC,Ids,{Ns,Ln}) -> 
   F = fun(I) ->
             f_named_element_nodes(?DOC, [I],{Ns,Ln})
       end,
   lists:map(F, Ids).
attribute_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             f_attribute_nodes(?DOC, [I])
       end,
   lists:map(F, Ids).
named_attribute_selfs(?DOC,Ids,{Ns,Ln}) -> 
   F = fun(I) ->
             f_named_attribute_nodes(?DOC, [I],{Ns,Ln})
       end,
   lists:map(F, Ids).
pi_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             f_pi_nodes(?DOC, [I])
       end,
   lists:map(F, Ids).
named_pi_selfs(?DOC,Ids,Ln) -> 
   F = fun(I) ->
             f_named_pi_nodes(?DOC, [I], Ln)
       end,
   lists:map(F, Ids).
text_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             f_text_nodes(?DOC, [I])
       end,
   lists:map(F, Ids).
comment_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             f_comment_nodes(?DOC, [I])
       end,
   lists:map(F, Ids).

descendants(?DOC,Ids) when is_list(Ids) ->
   F = fun(?ATT) -> [];
          (?NSP) -> [];
          (I) ->
             case ?node_get(I) of
                ?ELM when __Nxt > I, <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
                   lists:seq(I + 1, __Nxt - 1);
                ?DMT when __Nxt > I, <<?nxt(__Nxt)>> =/= <<255,255,255,255>> -> 
                   lists:seq(I + 1, __Nxt - 1);
                ?ELM -> 
                   Lst = last_descendant(I + 1,I,__Dpt,__Nodes),
                   lists:seq(I + 1, Lst);
                ?DMT -> 
                   Lst = last_descendant(I + 1,I,0,__Nodes),
                   lists:seq(I + 1, Lst);
                _ -> 
                   []
             end
       end,
   lists:map(F, Ids);
descendants(?DOC,Id) ->
   [X] = descendants(?DOC,[Id]),
   X.
element_descendants(?DOC,Ids) -> 
   F = fun(I) ->
             P = descendants(?DOC, I),
             f_element_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_element_descendants(?DOC,Ids,{Ns,Ln}) -> 
   F = fun(I) ->
             P = descendants(?DOC, I),
             f_named_element_nodes(?DOC, P,{Ns,Ln})
       end,
   lists:map(F, Ids).
pi_descendants(?DOC,Ids) -> 
   F = fun(I) ->
             P = descendants(?DOC, I),
             f_pi_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_pi_descendants(?DOC,Ids,Ln) -> 
   F = fun(I) ->
             P = descendants(?DOC, I),
             f_named_pi_nodes(?DOC, P, Ln)
       end,
   lists:map(F, Ids).
text_descendants(?DOC,Ids) -> 
   F = fun(I) ->
             P = descendants(?DOC, I),
             f_text_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
comment_descendants(?DOC,Ids) -> 
   F = fun(I) ->
             P = descendants(?DOC, I),
             f_comment_nodes(?DOC, P)
       end,
   lists:map(F, Ids).

descendant_or_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             [I|descendants(?DOC, I)]
       end,
   lists:map(F, Ids).
document_descendant_or_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             f_document_nodes(?DOC, [I])
       end,
   lists:map(F, Ids).
element_descendant_or_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             P = [I|descendants(?DOC, I)],
             f_element_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_element_descendant_or_selfs(?DOC,Ids,{Ns,Ln}) -> 
   F = fun(I) ->
             P = [I|descendants(?DOC, I)],
             f_named_element_nodes(?DOC, P,{Ns,Ln})
       end,
   lists:map(F, Ids).
pi_descendant_or_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             P = [I|descendants(?DOC, I)],
             f_pi_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_pi_descendant_or_selfs(?DOC,Ids,Ln) -> 
   F = fun(I) ->
             P = [I|descendants(?DOC, I)],
             f_named_pi_nodes(?DOC, P, Ln)
       end,
   lists:map(F, Ids).
text_descendant_or_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             P = [I|descendants(?DOC, I)],
             f_text_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
comment_descendant_or_selfs(?DOC,Ids) -> 
   F = fun(I) ->
             P = [I|descendants(?DOC, I)],
             f_comment_nodes(?DOC, P)
       end,
   lists:map(F, Ids).

following_siblings(?DOC,Ids) ->
   F = fun O(I) ->
              case cached(?FUNCTION_NAME,?DOC,I) of
                 undefined ->
                    List = case ?node_get(I) of
                              ?NOD when __Nxt > I,
                                        <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
                                 [__Nxt|O(__Nxt)];
                              _ ->
                                 []
                           end,
                    add_to_cache(?FUNCTION_NAME,?DOC,I,List),
                    List;
                 R ->
                    R
              end
       end,
   lists:map(F, Ids).

following_sibling_nodes(?DOC,Ids) ->
   F = fun O(I) ->
              case cached(?FUNCTION_NAME,?DOC,I) of
                 undefined ->
                    List = case ?node_get(I) of
                              ?NOD when __Nxt > I,
                                        <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
                                 [{__Nxt,
                                   binary:copy(?node_get(__Nxt))}|O(__Nxt)];
                              _ ->
                                 []
                           end,
                    add_to_cache(?FUNCTION_NAME,?DOC,I,List),
                    List;
                 R ->
                    R
              end
       end,
   lists:map(F, Ids).

element_following_siblings(?DOC,Ids) ->
   F = fun O(I) ->
             case ?node_get(I) of
                ?ELM when __Nxt > I,
                          <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
                   [__Nxt|O(__Nxt)];
                ?NOD when __Nxt > I,
                          <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
                   O(__Nxt);
                _ ->
                   []
             end
       end,
   lists:map(F, Ids).
named_element_following_siblings(?DOC,Ids,{Ns,Ln}) when is_binary(Ns),is_binary(Ln) ->
   try
      {NsId,LnId} = get_name_id({Ns,Ln}, __Namesp, __Names),
      named_element_following_siblings(?DOC,Ids,{NsId,LnId})
   catch
      _:{badkey,_} when is_list(Ids) ->
         [[] || _ <- Ids];
      _:{badkey,_} ->
         []
   end; 
named_element_following_siblings(?DOC,Ids,{Ns,Ln}) -> 
   F = fun(I) ->
      case cached(?FUNCTION_NAME,?DOC,I,{Ns,Ln}) of
         undefined ->
            Resp = begin
                      [S] = following_sibling_nodes(?DOC, [I]),
                      %[S] = following_siblings(?DOC, [I]),
                      %f_named_element_nodes(?DOC, S, {Ns,Ln})
                      f_named_element_nodes(?DOC, S, {Ns,Ln})
                   end,
            add_to_cache(?FUNCTION_NAME,?DOC,I,{Ns,Ln},Resp),
            Resp;
         R ->
            R
      end
   end,
   lists:map(F, Ids).
pi_following_siblings(?DOC,Ids) -> 
   F = fun(I) ->
             [S] = following_siblings(?DOC, [I]),
             f_pi_nodes(?DOC, S)
       end,
   lists:map(F, Ids).
named_pi_following_siblings(?DOC,Ids,Ln) when is_binary(Ln) ->
   try
      LnId = get_name_id(Ln,__Names),
      named_pi_following_siblings(?DOC,Ids,LnId)
   catch
      _:{badkey,_} when is_list(Ids) ->
         [[] || _ <- Ids];
      _:{badkey,_} ->
         []
   end; 
named_pi_following_siblings(?DOC,Ids,Ln) -> 
   F = fun O(I) ->
             case ?node_get(I) of
                ?PIN when __Nxt > I,
                          Ln == any orelse __Ln == Ln,
                          <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
                   [__Nxt|O(__Nxt)];
                ?NOD when __Nxt > I,
                          <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
                   O(__Nxt);
                _ ->
                   []
             end
       end,
   lists:map(F, Ids).
text_following_siblings(?DOC,Ids) -> 
   F = fun O(I) ->
             case ?node_get(I) of
                ?TXT when __Nxt > I,
                          <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
                   [__Nxt|O(__Nxt)];
                ?NOD when __Nxt > I,
                          <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
                   O(__Nxt);
                _ ->
                   []
             end
       end,
   lists:map(F, Ids).
comment_following_siblings(?DOC,Ids) -> 
   F = fun O(I) ->
             case ?node_get(I) of
                ?CMT when __Nxt > I,
                          <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
                   [__Nxt|O(__Nxt)];
                ?NOD when __Nxt > I,
                          <<?nxt(__Nxt)>> =/= <<255,255,255,255>> ->
                   O(__Nxt);
                _ ->
                   []
             end
       end,
   lists:map(F, Ids).

get_last_descendant(?DOC,I) ->
   case ?node_get(I) of
      ?NOD when <<?nxt(__Nxt)>> == <<255,255,255,255>> ->
         % document node no following
         (byte_size(__Nodes) div ?BSZ) - 1;
      ?NOD when __Nxt > I ->
         __Nxt - 1;
      ?ELM ->
         last_descendant(I + 1, I, __Dpt, __Nodes);
      _ ->
         I
   end.
         
followings(?DOC,Ids) -> 
   F = fun(I) ->
             [PR] = path_to_root(?DOC, [I]),
             case PR of
                [] ->
                   [];
                _ ->
                   RL = get_last_descendant(?DOC,lists:last(PR)),
                   CL = get_last_descendant(?DOC,I),
                   P = lists:seq(CL + 1, RL),
                   lists:sort(P -- PR)
             end
       end,
   lists:map(F, Ids).
element_followings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = followings(?DOC, [I]),
             f_element_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_element_followings(?DOC,Ids,{Ns,Ln}) -> 
   F = fun(I) ->
             [P] = followings(?DOC, [I]),
             f_named_element_nodes(?DOC, P,{Ns,Ln})
       end,
   lists:map(F, Ids).
pi_followings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = followings(?DOC, [I]),
             f_pi_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
named_pi_followings(?DOC,Ids,Ln) -> 
   F = fun(I) ->
             [P] = followings(?DOC, [I]),
             f_named_pi_nodes(?DOC, P, Ln)
       end,
   lists:map(F, Ids).
text_followings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = followings(?DOC, [I]),
             f_text_nodes(?DOC, P)
       end,
   lists:map(F, Ids).
comment_followings(?DOC,Ids) -> 
   F = fun(I) ->
             [P] = followings(?DOC, [I]),
             f_comment_nodes(?DOC, P)
       end,
   lists:map(F, Ids).

% return text node ids when given list of ids, use as filter for descendants
f_text_nodes(_,[]) -> [];
f_text_nodes(?DOC,[I|T]) ->
   case ?node_get(I) of
      ?TXT ->
         [I|f_text_nodes(?DOC,T)];
      _ ->
         f_text_nodes(?DOC,T)
   end.

% return comment node ids when given list of ids, use as filter for descendants
f_comment_nodes(_,[]) -> [];
f_comment_nodes(?DOC,[I|T]) ->
   case ?node_get(I) of
      ?CMT ->
         [I|f_comment_nodes(?DOC,T)];
      _ ->
         f_comment_nodes(?DOC,T)
   end.

% return processing-instruction node ids when given list of ids, use as filter for descendants
f_pi_nodes(_,[]) -> [];
f_pi_nodes(?DOC,[I|T]) ->
   case ?node_get(I) of
      ?PIN ->
         [I|f_pi_nodes(?DOC,T)];
      _ ->
         f_pi_nodes(?DOC,T)
   end.

% return named processing-instruction node ids when given list of ids, use as filter for descendants
f_named_pi_nodes(?DOC,Ids,Ln) when is_binary(Ln) ->
   try
      LnId = get_name_id(Ln, __Names),
      f_named_pi_nodes(?DOC,Ids,LnId)
   catch
      _:{badkey,_} when is_list(Ids) ->
         [[] || _ <- Ids];
      _:{badkey,_} ->
         []
   end;
f_named_pi_nodes(_,[],_) -> [];
f_named_pi_nodes(?DOC,[I|T],Ln) ->
   case ?node_get(I) of
      ?PIN when Ln == any orelse __Ln == Ln ->
         [I|f_named_pi_nodes(?DOC,T,Ln)];
      _ ->
         f_named_pi_nodes(?DOC,T,Ln)
   end.

% return document node ids when given list of ids, use as filter for descendants
f_document_nodes(_,[]) -> [];
f_document_nodes(?DOC,[I|T]) ->
   case ?node_get(I) of
      ?DMT ->
         [I|f_document_nodes(?DOC,T)];
      _ ->
         f_document_nodes(?DOC,T)
   end.

% return element node ids when given list of ids, use as filter for descendants
f_element_nodes(_,[]) -> [];
f_element_nodes(?DOC,[I|T]) ->
   case ?node_get(I) of
      ?ELM ->
         [I|f_element_nodes(?DOC,T)];
      _ ->
         f_element_nodes(?DOC,T)
   end.

% return named element node ids when given list of ids, use as filter for descendants
f_named_element_nodes(?DOC,Ids,{Ns,Ln}) when is_binary(Ns),is_binary(Ln) ->
   try
      {NsId,LnId} = get_name_id({Ns,Ln}, __Namesp, __Names),
      f_named_element_nodes(?DOC,Ids,{NsId,LnId})
   catch
      _:{badkey,_} when is_list(Ids) ->
         [[] || _ <- Ids];
      _:{badkey,_} ->
         []
   end;
f_named_element_nodes(_,[],_) -> [];
%% f_named_element_nodes(?DOC,Ids,{any,any}) ->
%%    f_element_nodes(?DOC,Ids);
f_named_element_nodes(?DOC,[I|T],{Ns,Ln}) when is_integer(I) ->
   case ?node_get(I) of
      ?ELM when Ln == any orelse __Ln == Ln,
                Ns == any orelse __Ns == Ns ->
         [I|f_named_element_nodes(?DOC,T,{Ns,Ln})];
      _ ->
         f_named_element_nodes(?DOC,T,{Ns,Ln})
   end;
f_named_element_nodes(?DOC,[I|T],{Ns,Ln}) ->
   case I of
      {Id,?ELM} when Ln == any orelse __Ln == Ln,
                     Ns == any orelse __Ns == Ns ->
         [Id|f_named_element_nodes(?DOC,T,{Ns,Ln})];
      _ ->
         f_named_element_nodes(?DOC,T,{Ns,Ln})
   end.

f_attribute_nodes(_,[]) -> [];
f_attribute_nodes(?DOC,[I|T]) ->
   case I of
      ?ATT ->
         [I|f_attribute_nodes(?DOC,T)];
      _ ->
         f_attribute_nodes(?DOC,T)
   end.

% return named attribute node ids when given list of ids, use as filter for descendants
f_named_attribute_nodes(?DOC,Ids,{Ns,Ln}) when is_binary(Ns),is_binary(Ln) ->
   try
      {NsId,LnId} = get_name_id({Ns,Ln}, __Namesp, __Names),
      f_named_attribute_nodes(?DOC,Ids,{NsId,LnId})
   catch
      _:{badkey,_} when is_list(Ids) ->
         [[] || _ <- Ids];
      _:{badkey,_} ->
         []
   end;
f_named_attribute_nodes(_,[],_) -> [];
f_named_attribute_nodes(?DOC,[I|T],{Ns,Ln}) ->
   case I of
      ?ATT when Ln == any orelse __ALn == Ln,
                Ns == any orelse __ANs == Ns ->
         [I|f_named_attribute_nodes(?DOC,T,{Ns,Ln})];
      _ ->
         f_named_attribute_nodes(?DOC,T,{Ns,Ln})
   end.

last_descendant(I,Last,Depth,__Nodes) ->
   case ?node_get(I) of
      ?DOC ->
         Last;
      ?NOD when __Dpt =< Depth ->
         Last;
      ?NOD ->
         last_descendant(I + 1,I,Depth,__Nodes);
      _ ->
         Last
   end.

collect_texts(I,Max,First,Last,__Nodes) when I =< Max ->
   case ?node_get(I) of
      ?TXT when First == [] -> 
         collect_texts(I + 1,Max,{__Pos,__Len},{__Pos,__Len},__Nodes);
      ?TXT -> 
         collect_texts(I + 1,Max,First,{__Pos,__Len},__Nodes);
      _ ->
         collect_texts(I + 1,Max,First,Last,__Nodes)
   end;
collect_texts(_,_,{FPos,_},{LPos,LLen},_) ->
   {FPos, LPos + LLen - FPos};
collect_texts(_,_,[],_,_) -> {0,0}. % no texts

get_text_value(Pos,Len,Bin) ->
   % copy before sending to not send the entire bin
   binary:copy(binary:part(Bin, Pos, Len)).


% element 'xs:untyped', attribute and  PI 'xs:untypedAtomic' rest []
type_name(?DOC,Ids) when is_list(Ids) ->
   F = fun(?NSP) -> [];
          (?ATT) -> 'xs:untypedAtomic';
          (I) ->
             case ?node_get(I) of
                ?ELM -> 'xs:untyped';
                ?PIN -> 'xs:untypedAtomic';
                _ -> []
             end
       end,
   lists:map(F, Ids);
type_name(?DOC,Id) ->
   [X] = type_name(?DOC,[Id]),
   X.

typed_value(Doc,Node) ->
   string_value(Doc, Node).

unparsed_entity_public_id(_,_) ->
   [].

unparsed_entity_system_id(_,_) ->
   [].


roots(?DOC) ->
   [get_siblings(?DOC,0,0)].

path_to_root(?DOC,Ids) when is_list(Ids) ->
   Par = maps:get(parent, __Indexes),
   P = fun O(?NSP) when __Par == 0 -> 
              [];
           O(?NSP) -> 
              [__Par|O(__Par)];
           O(?ATT) when __APar == 0 -> 
              [];
           O(?ATT) -> 
              [__APar|O(__APar)];
           O(I) -> 
              case binary_part(Par,I * 4,4) of
                 <<255,255,255,255>> ->
                    [];
                 <<0:32/integer>> ->
                    case ?node_get(0) of
                       ?FRG ->
                          [];
                       _ ->
                          [0]
                    end;
                 <<X:32/integer>> ->
                    [X|O(X)]
              end
       end,
   lists:map(P, Ids);
path_to_root(?DOC,Id) ->
   %?dbg("?DOC",?DOC),
   [X] = path_to_root(?DOC,[Id]),
   X.

named_element_children(?DOC,Ids,{Ns,Ln}) when is_binary(Ns),is_binary(Ln) ->
   try
      {NsId,LnId} = get_name_id({Ns,Ln}, __Namesp, __Names),
      named_element_children(?DOC,Ids,{NsId,LnId})
   catch
      _:{badkey,_} when is_list(Ids) ->
         [[] || _ <- Ids];
      _:{badkey,_} ->
         []
   end;
named_element_children(?DOC,Ids,{Ns,Ln}) when is_list(Ids) ->
   Named = maps:get(named_element_children, __Indexes),
   F = fun(I) ->
             case maps:find({I,Ns,Ln}, Named) of
                error ->
                   %?dbg("{I,Ns,Ln}",{I,Ns,Ln}),
                   %?dbg("Named",Named),
                   [];
                {ok,L} ->
                   lists:reverse(L)
             end
       end,
   lists:map(F,Ids);
named_element_children(?DOC,Id,{Ns,Ln}) ->
   [X] = named_element_children(?DOC,[Id],{Ns,Ln}),
   X.

element_children(?DOC,Ids) when is_list(Ids) ->
   F = fun(I) ->
             case ?node_get(I) of
                ?ELM ->
                   Fst = get_first_child(__Nodes, I, __Dpt),
                   get_element_children(__Nodes,Fst);
                ?DMT -> 
                   Fst = get_first_child(__Nodes, I, 0),
                   get_element_children(__Nodes,Fst);
                _ -> 
                   []
             end
       end,
   lists:map(F,Ids);
element_children(?DOC,Id) ->
   [X] = element_children(?DOC,[Id]),
   X.

text_children(?DOC,Ids) when is_list(Ids) ->
   F = fun(I) ->
             case ?node_get(I) of
                ?ELM ->
                   Fst = get_first_child(__Nodes, I, __Dpt),
                   get_text_children(__Nodes,Fst);
                ?DMT -> 
                   Fst = get_first_child(__Nodes, I, 0),
                   get_text_children(__Nodes,Fst);
                _ -> 
                   []
             end
       end,
   lists:map(F,Ids);
text_children(?DOC,Id) ->
   [X] = text_children(?DOC,[Id]),
   X.

comment_children(?DOC,Ids) when is_list(Ids) ->
   F = fun(I) ->
             case ?node_get(I) of
                ?ELM ->
                   Fst = get_first_child(__Nodes, I, __Dpt),
                   get_comment_children(__Nodes,Fst);
                ?DMT -> 
                   Fst = get_first_child(__Nodes, I, 0),
                   get_comment_children(__Nodes,Fst);
                _ -> 
                   []
             end
       end,
   lists:map(F,Ids);
comment_children(?DOC,Id) ->
   [X] = comment_children(?DOC,[Id]),
   X.

pi_children(?DOC,Ids) when is_list(Ids) ->
   F = fun(I) ->
             case ?node_get(I) of
                ?ELM ->
                   Fst = get_first_child(__Nodes, I, __Dpt),
                   get_pi_children(__Nodes,Fst);
                ?DMT -> 
                   Fst = get_first_child(__Nodes, I, 0),
                   get_pi_children(__Nodes,Fst);
                _ -> 
                   []
             end
       end,
   lists:map(F,Ids);
pi_children(?DOC,Id) ->
   [X] = pi_children(?DOC,[Id]),
   X.

named_pi_children(?DOC,Ids,Ln) when is_list(Ids) ->
   F = fun(I) ->
             case ?node_get(I) of
                ?ELM ->
                   C = children(?DOC, I),
                   f_named_pi_nodes(?DOC,C,Ln);
                ?DMT -> 
                   C = children(?DOC, I),
                   f_named_pi_nodes(?DOC,C,Ln);
                _ -> 
                   []
             end
       end,
   lists:map(F,Ids);
named_pi_children(?DOC,Id,Ln) ->
   [X] = named_pi_children(?DOC,[Id],Ln),
   X.

get_first_child(__Nodes,I,Depth) ->
   case ?node_get((I + 1)) of
      ?NOD when __Dpt == Depth + 1 ->
         I + 1;
      _ ->
         []
   end.

%% get_named_element_children(_,[],_,_) -> [];
%% get_named_element_children(__Nodes,Id,Ns,Ln) ->
%%    case ?node_get(Id) of
%%       ?ELM when Ns == any orelse __Ns =:= Ns,
%%                 Ln == any orelse __Ln =:= Ln,
%%                 <<?nxt(__Nxt)>> =/= <<255,255,255,255>>,
%%                 __Nxt > Id ->
%%          [Id|get_named_element_children(__Nodes,__Nxt,Ns,Ln)];
%%       ?NOD when <<?nxt(__Nxt)>> =/= <<255,255,255,255>>,
%%                 __Nxt > Id ->
%%          get_named_element_children(__Nodes,__Nxt,Ns,Ln);
%%       ?ELM when Ns == any orelse __Ns =:= Ns,
%%                 Ln == any orelse __Ln =:= Ln ->
%%          [Id];
%%       _ ->
%%          []
%%    end.

get_text_children(_,[]) -> [];
get_text_children(__Nodes,I) ->
   case ?node_get(I) of
      ?TXT when __Nxt > I ->
         [I|get_text_children(__Nodes,__Nxt)];
      ?NOD when __Nxt > I ->
         get_text_children(__Nodes,__Nxt);
      ?TXT ->
         [I];
      _ ->
         []
   end.

get_element_children(_,[]) -> [];
get_element_children(__Nodes,I) ->
   case ?node_get(I) of
      ?ELM when __Nxt > I ->
         [I|get_element_children(__Nodes,__Nxt)];
      ?NOD when __Nxt > I ->
         get_element_children(__Nodes,__Nxt);
      ?ELM ->
         [I];
      _ ->
         []
   end.

get_comment_children(_,[]) -> [];
get_comment_children(__Nodes,I) ->
   case ?node_get(I) of
      ?CMT when __Nxt > I ->
         [I|get_comment_children(__Nodes,__Nxt)];
      ?NOD when __Nxt > I ->
         get_comment_children(__Nodes,__Nxt);
      ?CMT ->
         [I];
      _ ->
         []
   end.

get_pi_children(_,[]) -> [];
get_pi_children(__Nodes,I) ->
   case ?node_get(I) of
      ?PIN when __Nxt > I ->
         [I|get_pi_children(__Nodes,__Nxt)];
      ?NOD when __Nxt > I ->
         get_pi_children(__Nodes,__Nxt);
      ?PIN ->
         [I];
      _ ->
         []
   end.


%% ====================================================================
%% Indexes 
%% ====================================================================
build_base_uri_index(?DOC) ->
   case maps:is_key(<<"base">>, __Names) of
      false ->
         {base_uris,#{}}; % no base
      true ->
         #{<<"base">> := Base,
           <<"xml">> := Xml} = __Names,
         Atts = array:to_list(__Attributes),
         Nds = [{__APar,__AVal} || 
                ?ATT <- Atts,
                __APx == Xml,
                __ALn == Base ],
         {base_uris,maps:from_list(Nds)}
   end.

build_lang_index(?DOC) ->
   case maps:is_key(<<"lang">>, __Names) of
      false ->
         {langs,#{}}; % no langs
      true ->
         #{<<"lang">> := Lang,
           <<"xml">> := Xml} = __Names,
         Atts = array:to_list(__Attributes),
         Nds = [{__APar,__AVal} || 
                ?ATT <- Atts,
                __APx == Xml,
                __ALn == Lang ],
         %?dbg("Nds",Nds),
         {langs,maps:from_list(Nds)}
   end.

build_parent_index(?DOC = D) -> 
   [Roots] = roots(D),
   %?dbg("Roots",Roots),
   case lists:member(0, Roots) of
      true ->
         List = lists:flatmap(
                  fun(I) ->
                        [<<255,255,255,255>>|build_parent_index(D,I)]
                  end, Roots),
         {parent,list_to_binary(List)};
      false ->
         List = [<<255,255,255,255>>|build_parent_index(D,0)],
         {parent,list_to_binary(List)}
   end.

build_parent_index(?DOC = D,Parent) ->
   Children = children(D, Parent),
   %?dbg("Children",Children),
   F = fun(I) ->
             %?dbg("I",I),
             case ?node_get(I) of
                ?ELM ->
                   [<<?nxt(Parent)>>|build_parent_index(D,I)];
                _ ->
                   [<<?nxt(Parent)>>]
             end
       end,
   lists:flatmap(F, Children).

build_named_element_children_index(?DOC = Doc) ->
   [Roots] = roots(Doc),
   Dict = #{},
   Fun = fun(I,D) -> 
               get_element_children_ix(Doc,I,D) 
         end,               
   Dict1 = lists:foldl(Fun, Dict, Roots),
   {named_element_children, Dict1}.

get_element_children_ix(?DOC = Doc,I,D) ->
   Children = children(Doc, I),
   Fun = fun(C,Acc) ->
               get_element_children_ix(Doc,I,C,Acc)
         end,
   lists:foldl(Fun, D, Children).

get_element_children_ix(?DOC = Doc,Parent,Child,D) ->
   case ?node_get(Child) of
      ?ELM ->
         K1 = {Parent,__Ns,__Ln},
         K2 = {Parent,__Ns,any},
         K3 = {Parent,any,__Ln},
         K4 = {Parent,any,any},
         D1 = maps_append(K1, Child, D),
         D2 = maps_append(K2, Child, D1),
         D3 = maps_append(K3, Child, D2),
         D4 = maps_append(K4, Child, D3),
         get_element_children_ix(Doc,Child,D4);
      _ ->
         D
   end.


maps_append(Key, Value, Map) ->
   case maps:find(Key, Map) of
      {ok, Vals} ->
         Map#{Key := [Value|Vals]};
      error ->
         Map#{Key => [Value]}
   end.


%% ====================================================================
%% Helper functions for internal use for joins and common predicates 
%% ====================================================================

%% 2 Accessors
%% 2.5 fn:base-uri
base_uri(?DOC,Ids) ->
   Base = __Filename,
   Paths = lists:zip(Ids, path_to_root(?DOC,Ids)),
%?dbg("Paths",Paths),
   Bases = maps:get(base_uris, __Indexes),
%?dbg("Bases",Bases),
   F = fun({I,[]}) -> % baseless node, get frag base uri
             A = get_base_uris([I,0], Bases),
             rollup_uri(lists:reverse(A), Base);
          ({I,P}) ->
             A = get_base_uris([I|P] ++ [0], Bases),
             rollup_uri(lists:reverse(A), Base)
       end,
   lists:map(F, Paths).

get_base_uris([],_) -> [];
get_base_uris([H|T],Bases) ->
   case maps:find(H, Bases) of
      error ->
         get_base_uris(T,Bases);
      {ok,[]} ->
         get_base_uris(T,Bases);
      {ok,V} ->
         [V|get_base_uris(T,Bases)]
   end.

rollup_uri([],Acc) -> Acc;
rollup_uri([[]|T],Acc) ->
   rollup_uri(T,Acc);
rollup_uri([<<>>|T],Acc) ->
   rollup_uri(T,Acc);
%% rollup_uri([<<$.,_/binary>> = H|T],Acc) -> % relative
%%    ?dbg("{H,T,Acc}",{H,T,Acc}),
%%    case catch xqldb_lib:join_uris(<<>>,<<Acc/binary,H/binary>>) of
%%       {'EXIT',_} ->
%%          rollup_uri(T,Acc);
%%       B ->
%%          ?dbg("{H,T,B}",{H,T,B}),
%%          rollup_uri(T,B)
%%    end;
rollup_uri([H|T],Acc) ->
   case catch xqldb_lib:join_uris(Acc, H) of
      {'EXIT',_E} ->
         % invalid base resets base to <<>>
         rollup_uri(T,<<>>);
      B ->
         rollup_uri(T,B)
   end.
   
%% 10 Functions related to QNames
%% 10.2.5 fn:namespace-uri-for-prefix
namespace_uri_for_prefix(?DOC,{Prefix,Ids}) ->
   F = fun(L) ->
             proplists:get_value(Prefix, L, [])
       end,
   lists:map(F, inscope_namespaces(?DOC,Ids)).

%% 10.2.6 fn:in-scope-prefixes
inscope_prefixes(?DOC,Ids) ->
   F = fun(L) ->
             [P || {P,_} <- L]
       end,
   lists:map(F, inscope_namespaces(?DOC,Ids)).

inscope_namespaces(?DOC,Ids) when is_list(Ids) ->
   M = #{maps:get(<<"xml">>, __Names) => 
           maps:get(<<"http://www.w3.org/XML/1998/namespace">>, __Namesp)},
   F = fun(I) when is_integer(I) ->
             case ?node_get(I) of
                ?ELM ->
                   [P] = path_to_root(?DOC, [I]),
                   A = lists:reverse([I|P]),
                   N = lists:flatten(namespaces(?DOC, A)),
                   L = augment_ns(N, M),
                   Ex = fun({Ln,Ns}) ->
                              {maps:get(Ln, __Names),
                               maps:get(Ns, __Namesp)}
                        end,
                   lists:map(Ex, L);
                _ ->
                   []
             end;
          (_) ->
             []
       end,
   lists:map(F, Ids);
inscope_namespaces(?DOC,Id) ->
   [X]=  inscope_namespaces(?DOC,[Id]),
   X.

inscope_namespace_nodes(?DOC,Ids) when is_list(Ids) ->
%   M = #{maps:get("xml", __Names) => 
%           maps:get("http://www.w3.org/XML/1998/namespace", __Namesp)},
   F = fun(I) when is_integer(I) ->
             case ?node_get(I) of
                ?ELM ->
                   [P] = path_to_root(?DOC, [I]),
                   A = lists:reverse([I|P]),
                   N = lists:flatten(namespaces(?DOC, A)),
                   L = augment_ns_nodes(N, #{__Px => {I,__Px,__Ns}}),
                   Ex = fun({_,Ns}) ->
                              Ns
                        end,
                   lists:map(Ex, L);
                _ ->
                   []
             end;
          (_) ->
             []
       end,
   lists:map(F, Ids);
inscope_namespace_nodes(?DOC,Id) ->
   [X]=  inscope_namespace_nodes(?DOC,[Id]),
   X.

augment_ns([],Acc) ->
   maps:to_list(Acc);
augment_ns([?NSP|Nss],Acc) ->
   augment_ns(Nss,Acc#{__Ln => __Ns}).

augment_ns_nodes([],Acc) ->
   maps:to_list(Acc);
augment_ns_nodes([?NSP|Nss],Acc) ->
   augment_ns_nodes(Nss,Acc#{__Ln => ?NSP}).

   

%% 13 Functions and operators on nodes
%% 13.2 fn:local-name
local_name(?DOC,Ids) ->
   F = fun(?NSP) -> 
             maps:get(__Ln, __Names);
          (?ATT) ->
             maps:get(__ALn, __Names);
          (I) ->
             case ?node_get(I) of
                ?ELM ->
                   maps:get(__Ln, __Names);
                ?PIN ->
                   maps:get(__Ln, __Names);
                _ ->
                   []
             end                   
       end,
   lists:map(F, Ids).

%% 13.3 fn:namespace-uri
namespace_uri(?DOC,Ids) ->
   F = fun(?NSP) -> [];
          (?ATT) ->
             maps:get(__ANs, __Namesp);
          (I) ->
             case ?node_get(I) of
                ?ELM ->
                   maps:get(__Ns, __Namesp);
                _ ->
                   []
             end                   
       end,
   lists:map(F, Ids).

%% 13.4 fn:lang
lang(?DOC,Ids) when is_list(Ids) ->
   Paths = lists:zip(Ids, path_to_root(?DOC,Ids)),
   Langs = maps:get(langs, __Indexes),
   F = fun({I,P}) ->
             get_lang([I|P], Langs)
       end,
   lists:map(F, Paths);
lang(?DOC,I) ->
   [X] = lang(?DOC,[I]),
   X.

get_lang([],_) -> [];
get_lang([H|T],Langs) ->
   case maps:find(H, Langs) of
      error ->
         get_lang(T,Langs);
      {ok,V} ->
         [V]
   end.


%% 13.5 fn:root
root(?DOC,Ids) ->
   [Roots] = roots(?DOC),
   F = fun(I) ->
             in_root(I, Roots)
       end,
   lists:map(F, Ids).

in_root(Id,[R1,R2|_]) when Id >= R1, Id < R2 -> [R1];
in_root(Id,[_,R2|T]) when Id >= R2 -> in_root(Id,[R2|T]);
in_root(_,[R1]) -> [R1].


%% 13.7 fn:has-children
has_children(?DOC,Ids) ->
   F = fun(I) when is_integer(I) ->
             case ?node_get(I) of
                ?DMT when __Nxt > I + 1 -> true;
                ?ELM when __Nxt > I + 1 -> true;
                ?ELM ->
                   case get_first_child(?DOC, I, __Dpt) of
                      [] ->
                         false;
                      _ ->
                         true
                   end
             end;
          (_) -> false
       end,
   lists:map(F, Ids).

%% 13.8 fn:innermost
innermost(?DOC,Ids) ->
   %%    $nodes except $nodes/ancestor::node()
   S = sets:from_list(Ids),
   Pred = fun(I,Acc) ->
                A = sets:from_list(path_to_root(?DOC,I)),
                sets:union(Acc, A)                
          end,
   Anc = lists:foldl(Pred, sets:new(), Ids),
   lists:sort(sets:to_list(sets:subtract(S, Anc))).

%% 13.9 fn:outermost
outermost(?DOC,Ids) ->
   %%    $nodes[not(ancestor::node() intersect $nodes)]/.
   S = sets:from_list(Ids),
   Pred = fun(I) ->
                A = path_to_root(?DOC,I),
                sets:is_disjoint(S,sets:from_list(A))
          end,
   lists:usort(lists:filter(Pred, Ids)).


%% 15 Context functions
%% 15.1 fn:position
position([]) -> [0];
position([_|T]) -> 
   [1|position_1(T,2)].

position_1([_|T],C) ->
   [C|position_1(T,C + 1)];
position_1([],_) -> [].

position([],_) -> [];
position(L,E) when not is_list(L) -> 
   position([L],E);
position(List,{gt,N}) -> nthtail(N, List);
position(List,{'>',N}) -> nthtail(N, List);
position(List,{ge,N}) -> nthtail(N - 1, List);
position(List,{'>=',N}) -> nthtail(N - 1, List);
position(List,{lt,N}) -> lists:sublist(List, N - 1);
position(List,{'<',N}) -> lists:sublist(List, N - 1);
position(List,{le,N}) -> lists:sublist(List, N);
position(List,{'<=',N}) -> lists:sublist(List, N);
position(List,{eq,N}) -> 
   case nth(N, List) of
      [] ->
         [];
      O ->
         [O]
   end;
position(List,{'=',N}) -> position(List,{eq,N});
position(List,last) ->
   [lists:last(List)].

%% 15.2 fn:last
last(List) ->
   [length(List)].

run(?DOC,Fun) ->
   Fun(?DOC).


nth(_, []) -> [];
nth(1, [H|_]) -> H;
nth(2, [_,H|_]) -> H;
nth(3, [_,_,H|_]) -> H;
nth(4, [_,_,_,H|_]) -> H;
nth(N, [_,_,_,_|T]) when N > 4 ->
    nth(N - 4, T);
nth(_, _) -> [].

nthtail(_, []) -> [];
nthtail(1, [_|T]) -> T;
nthtail(2, [_,_|T]) -> T;
nthtail(3, [_,_,_|T]) -> T;
nthtail(4, [_,_,_,_|T]) -> T;
nthtail(N, [_|T]) when N > 4 ->
    nthtail(N - 4, T);
nthtail(0, L) when is_list(L) -> L.


-define(str(Val), #xqAtomicValue{type = 'xs:string', value = Val}).
-define(untyp(Val), #xqAtomicValue{type = 'xs:untypedAtomic', value = Val}).


nodify(_,{_,Pid,Ids}) when is_pid(Pid), Pid =/= self() -> % TODO not a good idea...
   xqldb_doc:nodify(Pid,Ids);
nodify(_,[]) -> [];
nodify(_,[[]]) -> [];
nodify(?DOC,Ids) when is_list(Ids) ->
   [nodify(?DOC,I) || I <- Ids, I =/= []];
nodify(?DOC,Id) ->
   Self = self(),
   #xqNode{doc = Self, 
           node = [Id]}.

atomize(?DOC,Ids) when is_list(Ids) ->
   F = fun(?ATT) -> 
       case cached(?FUNCTION_NAME, ?DOC, ?ATT) of
          undefined ->
             Res = case __AVal of
                      {_,V} ->
                         ?untyp(V);
                      V ->
                         ?untyp(V)
                   end,
             add_to_cache(?FUNCTION_NAME, ?DOC, ?ATT, Res),
             Res;
          RA ->
             RA
       end;
          (?NSP) -> 
             ?str(maps:get(__Ns, __Namesp));
          (I) ->
       case cached(?FUNCTION_NAME, ?DOC, I) of
          undefined ->
             Res = 
             case ?node_get(I) of
                ?ELM when __Nxt > I, <<?nxt(__Nxt)>> =/= <<255,255,255,255>> -> 
                   {Pos,Len} = collect_texts(I,__Nxt - 1,[],[],__Nodes),
                   ?untyp(get_text_value(Pos, Len, __Text));
                ?DMT when __Nxt > I, <<?nxt(__Nxt)>> =/= <<255,255,255,255>> -> 
                   {Pos,Len} = collect_texts(I,__Nxt - 1,[],[],__Nodes),
                   ?untyp(get_text_value(Pos, Len, __Text));
                ?FRG when __Nxt > I, <<?nxt(__Nxt)>> =/= <<255,255,255,255>> -> 
                   {Pos,Len} = collect_texts(I,__Nxt - 1,[],[],__Nodes),
                   ?untyp(get_text_value(Pos, Len, __Text));
                ?ELM ->
                   Lst = last_descendant(I + 1,I,__Dpt,__Nodes),
                   {Pos,Len} = collect_texts(I,Lst,[],[],__Nodes),
                   ?untyp(get_text_value(Pos, Len, __Text));
                ?DMT -> 
                   Lst = last_descendant(I + 1,I,0,__Nodes),
                   {Pos,Len} = collect_texts(I,Lst,[],[],__Nodes),
                   ?untyp(get_text_value(Pos, Len, __Text));
                ?FRG -> 
                   Lst = last_descendant(I + 1,I,0,__Nodes),
                   {Pos,Len} = collect_texts(I,Lst,[],[],__Nodes),
                   ?untyp(get_text_value(Pos, Len, __Text));
                ?TXT -> 
                   ?untyp(get_text_value(__Pos, __Len, __Text));
                ?CMT -> 
                   ?str(get_text_value(__Pos, __Len, __Comment));
                ?PIN -> 
                   ?str(string:trim(get_text_value(__Pos, __Len, __Data),leading))
             end,
             add_to_cache(?FUNCTION_NAME, ?DOC, I, Res),
             Res;
          R -> R
       end
       end,
   lists:map(F, Ids);
atomize(?DOC,Id) ->
   [X] = atomize(?DOC,[Id]),
   X.


%% takes 2 lists of lists and returns list with union-ed sub-lists 
union([[]],[[]]) -> [];
union([],[]) -> [];
union([A|As],[B|Bs]) when is_list(A), is_list(B) -> 
   maybe_denodify([union_1(A,B)|union_1(As,Bs)]);
union(A,B) when is_list(A), is_list(B) ->
   maybe_denodify(union_1(A,B)).

union_1([],L) -> L;
union_1(L,[]) -> L;
union_1(A,B) when is_list(A), is_list(B) -> lists:usort(A ++ B);
union_1(A,B) when is_list(B) -> lists:usort([A|B]);
union_1(A,B) when is_list(A) -> lists:usort([B|A]);
union_1(A,B) -> lists:usort([A,B]).

except([[]],[[]]) -> [];
except([],[]) -> [];
except([A|As],[B|Bs]) when is_list(A), is_list(B) -> 
   maybe_denodify([except_1(A,B)|except_1(As,Bs)]);
except(A,B) when is_list(A), is_list(B) ->
   maybe_denodify(except_1(A,B)).


except_1([],_) -> [];
except_1(A,[]) -> A;
except_1(A,A) -> [];
except_1(A,B) when is_list(A), is_list(B) -> A -- B;
except_1(A,B) when is_list(B) -> [A] -- B;
except_1(A,B) when is_list(A) -> A -- [B];
except_1(A,_) -> A.

intersect([[]],[[]]) -> [];
intersect([],[]) -> [];
intersect([A|As],[B|Bs]) when is_list(A), is_list(B) -> 
   %?dbg("except",{[A|As],[B|Bs]}),
   maybe_denodify([intersect_1(A,B)|intersect_1(As,Bs)]);
intersect(A,B) when is_list(A), is_list(B) ->
   maybe_denodify(intersect_1(A,B)).

intersect_1([],_) -> [];
intersect_1(_,[]) -> [];
intersect_1(A,A) -> A;
intersect_1(A,B) when is_list(A), is_list(B) -> 
   U1 = ordsets:from_list(A),
   U2 = ordsets:from_list(B),
   U3 = ordsets:intersection(U1, U2),
   ordsets:to_list(U3);
intersect_1(A,B) when is_list(B) -> intersect_1([A],B);
intersect_1(A,B) when is_list(A) -> intersect_1(A,[B]);
intersect_1(_,_) -> [].

get_name_id({<<"*">>,<<"*">>},_,_) -> {any,any};
get_name_id({<<"*">>,Ln},_,Names) ->
   LnId = maps:get(Ln, Names),
   {any,LnId};
get_name_id({Ns,<<"*">>},Namesp,_) ->
   NsId = maps:get(Ns, Namesp),
   {NsId,any};
get_name_id({Ns,Ln},Namesp,Names) ->
   NsId = maps:get(Ns, Namesp),
   LnId = maps:get(Ln, Names),
   {NsId,LnId}.
   
get_name_id(<<"*">>,_) -> any;
get_name_id(Ln,Names) ->
   maps:get(Ln, Names).

maybe_denodify([]) -> [];
maybe_denodify([{_,P,I}|T]) when is_pid(P) -> [I|maybe_denodify(T)];
maybe_denodify([I|T]) when is_integer(I) -> [I|maybe_denodify(T)].

   

cached(Function,?DOC,Ids,{Ns,Ln}) ->
   case erlang:get(Function) of
      undefined ->
         undefined;
      Idx ->
         case maps:find({Ns,Ln,Ids},Idx) of
            error ->
               undefined;
            {ok,X} ->
               X
         end
   end.

cached(Function,?DOC,Id) ->
   case erlang:get(Function) of
      undefined ->
         undefined;
      Idx ->
         case maps:find(Id,Idx) of
            error ->
               undefined;
            {ok,X} ->
               X
         end
   end.

add_to_cache(Function,?DOC,Ids,{Ns,Ln},Resp) ->
   case erlang:get(Function) of
      undefined ->
         erlang:put(Function,#{{Ns,Ln,Ids} => Resp});
      Idx ->
         erlang:put(Function,Idx#{{Ns,Ln,Ids} => Resp})
   end.

add_to_cache(Function,?DOC,Id,Resp) ->
   case erlang:get(Function) of
      undefined ->
         erlang:put(Function,#{Id => Resp});
      Idx ->
         erlang:put(Function,Idx#{Id => Resp})
   end.

