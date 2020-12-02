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

-module(xqerl_static_fn_props).

-include("xqerl_parser.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([get_props/2]).
-export([merge_props/2]).

-define(XS, <<"http://www.w3.org/2001/XMLSchema">>).
-define(FN, <<"http://www.w3.org/2005/xpath-functions">>).
-define(AR, <<"http://www.w3.org/2005/xpath-functions/array">>).
-define(MP, <<"http://www.w3.org/2005/xpath-functions/map">>).
-define(MT, <<"http://www.w3.org/2005/xpath-functions/math">>).
-define(FL, <<"http://expath.org/ns/file">>).
-define(HT, <<"http://expath.org/ns/http-client">>).
-define(RD, <<"http://xqerl.org/modules/random">>).
-define(BX, <<"http://xqerl.org/modules/client/BaseX">>).
-define(CV, <<"http://xqerl.org/modules/csv">>).
-define(DB, <<"http://xqerl.org/modules/database">>).

% non-deterministic
get_props(#xqQName{namespace = ?BX, local_name = <<"connect">>}, 4) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?BX, local_name = <<"execute">>}, 2) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?RD, local_name = <<"double">>}, 0) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?RD, local_name = <<"integer">>}, 0) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?RD, local_name = <<"integer">>}, 1) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?RD, local_name = <<"gaussian">>}, 1) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?RD, local_name = <<"seeded-permutation">>}, 2) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?RD, local_name = <<"uuid">>}, 0) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"error">>}, 0) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"error">>}, 1) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"error">>}, 2) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"error">>}, 3) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"unordered">>}, 1) ->
    props(false, false, false, false, [], []);
get_props(#xqQName{namespace = ?MP, local_name = <<"keys">>}, 1) ->
    props(false, false, false, false, [], []);
% HOFs
get_props(#xqQName{namespace = ?AR, local_name = <<"filter">>}, 2) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?AR, local_name = <<"fold-left">>}, 3) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?AR, local_name = <<"fold-right">>}, 3) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?AR, local_name = <<"for-each">>}, 2) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?AR, local_name = <<"for-each-pair">>}, 3) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"apply">>}, 2) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"filter">>}, 2) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"fold-left">>}, 3) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"fold-right">>}, 3) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"for-each">>}, 2) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"for-each-pair">>}, 3) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"function-arity">>}, 1) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"function-name">>}, 1) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"random-number-generator">>}, 0) ->
    props(true, false, false, true, [], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"random-number-generator">>}, 1) ->
    props(true, false, false, true, [], []);
% context/focus dependent
get_props(#xqQName{namespace = ?FN, local_name = <<"data">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"document-uri">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"element-with-id">>}, 1) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"generate-id">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"has-children">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"id">>}, 1) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"idref">>}, 1) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"lang">>}, 1) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"local-name">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"name">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"namespace-uri">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"nilled">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"node-name">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"normalize-space">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"number">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"path">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"root">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"string">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"string-length">>}, 0) ->
    props(true, true, true, false, [], [context_item]);
% all DB use the base-uri
get_props(#xqQName{namespace = ?DB}, _) ->
    props(true, true, false, false, [base_uri, locks], [available_collections]);
get_props(#xqQName{namespace = ?FL, local_name = <<"base-dir">>}, 0) ->
    props(true, true, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?BX, local_name = <<"query">>}, 2) ->
    props(false, false, false, false, [base_uri, known_namespaces], []);
get_props(#xqQName{namespace = ?BX, local_name = <<"query">>}, 3) ->
    props(false, false, false, false, [base_uri, known_namespaces], []);
get_props(#xqQName{namespace = ?XS, local_name = <<"QName">>}, 2) ->
    props(false, false, false, false, [known_namespaces], []);
get_props(#xqQName{namespace = ?AR, local_name = <<"sort">>}, 1) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?AR, local_name = <<"sort">>}, 2) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?AR, local_name = <<"sort">>}, 3) ->
    props(true, false, false, true, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"adjust-dateTime-to-timezone">>}, 1) ->
    props(true, true, false, false, [], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"adjust-date-to-timezone">>}, 1) ->
    props(true, true, false, false, [], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"adjust-time-to-timezone">>}, 1) ->
    props(true, true, false, false, [], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"analyze-string">>}, 2) ->
    props(false, false, false, false, [base_uri, known_namespaces], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"analyze-string">>}, 3) ->
    props(false, false, false, false, [base_uri, known_namespaces], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"available-environment-variables">>}, 0) ->
    props(true, true, false, false, [], [environment_variables]);
get_props(#xqQName{namespace = ?FN, local_name = <<"base-uri">>}, 0) ->
    props(true, true, true, false, [base_uri], [context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"base-uri">>}, 1) ->
    props(true, false, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"collation-key">>}, 1) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"collation-key">>}, 2) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"collection">>}, 0) ->
    props(true, true, false, false, [base_uri, locks], [available_collections]);
