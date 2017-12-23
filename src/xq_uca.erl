%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017 Zachary N. Dean  All Rights Reserved.
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

%% @doc UNICODE COLLATION ALGORITHM (UCA) & Default Unicode Collation Element Table (DUCET) - non-tailored.

%% uppercase first means set level 3 to value bor 64

-module(xq_uca).

-define(EUNIT,true).
-ifdef(EUNIT).
-include_lib("eunit/include/eunit.hrl").
-endif.

-include("xqerl.hrl").

-define(UTIL,xq_uca_util).
-define(MINVAR, 16#0201).
-define(MAXSPACEVAR, 16#0209). 
-define(MAXPUNCTVAR, 16#0497). 
-define(MAXSYMBOLVAR, 16#1AF9).
-define(MAXVAR, 16#1C5B).


%% ====================================================================
%% API functions
%% ====================================================================
-export([uca/1]).

uca(Opts) ->
   MM = maps:merge(default_options(), Opts),
   POpts = parse_options(MM),
   get_fun(POpts).

%% ====================================================================
%% Internal functions
%% ====================================================================

get_fun({en,Strength,MaxVar,Alternate,Backwards,true,CaseFirst}) ->
   Strength1 = case lists:member(3, Strength) of true -> Strength; _ -> lists:sort(Strength ++ [3]) end,
   get_fun({en,Strength1,MaxVar,Alternate,Backwards,false,CaseFirst});
get_fun({en,Strength,MaxVar,Alternate,Backwards,false,CaseFirst}) ->
   ImplQuat = Alternate == shifted,
   fun(Str) ->
         N = normalize(Str),
         W = ?UTIL:lookup(N),
         W1 = if CaseFirst == upper ->
                    upper_first(W);
                 true ->
                    W
              end,
         W2 = if Alternate == blanked ->
                    blank_variables(W1, MaxVar);
                 Alternate == shifted ->
                    shift_variables(W1, MaxVar);
                 true ->
                    W1
              end,
         Strength1 = case lists:member(4, Strength) of 
                        true -> Strength; 
                        _ when ImplQuat -> lists:sort(Strength ++ [4]);
                        _ -> Strength end,
         << if L == 2 andalso Backwards == yes ->
                  (level_part_key(W2, L, reverse));
               L == 5 ->
                  normalize_to_binary(Str);
               true ->
                  (level_part_key(W2, L, forward))
            end ||
            L <- Strength1 >>

   end.

parse_options(#{fallback      := Fallback,
                lang          := Lang,
                version       := Vers,
                strength      := Strength,
                maxVariable   := MaxVar,
                alternate     := Alternate,
                backwards     := Backwards,
                normalization := Normalization,   % not implemented
                caseLevel     := CaseLevel,
                caseFirst     := CaseFirst,
                numeric       := Numeric,   % not implemented
                reorder       := Reorder    % not implemented
               }) ->
   Fb = parse_yes_no(Fallback) == yes, % can fallback boolean()
   Lang1 = case parse_lang(Lang) of 
              undefined when Fb -> en;
              undefined -> throw({error,unknown_language});
              CL -> CL
           end,                        
    _ = case parse_version(Vers) of 
           undefined when Fb -> ?UTIL:spec_version();
           undefined -> throw({error,unsupported_version});
           CV -> CV
        end,
   Strength1 = case parse_strength(Strength) of 
                  undefined when Fb -> tertiary;
                  undefined -> throw({error,unknown_strength});
                  CS -> CS
               end, 
   MaxVar1 = case parse_maxvariable(MaxVar) of
                undefined when Fb -> ?MAXPUNCTVAR;
                undefined -> throw({error,unknown_maxvariable});
                Mv -> Mv
             end,
   Alternate1 =case parse_alternate(Alternate) of
                  undefined when Fb -> non_ignorable;
                  undefined -> throw({error,unknown_alternate});
                  CA -> CA
               end,
   Backwards1 = parse_yes_no(Backwards),
   _ = case parse_yes_no(Normalization) of
          yes when Fb -> no;
          yes -> throw({error,normalization});
          _ -> no
       end,
   CaseLevel1 = parse_yes_no(CaseLevel) == yes,
   CaseFirst1 = case parse_casefirst(CaseFirst) of
                   undefined when Fb -> lower;
                   undefined -> throw({error,unknown_case});
                   CF -> CF
                end,
   _ = case parse_yes_no(Numeric) of
          yes when Fb -> no;
          yes -> throw({error,numeric_sort});
          _ -> no
       end,
   _ = case Reorder of
          _ when Fb -> [];
          [] -> [];
          _ -> throw({error,reorder})
       end,
   
   {Lang1,Strength1,MaxVar1,Alternate1,Backwards1,CaseLevel1,CaseFirst1}.

parse_yes_no(yes) -> yes;
parse_yes_no("yes") -> yes;
parse_yes_no("Y") -> yes;
parse_yes_no("y") -> yes;
parse_yes_no("1") -> yes;
parse_yes_no(1) -> yes;
parse_yes_no(no) -> no;
parse_yes_no("no") -> no;
parse_yes_no("N") -> no;
parse_yes_no("n") -> no;
parse_yes_no("0") -> no;
parse_yes_no(0) -> no.

parse_lang(en) -> en;
parse_lang(_) -> undefined.

parse_version({Maj,Min}) ->
   {CMaj,CMin} = ?UTIL:spec_version(),
   if CMaj > Maj -> {CMaj,CMin};
      CMaj == Maj, CMin >= Min -> {CMaj,CMin};
      true -> undefined
   end.

parse_strength(primary) -> [1];
parse_strength("primary") -> [1];
parse_strength(1) -> [1];
parse_strength(secondary) -> [1,2];
parse_strength("secondary") -> [1,2];
parse_strength(2) -> [1,2];
parse_strength(tertiary) -> [1,2,3];
parse_strength("tertiary") -> [1,2,3];
parse_strength(3) -> [1,2,3];
parse_strength(quaternary) -> [1,2,3,4];
parse_strength("quaternary") -> [1,2,3,4];
parse_strength(4) -> [1,2,3,4];
parse_strength(identical) -> [1,2,3,4,5];
parse_strength("identical") -> [1,2,3,4,5];
parse_strength(5) -> [1,2,3,4,5];
parse_strength(_) -> undefined.

parse_maxvariable(space) -> ?MAXSPACEVAR;
parse_maxvariable("space") -> ?MAXSPACEVAR;
parse_maxvariable(punct) -> ?MAXPUNCTVAR;
parse_maxvariable("punct") -> ?MAXPUNCTVAR;
parse_maxvariable(symbol) -> ?MAXSYMBOLVAR;
parse_maxvariable("symbol") -> ?MAXSYMBOLVAR;
parse_maxvariable(currency) -> ?MAXVAR;
parse_maxvariable("currency") -> ?MAXVAR;
parse_maxvariable(_) -> undefined.

parse_alternate(non_ignorable) -> non_ignorable;
parse_alternate("non_ignorable") -> non_ignorable;
parse_alternate(shifted) -> shifted;
parse_alternate("shifted") -> shifted;
parse_alternate(blanked) -> blanked;
parse_alternate("blanked") -> blanked;
parse_alternate(_) -> undefined.
   
parse_casefirst(upper) -> upper;
parse_casefirst("upper") -> upper;
parse_casefirst(lower) -> lower;
parse_casefirst("lower") -> lower;
parse_casefirst(_) -> undefined.

default_options() ->
   #{fallback        => yes,
     lang            => en,
     version         => {10,0},
     strength        => tertiary,
     maxVariable     => punct,
     alternate       => non_ignorable,
     backwards       => no,            % reverse second level non-0 values, for trailing accents in French
     normalization   => no,            % not implemented
     caseLevel       => no,
     caseFirst       => upper,
     numeric         => no,            % not implemented
     reorder         => []}.           % not implemented


normalize(Str) ->
   case unicode:characters_to_nfd_list(Str) of
      T when is_tuple(T) ->
         error;
      B ->
         lists:flatten(B)
   end.

normalize_to_binary(Str) ->
   try 
      unicode:characters_to_nfd_binary(Str)
   catch _:_ ->
      S = strip_controls(Str),
      if S =/= Str ->
            normalize_to_binary(S);
         true ->
            error
      end
   end.

strip_controls([I|T]) when I =:= 55296;
                           I =:= 55297;
                           I =:= 55298;
                           I =:= 55299;
                           I =:= 56320;
                           I =:= 57343 ->
   strip_controls(T);
strip_controls([I|T]) ->
   [I|strip_controls(T)];
strip_controls([]) -> [].


level_part_key(Weights,1,forward) ->
   << <<W:16/integer>> ||
    E <- Weights, 
    W <- [element(1, E)], 
    W > 0 >>;
level_part_key(Weights,L,reverse) ->
   B = << <<W:16/integer>> || 
       E <- lists:reverse(Weights), 
       W <- [element(L, E)], 
       W > 0>>,
   <<0:16/integer,B/binary>>;
level_part_key(Weights,L,_) ->
   B = << <<W:16/integer>> || 
       E <- Weights, 
       W <- [element(L, E)], 
       W > 0>>,
   <<0:16/integer,B/binary>>.


shift_variables([],_) -> [];
shift_variables([{0,0,0}|T],Max) ->
   [{0,0,0,0}|shift_variables(T,Max)];
shift_variables([{V1,_,_},{0,_,W2},{0,_,W3}|T],Max) when V1 >= ?MINVAR andalso
                                                         V1 =< Max andalso
                                                         W2 > 0 andalso
                                                         W3 > 0 ->
   [{0,0,0,V1},{0,0,0,0},{0,0,0,0}|shift_variables(T,Max)];
shift_variables([{V1,_,_},{0,_,W3}|T],Max) when V1 >= ?MINVAR andalso
                                                V1 =< Max andalso
                                                W3 > 0 ->
   [{0,0,0,V1},{0,0,0,0}|shift_variables(T,Max)];
shift_variables([{V1,_,_}|T],Max) when V1 >= ?MINVAR andalso
                                       V1 =< Max ->
   [{0,0,0,V1}|shift_variables(T,Max)];
shift_variables([{W1,W2,W3}|T],Max) ->
   [{W1,W2,W3,16#FFFF}|shift_variables(T,Max)].

blank_variables([],_) -> [];
blank_variables([{0,0,0}|T],Max) ->
   [{0,0,0,0}|blank_variables(T,Max)];
blank_variables([{V1,_,_},{0,_,W2},{0,_,W3}|T],Max) when V1 >= ?MINVAR andalso 
                                                         V1 =< Max andalso
                                                         W2 > 0 andalso
                                                         W3 > 0 ->
   [{0,0,0,0},{0,0,0,0},{0,0,0,0}|blank_variables(T,Max)];
blank_variables([{V1,_,_},{0,_,W3}|T],Max) when V1 >= ?MINVAR andalso
                                                V1 =< Max andalso
                                                W3 > 0 ->
   [{0,0,0,0},{0,0,0,0}|blank_variables(T,Max)];
blank_variables([{V1,_,_}|T],Max) when V1 >= ?MINVAR andalso
                                       V1 =< Max ->
   [{0,0,0,0}|blank_variables(T,Max)];
blank_variables([{W1,W2,W3}|T],Max) ->
   [{W1,W2,W3,16#FFFF}|blank_variables(T,Max)].

upper_first([]) -> [];
upper_first([H|T]) when element(3,H) >= 8 andalso element(3,H) =< 12 orelse
                        element(3,H) == 14 orelse
                        element(3,H) == 17 orelse
                        element(3,H) == 18 orelse
                        element(3,H) == 29 ->
   [setelement(3, H, element(3,H) bor 64)|upper_first(T)];
upper_first([H|T]) -> 
   [H|upper_first(T)].

-ifdef(EUNIT).

nonignore_test() ->
   {ok,FP} = file:open("../test/UCA/CollationTest/CollationTest_NON_IGNORABLE_SHORT.txt", [read]),
   List = read_lines(FP),
   ok = file:close(FP),
   ?assertEqual(ok, gt(List)).
shifted_test() ->
   {ok,FS} = file:open("../test/UCA/CollationTest/CollationTest_SHIFTED_SHORT.txt", [read]),
   ListS = read_lines(FS,shift),
   ok = file:close(FS),
   ?assertEqual(ok, gt(ListS)).

gt([{H1,_},{H2,S}|T]) when H2 >= H1 ->
   gt([{H2,S}|T]);
gt([{H1,S1},{H2,S2}|T]) when H2 < H1 ->
   [{S1,H1}|gt([{H2,S2}|T])];
gt([_]) ->
   ok.

read_lines(FP) ->
   case file:read_line(FP) of
      {ok,[$#|_]} ->
         read_lines(FP);
      {ok,"\n"} ->
         read_lines(FP);
      {ok,Line} ->
         Trim = string:trim(Line),
         CPs = string:split(Trim, " ", all),
         Ints = [list_to_integer(C,16) || C <- CPs],
         N = normalize(Ints),
         Nb = normalize_to_binary(N),
         B = ?UTIL:lookup(N),
         K = <<(sort_key(B))/binary,Nb/binary>>,
         [{K,Trim}|read_lines(FP)];
      eof ->
         [];
      Err ->
         Err
   end.

read_lines(FP,shift) ->
   case file:read_line(FP) of
      {ok,[$#|_]} ->
         read_lines(FP,shift);
      {ok,"\n"} ->
         read_lines(FP,shift);
      {ok,Line} ->
         Trim = string:trim(Line),
         CPs = string:split(Trim, " ", all),
         Ints = [list_to_integer(C,16) || C <- CPs],
         N = normalize(Ints),
         B = ?UTIL:lookup(N),
         K = sort_key(B,shift),
         [{K,Trim}|read_lines(FP,shift)];
      eof ->
         [];
      Err ->
         %?dbg("Err",Err),
         Err
   end.

sort_key(W) ->
   << (level_part_key(W, 1, forward))/binary,
      (level_part_key(W, 2, forward))/binary,
      (level_part_key(W, 3, forward))/binary >>.

sort_key(W0,shift) ->
   W = shift_variables(W0,?MAXVAR),
   << (level_part_key(W, 1, forward))/binary,
      (level_part_key(W, 2, forward))/binary,
      (level_part_key(W, 3, forward))/binary,
      (level_part_key(W, 4, forward))/binary >>.

-endif.