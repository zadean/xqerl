-ifndef(xqerl_hrl).
-define(xqerl_hrl, true).
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
-include_lib("kernel/include/logger.hrl").
-include("xqerl_item.hrl").

%% The variables available in both XQuery 3.1 and XSLT 3.0 are:
%% - err:code - the error code
%% - err:description - a free-form error description
%% - err:value - an arbitrary value associated with the error
%% - err:module - the URI of the query stylesheet module in which the error occurred
%% - err:line-number - the line number of the instruction where the error occurred
%% - err:column-number - the column number of the instruction where the error occurred
%% An additional variable is available only in XQuery 3.1:
%% - err:additional - further implementation-defined information about the error

-define(put(Key,Val),xqerl_lib:lput(Key,Val)).
-define(put(Tab,Key,Val),xqerl_lib:lput(Tab,Key,Val)).

-define(get(Key),xqerl_lib:lget(Key)).
-define(get(Tab,Key),xqerl_lib:lget(Tab,Key)).


-define(dbg(A,B),?LOG_DEBUG("~p: ~p",[A,B], #{domain=>[xqerl]})).
-define(info(A,B),?LOG_INFO("~p: ~p",[A,B], #{domain=>[xqerl]})).
-define(err(Code),erlang:exit(xqerl_error:error(Code, {<<?FILE>>, ?LINE}))).
-define(err(Code, Anno), erlang:exit(xqerl_error:error(Code, Anno))).

-define(node(I), (I=='node' orelse I=='document' orelse I=='document-node' orelse I=='element' orelse I=='attribute' orelse I=='namespace' orelse I=='text' orelse I=='comment' orelse I=='processing-instruction')).

-define(xs_duration(I),(I=='xs:duration' orelse I=='xs:yearMonthDuration' orelse I=='xs:dayTimeDuration')).
-define(xs_numeric(I), 
        (I=='xs:numeric' orelse 
         I=='xs:float' orelse I=='xs:double' orelse 
         ?xs_decimal(I))).
-define(xs_decimal(I), 
        (I=='xs:decimal' orelse 
         ?xs_integer(I))).
-define(xs_integer(I), 
        (I=='xs:integer' orelse
         ?xs_nonPositiveInteger(I) orelse
         ?xs_long(I) orelse
         ?xs_nonNegativeInteger(I))).
-define(xs_nonPositiveInteger(I), 
        (I=='xs:nonPositiveInteger' orelse I=='xs:negativeInteger')).
-define(xs_long(I),
        (I=='xs:long' orelse ?xs_int(I))).
-define(xs_int(I),
        (I=='xs:int' orelse ?xs_short(I))).
-define(xs_short(I),   
        (I=='xs:short' orelse I=='xs:byte')).
-define(xs_nonNegativeInteger(I), 
        (I=='xs:nonNegativeInteger' orelse 
         I=='xs:positiveInteger' orelse 
         ?xs_unsignedLong(I))).
-define(xs_unsignedLong(I), 
        (I=='xs:unsignedLong' orelse ?xs_unsignedInt(I))).
-define(xs_unsignedInt(I), 
        (I=='xs:unsignedInt' orelse ?xs_unsignedShort(I))).
-define(xs_unsignedShort(I), 
        (I=='xs:unsignedShort' orelse I=='xs:unsignedByte')).

-define(xs_string(I), 
        (I=='xs:string' orelse ?xs_normalizedString(I))).
-define(xs_normalizedString(I), 
        (I=='xs:normalizedString' orelse ?xs_token(I))).
-define(xs_token(I), 
        (I=='xs:token' orelse 
         I=='xs:language' orelse
         ?xs_Name(I) orelse 
         ?xs_NMTOKEN(I))).
-define(xs_Name(I),  
        (I=='xs:Name' orelse ?xs_NCName(I))).
-define(xs_NCName(I),
        (I=='xs:NCName' orelse I=='xs:ID' orelse 
         ?xs_IDREF(I) orelse ?xs_ENTITY(I))).
-define(xs_IDREF(I),
        (I=='xs:IDREF' orelse I=='xs:IDREFS')).
-define(xs_ENTITY(I),
        (I=='xs:ENTITY' orelse I=='xs:ENTITIES')).
-define(xs_NMTOKEN(I),
        (I=='xs:NMTOKEN' orelse I=='xs:NMTOKENS')).

-define(xs_anyAtomicType(I),
       (I=='xs:anyAtomicType' orelse
        I=='xs:anySimpleType' orelse I=='xs:untypedAtomic' orelse I=='xs:dateTime' orelse I=='xs:dateTimeStamp' orelse I=='xs:time' orelse I=='xs:date' orelse 
        I=='xs:gYearMonth' orelse I=='xs:gYear' orelse I=='xs:gMonthDay' orelse I=='xs:gDay' orelse I=='xs:gMonth' orelse I=='xs:boolean' orelse 
        I=='xs:base64Binary' orelse I=='xs:hexBinary' orelse I=='xs:float' orelse I=='xs:double' orelse I=='xs:anyURI' orelse I=='xs:QName' orelse I=='xs:NOTATION' orelse 
        I=='xs:numeric' orelse 
        I=='xs:decimal' orelse 
        I=='xs:integer' orelse 
        I=='xs:nonPositiveInteger' orelse I=='xs:negativeInteger' orelse 
        I=='xs:long' orelse I=='xs:int' orelse I=='xs:short' orelse I=='xs:byte' orelse 
        I=='xs:nonNegativeInteger' orelse 
        I=='xs:positiveInteger' orelse 
        I=='xs:unsignedLong' orelse I=='xs:unsignedInt' orelse I=='xs:unsignedShort' orelse I=='xs:unsignedByte' orelse 
        I=='xs:string' orelse 
        I=='xs:normalizedString' orelse 
        I=='xs:token' orelse 
        I=='xs:language' orelse I=='xs:Name' orelse I=='xs:NCName' orelse I=='xs:NMTOKEN'  orelse I=='xs:NMTOKENS' orelse 
        I=='xs:ID' orelse I=='xs:IDREF' orelse I=='xs:IDREFS' orelse I=='xs:ENTITY' orelse I=='xs:ENTITIES' orelse 
        I=='xs:duration' orelse I=='xs:yearMonthDuration' orelse I=='xs:dayTimeDuration')
        ).

-record(xqError, {
      name,
      description = [],
      value = [],
      location = {[],[],0}, % {Module, Line, Column}
      additional = []
    }).

-record(off_set, {sign = '+',
                  hour = 0, 
                  min = 0}).

% integer with scaling-factor
-record(xsDecimal,{int = 0,
                   scf = 0}).

-record(xsDateTime, {
                   sign     = '+',
                   year     = 0,
                   month    = 1,
                   day      = 1,
                   hour     = 0,
                   minute   = 0,
                   second   = #xsDecimal{},
                   offset   = #off_set{},
                   string_value
                   }).

-record(xqSeqType, {
   type  = item :: term(), %:: atom() | #xqKindTest{},
   occur = zero_or_many  :: zero | one | zero_or_one | zero_or_many | one_or_many | none
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

-record(array, {data = []}).


-record(xqNameTest, {
   name :: #qname{}
}).

-record(xqKindTest, {
   kind = node :: node | text | comment | 'namespace-node' | namespace | 'schema-element' | element | 'schema-attribute' | attribute | 'document-node' | document | 'processing-instruction',
   name = undefined :: #qname{} | undefined | term(),
   type
}).

-record(annotation,
        {
         name     :: #qname{},
         values   :: [#xqAtomicValue{} | binary() | atom() | number()]         
        }).

-record(xqFunction, {
   annotations       = [] :: [ #annotation{} ],
   name              = undefined :: #qname{} | undefined,
   arity             = 0 :: integer(),
   params            = [] :: [#xqSeqType{}] | [term()] | {any(), any()},
   type              = undefined :: undefined | any | #xqSeqType{},
   body              = undefined :: undefined | tuple() | fun(),
   external          = false :: boolean()
}).


-record(xqFunTest, {
   kind   = function :: function | map | array,
   annotations = [] :: [ #annotation{} ],
   name   :: undefined | #qname{},
   params = any :: [#xqSeqType{}] | [any] | any,
   type   = any :: #xqSeqType{} | #xqKindTest{} | any
}).

%% range statement 
-record(xqRange, {min :: integer(),
                  max :: integer(),
                  cnt :: non_neg_integer()
}).

% RESTXQ endpoint
-record(endpoint, {path,
                   path_length,
                   path_map,
                   methods,
                   media_types,
                   output_media_types,
                   fields,
                   module,
                   function}).

-endif. % -ifdef(xqerl_hrl).
