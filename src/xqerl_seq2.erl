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

-module(xqerl_seq2).

-export([sort_seq/1]).
-export([empty/0]).
-export([is_empty/1]).
-export([is_sequence/1]).
-export([for_each/3]).
-export([insert/3]).
-export([zip_with/4]).
-export([map/3]).
-export([next/1]).
-export([foldl/4]).
-export([foldr/4]).
-export([val_map/2]).
-export([node_map/3]).
-export([union/2]).
-export([intersect/2]).
-export([except/2]).
-export([singleton/1]).
-export([singleton_value/1]).
-export([to_list/1]).
-export([from_list/1]).
-export([range/2]).
-export([append/2]).
-export([filter/3]).
-export([size/1]).
-export([head/1]).
-export([tail/1]).
-export([reverse/1]).
-export([get_seq_type/1]).
-export([get_seq_iter/1]).

-export([all_node/1]).

-include("xqerl.hrl").

%-define(seq, gb_trees).
%-define(seq, array).
-define(set, ordsets).
%-define(set, gb_sets).

-define(node(I), (I=='node' orelse I=='document' orelse I=='document-node' orelse I=='element' orelse I=='attribute' orelse I=='namespace' orelse I=='text' orelse I=='comment' orelse I=='processing-instruction')).
-define(duration(I),(I=='xs:duration' orelse I=='xs:yearMonthDuration' orelse I=='xs:dayTimeDuration')).
-define(numeric(I), (I=='xs:numeric' orelse 
                     I=='xs:float' orelse I=='xs:double' orelse 
                     I=='xs:decimal' orelse 
                     I=='xs:integer' orelse 
                     I=='xs:nonPositiveInteger' orelse I=='xs:negativeInteger' orelse 
                     I=='xs:long' orelse I=='xs:int' orelse I=='xs:short' orelse I=='xs:byte' orelse 
                     I=='xs:nonNegativeInteger' orelse 
                     I=='xs:positiveInteger' orelse 
                     I=='xs:unsignedLong' orelse I=='xs:unsignedInt' orelse I=='xs:unsignedShort' orelse I=='xs:unsignedByte')
                     ).
-define(decimal(I), (I=='xs:decimal' orelse 
                    I=='xs:integer' orelse 
                    I=='xs:nonPositiveInteger' orelse I=='xs:negativeInteger' orelse 
                    I=='xs:long' orelse I=='xs:int' orelse I=='xs:short' orelse I=='xs:byte' orelse 
                    I=='xs:nonNegativeInteger' orelse 
                    I=='xs:positiveInteger' orelse 
                    I=='xs:unsignedLong' orelse I=='xs:unsignedInt' orelse I=='xs:unsignedShort' orelse I=='xs:unsignedByte')).
-define(integer(I), (I=='xs:integer' orelse 
                    I=='xs:nonPositiveInteger' orelse I=='xs:negativeInteger' orelse 
                    I=='xs:long' orelse I=='xs:int' orelse I=='xs:short' orelse I=='xs:byte' orelse 
                    I=='xs:nonNegativeInteger' orelse 
                    I=='xs:positiveInteger' orelse 
                    I=='xs:unsignedLong' orelse I=='xs:unsignedInt' orelse I=='xs:unsignedShort' orelse I=='xs:unsignedByte')).
-define(nonPositiveInteger(I), (I=='xs:nonPositiveInteger' orelse I=='xs:negativeInteger')).
-define(long(I),    (I=='xs:long' orelse I=='xs:int' orelse I=='xs:short' orelse I=='xs:byte')).
-define(int(I),     (I=='xs:int' orelse I=='xs:short' orelse I=='xs:byte')).
-define(short(I),   (I=='xs:short' orelse I=='xs:byte')).
-define(nonNegativeInteger(I), 
                    (I=='xs:nonNegativeInteger' orelse 
                    I=='xs:positiveInteger' orelse 
                    I=='xs:unsignedLong' orelse I=='xs:unsignedInt' orelse I=='xs:unsignedShort' orelse I=='xs:unsignedByte')).
-define(unsignedLong(I), 
                    (I=='xs:unsignedLong' orelse I=='xs:unsignedInt' orelse I=='xs:unsignedShort' orelse I=='xs:unsignedByte')).
-define(unsignedInt(I), 
                    (I=='xs:unsignedInt' orelse I=='xs:unsignedShort' orelse I=='xs:unsignedByte')).
-define(unsignedShort(I), 
                    (I=='xs:unsignedShort' orelse I=='xs:unsignedByte')).
-define(string(I),  (I=='xs:string' orelse 
                    I=='xs:normalizedString' orelse 
                    I=='xs:token' orelse 
                    I=='xs:language' orelse I=='xs:Name' orelse I=='xs:NCName' orelse I=='xs:NMTOKEN'  orelse I=='xs:NMTOKENS' orelse 
                    I=='xs:ID' orelse I=='xs:IDREF' orelse I=='xs:IDREFS' orelse I=='xs:ENTITY' orelse I=='xs:ENTITIES')).
