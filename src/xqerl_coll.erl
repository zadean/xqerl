%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
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
-export([char_list/2]).
-export([binary/2]).

% testing only ,caseblind
parse(<<"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind">>) ->
    parse(<<"http://www.w3.org/2013/collation/UCA?strength=primary">>);
%
parse(<<"http://www.w3.org/2005/xpath-functions/collation/codepoint">>) ->
    key_fun(codepoint);
parse(
    <<
        "http://www.w3.org/2005/xpath-functions/collation/"
        "html-ascii-case-insensitive"
    >>
) ->
    key_fun(ascii);
parse(<<"http://www.w3.org/2013/collation/UCA", Query/binary>>) ->
    key_fun({uca, parse_query_string(Query)});
parse(_) ->
    ?err('FOCH0002').

sort_key(Val, Type) when Type == 'xs:date'; Type == 'xs:dateTime'; Type == 'xs:time' ->
    #xqAtomicValue{value = V} =
        xqerl_datetime:align_to_timezone(
            #xqAtomicValue{type = Type, value = Val},
            []
        ),
    V;
sort_key(Val, Type) when
    Type == 'xs:gYearMonth';
    Type == 'xs:gYear';
    Type == 'xs:gMonthDay';
    Type == 'xs:gDay';
    Type == 'xs:gMonth'
->
    Val#xsDateTime{hour = 0, minute = 0, offset = [], string_value = <<>>};
sort_key({xsDecimal, _, _} = Item, _) ->
    xqerl_numeric:double(Item);
sort_key([], _) ->
    [];
sort_key(Item, _) when is_float(Item); is_integer(Item); is_tuple(Item); is_atom(Item) ->
    Item;
sort_key(Str, codepoint) ->
    binary(Str, codepoint);
sort_key(Str, Fun) ->
    try
        Fun(Str)
    catch
        _:_ ->
            ?err('FOCH0002')
    end.

char_list(Str, codepoint) ->
    [{C, <<C/utf8>>} || <<C/utf8>> <= Str];
char_list(Str, Fun) ->
    [{C, Fun([C])} || <<C/utf8>> <= Str].

binary([], _) -> <<>>;
binary(Str, codepoint) -> Str;
binary(Str, Fun) -> list_to_binary([Fun([C]) || <<C/utf8>> <= Str]).

-spec split(binary(), binary(), codepoint | fun()) -> [binary()].
split(String, SearchPattern, codepoint) ->
    string:split(String, SearchPattern, leading);
split(String, SearchPattern, Fun) ->
    Pattern = [B || {_, B} <- char_list(SearchPattern, Fun), B =/= <<>>],
    ToSplit = char_list(String, Fun),
    split_1(ToSplit, Pattern, []).

%% ====================================================================
%% Internal functions
%% ====================================================================

split_1([], _Pattern, Acc) ->
    [lists:reverse(Acc)];
split_1([{K, V} | T] = ToSplit, Pattern, Acc) ->
    Trimmed = [B || {_, B} <- T, B =/= <<>>],
    Squashed = [V | Trimmed],
    case lists:prefix(Pattern, Squashed) of
        true ->
            [
                unicode:characters_to_binary(lists:reverse(Acc)),
                get_tail_1(Pattern, ToSplit)
            ];
        _ ->
            split_1(T, Pattern, [K | Acc])
    end.

get_tail_1([], L) ->
    unicode:characters_to_binary([C || {C, _} <- L]);
get_tail_1(P, [{_, <<>>} | LT]) ->
    get_tail_1(P, LT);
get_tail_1([PH | PT], [{_, BH} | BT]) when PH == BH ->
    get_tail_1(PT, BT).

parse_query_string(<<>>) ->
    #{};
parse_query_string(<<"?", Rest/binary>>) ->
    split_query(Rest).

split_query(<<>>) ->
    #{};
split_query(Qry) ->
    KVs = dissect_query(Qry),
    F = fun
        ({<<>>, _}, Map) ->
            Map;
        ({K, V}, Map) ->
            A = binary_to_atom(K, utf8),
            Map#{A => V}
    end,
    lists:foldl(F, #{}, KVs).

key_fun({uca, Opts}) ->
    case erluca:uca(Opts) of
        {error, _} ->
            ?err('FOCH0002');
        R ->
            R
    end;
key_fun(codepoint) ->
    codepoint;
%fun unicode:characters_to_binary/1;
key_fun(ascii) ->
    fun
        (Str) when is_list(Str) ->
            unicode:characters_to_binary([lower(C) || C <- Str]);
        (Str) when is_binary(Str) ->
            <<<<(lower(C))/utf8>> || <<C/utf8>> <= Str>>
    end.

lower(C) when C >= $A, C =< $Z -> C + 32;
lower(C) -> C.

dissect_query(Query) ->
    dissect_query_key(Query, [], <<>>, <<>>).

dissect_query_key(<<$=, T/binary>>, Acc, Key, Value) ->
    dissect_query_value(T, Acc, Key, Value);
dissect_query_key(<<$;, T/binary>>, Acc, Key, Value) ->
    dissect_query_key(T, [{Key, Value} | Acc], <<>>, <<>>);
dissect_query_key(<<H, T/binary>>, Acc, Key, Value) ->
    dissect_query_key(T, Acc, <<Key/binary, H>>, Value);
dissect_query_key(B, _, _, _) ->
    throw({error, missing_value, B}).

dissect_query_value(<<$;, T/binary>>, Acc, Key, Value) ->
    dissect_query_key(T, [{Key, Value} | Acc], <<>>, <<>>);
dissect_query_value(<<H, T/binary>>, Acc, Key, Value) ->
    dissect_query_value(T, Acc, Key, <<Value/binary, H>>);
dissect_query_value(<<>>, Acc, Key, Value) ->
    lists:reverse([{Key, Value} | Acc]).
