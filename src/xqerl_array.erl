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

%% @doc Implements the "http://www.w3.org/2005/xpath-functions/array" namespace.

-module(xqerl_array).

-include("xqerl.hrl").
-define(atint(I), #xqAtomicValue{type = 'xs:integer', value = I}).


-'module-namespace'({"http://www.w3.org/2005/xpath-functions/array","array"}).
-variables([]).
-functions([
{{qname,"http://www.w3.org/2005/xpath-functions/array", "array","append"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'append', 3}, 2,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "filter"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'filter', 3}, 2,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType,{xqFunTest, function, [], undefined,[{xqSeqType, item, zero_or_many}],{xqSeqType, 'xs:boolean', one}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "flatten"},{xqSeqType, item, zero_or_many}, [], 
 {'flatten', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "fold-left"},{xqSeqType, item, zero_or_many}, [], 
 {'fold-left', 4}, 3,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest, function, [], undefined,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "fold-right"},{xqSeqType, item, zero_or_many}, [], 
 {'fold-right', 4}, 3,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest, function, [], undefined,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "for-each"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'for-each', 3}, 2,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType,{xqFunTest, function, [], undefined,[{xqSeqType, item, zero_or_many}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "for-each-pair"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'for-each-pair', 4}, 3,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},{xqSeqType,{xqFunTest, function, [], undefined,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "get"},{xqSeqType, item, zero_or_many}, [], 
 {'get', 3}, 2,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, 'xs:integer', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "head"},{xqSeqType, item, zero_or_many}, [], 
 {'head', 2}, 1,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "insert-before"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'insert-before', 4}, 3,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, 'xs:integer', one},{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "join"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'join', 2}, 1,[{xqSeqType,{xqFunTest, array, [], undefined, any, any},zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "put"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'put', 4}, 3,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, 'xs:integer', one},{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "remove"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'remove', 3}, 2,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, 'xs:integer', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "reverse"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'reverse', 2}, 1,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "size"},{xqSeqType, 'xs:integer', one}, [], 
 {'size', 2}, 1,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "sort"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'sort', 2}, 1,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "sort"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'sort', 3}, 2,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "sort"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'sort', 4}, 3,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType,{xqFunTest, function, [], undefined,[{xqSeqType, item, zero_or_many}],{xqSeqType, 'xs:anyAtomicType', zero_or_many}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "subarray"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'subarray', 3}, 2,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, 'xs:integer', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "subarray"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'subarray', 4}, 3,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one},{xqSeqType, 'xs:integer', one},{xqSeqType, 'xs:integer', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/array","array", "tail"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[],
 {'tail', 2}, 1,[{xqSeqType,{xqFunTest, array, [], undefined, any, any}, one}]}
]).

-export(['append'/3]).
-export(['filter'/3]).
-export(['flatten'/2]).
-export(['fold-left'/4]).
-export(['fold-right'/4]).
-export(['for-each'/3]).
-export(['for-each-pair'/4]).
-export(['get'/3]).
-export(['head'/2]).
-export(['insert-before'/4]).
-export(['join'/2]).
-export(['put'/4]).
-export(['remove'/3]).
-export(['reverse'/2]).
-export(['size'/2]).
-export(['sort'/2,'sort'/3,'sort'/4]).
-export(['subarray'/3,'subarray'/4]).
-export(['tail'/2]).

%internal use
-export(['from_list'/1]).
-export([values/1]).
-export([get_matched/2]).


