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

%% @doc Wrapper functions for the "http://www.w3.org/2001/XMLSchema" namespace.

-module(xqerl_xs).

-define(sin(Item), Item).

-'module-namespace'({"http://www.w3.org/2001/XMLSchema","xs"}).
-'element-namespace'([]).
-'context-item'({item, external, undefined}).
-'default-collation'({"http://www.w3.org/2005/xpath-functions/collation/codepoint","uca"}).
-namespaces([{"http://www.w3.org/2001/XMLSchema", "xs"}]).
-options([]).
-variables([]).
-functions([ 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "unsignedInt"}, {xqSeqType, 'xs:unsignedInt', zero_or_one}, [], 
 {'xs_unsignedInt', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "string"}, {xqSeqType, 'xs:string', zero_or_one}, [], 
 {'xs_string', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "boolean"}, {xqSeqType, 'xs:boolean', zero_or_one}, [], 
 {'xs_boolean', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "decimal"}, {xqSeqType, 'xs:decimal', zero_or_one}, [], 
 {'xs_decimal', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "float"}, {xqSeqType, 'xs:float', zero_or_one}, [], 
 {'xs_float', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "double"}, {xqSeqType, 'xs:double', zero_or_one}, [], 
 {'xs_double', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "duration"}, {xqSeqType, 'xs:duration', zero_or_one}, [], 
 {'xs_duration', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "dateTime"}, {xqSeqType, 'xs:dateTime', zero_or_one}, [], 
 {'xs_dateTime', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "time"}, {xqSeqType, 'xs:time', zero_or_one}, [], 
 {'xs_time', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "date"}, {xqSeqType, 'xs:date', zero_or_one}, [], 
 {'xs_date', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "gYearMonth"}, {xqSeqType, 'xs:gYearMonth', zero_or_one}, [], 
 {'xs_gYearMonth', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "gYear"}, {xqSeqType, 'xs:gYear', zero_or_one}, [], 
 {'xs_gYear', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "gMonthDay"}, {xqSeqType, 'xs:gMonthDay', zero_or_one}, [], 
 {'xs_gMonthDay', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "gDay"}, {xqSeqType, 'xs:gDay', zero_or_one}, [], 
 {'xs_gDay', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "gMonth"}, {xqSeqType, 'xs:gMonth', zero_or_one}, [], 
 {'xs_gMonth', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "hexBinary"}, {xqSeqType, 'xs:hexBinary', zero_or_one}, [], 
 {'xs_hexBinary', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "base64Binary"}, {xqSeqType, 'xs:base64Binary', zero_or_one}, [], 
 {'xs_base64Binary', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "anyURI"}, {xqSeqType, 'xs:anyURI', zero_or_one}, [], 
 {'xs_anyURI', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "QName"}, {xqSeqType, 'xs:QName', zero_or_one}, [], 
 {'xs_QName', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "normalizedString"}, {xqSeqType, 'xs:normalizedString', zero_or_one}, [], 
 {'xs_normalizedString', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "token"}, {xqSeqType, 'xs:token', zero_or_one}, [], 
 {'xs_token', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "language"}, {xqSeqType, 'xs:language', zero_or_one}, [], 
 {'xs_language', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "NMTOKEN"}, {xqSeqType, 'xs:NMTOKEN', zero_or_one}, [], 
 {'xs_NMTOKEN', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "Name"}, {xqSeqType, 'xs:Name', zero_or_one}, [], 
 {'xs_Name', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "NCName"}, {xqSeqType, 'xs:NCName', zero_or_one}, [], 
 {'xs_NCName', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "ID"}, {xqSeqType, 'xs:ID', zero_or_one}, [], 
 {'xs_ID', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "IDREF"}, {xqSeqType, 'xs:IDREF', zero_or_one}, [], 
 {'xs_IDREF', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "ENTITY"}, {xqSeqType, 'xs:ENTITY', zero_or_one}, [], 
 {'xs_ENTITY', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "integer"}, {xqSeqType, 'xs:integer', zero_or_one}, [], 
 {'xs_integer', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "nonPositiveInteger"}, {xqSeqType, 'xs:nonPositiveInteger', zero_or_one}, [], 
 {'xs_nonPositiveInteger', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "negativeInteger"}, {xqSeqType, 'xs:negativeInteger', zero_or_one}, [], 
 {'xs_negativeInteger', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "long"}, {xqSeqType, 'xs:long', zero_or_one}, [], 
 {'xs_long', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "int"}, {xqSeqType, 'xs:int', zero_or_one}, [], 
 {'xs_int', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "short"}, {xqSeqType, 'xs:short', zero_or_one}, [], 
 {'xs_short', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "byte"}, {xqSeqType, 'xs:byte', zero_or_one}, [], 
 {'xs_byte', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "nonNegativeInteger"}, {xqSeqType, 'xs:nonNegativeInteger', zero_or_one}, [], 
 {'xs_nonNegativeInteger', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "unsignedLong"}, {xqSeqType, 'xs:unsignedLong', zero_or_one}, [], 
 {'xs_unsignedLong', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "unsignedShort"}, {xqSeqType, 'xs:unsignedShort', zero_or_one}, [], 
 {'xs_unsignedShort', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "unsignedByte"}, {xqSeqType, 'xs:unsignedByte', zero_or_one}, [], 
 {'xs_unsignedByte', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "positiveInteger"}, {xqSeqType, 'xs:positiveInteger', zero_or_one}, [], 
 {'xs_positiveInteger', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "yearMonthDuration"}, {xqSeqType, 'xs:yearMonthDuration', zero_or_one}, [], 
 {'xs_yearMonthDuration', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "dayTimeDuration"}, {xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [], 
 {'xs_dayTimeDuration', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "untypedAtomic"}, {xqSeqType, 'xs:untypedAtomic', zero_or_one}, [], 
 {'xs_untypedAtomic', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
%% {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "dateTimeStamp"}, {xqSeqType, 'xs:dateTimeStamp', zero_or_one}, [], 
%%  {'xs_dateTimeStamp', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "NMTOKENS"}, {xqSeqType, 'xs:NMTOKENS', zero_or_one}, [], 
 {'xs_NMTOKENS', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "ENTITIES"}, {xqSeqType, 'xs:ENTITIES', zero_or_one}, [], 
 {'xs_ENTITIES', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "IDREFS"}, {xqSeqType, 'xs:IDREFS', zero_or_one}, [], 
 {'xs_IDREFS', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]}, 
{{qname, "http://www.w3.org/2001/XMLSchema", "xs", "error"}, {xqSeqType, 'xs:error', zero_or_one}, [], 
 {'xs_error', 2}, 1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]} ]).

