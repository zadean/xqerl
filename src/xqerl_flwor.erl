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

-export([windowclause/3]).
-export([windowclause/5]).
-export([orderbyclause/2]).
-export([groupbyclause/1]).

-export([simple_map/3]).

% internal use
%% -export([int_order_1/2]).
   
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

do_atomize([],_) -> {<<>>, []};
do_atomize([V],C) -> do_atomize(V,C);
do_atomize(#xqNode{} = N,Coll) ->
   A = ?seq:singleton_value(xqerl_types:atomize(N)),
   #xqAtomicValue{value = Val} = A,
   {xqerl_coll:sort_key(Val, Coll), A};
do_atomize(#xqAtomicValue{value = Val, type = T} = A,_)
   when T =:= 'xs:gYearMonth' orelse
        T =:= 'xs:gYear' orelse
        T =:= 'xs:gMonthDay' orelse
        T =:= 'xs:gDay' orelse
        T =:= 'xs:gMonth' orelse
        T =:= 'xs:date' orelse
        T =:= 'xs:dateTime' orelse
        T =:= 'xs:time' ->
    #xqAtomicValue{value = Val, type = T} = A ,
    {xqerl_coll:sort_key(Val, T), A};
do_atomize(#xqAtomicValue{value = Val} = A,Coll) ->
       {xqerl_coll:sort_key(Val, Coll), A};
do_atomize(_,_) ->
   ?err('XPTY0004').


%% takes {{{K1,C1},{KN,CN}}, {V1,V2,VN}} and returns {K1,KN,V1,V2,VN} grouped
groupbyclause(KeyVals) ->
   % atomize where needed
   KeyVals1 = 
     lists:map(fun({K1,V}) ->
                     KC = tuple_to_list(K1),
                     {
                      lists:map(fun({K,C}) ->
                                     do_atomize(K,C)
                               end, KC), 
                      list_to_tuple(lists:map(fun({Va,_}) -> Va;
                                   (Va) -> Va
                                end, tuple_to_list(V)))
                     }
               end, KeyVals),
    
   Keys = [K || {K,_V} <- KeyVals1],
   UKeys = unique(Keys),
   Mapped = lists:foldl(fun({K,V},Acc) ->
                     upsert(K,V,Acc)
               end, maps:new(), KeyVals1),
   All = lists:foldl(fun(Ks,Acc) ->
                           K = [K || {K,_V} <- Ks],
                           Vs = [V || {_K,V} <- Ks],
                  V = reverse(maps:get(K, Mapped)),
                  V1 = lists:map(fun(ListVal) ->
                                       ?seq:from_list(ListVal)
                                 end, V),
                  New = list_to_tuple(Vs ++ V1) ,
                  [New|Acc]
               end, [], UKeys),
   lists:reverse(All).

%% takes single list from expression and the start function and returns 
%% {SPrev,S, SPos,SNext,EPrev,E, EPos,ENext, W} 
%% can only be tumbling with no end function
windowclause(L, StartFun, WType) ->
   case add_position(L) of
      [] -> [];
      L1 ->
         Bw = winstart([[]|L1], StartFun, []),
         %?dbg("BW",Bw),
         Bw2 = lists:map(fun(B) ->
                               L2 = element(9, B),
                               S = ?seq:from_list(L2),
                               case xqerl_types:instance_of(S, WType) of
                                  #xqAtomicValue{value = true} ->
                                     setelement(9, B, S);
                                  _ ->
                                     ?err('XPTY0004')
                               end
                         end, Bw),
         lists:reverse(Bw2)
   end.

%% takes single list from expression and the start/end functions and returns 
%% {SPrev,S, SPos,SNext,EPrev,E, EPos,ENext, W} 
%% Type is tumbling or sliding
windowclause(L, StartFun, EndFun, {Type, Only}, WType) ->
   case add_position(L) of
      [] -> [];
      L1 ->
         Bw = winstart([[]|L1], StartFun, EndFun, Type, Only),
         %?dbg("BW",Bw),
         Bw2 = lists:map(fun(B) ->
                               L2 = element(9, B),
                               S = ?seq:from_list(L2),
                               case xqerl_types:instance_of(S, WType) of
                                  #xqAtomicValue{value = true} ->
                                     setelement(9, B, S);
                                  _ ->
                                     ?err('XPTY0004')
                               end
                         end, Bw),
         lists:reverse(Bw2)
   end;
windowclause(L, StartFun, EndFun, Type, WType) ->
   windowclause(L, StartFun, EndFun, {Type, false}, WType).


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
               winstart(tl(L), StartFun, 
                        {S,SPos,SPrev,SNext,S,SPos,SPrev,SNext,[S]});
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
         {Win, _Rest} = winend(SPrev, [], [], [], L, EndFun, [], Only),
         % could send Win someplace now
         Win;
      _ ->
         []
   end;
winstart([[],{S, SPos},{SNext, _}|_] = L, StartFun, EndFun, Type, Only) ->
   case bool(StartFun({S,SPos,[],SNext})) of
      true ->
         {Win, Rest} = winend([], S, SPos, SNext, L, EndFun, [], Only),
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
         {Win, _Rest} = winend([], S, SPos, [], L, EndFun, [], Only),
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
         {Win, _Rest} = winend(SPrev, S, SPos, [], L, EndFun, [], Only),
         % could send Win someplace now
         Win;
      _ ->
%%          []
         winstart(tl(L), StartFun, EndFun, Type, Only)
   end;
winstart([{SPrev,_},{S, SPos},{SNext, _}|_] = L,StartFun,EndFun,Type,Only) ->
   case bool(StartFun({S,SPos,SPrev,SNext})) of
      true ->
         {Win, Rest} = winend(SPrev, S, SPos, SNext, L, EndFun, [], Only),
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
winend(SPrev,S,SPos,SNext,[{EPrev,_},{E, EPos},{ENext, _}|_] = L, 
       EndFun, Acc, Only) ->
   case bool(EndFun({S,SPos,SPrev,SNext,E,EPos,EPrev,ENext})) of
      true ->
         {[{S,SPos,SPrev,SNext,E,EPos,EPrev,ENext, ?seq:append(E, Acc)}], 
          tl(L)};
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
         maps:put(H1, append(V,[]), Map);
      {ok, Val} ->
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
      Empty == greatest andalso ValA == #xqAtomicValue{type = 'xs:float', 
                                                       value = nan};
      Empty == greatest andalso ValA == #xqAtomicValue{type = 'xs:double', 
                                                       value = nan} ->
         true;
      Empty == least andalso ValA == [] ->
         false;
      Empty == least andalso ValB == [] ->
         true;
      Empty == least andalso ValB == #xqAtomicValue{type = 'xs:float', 
                                                    value = nan};
      Empty == least andalso ValB == #xqAtomicValue{type = 'xs:double', 
                                                    value = nan} ->
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
      Empty == greatest andalso ValB == #xqAtomicValue{type = 'xs:float', 
                                                       value = nan};
      Empty == greatest andalso ValB == #xqAtomicValue{type = 'xs:double', 
                                                       value = nan} ->
         true;
      Empty == least andalso ValA == [] ->
         true;
      Empty == least andalso ValB == [] ->
         false;
      Empty == least andalso ValA == #xqAtomicValue{type = 'xs:float', 
                                                    value = nan};
      Empty == least andalso ValA == #xqAtomicValue{type = 'xs:double', 
                                                    value = nan} ->
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

val(T) -> xqerl_types:value(T).

bool(T) -> xqerl_operators:eff_bool_val(T).

simple_map(Ctx, Seq, MapFun) ->
   ?seq:map(Ctx, MapFun, Seq).

