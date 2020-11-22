%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2019 Zachary N. Dean  All Rights Reserved.
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

%% @doc  Binary type heirarchy - 64 bit matching of types
%%
%% BASIC TYPE - 11 BITS
%% item                          10000000000
%%    xs:anyAtomicType           10010000000
%%    node                       10100000000
%%       attribute               10100000001
%%       comment                 10100000010
%%       document-node           10100000100
%%       element                 10100001000
%%       namespace               10100010000
%%       processing-instruction  10100100000
%%       text                    10101000000
%%    function(*)                11000000000
%%       array(*)                11000100000
%%       map(*)                  11001000000
%%
%% BIT - Type flag
%% 12    : xs:untypedAtomic
%% 13-14 : xs:dateTime              10
%%            xs:dateTimeStamp      11
%% 15    : xs:date
%% 16    : xs:time
%% 17-19 : xs:duration              100
%%            xs:yearMonthDuration  101
%%            xs:dayTimeDuration    110
%% 20    : xs:float
%% 21    : xs:double
%% 22-31 : xs:decimal                          1000000000
%%            xs:integer                       1100000000
%%               xs:nonPositiveInteger         1100100000*
%%                  xs:negativeInteger         1100110000
%%               xs:long                       1101000000*
%%                  xs:int                     1101010000
%%                     xs:short                1101011000
%%                        xs:byte              1101011100
%%               xs:nonNegativeInteger         1110000000*
%%                  xs:unsignedLong            1110001000
%%                     xs:unsignedInt          1110001100
%%                        xs:unsignedShort     1110001110
%%                           xs:unsignedByte   1110001111
%%                  xs:positiveInteger         1110010000
%% 32    : xs:gYearMonth
%% 33    : xs:gYear
%% 34    : xs:gMonthDay
%% 35    : xs:gDay
%% 36    : xs:gMonth
%% 37-46 : xs:string                  1000000000
%%            xs:normalizedString     1100000000
%%               xs:token             1110000000
%%                  xs:language       1110010000
%%                  xs:NMTOKEN        1110100000
%%                  xs:Name           1111000000
%%                     xs:NCName      1111001000
%%                        xs:ID       1111001001
%%                        xs:IDREF    1111001010
%%                        xs:ENTITY   1111001100
%% 47    : xs:boolean
%% 48    : xs:base64Binary
%% 49    : xs:hexBinary
%% 50    : xs:anyURI
%% 51    : xs:QName
%% 52    : xs:NOTATION
%% 53    : LIST FLAG (xs:IDREFS,xs:NMTOKENS,xs:ENTITIES, user defined)
%% 54    : UNION FLAG (xs:numeric, user defined)
%% 55    : UNUSED
%% 56    : UNUSED
%% 57    : UNUSED
%% 58    : UNUSED
%% 59    : UNUSED
%% 60    : UNUSED
%% 61    : UNUSED
%% 62    : UNUSED
%% 63    : UNUSED
%% 64    : UNUSED

