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

%% @doc Collations

-module(xqerl_coll).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([parse/1]).
-export([sort_key/2]).
-export([split/3]).
-export([as_list/2]).
-export([as_bin_list/2]).


% testing only ,caseblind
parse("http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind") ->
   parse("http://www.w3.org/2013/collation/UCA?strength=primary");
% 
parse("http://www.w3.org/2005/xpath-functions/collation/codepoint") ->
   key_fun(codepoint);
parse("http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive") ->
   key_fun(ascii);
parse("http://www.w3.org/2013/collation/UCA" ++ Query) ->
   key_fun({uca, parse_query_string(Query)});
parse(_) ->
  xqerl_error:error('FOCH0002').


sort_key(Val, Type) when Type == 'xs:date';
                         Type == 'xs:dateTime';
                         Type == 'xs:time' ->
   #xqAtomicValue{value = V} = xqerl_datetime:align_to_timezone(#xqAtomicValue{type = Type, value = Val},[]),
   V;
sort_key(Val, Type) when Type == 'xs:gYearMonth';
                         Type == 'xs:gYear';
                         Type == 'xs:gMonthDay';
                         Type == 'xs:gDay';
                         Type == 'xs:gMonth' ->
   Val#xsDateTime{hour = 0, minute = 0, offset = [], string_value = []};
sort_key({xsDecimal,_,_} = Item, _) ->
   xqerl_numeric:double(Item);
sort_key(Item, _) when is_float(Item);
                       is_integer(Item);
                       is_tuple(Item) ->
   Item;
sort_key([], _) ->
   <<>>;
sort_key(Atom, _) when is_atom(Atom) ->
   Atom;

sort_key(Str, Fun) ->
   try
      Fun(Str)
   catch
      _:_ ->
         ?dbg("sort_key",erlang:get_stacktrace()),
         xqerl_error:error('FOCH0002')
   end.

as_list(Str,Fun) ->
   [{C,Fun([C])} || C <- Str].

as_bin_list(Str,Fun) ->
   << B || {_,B} <- as_list(Str,Fun) >>.

split(String,SearchPattern,Fun) ->
   Pattern = [B || {_,B} <- as_list(SearchPattern, Fun), B =/= <<>>],
   ToSplit = as_list(String, Fun),
   %CharStr = [C || {C,_} <- ToSplit],
   BinStr =  [B || {_,B} <- ToSplit],
   %?dbg("BinStr",BinStr),
   %?dbg("String",String),
   %?dbg("Pattern",Pattern),
   %?dbg("CharStr",CharStr),
   split_1(BinStr,Pattern,String,[]).
   %split_1(BinStr,Pattern,CharStr,[]).

%% ====================================================================
%% Internal functions
%% ====================================================================

split_1([],_Pattern,_Chars,Acc) ->
   [lists:reverse(Acc)];
split_1(Bins,Pattern,Chars,Acc) ->
   Squashed = [hd(Bins)|[B || B <- tl(Bins), B =/= <<>>]],
   case lists:prefix(Pattern,Squashed) of
      true ->
         [lists:reverse(Acc), get_tail_1(Pattern, Bins, Chars)];
      _ ->
         split_1(tl(Bins),Pattern,tl(Chars), [hd(Chars)|Acc])
   end.

get_tail_1([],_,C) -> C;
get_tail_1([PH|PT],[<<>>|BT],[_|CT]) ->
   get_tail_1([PH|PT],BT,CT);
get_tail_1([PH|PT],[BH|BT],[_|CT]) when PH == BH ->
   get_tail_1(PT,BT,CT).
   




parse_query_string([]) ->
   #{};
parse_query_string("?"++Rest) ->
   split_query(Rest).

split_query([]) -> #{};
split_query(Qry) -> 
   Split = string:split(Qry, [$;],all),
   lists:foldl(fun([],Map) -> Map;
                  (Str,Map) ->
                     [K,V] = string:split(Str, [$=]),
                     Map#{list_to_atom(K) => V}                        
               end, #{}, Split).

key_fun({uca,Opts}) ->
   xq_uca:uca(Opts);
key_fun(codepoint) ->
   fun(Str) ->
         unicode:characters_to_binary(Str)
   end;
key_fun(ascii) ->
   fun(Str) ->
         unicode:characters_to_binary(
           [ if C >= $A, C=< $Z ->
                 C + 32;
              true ->
                 C
           end   || C <- Str ])
   end.

   