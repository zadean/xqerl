%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2019 Zachary N. Dean  All Rights Reserved.
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

%% @doc Implementation of the "http://expath.org/ns/binary" namespace.

-module(xqerl_mod_expath_binary).

-include("xqerl.hrl").

-define(NS, <<"http://expath.org/ns/binary">>).
-define(PX, <<"bin">>).

%% 5 Defining 'constants' and conversions
-export([
    hex/2,
    bin/2,
    octal/2,
    to_octets/2,
    from_octets/2
]).

%% 6 Basic operations
-export([
    length/2,
    part/3, part/4,
    join/2,
    insert_before/4,
    pad_left/3, pad_left/4,
    pad_right/3, pad_right/4,
    find/4
]).

%% 7 Text decoding and encoding
-export([
    decode_string/2, decode_string/3, decode_string/4, decode_string/5,
    encode_string/2, encode_string/3
]).

%% 8 Packing and unpacking of encoded numeric values
-export([
    pack_double/2, pack_double/3,
    pack_float/2, pack_float/3,
    pack_integer/3, pack_integer/4,
    unpack_double/3, unpack_double/4,
    unpack_float/3, unpack_float/4,
    unpack_integer/4, unpack_integer/5,
    unpack_unsigned_integer/4, unpack_unsigned_integer/5
]).

%% 9 Bitwise operations
-export([
    or_/3,
    xor_/3,
    and_/3,
    not_/2,
    shift/3
]).

-'module-namespace'({?NS, ?PX}).

-namespaces([]).

-variables([]).

