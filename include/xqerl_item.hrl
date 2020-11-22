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

% records accessible to static phase and run-time
-ifndef(xqerl_item_hrl).
-define(xqerl_item_hrl, true).

-define(xs_duration(I),
    (I == 'xs:duration' orelse I == 'xs:yearMonthDuration' orelse I == 'xs:dayTimeDuration')
).

-define(xs_numeric(I),
    (I == 'xs:numeric' orelse
        I == 'xs:float' orelse
        I == 'xs:double' orelse
        ?xs_decimal(I))
).

-define(xs_decimal(I),
    (I == 'xs:decimal' orelse
        ?xs_integer(I))
).

-define(xs_integer(I),
    (I == 'xs:integer' orelse
        ?xs_nonPositiveInteger(I) orelse
        ?xs_long(I) orelse
        ?xs_nonNegativeInteger(I))
).

-define(xs_nonPositiveInteger(I),
    (I == 'xs:nonPositiveInteger' orelse I == 'xs:negativeInteger')
).

-define(xs_long(I),
    (I == 'xs:long' orelse ?xs_int(I))
).

-define(xs_int(I),
    (I == 'xs:int' orelse ?xs_short(I))
).

-define(xs_short(I),
    (I == 'xs:short' orelse I == 'xs:byte')
).

-define(xs_nonNegativeInteger(I),
    (I == 'xs:nonNegativeInteger' orelse
        I == 'xs:positiveInteger' orelse
        ?xs_unsignedLong(I))
).

-define(xs_unsignedLong(I),
    (I == 'xs:unsignedLong' orelse ?xs_unsignedInt(I))
).

-define(xs_unsignedInt(I),
    (I == 'xs:unsignedInt' orelse ?xs_unsignedShort(I))
).

-define(xs_unsignedShort(I),
    (I == 'xs:unsignedShort' orelse I == 'xs:unsignedByte')
).

-define(xs_string(I),
    (I == 'xs:string' orelse ?xs_normalizedString(I))
).

-define(xs_normalizedString(I),
    (I == 'xs:normalizedString' orelse ?xs_token(I))
).

-define(xs_token(I),
    (I == 'xs:token' orelse
        I == 'xs:language' orelse
        ?xs_Name(I) orelse
        ?xs_NMTOKEN(I))
).

-define(xs_Name(I),
    (I == 'xs:Name' orelse ?xs_NCName(I))
).

-define(xs_NCName(I),
    (I == 'xs:NCName' orelse
        I == 'xs:ID' orelse
        ?xs_IDREF(I) orelse ?xs_ENTITY(I))
).

-define(xs_IDREF(I),
    (I == 'xs:IDREF' orelse I == 'xs:IDREFS')
).

-define(xs_ENTITY(I),
    (I == 'xs:ENTITY' orelse I == 'xs:ENTITIES')
).

-define(xs_NMTOKEN(I),
    (I == 'xs:NMTOKEN' orelse I == 'xs:NMTOKENS')
).

-define(xs_anyAtomicType(I),
    (I == 'xs:anyAtomicType' orelse
        I == 'xs:anySimpleType' orelse
        I == 'xs:untypedAtomic' orelse
        I == 'xs:dateTime' orelse
        I == 'xs:dateTimeStamp' orelse
        I == 'xs:time' orelse
        I == 'xs:date' orelse
        I == 'xs:gYearMonth' orelse
        I == 'xs:gYear' orelse
        I == 'xs:gMonthDay' orelse
        I == 'xs:gDay' orelse
        I == 'xs:gMonth' orelse
        I == 'xs:boolean' orelse
        I == 'xs:base64Binary' orelse
        I == 'xs:hexBinary' orelse
        I == 'xs:float' orelse
        I == 'xs:double' orelse
        I == 'xs:anyURI' orelse
        I == 'xs:QName' orelse
        I == 'xs:NOTATION' orelse
        I == 'xs:numeric' orelse
        I == 'xs:decimal' orelse
        I == 'xs:integer' orelse
        I == 'xs:nonPositiveInteger' orelse
        I == 'xs:negativeInteger' orelse
        I == 'xs:long' orelse
        I == 'xs:int' orelse
        I == 'xs:short' orelse
        I == 'xs:byte' orelse
        I == 'xs:nonNegativeInteger' orelse
        I == 'xs:positiveInteger' orelse
        I == 'xs:unsignedLong' orelse
        I == 'xs:unsignedInt' orelse
        I == 'xs:unsignedShort' orelse
        I == 'xs:unsignedByte' orelse
        I == 'xs:string' orelse
        I == 'xs:normalizedString' orelse
        I == 'xs:token' orelse
        I == 'xs:language' orelse
        I == 'xs:Name' orelse
        I == 'xs:NCName' orelse
        I == 'xs:NMTOKEN' orelse
        I == 'xs:NMTOKENS' orelse
        I == 'xs:ID' orelse
        I == 'xs:IDREF' orelse
        I == 'xs:IDREFS' orelse
        I == 'xs:ENTITY' orelse
        I == 'xs:ENTITIES' orelse
        I == 'xs:duration' orelse I == 'xs:yearMonthDuration' orelse I == 'xs:dayTimeDuration')
).

