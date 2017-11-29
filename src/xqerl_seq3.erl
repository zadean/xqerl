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

%% @doc Functions that handle XQuery sequences.

-module(xqerl_seq3).

-export([sequence/1]).

-export([empty/0]).
-export([size/1]).

-export([is_empty/1]).
-export([is_sequence/1]).

-export([union/2]).
-export([intersect/2]).
-export([except/2]).

-export([head/1]).
-export([tail/1]).
-export([reverse/1]).

-export([position_filter/3]).
-export([filter/3]).
-export([map/3]).
-export([val_map/2]).
-export([node_map/3]).
-export([for_each/3]).
-export([zip_with/4]).
-export([foldl/4]).
-export([foldr/4]).
-export([insert/3]).
-export([singleton/1]).
-export([singleton_value/1]).
-export([range/2]).
-export([append/2]).
-export([get_seq_type/1]).

%-export([get_seq_iter/1]).
%-export([next/1]).
-export([to_list/1]).
-export([from_list/1]).
-export([flatten/1]).

-export([all_node/1]).
-export([all_not_node/1]).

-export([ensure_one/1]).
-export([ensure_one_or_more/1]).
-export([ensure_zero_or_one/1]).
-export([ensure_zero_or_more/1]).


-include("xqerl.hrl").

%-define(seq, gb_trees).
%-define(seq, array).
-define(set, ordsets).
%-define(set, gb_sets).
-define(noderecs(N), is_record(N, xqNode);
                     is_record(N, xqElementNode);
                     is_record(N, xqDocumentNode);
                     is_record(N, xqAttributeNode);
                     is_record(N, xqCommentNode);
                     is_record(N, xqTextNode);
                     is_record(N, xqProcessingInstructionNode);
                     is_record(N, xqNamespaceNode)).

sequence(L) when is_list(L) ->
   L;
sequence(L) ->
   [L].

ensure_one([A]) -> A;
ensure_one(A) when is_list(A) -> xqerl_error:error('XPTY0004');
ensure_one(A) -> A.

ensure_one_or_more([]) -> xqerl_error:error('XPTY0004');
ensure_one_or_more([A]) -> A;
ensure_one_or_more(A) -> A.

ensure_zero_or_one([]) -> [];
ensure_zero_or_one([A]) -> A;
ensure_zero_or_one(A) when is_list(A) -> xqerl_error:error('XPTY0004');
ensure_zero_or_one(A) -> A.

ensure_zero_or_more(A) -> A.


size(List) when is_list(List) ->
   length(List);
size(_) ->
   1.

is_empty([]) -> true;
is_empty(_) -> false.

is_sequence(L) when is_list(L) -> true;
is_sequence(_) -> false.

head([]) -> [];
head([H|_]) -> H;
head(H) -> H.

tail([]) -> [];
tail([_|T]) -> T;
tail(_) -> [].

reverse(Seq) ->
   lists:reverse(Seq).

union(Seq1, []) when is_list(Seq1) ->
   lists:usort(Seq1);
union([], Seq2) when is_list(Seq2) ->
   lists:usort(Seq2);
union(Seq1, Seq2) when is_list(Seq1), is_list(Seq2)  ->
   set_fun1(Seq1, Seq2, union);
union(Seq1, Seq2) when is_list(Seq1) ->
   union(Seq1, [Seq2]);
union(Seq1, Seq2) when is_list(Seq2) ->
   union([Seq1], Seq2);
union(Seq1, Seq2) ->
   union([Seq1], [Seq2]).

intersect(Seq1, Seq2) when is_list(Seq1), is_list(Seq2)  ->
   set_fun1(Seq1, Seq2, intersection);
intersect(Seq1, Seq2) when is_list(Seq1) ->
   intersect(Seq1, [Seq2]);
intersect(Seq1, Seq2) when is_list(Seq2) ->
   intersect([Seq1], Seq2);
