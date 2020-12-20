-ifndef(xqerl_hrl).
-define(xqerl_hrl, true).

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

-define(put(Key, Val), xqerl_lib:lput(Key, Val)).
-define(put(Tab, Key, Val), xqerl_lib:lput(Tab, Key, Val)).

-define(get(Key), xqerl_lib:lget(Key)).
-define(get(Tab, Key), xqerl_lib:lget(Tab, Key)).

-define(dbg(A, B), ?LOG_DEBUG("~p: ~p", [A, B], #{domain => [xqerl]})).
-define(info(A, B), ?LOG_INFO("~p: ~p", [A, B], #{domain => [xqerl]})).
-define(err(Code), erlang:throw(xqerl_error:error(Code))).
-define(err(Code, Anno), erlang:throw(xqerl_error:error(Code, Anno))).

-record(off_set, {
    sign = '+',
    hour = 0,
    min = 0
}).

% integer with scaling-factor
-record(xsDecimal, {
    int = 0,
    scf = 0
}).

-record(xsDateTime, {
    sign = '+',
    year = 0,
    month = 1,
    day = 1,
    hour = 0,
    minute = 0,
    second = #xsDecimal{},
    offset = #off_set{},
    string_value
}).

-record(seqType, {
    %:: atom() | #kindTest{},
    type = item :: term(),
    occur = zero_or_many :: zero | one | zero_or_one | zero_or_many | one_or_many | none
}).

-record(qname, {
    namespace,
    prefix,
    local_name
}).

-record(nameTest, {
    name :: #qname{}
}).

-record(kindTest, {
    kind = node ::
        node
        | text
        | comment
        | 'namespace-node'
        | namespace
        | 'schema-element'
        | element
        | 'schema-attribute'
        | attribute
        | 'document-node'
        | document
        | 'processing-instruction',
    name = undefined :: #qname{} | undefined | term(),
    type
}).

-record(annotation, {
    name :: #qname{},
    values :: [#xqAtomicValue{} | binary() | atom() | number()]
}).

-record(xqFunction, {
    annotations = [] :: [#annotation{}],
    name = undefined :: #qname{} | undefined,
    arity = 0 :: integer(),
    params = [] :: [#seqType{}] | [term()] | {any(), any()},
    type = undefined :: undefined | any | #seqType{},
    body = undefined :: undefined | tuple() | fun(),
    external = false :: boolean()
}).

-record(funTest, {
    kind = function :: function | map | array,
    annotations = [] :: [#annotation{}],
    name :: undefined | #qname{},
    params = any :: [#seqType{}] | [any] | any,
    type = any :: #seqType{} | #kindTest{} | any
}).

%% range statement
-record(range, {
    min :: integer(),
    max :: integer(),
    cnt :: non_neg_integer()
}).

% RESTXQ endpoint
-record(endpoint, {
    path,
    path_length,
    path_map,
    methods,
    media_types,
    output_media_types,
    fields,
    module,
    function
}).

% -ifdef(xqerl_hrl).
-endif.
