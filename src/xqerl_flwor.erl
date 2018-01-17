%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2018 Zachary N. Dean  All Rights Reserved.
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

%% @doc Handles parts of a FLWOR statement that see the entire tuple stream as one unit.
%% @NOTE much of this could be done in-line in the tuple stream. Ordering/grouping as each tuple comes in.
%%       Windows clauses would be difficult since they look forward.
%% @NOTE The FLWOR could possibly be turned into process-to-process messaging, one tuple at a time. 
%%       The return portion being a process that returns to the original process... 
%%       ... something to think about with huge data set aggregation.  

-module(xqerl_flwor).

-include("xqerl.hrl").

-define(atint(I), #xqAtomicValue{type = 'xs:integer', value = I}).


-export([split_clauses/1]).

-export([expand_nodes/1]).
-export([expand_nodes/2]).

-export([sort_grouping/2]).

-export([windowclause/2]).
-export([windowclause/4]).
-export([orderbyclause/2]).
-export([groupbyclause/1]).

-export([simple_map/3]).

-export([stream_append/2]).
-export([stream_new/0]).
-export([stream_iter/1]).
-export([stream_next/1]).
-export([stream_from_list/1]).
-export([stream_to_list/1]).

-export([allow_empty/2]).

% internal use
%% -export([int_order_1/2]).
   
allow_empty(Seq,true) ->
   case ?seq:is_empty(Seq) of
      true ->
         stream_append({?seq:empty()},stream_new());
      _ ->
         Seq
   end;
allow_empty(Seq,_) -> Seq.
   

stream_append({Sz,_} = Stream1, Stream2) when is_integer(Sz), Sz >= 0 ->
   concat_streams(Stream2,Stream1);
stream_append(VariableTuple, Stream) ->
   gb_trees:enter(gb_trees:size(Stream)+1, VariableTuple, Stream).
stream_new() ->
   gb_trees:empty().
stream_iter(Stream) ->
   gb_trees:iterator(Stream).
stream_next(Stream) ->
   gb_trees:next(Stream).

stream_to_list(Stream) ->
   gb_trees:values(Stream).
stream_from_list(List) ->
   lists:foldl(fun(Item,Stream) ->
                     stream_append(Item, Stream)
               end, stream_new(), List).


concat_streams(Seq1,Seq2) ->
   Iter = stream_iter(Seq2),
   FunLoop = fun Loop(CurrIter,CurrSeq) ->
                    case stream_next(CurrIter) of
                       none ->
                          CurrSeq;
                       {_Key,Value,NewIter} ->
                          NewSeq = stream_append(Value, CurrSeq),
                          Loop(NewIter,NewSeq)
                    end
             end,
   FunLoop(Iter,Seq1).


expand_nodes([Nodes]) when is_map(Nodes) ->
   xqerl_context:get_context_item(Nodes);
expand_nodes(Nodes) when is_map(Nodes) ->
   xqerl_context:get_context_item(Nodes);
expand_nodes(Nodes) when is_list(Nodes) ->
   lists:flatmap(fun(Node) ->
                   expand_nodes(Node)
             end, Nodes);
expand_nodes(Node) ->
   [Node].

expand_nodes(Node, allow_empty) ->
   case expand_nodes(Node) of
      [] ->
         [[]];
      N ->
         N
   end.

add_position(List) when is_list(List) ->
   add_position(List, 1, []);
add_position(List) ->
   List1 = ?seq:to_list(List),
   add_position(List1, 1, []).

add_position([], _Cnt, Acc) ->
   lists:reverse(Acc);
add_position([H|T], Cnt, Acc) ->
   New = {H, ?atint(Cnt)},
   add_position(T, Cnt + 1, [New|Acc]);
add_position(H, Cnt, Acc) ->
   New = {H, ?atint(Cnt)},
   add_position([], Cnt + 1, [New|Acc]).

%% takes {{{K1,C1},{KN,CN}}, {V1,V2,VN}} and returns {K1,KN,V1,V2,VN} grouped
groupbyclause(KeyVals) ->
   % atomize where needed
   KeyVals1 = 
     lists:map(fun({K1,V}) ->
                     KC = tuple_to_list(K1),
                     {
                      lists:map(fun({K,C}) ->
                                     Coll = xqerl_coll:parse(C),
                                     case ?seq:singleton_value(K) of
                                        #xqNode{} = N ->
                                           #xqAtomicValue{value = Val} = A = ?seq:singleton_value(xqerl_node:atomize_nodes(N)),
                                           {xqerl_coll:sort_key(Val, Coll), A};
                                        #xqAtomicValue{value = Val, type = T} = A when T == 'xs:gYearMonth';
                                                                                       T == 'xs:gYear';
                                                                                       T == 'xs:gMonthDay';
                                                                                       T == 'xs:gDay';
                                                                                       T == 'xs:gMonth';
                                                                                       T == 'xs:date';
                                                                                       T == 'xs:dateTime';
                                                                                       T == 'xs:time' ->
                                           {xqerl_coll:sort_key(Val, T), A};
                                        #xqAtomicValue{value = Val} = A ->
                                           {xqerl_coll:sort_key(Val, Coll), A};
                                        [] ->
                                           {<<>>, []}
                                     end
                               end, KC), 
                      list_to_tuple(lists:map(fun({Va,_}) -> Va;
                                   (Va) -> Va
                                end, tuple_to_list(V)))
                     }
               end, KeyVals),
    
   %?dbg("KeyVals1",KeyVals1),
   Keys = [K || {K,_V} <- KeyVals1],
   %Keys = [grouped_key(K) || {K,_V} <- KeyVals1],

   %?dbg("Keys",Keys),
   %?dbg("KeyVals",KeyVals),
   UKeys = unique(Keys),
   %?dbg("UKeys",UKeys),
   Mapped = lists:foldl(fun({K,V},Acc) ->
                     upsert(K,V,Acc)
               end, maps:new(), KeyVals1),
   %?dbg("Mapped",Mapped),
   All = lists:foldl(fun(Ks,Acc) ->
                           K = [K || {K,_V} <- Ks],
                           Vs = [V || {_K,V} <- Ks],
                  V = reverse(maps:get(K, Mapped)),
                  V1 = lists:map(fun(ListVal) ->
                                       ?seq:from_list(ListVal)
                                 end, V),
                  New = list_to_tuple(Vs ++ V1) ,
                  %?dbg("V1",V1),
                  [New|Acc]
               end, [], UKeys),
   %?dbg("All",All),
   lists:reverse(All).

%% grouped_key(Keys) ->
%%    list_to_tuple([K || {K,_} <- tuple_to_list(Keys)]).


%% takes single list from expression and the start function and returns {SPrev,S, SPos,SNext,EPrev,E, EPos,ENext, W} 
%% can only be tumbling with no end function
windowclause(L, StartFun) ->
   case add_position(L) of
      [] -> [];
      L1 ->
         Bw = winstart([[]|L1], StartFun, []),
         %?dbg("BW",Bw),
         Bw2 = lists:map(fun(B) ->
                               L2 = element(9, B),
                               setelement(9, B, ?seq:from_list(L2))
                         end, Bw),
         lists:reverse(Bw2)
   end.

%% takes single list from expression and the start/end functions and returns {SPrev,S, SPos,SNext,EPrev,E, EPos,ENext, W} 
%% Type is tumbling or sliding
windowclause(L, StartFun, EndFun, {Type, Only}) ->
   case add_position(L) of
      [] -> [];
      L1 ->
         Bw = winstart([[]|L1], StartFun, EndFun, Type, Only),
         %?dbg("BW",Bw),
         lists:reverse(Bw)
   end;
windowclause(L, StartFun, EndFun, Type) ->
   windowclause(L, StartFun, EndFun, {Type, false}).


% tumbling window with no end function, means window as of each 'true'
winstart([[],{S, SPos}] = L, StartFun, Acc) ->
   case bool(StartFun({S,SPos,[],[]})) of
      true ->
         case Acc of
            [] ->
               winstart(tl(L), StartFun, {S,SPos,[],[],S,SPos,[],[],[S]});
            A ->
               R = lists:reverse(element(9, A)),
               winstart(L, StartFun, []) ++ [setelement(9, A, R)]
         end;
      _ ->
         case Acc of
            [] ->
               winstart(tl(L), StartFun, []);
            {S1,SPos1,SPrev1,SNext1,_,_, _,_,W} ->
               NewAcc = {S1,SPos1,SPrev1,SNext1,S,SPos,[],[],[S|W]},
               winstart(tl(L), StartFun, NewAcc)
         end
   end;
winstart([[],{S, SPos},{SNext, _}|_] = L, StartFun, Acc) ->
   case bool(StartFun({S,SPos,[],SNext})) of
      true ->
         case Acc of
            [] ->
               winstart(tl(L), StartFun, {S,SPos,[],SNext,S,SPos,[],SNext,[S]});
            A ->
               R = lists:reverse(element(9, A)),
               winstart(L, StartFun, []) ++ [setelement(9, A, R)]
         end;
      _ ->
         case Acc of
            [] ->
               winstart(tl(L), StartFun, []);
            {S1,SPos1,SPrev1,SNext1,_,_, _,_,W} ->
               NewAcc = {S1,SPos1,SPrev1,SNext1,S,SPos,[],SNext,[S|W]},
               winstart(tl(L), StartFun, NewAcc)
         end
   end;
winstart([{SPrev,_},{S, SPos}], StartFun, Acc) ->
   case bool(StartFun({S,SPos,SPrev,[]})) of
      true ->
         case Acc of
            [] ->
               [{S,SPos,SPrev,[],S,SPos,SPrev,[],[S]}];
            A ->
               R = lists:reverse(element(9, A)),
               [{S,SPos,SPrev,[],S,SPos,SPrev,[],S} , setelement(9, A, R)]
         end;
      _ ->
         case Acc of
            [] ->
               [];
            {S1,SPos1,SPrev1,SNext1,_,_, _,_,W} ->
               [{S1,SPos1,SPrev1,SNext1,S,SPos,SPrev,[],lists:reverse([S|W])}]
         end
   end;
winstart([{SPrev,_},{S, SPos},{SNext, _}|_] = L, StartFun, Acc) ->
   case bool(StartFun({S,SPos,SPrev,SNext})) of
      true ->
         case Acc of
            [] ->
               winstart(tl(L), StartFun, {S,SPos,SPrev,SNext,S,SPos,SPrev,SNext,[S]});
            A ->
               R = lists:reverse(element(9, A)),
               winstart(L, StartFun, []) ++ [setelement(9, A, R)]
         end;
      _ ->
         case Acc of
            [] ->
               winstart(tl(L), StartFun, []);
            {S1,SPos1,SPrev1,SNext1,_,_, _,_,W} ->
               NewAcc = {S1,SPos1,SPrev1,SNext1,S,SPos,SPrev,SNext,[S|W]},
               winstart(tl(L), StartFun, NewAcc)
         end
   end.


winstart([], _StartFun, _EndFun, _Type, _Only) ->
   [];
winstart([{SPrev,_}] = L, StartFun, EndFun, _Type, Only) ->
   case bool(StartFun({[],[],SPrev,[]})) of
      true ->
         {Win, _Rest} = winend(SPrev, [], [], [], L, EndFun, ?seq:empty(), Only),
         % could send Win someplace now
         Win;
      _ ->
         []
   end;
winstart([[],{S, SPos},{SNext, _}|_] = L, StartFun, EndFun, Type, Only) ->
   case bool(StartFun({S,SPos,[],SNext})) of
      true ->
         {Win, Rest} = winend([], S, SPos, SNext, L, EndFun, ?seq:empty(), Only),
         % could send Win someplace now
         if Type == tumbling ->
               winstart(Rest, StartFun, EndFun, Type, Only) ++ Win;
            true ->
               winstart(tl(L), StartFun, EndFun, Type, Only) ++ Win
         end;
      _ ->
         winstart(tl(L), StartFun, EndFun, Type, Only)
   end;
winstart([[],{S, SPos}] = L, StartFun, EndFun, Type, Only) ->
   case bool(StartFun({S,SPos,[],[]})) of
      true ->
         {Win, _Rest} = winend([], S, SPos, [], L, EndFun, ?seq:empty(), Only),
         % could send Win someplace now
         Win;
%%          if Type == tumbling ->
%%                winstart(Rest, StartFun, EndFun, Type, Only) ++ Win;
%%             true ->
%%                winstart(tl(L), StartFun, EndFun, Type, Only) ++ Win
%%          end;
      _ ->
%%          []
         winstart(tl(L), StartFun, EndFun, Type, Only)
   end;
winstart([{SPrev,_},{S, SPos}] = L, StartFun, EndFun, Type, Only) ->
   case bool(StartFun({S,SPos,SPrev,[]})) of
      true ->
         {Win, _Rest} = winend(SPrev, S, SPos, [], L, EndFun, ?seq:empty(), Only),
         % could send Win someplace now
         Win;
      _ ->
%%          []
         winstart(tl(L), StartFun, EndFun, Type, Only)
   end;
winstart([{SPrev,_},{S, SPos},{SNext, _}|_] = L, StartFun, EndFun, Type, Only) ->
   case bool(StartFun({S,SPos,SPrev,SNext})) of
      true ->
         {Win, Rest} = winend(SPrev, S, SPos, SNext, L, EndFun, ?seq:empty(), Only),
         % could send Win someplace now
         if Type == tumbling ->
               winstart(Rest, StartFun, EndFun, Type, Only) ++ Win;
            true ->
               winstart(tl(L), StartFun, EndFun, Type, Only) ++ Win
         end;
      _ ->
         winstart(tl(L), StartFun, EndFun, Type, Only)
   end.


winend(SPrev,S,SPos,SNext,[[],{E, EPos},{ENext, _}|_] = L, EndFun, Acc, Only) ->
   case bool(EndFun({S,SPos,SPrev,SNext,E,EPos,[],ENext})) of
      true ->
         {[{S,SPos,SPrev,SNext,E,EPos,[],ENext, ?seq:append(E, Acc)}], tl(L)};
      _ ->
         winend(SPrev,S,SPos,SNext,tl(L), EndFun, ?seq:append(E, Acc), Only)
   end;
winend(SPrev,S,SPos,SNext,[[],{E, EPos}] = L, EndFun, Acc, Only) ->
   case bool(EndFun({S,SPos,SPrev,SNext,E,EPos,[],[]})) of
      true ->
         {[{S,SPos,SPrev,SNext,E,EPos,[],[], ?seq:append(E, Acc)}], tl(L)};
      _ ->
         winend(SPrev,S,SPos,SNext,tl(L), EndFun, ?seq:append(E, Acc), Only)
   end;
winend(SPrev,S,SPos,SNext,[{EPrev,_},{E, EPos}], EndFun, Acc, Only) ->
   case bool(EndFun({S,SPos,SPrev,SNext,E,EPos,EPrev,[]})) of
      true ->
         {[{S,SPos,SPrev,SNext,E,EPos,EPrev,[], ?seq:append(E, Acc)}], []};
      _ ->
         if Only == true ->
               {[], []};
            true ->
               {[{S,SPos,SPrev,SNext,E,EPos,EPrev,[], ?seq:append(E, Acc)}], []}
         end
   end;
winend(SPrev,S,SPos,SNext,[{EPrev,_}], EndFun, Acc, Only) ->
   case bool(EndFun({S,SPos,SPrev,SNext,[],[],EPrev,[]})) of
      true ->
         {[{S,SPos,SPrev,SNext,[],[],EPrev,[], Acc}], []};
      _ ->
         if Only == true ->
               {[], []};
            true ->
               {[{S,SPos,SPrev,SNext,[],[],EPrev,[], Acc}], []}
         end
   end;
winend(SPrev,S,SPos,SNext,[{EPrev,_},{E, EPos},{ENext, _}|_] = L, EndFun, Acc, Only) ->
   case bool(EndFun({S,SPos,SPrev,SNext,E,EPos,EPrev,ENext})) of
      true ->
         {[{S,SPos,SPrev,SNext,E,EPos,EPrev,ENext, ?seq:append(E, Acc)}], tl(L)};
      _ ->
         winend(SPrev,S,SPos,SNext,tl(L), EndFun, ?seq:append(E, Acc), Only)
   end.







%% functions for group by
unique(KeysAll) ->
   unique(KeysAll, maps:new(), []).

unique([], _Map, Acc) ->
   lists:reverse(Acc);
unique([H|T], Map, Acc) ->
   H1 = [Q || {Q,_} <- H],
   case maps:is_key(H1, Map) of 
      true ->
         unique(T, Map, Acc);
      _ ->
         unique(T, maps:put(H1, true, Map), [H|Acc])
   end.

upsert(K,V,Map) ->
   H1 = [Q || {Q,_} <- K],
   case maps:find(H1, Map) of
      error ->
   %?dbg("H1",H1),
         maps:put(H1, append(V,[]), Map);
      {ok, Val} ->
   %?dbg("H1",H1),
         maps:put(H1, append(V,Val), Map)
   end.

append(Tup,[]) ->
   Sz = erlang:tuple_size(Tup),
   lists:map(fun(I) ->
                   [erlang:element(I, Tup)]
             end, lists:seq(1, Sz));
append(Tup,List) ->
   Sz = erlang:tuple_size(Tup),
   lists:map(fun(I) ->
                   V = lists:nth(I, List),
                   [erlang:element(I, Tup)|V]
             end, lists:seq(1, Sz)).

reverse(List) ->
   Sz = erlang:length(List),
   lists:map(fun(I) ->
                  lists:flatten(lists:reverse(lists:nth(I, List)))
             end, lists:seq(1, Sz)).

%% int_order_1(Tuple,Clauses) ->
%%    Cs = lists:map(fun({C,D,E}) ->
%%                    V = C(Tuple),
%%                    {V,D,E}
%%              end, Clauses),
%%    {Tuple,Cs}.
%% 
%% pmap(F, [L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,
%%          L11,L12,L13,L14,L15,L16,L17,L18,L19,L20|T]) ->
%%    S = self(),
%%    Ref = make_ref(),
%%    Pids = lists:map(fun(I) ->
%%                           spawn(fun() ->
%%                                       do_f(S,Ref,F,I) 
%%                                 end)
%%                     end, [L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,
%%          L11,L12,L13,L14,L15,L16,L17,L18,L19,L20]),
%%    H = gather(Pids,Ref),
%%    H ++ pmap(F,T);
%% pmap(F, [L1,L2,L3,L4,L5,L6,L7,L8,L9,L10|T]) ->
%%    S = self(),
%%    Ref = make_ref(),
%%    Pids = lists:map(fun(I) ->
%%                           spawn(fun() ->
%%                                       do_f(S,Ref,F,I) 
%%                                 end)
%%                     end, [L1,L2,L3,L4,L5,L6,L7,L8,L9,L10]),
%%    H = gather(Pids,Ref),
%%    H ++ pmap(F,T);
%% pmap(F, L) ->
%%    lists:map(fun(I) ->
%%                    F(I)
%%              end,L).
%% 
%% do_f(Parent,Ref,F,I) ->
%%    Parent ! {self(),Ref,F(I)}.
%% 
%% gather([Pid|T],Ref) ->
%%    receive
%%       {Pid,Ref,Ret} ->
%%          %?dbg("Ret",Ret),
%%          [Ret|gather(T,Ref)]
%%    end;
%% gather([],_) ->
%%    [].


% Clauses are funs that take an entire VarStream tuple
orderbyclause(VarStream, Clauses) ->
   %?dbg("orderbyclause 1",erlang:system_time()),
   F = fun(Tuple) ->
             Cs = lists:map(fun({C,D,E}) ->
                             V = C(Tuple),
                             {V,D,E}
                       end, Clauses),
             {Tuple,Cs}
       end,
%%    Set = rpc:pmap({?MODULE,int_order_1}, [Clauses], VarStream),
   Set = lists:map(F, VarStream),
%%    Set = pmap(F, VarStream),
   %?dbg("orderbyclause 2",erlang:system_time()),
   Sorted = lists:sort(fun(A,B) ->
                             do_order(A,B)
                       end, Set),
   %?dbg("orderbyclause 3",erlang:system_time()),
   [T || {T,_} <- Sorted].


do_order({_,[]},{_,[]}) ->
   true;
do_order({TA,[{ValA,descending,Empty}|RestA]},{TB,[{ValB,_,_}|RestB]}) ->
   if ValA == [] andalso ValB == [] -> % stable sort by empty function
         true;
      Empty == greatest andalso ValA == [] ->
         true;
      Empty == greatest andalso ValB == [] ->
         false;
      Empty == greatest andalso ValA == #xqAtomicValue{type = 'xs:float', value = nan};
      Empty == greatest andalso ValA == #xqAtomicValue{type = 'xs:double', value = nan} ->
         true;
      Empty == least andalso ValA == [] ->
         false;
      Empty == least andalso ValB == [] ->
         true;
      Empty == least andalso ValB == #xqAtomicValue{type = 'xs:float', value = nan};
      Empty == least andalso ValB == #xqAtomicValue{type = 'xs:double', value = nan} ->
         true;
      true ->
         case val(xqerl_operators:greater_than(ValA, ValB)) of
            true  ->
               true;
            _ ->
               case val(xqerl_operators:equal(ValA, ValB)) of
                  true ->
                     do_order({TA,RestA},{TB,RestB});
                  _ ->
                     false                           
               end
         end
   end;
do_order({TA,[{ValA,ascending,Empty}|RestA]},{TB,[{ValB,_,_}|RestB]}) ->
   if ValA == [] andalso ValB == [] -> % stable sort by empty function
         true;
      Empty == greatest andalso ValA == [] ->
         false;
      Empty == greatest andalso ValB == [] ->
         true;
      Empty == greatest andalso ValB == #xqAtomicValue{type = 'xs:float', value = nan};
      Empty == greatest andalso ValB == #xqAtomicValue{type = 'xs:double', value = nan} ->
         true;
      Empty == least andalso ValA == [] ->
         true;
      Empty == least andalso ValB == [] ->
         false;
      Empty == least andalso ValA == #xqAtomicValue{type = 'xs:float', value = nan};
      Empty == least andalso ValA == #xqAtomicValue{type = 'xs:double', value = nan} ->
         true;
      true ->
         case val(xqerl_operators:less_than(ValA, ValB)) of
            true ->
               true;
            _ ->
               case val(xqerl_operators:equal(ValA, ValB)) of
                  true ->
                     do_order({TA,RestA},{TB,RestB});
                  _ ->
                     false                           
               end
         end
   end.





sort_grouping(Groups, Id) ->
   Lets = [E || E <- Groups, element(1, E) == 'let'],
   Vars = [E || E <- Groups, element(1, E) == 'xqGroupBy'],
   Lets ++ [{group_by, Id, Vars}].

   




split_clauses(Clauses) ->
   Clauses.
   %split_clauses(Clauses, []).

%% split_clauses([], Acc) ->
%%    Acc;
%% split_clauses(List, Acc) ->
%%    {Fors,Rest} = lists:splitwith(fun({for,_}) -> true;
%%                                     ({'let',_}) -> true;
%%                                     %({where,_}) -> true;
%%                                     (#xqWindow{}) -> true;
%%                                     (_) -> false
%%                                  end,
%%                                  List),
%%    %?dbg("Fors",Fors),
%%    if Fors == [] ->
%%          {Grps,Rest1} = lists:splitwith(fun(#xqGroupBy{}) -> true;
%%                                            (_) -> false
%%                                        end,
%%                                        List),
%%          if Grps == [] ->
%%                {Ords,Rest2} = lists:splitwith(fun({order,_,_}) -> true;
%%                                                  (_) -> false
%%                                              end,
%%                                              List),
%%                if Ords == [] ->
%%                   {Wheres,Rest3} = lists:splitwith(fun({where,_}) -> true;
%%                                                     (_) -> false
%%                                                 end,
%%                                                 List),
%%                   if Wheres == [] ->
%%                         [H|T] = Rest,
%%                         split_clauses(T,    Acc ++ [{count,[H]}]);
%%                      true ->
%%                         split_clauses(Rest3, Acc ++ [{where, Wheres}])
%%                   end;
%%                   true ->
%%                      split_clauses(Rest2, Acc ++ [{order, Ords}])
%%                end;
%%             true ->
%%                split_clauses(Rest1, Acc ++ [{group, Grps}])
%%          end;
%%       true ->
%%          split_clauses(Rest, Acc ++ [{for_let, Fors}])
%%    end.




val(T) ->
   xqerl_types:value(T).

bool(T) ->
   %?dbg("T",T),
   xqerl_operators:eff_bool_val(T).

%   T#xqAtomicValue.value.



simple_map(Ctx, Seq, MapFun) ->
   ?seq:map(Ctx, MapFun, Seq).