-define(normalizedString(I),
                    (I=='xs:normalizedString' orelse 
                    I=='xs:token' orelse 
                    I=='xs:language' orelse I=='xs:Name' orelse I=='xs:NCName' orelse I=='xs:NMTOKEN'  orelse I=='xs:NMTOKENS' orelse 
                    I=='xs:ID' orelse I=='xs:IDREF' orelse I=='xs:IDREFS' orelse I=='xs:ENTITY' orelse I=='xs:ENTITIES')).
-define(token(I),   (I=='xs:token' orelse 
                    I=='xs:language' orelse I=='xs:Name' orelse I=='xs:NCName' orelse I=='xs:NMTOKEN'  orelse I=='xs:NMTOKENS' orelse 
                    I=='xs:ID' orelse I=='xs:IDREF' orelse I=='xs:IDREFS' orelse I=='xs:ENTITY' orelse I=='xs:ENTITIES')).
-define(Name(I),    (I=='xs:Name' orelse I=='xs:NCName' orelse 
                    I=='xs:ID' orelse I=='xs:IDREF' orelse I=='xs:IDREFS' orelse I=='xs:ENTITY' orelse I=='xs:ENTITIES')).
-define(NCName(I),  (I=='xs:NCName' orelse 
                    I=='xs:ID' orelse I=='xs:IDREF' orelse I=='xs:IDREFS' orelse I=='xs:ENTITY' orelse I=='xs:ENTITIES')).
-define(anySimpleType(I),
       (I=='xs:anySimpleType' orelse I=='xs:untypedAtomic' orelse I=='xs:dateTime' orelse I=='xs:dateTimeStamp' orelse I=='xs:time' orelse I=='xs:date' orelse 
        I=='xs:gYearMonth' orelse I=='xs:gYear' orelse I=='xs:gMonthDay' orelse I=='xs:gDay' orelse I=='xs:gMonth' orelse I=='xs:boolean' orelse 
        I=='xs:base64Binary' orelse I=='xs:hexBinary' orelse I=='xs:float' orelse I=='xs:double' orelse I=='xs:anyURI' orelse I=='xs:QName' orelse I=='xs:NOTATION' orelse 
        I=='xs:decimal' orelse 
        I=='xs:integer' orelse 
        I=='xs:nonPositiveInteger' orelse I=='xs:negativeInteger' orelse 
        I=='xs:long' orelse I=='xs:int' orelse I=='xs:short' orelse I=='xs:byte' orelse 
        I=='xs:nonNegativeInteger' orelse 
        I=='xs:positiveInteger' orelse 
        I=='xs:unsignedLong' orelse I=='xs:unsignedInt' orelse I=='xs:unsignedShort' orelse I=='xs:unsignedByte' orelse 
        I=='xs:string' orelse 
        I=='xs:normalizedString' orelse 
        I=='xs:token' orelse 
        I=='xs:language' orelse I=='xs:Name' orelse I=='xs:NCName' orelse I=='xs:NMTOKEN'  orelse I=='xs:NMTOKENS' orelse 
        I=='xs:ID' orelse I=='xs:IDREF' orelse I=='xs:IDREFS' orelse I=='xs:ENTITY' orelse I=='xs:ENTITIES' orelse 
        I=='xs:duration' orelse I=='xs:yearMonthDuration' orelse I=='xs:dayTimeDuration')
        ).
%% construct:
%% 
%% { sequence type, size, [list of values each as {position, value}] }

