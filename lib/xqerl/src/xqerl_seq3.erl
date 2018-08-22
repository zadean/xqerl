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

%% @doc Functions that handle XQuery sequences.

-module(xqerl_seq3).
-compile(inline_list_funcs).

-export([sequence/1]).
-export([path_map/2,
         %
         pmap/3,
         pmap/2,
         formap/2,
         pformap/2,
         forposmap/3,
         %
         rangemap/2,
         expand/1,
         do_call/3]).

-export([empty/0]).
-export([size/1]).

-export([is_empty/1]).
-export([is_sequence/1]).

-export([union/2]).
-export([intersect/2]).
-export([except/2]).

-export([head/1]).
-export([tail/1]).
-export([reverse/1]).

-export([position_filter/3]).
-export([filter/3]).
-export([map/3]).
-export([val_map/2]).
%% -export([node_map/3]).
-export([for_each/3]).
-export([zip_with/4]).
-export([foldl/4]).
-export([foldr/4]).
-export([insert/3]).
-export([singleton/1]).
-export([singleton_value/1]).
-export([range/2]).
-export([append/2]).
-export([get_seq_type/1]).

-export([to_list/1]).
-export([from_list/1]).
-export([flatten/1,
         group_node_seq/1]).

-export([all_node/1]).
-export([all_not_node/1]).

-export([ensure_one/1]).
-export([ensure_one_or_more/1]).
-export([ensure_zero_or_one/1]).
-export([ensure_zero_or_more/1]).

-include("xqerl.hrl").