get_props(#xqQName{namespace = ?FN, local_name = <<"collection">>}, 1) ->
    props(true, true, false, false, [base_uri, locks], [available_collections]);
get_props(#xqQName{namespace = ?FN, local_name = <<"compare">>}, 2) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"compare">>}, 3) ->
    props(true, true, false, false, [known_collations, base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"contains">>}, 2) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"contains">>}, 3) ->
    props(true, true, false, false, [known_collations, base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"contains-token">>}, 2) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"contains-token">>}, 3) ->
    props(true, true, false, false, [known_collations, base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"current-date">>}, 0) ->
    props(true, true, false, false, [], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"current-dateTime">>}, 0) ->
    props(true, true, false, false, [], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"current-time">>}, 0) ->
    props(true, true, false, false, [], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"deep-equal">>}, 2) ->
    props(true, true, false, false, [known_collations], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"deep-equal">>}, 3) ->
    props(true, true, false, false, [known_collations, base_uri], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"default-collation">>}, 0) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"default-language">>}, 0) ->
    props(true, true, false, false, [default_language], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"distinct-values">>}, 1) ->
    props(false, true, false, false, [known_collations], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"distinct-values">>}, 2) ->
    props(true, true, false, false, [known_collations, base_uri], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"doc">>}, 1) ->
    props(true, true, false, false, [base_uri, locks], [available_collections]);
get_props(#xqQName{namespace = ?FN, local_name = <<"doc-available">>}, 1) ->
    props(true, true, false, false, [base_uri, locks], [available_collections]);
get_props(#xqQName{namespace = ?FN, local_name = <<"ends-with">>}, 2) ->
    props(true, true, false, false, [known_collations, base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"ends-with">>}, 3) ->
    props(true, true, false, false, [known_collations, base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"environment-variable">>}, 1) ->
    props(true, true, false, false, [], [environment_variables]);
get_props(#xqQName{namespace = ?FN, local_name = <<"format-date">>}, 2) ->
    format_date_props();
get_props(#xqQName{namespace = ?FN, local_name = <<"format-date">>}, 5) ->
    props(true, true, false, false, [known_namespaces], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"format-dateTime">>}, 2) ->
    format_date_props();
get_props(#xqQName{namespace = ?FN, local_name = <<"format-dateTime">>}, 5) ->
    props(true, true, false, false, [known_namespaces], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"format-integer">>}, 2) ->
    props(true, true, false, false, [default_language], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"format-number">>}, 2) ->
    props(true, false, false, false, [known_decimal_formats, known_namespaces], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"format-number">>}, 3) ->
    props(true, true, false, false, [known_decimal_formats, known_namespaces], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"format-time">>}, 2) ->
    format_date_props();
get_props(#xqQName{namespace = ?FN, local_name = <<"format-time">>}, 5) ->
    props(true, true, false, false, [known_namespaces], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"function-lookup">>}, 2) ->
    props(
        true,
        true,
        true,
        true,
        [
            known_decimal_formats,
            known_namespaces,
            known_collations,
            dynamic_known_functions,
            base_uri,
            default_calendar,
            default_language,
            default_place,
            locks
        ],
        [
            available_collections,
            available_uri_collections,
            context_item,
            context_position,
            context_size,
            environment_variables,
            implicit_timezone
        ]
    );
get_props(#xqQName{namespace = ?FN, local_name = <<"implicit-timezone">>}, 0) ->
    props(true, true, false, false, [], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"index-of">>}, 2) ->
    props(true, true, false, false, [known_collations], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"index-of">>}, 3) ->
    props(true, true, false, false, [known_collations, base_uri], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"json-doc">>}, 1) ->
    props(true, true, false, false, [base_uri, locks], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"json-doc">>}, 2) ->
    props(true, true, false, false, [base_uri, locks], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"json-to-xml">>}, 1) ->
    props(false, true, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"json-to-xml">>}, 2) ->
    props(false, true, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"last">>}, 0) ->
    props(true, true, true, false, [], [context_size, context_item]);
%% get_props(#xqQName{namespace = ?FN,local_name = <<"load-xquery-module">>}, 1) ->
%%   props(true, true, false, true, [XSLT], []);
%% get_props(#xqQName{namespace = ?FN,local_name = <<"load-xquery-module">>}, 2) ->
%%   props(true, true, false, true, [XSLT], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"max">>}, 1) ->
    props(true, true, false, false, [known_collations], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"max">>}, 2) ->
    props(true, true, false, false, [known_collations, base_uri], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"min">>}, 1) ->
    props(true, true, false, false, [known_collations], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"min">>}, 2) ->
    props(true, true, false, false, [known_collations, base_uri], [implicit_timezone]);