%% item                    1 000 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% node                    1 010 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% attribute               1 010 0000001 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% comment                 1 010 0000010 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% document-node           1 010 0000100 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% element                 1 010 0001000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% namespace               1 010 0010000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% processing-instruction  1 010 0100000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% text                    1 010 1000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% function(*)             1 100 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% array(*)                1 100 0100000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% map(*)                  1 100 1000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:anyAtomicType        1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:untypedAtomic        1 001 0000000 1 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:dateTime             1 001 0000000 0 01 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:dateTimeStamp        1 001 0000000 0 11 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:date                 1 001 0000000 0 00 1 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:time                 1 001 0000000 0 00 0 1 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:duration             1 001 0000000 0 00 0 0 100 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:yearMonthDuration    1 001 0000000 0 00 0 0 101 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:dayTimeDuration      1 001 0000000 0 00 0 0 110 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:float                1 001 0000000 0 00 0 0 000 1 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:double               1 001 0000000 0 00 0 0 000 0 1 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:decimal              1 001 0000000 0 00 0 0 000 0 0 1000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:integer              1 001 0000000 0 00 0 0 000 0 0 1100000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:nonPositiveInteger   1 001 0000000 0 00 0 0 000 0 0 1100100000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:negativeInteger      1 001 0000000 0 00 0 0 000 0 0 1100110000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:long                 1 001 0000000 0 00 0 0 000 0 0 1101000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:int                  1 001 0000000 0 00 0 0 000 0 0 1101010000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:short                1 001 0000000 0 00 0 0 000 0 0 1101011000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:byte                 1 001 0000000 0 00 0 0 000 0 0 1101011100 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:nonNegativeInteger   1 001 0000000 0 00 0 0 000 0 0 1110000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:unsignedLong         1 001 0000000 0 00 0 0 000 0 0 1110001000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:unsignedInt          1 001 0000000 0 00 0 0 000 0 0 1110001100 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:unsignedShort        1 001 0000000 0 00 0 0 000 0 0 1110001110 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:unsignedByte         1 001 0000000 0 00 0 0 000 0 0 1110001111 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:positiveInteger      1 001 0000000 0 00 0 0 000 0 0 1110010000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:gYearMonth           1 001 0000000 0 00 0 0 000 0 0 0000000000 1 0 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:gYear                1 001 0000000 0 00 0 0 000 0 0 0000000000 0 1 0 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:gMonthDay            1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 1 0 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:gDay                 1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 1 0 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:gMonth               1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 1 0000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:string               1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1000000000 0 0 0 0 0 0 0 0 0000000000
%% xs:normalizedString     1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1100000000 0 0 0 0 0 0 0 0 0000000000
%% xs:token                1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1110000000 0 0 0 0 0 0 0 0 0000000000
%% xs:language             1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1110010000 0 0 0 0 0 0 0 0 0000000000
%% xs:NMTOKEN              1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1110100000 0 0 0 0 0 0 0 0 0000000000
%% xs:Name                 1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1111000000 0 0 0 0 0 0 0 0 0000000000
%% xs:NCName               1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1111001000 0 0 0 0 0 0 0 0 0000000000
%% xs:ID                   1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1111001001 0 0 0 0 0 0 0 0 0000000000
%% xs:IDREF                1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1111001010 0 0 0 0 0 0 0 0 0000000000
%% xs:ENTITY               1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1111001100 0 0 0 0 0 0 0 0 0000000000
%% xs:boolean              1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 1 0 0 0 0 0 0 0 0000000000
%% xs:base64Binary         1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 1 0 0 0 0 0 0 0000000000
%% xs:hexBinary            1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 1 0 0 0 0 0 0000000000
%% xs:anyURI               1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 1 0 0 0 0 0000000000
%% xs:QName                1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 1 0 0 0 0000000000
%% xs:NOTATION             1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 1 0 0 0000000000
%%
%% LIST FLAG               0 000 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 1 0 0000000000
%% UNION FLAG              0 000 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 1 0000000000
%%
%% xs:numeric              1 001 0000000 0 00 0 0 000 1 1 1000000000 0 0 0 0 0 0000000000 0 0 0 0 0 0 0 1 0000000000
%% xs:IDREFS               1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1111001010 0 0 0 0 0 0 1 0 0000000000
%% xs:NMTOKENS             1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1110100000 0 0 0 0 0 0 1 0 0000000000
%% xs:ENTITIES             1 001 0000000 0 00 0 0 000 0 0 0000000000 0 0 0 0 0 1111001100 0 0 0 0 0 0 1 0 0000000000

-module(xqerl_btypes).

-export([can_promote/2]).
-export([can_substitute/2]).
-export([is_list_type/1]).
-export([is_node/1]).
-export([is_atomic/1]).
-export([is_numeric/1]).
-export([get_type/1]).
-export([sequence_type/1]).

-define(item, 9223372036854775808).
-define(node, 11529215046068469760).
-define(anyAtomicType, 10376293541461622784).
-define(string, 10376293541595840512).
-define(untypedAtomic, 10380797141088993280).

-define(float, 10376311133647667200).
-define(double, 10376302337554644992).
-define(decimal, 10376297939508133888).
-define(anyURI, 10376293541461639168).

sequence_type(List) when is_list(List) ->
    Hd = hd(List),
    Type = get_type(Hd),
    sequence_type(tl(List), Type).

sequence_type([], ListType) -> ListType;
sequence_type([H | T], ListType) -> sequence_type(T, ListType band get_type(H)).

% is subtype
can_substitute(Type, TargetType) when Type band TargetType =:= TargetType ->
    true;
% is in union type
can_substitute(Type, TargetType) when
    TargetType band 1024 =:= 1024 andalso
        Type band TargetType =/= ?anyAtomicType andalso
        Type band TargetType =/= ?item
->
    true;
can_substitute(_Type, _TargetType) ->
    false.