-export_type([seq/0]).
-type seq() :: {#xqSeqType{}, integer(), list()}.
-type ctx() :: term().

-spec size(seq()|map()) -> integer().
size(Map) when is_map(Map) ->
   maps:size(Map);
size({_,Size,_}) ->
   Size.

-spec is_empty(seq()) -> boolean().
is_empty({_,Size,_}) ->
   Size == 0.

-spec is_sequence(seq() | any()) -> boolean().
%is_sequence({T,_,_}) when is_tuple(T) -> true;
is_sequence({T,Size,Seq}) when is_tuple(T), is_integer(Size), is_list(Seq) -> true;
is_sequence(_) -> false.

-spec next({integer(), seq()}) -> empty | none | {integer(), term(), {integer(), seq()}}.
next({0,Array}) ->
   case is_sequence(Array) andalso is_empty(Array) of
      true ->
         empty;
      _ ->
         {Ty,Sz,Seq} = Array,
         case Seq of
            [] -> none;
            [{Pos,Val}|T] ->
               {Pos,Val,{1,{Ty,Sz,T}}}
         end
   end;
next({LastPos,Array}) ->
   {Ty,Sz,Seq} = Array,
   case Seq of
      [] -> none;
      [{Pos,Val}|T] ->
         {Pos,Val,{LastPos + 1,{Ty,Sz,T}}}
   end.

-spec head(seq()) -> seq().
head({_,_,Seq}) ->
   New = empty(),
   case Seq of
      [] -> New;
      [{_Pos,Val}|_T] ->
         append(Val, New)
   end.

singleton_value(#xqFunction{body = Fun}) -> Fun;
singleton_value(Seq) ->
   case is_sequence(Seq) of 
      true ->
         case ?MODULE:size(Seq) of
            0 ->
               [];
            1 ->
               {_,_,[{_,I}]} = Seq,
               I;
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         Seq
   end.

-spec tail(seq()) -> seq().
tail(Seq) ->
   % not really cool to rebuild it, but the ids (and possibly type) are incorrect after a delete
   New = empty(),
   Iter = get_seq_iter(Seq),
   FunLoop = fun Loop(CurrIter,CurrSeq) ->
                    case ?MODULE:next(CurrIter) of
                       none ->
                          CurrSeq;
                       empty ->
                          CurrSeq;
                       {1,_Value,NewIter} ->
                          Loop(NewIter,CurrSeq);
                       {_Key,Value,NewIter} ->
                          NewSeq = append(Value, CurrSeq),
                          Loop(NewIter,NewSeq)
                    end
             end,
   sort_seq(FunLoop(Iter,New)).

reverse({Type,Size,Seq}) ->
   New1 = {Type,Size, []},
   Iter = get_seq_iter({Type,Size,Seq}),
   FunLoop = fun Loop(CurrIter,{_,_,List} = CurrSeq) ->
                    case ?MODULE:next(CurrIter) of
                       none ->
                          CurrSeq;
                       empty ->
                          CurrSeq;
                       {Key,Value,NewIter} ->
                          NewVal = {Size - Key, Value},
                          NewSeq = {Type,Size,[NewVal|List]},
                          Loop(NewIter,NewSeq)
                    end
             end,
   FunLoop(Iter,New1).

insert({_,Size,_} = Seq1,Seq2,Pos) ->
   #xqAtomicValue{type = 'xs:integer', value = Pos1} = singleton_value(Pos),
   New = if Pos1 > 0 ->
               empty();
            true ->
               Seq2
         end,
   Iter1 = get_seq_iter(Seq1),
   FunLoop = fun Loop(CurrIter1,CurrSeq) ->
                    case ?MODULE:next(CurrIter1) of
                       none ->
                          if Pos1 > Size ->
                                combine([CurrSeq, Seq2]); % at end
                             true ->
                                CurrSeq
                          end;
                       empty ->
                          if Pos1 > Size ->
                                combine([CurrSeq, Seq2]); % at end
                             true ->
                                CurrSeq
                          end;
                       {Pos1,Value1,NewIter1} ->
                          NewSeq = append(Value1,combine([CurrSeq, Seq2])),
                          Loop(NewIter1,NewSeq);
                       {_Key1,Value1,NewIter1} ->
                          Loop(NewIter1,append(Value1,CurrSeq))
                    end
             end,
   sort_seq(FunLoop(Iter1,New)).

zip_with(Ctx, Fun,{_,Size1,_} = Seq1,{_,Size2,_} = Seq2) when is_function(Fun) ->
   New = empty(),
   Size = erlang:min(Size1,Size2),
   Iter1 = get_seq_iter(Seq1),
   Iter2 = get_seq_iter(Seq2),
   Ctx1 = xqerl_context:set_context_size(Ctx, int_rec(Size)),
   FunLoop = fun Loop({CurrIter1,CurrIter2},CurrSeq) ->
                    case {?MODULE:next(CurrIter1),?MODULE:next(CurrIter2)} of
                       {none,_} ->
                          CurrSeq;
                       {empty,_} ->
                          CurrSeq;
                       {_,none} ->
                          CurrSeq;
                       {_,empty} ->
                          CurrSeq;
                       {{Key1,Value1,NewIter1},{_Key2,Value2,NewIter2}} ->
                          try
                             Ctx2 = xqerl_context:set_context_item(Ctx1, Value1),
                             Ctx3 = xqerl_context:set_context_position(Ctx2, int_rec(Key1)),
                             OutputSeq = Fun(Ctx3, singleton(Value1), singleton(Value2)),
                             %?dbg("OutputSeq",OutputSeq),
                             NewSeq = combine([CurrSeq, OutputSeq]),
                             Loop({NewIter1,NewIter2},NewSeq)
                          catch 
                             _:#xqError{} = E -> throw(E);
                             _:_ ->
                                xqerl_error:error('XPTY0004')
                          end
                    end
             end,
   FunLoop({Iter1,Iter2},New);
zip_with(Ctx, Fun,Seq1,Seq2) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         zip_with(Ctx, Fun1,Seq1,Seq2);
      true ->
         xqerl_error:error('XPTY0004')
   end.


for_each(Ctx, Fun,{_,Size,_} = Seq) when is_function(Fun) ->
   New = empty(),
   Iter = get_seq_iter(Seq),
   Ctx1 = xqerl_context:set_context_size(Ctx, int_rec(Size)),
   FunLoop = fun Loop(CurrIter,CurrSeq) ->
                    case ?MODULE:next(CurrIter) of
                       none ->
                          CurrSeq;
                       empty ->
                          CurrSeq;
                       {Key,Value,NewIter} ->
                          try
                             Ctx2 = xqerl_context:set_context_item(Ctx1, Value),
                             Ctx3 = xqerl_context:set_context_position(Ctx2, int_rec(Key)),
                             OutputSeq = Fun(Ctx3, singleton(Value)),
                             %?dbg("OutputSeq",OutputSeq),
                             NewSeq = combine([CurrSeq, OutputSeq]),
                             Loop(NewIter,NewSeq)
                          catch
                             _:#xqError{} = E -> throw(E);
                             _:_ ->
                                xqerl_error:error('XPTY0004')
                          end
                    end
             end,
   FunLoop(Iter,New);
for_each(Ctx, Fun,Seq) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         for_each(Ctx, Fun1,Seq);
      true ->
         xqerl_error:error('XPTY0004')
   end.

-spec map(Ctx :: map(), Fun, Seq :: seq()) -> Seq1 :: seq() when
    Fun :: fun((A :: ctx()) -> B :: seq()).

map(Ctx, Fun,{_,Size,_} = Seq) when is_function(Fun) ->
   New = empty(),
   Iter = get_seq_iter(Seq),
   Ctx1 = xqerl_context:set_context_size(Ctx, int_rec(Size)),
   FunLoop = fun Loop(CurrIter,CurrSeq) ->
                    case ?MODULE:next(CurrIter) of
                       none ->
                          CurrSeq;
                       empty ->
                          CurrSeq;
                       {Key,Value,NewIter} ->
                          Ctx2 = xqerl_context:set_context_item(Ctx1, Value),
                          Ctx3 = xqerl_context:set_context_position(Ctx2, int_rec(Key)),
                          OutputSeq = Fun(Ctx3),
                          %?dbg("OutputSeq",OutputSeq),
                          NewSeq = combine([CurrSeq, OutputSeq]),
                          Loop(NewIter,NewSeq)
                    end
             end,
   FunLoop(Iter,New).

node_map(Ctx, Fun,{_,Size,_} = Seq) when is_function(Fun) ->
   %?dbg("Seq",Seq),
   New = empty(),
   Iter = get_seq_iter(Seq),
   Ctx1 = xqerl_context:set_context_size(Ctx, int_rec(Size)),
   FunLoop = fun Loop(CurrIter,CurrSeq) ->
                    case ?MODULE:next(CurrIter) of
                       none ->
                          CurrSeq;
                       empty ->
                          CurrSeq;
                       {Key,Value,NewIter} ->
                          Ctx2 = xqerl_context:set_context_item(Ctx1, Value),
                          Ctx3 = xqerl_context:set_context_position(Ctx2, int_rec(Key)),
                          OutputSeq = Fun(Ctx3),
                          %?dbg("OutputSeq",OutputSeq),
                          %?dbg("CurrSeq",CurrSeq),
                          NewSeq = combine([CurrSeq, OutputSeq]),
                          Loop(NewIter,NewSeq)
                    end
             end,
   Out = FunLoop(Iter,New),
   case all_node(Out) of 
      true ->
         %?dbg("all node",true),
         doc_ord(Out);
      _ ->
         case all_not_node(Out) of
            true ->
               %?dbg("all not node",true),
               Out;
            _ ->
               %?dbg("not all node",Out),
               xqerl_error:error('XPTY0018')
         end
   end.

val_map(Fun,Seq) when is_function(Fun) ->
   New = empty(),
   Iter = get_seq_iter(Seq),
   FunLoop = fun Loop(CurrIter,CurrSeq) ->
                    case ?MODULE:next(CurrIter) of
                       none ->
                          CurrSeq;
                       empty ->
                          CurrSeq;
                       {_Key,Value,NewIter} ->
                          Output = Fun(Value),
                          NewSeq = append(Output, CurrSeq),
                          Loop(NewIter,NewSeq)
                    end
             end,
   FunLoop(Iter,New).

foldl(Ctx,Fun,Acc,Seq) when is_function(Fun) ->
   Iter = get_seq_iter(Seq),
   FunLoop = fun Loop(CurrIter,Acc0) ->
                    case ?MODULE:next(CurrIter) of
                       none ->
                          Acc0;
                       empty ->
                          Acc0;
                       {_Key,Value,NewIter} ->
                          Loop(NewIter,Fun(Ctx,Acc0,Value))
                    end
             end,
   FunLoop(Iter,Acc);
foldl(Ctx,Fun,Acc,Seq) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         foldl(Ctx,Fun1,Acc,Seq);
      true ->
         xqerl_error:error('XPTY0004')
   end.

foldr(Ctx,Fun,Acc,Seq) when is_function(Fun) ->
   %Rev = reverse(Seq),
   %?dbg("Rev",Rev),
   Iter = get_seq_iter(Seq),
   %?dbg("Iter",Iter),
   FunLoop = fun Loop(CurrIter,Acc0) ->
                    case ?MODULE:next(CurrIter) of
                       none ->
                          Acc0;
                       empty ->
                          Acc0;
                       {_Key,Value,NewIter} ->
                          Fun(Ctx,Value,Loop(NewIter,Acc0))
                    end
             end,
   FunLoop(Iter,Acc);
foldr(Ctx,Fun,Acc,Seq) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         foldr(Ctx,Fun1,Acc,Seq);
      true ->
         xqerl_error:error('XPTY0004')
   end.

union(Seq1, Seq2) ->
   Seq11 = case is_sequence(Seq1) of
              true ->
                 Seq1;
              _ ->
                 singleton(Seq1)
           end,
   Seq21 = case is_sequence(Seq2) of
              true ->
                 Seq2;
              _ ->
                 singleton(Seq2)
           end,
   set_fun1(Seq11, Seq21, union).
   
intersect(Seq1, Seq2) ->
   Seq11 = case is_sequence(Seq1) of
              true ->
                 Seq1;
              _ ->
                 singleton(Seq1)
           end,
   Seq21 = case is_sequence(Seq2) of
              true ->
                 Seq2;
              _ ->
                 singleton(Seq2)
           end,
   set_fun1(Seq11, Seq21, intersection).
   
except(Seq1, Seq2) ->
   Seq11 = case is_sequence(Seq1) of
              true ->
                 Seq1;
              _ ->
                 singleton(Seq1)
           end,
   Seq21 = case is_sequence(Seq2) of
              true ->
                 Seq2;
              _ ->
                 singleton(Seq2)
           end,
   %set_fun1(Seq11, Seq21, difference).
   set_fun1(Seq11, Seq21, subtract).

set_fun1({_,_,List1} = Seq1, {_,_,List2} = Seq2, Fun) ->
   case all_node(Seq1) andalso all_node(Seq2) of 
      true ->
         U1 = ?set:from_list([X || {_,X} <- List1]),
         U2 = ?set:from_list([X || {_,X} <- List2]),
         U3 = ?set:Fun(U1, U2),
         %?dbg("U3",U3),
         {T,S,L} = ?set:fold(fun(Val,Seq) ->
                         append(Val, Seq)
                   end, empty(), U3),
         %?dbg("L",L),
         {T,S,lists:reverse(L)}
         ;
      _ ->
         xqerl_error:error('XPTY0004')
   end.

empty() ->
   Empty = [],
   Type = #xqSeqType{type = 'empty-sequence', occur = zero},
   {Type,0,Empty}.

to_list(#xqAtomicValue{} = A) -> [A];
to_list(#xqNode{} = A) -> [A];
to_list(#xqFunction{} = A) -> [A];
to_list({_,_,[]}) -> [];
to_list({_,_,Seq}) when is_list(Seq) ->
   [V || {_,V} <- lists:keysort(1, Seq)].

from_list(List) ->
   Seq = empty(),
   from_list1(lists:flatten(List), Seq).

from_list1([], Seq) ->
   sort_seq(Seq);
from_list1([H|T], Seq) ->
   New = append(H,Seq),
   from_list1(T, New).

range(From, To) ->
   case (is_sequence(From) andalso is_empty(From)) orelse (is_sequence(To) andalso is_empty(To)) of
      true ->
         empty();
      _ ->
         case (xqerl_types:type(From) == node orelse xqerl_types:subtype_of(xqerl_types:type(From), 'xs:integer')) andalso
              (xqerl_types:type(To) == node orelse xqerl_types:subtype_of(xqerl_types:type(To), 'xs:integer')) of
            true ->
               To1 = xqerl_types:value(xqerl_types:cast_as(To, 'xs:integer')),
               From1 = xqerl_types:value(xqerl_types:cast_as(From, 'xs:integer')),
               R = range1(From1,To1,[]),
               %?dbg("R",R),
               R;
               %range2(To1 - From1 + 1, To1,From1,[]);
            _ ->
               xqerl_error:error('XPTY0004')
         end
   end.

range1(Min,Curr,Seq) when Curr >= Min ->
   %?dbg("R",Curr),
   range1(Min,Curr - 1, [{Curr + 1 - Min, #xqAtomicValue{type = 'xs:integer', value = Curr}}|Seq]);
range1(0,_Min,Acc) ->
   Type = #xqSeqType{type = 'xs:integer', occur = zero_or_many},
   {Type,length(Acc),Acc};
range1(_Curr,_Min,Acc) ->
   Type = #xqSeqType{type = 'xs:integer', occur = zero_or_many},
   {Type,length(Acc),Acc}.

singleton(#xqAtomicValue{type = Type} = At) ->
   {#xqSeqType{type = Type, occur = one},1,[{1,At}]};
singleton(Item) ->
   Seq = empty(),
   append(Item, Seq).

append([],Seq) -> Seq;
append(Item, Seq) when is_list(Item) ->
   append(from_list(Item), Seq);
append(Item, {Type,Size,List} = Seq) ->
   case is_sequence(Item) of
      true ->
         concat_seqs(Seq,Item);
      _ ->
         Pos = Size + 1,
         #xqSeqType{type = OldType, occur = OldOccur} = Type,
         ItemType = get_item_type(Item),
         NewType = combined_type(OldType, ItemType),
         NewOccur = if Pos == 1 -> one;
                       true -> one_or_many
                    end,
         SeqType = if NewType == OldType andalso NewOccur == OldOccur ->
                         Type;
                      true ->
                         #xqSeqType{type = NewType, occur = NewOccur }
                   end,
         NewVal = {Pos,Item},
         List2 = [NewVal|List],
         {SeqType,Pos,List2}
   end.

append(Item,{Type,_Size,List} = Seq,Pos) ->
   case is_sequence(Item) of
      true ->
         concat_seqs(Seq,Item);
      _ ->
         #xqSeqType{type = OldType, occur = OldOccur} = Type,
         ItemType = get_item_type(Item),
         NewType = combined_type(OldType, ItemType),
         NewOccur = if Pos == 1 -> one;
                       true -> one_or_many
                    end,
         SeqType = if NewType == OldType andalso NewOccur == OldOccur ->
                         Type;
                      true ->
                         #xqSeqType{type = NewType, occur = NewOccur }
                   end,
         NewVal = {Pos,Item},
         List2 = lists:keystore(Pos, 1, List, NewVal),
         {SeqType,Pos,List2}
   end.

filter(_Ctx, #xqAtomicValue{type = 'xs:integer', value = Pos},_Seq) when Pos =< 0 ->
   empty();
filter(_Ctx, #xqAtomicValue{type = 'xs:integer', value = Pos},_Seq) when not is_integer(Pos) ->
   empty();
filter(_Ctx, #xqAtomicValue{type = 'xs:integer', value = Pos},{_Type,_Size,List}) when Pos > 0 ->
   New = empty(),
   case lists:keyfind(Pos, 1, List) of
      false ->
         New;
      {_,Val} ->
         append(Val, New)
   end;
filter(Ctx, #xqAtomicValue{type = T, value = Pos},Seq) when ?numeric(T) ->
   if Pos == trunc(Pos) ->
         Int = #xqAtomicValue{type = 'xs:integer', value = trunc(Pos)},
         filter(Ctx, Int, Seq);
      true ->
         empty()
   end;
filter(Ctx, Fun,Seq0) when is_function(Fun,1) ->
   New = empty(),
   {_Type,Size,List} = Seq = case is_sequence(Seq0) of
                          true ->
                             Seq0;
                          _ ->
                             singleton(Seq0)
                       end,
   Iter = get_seq_iter(Seq),
   Ctx1 = xqerl_context:set_context_size(Ctx, int_rec(Size)),
   %?dbg("Line",Seq),
   FunLoop = fun Loop(CurrIter,CurrSeq) ->
                    case ?MODULE:next(CurrIter) of
                       none ->
                          %?dbg("Line",?LINE),
                          CurrSeq;
                       empty ->
                          %?dbg("Line",?LINE),
                          CurrSeq;
                       {Key,Value,NewIter} ->
                          %?dbg("Line",?LINE),
                          Ctx2 = xqerl_context:set_context_item(Ctx1, singleton(Value)),
                          Ctx3 = xqerl_context:set_context_position(Ctx2, int_rec(Key)),
                          %?dbg("Ctx3",Ctx3),
                          Resp = Fun(Ctx3),
                          %?dbg("Resp",Resp),
                          RespType = xqerl_types:type(Resp),
                          %?dbg("RespType",RespType),
                          case xqerl_types:is_numeric_type(RespType) andalso (is_record(Resp, xqAtomicValue) orelse ?MODULE:size(Resp) == 1) of % short out any numeric singles
                             true ->
                                Num = xqerl_types:value(Resp),
                                case Num > 0 andalso Num == trunc(Num) of
                                   true ->
                                      TNum = trunc(Num),
                                      case lists:keyfind(TNum, 1, List) of
                                         false ->
                                            Loop(NewIter,CurrSeq);
                                         {_,Val} ->
                                            NewSeq = append(Val, CurrSeq, TNum),
                                            Loop(NewIter,NewSeq)
                                      end;
                                   _ ->
                                      Loop(NewIter,CurrSeq)
                                end;
                             _ ->
                                case singleton_value(xqerl_fn:boolean([], Resp)) of
                                   #xqAtomicValue{type = 'xs:boolean', value = false} ->
                                      %?dbg("Line",?LINE),
                                      Loop(NewIter,CurrSeq);
                                   #xqAtomicValue{type = 'xs:boolean', value = true} ->
                                      %?dbg("Line",?LINE),
                                      NewSeq = append(Value, CurrSeq),
                                      Loop(NewIter,NewSeq)
                                end
                          end
                    end
             end,
   OutSeq = FunLoop(Iter,New),
   C = condense_seq(OutSeq),
   %?dbg("C",C),
   C.

condense_seq(Seq) ->
   New = empty(),
   {_,_,Sorted} = sort_seq(Seq),
   lists:foldl(fun({_,Item},Acc) ->
                     append(Item, Acc)
               end, New, lists:usort(Sorted)).

sort_seq({T,S,Seq}) ->
   
   NewSeq = lists:keysort(1, Seq),
   {T,S,NewSeq}.


combine(Seqs) ->
   combine1(Seqs, atomic).

combine1(Seqs, atomic) ->
   Base = hd(Seqs),
   lists:foldl(fun(AddSeq,Seq) ->
                     concat_seqs(Seq,AddSeq)
               end, Base, tl(Seqs)).
%% ; %% for later maybe
%% combine1(Seqs, path) ->
%%    case all_node(Seqs) of 
%%       true ->
%%          Unique = lists:foldl(fun({_,_,Seq},Acc) ->
%%                                     Vals = proplists:values(Seq),
%%                                     Set = ?set:from_list(Vals),
%%                                     ?set:union(Acc, Set)
%%                               end, [], Seqs),
%%          ?set:fold(fun(Val,Seq) ->
%%                            append(Val, Seq)
%%                      end, empty(), Unique);
%%       _ ->
%%          case all_not_node(Seqs) of 
%%             true ->
%%                combine1(Seqs, atomic);
%%             _ ->
%%                xqerl_error:error('XPTY0018')
%%          end
%%    end.

concat_seqs(#xqAtomicValue{} = Av1,{Seq2,Size2,List2}) ->
   concat_seqs(singleton(Av1),{Seq2,Size2,List2});
concat_seqs({Seq1,Size1,List1},#xqAtomicValue{} = Av2) ->
   concat_seqs({Seq1,Size1,List1},singleton(Av2));
concat_seqs({Seq1,Size1,List1},{Seq2,Size2,List2}) ->
   #xqSeqType{type = Seq1Type} = Seq1,
   #xqSeqType{type = Seq2Type} = Seq2,
   Size3 = Size2 + Size1,
   NewOccur = if Size3 == 0 ->
                    zero;
                 Size3 == 1 ->
                    one;
                 true ->
                    one_or_many
              end,                 
   NewSeqType = #xqSeqType{type = combined_type(Seq1Type, Seq2Type), occur = NewOccur},
   {NewSeqType, Size3, List1 ++ shift_seq(List2, Size1)}.

%%    Iter = get_seq_iter(Seq2),
%%    %?dbg("Iter",Iter),
%%    FunLoop = fun Loop(CurrIter,CurrSeq) ->
%%                     %?dbg("CurrIter,CurrSeq",{CurrIter,CurrSeq}),
%%                     case ?MODULE:next(CurrIter) of
%%                        none ->
%%                           CurrSeq;
%%                        empty ->
%%                           CurrSeq;
%%                        {_Key,Value,NewIter} ->
%%                           %?dbg("NewIter",NewIter),
%%                           NewSeq = append(Value, CurrSeq),
%%                           Loop(NewIter,NewSeq)
%%                     end
%%              end,
%%    FunLoop(Iter,Seq1).

shift_seq([], _Amt) -> [];
shift_seq([{I,V}|T], Amt) ->
   [{I+Amt,V}|shift_seq(T, Amt)].

all_node(Seqs) when not is_list(Seqs) ->
   all_node([Seqs]);
all_node(Seqs) ->
   lists:all(fun(Seq) ->
                   #xqSeqType{type = Type} = get_seq_type(Seq),
                   %?dbg("Line",{?LINE, Type}),
                   if ?node(Type) ->
                         true;
                      Type == 'item' ->
                         % could be anything
                         lists:all(fun(#xqNode{}) ->
                                             true;
                                          (I) ->
                                             ?node(I)
                                   end, to_list(Seq));
                      Type == 'empty-sequence' ->
                         true;
                      true ->
                         false
                   end
             end, Seqs).

all_not_node(Seqs) when not is_list(Seqs) ->
   all_not_node([Seqs]);
all_not_node(Seqs) ->
   %?dbg("all_not_node",Seqs),
   lists:all(fun(Seq) ->
                   #xqSeqType{type = Type} = get_seq_type(Seq),
                   if ?node(Type) ->
                         false;
                      Type == 'item' ->
                         % could be anything
                         not lists:any(fun(#xqNode{}) ->
                                             true;
                                          (I) ->
                                             ?node(I)
                                   end, to_list(Seq));
                      Type == 'empty-sequence' ->
                         true;
                      true ->
                         true
                   end
             end, Seqs).

-spec get_seq_type(Seq :: seq()) -> XqSeqType :: tuple().
get_seq_type([]) -> [];
get_seq_type({Type,_,_}) ->
   Type.

int_rec(Val) ->
   #xqAtomicValue{type = 'xs:integer', value = Val}.

get_seq_iter(List) when is_list(List) ->
   get_seq_iter(from_list(List));

get_seq_iter(#xqAtomicValue{} = Av) ->
   get_seq_iter(singleton(Av));
get_seq_iter(#xqNode{} = Av) ->
   get_seq_iter(singleton(Av));
get_seq_iter({Type,Size,List} = Seq) ->
   if Size > 1 ->
         case hd(List) of
            {1,_} ->
               %?dbg("List",List),
               {0,Seq};
            _ ->
               {0,{Type,Size,lists:reverse(List)}}
         end;
      true ->
         {0,Seq}
   end.

%% get_item_type([X]) ->
%%    get_item_type(X);
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
%% ;
%% get_item_type(X) ->
%%    ?dbg("get_item_type",X).

combined_type(T1, T2) when T1 == T2 -> T1;
combined_type('item', _T2) -> 'item';
combined_type(T1, 'empty-sequence') -> T1;
combined_type('empty-sequence', T2) -> T2;
combined_type(_T1,'item') -> 'item';
combined_type('function', _T2) -> 'item';
combined_type(_T1,'function') -> 'item';
combined_type('map', _T2) -> 'item';
combined_type(_T1,'map') -> 'item';
combined_type('array', _T2) -> 'item';
combined_type(_T1,'array') -> 'item';
combined_type(T1,T2) when ?node(T1) andalso ?node(T2) -> 'node';
combined_type(T1,_T2) when ?node(T1) -> 'item';
combined_type(_T1,T2) when ?node(T2) -> 'item';
combined_type(T1,T2) when ?NCName(T1) andalso ?NCName(T2) -> 'xs:NCName';
combined_type(T1,T2) when ?Name(T1) andalso ?Name(T2) -> 'xs:Name';
combined_type(T1,T2) when ?token(T1) andalso ?token(T2) -> 'xs:token';
combined_type(T1,T2) when ?normalizedString(T1) andalso ?normalizedString(T2) -> 'xs:normalizedString';
combined_type(T1,T2) when ?string(T1) andalso ?string(T2) -> 'xs:string';
combined_type(T1,T2) when ?duration(T1) andalso ?duration(T2) -> 'xs:duration';
combined_type(T1,T2) when ?nonPositiveInteger(T1) andalso ?nonPositiveInteger(T2) -> 'xs:nonPositiveInteger';
combined_type(T1,T2) when ?short(T1) andalso ?short(T2) -> 'xs:short';
combined_type(T1,T2) when ?int(T1) andalso ?int(T2) -> 'xs:int';
combined_type(T1,T2) when ?long(T1) andalso ?long(T2) -> 'xs:long';
combined_type(T1,T2) when ?nonNegativeInteger (T1) andalso ?nonNegativeInteger (T2) -> 'xs:nonNegativeInteger ';
combined_type(T1,T2) when ?unsignedLong (T1) andalso ?unsignedLong (T2) -> 'xs:unsignedLong ';
combined_type(T1,T2) when ?unsignedInt (T1) andalso ?unsignedInt (T2) -> 'xs:unsignedInt ';
combined_type(T1,T2) when ?unsignedShort (T1) andalso ?unsignedShort (T2) -> 'xs:unsignedShort ';
combined_type(T1,T2) when ?integer(T1) andalso ?integer(T2) -> 'xs:integer';
combined_type(T1,T2) when ?decimal(T1) andalso ?decimal(T2) -> 'xs:decimal';
combined_type(T1,T2) when ?numeric(T1) andalso ?numeric(T2) -> 'xs:numeric';
combined_type(T1,T2) when ?anySimpleType(T1) andalso ?anySimpleType(T2) -> 'xs:anySimpleType';
combined_type(_T1,_T2) ->
   'item'.


doc_ord(Seq) ->
   Seq1 = case is_sequence(Seq) of
             true ->
                Seq;
             _ ->
                singleton(Seq)
          end,
   case all_node(Seq1) of
      true ->
         union(Seq1, empty());
      _ ->
         xqerl_error:error('XPTY0019') % only step on nodes
   end.