get_props(#xqQName{namespace = ?FN, local_name = <<"parse-json">>}, 1) ->
    props(true, false, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"parse-json">>}, 2) ->
    props(true, false, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"parse-xml">>}, 1) ->
    props(false, true, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"parse-xml-fragment">>}, 1) ->
    props(false, true, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"position">>}, 0) ->
    props(true, true, true, false, [], [context_position, context_item]);
get_props(#xqQName{namespace = ?FN, local_name = <<"QName">>}, 2) ->
    props(true, false, false, false, [known_namespaces], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"resolve-uri">>}, 1) ->
    props(true, true, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"resolve-uri">>}, 2) ->
    props(true, false, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"sort">>}, 1) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"sort">>}, 2) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"sort">>}, 3) ->
    props(true, true, false, true, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"starts-with">>}, 2) ->
    props(true, true, false, false, [known_collations, base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"starts-with">>}, 3) ->
    props(true, true, false, false, [known_collations, base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"static-base-uri">>}, 0) ->
    props(true, true, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"substring-after">>}, 2) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"substring-after">>}, 3) ->
    props(true, true, false, false, [known_collations, base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"substring-before">>}, 2) ->
    props(true, true, false, false, [known_collations], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"substring-before">>}, 3) ->
    props(true, true, false, false, [known_collations, base_uri], []);
%% get_props(#xqQName{namespace = ?FN,local_name = <<"transform">>}, 1) ->
%%   props(false, true, false, false, [XSLT], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"unparsed-text">>}, 1) ->
    props(true, true, false, false, [base_uri, locks], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"unparsed-text">>}, 2) ->
    props(true, true, false, false, [base_uri, locks], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"unparsed-text-available">>}, 1) ->
    props(true, true, false, false, [base_uri, locks], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"unparsed-text-available">>}, 2) ->
    props(true, true, false, false, [base_uri, locks], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"unparsed-text-lines">>}, 1) ->
    props(true, true, false, false, [base_uri, locks], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"unparsed-text-lines">>}, 2) ->
    props(true, true, false, false, [base_uri, locks], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"uri-collection">>}, 0) ->
    props(true, true, false, false, [base_uri, locks], [available_uri_collections]);
get_props(#xqQName{namespace = ?FN, local_name = <<"uri-collection">>}, 1) ->
    props(true, true, false, false, [base_uri, locks], [available_uri_collections]);
get_props(#xqQName{namespace = ?FN, local_name = <<"xml-to-json">>}, 1) ->
    props(true, false, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?FN, local_name = <<"xml-to-json">>}, 2) ->
    props(true, false, false, false, [base_uri], []);
get_props(#xqQName{namespace = ?MP, local_name = <<"for-each">>}, 2) ->
    props(false, false, false, true, [], []);
get_props(_, _) ->
    default_props().

merge_props(
    #{
        deterministic := Deterministic1,
        context_dependent := ContextDependent1,
        focus_dependent := FocusDependent1,
        higher_order := HigherOrder1,
        static_properties := StaticProperties1,
        dynamic_properties := DynamicProperties1
    },
    #{
        deterministic := Deterministic2,
        context_dependent := ContextDependent2,
        focus_dependent := FocusDependent2,
        higher_order := HigherOrder2,
        static_properties := StaticProperties2,
        dynamic_properties := DynamicProperties2
    }
) ->
    #{
        deterministic => Deterministic1 andalso Deterministic2,
        context_dependent => ContextDependent1 orelse ContextDependent2,
        focus_dependent => FocusDependent1 orelse FocusDependent2,
        higher_order => HigherOrder1 orelse HigherOrder2,
        static_properties => lists:umerge([StaticProperties1, StaticProperties2]),
        dynamic_properties => lists:umerge([DynamicProperties1, DynamicProperties2])
    }.

props(
    Deterministic,
    ContextDependent,
    FocusDependent,
    HigherOrder,
    StaticProperties,
    DynamicProperties
) ->
    #{
        deterministic => Deterministic,
        context_dependent => ContextDependent,
        focus_dependent => FocusDependent,
        higher_order => HigherOrder,
        static_properties => StaticProperties,
        dynamic_properties => DynamicProperties
    }.

default_props() ->
    props(true, false, false, false, [], []).

format_date_props() ->
    props(true, true, false, false, [default_calendar, default_language, default_place], [
        implicit_timezone
    ]).
