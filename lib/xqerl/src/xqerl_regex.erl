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

%% @doc Regex patches to cover the XML Schema regex flags and properties.

-module(xqerl_regex).
-include("xqerl.hrl").
-compile(inline_list_funcs).

%% ====================================================================
%% API functions
%% ====================================================================
-export([parse_repl/2]).
-export([get_depth/1]).
-export([esc_esc/1]).

%-export([regex_flags/1]).
-export([regex_comp/3]).

-export([translate/1]).

translate([]) -> [];
translate(String) ->
   {ok,Tokens,_} = xq_regex_scanner:string(String),
   case xq_regex_parser:parse(Tokens) of
      {ok,Tree} ->
         translate_1(Tree);
      O ->
         O
   end.

% http://www.unicode.org/reports/tr18/ "The values for these properties must 
% follow the Unicode definitions, and include the property and property value 
% aliases from the UCD. Matching of Binary, Enumerated, Catalog, and Name 
% values, must follow the Matching Rules from [UAX44] with one exception: 
% implementations are not required to ignore an initial prefix string of "is" 
% in property values."
% http://www.regular-expressions.info/shorthand.html - \i \c \I \C (XML 
% shorthand)
% returns {MatchesZeroLengthString, MP}
regex_comp(#{tab := Tab},Expr0,Flags) ->
   case ?get(Tab,{regex,Expr0,Flags}) of 
      [] ->
         try
            FlagList1 = regex_flags(Flags),
            X = lists:member(extended, FlagList1),
            FlagList = FlagList1 ++ [{newline, any}, unicode, ucp, 
                                     no_start_optimize],
            Opts = FlagList -- [do_qe],
            Q = [F || F <- FlagList, F == do_qe],
            Expr = if X ->
                         strip_esc_ws(Expr0);
                      true ->
                         Expr0
                   end,
            Expr1 = if Q == [] -> translate(Expr);
                       true -> "\\Q" ++ Expr ++ "\\E"
                    end,
            {ok, MP} = re:compile(Expr1, Opts),
            Out = case catch re:run("",MP) of
               nomatch ->
                  {false,MP};
               {match,_} ->
                  {true,MP};
               _ ->
                  {false,MP}
            end,
            ?put(Tab,{regex,Expr0,Flags},Out),
            Out
         catch 
            _:#xqError{} = E -> 
               ?dbg("E",erlang:get_stacktrace()),
               throw(E);
            _:E -> 
               ?dbg("E",E),
               ?dbg("E",erlang:get_stacktrace()),
               ?err('FORX0002')
         end;
      O ->
         O
   end.

-type regex()  :: list(branch()).
-type branch() :: list({branch,piece()}).
-type piece()  :: {piece, re_atom(), one | quantifier()}.
-type re_atom() :: '^' | '$' | {char, char()} | char_class() | 
                   {paren, regex()} | {nc_paren, regex()} | 
                   {back_ref, integer()}.
-type char_class() :: string() | char_class_esc().
-type char_class_esc() :: {char_class, string()} | 
                          {neg_char_class, string()} |
                          char_group().
-type char_group() :: {group,     list(group_part())} |
                      {neg_group, list(group_part())} |
                      {subtract, char_group(), char_group()}.
-type group_part() :: {range, integer(), integer()} | {value, integer()} .
-type quantifier() :: {q, string()}.

-spec translate_1(regex()) -> string() | {group, group_part()}.

translate_1([H|T]) when not is_integer(H) -> % regex()
   translate_1(H) ++ lists:flatten(["|" ++ translate_1(X) || X <- T]);

translate_1([H|_] = Str) when is_integer(H) -> % string()
   Str;

translate_1({branch,Pieces}) ->
   HasBackRef = lists:any(fun(P) -> is_back_ref(P) end, Pieces),
   NewPieces = 
      if HasBackRef ->
            check_back_refs(Pieces);
         true ->
            Pieces
      end,
   {Hd,Tl,Rest} = maybe_strip_anchors(NewPieces),
   Out = lists:map(fun(X) ->
                         translate_1(X)
                   end, Rest),
   Hd ++ lists:flatten(Out) ++ Tl;

translate_1({piece, Atom, Quant}) ->
   Quant1 = check_quantifier(Quant),
   translate_1(Atom) ++ Quant1;
translate_1('^') -> "\\^";
translate_1('$') -> "\\$";
translate_1({back_ref,Int}) ->
   "\\g{" ++ integer_to_list(Int) ++ "}";
translate_1({char,C}) when is_list(C) -> C;
translate_1({char,C}) -> [C];
translate_1({char_class,Cc}) -> 
   Range = xq_regex_util:range(Cc),
   "(?-i:[" ++ xq_regex_util:range_to_regex(Range) ++ "])";
translate_1({neg_char_class,Cc}) -> 
   Range = xq_regex_util:range(Cc),
   "(?-i:[^" ++ xq_regex_util:range_to_regex(Range) ++ "])";
translate_1({paren,RegEx}) ->
   "("++ translate_1(RegEx) ++")";
translate_1({nc_paren,RegEx} ) ->
   "(?:"++ translate_1(RegEx) ++")";
translate_1({RegEx,{q,Quant}} ) ->
   translate_1(RegEx) ++ Quant;

translate_1({group,_} = G) ->
   translate_group(G);
translate_1({neg_group,_} = G) ->
   translate_group(G);
translate_1({subtract,G1,G2}) ->
   translate_group({subtract,
                    combine_group(G1),
                    combine_group(G2)});
translate_1(Int) when is_integer(Int) ->
   Int;
translate_1(Tree) ->
   ?dbg("TODO",Tree),
   "TODO".

maybe_strip_anchors([{piece,'^',_}]) -> {"^","",[]};
maybe_strip_anchors([{piece,'^',_}|Pieces]) ->
   Hd = "^",
   case lists:last(Pieces) of
      {piece,'$',_} ->
         {Hd,"$",lists:droplast(Pieces)};
      _ ->
         {Hd,"",Pieces}
   end;
maybe_strip_anchors(Pieces) ->
   case lists:last(Pieces) of
      {piece,'$',_} ->
         {"","$",lists:droplast(Pieces)};
      _ ->
         {"","",Pieces}
   end.

translate_group({group, G}) ->
   ok = no_back_ref(G),
   case is_all_value(G) of
      {true,Str} ->
         "["++Str++"]";
      false ->
         NewGroup = combine_group({group, G}),
         translate_group(NewGroup)
   end;
translate_group({neg_group, [{neg_char_class,Neg}]}) -> % double negative
   translate_group({group, [{char_class,Neg}]});
translate_group({neg_group, G}) ->
   ok = no_back_ref(G),
   case is_all_value(G) of
      {true,Str} ->
         "[^"++Str++"]";
      false ->
         NewGroup = combine_group({neg_group, G}),
         translate_group(NewGroup)
   end;
translate_group({subtract,{group,_} = G1,{neg_group,_} = G2}) ->
   S1 = translate_group_as_set(G1),
   S2 = translate_group_as_set(G2),
   S3 = xq_regex_util:intersection(S1, S2), % sub neg == intersect
   R1 = xq_regex_util:set_to_range(S3),
   "[" ++ xq_regex_util:range_to_regex(R1) ++ "]";
translate_group({subtract,{neg_group,R0} = G1,{group,_} = G2}) ->
   S1 = translate_group_as_set(G1),
   S2 = translate_group_as_set(G2),
   S3 = xq_regex_util:subtract(S1, S2), % sub pos from neg == neg sub
   R1 = xq_regex_util:set_to_range(S3),
   case xq_regex_util:range_to_regex(R1) of
      [] ->
         "^[" ++ xq_regex_util:range_to_regex(R0) ++ "]";
      M ->
         "^[" ++ M ++ "]"
   end;
translate_group({subtract,G1,G2}) ->
   S1 = translate_group_as_set(G1),
   S2 = translate_group_as_set(G2),
   S3 = xq_regex_util:subtract(S1, S2),
   R1 = xq_regex_util:set_to_range(S3),
   case xq_regex_util:range_to_regex(R1) of
      [] ->
         "";
      M ->
         "[" ++ M ++ "]"
   end;
translate_group(_) ->
   "TODO".

combine_group({Type,List}) when Type == group;
                                Type == neg_group ->
   List1 = lists:map(fun({neg_char_class,C}) ->
                           G = xq_regex_util:range(C),
                           {neg_group, G};
                        ({char_class,C}) ->
                           G = xq_regex_util:range(C),
                           {group, G};
                        (O) ->
                           O
                     end, List),
   Negatives = [N || N <- List1, element(1, N) == neg_group],
   Positives = [N || N <- List1, element(1, N) == group],
   Rest = [N || N <- List1, 
                element(1, N) =/= group, 
                element(1, N) =/= neg_group],
   Pos = lists:foldl(fun({group,R},Acc) ->
                           S = xq_regex_util:range_to_set(R),
                           xq_regex_util:union(Acc, S)
                     end, xq_regex_util:range_to_set(Rest), Positives),
   if length(Negatives) == 0 ->
         OutRange = xq_regex_util:set_to_range(Pos),
         {Type,OutRange};
      true ->
         Neg = lists:foldl(fun({neg_group,R},Acc) ->
                                 S = xq_regex_util:range_to_set(R),
                                 xq_regex_util:union(Acc, S)
                           end, xq_regex_util:range_to_set([]), Negatives),
         Rest1 = xq_regex_util:subtract(Neg, Pos),
         OutRange1 = xq_regex_util:set_to_range(Rest1),
         if Type == group ->
               {neg_group,OutRange1};
            true ->
               {Type,OutRange1}
         end
   end;
combine_group(List) ->
   Fun = fun({char_class,Name}) ->
               xq_regex_util:range(Name);
            ({value,_} = V) ->
               [V];
            ({range,_,_} = R) ->
               [R]
         end,
   Ranges = lists:map(Fun, List),
   SetHd = xq_regex_util:range_to_set(hd(Ranges)),
   Set = lists:foldl(fun(R,A) ->
                           S = xq_regex_util:range_to_set(R),
                           xq_regex_util:union(A,S)
                     end, SetHd, tl(Ranges)),
   xq_regex_util:set_to_range(Set).

translate_group_as_set({neg_group,_} = G) ->
   {_,R} = combine_group(G),
   xq_regex_util:range_to_set(R);
translate_group_as_set({group,_} = G) ->
   {_,R} = combine_group(G),
   xq_regex_util:range_to_set(R).

is_all_value(G) ->
   All = lists:all(fun({value,_}) ->
                         true;
                      ({range,_,_}) ->
                         true;
                      (_) ->
                         false
                   end, G),
   if All ->
         {true, xq_regex_util:range_to_regex(G)};
      true ->
         false
   end.

no_back_ref([]) -> ok;
no_back_ref([{value,$\\},{value,N}|_]) when N >= $0, N =< $9 ->
   {error, group_backref};
no_back_ref([_|T]) ->
   no_back_ref(T).

check_quantifier(one) -> "";
check_quantifier({q,"{," ++ _}) ->
   {error, no_min};
check_quantifier({q,Quant}) ->
   Quant.

is_back_ref({_,{back_ref,_},_}) -> true;
is_back_ref(_) -> false.

count_capturing_patterns(Pieces) ->
   count_capturing_patterns(Pieces, 0).

count_capturing_patterns(Term, Cnt) when is_list(Term) ->
   Cnts = [count_capturing_patterns(T, 0) || T <- Term],
   lists:foldl(fun(I,To) ->
                     I + To
               end, Cnt, Cnts);
count_capturing_patterns({branch,Term}, Cnt) ->
   count_capturing_patterns(Term, Cnt);
count_capturing_patterns({paren,Term}, Cnt) ->
   count_capturing_patterns(Term, Cnt + 1);
count_capturing_patterns(Term, Cnt) when is_tuple(Term) ->
   Cnts = [count_capturing_patterns(T, 0) || T <- tuple_to_list(Term)],
   lists:foldl(fun(I,To) ->
                     I + To
               end, Cnt, Cnts);
count_capturing_patterns(_, Cnt) ->
   Cnt.

check_back_refs(Pieces) ->
   check_back_refs(Pieces,[]).

check_back_refs([],Acc) ->
   lists:reverse(Acc);
check_back_refs([{piece,{back_ref,N},one} = H|T], Acc) ->
   C = count_capturing_patterns(Acc),
   if N > C, N < 10 ->
         {error, badbackref};
      N > C ->
         Rem = N rem 10,
         Div = N div 10,
         if Div == 0 ->
               {error, badbackref};
            true ->
               check_back_refs([{piece,{back_ref,Div},one},
                                {piece,{char,integer_to_list(Rem)},one}|T], Acc)
         end;
      true ->
         check_back_refs(T, [H|Acc])
   end;
check_back_refs([H|T],Acc) ->
   check_back_refs(T, [H|Acc]).

regex_flags([]) -> [dollar_endonly];
regex_flags(Flags) ->
   Fun = fun(Char, Map) ->
               case Char of
                  $s -> maps:put(s, [dollar_endonly,dotall], Map);
                  $m -> maps:put(m, multiline, Map);
                  $i -> maps:put(i, caseless, Map);
                  $x -> maps:put(x, extended, Map);
                  $q -> maps:put(q, do_qe, Map);
                  C ->
                     ?dbg("Char",C),
                     xqerl_error:error('FORX0001')
               end
         end,        
   M = lists:foldl(Fun, #{}, Flags),
   lists:flatten(maps:values(M)).

esc_esc([]) -> [];
esc_esc([$\\|T]) ->
   [$\\,$\\|esc_esc(T)];
esc_esc([H|T]) ->
   [H|esc_esc(T)].

get_depth(String) ->
   get_depth(String,0).

get_depth([],D) -> D;
get_depth([$)|T],D) ->
   get_depth(T,D+1);
get_depth([_|T],D) ->
   get_depth(T,D).


parse_repl(String,Depth) ->
   parse_repl1(String,Depth).

parse_repl1([],_) -> [];
parse_repl1([$\\,$$|T],D) ->
   [$\\,$$|parse_repl1(T,D)];
parse_repl1([$\\,$\\|T],D) ->
   [$\\,$\\|parse_repl1(T,D)];
parse_repl1([$\\|_],_) ->
   ?err('FORX0004');
parse_repl1([$$,H2|T],D) when H2 >= $0, H2 =< $9 ->
   {Nums,Rest} = get_digits(T,[]),
   Int = list_to_integer([H2|Nums]),
   {NewInt,Tail} = chop_to(Int, D, []),
   BR = "\\g{" ++ NewInt ++ "}" ++ Tail,
   BR ++ parse_repl1(Rest,D);
parse_repl1([$$|_],_) ->
   ?err('FORX0004');
parse_repl1([H|T],D) ->
   [H|parse_repl1(T,D)].

get_digits([],Acc) -> 
   {lists:reverse(Acc),[]};
get_digits([H|T],Acc) when H >= $0, H =< $9 -> 
   get_digits(T,[H|Acc]);
get_digits([H|T],Acc) -> 
   {lists:reverse(Acc),[H|T]}.

%returns {IntAsList,Tail}
chop_to(Int,Max,Acc) when Int > Max ->
   Next = Int div 10,
   Rem = integer_to_list(Int rem 10),
   chop_to(Next,Max,Rem ++ Acc);
chop_to(Int,_Max,Acc) ->
   {integer_to_list(Int), Acc}.

strip_esc_ws([]) -> [];
strip_esc_ws([$[|T]) -> 
   [$[|no_strip_esc_ws(T)];
strip_esc_ws([H|T]) when H == 16#9;
                         H == 16#A;
                         H == 16#D;
                         H == 16#20 ->
   strip_esc_ws(T);
strip_esc_ws([H|T]) -> 
   [H|strip_esc_ws(T)].

no_strip_esc_ws([]) -> [];
no_strip_esc_ws([$]|T]) -> 
   [$]|strip_esc_ws(T)];
no_strip_esc_ws([H|T]) -> 
   [H|no_strip_esc_ws(T)].
                            