intersect(Seq1, Seq2) ->
   intersect([Seq1], [Seq2]).
   
except(Seq1, Seq2) when is_list(Seq1), is_list(Seq2)  ->
   set_fun1(Seq1, Seq2, subtract);
except(Seq1, Seq2) when is_list(Seq1) ->
   except(Seq1, [Seq2]);
except(Seq1, Seq2) when is_list(Seq2) ->
   except([Seq1], Seq2);
except(Seq1, Seq2) ->
   except([Seq1], [Seq2]).

set_fun1(List1, List2, Fun) ->
   %?dbg("AN1",(List1)),
   %?dbg("AN2",all_node(List2)),
   case all_node(List1) andalso all_node(List2) of 
      true ->
         U1 = ?set:from_list(List1),
         U2 = ?set:from_list(List2),
         U3 = ?set:Fun(U1, U2),
         %?dbg("U3",U3),
         ?set:to_list(U3);
      _ ->
         xqerl_error:error('XPTY0004')
   end.


singleton_value([]) -> [];
singleton_value([V]) -> V;
singleton_value(#xqFunction{body = V}) -> V;
singleton_value(V) when not is_list(V) -> V;
singleton_value(V) when is_list(V) -> 
   xqerl_error:error('XPTY0004').

singleton(V) when not is_list(V) ->
   [V];
singleton([V]) ->
   [V];
singleton(V) when is_list(V)->
   xqerl_error:error('XPTY0004').

subsequence(List,Start) when Start > 0 ->
   lists:sublist(List, Start);
subsequence(List,_Start) ->
   List.

subsequence(List,Start,Length) when Start < 1 ->
   Start1 = 1,
   Length1 = Start + Length,
   if Length1 < 0 ->
         [];
      true ->
         subsequence(List,Start1,Length1)
   end;
subsequence(List,Start,_Length) when Start > length(List) ->
   [];
subsequence(List,Start,Length) ->
   lists:sublist(List, Start, Length).


% insert Seq2 into Seq 1 at position Pos
insert(Seq1,[],_Pos) -> Seq1;
insert([],Seq2,_Pos) -> Seq2;
insert(Seq1,Seq2,Pos) when is_list(Seq1), is_list(Seq2) ->
   Pos1 = if Pos < 1 ->
                1;
             true ->
                Pos
          end,
   Head = subsequence(Seq1, 1, Pos1 - 1),
   Tail = subsequence(Seq1, Pos1, length(Seq1)),
   %?dbg("Head",Head),
   %?dbg("Seq2",Seq2),
   %?dbg("Tail",Tail),
   Head ++ Seq2 ++ Tail;
insert(Seq1,Seq2,Pos) when is_list(Seq1) ->
   insert(Seq1,[Seq2],Pos);
insert(Seq1,Seq2,Pos) when is_list(Seq2) ->
   insert([Seq1],Seq2,Pos);
insert(Seq1,Seq2,Pos) ->
   insert([Seq1],[Seq2],Pos).

   
zip_with(_Ctx, _Fun,[],[]) -> [];
zip_with(_Ctx, _Fun,[],_) ->
   xqerl_error:error('XPTY0004');
zip_with(_Ctx, _Fun,_,[]) ->
   xqerl_error:error('XPTY0004');
zip_with(Ctx, Fun,Seq1,Seq2) when is_function(Fun), is_list(Seq1), is_list(Seq2) ->
   Size = erlang:min(?MODULE:size(Seq1),?MODULE:size(Seq2)),
   NewCtx = xqerl_context:set_context_size(Ctx, int_rec(Size)),
   reverse(zip_with1(NewCtx,Fun,{Seq1,Seq2},1,[]));

zip_with(Ctx, Fun,Seq1,Seq2) when is_function(Fun), is_list(Seq1) ->
   zip_with(Ctx, Fun,Seq1,[Seq2]);
zip_with(Ctx, Fun,Seq1,Seq2) when is_function(Fun), is_list(Seq2) ->
   zip_with(Ctx, Fun,[Seq1],Seq2);
zip_with(Ctx, Fun,Seq1,Seq2) when is_function(Fun) ->
   zip_with(Ctx, Fun,[Seq1],[Seq2]);

zip_with(Ctx, Fun,Seq1,Seq2) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         zip_with(Ctx, Fun1,Seq1,Seq2);
      true ->
         xqerl_error:error('XPTY0004')
   end.

zip_with1(_Ctx, _Fun, {[],_List2}, _Pos, Acc ) -> Acc;
zip_with1(_Ctx, _Fun, {_List1,[]}, _Pos, Acc ) -> Acc;
zip_with1(Ctx, Fun, {[H1|List1],[H2|List2]}, Pos,  Acc ) ->
   try
      Ctx1 = xqerl_context:set_context_item(Ctx, H1, Pos),
      OutputSeq = Fun(Ctx1, singleton(H1), singleton(H2)),
      NewSeq = [OutputSeq|Acc],
      zip_with1(Ctx, Fun, {List1,List2}, Pos+1, NewSeq)
   catch 
      _:#xqError{} = E -> throw(E);
      _:_ ->
         ?dbg("error",erlang:get_stacktrace()),
         xqerl_error:error('XPTY0004')
   end.

for_each(_Ctx, Fun,Seq) when not is_list(Seq) -> 
   for_each(_Ctx, Fun,[Seq]);
for_each(_Ctx, _Fun,[]) -> empty();
for_each(_Ctx, Map, Seq) when is_map(Map) ->
   xqerl_map:get_matched(Map, Seq);
for_each(Ctx, Fun, Seq) when is_function(Fun) ->
   Ctx1 = xqerl_context:set_context_size(Ctx, int_rec(?MODULE:size(Seq))),
   for_each1(Ctx1, Fun, Seq, 1);
for_each(Ctx, Fun,Seq) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         for_each(Ctx, Fun1,Seq);
      true ->
         xqerl_error:error('XPTY0004')
   end.

for_each1(_Ctx, _Fun, [], _Pos) -> [];
for_each1(Ctx, Fun, [H|T], Pos) ->
   try
      Ctx1 = xqerl_context:set_context_item(Ctx, H, Pos),
      Output = Fun(Ctx1, H),
      [Output | for_each1(Ctx, Fun, T, Pos + 1)]
   catch
      _:#xqError{} = E -> 
         ?dbg("error",erlang:get_stacktrace()),
         throw(E);
      _:E ->
         ?dbg("E",E),
         ?dbg("error",erlang:get_stacktrace()),
         xqerl_error:error('XPTY0004')
   end.

val_map(_Fun,[]) -> [];
val_map(Fun,H) when not is_list(H) ->
   val_map(Fun,[H]);
val_map(Fun,[H|T]) ->
   Val = Fun(H),
   %?dbg("Val",Val),
   if is_list(Val) ->
         Val ++ val_map(Fun, T);
      true ->
         [Val | val_map(Fun, T)]
   end.

map(Ctx, Fun, Seq) when not is_list(Seq) ->
   map(Ctx, Fun, [Seq]);
map(_Ctx, Fun,[]) when is_function(Fun) -> empty();
map(Ctx, Fun, Seq) when is_function(Fun) ->
   Ctx1 = xqerl_context:set_context_size(Ctx, int_rec(?MODULE:size(Seq))),
   map1(Ctx1, Fun, Seq, 1);
map(Ctx, Fun,Seq) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         map(Ctx, Fun1,Seq);
      true ->
         xqerl_error:error('XPTY0004')
   end.

map1(_Ctx, _Fun, [], _Pos) -> [];
map1(Ctx, Fun, [H|T], Pos) ->
   %?dbg("H",H),
   %?dbg("Pos",Pos),
   try
      Ctx1 = xqerl_context:set_context_item(Ctx, H, Pos),
      Output = Fun(Ctx1),
      if is_list(Output) ->
            Output ++ map1(Ctx, Fun, T, Pos + 1);
         true ->
            [Output | map1(Ctx, Fun, T, Pos + 1)]
      end
   catch
      _:#xqError{} = E ->
         ?dbg("error",erlang:get_stacktrace()),
         throw(E);
      _:_ ->
         ?dbg("error",erlang:get_stacktrace()),
         xqerl_error:error('XPTY0004')
   end.

node_map(Ctx, Fun, Seq) when not is_list(Seq) ->
   node_map(Ctx, Fun, [Seq]);
node_map(Ctx, Fun, Seq) ->
   case all_node(Seq) of
      true ->
         %?dbg("All node",Seq),
         Nodes = map(Ctx, Fun, Seq),
         case all_node(Nodes) of
            true ->
               %?dbg("OK",Nodes),
               from_list(lists:usort(Nodes));
            _ ->
               case all_not_node(Nodes) of
                  true ->
                     from_list(Nodes);
                  _ ->
                     % mixed
                     xqerl_error:error('XPTY0018')
               end
         end;
      _ ->
         ?dbg("NOT All node",Seq),
         xqerl_error:error('XPTY0019')
   end.


foldl(Ctx,Fun,Acc,Seq) when is_function(Fun) ->
   foldl1(Ctx,Fun,Acc,Seq);
foldl(Ctx,Fun,Acc,Seq) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         foldl(Ctx,Fun1,Acc,Seq);
      true ->
         xqerl_error:error('XPTY0004')
   end.

foldl1(_Ctx,_Fun,Acc,[]) ->
   Acc;
foldl1(Ctx,Fun,Acc,[H|T]) ->
   foldl1(Ctx,Fun,Fun(Ctx,Acc,H),T).

foldr(Ctx,Fun,Acc,Seq) when is_function(Fun) ->
   foldr1(Ctx,Fun,Acc,Seq);
foldr(Ctx,Fun,Acc,Seq) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         foldr(Ctx,Fun1,Acc,Seq);
      true ->
         xqerl_error:error('XPTY0004')
   end.

foldr1(_Ctx,_Fun,Acc,[]) ->
   Acc;
foldr1(Ctx,Fun,Acc,[H|T]) ->
   Fun(Ctx,H,foldr1(Ctx,Fun,Acc,T)).

empty() ->
   [].

to_list(List) when is_list(List) -> List;
to_list(A) -> [A].

flatten(List) when is_list(List) ->
   lists:flatten(List);
flatten(List) ->
   [List].

from_list(List) when is_list(List) ->
   lists:flatten(List);

%%    lists:flatten(List);

%%    Flat = lists:flatten(List),
%%    case all_xqnode(Flat) of
%%       true ->
%%          union(Flat, []);
%%       _ ->
%%          Flat
%%    end;
from_list(List) ->
   [List].

range(_, []) -> empty();
range([], _) -> empty();
range(#xqAtomicValue{value = From}, #xqAtomicValue{value = To}) when is_integer(From),is_integer(To) ->
   range1(From,To);
range(From, To) ->
   case (xqerl_types:type(From) == node orelse xqerl_types:subtype_of(xqerl_types:type(From), 'xs:integer')) andalso
        (xqerl_types:type(To) == node orelse xqerl_types:subtype_of(xqerl_types:type(To), 'xs:integer')) of
      true ->
         To1 = xqerl_types:value(xqerl_types:cast_as(To, 'xs:integer')),
         From1 = xqerl_types:value(xqerl_types:cast_as(From, 'xs:integer')),
         R = range1(From1,To1),
         Sz = ?MODULE:size(R),
         if Sz == 0 ->
               empty();
            true ->
               R
         end;
         %range2(To1 - From1 + 1, To1,From1,[]);
      _ ->
         xqerl_error:error('XPTY0004')
   end.

range1(Curr,Max) when Curr =< Max ->
   [int_rec(Curr) | range1(Curr + 1, Max)];
range1(_Curr,_Max) ->
   [].

% thing to append to end is first arg
append([],Seq) -> Seq;
append(Seq1, []) ->
   Seq1;
append([], Seq2) ->
   Seq2;
append(Seq1, Seq2) ->
   concat_seqs(Seq2,Seq1).

get_unique_values(Seq) when is_list(Seq) ->
   Vals = get_unique_values1(lists:flatten(Seq)),
   %?dbg("Vals",Vals),
   lists:usort(Vals);
get_unique_values(Seq) ->
   get_unique_values1([Seq]).

get_unique_values1([]) -> [];
get_unique_values1([#xqAtomicValue{value = {xsDecimal,H,0}}|T]) ->
   [H|get_unique_values1(T)];
get_unique_values1([#xqAtomicValue{value = H}|T]) ->
   [H|get_unique_values1(T)].
  
   
position_filter(Ctx, Fun, Seq) when is_list(Seq), is_function(Fun) ->
   Size = length(Seq),
   %?dbg("Size",Size),
   {Positions,_} =
     lists:mapfoldl(fun(Item,Pos) ->
                        Ctx1 = xqerl_context:set_context_item(Ctx, Item, Pos, Size),
                        Resp = Fun(Ctx1),
                        {Resp, Pos + 1}
                  end, 1, Seq),
   position_filter(Ctx, Positions, Seq);

position_filter(_Ctx, Positions, Seq) when is_list(Seq) ->
   UniquePos = get_unique_values(Positions),
   %?dbg("UniquePos",UniquePos),
   position_filter1(UniquePos, 1, Seq);
position_filter(Ctx, Positions, Seq) ->
   position_filter(Ctx, Positions, [Seq]).

position_filter1([], _CurrPos, _Seq) -> [];
position_filter1(_, _CurrPos, []) -> [];
position_filter1([Pos|Rest], CurrPos, Seq) when Pos < 1 ->
   position_filter1(Rest, CurrPos, Seq);
position_filter1([Pos|Rest], CurrPos, [H|T]) ->
   if Pos == CurrPos ->
         [H|position_filter1(Rest,CurrPos + 1, T)];
      Pos > CurrPos ->
         position_filter1([Pos|Rest],CurrPos + 1, T);
      Pos < CurrPos -> % fractional
         position_filter1(Rest,CurrPos, [H|T])
   end.

filter(Ctx, #xqAtomicValue{} = Pos,Seq) ->
   position_filter(Ctx, [Pos], Seq);
filter(Ctx, [#xqAtomicValue{}] = Pos,Seq) ->
   position_filter(Ctx, Pos, Seq);
filter(Ctx, [#xqAtomicValue{}|_] = Pos,Seq) ->
   position_filter(Ctx, Pos, Seq);
filter(Ctx, Fun, Seq) when not is_list(Seq) ->
   filter(Ctx, Fun, [Seq]);
filter(Ctx, Fun, Seq) when is_function(Fun,1) ->
   Seq2 = flatten(Seq),
   Size = ?MODULE:size(Seq2),
   Ctx1 = xqerl_context:set_context_size(Ctx, int_rec(Size)),
   filter1(Ctx1, Fun, Seq2, 1).

filter1(_Ctx, _Fun, [], _Pos) -> [];
filter1(Ctx, Fun, [H|T], Pos) ->
   NextPos = Pos + 1,
   Ctx1 = xqerl_context:set_context_item(Ctx, H, Pos),
   try Fun(Ctx1) of
      Resp ->
         %?dbg("Resp",Resp),
         case Resp of
            [#xqAtomicValue{type = NType, value = FPos}] when ?numeric(NType) ->
               if FPos == Pos ->
                     [H|filter1(Ctx, Fun, T, NextPos)];
                  true ->
                     filter1(Ctx, Fun, T, NextPos)
               end;
            #xqAtomicValue{type = NType, value = FPos} when ?numeric(NType) ->
               if FPos == Pos ->
                     [H|filter1(Ctx, Fun, T, NextPos)];
                  true ->
                     filter1(Ctx, Fun, T, NextPos)
               end;
            _ ->
               Bool = xqerl_operators:eff_bool_val(Resp),
               if Bool ->
                     [H|filter1(Ctx, Fun, T, NextPos)];
                  true ->
                     filter1(Ctx, Fun, T, NextPos)
               end
         end
   catch 
      _:#xqError{name = #xqAtomicValue{value = #qname{local_name = "XPTY0019"}}} ->
         % context was not a node when one was expected
         xqerl_error:error('XPTY0020');
      _:#xqError{} = E ->
         throw(E)
  end.

concat_seqs([],Seq2) -> Seq2;
concat_seqs(Seq1,[]) -> Seq1;
concat_seqs(Seq1,Seq2) when is_list(Seq1),is_list(Seq2) ->
   Seq1 ++ Seq2;
concat_seqs(Seq1,Seq2) when is_list(Seq2) ->
   [Seq1|Seq2];
concat_seqs(Seq1,Seq2) when is_list(Seq1) ->
   Seq1 ++ [Seq2];
concat_seqs(Seq1,Seq2) ->
   [Seq1,Seq2].

all_node(Seq) when is_list(Seq) ->
   IsNode = fun(Item) when ?noderecs(Item) ->
                  true;
               (_) ->
                  false
            end,
   lists:all(IsNode, Seq);
all_node(Seq) ->
   all_node([Seq]).

all_xqnode(Seq) ->
   IsNode = fun(#xqNode{}) ->
                  true;
               (_) ->
                  false
            end,
   lists:all(IsNode, Seq).

all_not_node(Seq) ->
   IsNode = fun(Item) when ?noderecs(Item) ->
                  false;
               (_) ->
                  true
            end,
   lists:all(IsNode, Seq).

get_seq_type([]) -> #xqSeqType{type = 'empty-sequence', occur = zero};

get_seq_type(List) when is_list(List) ->
   Hd = hd(List),
   HType = get_item_type(Hd),
   Type = get_seq_type1(tl(List),xqerl_btypes:get_type(HType)),
   if length(List) == 1 ->
         #xqSeqType{type = Type, occur = one};
      true ->
         #xqSeqType{type = Type, occur = one_or_many}
   end;
get_seq_type(List) ->
   get_seq_type([List]).

get_seq_type1([],Curr) ->
   xqerl_btypes:get_type(Curr);
get_seq_type1([H|T],Curr) ->
   HType = get_item_type(H),
   HBType = xqerl_btypes:get_type(HType),
   get_seq_type1(T,HBType band Curr).

get_item_type([Item]) ->
   get_item_type(Item);
get_item_type(#xqAtomicValue{type = Type}) ->
   Type;
get_item_type(Item) when is_function(Item) ->
   function;
get_item_type(#xqFunction{}) ->
   function;
get_item_type(Item) when is_map(Item) ->
   map;
get_item_type(#array{}) ->
   array;
get_item_type(#qname{}) ->
   'xs:QName';
get_item_type(#xqElementNode{}) -> 'element';
get_item_type(#xqAttributeNode{}) -> 'attribute';
get_item_type(#xqTextNode{}) -> 'text';
get_item_type(#xqCommentNode{}) -> 'comment';
get_item_type(#xqNamespaceNode{}) -> 'namespace';
get_item_type(#xqProcessingInstructionNode{}) -> 'processing-instruction';
get_item_type(#xqDocumentNode{}) -> 'document-node';
get_item_type(#xqNode{} = Node) ->
   xqerl_node:get_node_type(Node).

int_rec(Val) ->
   #xqAtomicValue{type = 'xs:integer', value = Val}.