-define(int_rec(Val), #xqAtomicValue{type = 'xs:integer', value = Val}).


%-define(seq, gb_trees).
%-define(seq, array).
-define(set, ordsets).
%-define(set, gb_sets).
-define(noderecs(N), is_record(N, xqNode);
                     is_record(N, xqElementNode);
                     is_record(N, xqDocumentNode);
                     is_record(N, xqAttributeNode);
                     is_record(N, xqCommentNode);
                     is_record(N, xqTextNode);
                     is_record(N, xqProcessingInstructionNode);
                     is_record(N, xqNamespaceNode)).

sequence([#xqNode{}|_] = L) ->
   O = lists:foldl(fun(#xqNode{doc = D,node = N},A) ->
                         orddict:append(D, N, A);
                      (Other, A) ->
                         orddict:append(other, Other, A)
                   end, orddict:new(), L),
   Ol = orddict:to_list(O),
   [case Li of
       {other,Os} ->
          Os;
       {D,N} ->
          #xqNode{doc = D, node = ?MODULE:flatten(N)}
    end
  || Li <- Ol]
   ;
sequence(L) when is_list(L) ->
   L;
sequence(L) ->
   [L].

group_node_seq([#xqNode{}|_] = L) ->
   O = lists:foldl(fun(#xqNode{doc = D,node = [N]},A) ->
                         orddict:append(D, N, A);
                      (_,_) ->
                         ?err('XPTY0004')
                   end, orddict:new(), L),
   orddict:to_list(O);
group_node_seq([_|_]) -> ?err('XPTY0004');
group_node_seq([]) -> [].

check(List,node) ->
   Fun = fun(#xqNode{}) -> ok;
            (_) -> ?err('XPTY0018')
         end,
   lists:foreach(Fun, List),
   List;
check(List,nonnode) ->
   Fun = fun(#xqNode{}) -> ?err('XPTY0018');
            (_) -> ok
         end,
   lists:foreach(Fun, List),
   List.


path_map(Fun,[]) when is_function(Fun,3) -> [];
path_map(Fun,List) when is_function(Fun,3), is_list(List) ->
   Size = length(List),
   %?dbg("List",Size),
   Mapped = lists:flatten(do_path_map(Fun, List,1,Size)),
%?dbg("Mapped",Mapped),
   case Mapped of
      [#xqNode{}|_] ->
         U = lists:usort(Mapped),
         check(U,node);
      _ ->
         check(Mapped,nonnode)
   end;
path_map(Fun,List) when is_function(Fun,3) ->
   path_map(Fun,[List]);
path_map(#xqFunction{body = Fun},List) ->
   path_map(Fun,List).

do_path_map(_,[],_,_) -> [];
do_path_map(F,[H|T],P,S) ->
   [F(H,P,S)|do_path_map(F,T,P + 1,S)].

   
   
ensure_one([A]) -> A;
ensure_one([]) -> ?err('XPTY0004');
ensure_one([_|_]) -> ?err('XPTY0004');
ensure_one(A) -> A.

ensure_one_or_more([]) -> ?err('XPTY0004');
ensure_one_or_more([A]) -> A;
ensure_one_or_more(A) -> A.

ensure_zero_or_one([]) -> [];
ensure_zero_or_one([A]) -> A;
ensure_zero_or_one([_|_]) -> ?err('XPTY0004');
ensure_zero_or_one(A) -> A.

ensure_zero_or_more(A) -> A.


size(#xqRange{cnt = Size}) ->
   Size;
size([]) -> 0;
size([H|T]) when is_list(H) ->
   ?MODULE:size(H) + ?MODULE:size(T);
size([#xqRange{} = H|T]) ->
   ?MODULE:size(H) + ?MODULE:size(T);
size([_|T]) ->
   1 + ?MODULE:size(T);
size(_) ->
   1.

is_empty([]) -> true;
is_empty(_) -> false.

% used?
is_sequence(L) -> is_list(L).

head([]) -> [];
head(#xqRange{min = Min}) -> ?int_rec(Min);
head([H|_]) -> H;
head(H) -> H.

tail([]) -> [];
tail(#xqRange{min = Min,max = Max}) ->
   range(Min + 1, Max);
tail([_|T]) -> T;
tail(_) -> [].

reverse(Seq) ->
   lists:reverse(Seq).

union(Seq1, []) when is_list(Seq1) ->
   lists:usort(Seq1);
union([], Seq2) when is_list(Seq2) ->
   lists:usort(Seq2);
union(Seq1, Seq2) when is_list(Seq1), is_list(Seq2)  ->
   set_fun1(Seq1, Seq2, union);
union(Seq1, Seq2) when is_list(Seq1) ->
   union(Seq1, [Seq2]);
union(Seq1, Seq2) when is_list(Seq2) ->
   union([Seq1], Seq2);
union(Seq1, Seq2) ->
   union([Seq1], [Seq2]).

intersect(Seq1, Seq2) when is_list(Seq1), is_list(Seq2)  ->
   set_fun1(Seq1, Seq2, intersection);
intersect(Seq1, Seq2) when is_list(Seq1) ->
   intersect(Seq1, [Seq2]);
intersect(Seq1, Seq2) when is_list(Seq2) ->
   intersect([Seq1], Seq2);
intersect(Seq1, Seq2) ->
   intersect([Seq1], [Seq2]).
   
except(Seq1, Seq2) when is_list(Seq1), is_list(Seq2)  ->
   set_fun1(Seq1, Seq2, subtract);
except(Seq1, Seq2) when is_list(Seq1) ->
   except(Seq1, [Seq2]);
except(Seq1, Seq2) when is_list(Seq2) ->
   except([Seq1], Seq2);
except(Seq1, Seq2) ->
   except([Seq1], [Seq2]).

set_fun1(List1, List2, Fun) ->
   case all_node(List1) andalso all_node(List2) of 
      true ->
         U1 = ?set:from_list(List1),
         U2 = ?set:from_list(List2),
         U3 = ?set:Fun(U1, U2),
         %?dbg("{U1,U2,U3}",{U1,U2,U3}),
         ?set:to_list(U3);
      _ ->
         ?err('XPTY0004')
   end.

singleton_value([]) -> [];
singleton_value([V]) -> V;
singleton_value([_|_]) -> ?err('XPTY0004');
singleton_value(#xqFunction{body = V}) -> V;
singleton_value(V) -> V.


singleton(V) when not is_list(V) ->
   [V];
singleton([V]) ->
   [V];
singleton(V) when is_list(V)->
   ?err('XPTY0004').

subsequence(List,Start,Length) when Start < 1 ->
   Start1 = 1,
   Length1 = Start + Length,
   if Length1 < 0 ->
         [];
      true ->
         subsequence(List,Start1,Length1)
   end;
subsequence(List,Start,_Length) when Start > length(List) ->
   [];
subsequence(List,Start,Length) ->
   lists:sublist(List, Start, Length).

% insert Seq2 into Seq 1 at position Pos
insert(Seq1,[],_Pos) -> Seq1;
insert([],Seq2,_Pos) -> Seq2;
insert(Seq1,Seq2,Pos) when is_list(Seq1), is_list(Seq2) ->
   Pos1 = if Pos < 1 ->
                1;
             true ->
                Pos
          end,
   SeqH = expand(Seq1),
   Head = subsequence(SeqH, 1, Pos1 - 1),
   Tail = subsequence(SeqH, Pos1, length(SeqH)),
   Head ++ expand(Seq2) ++ Tail;
insert(Seq1,Seq2,Pos) when is_list(Seq1) ->
   insert(Seq1,[Seq2],Pos);
insert(Seq1,Seq2,Pos) when is_list(Seq2) ->
   insert([Seq1],Seq2,Pos);
insert(Seq1,Seq2,Pos) ->
   insert([Seq1],[Seq2],Pos).
   
zip_with(_Ctx, _Fun,[],[]) -> [];
zip_with(_Ctx, _Fun,[],_) ->
   ?err('XPTY0004');
zip_with(_Ctx, _Fun,_,[]) ->
   ?err('XPTY0004');
zip_with(Ctx, Fun,Seq1,Seq2) 
   when is_function(Fun), is_list(Seq1), is_list(Seq2) ->
   Size = erlang:min(?MODULE:size(Seq1),?MODULE:size(Seq2)),
   NewCtx = xqerl_context:set_context_size(Ctx, ?int_rec(Size)),
   reverse(zip_with1(NewCtx,Fun,{expand(Seq1),expand(Seq2)},1,[]));

zip_with(Ctx, Fun,Seq1,Seq2) when is_function(Fun), is_list(Seq1) ->
   zip_with(Ctx, Fun,Seq1,[Seq2]);
zip_with(Ctx, Fun,Seq1,Seq2) when is_function(Fun), is_list(Seq2) ->
   zip_with(Ctx, Fun,[Seq1],Seq2);
zip_with(Ctx, Fun,Seq1,Seq2) when is_function(Fun) ->
   zip_with(Ctx, Fun,[Seq1],[Seq2]);

zip_with(Ctx, Fun,Seq1,Seq2) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         zip_with(Ctx, Fun1,Seq1,Seq2);
      true ->
         ?err('XPTY0004')
   end.

zip_with1(_Ctx, _Fun, {[],_List2}, _Pos, Acc ) -> Acc;
zip_with1(_Ctx, _Fun, {_List1,[]}, _Pos, Acc ) -> Acc;
zip_with1(Ctx, Fun, {[H1|List1],[H2|List2]}, Pos,  Acc ) ->
   try
      Ctx1 = xqerl_context:set_context_item(Ctx, H1, Pos),
      OutputSeq = case Fun == fun xqerl_fn:concat/2 of
                     true ->
                        Fun(Ctx1, [H1, H2]);
                     _ ->
                        Fun(Ctx1, H1, H2)
                  end,
      NewSeq = [OutputSeq|Acc],
      zip_with1(Ctx, Fun, {List1,List2}, Pos+1, NewSeq)
   catch 
      _:#xqError{} = E -> throw(E);
      _:_:StackTrace ->
         ?dbg("error",StackTrace),
         ?err('XPTY0004')
   end.

for_each(_Ctx, Fun,Seq) when not is_list(Seq) -> 
   for_each(_Ctx, Fun,[Seq]);
for_each(_Ctx, _Fun,[]) -> empty();
for_each(_Ctx, Map, Seq) when is_map(Map) ->
   xqerl_map:get_matched(Map, Seq);
for_each(Ctx, Fun, Seq) when is_function(Fun) ->
   Ctx1 = xqerl_context:set_context_size(Ctx, ?int_rec(?MODULE:size(Seq))),
   for_each1(Ctx1, Fun, expand(Seq), 1);
for_each(Ctx, Fun,Seq) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         for_each(Ctx, Fun1,Seq);
      true ->
         ?err('XPTY0004')
   end.

for_each1(_Ctx, _Fun, [], _Pos) -> [];
for_each1(Ctx, Fun, [H|T], Pos) ->
   try
      Ctx1 = xqerl_context:set_context_item(Ctx, H, Pos),
      Output = Fun(Ctx1, H),
      if is_list(Output) ->
            Output ++ for_each1(Ctx, Fun, T, Pos + 1);
         true ->
            [Output | for_each1(Ctx, Fun, T, Pos + 1)]
      end
   catch
      _:#xqError{} = E:StackTrace -> 
         ?dbg("error",StackTrace),
         throw(E);
      _:E:StackTrace ->
         ?dbg("E",E),
         ?dbg("error",StackTrace),
         ?err('XPTY0004')
   end.

val_map(Fun,[]) -> Fun([]);
val_map(Fun,H) when not is_list(H) ->
   val_map(Fun,[H]);
val_map(Fun,[[H]|T]) -> val_map(Fun,[H|T]);
val_map(Fun,[#xqRange{} = H|T]) ->
   val_map(Fun,expand(H) ++ T);
val_map(Fun,[H|T]) ->
   %?dbg("Fun",Fun),
   %?dbg("Fun",erlang:fun_info(Fun)),
   %?dbg("H",H),
   %?dbg("T",T),
   Val = try 
            Fun(H) 
         catch _:#xqError{} = E:Stack -> 
                  ?dbg("H  ",H),
                  ?dbg("Err",Stack),
                  throw(E);
               _:Err:Stack ->
                  ?dbg("Err",Err),
                  ?dbg("Err",Stack),
                  ?err('XPTY0004') end,
   if T == [] ->
         Val;
      true ->
         if is_list(Val) ->
               Val ++ val_map(Fun, T);
            true ->
               [Val | val_map(Fun, T)]
         end
   end.

rangemap(_,[]) -> [];
rangemap(F,[#xqRange{} = R|T]) -> 
   rangemap(F,R) ++ rangemap(F,T);
rangemap(F,#xqRange{min = Min, max = Max} = R) when Min =< Max, is_function(F, 1) ->
   [F(?int_rec(Min))|rangemap(F,R#xqRange{min = Min + 1})];
rangemap(_,#xqRange{}) -> [].

formap(_,[]) -> [];
formap(F,[#xqRange{min = Min, max = Max} = R|T]) when Min =< Max, is_function(F, 1) ->
   [F(?int_rec(Min))|formap(F,[R#xqRange{min = Min + 1}|T])];
formap(F,[#xqRange{}|T]) -> formap(F,T);
formap(F,[H|T]) when is_function(F, 1) ->
   [F(H)|formap(F,T)];
formap(F,L) when not is_list(L) -> formap(F,[L]).


pformap(Fun,List) -> 
   pformap(self(),List,Fun,400,400,[],[]),
   receive
      {done,Acc2} ->
         lists:reverse(Acc2)
   after 60000 -> error
   end.

pformap(From,[],Fun,Limit,Left,[P|Ps],Acc) when Left < Limit ->
   receive
      {P,{'EXIT',Ex}} ->
         throw(Ex);
      {P,X} -> 
         pformap(From,[],Fun,Limit,Left + 1,Ps, [X|Acc])
   after 60000 -> error
   end;
pformap(From,[],_Fun,_Limit,_Left,[],Acc) ->
   From ! {done,Acc};
pformap(From,List,Fun,Limit,0,[P|Ps],Acc) ->
   receive
      {P,X} ->
         pformap(From,List,Fun,Limit,1,Ps,[X|Acc])
   after 60000 -> error
   end;
pformap(From,[#xqRange{min = Min, max = Max} = R|T],Fun,Limit,Left,Pids,Acc)
   when Min =< Max, is_function(Fun, 1) ->
   Self = self(),
   Pid = erlang:spawn_link(
           fun() -> 
                 Self ! {self(), catch Fun(?int_rec(Min))} 
           end),
   pformap(From,[R#xqRange{min = Min + 1}|T],
           Fun,Limit,Left - 1,Pids ++ [Pid], Acc);
pformap(From,[#xqRange{}|T],Fun,Limit,Left,Pids,Acc) ->
   pformap(From,T,Fun,Limit,Left,Pids,Acc);
pformap(From,[H|T],Fun,Limit,Left,Pids,Acc) ->
   Self = self(),
   Pid = erlang:spawn_link(
           fun() -> 
                 Self ! {self(), catch Fun(H)} 
           end),
   pformap(From,T,Fun,Limit,Left - 1,Pids ++ [Pid], Acc);
pformap(From,NL,Fun,Limit,Left,Pids,Acc) when not is_list(NL) ->
   pformap(From,[NL],Fun,Limit,Left,Pids,Acc).



pmap(Fun,List) ->
   pmap(Fun,List,400).

pmap(Fun,List,Limit) -> 
   pmap(self(),List,Fun,Limit,Limit,[],[]),
   receive
      {done,Acc2} ->
         lists:reverse(Acc2)
   after 20000 -> error
   end.

pmap(From,[],Fun,Limit,Left,Ps,Acc) when Left < Limit ->
   receive
      {_,{'EXIT',Ex}} ->
         throw(Ex);
      {Py,X} ->
         NewPs = lists:delete(Py, Ps),
         pmap(From,[],Fun,Limit,Left + 1,NewPs, [X|Acc])
   after 10000 -> error
   end;
pmap(From,[],_Fun,_Limit,_Left,[],Acc) ->
   From ! {done,Acc};
pmap(From,List,Fun,Limit,0,Ps,Acc) ->
   receive
      {Py,X} ->
         NewPs = lists:delete(Py, Ps),
         pmap(From,List,Fun,Limit,1,NewPs,[X|Acc])
   after 10000 -> error
   end;
pmap(From,[H|T],Fun,Limit,Left,Pids,Acc) ->
   Self = self(),
   Pid = erlang:spawn(
   %Pid = erlang:spawn_link(
           fun() -> 
                 Self ! {self(), catch Fun(H)} 
           end),
   pmap(From,T,Fun,Limit,Left - 1,[Pid|Pids], Acc).







forposmap(_,[],_) -> [];
forposmap(F,[#xqRange{min = Min, max = Max} = R|T],P) when Min =< Max, is_function(F, 2) ->
   [F(?int_rec(Min),P)|forposmap(F,[R#xqRange{min = Min + 1}|T],P + 1)];
forposmap(F,[#xqRange{}|T],P) -> forposmap(F,T,P);
forposmap(F,[H|T],P) when is_function(F, 2) ->
   [F(H,P)|forposmap(F,T,P + 1)];
forposmap(F,L,P) when not is_list(L) -> forposmap(F,[L],P).


map(Ctx, Fun, Seq) when not is_list(Seq) ->
   map(Ctx, Fun, [Seq]);
map(_Ctx, Fun,[]) when is_function(Fun) -> empty();
map(Ctx, Fun, Seq) when is_function(Fun,4) ->
   Size = ?int_rec(?MODULE:size(Seq)),
   map1(Ctx, Fun, Seq, 1, Size);
map(Ctx, Fun,Seq) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         map(Ctx, Fun1,Seq);
      true ->
         ?err('XPTY0004')
   end.

map1(_Ctx, _Fun, [], _Pos, _Size) -> [];
map1(Ctx, Fun, [#xqRange{} = H|T], Pos, Size) ->
   map1(Ctx, Fun, to_list(H) ++ T, Pos, Size);
map1(Ctx, Fun, [H|T], Pos, Size) ->
   try
      Output = Fun(Ctx,H,?int_rec(Pos),Size),
      if is_list(Output) ->
            Output ++ map1(Ctx, Fun, T, Pos + 1,Size);
         true ->
            [Output | map1(Ctx, Fun, T, Pos + 1,Size)]
      end
   catch
      _:#xqError{} = E:StackTrace ->
         ?dbg("error",StackTrace),
         ?dbg("FUNINFO",erlang:fun_info(Fun)),
         throw(E);
      _:E:StackTrace ->
         ?dbg("E",E),
         ?dbg("error",StackTrace),
         ?err('XPTY0004')
   end.

%% node_map(Ctx, Fun, Seq) when not is_list(Seq) ->
%%    node_map(Ctx, Fun, [Seq]);
%% node_map(Ctx, Fun, Seq) ->
%%    ?dbg("Seq",Seq),
%%    case all_node(Seq) of
%%       true ->
%%          Nodes = map(Ctx, Fun, Seq),
%%          case all_node(Nodes) of
%%             true ->
%%                from_list(lists:usort(Nodes));
%%             _ ->
%%                case all_not_node(Nodes) of
%%                   true ->
%%                      from_list(Nodes);
%%                   _ ->
%%                      % mixed
%%                      ?err('XPTY0018')
%%                end
%%          end;
%%       _ ->
%%          ?dbg("NOT All node",Seq),
%%          ?err('XPTY0019')
%%    end.

foldl(Ctx,Fun,Acc,Seq) when is_function(Fun) ->
   foldl1(Ctx,Fun,Acc,expand(Seq));
foldl(Ctx,Fun,Acc,Seq) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         foldl(Ctx,Fun1,Acc,Seq);
      true ->
         ?err('XPTY0004')
   end.

foldl1(_Ctx,_Fun,Acc,[]) ->
   Acc;
foldl1(Ctx,Fun,Acc,[H|T]) ->
   foldl1(Ctx,Fun,Fun(Ctx,Acc,H),T).

foldr(Ctx,Fun,Acc,Seq) when is_function(Fun) ->
   foldr1(Ctx,Fun,Acc,expand(Seq));
foldr(Ctx,Fun,Acc,Seq) ->
   Fun1 = singleton_value(Fun),
   if is_function(Fun1) ->
         foldr(Ctx,Fun1,Acc,Seq);
      true ->
         ?err('XPTY0004')
   end.

foldr1(_Ctx,_Fun,Acc,[]) ->
   Acc;
foldr1(Ctx,Fun,Acc,[H|T]) ->
   Fun(Ctx,H,foldr1(Ctx,Fun,Acc,T)).

empty() -> [].

to_list([]) -> [];
to_list(#xqRange{min = Min, max = Max}) ->
   range_2(Min,Max);
to_list(#array{} = A) -> xqerl_array:flatten([], A);
to_list([#xqRange{} = H|T]) -> 
   to_list(H) ++ to_list(T);
to_list([#array{} = H|T]) -> 
   to_list(H) ++ to_list(T);
to_list(S) when not is_list(S) -> [S];
to_list([H|T]) -> 
   [H|to_list(T)].


expand(#xqRange{} = R) ->
   expand1(R);
expand([#xqRange{} = R]) ->
   expand1(R);
expand(L) when is_list(L) ->
   expand1(L);
%%    Any = lists:any(fun(#xqRange{}) ->
%%                          true;
%%                       (_) ->
%%                          false
%%                    end, L),
%%    if Any ->
%%          expand1(L);
%%       true ->
%%          L
%%    end;
expand(L) ->
   [L].

expand1(#xqRange{min = Min, max = Max, cnt = Cnt}) when Cnt < 100 ->
   [?int_rec(A) || A <- lists:seq(Min, Max)];
expand1(#xqRange{min = Min, max = Max}) ->
   range_2(Min,Max);
expand1([]) -> [];
expand1([#xqRange{min = Min, max = Max}|T]) -> 
   range_2(Min,Max) ++ expand1(T);
expand1([H|T]) -> 
   [H | expand1(T)].

flatten([[]|T]) -> 
   flatten(T);
flatten([[H]|T]) -> 
   flatten([H|T]);
flatten([[H1,H2]|T]) -> 
   flatten([H1,H2|T]);
flatten([[H1,H2,H3]|T]) -> 
   flatten([H1,H2,H3|T]);
flatten([H|T]) when is_list(H) -> 
   flatten(H) ++ flatten(T);
flatten([H1,H2,H3,H4|T]) when not is_list(H1),
                              not is_list(H2),
                              not is_list(H3),
                              not is_list(H4)
   -> [H1,H2,H3,H4| flatten(T)];
flatten([H1,H2,H3|T]) when not is_list(H1),
                           not is_list(H2),
                           not is_list(H3)
   -> [H1,H2,H3| flatten(T)];
flatten([H1,H2|T]) when not is_list(H1),
                        not is_list(H2)
   -> [H1,H2| flatten(T)];
flatten([H|T]) -> [H | flatten(T)];
flatten([]) -> [];
flatten(E) -> [E].

from_list(List) ->
   ?MODULE:flatten(List).

range(_, []) -> empty();
range([], _) -> empty();
range(#xqAtomicValue{value = A}, #xqAtomicValue{value = A}) 
   when is_integer(A) ->
   ?int_rec(A);
range(#xqAtomicValue{value = From}, #xqAtomicValue{value = To}) 
   when is_integer(From),is_integer(To) ->
   range1(From,To);
range(A, A) when is_integer(A) ->
   ?int_rec(A);
range(From, To) when is_integer(From),is_integer(To) ->
   range1(From,To);
range(From, To) ->
   case (xqerl_types:type(From) == node orelse 
           xqerl_types:subtype_of(xqerl_types:type(From), 'xs:integer')) 
      andalso
        (xqerl_types:type(To) == node orelse 
           xqerl_types:subtype_of(xqerl_types:type(To), 'xs:integer')) of
      true ->
         To1 = xqerl_types:value(xqerl_types:cast_as(To, 'xs:integer')),
         From1 = xqerl_types:value(xqerl_types:cast_as(From, 'xs:integer')),
         R = range1(From1,To1),
         Sz = ?MODULE:size(R),
         if Sz == 0 ->
               empty();
            true ->
               R
         end;
      _ ->
         ?err('XPTY0004')
   end.

range1(Min,Max) when Min =< Max ->
   #xqRange{min = Min, max = Max, cnt = Max - Min + 1};
range1(_Curr,_Max) ->
   [].

range_2(Curr,Max) when Curr =< Max ->
   [?int_rec(Curr) | range_2(Curr + 1, Max)];
range_2(_Curr,_Max) ->
   [].

% thing to append to end is first arg
append([],Seq) -> Seq;
append(Seq1, []) ->
   Seq1;
append([], Seq2) ->
   Seq2;
append(Seq1, Seq2) ->
   concat_seqs(Seq2,Seq1).

get_unique_values(Seq) when is_list(Seq) ->
   Vals = get_unique_values1(?MODULE:flatten(Seq)),
   lists:usort(Vals);
get_unique_values(Seq) ->
   get_unique_values1([Seq]).

get_unique_values1([]) -> [];
get_unique_values1([#xqAtomicValue{value = {xsDecimal,H,0}}|T]) ->
   [H|get_unique_values1(T)];
get_unique_values1([#xqAtomicValue{value = {xsDecimal,_,_}}|T]) ->
   get_unique_values1(T);
get_unique_values1([#xqAtomicValue{value = F}|T]) when is_float(F) ->
   if trunc(F) == F ->
         [trunc(F)|get_unique_values1(T)];
      true ->
         get_unique_values1(T)
   end;
get_unique_values1([#xqAtomicValue{value = H}|T]) ->
   [H|get_unique_values1(T)].
   
position_filter(_Ctx, #xqAtomicValue{value = I}, Seq) when is_list(Seq),
                                                           is_integer(I) ->
   nth(I, Seq);
position_filter(Ctx, Fun, Seq0) when is_list(Seq0), is_function(Fun) ->
   Size = ?MODULE:size(Seq0),
   %?dbg("Size",Size),
   %?dbg("Seq0",Seq0),
   Seq = expand(Seq0),
   {Positions,_} =
     lists:mapfoldl(fun(Item,Pos) ->
                        Ctx1 = xqerl_context:set_context_item(Ctx, Item, 
                                                              Pos, Size),
                        Resp = Fun(Ctx1),
                        {Resp, Pos + 1}
                  end, 1, Seq),
   position_filter(Ctx, Positions, Seq);

position_filter(_Ctx, Positions, Seq0) when is_list(Seq0), is_list(Positions) ->
   %?dbg("Size",0),
   %?dbg("Seq0",Seq0),
   Seq = expand(Seq0),
   UniquePos = get_unique_values(lists:usort(Positions)),
   position_filter1(UniquePos, 1, Seq);
position_filter(_Ctx, Positions, Seq) when is_list(Seq) ->
   %Seq = expand(Seq0),
   case get_unique_values(Positions) of
      [] -> [];
      [N] -> nth(N, Seq)
   end;

position_filter(Ctx, Positions, Seq) ->
   position_filter(Ctx, Positions, [Seq]).

position_filter1([], _CurrPos, _Seq) -> [];
position_filter1(_, _CurrPos, []) -> [];
position_filter1([Pos|Rest], CurrPos, Seq) when Pos < 1 ->
   position_filter1(Rest, CurrPos, Seq);
position_filter1([Pos|Rest], CurrPos, [H|T]) ->
   if Pos == CurrPos ->
         [H|position_filter1(Rest,CurrPos + 1, T)];
      Pos > CurrPos ->
         position_filter1([Pos|Rest],CurrPos + 1, T);
      Pos < CurrPos -> % fractional
         position_filter1(Rest,CurrPos, [H|T])
   end.

filter(Ctx, Fun, [#xqRange{} = Range]) ->
   filter(Ctx, Fun, to_list(Range));
filter(Ctx, Fun, #xqRange{} = Range) ->
   filter(Ctx, Fun, to_list(Range));
filter(Ctx, #xqAtomicValue{} = Pos,Seq) ->
   position_filter(Ctx, [Pos], Seq);
filter(Ctx, [#xqAtomicValue{}] = Pos,Seq) ->
   position_filter(Ctx, Pos, Seq);
filter(Ctx, [#xqAtomicValue{}|_] = Pos,Seq) ->
   position_filter(Ctx, Pos, Seq);
filter(Ctx, Fun, Seq) when not is_list(Seq) ->
   filter(Ctx, Fun, [Seq]);
filter(Ctx, Fun, Seq2) when is_function(Fun,4) ->
   Size = ?MODULE:size(Seq2),
   filter1(Ctx, Fun, Seq2, 1, ?int_rec(Size)).

filter1(_Ctx, _Fun, [], _Pos,_Size) -> [];
filter1(Ctx, Fun, [H|T], Pos,Size) ->
   NextPos = Pos + 1,
   PosRec = ?int_rec(Pos),
   % TODO remove
   Ctx2 = xqerl_context:set_context_item(Ctx, H, 1, 1), % just in-case it is used 
   try Fun(Ctx2,H,PosRec,Size) of
      [#xqAtomicValue{type = NType, value = FPos}] when ?xs_numeric(NType) ->
         if FPos == Pos ->
               [H|filter1(Ctx, Fun, T, NextPos,Size)];
            true ->
               filter1(Ctx, Fun, T, NextPos,Size)
         end;
      #xqAtomicValue{type = NType, value = FPos} when ?xs_numeric(NType) ->
         if FPos == Pos ->
               [H|filter1(Ctx, Fun, T, NextPos,Size)];
            true ->
               filter1(Ctx, Fun, T, NextPos,Size)
         end;
      Resp ->
         Bool = xqerl_operators:eff_bool_val(Resp),
         if Bool ->
               [H|filter1(Ctx, Fun, T, NextPos,Size)];
            true ->
               filter1(Ctx, Fun, T, NextPos,Size)
         end
   catch 
      _:#xqError{name = #xqAtomicValue{value = 
                                         #qname{local_name = <<"XPTY0019">>}}} ->
         % context was not a node when one was expected
         ?err('XPTY0020');
      _:#xqError{} = E:StackTrace ->
         ?dbg("H",H),
         ?dbg("H",StackTrace),
         throw(E)
  end.

concat_seqs([],Seq2) -> Seq2;
concat_seqs(Seq1,[]) -> Seq1;
concat_seqs(Seq1,Seq2) when is_list(Seq1),is_list(Seq2) ->
   Seq1 ++ Seq2;
concat_seqs(Seq1,Seq2) when is_list(Seq2) ->
   [Seq1|Seq2];
concat_seqs(Seq1,Seq2) when is_list(Seq1) ->
   Seq1 ++ [Seq2];
concat_seqs(Seq1,Seq2) ->
   [Seq1,Seq2].

all_node(Seq) when is_list(Seq) ->
   IsNode = fun(Item) when ?noderecs(Item) ->
                  true;
               (_) ->
                  false
            end,
   lists:all(IsNode, Seq);
all_node(Seq) ->
   all_node([Seq]).

all_not_node(Seq) ->
   IsNode = fun(Item) when ?noderecs(Item) ->
                  false;
               (_) ->
                  true
            end,
   lists:all(IsNode, Seq).

get_seq_type([]) -> #xqSeqType{type = 'empty-sequence', occur = zero};
get_seq_type(#xqRange{}) ->
   #xqSeqType{type = 'xs:integer', occur = one_or_many};
get_seq_type([Singleton]) ->
   Type = get_item_type(Singleton),
   #xqSeqType{type = Type, occur = one};
get_seq_type([Hd|Tl]) ->
   %?dbg("Hd",Hd),
   HType = get_item_type(Hd),
   Type = get_seq_type1(Tl,xqerl_btypes:get_type(HType)),
   if Tl == [] ->
         #xqSeqType{type = Type, occur = one};
      true ->
         #xqSeqType{type = Type, occur = one_or_many}
   end;
get_seq_type(List) ->
   get_seq_type([List]).

get_seq_type1([],Curr) ->
   xqerl_btypes:get_type(Curr);
% TODO this is slow when called often
get_seq_type1([H|T],Curr) ->
   HType = get_item_type(H),
   HBType = xqerl_btypes:get_type(HType),
   if HBType == Curr ->
         get_seq_type1(T,Curr);
      HType == 'xs:double' orelse
      HType == 'xs:float' orelse
      ?xs_decimal(HType) ->
         case xqerl_btypes:is_numeric(Curr) of
            true ->
               New = HBType band Curr,
               IsNum = xqerl_btypes:is_numeric(New),
               if IsNum ->
                     get_seq_type1(T,New);
                  true ->
                     get_seq_type1(T,xqerl_btypes:get_type('xs:numeric'))
               end;
            _ ->
               get_seq_type1(T,HBType band Curr)
         end;
      true ->
         get_seq_type1(T,HBType band Curr)
   end.

get_item_type([Item]) ->
   get_item_type(Item);
get_item_type(#xqAtomicValue{type = Type}) ->
   Type;
get_item_type(Item) when is_function(Item) ->
   function;
get_item_type(#xqFunction{}) ->
   function;
get_item_type(Item) when is_map(Item) ->
   map;
get_item_type(#array{}) ->
   array;
get_item_type(#qname{}) ->
   'xs:QName';
get_item_type(#xqElementNode{}) -> 'element';
get_item_type(#xqAttributeNode{}) -> 'attribute';
get_item_type(#xqTextNode{}) -> 'text';
get_item_type(#xqCommentNode{}) -> 'comment';
get_item_type(#xqNamespaceNode{}) -> 'namespace';
get_item_type(#xqProcessingInstructionNode{}) -> 'processing-instruction';
get_item_type(#xqDocumentNode{}) -> 'document-node';
get_item_type(#xqNode{} = Node) ->
   xqerl_node:get_node_type(Node).


nth(_, []) -> [];
nth(N, [#xqRange{cnt = C}|T]) when N > C -> 
   nth(N - C, T);
nth(N, [#xqRange{max = M,cnt = C}|_]) when N == C -> 
   ?int_rec(M);
nth(N, [#xqRange{min = M}|_]) -> 
   ?int_rec(M + N - 1);
nth(1, [H|_]) -> H;
nth(2, [_,H|_]) -> H;
nth(3, [_,_,H|_]) -> H;
nth(4, [_,_,_,H|_]) -> H;
nth(5, [_,_,_,_,H|_]) -> H;
nth(6, [_,_,_,_,_,H|_]) -> H;
nth(7, [_,_,_,_,_,_,H|_]) -> H;
nth(8, [_,_,_,_,_,_,_,H|_]) -> H;
nth(9, [_,_,_,_,_,_,_,_,H|_]) -> H;
nth(N, [_,_,_,_,_,_,_,_,_|T]) when N > 9 ->
    nth(N - 9, T);
nth(_, _) -> [].

%% nthtail(_, []) -> [];
%% nthtail(1, [_|T]) -> T;
%% nthtail(2, [_,_|T]) -> T;
%% nthtail(3, [_,_,_|T]) -> T;
%% nthtail(4, [_,_,_,_|T]) -> T;
%% nthtail(N, [_|T]) when N > 4 ->
%%     nthtail(N - 4, T);
%% nthtail(0, L) when is_list(L) -> L.

do_call(Ctx,MapArrayOrFun,Args) when is_function(MapArrayOrFun) ->
   build_call(Ctx,MapArrayOrFun,Args);
do_call(Ctx,#xqFunction{arity = A,
                        body = F} ,Args) when A == erlang:size(Args) ->
   case F == fun xqerl_fn:concat/2 of
      true ->
         build_call(Ctx,F,{tuple_to_list(Args)});
      false ->
         build_call(Ctx,F,Args)
   end;
do_call(_,#xqFunction{},_) ->
   ?err('XPTY0004');
do_call(Ctx,MapArray,{Arg}) ->
   xqerl_operators:lookup(Ctx, MapArray, Arg);
do_call(_,_,_) ->
   ?err('XPTY0004').



build_call(C,F,{}) -> F(C);
build_call(C,F,{P1}) -> F(C,P1);
build_call(C,F,{P1,P2}) -> F(C,P1,P2);
build_call(C,F,{P1,P2,P3}) -> F(C,P1,P2,P3);
build_call(C,F,{P1,P2,P3,P4}) -> F(C,P1,P2,P3,P4);
build_call(C,F,{P1,P2,P3,P4,P5}) -> F(C,P1,P2,P3,P4,P5);
build_call(C,F,{P1,P2,P3,P4,P5,P6}) -> F(C,P1,P2,P3,P4,P5,P6);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7}) -> F(C,P1,P2,P3,P4,P5,P6,P7);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45,P46}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45,P46);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45,P46,P47}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45,P46,P47);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45,P46,P47,P48}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45,P46,P47,P48);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45,P46,P47,P48,P49}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45,P46,P47,P48,P49);
build_call(C,F,{P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45,P46,P47,P48,P49,P50}) -> F(C,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45,P46,P47,P48,P49,P50).