-record(xqAtomicValue, {
    type = undefined :: atom(),
    value = undefined :: term() | []
}).

-record(xqError, {
    name,
    description = [],
    value = [],
    % {Module, Line, Column}
    location = undefined,
    additional = []
}).

-record(xqNamespace, {
    namespace :: undefined | binary() | [],
    prefix :: undefined | binary() | []
}).

-record(dec_format, {
    decimal = ".",
    grouping = ",",
    infinity = "Infinity",
    minus = "-",
    nan = "NaN",
    percent = "%",
    per_mille = [16#2030],
    zero = "0",
    digit = "#",
    pattern = ";",
    exponent = "e"
}).

%% -record(xqXmlFragment, {
%%       identity     = undefined :: term(),
%%       document_uri = undefined :: term(),
%%       children     = []        :: [term()]
%%    }).
%%
%% -record(xqDocumentNode, {
%%       identity     = undefined :: term(),
%%       document_uri = undefined :: term(),
%%       base_uri     = <<>>      :: binary() | #xqAtomicValue{},
%%       children     = []        :: [term()],
%%       content      = undefined :: term()
%%    }).
%%
%% -record(xqElementNode, {
%%       identity     = undefined :: term(),
%%       name         = undefined :: #qname{} | term(),
%%       parent_node  = undefined :: term(),
%%       children     = []        :: [term()],
%%       attributes   = []        :: undefined | term() | [term()],
%%       inscope_ns   = []        ,
%%       type         = undefined :: term(),
%%       base_uri     = <<>>      :: binary() | #xqAtomicValue{},
%%       content      = undefined :: term()
%%    }).
%%
%% -record(xqAttributeNode, {
%%       identity     = undefined :: term(),
%%       name         = undefined :: #qname{} | term(),
%%       parent_node  = undefined :: term(),
%%       string_value = <<>>      :: binary() | term(),
%%       type         = undefined :: term()
%%    }).
%%
%% -record(xqNamespaceNode, {
%%       identity     = undefined :: term(),
%%       uri          = <<>>      :: binary() | term(),
%%       prefix       = <<>>      :: binary() | term(),
%%       parent_node  = undefined :: term()
%%    }).
%%
%% -record(xqProcessingInstructionNode, {
%%       identity     = undefined :: term(),
%%       name         = undefined :: #qname{} | term(),
%%       parent_node  = undefined :: term(),
%%       base_uri     = <<>>      :: binary() | #xqAtomicValue{},
%%       string_value = <<>>      :: binary() | term()
%%    }).
%%
%% -record(xqCommentNode, {
%%       identity     = undefined :: term(),
%%       parent_node  = undefined :: term(),
%%       string_value = <<>>      :: binary() | term()
%%    }).
%%
%% -record(xqTextNode, {
%%       identity     = undefined :: term(),
%%       parent_node  = undefined :: term(),
%%       cdata        = false     :: boolean(),
%%       string_value = <<>>      :: binary() | term()
%%    }).
%%

% -ifdef(xqerl_hrl).
-endif.
