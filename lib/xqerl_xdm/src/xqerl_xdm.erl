%% @author Zack
%% @doc @todo Add description to xqerl_xdm.


-module(xqerl_xdm).

%% ====================================================================
%% API functions
%% ====================================================================
-export([
   test/0         
]).



%% ====================================================================
%% Internal functions
%% ====================================================================


test() ->
   Tab = ets:new(hashdump, []),
   test(<<>>, Tab).

test(Base, Map) when byte_size(Base) < 8 ->
   
   F = fun(C,Map1) ->
             Base1 = <<Base/binary,C>>,
             Map2 = add(Base1, Map1),
             test(Base1, Map2)
       end,
   lists:foldl(F, Map, lists:seq(32, 126));
test(_Base, Map) ->
   io:format("~p~n", [{count, ets:info(Map, size)}]),
   Map.



add(Str, Map) ->
   %Hash = erlang:phash2(Str, (1 bsl 32) - 1),
   Hash = crypto:hash(md5, Str),
   true = ets:insert_new(Map, {Hash}),
   Map.

%%    case maps:is_key(Hash, Map) of
%%       true ->
%%          %io:format("~p~n", [{collision, Hash, Str, maps:get(Hash, Map)}]),
%%          %Map#{Hash := Str};
%%          throw({collision, Hash, Str, maps:get(Hash, Map)});
%%       _ ->
%%          Map#{Hash => Str}
%%    end.




string_table_rec(Table, Str) when is_map_key(Str, Table) ->
   map_get(Str, Table);
string_table_rec(Table, Str) ->
   Id = maps:size(Table) + 1,
   {Str, Id, Table#{Str => Id}}.