% numeric promotion
can_promote(?float, ?double) -> true;
can_promote(Decimal, ?double) when Decimal band ?decimal =:= ?decimal -> true;
can_promote(Decimal, ?float) when Decimal band ?decimal =:= ?decimal -> true;
% URI promotion
can_promote(?anyURI, ?string) -> true;
can_promote(?untypedAtomic, ?string) -> true;
can_promote(_Type, _TargetType) -> false.

is_list_type(Type) ->
    Type band 2048 =:= 2048.

is_node(Type) ->
    Type band ?node =:= ?node.

is_atomic(Type) ->
    Type band ?anyAtomicType =:= ?anyAtomicType.

is_numeric(Type) when Type >= 10376297939508133888, Type =< 10376311133647667200 ->
    true;
%% is_numeric(Type) when Type band ?decimal =:= ?decimal;
%%                       Type band ?float =:= ?float;
%%                       Type band ?double =:= ?double ->
%%    true;
is_numeric(_) ->
    false.

get_type('empty-sequence') -> 0;
get_type('item') -> 9223372036854775808;
get_type('node') -> 11529215046068469760;
get_type('attribute') -> 11538222245323210752;
get_type('comment') -> 11547229444577951744;
get_type('document-node') -> 11565243843087433728;
get_type('document') -> 11565243843087433728;
get_type('element') -> 11601272640106397696;
get_type('namespace') -> 11673330234144325632;
get_type('processing-instruction') -> 11817445422220181504;
get_type('text') -> 12105675798371893248;
get_type('function') -> 13835058055282163712;
get_type('array') -> 14123288431433875456;
get_type('map') -> 14411518807585587200;
% ignoring complex types for now, only used in elements
get_type('xs:anyType') -> 1;
% ignoring complex types for now, only used in elements
get_type('xs:untyped') -> 2;
% handling list and union types as anyAtomicType
get_type('xs:anySimpleType') -> 10376293541461622784;
get_type('xs:anyAtomicType') -> 10376293541461622784;
get_type('xs:untypedAtomic') -> 10380797141088993280;
get_type('xs:dateTime') -> 10377419441368465408;
get_type('xs:dateTimeStamp') -> 10379671241182150656;
get_type('xs:date') -> 10376856491415044096;
get_type('xs:time') -> 10376575016438333440;
get_type('xs:duration') -> 10376434278949978112;
get_type('xs:yearMonthDuration') -> 10376469463322066944;
get_type('xs:dayTimeDuration') -> 10376504647694155776;
get_type('xs:float') -> 10376311133647667200;
get_type('xs:double') -> 10376302337554644992;
get_type('xs:decimal') -> 10376297939508133888;
get_type('xs:integer') -> 10376300138531389440;
get_type('xs:nonPositiveInteger') -> 10376300413409296384;
get_type('xs:negativeInteger') -> 10376300550848249856;
get_type('xs:long') -> 10376300688287203328;
get_type('xs:int') -> 10376300825726156800;
get_type('xs:short') -> 10376300894445633536;
get_type('xs:byte') -> 10376300928805371904;
get_type('xs:nonNegativeInteger') -> 10376301238043017216;
get_type('xs:unsignedLong') -> 10376301306762493952;
get_type('xs:unsignedInt') -> 10376301341122232320;
get_type('xs:unsignedShort') -> 10376301358302101504;
get_type('xs:unsignedByte') -> 10376301366892036096;
get_type('xs:positiveInteger') -> 10376301375481970688;
get_type('xs:gYearMonth') -> 10376293545756590080;
get_type('xs:gYear') -> 10376293543609106432;
get_type('xs:gMonthDay') -> 10376293542535364608;
get_type('xs:gDay') -> 10376293541998493696;
get_type('xs:gMonth') -> 10376293541730058240;
get_type('xs:string') -> 10376293541595840512;
get_type('xs:normalizedString') -> 10376293541662949376;
get_type('xs:token') -> 10376293541696503808;
get_type('xs:language') -> 10376293541700698112;
get_type('xs:NMTOKEN') -> 10376293541704892416;
get_type('xs:Name') -> 10376293541713281024;
get_type('xs:NCName') -> 10376293541715378176;
get_type('xs:ID') -> 10376293541715640320;
get_type('xs:IDREF') -> 10376293541715902464;
get_type('xs:ENTITY') -> 10376293541716426752;
get_type('xs:boolean') -> 10376293541461753856;
get_type('xs:base64Binary') -> 10376293541461688320;
get_type('xs:hexBinary') -> 10376293541461655552;
get_type('xs:anyURI') -> 10376293541461639168;
get_type('xs:QName') -> 10376293541461630976;
get_type('xs:NOTATION') -> 10376293541461626880;
get_type('xs:numeric') -> 10376324327787201536;
get_type('xs:IDREFS') -> 10376293541715904512;
get_type('xs:NMTOKENS') -> 10376293541704894464;
get_type('xs:ENTITIES') -> 10376293541716428800;
% reverse
get_type(0) -> 'empty-sequence';
get_type(9223372036854775808) -> 'item';
get_type(11529215046068469760) -> 'node';
get_type(11538222245323210752) -> 'attribute';
get_type(11547229444577951744) -> 'comment';
get_type(11565243843087433728) -> 'document-node';
get_type(11601272640106397696) -> 'element';
get_type(11673330234144325632) -> 'namespace';
get_type(11817445422220181504) -> 'processing-instruction';
get_type(12105675798371893248) -> 'text';
get_type(13835058055282163712) -> 'function';
get_type(14123288431433875456) -> 'array';
get_type(14411518807585587200) -> 'map';
% ignoring complex types for now, only used in elements
get_type(1) -> 'xs:anyType';
% ignoring complex types for now, only used in elements
get_type(2) -> 'xs:untyped';
%get_type(10376293541461622784 ) ->  'xs:anySimpleType'       ; % handling list and union types as anyAtomicType
get_type(10376293541461622784) -> 'xs:anyAtomicType';
get_type(10380797141088993280) -> 'xs:untypedAtomic';
get_type(10377419441368465408) -> 'xs:dateTime';
get_type(10379671241182150656) -> 'xs:dateTimeStamp';
get_type(10376856491415044096) -> 'xs:date';
get_type(10376575016438333440) -> 'xs:time';
get_type(10376434278949978112) -> 'xs:duration';
get_type(10376469463322066944) -> 'xs:yearMonthDuration';
get_type(10376504647694155776) -> 'xs:dayTimeDuration';
get_type(10376311133647667200) -> 'xs:float';
get_type(10376302337554644992) -> 'xs:double';
get_type(10376297939508133888) -> 'xs:decimal';
get_type(10376300138531389440) -> 'xs:integer';
get_type(10376300413409296384) -> 'xs:nonPositiveInteger';
get_type(10376300550848249856) -> 'xs:negativeInteger';
get_type(10376300688287203328) -> 'xs:long';
get_type(10376300825726156800) -> 'xs:int';
get_type(10376300894445633536) -> 'xs:short';
get_type(10376300928805371904) -> 'xs:byte';
get_type(10376301238043017216) -> 'xs:nonNegativeInteger';
get_type(10376301306762493952) -> 'xs:unsignedLong';
get_type(10376301341122232320) -> 'xs:unsignedInt';
get_type(10376301358302101504) -> 'xs:unsignedShort';
get_type(10376301366892036096) -> 'xs:unsignedByte';
get_type(10376301375481970688) -> 'xs:positiveInteger';
get_type(10376293545756590080) -> 'xs:gYearMonth';
get_type(10376293543609106432) -> 'xs:gYear';
get_type(10376293542535364608) -> 'xs:gMonthDay';
get_type(10376293541998493696) -> 'xs:gDay';
get_type(10376293541730058240) -> 'xs:gMonth';
get_type(10376293541595840512) -> 'xs:string';
get_type(10376293541662949376) -> 'xs:normalizedString';
get_type(10376293541696503808) -> 'xs:token';
get_type(10376293541700698112) -> 'xs:language';
get_type(10376293541704892416) -> 'xs:NMTOKEN';
get_type(10376293541713281024) -> 'xs:Name';
get_type(10376293541715378176) -> 'xs:NCName';
get_type(10376293541715640320) -> 'xs:ID';
get_type(10376293541715902464) -> 'xs:IDREF';
get_type(10376293541716426752) -> 'xs:ENTITY';
get_type(10376293541461753856) -> 'xs:boolean';
get_type(10376293541461688320) -> 'xs:base64Binary';
get_type(10376293541461655552) -> 'xs:hexBinary';
get_type(10376293541461639168) -> 'xs:anyURI';
get_type(10376293541461630976) -> 'xs:QName';
get_type(10376293541461626880) -> 'xs:NOTATION';
get_type(10376324327787201536) -> 'xs:numeric';
get_type(10376293541715904512) -> 'xs:IDREFS';
get_type(10376293541704894464) -> 'xs:NMTOKENS';
get_type(10376293541716428800) -> 'xs:ENTITIES';
% unknown type
get_type(Atom) when is_atom(Atom) -> exit(xqerl_error:error('XPST0017')).
