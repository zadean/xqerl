%% @author Zack
%% @doc @todo Add description to xqldb_mi_sup.


-module(xqldb_mi_sup).

-include("xqerl_db.hrl").

-behaviour(supervisor).

-export([init/1]).

%% ====================================================================
%% API functions
%% ====================================================================
%% -export([paths/1,
%%          
%% %%          test/0,
%% %%          test0/0,
%% %%          test1/0,
%% %%          test2/0,
%% %%          test3/0,
%% %%          
%% %%          load/0,
%% %%          load1/0,
%% %%          load2/0,
%% %%          load3/0,
%%          
%%          load_indices/0
%% ]).

-export([start_link/0,
         start_child/0]).

start_link() ->
   supervisor:start_link({local,?MODULE}, ?MODULE, []).

start_child() ->
   supervisor:start_child(?MODULE, []).




%% ====================================================================
%% Behavioural functions
%% ====================================================================


init(_) ->
   _BaseDir = application:get_env(xqerl, base_data_dir),
   SupFlags = #{strategy  => one_for_one,
                intensity => 10,
                period    => 3},
   ChildSpecs = [#{id      => merge_index,
                   start   => {merge_index, start_link, ["/git/zadean/xqerl/data/merge_index_data"]},
                   restart => permanent}],
                   %restart => transient}],
   {ok, {SupFlags, ChildSpecs}}.

%% ====================================================================
%% Internal functions
%% ====================================================================

%% iter([]) -> eof;
%% iter(List) when length(List) > 1000 ->
%%    {H,T} = lists:split(1000, List),
%%    {H, fun() -> iter(T) end};
%% iter(List) ->
%%    {List, fun() -> eof end}.


%% test() ->
%%    List = lists:seq(1, 1000000),
%%    List1 = lists:filter(fun(I) when I rem 2 == 0 -> true;
%%                            (_) -> false
%%                         end, List),
%%    List2 = lists:filter(fun(I) when I rem 3 == 0 -> true;
%%                            (_) -> false
%%                         end, List),
%%    List3 = lists:filter(fun(I) when I rem 4 == 0 -> true;
%%                            (_) -> false
%%                         end, List),
%%    List4 = lists:filter(fun(I) when I rem 5 == 0 -> true;
%%                            (_) -> false
%%                         end, List),
%%    List5 = lists:filter(fun(I) when I rem 6 == 0 -> true;
%%                            (_) -> false
%%                         end, List),
%%    Iter1 = iter(List1),
%%    Iter2 = iter(List2),
%%    Iter3 = iter(List3),
%%    Iter4 = iter(List4),
%%    Iter5 = iter(List5),
%%    
%%    Iter = do([Iter5,Iter4,Iter1,Iter2,Iter3]),
%%    run(Iter).

%% do([Iter1,Iter2]) ->
%%    lm(Iter1,Iter2);
%% do([Iter1,Iter2|Rest]) ->
%%    do([lm(Iter1,Iter2)|Rest]).
%% 
%% run(eof) -> [];
%% run({V,I}) ->
%%    %io:format("V: ~p~n",[V]),
%%    V ++ run(I());
%% run(F) ->
%%   run(F()).


%% lm(I1,I2) -> lm(I1,I2, []).
%% 
%% lm(eof,eof,Acc) ->
%%    {lists:reverse(Acc), fun eof/0};
%% lm(eof,Rest,Acc) ->
%%    ok = consume(Rest),
%%    {lists:reverse(Acc), fun eof/0};
%% lm(Rest,eof,Acc) ->
%%    ok = consume(Rest),
%%    {lists:reverse(Acc), fun eof/0};
%% lm(I1,I2,Acc) when length(Acc) > 500 ->
%%    {lists:reverse(Acc), fun() -> lm(I1,I2,[]) end};
%% lm({V1,F1},{V2,F2},Acc0) ->
%%    case inter(V1,V2,[]) of
%%       {[],[],[]} ->
%%          lm(F1(),F2(),Acc0);
%%       {[],[],Acc} ->
%%          lm(F1(),F2(), Acc ++ Acc0);
%%       {[],R2,[]} ->
%%          lm(F1(),{R2,F2},Acc0);
%%       {[],R2,Acc} ->
%%          lm(F1(),{R2,F2},Acc ++ Acc0);
%%       {R1,[],[]} ->
%%          lm({R1,F1},F2(),Acc0);
%%       {R1,[],Acc} ->
%%          lm({R1,F1},F2(),Acc ++ Acc0)
%%    end.
%% 
%% eof() -> eof.

