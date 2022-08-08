% Copyright (c) 2019-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% @doc Implementation of the "http://xqerl.org/modules/random" namespace.

-module(xqerl_mod_rand).

-include("xqerl.hrl").

-define(MAXINT, (1 bsl 64) - 1).

-define(NS, <<"http://xqerl.org/modules/random">>).
-define(PX, <<"random">>).
-define(XL, <<"http://xqerl.org/xquery">>).
-define(ND, <<"non-deterministic">>).
-define(NDA, {annotation, {qname, ?XL, <<>>, ?ND}, []}).

-functions([
    {{qname, ?NS, ?PX, <<"double">>}, {seqType, 'xs:double', one}, [?NDA], {'double', 1}, 0, []},
    {{qname, ?NS, ?PX, <<"integer">>}, {seqType, 'xs:integer', one}, [?NDA], {'integer', 1}, 0, []},
    {{qname, ?NS, ?PX, <<"integer">>}, {seqType, 'xs:integer', one}, [?NDA], {'integer', 2}, 1, [
        {seqType, 'xs:integer', one}
    ]},
    {
        {qname, ?NS, ?PX, <<"seeded-double">>},
        {seqType, 'xs:double', zero_or_many},
        [],
        {'seeded_double', 3},
        2,
        [
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"seeded-integer">>},
        {seqType, 'xs:integer', zero_or_many},
        [],
        {'seeded_integer', 3},
        2,
        [
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"seeded-integer">>},
        {seqType, 'xs:integer', zero_or_many},
        [],
        {'seeded_integer', 4},
        3,
        [
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"gaussian">>},
        {seqType, 'xs:double', zero_or_many},
        [?NDA],
        {'gaussian', 2},
        1,
        [{seqType, 'xs:integer', one}]
    },
    {
        {qname, ?NS, ?PX, <<"seeded-permutation">>},
        {seqType, item, zero_or_many},
        [?NDA],
        {'seeded_permutation', 3},
        2,
        [
            {seqType, 'xs:integer', one},
            {seqType, item, zero_or_many}
        ]
    },
    {{qname, ?NS, ?PX, <<"uuid">>}, {seqType, 'xs:string', one}, [?NDA], {'uuid', 1}, 0, []}
]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    double/1,
    integer/1,
    integer/2,
    seeded_double/3,
    seeded_integer/3,
    seeded_integer/4,
    gaussian/2,
    seeded_permutation/3,
    uuid/1
]).

uuid(_) ->
    quickrand:seed(),
    uuid:uuid_to_string(uuid:get_v4_urandom(), binary_standard).

double(_) -> rand:uniform().

integer(_) -> rand:uniform(?MAXINT) - 1.

integer(_, 1) ->
    0;
integer(_, Max) when is_integer(Max), Max >= 2 ->
    rand:uniform(Max) - 1;
integer(_, Max) when is_integer(Max), Max < 2 ->
    throw({error, negative});
integer(Ctx, Max) ->
    Nm = cast_to_integer(Max),
    integer(Ctx, Nm).

seeded_double(_, _, 0) ->
    [];
seeded_double(_, SeedInt, CntInt) when is_integer(SeedInt), is_integer(CntInt), CntInt > 0 ->
    State = rand:seed(exsp, {SeedInt, SeedInt, SeedInt}),
    seeded_double_1(State, CntInt);
seeded_double(_, _, CntInt) when is_integer(CntInt), CntInt < 0 ->
    throw({error, negative});
seeded_double(Ctx, SeedInt, CntInt) ->
    Ns = cast_to_integer(SeedInt),
    Nc = cast_to_integer(CntInt),
    seeded_double(Ctx, Ns, Nc).

seeded_double_1(_, 0) ->
    [];
seeded_double_1(State, Cnt) ->
    {Dbl, NewState} = rand:uniform_s(State),
    [Dbl | seeded_double_1(NewState, Cnt - 1)].

seeded_integer(Ctx, SeedInt, CntInt) -> seeded_integer(Ctx, SeedInt, CntInt, ?MAXINT).

seeded_integer(_, _, 0, _) ->
    [];
seeded_integer(_, SeedInt, CntInt, MaxInt) when
    is_integer(SeedInt), is_integer(CntInt), is_integer(MaxInt), CntInt > 0, MaxInt >= 1
->
    State = rand:seed(exsp, {SeedInt, SeedInt, SeedInt}),
    seeded_integer_1(State, MaxInt, CntInt);
seeded_integer(_, _, CntInt, _) when is_integer(CntInt), CntInt < 0 ->
    throw({error, negative});
seeded_integer(_, _, _, MaxInt) when is_integer(MaxInt), MaxInt < 1 ->
    throw({error, negative});
seeded_integer(Ctx, SeedInt, CntInt, MaxInt) ->
    Ns = cast_to_integer(SeedInt),
    Nc = cast_to_integer(CntInt),
    Nm = cast_to_integer(MaxInt),
    seeded_integer(Ctx, Ns, Nc, Nm).

seeded_integer_1(_, _, 0) ->
    [];
seeded_integer_1(State, Max, Cnt) ->
    {Dbl, NewState} = rand:uniform_s(Max, State),
    [Dbl | seeded_integer_1(NewState, Max, Cnt - 1)].

gaussian(_, CntInt) when is_integer(CntInt), CntInt > 0 ->
    gaussian_1(CntInt).

gaussian_1(0) -> [];
gaussian_1(Cnt) -> [rand:normal() | gaussian_1(Cnt - 1)].

seeded_permutation(_, _, List) when not is_list(List) ->
    [List];
seeded_permutation(_, SeedInt, List) when is_integer(SeedInt) ->
    State = rand:seed(exsp, {SeedInt, SeedInt, SeedInt}),
    Ints = seeded_integer_1(State, ?MAXINT, length(List)),
    Zipped = lists:zip(Ints, List),
    [V || {_, V} <- lists:sort(Zipped)].

%% ?err('XPTY0004')
%%

%% ====================================================================
%% Internal functions
%% ====================================================================
cast_to_integer(Val) ->
    case xqerl_types:cast_as(Val, 'xs:integer') of
        Int when is_integer(Int) -> Int;
        _ -> ?err('XPTY0004')
    end.
