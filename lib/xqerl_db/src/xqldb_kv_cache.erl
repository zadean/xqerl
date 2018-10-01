%% Simple Key Value cache
-module(xqldb_kv_cache).

%% ====================================================================
%% API functions
%% ====================================================================
-export([new/0, new/1, new/2,
         lookup/2,
         insert/3]).

-define(MAX, 16348).

new() ->
   new(ets).

new(ets) ->
   new(ets, #{max => ?MAX}).

new(ets, #{max := Max}) ->
   Tab = ets:new(?MODULE, [{read_concurrency, true}]),
   #{m => ?MODULE,
     t => ets,
     x => Max,
     c => Tab,
     a => 0,
     s => 0}.

lookup(Key, #{t := ets} = Cache) ->
   lookup_ets_key(Key, Cache).

insert(Key, Value, #{t := ets} = Cache) ->
   insert_ets_key_value(Key, Value, Cache).


%% ====================================================================
%% Internal functions
%% ====================================================================

lookup_ets_key(Key, #{a := Acc,
                      c := Tab} = Cache) ->
   case ets:lookup(Tab, Key) of
      [{Key, Val, _}] ->
         ets:update_counter(Tab, Key, {3, 1}),
         {Val, Cache#{a := Acc + 1}};
      [] ->
         {error, Cache}
   end.

insert_ets_key_value(Key, Value, #{x := Max,
                                   c := Tab,
                                   a := Acc,
                                   s := Size} = Cache) ->
   case ets:update_counter(Tab, Key, {3, 1}, {Key, Value, 0}) of
      1 ->
         if Size >= Max ->
               Mean = Acc div Size,
               %io:format("shrinking ~p~n", [Size]),
               {Tab1, Size1} = shrink_ets_table(Tab, Mean),
               Cache#{c := Tab1,
                      a := 0,
                      s := Size1};
            true ->
               Cache#{a := Acc + 1,
                      s := Size + 1}
         end;
      _ ->
         Cache#{a := Acc + 1}
   end.

% retains everything with counts more than Mean
% returns table and count of entries
shrink_ets_table(Tab, Mean) ->
   DelMs = [{{'_','_','$1'},[{'=<','$1',Mean}],[true]},{'_',[],[false]}],
   ResMs = [{{'$1','$2','_'},[],[{{'$1','$2',0}}]}],
   _ = ets:select_delete(Tab, DelMs),
   Size = ets:select_replace(Tab, ResMs),
   {Tab, Size}.