%% consume(eof) -> ok;
%% consume({_,Iter}) ->
%%    consume(Iter()).


%% inter([],L2,Acc) ->
%%    {[],L2,Acc};
%% inter(L1,[],Acc) ->
%%    {L1,[],Acc};
%% inter([H1|T1],[H2|T2],Acc) when H1 < H2 ->
%%    inter(T1,[H2|T2],Acc);
%% inter([H1|T1],[H2|T2],Acc) when H1 > H2 ->
%%    inter([H1|T1],T2,Acc);
%% inter([H1|T1],[_H2|T2],Acc) ->
%%    inter(T1,T2,[H1|Acc]).


%% rand_doc() ->
%%    erlang:phash2(erlang:unique_integer(), 10000).
%% rand_int() ->
%%    erlang:phash2(erlang:unique_integer(), 1000).
%% rand_dbl() ->
%%    rand:uniform(1000) + rand:uniform(100) / 100.
%% rand_bin() ->
%%    integer_to_binary(rand_int()).
%% rand_str() ->
%%    binary_to_list(
%%      integer_to_binary(
%%        erlang:phash2(erlang:unique_integer(), 50000), 16)).
%% 
%% add_1000(Index, Field, Term) ->
%%    Seq = lists:seq(1, 1000),
%%    PF = fun(_) ->
%%               {Index, Field, Term(), rand_doc(), [], 5}
%%         end,
%%    Postings = lists:map(PF, Seq),
%%    merge_index:index(merge_index, Postings).
%% 
%% load_indices() ->
%%    {ok,S} = merge_index:start_link("data/testing"),
%%    erlang:register(merge_index, S),
%%    ToLoad = [{int_value, fun rand_int/0},
%%              {dbl_value, fun rand_dbl/0},
%%              {bin_value, fun rand_bin/0},
%%              {str_value, fun rand_str/0}],
%%    [add_1000(Idx, value, Term) ||
%%     _ <- lists:seq(1, 10),
%%     {Idx,Term} <- ToLoad,
%%     _ <- lists:seq(1, 100)
%%     ].
%% 
%% f() ->
%%   fun(_,_) -> true end.
%% 
%% 
%% test0() ->
%%    fun(ok) -> undefined end.
%% 
%%          
%% test1() ->
%% %%    Iter1 = merge_index:range(merge_index, int_value, value, 0, 1, all, fun(_,_) -> true end),
%% %%    Iter2 = merge_index:range(merge_index, int_value, value, 0, 2, all, fun(_,_) -> true end),
%% 
%%    Iter1 = merge_index:lookup(merge_index, dbl_value, value, 251.01, fun(_,_) -> true end),
%%    Iter2 = merge_index:lookup(merge_index, dbl_value, value, 250.01, fun(_,_) -> true end),
%% %%    Iter1 = merge_index:range_term(merge_index, dbl_value, value, 251.0, 251.02, none, fun(_,_) -> true end),
%% %%    Iter2 = merge_index:range_term(merge_index, dbl_value, value, 250.0, 250.02, none, fun(_,_) -> true end),
%% 
%% %%    Iter3 = merge_index:range_term(merge_index, bin_value, value, <<"1000">>, <<"1500">>, none, fun(_,_) -> true end),
%% %%    Iter4 = merge_index:range_term(merge_index, str_value, value, "F03C", "F230", none, fun(_,_) -> true end),
%%    Iter = mi_join:union([Iter1(),
%%                          Iter2()]),
%%    logger:debug("about to run iterator"),
%%    run(Iter).
%% 
%% test2() ->
%%    %merge_index:stop(merge_index),
%%    %{ok,S} = merge_index:start_link("data/testing"),
%%    %erlang:register(merge_index, S),
%%    QH2 = merge_index:lookup(merge_index,int_value, value, 27, f()),
%%    QH4 = merge_index:lookup(merge_index,int_value, value, 29, f()),
%%    QH5 = merge_index:range(merge_index, bin_value, value, <<"1000">>, <<"1500">>, all, f()),
%%    QH6 = merge_index:range(merge_index, str_value, value, "F03C", "F230", all, f()),
%%    QH1 = merge_index:range(merge_index, int_value, value, 0, 10, all, f()),
%%    QH3 = merge_index:range(merge_index, dbl_value, value, 250.0, 250.1, all, f()),
%% 
%% %%    QH3 = merge_index:range(merge_index, dbl_value, value, 250.0, 253.3, all, f()),
%% %%    QH1 = merge_index:range(merge_index, int_value, value, 0, 100, all, f()),
%% %%    QH6 = merge_index:range(merge_index, str_value, value, "F03C", "F230", all, f()),
%% %%    QH5 = merge_index:range(merge_index, bin_value, value, <<"1000">>, <<"1500">>, all, f()),
%% %%    QH4 = merge_index:lookup(merge_index,int_value, value, 29, f()),
%% %%    QH2 = merge_index:lookup(merge_index,int_value, value, 27, f()),
%% 
%% %%    QH0 = mi_join:merge(
%% %%            [QH3,
%% %%             QH1,
%% %%             QH6,
%% %%             QH5,
%% %%             QH4,
%% %%             QH2]),
%%    QH0 = mi_join:merge(
%%            [QH2,
%%             QH4,
%%             QH5,
%%             QH6,
%%             QH1,
%%             QH3]),
%%    
%%    io:format("~p~n",[run(QH0)]).
%% 
%% test3() ->
%%    F = fun(I) ->
%%              io:format("Running:~p~n",[I]),
%%              test3(I)
%%        end,
%%    lists:flatmap(F, lists:seq(1,100)).
%% 
%% 
%% test3(Ix) ->
%%   Q = merge_index:lookup_sync(merge_index,int_value, value, Ix, fun(V,_) -> V < 1000 end),
%%   F = fun X(eof) -> [];
%%           X(I) ->
%%              Iters = lists:map(fun(N) ->
%%                         merge_index:lookup(merge_index,int_value, value, N, f())
%%                      end, I),
%%              Iters
%%       end,
%%    BigList = F(lists:sublist(Q, 50)),
%%    io:format("Cnt:~p~n",[length(BigList)]),
%%    QH0 = mi_join:merge(BigList),
%%    run(QH0).
%% 
%% load() ->
%%    List = 
%%    [ {<<"Index">>, <<"Field">>, <<"Term">>, N, #{}, 6} ||
%%      N <- lists:seq(1,10000)
%%    ],
%%    erlang:put(list, List),
%%    ok.
%% 
%% load1() ->
%%    List = erlang:get(list),
%%    merge_index:index(merge_index, List),
%%    ok.
%% 
%% 
%% load2() ->
%%    List = erlang:get(list),
%%    [merge_index:index(merge_index, [P]) ||
%%     P <- List],
%%    ok.
%% 
%% load3() ->
%%    load(),
%%    {T1,_} = timer:tc(fun load1/0),
%%    io:format("All :~p~n",[T1]),
%%    {T2,_} = timer:tc(fun load2/0),
%%    io:format("Sing :~p~n",[T2]),
%%    ok.
%% 
%% 
%% 
%% 
%% paths(#{document := #{} = C}) ->
%%    Seq = lists:seq(1,2000),
%%    {ok,S} = merge_index:start_link("data/testing"),
%%    [begin
%%       Time = erlang:system_time(),
%%       Postings = path({document,C},DocId,Time,<<>>,[]),
%%       merge_index:index(S, Postings)
%%     end || DocId <- Seq
%%     ],
%%    merge_index:stop(S).
%% 
%% path({Key,#{children := C}},DocId,Time,Path,Acc) ->
%%    Key1 = key(Key),
%%    This = <<Key1/bitstring,Path/bitstring>>,
%%    Children = maps:to_list(C),
%%    NewAcc = [posting(DocId, This, Time)|Acc],
%%    F = fun(X,TempAcc) -> path(X, DocId, Time, This, TempAcc) end,
%%    lists:foldl(F,NewAcc,Children);
%% path({Key,_},DocId,Time,Path,Acc) -> 
%%    Key1 = key(Key),
%%    This = <<Key1/bitstring,Path/bitstring>>,
%%    [posting(DocId, This, Time)|Acc].
%% 
%% posting(DocId,Key,Time) ->
%%    {database_path,path,Key,DocId,[],Time}.
%% 
%% 
%% 
%% key(document) -> <<2:4>>;
%% key({element,Ns,Ln}) -> <<3:4,Ns:16/integer,Ln:24/integer>>;
%% key({attribute,Ns,Ln}) -> <<4:4,Ns:16/integer,Ln:24/integer>>;
%% key({pi,Ln}) -> <<5:4,Ln:24/integer>>;
%% key(text) ->    <<6:4>>;
%% key(comment) -> <<7:4>>.

  


