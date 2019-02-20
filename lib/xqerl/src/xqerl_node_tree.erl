%% 


%% A node tree is a Key/Value Store of Dewey Decimal IDs to nodes.
%% IDs are in the form [1], [1,2] meaning that 2 is a child of 1. 


-module(xqerl_node_tree).


%% ====================================================================
%% API functions
%% ====================================================================
-export([from_list/1]).

-export([crap/0, test/0
]).

from_list(List) ->
   gb_trees:from_orddict(lists:usort(List)).




new() ->
   {ok, Pid} = merge_index:start_link("dummy_data"),
   Pid.

-define(INDEX, <<"index">>).
-define(FIELD, <<"field">>).
-define(TERM,  <<"term">>).
-define(PROPS, []).
-define(TS, 123456789).

%% -type(posting() :: {Index::index(),
%%                     Field::field(),
%%                     Term::mi_term(),
%%                     Value::any(),
%%                     Props::[proplists:property()],
%%                     Timestamp::integer()}).


load(Pid) ->
   Postings = [{?INDEX, ?FIELD, N, N, ?PROPS, ?TS}
               || N <- lists:seq(1, 1000000)],
   merge_index:index(Pid, Postings).

test() ->
   Server = new(),
   EmptyFilter3 = fun(_,_,_) -> true end,
   Res = merge_index:range_term(Server, ?INDEX, ?FIELD, 1, 15, both, EmptyFilter3),
   R1 = make_result_list(Res),
   merge_index:drop(Server),
   R1.

%% ====================================================================
%% Internal functions
%% ====================================================================

%% IDs should be binary with 32 bit integers for each level
%% Root is always 0, and other numbers simply an offset
%% actual location is found by DocNum
%% ID [DbNum, DocNum, Root, Child1, Child2, ...]
%% Document ID = [DbNum, DocNum, Root]

%% existence predicate means 2 lookups of IDs by path, and a match on parent = node
%% /a/b/c[d] == /a/b/c | /a/b/c/d where c = c

crap() ->
   M = #{<<"cat">> => 1,
         <<"dog">> => 2,
         <<"bat">> => 3},
   fun(S) ->
         maps:get(S, M, undefined)
   end.

%%    DBs = lists:seq(1, 100),
%%    Dcs = lists:seq(1, 100),
%%    Rts = lists:seq(1, 100),
%%    [{<<DB:32/integer, Dc:32/integer, Rt:32/integer>>, 
%%      {document, something, <<"name">>}} ||
%%     DB <- DBs,
%%     Dc <- Dcs,
%%     Rt <- Rts].
%% 




make_result_list(Iter) ->
   make_result_list(Iter(), []).

%% @private
make_result_list({L, F}, Acc) ->
   make_result_list(F(), [L|Acc]);
make_result_list(eof, Acc) ->
   lists:flatten(lists:reverse(Acc)).
