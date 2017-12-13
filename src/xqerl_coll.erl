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

%% @doc Collations

-module(xqerl_coll).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([parse/1]).
-export([sort_key/2]).


parse("http://www.w3.org/2005/xpath-functions/collation/codepoint") ->
   codepoint;
parse("http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive") ->
   ascii;
parse("http://www.w3.org/2013/collation/UCA" ++ Query) ->
   {uca, parse_query_string(Query)};
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
sort_key(Str, codepoint) ->
   unicode:characters_to_binary(Str);
sort_key(Str, ascii) ->
   unicode:characters_to_binary(
     [ if C >= $A, C=< $Z ->
           C + 32;
        true ->
           C
     end   || C <- Str ]);
%% sort_key(Str, {uca, #{strength := "primary", lang := "en"}}) ->
%%    sort_key(Str, ascii);
sort_key(Str, {uca,Map}) ->
   % if fallback is okay, use codepoint for now, until collations implemented
   case maps:get(fallback,Map) of
      "yes" ->
         unicode:characters_to_binary(Str);
      _ ->
         xqerl_error:error('FOCH0002')
   end.


%% ====================================================================
%% Internal functions
%% ====================================================================

parse_query_string([]) ->
   default_query();
parse_query_string("?"++Rest) ->
   split_query(Rest).

split_query([]) -> default_query();
split_query(Qry) -> 
   Split = string:split(Qry, [$;],all),
   lists:foldl(fun([],Map) -> Map;
                  (Str,Map) ->
                     [K,V] = string:split(Str, [$=]),
                     Map#{list_to_existing_atom(K) => V}
               end, default_query(), Split).

default_query() ->
   #{fallback        => "yes",
     lang            => "en",
     version         => "1.0",
     strength        => "tertiary",
     maxVariable     => "punct",
     alternate       => "non-ignorable",
     backwards       => "no",
     normalization   => "no",
     caseLevel       => "no",
     caseFirst       => "upper",
     numeric         => "no",
     reorder         => []}.