-export([xs_unsignedInt/2]).
-export([xs_string/2]).
-export([xs_boolean/2]).
-export([xs_decimal/2]).
-export([xs_float/2]).
-export([xs_double/2]).
-export([xs_duration/2]).
-export([xs_dateTime/2]).
-export([xs_time/2]).
-export([xs_date/2]).
-export([xs_gYearMonth/2]).
-export([xs_gYear/2]).
-export([xs_gMonthDay/2]).
-export([xs_gDay/2]).
-export([xs_gMonth/2]).
-export([xs_hexBinary/2]).
-export([xs_base64Binary/2]).
-export([xs_anyURI/2]).
-export([xs_QName/2]).
-export([xs_normalizedString/2]).
-export([xs_token/2]).
-export([xs_language/2]).
-export([xs_NMTOKEN/2]).
-export([xs_Name/2]).
-export([xs_NCName/2]).
-export([xs_ID/2]).
-export([xs_IDREF/2]).
-export([xs_ENTITY/2]).
-export([xs_integer/2]).
-export([xs_nonPositiveInteger/2]).
-export([xs_negativeInteger/2]).
-export([xs_long/2]).
-export([xs_int/2]).
-export([xs_short/2]).
-export([xs_byte/2]).
-export([xs_nonNegativeInteger/2]).
-export([xs_unsignedLong/2]).
-export([xs_unsignedShort/2]).
-export([xs_unsignedByte/2]).
-export([xs_positiveInteger/2]).
-export([xs_yearMonthDuration/2]).
-export([xs_dayTimeDuration/2]).
-export([xs_untypedAtomic/2]).
-export([xs_dateTimeStamp/2]).
-export([xs_NMTOKENS/2]).
-export([xs_ENTITIES/2]).
-export([xs_IDREFS/2]).
-export([xs_error/2]).

-include("xqerl.hrl").

