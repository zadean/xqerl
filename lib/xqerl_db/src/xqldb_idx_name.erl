-module(xqldb_idx_name).
-include("xqerl_db.hrl").


%% ====================================================================
%% API functions
%% ====================================================================
-export([index_doc/2,
         negate/1,
         add/2,
         delta/2,
         prune/1
         ]).

index_doc(?PINM, Collector) when is_pid(Collector) ->
   Key = {pi, __Ln},
   Collector ! Key,
   index_doc(Rest, Collector);

index_doc(?ELMM, Collector) when is_pid(Collector) ->
   Key = {element, __Ns, __Ln},
   Collector ! Key,
   index_doc(Rest, Collector);

index_doc(<<_:?BSZ/bytes,Rest/binary>>, Collector) when is_pid(Collector) ->
   index_doc(Rest, Collector);

index_doc(?DMTM, Attributes) ->
   Collector = spawn_link(fun() -> collect(#{}) end),
   ok = index_att_names(Attributes, Collector),
   ok = index_doc(Rest, Collector),
   receive
      {names, Map} ->
         Map
   end;
index_doc(<<>>, Collector) when is_pid(Collector) ->
   Collector ! {done, self()},
   ok.


negate(Idx) ->
   do_negate_index(Idx).

add(Idx1,Idx2) ->
   add_merge_maps(Idx1,Idx2).

delta(Old,New) ->
   NOld = negate(Old),
   NNew = add(NOld, New),
   prune(NNew).

% prune all leaves/branches with 0 counts (tombstones from online updates).
% used with deltas and index cleanups
prune(Idx) ->
   do_prune(Idx).

%% ====================================================================
%% Internal functions
%% ====================================================================

collect(Map) ->
   receive
      {element,_,_} = E ->
         collect(map_update_counter(E, 1, Map));
      {attribute,_,_} = A ->
         collect(map_update_counter(A, 1, Map));
      {pi,_} = P ->
         collect(map_update_counter(P, 1, Map));
      {done, Pid} ->
         Pid ! {names, Map}
   end.


index_att_names(Attributes, Collector) ->
   [Collector ! {attribute,__ANs,__ALn} ||
    ?ATT <- array:to_list(Attributes)],
   ok.


do_negate_index(Idx) ->
   maps:from_list([{K,-V} ||
                   {K,V} <- maps:to_list(Idx)]).

add_fun(_Key, Val1, Val2) when is_integer(Val1),
                               is_integer(Val2) ->
   Val1 + Val2.

add_merge_maps(Map1,Map2) ->
   maps_merge_with(fun add_fun/3,Map1,Map2).

maps_merge_with(F,Map1,Map2) ->
   O1 = orddict:from_list(maps:to_list(Map1)),
   O2 = orddict:from_list(maps:to_list(Map2)),
   O3 = orddict:merge(F, O1, O2),
   maps:from_list(O3).



do_prune(Entries) ->
   L = [{K,V} || 
        {K,V} <- maps:to_list(Entries),
        V =/= 0],
   maps:from_list(L).


map_update_counter(Key, Incr, Map) ->
   case maps:find(Key, Map) of
      {ok, Cnt} ->
         Map#{Key := Cnt + Incr};
      error ->
         Map#{Key => Incr}
   end.


