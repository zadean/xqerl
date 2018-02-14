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

%% @doc Implementation of the "http://www.w3.org/2005/xpath-functions" namespace.
%% @NOTE Might need to be broken apart. Need a concept for mapping functions in 
%%       one namespace across different erlang modules. 
%%       The functions attribute compiled in sucks!!
 
-module(xqerl_fn).
-compile(inline_list_funcs).

-define(bool(Val), #xqAtomicValue{type = 'xs:boolean', value = Val}).
-define(atint(Val), #xqAtomicValue{type = 'xs:integer', value = Val}).
-define(dec(Val), #xqAtomicValue{type = 'xs:decimal', value = Val}).
-define(dbl(Val), #xqAtomicValue{type = 'xs:double', value = Val}).
-define(str(Val), #xqAtomicValue{type = 'xs:string', value = Val}).
-define(atm(Typ,Val), #xqAtomicValue{type = Typ, value = Val}).

-define(NS, "http://www.w3.org/2005/xpath-functions").
-define(ERROR_MATCH(Err), 
        _:#xqError{name = #xqAtomicValue{value= #qname{local_name = Err}}}).

-define(noderecs(N), is_record(N, xqNode);
                     is_record(N, xqElementNode);
                     is_record(N, xqDocumentNode);
                     is_record(N, xqAttributeNode);
                     is_record(N, xqCommentNode);
                     is_record(N, xqTextNode);
                     is_record(N, xqProcessingInstructionNode);
                     is_record(N, xqNamespaceNode)).

-include("xqerl.hrl").

-'module-namespace'({"http://www.w3.org/2005/xpath-functions", "fn"}).
-variables([]).
-functions([
{{qname, ?NS, "fn","abs"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'abs', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, ?NS, "fn","adjust-dateTime-to-timezone"},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'adjust-dateTime-to-timezone', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, "fn","adjust-dateTime-to-timezone"},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'adjust-dateTime-to-timezone', 3}, 2,[{xqSeqType, 'xs:dateTime', zero_or_one},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
{{qname, ?NS, "fn","adjust-date-to-timezone"},{xqSeqType, 'xs:date', zero_or_one}, [], 
 {'adjust-date-to-timezone', 2}, 1, [{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, ?NS, "fn","adjust-date-to-timezone"},{xqSeqType, 'xs:date', zero_or_one}, [], 
 {'adjust-date-to-timezone', 3},2,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
{{qname, ?NS, "fn","adjust-time-to-timezone"},{xqSeqType, 'xs:time', zero_or_one}, [], 
 {'adjust-time-to-timezone', 2},1, [{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, "fn","adjust-time-to-timezone"},{xqSeqType, 'xs:time', zero_or_one}, [], 
 {'adjust-time-to-timezone', 3},2,[{xqSeqType, 'xs:time', zero_or_one},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
{{qname, ?NS, "fn","analyze-string"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, one}, [], 
 {'analyze-string', 3},2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","analyze-string"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, one}, [], 
 {'analyze-string', 4},3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","apply"},{xqSeqType, item, zero_or_many}, [], 
 {'apply', 3}, 2,[{xqSeqType,{xqFunTest,function,[],undefined,any,any}, one},{xqSeqType, {xqFunTest,array,[],undefined,any,any}, one}]},
{{qname, ?NS, "fn","available-environment-variables"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'available-environment-variables', 1}, 0, []},
{{qname, ?NS, "fn","avg"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'avg', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, "fn","base-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'base-uri', 1}, 0, []},
{{qname, ?NS, "fn","base-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'base-uri', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","boolean"},{xqSeqType, 'xs:boolean', one}, [], 
 {'boolean', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","ceiling"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'ceiling', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, ?NS, "fn","codepoint-equal"},{xqSeqType, 'xs:boolean', zero_or_one}, [],
 {'codepoint-equal', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","codepoints-to-string"},{xqSeqType, 'xs:string', one}, [], 
 {'codepoints-to-string', 2}, 1,[{xqSeqType, 'xs:integer', zero_or_many}]},
{{qname, ?NS, "fn","collation-key"},{xqSeqType, 'xs:base64Binary', one}, [], 
 {'collation-key', 2},1, [{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","collation-key"},{xqSeqType, 'xs:base64Binary', one}, [], 
 {'collation-key', 3},2,[{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","collection"},{xqSeqType, item, zero_or_many}, [], 
 {'collection', 1}, 0, []},
{{qname, ?NS, "fn","collection"},{xqSeqType, item, zero_or_many}, [], 
 {'collection', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","compare"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'compare', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","compare"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'compare', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
 {'concat', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, "fn","contains"},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","contains"},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","contains-token"},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains-token', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","contains-token"},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains-token', 4}, 3,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","count"},{xqSeqType, 'xs:integer', one}, [], 
 {'count', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","current-date"},{xqSeqType, 'xs:date', one}, [], 
 {'current-date', 1}, 0, []},
{{qname, ?NS, "fn","current-dateTime"},{xqSeqType, 'xs:dateTime', one}, [], 
 {'current-dateTime', 1}, 0,[]},
{{qname, ?NS, "fn","current-time"},{xqSeqType, 'xs:time', one}, [], 
 {'current-time', 1}, 0, []},
{{qname, ?NS, "fn","data"},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'data', 1}, 0, []},
{{qname, ?NS, "fn","data"},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'data', 2}, 1, [{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","dateTime"},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'dateTime', 3}, 2,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, "fn","day-from-date"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'day-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, ?NS, "fn","day-from-dateTime"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'day-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, "fn","days-from-duration"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'days-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, "fn","deep-equal"},{xqSeqType, 'xs:boolean', one}, [], 
 {'deep-equal', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","deep-equal"},{xqSeqType, 'xs:boolean', one}, [], 
 {'deep-equal', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","default-collation"},{xqSeqType, 'xs:string', one}, [], 
 {'default-collation', 1}, 0,[]},
{{qname, ?NS, "fn","default-language"},{xqSeqType, 'xs:language', one}, [], 
 {'default-language', 1}, 0,[]},
{{qname, ?NS, "fn","distinct-values"},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'distinct-values', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, "fn","distinct-values"},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'distinct-values', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","doc"},{xqSeqType, {xqKindTest,'document-node',undefined,undefined,undefined}, zero_or_one}, [],
 {'doc', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","doc-available"},{xqSeqType, 'xs:boolean', one}, [], 
 {'doc-available', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","document-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'document-uri', 1}, 0, []},
{{qname, ?NS, "fn","document-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'document-uri', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","element-with-id"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, zero_or_many}, [],
 {'element-with-id', 2}, 1,[{xqSeqType, 'xs:string', zero_or_many}]},
{{qname, ?NS, "fn","element-with-id"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, zero_or_many}, [],
 {'element-with-id', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, one}]},
{{qname, ?NS, "fn","empty"},{xqSeqType, 'xs:boolean', one}, [], 
 {'empty', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","encode-for-uri"},{xqSeqType, 'xs:string', one}, [], 
 {'encode-for-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","ends-with"},{xqSeqType, 'xs:boolean', one}, [], 
 {'ends-with', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","ends-with"},{xqSeqType, 'xs:boolean', one}, [], 
 {'ends-with', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","environment-variable"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'environment-variable', 2}, 1, [{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","error"},{xqSeqType, 'empty-sequence', none}, [], 
 {'error', 1},0, []},
{{qname, ?NS, "fn","error"},{xqSeqType, 'empty-sequence', none}, [], 
 {'error', 2},1, [{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, ?NS, "fn","error"},{xqSeqType, 'empty-sequence', none}, [], 
 {'error', 3},2,[{xqSeqType, 'xs:QName', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","error"},{xqSeqType, 'empty-sequence', none}, [], 
 {'error', 4},3,[{xqSeqType, 'xs:QName', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","escape-html-uri"},{xqSeqType, 'xs:string', one}, [], 
 {'escape-html-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","exactly-one"},{xqSeqType, item, one}, [], 
 {'exactly-one', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","exists"},{xqSeqType, 'xs:boolean', one}, [], 
 {'exists', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","false"},{xqSeqType, 'xs:boolean', one}, [], 
 {'false', 1}, 0,[]},
{{qname, ?NS, "fn","filter"},{xqSeqType, item, zero_or_many}, [], 
 {'filter', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, "fn","filter"},[{xqSeqType, item, one}],{xqSeqType, 'xs:boolean', one}},one}]},
{{qname, ?NS, "fn","floor"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'floor', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, ?NS, "fn","fold-left"},{xqSeqType, item, zero_or_many}, [], 
 {'fold-left', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, "fn","fold-left"},[{xqSeqType, item, zero_or_many},{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, ?NS, "fn","fold-right"},{xqSeqType, item, zero_or_many}, [], 
 {'fold-right', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, "fn","fold-right"},[{xqSeqType, item, zero_or_many},{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, ?NS, "fn","for-each"},{xqSeqType, item, zero_or_many}, [], 
 {'for-each', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, "fn","for-each"},[{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},zero_or_many}]},
{{qname, ?NS, "fn","for-each-pair"},{xqSeqType, item, zero_or_many}, [], 
 {'for-each-pair', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, "fn","for-each-pair"},[{xqSeqType, item, one},{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, ?NS, "fn","format-date"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-date', 3}, 2,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","format-date"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-date', 6}, 5,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","format-dateTime"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-dateTime', 3}, 2,[{xqSeqType, 'xs:dateTime', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","format-dateTime"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-dateTime', 6}, 5,[{xqSeqType, 'xs:dateTime', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","format-integer"},{xqSeqType, 'xs:string', one}, [], 
 {'format-integer', 3}, 2,[{xqSeqType, 'xs:integer', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","format-integer"},{xqSeqType, 'xs:string', one}, [], 
 {'format-integer', 4}, 3,[{xqSeqType, 'xs:integer', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","format-number"},{xqSeqType, 'xs:string', one}, [], 
 {'format-number', 3}, 2,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","format-number"},{xqSeqType, 'xs:string', one}, [], 
 {'format-number', 4}, 3,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","format-time"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-time', 3}, 2,[{xqSeqType, 'xs:time', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","format-time"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-time', 6}, 5,[{xqSeqType, 'xs:time', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","function-arity"},{xqSeqType, 'xs:integer', one}, [], 
 {'function-arity', 2}, 1,[{xqSeqType,{xqFunTest,function,[],undefined,any,any}, one}]},
{{qname, ?NS, "fn","function-lookup"},{xqSeqType,{xqFunTest,function,[],undefined,any,any},zero_or_one},[], 
 {'function-lookup', 3}, 2,[{xqSeqType, 'xs:QName', one},{xqSeqType, 'xs:integer', one}]},
{{qname, ?NS, "fn","function-name"},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'function-name', 2}, 1,[{xqSeqType,{xqFunTest,function,[],undefined,any,any}, one}]},
{{qname, ?NS, "fn","generate-id"},{xqSeqType, 'xs:string', one}, [], 
 {'generate-id', 1}, 0,[]},
{{qname, ?NS, "fn","generate-id"},{xqSeqType, 'xs:string', one}, [], 
 {'generate-id', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","has-children"},{xqSeqType, 'xs:boolean', one}, [], 
 {'has-children', 1}, 0,[]},
{{qname, ?NS, "fn","has-children"},{xqSeqType, 'xs:boolean', one}, [], 
 {'has-children', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","head"},{xqSeqType, item, zero_or_one}, [], 
 {'head', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","hours-from-dateTime"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'hours-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, "fn","hours-from-duration"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'hours-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, "fn","hours-from-time"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'hours-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, "fn","id"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, zero_or_many}, [],
 {'id', 2}, 1,[{xqSeqType, 'xs:string', zero_or_many}]},
{{qname, ?NS, "fn","id"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, zero_or_many}, [],
 {'id', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, one}]},
{{qname, ?NS, "fn","idref"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}, [],
 {'idref', 2}, 1,[{xqSeqType, 'xs:string', zero_or_many}]},
{{qname, ?NS, "fn","idref"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}, [],
 {'idref', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, one}]},
{{qname, ?NS, "fn","implicit-timezone"},{xqSeqType, 'xs:dayTimeDuration', one}, [],
 {'implicit-timezone', 1}, 0, []},
{{qname, ?NS, "fn","index-of"},{xqSeqType, 'xs:integer', zero_or_many}, [],
 {'index-of', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:anyAtomicType', one}]},
{{qname, ?NS, "fn","index-of"},{xqSeqType, 'xs:integer', zero_or_many}, [],
 {'index-of', 4}, 3,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:anyAtomicType', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","innermost"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}, [],
 {'innermost', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}]},
{{qname, ?NS, "fn","in-scope-prefixes"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'in-scope-prefixes', 2}, 1,[{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, one}]},
{{qname, ?NS, "fn","insert-before"},{xqSeqType, item, zero_or_many}, [], 
 {'insert-before', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:integer', one},{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","iri-to-uri"},{xqSeqType, 'xs:string', one}, [], 
 {'iri-to-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","json-doc"},{xqSeqType, item, zero_or_one}, [], 
 {'json-doc', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","json-doc"},{xqSeqType, item, zero_or_one}, [], 
 {'json-doc', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, "fn","json-to-xml"},{xqSeqType, {xqKindTest,'document-node',undefined,undefined,undefined}, one}, [],
 {'json-to-xml', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","json-to-xml"},{xqSeqType, {xqKindTest,'document-node',undefined,undefined,undefined}, one}, [],
 {'json-to-xml', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, "fn","lang"},{xqSeqType, 'xs:boolean', one}, [], 
 {'lang', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","lang"},{xqSeqType, 'xs:boolean', one}, [], 
 {'lang', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, one}]},
{{qname, ?NS, "fn","last"},{xqSeqType, 'xs:integer', one}, [], 
 {'last', 1}, 0,[]},
{{qname, ?NS, "fn","load-xquery-module"},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}, [], 
 {'load-xquery-module', 2}, 1,[{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","load-xquery-module"},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}, [], 
 {'load-xquery-module', 3}, 2,[{xqSeqType, 'xs:string', one},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, "fn","local-name"},{xqSeqType, 'xs:string', one}, [], 
 {'local-name', 1}, 0,[]},
{{qname, ?NS, "fn","local-name"},{xqSeqType, 'xs:string', one}, [], 
 {'local-name', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","local-name-from-QName"},{xqSeqType, 'xs:NCName', zero_or_one}, [],
 {'local-name-from-QName', 2}, 1,[{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, ?NS, "fn","lower-case"},{xqSeqType, 'xs:string', one}, [], 
 {'lower-case', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","matches"},{xqSeqType, 'xs:boolean', one}, [], 
 {'matches', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","matches"},{xqSeqType, 'xs:boolean', one}, [], 
 {'matches', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","max"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'max', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, "fn","max"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'max', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","min"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'min', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, "fn","min"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'min', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","minutes-from-dateTime"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'minutes-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, "fn","minutes-from-duration"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'minutes-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, "fn","minutes-from-time"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'minutes-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, "fn","month-from-date"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'month-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, ?NS, "fn","month-from-dateTime"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'month-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, "fn","months-from-duration"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'months-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, "fn","name"},{xqSeqType, 'xs:string', one}, [], 
 {'name', 1}, 0,[]},
{{qname, ?NS, "fn","name"},{xqSeqType, 'xs:string', one}, [], 
 {'name', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","namespace-uri"},{xqSeqType, 'xs:anyURI', one}, [], 
 {'namespace-uri', 1}, 0,[]},
{{qname, ?NS, "fn","namespace-uri"},{xqSeqType, 'xs:anyURI', one}, [], 
 {'namespace-uri', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","namespace-uri-for-prefix"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'namespace-uri-for-prefix', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, one}]},
{{qname, ?NS, "fn","namespace-uri-from-QName"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'namespace-uri-from-QName', 2}, 1,[{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, ?NS, "fn","nilled"},{xqSeqType, 'xs:boolean', zero_or_one}, [],
 {'nilled', 1}, 0, []},
{{qname, ?NS, "fn","nilled"},{xqSeqType, 'xs:boolean', zero_or_one}, [],
 {'nilled', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","node-name"},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'node-name', 1}, 0, []},
{{qname, ?NS, "fn","node-name"},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'node-name', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","normalize-space"},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-space', 1}, 0,[]},
{{qname, ?NS, "fn","normalize-space"},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-space', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","normalize-unicode"},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-unicode', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","normalize-unicode"},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-unicode', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","not"},{xqSeqType, 'xs:boolean', one}, [], 
 {'not', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","number"},{xqSeqType, 'xs:double', one}, [], 
 {'number', 1}, 0,[]},
{{qname, ?NS, "fn","number"},{xqSeqType, 'xs:double', one}, [], 
 {'number', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
{{qname, ?NS, "fn","one-or-more"},{xqSeqType, item, one_or_many}, [], 
 {'one-or-more', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","outermost"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}, [],
 {'outermost', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}]},
{{qname, ?NS, "fn","parse-ietf-date"},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'parse-ietf-date', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","parse-json"},{xqSeqType, item, zero_or_one}, [], 
 {'parse-json', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","parse-json"},{xqSeqType, item, zero_or_one}, [], 
 {'parse-json', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, "fn","parse-xml"},{xqSeqType, {xqKindTest,'document-node',undefined,{xqKindTest,'element',undefined,undefined,undefined},undefined}, one}, [],
 {'parse-xml', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","parse-xml-fragment"},{xqSeqType, {xqKindTest,'document-node',undefined,undefined,undefined}, zero_or_one}, [],
 {'parse-xml-fragment', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","path"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'path', 1}, 0, []},
{{qname, ?NS, "fn","path"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'path', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","position"},{xqSeqType, 'xs:integer', one}, [], 
 {'position', 1}, 0,[]},
{{qname, ?NS, "fn","prefix-from-QName"},{xqSeqType, 'xs:NCName', zero_or_one}, [],
 {'prefix-from-QName', 2}, 1,[{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, ?NS, "fn","QName"},{xqSeqType, 'xs:QName', one}, [], 
 {'QName', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","random-number-generator"},{xqSeqType,{xqFunTest,map,[],undefined,[{xqSeqType, 'xs:string', one}],{xqSeqType, item, one}},one},[], 
 {'random-number-generator', 1}, 0, []},
{{qname, ?NS, "fn","random-number-generator"},{xqSeqType,{xqFunTest,map,[],undefined,[{xqSeqType, 'xs:string', one}],{xqSeqType, item, one}},one},[], 
 {'random-number-generator', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
{{qname, ?NS, "fn","remove"},{xqSeqType, item, zero_or_many}, [], 
 {'remove', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:integer', one}]},
{{qname, ?NS, "fn","replace"},{xqSeqType, 'xs:string', one}, [], 
 {'replace', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","replace"},{xqSeqType, 'xs:string', one}, [], 
 {'replace', 5}, 4,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","resolve-QName"},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'resolve-QName', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, one}]},
{{qname, ?NS, "fn","resolve-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'resolve-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","resolve-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'resolve-uri', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","reverse"},{xqSeqType, item, zero_or_many}, [], 
 {'reverse', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","root"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, one}, [], 
 {'root', 1}, 0,[]},
{{qname, ?NS, "fn","root"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}, [],
 {'root', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","round"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, ?NS, "fn","round"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round', 3}, 2,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:integer', one}]},
{{qname, ?NS, "fn","round-half-to-even"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round-half-to-even', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, ?NS, "fn","round-half-to-even"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round-half-to-even', 3}, 2,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:integer', one}]},
{{qname, ?NS, "fn","seconds-from-dateTime"},{xqSeqType, 'xs:decimal', zero_or_one}, [],
 {'seconds-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, "fn","seconds-from-duration"},{xqSeqType, 'xs:decimal', zero_or_one}, [],
 {'seconds-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, "fn","seconds-from-time"},{xqSeqType, 'xs:decimal', zero_or_one}, [],
 {'seconds-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, "fn","serialize"},{xqSeqType, 'xs:string', one}, [], 
 {'serialize', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","serialize"},{xqSeqType, 'xs:string', one}, [], 
 {'serialize', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_one}]},
{{qname, ?NS, "fn","sort"},{xqSeqType, item, zero_or_many}, [], 
 {'sort', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","sort"},{xqSeqType, item, zero_or_many}, [], 
 {'sort', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","sort"},{xqSeqType, item, zero_or_many}, [], 
 {'sort', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, "fn","sort"},[{xqSeqType, item, one}],{xqSeqType, 'xs:anyAtomicType', zero_or_many}},one}]},
{{qname, ?NS, "fn","starts-with"},{xqSeqType, 'xs:boolean', one}, [], 
 {'starts-with', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","starts-with"},{xqSeqType, 'xs:boolean', one}, [], 
 {'starts-with', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","static-base-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'static-base-uri', 1}, 0, []},
{{qname, ?NS, "fn","string"},{xqSeqType, 'xs:string', one}, [], 
 {'string', 1}, 0,[]},
{{qname, ?NS, "fn","string"},{xqSeqType, 'xs:string', one}, [], 
 {'string', 2}, 1,[{xqSeqType, item, zero_or_one}]},
{{qname, ?NS, "fn","string-join"},{xqSeqType, 'xs:string', one}, [], 
 {'string-join', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, "fn","string-join"},{xqSeqType, 'xs:string', one}, [], 
 {'string-join', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","string-length"},{xqSeqType, 'xs:integer', one}, [], 
 {'string-length', 1}, 0,[]},
{{qname, ?NS, "fn","string-length"},{xqSeqType, 'xs:integer', one}, [], 
 {'string-length', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","string-to-codepoints"},{xqSeqType, 'xs:integer', zero_or_many}, [],
 {'string-to-codepoints', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","subsequence"},{xqSeqType, item, zero_or_many}, [], 
 {'subsequence', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:double', one}]},
{{qname, ?NS, "fn","subsequence"},{xqSeqType, item, zero_or_many}, [], 
 {'subsequence', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:double', one},{xqSeqType, 'xs:double', one}]},
{{qname, ?NS, "fn","substring"},{xqSeqType, 'xs:string', one}, [], 
 {'substring', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:double', one}]},
{{qname, ?NS, "fn","substring"},{xqSeqType, 'xs:string', one}, [], 
 {'substring', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:double', one},{xqSeqType, 'xs:double', one}]},
{{qname, ?NS, "fn","substring-after"},{xqSeqType, 'xs:string', one}, [], 
 {'substring-after', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","substring-after"},{xqSeqType, 'xs:string', one}, [], 
 {'substring-after', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","substring-before"},{xqSeqType, 'xs:string', one}, [], 
 {'substring-before', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","substring-before"},{xqSeqType, 'xs:string', one}, [], 
 {'substring-before', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","sum"},{xqSeqType, 'xs:anyAtomicType', one}, [],
 {'sum', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, "fn","sum"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'sum', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
{{qname, ?NS, "fn","tail"},{xqSeqType, item, zero_or_many}, [], 
 {'tail', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","timezone-from-date"},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
 {'timezone-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, ?NS, "fn","timezone-from-dateTime"},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
 {'timezone-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, "fn","timezone-from-time"},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
 {'timezone-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, "fn","tokenize"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'tokenize', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","tokenize"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'tokenize', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","tokenize"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'tokenize', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","trace"},{xqSeqType, item, zero_or_many}, [], 
 {'trace', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","trace"},{xqSeqType, item, zero_or_many}, [], 
 {'trace', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","transform"},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}, [], 
 {'transform', 2}, 1,[{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, "fn","translate"},{xqSeqType, 'xs:string', one}, [], 
 {'translate', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","true"},{xqSeqType, 'xs:boolean', one}, [], 
 {'true', 1}, 0,[]},
{{qname, ?NS, "fn","unordered"},{xqSeqType, item, zero_or_many}, [], 
 {'unordered', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","unparsed-text"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'unparsed-text', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","unparsed-text"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'unparsed-text', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","unparsed-text-available"},{xqSeqType, 'xs:boolean', one}, [], 
 {'unparsed-text-available', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","unparsed-text-available"},{xqSeqType, 'xs:boolean', one}, [], 
 {'unparsed-text-available', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","unparsed-text-lines"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'unparsed-text-lines', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","unparsed-text-lines"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'unparsed-text-lines', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, "fn","upper-case"},{xqSeqType, 'xs:string', one}, [], 
 {'upper-case', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","uri-collection"},{xqSeqType, 'xs:anyURI', zero_or_many}, [],
 {'uri-collection', 1}, 0, []},
{{qname, ?NS, "fn","uri-collection"},{xqSeqType, 'xs:anyURI', zero_or_many}, [],
 {'uri-collection', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, "fn","xml-to-json"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'xml-to-json', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, "fn","xml-to-json"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'xml-to-json', 3}, 2,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, "fn","year-from-date"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'year-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, ?NS, "fn","year-from-dateTime"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'year-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, "fn","years-from-duration"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'years-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, "fn","zero-or-one"},{xqSeqType, item, zero_or_one}, [], 
 {'zero-or-one', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, "fn","put"},{xqSeqType, 'empty-sequence', one},[{annotation,{{qname, "http://www.w3.org/2012/xquery", [],"updating"},[]}}],
 {'put', 3}, 2,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, one},{xqSeqType, 'xs:string', one}]}]).

%% ====================================================================
%% API functions
%% ====================================================================
-export(['abs'/2]).
-export(['adjust-dateTime-to-timezone'/2,'adjust-dateTime-to-timezone'/3]).
-export(['adjust-date-to-timezone'/2,'adjust-date-to-timezone'/3]).
-export(['adjust-time-to-timezone'/2,'adjust-time-to-timezone'/3]).
-export(['analyze-string'/3,'analyze-string'/4]).
-export(['apply'/3]).
-export(['available-environment-variables'/1]).
-export(['avg'/2]).
-export(['base-uri'/1,'base-uri'/2]).
-export(['boolean'/2]).
-export(['ceiling'/2]).
-export(['codepoint-equal'/3]).
-export(['codepoints-to-string'/2]).
-export(['collation-key'/2,'collation-key'/3]).
-export(['collection'/1,'collection'/2]).
-export(['compare'/3,'compare'/4]).
-export(['concat'/2]). % hacked due to concat having a free arity
-export(['contains'/3,'contains'/4]).
-export(['contains-token'/3,'contains-token'/4]).
-export(['count'/2]).
-export(['current-date'/1]).
-export(['current-dateTime'/1]).
-export(['current-time'/1]).
-export(['data'/1,'data'/2]).
-export(['dateTime'/3]).
-export(['day-from-date'/2]).
-export(['day-from-dateTime'/2]).
-export(['days-from-duration'/2]).
-export(['deep-equal'/3,'deep-equal'/4]).
-export(['default-collation'/1]).
-export(['default-language'/1]).
-export(['distinct-values'/2,'distinct-values'/3]).
-export(['doc'/2]).
-export(['doc-available'/2]).
-export(['document-uri'/1,'document-uri'/2]).
-export(['element-with-id'/2,'element-with-id'/3]).
-export(['empty'/2]).
-export(['encode-for-uri'/2]).
-export(['ends-with'/3,'ends-with'/4]).
-export(['environment-variable'/2]).
-export(['error'/1,'error'/2,'error'/3,'error'/4]).
-export(['escape-html-uri'/2]).
-export(['exactly-one'/2]).
-export(['exists'/2]).
-export(['false'/1]).
-export(['filter'/3]).
-export(['floor'/2]).
-export(['fold-left'/4]).
-export(['fold-right'/4]).
-export(['for-each'/3]).
-export(['for-each-pair'/4]).
-export(['format-date'/3,'format-date'/6]).
-export(['format-dateTime'/3,'format-dateTime'/6]).
-export(['format-integer'/3,'format-integer'/4]).
-export(['format-number'/3,'format-number'/4]).
-export(['format-time'/3,'format-time'/6]).
-export(['function-arity'/2]).
-export(['function-lookup'/3]).
-export(['function-name'/2]).
-export(['generate-id'/1,'generate-id'/2]).
-export(['has-children'/1,'has-children'/2]).
-export(['head'/2]).
-export(['hours-from-dateTime'/2]).
-export(['hours-from-duration'/2]).
-export(['hours-from-time'/2]).
-export(['id'/2,'id'/3]).
-export(['idref'/2,'idref'/3]).
-export(['implicit-timezone'/1]).
-export(['index-of'/3,'index-of'/4]).
-export(['innermost'/2]).
-export(['in-scope-prefixes'/2]).
-export(['insert-before'/4]).
-export(['iri-to-uri'/2]).
-export(['json-doc'/2,'json-doc'/3]).
-export(['json-to-xml'/2,'json-to-xml'/3]).
-export(['lang'/2,'lang'/3]).
-export(['last'/1]).
-export(['load-xquery-module'/2,'load-xquery-module'/3]).
-export(['local-name'/1,'local-name'/2]).
-export(['local-name-from-QName'/2]).
-export(['lower-case'/2]).
-export(['matches'/3,'matches'/4]).
-export(['max'/2,'max'/3]).
-export(['min'/2,'min'/3]).
-export(['minutes-from-dateTime'/2]).
-export(['minutes-from-duration'/2]).
-export(['minutes-from-time'/2]).
-export(['month-from-date'/2]).
-export(['month-from-dateTime'/2]).
-export(['months-from-duration'/2]).
-export(['name'/1,'name'/2]).
-export(['namespace-uri'/1,'namespace-uri'/2]).
-export(['namespace-uri-for-prefix'/3]).
-export(['namespace-uri-from-QName'/2]).
-export(['nilled'/1,'nilled'/2]).
-export(['node-name'/1,'node-name'/2]).
-export(['normalize-space'/1,'normalize-space'/2]).
-export(['normalize-unicode'/2,'normalize-unicode'/3]).
-export(['not'/2]).
-export(['number'/1,'number'/2]).
-export(['one-or-more'/2]).
-export(['outermost'/2]).
-export(['parse-ietf-date'/2]).
-export(['parse-json'/2,'parse-json'/3]).
-export(['parse-xml'/2]).
-export(['parse-xml-fragment'/2]).
-export(['path'/1,'path'/2]).
-export(['position'/1]).
-export(['prefix-from-QName'/2]).
-export(['QName'/3]).
-export(['random-number-generator'/1,'random-number-generator'/2]).
-export(['remove'/3]).
-export(['replace'/4,'replace'/5]).
-export(['resolve-QName'/3]).
-export(['resolve-uri'/2,'resolve-uri'/3]).
-export(['reverse'/2]).
-export(['root'/1,'root'/2]).
-export(['round'/2,'round'/3]).
-export(['round-half-to-even'/2,'round-half-to-even'/3]).
-export(['seconds-from-dateTime'/2]).
-export(['seconds-from-duration'/2]).
-export(['seconds-from-time'/2]).
-export(['serialize'/2,'serialize'/3]).
-export(['sort'/2,'sort'/3,'sort'/4]).
-export(['starts-with'/3,'starts-with'/4]).
-export(['static-base-uri'/1]).
-export(['string'/1,'string'/2]).
-export(['string-join'/2,'string-join'/3]).
-export(['string-length'/1,'string-length'/2]).
-export(['string-to-codepoints'/2]).
-export(['subsequence'/3,'subsequence'/4]).
-export(['substring'/3,'substring'/4]).
-export(['substring-after'/3,'substring-after'/4]).
-export(['substring-before'/3,'substring-before'/4]).
-export(['sum'/2,'sum'/3]).
-export(['tail'/2]).
-export(['timezone-from-date'/2]).
-export(['timezone-from-dateTime'/2]).
-export(['timezone-from-time'/2]).
-export(['tokenize'/2,'tokenize'/3,'tokenize'/4]).
-export(['trace'/2,'trace'/3]).
-export(['transform'/2]).
-export(['translate'/4]).
-export(['true'/1]).
-export(['unordered'/2]).
-export(['unparsed-text'/2,'unparsed-text'/3]).
-export(['unparsed-text-available'/2,'unparsed-text-available'/3]).
-export(['unparsed-text-lines'/2,'unparsed-text-lines'/3]).
-export(['upper-case'/2]).
-export(['uri-collection'/1,'uri-collection'/2]).
-export(['xml-to-json'/2,'xml-to-json'/3]).
-export(['year-from-date'/2]).
-export(['year-from-dateTime'/2]).
-export(['years-from-duration'/2]).
-export(['zero-or-one'/2]).
-export(['put'/3]).


%% Returns the absolute value of $arg. 
'abs'(_Ctx,[]) -> [];
'abs'(_Ctx,Arg1) ->
   #xqAtomicValue{type = Type, value = Val} = ?seq:singleton_value(Arg1),
   case Val of
      infinity ->
         Arg1;
      neg_infinity ->
         #xqAtomicValue{type = Type, value = infinity};
      neg_zero ->
         #xqAtomicValue{type = Type, value = 0.0};
      nan ->
         Arg1;
      _ when ?integer(Type) ->
         #xqAtomicValue{type = 'xs:integer', 
                        value = xqerl_numeric:abs_val(Val)};
      _ ->
         #xqAtomicValue{type = Type, value = xqerl_numeric:abs_val(Val)}
   end.

%% Adjusts an xs:dateTime value to a specific timezone, 
%% or to no timezone at all. 
'adjust-dateTime-to-timezone'(_Ctx,[]) -> [];
'adjust-dateTime-to-timezone'(#{tab := Tab} = Ctx,Arg1) ->
   Itz = xqerl_context:get_implicit_timezone(Tab),
   Str = xqerl_datetime:to_string(Itz,'xs:dayTimeDuration'),
   Dt = #xqAtomicValue{type = 'xs:dayTimeDuration',
                       value = #xsDateTime{month = 0,
                                           day = 0,
                                           offset = Itz,
                                           string_value = Str}},
   'adjust-dateTime-to-timezone'(Ctx, Arg1, Dt).

'adjust-dateTime-to-timezone'(_Ctx,[],_Arg2) -> [];
'adjust-dateTime-to-timezone'(_Ctx,Arg1,Arg2) ->
   xqerl_datetime:align_to_timezone(Arg1,Arg2).

%% Adjusts an xs:date value to a specific timezone, or to no timezone at all; 
%% the result is the date in the target timezone that contains the starting 
%% instant of the supplied date. 
'adjust-date-to-timezone'(Ctx,Arg1) -> 
   'adjust-dateTime-to-timezone'(Ctx,Arg1).
'adjust-date-to-timezone'(Ctx,Arg1,Arg2) -> 
   'adjust-dateTime-to-timezone'(Ctx,Arg1,Arg2).

%% Adjusts an xs:time value to a specific timezone, or to no timezone at all. 
'adjust-time-to-timezone'(Ctx,Arg1) -> 
   'adjust-dateTime-to-timezone'(Ctx,Arg1).
'adjust-time-to-timezone'(Ctx,Arg1,Arg2) -> 
   'adjust-dateTime-to-timezone'(Ctx,Arg1,Arg2).

%% Analyzes a string using a regular expression, returning an XML structure 
%% that identifies which parts of the input string matched or failed to match 
%% the regular expression, and in the case of matched substrings, which 
%% substrings matched each capturing group in the regular expression. 
'analyze-string'(Ctx,Input,Pattern) ->
   'analyze-string'(Ctx,Input,Pattern,[]).

'analyze-string'(Ctx,Input,Pattern0,Flags) ->
   Pattern = xqerl_types:string_value(Pattern0),
   {_,MP} = xqerl_regex:regex_comp(Pattern,Flags),
   Input1 = string_value(Input),
   Content = case re:run(Input1, MP, [global]) of
                nomatch ->
                   [];
                {match,List} ->
                   List
             end,
   Expr = if Input1 == [] -> [];
             true ->
                analyze_string1(Content,Input1)
          end,
   Frag = #xqElementNode{name = #qname{namespace = ?NS,
                                       prefix = "fn",
                                       local_name = "analyze-string-result"},
                         expr = Expr},
   xqerl_node:new_fragment(Ctx, Frag).

analyze_string1([],String) -> % no matches
   #xqElementNode{name = #qname{namespace = ?NS,
                                prefix = "fn",
                                local_name = "non-match"},
                         expr = ?str(String)};
analyze_string1(List,String) ->
   Fun = 
     fun([{Start,End}|Groups],LastPos) ->
           Pre = if Start =/= LastPos ->
                       Slc = string:slice(String,LastPos,(Start-LastPos)),
                       [analyze_string1([],Slc)];
                    true ->
                       []
                 end,
           Matches = 
              case Groups of
                [] ->
                   S = string:slice(String,Start,End),
                   #xqTextNode{expr = ?str(S)};
                _ ->
                   {B,_} = hd(Groups),
                   {Es,Ee} = hd(lists:reverse(Groups)),
                   GrpSize = Es+Ee,
                   Tail = if (Start + End) > GrpSize -> % missing tail text 
                                Slc1 = string:slice(String,GrpSize,
                                                    Start + End - GrpSize),
                                [#xqTextNode{expr = ?str(Slc1)}];
                             true ->
                                []
                          end,
                    if B > Start ->
                          S = string:slice(String,Start,Start + End - B),
                          [#xqTextNode{expr = ?str(S)} |
                             get_groups(String,Groups,1)] ++ Tail;
                       true ->
                          get_groups(String,Groups,1) ++ Tail
                    end
              end,
           Match = #xqElementNode{name = #qname{namespace = ?NS,
                                                prefix = "fn",
                                                local_name = "match"},
                                  expr = Matches},
           if End == 0 ->
                 ?err('FORX0003'); % would match empty str
              true ->
                 {Pre++[Match],Start + End}
           end
     end,
   {Els,Pos} = lists:mapfoldl(Fun, 0, List),
   StrLen = string:length(String),
   Return = if Pos =/= StrLen andalso StrLen > 0 ->
                  Els ++ [analyze_string1([],string:slice(String,Pos))];
               true ->
                  Els
            end,
   Return.

%% all groups here are connected, could be sub-groups 
get_groups(String,[{Start,End}],Cnt) ->
   [#xqElementNode{name = #qname{namespace = ?NS,
                                prefix = "fn",
                                local_name = "group"},
                  expr = [#xqAttributeNode{name = 
                                             #qname{namespace = 'no-namespace', 
                                                    prefix = [], 
                                                    local_name = "nr"},
                                           expr = ?atint(Cnt)},
                          if End == 0 ->
                                [];
                             true ->
                                Slc = string:slice(String,Start,End),
                                #xqTextNode{expr = ?str(Slc)}
                          end
                         ]}];   
get_groups(String,[{-1,0}|T],Cnt) ->
   get_groups(String,T,Cnt+1);   
get_groups(String,[{Start,End},{NStart,NEnd}|Rest],Cnt) ->
   Pos1 = Start + End,
   if NStart < Pos1 orelse NEnd == 0;
      {Start,End} == {NStart,NEnd} -> % overlap/empty group
         End1 = NStart - Start,
         Txt1 = #xqTextNode{expr = ?str(string:slice(String,Start,End1))},
         Att1 = #xqAttributeNode{name = 
                                   #qname{namespace = 'no-namespace', 
                                          prefix = [], 
                                          local_name = "nr"}, 
                                 expr = ?atint(Cnt)},
         Grps = get_groups(String,[{NStart,NEnd}|Rest],Cnt + 1),
         [#xqElementNode{name = #qname{namespace = ?NS,
                                       prefix = "fn",
                                       local_name = "group"},
                         expr = [Att1,
                                 Txt1,
                                 Grps]}];
      NStart > Pos1 -> % gap
         Length = NStart - Pos1,  
         Txt1 = #xqTextNode{expr = ?str(string:slice(String,Start,End))},
         Txt2 = #xqTextNode{expr = ?str(string:slice(String,Pos1,Length))},
         Att1 = #xqAttributeNode{name = #qname{namespace = 'no-namespace', 
                                               prefix = [], 
                                               local_name = "nr"}, 
                                 expr = ?atint(Cnt)},
         Grps1 = get_groups(String,[{NStart,NEnd}|Rest],Cnt + 1),
         [#xqElementNode{name = #qname{namespace = ?NS,
                                      prefix = "fn",
                                      local_name = "group"},
                        expr = [Att1,Txt1]},
          Txt2|Grps1];
      true -> % no overlap
         Txt1 = #xqTextNode{expr = ?str(string:slice(String,Start,End))},
         Att1 = #xqAttributeNode{name = #qname{namespace = 'no-namespace', 
                                               prefix = [], 
                                               local_name = "nr"}, 
                                 expr = ?atint(Cnt)},
         Grps2 = get_groups(String,[{NStart,NEnd}|Rest],Cnt + 1),
         [#xqElementNode{name = #qname{namespace = ?NS,
                                      prefix = "fn",
                                      local_name = "group"},
                        expr = [Att1,Txt1]}|Grps2]
  end.

%% Makes a dynamic call on a function with an argument list supplied 
%% in the form of an array. 
'apply'(Ctx,Function,#array{data = Args}) when is_map(Function) ->
   xqerl_operators:lookup(Ctx, Function, Args);
'apply'(Ctx,Function,#array{data = Args}) when is_function(Function) ->
   try
      case Function == fun ?MODULE:concat/2 of
         true ->
            erlang:apply(Function, [Ctx,Args]);
         _ ->
            erlang:apply(Function, [Ctx|Args])
      end
   catch
      _:{badarity,_} ->
         ?err('FOAP0001')
   end;
'apply'(Ctx,#xqFunction{body = Function},Args) when is_function(Function) -> 
   ?MODULE:apply(Ctx,Function,Args).

%% Returns a list of environment variable names that are suitable for passing 
%% to fn:environment-variable, as a (possibly empty) sequence of strings. 
'available-environment-variables'(_Ctx) -> 
   % NOT ALLOWING ACCESS TO ENVIRONMENT
   [].

%% Returns the average of the values in the input sequence $arg, that is, 
%% the sum of the values divided by the number of values. 
'avg'(_Ctx,[]) -> [];
'avg'(_Ctx,Arg1) ->
   {Seq,SeqType} = compare_convert_seq(?seq:to_list(Arg1), [], []),
   try
      Avg = avg1(Seq, [], 0),
      OutType = if ?integer(SeqType) ->
                      'xs:decimal';
                   true ->
                      SeqType
                end,
      xqerl_types:cast_as(Avg,OutType)
   catch 
      ?ERROR_MATCH("XPTY0004") ->
         ?err('FORG0006');
      E -> throw(E)
   end.

avg1([], Sum, Count) ->
   xqerl_operators:divide(Sum, ?atint(Count));
avg1([#xqAtomicValue{type = 'xs:double', value = nan} = H|_], _, _) ->
   H;
avg1([#xqAtomicValue{type = 'xs:float', value = nan} = H|_], _, _) ->
   H;
avg1([H|T], [], 0) ->
   avg1(T, H, 1);
avg1([H|T], Sum, Count) ->
   avg1(T, xqerl_operators:add(H, Sum), Count + 1).

%% Returns the base URI of a node. 
'base-uri'(Ctx) -> 'base-uri'(Ctx,xqerl_context:get_context_item(Ctx)).
'base-uri'(_Ctx,[]) -> ?seq:empty();
'base-uri'(Ctx,[N]) -> 'base-uri'(Ctx,N);
'base-uri'(Ctx,#xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   'base-uri'(Ctx,#xqNode{doc = Doc, node = Node});
'base-uri'(_Ctx,#xqNode{doc = Doc, node = Node}) ->
   case xqerl_xdm:dm_base_uri(Doc, Node) of
      [] ->
         [];
      BaseUri ->
         ?atm('xs:anyURI',BaseUri)
   end;
'base-uri'(_,_) -> ?err('XPTY0004').

%% Computes the effective boolean value of the sequence $arg. 
'boolean'(_Ctx,Arg) ->
   ?bool(xqerl_operators:eff_bool_val(Arg)).

%% Rounds $arg upwards to a whole number. 
'ceiling'(_Ctx,[]) -> [];
'ceiling'(_Ctx,Arg1) ->
   Val = xqerl_types:value(Arg1),
   if Val == infinity;
      Val == neg_infinity;
      Val == neg_zero;
      Val == nan ->
         Arg1;
      true ->
         Type = xqerl_types:type(Arg1),
         T = xqerl_numeric:ceiling(Val),
         xqerl_types:cast_as(?atint(T), Type)
   end.

%% Returns true if two strings are equal, considered codepoint-by-codepoint. 
'codepoint-equal'(_Ctx,[],_Arg2) -> [];
'codepoint-equal'(_Ctx,_Arg1,[]) -> [];
'codepoint-equal'(_Ctx,[Arg1],Arg2) -> 'codepoint-equal'(_Ctx,Arg1,Arg2);
'codepoint-equal'(_Ctx,Arg1,[Arg2]) -> 'codepoint-equal'(_Ctx,Arg1,Arg2);
'codepoint-equal'(_Ctx,
                  #xqAtomicValue{type = 'xs:string', value = Str1},
                  #xqAtomicValue{type = 'xs:string', value = Str2}) -> 
      ?bool(Str1 == Str2);
'codepoint-equal'(_,_,_) -> ?err('XPTY0004').

%% Returns an xs:string whose characters have supplied codepoints. 
'codepoints-to-string'(_Ctx,[]) -> ?str("");
'codepoints-to-string'(_Ctx,Arg1) when not is_list(Arg1) ->
   'codepoints-to-string'(_Ctx,[Arg1]);
'codepoints-to-string'(_Ctx,Arg1) -> 
   Rev = lists:reverse(Arg1),
   CPs = codepoint(Rev, []),
   ?str(CPs).

codepoint([],Acc) -> Acc;
codepoint([#xqAtomicValue{value = 16#09}|T],Acc) -> codepoint(T,[16#09|Acc]);
codepoint([#xqAtomicValue{value = 16#0A}|T],Acc) -> codepoint(T,[16#0A|Acc]);
codepoint([#xqAtomicValue{value = 16#0D}|T],Acc) -> codepoint(T,[16#0D|Acc]);
codepoint([#xqAtomicValue{value = X}|T],Acc) when X >= 16#20, 
                                                  X =< 16#D7FF -> 
   codepoint(T,[X|Acc]);
codepoint([#xqAtomicValue{value = X}|T],Acc) when X >= 16#E000, 
                                                  X =< 16#FFFD -> 
   codepoint(T,[X|Acc]);
codepoint([#xqAtomicValue{value = X}|T],Acc) when X >= 16#10000, 
                                                  X =< 16#10FFFF -> 
   codepoint(T,[X|Acc]);
codepoint(_,_) -> ?err('FOCH0001').

%% Given a string value and a collation, generates an internal value called 
%% a collation key, with the property that the matching and ordering of 
%% collation keys reflects the matching and ordering of strings under the 
%% specified collation. 
'collation-key'(Ctx,Arg1) -> 
   Coll = xqerl_context:get_default_collation(Ctx),
   'collation-key'(Ctx,Arg1,Coll).
'collation-key'(_Ctx,Arg1,Arg2) -> 
   StrVal = xqerl_types:string_value(Arg1),
   ColVal = xqerl_coll:parse(xqerl_types:string_value(Arg2)),
   Bin = xqerl_coll:sort_key(StrVal, ColVal),
   ?atm('xs:base64Binary',Bin).

%% Returns a sequence of items identified by a collection URI; or a default 
%% collection if no URI is supplied. 
'collection'(_Ctx) -> 
   {ok,Doc} = xqerl_collection:get(default),
   Doc.
'collection'(_,[]) -> 
   {ok,Doc} = xqerl_collection:get(default),
   Doc;
'collection'(#{'base-uri' := BaseUri0},Uri0) -> 
   Uri = xqerl_types:value(Uri0),
   BaseUri = xqerl_types:value(BaseUri0),
   %?dbg("{BaseUri, Uri}",{BaseUri, Uri}),
   try 
      Val = xqerl_lib:resolve_against_base_uri(BaseUri, Uri),
      {ok,Doc} = if Val == "" ->
                       xqerl_collection:get(default);
                    true ->
                       xqerl_collection:get(Val)
                 end,
      Doc
   catch
      _:_ ->
         ?err('FODC0002')
   end.

%% Returns -1, 0, or 1, depending on whether $comparand1 collates before, equal 
%% to, or after $comparand2 according to the rules of a selected collation. 
'compare'(Ctx,Arg1,Arg2) -> 
   Coll = xqerl_context:get_default_collation(Ctx),
   'compare'(Ctx,Arg1,Arg2,Coll).

'compare'(_Ctx,[],_Arg2,_Collation) -> [];
'compare'(_Ctx,_Arg1,[],_Collation) -> [];
'compare'(_Ctx,Arg1,Arg2,Collation) when is_function(Collation) ->
   try
      StrVal1 = xqerl_types:string_value(Arg1),
      StrVal2 = xqerl_types:string_value(Arg2),
      Bin1 = xqerl_coll:sort_key(StrVal1, Collation),
      Bin2 = xqerl_coll:sort_key(StrVal2, Collation),
      if Bin1 < Bin2 -> ?atint(-1);
         Bin1 > Bin2 -> ?atint(1);
         true -> ?atint(0)
      end
   catch
      _:_ ->
         %?dbg("compare",erlang:get_stacktrace()),
         ?err('FOCH0002')
  end;
'compare'(_Ctx,Arg1,Arg2,Collation) ->
   ColVal = xqerl_coll:parse(xqerl_types:string_value(Collation)),
   'compare'(_Ctx,Arg1,Arg2,ColVal).

%% Returns the concatenation of the string values of the arguments. 
'concat'(Ctx,Arg1) -> 'string-join'(Ctx,Arg1).

%% Returns true if the string $arg1 contains $arg2 as a substring, 
%% taking collations into account. 
'contains'(Ctx,Arg1,Arg2) ->
   Coll = xqerl_context:get_default_collation(Ctx),
   'contains'(Ctx,Arg1,Arg2,Coll).

'contains'(_Ctx,Arg1,Arg2,Collation) -> 
   Coll = xqerl_coll:parse(xqerl_types:value(Collation)),
   S1 = xqerl_types:value(Arg1),
   S2 = xqerl_types:value(Arg2),
   B1 = xqerl_coll:as_bin_list(S1, Coll),
   B2 = xqerl_coll:as_bin_list(S2, Coll),
   if B2 =:= <<>> ->
         ?bool(true);
      true ->
         case binary:matches(B1,B2) of
            [] when S2 =/= [] ->
               ?bool(false);
            _ ->
               ?bool(true)
         end
   end.

%% Determines whether or not any of the supplied strings, when tokenized at 
%% whitespace boundaries, contains the supplied token, under the rules of the 
%% supplied collation. 
'contains-token'(Ctx,InputList,Token) -> 
   Coll = xqerl_context:get_default_collation(Ctx),
   'contains-token'(Ctx,InputList,Token, Coll).

'contains-token'(_Ctx,[],_Token,_Collation) -> ?bool(false);
'contains-token'(Ctx,InputList,Token,Collation) when not is_list(InputList) ->
   'contains-token'(Ctx,[InputList],Token,Collation);
'contains-token'(Ctx,InputList,Token,Collation) -> 
   Token1 = string:trim(xqerl_types:string_value(Token)),
   Coll = xqerl_coll:parse(xqerl_types:value(Collation)),
   if Token1 == [] ->
         ?bool(false);
      true ->
         Token2 = ?str(Token1),
         AnyFun1 = fun(S) ->
                         compare(Ctx, S, Token2, Coll) == ?atint(0)
                   end,
         AnyFun2 = fun(Str) ->
                        Strs = tokenize(Ctx, Str),
                        lists:any(AnyFun1, Strs)
                   end,
         Bool = lists:any(AnyFun2, InputList),
         ?bool(Bool)
   end.

'count'(_Ctx,#xqNode{}) -> ?atint(1);
'count'(_Ctx,#array{}) -> ?atint(1);
'count'(_Ctx,Arg1) ->
   Size = ?seq:size(Arg1),
   ?atint(Size).

%% Returns the current date. 
'current-date'(#{tab := Tab}) -> 
   xqerl_types:cast_as(xqerl_context:get_current_datetime(Tab), 'xs:date').

%% Returns the current date and time (with timezone). 
'current-dateTime'(#{tab := Tab}) -> 
   xqerl_context:get_current_datetime(Tab).

%% Returns the current time. 
'current-time'(#{tab := Tab}) -> 
   xqerl_types:cast_as(xqerl_context:get_current_datetime(Tab), 'xs:time') .

%% Returns the result of atomizing a sequence. This process flattens arrays, 
%% and replaces nodes by their typed values. 
'data'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'data'(Ctx, Ci).
'data'(_Ctx,Arg1) when not is_list(Arg1) -> 
   'data'(_Ctx,[Arg1]);
'data'(_Ctx,Arg1) -> 
   data1(Arg1).

data1([]) -> [];
data1([#array{} = H|T]) ->
   Flat = xqerl_array:flatten([], H),
   data1(Flat ++ T);
data1([#xqAtomicValue{} = H|T]) ->
   [H|data1(T)];
data1([H|T]) when ?noderecs(H) ->
   xqerl_node:atomize_nodes(H) ++ data1(T);
data1(_) ->
   ?err('FOTY0013').

%% Returns an xs:dateTime value created by combining an xs:date and an xs:time. 
'dateTime'(_Ctx,#xqAtomicValue{type = 'xs:date', 
                               value = #xsDateTime{offset = DateOffset} = Date},
                #xqAtomicValue{type = 'xs:time', 
                               value = #xsDateTime{hour   = Hour,
                                                   minute = Min,
                                                   second = Sec,
                                                   offset = TimeOffset}}) -> 
   NewOffset = if DateOffset == [] andalso TimeOffset == [] -> [];
                  DateOffset == [] -> TimeOffset;
                  TimeOffset == [] -> DateOffset;
                  TimeOffset == DateOffset -> DateOffset;
                  true ->
                     ?err('FORG0008')
               end,
   DT = Date#xsDateTime{hour = Hour, 
                        minute = Min, 
                        second = Sec, 
                        offset = NewOffset},
   Str = xqerl_datetime:to_string(DT,'xs:dateTime'),
   #xqAtomicValue{type = 'xs:dateTime', 
                  value = DT#xsDateTime{string_value = Str}};
'dateTime'(_,[],_) -> [];
'dateTime'(_,_,[]) -> [];
'dateTime'(Ctx,[Arg1],Arg2) ->
   'dateTime'(Ctx,Arg1,Arg2);
'dateTime'(Ctx,Arg1,[Arg2]) ->
   'dateTime'(Ctx,Arg1,Arg2).

%% Returns the day component of an xs:date. 
'day-from-date'(Ctx,Arg1) -> 
   'days-from-duration'(Ctx, Arg1).

%% Returns the day component of an xs:dateTime. 
'day-from-dateTime'(Ctx,Arg1) -> 
   'days-from-duration'(Ctx, Arg1).

%% Returns the number of days in a duration. 
'days-from-duration'(_, []) -> [];
'days-from-duration'(Ctx, [Arg1]) -> 'days-from-duration'(Ctx, Arg1);
'days-from-duration'(_, #xqAtomicValue{value = #xsDateTime{sign = '-', 
                                                           day = Dy}}) ->
   ?atint(-Dy);
'days-from-duration'(_, #xqAtomicValue{value = #xsDateTime{day = Dy}}) ->
   ?atint(Dy).

%% This function assesses whether two sequences are deep-equal to each other. 
%% To be deep-equal, they must contain items that are pairwise deep-equal; 
%% and for two items to be deep-equal, they must either be atomic values that 
%% compare equal, or nodes of the same kind, with the same name, whose children 
%% are deep-equal, or maps with matching entries, or arrays with matching 
%% members. 
'deep-equal'(Ctx,Arg1,Arg2) ->
   Coll = xqerl_context:get_default_collation(Ctx),
   'deep-equal'(Ctx,Arg1,Arg2,Coll).

'deep-equal'(_Ctx,[],[],_) -> ?bool(true);
'deep-equal'(Ctx,Arg1,Arg2,Collation) when not is_list(Arg1) -> 
   'deep-equal'(Ctx,[Arg1],Arg2,Collation);
'deep-equal'(Ctx,Arg1,Arg2,Collation) when not is_list(Arg2) -> 
   'deep-equal'(Ctx,Arg1,[Arg2],Collation);
'deep-equal'(Ctx,Arg1,Arg2,Collation) when not is_function(Collation) -> 
   CollFun = xqerl_coll:parse(xqerl_types:string_value(Collation)),
   'deep-equal'(Ctx,Arg1,Arg2,CollFun);
'deep-equal'(Ctx,Arg1,Arg2,CollFun) when is_function(CollFun) -> 
   case count([], Arg1) =/= count([], Arg2) of
      true ->
         ?bool(false);
      _ ->
         Zip = lists:zip(Arg1, Arg2),
         EqFun = 
             fun({X,Y}) when is_list(X),is_list(Y) ->
                   'deep-equal'(Ctx,X,Y,CollFun) == ?bool(true);
                ({#xqNode{} = N1,#xqNode{} = N2}) ->
                   A1 = xqerl_node:nodes_equal(N1,N2,CollFun),
                   A1 == {xqAtomicValue,'xs:boolean',true};
                ({#xqAtomicValue{value = nan},#xqAtomicValue{value = nan}}) ->
                   true;
                ({#xqAtomicValue{value = infinity},
                  #xqAtomicValue{value = infinity}}) ->
                   true;
                ({#xqAtomicValue{value = neg_infinity},
                  #xqAtomicValue{value = neg_infinity}}) ->
                   true;
                ({#xqAtomicValue{type = T1} = N1,
                  #xqAtomicValue{type = T2} = N2}) 
                   when ?string(T1) andalso ?string(T2) ->
                   compare(Ctx, N1, N2, CollFun) == ?atint(0);
                ({#xqAtomicValue{} = N1,#xqAtomicValue{} = N2}) ->
                   xqerl_operators:equal(N1,N2) == 
                     {xqAtomicValue,'xs:boolean',true};
                ({_,#xqFunction{}}) ->
                   ?err('FOTY0015');
                ({#xqFunction{},_}) ->
                   ?err('FOTY0015');
                ({F1,F2}) when is_function(F1) andalso is_function(F2) ->
                   F1 == F2;
                ({M1,M2}) when is_map(M1) andalso is_map(M2) ->
                     Sz1 = xqerl_map:size([], M1),
                     Sz2 = xqerl_map:size([], M2),
                     if Sz1 == Sz2 ->
                           K1 = xqerl_map:keys([],M1),
                           F = fun(K) ->
                                     xqerl_map:contains([], M2, K) == 
                                       ?bool(true) andalso
                                     'deep-equal'(
                                       [],
                                       xqerl_map:get([], M1, K), 
                                       xqerl_map:get([], M2, K),
                                       CollFun) == ?bool(true)
                               end,         
                           lists:all(F, K1);
                        true ->
                           false
                     end;
                ({{array,A1},{array,A2}}) ->
                   'deep-equal'(Ctx,A1,A2,CollFun) == ?bool(true)
                end,
         try
            ?bool(lists:all(EqFun, Zip))
         catch
            ?ERROR_MATCH("FOTY0015") = E -> throw(E);
            _:_ ->
               %?dbg("deep-equal",erlang:get_stacktrace()),
               ?bool(false)
         end
   end.

%% Returns the value of the default collation property from the static context. 
'default-collation'(Ctx) -> 
   xqerl_context:get_default_collation(Ctx).

%% Returns the value of the default language property from the dynamic context. 
'default-language'(#{tab := Tab}) -> 
   xqerl_context:get_default_language(Tab).

%% Returns the values that appear in a sequence, with duplicates eliminated. 
'distinct-values'(_Ctx,[]) -> [];
'distinct-values'(Ctx,Arg1) ->
   Collation = xqerl_context:get_default_collation(Ctx),
   'distinct-values'(Ctx,Arg1, Collation).

'distinct-values'(Ctx,Arg1,Collation) when not is_list(Arg1) ->
   'distinct-values'(Ctx,[Arg1],Collation);
'distinct-values'(_,Arg1,Collation) ->
   Coll = xqerl_types:value(Collation),
   NewColl = xqerl_coll:parse(Coll),
   
   CompVal = fun(#xqAtomicValue{type = T} = A) when ?string(T);
                                                    T == 'xs:untypedAtomic';
                                                    T == 'xs:anyURI' ->
                   Key = xqerl_coll:sort_key(xqerl_types:value(A), NewColl),
                   {Key, A};
                (#xqAtomicValue{} = A) ->
                   {A, A};
                (#xqNode{} = N) ->
                   A = hd(xqerl_node:atomize_nodes(N)),
                   Key = xqerl_coll:sort_key(xqerl_types:value(A), NewColl),
                   {Key, A}
             end,                   
   
   Unique = distinct_vals(Arg1,CompVal),
   val_reverse(Unique, []).

val_reverse([],Acc) -> Acc;
val_reverse([{_,V}|T], Acc) -> 
   val_reverse(T,[V|Acc]).

distinct_vals(Vals,Fun) ->
   F = fun(Value, Acc) ->
             {Key,ActVal} = Fun(Value),
             X = fun({#xqAtomicValue{type = AccType} = AccKey,_}) ->
                       case Key of
                          #xqAtomicValue{type = KeyType, value = nan} 
                             when ?numeric(KeyType) ->
                             ?numeric(AccType) andalso 
                               AccKey#xqAtomicValue.value == nan;
                          #xqAtomicValue{type = KeyType} 
                             when ?string(KeyType), ?string(AccType) ->
                              xqerl_operators:equal(AccKey, Key) == ?bool(true);
                          #xqAtomicValue{type = KeyType} 
                             when ?numeric(KeyType), ?numeric(AccType) ->
                              xqerl_operators:equal(AccKey, Key) == ?bool(true);
                          #xqAtomicValue{type = KeyType} 
                             when ?duration(KeyType), ?duration(AccType) ->
                              xqerl_operators:equal(AccKey, Key) == ?bool(true);
                          #xqAtomicValue{type = AccType} ->
                              xqerl_operators:equal(AccKey, Key) == ?bool(true);
                          _ ->
                             false
                       end;
                    ({AccKey,_}) ->
                       Key == AccKey
                 end,
             InList = lists:any(X, Acc),
             if InList -> Acc;
                true -> [{Key,ActVal}|Acc]
             end
       end,
   lists:foldl(F,[],Vals).


%% Retrieves a document using a URI supplied as an xs:string, and returns 
%% the corresponding document node. 
'doc'(_Ctx,[]) -> [];
'doc'(#{'base-uri' := BaseUri0},Uri0) -> 
   Uri = xqerl_types:value(Uri0),
   BaseUri = xqerl_types:value(BaseUri0),
   %?dbg("{BaseUri, Uri}",{BaseUri, Uri}),
   try xqerl_lib:resolve_against_base_uri(BaseUri, Uri) of
      {error,unsafe} ->
         ?err('FODC0005');
      ResVal ->
         %?dbg("ResVal",ResVal),
         case ?get({doc,ResVal}) of
            [] ->
               case xqerl_doc:exists_doc(ResVal) of
                  true ->
                     Doc = xqerl_doc:retrieve_doc(ResVal),
                     ?put({doc,ResVal},Doc),
                     %#xqNode{doc = Doc, node = xqerl_xdm:root(Doc)};
                     #xqNode{doc = {doc,ResVal}, node = xqerl_xdm:root(Doc)};
                  _ ->
                     ?dbg("ResVal",ResVal),
                     ?err('FODC0002')
               end;
            Doc ->
               %#xqNode{doc = Doc, node = xqerl_xdm:root(Doc)}
               #xqNode{doc = {doc,ResVal}, node = xqerl_xdm:root(Doc)}
         end
   catch 
      _:_ ->
         ?dbg("FODC0005",erlang:get_stacktrace()),
         ?err('FODC0005')
   end.

%% The function returns true if and only if the function call fn:doc($uri) 
%% would return a document node. 
'doc-available'(#{'base-uri' := BaseUri0},Uri0) -> 
   Uri = xqerl_types:value(Uri0),
   BaseUri = xqerl_types:value(BaseUri0),
   try xqerl_lib:resolve_against_base_uri(BaseUri, Uri) of
      ResVal ->
         case xqerl_doc:exists_doc(ResVal) of
            true ->
               ?bool(true);
            _ ->
               ?bool(false)
         end
   catch
      ?ERROR_MATCH("FORG0002") -> ?bool(false);
      _:_ -> ?err('FODC0005')
   end.

%% Returns the URI of a resource where a document can be found, if available. 
'document-uri'(Ctx) ->
   Ci = xqerl_context:get_context_item(Ctx),
   'document-uri'(Ctx,Ci).
'document-uri'(_,[]) -> [];
'document-uri'(Ctx,[Node]) ->
   'document-uri'(Ctx,Node);
'document-uri'(_Ctx,#xqNode{doc = {doc,File}, node = Node}) -> 
   Doc = ?get({doc,File}),
   'document-uri'(_Ctx,#xqNode{doc = Doc, node = Node});
'document-uri'(_Ctx,#xqNode{doc = Doc, node = Node}) -> 
   DUri = xqerl_xdm:dm_document_uri(Doc, Node),
   if DUri == [] ->
         [];
      true ->
         ?atm('xs:anyURI', DUri)
   end.

%% Returns the sequence of element nodes that have an ID value matching the 
%% value of one or more of the IDREF values supplied in $arg. 
%% Behaves like fn:id, since no validation.
'element-with-id'(Ctx,Arg1) -> id(Ctx,Arg1).
'element-with-id'(Ctx,Arg1,Arg2) -> id(Ctx,Arg1,Arg2).

%% Returns true if the argument is the empty sequence. 
'empty'(_Ctx,[]) -> ?bool(true);
'empty'(_Ctx,_) -> ?bool(false).

%% Encodes reserved characters in a string that is intended to be used in 
%% the path segment of a URI. 
'encode-for-uri'(_,[]) -> ?str(""); 
'encode-for-uri'(_,Arg1) -> 
   Val = xqerl_types:string_value(Arg1),
   ?str(xqerl_lib:encode_for_uri(Val)).

%% Returns true if the string $arg1 contains $arg2 as a trailing substring, 
%% taking collations into account. 
'ends-with'(Ctx,[],Arg2) -> 'ends-with'(Ctx,?str(""),Arg2);
'ends-with'(_Ctx,_Arg1,[]) -> ?bool(true);
'ends-with'(#{'default-collation' := DefColl} = Ctx,Arg1,Arg2) -> 
   'ends-with'(Ctx,Arg1,Arg2,DefColl).

'ends-with'(#{'base-uri' := BaseUri0},Arg1,Arg2,Collation) -> 
   Str1 = xqerl_types:string_value(Arg1),
   Str2 = xqerl_types:string_value(Arg2),
   Uri = xqerl_types:value(Collation),
   BaseUri = xqerl_types:value(BaseUri0),
   Coll = xqerl_lib:resolve_against_base_uri(BaseUri, Uri),
   if Str2 == [] ->
         ?bool(true);
      true ->
         ColVal = xqerl_coll:parse(Coll),
         VBin = xqerl_coll:as_bin_list(Str1, ColVal),
         SBin = xqerl_coll:as_bin_list(Str2, ColVal),
         if VBin == <<>> andalso SBin =/= <<>> ->
               ?bool(false);
            true ->
               case lists:suffix(binary:bin_to_list(SBin), 
                                 binary:bin_to_list(VBin)) of
                  true ->
                     ?bool(true);
                  _ ->
                     ?bool(false)
               end
         end
   end.

%% Returns the value of a system environment variable, if it exists. 
'environment-variable'(_Ctx,_Arg1) -> 
   %% NOT IMPLEMENTING
   [].

%% Calling the fn:error function raises an application-defined error.
%% -record(xqError, {
%%       name,
%%       description,
%%       value,
%%       location % {Module, Line, Column} %TODO
%%    }). 
-dialyzer({[no_return], [error/1,error/2,error/3,error/4]}).
'error'(_Ctx) -> 
   xqerl_error:error('FOER0000').
'error'(_Ctx,[]) ->
   xqerl_error:error('FOER0000');
'error'(_Ctx,QName) ->
   xqerl_error:error(xqerl_types:value(QName)).
'error'(_Ctx,[],Description) -> 
   xqerl_error:error('FOER0000',Description);
'error'(_Ctx,QName,Description) -> 
   xqerl_error:error(xqerl_types:value(QName),Description).
'error'(_Ctx,[],Description,Object) ->
   xqerl_error:error('FOER0000',Description, Object);
'error'(_Ctx,QName,Description,Object) ->
   xqerl_error:error(xqerl_types:value(QName),Description, Object).

%% Escapes a URI in the same way that HTML user agents handle attribute 
%% values expected to contain URIs. 
'escape-html-uri'(_,[]) -> ?str("");
'escape-html-uri'(_,Arg1) -> 
   Val = xqerl_types:string_value(Arg1),
   ?str(pct_encode2(Val)).

pct_encode2([]) -> [];
pct_encode2([H|T]) when H >= 32, H =< 126 ->
   [H|pct_encode2(T)];
pct_encode2([H|T]) ->
   string:uppercase(xqerl_lib:escape_uri([H])) ++ pct_encode2(T).

pct_encode3([]) -> [];
pct_encode3([H|T]) when H == $< ;H == $>;
                        H == $\";H == $ ;
                        H == ${ ;H == $};
                        H == $| ;H == $\\;
                        H == $^ ;H == $` ->
   string:uppercase(xqerl_lib:escape_uri([H])) ++ pct_encode3(T);
pct_encode3([H|T]) when H >= 32, H =< 126 ->
   [H|pct_encode3(T)];
pct_encode3([H|T]) ->
   string:uppercase(xqerl_lib:escape_uri([H])) ++ pct_encode3(T).

%% Returns $arg if it contains exactly one item. Otherwise, raises an error. 
'exactly-one'(_,[]) -> ?err('FORG0005');
'exactly-one'(_,[Arg1]) -> Arg1;
'exactly-one'(_,Arg1) when is_list(Arg1) -> ?err('FORG0005');
'exactly-one'(_,Arg1) -> Arg1.

%% Returns true if the argument is a non-empty sequence. 
'exists'(_,[]) -> ?bool(false);
'exists'(_,_) -> ?bool(true).

%% Returns the xs:boolean value false. 
'false'(_) -> 
   ?bool(false).

%% Returns those items from the sequence $seq for which the supplied 
%% function $f returns true. 
'filter'(Ctx,Seq,#xqFunction{body = F}) ->
   'filter'(Ctx,Seq,F);
'filter'(Ctx,Seq,MA) when is_record(MA, array);
                          is_map(MA) ->
   lists:filter(fun(S) ->
                   case xqerl_operators:lookup(Ctx, MA, S) of
                      #xqAtomicValue{type = 'xs:boolean', value = true} ->
                         true;
                      #xqAtomicValue{type = 'xs:boolean', value = false} ->
                         false;
                      _ ->
                         ?err('XPTY0004')
                   end
             end, Seq);
'filter'(Ctx,Seq,F) when is_function(F,2) ->
   lists:filter(fun(Val) ->
                  case catch ?seq:singleton_value(F(Ctx,Val)) of
                     #xqAtomicValue{type = 'xs:boolean', value = true} ->
                        true;
                     #xqAtomicValue{type = 'xs:boolean', value = false} ->
                        false;
                     {'EXIT',#xqError{} = E} ->
                        throw(E);
                     _ ->
                        ?err('XPTY0004')
                  end
            end, Seq);
'filter'(_,_,_) ->
  ?err('XPTY0004').

%% Rounds $arg downwards to a whole number. 
'floor'(_Ctx,[]) -> [];
'floor'(_Ctx,Arg1) -> 
   Val = xqerl_types:value(Arg1),
   if Val == infinity;
      Val == neg_infinity;
      Val == neg_zero;
      Val == nan ->
         Arg1;
      true ->
         Type = xqerl_types:type(Arg1),
         T = xqerl_numeric:floor(Val),
         xqerl_types:cast_as(?atint(T), Type)
   end.

%% Processes the supplied sequence from left to right, applying the supplied 
%% function repeatedly to each item in turn, together with an accumulated 
%% result value. 
'fold-left'(Ctx,Seq,Zero,F) -> 
   ?seq:foldl(Ctx,F, Zero, Seq).

%% Processes the supplied sequence from right to left, applying the supplied 
%% function repeatedly to each item in turn, 
%% together with an accumulated result value. 
'fold-right'(Ctx,Seq,Zero,F) -> 
   ?seq:foldr(Ctx,F, Zero, Seq).

%% Applies the function item $action to every item from the sequence $seq in 
%% turn, returning the concatenation of the resulting sequences in order. 
'for-each'(Ctx,Seq,Action) -> 
   ?seq:for_each(Ctx, Action, Seq).

%% Applies the function item $action to successive pairs of items taken one 
%% from $seq1 and one from $seq2, returning the concatenation of the resulting 
%% sequences in order. 
'for-each-pair'(Ctx,Seq1,Seq2,Action) -> 
   ?seq:zip_with(Ctx, Action, Seq1, Seq2).

%% Returns a string containing an xs:date value formatted for display. 
'format-date'(_Ctx,Date,Picture) -> 
   'format-dateTime'(_Ctx,Date,Picture).
'format-date'(_Ctx,Date,Picture,Arg3,Arg4,Arg5) -> 
   'format-dateTime'(_Ctx,Date,Picture,Arg3,Arg4,Arg5).

%% Returns a string containing an xs:dateTime value formatted for display. 
'format-dateTime'(_Ctx,Date,Picture) -> 
   IntVal = ?seq:singleton_value(Date),
   StrVal = xqerl_types:value(Picture),
   if StrVal == [] ->
         ?err('FODF1310');
      true ->
         try 
            Formatted = xqerl_format:parse_picture(IntVal, StrVal),
            ?str(Formatted)
         catch
            ?ERROR_MATCH("FODF1310") ->
               ?err('FOFD1340');
            _:#xqError{} = E ->
               %?dbg("E",erlang:get_stacktrace()),
               throw(E);
            _:_ ->
               %?dbg("FOFD1340",erlang:get_stacktrace()),
               ?err('FOFD1340')
         end
   end.

'format-dateTime'(Ctx,Date,Picture,_Language,Calendar,_Place) ->
   CalVal = xqerl_types:string_value(Calendar),
   if CalVal == [] ->
         'format-dateTime'(Ctx,Date,Picture);
      true ->
         try
            Nss = maps:get(namespaces, Ctx),
            QN = xqerl_types:cast_as(Calendar, 'xs:QName', Nss),
            ?atm('xs:QName',#qname{namespace = CNs, local_name = CLn}) = QN,
            true = is_valid_calendar({CNs,CLn}),
            if CLn =:= "AD";
               CLn =:= "ISO" ->
                  'format-dateTime'(Ctx,Date,Picture);
               true ->
                  Fmt = 'format-dateTime'(Ctx,Date,Picture),
                  NewVal = xqerl_types:string_value(Fmt),
                  ?str("[Calendar: AD]" ++ NewVal)
            end
         catch
            _:_ ->
               ?err('FOFD1340')
         end
   end.

is_valid_calendar({Ns,Name}) when Ns =:= 'no-namespace';
                                  Ns =:= [] ->
   Known = ["AD","AH","AME","AM","AP","AS","BE","CB","CE","CL","CS","EE",
            "FE","ISO","JE","KE","KY","ME","MS","NS","OS","RS","SE","SH",
            "SS","TE","VE","VS"],
   lists:member(Name, Known);
is_valid_calendar({_,_}) ->
   % calendar in some namespace but not known
   true.

%% Formats an integer according to a given picture string, using the 
%% conventions of a given natural language if specified. 
'format-integer'(_Ctx,Int,Picture) -> 
   IntVal = xqerl_types:value(Int),
   StrVal = xqerl_types:value(Picture),
   if StrVal == [] ->
         ?err('FODF1310');
      IntVal == [] ->
         ?str("");
      true ->
         Formatted = xqerl_format:parse_picture(IntVal, StrVal),
         ?str(Formatted)
   end.
'format-integer'(_Ctx,Int,Picture,_Lang) -> 
   'format-integer'(_Ctx,Int,Picture).

%% Returns a string containing a number formatted according to a given picture 
%% string, taking account of decimal formats specified in the static context. 
'format-number'(#{known_dec_formats := Dfs} = Ctx,Arg1,Arg2) ->
   [DF] = [D || {[],D} <- Dfs],
   'format-number'(Ctx,Arg1,Arg2,DF).
'format-number'(_Ctx,Number,PicString,#dec_format{} = DF) ->
   Num = xqerl_types:value(Number),
   PicStr = xqerl_types:value(PicString),
   {PosFun,NegFun} = xqerl_format:parse_picture_string(PicStr, DF),
   Str = if Num =:= [] ->
               PosFun([],[]);
            Num =:= neg_zero ->
               NegFun(0,[]);
            Num =:= nan ->
               PosFun(nan,[]);
            Num =:= infinity ->
               PosFun(infinity,[]);
            Num =:= neg_infinity ->
               NegFun(infinity,[]);
            true ->
               case xqerl_numeric:less_than(Num, 0) of
                  true ->
                     NegFun(Num,[]);
                  _ ->
                     PosFun(Num,[])
               end
         end,
   ?str(Str);
'format-number'(Ctx,Number,PicString,[]) ->
   'format-number'(Ctx,Number,PicString);
'format-number'(#{known_dec_formats := Dfs,
                  namespaces        := Nss} = Ctx,Number,PicString,Name) ->
   S1 = xqerl_types:string_value(Name),
   S2 = string:trim(S1),
   try xqerl_types:value(xqerl_types:cast_as(?str(S2), 'xs:QName', Nss)) of
      #qname{namespace = N,local_name = L} ->
         case [D || {#qname{namespace = N1, local_name = L1},D} <- Dfs, 
                    L == L1, 
                    N == N1] of
            [DF] ->
               'format-number'(Ctx,Number,PicString,DF);
            _ ->
               ?err('FODF1280')
         end
   catch 
      _:_ ->
         ?err('FODF1280')
   end.

%% Returns a string containing an xs:time value formatted for display. 
'format-time'(_Ctx,Date,Picture) -> 
   'format-dateTime'(_Ctx,Date,Picture).
'format-time'(_Ctx,Date,Picture,Arg3,Arg4,Arg5) -> 
   'format-dateTime'(_Ctx,Date,Picture,Arg3,Arg4,Arg5).

%% Returns the arity of the function identified by a function item. 
'function-arity'(_Ctx,[]) ->
   ?err('XPTY0004');
'function-arity'(_Ctx,Arg1) when is_function(Arg1) ->
   {_,A} = erlang:fun_info(Arg1,arity),
   % minus the Ctx parameter
   ?atint(A - 1);
'function-arity'(_Ctx,#xqFunction{arity = A}) ->
   ?atint(A);
'function-arity'(_Ctx,Arg1) ->
   case ?seq:singleton_value(Arg1) of
      Fx when is_function(Fx) ->
         {_,A} = erlang:fun_info(Fx,arity),
         % minus the Ctx parameter
         ?atint(A - 1);
      #xqFunction{arity = Ar} ->
         ?atint(Ar);
      _ ->
         ?err('XPTY0004')
   end.

%% Returns the function having a given name and arity, if there is one. 
'function-lookup'(_Ctx,[],_Arity) -> ?err('XPTY0004');
'function-lookup'(Ctx,Name,Arity) -> 
   QName = xqerl_types:value(Name),
   Arity1 = xqerl_types:value(Arity),
   get_static_function(Ctx,{QName, Arity1}).

get_static_function(_,{_, []}) ->
   ?err('XPTY0004');
get_static_function(Ctx,{#qname{namespace = ?NS, 
                                local_name = "concat"} = Name, Arity}) 
   when Arity > 1 -> 
   get_static_function(Ctx, {Name, 1});
%% get_static_function(_,{#qname{namespace = ?NS, 
%%                               local_name = "concat"}, A}) -> ?dbg("A",A),
%%    ?err('XPST0017');
get_static_function(#{tab := Tab},
                    {#qname{namespace = Ns, local_name = Ln}, Arity}) ->
   Sigs = xqerl_context:get_named_functions(Tab),
   Lookup = [#xqFunction{annotations = Annotations,
                         name = Name1,
                         arity = Arity1,
                         params = ParamTypes,
                         type = ReturnType,
                         body = fun M:F/A
                        }
            || {#qname{namespace = Ns1, local_name = Ln1} = Name1,
                ReturnType, 
                Annotations, 
                {M,F,A},
                Arity1,
                ParamTypes}
            <- Sigs,
               Ns == Ns1,
               Ln == Ln1,
               Arity == Arity1],
   FunSig = if length(Lookup) == 1 ->
                  hd(Lookup);
               true ->
                  []
            end,
   FunSig.

unmask_static_mod_ns("xqerl_fn") -> 
   "http://www.w3.org/2005/xpath-functions";
unmask_static_mod_ns("xqerl_xs") -> 
   "http://www.w3.org/2001/XMLSchema";
unmask_static_mod_ns("xqerl_math") -> 
   "http://www.w3.org/2005/xpath-functions/math";
unmask_static_mod_ns("xqerl_map") -> 
   "http://www.w3.org/2005/xpath-functions/map";
unmask_static_mod_ns("xqerl_array") -> 
   "http://www.w3.org/2005/xpath-functions/array";
unmask_static_mod_ns("xqerl_error") -> 
   "http://www.w3.org/2005/xqt-errors";
unmask_static_mod_ns("xqerl_main") -> 
   "http://www.w3.org/2005/xquery-local-functions";
unmask_static_mod_ns(T) -> T.

%% Returns the name of the function identified by a function item. 
%% fn:function-name($func as function(*)) as xs:QName? 
'function-name'(#{tab := Tab} = Ctx,Arg1) when is_function(Arg1) ->
   ?dbg("Arg1",Arg1),
   {_,N} = erlang:fun_info(Arg1,name),
   {_,M} = erlang:fun_info(Arg1,module),
   {_,T} = erlang:fun_info(Arg1,type),
   if T =:= local ->
         [];
      true ->
         Funs = maps:get(named_functions, Ctx),
         N2 = case lists:filter(fun(F) ->
                                 case element(4, F) of
                                    {M,N,_} ->
                                       true;
                                    {N,_} ->
                                       true;
                                    _ ->
                                       false
                                 end
                              end, Funs) of
                  [] ->
                     ?err('XPST0017');
                  FX ->
                     element(4,element(1,hd(FX)))
               end,
         NsL = atom_to_list(M),
         Ns = unmask_static_mod_ns(NsL),
         PxDict = xqerl_context:get_statically_known_namespaces(Tab),
         PxL = dict:to_list(PxDict),
         {Px,_} = lists:keyfind(Ns, 2, PxL),
         Qn = #qname{namespace = Ns, prefix = Px, local_name = N2},
         ?atm('xs:QName',Qn)
   end;
'function-name'(_Ctx,#xqFunction{name = undefined}) ->
   [];
'function-name'(_Ctx,#xqFunction{name = Name}) ->
   ?atm('xs:QName',Name);
'function-name'(Ctx,[Arg1]) ->
   'function-name'(Ctx,Arg1);
'function-name'(_,_) ->
   ?err('XPTY0004').

%% This function returns a string that uniquely identifies a given node. 
'generate-id'(Ctx) ->
   Item = xqerl_context:get_context_item(Ctx),
   'generate-id'(Ctx, Item).
'generate-id'(_Ctx,[Arg1]) -> 
   'generate-id'(_Ctx,Arg1);
'generate-id'(_Ctx,[]) -> ?str("");
'generate-id'(_Ctx,Arg1) ->
   Hash = xqerl_node:get_node_hash(Arg1),
   ?str( "ID" ++ erlang:integer_to_list(Hash) ).

%% Returns true if the supplied node has one or more child nodes (of any kind). 
'has-children'(Ctx) ->
   'has-children'(Ctx, xqerl_context:get_context_item(Ctx)).

'has-children'(_Ctx,[]) -> ?bool(false);
'has-children'(Ctx,[Arg1]) ->
   'has-children'(Ctx,Arg1);
'has-children'(_Ctx,#xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   'has-children'(_Ctx,#xqNode{doc = Doc, node = Node});
'has-children'(_Ctx,#xqNode{doc = Doc, node = Node}) ->
   case xqerl_xdm:dm_children(Doc, Node) of
      [] ->
         ?bool(false);
      _ ->
         ?bool(true)
   end;
'has-children'(_,_) -> ?err('XPTY0004').

%% Returns the first item in a sequence. 
'head'(_,[]) -> [];
'head'(_,[H|_]) -> H;
'head'(_,H) -> H.

%% Returns the hours component of an xs:dateTime. 
'hours-from-dateTime'(Ctx,Arg1) -> 
   'hours-from-duration'(Ctx, Arg1).

%% Returns the number of hours in a duration. 
'hours-from-duration'(_, []) -> [];
'hours-from-duration'(Ctx, [Arg1]) -> 'hours-from-duration'(Ctx, Arg1);
'hours-from-duration'(_, #xqAtomicValue{value = #xsDateTime{sign = '-', 
                                                            hour = Hr}}) ->
   ?atint(-Hr);
'hours-from-duration'(_, #xqAtomicValue{value = #xsDateTime{hour = Hr}}) ->
   ?atint(Hr).

%% Returns the hours component of an xs:time. 
'hours-from-time'(Ctx,Arg1) -> 
   'hours-from-duration'(Ctx, Arg1).

%% Returns the sequence of element nodes that have an ID value matching the 
%% value of one or more of the IDREF values supplied in $arg. 
'id'(Ctx,Refs) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'id'(Ctx,Refs,Ci).

'id'(Ctx,Refs,Node) when not is_list(Refs) ->
   'id'(Ctx,[Refs],Node);
'id'(Ctx,Refs,[Node]) ->
   'id'(Ctx,Refs,Node);
'id'(Ctx,Refs,#xqNode{} = Node) ->
   TokF = fun(Val) ->
                Norm = 'normalize-space'(Ctx, ?seq:singleton(Val)),
                'tokenize'(Ctx, Norm)
          end,
   RefToks = lists:flatmap(TokF, Refs),
   try
      Root = xqerl_step:root(Ctx,Node),
      Desc = xqerl_step:forward(Ctx,Root, 'descendant-or-self', 
                                #qname{namespace = "*", local_name = "*"}, []),
      Atts = xqerl_step:ids(Ctx, Desc),
      FilF = fun(A) ->
                   xqerl_operators:general_compare('=',A,RefToks) == ?bool(true)
             end,
      Filtered = lists:filter(FilF, Atts),
      xqerl_step:reverse(Ctx,Filtered, parent, #xqKindTest{kind = element},[])
   catch 
      ?ERROR_MATCH("XPDY0050") -> ?err('FODC0001');
      ?ERROR_MATCH("XPTY0020") -> ?err('XPTY0004');
      ?ERROR_MATCH("XPTY0019") -> ?err('XPTY0004');
      _:E ->
         throw(E)
   end.

%% Returns the sequence of element or attribute nodes with an IDREF value 
%% matching the value of one or more of the ID values supplied in $arg. 
'idref'(Ctx,Arg1) ->
   Node = xqerl_context:get_context_item(Ctx),
   'idref'(Ctx,Arg1,Node).

'idref'(Ctx,Refs,Node) when not is_list(Refs) ->
   'idref'(Ctx,[Refs],Node);
'idref'(Ctx,Refs,[Node]) ->
   'idref'(Ctx,Refs,Node);
'idref'(Ctx,Refs,Node) -> % dtd-infoset dependency 
   RefF = fun(Val) ->
                Norm = 'normalize-space'(Ctx, ?seq:singleton(Val)),
                'tokenize'(Ctx, Norm)
          end,
   RefToks = lists:flatmap(RefF, Refs),
   try
      Desc = xqerl_step:forward(Ctx,Node, 'descendant-or-self', 
                                #qname{namespace = "*", local_name = "*"}, []),
      Atts = xqerl_step:idrefs(Ctx, Desc),
      FilF = fun(A) ->
                   ANorm = 'normalize-space'(Ctx, A),
                   AToks = 'tokenize'(Ctx, ANorm),
                   xqerl_operators:general_compare('=',AToks,RefToks) == 
                     ?bool(true)
             end,
      lists:filter(FilF, Atts)
   catch 
      ?ERROR_MATCH("XPDY0050") -> ?err('FODC0001');
      ?ERROR_MATCH("XPTY0020") -> ?err('XPTY0004');
      ?ERROR_MATCH("XPTY0019") -> ?err('XPTY0004');
      _:E -> throw(E)
   end.

%% Returns the value of the implicit timezone property from the dynamic context. 
'implicit-timezone'(_Ctx) ->
   ImpOs = xqerl_context:get_implicit_timezone(),
   ImpOsStr = xqerl_datetime:to_string(ImpOs, 'xs:dayTimeDuration'),
   xqerl_types:cast_as(?str(ImpOsStr), 'xs:dayTimeDuration').

%% Returns a sequence of positive integers giving the positions within the 
%% sequence $seq of items that are equal to $search. 
'index-of'(_Ctx,[],_Arg2) -> [];
'index-of'(_Ctx,_Seq,[]) -> ?err('XPTY0004');
'index-of'(_Ctx,Seq,Arg2) -> 
   %{index,counter}
   Fun = fun(Elem,{List,Counter}) ->
               case catch xqerl_operators:equal(Elem, Arg2) of
                  #xqAtomicValue{type = 'xs:boolean', value = true} ->
                     Int = #xqAtomicValue{type = 'xs:integer', value = Counter},
                     {0,{[Int|List], Counter + 1}};
                  _ ->
                     {0,{List, Counter + 1}}
               end
         end,
   {_,{Indexes,_}} = lists:mapfoldl(Fun, {[],1}, ?seq:to_list(Seq)),
   lists:reverse(Indexes).

%TODO collation
'index-of'(Ctx,Seq,Arg2,Collation) -> 
   Coll = xqerl_types:value(Collation),
   All = maps:get(known_collations, Ctx),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         ?MODULE:'index-of'(Ctx,Seq,Arg2);
      _ ->
         ?err('FOCH0002')
   end.

%% Returns every node within the input sequence that is not an ancestor of 
%% another member of the input sequence; 
%% the nodes are returned in document order with duplicates eliminated. 
'innermost'(Ctx,Arg1) -> 
   %%    $nodes except $nodes/ancestor::node()
   try
      Uni = ?seq:union(Arg1,?seq:empty()),
      Anc = xqerl_step:reverse(Ctx,Uni,ancestor,#xqKindTest{type = node},[]),
      ?seq:except(Arg1,Anc)
   catch 
      ?ERROR_MATCH("XPTY0019") -> ?err('XPTY0004');
      _:E -> throw(E)
   end.

%% Returns the prefixes of the in-scope namespaces for an element node. 
'in-scope-prefixes'(Ctx, [Arg1]) ->
   'in-scope-prefixes'(Ctx, Arg1);
'in-scope-prefixes'(_Ctx, #xqNode{doc = {doc,File}, node = Node}) -> 
   Doc = ?get({doc,File}),
   'in-scope-prefixes'(_Ctx, #xqNode{doc = Doc, node = Node});
'in-scope-prefixes'(_Ctx, #xqNode{doc = Doc, node = Node}) -> 
   InScopeNs = xqerl_xdm:inscope_namespaces(Doc, Node),
   Filt = fun({'no-namespace',_}) ->
                false;
             ({_,[]}) ->
                {true,#xqAtomicValue{type = 'xs:string', value = []}};
             ({_,P}) ->
                {true,#xqAtomicValue{type = 'xs:NCName', value = P}}
          end,
   %?dbg("in-scope-prefixes",InScopeNs),
   lists:usort(lists:filtermap(Filt, InScopeNs)).

%% Returns a sequence constructed by inserting an item or a sequence of items 
%% at a given position within an existing sequence. 
'insert-before'(_Ctx,Target,Position,Inserts) ->
   Pos = xqerl_types:value(Position),
   ?seq:insert(Target,Inserts,Pos).

%% Converts a string containing an IRI into a URI according 
%% to the rules of [rfc3987]. 
'iri-to-uri'(_,[]) -> ?str(""); 
'iri-to-uri'(_Ctx,Arg1) -> 
   Val = xqerl_types:string_value(Arg1),
   ?str(pct_encode3(Val)).

%% Reads an external resource containing JSON, and returns the result 
%% of parsing the resource as JSON. 
'json-doc'(Ctx,Arg1) -> 
   'json-doc'(Ctx,Arg1,#{}).
'json-doc'(_Ctx,[],_Arg2) -> [];
% ignore validate option
'json-doc'(Ctx,Arg1,#{"validate" := _} = Arg2) ->
   'json-doc'(Ctx,Arg1,maps:remove("validate",Arg2));
'json-doc'(Ctx,Arg1,Arg2) -> 
   ok = check_json_doc_opts(Arg2),
   Txt = 'unparsed-text'(Ctx,Arg1),
   'parse-json'(Ctx,Txt,Arg2).

% no escape and fallback
check_json_doc_opts(#{"escape" := {_,?bool(true)},
                      "fallback" := _}) ->
   ?err('FOJS0005');
check_json_doc_opts(_) ->
   ok.

%% Parses a string supplied in the form of a JSON text, returning the 
%% results in the form of an XML document node. 
'json-to-xml'(Ctx,Arg1) -> 
   'json-to-xml'(Ctx,Arg1,#{}).
'json-to-xml'(_Ctx,[],_Arg2) -> [];
'json-to-xml'(Ctx,#xqAtomicValue{value = JSON},Arg2) -> 
   ok = check_json_to_xml_opts(Arg2),
   Options = map_options_to_list(Ctx, Arg2),
   xqerl_json:string_to_xml(JSON, Options).

% no escape and fallback, same check as doc 
check_json_to_xml_opts(#{"escape" := {_,?bool(true)},
                         "fallback" := _}) ->
   ?err('FOJS0005');
check_json_to_xml_opts(_) ->
   ok.

%% This function tests whether the language of $node, or the context item if 
%% the second argument is omitted, as specified by xml:lang attributes is the 
%% same as, or is a sublanguage of, the language specified by $testlang. 
'lang'(Ctx,Arg1) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'lang'(Ctx,Arg1,Ci).

'lang'(_,[],_) -> ?bool(false);
'lang'(Ctx,Testlang0,[Node]) ->
   'lang'(Ctx,Testlang0,Node);
'lang'(Ctx,Testlang0,#xqNode{} = XNode) -> 
   try
      Ances = xqerl_step:reverse(Ctx, XNode, 
                                 'ancestor-or-self', 
                                 #qname{namespace = "*", local_name = "*"}, []),
      Atts = xqerl_step:forward(Ctx, Ances, 
                                attribute, 
                                #qname{namespace = 
                                         "http://www.w3.org/XML/1998/namespace",
                                       prefix = "xml",
                                       local_name = "lang"},[]),
      if Atts =:= [] ->
            ?bool(false);
         true ->
            #xqNode{doc = Doc, node = Lang} = lists:last(Atts),
            Doc1 = case Doc of 
                      {doc,File} ->
                         ?get({doc,File});
                      O ->
                         O
                   end,
            Str = string:lowercase(xqerl_xdm:dm_string_value(Doc1, Lang)),
            Testlang = string:lowercase(xqerl_types:string_value(Testlang0)),
            Match = Str == Testlang orelse 
                      string:prefix(Str, Testlang ++ "-") =/= nomatch,
            ?bool(Match)
      end
   catch 
      ?ERROR_MATCH("XPDY0050") -> ?err('FODC0001');
      ?ERROR_MATCH("XPTY0019") -> ?err('XPTY0004')
   end.

%% Returns the context size from the dynamic context. 
'last'(Ctx) ->
   xqerl_context:get_context_size(Ctx).

-dialyzer({[no_return], ['load-xquery-module'/2, 'load-xquery-module'/3]}).
%% Provides access to the public functions and global variables of a 
%% dynamically-loaded XQuery library module. 
'load-xquery-module'(_Ctx,_Arg1) -> ?err('FOQM0006').
'load-xquery-module'(_Ctx,_Arg1,_Arg2) -> ?err('FOQM0006').

%% Returns the local part of the name of $arg as an xs:string that is 
%% either the zero-length string, or has the lexical form of an xs:NCName. 
'local-name'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'local-name'(Ctx, Ci).

'local-name'(Ctx,Arg1) -> 
   QName = 'node-name'(Ctx,Arg1),
   case xqerl_types:value(QName) of
      #qname{local_name = L} ->
         ?str(L);
      [] ->
         ?str("")
   end.

%% Returns the local part of the supplied QName. 
'local-name-from-QName'(_Ctx, []) -> [];
'local-name-from-QName'(_Ctx, Arg) ->
   case xqerl_types:value(Arg) of
      #qname{local_name = L} ->
         ?atm('xs:NCName',L);
      [] ->
         ?atm('xs:NCName',"");
      undefined ->
         ?atm('xs:NCName',"")
   end.

%% Converts a string to lower case. 
'lower-case'(_,[]) -> ?str("");
'lower-case'(Ctx,[Arg1]) -> 'lower-case'(Ctx,Arg1);
'lower-case'(_,#xqNode{} = Arg1) ->
   Str = string_value(Arg1),
   Upp = string:lowercase(Str),
   ?str(Upp);
'lower-case'(_,#xqAtomicValue{value = Val, type = Type}) ->
   case xqerl_types:subtype_of(Type, 'xs:string') of
      true ->
         Low = string:lowercase(Val),
         ?str(Low);
      _ -> 
         ?err('XPTY0004')
   end.   

%% Returns true if the supplied string matches a given regular expression. 
'matches'(_Ctx,String,Pattern) ->
   'matches'(_Ctx,String,Pattern,[]).
'matches'(_Ctx,String,Pattern,Flags) ->
   {_,MP} = xqerl_regex:regex_comp(xqerl_types:value(Pattern),Flags),
   Input1 = xqerl_types:value(String),
   case re:run(Input1, MP, [global]) of
      nomatch ->
         ?bool(false);
      _ ->
         ?bool(true)
   end.

%% Returns a value that is equal to the highest value appearing in the 
%% input sequence. 
'max'(_Ctx,Arg1) -> 
   {Seq,SeqType} = compare_convert_seq(?seq:to_list(Arg1), [], []),
   Max1 = max1(Seq, []),
   if ?numeric(SeqType) ->
         xqerl_types:cast_as(Max1, SeqType);
      true ->
         Max1
   end.

%TODO collation
'max'(Ctx,Arg1,Collation) -> 
   Coll = xqerl_types:value(Collation),
   All = maps:get(known_collations, Ctx),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         ?MODULE:'max'(Ctx,Arg1);
      _ ->
         ?err('FOCH0002')
   end.   

max1([], Max) ->
   Max;
max1([#xqAtomicValue{type = 'xs:double', value = nan} = H|_], _) ->
   H;
max1([#xqAtomicValue{type = 'xs:float', value = nan} = H|_], _) ->
   H;
max1([H|T], []) ->
   max1(T, H);
max1([H|T], Max) ->
   case xqerl_operators:less_than(H, Max) of
      ?bool(true) ->
         max1(T, Max);
      ?bool(false) ->
         max1(T, H)     
   end.

min1([], Min) ->
   Min;
min1([#xqAtomicValue{type = 'xs:double', value = nan} = H|_], _) ->
   H;
min1([#xqAtomicValue{type = 'xs:float', value = nan} = H|_], _) ->
   H;
min1([H|T], []) ->
   min1(T, H);
min1([H|T], Min) ->
   case xqerl_operators:greater_than(H, Min) of
      ?bool(true) ->
         min1(T, Min);
      ?bool(false) ->
         min1(T, H)     
   end.

compare_convert_seq([], Acc, SeqType) ->
   {Acc,SeqType};
compare_convert_seq([#array{data = L}|T], Acc, SeqType) ->
   compare_convert_seq(L ++ T, Acc, SeqType);
compare_convert_seq([#xqNode{} = H|T], Acc, SeqType) ->
   H1 = ?seq:singleton_value(xqerl_node:atomize_nodes(H)),
   compare_convert_seq([H1|T], Acc, SeqType);
compare_convert_seq([#xqAtomicValue{type = 'xs:untypedAtomic'} = H|T], 
                    Acc, SeqType) ->
   try xqerl_types:cast_as(H,'xs:double') of
      H1 ->
         if ?numeric(SeqType) orelse SeqType == [] ->
               compare_convert_seq([H1|T], Acc, 'xs:double');
            true ->
               ?err('FORG0006')
         end
   catch 
      _:_ ->
         ?err('FORG0001')
   end;
compare_convert_seq([#xqAtomicValue{type = 'xs:anyURI'} = H|T], Acc, SeqType) ->
   H1 = xqerl_types:cast_as(H,'xs:string'),
   if ?string(SeqType) orelse SeqType == [] ->
         compare_convert_seq(T, [H1|Acc], 'xs:string');
      true ->
         ?err('FORG0006')
   end;
compare_convert_seq([#xqAtomicValue{type = StrType} = H|T], Acc, SeqType) 
   when ?string(StrType), 
        ?string(SeqType) ->
   NewType = if SeqType == 'xs:string' ->
                   SeqType;
                true ->
                   BType = xqerl_btypes:get_type(StrType),
                   BSeqType = xqerl_btypes:get_type(SeqType),
                   xqerl_btypes:get_type(BType band BSeqType)
             end,
   if NewType == 'item' ->
         ?err('FORG0006');
      true ->
         compare_convert_seq(T, [H|Acc], NewType)
   end;
compare_convert_seq([#xqAtomicValue{type = StrType} = H|T], Acc, SeqType) 
   when ?integer(StrType), 
        ?integer(SeqType) ->
   NewType = if SeqType == 'xs:integer' ->
                   SeqType;
                true ->
                   BType = xqerl_btypes:get_type(StrType),
                   BSeqType = xqerl_btypes:get_type(SeqType),
                   xqerl_btypes:get_type(BType band BSeqType)
             end,
   if NewType == 'item' ->
         ?err('FORG0006');
      true ->
         compare_convert_seq(T, [H|Acc], NewType)
   end;
compare_convert_seq([#xqAtomicValue{type = 'xs:double'} = H|T], Acc, _) ->
   compare_convert_seq(T, [H|Acc], 'xs:double');
compare_convert_seq([#xqAtomicValue{type = 'xs:float'} = H|T], Acc, SeqType) ->
   if SeqType =:= 'xs:float' orelse 
        SeqType =:= 'xs:decimal' orelse 
        ?integer(SeqType) orelse 
        SeqType =:= [] ->
         compare_convert_seq(T, [H|Acc], 'xs:float');
      SeqType =:= 'xs:double' ->
         compare_convert_seq(T, [H|Acc], 'xs:double');
      true ->
         ?err('FORG0006')
   end;
compare_convert_seq([#xqAtomicValue{type = 'xs:decimal'} = H|T], Acc,SeqType) ->
   if SeqType =:= 'xs:decimal' orelse 
        ?integer(SeqType) orelse 
        SeqType =:= [] ->
         compare_convert_seq(T, [H|Acc], 'xs:decimal');
      SeqType =:= 'xs:float' ->
         compare_convert_seq(T, [H|Acc], 'xs:float');
      SeqType =:= 'xs:double' ->
         compare_convert_seq(T, [H|Acc], 'xs:double');
      true ->
         ?err('FORG0006')
   end;
compare_convert_seq([#xqAtomicValue{type = 'xs:integer'} = H|T], Acc,SeqType) ->
   if SeqType =:= 'xs:integer' orelse SeqType =:= [] ->
         compare_convert_seq(T, [H|Acc], 'xs:integer');
      SeqType =:= 'xs:decimal' ->
         compare_convert_seq(T, [H|Acc], 'xs:decimal');
      SeqType =:= 'xs:float' ->
         compare_convert_seq(T, [H|Acc], 'xs:float');
      SeqType =:= 'xs:double' ->
         compare_convert_seq(T, [H|Acc], 'xs:double');
      true ->
         ?err('FORG0006')
   end;
compare_convert_seq([#xqAtomicValue{type = Type} = H|T], Acc, SeqType) ->
   case xqerl_operators:is_comparable(Type) of
      true ->
         case xqerl_types:subtype_of(Type, SeqType) of
            true ->
               compare_convert_seq(T, [H|Acc], SeqType);
            _ ->
               case xqerl_types:subtype_of(SeqType, Type) orelse 
                      SeqType == [] of
                  true ->
                     compare_convert_seq(T, [H|Acc], Type);
                  _ ->
                     ?err('FORG0006')
               end
         end;
      _ ->
         ?err('FORG0006')
   end.

%% Returns a value that is equal to the lowest value appearing in 
%% the input sequence. 
'min'(_,Arg1) -> 
   {Seq,SeqType} = compare_convert_seq(?seq:to_list(Arg1), [], []),
   Min1 = min1(Seq, []),
   if ?numeric(SeqType) ->
         xqerl_types:cast_as(Min1, SeqType);
      true ->
         Min1
   end.

%TODO collation
'min'(Ctx,Arg1,Collation) -> 
   Coll = xqerl_types:value(Collation),
   All = maps:get(known_collations, Ctx),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         ?MODULE:'min'(Ctx,Arg1);
      _ ->
         ?err('FOCH0002')
   end.

%% Returns the minute component of an xs:dateTime. 
'minutes-from-dateTime'(Ctx,Arg1) -> 
   'minutes-from-duration'(Ctx, Arg1).

%% Returns the number of minutes in a duration. 
'minutes-from-duration'(_, []) -> [];
'minutes-from-duration'(Ctx, [Arg1]) -> 'minutes-from-duration'(Ctx, Arg1);
'minutes-from-duration'(_, #xqAtomicValue{value = #xsDateTime{sign = '-',
                                                              minute = Mi}}) ->
   ?atint(-Mi);
'minutes-from-duration'(_, #xqAtomicValue{value = #xsDateTime{minute = Mi}}) ->
   ?atint(Mi).

%% Returns the minutes component of an xs:time. 
'minutes-from-time'(Ctx,Arg1) -> 
   'minutes-from-dateTime'(Ctx, Arg1).

%% Returns the month component of an xs:date. 
'month-from-date'(Ctx,Arg1) -> 
   'month-from-dateTime'(Ctx, Arg1).

%% Returns the month component of an xs:dateTime. 
'month-from-dateTime'(_,[]) -> [];
'month-from-dateTime'(Ctx,[Arg1]) -> 'month-from-dateTime'(Ctx,Arg1);
'month-from-dateTime'(_,#xqAtomicValue{value = #xsDateTime{month = Mo}}) -> 
   ?atint(Mo).

%% Returns the number of months in a duration. 
'months-from-duration'(_, []) -> [];
'months-from-duration'(Ctx, [Arg1]) -> 'months-from-duration'(Ctx, Arg1);
'months-from-duration'(_, #xqAtomicValue{value =  #xsDateTime{sign = '-',
                                                              month = Mo}}) ->
   ?atint(-Mo);
'months-from-duration'(_, #xqAtomicValue{value = #xsDateTime{month = Mo}}) ->
   ?atint(Mo).


%% Returns the name of a node, as an xs:string that is either the 
%% zero-length string, or has the lexical form of an xs:QName. 
'name'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'name'(Ctx, Ci).

'name'(Ctx,Arg1) -> 
   Q = 'node-name'(Ctx,Arg1),
   case xqerl_types:cast_as( Q, 'xs:string' ) of
      [] ->
         ?str("");
      S ->
         S
   end.

%% Returns the namespace URI part of the name of $arg, as an xs:anyURI value. 
'namespace-uri'(Ctx) -> 
   Item = xqerl_context:get_context_item(Ctx),
   'namespace-uri'(Ctx,Item).
'namespace-uri'(_Ctx,[]) -> ?atm('xs:anyURI',"");
'namespace-uri'(_Ctx,[Arg1]) ->
   'namespace-uri'(_Ctx,Arg1);
'namespace-uri'(_Ctx,#xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   'namespace-uri'(_Ctx,#xqNode{doc = Doc, node = Node});
'namespace-uri'(_Ctx,#xqNode{doc = Doc, node = Node}) ->
   case xqerl_xdm:dm_node_name(Doc, Node) of
      {'no-namespace',_} ->
         ?atm('xs:anyURI',"");
      {"",_} ->
         ?atm('xs:anyURI',"");
      [] ->
         ?atm('xs:anyURI',"");
      {Uri,_} ->
         ?atm('xs:anyURI',Uri)
   end.

%% Returns the namespace URI of one of the in-scope namespaces for $element, 
%% identified by its namespace prefix. 
'namespace-uri-for-prefix'(Ctx,Prefix,[Element]) ->
   'namespace-uri-for-prefix'(Ctx,Prefix,Element);
'namespace-uri-for-prefix'(_Ctx,Prefix,#xqNode{doc = {doc,File}, 
                                               node = Node}) -> 
   Doc = ?get({doc,File}),
   'namespace-uri-for-prefix'(_Ctx,Prefix,#xqNode{doc = Doc, node = Node});
'namespace-uri-for-prefix'(_Ctx,Prefix,#xqNode{doc = Doc, node = Node}) -> 
   P1 = xqerl_types:string_value(Prefix),
   InScopeNs = xqerl_xdm:inscope_namespaces(Doc, Node),
   case lists:keyfind(P1, 2, InScopeNs) of
      false ->
         ?seq:empty();
      {'no-namespace',_} ->
         ?seq:empty();
      {Ns,_} ->
         ?atm('xs:anyURI', Ns)
   end.

%% Returns the namespace URI part of the supplied QName. 
'namespace-uri-from-QName'(_,[]) -> [];
'namespace-uri-from-QName'(_Ctx,Arg1) ->
   case xqerl_types:value(Arg1) of
      #qname{namespace = 'no-namespace'} ->
         ?atm('xs:anyURI',"");
      #qname{namespace = Uri} ->
         ?atm('xs:anyURI',Uri);
      [] ->
         ?atm('xs:anyURI',"");
      undefined ->
         ?atm('xs:anyURI',"")
   end.   

%% Returns true for an element that is nilled. 
'nilled'(#{'context-item' := Ci}) ->
   'nilled'(#{},Ci);
'nilled'(_) ->
   ?err('XPDY0002').

'nilled'(_,[]) -> [];
'nilled'(C,[Node]) -> 'nilled'(C,Node);
'nilled'(_,Node) ->
   case xqerl_node:get_node_type(Node) of
      element ->
         ?bool(false);
      _ ->
         []
   end.

%% Returns the name of a node, as an xs:QName. 
'node-name'(Ctx) ->
   'node-name'(Ctx, xqerl_context:get_context_item(Ctx)).

'node-name'(Ctx, [Arg]) ->
   'node-name'(Ctx, Arg);
'node-name'(_Ctx, #xqAtomicValue{}) -> ?err('XPTY0004');
'node-name'(Ctx, #xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   'node-name'(Ctx, #xqNode{doc = Doc, node = Node});
'node-name'(_Ctx, #xqNode{doc = Doc, node = Node}) ->
   case xqerl_xdm:dm_node_name(Doc, Node) of
      [] ->
         [];
      {[],Ln} ->
         Px = xqerl_xdm:prefix(Doc, Node),
         Q = #qname{namespace = 'no-namespace', prefix = Px, local_name = Ln},
         ?atm('xs:QName',Q);
      {Ns,Ln} ->
         Px = xqerl_xdm:prefix(Doc, Node),
         Q = #qname{namespace = Ns, prefix = Px, local_name = Ln},
         ?atm('xs:QName',Q)
   end;
'node-name'(_Ctx, []) ->
   [].

%% Returns the value of $arg with leading and trailing whitespace removed, 
%% and sequences of internal whitespace reduced to a single space character. 
'normalize-space'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'normalize-space'(Ctx, Ci).
'normalize-space'(_,[]) -> ?str(""); 
'normalize-space'(_Ctx,Arg1) -> 
   StrVal = xqerl_types:string_value(Arg1),
   if StrVal =:= [] -> ?str("");
      true ->
         Trimmed = string:trim(StrVal, both, [32,13,10,9]),
         if StrVal =:= "" -> ?str("");
            true ->
               Rep = shrink_spaces(Trimmed),
               ?str(Rep)
         end
   end.

shrink_spaces([]) ->
   [];
shrink_spaces([WS|T]) when WS =:= 31;
                           WS =:= 10;
                           WS =:= 9 ->
   shrink_spaces([32|T]);
shrink_spaces([32,WS|T]) when WS =:= 32;
                              WS =:= 31;
                              WS =:= 10;
                              WS =:= 9 ->
   shrink_spaces([32|T]);
shrink_spaces([H|T]) ->
   [H|shrink_spaces(T)].

%% Returns the value of $arg after applying Unicode normalization. 
'normalize-unicode'(_,[]) -> ?str(""); 
'normalize-unicode'(Ctx,Arg1) -> 
   'normalize-unicode'(Ctx,Arg1,?str("NFC")).

'normalize-unicode'(_,[],_) -> ?str(""); 
'normalize-unicode'(Ctx,Arg1,NormalizationForm) -> 
   Norm = 'normalize-space'(Ctx,NormalizationForm),
   Upper = 'upper-case'(Ctx,Norm),
   Form1 = xqerl_types:string_value(Upper),
   Str = xqerl_types:string_value(Arg1),
   case Form1 of
      "NFC" ->
         ?str(unicode:characters_to_nfc_list(Str));
      "NFD" ->
         ?str(unicode:characters_to_nfd_list(Str));
      "NFKC" ->
         ?str(unicode:characters_to_nfkc_list(Str));
      "NFKD" ->
         ?str(unicode:characters_to_nfkd_list(Str));
      "FULLY-NORMALIZED" ->
         % turned off due to not wanting to implement - 
         % Composition Exclusion Table defined in [UAX #15];
         ?err('FOCH0003');
      "" ->
         Arg1;
      _ ->
         ?err('FOCH0003')
   end.

%% Returns true if the effective boolean value of $arg is false, 
%% or false if it is true. 
'not'(_,Arg1) -> 
   case xqerl_operators:eff_bool_val(Arg1) of
      true ->
         ?bool(false);
      false ->
         ?bool(true)
   end.

%% Returns the value indicated by $arg or, if $arg is not specified, 
%% the context item after atomization, converted to an xs:double. 
'number'(Ctx) ->
   Val = xqerl_context:get_context_item(Ctx),
   'number'([], Val).
'number'(Ctx,[Arg1]) -> 'number'(Ctx,Arg1);
'number'(_Ctx,[]) -> ?dbl(nan); 
'number'(_Ctx,Arg1) -> 
   NVal = xqerl_types:value(Arg1),
   if is_integer(NVal) ->
         ?dbl(xqerl_numeric:double(NVal));
      true ->
         case catch xqerl_types:cast_as(Arg1, 'xs:double') of
            {'EXIT',_} ->
               ?dbl(nan);
            V ->
               V
         end
   end.

%% Returns $arg if it contains one or more items. Otherwise, raises an error. 
'one-or-more'(_,[]) -> ?err('FORG0004'); 
'one-or-more'(_,Arg1) -> Arg1.

%% Returns every node within the input sequence that has no ancestor that 
%% is itself a member of the input sequence; 
%% the nodes are returned in document order with duplicates eliminated. 
%% fn:outermost($nodes as node()*) as node()*
'outermost'(Ctx,Arg1) -> 
   %%    $nodes except $nodes/ancestor::node()
   try
      Unq = ?seq:union(Arg1,?seq:empty()),
      Dec = xqerl_step:forward(Ctx,Unq,descendant
                              ,#xqKindTest{type = node},[]),
      Att = xqerl_step:forward(Ctx,Unq,attribute,
                               #xqKindTest{type = attribute},[]),
      All = ?seq:union(Dec,Att),
      ?seq:except(Arg1,All)
   catch 
      ?ERROR_MATCH("XPTY0019") -> ?err('XPTY0004');
      _:E -> throw(E)
   end.

%% Parses a string containing the date and time in IETF format, returning the 
%% corresponding xs:dateTime value. 
'parse-ietf-date'(_Ctx,[]) ->  [];
'parse-ietf-date'(_Ctx,Arg1) -> 
   Str = xqerl_types:string_value(Arg1),
   Strip = string:strip(Str),
   try 
      {ok,L,_} = ietf_date:string(Strip),
      {ok,Dt} = ietf_date_parse:parse(L),
      _ = xqerl_datetime:ymd_is_valid(Dt#xsDateTime.year, 
                                      Dt#xsDateTime.month, 
                                      Dt#xsDateTime.day),
      DtStr = xqerl_datetime:to_string(Dt, 'xs:dateTime'),
      ?atm('xs:dateTime', Dt#xsDateTime{string_value = DtStr})
   catch
      _:_ -> ?err('FORG0010')
   end.

%% Parses a string supplied in the form of a JSON text, returning the 
%% results typically in the form of a map or array. 
'parse-json'(Ctx,Arg1) -> 
   'parse-json'(Ctx,Arg1,#{}).
% fn:parse-json($json-text as xs:string?, $options as map(*)) as item()?
'parse-json'(_Ctx,[],_Arg2) -> [];
'parse-json'(_Ctx,#xqAtomicValue{value = "null"},_Arg2) -> [];
'parse-json'(Ctx,#xqAtomicValue{value = JSON},Arg2) -> 
   Options = map_options_to_list(Ctx, Arg2),
   xqerl_json:string(JSON, Options).

get_bool(#xqAtomicValue{type = 'xs:boolean', value = B}) ->
   B;
get_bool(_) ->
   ?err('XPTY0004').

get_str(#xqAtomicValue{type = 'xs:string', value = B}) ->
   B;
get_str(#xqNode{} = N) ->
   xqerl_types:string_value(N);
get_str(_) ->
   ?err('XPTY0004').

map_options_to_list(#{'base-uri' := BaseUri} = Ctx, Map) ->
   Liberal    = maps:get("liberal", Map, []),
   Duplicates = maps:get("duplicates", Map, []),
   Escape     = maps:get("escape", Map, []),
   Fallback   = maps:get("fallback", Map, []),
   Validate   = maps:get("validate", Map, []),
   Indent     = maps:get("indent", Map, []),
   [{'base-uri', BaseUri},
    if Liberal == [] ->
          [];
       true ->
          Lib = get_bool(element(2, Liberal)),
          if Lib == true ->
                {liberal, true};
             Lib == false ->
                {liberal, false};
             true ->
                ?err('FOJS0005')
          end          
    end ,
    if Duplicates == [] ->
          [];
       true ->
          Dup = get_str(element(2, Duplicates)),
          if Dup == "retain" ->
                {duplicates, retain};
             Dup == "reject" ->
                {duplicates, reject};
             Dup == "use-first" ->
                {duplicates, use_first};
             Dup == "use-last" ->
                {duplicates, use_last};
             true ->
                ?err('FOJS0005')
          end
    end ,
    if Escape == [] ->
          [];
       true ->
          Esc = get_bool(element(2, Escape)),
          if Esc == true ->
                {escape, true};
             Esc == false ->
                {escape, false};
             true ->
                ?err('FOJS0005')
          end          
    end,      
    if Fallback == [] ->
          [];
       true ->
          Fbk = xqerl_types:value(element(2, Fallback)),
          if is_function(Fbk) ->
                case erlang:fun_info(Fbk, arity) of
                   {arity,2} ->
                      {fallback, fun(C) -> Fbk(Ctx,C) end};
                   %{arity,1} ->
                   %   {fallback, fun(C) -> Fbk(C) end};
                   _A ->
                      %?dbg("A",A),
                      ?err('XPTY0004')
                end;
             true ->
                %?dbg("Fbk",Fbk),
                ?err('XPTY0004')
          end          
    end ,
    if Validate == [] ->
          [];
       true ->
          Val = get_bool(element(2, Validate)),
          if Val == true ->
                [];
                %?err('FOJS0004');
             Val == false ->
                {validate, false};
             true ->
                ?err('FOJS0005')
          end          
    end ,
    if Indent == [] ->
          [];
       true ->
          Ind = get_bool(element(2, Indent)),
          if Ind == true ->
                {indent, true};
             Ind == false ->
                {indent, false};
             true ->
                ?err('FOJS0005')
          end          
    end      
   ].

   

%% This function takes as input an XML document represented as a string, and 
%% returns the document node at the root of an XDM tree representing the 
%% parsed document. 
'parse-xml'(_,[]) -> [];
'parse-xml'(#{'base-uri' := BaseUri} = Ctx,Arg1) ->
   String = xqerl_types:string_value(Arg1),
   if String =:= [] ->
         xqerl_node:new_fragment(Ctx, []);
      true ->
         BaseUri1 = xqerl_types:string_value(BaseUri),
         try
            Doc = xqerl_doc:read_stream(String,BaseUri1),
            Doc1 = xqerl_doc:doc_to_xqnode_doc(Doc),
            Doc2 = #xqNode{doc = Doc1, node = xqerl_xdm:root(Doc1)},
            xqerl_node:new_fragment(Doc2)
         catch 
            _:E ->
               ?dbg("E",E),
               ?err('FODC0006')
         end
   end.

%% This function takes as input an XML external entity represented as a string,
%% and returns the document node at the root of an XDM tree representing the 
%% parsed document fragment. 
'parse-xml-fragment'(_,[]) -> [];
'parse-xml-fragment'(Ctx,Arg1) -> 
   'parse-xml'(Ctx,Arg1).

%% Returns a path expression that can be used to select the supplied node 
%% relative to the root of its containing document. 
'path'(Ctx) ->
   Ci = xqerl_context:get_context_item(Ctx),
   'path'(Ctx, Ci).

'path'(_,[]) -> [];
'path'(Ctx,[Arg1]) -> 'path'(Ctx,Arg1);
'path'(Ctx,#xqNode{doc = {doc,File}, node = Node}) ->
   Doc = ?get({doc,File}),
   'path'(Ctx,#xqNode{doc = Doc, node = Node});
'path'(_Ctx,#xqNode{doc = Doc, node = Node}) ->
   case xqerl_xdm:dm_node_kind(Doc, Node) of
      document ->
         ?str("/");
      _ ->
         Path = xqerl_xdm:path_to_root(Doc, Node),
         ?dbg("Path",Path),
         path_1(Doc,Path,[])
   end;
'path'(_,_) -> 
   ?err('XPTY0004').

path_1(_,[],String) -> ?str(String);
path_1(Doc,[Root|Rest],[]) ->
   case xqerl_xdm:dm_node_kind(Doc, Root) of
      document ->
         path_1(Doc,Rest,"/");
      _ ->
         path_1(Doc,Rest,"Q{http://www.w3.org/2005/xpath-functions}root()")
   end;
path_1(Doc,[Node|Rest],Acc) ->
   Kind = xqerl_xdm:dm_node_kind(Doc, Node),
   path_2(Kind, Doc,[Node|Rest],Acc).

path_2(element,Doc,[Node|Rest],Acc) ->
   {Ns,Ln} = xqerl_xdm:dm_node_name(Doc, Node),
   Pos = xqerl_xdm:named_position(Doc, Node),
   Ns1 = if Ns == 'no-namespace' -> ""; true -> Ns end,
   Str = "Q{"++Ns1++"}"++Ln++"["++integer_to_list(Pos)++"]",
   NewAcc = if Acc == "/" ->
                  Acc ++ Str;
               true ->
                  Acc ++ "/" ++ Str
            end,
   path_1(Doc,Rest,NewAcc);
path_2(attribute,Doc,[Node|Rest],Acc) ->
   {Ns,Ln} = xqerl_xdm:dm_node_name(Doc, Node),
   Str = if Ns == 'no-namespace' -> 
               "@" ++ Ln;
            true -> 
               "@Q{"++Ns++"}"++Ln
         end,
   NewAcc = if Acc == "/" ->
                  Acc ++ Str;
               true ->
                  Acc ++ "/" ++ Str
            end,
   path_1(Doc,Rest,NewAcc);
path_2(text,Doc,[Node|Rest],Acc) ->
   Pos = xqerl_xdm:named_position(Doc, Node),
   Str = "text()["++integer_to_list(Pos)++"]" ,
   NewAcc = if Acc == "/" ->
                  Acc ++ Str;
               true ->
                  Acc ++ "/" ++ Str
            end,
   path_1(Doc,Rest,NewAcc);
path_2(comment,Doc,[Node|Rest],Acc) ->
   Pos = xqerl_xdm:named_position(Doc, Node),
   Str = "comment()["++integer_to_list(Pos)++"]" ,
   NewAcc = if Acc == "/" ->
                  Acc ++ Str;
               true ->
                  Acc ++ "/" ++ Str
            end,
   path_1(Doc,Rest,NewAcc);
path_2('processing-instruction',Doc,[Node|Rest],Acc) ->
   {_,Ln} = xqerl_xdm:dm_node_name(Doc, Node),
   Pos = xqerl_xdm:named_position(Doc, Node),
   Str = "processing-instruction("++Ln++")["++integer_to_list(Pos)++"]",
   NewAcc = if Acc == "/" ->
                  Acc ++ Str;
               true ->
                  Acc ++ "/" ++ Str
            end,
   path_1(Doc,Rest,NewAcc);
path_2(namespace,Doc,[Node|Rest],Acc) ->
   Str = case xqerl_xdm:dm_node_name(Doc, Node) of
            [] ->
               "namespace::*[Q{http://www.w3.org/2005/xpath-functions}"
               "local-name()=\"\"]";
            {_,Px} ->
               "namespace::" ++ Px
         end,
   NewAcc = if Acc == "/" ->
                  Acc ++ Str;
               true ->
                  Acc ++ "/" ++ Str
            end,
   path_1(Doc,Rest,NewAcc).

%% Returns the context position from the dynamic context. 
'position'(Ctx) -> 
   ?atm('xs:integer', xqerl_context:get_context_position(Ctx)).

%% Returns the prefix component of the supplied QName. 
'prefix-from-QName'(_Ctx,[]) -> [] ;
'prefix-from-QName'(_Ctx,Arg) -> 
   #qname{prefix = L} = xqerl_types:value(Arg),
   if L =:= [] ->
         [];
      true ->
         #xqAtomicValue{type = 'xs:NCName', value = L}
   end.

%% Returns an xs:QName value formed using a supplied namespace 
%% URI and lexical QName. 
'QName'(Ctx,[],QNameTxt) ->
   'QName'(Ctx,?str('no-namespace'),QNameTxt);
'QName'(Ctx,Uri,QNameTxt) ->
   case string_value(QNameTxt) of
      [] ->
         ?err('FOCA0002');
      Str ->
         StrUri = ns_from_str(string_value(Uri)),
         {Prefix, Local} = pre_loc_from_str(Str),
         Namespaces = maps:get(namespaces, Ctx),
         make_qname(StrUri,Prefix,Local,Namespaces)
   end.

ns_from_str('no-namespace') -> 'no-namespace';
ns_from_str([]) -> 'no-namespace';
ns_from_str(Uri) -> Uri.

pre_loc_from_str(Str) ->
   case catch xqerl_types:scan_ncname(Str) of
      {'EXIT',_} ->
         ?err('FOCA0002');
      {P, L} ->
         {P, L};
      L ->
         {"", L}
   end.

make_qname('no-namespace',Prefix,_,_) when Prefix =/= "" ->
   ?err('FOCA0002');
make_qname('no-namespace',"",Local,_) ->
   Q = #qname{namespace = 'no-namespace', 
              prefix = "", local_name = Local},
   ?atm('xs:QName',Q);
make_qname(Uri,[],Local,Namespaces) ->
   P = case lists:keyfind(Uri, 2, Namespaces) of
          false -> "";
          #xqNamespace{prefix = P1} -> P1
       end,
   Q = #qname{namespace = Uri, prefix = P, local_name = Local},
   ?atm('xs:QName',Q);
make_qname(Uri,Prefix,Local,_) ->
   Q = #qname{namespace = Uri, prefix = Prefix, local_name = Local},
   ?atm('xs:QName',Q).

   

%% Returns a random number generator, which can be used to generate 
%% sequences of random numbers. 
'random-number-generator'(Ctx) -> 
   'random-number-generator'(Ctx, ?atm('xs:double',31.13)).

'random-number-generator'(Ctx,[]) ->
   'random-number-generator'(Ctx, ?atm('xs:double',31.13));
'random-number-generator'(Ctx,#xqAtomicValue{value = Seed}) 
   when not is_integer(Seed), 
        not is_float(Seed) ->
   'random-number-generator'(Ctx,#xqAtomicValue{value = erlang:phash2(Seed)});
'random-number-generator'(Ctx,#xqAtomicValue{value = Seed}) ->
   S = rand:seed(exs1024s, 
                 {erlang:phash2([Seed]),1,2}), 
   {Num,S2} = rand:uniform_s(S),
   FunBod = fun(_,List0) ->
                  List = if is_list(List0) -> List0; true -> [List0] end,
                  F = fun(I,S3) ->
                            {Num1,S4} = rand:uniform_s(S3),
                            {{Num1,I},S4}
                      end,
                  {List1,_} = lists:mapfoldl(F, S2, List),
                  List2 = lists:keysort(1, List1),
                  [I || {_,I} <- List2]
            end,
   Permute = #xqFunction{params = [#xqSeqType{type = item, 
                                              occur = zero_or_many}], 
                         type = #xqSeqType{type = item, occur = zero_or_many},
                         body = FunBod},
   NextFun = fun(_) -> 
                   'random-number-generator'(Ctx,
                                             #xqAtomicValue{value = Seed + 1}) 
             end,
   xqerl_map:construct(
     Ctx, 
     [{?str("number"), ?atm('xs:double',Num)},
      {?str("next"), NextFun},
      {?str("permute"),Permute}]).

%% Returns a new sequence containing all the items of $target except 
%% the item at position $position. 
'remove'(_,[],_) -> [];
'remove'(_Ctx,Target,Position) -> 
   Index = xqerl_types:value(Position),
   Size = ?seq:size(Target),
   if Index < 1 orelse Index > Size ->
         Target;
      true ->
         remove1(?seq:to_list(Target),Index,1)
   end.

remove1([],_,_) ->
   [];
remove1([_|T],Position,Current) when Position =:= Current ->
   T;
remove1([H|T],Position,Current) ->
   [H|remove1(T,Position,Current + 1)].
  

%% Returns a string produced from the input string by replacing any substrings 
%% that match a given regular expression with a supplied replacement string. 
'replace'(_Ctx,Input,Pattern,Replacement) -> 
   'replace'(_Ctx,Input,Pattern,Replacement,[]).
'replace'(_Ctx,Input,Pattern,Replacement,Flags) ->
   Pattern1 = xqerl_types:value(Pattern),
   {Zero,MP} = xqerl_regex:regex_comp(Pattern1,Flags),
   if Zero ->
         ?err('FORX0003');
      true ->
         ok
   end,
   Repl = string_value(Replacement),
   Repl1 = case lists:member($q, xqerl_types:value(Flags)) of
              true ->
                 xqerl_regex:esc_esc(Repl);
              _ ->
                 Depth = xqerl_regex:get_depth(Pattern1),
                 xqerl_regex:parse_repl(Repl,Depth)
           end,
   Input1 = string_value(Input),
   try
      Str = re:replace(Input1, MP, Repl1, [{return,list},global]),
      ?str(Str)
   catch
      _:_ ->
         ?err('FORX0004')
   end.

string_value(At) -> xqerl_types:string_value(At).

%% Returns an xs:QName value (that is, an expanded-QName) by taking an 
%% xs:string that has the lexical form of an xs:QName (a string in the form 
%% "prefix:local-name" or "local-name") and resolving it using the in-scope 
%% namespaces for a given element.
%% 
%% fn:resolve-QName($qname as xs:string?, $element as element()) as xs:QName? 
'resolve-QName'(_Ctx,[],_Element) -> [];
'resolve-QName'(Ctx,String,[Element]) ->
   'resolve-QName'(Ctx,String,Element);

'resolve-QName'(Ctx,String,#xqNode{doc = {doc,File}, node = Node}) -> 
   Doc = ?get({doc,File}),
   'resolve-QName'(Ctx,String,#xqNode{doc = Doc, node = Node});
'resolve-QName'(Ctx,String,#xqNode{doc = Doc, node = Node}) -> 
   InScopeNs = xqerl_xdm:inscope_namespaces(Doc, Node),
   IsNs = lists:map(fun({U,P}) ->
                        #xqNamespace{namespace = U, prefix = P}
                    end, InScopeNs) ++ maps:get(namespaces, Ctx,[]),
   try
      xqerl_types:cast_as(String, 'xs:QName', IsNs)
   catch 
      ?ERROR_MATCH("FONS0004") -> ?err('FONS0004');
      _:_ -> ?err('FOCA0002')
   end.

%% Resolves a relative IRI reference against an absolute IRI. 
'resolve-uri'(_Ctx,[]) -> ?seq:empty();
'resolve-uri'(#{'base-uri' := Base} = Ctx,Relative) -> 
   'resolve-uri'(Ctx,Relative,Base).

'resolve-uri'(_Ctx,[],_Base) -> ?seq:empty();
'resolve-uri'(Ctx,Relative,Base) ->
   BasVal = case xqerl_types:value(Base) of
               [] ->
                  xqerl_types:value(maps:get('base-uri', Ctx));
               B ->
                  B
            end,
   try
      RelVal = xqerl_types:value(Relative),
      case xqerl_lib:resolve_against_base_uri(BasVal, RelVal) of
         {error,_} ->
            ?err('FORG0002');
         ResVal ->
            ?atm('xs:anyURI',ResVal)
      end
   catch 
      ?ERROR_MATCH("FORG0001") -> ?err('FORG0002');
      ?ERROR_MATCH("FORG0002") -> ?err('FORG0002');
      _:{badmatch, _} -> ?err('FORG0002');
      _:_ -> ?err('FORG0009')
   end.

%% Reverses the order of items in a sequence. 
'reverse'(_Ctx,[]) -> [];
'reverse'(_Ctx,Arg1) when is_list(Arg1) -> 
   lists:reverse(Arg1);
'reverse'(_Ctx,Arg1) ->
   Arg1.

%% Returns the root of the tree to which $arg belongs. This will usually, 
%% but not necessarily, be a document node. 
'root'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   ?MODULE:root(Ctx,Ci).
'root'(_Ctx,[]) -> [];
'root'(Ctx,Arg1) when not is_list(Arg1) ->
   ?MODULE:root(Ctx,[Arg1]);
'root'(Ctx,Arg1) ->  
   case ?seq:all_node(Arg1) of
      true ->
         xqerl_step:any_root(Ctx,Arg1);
      _ ->
         ?err('XPTY0004')
   end.

%% Rounds a value to a specified number of decimal places, rounding upwards 
%% if two such values are equally near. 
'round'(Ctx,Arg1) -> 
   'round'(Ctx,Arg1, ?atint(0)).
'round'(_Ctx,[],_Precision) -> [];
'round'(_Ctx,Arg,Precision) -> 
   Prec = xqerl_types:value(Precision),
   ArgType = xqerl_types:type(Arg),
   ArgVal = xqerl_types:value(Arg),
   if ArgVal =:= [] orelse
      ArgVal =:= nan orelse
      ArgVal =:= neg_infinity orelse
      ArgVal =:= infinity orelse
      ArgVal =:= neg_zero orelse
      abs(Prec) > 308 ->
         Arg;
      true ->
         Dec = xqerl_numeric:decimal(ArgVal),
         Rounded = xqerl_numeric:round_half(Dec, Prec),
         if Rounded =:= {xsDecimal,0,0} andalso 
              ArgVal < 0 andalso 
              (ArgType =:= 'xs:double' orelse ArgType =:= 'xs:float') ->
               #xqAtomicValue{type = ArgType, value = neg_zero};
            true ->
               xqerl_types:cast_as(?atm('xs:decimal', Rounded), ArgType)
         end
   end.

%% Rounds a value to a specified number of decimal places, rounding to make 
%% the last digit even if two such values are equally near. 
'round-half-to-even'(_Ctx,[]) -> ?seq:empty();
'round-half-to-even'(Ctx,Arg1) -> 'round-half-to-even'(Ctx,Arg1,?atint(0)).
'round-half-to-even'(_Ctx,[],_Precision) -> ?seq:empty();
'round-half-to-even'(_Ctx,Arg,Precision) -> 
   Prec = xqerl_types:value(Precision),
   ArgType = xqerl_types:type(Arg),
   ArgVal = xqerl_types:value(Arg),
   if ArgVal =:= [];
      ArgVal =:= nan;
      ArgVal =:= neg_infinity;
      ArgVal =:= neg_zero;
      ArgVal =:= infinity;
      abs(Prec) > 308 ->
         Arg;
      true ->
         Dec = xqerl_numeric:decimal(ArgVal),
         Rounded = xqerl_numeric:round_half_even(Dec, Prec),
         xqerl_types:cast_as(?atm('xs:decimal', Rounded), ArgType)
   end.

%% Returns the seconds component of an xs:dateTime. 
'seconds-from-dateTime'(Ctx,Arg1) -> 
   'seconds-from-duration'(Ctx, Arg1).

%% Returns the number of seconds in a duration. 
'seconds-from-duration'(_, []) -> [];
'seconds-from-duration'(Ctx, [Arg1]) -> 'seconds-from-duration'(Ctx, Arg1);
'seconds-from-duration'(_, #xqAtomicValue{value = #xsDateTime{sign = '-', 
                                                              second = Sd}}) ->
   ?dec(xqerl_numeric:multiply(Sd,-1));
'seconds-from-duration'(_, #xqAtomicValue{value = #xsDateTime{second = Sd}}) ->
   ?dec(Sd).

%% Returns the seconds component of an xs:time. 
'seconds-from-time'(Ctx,Arg1) -> 
   'seconds-from-duration'(Ctx, Arg1).

-dialyzer({[no_return], [serialize/2, serialize/3]}).
%% This function serializes the supplied input sequence $arg as described in 
%% [xslt-xquery-serialization-31], returning the serialized representation of 
%% the sequence as a string. 
'serialize'(_Ctx,_Arg1) -> ?err('FODC0010').
'serialize'(_Ctx,_Arg1,_Arg2) -> ?err('FODC0010').

%% Sorts a supplied sequence, based on the value of a sort key supplied as 
%% a function. 
'sort'(Ctx,List) when not is_list(List) ->
   'sort'(Ctx,[List]);
'sort'(Ctx,List) -> 
   Collation = xqerl_context:get_default_collation(Ctx),
   sort(Ctx,List, Collation).
   
'sort'(Ctx,List,[]) -> 
   Collation = xqerl_context:get_default_collation(Ctx),
   'sort'(Ctx,List,Collation,fun xqerl_fn:data/2);
'sort'(Ctx,List,Collation) when not is_list(List) ->
   'sort'(Ctx,[List],Collation);
'sort'(Ctx,List,Collation) ->
   'sort'(Ctx,List,Collation,fun xqerl_fn:data/2).

'sort'(Ctx,List,[],Function) -> 
   Collation = xqerl_context:get_default_collation(Ctx),
   'sort'(Ctx,List,Collation,Function);
'sort'(Ctx,List,Collation,Function) when not is_list(List) ->
   'sort'(Ctx,[List],Collation,Function);
'sort'(Ctx,List,Collation,Function) when is_function(Function), is_list(List) -> 
   SortFun = fun(A,B) ->
                   KeyA = Function(Ctx,A),
                   KeyB = Function(Ctx,B),
                   sort1(Ctx,KeyA,KeyB,Collation)
             end,
   SortedList = lists:sort(SortFun, List),
   SortedList;
'sort'(Ctx,Array,Collation,#xqFunction{body = Function}) 
   when is_function(Function) ->
   'sort'(Ctx,Array,Collation,Function).

sort1(_,[],[],_Coll) -> true;
sort1(_,[],_B,_Coll) -> true;
sort1(_,_A,[],_Coll) -> false;
sort1(Ctx,[HA|TA],[HB|TB],Coll) ->
   #xqAtomicValue{value = Equal} = xqerl_fn:'deep-equal'(Ctx, HA, 
                                                         HB, Coll),
   if Equal ->
         sort1(Ctx,TA,TB,Coll);
      true ->
         % values that don't equal self, e.g. NaN
         #xqAtomicValue{value = NotEqual} = xqerl_operators:not_equal(HA,HA),
         if NotEqual -> true;
            true ->
               TypeA = xqerl_types:type(HA),
               TypeB = xqerl_types:type(HB),
               if ?string(TypeA) orelse 
                    TypeA == 'xs:anyURI' orelse 
                    TypeA == 'xs:untypedAtomic',
                  ?string(TypeB) orelse 
                    TypeB == 'xs:anyURI' orelse 
                    TypeB == 'xs:untypedAtomic' ->
                     #xqAtomicValue{value = Comp} = xqerl_fn:compare(Ctx, HA, 
                                                                     HB, Coll),
                     Comp =< 0;
                  true ->
                     #xqAtomicValue{value = LTEqual} = 
                       xqerl_operators:less_than_eq(HA, HB),
                     LTEqual
               end
         end
   end;
sort1(Ctx,A,B,Coll) when is_list(A) ->
   sort1(Ctx,A,[B],Coll);
sort1(Ctx,A,B,Coll) when is_list(B) ->
   sort1(Ctx,[A],B,Coll);
sort1(Ctx,A,B,Coll) ->
   sort1(Ctx,[A],[B],Coll).

%% Returns true if the string $arg1 contains $arg2 as a leading substring, 
%% taking collations into account. 
'starts-with'(Ctx,[],Arg2) -> 'starts-with'(Ctx,?str(""),Arg2);
'starts-with'(_Ctx,_Arg1,[]) -> ?bool(true);
'starts-with'(#{'default-collation' := DefColl} = Ctx,Arg1,Arg2) -> 
   'starts-with'(Ctx,Arg1,Arg2,DefColl).

'starts-with'(#{'base-uri' := BaseUri0},Arg1,Arg2,Collation) -> 
   Str1 = xqerl_types:string_value(Arg1),
   Str2 = xqerl_types:string_value(Arg2),
   Uri = xqerl_types:value(Collation),
   BaseUri = xqerl_types:value(BaseUri0),
   Coll = xqerl_lib:resolve_against_base_uri(BaseUri, Uri),
   if Str2 == [] ->
         ?bool(true);
      true ->
         ColVal = xqerl_coll:parse(Coll),
         VBin = xqerl_coll:as_bin_list(Str1, ColVal),
         SBin = xqerl_coll:as_bin_list(Str2, ColVal),
         if SBin == <<>> ->
               ?bool(true);
            VBin == <<>> andalso SBin =/= <<>> ->
               ?bool(false);
            true ->
               L = size(SBin),
               case VBin of
                  SBin ->
                     ?bool(true);
                  <<SBin:L/binary,_/binary>> ->
                     ?bool(true);
                  _ ->
                     ?bool(false)
               end
         end
   end.

%% This function returns the value of the static base URI property from the 
%% static context. 
'static-base-uri'(#{'base-uri' := B}) -> B.

%% Returns the value of $arg represented as an xs:string. 
'string'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'string'(Ctx, Ci).

'string'(_Ctx,[]) -> ?str(""); 
'string'(_Ctx,#xqFunction{}) -> ?err('FOTY0014');
'string'(_Ctx,Fx) when is_function(Fx) -> ?err('FOTY0014');
'string'(_Ctx,Fx) when is_map(Fx) -> ?err('FOTY0014');
'string'(_Ctx,#array{}) -> ?err('FOTY0014');
'string'(_Ctx,#xqAtomicValue{} = Av) ->
   xqerl_types:cast_as(Av, 'xs:string');
'string'(_Ctx,Node) when ?noderecs(Node) ->
   Atomized = xqerl_node:atomize_nodes(Node),
   xqerl_types:cast_as(Atomized, 'xs:string');
'string'(_Ctx,Arg1) -> 
   xqerl_types:cast_as(Arg1, 'xs:string').

%% Returns a string created by concatenating the items in a sequence, 
%% with a defined separator between adjacent items. 
'string-join'(_Ctx,Arg1) ->
   'string-join'(_Ctx,Arg1, ?str("")).

'string-join'(_,[],_) -> ?str("");
'string-join'(_Ctx,Arg1,Arg2) ->
   NewArg1 = ?seq:to_list(Arg1),
   Sep = xqerl_types:value(xqerl_types:cast_as(Arg2, 'xs:string')),
   'string-join1'(_Ctx,NewArg1,Sep).

'string-join1'(_Ctx,[H|Arg1],Sep) ->
   Hd = xqerl_types:value(xqerl_types:cast_as(H, 'xs:string')),
   Tl = lists:map(fun(I) ->                        
               xqerl_types:value(xqerl_types:cast_as(I, 'xs:string'))
              end, Arg1),
   Tl1 = lists:concat([Sep ++ A || A <- Tl]),
   Ct = Hd ++ Tl1,
   ?str(Ct).

%% Returns the number of characters in a string. 
'string-length'(Ctx) -> 
   Val = xqerl_context:get_context_item(Ctx),
   'string-length'(Ctx,Val).

'string-length'(_Ctx,[]) ->
   ?atint(0);
'string-length'(_Ctx,[Arg1]) ->
   'string-length'(_Ctx,Arg1);
'string-length'(_Ctx,Arg1) when is_list(Arg1) ->
   ?err('XPTY0004');
'string-length'(_Ctx,Arg1) ->
   L = erlang:length(xqerl_types:string_value(Arg1)),
   %L = string:length(xqerl_types:string_value(Arg1)),
   ?atint(L).

%% Returns the sequence of codepoints that constitute an xs:string value. 
'string-to-codepoints'(_Ctx,Arg1) -> 
   Str = string_value(Arg1),
   List = lists:map(fun(C) ->
                          #xqAtomicValue{type = 'xs:integer', value = C}
                    end, Str),
   List.

%% Returns the contiguous sequence of items in the value of $sourceSeq 
%% beginning at the position indicated by the value of $startingLoc and 
%% continuing for the number of items indicated by the value of $length. 
'subsequence'(_Ctx,SourceSeq,StartingLoc) -> 
   VStart = xqerl_types:value(StartingLoc),
   if VStart =:= neg_infinity ->
         SourceSeq;
      VStart < 1 ->
         SourceSeq;
      true ->
         Len = ?seq:size(SourceSeq),
         'subsequence'(_Ctx,SourceSeq,StartingLoc,Len)
   end.
'subsequence'(_Ctx,SourceSeq,StartingLoc,Length) -> 
   VLen = xqerl_types:value(Length),
   VStart = xqerl_types:value(StartingLoc),
   if VLen =:= infinity andalso VStart =:= neg_infinity;
      VLen =:= neg_infinity;
      VLen =:= nan;
      VStart =:= infinity;
      VStart =:= neg_infinity;
      VStart =:= nan ->
         [];
      true ->
         Size = ?seq:size(SourceSeq),
         Len = if VLen =:= infinity ->
                     Size;
                  true ->
                     erlang:round(VLen)
               end,
         Start = erlang:round(VStart),
         {Start1,End} = if Start < 1 ->
                              {1, Len + Start - 1};
                           true ->
                              {Start, Len}
                        end,
         if Start1 > Size orelse End < 1 ->
               [];
            true ->
               lists:sublist(?seq:to_list(SourceSeq), Start1, End)
         end
   end.

%% Returns the portion of the value of $sourceString beginning at the position 
%% indicated by the value of $start and continuing for the number of characters 
%% indicated by the value of $length. 
'substring'(Ctx,SourceString,Start) ->
   'substring'(Ctx,SourceString,Start, []).

'substring'(_Ctx,SourceString,Start,Length) ->
   Val = xqerl_types:value(xqerl_types:cast_as(SourceString, 'xs:string')),
   VLen = xqerl_types:value(Length),
   VStart = xqerl_types:value(Start),
   if VLen =:= neg_infinity;
      VLen =:= nan;
      VStart =:= infinity;
      VStart =:= neg_infinity;
      VStart =:= nan;
      Val =:= [] ->
         ?str("");
      true ->
         Start2 = erlang:round(VStart)-1,
         Len = if VLen =:= [];
                  VLen =:= infinity -> 99; %% ??
                  true ->
                     erlang:round(VLen)
               end,
         {Start1,End} = if Start2 < 0 ->
                              {0, Len + Start2};
                           true ->
                              {Start2, Len}
                        end,
         if Start1 > length(Val);
            End < 1 ->
               ?str("");
            true ->
               Sub = if VLen =:= [];
                        VLen =:= infinity ->
                           string:slice(Val, Start1);
                        true ->
                           string:slice(Val, Start1, End)
                     end,
               ?str(Sub)
         end
   end.

%% Returns the part of $arg1 that follows the first occurrence of $arg2, 
%% taking collations into account. 
'substring-after'(#{'default-collation' := DefColl} = Ctx,Arg1,Arg2) -> 
   'substring-after'(Ctx,Arg1,Arg2,DefColl).

'substring-after'(#{'base-uri' := BaseUri0},Arg1,Arg2,Collation) ->
   Uri = xqerl_types:value(Collation),
   BaseUri = xqerl_types:value(BaseUri0),
   Coll = xqerl_lib:resolve_against_base_uri(BaseUri, Uri),

   StrVal = xqerl_types:string_value(Arg1),
   SplVal = xqerl_types:string_value(Arg2),
   if StrVal =:= [] ->
         ?str("");
      SplVal =:= [] ->
         ?str(StrVal);
      true ->
         ColVal = xqerl_coll:parse(Coll),
         Str3 = xqerl_coll:split(StrVal,SplVal,ColVal),
         case Str3 of
            [_] ->
               ?str("");
            [_,A] ->
               ?str(A)
         end
   end.
   
%% Returns the part of $arg1 that precedes the first occurrence of $arg2, 
%% taking collations into account. 
'substring-before'(#{'default-collation' := DefColl} = Ctx,Arg1,Arg2) -> 
   'substring-before'(Ctx,Arg1,Arg2,DefColl).
   
'substring-before'(#{'base-uri' := BaseUri0},Arg1,Arg2,Collation) ->
   Uri = xqerl_types:value(Collation),
   BaseUri = xqerl_types:value(BaseUri0),
   Coll = xqerl_lib:resolve_against_base_uri(BaseUri, Uri),

   StrVal = xqerl_types:string_value(Arg1),
   SplVal = xqerl_types:string_value(Arg2),
   ColVal = xqerl_coll:parse(Coll),
   Str3 = xqerl_coll:split(StrVal,SplVal,ColVal),
   case Str3 of
      [_] ->
         ?str("");
      [S,_] ->
         ?str(S)
   end.

%% Returns a value obtained by adding together the values in $arg. 
'sum'(_Ctx,[]) ->
   ?atint(0);
'sum'(Ctx,Arg1) ->
   'sum'(Ctx,Arg1,?atint(0)).

'sum'(_,[],Arg2) -> Arg2;
'sum'(_,Arg1,_) -> 
   {Seq,SeqType} = compare_convert_seq(?seq:to_list(Arg1), [], []),
   if ?numeric(SeqType) ->
         Sum1 = sum1(lists:reverse(Seq), []),
         xqerl_types:cast_as(Sum1, SeqType);
      true ->
         case xqerl_types:is_date_type(SeqType) of
            true ->
               Sum1 = sum1(lists:reverse(Seq), []),
               xqerl_types:cast_as(Sum1, SeqType);
            _ ->
               ?err('FORG0006')
         end
   end.

sum1([], Sum) ->
   Sum;
sum1([#xqAtomicValue{type = 'xs:double', value = nan} = H|_], _) ->
   H;
sum1([#xqAtomicValue{type = 'xs:float', value = nan} = H|_], _) ->
   H;
sum1([H|T], []) ->
   sum1(T, H);
sum1([H|T], Sum) ->
   case catch xqerl_operators:add(Sum, H) of
      {'EXIT',_} ->
         ?err('FOAR0002');
      NewSum ->
         sum1(T, NewSum)
   end.

%% Returns all but the first item in a sequence. 
'tail'(_Ctx,Arg1) -> 
   ?seq:tail(Arg1).

%% Returns the timezone component of an xs:date. 
'timezone-from-date'(_Ctx,[]) -> [];
'timezone-from-date'(_Ctx,Dt) ->
   #xsDateTime{offset = OS} = xqerl_types:value(Dt),
   if OS =:= [] -> [];
      true ->
         Str = xqerl_datetime:to_string(OS,'xs:dayTimeDuration'),
         xqerl_types:cast_as(?str(Str),'xs:dayTimeDuration')
   end.

%% Returns the timezone component of an xs:dateTime. 
'timezone-from-dateTime'(Ctx,Dt) -> 'timezone-from-date'(Ctx,Dt).

%% Returns the timezone component of an xs:time. 
'timezone-from-time'(Ctx,Dt) ->  'timezone-from-date'(Ctx,Dt). 

%% Returns a sequence of strings constructed by splitting the input wherever a 
%% separator is found; the separator is any substring that matches a given 
%% regular expression. 
'tokenize'(Ctx,Input) -> 
   Str = xqerl_types:cast_as(Input, 'xs:string'),
   Input1 = string_value(Str),
   if Input1 == [] ->
         [];
      true ->
         Stripped = string:trim(Input1),
         'tokenize'(Ctx,?str(Stripped),?str("(\\s)+"))
%%          MP = {re_pattern,1,1,1,
%%              <<69,82,67,80,96,0,0,0,32,8,64,36,1,8,0,0,255,255,255,255,255,255,255,255,0,0,0,0,0,
%%                0,1,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,131,0,28,133,0,
%%                7,0,1,29,9,119,0,5,29,10,119,0,5,29,13,119,0,5,29,32,121,0,22,120,0,28,0>>},
%%          List = re:split(Stripped, MP, [group, {return,list}]),
%%          Out = lists:map(fun(S) -> 
%%                                  H = lists:flatten(hd(S)),
%%                                  #xqAtomicValue{type = 'xs:string', value = H}
%%                              end, List),
%%          %?dbg(?LINE,Out),
%%          Out
   end.
   
'tokenize'(_Ctx,Input,Pattern) ->
   'tokenize'(_Ctx,Input,Pattern,[]).
'tokenize'(_Ctx,Input,Pattern0,Flags0) -> 
   Pattern = string_value(Pattern0),
   Flags = string_value(Flags0),
   {Zero,MP} = xqerl_regex:regex_comp(Pattern,Flags),
   if Zero ->
         ?err('FORX0003');
      true ->
         ok
   end,
   Str = xqerl_types:cast_as(Input, 'xs:string'),
   Input1 = string_value(Str),
   if Input1 == "" -> [];
      true ->
         List = re:split(Input1, MP, [group, {return,list}]),
         lists:map(fun(S) ->
                         H = lists:flatten(hd(S)),
                         #xqAtomicValue{type = 'xs:string', value = H}
                   end, List)
   end.
   
%% Provides an execution trace intended to be used in debugging queries. 
'trace'(_Ctx,Arg1) -> 
   io:format("~p~n", [Arg1]),
   Arg1.
'trace'(_Ctx,Arg1,Arg2) ->
   AtStr = xqerl_xs:xs_string([], Arg2),
   Str = xqerl_types:value(AtStr) , 
   io:format("~s:~p~n", [Str,Arg1]),
   Arg1.

-dialyzer({[no_return], [transform/2]}).
%% Invokes a transformation using a dynamically-loaded XSLT stylesheet. 
'transform'(_Ctx,_Arg1) -> ?err('FOXT0004').

%% Returns the value of $arg modified by replacing or removing 
%% individual characters. 
'translate'(_Ctx,Arg,MapString,TransString) -> 
   ArgV = xqerl_types:value(Arg),
   if ArgV =:= [] ->
         ?str("");
      true ->
         MapStringV = xqerl_types:value(MapString),
         if MapStringV =:= [] ->
               Arg;
            true ->
               TransStringV = xqerl_types:value(TransString),
               Map = zip_map_trans(MapStringV,TransStringV),
               NewStr = lists:foldl(fun(C, St) ->
                                        case lists:keyfind(C, 1, Map) of
                                           {_,[]} ->
                                              St;
                                           {_,P} ->
                                              [P|St];
                                           false ->
                                              [C|St]
                                        end
                                  end, [], ArgV),
               ?str(lists:reverse(NewStr))
         end
   end.

zip_map_trans([],_) ->
   [];
zip_map_trans([H|T],[]) ->
   [{H,[]}|zip_map_trans(T,[])];
zip_map_trans([H|T],[TH|TT]) ->
   [{H,TH}|zip_map_trans(T,TT)].

%% Returns the xs:boolean value true. 
'true'(_) ->
   ?bool(true).

%% Returns the items of $sourceSeq in an implementation-dependent order. 
'unordered'(_Ctx,Arg1) ->
   Arg1.
% set order in the context, do expr, set context back DONE IN-LINE

'unparsed-text'(Ctx,Uri) -> 
   'unparsed-text'(Ctx,Uri,?str("")).
'unparsed-text'(_,_Uri0,[]) -> ?err('XPTY0004');
'unparsed-text'(#{'base-uri' := BaseUri0},Uri0,Encoding) -> 
   try
      Uri = xqerl_types:value(Uri0),
      BaseUri = xqerl_types:value(BaseUri0),
      ResVal = xqerl_lib:resolve_against_base_uri(BaseUri, Uri),
      Enc = xqerl_types:string_value(Encoding),
      {ok,Binary} = xqerl_ds:lookup_res(ResVal),
      if Encoding =:= [] ->
            ?str( valid_cps(xqerl_file:bin_to_utf8(Binary)));
         true ->
            ?str( valid_cps(xqerl_file:bin_to_utf8(Binary, Enc)))
      end
   catch 
      ?ERROR_MATCH("FORG0002") -> ?err('FOUT1170');
      ?ERROR_MATCH("XQST0046") -> ?err('FOUT1170');
      _:#xqError{} = E -> exit(E);
      _:_ -> ?err('FOUT1170')
   end.

valid_cps([]) -> [];
valid_cps([H|_T]) when H =:= 16#FFFE;
                       H =:= 16#FFFF;
                       H =:= 0 ->
  ?err('FOUT1190');
valid_cps([H|T]) ->
  [H|valid_cps(T)].

%% Because errors in evaluating the fn:unparsed-text function are 
%% non-recoverable, these two functions are provided to allow an application 
%% to determine whether a call with particular arguments would succeed. 
'unparsed-text-available'(Ctx,Arg1) -> 
   'unparsed-text-available'(Ctx,Arg1,?str("")).
'unparsed-text-available'(Ctx,Arg1,Arg2) -> 
   try
      _ = 'unparsed-text'(Ctx,Arg1,Arg2),
      ?bool(true)
   catch
      ?ERROR_MATCH("XPTY0004") -> ?err('XPTY0004');
      _:_ -> ?bool(false)
   end.

%% The fn:unparsed-text-lines function reads an external resource 
%% (for example, a file) and returns its contents as a sequence of strings, 
%% one for each line of text in the string representation of the resource. 
'unparsed-text-lines'(Ctx,Arg1) -> 
   'unparsed-text-lines'(Ctx,Arg1,?str("")).
'unparsed-text-lines'(Ctx,Arg1,Arg2) ->
   #xqAtomicValue{value = Str} = 'unparsed-text'(Ctx,Arg1,Arg2),
   to_lines(Str, [], []).

to_lines([],[],Acc) ->
   lists:reverse(Acc);
to_lines([],Sub,Acc) ->
   S = ?str(lists:reverse(Sub)),
   lists:reverse([S|Acc]);
to_lines([$\r,$\n|Rest],Sub,Acc) ->
   S = ?str(lists:reverse(Sub)),
   to_lines(Rest,[],[S|Acc]);
to_lines([$\r|Rest],Sub,Acc) ->
   S = ?str(lists:reverse(Sub)),
   to_lines(Rest,[],[S|Acc]);
to_lines([$\n|Rest],Sub,Acc) ->
   S = ?str(lists:reverse(Sub)),
   to_lines(Rest,[],[S|Acc]);
to_lines([C|Rest],Sub,Acc) ->
   to_lines(Rest,[C|Sub],Acc).

%% Converts a string to upper case. 
'upper-case'(_Ctx,[]) -> ?str("");
'upper-case'(Ctx,[Arg1]) -> 'upper-case'(Ctx,Arg1);
'upper-case'(_,#xqNode{} = Arg1) ->
   Str = string_value(Arg1),
   Upp = string:uppercase(Str),
   #xqAtomicValue{type = 'xs:string', value = Upp};
'upper-case'(_,#xqAtomicValue{type = Type} = Arg1) 
   when ?string(Type);
        Type =:= 'xs:anyURI' ->
   Str = string_value(Arg1),
   Upp = string:uppercase(Str),
   #xqAtomicValue{type = 'xs:string', value = Upp};
'upper-case'(_,_) -> ?err('XPTY0004').   

%% Returns a sequence of xs:anyURI values representing the URIs in a 
%% URI collection. 
'uri-collection'(_Ctx) -> exit({not_implemented,?LINE}).
'uri-collection'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).

%% Converts an XML tree, whose format corresponds to the XML representation 
%% of JSON defined in this specification, into a string conforming to the 
%% JSON grammar. 
'xml-to-json'(Ctx,Arg1) -> 
   'xml-to-json'(Ctx,Arg1,#{}).
'xml-to-json'(_Ctx,[],_Arg2) -> [];
'xml-to-json'(Ctx,[V],Arg2) -> 'xml-to-json'(Ctx,V,Arg2);
'xml-to-json'(Ctx,#xqNode{} = XML,Arg2) -> 
   Options = map_options_to_list(Ctx, Arg2),
   xqerl_json:xml_to_string(XML, Options);
'xml-to-json'(_Ctx,_Arg1,_Arg2) -> 
   ?err('XPTY0004').

%% Returns the year component of an xs:date. 
'year-from-date'(Ctx, Arg1) -> 
   'years-from-duration'(Ctx, Arg1).

%% Returns the year component of an xs:dateTime. 
'year-from-dateTime'(Ctx, Arg1) -> 
   'years-from-duration'(Ctx, Arg1).

%% Returns the number of years in a duration. 
'years-from-duration'(_Ctx, []) -> [];
'years-from-duration'(_Ctx, [Arg1]) ->
   'years-from-duration'(_Ctx, Arg1);
'years-from-duration'(_Ctx, #xqAtomicValue{value = #xsDateTime{sign = '-', 
                                                               year = Yr}}) ->
   ?atint(-Yr);
'years-from-duration'(_Ctx, #xqAtomicValue{value = #xsDateTime{year = Yr}}) ->
   ?atint(Yr).

%% Returns $arg if it contains zero or one items. Otherwise, raises an error. 
'zero-or-one'(_Ctx,[]) -> [];
'zero-or-one'(_Ctx,[L]) -> L;
'zero-or-one'(_Ctx,Arg1) when not is_list(Arg1) -> Arg1;
'zero-or-one'(_,_) ->
   ?err('FORG0003').

%% The external effects of fn:put are implementation-defined, since they occur 
%% outside the domain of XQuery. 
%% The intent is that, if fn:put is invoked on a document node and no error is 
%% raised, a subsequent 
%% query can access the stored document by invoking fn:doc with the same URI. 
'put'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