xs_ENTITIES(_S, []) -> [];
xs_ENTITIES(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:ENTITIES' )).
xs_ENTITY(_S, []) -> [];
xs_ENTITY(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:ENTITY' )).
xs_ID(_S, []) -> [];
xs_ID(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:ID' )).
xs_IDREF(_S, []) -> [];
xs_IDREF(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:IDREF' )).
xs_IDREFS(_S, []) -> [];
xs_IDREFS(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:IDREFS' )).
xs_NCName(_S, []) -> [];
xs_NCName(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:NCName' )).
xs_NMTOKEN(_S, []) -> [];
xs_NMTOKEN(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:NMTOKEN' )).
xs_NMTOKENS(_S, []) -> [];
xs_NMTOKENS(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:NMTOKENS' )).
xs_Name(_S, []) -> [];
xs_Name(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:Name' )).
xs_QName(_S, []) -> [];
xs_QName(S, Arg1) ->
   ?sin(xqerl_types:cast_as( Arg1, 'xs:QName', maps:get(namespaces,S) )).
xs_anyURI(_S, []) -> [];
xs_anyURI(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:anyURI' )).
xs_base64Binary(_S, []) -> [];
xs_base64Binary(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:base64Binary' )).
xs_boolean(_S, []) -> [];
xs_boolean(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:boolean' )).
xs_byte(_S, []) -> [];
xs_byte(_S, Arg1) ->
   ?sin(xqerl_types:cast_as( Arg1, 'xs:byte' )).
xs_date(_S, []) -> [];
xs_date(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:date' )).
xs_dateTime(_S, []) -> [];
xs_dateTime(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:dateTime' )).
xs_dateTimeStamp(_S, []) -> [];
xs_dateTimeStamp(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:dateTimeStamp' )).
xs_dayTimeDuration(_S, []) -> [];
xs_dayTimeDuration(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:dayTimeDuration' )).
xs_decimal(_S, []) -> [];
xs_decimal(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:decimal' )).
xs_double(_S, []) -> [];
xs_double(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:double' )).
xs_duration(_S, []) -> [];
xs_duration(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:duration' )).
%xs_error(_S, {1,_} = E) -> E; % can also be 'XPTY0004' or 'XPST0005'
-dialyzer({[no_return], [xs_error/2]}).
xs_error(_S, _Arg1) ->
   xqerl_error:error('XPTY0004'). % no direct error constructor
xs_float(_S, []) -> [];
xs_float(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:float' )).
xs_gDay(_S, []) -> [];
xs_gDay(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:gDay' )).
xs_gMonth(_S, []) -> [];
xs_gMonth(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:gMonth' )).
xs_gMonthDay(_S, []) -> [];
xs_gMonthDay(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:gMonthDay' )).
xs_gYear(_S, []) -> [];
xs_gYear(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:gYear' )).
xs_gYearMonth(_S, []) -> [];
xs_gYearMonth(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:gYearMonth' )).
xs_hexBinary(_S, []) -> [];
xs_hexBinary(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:hexBinary' )).
xs_int(_S, []) -> [];
xs_int(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:int' )).
xs_integer(_S, []) -> [];
xs_integer(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:integer' )).
xs_language(_S, []) -> [];
xs_language(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:language' )).
xs_long(_S, []) -> [];
xs_long(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:long' )).
xs_negativeInteger(_S, []) -> [];
xs_negativeInteger(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:negativeInteger' )).
xs_nonNegativeInteger(_S, []) -> [];
xs_nonNegativeInteger(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:nonNegativeInteger' )).
xs_nonPositiveInteger(_S, []) -> [];
xs_nonPositiveInteger(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:nonPositiveInteger' )).
xs_normalizedString(_S, []) -> [];
xs_normalizedString(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:normalizedString' )).
xs_positiveInteger(_S, []) -> [];
xs_positiveInteger(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:positiveInteger' )).
xs_short(_S, []) -> [];
xs_short(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:short' )).
xs_string(_S, []) -> [];
xs_string(_S, Arg1) ->
   ?sin(xqerl_types:cast_as( Arg1, 'xs:string' )).
xs_time(_S, []) -> [];
xs_time(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:time' )).
xs_token(_S, []) -> [];
xs_token(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:token' )).
xs_unsignedByte(_S, []) -> [];
xs_unsignedByte(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:unsignedByte' )).
xs_unsignedInt(_S, []) -> [];
xs_unsignedInt(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:unsignedInt' )).
xs_unsignedLong(_S, []) -> [];
xs_unsignedLong(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:unsignedLong' )).
xs_unsignedShort(_S, []) -> [];
xs_unsignedShort(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:unsignedShort' )).
xs_untypedAtomic(_S, []) -> [];
xs_untypedAtomic(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:untypedAtomic' )).
xs_yearMonthDuration(_S, []) -> [];
xs_yearMonthDuration(_S, Arg1) -> 
   ?sin(xqerl_types:cast_as( Arg1, 'xs:yearMonthDuration' )).