%% Returns an array containing all the members of a supplied array, plus one additional member at the end. 
'append'(_Ctx,#array{data = List},Appendage) -> 
   #array{data = List ++ [Appendage]};
'append'(_Ctx,_Seq,_Appendage) ->
   xqerl_error:error('FORG0006').

%% Returns an array containing those members of the $array for which $function returns true. 
'filter'(Ctx,#array{data = List},Function) when is_function(Function) -> 
   try
      Fx = fun(I) ->
                 Val = Function(Ctx,I),
                 %?dbg("Val",xqerl_types:value(Val)),
                 xqerl_types:value(Val) == true
           end,
      Data = lists:filter(Fx, List),
      #array{data = Data}
   catch 
      _:{badarity,_} ->
         xqerl_error:error('XPTY0004');
      _:E ->
         throw(E)
   end;
'filter'(Ctx,Array,#xqFunction{body = Function}) when is_function(Function) -> 
   'filter'(Ctx,Array,Function).

%% Replaces any array appearing in a supplied sequence with the members of the array, recursively. 
'flatten'(_Ctx,#array{data = Data}) ->
   flatten1(Data);
'flatten'(_Ctx,Data) when is_list(Data) -> 
   flatten1(Data);
'flatten'(_Ctx,Data) -> 
   Data.

flatten1([]) -> [];
flatten1([#array{data = H}|T]) ->
   Head = flatten1(H),
   flatten1(Head ++ T);
flatten1([H|T]) ->
   if is_list(H) ->
         flatten1(H ++ T);
      true ->
         [H|flatten1(T)]
   end.


%% Evaluates the supplied function cumulatively on successive members of the supplied array. 
'fold-left'(Ctx,#array{data = List},Zero,Function) when is_function(Function) -> 
   Fx = fun(I,Acc) ->
              Function(Ctx, Acc,I)
        end,
   lists:foldl(Fx, Zero, List);
'fold-left'(Ctx,Seq,Zero,#xqFunction{body = Function}) when is_function(Function) -> 
   'fold-left'(Ctx,Seq,Zero,Function).

%% Evaluates the supplied function cumulatively on successive values of the supplied array. 
'fold-right'(Ctx,#array{data = List},Zero,Function) when is_function(Function) -> 
   Fx = fun(I,Acc) ->
              Function(Ctx, I, Acc)
        end,
   lists:foldr(Fx, Zero, List);
'fold-right'(Ctx,Seq,Zero,#xqFunction{body = Function}) when is_function(Function) -> 
   'fold-right'(Ctx,Seq,Zero,Function).

%% Returns an array whose size is the same as array:size($array), in which each member is computed by applying $function to the corresponding member of $array. 
'for-each'(Ctx,Seq,#xqFunction{body = Function}) when is_function(Function) ->
   'for-each'(Ctx,Seq,Function);
'for-each'(Ctx,#array{data = List},Function) when is_function(Function) -> 
   try
      Data = lists:map(fun(I) ->
                             case Function(Ctx,I) of
                                [E] ->
                                   E;
                                E ->
                                   E
                             end
                       end, List),
      #array{data = Data}
   catch 
      _:{badarity,_} ->
         xqerl_error:error('XPTY0004');
      _:badarg ->
         xqerl_error:error('XPTY0004');
      _:E ->
         throw(E)
   end.


%% Returns an array obtained by evaluating the supplied function once for each pair of members at the same position in the two supplied arrays. 
'for-each-pair'(_Ctx,#array{data = []},_Arg2,_Arg3) -> #array{data = []};
'for-each-pair'(_Ctx,_Arg1,#array{data = []},_Arg3) -> #array{data = []};
'for-each-pair'(_Ctx,#array{} = Arr1,#array{} = Arr2,#xqFunction{body = Function}) when is_function(Function) ->
   'for-each-pair'(_Ctx,Arr1,Arr2,Function);
'for-each-pair'(Ctx,#array{data = D1},#array{data = D2},Function) when is_function(Function) ->
   try
      #array{data = for_each_pair1(Ctx,D1, D2, Function)}
   catch 
      _:{badarity,_} ->
         xqerl_error:error('XPTY0004');
      _:badarg ->
         xqerl_error:error('XPTY0004');
      _:E ->
         throw(E)
   end.

for_each_pair1(_Ctx,[],_,_) -> [];
for_each_pair1(_Ctx,_,[],_) -> [];
for_each_pair1(Ctx,[H1|T1],[H2|T2],Fun) ->
   R = case Fun(Ctx,H1,H2) of
          [E] ->
             E;
          E ->
             E
       end,   
   [R|for_each_pair1(Ctx,T1,T2,Fun)].


%% Returns the value at the specified position in the supplied array (counting from 1). 
'get'(_Ctx,#array{data = List},#xqAtomicValue{type = T, value = I}) when ?integer(T) ->
   case catch lists:nth(I, List) of
      {'EXIT', _} ->
         xqerl_error:error('FOAY0001');
      N ->
         N
   end;
'get'(_Ctx,_Seq,#xqAtomicValue{type = T}) when ?numeric(T) ->
   xqerl_error:error('XPTY0004');
'get'(Ctx,[Seq],Position) ->
   'get'(Ctx,Seq,Position);
'get'(Ctx,#array{} = A,V) ->
   'get'(Ctx,A,xqerl_types:cast_as(V, 'xs:integer'));
'get'(_Ctx,_Seq,_Position) ->
   xqerl_error:error('FORG0006').

%% Returns the first member of an array, that is $array(1). 
'head'(_Ctx,#array{data = List}) ->
   case catch erlang:hd(List) of
      {'EXIT', _} ->
         xqerl_error:error('FOAY0001');
      N ->
         N
   end.

%% Returns an array containing all the members of the supplied array, with one additional member at a specified position. 
'insert-before'(_Ctx,#array{data = List},Position,[Member]) ->
   'insert-before'(_Ctx,#array{data = List},Position,Member);
'insert-before'(_Ctx,#array{data = List},Position,Member) -> 
   I = xqerl_types:value(Position),
   if I > length(List) + 1 orelse I < 1 ->
         xqerl_error:error('FOAY0001');
      true ->
         Hd = lists:sublist(List, I - 1),
         Tl = lists:nthtail(I - 1, List),
         #array{data = Hd ++ [Member] ++ Tl}
   end.

%% Concatenates the contents of several arrays into a single array. 
'join'(_Ctx,#array{} = A) -> A;
'join'(Ctx,Arrays) ->
   Fun = fun(_,Acc,#array{data = L}) ->
               Acc ++ L;
            (_,_,_) ->
               xqerl_error:error('FORG0006')            
         end,
   Data = ?seq:foldl(Ctx,Fun,[],Arrays),
   #array{data = Data}.

%% Returns an array containing all the members of a supplied array, except for one member which is replaced with a new value. 
'put'(_Ctx,#array{data = List},Position,[Member]) ->
   'put'(_Ctx,#array{data = List},Position,Member);
'put'(_Ctx,#array{data = List},Position,Member) -> 
   I = xqerl_types:value(Position),
   if I > length(List) orelse I < 1 ->
         xqerl_error:error('FOAY0001');
      true ->
         Hd = lists:sublist(List, I - 1),
         Tl = lists:nthtail(I, List),
         #array{data = Hd ++ [Member] ++ Tl}
   end.

%% Returns an array containing all the members of the supplied array, except for the members at specified positions. 
'remove'(_Ctx,#array{data = List},Positions) -> 
   Arr = array:from_list(List),
   IntList = [V || #xqAtomicValue{value = V} <- ?seq:to_list(Positions)],
   SortPos = ordsets:from_list(IntList),
   RevPos = lists:reverse(ordsets:to_list(SortPos)),
   Arr1 = lists:foldl(fun(P,A) ->
                            case P > array:size(A) orelse P < 1  of 
                               true -> xqerl_error:error('FOAY0001');
                               _ -> array:reset(P - 1, A)
                            end
                      end, Arr, RevPos),
   Dat = array:sparse_to_list(Arr1),
   #array{data = Dat}.


%% Returns an array containing all the members of a supplied array, but in reverse order. 
'reverse'(_Ctx,#array{data = List}) -> 
   #array{data = lists:reverse(List)};
'reverse'(Ctx,[Seq]) ->
   'reverse'(Ctx,Seq);
'reverse'(_Ctx,_Seq) ->
   xqerl_error:error('FORG0006').

%% Returns the number of members in the supplied array. 
'size'(_Ctx,#array{data=List}) -> 
   ?atint(erlang:length(List));
'size'(Ctx,[Seq]) ->
   'size'(Ctx,Seq);
'size'(_Ctx,_Seq) ->
   xqerl_error:error('FORG0006').

%% Returns an array containing all the members of the supplied array, sorted according to the value of a sort key supplied as a function. 
'sort'(Ctx,#array{} = Array) -> 
   Collation = xqerl_context:get_default_collation(Ctx),
   sort(Ctx,Array, Collation).
   
'sort'(Ctx,#array{} = Array,[]) -> 
   Collation = xqerl_context:get_default_collation(Ctx),
   'sort'(Ctx,Array,Collation,fun xqerl_fn:data/2);
'sort'(Ctx,#array{} = Array,Collation) ->
   'sort'(Ctx,Array,Collation,fun xqerl_fn:data/2).

'sort'(Ctx,#array{} = Array,[],Function) -> 
   Collation = xqerl_context:get_default_collation(Ctx),
   'sort'(Ctx,Array,Collation,Function);
'sort'(Ctx,#array{data = List},Collation,Function) when is_function(Function) -> 
   SortFun = fun(A,B) ->
                   KeyA = Function(Ctx,A),
                   KeyB = Function(Ctx,B),
                   sort1(Ctx,KeyA,KeyB,Collation)
             end,
   SortedList = lists:sort(SortFun, List),
   #array{data = SortedList};
'sort'(Ctx,Array,Collation,#xqFunction{body = Function}) when is_function(Function) ->
   'sort'(Ctx,Array,Collation,Function).


sort1(_,[],[],_Coll) -> true;
sort1(_,[],_B,_Coll) -> true;
sort1(_,_A,[],_Coll) -> false;
sort1(Ctx,A,B,Coll) when is_list(A), is_list(B) ->
   #xqAtomicValue{value = Equal} = xqerl_fn:'deep-equal'(Ctx, hd(A), hd(B), Coll),
   %?dbg("Equal",Equal),
   if Equal == true ->
         sort1(Ctx,tl(A),tl(B),Coll);
      true ->
         #xqAtomicValue{value = NotEqual} = xqerl_operators:not_equal(hd(A), hd(A)),
         %?dbg("NotEqual",NotEqual),
         if NotEqual == true ->
               true;
            true ->
               TypeA = xqerl_types:type(hd(A)),
               TypeB = xqerl_types:type(hd(B)),
               %?dbg("TypeA",TypeA),
               %?dbg("TypeB",TypeB),
               if ?string(TypeA) orelse TypeA == 'xs:anyURI' orelse TypeA == 'xs:untypedAtomic',
                  ?string(TypeB) orelse TypeB == 'xs:anyURI' orelse TypeB == 'xs:untypedAtomic' ->
                     #xqAtomicValue{value = Comp} = xqerl_fn:compare(Ctx, hd(A), hd(B), Coll),
                     %?dbg("Comp",Comp),
                     Comp =< 0;
                  true ->
                     #xqAtomicValue{value = LTEqual} = xqerl_operators:less_than_eq(hd(A), hd(B)),
                     %?dbg("LTEqual",LTEqual),
                     LTEqual
               end
         end
   end;
sort1(Ctx,A,B,Coll) when is_list(A) ->
   sort1(Ctx,A,[B],Coll);
sort1(Ctx,A,B,Coll) when is_list(B) ->
   sort1(Ctx,[A],B,Coll);
sort1(Ctx,A,B,Coll) ->
   sort1(Ctx,[A],[B],Coll).

   

%% Returns an array containing all members from a supplied array starting at a supplied position, up to a specified length. 
'subarray'(_Ctx,Array,Start) -> 
   List = case Array of
             [#array{data = L}] ->
                L;
             #array{data = L} ->
                L;
             _ ->
                xqerl_error:error('FORG0006')
          end,
   I = xqerl_types:value(Start),
   if I > length(List) + 1 orelse I < 1 ->
         xqerl_error:error('FOAY0001');
      true ->
         Sl = lists:nthtail(I -1, List),
         #array{data = Sl}
   end.
'subarray'(_Ctx,Array,Start,Length) -> 
   List = case Array of
             [#array{data = L}] ->
                L;
             #array{data = L} ->
                L;
             _ ->
                xqerl_error:error('FORG0006')
          end,
   I = xqerl_types:value(Start),
   N = xqerl_types:value(Length),
   if N < 0 ->
         xqerl_error:error('FOAY0002');
      (I + N) > length(List) + 1  ->
         xqerl_error:error('FOAY0001');
      true ->
         Sl = lists:sublist(List, I, N),
         #array{data = Sl}
   end.

%% Returns an array containing all members except the first from a supplied array. 
'tail'(_Ctx,Array) -> 
   List = case Array of
             [#array{data = L}] ->
                L;
             #array{data = L} ->
                L;
             _ ->
                xqerl_error:error('FORG0006')
          end,
   case catch erlang:tl(List) of
      {'EXIT', _} ->
         xqerl_error:error('FOAY0001');
      N ->
         #array{data = N}
   end.   

from_list(List) ->
   #array{data = List}.


% used in unary lookup
values(#array{data = List}) ->
  List.

% used in unary lookup
get_matched(Array,Keys) ->
   lists:map(fun(Key) ->
                   ?MODULE:get([], Array, Key)
                 end, Keys).

