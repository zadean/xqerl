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
-export(['for-each-pair'/5]).
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


%% Returns an array containing all the members of a supplied array, plus one additional member at the end. 
'append'(_Ctx,#array{data = List},Appendage) -> 
   App = if is_list(Appendage) -> Appendage;
            true -> [Appendage]
         end,
   #array{data = List ++ App};
'append'(Ctx,Seq,Appendage) ->
   case ?seq:is_sequence(Seq) of
      true ->
         'append'(Ctx,?seq:singleton_value(Seq),Appendage);
      _ ->
         xqerl_error:error('FORG0006')
   end.

%% Returns an array containing those members of the $array for which $function returns true. 
'filter'(_Ctx,#array{data = List},Function) when is_function(Function) -> 
   Fx = fun(I) ->
              Val = Function([],I),
              xqerl_types:value(Val) == true
        end,
   Data = lists:filter(Fx, List),
   #array{data = Data};
'filter'(Ctx,Seq,Function) when is_function(Function) -> 
   case ?seq:is_sequence(Seq) of
      true ->
         'filter'(Ctx,?seq:singleton_value(Seq),Function);
      _ ->
         xqerl_error:error('FORG0006')
   end;
'filter'(Ctx,Array,#xqFunction{body = Function}) when is_function(Function) -> 
   'filter'(Ctx,Array,Function);
'filter'(Ctx,Seq,Function) -> 
   case ?seq:is_sequence(Function) of
      true ->
         'filter'(Ctx,Seq,?seq:singleton_value(Function));
      _ ->
         xqerl_error:error('FORG0006')
   end.

%% Replaces any array appearing in a supplied sequence with the members of the array, recursively. 
'flatten'(_Ctx,_Arg1) -> exit(not_implemented).

%% Evaluates the supplied function cumulatively on successive members of the supplied array. 
'fold-left'(_Ctx,#array{data = List},Zero,Function) when is_function(Function) -> 
   Fx = fun(I,Acc) ->
              Function([], Acc,I)
        end,
   Data = lists:foldl(Fx, Zero, List),
   #array{data = Data};
'fold-left'(Ctx,Seq,Zero,Function) when is_function(Function) -> 
   case ?seq:is_sequence(Seq) of
      true ->
         'fold-left'(Ctx,?seq:singleton_value(Seq),Zero,Function);
      _ ->
         xqerl_error:error('FORG0006')
   end;
'fold-left'(Ctx,Seq,Zero,#xqFunction{body = Function}) when is_function(Function) -> 
   'fold-left'(Ctx,Seq,Zero,Function);
'fold-left'(Ctx,Seq,Zero,Function) ->
   case ?seq:is_sequence(Function) of
      true ->
         'fold-left'(Ctx,Seq,Zero,?seq:singleton_value(Function));
      _ ->
         xqerl_error:error('FORG0006')
   end.

%% Evaluates the supplied function cumulatively on successive values of the supplied array. 
'fold-right'(_Ctx,#array{data = List},Zero,Function) when is_function(Function) -> 
   Fx = fun(I,Acc) ->
              Function([], I, Acc)
        end,
   Data = lists:foldr(Fx, Zero, List),
   #array{data = Data};
'fold-right'(Ctx,Seq,Zero,Function) when is_function(Function) -> 
   case ?seq:is_sequence(Seq) of
      true ->
         'fold-right'(Ctx,?seq:singleton_value(Seq),Zero,Function);
      _ ->
         xqerl_error:error('FORG0006')
   end;
'fold-right'(Ctx,Seq,Zero,#xqFunction{body = Function}) when is_function(Function) -> 
   'fold-right'(Ctx,Seq,Zero,Function);
'fold-right'(Ctx,Seq,Zero,Function) ->
   case ?seq:is_sequence(Function) of
      true ->
         'fold-right'(Ctx,Seq,Zero,?seq:singleton_value(Function));
      _ ->
         xqerl_error:error('FORG0006')
   end.

%% Returns an array whose size is the same as array:size($array), in which each member is computed by applying $function to the corresponding member of $array. 
'for-each'(_Ctx,#array{data = List},Function) when is_function(Function) -> 
   Data = lists:map(fun(I) ->
                          Function([],I)
                    end, List),
   #array{data = Data};
'for-each'(Ctx,Seq,Function) when is_function(Function) ->
   case ?seq:is_sequence(Seq) of
      true ->
         'for-each'(Ctx,?seq:singleton_value(Seq),Function);
      _ ->
         xqerl_error:error('FORG0006')
   end;
'for-each'(Ctx,Seq,#xqFunction{body = Function}) when is_function(Function) ->
   'for-each'(Ctx,Seq,Function);
'for-each'(Ctx,Seq,Function) ->
   case ?seq:is_sequence(Function) of
      true ->
         'for-each'(Ctx,Seq,?seq:singleton_value(Function));
      _ ->
         xqerl_error:error('FORG0006')
   end.


%% Returns an array obtained by evaluating the supplied function once for each pair of members at the same position in the two supplied arrays. 
'for-each-pair'(_Ctx,_Arg1,_Arg2,_Arg3,_Arg4) -> exit(not_implemented).

%% Returns the value at the specified position in the supplied array (counting from 1). 
'get'(_Ctx,#array{data = List},Position) ->
   I = xqerl_types:value(Position),
   case catch lists:nth(I, List) of
      {'EXIT', _} ->
         xqerl_error:error('FOAY0001');
      N ->
         N
   end;
'get'(Ctx,Seq,Position) ->
   case ?seq:is_sequence(Seq) of
      true ->
         'get'(Ctx,?seq:singleton_value(Seq),Position);
      _ ->
         xqerl_error:error('FORG0006')
   end.

%% Returns the first member of an array, that is $array(1). 
'head'(_Ctx,#array{data = List}) ->
   case catch erlang:hd(List) of
      {'EXIT', _} ->
         xqerl_error:error('FOAY0001');
      N ->
         N
   end;
'head'(Ctx,Seq) ->
   case ?seq:is_sequence(Seq) of
      true ->
         'head'(Ctx,?seq:singleton_value(Seq));
      _ ->
         xqerl_error:error('FORG0006')
   end.

%% Returns an array containing all the members of the supplied array, with one additional member at a specified position. 
'insert-before'(_Ctx,#array{data = List},Position,Member) -> 
   I = xqerl_types:value(Position),
   if I > length(List) + 1 orelse I < 1 ->
         xqerl_error:error('FOAY0001');
      true ->
         Hd = lists:sublist(List, I - 1),
         Tl = lists:nthtail(I - 1, List),
         Mem = if is_list(Member) -> Member;
                  true -> [Member]
               end,
         #array{data = Hd ++ Mem ++ Tl}
   end;
'insert-before'(Ctx,Seq,Position,Member) ->
   case ?seq:is_sequence(Seq) of
      true ->
         'insert-before'(Ctx,?seq:singleton_value(Seq),Position,Member);
      _ ->
         xqerl_error:error('FORG0006')
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
'put'(_Ctx,#array{data = List},Position,Member) -> 
   I = xqerl_types:value(Position),
   if I > length(List) orelse I < 1 ->
         xqerl_error:error('FOAY0001');
      true ->
         Hd = lists:sublist(List, I - 1),
         Tl = lists:nthtail(I, List),
         Mem = if is_list(Member) -> Member;
                  true -> [Member]
               end,
         #array{data = Hd ++ Mem ++ Tl}
   end;
'put'(Ctx,Seq,Position,Member) ->
   case ?seq:is_sequence(Seq) of
      true ->
         'put'(Ctx,?seq:singleton_value(Seq),Position,Member);
      _ ->
         xqerl_error:error('FORG0006')
   end.

%% Returns an array containing all the members of the supplied array, except for the members at specified positions. 
'remove'(_Ctx,#array{data = List},Positions) -> 
   Arr = array:from_list(List),
   IntList = [V || #xqAtomicValue{value = V} <- ?seq:to_list(Positions)],
   SortPos = ordsets:from_list(IntList),
   RevPos = lists:reverse(ordsets:to_list(SortPos)),
   Arr1 = lists:foldl(fun(P,A) ->
                            case P > array:size(A) of 
                               true -> xqerl_error:error('FOAY0001');
                               _ -> array:reset(P - 1, A)
                            end
                      end, Arr, RevPos),
   Dat = array:sparse_to_list(Arr1),
   #array{data = Dat};
'remove'(Ctx,Seq,Positions) ->
   case ?seq:is_sequence(Seq) of
      true ->
         'remove'(Ctx,?seq:singleton_value(Seq),Positions);
      _ ->
         xqerl_error:error('FORG0006')
   end.


%% Returns an array containing all the members of a supplied array, but in reverse order. 
'reverse'(_Ctx,#array{data = List}) -> 
   #array{data = lists:reverse(List)};
'reverse'(Ctx,Seq) ->
   case ?seq:is_sequence(Seq) of
      true ->
         'reverse'(Ctx,?seq:singleton_value(Seq));
      _ ->
         xqerl_error:error('FORG0006')
   end.

%% Returns the number of members in the supplied array. 
'size'(_Ctx,#array{data=List}) -> 
   ?atint(erlang:length(List));
'size'(Ctx,Seq) ->
   case ?seq:is_sequence(Seq) of
      true ->
         'size'(Ctx,?seq:singleton_value(Seq));
      _ ->
         xqerl_error:error('FORG0006')
   end.

%% Returns an array containing all the members of the supplied array, sorted according to the value of a sort key supplied as a function. 
'sort'(_Ctx,_Arg1) -> exit(not_implemented).
'sort'(_Ctx,_Arg1,_Arg2) -> exit(not_implemented).
'sort'(_Ctx,_Arg1,_Arg2,_Arg3) -> exit(not_implemented).

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