-functions([
    %% 5 Defining 'constants' and conversions
    {{qname, ?NS, ?PX, <<"hex">>}, {seqType, 'xs:base64Binary', zero_or_one}, [], {hex, 2}, 1, [
        {seqType, 'xs:string', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"bin">>}, {seqType, 'xs:base64Binary', zero_or_one}, [], {bin, 2}, 1, [
        {seqType, 'xs:string', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"octal">>}, {seqType, 'xs:base64Binary', zero_or_one}, [], {octal, 2}, 1, [
            {seqType, 'xs:string', zero_or_one}
        ]},
    {{qname, ?NS, ?PX, <<"to-octets">>}, {seqType, 'xs:integer', zero_or_many}, [], {to_octets, 2},
        1, [{seqType, 'xs:base64Binary', one}]},
    {{qname, ?NS, ?PX, <<"from-octets">>}, {seqType, 'xs:base64Binary', one}, [], {from_octets, 2},
        1, [{seqType, 'xs:integer', zero_or_many}]},
    %% 6 Basic operations
    {{qname, ?NS, ?PX, <<"length">>}, {seqType, 'xs:integer', one}, [], {length, 2}, 1, [
        {seqType, 'xs:base64Binary', one}
    ]},
    {{qname, ?NS, ?PX, <<"part">>}, {seqType, 'xs:base64Binary', zero_or_one}, [], {part, 3}, 2, [
        {seqType, 'xs:base64Binary', zero_or_one},
        {seqType, 'xs:integer', one}
    ]},
    {{qname, ?NS, ?PX, <<"part">>}, {seqType, 'xs:base64Binary', zero_or_one}, [], {part, 4}, 3, [
        {seqType, 'xs:base64Binary', zero_or_one},
        {seqType, 'xs:integer', one},
        {seqType, 'xs:integer', one}
    ]},
    {{qname, ?NS, ?PX, <<"join">>}, {seqType, 'xs:base64Binary', one}, [], {join, 2}, 1, [
        {seqType, 'xs:base64Binary', zero_or_many}
    ]},
    {{qname, ?NS, ?PX, <<"insert-before">>}, {seqType, 'xs:base64Binary', zero_or_one}, [],
        {insert_before, 4}, 3, [
            {seqType, 'xs:base64Binary', zero_or_one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:base64Binary', zero_or_one}
        ]},
    {{qname, ?NS, ?PX, <<"pad-left">>}, {seqType, 'xs:base64Binary', zero_or_one}, [],
        {pad_left, 3}, 2, [
            {seqType, 'xs:base64Binary', zero_or_one},
            {seqType, 'xs:integer', one}
        ]},
    {{qname, ?NS, ?PX, <<"pad-left">>}, {seqType, 'xs:base64Binary', zero_or_one}, [],
        {pad_left, 4}, 3, [
            {seqType, 'xs:base64Binary', zero_or_one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one}
        ]},
    {{qname, ?NS, ?PX, <<"pad-right">>}, {seqType, 'xs:base64Binary', zero_or_one}, [],
        {pad_right, 3}, 2, [
            {seqType, 'xs:base64Binary', zero_or_one},
            {seqType, 'xs:integer', one}
        ]},
    {{qname, ?NS, ?PX, <<"pad-right">>}, {seqType, 'xs:base64Binary', zero_or_one}, [],
        {pad_right, 4}, 3, [
            {seqType, 'xs:base64Binary', zero_or_one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one}
        ]},
    {{qname, ?NS, ?PX, <<"find">>}, {seqType, 'xs:integer', zero_or_one}, [], {find, 4}, 3, [
        {seqType, 'xs:base64Binary', zero_or_one},
        {seqType, 'xs:integer', one},
        {seqType, 'xs:base64Binary', one}
    ]},
    %% 7 Text decoding and encoding
    {{qname, ?NS, ?PX, <<"decode-string">>}, {seqType, 'xs:string', zero_or_one}, [],
        {decode_string, 2}, 1, [{seqType, 'xs:base64Binary', zero_or_one}]},
    {{qname, ?NS, ?PX, <<"decode-string">>}, {seqType, 'xs:string', zero_or_one}, [],
        {decode_string, 3}, 2, [
            {seqType, 'xs:base64Binary', zero_or_one},
            {seqType, 'xs:string', one}
        ]},
    {{qname, ?NS, ?PX, <<"decode-string">>}, {seqType, 'xs:string', zero_or_one}, [],
        {decode_string, 4}, 3, [
            {seqType, 'xs:base64Binary', zero_or_one},
            {seqType, 'xs:string', one},
            {seqType, 'xs:integer', one}
        ]},
    {{qname, ?NS, ?PX, <<"decode-string">>}, {seqType, 'xs:string', zero_or_one}, [],
        {decode_string, 5}, 4, [
            {seqType, 'xs:base64Binary', zero_or_one},
            {seqType, 'xs:string', one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one}
        ]},
    {{qname, ?NS, ?PX, <<"encode-string">>}, {seqType, 'xs:base64Binary', zero_or_one}, [],
        {encode_string, 2}, 1, [{seqType, 'xs:string', zero_or_one}]},
    {{qname, ?NS, ?PX, <<"encode-string">>}, {seqType, 'xs:base64Binary', zero_or_one}, [],
        {encode_string, 3}, 2, [
            {seqType, 'xs:string', zero_or_one},
            {seqType, 'xs:string', one}
        ]},
    %% 8 Packing and unpacking of encoded numeric values
    {{qname, ?NS, ?PX, <<"pack-double">>}, {seqType, 'xs:base64Binary', one}, [], {pack_double, 2},
        1, [{seqType, 'xs:double', one}]},
    {{qname, ?NS, ?PX, <<"pack-double">>}, {seqType, 'xs:base64Binary', one}, [], {pack_double, 3},
        2, [
            {seqType, 'xs:double', one},
            {seqType, 'xs:string', one}
        ]},
    {{qname, ?NS, ?PX, <<"pack-float">>}, {seqType, 'xs:base64Binary', one}, [], {pack_float, 2}, 1,
        [{seqType, 'xs:float', one}]},
    {{qname, ?NS, ?PX, <<"pack-float">>}, {seqType, 'xs:base64Binary', one}, [], {pack_float, 3}, 2,
        [
            {seqType, 'xs:float', one},
            {seqType, 'xs:string', one}
        ]},
    {{qname, ?NS, ?PX, <<"pack-integer">>}, {seqType, 'xs:base64Binary', one}, [],
        {pack_integer, 3}, 2, [
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one}
        ]},
    {{qname, ?NS, ?PX, <<"pack-integer">>}, {seqType, 'xs:base64Binary', one}, [],
        {pack_integer, 4}, 3, [
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:string', one}
        ]},
    {{qname, ?NS, ?PX, <<"unpack-double">>}, {seqType, 'xs:double', zero_or_one}, [],
        {unpack_double, 3}, 2, [
            {seqType, 'xs:base64Binary', one},
            {seqType, 'xs:integer', one}
        ]},
    {{qname, ?NS, ?PX, <<"unpack-double">>}, {seqType, 'xs:double', zero_or_one}, [],
        {unpack_double, 4}, 3, [
            {seqType, 'xs:base64Binary', one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:string', one}
        ]},
    {{qname, ?NS, ?PX, <<"unpack-float">>}, {seqType, 'xs:float', one}, [], {unpack_float, 3}, 2, [
        {seqType, 'xs:base64Binary', one},
        {seqType, 'xs:integer', one}
    ]},
    {{qname, ?NS, ?PX, <<"unpack-float">>}, {seqType, 'xs:float', one}, [], {unpack_float, 4}, 3, [
        {seqType, 'xs:base64Binary', one},
        {seqType, 'xs:integer', one},
        {seqType, 'xs:string', one}
    ]},
    {{qname, ?NS, ?PX, <<"unpack-integer">>}, {seqType, 'xs:integer', one}, [], {unpack_integer, 4},
        3, [
            {seqType, 'xs:base64Binary', one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one}
        ]},
    {{qname, ?NS, ?PX, <<"unpack-integer">>}, {seqType, 'xs:integer', one}, [], {unpack_integer, 5},
        4, [
            {seqType, 'xs:base64Binary', one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:string', one}
        ]},
    {{qname, ?NS, ?PX, <<"unpack-unsigned-integer">>}, {seqType, 'xs:integer', one}, [],
        {unpack_unsigned_integer, 4}, 3, [
            {seqType, 'xs:base64Binary', one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one}
        ]},
    {{qname, ?NS, ?PX, <<"unpack-unsigned-integer">>}, {seqType, 'xs:integer', one}, [],
        {unpack_unsigned_integer, 5}, 4, [
            {seqType, 'xs:base64Binary', one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:string', one}
        ]},
    %% 9 Bitwise operations
    {{qname, ?NS, ?PX, <<"or">>}, {seqType, 'xs:base64Binary', zero_or_one}, [], {or_, 3}, 2, [
        {seqType, 'xs:base64Binary', zero_or_one},
        {seqType, 'xs:base64Binary', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"xor">>}, {seqType, 'xs:base64Binary', zero_or_one}, [], {xor_, 3}, 2, [
        {seqType, 'xs:base64Binary', zero_or_one},
        {seqType, 'xs:base64Binary', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"and">>}, {seqType, 'xs:base64Binary', zero_or_one}, [], {and_, 3}, 2, [
        {seqType, 'xs:base64Binary', zero_or_one},
        {seqType, 'xs:base64Binary', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"not">>}, {seqType, 'xs:base64Binary', zero_or_one}, [], {not_, 2}, 1, [
        {seqType, 'xs:base64Binary', zero_or_one}
    ]},
    {{qname, ?NS, ?PX, <<"shift">>}, {seqType, 'xs:base64Binary', zero_or_one}, [], {shift, 3}, 2, [
        {seqType, 'xs:base64Binary', zero_or_one},
        {seqType, 'xs:integer', one}
    ]}
]).

-define(bin(D), #xqAtomicValue{type = 'xs:base64Binary', value = D}).
-define(flt(D), #xqAtomicValue{type = 'xs:float', value = D}).

%% 5 Defining 'constants' and conversions
%% Users of the package may need to define binary 'constants' within their code
%% or examine the basic octets. The following functions support these:
%%
%% 5.1 bin:hex
%% Summary
%%    Returns the binary form of the set of octets written as a sequence of
%%    (ASCII) hex digits ([0-9A-Fa-f]).
%% Signature
%%    bin:hex($in as xs:string?) as xs:base64Binary?
%% Rules
%%    $in will be effectively zero-padded from the left to generate an integral
%%    number of octets, i.e. an even number of hexadecimal digits. If $in is an
%%    empty string, then the result will be a xs:base64Binary with no embedded
%%    data.
%%    Byte order in the result follows (per-octet) character order in the string.
%%    If the value of $in is the empty sequence, the function returns an empty
%%    sequence.
%% Error Conditions
%%    [bin:non-numeric-character] is raised if $in cannot be parsed as a
%%    hexadecimal number.
%% Notes
%%    When the input string has an even number of characters, this function
%%    behaves similarly to the double cast xs:base64Binary(xs:hexBinary($string)).
%% Examples
%%    bin:hex('11223F4E') => "ESI/Tg=="
%%    bin:hex('1223F4E') => "ASI/Tg=="
hex(_, []) ->
    [];
hex(_, String) when is_binary(String) ->
    Pad = binary:copy(<<"0">>, byte_size(String) rem 2),
    String1 = <<Pad/binary, String/binary>>,
    try
        <<
            <<(list_to_integer([B1], 16)):4>>
            || <<B1>> <= String1
        >>
    of
        Bin ->
            ?bin(Bin)
    catch
        _:_ ->
            do_throw('non-numeric-character')
    end;
hex(C, S) ->
    hex(C, xqerl_types:cast_as(S, 'xs:string')).

%% 5.2 bin:bin
%% Summary
%%    Returns the binary form of the set of octets written as a sequence of
%%    (8-wise) (ASCII) binary digits ([01]).
%% Signature
%%    bin:bin($in as xs:string?) as xs:base64Binary?
%% Rules
%%    $in will be effectively zero-padded from the left to generate an integral
%%    number of octets. If $in is an empty string, then the result will be a
%%    xs:base64Binary with no embedded data.
%%    Byte order in the result follows (per-octet) character order in the string.
%%    If the value of $in is the empty sequence, the function returns an empty
%%    sequence.
%% Error Conditions
%%    [bin:non-numeric-character] is raised if $in cannot be parsed as a binary
%%    number.
%% Examples
%%    bin:bin('1101000111010101') => "0dU="
%%    bin:bin('1000111010101') => "EdU="
bin(_, []) ->
    [];
bin(_, String) when is_binary(String) ->
    Rem =
        case byte_size(String) rem 8 of
            0 -> 0;
            V -> 8 - V
        end,
    Pad = binary:copy(<<"0">>, Rem),
    String1 = <<Pad/binary, String/binary>>,
    try
        <<
            <<(list_to_integer([B1, B2, B3, B4, B5, B6, B7, B8], 2)):8>>
            || %<< <<(list_to_integer([B1,B2,B3,B4,B5,B6,B7,B8], 2))>>
               <<B1, B2, B3, B4, B5, B6, B7, B8>> <= String1
        >>
    of
        Bin ->
            ?bin(Bin)
    catch
        _:_ ->
            do_throw('non-numeric-character')
    end;
bin(C, S) ->
    bin(C, xqerl_types:cast_as(S, 'xs:string')).

%% 5.3 bin:octal
%% Summary
%%    Returns the binary form of the set of octets written as a sequence of
%%    (ASCII) octal digits ([0-7]).
%% Signature
%%    bin:octal($in as xs:string?) as xs:base64Binary?
%% Rules
%%    $in will be effectively zero-padded from the left to generate an integral
%%    number of octets. If $in is an empty string, then the result will be a
%%    xs:base64Binary with no embedded data.
%%    Byte order in the result follows (per-octet) character order in the string.
%%    If the value of $in is the empty sequence, the function returns an empty
%%    sequence.
%% Error Conditions
%%    [bin:non-numeric-character] is raised if $in cannot be parsed as an octal
%%    number.
%% Examples
%%    bin:octal('11223047') => "JSYn"
octal(_, []) ->
    [];
octal(_, String) when is_binary(String) ->
    Bitstring = <<
        if
            C >= 48, C =< 55 ->
                D = C - $0,
                <<D:3>>;
            true ->
                do_throw('non-numeric-character')
        end
        || <<C>> <= String
    >>,
    case bit_size(Bitstring) rem 8 of
        0 ->
            ?bin(Bitstring);
        P ->
            Pad = 8 - P,
            ?bin(<<0:Pad, Bitstring/bitstring>>)
    end;
octal(C, S) ->
    octal(C, xqerl_types:cast_as(S, 'xs:string')).

%% 5.4 bin:to-octets
%% Summary
%%    Returns binary data as a sequence of octets.
%% Signature
%%    bin:to-octets($in as xs:base64Binary) as xs:integer*
%% Rules
%%    If $in is a zero length binary data then the empty sequence is returned.
%%    Octets are returned as integers from 0 to 255.
to_octets(_, ?bin(Str)) ->
    [C || <<C>> <= Str];
to_octets(C, S) ->
    to_octets(C, xqerl_types:cast_as(S, 'xs:base64Binary')).

%% 5.5 bin:from-octets
%% Summary
%%    Converts a sequence of octets into binary data.
%% Signature
%%    bin:from-octets($in as xs:integer*) as xs:base64Binary
%% Rules
%%    Octets are integers from 0 to 255.
%%    If the value of $in is the empty sequence, the function returns
%%    zero-sized binary data.
%% Error Conditions
%%    [bin:octet-out-of-range] is raised if one of the octets lies outside
%%    the range 0 – 255.
from_octets(_, []) ->
    ?bin(<<>>);
from_octets(_, List) when is_list(List) ->
    Check = fun
        (I) when is_integer(I), I >= 0, I =< 255 ->
            I;
        (I) when is_integer(I) ->
            do_throw('octet-out-of-range');
        (O) ->
            case xqerl_types:cast_as(O, 'xs:integer') of
                I when is_integer(I), I >= 0, I =< 255 ->
                    I;
                _ ->
                    do_throw('octet-out-of-range')
            end
    end,
    List1 = lists:map(Check, List),
    ?bin(list_to_binary(List1));
from_octets(C, S) ->
    from_octets(C, [S]).

%% 6 Basic operations

%% 6.1 bin:length
%% Summary
%%    The bin:length function returns the size of binary data in octets.
%% Signature
%%    bin:length($in as xs:base64Binary) as xs:integer
%% Rules
%%    Returns the size of binary data in octets.
length(_, ?bin(Str)) ->
    erlang:byte_size(Str);
length(C, S) ->
    length(C, xqerl_types:cast_as(S, 'xs:base64Binary')).

%% 6.2 bin:part
%% Summary
%%    The bin:part function returns a specified part of binary data.
%% Signatures
%%    bin:part($in     as xs:base64Binary?,
%%             $offset as xs:integer) as xs:base64Binary?
%%    bin:part($in     as xs:base64Binary?,
%%             $offset as xs:integer,
%%             $size   as xs:integer) as xs:base64Binary?
%% Rules
%%    Returns a section of binary data starting at the $offset octet. If $size
%%    is defined, the size of the returned binary data is $size octets. If
%%    $size is absent, all remaining data from $offset is returned.
%%    The $offset is zero based.
%%    The values of $offset and $size must be non-negative integers.
%%    It is a dynamic error if $offset + $size is larger than the size of the
%%    binary data in $in.
%%    If the value of $in is the empty sequence, the function returns an empty
%%    sequence.
%% Error Conditions
%%    [bin:index-out-of-range] is raised if $offset is negative or $offset +
%%       $size is larger than the size of the binary data of $in.
%%    [bin:negative-size] is raised if $size is negative.
%% Notes
%%    Note that fn:subsequence() and fn:substring() both use xs:double for
%%    offset and size – this is a legacy from XPath 1.0.
%% Examples
%%    Testing whether $data variable starts with binary content consistent
%%    with a PDF file:
%%       bin:part($data, 0, 4) eq bin:hex("25504446")
%%    25504446 is the magic number for PDF files: it is the US-ASCII encoded
%%    hexadecimal value for %PDF. 7.2 bin:encode-string can be used to convert
%%    a string to its binary representation.
part(_, [], _) ->
    [];
part(_, ?bin(Bin), Off) when is_integer(Off), Off >= 0 ->
    case Bin of
        <<_:Off/binary, Part/binary>> ->
            ?bin(Part);
        <<_:Off/binary>> ->
            ?bin(<<>>);
        _ ->
            do_throw('index-out-of-range')
    end;
part(_, ?bin(_), Off) when is_integer(Off) ->
    do_throw('index-out-of-range');
part(C, S, I) ->
    part(
        C,
        xqerl_types:cast_as(S, 'xs:base64Binary'),
        xqerl_types:cast_as(I, 'xs:integer')
    ).

part(_, ?bin(_), _, Size) when is_integer(Size), Size < 0 ->
    do_throw('negative-size');
part(_, ?bin(_), Off, _) when is_integer(Off), Off < 0 ->
    do_throw('index-out-of-range');
part(_, ?bin(_), _, 0) ->
    ?bin(<<>>);
part(_, [], _, _) ->
    [];
part(_, ?bin(Bin), Off, Size) when is_integer(Off), is_integer(Size) ->
    case Bin of
        <<_:Off/binary, Part:Size/binary, _/binary>> ->
            ?bin(Part);
        <<_:Off/binary, Part:Size/binary>> ->
            ?bin(Part);
        _ ->
            do_throw('index-out-of-range')
    end;
part(C, B, O, S) ->
    part(
        C,
        xqerl_types:cast_as(B, 'xs:base64Binary'),
        xqerl_types:cast_as(O, 'xs:integer'),
        xqerl_types:cast_as(S, 'xs:integer')
    ).

%% 6.3 bin:join
%% Summary
%%    Returns the binary data created by concatenating the binary data items in
%%    a sequence.
%% Signature
%%    bin:join($in as xs:base64Binary*) as xs:base64Binary
%% Rules
%%    The function returns an xs:base64Binary created by concatenating
%%    the items in the sequence $in, in order.
%%    If the value of $in is the empty sequence, the function returns a binary
%%    item containing no data bytes.
join(_, []) ->
    ?bin(<<>>);
join(_, List) when is_list(List) ->
    F = fun
        (?bin(I)) ->
            I;
        (O) ->
            ?bin(I) = xqerl_types:cast_as(O, 'xs:base64Binary'),
            I
    end,
    ?bin(iolist_to_binary(lists:map(F, List)));
join(C, L) ->
    join(C, [L]).

%% 6.4 bin:insert-before
%% Summary
%%    The bin:insert-before function inserts additional binary data at a given
%%    point in other binary data.
%% Signature
%%    bin:insert-before($in     as xs:base64Binary?,
%%                      $offset as xs:integer,
%%                      $extra  as xs:base64Binary?) as xs:base64Binary?
%% Rules
%%    Returns binary data consisting sequentially of the data from $in upto
%%    and including the $offset - 1 octet, followed by all the data from
%%    $extra, and then the remaining data from $in.
%%    The $offset is zero based.
%%    The value of $offset must be a non-negative integer.
%%    If the value of $in is the empty sequence, the function returns an empty
%%    sequence.
%%    If the value of $extra is the empty sequence, the function returns $in.
%%    If $offset eq 0 the result is the binary concatenation of $extra and $in,
%%    i.e. equivalent to bin:join(($extra,$in)).
%% Error Conditions
%%    [bin:index-out-of-range] is raised if $offset is negative or $offset is
%%       larger than the size of the binary data of $in.
%% Notes
%%    Note that when $offset gt 0 and $offset lt bin:size($in) the function is
%%    equivalent to:
%%       bin:join((bin:part($in,0,$offset - 1),$extra,bin:part($in,$offset)))
insert_before(_, [], _, _) ->
    [];
insert_before(_, _, Off, _) when is_integer(Off), Off < 0 ->
    do_throw('index-out-of-range');
insert_before(_, ?bin(I), Off, _) when is_integer(Off), Off > byte_size(I) ->
    do_throw('index-out-of-range');
insert_before(_, ?bin(_) = In, _, []) ->
    In;
insert_before(_, ?bin(I), Off, ?bin(E)) when Off == byte_size(I) ->
    ?bin(<<I/binary, E/binary>>);
insert_before(_, ?bin(I), 0, ?bin(E)) ->
    ?bin(<<E/binary, I/binary>>);
insert_before(_, ?bin(I), O, ?bin(E)) when is_integer(O) ->
    <<P:O/binary, Rest/binary>> = I,
    ?bin(<<P/binary, E/binary, Rest/binary>>);
insert_before(C, I, O, E) ->
    insert_before(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary'),
        xqerl_types:cast_as(O, 'xs:integer'),
        xqerl_types:cast_as(E, 'xs:base64Binary')
    ).

%% 6.5 bin:pad-left
%% Summary
%%    Returns the binary data created by padding $in with $size octets from the
%%    left. The padding octet values are $octet or zero if omitted.
%% Signatures
%%    bin:pad-left($in   as xs:base64Binary?,
%%                 $size as xs:integer) as xs:base64Binary?
%%    bin:pad-left($in    as xs:base64Binary?,
%%                 $size  as xs:integer,
%%                 $octet as xs:integer) as xs:base64Binary?
%% Rules
%%    The function returns an xs:base64Binary created by padding the input
%%    with $size octets in front of the input. If $octet is specified, the
%%    padding octets each have that value, otherwise they are initialized to 0.
%%    $size must be a non-negative integer.
%%    If the value of $in is the empty sequence, the function returns an empty
%%    sequence.
%% Error Conditions
%%    [bin:negative-size] is raised if $size is negative.
%%    [bin:octet-out-of-range] is raised if $octet lies outside the range 0–255.
%% Notes
%%    Padding with a non-zero octet value can also be accomplished by the
%%    XPath expressions:
%%       bin:join((bin:from-octets((1 to $pad-length) ! $pad-octet), $in)) [XPath 3.0]
%%       bin:join((bin:from-octets(for $ i in (1 to $pad-length) return $pad-octet), $in)) [XPath 2.0]
pad_left(C, I, S) ->
    pad_left(C, I, S, 0).

pad_left(_, [], _, _) ->
    [];
pad_left(_, _, S, _) when is_integer(S), S < 0 ->
    do_throw('negative-size');
pad_left(_, _, _, O) when is_integer(O) andalso O < 0; is_integer(O) andalso O > 255 ->
    do_throw('octet-out-of-range');
pad_left(_, ?bin(I), S, O) when is_integer(S), is_integer(O) ->
    Pad = binary:copy(<<O>>, S),
    ?bin(<<Pad/binary, I/binary>>);
pad_left(C, I, S, O) ->
    pad_left(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary'),
        xqerl_types:cast_as(S, 'xs:integer'),
        xqerl_types:cast_as(O, 'xs:integer')
    ).

%% 6.6 bin:pad-right
%% Summary
%%    Returns the binary data created by padding $in with $size blank octets
%%    from the right. The padding octet values are $octet or zero if omitted.
%% Signatures
%%    bin:pad-right($in as xs:base64Binary?,
%%                  $size as xs:integer) as xs:base64Binary?
%%    bin:pad-right($in    as xs:base64Binary?,
%%                  $size  as xs:integer,
%%                  $octet as xs:integer) as xs:base64Binary?
%% Rules
%%    The function returns an xs:base64Binary created by padding the input
%%    with $size blank octets after the input. If $octet is specified, the
%%    padding octets each have that value, otherwise they are initialized to 0.
%%    $size must be a non-negative integer.
%%    If the value of $in is the empty sequence, the function returns an empty
%%    sequence.
%% Error Conditions
%%    [bin:negative-size] is raised if $size is negative.
%%    [bin:octet-out-of-range] is raised if $octet lies outside the range 0–255.
%% Notes
%%    Padding with a non-zero octet value can also be accomplished by the
%%    XPath expressions:
%%       bin:join(($in,bin:from-octets((1 to $pad-length) ! $pad-octet)))  [XPath 3.0]
%%       bin:join(($in,bin:from-octets(for $ i in (1 to $pad-length) return $pad-octet)))  [XPath 2.0]
pad_right(C, I, S) ->
    pad_right(C, I, S, 0).

pad_right(_, [], _, _) ->
    [];
pad_right(_, _, S, _) when is_integer(S), S < 0 ->
    do_throw('negative-size');
pad_right(_, _, _, O) when is_integer(O) andalso O < 0; is_integer(O) andalso O > 255 ->
    do_throw('octet-out-of-range');
pad_right(_, ?bin(I), S, O) when is_integer(S), is_integer(O) ->
    Pad = binary:copy(<<O>>, S),
    ?bin(<<I/binary, Pad/binary>>);
pad_right(C, I, S, O) ->
    pad_right(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary'),
        xqerl_types:cast_as(S, 'xs:integer'),
        xqerl_types:cast_as(O, 'xs:integer')
    ).

%% 6.7 bin:find
%% Summary
%%    Returns the first location in $in of $search, starting at the $offset
%%    octet.
%% Signature
%%    bin:find($in     as xs:base64Binary?,
%%             $offset as xs:integer,
%%             $search as xs:base64Binary) as xs:integer?
%% Rules
%%    The function returns the first location of the binary search sequence in
%%    the input, or if not found, the empty sequence.
%%    If $search is empty $offset is returned.
%%    The value of $offset must be a non-negative integer.
%%    The $offset is zero based.
%%    The returned location is zero based.
%%    If the value of $in is the empty sequence, the function returns an empty
%%    sequence.
%% Error Conditions
%%    [bin:index-out-of-range] is raised if $offset is negative or $offset is
%%       larger than the size of the binary data of $in.
find(_, [], _, _) ->
    [];
find(_, ?bin(I), O, ?bin(<<>>)) when is_integer(O), O =< byte_size(I), O >= 0 ->
    O;
find(_, ?bin(I), O, ?bin(S)) when is_integer(O), O =< byte_size(I), O >= 0 ->
    Opts =
        if
            O == 0 -> [];
            true -> [{scope, {O, byte_size(I) - O}}]
        end,
    case binary:match(I, S, Opts) of
        nomatch ->
            [];
        {Pos, _} ->
            Pos
    end;
find(_, ?bin(_), O, ?bin(_)) when is_integer(O) ->
    do_throw('index-out-of-range');
find(C, I, O, S) ->
    find(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary'),
        xqerl_types:cast_as(O, 'xs:integer'),
        xqerl_types:cast_as(S, 'xs:base64Binary')
    ).

%% 7 Text decoding and encoding

%% 7.1 bin:decode-string
%% Summary
%%    Decodes binary data as a string in a given encoding.
%% Signatures
%%    bin:decode-string($in as xs:base64Binary?) as xs:string?
%%    bin:decode-string($in       as xs:base64Binary?,
%%                      $encoding as xs:string) as xs:string?
%%    bin:decode-string($in       as xs:base64Binary?,
%%                      $encoding as xs:string,
%%                      $offset   as xs:integer) as xs:string?
%%    bin:decode-string($in       as xs:base64Binary?,
%%                      $encoding as xs:string,
%%                      $offset   as xs:integer,
%%                      $size     as xs:integer) as xs:string?
%% Rules
%%    If $offset and $size are provided, the $size octets from $offset are
%%    decoded. If $offset alone is provided, octets from $offset to the end
%%    are decoded, otherwise the entire octet sequence is used.
%%    The $encoding argument is the name of an encoding. The values for this
%%    attribute follow the same rules as for the encoding attribute in an XML
%%    declaration. The only values which every implementation is required to
%%    recognize are utf-8 and utf-16.
%%    If $encoding is ommitted, utf-8 encoding is assumed.
%%    The values of $offset and $size must be non-negative integers.
%%    If the value of $in is the empty sequence, the function returns an empty
%%    sequence.
%%    $offset is zero based.
%% Error Conditions
%%    [bin:index-out-of-range] is raised if $offset is negative or $offset +
%%       $size is larger than the size of the binary data of $in.
%%    [bin:negative-size] is raised if $size is negative.
%%    [bin:unknown-encoding] is raised if $encoding is invalid or not
%%       supported by the implementation.
%%    [bin:conversion-error] is raised if there is an error or malformed input
%%       during decoding the string. Additional information about the error may
%%       be passed through suitable error reporting mechanisms – this is
%%       implementation-dependant.
%% Examples
%%    Testing whether $data variable starts with binary content consistent with
%%    a PDF file:
%%       bin:decode-string($data, 'UTF-8', 0, 4) eq '%PDF'
%%    The first four characters of a PDF file are '%PDF'.
decode_string(_, []) -> [];
decode_string(C, I) -> decode_string(C, I, <<"UTF-8">>).

decode_string(_, [], _) -> [];
decode_string(C, I, E) -> decode_string(C, I, E, 0).

decode_string(_, [], _, _) ->
    [];
decode_string(C, ?bin(B) = I, E, O) when is_integer(O) ->
    decode_string(C, I, E, O, byte_size(B) - O);
decode_string(C, I, E, O) ->
    decode_string(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary'),
        E,
        xqerl_types:cast_as(O, 'xs:integer')
    ).

decode_string(_, [], _, _, _) ->
    [];
decode_string(_, _, _, O, _) when is_integer(O), O < 0 ->
    do_throw('index-out-of-range');
decode_string(_, ?bin(I), _, O, S) when is_integer(O), is_integer(S), (O + S) > byte_size(I) ->
    do_throw('index-out-of-range');
decode_string(_, _, _, _, S) when is_integer(S), S < 0 ->
    do_throw('negative-size');
decode_string(_, ?bin(I), E, O, S) when is_binary(E), is_integer(O), is_integer(S) ->
    Enc = check_encoding(E),
    <<_:O/binary, Part:S/binary, _/binary>> = I,

    % strip BOM that could be hiding in the binary
    {Enc1, Part1} =
        case unicode:bom_to_encoding(Part) of
            {_, 0} ->
                {Enc, Part};
            {{utf16, _} = BomEnc, Len} when Enc == utf16 ->
                <<_:Len/binary, Bin1/binary>> = Part,
                {BomEnc, Bin1};
            {_, Len} ->
                <<_:Len/binary, Bin1/binary>> = Part,
                {Enc, Bin1}
        end,

    case unicode:characters_to_binary(Part1, Enc1, utf8) of
        {error, _, _} ->
            do_throw('conversion-error');
        {incomplete, _, _} ->
            do_throw('conversion-error');
        Bin ->
            Bin
    end;
decode_string(C, I, E, O, S) ->
    decode_string(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary'),
        xqerl_types:cast_as(E, 'xs:string'),
        xqerl_types:cast_as(O, 'xs:integer'),
        xqerl_types:cast_as(S, 'xs:integer')
    ).

%% 7.2 bin:encode-string
%% Summary
%%    Encodes a string into binary data using a given encoding.
%% Signatures
%%    bin:encode-string($in as xs:string?) as xs:base64Binary?
%%    bin:encode-string($in       as xs:string?,
%%                      $encoding as xs:string) as xs:base64Binary?
%% Rules
%%    The $encoding argument is the name of an encoding. The values for this
%%    attribute follow the same rules as for the encoding attribute in an XML
%%    declaration. The only values which every implementation is required to
%%    recognize are utf-8 and utf-16.
%%    If $encoding is ommitted, utf-8 encoding is assumed.
%%    If the value of $in is the empty sequence, the function returns an empty
%%    sequence.
%% Error Conditions
%%    [bin:unknown-encoding] is raised if $encoding is invalid or not
%%       supported by the implementation.
%%    [bin:conversion-error] is raised if there is an error or malformed input
%%       during encoding the string. Additional information about the error may
%%       be passed through suitable error reporting mechanisms – this is
%%       implementation-dependant.
encode_string(C, I) ->
    encode_string(C, I, <<"UTF-8">>).

encode_string(_, [], _) ->
    [];
encode_string(_, I, E) when is_binary(I), is_binary(E) ->
    Enc = check_encoding(E),
    case unicode:characters_to_binary(I, utf8, Enc) of
        {error, _, _} ->
            do_throw('conversion-error');
        {incomplete, _, _} ->
            do_throw('conversion-error');
        Bin when Enc == utf16 ->
            BOM = unicode:encoding_to_bom(utf16),
            ?bin(<<BOM/binary, Bin/binary>>);
        % here it is ascii so just check
        Bin when Enc == latin1 ->
            _ = [do_throw('conversion-error') || <<C>> <= Bin, C > 127],
            ?bin(Bin);
        Bin ->
            ?bin(Bin)
    end;
encode_string(C, I, E) ->
    encode_string(
        C,
        xqerl_types:cast_as(I, 'xs:string'),
        xqerl_types:cast_as(E, 'xs:string')
    ).

%% 8 Packing and unpacking of encoded numeric values

%% 8.1 Number 'endianness'
%% Packing and unpacking numeric values can be performed in
%% 'most-significant-first' ('big-endian') or 'least-significant-first'
%% ('little-endian') octet order. The default is 'most-significant-first'. The
%% functions have an optional parameter $octet-order whose string value
%% controls the order. Least-significant-first order is indicated by any of
%% the values least-significant-first, little-endian or LE.
%% Most-significant-first order is indicated by any of the values
%% most-significant-first, big-endian or BE.
%%
%% 8.2 Integer representation
%% Integers within binary data are represented, or assumed to be represented,
%% as an integral number of octets. Integers where $length is greater than 8
%% octets (and thus not representable as a long) might be expected in some
%% situations, e.g. encryption. Whether the range of integers is limited to
%% ±2^63 may be implementation-dependant.
%%
%% 8.3 Representation of floating point numbers
%% Care should be taken with the packing and unpacking of floating point
%% numbers (xs:float and xs:double). The binary representations are expected to
%% correspond with those of the IEEE single/double-precision 32/64-bit
%% floating point types [IEEE 754-1985]. Consequently they will occupy 4 or 8
%% octets when packed.
%%
%% Positive and negative infinities are supported. INF maps to 0x7f80 0000
%% (float), 0x7ff0 0000 0000 0000 (double). -INF maps to 0xff80 0000 (float),
%% 0xfff0 0000 0000 0000 (double).
%%
%% Negative zero (0x8000 0000 0000 0000 double, 0x8000 0000 float) encountered
%% during unpacking will yield negative zero forms (e.g. -xs:double(0.0)) and
%% negative zeros will be written as a result of packing.
%%
%% [XML Schema 1.1 Part 2] provides only one form of NaN which corresponds to a
%% 'quiet' NaN with zero payload of [IEEE 754-1985] with forms 0x7fc0 0000
%% (float), 0x7ff8 0000 0000 0000 (double). These are the bit forms that will
%% be packed. 'Signalling' NaN values (0x7f80 0001 -> 0x7fbf ffff or
%% 0xff80 0001 -> 0xffbf ffff,
%% 0x7ff0 0000 0000 0001 -> 0x7ff7 ffff ffff ffff or
%% 0xfff0 0000 0000 0001 -> 0xfff7 ffff ffff ffff) encountered during unpacking
%% will be replaced by 'quiet' NaN. Any low-order payload in an unpacked quiet
%% NaN is also zeroed.

%% 8.4 bin:pack-double
%% Summary
%%    Returns the 8-octet binary representation of a double value.
%% Signatures
%%    bin:pack-double($in as xs:double) as xs:base64Binary
%%    bin:pack-double($in          as xs:double,
%%                    $octet-order as xs:string) as xs:base64Binary
%% Rules
%%    Most-significant-octet-first number representation is assumed unless the
%%    $octet-order parameter is specified. Acceptable values for $octet-order
%%    are described in 8.1 Number 'endianness'.
%%    The binary representation will correspond with that of the IEEE
%%    double-precision 64-bit floating point type [IEEE 754-1985]. For more
%%    details see 8.3 Representation of floating point numbers.
%% Error Conditions
%%    [bin:unknown-significance-order] is raised if the value $octet-order is
%%       unrecognized.
pack_double(C, I) ->
    pack_double(C, I, <<"BE">>).

pack_double(_, nan, O) when is_binary(O) ->
    case check_endianness(O) of
        big -> ?bin(<<127, 248, 0, 0, 0, 0, 0, 0>>);
        little -> ?bin(<<0, 0, 0, 0, 0, 0, 248, 127>>)
    end;
pack_double(_, neg_zero, O) when is_binary(O) ->
    case check_endianness(O) of
        big -> ?bin(<<128, 0, 0, 0, 0, 0, 0, 0>>);
        little -> ?bin(<<0, 0, 0, 0, 0, 0, 0, 128>>)
    end;
pack_double(_, neg_infinity, O) when is_binary(O) ->
    case check_endianness(O) of
        big -> ?bin(<<255, 240, 0, 0, 0, 0, 0, 0>>);
        little -> ?bin(<<0, 0, 0, 0, 0, 0, 240, 255>>)
    end;
pack_double(_, infinity, O) when is_binary(O) ->
    case check_endianness(O) of
        big -> ?bin(<<127, 240, 0, 0, 0, 0, 0, 0>>);
        little -> ?bin(<<0, 0, 0, 0, 0, 0, 240, 127>>)
    end;
pack_double(_, I, O) when is_float(I), is_binary(O) ->
    case check_endianness(O) of
        big -> ?bin(<<I:64/big-float>>);
        little -> ?bin(<<I:64/little-float>>)
    end;
pack_double(C, I, O) ->
    pack_double(
        C,
        xqerl_types:cast_as(I, 'xs:double'),
        xqerl_types:cast_as(O, 'xs:string')
    ).

%% 8.5 bin:pack-float
%% Summary
%%    Returns the 4-octet binary representation of a float value.
%% Signatures
%%    bin:pack-float($in as xs:float) as xs:base64Binary
%%    bin:pack-float($in          as xs:float,
%%                   $octet-order as xs:string) as xs:base64Binary
%% Rules
%%    Most-significant-octet-first number representation is assumed unless the
%%    $octet-order parameter is specified. Acceptable values for $octet-order
%%    are described in 8.1 Number 'endianness'.
%%    The binary representation will correspond with that of the IEEE
%%    single-precision 32-bit floating point type [IEEE 754-1985]. For more
%%    details see 8.3 Representation of floating point numbers.
%% Error Conditions
%%    [bin:unknown-significance-order] is raised if the value $octet-order is
%%       unrecognized.
pack_float(C, I) ->
    pack_float(C, I, <<"BE">>).

pack_float(_, ?flt(nan), O) when is_binary(O) ->
    case check_endianness(O) of
        big -> ?bin(<<127, 192, 0, 0>>);
        little -> ?bin(<<0, 0, 192, 127>>)
    end;
pack_float(_, ?flt(neg_zero), O) when is_binary(O) ->
    case check_endianness(O) of
        big -> ?bin(<<128, 0, 0, 0>>);
        little -> ?bin(<<0, 0, 0, 128>>)
    end;
pack_float(_, ?flt(neg_infinity), O) when is_binary(O) ->
    case check_endianness(O) of
        big -> ?bin(<<255, 128, 0, 0>>);
        little -> ?bin(<<0, 0, 128, 255>>)
    end;
pack_float(_, ?flt(infinity), O) when is_binary(O) ->
    case check_endianness(O) of
        big -> ?bin(<<127, 128, 0, 0>>);
        little -> ?bin(<<0, 0, 128, 127>>)
    end;
pack_float(_, ?flt(I), O) when is_float(I), is_binary(O) ->
    case check_endianness(O) of
        big -> ?bin(<<I:32/big-float>>);
        little -> ?bin(<<I:32/little-float>>)
    end;
pack_float(C, I, O) ->
    pack_float(
        C,
        xqerl_types:cast_as(I, 'xs:float'),
        xqerl_types:cast_as(O, 'xs:string')
    ).

%% 8.6 bin:pack-integer
%% Summary
%%    Returns the twos-complement binary representation of an integer value
%%    treated as $size octets long. Any 'excess' high-order bits are discarded.
%% Signatures
%%    bin:pack-integer($in   as xs:integer,
%%                     $size as xs:integer) as xs:base64Binary
%%    bin:pack-integer($in          as xs:integer,
%%                     $size        as xs:integer,
%%                     $octet-order as xs:string) as xs:base64Binary
%% Rules
%%    Most-significant-octet-first number representation is assumed unless the
%%    $octet-order parameter is specified. Acceptable values for $octet-order
%%    are described in 8.1 Number 'endianness'.
%%    Specifying a $size of zero yields an empty binary data.
%% Error Conditions
%%    [bin:unknown-significance-order] is raised if the value $octet-order is
%%       unrecognized.
%%    [bin:negative-size] is raised if $size is negative.
%% Notes
%%    If the integer being packed has a maximum precision of $size octets, then
%%    signed/unsigned versions are not necessary. If the data is considered
%%    unsigned, then the most significant bit of the bottom $size octets has a
%%    normal positive (2^(8 *$size - 1)) meaning. If it is considered to be a
%%    signed value, then the MSB and all the higher order, discarded bits will
%%    be '1' for a negative value and '0' for a positive or zero. If this
%%    function were to check the 'sizing' of the supplied integer against the
%%    packing size, then any values of MSB and the discarded higher order bits
%%    other than 'all 1' or 'all 0' would constitute an error. This function
%%    does not perfom such checking.
pack_integer(C, I, S) ->
    pack_integer(C, I, S, <<"BE">>).

pack_integer(_, _, S, _) when is_integer(S), S < 0 ->
    do_throw('negative-size');
pack_integer(_, _, 0, _) ->
    ?bin(<<>>);
pack_integer(_, I, S, O) when is_integer(I), is_integer(S), is_binary(O) ->
    Bits = S * 8,
    case check_endianness(O) of
        big -> ?bin(<<I:Bits/big-integer>>);
        little -> ?bin(<<I:Bits/little-integer>>)
    end;
pack_integer(C, I, S, O) ->
    pack_integer(
        C,
        xqerl_types:cast_as(I, 'xs:integer'),
        xqerl_types:cast_as(S, 'xs:integer'),
        xqerl_types:cast_as(O, 'xs:string')
    ).

%% 8.7 bin:unpack-double
%% Summary
%%    Extract double value stored at the particular offset in binary data.
%% Signatures
%%    bin:unpack-double($in     as xs:base64Binary,
%%                      $offset as xs:integer) as xs:double
%%    bin:unpack-double($in          as xs:base64Binary,
%%                      $offset      as xs:integer,
%%                      $octet-order as xs:string) as xs:double
%% Rules
%%    Extract the double value stored in the 8 successive octets from the
%%    $offset octet of the binary data of $in.
%%    Most-significant-octet-first number representation is assumed unless the
%%    $octet-order parameter is specified. Acceptable values for $octet-order
%%    are described in 8.1 Number 'endianness'.
%%    The value of $offset must be a non-negative integer.
%%    The $offset is zero based.
%%    The binary representation is expected to correspond with that of the
%%    IEEE double-precision 64-bit floating point type [IEEE 754-1985]. For
%%    more details see 8.3 Representation of floating point numbers.
%% Error Conditions
%%    [bin:index-out-of-range] is raised if $offset is negative or $offset + 8
%%       (octet-length of xs:double) is larger than the size of the binary
%%       data of $in.
%%    [bin:unknown-significance-order] is raised if the value $octet-order is
%%       unrecognized.
unpack_double(C, I, O) ->
    unpack_double(C, I, O, <<"BE">>).

unpack_double(_, ?bin(I), O, _) when
    is_integer(O) andalso O < 0;
    is_integer(O) andalso
        (O + 8) > byte_size(I)
->
    do_throw('index-out-of-range');
unpack_double(_, ?bin(I), O, E) when is_integer(O), is_binary(E) ->
    <<_:O/binary, Part:8/binary, _/binary>> = I,
    case check_endianness(E) of
        big -> unpack_double_big(Part);
        little -> unpack_double_little(Part)
    end;
unpack_double(C, I, O, E) ->
    unpack_double(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary'),
        xqerl_types:cast_as(O, 'xs:integer'),
        xqerl_types:cast_as(E, 'xs:string')
    ).

unpack_double_big(<<128, 0, 0, 0, 0, 0, 0, 0>>) -> neg_zero;
unpack_double_big(<<255, 240, 0, 0, 0, 0, 0, 0>>) -> neg_infinity;
unpack_double_big(<<127, 240, 0, 0, 0, 0, 0, 0>>) -> infinity;
%% ["11111111 1111 0000 000000000000000000000000000000000000000000000001",
%%  "11111111 1111 0111 111111111111111111111111111111111111111111111111",
%%  "01111111 1111 1000 000000000000000000000000000000000000000000000001"]
unpack_double_big(<<127, 15:4, _:4, _, _, _, _, _, _>>) -> nan;
unpack_double_big(<<255, 15:4, _:4, _, _, _, _, _, _>>) -> nan;
unpack_double_big(<<F:64/big-float>>) -> F.

unpack_double_little(<<0, 0, 0, 0, 0, 0, 0, 128>>) -> neg_zero;
unpack_double_little(<<0, 0, 0, 0, 0, 0, 240, 255>>) -> neg_infinity;
unpack_double_little(<<0, 0, 0, 0, 0, 0, 240, 127>>) -> infinity;
unpack_double_little(<<_, _, _, _, _, _, 15:4, _:4, 127>>) -> nan;
unpack_double_little(<<_, _, _, _, _, _, 15:4, _:4, 255>>) -> nan;
unpack_double_little(<<F:64/little-float>>) -> F.

%% 8.8 bin:unpack-float
%% Summary
%%    Extract float value stored at the particular offset in binary data.
%%
%% Signatures
%%    bin:unpack-float($in     as xs:base64Binary,
%%                     $offset as xs:integer) as xs:float
%%    bin:unpack-float($in          as xs:base64Binary,
%%                     $offset      as xs:integer,
%%                     $octet-order as xs:string) as xs:float
%% Rules
%%    Extract the float value stored in the 4 successive octets from the
%%    $offset octet of the binary data of $in.
%%    Most-significant-octet-first number representation is assumed unless the
%%    $octet-order parameter is specified. Acceptable values for $octet-order
%%    are described in 8.1 Number 'endianness'.
%%    The value of $offset must be a non-negative integer.
%%    The $offset is zero based.
%%    The binary representation is expected to correspond with that of the
%%    IEEE single-precision 32-bit floating point type [IEEE 754-1985]. For
%%    more details see 8.3 Representation of floating point numbers.
%% Error Conditions
%%    [bin:index-out-of-range] is raised if $offset is negative or $offset + 4
%%       (octet-length of xs:float) is larger than the size of the binary data
%%       of $in.
%%    [bin:unknown-significance-order] is raised if the value $octet-order is
%%       unrecognized.
unpack_float(C, I, O) ->
    unpack_float(C, I, O, <<"BE">>).

unpack_float(_, ?bin(I), O, _) when
    is_integer(O) andalso O < 0;
    is_integer(O) andalso
        (O + 4) > byte_size(I)
->
    do_throw('index-out-of-range');
unpack_float(_, ?bin(I), O, E) when is_integer(O), is_binary(E) ->
    <<_:O/binary, Part:4/binary, _/binary>> = I,
    case check_endianness(E) of
        big -> ?flt(unpack_float_big(Part));
        little -> ?flt(unpack_float_little(Part))
    end;
unpack_float(C, I, O, E) ->
    unpack_float(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary'),
        xqerl_types:cast_as(O, 'xs:integer'),
        xqerl_types:cast_as(E, 'xs:string')
    ).

unpack_float_big(<<128, 0, 0, 0>>) -> neg_zero;
unpack_float_big(<<255, 128, 0, 0>>) -> neg_infinity;
unpack_float_big(<<127, 128, 0, 0>>) -> infinity;
unpack_float_big(<<127, 1:1, _/bitstring>>) -> nan;
unpack_float_big(<<255, 1:1, _/bitstring>>) -> nan;
unpack_float_big(<<F:32/big-float>>) -> F.

unpack_float_little(<<0, 0, 0, 128>>) -> neg_zero;
unpack_float_little(<<0, 0, 128, 255>>) -> neg_infinity;
unpack_float_little(<<0, 0, 128, 127>>) -> infinity;
unpack_float_little(<<_:23, 1:1, 127>>) -> nan;
unpack_float_little(<<_:23, 1:1, 255>>) -> nan;
unpack_float_little(<<F:32/little-float>>) -> F.

%% 8.9 bin:unpack-integer
%% Summary
%%    Returns a signed integer value represented by the $size octets starting
%%    from $offset in the input binary representation. Necessary sign extension
%%    is performed (i.e. the result is negative if the high order bit is '1').
%% Signatures
%%    bin:unpack-integer($in     as xs:base64Binary,
%%                       $offset as xs:integer,
%%                       $size   as xs:integer) as xs:integer
%%    bin:unpack-integer($in          as xs:base64Binary,
%%                       $offset      as xs:integer,
%%                       $size        as xs:integer,
%%                       $octet-order as xs:string) as xs:integer
%% Rules
%%    Most-significant-octet-first number representation is assumed unless the
%%    $octet-order parameter is specified. Acceptable values for $octet-order
%%    are described in 8.1 Number 'endianness'.
%%    The values of $offset and $size must be non-negative integers.
%%    $offset is zero based.
%%    Specifying a $size of zero yields the integer 0.
%% Error Conditions
%%    [bin:index-out-of-range] is raised if $offset is negative or $offset +
%%       $size is larger than the size of the binary data of $in.
%%    [bin:negative-size] is raised if $size is negative.
%%    [bin:unknown-significance-order] is raised if the value $octet-order is
%%       unrecognized.
%% Notes
%%    For discussion on integer range see 8.2 Integer representation.
unpack_integer(C, I, O, S) ->
    unpack_integer(C, I, O, S, <<"BE">>).

unpack_integer(_, ?bin(I), O, S, _) when
    is_integer(O) andalso O < 0;
    is_integer(O) andalso
        is_integer(S) andalso
        (O + S) > byte_size(I)
->
    do_throw('index-out-of-range');
unpack_integer(_, _, _, S, _) when is_integer(S), S < 0 ->
    do_throw('negative-size');
unpack_integer(_, ?bin(I), O, S, E) when is_integer(O), is_integer(S), is_binary(E) ->
    Bits = S * 8,
    case check_endianness(E) of
        big ->
            <<_:O/binary, Int:Bits/big-signed-integer, _/binary>> = I,
            Int;
        little ->
            <<_:O/binary, Int:Bits/little-signed-integer, _/binary>> = I,
            Int
    end;
unpack_integer(C, I, O, S, E) ->
    unpack_integer(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary'),
        xqerl_types:cast_as(O, 'xs:integer'),
        xqerl_types:cast_as(S, 'xs:integer'),
        xqerl_types:cast_as(E, 'xs:string')
    ).

%% 8.10 bin:unpack-unsigned-integer
%% Summary
%%    Returns an unsigned integer value represented by the $size octets
%%    starting from $offset in the input binary representation.
%% Signatures
%%    bin:unpack-unsigned-integer($in     as xs:base64Binary,
%%                                $offset as xs:integer,
%%                                $size   as xs:integer) as xs:integer
%%    bin:unpack-unsigned-integer($in          as xs:base64Binary,
%%                                $offset      as xs:integer,
%%                                $size        as xs:integer,
%%                                $octet-order as xs:string) as xs:integer
%% Rules
%%    Most-significant-octet-first number representation is assumed unless the
%%    $octet-order parameter is specified. Acceptable values for $octet-order
%%    are described in 8.1 Number 'endianness'.
%%    The values of $offset and $size must be non-negative integers.
%%    The $offset is zero based.
%%    Specifying a $size of zero yields the integer 0.
%% Error Conditions
%%    [bin:index-out-of-range] is raised if $offset is negative or $offset +
%%       $size is larger than the size of the binary data of $in.
%%    [bin:negative-size] is raised if $size is negative.
%%    [bin:unknown-significance-order] is raised if the value $octet-order
%%       is unrecognized.
%% Notes
%%    For discussion on integer range see 8.2 Integer representation.
unpack_unsigned_integer(C, I, O, S) ->
    unpack_unsigned_integer(C, I, O, S, <<"BE">>).

unpack_unsigned_integer(_, ?bin(I), O, S, _) when
    is_integer(O) andalso O < 0;
    is_integer(O) andalso
        is_integer(S) andalso
        (O + S) > byte_size(I)
->
    do_throw('index-out-of-range');
unpack_unsigned_integer(_, _, _, S, _) when is_integer(S), S < 0 ->
    do_throw('negative-size');
unpack_unsigned_integer(_, ?bin(I), O, S, E) when is_integer(O), is_integer(S), is_binary(E) ->
    Bits = S * 8,
    case check_endianness(E) of
        big ->
            <<_:O/binary, Int:Bits/big-unsigned-integer, _/binary>> = I,
            Int;
        little ->
            <<_:O/binary, Int:Bits/little-unsigned-integer, _/binary>> = I,
            Int
    end;
unpack_unsigned_integer(C, I, O, S, E) ->
    unpack_unsigned_integer(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary'),
        xqerl_types:cast_as(O, 'xs:integer'),
        xqerl_types:cast_as(S, 'xs:integer'),
        xqerl_types:cast_as(E, 'xs:string')
    ).

%% 9 Bitwise operations

%% 9.1 bin:or
%% Summary
%%    Returns the "bitwise or" of two binary arguments.
%% Signature
%%    bin:or($a as xs:base64Binary?,
%%           $b as xs:base64Binary?) as xs:base64Binary?
%% Rules
%%    Returns "bitwise or" applied between $a and $b.
%%    If either argument is the empty sequence, an empty sequence is returned.
%% Error Conditions
%%    [bin:differing-length-arguments] is raised if the input arguments are of
%%       differing length.
or_(_, [], _) ->
    [];
or_(_, _, []) ->
    [];
or_(_, ?bin(A), ?bin(B)) ->
    ?bin(do_bytewise(fun erlang:'bor'/2, A, B));
or_(C, A, B) ->
    or_(
        C,
        xqerl_types:cast_as(A, 'xs:base64Binary'),
        xqerl_types:cast_as(B, 'xs:base64Binary')
    ).

%% 9.2 bin:xor
%% Summary
%%    Returns the "bitwise xor" of two binary arguments.
%% Signature
%%    bin:xor($a as xs:base64Binary?,
%%            $b as xs:base64Binary?) as xs:base64Binary?
%% Rules
%%    Returns "bitwise exclusive or" applied between $a and $b.
%%    If either argument is the empty sequence, an empty sequence is returned.
%% Error Conditions
%%    [bin:differing-length-arguments] is raised if the input arguments are of
%%       differing length.
xor_(_, [], _) ->
    [];
xor_(_, _, []) ->
    [];
xor_(_, ?bin(A), ?bin(B)) ->
    ?bin(do_bytewise(fun erlang:'bxor'/2, A, B));
xor_(C, A, B) ->
    xor_(
        C,
        xqerl_types:cast_as(A, 'xs:base64Binary'),
        xqerl_types:cast_as(B, 'xs:base64Binary')
    ).

%% 9.3 bin:and
%% Summary
%%    Returns the "bitwise and" of two binary arguments.
%% Signature
%%    bin:and($a as xs:base64Binary?,
%%            $b as xs:base64Binary?) as xs:base64Binary?
%% Rules
%%    Returns "bitwise and" applied between $a and $b.
%%    If either argument is the empty sequence, an empty sequence is returned.
%% Error Conditions
%%    [bin:differing-length-arguments] is raised if the input arguments are of
%%       differing length.
and_(_, [], _) ->
    [];
and_(_, _, []) ->
    [];
and_(_, ?bin(A), ?bin(B)) ->
    ?bin(do_bytewise(fun erlang:'band'/2, A, B));
and_(C, A, B) ->
    and_(
        C,
        xqerl_types:cast_as(A, 'xs:base64Binary'),
        xqerl_types:cast_as(B, 'xs:base64Binary')
    ).

%% 9.4 bin:not
%% Summary
%%    Returns the "bitwise not" of a binary argument.
%% Signature
%%    bin:not($in as xs:base64Binary?) as xs:base64Binary?
%% Rules
%%    Returns "bitwise not" applied to $in.
%%    If the argument is the empty sequence, an empty sequence is returned.
not_(_, []) ->
    [];
not_(_, ?bin(I)) ->
    ?bin(<<<<(bnot C)>> || <<C>> <= I>>);
not_(C, I) ->
    not_(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary')
    ).

%% 9.5 bin:shift
%% Summary
%%    Shift bits in binary data.
%% Signature
%%    bin:shift($in as xs:base64Binary?,
%%              $by as xs:integer) as xs:base64Binary?
%% Rules
%%    If $by is positive then bits are shifted $by times to the left.
%%    If $by is negative then bits are shifted -$by times to the right.
%%    If $by is zero, the result is identical to $in.
%%    If |$by| is greater than the bit-length of $in then an all-zeros result,
%%    of the same length as $in, is returned.
%%    |$by| can be greater than 8, implying multi-byte shifts.
%%    The result always has the same size as $in.
%%    The shifting is logical: zeros are placed into discarded bits.
%%    If the value of $in is the empty sequence, the function returns an empty
%%    sequence.
%% Notes
%%    Bit shifting across byte boundaries implies 'big-endian' treatment, i.e.
%%    the leftmost (high-order) bit when shifted left becomes the low-order
%%    bit of the preceding byte.
%% Examples
%%    bin:shift(bin:hex("000001"), 17) -> bin:hex("020000")
shift(_, [], _) ->
    [];
shift(_, ?bin(_) = I, 0) ->
    I;
shift(_, ?bin(I), B) when is_integer(B) ->
    L = byte_size(I),
    P = abs(B),
    Pad = <<0:P>>,
    case B > 0 of
        % shift left
        true ->
            <<_:P/bitstring, C:L/binary>> = <<I/binary, Pad/bitstring>>,
            ?bin(C);
        % shift right
        false ->
            <<C:L/binary, _/bitstring>> = <<Pad/bitstring, I/binary>>,
            ?bin(C)
    end;
shift(C, I, B) ->
    shift(
        C,
        xqerl_types:cast_as(I, 'xs:base64Binary'),
        xqerl_types:cast_as(B, 'xs:integer')
    ).

-define(Q(V), #xqAtomicValue{
    type = 'xs:QName',
    value = #qname{
        namespace = ?NS,
        prefix = ?PX,
        local_name = V
    }
}).

do_throw('differing-length-arguments') ->
    E = #xqError{
        description = <<"The arguments to a bitwise operation are of differing length.">>,
        name = ?Q(<<"differing-length-arguments">>)
    },
    throw(E);
do_throw('index-out-of-range') ->
    E = #xqError{
        description =
            <<"Attempting to retrieve data outside the meaningful range of a binary data type.">>,
        name = ?Q(<<"index-out-of-range">>)
    },
    throw(E);
do_throw('negative-size') ->
    E = #xqError{
        description = <<"Size of binary portion, required numeric size or padding is negative.">>,
        name = ?Q(<<"negative-size">>)
    },
    throw(E);
do_throw('octet-out-of-range') ->
    E = #xqError{
        description = <<"Attempting to pack binary value with octet outside range.">>,
        name = ?Q(<<"octet-out-of-range">>)
    },
    throw(E);
do_throw('non-numeric-character') ->
    E = #xqError{
        description = <<"Wrong character in binary 'numeric constructor' string.">>,
        name = ?Q(<<"non-numeric-character">>)
    },
    throw(E);
do_throw('unknown-encoding') ->
    E = #xqError{
        description = <<"The specified encoding is not supported.">>,
        name = ?Q(<<"unknown-encoding">>)
    },
    throw(E);
do_throw('conversion-error') ->
    E = #xqError{
        description = <<"Error in converting to/from a string.">>,
        name = ?Q(<<"conversion-error">>)
    },
    throw(E);
do_throw('unknown-significance-order') ->
    E = #xqError{
        description = <<"Unknown octet-order value.">>,
        name = ?Q(<<"unknown-significance-order">>)
    },
    throw(E).

check_encoding(E) ->
    case string:uppercase(E) of
        <<"UTF-8">> ->
            utf8;
        <<"UTF-16">> ->
            utf16;
        <<"US-ASCII">> ->
            latin1;
        <<>> ->
            utf8;
        _ ->
            do_throw('unknown-encoding')
    end.

check_endianness(<<"least-significant-first">>) -> little;
check_endianness(<<"little-endian">>) -> little;
check_endianness(<<"LE">>) -> little;
check_endianness(<<"most-significant-first">>) -> big;
check_endianness(<<"big-endian">>) -> big;
check_endianness(<<"BE">>) -> big;
check_endianness(_) -> do_throw('unknown-significance-order').

do_bytewise(F, A, B) ->
    case byte_size(A) == byte_size(B) of
        true ->
            do_bytewise(F, A, B, <<>>);
        false ->
            do_throw('differing-length-arguments')
    end.

do_bytewise(F, <<A, RestA/binary>>, <<B, RestB/binary>>, Acc) ->
    C = F(A, B),
    do_bytewise(F, RestA, RestB, <<Acc/binary, C>>);
do_bytewise(_, <<>>, <<>>, Acc) ->
    Acc.
