% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% @doc Implementation of the "http://www.w3.org/2005/xpath-functions/map"
%% namespace.

-module(xqerl_mod_map).

-include("xqerl.hrl").

-compile(inline_list_funcs).

-define(VAL(V), xqerl_seq3:singleton_value(V)).
-define(NS, <<"http://www.w3.org/2005/xpath-functions/map">>).
-define(PX, <<"map">>).

% block array:array(_) warnings
-dialyzer(no_opaque).

-define(IS_ARRAY(A), is_tuple(A), element(1, A) =:= array).

-export(['contains'/3]).
-export(['entry'/3]).
-export(['find'/3]).
-export(['for-each'/3]).
-export(['get'/3]).
-export(['keys'/2]).
-export(['merge'/2, 'merge'/3]).
-export(['put'/4]).
-export(['remove'/3]).
-export(['size'/2]).
% internal use
-export([equal/2]).
-export([values/1]).
-export([get_matched/2]).
-export([construct/2]).

-functions([
    {{qname, ?NS, ?PX, <<"contains">>}, {seqType, 'xs:boolean', one}, [], {'contains', 3}, 2, [
        {seqType, {funTest, map, [], undefined, any, any}, one},
        {seqType, 'xs:anyAtomicType', one}
    ]},
    {
        {qname, ?NS, ?PX, <<"entry">>},
        {seqType, {funTest, map, [], undefined, any, any}, one},
        [],
        {'entry', 3},
        2,
        [{seqType, 'xs:anyAtomicType', one}, {seqType, item, zero_or_many}]
    },
    {
        {qname, ?NS, ?PX, <<"find">>},
        {seqType, {funTest, array, [], undefined, any, any}, one},
        [],
        {'find', 3},
        2,
        [{seqType, item, zero_or_many}, {seqType, 'xs:anyAtomicType', one}]
    },
    {{qname, ?NS, ?PX, <<"for-each">>}, {seqType, item, zero_or_many}, [], {'for-each', 3}, 2, [
        {seqType, {funTest, map, [], undefined, any, any}, one},
        {seqType,
            {funTest, function, [], undefined,
                [{seqType, 'xs:anyAtomicType', one}, {seqType, item, zero_or_many}],
                {seqType, item, zero_or_many}},
            one}
    ]},
    {{qname, ?NS, ?PX, <<"get">>}, {seqType, item, zero_or_many}, [], {'get', 3}, 2, [
        {seqType, {funTest, map, [], undefined, any, any}, one},
        {seqType, 'xs:anyAtomicType', one}
    ]},
    {
        {qname, ?NS, ?PX, <<"keys">>},
        {seqType, 'xs:anyAtomicType', zero_or_many},
        [],
        {'keys', 2},
        1,
        [{seqType, {funTest, map, [], undefined, any, any}, one}]
    },
    {
        {qname, ?NS, ?PX, <<"merge">>},
        {seqType, {funTest, map, [], undefined, any, any}, one},
        [],
        {'merge', 2},
        1,
        [{seqType, {funTest, map, [], undefined, any, any}, zero_or_many}]
    },
    {
        {qname, ?NS, ?PX, <<"merge">>},
        {seqType, {funTest, map, [], undefined, any, any}, one},
        [],
        {'merge', 3},
        2,
        [
            {seqType, {funTest, map, [], undefined, any, any}, zero_or_many},
            {seqType, {funTest, map, [], undefined, any, any}, one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"put">>},
        {seqType, {funTest, map, [], undefined, any, any}, one},
        [],
        {'put', 4},
        3,
        [
            {seqType, {funTest, map, [], undefined, any, any}, one},
            {seqType, 'xs:anyAtomicType', one},
            {seqType, item, zero_or_many}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"remove">>},
        {seqType, {funTest, map, [], undefined, any, any}, one},
        [],
        {'remove', 3},
        2,
        [
            {seqType, {funTest, map, [], undefined, any, any}, one},
            {seqType, 'xs:anyAtomicType', zero_or_many}
        ]
    },
    {{qname, ?NS, ?PX, <<"size">>}, {seqType, 'xs:integer', one}, [], {'size', 2}, 1, [
        {seqType, {funTest, map, [], undefined, any, any}, one}
    ]}
]).

%% Tests whether a supplied map contains an entry for a given key
%% map:contains($map as map(*), $key as xs:anyAtomicType) as xs:boolean
-spec 'contains'(
    xq_types:context(),
    xq_types:xq_map(),
    xq_types:xs_anyAtomicType()
) -> xq_types:xs_boolean().
'contains'(_Ctx, Map, Key) when is_map(Map) ->
    MKey = xqerl_operators:key_val(Key),
    is_map_key(MKey, Map);
'contains'(Ctx, Map, Key) ->
    case ?VAL(Map) of
        IMap when is_map(IMap) ->
            'contains'(Ctx, IMap, Key);
        _ ->
            ?err('XPTY0004')
    end.

%% Returns a map that contains a single entry (a key-value pair).
%% map:entry($key as xs:anyAtomicType, $value as item()*) as map(*)
-spec 'entry'(
    xq_types:context(),
    xq_types:xs_anyAtomicType(),
    [] | xq_types:sequence(xq_types:xq_item())
) -> xq_types:xq_map().
'entry'(_Ctx, Key0, Value0) ->
    Key = xqerl_operators:key_val(Key0),
    #{Key => {Key0, Value0}}.

%% Searches the supplied input sequence and any contained maps and arrays for
%% a map entry with the supplied key, and returns the corresponding values.
%% map:find($input as item()*, $key as xs:anyAtomicType) as array(*)
-spec 'find'(
    xq_types:context(),
    [] | xq_types:sequence(xq_types:xq_item()),
    xq_types:xs_anyAtomicType()
) -> xq_types:xq_array().
'find'(Ctx, Input, Key) when not is_list(Input) ->
    'find'(Ctx, [Input], Key);
'find'(_Ctx, Input, Key) ->
    MKey = xqerl_operators:key_val(Key),
    L = find1(Input, MKey),
    array:from_list(L).

find1([], _Key) ->
    [];
find1([H | T], Key) when is_map(H) ->
    Vals = values(H),
    case maps:find(Key, H) of
        error ->
            find1(Vals ++ T, Key);
        {ok, {_, V}} ->
            [V | find1(Vals ++ T, Key)]
    end;
find1([H | T], Key) when ?IS_ARRAY(H) ->
    find1(array:to_list(H) ++ T, Key);
find1([_ | T], Key) ->
    find1(T, Key).

%% Applies a supplied function to every entry in a map, returning the
%% concatenation of the results.
%% map:for-each(
%%    $map    as map(*),
%%    $action as function(xs:anyAtomicType, item()*) as item()*) as item()*
-spec 'for-each'(
    xq_types:context(),
    xq_types:xq_map(),
    xq_types:xq_function()
) -> [] | xq_types:sequence(xq_types:xq_item()).
'for-each'(Ctx, [Map], F) ->
    'for-each'(Ctx, Map, F);
'for-each'(_Ctx, Map, []) when is_map(Map) ->
    Map;
'for-each'(Ctx, Map, Action) when is_map(Map), is_function(Action) ->
    Deep = lists:map(fun({K, V}) -> Action(Ctx, K, V) end, maps:values(Map)),
    lists:flatten(Deep);
'for-each'(Ctx, Map, #xqFunction{body = Function}) when is_map(Map), is_function(Function) ->
    'for-each'(Ctx, Map, Function).

%% Returns the value associated with a supplied key in a given map.
%% map:get($map as map(*), $key as xs:anyAtomicType) as item()*
-spec 'get'(
    xq_types:context(),
    xq_types:xq_map(),
    xq_types:xs_anyAtomicType()
) -> [] | xq_types:sequence(xq_types:xq_item()).
'get'(Ctx, [Map], Key) ->
    'get'(Ctx, Map, Key);
'get'(_Ctx, Map, Key) when is_map(Map) ->
    MKey = xqerl_operators:key_val(Key),
    case Map of
        #{MKey := {_, V}} -> V;
        _ -> []
    end;
'get'(Ctx, Map, Key) ->
    case ?VAL(Map) of
        IMap when is_map(IMap) ->
            'get'(Ctx, IMap, Key);
        _ ->
            ?err('XPTY0004')
    end.

%% Returns a sequence containing all the keys present in a map
%% map:keys($map as map(*)) as xs:anyAtomicType*
-spec 'keys'(
    xq_types:context(),
    xq_types:xq_map()
) -> [] | xq_types:sequence(xq_types:xs_anyAtomicType()).
'keys'(_Ctx, Map) when is_map(Map) ->
    % true keys are in position 1 in value
    [K || {K, _} <- maps:values(Map)];
'keys'(Ctx, Map) ->
    case ?VAL(Map) of
        IMap when is_map(IMap) ->
            'keys'(Ctx, IMap);
        _ ->
            ?err('XPTY0004')
    end.

%% Returns a map that combines the entries from a number of existing maps.
%% map:merge($maps as map(*)*) as map(*)
-spec 'merge'(
    xq_types:context(),
    [] | xq_types:sequence(xq_types:xq_map())
) -> xq_types:xq_map().
'merge'(_Ctx, []) ->
    #{};
'merge'(_Ctx, Maps) when is_map(Maps) ->
    Maps;
'merge'(_Ctx, Maps) ->
    %%    do_merge(lists:reverse(Maps), #{}).
    List = maps_to_list(lists:reverse(Maps)),
    %Lists = lists:append([maps:to_list(M) || M <- lists:reverse(Maps)]),
    maps:from_list(List).

maps_to_list(Maps) ->
    [
        V
     || M <- Maps,
        V <- maps:to_list(M)
    ].

%% map:merge($maps as map(*)*, $options as map(*)) as map(*)
-spec 'merge'(
    xq_types:context(),
    [] | xq_types:sequence(xq_types:xq_map()),
    xq_types:xq_map()
) -> xq_types:xq_map().
'merge'(_Ctx, [], _) ->
    #{};
'merge'(_Ctx, Maps, #{<<"duplicates">> := {_, Dup}}) when
    Dup == <<"use-first">>; Dup == <<"use-any">>
->
    %%    do_merge(lists:reverse(Maps), #{});
    List = maps_to_list(lists:reverse(Maps)),
    maps:from_list(List);
'merge'(_Ctx, Maps, #{<<"duplicates">> := {_, Dup}}) when Dup == <<"use-last">> ->
    %%    do_merge(Maps, #{});
    List = maps_to_list(Maps),
    maps:from_list(List);
'merge'(_Ctx, Maps, #{<<"duplicates">> := {_, Dup}}) ->
    lists:foldl(
        fun(In, Out) ->
            combine_maps(Out, In, Dup)
        end,
        #{},
        lists:reverse(Maps)
    );
'merge'(_, _, _) ->
    ?err('FOJS0005').

%% do_merge([H|T],Acc) ->
%%    do_merge(T,maps:merge(Acc, H));
%% do_merge([],Acc) -> Acc.

%% Returns a map containing all the contents of the supplied map, but with an
%% additional entry, which replaces any existing entry for the same key.
%% map:put(
%%    $map   as map(*),
%%    $key   as xs:anyAtomicType,
%%    $value as item()*) as map(*)
-spec 'put'(
    xq_types:context(),
    xq_types:xq_map(),
    xq_types:xs_anyAtomicType(),
    [] | xq_types:sequence(xq_types:xq_item())
) -> xq_types:xq_map().
'put'(_Ctx, Map, Key, Value) when is_map(Map) ->
    Key1 = xqerl_operators:key_val(Key),
    Map#{Key1 => {Key, Value}};
'put'(Ctx, Map, Key, Value) ->
    case ?VAL(Map) of
        IMap when is_map(IMap) ->
            'put'(Ctx, IMap, Key, Value);
        _ ->
            ?err('XPTY0004')
    end.

%% Returns a map containing all the entries from a supplied map, except
%% those having a specified key.
%% map:remove($map as map(*), $keys as xs:anyAtomicType*) as map(*)
-spec 'remove'(
    xq_types:context(),
    xq_types:xq_map(),
    [] | xq_types:sequence(xq_types:xs_anyAtomicType())
) -> xq_types:xq_map().
'remove'(_Ctx, Map, Keys) when is_map(Map) ->
    UKeyList = lists:usort([xqerl_operators:key_val(K) || K <- xqerl_seq3:to_list(Keys)]),
    lists:foldl(
        fun(K, M) ->
            maps:remove(K, M)
        end,
        Map,
        UKeyList
    );
'remove'(Ctx, Map, Keys) ->
    case ?VAL(Map) of
        IMap when is_map(IMap) ->
            'remove'(Ctx, IMap, Keys);
        _ ->
            ?err('XPTY0004')
    end.

%% Returns the number of entries in the supplied map.
%% map:size($map as map(*)) as xs:integer
-spec 'size'(
    xq_types:context(),
    xq_types:xq_map()
) -> xq_types:xs_integer().
'size'(_Ctx, Map) when is_map(Map) ->
    maps:size(Map);
'size'(Ctx, Map) ->
    case ?VAL(Map) of
        IMap when is_map(IMap) ->
            'size'(Ctx, Map);
        _ ->
            ?err('XPTY0004')
    end.

combine_maps(Map1, Map2, _Any) when erlang:map_size(Map2) == 0 ->
    Map1;
combine_maps(Map1, Map2, _Any) when erlang:map_size(Map1) == 0 ->
    Map2;
combine_maps(Map1, Map2, <<"use-first">>) ->
    Lists = lists:append([maps:to_list(M) || M <- [Map1, Map2]]),
    maps:from_list(Lists);
combine_maps(Map1, Map2, <<"use-any">>) ->
    Lists = lists:append([maps:to_list(M) || M <- [Map1, Map2]]),
    maps:from_list(Lists);
combine_maps(Map1, Map2, <<"reject">>) ->
    case maps:size(maps:with(maps:keys(Map2), Map1)) of
        0 ->
            maps:merge(Map2, Map1);
        _ ->
            ?err('FOJS0003')
    end;
combine_maps(Map1, Map2, <<"combine">>) ->
    F = fun(K, V, M) ->
        case maps:is_key(K, M) of
            false ->
                maps:put(K, V, M);
            _ ->
                Ov = maps:get(K, M),
                Ov1 = element(2, Ov),
                Ov2 = element(2, V),
                Ov3 = {element(1, V), vconcat(Ov2, Ov1)},
                maps:update(K, Ov3, M)
        end
    end,
    maps:fold(F, Map1, Map2);
combine_maps(_, _, O) ->
    ?dbg("Options", O),
    ?err('FOJS0005').

vconcat(V1, V2) when is_list(V1), is_list(V2) ->
    V1 ++ V2;
vconcat(V1, V2) when is_list(V2) ->
    [V1 | V2];
vconcat(V1, V2) when is_list(V1) ->
    V1 ++ [V2];
vconcat(V1, V2) ->
    [V1, V2].

% used in deep-equal
-spec equal(
    xq_types:xq_map(),
    xq_types:xq_map()
) -> boolean().
equal(Map1, Map2) ->
    Sz1 = ?MODULE:size([], Map1),
    Sz2 = ?MODULE:size([], Map2),
    case Sz1 =:= Sz2 of
        true ->
            K1 = keys([], Map1),
            F = fun(K) ->
                V1 = ?MODULE:get([], Map1, K),
                V2 = ?MODULE:get([], Map2, K),
                xqerl_operators:equal(V1, V2)
            end,
            lists:all(F, K1);
        false ->
            false
    end.

% used in unary lookup
-spec values(xq_types:xq_map()) -> list([] | xq_types:sequence(xq_types:xq_item())).
values(Map) ->
    [V || {_, V} <- maps:values(Map)].

% used in unary lookup and for-each
-spec get_matched(
    xq_types:xq_map(),
    list(xq_types:xs_anyAtomicType())
) -> list([] | xq_types:sequence(xq_types:xq_item())).
get_matched(Map, Keys) when is_map(Map) ->
    lists:map(
        fun(Key) ->
            case maps:find(xqerl_operators:key_val(Key), Map) of
                error ->
                    [];
                {ok, {_, V}} ->
                    V
            end
        end,
        Keys
    ).

-spec construct(
    _,
    list({xq_types:xs_anyAtomicType(), [] | xq_types:sequence(xq_types:xq_item())})
) -> xq_types:xq_map().
construct(_, KeyValList) ->
    lists:foldl(
        fun({Key, Val}, Map) ->
            Key1 = xqerl_operators:key_val(Key),
            case maps:is_key(Key1, Map) of
                true ->
                    % no duplicates on construct
                    ?err('XQDY0137');
                _ ->
                    Map#{Key1 => {Key, Val}}
            end
        end,
        #{},
        KeyValList
    ).
