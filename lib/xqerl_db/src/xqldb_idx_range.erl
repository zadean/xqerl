-module(xqldb_idx_range).
-include("xqerl_db.hrl").
-include_lib("stdlib/include/qlc.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([test/1, test/0]).

-export([from_list/1,
         to_list/1,
         merge/2]).

-export([filter/2]).

-export([between_exclusive/3,
         between_inclusive/3,
         between_inclusive_bottom/3,
         between_inclusive_top/3]).

from_list([]) ->
   gb_trees:empty();
from_list(List) ->
   from_list_(List).

to_list(Idx) ->
   gb_trees:to_list(Idx).

filter(Fun, Idx) ->
   case gb_trees:iterator(Idx) of
      [] ->
         [];
      Iter ->
         List = filter_(Iter, Fun, []),
         lists:sort(List)
   end.


between_exclusive(Low, High, Idx) ->
   Iter = gb_trees:iterator_from(Low, Idx),
   L = case gb_trees:next(Iter) of
         none ->
            [];
         {K,_,I1} when K == Low ->
            collect_less_than(High, I1, []);
         {K,V,I} when K < High ->
            collect_less_than(High, I, V);
         _ ->
            []
      end,
   lists:sort(L).

between_inclusive(Low, High, Idx) ->
   Iter = gb_trees:iterator_from(Low, Idx),
   L = case gb_trees:next(Iter) of
         none ->
            [];
         {K,V,I} when K < High ->
            collect_less_than_equal(High, I, V);
         _ ->
            []
      end,
   lists:sort(L).

between_inclusive_top(Low, High, Idx) ->
   Iter = gb_trees:iterator_from(Low, Idx),
   L = case gb_trees:next(Iter) of
         none ->
            [];
         {K,_,I1} when K == Low ->
            collect_less_than_equal(High, I1, []);
         {K,V,I} when K =< High ->
            collect_less_than_equal(High, I, V);
         _ ->
            []
      end,
   lists:sort(L).

between_inclusive_bottom(Low, High, Idx) ->
   Iter = gb_trees:iterator_from(Low, Idx),
   L = case gb_trees:next(Iter) of
         none ->
            [];
         {K,V,I} when K < High ->
            collect_less_than(High, I, V);
         _ ->
            []
      end,
   lists:sort(L).

merge(Idx1, Idx2) ->
   case gb_trees:size(Idx1) >= gb_trees:size(Idx2) of
      true ->
         merge_(Idx1, Idx2);
      false ->
         merge_(Idx2, Idx1)
   end.

%% ====================================================================
%% Internal functions
%% ====================================================================

filter_(Iter, Fun, Acc) ->
   case gb_trees:next(Iter) of
      none ->
         Acc;
      {K,V,I} ->
         case Fun(K) of
            true ->
               filter_(I, Fun, V ++ Acc);
            false ->
               filter_(I, Fun, Acc)
         end
   end.

merge_(Idx1, Idx2) ->
   % Idx1 is larger
   Iter = gb_trees:iterator(Idx2),
   merge_1(Iter, Idx1).

merge_1(Iter, Acc) ->
   case gb_trees:next(Iter) of
      none ->
         Acc;
      {K,V,I} ->
         case gb_trees:is_defined(K, Acc) of
            true ->
               Old = gb_trees:get(K, Acc),
               New = gb_trees:update(K, V ++ Old, Acc),
               merge_1(I, New);
            false ->
               merge_1(I, gb_trees:insert(K, V, Acc))
         end
   end.

collect_less_than(_, [], Acc) -> Acc;
collect_less_than(High, Iter, Acc) ->
   case gb_trees:next(Iter) of
      none ->
         Acc;
      {K,V,I} when K < High ->
         collect_less_than(High, I, V ++ Acc);
      _ ->
         Acc
   end.

collect_less_than_equal(_, [], Acc) -> Acc;
collect_less_than_equal(High, Iter, Acc) ->
   case gb_trees:next(Iter) of
      none ->
         Acc;
      {K,V,_} when K == High ->
         V ++ Acc;
      {K,V,I} when K < High ->
         collect_less_than_equal(High, I, V ++ Acc);
      _ ->
         Acc
   end.

         
from_list_(List) ->
   R = lists:reverse(lists:sort(List)),
   L = from_list_1(R, [], []),
   L1 = lists:reverse(L),
   gb_trees:from_orddict(L1).

from_list_1([],_,[]) ->
   [];
from_list_1([{K,V}|T],[],[]) ->
   from_list_1(T,K,[V]);
from_list_1([],Last,Acc) ->
   [{Last,Acc}];
from_list_1([{K,V}|T],Last,Acc) ->
   if K == Last ->
         from_list_1(T,Last,[V|Acc]);
      true ->
         [{Last,Acc}|from_list_1(T,K,[V])]
   end.




test(Range) ->
   Q = qlc:q([Y || Y <- xqldb_idx_range:filter(fun(a) -> true; (_) -> false end, Range)]),
   ?dbg("info", qlc:info(Q)),
   qlc:q([X || X <- Q, X =:= 4]).


test() ->
   Map = fill_map(#{}, 10000),
   to_ets(Map).

fill_map(Map, Cnt) when Cnt =:= 0 ->
   Map;
fill_map(Map, Cnt) ->
   Key = erlang:phash(Cnt, 120),
   Cnt1 = Cnt - 1,
   Map1 = case maps:find(Key,Map) of
      {ok,Val} ->
         Map#{Key := [Cnt|Val]};
      error ->
         Map#{Key => [Cnt]}
   end,
   fill_map(Map1, Cnt1).

to_ets(Map) ->
   T = ets:new(local, [named_table,duplicate_bag,compressed]),
   ets:insert(T, 
              lists:map(fun({K,V}) ->
                              {K,list_to_tuple(V)}
                        end, maps:to_list(Map))).





