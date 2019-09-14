%-file("http://www.w3.org/2005/xpath-functions", 1).
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

%% @doc Implementation of the "http://www.w3.org/2005/xpath-functions" namespace.
%% @NOTE Might need to be broken apart. Need a concept for mapping functions in 
%%       one namespace across different erlang modules. 
%%       The functions attribute compiled in sucks!!
 
-module(xqerl_fn).
-compile(inline_list_funcs).

-define(bool(Val), Val).
-define(atint(Val), Val).
-define(dbl(Val), Val).
-define(str(Val), Val).
-define(dec(Val), #xqAtomicValue{type = 'xs:decimal', value = Val}).
-define(atm(Typ,Val), #xqAtomicValue{type = Typ, value = Val}).

-define(A(T),<<T>>).
-define(NS, ?A("http://www.w3.org/2005/xpath-functions")).
-define(PX, <<"fn">>).
-define(ERROR_MATCH(Err), 
        _:#xqError{name = #xqAtomicValue{value= #qname{local_name = Err}}}).

-define(noderecs(N), (is_map(N) andalso is_map_key(nk, N));
                     is_record(N, xqElementNode);
                     is_record(N, xqDocumentNode);
                     is_record(N, xqAttributeNode);
                     is_record(N, xqCommentNode);
                     is_record(N, xqTextNode);
                     is_record(N, xqProcessingInstructionNode);
                     is_record(N, xqNamespaceNode)).

-include_lib("../../xqerl/include/xqerl.hrl").
-'module-namespace'({?NS, ?PX}).
-variables([]).
-functions([
{{qname, ?NS, ?PX,?A("abs")},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'abs', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, ?NS, ?PX,?A("adjust-dateTime-to-timezone")},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'adjust-dateTime-to-timezone', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, ?PX,?A("adjust-dateTime-to-timezone")},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'adjust-dateTime-to-timezone', 3}, 2,[{xqSeqType, 'xs:dateTime', zero_or_one},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
{{qname, ?NS, ?PX,?A("adjust-date-to-timezone")},{xqSeqType, 'xs:date', zero_or_one}, [], 
 {'adjust-date-to-timezone', 2}, 1, [{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, ?NS, ?PX,?A("adjust-date-to-timezone")},{xqSeqType, 'xs:date', zero_or_one}, [], 
 {'adjust-date-to-timezone', 3},2,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
{{qname, ?NS, ?PX,?A("adjust-time-to-timezone")},{xqSeqType, 'xs:time', zero_or_one}, [], 
 {'adjust-time-to-timezone', 2},1, [{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, ?PX,?A("adjust-time-to-timezone")},{xqSeqType, 'xs:time', zero_or_one}, [], 
 {'adjust-time-to-timezone', 3},2,[{xqSeqType, 'xs:time', zero_or_one},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
{{qname, ?NS, ?PX,?A("analyze-string")},{xqSeqType, {xqKindTest,element,undefined,undefined}, one}, [], 
 {'analyze-string', 3},2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("analyze-string")},{xqSeqType, {xqKindTest,element,undefined,undefined}, one}, [], 
 {'analyze-string', 4},3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("apply")},{xqSeqType, item, zero_or_many}, [], 
 {'apply_', 3}, 2,[{xqSeqType,{xqFunTest,function,[],undefined,any,any}, one},{xqSeqType, {xqFunTest,array,[],undefined,any,any}, one}]},
{{qname, ?NS, ?PX,?A("available-environment-variables")},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'available-environment-variables', 1}, 0, []},
{{qname, ?NS, ?PX,?A("avg")},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'avg', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, ?PX,?A("base-uri")},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'base-uri', 1}, 0, []},
{{qname, ?NS, ?PX,?A("base-uri")},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'base-uri', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("boolean")},{xqSeqType, 'xs:boolean', one}, [], 
 {'boolean', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("ceiling")},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'ceiling', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, ?NS, ?PX,?A("codepoint-equal")},{xqSeqType, 'xs:boolean', zero_or_one}, [],
 {'codepoint-equal', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("codepoints-to-string")},{xqSeqType, 'xs:string', one}, [], 
 {'codepoints-to-string', 2}, 1,[{xqSeqType, 'xs:integer', zero_or_many}]},
{{qname, ?NS, ?PX,?A("collation-key")},{xqSeqType, 'xs:base64Binary', one}, [], 
 {'collation-key', 2},1, [{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("collation-key")},{xqSeqType, 'xs:base64Binary', one}, [], 
 {'collation-key', 3},2,[{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("collection")},{xqSeqType, item, zero_or_many}, [], 
 {'collection', 1}, 0, []},
{{qname, ?NS, ?PX,?A("collection")},{xqSeqType, item, zero_or_many}, [], 
 {'collection', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("compare")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'compare', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("compare")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'compare', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("concat")},{xqSeqType, 'xs:string', one}, [], 
 {'concat', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, ?PX,?A("contains")},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("contains")},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("contains-token")},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains-token', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("contains-token")},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains-token', 4}, 3,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("count")},{xqSeqType, 'xs:integer', one}, [], 
 {'count', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("current-date")},{xqSeqType, 'xs:date', one}, [], 
 {'current-date', 1}, 0, []},
{{qname, ?NS, ?PX,?A("current-dateTime")},{xqSeqType, 'xs:dateTime', one}, [], 
 {'current-dateTime', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("current-time")},{xqSeqType, 'xs:time', one}, [], 
 {'current-time', 1}, 0, []},
{{qname, ?NS, ?PX,?A("data")},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'data', 1}, 0, []},
{{qname, ?NS, ?PX,?A("data")},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'data', 2}, 1, [{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("dateTime")},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'dateTime', 3}, 2,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, ?PX,?A("day-from-date")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'day-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, ?NS, ?PX,?A("day-from-dateTime")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'day-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, ?PX,?A("days-from-duration")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'days-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, ?PX,?A("deep-equal")},{xqSeqType, 'xs:boolean', one}, [], 
 {'deep-equal', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("deep-equal")},{xqSeqType, 'xs:boolean', one}, [], 
 {'deep-equal', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("default-collation")},{xqSeqType, 'xs:string', one}, [], 
 {'default-collation', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("default-language")},{xqSeqType, 'xs:language', one}, [], 
 {'default-language', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("distinct-values")},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'distinct-values', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, ?PX,?A("distinct-values")},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'distinct-values', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("doc")},{xqSeqType, {xqKindTest,'document-node',undefined,undefined}, zero_or_one}, [],
 {'doc', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("doc-available")},{xqSeqType, 'xs:boolean', one}, [], 
 {'doc-available', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("document-uri")},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'document-uri', 1}, 0, []},
{{qname, ?NS, ?PX,?A("document-uri")},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'document-uri', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("element-with-id")},{xqSeqType, {xqKindTest,element,undefined,undefined}, zero_or_many}, [],
 {'element-with-id', 2}, 1,[{xqSeqType, 'xs:string', zero_or_many}]},
{{qname, ?NS, ?PX,?A("element-with-id")},{xqSeqType, {xqKindTest,element,undefined,undefined}, zero_or_many}, [],
 {'element-with-id', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, {xqKindTest,node,undefined,undefined}, one}]},
{{qname, ?NS, ?PX,?A("empty")},{xqSeqType, 'xs:boolean', one}, [], 
 {'empty', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("encode-for-uri")},{xqSeqType, 'xs:string', one}, [], 
 {'encode-for-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("ends-with")},{xqSeqType, 'xs:boolean', one}, [], 
 {'ends-with', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("ends-with")},{xqSeqType, 'xs:boolean', one}, [], 
 {'ends-with', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("environment-variable")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'environment-variable', 2}, 1, [{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("error")},{xqSeqType, 'empty-sequence', none}, [], 
 {'error', 1},0, []},
{{qname, ?NS, ?PX,?A("error")},{xqSeqType, 'empty-sequence', none}, [], 
 {'error', 2},1, [{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, ?NS, ?PX,?A("error")},{xqSeqType, 'empty-sequence', none}, [], 
 {'error', 3},2,[{xqSeqType, 'xs:QName', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("error")},{xqSeqType, 'empty-sequence', none}, [], 
 {'error', 4},3,[{xqSeqType, 'xs:QName', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("escape-html-uri")},{xqSeqType, 'xs:string', one}, [], 
 {'escape-html-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("exactly-one")},{xqSeqType, item, one}, [], 
 {'exactly-one', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("exists")},{xqSeqType, 'xs:boolean', one}, [], 
 {'exists', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("false")},{xqSeqType, 'xs:boolean', one}, [], 
 {'false', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("filter")},{xqSeqType, item, zero_or_many}, [], 
 {'filter', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, ?PX,?A("filter")},[{xqSeqType, item, one}],{xqSeqType, 'xs:boolean', one}},one}]},
{{qname, ?NS, ?PX,?A("floor")},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'floor', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, ?NS, ?PX,?A("fold-left")},{xqSeqType, item, zero_or_many}, [], 
 {'fold-left', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, ?PX,?A("fold-left")},[{xqSeqType, item, zero_or_many},{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, ?NS, ?PX,?A("fold-right")},{xqSeqType, item, zero_or_many}, [], 
 {'fold-right', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, ?PX,?A("fold-right")},[{xqSeqType, item, zero_or_many},{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, ?NS, ?PX,?A("for-each")},{xqSeqType, item, zero_or_many}, [], 
 {'for-each', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, ?PX,?A("for-each")},[{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},zero_or_many}]},
{{qname, ?NS, ?PX,?A("for-each-pair")},{xqSeqType, item, zero_or_many}, [], 
 {'for-each-pair', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, ?PX,?A("for-each-pair")},[{xqSeqType, item, one},{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, ?NS, ?PX,?A("format-date")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-date', 3}, 2,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("format-date")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-date', 6}, 5,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("format-dateTime")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-dateTime', 3}, 2,[{xqSeqType, 'xs:dateTime', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("format-dateTime")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-dateTime', 6}, 5,[{xqSeqType, 'xs:dateTime', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("format-integer")},{xqSeqType, 'xs:string', one}, [], 
 {'format-integer', 3}, 2,[{xqSeqType, 'xs:integer', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("format-integer")},{xqSeqType, 'xs:string', one}, [], 
 {'format-integer', 4}, 3,[{xqSeqType, 'xs:integer', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("format-number")},{xqSeqType, 'xs:string', one}, [], 
 {'format-number', 3}, 2,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("format-number")},{xqSeqType, 'xs:string', one}, [], 
 {'format-number', 4}, 3,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("format-time")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-time', 3}, 2,[{xqSeqType, 'xs:time', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("format-time")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-time', 6}, 5,[{xqSeqType, 'xs:time', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("function-arity")},{xqSeqType, 'xs:integer', one}, [], 
 {'function-arity', 2}, 1,[{xqSeqType,{xqFunTest,function,[],undefined,any,any}, one}]},
{{qname, ?NS, ?PX,?A("function-lookup")},{xqSeqType,{xqFunTest,function,[],undefined,any,any},zero_or_one},[], 
 {'function-lookup', 3}, 2,[{xqSeqType, 'xs:QName', one},{xqSeqType, 'xs:integer', one}]},
{{qname, ?NS, ?PX,?A("function-name")},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'function-name', 2}, 1,[{xqSeqType,{xqFunTest,function,[],undefined,any,any}, one}]},
{{qname, ?NS, ?PX,?A("generate-id")},{xqSeqType, 'xs:string', one}, [], 
 {'generate-id', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("generate-id")},{xqSeqType, 'xs:string', one}, [], 
 {'generate-id', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("has-children")},{xqSeqType, 'xs:boolean', one}, [], 
 {'has-children', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("has-children")},{xqSeqType, 'xs:boolean', one}, [], 
 {'has-children', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("head")},{xqSeqType, item, zero_or_one}, [], 
 {'head', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("hours-from-dateTime")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'hours-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, ?PX,?A("hours-from-duration")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'hours-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, ?PX,?A("hours-from-time")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'hours-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, ?PX,?A("id")},{xqSeqType, {xqKindTest,element,undefined,undefined}, zero_or_many}, [],
 {'id', 2}, 1,[{xqSeqType, 'xs:string', zero_or_many}]},
{{qname, ?NS, ?PX,?A("id")},{xqSeqType, {xqKindTest,element,undefined,undefined}, zero_or_many}, [],
 {'id', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, {xqKindTest,node,undefined,undefined}, one}]},
{{qname, ?NS, ?PX,?A("idref")},{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_many}, [],
 {'idref', 2}, 1,[{xqSeqType, 'xs:string', zero_or_many}]},
{{qname, ?NS, ?PX,?A("idref")},{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_many}, [],
 {'idref', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, {xqKindTest,node,undefined,undefined}, one}]},
{{qname, ?NS, ?PX,?A("implicit-timezone")},{xqSeqType, 'xs:dayTimeDuration', one}, [],
 {'implicit-timezone', 1}, 0, []},
{{qname, ?NS, ?PX,?A("index-of")},{xqSeqType, 'xs:integer', zero_or_many}, [],
 {'index-of', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:anyAtomicType', one}]},
{{qname, ?NS, ?PX,?A("index-of")},{xqSeqType, 'xs:integer', zero_or_many}, [],
 {'index-of', 4}, 3,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:anyAtomicType', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("innermost")},{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_many}, [],
 {'innermost', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_many}]},
{{qname, ?NS, ?PX,?A("in-scope-prefixes")},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'in-scope-prefixes', 2}, 1,[{xqSeqType, {xqKindTest,element,undefined,undefined}, one}]},
{{qname, ?NS, ?PX,?A("insert-before")},{xqSeqType, item, zero_or_many}, [], 
 {'insert-before', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:integer', one},{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("iri-to-uri")},{xqSeqType, 'xs:string', one}, [], 
 {'iri-to-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("json-doc")},{xqSeqType, item, zero_or_one}, [], 
 {'json-doc', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("json-doc")},{xqSeqType, item, zero_or_one}, [], 
 {'json-doc', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, ?PX,?A("json-to-xml")},{xqSeqType, {xqKindTest,'document-node',undefined,undefined}, one}, [],
 {'json-to-xml', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("json-to-xml")},{xqSeqType, {xqKindTest,'document-node',undefined,undefined}, one}, [],
 {'json-to-xml', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, ?PX,?A("lang")},{xqSeqType, 'xs:boolean', one}, [], 
 {'lang', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("lang")},{xqSeqType, 'xs:boolean', one}, [], 
 {'lang', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqKindTest,node,undefined,undefined}, one}]},
{{qname, ?NS, ?PX,?A("last")},{xqSeqType, 'xs:integer', one}, [], 
 {'last', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("load-xquery-module")},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}, [], 
 {'load-xquery-module', 2}, 1,[{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("load-xquery-module")},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}, [], 
 {'load-xquery-module', 3}, 2,[{xqSeqType, 'xs:string', one},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, ?PX,?A("local-name")},{xqSeqType, 'xs:string', one}, [], 
 {'local-name', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("local-name")},{xqSeqType, 'xs:string', one}, [], 
 {'local-name', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("local-name-from-QName")},{xqSeqType, 'xs:NCName', zero_or_one}, [],
 {'local-name-from-QName', 2}, 1,[{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, ?NS, ?PX,?A("lower-case")},{xqSeqType, 'xs:string', one}, [], 
 {'lower-case', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("matches")},{xqSeqType, 'xs:boolean', one}, [], 
 {'matches', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("matches")},{xqSeqType, 'xs:boolean', one}, [], 
 {'matches', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("max")},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'max', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, ?PX,?A("max")},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'max', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("min")},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'min', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, ?PX,?A("min")},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'min', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("minutes-from-dateTime")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'minutes-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, ?PX,?A("minutes-from-duration")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'minutes-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, ?PX,?A("minutes-from-time")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'minutes-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, ?PX,?A("month-from-date")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'month-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, ?NS, ?PX,?A("month-from-dateTime")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'month-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, ?PX,?A("months-from-duration")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'months-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, ?PX,?A("name")},{xqSeqType, 'xs:string', one}, [], 
 {'name', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("name")},{xqSeqType, 'xs:string', one}, [], 
 {'name', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("namespace-uri")},{xqSeqType, 'xs:anyURI', one}, [], 
 {'namespace-uri', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("namespace-uri")},{xqSeqType, 'xs:anyURI', one}, [], 
 {'namespace-uri', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("namespace-uri-for-prefix")},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'namespace-uri-for-prefix', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqKindTest,element,undefined,undefined}, one}]},
{{qname, ?NS, ?PX,?A("namespace-uri-from-QName")},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'namespace-uri-from-QName', 2}, 1,[{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, ?NS, ?PX,?A("nilled")},{xqSeqType, 'xs:boolean', zero_or_one}, [],
 {'nilled', 1}, 0, []},
{{qname, ?NS, ?PX,?A("nilled")},{xqSeqType, 'xs:boolean', zero_or_one}, [],
 {'nilled', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("node-name")},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'node-name', 1}, 0, []},
{{qname, ?NS, ?PX,?A("node-name")},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'node-name', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("normalize-space")},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-space', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("normalize-space")},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-space', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("normalize-unicode")},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-unicode', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("normalize-unicode")},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-unicode', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("not")},{xqSeqType, 'xs:boolean', one}, [], 
 {'not', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("number")},{xqSeqType, 'xs:double', one}, [], 
 {'number', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("number")},{xqSeqType, 'xs:double', one}, [], 
 {'number', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
{{qname, ?NS, ?PX,?A("one-or-more")},{xqSeqType, item, one_or_many}, [], 
 {'one-or-more', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("outermost")},{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_many}, [],
 {'outermost', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_many}]},
{{qname, ?NS, ?PX,?A("parse-ietf-date")},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'parse-ietf-date', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("parse-json")},{xqSeqType, item, zero_or_one}, [], 
 {'parse-json', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("parse-json")},{xqSeqType, item, zero_or_one}, [], 
 {'parse-json', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, ?PX,?A("parse-xml")},{xqSeqType, {xqKindTest,'document-node',undefined,undefined}, one}, [],
 {'parse-xml', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("parse-xml-fragment")},{xqSeqType, {xqKindTest,'document-node',undefined,undefined}, zero_or_one}, [],
 {'parse-xml-fragment', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("path")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'path', 1}, 0, []},
{{qname, ?NS, ?PX,?A("path")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'path', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("position")},{xqSeqType, 'xs:integer', one}, [], 
 {'position', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("prefix-from-QName")},{xqSeqType, 'xs:NCName', zero_or_one}, [],
 {'prefix-from-QName', 2}, 1,[{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, ?NS, ?PX,?A("QName")},{xqSeqType, 'xs:QName', one}, [], 
 {'QName', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("random-number-generator")},{xqSeqType,{xqFunTest,map,[],undefined,[{xqSeqType, 'xs:string', one}],{xqSeqType, item, one}},one},[], 
 {'random-number-generator', 1}, 0, []},
{{qname, ?NS, ?PX,?A("random-number-generator")},{xqSeqType,{xqFunTest,map,[],undefined,[{xqSeqType, 'xs:string', one}],{xqSeqType, item, one}},one},[], 
 {'random-number-generator', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
{{qname, ?NS, ?PX,?A("remove")},{xqSeqType, item, zero_or_many}, [], 
 {'remove', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:integer', one}]},
{{qname, ?NS, ?PX,?A("replace")},{xqSeqType, 'xs:string', one}, [], 
 {'replace', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("replace")},{xqSeqType, 'xs:string', one}, [], 
 {'replace', 5}, 4,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("resolve-QName")},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'resolve-QName', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqKindTest,element,undefined,undefined}, one}]},
{{qname, ?NS, ?PX,?A("resolve-uri")},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'resolve-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("resolve-uri")},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'resolve-uri', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("reverse")},{xqSeqType, item, zero_or_many}, [], 
 {'reverse', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("root")},{xqSeqType, {xqKindTest,node,undefined,undefined}, one}, [], 
 {'root', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("root")},{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}, [],
 {'root', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("round")},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, ?NS, ?PX,?A("round")},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round', 3}, 2,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:integer', one}]},
{{qname, ?NS, ?PX,?A("round-half-to-even")},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round-half-to-even', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, ?NS, ?PX,?A("round-half-to-even")},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round-half-to-even', 3}, 2,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:integer', one}]},
{{qname, ?NS, ?PX,?A("seconds-from-dateTime")},{xqSeqType, 'xs:decimal', zero_or_one}, [],
 {'seconds-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, ?PX,?A("seconds-from-duration")},{xqSeqType, 'xs:decimal', zero_or_one}, [],
 {'seconds-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, ?PX,?A("seconds-from-time")},{xqSeqType, 'xs:decimal', zero_or_one}, [],
 {'seconds-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, ?PX,?A("serialize")},{xqSeqType, 'xs:string', one}, [], 
 {'serialize', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("serialize")},{xqSeqType, 'xs:string', one}, [], 
 {'serialize', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_one}]},
{{qname, ?NS, ?PX,?A("sort")},{xqSeqType, item, zero_or_many}, [], 
 {'sort', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("sort")},{xqSeqType, item, zero_or_many}, [], 
 {'sort', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("sort")},{xqSeqType, item, zero_or_many}, [], 
 {'sort', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType,{xqFunTest,function,[],{qname, ?NS, ?PX,?A("sort")},[{xqSeqType, item, one}],{xqSeqType, 'xs:anyAtomicType', zero_or_many}},one}]},
{{qname, ?NS, ?PX,?A("starts-with")},{xqSeqType, 'xs:boolean', one}, [], 
 {'starts-with', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("starts-with")},{xqSeqType, 'xs:boolean', one}, [], 
 {'starts-with', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("static-base-uri")},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'static-base-uri', 1}, 0, []},
{{qname, ?NS, ?PX,?A("string")},{xqSeqType, 'xs:string', one}, [], 
 {'string', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("string")},{xqSeqType, 'xs:string', one}, [], 
 {'string', 2}, 1,[{xqSeqType, item, zero_or_one}]},
{{qname, ?NS, ?PX,?A("string-join")},{xqSeqType, 'xs:string', one}, [], 
 {'string-join', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, ?PX,?A("string-join")},{xqSeqType, 'xs:string', one}, [], 
 {'string-join', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("string-length")},{xqSeqType, 'xs:integer', one}, [], 
 {'string-length', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("string-length")},{xqSeqType, 'xs:integer', one}, [], 
 {'string-length', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("string-to-codepoints")},{xqSeqType, 'xs:integer', zero_or_many}, [],
 {'string-to-codepoints', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("subsequence")},{xqSeqType, item, zero_or_many}, [], 
 {'subsequence', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:double', one}]},
{{qname, ?NS, ?PX,?A("subsequence")},{xqSeqType, item, zero_or_many}, [], 
 {'subsequence', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:double', one},{xqSeqType, 'xs:double', one}]},
{{qname, ?NS, ?PX,?A("substring")},{xqSeqType, 'xs:string', one}, [], 
 {'substring', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:double', one}]},
{{qname, ?NS, ?PX,?A("substring")},{xqSeqType, 'xs:string', one}, [], 
 {'substring', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:double', one},{xqSeqType, 'xs:double', one}]},
{{qname, ?NS, ?PX,?A("substring-after")},{xqSeqType, 'xs:string', one}, [], 
 {'substring-after', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("substring-after")},{xqSeqType, 'xs:string', one}, [], 
 {'substring-after', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("substring-before")},{xqSeqType, 'xs:string', one}, [], 
 {'substring-before', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("substring-before")},{xqSeqType, 'xs:string', one}, [], 
 {'substring-before', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("sum")},{xqSeqType, 'xs:anyAtomicType', one}, [],
 {'sum', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, ?NS, ?PX,?A("sum")},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'sum', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
{{qname, ?NS, ?PX,?A("tail")},{xqSeqType, item, zero_or_many}, [], 
 {'tail', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("timezone-from-date")},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
 {'timezone-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, ?NS, ?PX,?A("timezone-from-dateTime")},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
 {'timezone-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, ?PX,?A("timezone-from-time")},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
 {'timezone-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, ?NS, ?PX,?A("tokenize")},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'tokenize', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("tokenize")},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'tokenize', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("tokenize")},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'tokenize', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("trace")},{xqSeqType, item, zero_or_many}, [], 
 {'trace', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("trace")},{xqSeqType, item, zero_or_many}, [], 
 {'trace', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("transform")},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}, [], 
 {'transform', 2}, 1,[{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, ?PX,?A("translate")},{xqSeqType, 'xs:string', one}, [], 
 {'translate', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("true")},{xqSeqType, 'xs:boolean', one}, [], 
 {'true', 1}, 0,[]},
{{qname, ?NS, ?PX,?A("unordered")},{xqSeqType, item, zero_or_many}, [], 
 {'unordered', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("unparsed-text")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'unparsed-text', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("unparsed-text")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'unparsed-text', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("unparsed-text-available")},{xqSeqType, 'xs:boolean', one}, [], 
 {'unparsed-text-available', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("unparsed-text-available")},{xqSeqType, 'xs:boolean', one}, [], 
 {'unparsed-text-available', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("unparsed-text-lines")},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'unparsed-text-lines', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("unparsed-text-lines")},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'unparsed-text-lines', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("upper-case")},{xqSeqType, 'xs:string', one}, [], 
 {'upper-case', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("uri-collection")},{xqSeqType, 'xs:anyURI', zero_or_many}, [],
 {'uri-collection', 1}, 0, []},
{{qname, ?NS, ?PX,?A("uri-collection")},{xqSeqType, 'xs:anyURI', zero_or_many}, [],
 {'uri-collection', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, ?NS, ?PX,?A("xml-to-json")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'xml-to-json', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one}]},
{{qname, ?NS, ?PX,?A("xml-to-json")},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'xml-to-json', 3}, 2,[{xqSeqType, {xqKindTest,node,undefined,undefined}, zero_or_one},{xqSeqType, {xqFunTest,map,[],undefined,any,any}, one}]},
{{qname, ?NS, ?PX,?A("year-from-date")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'year-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, ?NS, ?PX,?A("year-from-dateTime")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'year-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, ?NS, ?PX,?A("years-from-duration")},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'years-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, ?NS, ?PX,?A("zero-or-one")},{xqSeqType, item, zero_or_one}, [], 
 {'zero-or-one', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX,?A("put")},{xqSeqType, 'empty-sequence', one},[{annotation,{qname, ?A("http://www.w3.org/2012/xquery"), <<>>,?A("updating")},[]}],
 {'put', 3}, 2,[{xqSeqType, item, one},{xqSeqType, 'xs:string', one}]},
{{qname, ?NS, ?PX,?A("put")},{xqSeqType, 'empty-sequence', one},[{annotation,{qname, ?A("http://www.w3.org/2012/xquery"), <<>>,?A("updating")},[]}],
 {'put', 4}, 3,[{xqSeqType, item, one},{xqSeqType, 'xs:string', one},{xqSeqType, item, zero_or_one}]}
]).

%% ====================================================================
%% API functions
%% ====================================================================
-export(['abs'/2]).
-export(['adjust-dateTime-to-timezone'/2,'adjust-dateTime-to-timezone'/3]).
-export(['adjust-date-to-timezone'/2,'adjust-date-to-timezone'/3]).
-export(['adjust-time-to-timezone'/2,'adjust-time-to-timezone'/3]).
-export(['analyze-string'/3,'analyze-string'/4]).
-export(['apply_'/3]).
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
-export(['put'/3,'put'/4]).


%% Returns the absolute value of $arg. 
%% fn:abs($arg as xs:numeric?) as xs:numeric?
-spec abs(xq_types:context(), 
          xq_types:xs_numeric() | []) -> xq_types:xs_numeric() | [].
'abs'(_Ctx,[]) -> [];
'abs'(Ctx,[Arg]) -> 'abs'(Ctx,Arg);
'abs'(_Ctx, nan = Arg) -> Arg;
'abs'(_Ctx,#xqAtomicValue{value = nan} = Arg) -> Arg;
'abs'(_Ctx, infinity = Arg) -> Arg;
'abs'(_Ctx,#xqAtomicValue{value = infinity} = Arg) -> Arg;
'abs'(_Ctx, neg_infinity) -> infinity;
'abs'(_Ctx,#xqAtomicValue{value = neg_infinity} = Arg) -> 
   Arg#xqAtomicValue{value = infinity};
'abs'(_Ctx, neg_zero) -> 0.0;
'abs'(_Ctx,#xqAtomicValue{value = neg_zero} = Arg) -> 
   Arg#xqAtomicValue{value = 0.0};
'abs'(_Ctx, Val) when is_number(Val) ->
   xqerl_numeric:abs_val(Val);
'abs'(_Ctx,#xqAtomicValue{type = Type, value = Val}) when ?xs_integer(Type) ->
   ?atint(xqerl_numeric:abs_val(Val));
'abs'(_Ctx,#xqAtomicValue{value = Val} = Arg) ->
   Arg#xqAtomicValue{value = xqerl_numeric:abs_val(Val)}.

%% Adjusts an xs:dateTime value to a specific timezone, 
%% or to no timezone at all. 
%% fn:adjust-dateTime-to-timezone($arg as xs:dateTime?) as xs:dateTime?
-spec 'adjust-dateTime-to-timezone'(
        xq_types:context(), 
        xq_types:xs_dateTime() | []) -> xq_types:xs_dateTime() | [].
'adjust-dateTime-to-timezone'(_Ctx,[]) -> [];
'adjust-dateTime-to-timezone'(#{tab := Tab} = Ctx,Arg1) ->
   'adjust-dateTime-to-timezone'(Ctx, Arg1, dummy_timezone(Tab)).

%% fn:adjust-dateTime-to-timezone(
%%    $arg        as xs:dateTime?,
%%    $timezone   as xs:dayTimeDuration?) as xs:dateTime?
-spec 'adjust-dateTime-to-timezone'(
        xq_types:context(), 
        xq_types:xs_dateTime() | [],
        xq_types:xs_dayTimeDuration() | []) -> xq_types:xs_dateTime() | [].
'adjust-dateTime-to-timezone'(_Ctx,[],_Arg2) -> [];
'adjust-dateTime-to-timezone'(_Ctx,Arg1,Arg2) ->
   xqerl_datetime:align_to_timezone(Arg1,Arg2).

%% Adjusts an xs:date value to a specific timezone, or to no timezone at all; 
%% the result is the date in the target timezone that contains the starting 
%% instant of the supplied date. 
%% fn:adjust-date-to-timezone($arg as xs:date?) as xs:date?
-spec 'adjust-date-to-timezone'(
        xq_types:context(), 
        xq_types:xs_date() | []) -> xq_types:xs_date() | [].
'adjust-date-to-timezone'(_Ctx,[]) -> [];
'adjust-date-to-timezone'(#{tab := Tab} = Ctx, Arg1) -> 
   'adjust-date-to-timezone'(Ctx, Arg1, dummy_timezone(Tab)).

%% fn:adjust-date-to-timezone(
%%    $arg        as xs:date?,
%%    $timezone   as xs:dayTimeDuration?) as xs:date?
-spec 'adjust-date-to-timezone'(
        xq_types:context(), 
        xq_types:xs_date() | [],
        xq_types:xs_dayTimeDuration() | []) -> xq_types:xs_date() | [].
'adjust-date-to-timezone'(_Ctx,[],_Arg2) -> [];
'adjust-date-to-timezone'(_,Arg1,Arg2) -> 
   xqerl_datetime:align_to_timezone(Arg1,Arg2).

%% Adjusts an xs:time value to a specific timezone, or to no timezone at all. 
%% fn:adjust-time-to-timezone($arg as xs:time?) as xs:time?
-spec 'adjust-time-to-timezone'(
        xq_types:context(), 
        xq_types:xs_time() | []) -> xq_types:xs_time() | [].
'adjust-time-to-timezone'(_Ctx,[]) -> [];
'adjust-time-to-timezone'(#{tab := Tab} = Ctx, Arg1) -> 
   'adjust-time-to-timezone'(Ctx, Arg1, dummy_timezone(Tab)).

%% fn:adjust-time-to-timezone(
%%    $arg        as xs:time?,
%%    $timezone   as xs:dayTimeDuration?) as xs:time?
-spec 'adjust-time-to-timezone'(
        xq_types:context(), 
        xq_types:xs_time() | [],
        xq_types:xs_dayTimeDuration() | []) -> xq_types:xs_time() | 
                                                 [] | 
                                                 xq_types:xs_error().
'adjust-time-to-timezone'(_Ctx,[],_Arg2) -> [];
'adjust-time-to-timezone'(_,Arg1,Arg2) -> 
   xqerl_datetime:align_to_timezone(Arg1,Arg2).

dummy_timezone(Tab) ->
   Itz = xqerl_context:get_implicit_timezone(Tab),
   Str = xqerl_datetime:to_string(Itz,'xs:dayTimeDuration'),
   #xqAtomicValue{type = 'xs:dayTimeDuration',
                  value = #xsDateTime{month = 0,
                                      day = 0,
                                      offset = Itz,
                                      string_value = Str}}.

%% Analyzes a string using a regular expression, returning an XML structure 
%% that identifies which parts of the input string matched or failed to match 
%% the regular expression, and in the case of matched substrings, which 
%% substrings matched each capturing group in the regular expression. 
%% fn:analyze-string(
%%    $input    as xs:string?,
%%    $pattern  as xs:string) as element(fn:analyze-string-result)
-spec 'analyze-string'(
        xq_types:context(), 
        xq_types:xs_string() | [],
        xq_types:xs_string()) -> xq_types:xml_element().
'analyze-string'(Ctx,Input,Pattern) ->
   'analyze-string'(Ctx,Input,Pattern,?str(<<>>)).

%% fn:analyze-string(
%%    $input    as xs:string?,
%%    $pattern  as xs:string,
%%    $flags    as xs:string) as element(fn:analyze-string-result)
-spec 'analyze-string'(
        xq_types:context(), 
        xq_types:xs_string() | [],
        xq_types:xs_string(),
        xq_types:xs_string()) -> xq_types:xml_element().
'analyze-string'(Ctx,Input,Pattern0,Flags) ->
   Pattern = xqerl_types:string_value(Pattern0),
   Flags1 = xqerl_types:string_value(Flags),
   case xs_regex:analyze(Pattern,Flags1) of
      {error, {invalid_flag, _}} ->
         ?dbg("invalid_flag",invalid_flag),
         ?err('FORX0001');
      {error, Err} ->
         ?dbg("Err",Err),
         ?err('FORX0002');
      {true, _, _} ->
         ?dbg("true",true),
         ?err('FORX0003');
       {_, MP, Grps} ->
         Input1 = string_value(Input),
         Content = case re:run(Input1, MP, [global]) of
                      nomatch ->
                         [];
                      {match,List} ->
                         List
                   end,
         Expr = if Input1 == <<>> -> [];
                   true ->
                      analyze_string1(Content, Input1, Grps)
                end,
         Frag = #xqElementNode{name = #qname{namespace = ?NS,
                                             prefix = ?PX,
                                             local_name = ?A("analyze-string-result")},
                               content = Expr},
         xqerl_node:new_fragment(Ctx, Frag)
   end.

analyze_string1([],String, _) -> % no matches
   #xqElementNode{name = #qname{namespace = ?NS,
                                prefix = ?PX,
                                local_name = ?A("non-match")},
                         content = ?str(String)};
analyze_string1(List, String, GrpTree) ->
   Fun = 
     fun([{Start, End}|Groups], LastPos) ->
            NextPos = Start + End,
           % leading non-match node
           Pre = if Start =/= LastPos ->
                       Slc = string:slice(String, LastPos, (Start - LastPos)),
                       [analyze_string1([], Slc, [])];
                    true ->
                       []
                 end,
           Matches = 
              case Groups of
                [] ->
                   S = string:slice(String, Start, End),
                   #xqTextNode{string_value = ?str(S)};
                _ ->
                   {Groups1, _} = fill_groups(GrpTree, Groups),
                   {Es,Ee} = hd(lists:reverse(Groups)),
                   GrpSize = Es+Ee,
                   Tail = if (Start + End) > GrpSize -> % non-grouped tail match 
                                Slc1 = string:slice(String,GrpSize,
                                                    Start + End - GrpSize),
                                [#xqTextNode{string_value = ?str(Slc1)}];
                             true ->
                                []
                          end,
                   GEls = get_groups(String,Groups1, Start), 
                   GEls ++ Tail
              end,
           Match = #xqElementNode{name = #qname{namespace = ?NS,
                                                prefix = ?PX,
                                                local_name = ?A("match")},
                                  content = Matches},
           if End == 0 ->
                 ?err('FORX0003'); % would match empty str
              true ->
                 {Pre++[Match], NextPos}
           end
     end,
   {Els, Pos} = lists:mapfoldl(Fun, 0, List),
   StrLen = string:length(String),
   Return = if Pos =/= StrLen andalso StrLen > 0 ->
                  % non-match at end
                  Els ++ [analyze_string1([],string:slice(String, Pos), [])];
               true ->
                  Els
            end,
   Return.

fill_groups(Gs, []) ->
    {[], Gs};
fill_groups([_|Gs], [{-1,0}|Ms]) ->
    fill_groups(Gs, Ms);
fill_groups([{group, P, S}|Gs], [M|Ms]) ->
    {Sub, RestMs} = fill_groups(S, Ms),
    {Next, RestMs1} = fill_groups(Gs, RestMs),
    {[{P, erlang:append_element(M, Sub)} | Next], RestMs1};
fill_groups([{group, P}|Gs], [M|Ms]) ->
    {G, Ms1} = fill_groups(Gs, Ms), 
    {[{P, M}|G], Ms1};
fill_groups([], Ms) ->
    {[], Ms}.

get_groups(String, [{P, {Start, Size, Subs}}|T], _Pos) ->
    Pos1 = Start + Size,
    SubGs = get_groups(String, Subs, Start),
    QGrp = #qname{namespace = ?NS,
                  prefix = ?PX,
                  local_name = ?A("group")},
    QNr = #qname{namespace = 'no-namespace', 
                 prefix = <<>>,
                 local_name = ?A("nr")},
    TGs = get_groups(String, T, Pos1),
    Elem = #xqElementNode{
                name = QGrp,
                content = 
                  [#xqAttributeNode{name = QNr,
                                    string_value = integer_to_binary(P)}
                  |SubGs]},
    [Elem|TGs];
get_groups(String, [{P, {Start, Size}}|T], Pos) ->
    Len = Start - Pos,
    Txt1 = #xqTextNode{string_value = string:slice(String, Start, Size)},
    Pos1 = Start + Size,
    QGrp = #qname{namespace = ?NS,
                  prefix = ?PX,
                  local_name = ?A("group")},
    QNr = #qname{namespace = 'no-namespace', 
                 prefix = <<>>,
                 local_name = ?A("nr")},
    TGs = get_groups(String, T, Pos1),
    Elem = #xqElementNode{
                name = QGrp,
                content = 
                  [#xqAttributeNode{name = QNr,
                                    string_value = integer_to_binary(P)}
                  , Txt1]},
    if
        Pos < Start ->
            Txt = #xqTextNode{string_value = string:slice(String, Pos, Len)},
            [Txt,Elem|TGs];
        true ->
            [Elem|TGs]
    end;
get_groups(_, [], _) ->
    [].

%% Makes a dynamic call on a function with an argument list supplied 
%% in the form of an array. 
%% fn:apply($function as function(*), $array as array(*)) as item()*
-spec 'apply_'(
        xq_types:context(), 
        xq_types:xq_function(),
        xq_types:xq_array()) -> xq_types:xq_item() | 
                                  list(xq_types:xq_item()) |
                                  xq_types:xs_error().
'apply_'(Ctx,Function,#array{data = Args}) when is_map(Function) ->
   xqerl_operators:lookup(Ctx, Function, Args);
'apply_'(Ctx,Function,#array{data = Args}) when is_function(Function) ->
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
'apply_'(Ctx,#xqFunction{body = Function},Args) when is_function(Function) -> 
   ?MODULE:apply_(Ctx,Function,Args).

%% Returns a list of environment variable names that are suitable for passing 
%% to fn:environment-variable, as a (possibly empty) sequence of strings. 
%% fn:available-environment-variables() as xs:string*
-spec 'available-environment-variables'(
        xq_types:context()) -> [].
'available-environment-variables'(_Ctx) -> 
   % NOT ALLOWING ACCESS TO ENVIRONMENT
   [].

%% Returns the average of the values in the input sequence $arg, that is, 
%% the sum of the values divided by the number of values. 
%% fn:avg($arg as xs:anyAtomicType*) as xs:anyAtomicType?
-spec 'avg'(xq_types:context(),
            [] | xq_types:sequence(xq_types:xs_anyAtomicType())
           ) -> [] | xq_types:xs_anyAtomicType().
'avg'(_Ctx,[]) -> [];
'avg'(_Ctx,Arg1) ->
   {Seq,SeqType} = compare_convert_seq(xqerl_seq3:to_list(Arg1), [], []),
   try
      Avg = avg1(Seq, [], 0),
      OutType = if ?xs_integer(SeqType) ->
                      'xs:decimal';
                   true ->
                      SeqType
                end,
      xqerl_types:cast_as(Avg,OutType)
   catch 
      ?ERROR_MATCH(?A("XPTY0004")) ->
         ?err('FORG0006');
      E -> throw(E)
   end.

avg1([], Sum, Count) ->
   xqerl_operators:divide(Sum, ?atint(Count));
avg1([nan = H|_], _, _) ->
   H;
avg1([#xqAtomicValue{type = 'xs:float', value = nan} = H|_], _, _) ->
   H;
avg1([H|T], [], 0) ->
   avg1(T, H, 1);
avg1([H|T], Sum, Count) ->
   avg1(T, xqerl_operators:add(H, Sum), Count + 1).

%% Returns the base URI of a node.
%% fn:base-uri() as xs:anyURI? 
-spec 'base-uri'(xq_types:context()) -> [] | xq_types:xs_anyURI().
'base-uri'(Ctx) -> 'base-uri'(Ctx,xqerl_context:get_context_item(Ctx)).

%% fn:base-uri($arg as node()?) as xs:anyURI?
-spec 'base-uri'(xq_types:context(),
                 [] | xq_types:xml_node()) -> [] | xq_types:xs_anyURI().
'base-uri'(_Ctx,[]) -> [];
'base-uri'(Ctx,[N]) -> 'base-uri'(Ctx,N);
'base-uri'(_Ctx,#{nk := _} = Node) ->
   case xqldb_xpath:base_uri(Node) of
      [] -> [];
      <<>> -> [];
      BaseUri ->
         try xqerl_xs:xs_anyURI([], ?str(BaseUri))
         catch _:_E ->
                 %?dbg("E",{BaseUri,E}),
                  []
         end      
         %?atm('xs:anyURI',BaseUri)
   end;
'base-uri'(_,_) -> ?err('XPTY0004').

%% Computes the effective boolean value of the sequence $arg. 
%% fn:boolean($arg as item()*) as xs:boolean
-spec boolean(_,xq_types:xq_item() | [xq_types:xq_item()]) -> 
         xq_types:xs_boolean().
'boolean'(_Ctx,Arg) ->
   ?bool(xqerl_operators:eff_bool_val(Arg)).

%% Rounds $arg upwards to a whole number. 
%% fn:ceiling($arg as xs:numeric?) as xs:numeric?
-spec ceiling(xq_types:context(), 
              [] | xq_types:xs_numeric()) -> [] | xq_types:xs_numeric().
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
%% fn:codepoint-equal(
%%    $comparand1  as xs:string?,
%%    $comparand2  as xs:string?) as xs:boolean?
-spec 'codepoint-equal'(xq_types:context(),
                        xq_types:xs_string(),
                        xq_types:xs_string()) -> xq_types:xs_boolean();
                       (xq_types:context(),[],[]) -> [];
                       (xq_types:context(),[],xq_types:xs_string()) -> [];
                       (xq_types:context(),xq_types:xs_string(),[]) -> [].
'codepoint-equal'(_Ctx,[],_Arg2) -> [];
'codepoint-equal'(_Ctx,_Arg1,[]) -> [];
'codepoint-equal'(_Ctx,[Arg1],Arg2) -> 'codepoint-equal'(_Ctx,Arg1,Arg2);
'codepoint-equal'(_Ctx,Arg1,[Arg2]) -> 'codepoint-equal'(_Ctx,Arg1,Arg2);
'codepoint-equal'(_Ctx, Str1, Str2) when is_binary(Str1), is_binary(Str2) -> 
      ?bool(Str1 == Str2);
'codepoint-equal'(_,_,_) -> ?err('XPTY0004').

%% Returns an xs:string whose characters have supplied codepoints. 
%% fn:codepoints-to-string($arg as xs:integer*) as xs:string
-spec 'codepoints-to-string'(xq_types:context(),
                             [] | xq_types:sequence(xq_types:xs_integer())) -> 
         xq_types:xs_string().
'codepoints-to-string'(_Ctx,[]) -> ?str(<<>>);
'codepoints-to-string'(_Ctx,Arg1) when not is_list(Arg1) ->
   'codepoints-to-string'(_Ctx,[Arg1]);
'codepoints-to-string'(_Ctx,Arg1) -> 
   ?str(cp_to_bin(Arg1)).

cp_to_bin(CpList) ->
   try 
      cp_to_bin(CpList,<<>>)
   catch
      _:_ -> ?err('FOCH0001')
  end.

cp_to_bin([C|_],_) 
   when is_integer(C), C < 9;
        C =:= 11;
        C =:= 12;
        is_integer(C), C > 13, C < 32;
        C =:= 65534;
        C =:= 65535 -> % codepoints that will pass utf8 but are not xml
   throw({error,bad_codepoint});
cp_to_bin([#xqAtomicValue{value = C}|_],_) 
   when is_integer(C), C < 9;
        C =:= 11;
        C =:= 12;
        is_integer(C), C > 13, C < 32;
        C =:= 65534;
        C =:= 65535 -> % codepoints that will pass utf8 but are not xml
   throw({error,bad_codepoint});
cp_to_bin([C|T],Acc) when is_integer(C) ->
   cp_to_bin(T,<<Acc/binary,C/utf8>>);
cp_to_bin([#xqAtomicValue{value = C}|T],Acc) when is_integer(C) ->
   cp_to_bin(T,<<Acc/binary,C/utf8>>);
cp_to_bin([#xqRange{min = C}|_],_) 
   when C < 9;
        C =:= 11;
        C =:= 12;
        C > 13, C < 32;
        C =:= 65534;
        C =:= 65535 ->
   throw({error,bad_codepoint});
cp_to_bin([#xqRange{min = Min,max = Max}|T],Acc) when Min < Max ->
   cp_to_bin([#xqRange{min = Min + 1,max = Max,cnt = 1}|T],<<Acc/binary,Min/utf8>>);
cp_to_bin([#xqRange{min = Min}|T],Acc) ->
   cp_to_bin(T,<<Acc/binary,Min/utf8>>);
cp_to_bin([],Acc) -> Acc.


%% Given a string value and a collation, generates an internal value called 
%% a collation key, with the property that the matching and ordering of 
%% collation keys reflects the matching and ordering of strings under the 
%% specified collation. 
%% fn:collation-key($key as xs:string) as xs:base64Binary
-spec 'collation-key'(xq_types:context(),
                      xq_types:xs_string()) -> 
         xq_types:xs_base64Binary().
'collation-key'(Ctx,Arg1) -> 
   Coll = xqerl_context:get_default_collation(Ctx),
   'collation-key'(Ctx,Arg1,Coll).

%% fn:collation-key(
%%    $key        as xs:string, 
%%    $collation  as xs:string) as xs:base64Binary
-spec 'collation-key'(xq_types:context(),
                      xq_types:xs_string(),
                      xq_types:xs_string() | atom() | function()) -> 
         xq_types:xs_base64Binary().
'collation-key'(_Ctx,Arg1,Collation) when is_function(Collation);
                                          is_atom(Collation) ->
   StrVal = xqerl_types:string_value(Arg1),
   Bin = xqerl_coll:sort_key(StrVal, Collation),
   ?atm('xs:base64Binary',Bin);
'collation-key'(Ctx,Arg1,Collation) -> 
   ColVal = xqerl_coll:parse(xqerl_types:string_value(Collation)),
   'collation-key'(Ctx,Arg1,ColVal).


%% Returns a sequence of items identified by a collection URI; or a default 
%% collection if no URI is supplied. 
%% fn:collection() as item()*
-spec 'collection'(xq_types:context()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'collection'(#{default_collection := DC} = Ctx) ->
   'collection'(Ctx, DC);
'collection'(_Ctx) -> ?err('FODC0002').

%% fn:collection($arg as xs:string?) as item()*
-spec 'collection'(xq_types:context(),
                   [] | xq_types:xs_string()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'collection'(_Ctx,[]) -> 
   'collection'(_Ctx);
'collection'(#{'base-uri' := BaseUri0},Uri0) -> 
   Uri = xqerl_types:value(Uri0),
   BaseUri = xqerl_types:value(BaseUri0),
   % TODO decide if all documents should be built or a collection type returned
   try
      CUri = xqerl_lib:resolve_against_base_uri(BaseUri, Uri),
      Vals = xqldb_dml:select_collection(CUri),
      if Vals == [] -> % empty/non-existing collection
            throw({error, no_collection});
         true ->
            Vals
      end
   catch
      _:{error, relative} ->
         ?err('FODC0004');
      _:{error, fragment} ->
         ?err('FODC0004');
      _:Err ->
?dbg("Err", Err),
         ?err('FODC0002')
   end.

%% Returns -1, 0, or 1, depending on whether $comparand1 collates before, equal 
%% to, or after $comparand2 according to the rules of a selected collation. 
%% fn:compare(
%%    $comparand1 as xs:string?, 
%%    $comparand2 as xs:string?) as xs:integer?
-spec 'compare'(xq_types:context(),
                [] | xq_types:xs_string(),
                [] | xq_types:xs_string()) -> 
         [] | xq_types:xs_integer().
'compare'(Ctx,Arg1,Arg2) -> 
   Coll = xqerl_context:get_default_collation(Ctx),
   'compare'(Ctx,Arg1,Arg2,Coll).

%% fn:compare(
%%    $comparand1  as xs:string?,
%%    $comparand2  as xs:string?,
%%    $collation   as xs:string) as xs:integer?
-spec 'compare'(xq_types:context(),
                [] | xq_types:xs_string(),
                [] | xq_types:xs_string(),
                xq_types:xs_string() | atom() | function()) -> 
         [] | xq_types:xs_integer().
'compare'(_Ctx,[],_Arg2,_Collation) -> [];
'compare'(_Ctx,_Arg1,[],_Collation) -> [];
'compare'(_Ctx,Arg1,Arg2,Collation) when is_function(Collation);
                                         is_atom(Collation) ->
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
      _:_:StackTrace ->
         ?dbg("compare",StackTrace),
         ?err('FOCH0002')
  end;
'compare'(_Ctx,Arg1,Arg2,Collation) ->
   ColVal = xqerl_coll:parse(xqerl_types:string_value(Collation)),
   'compare'(_Ctx,Arg1,Arg2,ColVal).

%% Returns the concatenation of the string values of the arguments. 
%% fn:concat(
%%    $arg1  as xs:anyAtomicType?,
%%    $arg2  as xs:anyAtomicType?,
%%    ...   ) as xs:string
-spec 'concat'(xq_types:context(),
                [[] | xq_types:xs_anyAtomicType(),...]) -> 
         [] | xq_types:xs_string().
'concat'(_,[]) -> ?str(<<>>);
'concat'(_Ctx,Arg1) ->
   ?str(concat_1(Arg1,<<>>)).

concat_1([], Acc) -> Acc;
concat_1([?atm(Ty,H)|T], Acc) when is_binary(H), Ty =/= 'xs:hexBinary', Ty =/= 'xs:base64Binary' ->
   concat_1(T, <<Acc/binary, H/binary>>);
concat_1([H|T], Acc) when is_binary(H) ->
   concat_1(T, <<Acc/binary, H/binary>>);
concat_1([H|T], Acc) ->
   Hd = xqerl_types:value(xqerl_types:cast_as(H, 'xs:string')),
   concat_1(T, <<Acc/binary, Hd/binary>>).

%% Returns true if the string $arg1 contains $arg2 as a substring, 
%% taking collations into account. 
%% fn:contains($arg1 as xs:string?, $arg2 as xs:string?) as xs:boolean
-spec 'contains'(xq_types:context(),
                 xq_types:xs_string(),
                 xq_types:xs_string()) -> 
         xq_types:xs_boolean().
'contains'(Ctx,Arg1,Arg2) ->
   Coll = xqerl_context:get_default_collation(Ctx),
   'contains'(Ctx,Arg1,Arg2,Coll).

%% fn:contains(
%%    $arg1       as xs:string?,
%%    $arg2       as xs:string?,
%%    $collation  as xs:string) as xs:boolean
-spec 'contains'(xq_types:context(),
                 xq_types:xs_string(),
                 xq_types:xs_string(),
                 xq_types:xs_string() | atom() | function()) -> 
         xq_types:xs_boolean().
'contains'(_Ctx,Arg1,Arg2,Collation) when is_function(Collation);
                                          is_atom(Collation) ->
   S1 = xqerl_types:value(Arg1),
   S2 = xqerl_types:value(Arg2),
   B1 = xqerl_coll:binary(S1, Collation),
   B2 = xqerl_coll:binary(S2, Collation),
   if B2 =:= <<>> ->
         ?bool(true);
      true ->
         case binary:matches(B1,B2) of
            [] when S2 =/= [] ->
               ?bool(false);
            _ ->
               ?bool(true)
         end
   end;
'contains'(Ctx,Arg1,Arg2,Collation) -> 
   Coll = xqerl_coll:parse(xqerl_types:value(Collation)),
   'contains'(Ctx,Arg1,Arg2,Coll).

%% Determines whether or not any of the supplied strings, when tokenized at 
%% whitespace boundaries, contains the supplied token, under the rules of the 
%% supplied collation. 
%% fn:contains-token($input as xs:string*, $token as xs:string) as xs:boolean
-spec 'contains-token'(xq_types:context(),
                       [] | xq_types:sequence(xq_types:xs_string()),
                       xq_types:xs_string()) -> 
         xq_types:xs_boolean().
'contains-token'(Ctx,InputList,Token) -> 
   Coll = xqerl_context:get_default_collation(Ctx),
   'contains-token'(Ctx,InputList,Token, Coll).

%% fn:contains-token(
%%    $input    as xs:string*,
%%    $token    as xs:string,
%%    $collation   as xs:string) as xs:boolean
-spec 'contains-token'(xq_types:context(),
                       [] | xq_types:sequence(xq_types:xs_string()),
                       xq_types:xs_string(),
                       xq_types:xs_string() | atom() | function()) -> 
         xq_types:xs_boolean().
'contains-token'(_Ctx,[],_Token,_Collation) -> ?bool(false);
'contains-token'(Ctx,InputList,Token,Collation) when not is_list(InputList) ->
   'contains-token'(Ctx,[InputList],Token,Collation);
'contains-token'(Ctx,InputList,Token,Collation) when is_function(Collation);
                                                     is_atom(Collation) ->
   Token1 = xqerl_lib:trim(xqerl_types:string_value(Token)),
   if Token1 == <<>> ->
         ?bool(false);
      true ->
         Token2 = ?str(Token1),
         AnyFun1 = fun(S) ->
                         compare(Ctx, S, Token2, Collation) == ?atint(0)
                   end,
         AnyFun2 = fun(Str) ->
                        Strs = tokenize(Ctx, Str),
                        lists:any(AnyFun1, Strs)
                   end,
         Bool = lists:any(AnyFun2, InputList),
         ?bool(Bool)
   end;
'contains-token'(Ctx,InputList,Token,Collation) -> 
   Coll = xqerl_coll:parse(xqerl_types:value(Collation)),
   'contains-token'(Ctx,InputList,Token,Coll).

%% Returns the number of items in a sequence.
%% fn:count($arg as item()*) as xs:integer
-spec 'count'(xq_types:context(),
              [] | xq_types:sequence(xq_types:xq_item())) -> 
         xq_types:xs_integer().
'count'(_Ctx,#{nk := _}) -> ?atint(1);
'count'(_Ctx,#array{}) -> ?atint(1);
'count'(_Ctx,Arg1) ->
   Size = xqerl_seq3:size(Arg1),
   ?atint(Size).

%% Returns the current date. 
%% fn:current-date() as xs:date
-spec 'current-date'(xq_types:context()) -> 
         xq_types:xs_date().
'current-date'(#{tab := Tab}) -> 
   xqerl_types:cast_as(xqerl_context:get_current_datetime(Tab), 'xs:date').

%% Returns the current date and time (with timezone). 
%% fn:current-dateTime() as xs:dateTimeStamp
-spec 'current-dateTime'(xq_types:context()) -> 
         xq_types:xs_dateTimeStamp().
'current-dateTime'(#{tab := Tab}) -> 
   xqerl_context:get_current_datetime(Tab).

%% Returns the current time. 
%% fn:current-time() as xs:time
-spec 'current-time'(xq_types:context()) -> 
         xq_types:xs_time().
'current-time'(#{tab := Tab}) -> 
   xqerl_types:cast_as(xqerl_context:get_current_datetime(Tab), 'xs:time') .

%% Returns the result of atomizing a sequence. This process flattens arrays, 
%% and replaces nodes by their typed values. 
%% fn:data() as xs:anyAtomicType*
-spec 'data'(xq_types:context()) -> 
         [] | xq_types:sequence(xq_types:xs_anyAtomicType()).
'data'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'data'(Ctx, Ci).

%% fn:data($arg as item()*) as xs:anyAtomicType*
-spec 'data'(xq_types:context(),
             [] | xq_types:sequence(xq_types:xq_item())) -> 
         [] | xq_types:sequence(xq_types:xs_anyAtomicType()).
'data'(_Ctx,Arg1) when not is_list(Arg1) -> 
   'data'(_Ctx,[Arg1]);
'data'(_Ctx,Arg1) -> 
   data1(lists:flatten(Arg1)).

data1([]) -> [];
data1([#array{} = H|T]) ->
   Flat = xqerl_array:flatten([], H),
   data1(Flat ++ T);
data1([H|T]) when is_number(H);
                  is_binary(H);
                  is_boolean(H) ->
   [H|data1(T)];
data1([#xqAtomicValue{} = H|T]) ->
   [H|data1(T)];
data1([#{nk := _} = H|T]) ->
   [xqerl_types:atomize(H)|data1(T)];
data1([H|T]) when ?noderecs(H) ->
   xqerl_node:atomize_nodes(H) ++ data1(T);
data1(_) ->
   ?err('FOTY0013').

%% Returns an xs:dateTime value created by combining an xs:date and an xs:time. 
%% fn:dateTime($arg1 as xs:date?, $arg2 as xs:time?) as xs:dateTime?
-spec 'dateTime'(xq_types:context(),
                 [] | xq_types:xs_date(),
                 [] | xq_types:xs_time()) -> 
         [] | xq_types:xs_dateTime().
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
%% fn:day-from-date($arg as xs:date?) as xs:integer?
-spec 'day-from-date'(xq_types:context(),
                      [] | xq_types:xs_date()) -> 
         [] | xq_types:xs_integer().
'day-from-date'(Ctx,Arg1) -> 
   'days-from-duration'(Ctx, Arg1).

%% Returns the day component of an xs:dateTime. 
%% fn:day-from-dateTime($arg as xs:dateTime?) as xs:integer?
-spec 'day-from-dateTime'(xq_types:context(),
                          [] | xq_types:xs_dateTime()) -> 
         [] | xq_types:xs_integer().
'day-from-dateTime'(Ctx,Arg1) -> 
   'days-from-duration'(Ctx, Arg1).

%% Returns the number of days in a duration. 
%% fn:days-from-duration($arg as xs:duration?) as xs:integer?
-spec 'days-from-duration'(xq_types:context(),
                           [] | xq_types:xs_duration()) -> 
         [] | xq_types:xs_integer().
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
%% fn:deep-equal($parameter1 as item()*, $parameter2 as item()*) as xs:boolean
-spec 'deep-equal'(xq_types:context(),
                   [] | xq_types:sequence(xq_types:xq_item()),
                   [] | xq_types:sequence(xq_types:xq_item())) -> 
         xq_types:xs_boolean().
'deep-equal'(Ctx,Arg1,Arg2) ->
   Coll = xqerl_context:get_default_collation(Ctx),
   'deep-equal'(Ctx,Arg1,Arg2,Coll).

%% fn:deep-equal(
%%    $parameter1  as item()*,
%%    $parameter2  as item()*,
%%    $collation   as xs:string) as xs:boolean
-spec 'deep-equal'(xq_types:context(),
                   [] | xq_types:sequence(xq_types:xq_item()),
                   [] | xq_types:sequence(xq_types:xq_item()),
                   xq_types:xs_string() | atom() | function()) -> 
         xq_types:xs_boolean().
'deep-equal'(_Ctx,[],[],_) -> ?bool(true);
'deep-equal'(Ctx,Arg1,Arg2,Collation) when not is_list(Arg1) -> 
   'deep-equal'(Ctx,[Arg1],Arg2,Collation);
'deep-equal'(Ctx,Arg1,Arg2,Collation) when not is_list(Arg2) -> 
   'deep-equal'(Ctx,Arg1,[Arg2],Collation);
'deep-equal'(Ctx,Arg1,Arg2,Collation) when not is_function(Collation),
                                           Collation =/= codepoint -> 
   CollFun = xqerl_coll:parse(xqerl_types:string_value(Collation)),
   'deep-equal'(Ctx,Arg1,Arg2,CollFun);
'deep-equal'(Ctx,[#xqRange{} = Arg1],Arg2,Collation) ->
   'deep-equal'(Ctx,xqerl_seq3:expand(Arg1),Arg2,Collation);
'deep-equal'(Ctx,Arg1,[#xqRange{} = Arg2],Collation) ->
   'deep-equal'(Ctx,Arg1,xqerl_seq3:expand(Arg2),Collation);
'deep-equal'(Ctx,Arg1,Arg2,CollFun) when is_function(CollFun);
                                         is_atom(CollFun) -> 
   case count([], Arg1) =/= count([], Arg2) of
      true ->
         ?bool(false);
      _ ->
         Zip = lists:zip(Arg1, Arg2),
         %?dbg("Zip",Zip),
         EqFun = fun({X,Y}) ->
                       deep_equal_1({X, Y}, Ctx, CollFun)
                 end,
         try
            ?bool(lists:all(EqFun, Zip))
         catch
            ?ERROR_MATCH(?A("FOTY0015")) = E -> throw(E);
            _:_ ->
               %?dbg("deep-equal",StackTrace),
               ?bool(false)
         end
   end.

deep_equal_1({X, Y}, Ctx, CollFun) when is_list(X), is_list(Y) ->
   'deep-equal'(Ctx,X,Y,CollFun);
deep_equal_1({#{nk := _} = N1,#{nk := _} = N2}, _, CollFun) ->
   xqerl_node:nodes_equal(N1,N2,CollFun);
deep_equal_1({#xqAtomicValue{value = nan},
              #xqAtomicValue{value = nan}}, _, _) ->
   true;
deep_equal_1({nan, #xqAtomicValue{value = nan}}, _, _) ->
   true;
deep_equal_1({#xqAtomicValue{value = nan}, nan}, _, _) ->
   true;
deep_equal_1({nan, nan}, _, _) ->
   true;
deep_equal_1({#xqAtomicValue{value = infinity},
              #xqAtomicValue{value = infinity}}, _, _) ->
   true;
deep_equal_1({infinity, #xqAtomicValue{value = infinity}}, _, _) ->
   true;
deep_equal_1({#xqAtomicValue{value = infinity}, infinity}, _, _) ->
   true;
deep_equal_1({infinity, infinity}, _, _) ->
   true;
deep_equal_1({#xqAtomicValue{value = neg_infinity},
              #xqAtomicValue{value = neg_infinity}}, _, _) ->
   true;
deep_equal_1({neg_infinity, #xqAtomicValue{value = neg_infinity}}, _, _) ->
   true;
deep_equal_1({#xqAtomicValue{value = neg_infinity}, neg_infinity}, _, _) ->
   true;
deep_equal_1({neg_infinity, neg_infinity}, _, _) ->
   true;
deep_equal_1({true, true}, _, _) ->
   true;
deep_equal_1({true, false}, _, _) ->
   false;
deep_equal_1({false, false}, _, _) ->
   true;
deep_equal_1({false, true}, _, _) ->
   false;
deep_equal_1({#xqAtomicValue{type = T1, value = V1}, V2}, Ctx, CollFun)
   when ?xs_string(T1);
        T1 == 'xs:anyURI';
        T1 == 'xs:untypedAtomic' ->
   deep_equal_1({V1, V2}, Ctx, CollFun);
deep_equal_1({V1, #xqAtomicValue{type = T2, value = V2}}, Ctx, CollFun)
   when ?xs_string(T2);
        T2 == 'xs:anyURI';
        T2 == 'xs:untypedAtomic' ->
   deep_equal_1({V1, V2}, Ctx, CollFun);
deep_equal_1({V1, V2}, Ctx, CollFun) when is_binary(V1),
                                          is_binary(V2) ->
   compare(Ctx, V1, V2, CollFun) == 0;
deep_equal_1({N1, N2}, _, _) when is_number(N1), is_number(N2) ->
   N1 == N2;
deep_equal_1({_, #xqFunction{}}, _, _) ->
   ?err('FOTY0015');
deep_equal_1({#xqFunction{}, _}, _, _) ->
   ?err('FOTY0015');
deep_equal_1({V1, V2}, _, _) when is_function(V1),
                                  is_function(V2) ->
   V1 == V2;
deep_equal_1({{array,A1},{array,A2}}, Ctx, CollFun) ->
   'deep-equal'(Ctx,A1,A2,CollFun);
deep_equal_1({{array,_},_}, _, _) -> false;
deep_equal_1({{_, array},_}, _, _) -> false;
deep_equal_1({M1, M2}, Ctx, CollFun) when is_map(M1),
                                          is_map(M2) ->
   Sz1 = xqerl_map:size([], M1),
   Sz2 = xqerl_map:size([], M2),
   if Sz1 == Sz2 ->
         K1 = xqerl_map:keys([],M1),
         F = fun(K) ->
                   xqerl_map:contains([], M2, K) == 
                     ?bool(true) andalso
                   'deep-equal'(
                     Ctx,
                     xqerl_map:get([], M1, K), 
                     xqerl_map:get([], M2, K),
                     CollFun)
             end,         
         lists:all(F, K1);
      true ->
         false
   end;
deep_equal_1({N1, N2}, _, _) ->
   xqerl_operators:equal(N1,N2).


%% Returns the value of the default collation property from the static context. 
%% fn:default-collation() as xs:string
-spec 'default-collation'(xq_types:context()) -> xq_types:xs_string().
'default-collation'(Ctx) -> 
   xqerl_context:get_default_collation(Ctx).

%% Returns the value of the default language property from the dynamic context. 
%% fn:default-language() as xs:language
-spec 'default-language'(xq_types:context()) -> xq_types:xs_language().
'default-language'(#{tab := Tab}) -> 
   xqerl_context:get_default_language(Tab).

%% Returns the values that appear in a sequence, with duplicates eliminated. 
%% fn:distinct-values($arg as xs:anyAtomicType*) as xs:anyAtomicType*
-spec 'distinct-values'(xq_types:context(),
                        [] | xq_types:sequence(xq_types:xs_anyAtomicType())) -> 
         [] | xq_types:sequence(xq_types:xs_anyAtomicType()).
'distinct-values'(_Ctx,[]) -> [];
'distinct-values'(Ctx,Arg1) ->
   Collation = xqerl_context:get_default_collation(Ctx),
   'distinct-values'(Ctx,Arg1, Collation).

%% fn:distinct-values(
%%    $arg   as xs:anyAtomicType*,
%%    $collation   as xs:string) as xs:anyAtomicType*
-spec 'distinct-values'(xq_types:context(),
                        [] | xq_types:sequence(xq_types:xs_anyAtomicType()),
                        xq_types:xs_string() | atom() | function()) -> 
         [] | xq_types:sequence(xq_types:xs_anyAtomicType()).
'distinct-values'(Ctx,Arg1,Collation) when not is_list(Arg1) ->
   'distinct-values'(Ctx,[Arg1],Collation);
'distinct-values'(_Ctx,Arg1,Collation) when is_function(Collation);
                                            is_atom(Collation) ->
   CompVal = fun(#xqAtomicValue{type = T} = A) when ?xs_string(T);
                                                    T == 'xs:untypedAtomic';
                                                    T == 'xs:anyURI' ->
                   Key = xqerl_coll:sort_key(xqerl_types:value(A), Collation),
                   {Key, A};
                (A) when is_binary(A)->
                   Key = xqerl_coll:sort_key(A, Collation),
                   {Key, A};
                (#xqAtomicValue{value = neg_zero} = A) ->
                   {0, A};
                (#xqAtomicValue{value = V} = A) when is_atom(V) ->
                   {V, A};
                (#xqAtomicValue{} = A) ->
                   {A, A};
                (A) when is_number(A) ->
                   {A, A};
                (neg_zero = A) ->
                   {0, A};
                (A) when is_atom(A) ->
                   {A, A};
                (#{nk := _} = N) ->
                   A = xqerl_types:atomize(N),
                   Key = xqerl_coll:sort_key(xqerl_types:value(A), Collation),
                   {Key, A}
             end,                   
   Arg = xqerl_seq3:expand(Arg1),
   Unique = distinct_vals(Arg,CompVal),
   val_reverse(Unique, []);
'distinct-values'(Ctx,Arg1,Collation) ->
   Coll = xqerl_types:value(Collation),
   NewColl = xqerl_coll:parse(Coll),
   'distinct-values'(Ctx,Arg1,NewColl).
   

val_reverse([],Acc) -> Acc;
val_reverse([{_,V}|T], Acc) -> 
   val_reverse(T,[V|Acc]).

distinct_vals(Vals,Fun) ->
   F = fun(Value, Acc) ->
             {Key,ActVal} = Fun(Value),
             X = fun({#xqAtomicValue{type = AccType} = AccKey,_}) ->
                       case Key of
                          #xqAtomicValue{type = KeyType, value = nan} 
                             when ?xs_numeric(KeyType) ->
                             ?xs_numeric(AccType) andalso 
                               AccKey#xqAtomicValue.value == nan;
                          #xqAtomicValue{type = KeyType} 
                             when ?xs_string(KeyType), ?xs_string(AccType) ->
                              xqerl_operators:equal(AccKey, Key);
                          #xqAtomicValue{type = KeyType} 
                             when ?xs_numeric(KeyType), ?xs_numeric(AccType) ->
                              xqerl_operators:equal(AccKey, Key);
                          #xqAtomicValue{type = KeyType} 
                             when ?xs_duration(KeyType), ?xs_duration(AccType) ->
                              xqerl_operators:equal(AccKey, Key);
                          #xqAtomicValue{type = AccType} ->
                              xqerl_operators:equal(AccKey, Key);
                          _ when is_number(Key) ->
                             xqerl_operators:equal(AccKey, Key);
                          _ ->
                             false
                       end;
                    ({AccKey,_}) when is_number(AccKey) ->
                       (catch xqerl_operators:equal(AccKey, Key)) == true;
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
%% fn:doc($uri as xs:string?) as document-node()?
-spec 'doc'(xq_types:context(),
            [] | xq_types:xs_string()) -> 
         [] | xq_types:xml_document().
'doc'(_Ctx,[]) -> [];
'doc'(#{'base-uri' := BaseUri0},Uri0) -> 
   Uri = xqerl_types:value(Uri0),
   BaseUri = xqerl_types:value(BaseUri0),
   try xqerl_lib:resolve_against_base_uri(BaseUri, Uri) of
      {error,E} when E =/= relative -> % relative is a kludge to get correct error
         ?err('FODC0005');
      {error,_} ->
         ?err('FODC0002');
      ResVal ->
         case catch xqldb_dml:select_doc(ResVal) of
            {error,not_exists} -> % not in db
               ?err('FODC0002');
            {'EXIT',_} ->
               ?err('FODC0005');
            D ->
               D
         end
   catch 
      _:_:StackTrace ->
         ?dbg("FODC0005",{BaseUri, Uri}),
         ?dbg("FODC0005",StackTrace),
         ?err('FODC0005')
   end.

%% The function returns true if and only if the function call fn:doc($uri) 
%% would return a document node. 
%% fn:doc-available($uri as xs:string?) as xs:boolean
-spec 'doc-available'(xq_types:context(),
                      [] | xq_types:xs_string()) ->
         [] | xq_types:xs_boolean().
'doc-available'(#{'base-uri' := BaseUri0},Uri0) -> 
   Uri = xqerl_types:value(Uri0),
   BaseUri = xqerl_types:value(BaseUri0),
   try xqerl_lib:resolve_against_base_uri(BaseUri, Uri) of
      %{error,unsafe} ->
      %   ?err('FODC0005');
      {error,invalid_uri} ->
         ?bool(false);
      ResVal ->
        %?dbg("ResVal",ResVal),
         ?bool(xqldb_dml:exists_doc(ResVal))
   catch
      %?ERROR_MATCH(?A("FORG0002")) -> ?bool(false);
      _:_:_Stack ->
        %?dbg("Stack",Stack),
         ?bool(false)
      %_:_ -> ?err('FODC0005') % not in 3.1
   end.

%% Returns the URI of a resource where a document can be found, if available. 
%% fn:document-uri() as xs:anyURI?
-spec 'document-uri'(xq_types:context()) ->
         [] | xq_types:xs_anyURI().
'document-uri'(Ctx) ->
   Ci = xqerl_context:get_context_item(Ctx),
   'document-uri'(Ctx,Ci).

%% fn:document-uri($arg as node()?) as xs:anyURI?
-spec 'document-uri'(xq_types:context(),
                     [] | xq_types:xml_node()) ->
         [] | xq_types:xs_anyURI().
'document-uri'(_,[]) -> [];
'document-uri'(Ctx,[Node]) ->
   'document-uri'(Ctx,Node);
'document-uri'(_Ctx, #{nk := _} = Node) -> 
   DUri = xqldb_xpath:document_uri(Node),
   if DUri == [];
      DUri == <<>> ->
         [];
      true ->
         ?atm('xs:anyURI', DUri)
   end.

%% Returns the sequence of element nodes that have an ID value matching the 
%% value of one or more of the IDREF values supplied in $arg. 
%% Behaves like fn:id, since no validation.
%% fn:element-with-id($arg as xs:string*) as element()*
-spec 'element-with-id'(xq_types:context(),
                        [] | xq_types:sequence(xq_types:xs_string())) ->
         [] | xq_types:sequence(xq_types:xml_element()).
'element-with-id'(Ctx,Arg1) -> id(Ctx,Arg1).
%% fn:element-with-id($arg as xs:string*, $node as node()) as element()*
-spec 'element-with-id'(xq_types:context(),
                        [] | xq_types:sequence(xq_types:xs_string()),
                        xq_types:xml_node()) ->
         [] | xq_types:sequence(xq_types:xml_element()).
'element-with-id'(Ctx,Arg1,Arg2) -> id(Ctx,Arg1,Arg2).

%% Returns true if the argument is the empty sequence. 
%% fn:empty($arg as item()*) as xs:boolean
-spec 'empty'(xq_types:context(),
              [] | xq_types:sequence(xq_types:xq_item())) ->
         [] | xq_types:xs_boolean().
'empty'(_Ctx,[]) -> ?bool(true);
'empty'(_Ctx,[[]]) -> ?bool(true);
'empty'(_Ctx,_) -> ?bool(false).

%% Encodes reserved characters in a string that is intended to be used in 
%% the path segment of a URI. 
%% fn:encode-for-uri($uri-part as xs:string?) as xs:string
-spec 'encode-for-uri'(xq_types:context(),
                      [] | xq_types:xs_string()) ->
         xq_types:xs_string().
'encode-for-uri'(_,[]) -> ?str(<<>>); 
'encode-for-uri'(_,Arg1) -> 
   Val = xqerl_types:string_value(Arg1),
   ?str(xqerl_lib:encode_for_uri(Val)).

%% Returns true if the string $arg1 contains $arg2 as a trailing substring, 
%% taking collations into account. 
%% fn:ends-with($arg1 as xs:string?, $arg2 as xs:string?) as xs:boolean
-spec 'ends-with'(xq_types:context(),
                  [] | xq_types:xs_string(),
                  [] | xq_types:xs_string()) ->
         xq_types:xs_boolean().
'ends-with'(Ctx,[],Arg2) -> 'ends-with'(Ctx,?str(<<>>),Arg2);
'ends-with'(_Ctx,_Arg1,[]) -> ?bool(true);
'ends-with'(#{'default-collation' := DefColl} = Ctx,Arg1,Arg2) -> 
   'ends-with'(Ctx,Arg1,Arg2,DefColl).

%% fn:ends-with(
%%    $arg1       as xs:string?,
%%    $arg2       as xs:string?,
%%    $collation  as xs:string) as xs:boolean
-spec 'ends-with'(xq_types:context(),
                  [] | xq_types:xs_string(),
                  [] | xq_types:xs_string(),
                  xq_types:xs_string() | atom() | function()) ->
         xq_types:xs_boolean().
'ends-with'(#{'base-uri' := BaseUri0},Arg1,Arg2,Collation) -> 
   Str1 = xqerl_types:string_value(Arg1),
   Str2 = xqerl_types:string_value(Arg2),
   Uri = xqerl_types:string_value(Collation),
   BaseUri = xqerl_types:value(BaseUri0),
   Coll = xqerl_lib:resolve_against_base_uri(BaseUri, Uri),
   if Str2 == <<>> ->
         ?bool(true);
      true ->
         ColVal = xqerl_coll:parse(Coll),
         VBin = xqerl_coll:binary(Str1, ColVal),
         SBin = xqerl_coll:binary(Str2, ColVal),
         if VBin == <<>> andalso SBin =/= <<>> ->
               ?bool(false);
            true ->
               VSz = byte_size(VBin),
               SSz = byte_size(SBin),
               if SSz =< VSz andalso binary_part(VBin, VSz, -SSz) == SBin ->
                     ?bool(true);
                  true ->
                     ?bool(false)
               end
         end
   end.

%% Returns the value of a system environment variable, if it exists. 
%% fn:environment-variable($name as xs:string) as xs:string?
-spec 'environment-variable'(xq_types:context(),
                             xq_types:xs_string()) ->
         [] | xq_types:xs_string().
'environment-variable'(_Ctx,_Arg1) -> 
   %% NOT IMPLEMENTING
   [].

%% -record(xqError, {
%%       name,
%%       description,
%%       value,
%%       location % {Module, Line, Column} %TODO
%%    }). 

%% Calling the fn:error function raises an application-defined error.
%% fn:error() as none
-spec 'error'(xq_types:context()) -> xq_types:xs_error().
'error'(_Ctx) -> 
   ?err('FOER0000').

%% Calling the fn:error function raises an application-defined error.
%% fn:error($code as xs:QName?) as none
-spec 'error'(xq_types:context(),
              [] | xq_types:xs_QName()) -> xq_types:xs_error().
'error'(_Ctx,[]) ->
   ?err('FOER0000');
'error'(_Ctx,QName) ->
   ?err(xqerl_types:value(QName)).

%% Calling the fn:error function raises an application-defined error.
%% fn:error($code as xs:QName?, $description as xs:string) as none
-spec 'error'(xq_types:context(),
              [] | xq_types:xs_QName(),
              xq_types:xs_string()) -> xq_types:xs_error().
'error'(_Ctx,[],Description) -> 
   exit(xqerl_error:error('FOER0000',Description));
'error'(_Ctx,QName,Description) -> 
   exit(xqerl_error:error(xqerl_types:value(QName),Description)).

%% Calling the fn:error function raises an application-defined error.
%% fn:error(
%%    $code          as xs:QName?,
%%    $description   as xs:string,
%%    $error-object  as item()*) as none
-spec 'error'(xq_types:context(),
              [] | xq_types:xs_QName(),
              xq_types:xs_string(),
              [] | xq_types:sequence(xq_types:xq_item())) -> 
         xq_types:xs_error().
'error'(_Ctx,[],Description,Object) ->
   exit(xqerl_error:error('FOER0000',Description, Object));
'error'(_Ctx,QName,Description,Object) ->
   exit(xqerl_error:error(xqerl_types:value(QName),Description, Object)).

%% Escapes a URI in the same way that HTML user agents handle attribute 
%% values expected to contain URIs. 
%% fn:escape-html-uri($uri as xs:string?) as xs:string
-spec 'escape-html-uri'(xq_types:context(),
                        [] | xq_types:xs_string()) -> 
         xq_types:xs_string().
'escape-html-uri'(_,[]) -> ?str(<<>>);
'escape-html-uri'(_,Arg1) -> 
   Val = xqerl_types:string_value(Arg1),
   ?str(pct_encode2(Val)).

pct_encode2(Bin) when is_binary(Bin) ->
   Str = unicode:characters_to_list(Bin),
   unicode:characters_to_binary((pct_encode2(Str)));
pct_encode2([]) -> [];
pct_encode2([H|T]) when H >= 32, H =< 126 ->
   [H|pct_encode2(T)];
pct_encode2([H|T]) ->
   string:uppercase(xqerl_lib:escape_uri([H])) ++ pct_encode2(T).

pct_encode3(Bin) when is_binary(Bin) ->
   Str = unicode:characters_to_list(Bin),
   unicode:characters_to_binary((pct_encode3(Str)));
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
%% fn:exactly-one($arg as item()*) as item()
-spec 'exactly-one'(xq_types:context(),
                    [] | xq_types:sequence(xq_types:xq_item())) -> 
         xq_types:xq_item().
'exactly-one'(_,[]) -> ?err('FORG0005');
'exactly-one'(_,[Arg1]) -> Arg1;
'exactly-one'(_,Arg1) when is_list(Arg1) -> ?err('FORG0005');
'exactly-one'(_,Arg1) -> Arg1.

%% Returns true if the argument is a non-empty sequence. 
%% fn:exists($arg as item()*) as xs:boolean
-spec 'exists'(xq_types:context(),
               [] | xq_types:sequence(xq_types:xq_item())) -> 
         xq_types:xs_boolean().
'exists'(_,[]) -> ?bool(false);
'exists'(_,_) -> ?bool(true).

%% Returns the xs:boolean value false. 
%% fn:false() as xs:boolean
-spec 'false'(xq_types:context()) -> 
         xq_types:xs_boolean().
'false'(_) -> 
   ?bool(false).

%% Returns those items from the sequence $seq for which the supplied 
%% function $f returns true. 
%% fn:filter($seq as item()*, $f as function(item()) as xs:boolean) as item()*
-spec 'filter'(xq_types:context(),
               [] | xq_types:sequence(xq_types:xq_item()),
               xq_types:xq_function()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'filter'(Ctx,Seq,F) when not is_list(Seq) ->
   'filter'(Ctx,[Seq],F);
'filter'(Ctx,Seq,#xqFunction{body = F}) ->
   'filter'(Ctx,Seq,F);
'filter'(Ctx,Seq,MA) when is_record(MA, array);
                          is_map(MA) ->
   lists:filter(fun(S) ->
                   case xqerl_operators:lookup(Ctx, MA, S) of
                      true ->
                         true;
                      false ->
                         false;
                      _ ->
                         ?err('XPTY0004')
                   end
             end, xqerl_seq3:expand(Seq));
'filter'(Ctx,Seq,F) when is_function(F,2) ->
   lists:filter(fun(Val) ->
                  case catch xqerl_seq3:singleton_value(F(Ctx,Val)) of
                     true ->
                        true;
                     false ->
                        false;
                     {'EXIT',#xqError{} = E} ->
                        throw(E);
                     #{nk := _} = N ->
                        case catch xqerl_types:cast_as(N, 'xs:boolean') of
                           V when is_boolean(V) ->
                              V;
                           _ ->
                              ?err('XPTY0004')
                        end;
                     _ ->
                        ?err('XPTY0004')
                  end
            end, xqerl_seq3:expand(Seq));
'filter'(_,_,_) ->
  ?err('XPTY0004').

%% Rounds $arg downwards to a whole number. 
%% fn:floor($arg as xs:numeric?) as xs:numeric?
-spec floor(xq_types:context(), 
            [] | xq_types:xs_numeric()) -> [] | xq_types:xs_numeric().
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
%% fn:fold-left(
%%    $seq   as item()*,
%%    $zero  as item()*,
%%    $f     as function(item()*, item()) as item()*) as item()*
-spec 'fold-left'(xq_types:context(),
                  [] | xq_types:sequence(xq_types:xq_item()),
                  [] | xq_types:sequence(xq_types:xq_item()),
                  xq_types:xq_function()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'fold-left'(Ctx,Seq,Zero,F) -> 
   xqerl_seq3:foldl(Ctx,F, Zero, Seq).

%% Processes the supplied sequence from right to left, applying the supplied 
%% function repeatedly to each item in turn, 
%% together with an accumulated result value. 
%% fn:fold-right(
%%    $seq  as item()*,
%%    $zero as item()*,
%%    $f    as function(item(), item()*) as item()*) as item()*
-spec 'fold-right'(xq_types:context(),
                   [] | xq_types:sequence(xq_types:xq_item()),
                   [] | xq_types:sequence(xq_types:xq_item()),
                   xq_types:xq_function()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'fold-right'(Ctx,Seq,Zero,F) -> 
   xqerl_seq3:foldr(Ctx,F, Zero, Seq).

%% Applies the function item $action to every item from the sequence $seq in 
%% turn, returning the concatenation of the resulting sequences in order. 
%% fn:for-each(
%%    $seq as item()*, 
%%    $action as function(item()) as item()*) as item()*
-spec 'for-each'(xq_types:context(),
                 [] | xq_types:sequence(xq_types:xq_item()),
                 xq_types:xq_function()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'for-each'(Ctx,Seq,Action) -> 
   xqerl_seq3:for_each(Ctx, Action, Seq).

%% Applies the function item $action to successive pairs of items taken one 
%% from $seq1 and one from $seq2, returning the concatenation of the resulting 
%% sequences in order. 
%% fn:for-each-pair(
%%    $seq1  as item()*,
%%    $seq2  as item()*,
%%    $action   as function(item(), item()) as item()*) as item()*
-spec 'for-each-pair'(xq_types:context(),
                      [] | xq_types:sequence(xq_types:xq_item()),
                      [] | xq_types:sequence(xq_types:xq_item()),
                      xq_types:xq_function()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'for-each-pair'(Ctx,Seq1,Seq2,Action) -> 
   xqerl_seq3:zip_with(Ctx, Action, Seq1, Seq2).

%% Returns a string containing an xs:date value formatted for display. 
%% fn:format-date($value as xs:date?, $picture as xs:string) as xs:string?
-spec 'format-date'(xq_types:context(),
                    [] | xq_types:xs_date(),
                    xq_types:xs_string()) -> 
         [] | xq_types:xs_string().
'format-date'(_Ctx,Date,Picture) -> 
   'format-dateTime'(_Ctx,Date,Picture).

%% fn:format-date(
%%    $value    as xs:date?,
%%    $picture  as xs:string,
%%    $language as xs:string?,
%%    $calendar as xs:string?,
%%    $place    as xs:string?) as xs:string?
-spec 'format-date'(xq_types:context(),
                    [] | xq_types:xs_date(),
                    xq_types:xs_string(),
                    [] | xq_types:xs_string(),
                    [] | xq_types:xs_string(),
                    [] | xq_types:xs_string()) -> 
         [] | xq_types:xs_string().
'format-date'(_Ctx,Date,Picture,Arg3,Arg4,Arg5) -> 
   'format-dateTime'(_Ctx,Date,Picture,Arg3,Arg4,Arg5).

%% Returns a string containing an xs:dateTime value formatted for display. 
%% fn:format-dateTime(
%%    $value as xs:dateTime?, 
%%    $picture as xs:string) as xs:string?
-spec 'format-dateTime'(xq_types:context(),
                        [] | xq_types:xs_dateTime(),
                        xq_types:xs_string()) -> 
         [] | xq_types:xs_string().
'format-dateTime'(_Ctx,Date,Picture) -> 
   IntVal = xqerl_seq3:singleton_value(Date),
   StrVal = xqerl_types:value(Picture),
   if StrVal == <<>> ->
         ?err('FODF1310');
      true ->
         try 
            Formatted = xqerl_format:parse_picture(IntVal, StrVal),
            ?str(Formatted)
         catch
            ?ERROR_MATCH(?A("FODF1310")) ->
               ?err('FOFD1340');
            _:#xqError{} = E : StackTrace ->
               ?dbg("E",StackTrace),
               throw(E);
            _:_ : StackTrace ->
               ?dbg("FOFD1340",StackTrace),
               ?err('FOFD1340')
         end
   end.

%% fn:format-dateTime(
%%    $value    as xs:dateTime?,
%%    $picture  as xs:string,
%%    $language as xs:string?,
%%    $calendar as xs:string?,
%%    $place    as xs:string?) as xs:string?
-spec 'format-dateTime'(xq_types:context(),
                        [] | xq_types:xs_dateTime(),
                        xq_types:xs_string(),
                        [] | xq_types:xs_string(),
                        [] | xq_types:xs_string(),
                        [] | xq_types:xs_string()) -> 
         [] | xq_types:xs_string().
'format-dateTime'(Ctx, Date, Picture, Language, Calendar, Place) ->
   LanVal = xqerl_types:string_value(Language),
   CalVal = xqerl_types:string_value(Calendar),
   PlcVal = xqerl_types:string_value(Place),
   Val1 = if LanVal == <<>>;
             LanVal == <<"en">> -> <<>>; 
             true -> <<"[Language: en]">> 
          end,
   try
      Val2 = 
         if CalVal == <<>> -> Val1; 
            true -> 
               Nss = maps:get(namespaces, Ctx),
               % can throw FORG0001
               QN = xqerl_types:cast_as(Calendar, 'xs:QName', Nss),  
               ?atm('xs:QName',#qname{namespace = CNs, local_name = CLn}) = QN,
               true = is_valid_calendar({CNs,CLn}),
               if CLn == <<"AD">>;
                  CLn == <<"ISO">> -> Val1;
                  true -> <<Val1/binary, "[Calendar: AD]">>
               end
         end,
      Val3 = if PlcVal == <<>> -> Val2; true -> <<Val2/binary, "[Place: ]">> end,
      Fmt = 'format-dateTime'(Ctx,Date,Picture),
      NewVal = xqerl_types:string_value(Fmt),
      ?str(<<Val3/binary, NewVal/binary>>)
   catch
      ?ERROR_MATCH(?A("FORG0001")) ->
         ?err('FOFD1340');
      _:#xqError{} = E->
         throw(E);
      _:_ -> 
         ?err('FOFD1340')
   end.

is_valid_calendar({Ns,Name}) when Ns =:= 'no-namespace';
                                  Ns =:= <<>> ->
   Known = [?A("AD"),?A("AH"),?A("AME"),?A("AM"),?A("AP"),?A("AS"),?A("BE"),?A("CB"),?A("CE"),?A("CL"),?A("CS"),?A("EE"),
            ?A("FE"),?A("ISO"),?A("JE"),?A("KE"),?A("KY"),?A("ME"),?A("MS"),?A("NS"),?A("OS"),?A("RS"),?A("SE"),?A("SH"),
            ?A("SS"),?A("TE"),?A("VE"),?A("VS")],
   lists:member(Name, Known);
is_valid_calendar({_,_}) ->
   % calendar in some namespace but not known
   true.

%% Formats an integer according to a given picture string, using the 
%% conventions of a given natural language if specified. 
%% fn:format-integer($value as xs:integer?, $picture as xs:string) as xs:string
-spec 'format-integer'(xq_types:context(),
                       [] | xq_types:xs_integer(),
                       xq_types:xs_string()) -> 
         xq_types:xs_string().
'format-integer'(_Ctx,Int,Picture) -> 
   IntVal = xqerl_types:value(Int),
   StrVal = xqerl_types:value(Picture),
   if StrVal == [] ->
         ?err('FODF1310');
      IntVal == [] ->
         ?str(<<>>);
      true ->
         Formatted = xqerl_format:parse_picture(IntVal, StrVal),
         ?str(Formatted)
   end.

%% fn:format-integer(
%%    $value   as xs:integer?,
%%    $picture as xs:string,
%%    $lang    as xs:string?) as xs:string
-spec 'format-integer'(xq_types:context(),
                       [] | xq_types:xs_integer(),
                       xq_types:xs_string(),
                       [] | xq_types:xs_string()) -> 
         xq_types:xs_string().
'format-integer'(_Ctx,Int,Picture,_Lang) -> 
   'format-integer'(_Ctx,Int,Picture).

%% Returns a string containing a number formatted according to a given picture 
%% string, taking account of decimal formats specified in the static context. 
%% fn:format-number($value as xs:numeric?, $picture as xs:string) as xs:string
-spec 'format-number'(xq_types:context(),
                      [] | xq_types:xs_numeric(),
                      xq_types:xs_string()) -> 
         xq_types:xs_string().
'format-number'(#{known_dec_formats := Dfs} = Ctx,Arg1,Arg2) ->
   [DF] = [D || {<<>>,D} <- Dfs],
   'format-number'(Ctx,Arg1,Arg2,DF).

%% fn:format-number(
%%    $value    as xs:numeric?,
%%    $picture  as xs:string,
%%    $decimal-format-name  as xs:string?) as xs:string
-spec 'format-number'(xq_types:context(),
                      [] | xq_types:xs_numeric(),
                      xq_types:xs_string(),
                      [] | xq_types:xs_string() | #dec_format{}) -> 
         xq_types:xs_string().
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
   S2 = xqerl_lib:trim(S1),
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
%% fn:format-time($value as xs:time?, $picture as xs:string) as xs:string?
-spec 'format-time'(xq_types:context(),
                    [] | xq_types:xs_time(),
                    xq_types:xs_string()) -> 
         [] | xq_types:xs_string().
'format-time'(_Ctx,Date,Picture) -> 
   'format-dateTime'(_Ctx,Date,Picture).

%% fn:format-time(
%%    $value    as xs:time?,
%%    $picture  as xs:string,
%%    $language    as xs:string?,
%%    $calendar    as xs:string?,
%%    $place    as xs:string?) as xs:string?
-spec 'format-time'(xq_types:context(),
                    [] | xq_types:xs_time(),
                    xq_types:xs_string(),
                    [] | xq_types:xs_string(),
                    [] | xq_types:xs_string(),
                    [] | xq_types:xs_string()) -> 
         [] | xq_types:xs_string().
'format-time'(_Ctx,Date,Picture,Arg3,Arg4,Arg5) -> 
   'format-dateTime'(_Ctx,Date,Picture,Arg3,Arg4,Arg5).

%% Returns the arity of the function identified by a function item. 
%% fn:function-arity($func as function(*)) as xs:integer
-spec 'function-arity'(xq_types:context(),
                       xq_types:xq_function()) -> 
         [] | xq_types:xs_integer().
'function-arity'(_Ctx,[]) ->
   ?err('XPTY0004');
'function-arity'(_Ctx,Arg1) when is_function(Arg1) ->
   {_,A} = erlang:fun_info(Arg1,arity),
   % minus the Ctx parameter
   ?atint(A - 1);
'function-arity'(_Ctx,#xqFunction{arity = A}) ->
   ?atint(A);
'function-arity'(_Ctx,Arg1) ->
   case xqerl_seq3:singleton_value(Arg1) of
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
%% fn:function-lookup($name as xs:QName, $arity as xs:integer) as function(*)?
-spec 'function-lookup'(xq_types:context(),
                        xq_types:xs_QName(),
                        xq_types:xs_integer()) -> 
         [] | xq_types:xq_function().
'function-lookup'(_Ctx,[],_Arity) -> ?err('XPTY0004');
'function-lookup'(Ctx,Name,Arity) -> 
   QName = xqerl_types:value(Name),
   Arity1 = xqerl_types:value(Arity),
   get_static_function(Ctx,{QName, Arity1}).

get_static_function(_,{_, []}) ->
   ?err('XPTY0004');
get_static_function(Ctx,{#qname{namespace = ?NS, 
                                local_name = ?A("concat")} = Name, Arity}) 
   when Arity > 1 -> 
   (get_static_function(Ctx, {Name, 1}))#xqFunction{arity = Arity};
get_static_function(#{tab := Tab} = Ctx,
                    {#qname{namespace = Ns, local_name = Ln}, Arity}) ->
   {ok, Stat} = xqerl_code_server:get_function_signatures(Ns, Ln),
   Sigs = xqerl_context:get_named_functions(Tab) ++ Stat,
   Lookup = [#xqFunction{annotations = Annotations,
                         name = Name1,
                         arity = Arity1,
                         params = ParamTypes,
                         type = ReturnType,
                         body = close_context(Ctx,M,F,A),
                         external = false
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
   case Lookup of
      [F] -> F;
      _ -> []         
   end.

close_context(_Ctx,xqerl_fn,concat,_) ->
   fun xqerl_fn:concat/2;
close_context(_Ctx,xqerl_fn,position,_) ->
   fun xqerl_fn:position/1;
close_context(_Ctx,xqerl_fn,last,_) ->
   fun xqerl_fn:last/1;
%% close_context(_Ctx,xqerl_fn,'static-base-uri',_) ->
%%    fun xqerl_fn:'static-base-uri'/1;
close_context(Ctx,M,F,1) ->
   fun (_) -> M:F(Ctx) end;
close_context(Ctx,M,F,2) ->
   fun (_,A1) -> M:F(Ctx,A1) end;
close_context(Ctx,M,F,3) ->
   fun (_,A1,A2) -> M:F(Ctx,A1,A2) end;
close_context(Ctx,M,F,4) ->
   fun (_,A1,A2,A3) -> M:F(Ctx,A1,A2,A3) end;
close_context(_,M,F,A) ->
   fun M:F/A.

          

unmask_static_mod_ns(?A("xqerl_fn")) -> 
   ?A("http://www.w3.org/2005/xpath-functions");
unmask_static_mod_ns(?A("xqerl_xs")) -> 
   ?A("http://www.w3.org/2001/XMLSchema");
unmask_static_mod_ns(?A("xqerl_math")) -> 
   ?A("http://www.w3.org/2005/xpath-functions/math");
unmask_static_mod_ns(?A("xqerl_map")) -> 
   ?A("http://www.w3.org/2005/xpath-functions/map");
unmask_static_mod_ns(?A("xqerl_array")) -> 
   ?A("http://www.w3.org/2005/xpath-functions/array");
unmask_static_mod_ns(?A("xqerl_error")) -> 
   ?A("http://www.w3.org/2005/xqt-errors");
unmask_static_mod_ns(?A("xqerl_main")) -> 
   ?A("http://www.w3.org/2005/xquery-local-functions");
unmask_static_mod_ns(T) -> T.

%% Returns the name of the function identified by a function item. 
%% fn:function-name($func as function(*)) as xs:QName? 
-spec 'function-name'(xq_types:context(),
                      xq_types:xq_function()) -> 
         [] | xq_types:xs_QName().
'function-name'(#{tab := Tab} = Ctx,Arg1) when is_function(Arg1) ->
  %?dbg("Arg1",Arg1),
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
         NsL = atom_to_binary(M, utf8),
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
%% fn:generate-id() as xs:string
-spec 'generate-id'(xq_types:context()) -> 
         xq_types:xs_string().
'generate-id'(Ctx) ->
   Item = xqerl_context:get_context_item(Ctx),
   'generate-id'(Ctx, Item).

%% fn:generate-id($arg as node()?) as xs:string
-spec 'generate-id'(xq_types:context(),
                    [] | xq_types:xml_node()) -> 
         xq_types:xs_string().
'generate-id'(_Ctx,[Arg1]) -> 
   'generate-id'(_Ctx,Arg1);
'generate-id'(_Ctx,[]) -> ?str(<<>>);
'generate-id'(_Ctx,Arg1) ->
   Hash = xqerl_node:get_node_hash(Arg1),
   ?str( <<"ID", (erlang:integer_to_binary(Hash))/binary>> ).

%% Returns true if the supplied node has one or more child nodes (of any kind). 
%% fn:has-children() as xs:boolean
-spec 'has-children'(xq_types:context()) -> 
         xq_types:xs_boolean().
'has-children'(Ctx) ->
   'has-children'(Ctx, xqerl_context:get_context_item(Ctx)).

%% fn:has-children($node as node()?) as xs:boolean
-spec 'has-children'(xq_types:context(),
                     [] | xq_types:xml_node()) -> 
         xq_types:xs_boolean().
'has-children'(_Ctx,[]) -> ?bool(false);
'has-children'(Ctx,[Arg1]) ->
   'has-children'(Ctx,Arg1);
'has-children'(_Ctx, #{nk := _} = Node) ->
   case xqldb_xpath:child_node(Node, {[]}) of
      [] ->
         ?bool(false);
      _ ->
         ?bool(true)
   end;
'has-children'(_,_) -> ?err('XPTY0004').

%% Returns the first item in a sequence. 
%% fn:head($arg as item()*) as item()?
-spec 'head'(xq_types:context(),
             [] | xq_types:sequence(xq_types:xq_item())) -> 
         [] | xq_types:xq_item().
'head'(_,Seq) -> head_1(Seq).

head_1([]) -> [];
head_1(#xqRange{min = Min}) -> ?atint(Min);
head_1([H|_]) -> H;
head_1(H) -> H.

%% Returns the hours component of an xs:dateTime. 
%% fn:hours-from-dateTime($arg as xs:dateTime?) as xs:integer?
-spec 'hours-from-dateTime'(xq_types:context(),
                            [] | xq_types:xs_dateTime()) -> 
         [] | xq_types:xs_integer().
'hours-from-dateTime'(Ctx,Arg1) -> 
   'hours-from-duration'(Ctx, Arg1).

%% Returns the number of hours in a duration. 
%% fn:hours-from-duration($arg as xs:duration?) as xs:integer?
-spec 'hours-from-duration'(xq_types:context(),
                            [] | xq_types:xs_duration()) -> 
         [] | xq_types:xs_integer().
'hours-from-duration'(_, []) -> [];
'hours-from-duration'(Ctx, [Arg1]) -> 'hours-from-duration'(Ctx, Arg1);
'hours-from-duration'(_, #xqAtomicValue{value = #xsDateTime{sign = '-', 
                                                            hour = Hr}}) ->
   ?atint(-Hr);
'hours-from-duration'(_, #xqAtomicValue{value = #xsDateTime{hour = Hr}}) ->
   ?atint(Hr).

%% Returns the hours component of an xs:time. 
%% fn:hours-from-time($arg as xs:time?) as xs:integer?
-spec 'hours-from-time'(xq_types:context(),
                        [] | xq_types:xs_time()) -> 
         [] | xq_types:xs_integer().
'hours-from-time'(Ctx,Arg1) -> 
   'hours-from-duration'(Ctx, Arg1).

%% Returns the sequence of element nodes that have an ID value matching the 
%% value of one or more of the IDREF values supplied in $arg. 
%% fn:id($arg as xs:string*) as element()*
-spec 'id'(xq_types:context(),
           [] | xq_types:sequence(xq_types:xs_string())) ->
         [] | xq_types:sequence(xq_types:xml_element()).
'id'(Ctx,Refs) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'id'(Ctx,Refs,Ci).

%% fn:id($arg as xs:string*, $node as node()) as element()*
-spec 'id'(xq_types:context(),
           [] | xq_types:sequence(xq_types:xs_string()),
           xq_types:xml_node()) ->
         [] | xq_types:sequence(xq_types:xml_element()).
'id'(Ctx,Refs,Node) when not is_list(Refs) ->
   'id'(Ctx,[Refs],Node);
'id'(Ctx,Refs,[Node]) ->
   'id'(Ctx,Refs,Node);
'id'(Ctx,Refs, #{nk := _} = Node) ->
   case xqldb_xpath:ancestor_or_self_document_node(Node, 
                                                   {{'_','_','_'},[]}) of
      [] ->
         ?err('FODC0001');
      [D] ->
         TokF = fun(Val) ->
                      Norm = 'normalize-space'(Ctx, Val),
                      L = 'tokenize'(Ctx, Norm),
                      [xqerl_types:string_value(V) || V <- L]
                end,
         RefToks = lists:flatmap(TokF, Refs),
         try
            xqldb_xpath:id(D, RefToks)
         catch 
            ?ERROR_MATCH(?A("XPDY0050")) -> ?err('FODC0001');
            ?ERROR_MATCH(?A("XPTY0020")) -> ?err('XPTY0004');
            ?ERROR_MATCH(?A("XPTY0019")) -> ?err('XPTY0004');
            _:E ->
               throw(E)
         end
   end.

%% Returns the sequence of element or attribute nodes with an IDREF value 
%% matching the value of one or more of the ID values supplied in $arg. 
%% fn:idref($arg as xs:string*) as node()*
-spec 'idref'(xq_types:context(),
              [] | xq_types:sequence(xq_types:xs_string())) ->
         [] | xq_types:sequence(xq_types:xml_node()).
'idref'(Ctx,Arg1) ->
   Node = xqerl_context:get_context_item(Ctx),
   'idref'(Ctx,Arg1,Node).

%% fn:idref($arg as xs:string*, $node as node()) as node()*
-spec 'idref'(xq_types:context(),
              [] | xq_types:sequence(xq_types:xs_string()),
              xq_types:xml_node()) ->
         [] | xq_types:sequence(xq_types:xml_node()).
'idref'(Ctx,Refs,Node) when not is_list(Refs) ->
   'idref'(Ctx,[Refs],Node);
'idref'(Ctx,Refs,[Node]) ->
   'idref'(Ctx,Refs,Node);
'idref'(Ctx,Refs, #{nk := _} = Node) -> % dtd-infoset dependency 
   case xqldb_xpath:ancestor_or_self_document_node(Node, {{'_','_','_'},[]}) of
      [] ->
         ?err('FODC0001');
      [D] ->
         RefF = fun(Val) ->
                      Norm = 'normalize-space'(Ctx, Val),
                      L = 'tokenize'(Ctx, Norm),
                      [xqerl_types:string_value(V) || V <- L]
                end,
         RefToks = lists:flatmap(RefF, Refs),
         try
            xqldb_xpath:idref(D, RefToks)
         catch 
            ?ERROR_MATCH(?A("XPDY0050")) -> ?err('FODC0001');
            ?ERROR_MATCH(?A("XPTY0020")) -> ?err('XPTY0004');
            ?ERROR_MATCH(?A("XPTY0019")) -> ?err('XPTY0004');
            _:E -> throw(E)
         end
   end.

%% Returns the value of the implicit timezone property from the dynamic context. 
%% fn:implicit-timezone() as xs:dayTimeDuration
-spec 'implicit-timezone'(xq_types:context()) ->
         xq_types:xs_dayTimeDuration().
'implicit-timezone'(_Ctx) ->
   ImpOs = xqerl_context:get_implicit_timezone(),
   ImpOsStr = xqerl_datetime:to_string(ImpOs, 'xs:dayTimeDuration'),
   xqerl_types:cast_as(?str(ImpOsStr), 'xs:dayTimeDuration').

%% Returns a sequence of positive integers giving the positions within the 
%% sequence $seq of items that are equal to $search. 
%% fn:index-of(
%%    $seq    as xs:anyAtomicType*,
%%    $search as xs:anyAtomicType) as xs:integer*
-spec 'index-of'(xq_types:context(),
                 [] | xq_types:sequence(xq_types:xs_anyAtomicType()),
                 xq_types:xs_anyAtomicType()) ->
         [] | xq_types:sequence(xq_types:xs_integer()).
'index-of'(_Ctx,[],_Arg2) -> [];
'index-of'(_Ctx,_Seq,[]) -> ?err('XPTY0004');
'index-of'(_Ctx,Seq,Arg2) -> 
   %{index,counter}
   Fun = fun(Elem,{List,Counter}) ->
               case catch xqerl_operators:equal(Elem, Arg2) of
                  true ->
                     {0,{[Counter|List], Counter + 1}};
                  _ ->
                     {0,{List, Counter + 1}}
               end
         end,
   {_,{Indexes,_}} = lists:mapfoldl(Fun, {[],1}, xqerl_seq3:to_list(Seq)),
   lists:reverse(Indexes).

%TODO collation
%% fn:index-of(
%%    $seq       as xs:anyAtomicType*,
%%    $search    as xs:anyAtomicType,
%%    $collation as xs:string) as xs:integer*
-spec 'index-of'(xq_types:context(),
                 [] | xq_types:sequence(xq_types:xs_anyAtomicType()),
                 xq_types:xs_anyAtomicType(),
                 xq_types:xs_string() | atom() | function()) ->
         [] | xq_types:sequence(xq_types:xs_integer()).
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
%% fn:innermost($nodes as node()*) as node()*
-spec 'innermost'(xq_types:context(),
                  [] | xq_types:sequence(xq_types:xml_node())) ->
         [] | xq_types:sequence(xq_types:xml_node()).
'innermost'(Ctx,Arg1) when not is_list(Arg1) -> 'innermost'(Ctx,[Arg1]) ;
'innermost'(_Ctx,Arg1) -> 
   %%    $nodes except $nodes/ancestor::node()
   try
      xqldb_mem_nodes:innermost(Arg1)
   catch 
      {error, non_node} -> ?err('XPTY0004');
      ?ERROR_MATCH(?A("XPTY0019")) -> ?err('XPTY0004');
      _:E -> throw(E)
   end.

%% Returns the prefixes of the in-scope namespaces for an element node. 
%% fn:in-scope-prefixes($element as element()) as xs:string*
-spec 'in-scope-prefixes'(xq_types:context(),
                          xq_types:xml_element()) ->
         [] | xq_types:sequence(xq_types:xs_string()).
'in-scope-prefixes'(Ctx, [Arg1]) ->
   'in-scope-prefixes'(Ctx, Arg1);
'in-scope-prefixes'(_Ctx, #{nk := _} = Node) -> 
   InScopeNs = xqldb_xpath:namespace_nodes(Node),
   Filt = fun({_,<<>>}) ->
                false;
             ({<<>>,<<>>}) ->
                false;
             ({<<>>,_}) ->
                {true, <<>>};
             ({P,_}) ->
                {true,#xqAtomicValue{type = 'xs:NCName', value = P}}
          end,
  %?dbg("in-scope-prefixes",InScopeNs),
   % xml is always in scope.
   lists:usort([#xqAtomicValue{type = 'xs:NCName', value = <<"xml">>}|
                  lists:filtermap(Filt, InScopeNs)]).

%% Returns a sequence constructed by inserting an item or a sequence of items 
%% at a given position within an existing sequence. 
%% fn:insert-before(
%%    $target   as item()*,
%%    $position as xs:integer,
%%    $inserts  as item()*) as item()*
-spec 'insert-before'(xq_types:context(),
                      [] | xq_types:sequence(xq_types:xq_item()),
                      xq_types:xs_integer(),
                      [] | xq_types:sequence(xq_types:xq_item())) ->
         [] | xq_types:sequence(xq_types:xq_item()).
'insert-before'(_Ctx,Target,Position,Inserts) ->
   Pos = xqerl_types:value(Position),
   xqerl_seq3:insert(Target,Inserts,Pos).

%% Converts a string containing an IRI into a URI according 
%% to the rules of [rfc3987]. 
%% fn:iri-to-uri($iri as xs:string?) as xs:string
-spec 'iri-to-uri'(xq_types:context(),
                   [] | xq_types:xs_string()) ->
         xq_types:xs_string().
'iri-to-uri'(_,[]) -> ?str(<<>>); 
'iri-to-uri'(_Ctx,Arg1) -> 
   Val = xqerl_types:string_value(Arg1),
   ?str(pct_encode3(Val)).

%% Reads an external resource containing JSON, and returns the result 
%% of parsing the resource as JSON. 
%% fn:json-doc($href as xs:string?) as item()?
-spec 'json-doc'(xq_types:context(),
                 [] | xq_types:xs_string()) ->
         [] | xq_types:xq_item().
'json-doc'(Ctx,Arg1) -> 
   'json-doc'(Ctx,Arg1,#{}).

%% fn:json-doc($href as xs:string?, $options as map(*)) as item()?
-spec 'json-doc'(xq_types:context(),
                 [] | xq_types:xs_string(),
                 xq_types:xq_map()) ->
         [] | xq_types:xq_item().
'json-doc'(_Ctx,[],_Arg2) -> [];
% ignore validate option
'json-doc'(Ctx,Arg1,#{?A("validate") := _} = Arg2) ->
   'json-doc'(Ctx,Arg1,maps:remove(?A("validate"),Arg2));
'json-doc'(#{'base-uri' := _BaseUri0} = Ctx,Href,Opts) -> 
   try
      % using utf8+ to disallow latin1
      Txt = 'unparsed-text'(Ctx, Href, <<"utf8+">>),
      ok = check_json_doc_opts(Opts),
      'parse-json'(Ctx,Txt,Opts)
   catch 
      ?ERROR_MATCH(?A("FOUT1190")) -> ?err('FOJS0001'); % invalid XML char
      ?ERROR_MATCH(?A("FORG0002")) -> ?err('FOUT1170');
      ?ERROR_MATCH(?A("XQST0046")) -> ?err('FOUT1170');
      _:#xqError{} = E -> throw(E);
      _:_:Stack -> 
         ?dbg("Stack",Stack),
         ?err('FOJS0001')
   end.
%%    Txt = 'unparsed-text'(Ctx,Arg1),
%%    'parse-json'(Ctx,Txt,Arg2).

% no escape and fallback
check_json_doc_opts(#{?A("escape") := {_,?bool(true)},
                      ?A("fallback") := _}) ->
   ?err('FOJS0005');
check_json_doc_opts(#{?A("fallback") := {_,#xqFunction{body = B} = Fx}}) ->
   Ty = #xqSeqType{type = #xqFunTest{kind = function,
                                     params = [#xqSeqType{type = 'xs:string',
                                                          occur = one}],
                                     type   = #xqSeqType{type = 'xs:string',
                                                         occur = one}}},
   case xqerl_types:instance_of(Fx, Ty) of
      true ->
         case B == fun xqerl_fn:concat/2 of
             true ->
               ?err('XPTY0004');
            _ ->
               ok
         end;
      _ ->
         ?err('XPTY0004')
   end;
check_json_doc_opts(_) ->
   ok.

%% Parses a string supplied in the form of a JSON text, returning the 
%% results in the form of an XML document node. 
%% fn:json-to-xml($json-text as xs:string?) as document-node()?
-spec 'json-to-xml'(xq_types:context(),
                    [] | xq_types:xs_string()) ->
         [] | xq_types:xml_document().
'json-to-xml'(Ctx,Arg1) -> 
   'json-to-xml'(Ctx,Arg1,#{}).

%% fn:json-to-xml(
%%    $json-text   as xs:string?,
%%    $options  as map(*)) as document-node()?
-spec 'json-to-xml'(xq_types:context(),
                    [] | xq_types:xs_string(),
                    xq_types:xq_map()) ->
         [] | xq_types:xml_document().
'json-to-xml'(_Ctx,[],_Arg2) -> [];
'json-to-xml'(Ctx,#xqAtomicValue{value = JSON},Arg2) ->
   'json-to-xml'(Ctx, JSON, Arg2);
'json-to-xml'(Ctx, JSON, Arg2) when is_binary(JSON) -> 
   ok = check_json_to_xml_opts(Arg2),
   Options = map_options_to_list(Ctx, Arg2),
   xqerl_json:string_to_xml(JSON, Options).

% no escape and fallback, same check as doc 
check_json_to_xml_opts(#{?A("escape") := {_,?bool(true)},
                         ?A("fallback") := _}) ->
   ?err('FOJS0005');
check_json_to_xml_opts(_) ->
   ok.

%% This function tests whether the language of $node, or the context item if 
%% the second argument is omitted, as specified by xml:lang attributes is the 
%% same as, or is a sublanguage of, the language specified by $testlang. 
%% fn:lang($testlang as xs:string?) as xs:boolean
-spec 'lang'(xq_types:context(),
             [] | xq_types:xs_string()) ->
         xq_types:xs_boolean().
'lang'(Ctx,Arg1) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'lang'(Ctx,Arg1,Ci).

%% fn:lang($testlang as xs:string?, $node as node()) as xs:boolean
-spec 'lang'(xq_types:context(),
             [] | xq_types:xs_string(),
             xq_types:xml_node()) ->
         xq_types:xs_boolean().
'lang'(_,[],_) -> ?bool(false);
'lang'(Ctx,Testlang0,[Node]) ->
   'lang'(Ctx,Testlang0,Node);
'lang'(_Ctx,Testlang0,#{nk := _} = Node) -> 
   try
     %?dbg("Testlang0",Testlang0),
      case xqldb_xpath:lang(Node) of
         [] ->
            ?bool(false);
         NStr ->
           %?dbg("NStr",NStr),
            Str = string:lowercase(NStr),
           %?dbg("Str",Str),
            Testlang = string:lowercase(xqerl_types:string_value(Testlang0)),
           %?dbg("Testlang",Testlang),
            Match = Str == Testlang orelse 
                      string:prefix(Str, <<Testlang/binary,"-">>) =/= nomatch,
            ?bool(Match)
      end
   catch 
      ?ERROR_MATCH(?A("XPDY0050")) -> ?err('FODC0001');
      ?ERROR_MATCH(?A("XPTY0019")) -> ?err('XPTY0004')
   end.

%% Returns the context size from the dynamic context. 
%% fn:last() as xs:integer
-spec 'last'(xq_types:context()) ->
         xq_types:xs_integer().
'last'(Ctx) ->
   case xqerl_context:get_context_size(Ctx) of
      F when is_function(F, 0) ->
         F();
      I ->
         I
   end.

%% Provides access to the public functions and global variables of a 
%% dynamically-loaded XQuery library module. 
%% fn:load-xquery-module($module-uri as xs:string) as map(*)
-spec 'load-xquery-module'(xq_types:context(),
                           xq_types:xs_string()) ->
         xq_types:xq_map().
'load-xquery-module'(Ctx, Arg1) -> 'load-xquery-module'(Ctx, Arg1, #{}).
%% fn:load-xquery-module($module-uri as xs:string, $options as map(*)) as map(*)
-spec 'load-xquery-module'(xq_types:context(),
                           xq_types:xs_string(),
                           xq_types:xq_map()) ->
         xq_types:xq_map().
'load-xquery-module'(_, <<>>, _) -> ?err('FOQM0001');
'load-xquery-module'(Ctx, ModUri, Opts) ->
   try
      xqerl_code_server:get_signatures(<<"Q{", ModUri/binary, "}">>)
   of
      {ok, {Mod, Funs, Vars}} ->
         Opts1 = parse_load_opts(
                   ['context-item',variables,
                    'vendor-options','xquery-version'], Opts, #{}),
         Ctx0 = remove_imports(Ctx),
         Ctx1 = maps:merge(Ctx0, Opts1),
         try
            Ctx2 = Mod:init(Ctx1),
            % check that any context item type matches
            CiType = proplists:get_value(context_item_type, Mod:static_props(), #xqSeqType{}),
            _ = case Opts1 of
                   #{'context-item' := {CI,_}} ->
                      try
                         xqerl_types:promote(CI, CiType)
                      catch
                         _:_ ->
                            ?err('FOQM0005')
                      end;
                   _ ->
                      ok
                end,
            VarsM = xqerl_map:construct(ok, [{?atm('xs:QName',QName#qname{namespace = ModUri}), maps:get(AtomName, Ctx2)} || 
                                             {QName, _, _, {_,AtomName}, _} <- Vars]),
            Funs1 = merge_function_map(ModUri, Ctx2, Funs, #{}),
            FunsM = xqerl_map:construct(ok,
                      [{K, xqerl_map:construct(ok,V)} || 
                       {K,V} <- maps:to_list(Funs1)]),
            xqerl_map:construct(ok,
                                [{<<"variables">>, VarsM},
                                 {<<"functions">>, FunsM}])
         catch
            ?ERROR_MATCH(?A("XPTY0004")) ->
               ?err('FOQM0005')
         end
   catch
      _:_:_->
         ?err('FOQM0002')
   end.

remove_imports(Ctx) ->
   maps:fold(fun(_, imported, A) ->
                   A;
                (K, V, A) ->
                   A#{K => V}
             end, #{}, Ctx).

merge_function_map(ModUri, Ctx, [{QName0,Type,Annos,{M,F,A},Arity,Params}|T], Mapped) ->
   QName = QName0#qname{namespace = ModUri},
   Key = ?atm('xs:QName',QName),
   Fun = #xqFunction{annotations = Annos,
                     name = QName,
                     arity = Arity,
                     params = Params,
                     type = Type,
                     body = close_context(Ctx,M,F,A),
                     external = false},
   Mapped1 = case Mapped of
                #{Key := V} ->
                   Mapped#{Key := [{Arity, Fun}|V]};
                _ ->
                   Mapped#{Key => [{Arity, Fun}]}
             end,
   merge_function_map(ModUri, Ctx, T, Mapped1);
merge_function_map(_, _, [], Mapped) ->
  Mapped.

parse_load_opts(['context-item'|T], #{<<"context-item">> := {_, V}} = O, M) ->
   parse_load_opts(T, O, M#{'context-item' => {V, 1}}); % item plus position
parse_load_opts([variables|T], #{<<"variables">> := {_, V}} = O, M) ->
   _ = xqerl_types:promote(V, #xqSeqType{type = #xqFunTest{kind = map,
                                            params = [#xqSeqType{type = 'xs:QName', occur = one}]}, occur = one}),
   F = fun({#xqAtomicValue{value = #qname{namespace = N,local_name = L}}, Val}) ->
             {true, {<<"Q{", N/binary, "}", L/binary>>, Val}};
          (_) ->
             ?err('XPTY0004')
       end,
   NVs = maps:from_list(lists:filtermap(F, maps:values(V))),
   parse_load_opts(T, O, maps:merge(M, NVs));
parse_load_opts(['vendor-options'|T], #{<<"vendor-options">> := {_, V}} = O, M) ->
   _ = xqerl_types:promote(V, #xqSeqType{type = #xqFunTest{kind = map,
                                            params = [#xqSeqType{type = 'xs:QName', occur = one}]}, occur = one}),
   parse_load_opts(T, O, M);
parse_load_opts(['xquery-version'|T], #{<<"xquery-version">> := {_, V}} = O, M) ->
   V1 = xqerl_types:promote(V, #xqSeqType{type = 'xs:decimal', occur = one}),
   _ = case xqerl_types:value(V1) of
          #xsDecimal{int = 31, scf = 1} -> ok;
          #xsDecimal{int = 3, scf = 0} -> ok;
          #xsDecimal{int = 1, scf = 0} -> ok;
          _ ->
            ?err('FOQM0006')
      end,
   parse_load_opts(T, O, M);

parse_load_opts([_|T], O, M) -> parse_load_opts(T, O, M);
parse_load_opts([], _, M) -> M.
   

%% Returns the local part of the name of $arg as an xs:string that is 
%% either the zero-length string, or has the lexical form of an xs:NCName. 
%% fn:local-name() as xs:string
-spec 'local-name'(xq_types:context()) ->
         xq_types:xs_string().
'local-name'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'local-name'(Ctx, Ci).

%% fn:local-name($arg as node()?) as xs:string
-spec 'local-name'(xq_types:context(),
                   [] | xq_types:xml_node()) ->
         xq_types:xs_string().
'local-name'(Ctx,Arg1) -> 
   QName = 'node-name'(Ctx,Arg1),
   case xqerl_types:value(QName) of
      #qname{local_name = L} ->
         ?str(L);
      [] ->
         ?str(<<>>);
      <<>> ->
         ?str(<<>>)
   end.

%% Returns the local part of the supplied QName. 
%% fn:local-name-from-QName($arg as xs:QName?) as xs:NCName?
-spec 'local-name-from-QName'(xq_types:context(),
                              [] | xq_types:xs_QName()) ->
         [] | xq_types:xs_NCName().
'local-name-from-QName'(_Ctx, []) -> [];
'local-name-from-QName'(_Ctx, Arg) ->
   case xqerl_types:value(Arg) of
      #qname{local_name = L} ->
         ?atm('xs:NCName',L);
      [] ->
         ?atm('xs:NCName',<<>>);
      undefined ->
         ?atm('xs:NCName',<<>>)
   end.

%% Converts a string to lower case. 
%% fn:lower-case($arg as xs:string?) as xs:string
-spec 'lower-case'(xq_types:context(),
                   [] | xq_types:xs_string()) ->
         xq_types:xs_string().
'lower-case'(_,[]) -> ?str(<<>>);
'lower-case'(Ctx,[Arg1]) -> 'lower-case'(Ctx,Arg1);
'lower-case'(_,#{nk := _} = Arg1) ->
   Str = string_value(Arg1),
   Upp = string:lowercase(Str),
   ?str(Upp);
'lower-case'(_, Val) when is_binary(Val) ->
   string:lowercase(Val);
'lower-case'(_,#xqAtomicValue{value = Val, type = Type}) ->
   case xqerl_types:subtype_of(Type, 'xs:string') of
      true ->
         Low = string:lowercase(Val),
         ?str(Low);
      _ -> 
         ?err('XPTY0004')
   end.   

%% Returns true if the supplied string matches a given regular expression. 
%% fn:matches($input as xs:string?, $pattern as xs:string) as xs:boolean
-spec 'matches'(xq_types:context(),
                [] | xq_types:xs_string(),
                xq_types:xs_string()) ->
         xq_types:xs_boolean().
'matches'(_Ctx,String,Pattern) ->
   'matches'(_Ctx,String,Pattern,?str(<<>>)).

%% fn:matches(
%%    $input    as xs:string?,
%%    $pattern  as xs:string,
%%    $flags    as xs:string) as xs:boolean
-spec 'matches'(xq_types:context(),
                [] | xq_types:xs_string(),
                xq_types:xs_string(),
                xq_types:xs_string()) ->
         xq_types:xs_boolean().
'matches'(Ctx,String,Pattern,Flags) ->
   Pattern1 = xqerl_types:value(Pattern),
   Flags1 = xqerl_types:string_value(Flags),
   % cache regex in ets 
   Key = {?MODULE,?FUNCTION_NAME,?FUNCTION_ARITY,Pattern1,Flags1},
   R = case cached(Ctx,Key) of
          undefined ->
             M = xs_regex:compile(Pattern1,Flags1),
             cache(Ctx,Key,M);
          G ->
             G
       end,
   case R of
      {error, {invalid_flag, _}} ->
         ?err('FORX0001');
      {error, _} ->
         ?err('FORX0002');
      {_,MP} ->
         Input1 = xqerl_types:value(String),
         case re:run(Input1, MP, [global]) of
            nomatch ->
               ?bool(false);
            _ ->
               ?bool(true)
         end
   end.

cached(#{tab := Tab}, Key) ->
   xqerl_lib:lget(Tab,Key).

cache(#{tab := Tab}, Key, Value) ->
   xqerl_lib:lput(Tab,Key,Value).

%% Returns a value that is equal to the highest value appearing in the 
%% input sequence. 
%% fn:max($arg as xs:anyAtomicType*) as xs:anyAtomicType?
-spec 'max'(xq_types:context(),
            [] | xq_types:sequence(xq_types:xs_anyAtomicType())) ->
         [] | xq_types:xs_anyAtomicType().
'max'(_Ctx,Arg1) -> 
   {Seq,SeqType} = compare_convert_seq(xqerl_seq3:to_list(Arg1), [], []),
   Max1 = max1(Seq, []),
   %?dbg("SeqType",SeqType),
   if ?xs_decimal(SeqType) ->
         Max1;
      ?xs_string(SeqType), element(2, Max1) == 'xs:anyURI' ->
         xqerl_types:cast_as(Max1, SeqType);
      ?xs_string(SeqType) ->
         Max1;
      ?xs_numeric(SeqType) ->
         xqerl_types:cast_as(Max1, SeqType);
      true ->
         Max1
   end.

%TODO collation
%% fn:max(
%%    $arg as xs:anyAtomicType*, 
%%    $collation as xs:string) as xs:anyAtomicType?
-spec 'max'(xq_types:context(),
            [] | xq_types:sequence(xq_types:xs_anyAtomicType()),
            xq_types:xs_string()) ->
         [] | xq_types:xs_anyAtomicType().
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
max1([nan = H|_], _) ->
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
min1([nan = H|_], _) ->
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
compare_convert_seq([[]|T], Acc, SeqType) ->
   compare_convert_seq(T, Acc, SeqType);
compare_convert_seq([#array{data = L}|T], Acc, SeqType) ->
   compare_convert_seq(L ++ T, Acc, SeqType);
compare_convert_seq([#{nk := _,
                       tv := Tv}|T], Acc, SeqType) ->
   compare_convert_seq([Tv|T], Acc, SeqType);
compare_convert_seq([#{nk := _} = H|T], Acc, SeqType) ->
   H1 = xqerl_seq3:singleton_value(xqerl_types:atomize(H)),
   compare_convert_seq([H1|T], Acc, SeqType);
compare_convert_seq([#xqAtomicValue{type = 'xs:untypedAtomic'} = H|T], 
                    Acc, SeqType) ->
   try xqerl_types:cast_as(H,'xs:double') of
      H1 ->
         if ?xs_numeric(SeqType) orelse SeqType == [] ->
               compare_convert_seq([H1|T], Acc, 'xs:double');
            true ->
               ?err('FORG0006')
         end
   catch 
      _:_ ->
         ?err('FORG0001')
   end;
compare_convert_seq([#xqAtomicValue{type = 'xs:anyURI'} = H|T], Acc, SeqType) ->
   if SeqType == [];
      SeqType == 'xs:anyURI' ->
         compare_convert_seq(T, [H|Acc], 'xs:anyURI');
      ?xs_string(SeqType) ->
         H1 = xqerl_types:cast_as(H,'xs:string'),
         compare_convert_seq(T, [H1|Acc], 'xs:string');
      true ->
         ?err('FORG0006')
   end;
compare_convert_seq([H|T], Acc, SeqType) 
   when is_binary(H), ?xs_string(SeqType);
        is_binary(H), SeqType == 'xs:anyURI';
        is_binary(H), SeqType == [] ->
   NewType = if SeqType == 'xs:string';
                SeqType == 'xs:anyURI';
                SeqType == [] ->
                   'xs:string';
                true ->
                   BType = xqerl_btypes:get_type('xs:string'),
                   BSeqType = xqerl_btypes:get_type(SeqType),
                   xqerl_btypes:get_type(BType band BSeqType)
             end,
   if NewType == 'item' ->
         ?err('FORG0006');
      true ->
         compare_convert_seq(T, [H|Acc], NewType)
   end;
compare_convert_seq([H|_], _Acc, _SeqType) when is_binary(H) ->
   ?err('FORG0006');
compare_convert_seq([#xqAtomicValue{type = StrType} = H|T], Acc, SeqType) 
   when ?xs_string(StrType), 
        ?xs_string(SeqType) orelse SeqType == 'xs:anyURI' ->
   NewType = if SeqType == 'xs:string' ->
                   SeqType;
                SeqType == 'xs:anyURI' ->
                   'xs:string';
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
compare_convert_seq([H|T], Acc, SeqType) 
   when is_integer(H), ?xs_integer(SeqType) ->
   NewType = 'xs:integer',
   compare_convert_seq(T, [H|Acc], NewType);
compare_convert_seq([#xqAtomicValue{type = StrType} = H|T], Acc, SeqType) 
   when ?xs_integer(StrType), 
        ?xs_integer(SeqType) ->
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
compare_convert_seq([H|T], Acc, _) when is_float(H);
                                        H == neg_zero;
                                        H == infinity;
                                        H == nan;
                                        H == neg_infinity ->
   compare_convert_seq(T, [H|Acc], 'xs:double');
compare_convert_seq([#xqAtomicValue{type = 'xs:float'} = H|T], Acc, SeqType) ->
   if SeqType =:= 'xs:float' orelse 
        SeqType =:= 'xs:decimal' orelse 
        ?xs_integer(SeqType) orelse 
        SeqType =:= [] ->
         compare_convert_seq(T, [H|Acc], 'xs:float');
      SeqType =:= 'xs:double' ->
         compare_convert_seq(T, [H|Acc], 'xs:double');
      true ->
         ?err('FORG0006')
   end;
compare_convert_seq([#xqAtomicValue{type = 'xs:decimal'} = H|T], Acc,SeqType) ->
   if SeqType =:= 'xs:decimal' orelse 
        ?xs_integer(SeqType) orelse 
        SeqType =:= [] ->
         compare_convert_seq(T, [H|Acc], 'xs:decimal');
      SeqType =:= 'xs:float' ->
         compare_convert_seq(T, [H|Acc], 'xs:float');
      SeqType =:= 'xs:double' ->
         compare_convert_seq(T, [H|Acc], 'xs:double');
      true ->
         ?err('FORG0006')
   end;
compare_convert_seq([H|T], Acc,SeqType) when is_integer(H) ->
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
compare_convert_seq([H|T], Acc, SeqType) when is_boolean(H) ->
   Type = 'xs:boolean',
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
%% fn:min($arg as xs:anyAtomicType*) as xs:anyAtomicType?
-spec 'min'(xq_types:context(),
            [] | xq_types:sequence(xq_types:xs_anyAtomicType())) ->
         [] | xq_types:xs_anyAtomicType().
'min'(_,Arg1) -> 
   {Seq,SeqType} = compare_convert_seq(xqerl_seq3:to_list(Arg1), [], []),
   Min1 = min1(Seq, []),
   if ?xs_decimal(SeqType) ->
         Min1;
      ?xs_string(SeqType), element(2, Min1) == 'xs:anyURI' ->
         xqerl_types:cast_as(Min1, SeqType);
      ?xs_string(SeqType) ->
         Min1;
      ?xs_numeric(SeqType) ->
         xqerl_types:cast_as(Min1, SeqType);
      true ->
         Min1
   end.

%TODO collation
%% fn:min(
%%    $arg as xs:anyAtomicType*, 
%%    $collation as xs:string) as xs:anyAtomicType?
-spec 'min'(xq_types:context(),
            [] | xq_types:sequence(xq_types:xs_anyAtomicType()),
            xq_types:xs_string()) ->
         [] | xq_types:xs_anyAtomicType().
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
%% fn:minutes-from-dateTime($arg as xs:dateTime?) as xs:integer?
-spec 'minutes-from-dateTime'(xq_types:context(),
                              [] | xq_types:xs_dateTime()) -> 
         [] | xq_types:xs_integer().
'minutes-from-dateTime'(Ctx,Arg1) -> 
   'minutes-from-duration'(Ctx, Arg1).

%% Returns the number of minutes in a duration. 
%% fn:minutes-from-duration($arg as xs:duration?) as xs:integer?
-spec 'minutes-from-duration'(xq_types:context(),
                              [] | xq_types:xs_duration()) -> 
         [] | xq_types:xs_integer().
'minutes-from-duration'(_, []) -> [];
'minutes-from-duration'(Ctx, [Arg1]) -> 'minutes-from-duration'(Ctx, Arg1);
'minutes-from-duration'(_, #xqAtomicValue{value = #xsDateTime{sign = '-',
                                                              minute = Mi}}) ->
   ?atint(-Mi);
'minutes-from-duration'(_, #xqAtomicValue{value = #xsDateTime{minute = Mi}}) ->
   ?atint(Mi).

%% Returns the minutes component of an xs:time. 
%% fn:minutes-from-time($arg as xs:time?) as xs:integer?
-spec 'minutes-from-time'(xq_types:context(),
                          [] | xq_types:xs_time()) -> 
         [] | xq_types:xs_integer().
'minutes-from-time'(Ctx,Arg1) -> 
   'minutes-from-dateTime'(Ctx, Arg1).

%% Returns the month component of an xs:date. 
%% fn:month-from-date($arg as xs:date?) as xs:integer?
-spec 'month-from-date'(xq_types:context(),
                        [] | xq_types:xs_date()) -> 
         [] | xq_types:xs_integer().
'month-from-date'(Ctx,Arg1) -> 
   'month-from-dateTime'(Ctx, Arg1).

%% Returns the month component of an xs:dateTime. 
%% fn:month-from-dateTime($arg as xs:dateTime?) as xs:integer?
-spec 'month-from-dateTime'(xq_types:context(),
                            [] | xq_types:xs_dateTime()) -> 
         [] | xq_types:xs_integer().
'month-from-dateTime'(_,[]) -> [];
'month-from-dateTime'(Ctx,[Arg1]) -> 'month-from-dateTime'(Ctx,Arg1);
'month-from-dateTime'(_,#xqAtomicValue{value = #xsDateTime{month = Mo}}) -> 
   ?atint(Mo).

%% Returns the number of months in a duration. 
%% fn:months-from-duration($arg as xs:duration?) as xs:integer?
-spec 'months-from-duration'(xq_types:context(),
                             [] | xq_types:xs_duration()) -> 
         [] | xq_types:xs_integer().
'months-from-duration'(_, []) -> [];
'months-from-duration'(Ctx, [Arg1]) -> 'months-from-duration'(Ctx, Arg1);
'months-from-duration'(_, #xqAtomicValue{value =  #xsDateTime{sign = '-',
                                                              month = Mo}}) ->
   ?atint(-Mo);
'months-from-duration'(_, #xqAtomicValue{value = #xsDateTime{month = Mo}}) ->
   ?atint(Mo).

%% Returns the name of a node, as an xs:string that is either the 
%% zero-length string, or has the lexical form of an xs:QName. 
%% fn:name() as xs:string
-spec 'name'(xq_types:context()) -> 
         xq_types:xs_string().
'name'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'name'(Ctx, Ci).

%% fn:name($arg as node()?) as xs:string
-spec 'name'(xq_types:context(),
             [] | xq_types:xml_node()) -> 
         xq_types:xs_string().
'name'(Ctx,Arg1) -> 
   Q = 'node-name'(Ctx,Arg1),
   case xqerl_types:cast_as( Q, 'xs:string' ) of
      [] ->
         ?str(<<>>);
      S ->
         S
   end.

%% Returns the namespace URI part of the name of $arg, as an xs:anyURI value. 
%% fn:namespace-uri() as xs:anyURI
-spec 'namespace-uri'(xq_types:context()) -> 
                      xq_types:xs_anyURI().
'namespace-uri'(Ctx) -> 
   Item = xqerl_context:get_context_item(Ctx),
   'namespace-uri'(Ctx,Item).

%% fn:namespace-uri($arg as node()?) as xs:anyURI
-spec 'namespace-uri'(xq_types:context(),
                      [] | xq_types:xml_node()) -> 
         xq_types:xs_anyURI().
'namespace-uri'(_Ctx,[]) -> ?atm('xs:anyURI',<<>>);
'namespace-uri'(_Ctx,[Arg1]) ->
   'namespace-uri'(_Ctx,Arg1);
'namespace-uri'(_Ctx, #{nk := Nk} = Node) ->
   case xqldb_mem_nodes:node_name(Node) of
      [] ->
         ?atm('xs:anyURI',<<>>);
      _ when Nk == namespace ->
         ?atm('xs:anyURI',<<>>);
      {<<>>,_,_} ->
         ?atm('xs:anyURI',<<>>);
      {Uri,_,_} ->
         ?atm('xs:anyURI',Uri)
   end.

%% Returns the namespace URI of one of the in-scope namespaces for $element, 
%% identified by its namespace prefix. 
%% fn:namespace-uri-for-prefix(
%%    $prefix   as xs:string?,
%%    $element  as element()) as xs:anyURI?
-spec 'namespace-uri-for-prefix'(xq_types:context(),
                                 [] | xq_types:xs_string(),
                                 xq_types:xml_element()) -> 
         xq_types:xs_anyURI().
'namespace-uri-for-prefix'(Ctx,Prefix,[Element]) ->
   'namespace-uri-for-prefix'(Ctx,Prefix,Element);
'namespace-uri-for-prefix'(_Ctx, Prefix, #{nk := _} = Node) -> 
   P1 = xqerl_types:string_value(Prefix),
   InScopeNs = xqldb_xpath:namespace_nodes(Node),
  %?dbg("InScopeNs",InScopeNs),
   case lists:keyfind(P1, 1, InScopeNs) of
      false when P1 == <<"xml">> ->
         ?atm('xs:anyURI', <<"http://www.w3.org/XML/1998/namespace">>);
      false ->
         [];
      {_,<<>>} ->
         [];
      {_,Ns} ->
         ?atm('xs:anyURI', Ns)
   end.

%% Returns the namespace URI part of the supplied QName. 
%% fn:namespace-uri-from-QName($arg as xs:QName?) as xs:anyURI?
-spec 'namespace-uri-from-QName'(xq_types:context(),
                                 [] | xq_types:xs_QName()) -> 
         [] | xq_types:xs_anyURI().
'namespace-uri-from-QName'(_,[]) -> [];
'namespace-uri-from-QName'(_Ctx,Arg1) ->
   case xqerl_types:value(Arg1) of
      #qname{namespace = 'no-namespace'} ->
         ?atm('xs:anyURI',<<>>);
      #qname{namespace = Uri} ->
         ?atm('xs:anyURI',Uri);
      <<>> ->
         ?atm('xs:anyURI',<<>>);
      undefined ->
         ?atm('xs:anyURI',<<>>)
   end.   

%% Returns true for an element that is nilled. 
%% fn:nilled() as xs:boolean?
-spec 'nilled'(xq_types:context()) -> 
         [] | xq_types:xs_boolean().
'nilled'(Ctx) ->
   'nilled'(Ctx,xqerl_context:get_context_item(Ctx)).

%% fn:nilled($arg as node()?) as xs:boolean?
-spec 'nilled'(xq_types:context(),
               [] | xq_types:xml_node()) -> 
         [] | xq_types:xs_boolean().
'nilled'(_,[]) -> [];
'nilled'(C,[Node]) -> 'nilled'(C,Node);
'nilled'(_, #{nk := Nk}) ->
   case Nk of
      element ->
         ?bool(false);
      _ ->
         []
   end.

%% Returns the name of a node, as an xs:QName. 
%% fn:node-name() as xs:QName?
-spec 'node-name'(xq_types:context()) -> 
         [] | xq_types:xs_QName().
'node-name'(Ctx) ->
   'node-name'(Ctx, xqerl_context:get_context_item(Ctx)).

%% fn:node-name($arg as node()?) as xs:QName?
-spec 'node-name'(xq_types:context(),
                  [] | xq_types:xml_node()) -> 
         [] | xq_types:xs_QName().
'node-name'(_Ctx, []) -> [];
'node-name'(Ctx, [Arg]) ->
   'node-name'(Ctx, Arg);
'node-name'(_Ctx, #{nk := Nk,
                    nn := NodeName}) ->
   %?dbg("Node",Node),
   case NodeName of
      {<<>>,<<>>,<<>>} ->
         [];
      {_,Px,_} when Nk == namespace ->
         Q = #qname{namespace = 'no-namespace', prefix = <<>>, local_name = Px},
         ?atm('xs:QName',Q);
      {<<>>,Px,Ln} ->
         Q = #qname{namespace = 'no-namespace', prefix = Px, local_name = Ln},
         ?atm('xs:QName',Q);
      {Ns,Px,Ln} ->
         Q = #qname{namespace = Ns, prefix = Px, local_name = Ln},
         ?atm('xs:QName',Q)
   end;
'node-name'(_Ctx, #{nk := _}) -> [];
'node-name'(_Ctx, _) -> ?err('XPTY0004').

%% Returns the value of $arg with leading and trailing whitespace removed, 
%% and sequences of internal whitespace reduced to a single space character. 
%% fn:normalize-space() as xs:string
-spec 'normalize-space'(xq_types:context()) ->
         xq_types:xs_string().
'normalize-space'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'normalize-space'(Ctx, Ci).

%% fn:normalize-space($arg as xs:string?) as xs:string
-spec 'normalize-space'(xq_types:context(),
                        [] | xq_types:xs_string()) ->
         xq_types:xs_string().
'normalize-space'(_,[]) -> ?str(<<>>); 
'normalize-space'(_Ctx,Arg1) -> 
   StrVal = xqerl_types:string_value(Arg1),
   if StrVal =:= <<>> -> ?str(<<>>);
      true ->
         Trimmed = xqerl_lib:trim(StrVal),
         if StrVal =:= <<>> -> ?str(<<>>);
            true ->
               Rep = shrink_spaces(Trimmed),
               ?str(Rep)
         end
   end.

shrink_spaces(<<>>) -> <<>>;
shrink_spaces(<<WS,T/binary>>) when WS =:= 31;
                                    WS =:= 10;
                                    WS =:= 9 ->
   shrink_spaces(<<32,T/binary>>);
shrink_spaces(<<32,WS,T/binary>>) when WS =:= 32;
                                       WS =:= 31;
                                       WS =:= 10;
                                       WS =:= 9 ->
   shrink_spaces(<<32,T/binary>>);
shrink_spaces(<<H,T/binary>>) ->
   <<H,(shrink_spaces(T))/binary>>.

%% Returns the value of $arg after applying Unicode normalization. 
%% fn:normalize-unicode($arg as xs:string?) as xs:string
-spec 'normalize-unicode'(xq_types:context(),
                          [] | xq_types:xs_string()) ->
         xq_types:xs_string().
'normalize-unicode'(_,[]) -> ?str(<<>>); 
'normalize-unicode'(Ctx,Arg1) -> 
   'normalize-unicode'(Ctx,Arg1,?str(?A("NFC"))).

%% fn:normalize-unicode(
%%    $arg               as xs:string?,
%%    $normalizationForm as xs:string) as xs:string
-spec 'normalize-unicode'(xq_types:context(),
                          [] | xq_types:xs_string(),
                          xq_types:xs_string()) ->
         xq_types:xs_string().
'normalize-unicode'(_,[],_) -> ?str(<<>>); 
'normalize-unicode'(Ctx,Arg1,NormalizationForm) -> 
   Norm = 'normalize-space'(Ctx,NormalizationForm),
   Upper = 'upper-case'(Ctx,Norm),
   Form1 = xqerl_types:string_value(Upper),
   Str = xqerl_types:string_value(Arg1),
   case Form1 of
      ?A("NFC") ->
         ?str(unicode:characters_to_nfc_binary(Str));
      ?A("NFD") ->
         ?str(unicode:characters_to_nfd_binary(Str));
      ?A("NFKC") ->
         ?str(unicode:characters_to_nfkc_binary(Str));
      ?A("NFKD") ->
         ?str(unicode:characters_to_nfkd_binary(Str));
      ?A("FULLY-NORMALIZED") ->
         % turned off due to not wanting to implement - 
         % Composition Exclusion Table defined in [UAX #15];
         ?err('FOCH0003');
      <<>> ->
         Arg1;
      _ ->
         ?err('FOCH0003')
   end.

%% Returns true if the effective boolean value of $arg is false, 
%% or false if it is true. 
%% fn:not($arg as item()*) as xs:boolean
-spec 'not'(xq_types:context(),
           [] | xq_types:sequence(xq_types:xq_item())) ->
         xq_types:xs_boolean().
'not'(_,Arg1) -> 
   case xqerl_operators:eff_bool_val(Arg1) of
      true ->
         ?bool(false);
      false ->
         ?bool(true)
   end.

%% Returns the value indicated by $arg or, if $arg is not specified, 
%% the context item after atomization, converted to an xs:double. 
%% fn:number() as xs:double
-spec 'number'(xq_types:context()) ->
         xq_types:xs_double().
'number'(Ctx) ->
   Val = xqerl_context:get_context_item(Ctx),
   'number'([], Val).

%% fn:number($arg as xs:anyAtomicType?) as xs:double
-spec 'number'(xq_types:context(),
               [] | xq_types:xs_anyAtomicType()) ->
         xq_types:xs_double().
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
%% fn:one-or-more($arg as item()*) as item()+
-spec 'one-or-more'(xq_types:context(),
                    [] | xq_types:sequence(xq_types:xq_item())) ->
         xq_types:sequence(xq_types:xq_item()).
'one-or-more'(_,[]) -> ?err('FORG0004'); 
'one-or-more'(_,Arg1) -> Arg1.

%% Returns every node within the input sequence that has no ancestor that 
%% is itself a member of the input sequence; 
%% the nodes are returned in document order with duplicates eliminated. 
%% fn:outermost($nodes as node()*) as node()*
-spec 'outermost'(xq_types:context(),
                  [] | xq_types:sequence(xq_types:xml_node())) ->
         [] | xq_types:sequence(xq_types:xml_node()).
'outermost'(Ctx,Arg1) when not is_list(Arg1) -> 'outermost'(Ctx,[Arg1]) ;
'outermost'(_Ctx,Arg1) -> 
   %%    $nodes[not(ancestor::node() intersect $nodes)]/.
   try
      xqldb_mem_nodes:outermost(Arg1)
   catch 
      {error, non_node} -> ?err('XPTY0004');
      ?ERROR_MATCH(?A("XPTY0019")) -> ?err('XPTY0004');
      _:E -> throw(E)
   end.

%% Parses a string containing the date and time in IETF format, returning the 
%% corresponding xs:dateTime value. 
%% fn:parse-ietf-date($value as xs:string?) as xs:dateTime?
-spec 'parse-ietf-date'(xq_types:context(),
                        [] | xq_types:xs_string()) ->
         [] | xq_types:xs_dateTime().
'parse-ietf-date'(_Ctx,[]) ->  [];
'parse-ietf-date'(_Ctx,Arg1) -> 
   Str = xqerl_types:string_value(Arg1),
   Strip = unicode:characters_to_list(xqerl_lib:trim(Str)),
   try 
      {ok,L,_} = ietf_date:string(Strip),
     %?dbg("L",L),
      {ok,Dt} = ietf_date_parse:parse(L),
     %?dbg("Dt",Dt),
      true = xqerl_datetime:ymd_is_valid(Dt#xsDateTime.year, 
                                         Dt#xsDateTime.month, 
                                         Dt#xsDateTime.day),
      DtStr = xqerl_datetime:to_string(Dt, 'xs:dateTime'),
      ?atm('xs:dateTime', Dt#xsDateTime{string_value = DtStr})
   catch
      _:Err:St -> 
         ?dbg("{Err,St}",{Err,St}),
         ?err('FORG0010')
   end.

%% Parses a string supplied in the form of a JSON text, returning the 
%% results typically in the form of a map or array. 
%% fn:parse-json($json-text as xs:string?) as item()?
-spec 'parse-json'(xq_types:context(),
                   [] | xq_types:xs_string()) ->
         [] | xq_types:xq_item().
'parse-json'(Ctx,Arg1) -> 
   'parse-json'(Ctx,Arg1,#{}).

% fn:parse-json($json-text as xs:string?, $options as map(*)) as item()?
-spec 'parse-json'(xq_types:context(),
                   [] | xq_types:xs_string(),
                   xq_types:xq_map()) ->
         [] | xq_types:xq_item().
'parse-json'(_Ctx,[],_Arg2) -> [];
'parse-json'(_Ctx, <<"null">>, _Arg2) -> [];
'parse-json'(Ctx, JSON, Arg2) when is_binary(JSON) -> 
   Options = map_options_to_list(Ctx, Arg2),
   xqerl_json:string(JSON, Options).

get_bool(B) when is_boolean(B) ->
   B;
get_bool(_) ->
   ?err('XPTY0004').

get_str(B) when is_binary(B) ->
   B;
get_str(#{nk := _} = N) ->
   xqerl_types:string_value(N);
get_str([O]) -> get_str(O);
get_str(_) ->
   ?err('XPTY0004').

map_options_to_list(#{'base-uri' := BaseUri} = Ctx, Map) ->
   Liberal    = maps:get(?A("liberal"), Map, []),
   Duplicates = maps:get(?A("duplicates"), Map, []),
   Escape     = maps:get(?A("escape"), Map, []),
   Fallback   = maps:get(?A("fallback"), Map, []),
   Validate   = maps:get(?A("validate"), Map, []),
   Indent     = maps:get(?A("indent"), Map, []),
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
          if Dup == ?A("retain") ->
                {duplicates, retain};
             Dup == ?A("reject") ->
                {duplicates, reject};
             Dup == ?A("use-first") ->
                {duplicates, use_first};
             Dup == ?A("use-last") ->
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
%% fn:parse-xml($arg as xs:string?) as document-node(element(*))?
-spec 'parse-xml'(xq_types:context(),
                   [] | xq_types:xs_string()) ->
         [] | xq_types:xml_document().
'parse-xml'(_,[]) -> [];
'parse-xml'(#{'base-uri' := BaseUri} = Ctx,Arg1) ->
   String = xqerl_types:string_value(Arg1),
   if String =:= <<>> ->
         xqerl_node:new_fragment(Ctx, []);
      true ->
         BaseUri1 = xqerl_types:string_value(BaseUri),
         try
            Cwd = case 
                     catch(filename:dirname(
                             xqldb_lib:uri_to_filename(BaseUri1)))
                     of
                     {'EXIT',_} ->
                        [];
                     C ->
                        C
                  end,
            xqldb_mem_nodes:parse_binary(String, {Cwd, BaseUri1})
         catch 
            _:E:S ->
               ?dbg("E",E),
               ?dbg("S",S),
               ?err('FODC0006')
         end
   end.

%% This function takes as input an XML external entity represented as a string,
%% and returns the document node at the root of an XDM tree representing the 
%% parsed document fragment. 
%% fn:parse-xml-fragment($arg as xs:string?) as document-node()?
-spec 'parse-xml-fragment'(xq_types:context(),
                           [] | xq_types:xs_string()) ->
         [] | xq_types:xml_document().
'parse-xml-fragment'(_,[]) -> [];
'parse-xml-fragment'(Ctx,Arg1) -> 
   String = trim_declaration(xqerl_types:string_value(Arg1)),
   String1 = <<"<x>",String/binary,"</x>">>,
   Doc = 'parse-xml'(Ctx, ?str(String1)),
   #{ch := [#{ch := Ch}]} = Doc,
   Doc#{ch => Ch}.

trim_declaration(<<"<?xml",Rest/binary>>) ->
   trim_declaration_1(Rest, false);
trim_declaration(Rest) -> Rest.

trim_declaration_1(<<"?>",Rest/binary>>, true) -> Rest;
trim_declaration_1(<<"?>",_/binary>>, false) -> ?err('FODC0006');
trim_declaration_1(<<"standalone",_/binary>>, _) -> ?err('FODC0006');
trim_declaration_1(<<"encoding",Rest/binary>>, _) -> trim_declaration_1(Rest, true);
trim_declaration_1(<<_/utf8,Rest/binary>>, V) -> trim_declaration_1(Rest, V);
trim_declaration_1(<<>>, _) -> <<>>.

%% Returns a path expression that can be used to select the supplied node 
%% relative to the root of its containing document. 
%% fn:path() as xs:string?
-spec 'path'(xq_types:context()) ->
         [] | xq_types:xs_string().
'path'(Ctx) ->
   Ci = xqerl_context:get_context_item(Ctx),
   'path'(Ctx, Ci).

%% fn:path($arg as node()?) as xs:string?
-spec 'path'(xq_types:context(),
             [] | xq_types:xml_node()) ->
         [] | xq_types:xs_string().
'path'(_,[]) -> [];
'path'(Ctx,[Arg1]) -> 'path'(Ctx,Arg1);
'path'(_Ctx, #{nk := _} = Node) ->
   case xqldb_mem_nodes:node_kind(Node) of
      document ->
         ?str(?A("/"));
      _ ->
         Path = xqldb_xpath:document_order(xqldb_xpath:ancestor_or_self_node(Node, {[]})),
        %?dbg("Path",length(Path)),
         path_1(Path,[],xqldb_xpath:parent_node(Node, {[]}))
   end;
'path'(_,_) -> 
   ?err('XPTY0004').

path_1([], String, _) -> ?str(String);
path_1([Root|Rest], [], _) ->
   case xqldb_mem_nodes:node_kind(Root) of
      document ->
         path_1(Rest,?A("/"), Root);
      _ ->
         path_1(Rest,?A("Q{http://www.w3.org/2005/xpath-functions}root()"), Root)
   end;
path_1([Node|Rest],Acc, Parent) ->
   Kind = xqldb_mem_nodes:node_kind(Node),
   path_2(Kind, [Node|Rest],Acc, Parent).

path_2(element,[#{id := NId} = Node|Rest],Acc, Parent) ->
   {Ns,_,Ln} = xqldb_mem_nodes:node_name(Node),
   Pre = [N || 
          #{id := Id} = N <- xqldb_xpath:child_element(Parent, {{Ns,Ln,'_'},[]}),
          Id < NId],
   Pos = length(Pre) + 1,
   Str = <<"Q{", Ns/binary, "}", Ln/binary, "[", (integer_to_binary(Pos))/binary, "]">>,
   NewAcc = if Acc == ?A("/") ->
                  <<Acc/binary, Str/binary>>;
               true ->
                  <<Acc/binary, "/", Str/binary>>
            end,
   path_1(Rest,NewAcc, Node);
path_2(attribute,[Node|Rest],Acc, _) ->
   {Ns,_,Ln} = xqldb_mem_nodes:node_name(Node),
   Str = if Ns == <<>> -> 
               <<"@", Ln/binary>>;
            true -> 
               <<"@Q{", Ns/binary, "}", Ln/binary>>
         end,
   NewAcc = if Acc == ?A("/") ->
                  <<Acc/binary, Str/binary>>;
               true ->
                  <<Acc/binary, "/", Str/binary>>
            end,
   path_1(Rest,NewAcc, []);
path_2(text,[#{id := NId}|Rest],Acc, Parent) ->
   Pre = [N || 
          #{id := Id} = N <- xqldb_xpath:child_text(Parent, {[]}),
          Id < NId],
   Pos = length(Pre) + 1,
   Str = <<"text()[", (integer_to_binary(Pos))/binary, "]">> ,
   NewAcc = if Acc == ?A("/") ->
                  <<Acc/binary, Str/binary>>;
               true ->
                  <<Acc/binary, "/", Str/binary>>
            end,
   path_1(Rest,NewAcc, []);
path_2(comment,[#{id := NId}|Rest],Acc, Parent) ->
   Pre = [N || 
          #{id := Id} = N <- xqldb_xpath:child_comment(Parent, {[]}),
          Id < NId],
   Pos = length(Pre) + 1,
   Str = <<"comment()[", (integer_to_binary(Pos))/binary, "]">> ,
   NewAcc = if Acc == ?A("/") ->
                  <<Acc/binary, Str/binary>>;
               true ->
                  <<Acc/binary, "/", Str/binary>>
            end,
   path_1(Rest,NewAcc, []);
path_2('processing-instruction',[#{id := NId} = Node|Rest],Acc, Parent) ->
   {_,_,Ln} = xqldb_mem_nodes:node_name(Node),
   Pre = [N || 
          #{id := Id} = N <- xqldb_xpath:child_processing_instruction(Parent, {{Ln},[]}),
          Id < NId],
   Pos = length(Pre) + 1,
   Str = <<"processing-instruction(", Ln/binary,")[",(integer_to_binary(Pos))/binary,"]">>,
   NewAcc = if Acc == ?A("/") ->
                  <<Acc/binary,Str/binary>>;
               true ->
                  <<Acc/binary,"/",Str/binary>>
            end,
   path_1(Rest,NewAcc, []).
%% ;
%% path_2(namespace,[Node|Rest],Acc) ->
%%    Str = case xqldb_mem_nodes:node_name(Node) of
%%             {_,_,<<>>} ->
%%                ?A("namespace::*[Q{http://www.w3.org/2005/xpath-functions}local-name()=\"\"]");
%%             {_,_,Px} ->
%%                <<"namespace::",Px/binary>>
%%          end,
%%    NewAcc = if Acc == ?A("/") ->
%%                   <<Acc/binary,Str/binary>>;
%%                true ->
%%                   <<Acc/binary,"/",Str/binary>>
%%             end,
%%    path_1(Doc,Rest,NewAcc).

%% Returns the context position from the dynamic context. 
%% fn:position() as xs:integer
-spec 'position'(xq_types:context()) ->
         [] | xq_types:xs_integer().
'position'(Ctx) -> 
   xqerl_context:get_context_position(Ctx).

%% Returns the prefix component of the supplied QName. 
%% fn:prefix-from-QName($arg as xs:QName?) as xs:NCName?
-spec 'prefix-from-QName'(xq_types:context(),
                          [] | xq_types:xs_QName()) ->
         [] | xq_types:xs_NCName().
'prefix-from-QName'(_Ctx,[]) -> [] ;
'prefix-from-QName'(_Ctx,Arg) -> 
   #qname{prefix = L} = xqerl_types:value(Arg),
   if L =:= <<>> ->
         [];
      true ->
         #xqAtomicValue{type = 'xs:NCName', value = L}
   end.

%% Returns an xs:QName value formed using a supplied namespace 
%% URI and lexical QName. 
%% fn:QName($paramURI as xs:string?, $paramQName as xs:string) as xs:QName
-spec 'QName'(xq_types:context(),
              [] | xq_types:xs_string(),
              xq_types:xs_string()) ->
         [] | xq_types:xs_QName().
'QName'(Ctx,[],QNameTxt) ->
   'QName'(Ctx,?str(<<>>),QNameTxt);
'QName'(_Ctx,Uri,QNameTxt) ->
   case string_value(QNameTxt) of
      <<>> ->
         ?err('FOCA0002');
      Str ->
         StrUri = ns_from_str(string_value(Uri)),
         {Prefix, Local} = pre_loc_from_str(Str),
         if Prefix =/= <<>>, StrUri == 'no-namespace' ->
               ?err('FOCA0002');
            StrUri == ?A("http://www.w3.org/XML/1998/namespace"),
            Prefix == <<>> ->
               ?atm('xs:QName',#qname{namespace = StrUri,
                                      prefix = ?A("xml"),
                                      local_name = Local});
            true ->
               ?atm('xs:QName',#qname{namespace = StrUri,
                                      prefix = Prefix,
                                      local_name = Local})
         end
   end.

ns_from_str('no-namespace') -> 'no-namespace';
ns_from_str(<<>>) -> 'no-namespace';
ns_from_str(Uri) -> Uri.

pre_loc_from_str(Str) ->
   case catch xqerl_types:scan_ncname(Str) of
      {'EXIT',_} ->
         ?err('FOCA0002');
      {P, L} ->
         {P, L};
      L ->
         {<<>>, L}
   end.

%% Returns a random number generator, which can be used to generate 
%% sequences of random numbers. 
%% fn:random-number-generator() as map(xs:string, item())
-spec 'random-number-generator'(xq_types:context()) ->
         xq_types:xq_map(xq_types:xs_string(),xq_types:xq_item()).
'random-number-generator'(Ctx) -> 
   'random-number-generator'(Ctx, 31.13).

%% fn:random-number-generator(
%%    $seed  as xs:anyAtomicType?) as map(xs:string, item())
-spec 'random-number-generator'(xq_types:context(),
                                [] | xq_types:xs_anyAtomicType()) ->
         xq_types:xq_map(xq_types:xs_string(),xq_types:xq_item()).
'random-number-generator'(Ctx,[]) ->
   'random-number-generator'(Ctx, 31.13);
'random-number-generator'(Ctx,#xqAtomicValue{value = Seed}) 
   when not is_integer(Seed), 
        not is_float(Seed) ->
   'random-number-generator'(Ctx, erlang:phash2(Seed));
'random-number-generator'(Ctx, Seed) 
   when not is_integer(Seed), 
        not is_float(Seed) ->
   'random-number-generator'(Ctx, erlang:phash2(Seed));
'random-number-generator'(Ctx, Seed) ->
   S = rand:seed(exs1024s, 
                 {erlang:phash2([Seed]),1,2}), 
   {Num,S2} = rand:uniform_s(S),
   FunBod = fun(_,List0) ->
                  List1 = xqerl_seq3:expand(List0),
                  List = if is_list(List1) -> List1; true -> [List1] end,
                  F = fun(I,S3) ->
                            {Num1,S4} = rand:uniform_s(S3),
                            {{Num1,I},S4}
                      end,
                  {List2,_} = lists:mapfoldl(F, S2, List),
                  List3 = lists:keysort(1, List2),
                  [I || {_,I} <- List3]
            end,
   Permute = #xqFunction{params = [#xqSeqType{type = item, 
                                              occur = zero_or_many}], 
                         type = #xqSeqType{type = item, occur = zero_or_many},
                         arity = 1,
                         body = FunBod},
   NextFun = fun(_) -> 
                   'random-number-generator'(Ctx, Seed + 1) 
             end,
   xqerl_map:construct(
     Ctx, 
     [{?str(?A("number")), Num},
      {?str(?A("next")), NextFun},
      {?str(?A("permute")),Permute}]).

%% Returns a new sequence containing all the items of $target except 
%% the item at position $position. 
%% fn:remove($target as item()*, $position as xs:integer) as item()*
-spec 'remove'(xq_types:context(),
               [] | xq_types:sequence(xq_types:xq_item()),
               xq_types:xs_integer()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'remove'(_,[],_) -> [];
'remove'(_Ctx,Target,Position) -> 
   Index = xqerl_types:value(Position),
   Size = xqerl_seq3:size(Target),
   if Index < 1 orelse Index > Size ->
         Target;
      true ->
         remove1(xqerl_seq3:to_list(Target),Index,1)
   end.

remove1([],_,_) ->
   [];
remove1([_|T],Position,Current) when Position =:= Current ->
   T;
remove1([H|T],Position,Current) ->
   [H|remove1(T,Position,Current + 1)].
  

%% Returns a string produced from the input string by replacing any substrings 
%% that match a given regular expression with a supplied replacement string. 
%% fn:replace(
%%    $input       as xs:string?,
%%    $pattern     as xs:string,
%%    $replacement as xs:string) as xs:string
-spec 'replace'(xq_types:context(),
                [] | xq_types:xs_string(),
                xq_types:xs_string(),
                xq_types:xs_string()) ->
         xq_types:xs_string().
'replace'(_Ctx,Input,Pattern,Replacement) -> 
   'replace'(_Ctx,Input,Pattern,Replacement,?str(<<>>)).

%% fn:replace(
%%    $input       as xs:string?,
%%    $pattern     as xs:string,
%%    $replacement as xs:string,
%%    $flags       as xs:string) as xs:string
-spec 'replace'(xq_types:context(),
                [] | xq_types:xs_string(),
                xq_types:xs_string(),
                xq_types:xs_string(),
                xq_types:xs_string()) ->
         xq_types:xs_string().
'replace'(_Ctx,Input,Pattern,Replacement,Flags) ->
   Input1 = xqerl_types:string_value(Input),
   Flags1 = xqerl_types:string_value(Flags),
   Repl   = xqerl_types:string_value(Replacement),
   Pattern1 = xqerl_types:string_value(Pattern),
   case is_simple_flags(Flags1) of
      true -> % simple string replace, no regex
         Str = string:replace(Input1, Pattern1, Repl, all),
         ?str(list_to_binary(Str));
      false ->
         case xs_regex:compile(Pattern1,Flags1) of
            {error, {invalid_flag, _}} ->
               ?err('FORX0001');
            {error, _} ->
               ?err('FORX0002');
            {true,_} ->
               ?err('FORX0003');
            {_,MP} ->
               try
                  Q = [F || <<F/utf8>> <= xqerl_types:value(Flags), F == $q],
                  Repl1 = 
                    case Q /= [] of
                       true ->
                          xs_regex:simple_escape(Repl);
                       _ ->
                          {ok, Depth} = xs_regex:get_depth(Pattern1),
                          {ok, Reg} = xs_regex:transform_replace(Repl,Depth),
                         %?dbg("Depth",Depth),
                          Reg
                    end,
                  Str = re:replace(Input1, MP, Repl1, [{return, binary},global]),
                  %?dbg("Input1",Input1),
                  %?dbg("Pattern1",Pattern1),
                  %?dbg("Repl1",Repl1),
                  %?dbg("Str",Str),
                  ?str(Str)
               catch
                  _:_:Stack ->
                     io:format("~p~n",[Stack]),
                     ?err('FORX0004')
               end
         end
   end.

is_simple_flags(?A("q")) -> true;
is_simple_flags(_) -> false.
  

string_value(At) -> xqerl_types:string_value(At).

%% Returns an xs:QName value (that is, an expanded-QName) by taking an 
%% xs:string that has the lexical form of an xs:QName (a string in the form 
%% "prefix:local-name" or "local-name") and resolving it using the in-scope 
%% namespaces for a given element.
%% fn:resolve-QName($qname as xs:string?, $element as element()) as xs:QName? 
-spec 'resolve-QName'(xq_types:context(),
                      [] | xq_types:xs_string(),
                      xq_types:xml_element()) ->
         xq_types:xs_QName().
'resolve-QName'(_Ctx,[],_Element) -> [];
'resolve-QName'(Ctx,String,[Element]) ->
   'resolve-QName'(Ctx,String,Element);

'resolve-QName'(Ctx, String, #{nk := _} = Node) -> 
   InScopeNs = xqldb_xpath:namespace_nodes(Node),
   IsNs = lists:map(fun({P,U}) ->
                        #xqNamespace{namespace = U, prefix = P}
                    end, InScopeNs) ++ maps:get(namespaces, Ctx,[]),
   try
      xqerl_types:cast_as(String, 'xs:QName', IsNs)
   catch 
      ?ERROR_MATCH(?A("FONS0004")) -> ?err('FONS0004');
      _:_ -> ?err('FOCA0002')
   end.

%% Resolves a relative IRI reference against an absolute IRI. 
%% fn:resolve-uri($relative as xs:string?) as xs:anyURI?
-spec 'resolve-uri'(xq_types:context(),
                    [] | xq_types:xs_string()) ->
         [] | xq_types:xs_anyURI().
'resolve-uri'(_Ctx,[]) -> [];
'resolve-uri'(#{'base-uri' := Base} = Ctx,Relative) -> 
   'resolve-uri'(Ctx,Relative,Base).

%% fn:resolve-uri($relative as xs:string?, $base as xs:string) as xs:anyURI?
-spec 'resolve-uri'(xq_types:context(),
                    [] | xq_types:xs_string(),
                    xq_types:xs_string()) ->
         [] | xq_types:xs_anyURI().
'resolve-uri'(_Ctx,[],_Base) -> [];
'resolve-uri'(Ctx,Relative,Base) ->
   RelVal = xqerl_types:value(Relative),
   BasVal = case xqerl_types:value(Base) of
               <<>> ->
                  xqerl_types:value(maps:get('base-uri', Ctx));
               B ->
                  xqldb_lib:normalize_uri(B)
            end,
   case BasVal of
      {error,_,_} ->
         ?err('FORG0002');
      {error,_} ->
         ?err('FORG0002');
      _ ->
         try
            case xqerl_lib:resolve_against_base_uri(BasVal, RelVal) of
               {error,_} ->
                  ?err('FORG0002');
               ResVal ->
                  ?atm('xs:anyURI',ResVal)
            end
         catch 
            ?ERROR_MATCH(?A("FORG0001")) -> ?err('FORG0002');
            ?ERROR_MATCH(?A("FORG0002")) -> ?err('FORG0002');
            _:{badmatch, _} -> ?err('FORG0002');
            _:{badmap, _} -> ?err('FORG0002');
            _:O:Stack -> 
               ?dbg("O",{O,Stack}),
               ?err('FORG0009')
         end
   end.

%% Reverses the order of items in a sequence. 
%% fn:reverse($arg as item()*) as item()*
-spec 'reverse'(xq_types:context(),
                [] | xq_types:sequence(xq_types:xq_item())) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'reverse'(_Ctx,[]) -> [];
'reverse'(_Ctx,Arg1) when is_list(Arg1) -> 
   lists:reverse(xqerl_seq3:expand(Arg1));
'reverse'(Ctx,Arg1) ->
   'reverse'(Ctx,[Arg1]).

%% Returns the root of the tree to which $arg belongs. This will usually, 
%% but not necessarily, be a document node. 
%% fn:root() as node()
-spec 'root'(xq_types:context()) -> 
         xq_types:xml_node().
'root'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   ?MODULE:root(Ctx,Ci).

%% fn:root($arg as node()?) as node()?
-spec 'root'(xq_types:context(),
             [] | xq_types:xml_node()) -> 
         [] | xq_types:xml_node().
'root'(_Ctx,[]) -> [];
'root'(_Ctx, #{nk := _} = Node) ->
   case xqldb_xpath:ancestor_or_self_node(Node,{[]}) of
      [H|_] ->
         H;
      _ ->
         []
   end;
'root'(Ctx,[Arg1]) ->
   'root'(Ctx,Arg1);
'root'(_,O) -> ?dbg("O",O),
   ?err('XPTY0004').

%% Rounds a value to a specified number of decimal places, rounding upwards 
%% if two such values are equally near. 
%% fn:round($arg as xs:numeric?) as xs:numeric?
-spec 'round'(xq_types:context(),
             [] | xq_types:xs_numeric()) -> 
         [] | xq_types:xs_numeric().
'round'(Ctx,Arg1) -> 
   'round'(Ctx,Arg1, ?atint(0)).

%% fn:round($arg as xs:numeric?, $precision as xs:integer) as xs:numeric?
-spec 'round'(xq_types:context(),
             [] | xq_types:xs_numeric(),
             xq_types:xs_integer()) -> 
         [] | xq_types:xs_numeric().
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
         if Rounded =:= {xsDecimal,0,0} andalso ArgVal < 0 andalso ArgType =:= 'xs:double' ->
               neg_zero;
            Rounded =:= {xsDecimal,0,0} andalso ArgVal < 0 andalso ArgType =:= 'xs:float' ->
               #xqAtomicValue{type = ArgType, value = neg_zero};
            true ->
               xqerl_types:cast_as(?atm('xs:decimal', Rounded), ArgType)
         end
   end.

%% Rounds a value to a specified number of decimal places, rounding to make 
%% the last digit even if two such values are equally near. 
%% fn:round-half-to-even($arg as xs:numeric?) as xs:numeric?
-spec 'round-half-to-even'(xq_types:context(),
                           [] | xq_types:xs_numeric()) -> 
         [] | xq_types:xs_numeric().
'round-half-to-even'(_Ctx,[]) -> [];
'round-half-to-even'(Ctx,Arg1) -> 'round-half-to-even'(Ctx,Arg1,?atint(0)).

%% fn:round-half-to-even(
%%    $arg       as xs:numeric?,
%%    $precision as xs:integer) as xs:numeric?
-spec 'round-half-to-even'(xq_types:context(),
                           [] | xq_types:xs_numeric(),
                           xq_types:xs_integer()) -> 
         [] | xq_types:xs_numeric().
'round-half-to-even'(_Ctx,[],_Precision) -> [];
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
%% fn:seconds-from-dateTime($arg as xs:dateTime?) as xs:decimal?
-spec 'seconds-from-dateTime'(xq_types:context(),
                              [] | xq_types:xs_dateTime()) -> 
         [] | xq_types:xs_decimal().
'seconds-from-dateTime'(Ctx,Arg1) -> 
   'seconds-from-duration'(Ctx, Arg1).

%% Returns the number of seconds in a duration. 
%% fn:seconds-from-duration($arg as xs:duration?) as xs:decimal?
-spec 'seconds-from-duration'(xq_types:context(),
                              [] | xq_types:xs_duration()) -> 
         [] | xq_types:xs_decimal().
'seconds-from-duration'(_, []) -> [];
'seconds-from-duration'(Ctx, [Arg1]) -> 'seconds-from-duration'(Ctx, Arg1);
'seconds-from-duration'(_, #xqAtomicValue{value = #xsDateTime{sign = '-', 
                                                              second = Sd}}) ->
   ?dec(xqerl_numeric:multiply(Sd,-1));
'seconds-from-duration'(_, #xqAtomicValue{value = #xsDateTime{second = Sd}}) ->
   ?dec(Sd).

%% Returns the seconds component of an xs:time. 
%% fn:seconds-from-time($arg as xs:time?) as xs:decimal?
-spec 'seconds-from-time'(xq_types:context(),
                          [] | xq_types:xs_time()) -> 
         [] | xq_types:xs_decimal().
'seconds-from-time'(Ctx,Arg1) -> 
   'seconds-from-duration'(Ctx, Arg1).

%% This function serializes the supplied input sequence $arg as described in 
%% [xslt-xquery-serialization-31], returning the serialized representation of 
%% the sequence as a string. 
%% fn:serialize($arg as item()*) as xs:string
-spec 'serialize'(xq_types:context(),
                  [] | xq_types:sequence(xq_types:xq_item())) -> 
         xq_types:xs_string().
'serialize'(Ctx, Arg1) -> 
   'serialize'(Ctx, Arg1, []).

%% fn:serialize($arg as item()*, $params as item()?) as xs:string
-spec 'serialize'(xq_types:context(),
                  [] | xq_types:sequence(xq_types:xq_item()),
                  [] | xq_types:xq_item()) -> 
         xq_types:xs_string().
'serialize'(Ctx, Arg1, Arg2) ->
   Nss = maps:get(namespaces, Ctx, []),
   Opts = xqerl_options:serialization_option_map(Arg2, Nss),
   Ser = xqerl_serialize:serialize(xqerl_seq3:flatten(Arg1), Opts),
   ?str(Ser).

%% Sorts a supplied sequence, based on the value of a sort key supplied as 
%% a function. 
%% fn:sort($input as item()*) as item()*
-spec 'sort'(xq_types:context(),
             [] | xq_types:sequence(xq_types:xq_item())) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'sort'(Ctx,List) when not is_list(List) ->
   'sort'(Ctx,[List]);
'sort'(Ctx,List) -> 
   Collation = xqerl_context:get_default_collation(Ctx),
   sort(Ctx,List, Collation).

%% fn:sort($input as item()*, $collation as xs:string?) as item()*
-spec 'sort'(xq_types:context(),
             [] | xq_types:sequence(xq_types:xq_item()),
             [] | xq_types:xs_string() | atom() | function()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'sort'(Ctx,List,[]) -> 
   Collation = xqerl_context:get_default_collation(Ctx),
   'sort'(Ctx,List,Collation,fun xqerl_fn:data/2);
'sort'(Ctx,List,Collation) when not is_list(List) ->
   'sort'(Ctx,[List],Collation);
'sort'(Ctx,List,Collation) ->
   'sort'(Ctx,List,Collation,fun xqerl_fn:data/2).

%% fn:sort(
%%    $input    as item()*,
%%    $collation   as xs:string?,
%%    $key   as function(item()) as xs:anyAtomicType*) as item()*
-spec 'sort'(xq_types:context(),
             [] | xq_types:sequence(xq_types:xq_item()),
             [] | xq_types:xs_string() | atom() | function(),
             xq_types:xq_function()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
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
   SortedList = lists:sort(SortFun, xqerl_seq3:expand(List)),
   SortedList;
'sort'(Ctx,Array,Collation,#xqFunction{body = Function}) 
   when is_function(Function) ->
   'sort'(Ctx,Array,Collation,Function).

sort1(_,[],[],_Coll) -> true;
sort1(_,[],_B,_Coll) -> true;
sort1(_,_A,[],_Coll) -> false;
sort1(Ctx,[HA|TA],[HB|TB],Coll) ->
   Equal = xqerl_fn:'deep-equal'(Ctx, HA, HB, Coll),
   if Equal ->
         sort1(Ctx,TA,TB,Coll);
      true ->
         % values that don't equal self, e.g. NaN
         NotEqual = xqerl_operators:not_equal(HA,HA),
         if NotEqual -> true;
            true ->
               TypeA = xqerl_types:type(HA),
               TypeB = xqerl_types:type(HB),
               if ?xs_string(TypeA) orelse 
                    TypeA == 'xs:anyURI' orelse 
                    TypeA == 'xs:untypedAtomic',
                  ?xs_string(TypeB) orelse 
                    TypeB == 'xs:anyURI' orelse 
                    TypeB == 'xs:untypedAtomic' ->
                     Comp = xqerl_fn:compare(Ctx, HA, HB, Coll),
                     Comp =< 0;
                  true ->
                     xqerl_operators:less_than_eq(HA, HB)
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
%% fn:starts-with($arg1 as xs:string?, $arg2 as xs:string?) as xs:boolean
-spec 'starts-with'(xq_types:context(),
                    [] | xq_types:xs_string(),
                    [] | xq_types:xs_string()) -> 
         xq_types:xs_boolean().
'starts-with'(Ctx,[],Arg2) -> 'starts-with'(Ctx,?str(<<>>),Arg2);
'starts-with'(_Ctx,_Arg1,[]) -> ?bool(true);
'starts-with'(#{'default-collation' := DefColl} = Ctx,Arg1,Arg2) -> 
   'starts-with'(Ctx,Arg1,Arg2,DefColl).

%% fn:starts-with(
%%    $arg1      as xs:string?,
%%    $arg2      as xs:string?,
%%    $collation as xs:string) as xs:boolean
-spec 'starts-with'(xq_types:context(),
                    [] | xq_types:xs_string(),
                    [] | xq_types:xs_string(),
                    xq_types:xs_string() | atom() | function()) -> 
         xq_types:xs_boolean().
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
         VBin = xqerl_coll:binary(Str1, ColVal),
         SBin = xqerl_coll:binary(Str2, ColVal),
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
%% fn:static-base-uri() as xs:anyURI?
-spec 'static-base-uri'(xq_types:context()) -> 
         [] | xq_types:xs_anyURI().
'static-base-uri'(#{'base-uri' := B}) -> B.

%% Returns the value of $arg represented as an xs:string. 
%% fn:string() as xs:string
-spec 'string'(xq_types:context()) -> 
         xq_types:xs_string().
'string'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'string'(Ctx, Ci).

%% fn:string($arg as item()?) as xs:string
-spec 'string'(xq_types:context(),
               [] | xq_types:xq_item()) -> 
         xq_types:xs_string().
'string'(Ctx,[V]) -> 'string'(Ctx,V); 
'string'(_Ctx,[]) -> ?str(<<>>); 
'string'(_Ctx,Node) when ?noderecs(Node) ->
   Atomized = xqerl_types:atomize(Node),
   xqerl_types:cast_as(Atomized, 'xs:string');
'string'(_Ctx, S) when is_binary(S) -> S;
'string'(_Ctx,#xqFunction{}) -> ?err('FOTY0014');
'string'(_Ctx,Fx) when is_function(Fx) -> ?err('FOTY0014');
'string'(_Ctx,Fx) when is_map(Fx) -> ?err('FOTY0014');
'string'(_Ctx,#array{}) -> ?err('FOTY0014');
'string'(_Ctx,Arg1) -> 
   xqerl_types:cast_as(Arg1, 'xs:string').

%% Returns a string created by concatenating the items in a sequence, 
%% with a defined separator between adjacent items. 
%% fn:string-join($arg1 as xs:anyAtomicType*) as xs:string
-spec 'string-join'(xq_types:context(),
                    [] | xq_types:sequence(xq_types:xs_anyAtomicType())) -> 
         xq_types:xs_string().
'string-join'(_Ctx,Arg1) ->
   'string-join'(_Ctx,Arg1, ?str(<<>>)).

%% fn:string-join($arg1 as xs:anyAtomicType*, $arg2 as xs:string) as xs:string
-spec 'string-join'(xq_types:context(),
                    [] | xq_types:sequence(xq_types:xs_anyAtomicType()),
                    xq_types:xs_string()) -> 
         xq_types:xs_string().
'string-join'(_,[],_) -> ?str(<<>>);
'string-join'(Ctx,Arg1,Arg2) ->
   NewArg1 = xqerl_seq3:to_list(Arg1),
   Sep = xqerl_types:cast_as(Arg2, 'xs:string'),
   if Sep == <<>> ->
         'concat'(Ctx, NewArg1);
      true ->
         'string-join1'(NewArg1,Sep)
   end.

'string-join1'([H|Arg1],Sep) when is_binary(H) ->
   Ct = 'string-join2'(Arg1,Sep,H),
   ?str(Ct);
'string-join1'([H|Arg1],Sep) ->
   Hd = xqerl_types:cast_as(H, 'xs:string'),
   Ct = 'string-join2'(Arg1,Sep,Hd),
   ?str(Ct).

'string-join2'([],_,Acc) -> Acc;
'string-join2'([H|Arg1],Sep,Acc) when is_binary(H) ->
   'string-join2'(Arg1,Sep,<<Acc/binary,Sep/binary,H/binary>>);
'string-join2'([H|Arg1],Sep,Acc) ->
   Hd = xqerl_types:cast_as(H, 'xs:string'),
   'string-join2'(Arg1,Sep,<<Acc/binary,Sep/binary,Hd/binary>>).

%% Returns the number of characters in a string.
%% fn:string-length() as xs:integer 
-spec 'string-length'(xq_types:context()) -> 
         xq_types:xs_integer().
'string-length'(Ctx) -> 
   Val = xqerl_context:get_context_item(Ctx),
   'string-length'(Ctx,Val).

%% fn:string-length($arg as xs:string?) as xs:integer
-spec 'string-length'(xq_types:context(),
                      [] | xq_types:xs_string()) -> 
         xq_types:xs_integer().
'string-length'(_Ctx,[]) ->
   ?atint(0);
'string-length'(_Ctx,[Arg1]) ->
   'string-length'(_Ctx,Arg1);
'string-length'(_Ctx,Arg1) when is_list(Arg1) ->
   ?err('XPTY0004');
'string-length'(_Ctx,Arg1) ->
   Str = xqerl_types:string_value(Arg1),
   L = erlang:length([ok || <<_/utf8>> <= Str]),
   %L = string:length(xqerl_types:string_value(Arg1)),
   ?atint(L).

%% Returns the sequence of codepoints that constitute an xs:string value. 
%% fn:string-to-codepoints($arg as xs:string?) as xs:integer*
-spec 'string-to-codepoints'(xq_types:context(),
                             [] | xq_types:xs_string()) -> 
         [] | xq_types:sequence(xq_types:xs_integer()).
'string-to-codepoints'(_Ctx,Arg1) -> 
   Str = string_value(Arg1),
   [?atint(C) || <<C/utf8>> <= Str].

%% Returns the contiguous sequence of items in the value of $sourceSeq 
%% beginning at the position indicated by the value of $startingLoc and 
%% continuing for the number of items indicated by the value of $length. 
%% fn:subsequence($sourceSeq as item()*, $startingLoc as xs:double) as item()*
-spec 'subsequence'(xq_types:context(),
                    [] | xq_types:sequence(xq_types:xq_item()),
                    xq_types:xs_double()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'subsequence'(_Ctx,SourceSeq,StartingLoc) -> 
   VStart = xqerl_types:value(StartingLoc),
   if VStart =:= neg_infinity ->
         SourceSeq;
      VStart < 1 ->
         SourceSeq;
      true ->
         Len = xqerl_seq3:size(SourceSeq),
         'subsequence'(_Ctx,SourceSeq,StartingLoc,?dbl(float(Len)))
   end.

%% fn:subsequence(
%%    $sourceSeq   as item()*,
%%    $startingLoc as xs:double,
%%    $length      as xs:double) as item()*
-spec 'subsequence'(xq_types:context(),
                    [] | xq_types:sequence(xq_types:xq_item()),
                    xq_types:xs_double(),
                    xq_types:xs_double()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'subsequence'(_Ctx,[],_StartingLoc,_Length) -> [];
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
         Size = xqerl_seq3:size(SourceSeq),
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
            is_record(SourceSeq, xqRange) ->
               Min = SourceSeq#xqRange.min + Start1 - 1,
               Max = erlang:min(SourceSeq#xqRange.max, 
                                Min + erlang:round(VLen) - 1),
               %?dbg("{Len,Min,Max}",{Len,Min,Max}),
               xqerl_seq3:range(Min, Max);
            is_list(SourceSeq) ->
               lists:sublist(SourceSeq, Start1, End);
            true ->
               lists:sublist([SourceSeq], Start1, End)
         end
   end.

%% Returns the portion of the value of $sourceString beginning at the position 
%% indicated by the value of $start and continuing for the number of characters 
%% indicated by the value of $length. 
%% fn:substring($sourceString as xs:string?, $start as xs:double) as xs:string
-spec 'substring'(xq_types:context(),
                  [] | xq_types:xs_string(),
                  xq_types:xs_double()) -> 
         xq_types:xs_string().
'substring'(Ctx,SourceString,Start) ->
   'substring'(Ctx,SourceString,Start, ?dbl(infinity)).

%% fn:substring(
%%    $sourceString as xs:string?,
%%    $start        as xs:double,
%%    $length       as xs:double) as xs:string
-spec 'substring'(xq_types:context(),
                  [] | xq_types:xs_string(),
                  xq_types:xs_double(),
                  xq_types:xs_double()) -> 
         xq_types:xs_string().
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
         ?str(<<>>);
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
               ?str(<<>>);
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
%% fn:substring-after($arg1 as xs:string?, $arg2 as xs:string?) as xs:string
-spec 'substring-after'(xq_types:context(),
                        [] | xq_types:xs_string(),
                        [] | xq_types:xs_string()) -> 
         xq_types:xs_string().
'substring-after'(#{'default-collation' := DefColl} = Ctx,Arg1,Arg2) -> 
   'substring-after'(Ctx,Arg1,Arg2,DefColl).

%% fn:substring-after(
%%    $arg1      as xs:string?,
%%    $arg2      as xs:string?,
%%    $collation as xs:string) as xs:string
-spec 'substring-after'(xq_types:context(),
                        [] | xq_types:xs_string(),
                        [] | xq_types:xs_string(),
                        xq_types:xs_string() | atom() | function()) -> 
         xq_types:xs_string().
'substring-after'(#{'base-uri' := BaseUri0},Arg1,Arg2,Collation) ->
   Uri = xqerl_types:value(Collation),
   BaseUri = xqerl_types:value(BaseUri0),
   Coll = xqerl_lib:resolve_against_base_uri(BaseUri, Uri),

   StrVal = xqerl_types:string_value(Arg1),
   SplVal = xqerl_types:string_value(Arg2),
   if StrVal =:= <<>> ->
         ?str(<<>>);
      SplVal =:= <<>> ->
         ?str(StrVal);
      true ->
         ColVal = xqerl_coll:parse(Coll),
         Str3 = xqerl_coll:split(StrVal,SplVal,ColVal),
         case Str3 of
            [_] ->
               ?str(<<>>);
            [_,A] ->
               ?str(A)
         end
   end.
   
%% Returns the part of $arg1 that precedes the first occurrence of $arg2, 
%% taking collations into account. 
%% fn:substring-before($arg1 as xs:string?, $arg2 as xs:string?) as xs:string
-spec 'substring-before'(xq_types:context(),
                         [] | xq_types:xs_string(),
                         [] | xq_types:xs_string()) -> 
         xq_types:xs_string().
'substring-before'(#{'default-collation' := DefColl} = Ctx,Arg1,Arg2) -> 
   'substring-before'(Ctx,Arg1,Arg2,DefColl).
   
%% fn:substring-before(
%%    $arg1      as xs:string?,
%%    $arg2      as xs:string?,
%%    $collation as xs:string) as xs:string
-spec 'substring-before'(xq_types:context(),
                        [] | xq_types:xs_string(),
                        [] | xq_types:xs_string(),
                        xq_types:xs_string() | atom() | function()) -> 
         xq_types:xs_string().
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
         ?str(<<>>);
      [S,_] ->
         ?str(S)
   end.

%% Returns a value obtained by adding together the values in $arg. 
%% fn:sum($arg as xs:anyAtomicType*) as xs:anyAtomicType
-spec 'sum'(xq_types:context(),
            [] | xq_types:sequence(xq_types:xs_anyAtomicType())) -> 
         xq_types:xs_anyAtomicType().
'sum'(_Ctx,[]) ->
   ?atint(0);
'sum'(Ctx,Arg1) ->
   'sum'(Ctx,Arg1,?atint(0)).

%% fn:sum(
%%    $arg   as xs:anyAtomicType*,
%%    $zero  as xs:anyAtomicType?) as xs:anyAtomicType?
-spec 'sum'(xq_types:context(),
            [] | xq_types:sequence(xq_types:xs_anyAtomicType()),
            [] | xq_types:xs_anyAtomicType()) -> 
         [] | xq_types:xs_anyAtomicType().
'sum'(_,[],Arg2) -> Arg2;
'sum'(_,Arg1,_) -> 
   {Seq,SeqType} = compare_convert_seq(xqerl_seq3:to_list(Arg1), [], []),
   case Seq of
      [One] when ?xs_numeric(SeqType) ->
         One;
      _ ->
         if ?xs_integer(SeqType) ->
               xqerl_types:value(sum1(lists:reverse(Seq), []));
            ?xs_numeric(SeqType) ->
               sum1(lists:reverse(Seq), []);
            true ->
               case xqerl_types:is_date_type(SeqType) of
                  true ->
                     Sum1 = sum1(lists:reverse(Seq), []),
                     xqerl_types:cast_as(Sum1, SeqType);
                  _ ->
                     ?err('FORG0006')
               end
         end
   end.

sum1([], Sum) ->
   Sum;
sum1([nan = H|_], _) ->
   H;
sum1([#xqAtomicValue{type = 'xs:float', value = nan} = H|T], _) ->
   % check for double nan 
   case lists:member(nan, T) of
      true ->
         nan;
      false ->
         H
   end;
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
%% fn:tail($arg as item()*) as item()*
-spec 'tail'(xq_types:context(),
             [] | xq_types:sequence(xq_types:xq_item())) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'tail'(_Ctx,Arg1) -> 
   xqerl_seq3:tail(Arg1).

%% Returns the timezone component of an xs:date. 
%% fn:timezone-from-date($arg as xs:date?) as xs:dayTimeDuration?
-spec 'timezone-from-date'(xq_types:context(),
                           [] | xq_types:xs_date()) -> 
         [] | xq_types:xs_dayTimeDuration().
'timezone-from-date'(_Ctx,[]) -> [];
'timezone-from-date'(_Ctx,Dt) ->
   #xsDateTime{offset = OS} = xqerl_types:value(Dt),
   if OS =:= [] -> [];
      true ->
         Str = xqerl_datetime:to_string(OS,'xs:dayTimeDuration'),
         xqerl_types:cast_as(?str(Str),'xs:dayTimeDuration')
   end.

%% Returns the timezone component of an xs:dateTime. 
%% fn:timezone-from-dateTime($arg as xs:dateTime?) as xs:dayTimeDuration?
-spec 'timezone-from-dateTime'(xq_types:context(),
                               [] | xq_types:xs_dateTime()) -> 
         [] | xq_types:xs_dayTimeDuration().
'timezone-from-dateTime'(Ctx,Dt) -> 'timezone-from-date'(Ctx,Dt).

%% Returns the timezone component of an xs:time. 
%% fn:timezone-from-time($arg as xs:time?) as xs:dayTimeDuration?
-spec 'timezone-from-time'(xq_types:context(),
                           [] | xq_types:xs_time()) -> 
         [] | xq_types:xs_dayTimeDuration().
'timezone-from-time'(Ctx,Dt) ->  'timezone-from-date'(Ctx,Dt). 

%% Returns a sequence of strings constructed by splitting the input wherever a 
%% separator is found; the separator is any substring that matches a given 
%% regular expression. 
%% fn:tokenize($input as xs:string?) as xs:string*
-spec 'tokenize'(xq_types:context(),
                 [] | xq_types:xs_string()) -> 
         [] | xq_types:sequence(xq_types:xs_string()).
'tokenize'(_Ctx, []) -> [];
'tokenize'(_Ctx, Input) -> 
   case xqerl_types:cast_as(Input, 'xs:string') of
      <<>> -> [];
      Str ->
         Pat = binary:compile_pattern([<<9>>,<<10>>,<<13>>,<<32>>]),
         binary:split(Str, Pat, [global, trim_all])
   end.

%% fn:tokenize($input as xs:string?, $pattern as xs:string) as xs:string*
-spec 'tokenize'(xq_types:context(),
                 [] | xq_types:xs_string(),
                 xq_types:xs_string()) -> 
         [] | xq_types:sequence(xq_types:xs_string()).
'tokenize'(_Ctx,Input,Pattern) ->
   'tokenize'(_Ctx,Input,Pattern,?str(<<>>)).

%% fn:tokenize(
%%    $input    as xs:string?,
%%    $pattern  as xs:string,
%%    $flags    as xs:string) as xs:string*
-spec 'tokenize'(xq_types:context(),
                 [] | xq_types:xs_string(),
                 xq_types:xs_string(),
                 xq_types:xs_string()) -> 
         [] | xq_types:sequence(xq_types:xs_string()).
'tokenize'(_Ctx,Input,Pattern0,Flags0) -> 
   Pattern = string_value(Pattern0),
   Flags = string_value(Flags0),
   case xs_regex:compile(Pattern,Flags) of
      {error, {invalid_flag, _}} ->
         ?err('FORX0001');
      {error, _} ->
         ?err('FORX0002');
      {true,_} ->
         ?err('FORX0003');
      {_,MP} ->
         Str = xqerl_types:cast_as(Input, 'xs:string'),
         Input1 = string_value(Str),
         if Input1 == <<>> -> [];
            true ->
               List = re:split(Input1, MP, [group]),
               lists:map(fun([S|_]) -> S end, List)
         end
   end.
   
%% Provides an execution trace intended to be used in debugging queries.
%% fn:trace($value as item()*) as item()* 
-spec 'trace'(xq_types:context(),
              [] | xq_types:sequence(xq_types:xq_item())) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'trace'(_Ctx, Arg1) -> 
   gen_event:notify(xqerl_trace_man, {trace, Arg1}),
   Arg1.

%% fn:trace($value as item()*, $label as xs:string) as item()*
-spec 'trace'(xq_types:context(),
              [] | xq_types:sequence(xq_types:xq_item()),
              xq_types:xs_string()) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'trace'(_Ctx,Arg1,Arg2) ->
   Label = xqerl_types:string_value(Arg2),
   gen_event:notify(xqerl_trace_man, {trace, Label, Arg1}),
   Arg1.

%% Invokes a transformation using a dynamically-loaded XSLT stylesheet. 
%% fn:transform($options as map(*)) as map(*)
-spec 'transform'(xq_types:context(),
                  xq_types:xq_map()) -> 
         xq_types:xs_error().
         %xq_types:xq_map().
'transform'(_Ctx,_Arg1) -> ?err('FOXT0004').

%% Returns the value of $arg modified by replacing or removing 
%% individual characters. 
%% fn:translate(
%%    $arg         as xs:string?,
%%    $mapString   as xs:string,
%%    $transString as xs:string) as xs:string
-spec 'translate'(xq_types:context(),
                  [] | xq_types:xs_string(),
                  xq_types:xs_string(),
                  xq_types:xs_string()) -> 
         xq_types:xs_string().
'translate'(_Ctx,Arg,MapString,TransString) -> 
   ArgV = xqerl_types:value(Arg),
   if ArgV =:= [] ->
         ?str(<<>>);
      true ->
         MapStringV = xqerl_types:value(MapString),
         if MapStringV =:= <<>> ->
               Arg;
            true ->
               TransStringV = xqerl_types:value(TransString),
               Map = zip_map_trans(MapStringV,TransStringV),
               NewStr = 
                 <<
                   (case lists:keyfind(C, 1, Map) of
                       {_,[]} -> <<>>;
                       {_,P} -> <<P/utf8>>;
                       false -> <<C/utf8>>
                    end)
                   || <<C/utf8>> <= ArgV
                   >>,
               ?str(NewStr)
         end
   end.

zip_map_trans(<<>>,_) ->
   [];
zip_map_trans(<<H/utf8,T/binary>>,<<>>) ->
   [{H,[]}|zip_map_trans(T,<<>>)];
zip_map_trans(<<H/utf8,T/binary>>,<<TH/utf8,TT/binary>>) ->
   [{H,TH}|zip_map_trans(T,TT)].

%% Returns the xs:boolean value true. 
%% fn:true() as xs:boolean
-spec 'true'(xq_types:context()) -> 
         xq_types:xs_boolean().
'true'(_) ->
   ?bool(true).

%% Returns the items of $sourceSeq in an implementation-dependent order. 
%% fn:unordered($sourceSeq as item()*) as item()*
-spec 'unordered'(xq_types:context(),
                  [] | xq_types:sequence(xq_types:xq_item())) -> 
         [] | xq_types:sequence(xq_types:xq_item()).
'unordered'(_Ctx,Arg1) ->
   % set order in the context, do expr, set context back DONE IN-LINE
   Arg1.

%% The fn:unparsed-text function reads an external resource (for example, 
%% a file) and returns a string representation of the resource.
%% fn:unparsed-text($href as xs:string?) as xs:string?
-spec 'unparsed-text'(xq_types:context(),
                      [] | xq_types:xs_string()) -> 
         [] | xq_types:xs_string().
'unparsed-text'(Ctx,Uri) -> 
   'unparsed-text'(Ctx,Uri,?str(<<>>)).

%% fn:unparsed-text($href as xs:string?, $encoding as xs:string) as xs:string?
-spec 'unparsed-text'(xq_types:context(),
                      [] | xq_types:xs_string(),
                      xq_types:xs_string()) -> 
         [] | xq_types:xs_string().
'unparsed-text'(_,_Uri0,[]) -> ?err('XPTY0004');
'unparsed-text'(#{'base-uri' := BaseUri0},Uri0,Encoding) -> 
   try
      Uri = xqerl_types:value(Uri0),
      BaseUri = xqerl_types:value(BaseUri0),
      ResVal = xqerl_lib:resolve_against_base_uri(BaseUri, Uri),
      Enc = xqerl_types:string_value(Encoding),
      case xqldb_dml:select_resource(ResVal) of
         {error, _} ->
            ?err('FOUT1170');
         Binary ->
            if Enc =:= <<>> ->
                  ?str( valid_cps(xqerl_lib:bin_to_utf8(Binary)));
               true ->
                  ?str( valid_cps(xqerl_lib:bin_to_utf8(Binary, Enc)))
            end
      end
   catch 
      ?ERROR_MATCH(?A("FORG0002")) -> ?err('FOUT1170');
      ?ERROR_MATCH(?A("XQST0046")) -> ?err('FOUT1170');
      _:#xqError{} = E -> throw(E);
      _:_:Stack -> 
         ?dbg("Stack",Stack),
         ?err('FOUT1170')
   end.

valid_cps(Bin) -> 
   _ = [?err('FOUT1190')
        || <<C/utf8>> <= Bin,
           (C =:= 0 orelse C =:= 16#FFFE orelse C =:= 16#FFFF)],
   Bin.

%% Because errors in evaluating the fn:unparsed-text function are 
%% non-recoverable, these two functions are provided to allow an application 
%% to determine whether a call with particular arguments would succeed. 
%% fn:unparsed-text-available($href as xs:string?) as xs:boolean
-spec 'unparsed-text-available'(xq_types:context(),
                                [] | xq_types:xs_string()) -> 
         [] | xq_types:xs_boolean().
'unparsed-text-available'(Ctx,Arg1) -> 
   'unparsed-text-available'(Ctx,Arg1,?str(<<>>)).

%% fn:unparsed-text-available(
%%    $href     as xs:string?,
%%    $encoding as xs:string) as xs:boolean
-spec 'unparsed-text-available'(xq_types:context(),
                                [] | xq_types:xs_string(),
                                xq_types:xs_string()) -> 
         [] | xq_types:xs_boolean().
'unparsed-text-available'(Ctx,Arg1,Arg2) -> 
   try
      _ = 'unparsed-text'(Ctx,Arg1,Arg2),
      ?bool(true)
   catch
      ?ERROR_MATCH(?A("XPTY0004")) -> ?err('XPTY0004');
      _:_ -> ?bool(false)
   end.

%% The fn:unparsed-text-lines function reads an external resource 
%% (for example, a file) and returns its contents as a sequence of strings, 
%% one for each line of text in the string representation of the resource. 
%% fn:unparsed-text-lines($href as xs:string?) as xs:string*
-spec 'unparsed-text-lines'(xq_types:context(),
                            [] | xq_types:xs_string()) -> 
         [] | xq_types:sequence(xq_types:xs_string()).
'unparsed-text-lines'(Ctx,Arg1) -> 
   'unparsed-text-lines'(Ctx,Arg1,?str(<<>>)).

%% fn:unparsed-text-lines(
%%    $href     as xs:string?,
%%    $encoding as xs:string) as xs:string*
-spec 'unparsed-text-lines'(xq_types:context(),
                            [] | xq_types:xs_string(),
                            xq_types:xs_string()) -> 
         [] | xq_types:sequence(xq_types:xs_string()).
'unparsed-text-lines'(Ctx,Arg1,Arg2) ->
   Str = 'unparsed-text'(Ctx,Arg1,Arg2),
   to_lines(Str, <<>>, []).

to_lines(<<>>,<<>>,Acc) ->
   lists:reverse(Acc);
to_lines(<<>>,Sub,Acc) ->
   S = ?str(Sub),
   lists:reverse([S|Acc]);
to_lines(<<$\r,$\n,Rest/binary>>,Sub,Acc) ->
   S = ?str(Sub),
   to_lines(Rest,<<>>,[S|Acc]);
to_lines(<<$\r,Rest/binary>>,Sub,Acc) ->
   S = ?str(Sub),
   to_lines(Rest,<<>>,[S|Acc]);
to_lines(<<$\n,Rest/binary>>,Sub,Acc) ->
   S = ?str(Sub),
   to_lines(Rest,<<>>,[S|Acc]);
to_lines(<<C/utf8,Rest/binary>>,Sub,Acc) ->
   to_lines(Rest,<<Sub/binary,C/utf8>>,Acc).

%% Converts a string to upper case.
%% fn:upper-case($arg as xs:string?) as xs:string 
-spec 'upper-case'(xq_types:context(),
                   [] | xq_types:xs_string()) -> 
         xq_types:xs_string().
'upper-case'(_Ctx,[]) -> ?str(<<>>);
'upper-case'(Ctx,[Arg1]) -> 'upper-case'(Ctx,Arg1);
'upper-case'(_,#{nk := _} = Arg1) ->
   Str = string_value(Arg1),
   string:uppercase(Str);
'upper-case'(_, Arg1) when is_binary(Arg1) ->
   string:uppercase(Arg1);
'upper-case'(_,#xqAtomicValue{type = Type} = Arg1) 
   when ?xs_string(Type);
        Type =:= 'xs:anyURI' ->
   Str = string_value(Arg1),
   string:uppercase(Str);
'upper-case'(_,_) -> ?err('XPTY0004').   

%% Returns a sequence of xs:anyURI values representing the URIs in a 
%% URI collection. 
%% fn:uri-collection() as xs:anyURI*
-spec 'uri-collection'(xq_types:context()) -> 
         [] | xq_types:sequence(xq_types:xs_anyURI()).
'uri-collection'(#{default_collection := DC} = Ctx) ->
   'uri-collection'(Ctx, DC);
'uri-collection'(_Ctx) ->
   ?err('FODC0002').

%% fn:uri-collection($arg as xs:string?) as xs:anyURI*
-spec 'uri-collection'(xq_types:context(),
                       [] | xq_types:xs_string()) -> 
         [] | xq_types:sequence(xq_types:xs_anyURI()).
'uri-collection'(_Ctx,[]) -> 
   'uri-collection'(_Ctx);
'uri-collection'(#{'base-uri' := BaseUri0},Uri0) -> 
   Uri = xqerl_types:value(Uri0),
   BaseUri = xqerl_types:value(BaseUri0),
   try 
      CUri = xqerl_lib:resolve_against_base_uri(BaseUri, Uri),
      Vals = xqldb_dml:select_paths(CUri),
      if Vals == [] -> % empty/non-existing collection
            throw(error);
         true ->
            [?atm('xs:anyURI',V) || V <- Vals]
      end
   catch
      _:_ ->
         ?err('FODC0002')
   end.

%% Converts an XML tree, whose format corresponds to the XML representation 
%% of JSON defined in this specification, into a string conforming to the 
%% JSON grammar. 
%% fn:xml-to-json($input as node()?) as xs:string?
-spec 'xml-to-json'(xq_types:context(),
                    [] | xq_types:xml_node()) -> 
         [] | xq_types:xs_string().
'xml-to-json'(Ctx,Arg1) -> 
   'xml-to-json'(Ctx,Arg1,#{}).

%% fn:xml-to-json($input as node()?, $options as map(*)) as xs:string?
-spec 'xml-to-json'(xq_types:context(),
                    [] | xq_types:xml_node(),
                    xq_types:xq_map()) -> 
         [] | xq_types:xs_string().
'xml-to-json'(_Ctx,[],_Arg2) -> [];
'xml-to-json'(Ctx,[V],Arg2) -> 'xml-to-json'(Ctx,V,Arg2);
'xml-to-json'(Ctx,#{nk := _} = XML,Arg2) -> 
   Options = map_options_to_list(Ctx, Arg2),
   xqerl_json:xml_to_string(XML, Options);
'xml-to-json'(_Ctx,_Arg1,_Arg2) -> 
   ?err('XPTY0004').

%% Returns the year component of an xs:date. 
%% fn:year-from-date($arg as xs:date?) as xs:integer?
-spec 'year-from-date'(xq_types:context(),
                       [] | xq_types:xs_date()) -> 
         [] | xq_types:xs_integer().
'year-from-date'(Ctx, Arg1) -> 
   'years-from-duration'(Ctx, Arg1).

%% Returns the year component of an xs:dateTime. 
%% fn:year-from-dateTime($arg as xs:dateTime?) as xs:integer?
-spec 'year-from-dateTime'(xq_types:context(),
                           [] | xq_types:xs_dateTime()) -> 
         [] | xq_types:xs_integer().
'year-from-dateTime'(Ctx, Arg1) -> 
   'years-from-duration'(Ctx, Arg1).

%% Returns the number of years in a duration. 
%% fn:years-from-duration($arg as xs:duration?) as xs:integer?
-spec 'years-from-duration'(xq_types:context(),
                            [] | xq_types:xs_duration()) -> 
         [] | xq_types:xs_integer().
'years-from-duration'(_Ctx, []) -> [];
'years-from-duration'(_Ctx, [Arg1]) ->
   'years-from-duration'(_Ctx, Arg1);
'years-from-duration'(_Ctx, #xqAtomicValue{value = #xsDateTime{sign = '-', 
                                                               year = Yr}}) ->
   ?atint(-Yr);
'years-from-duration'(_Ctx, #xqAtomicValue{value = #xsDateTime{year = Yr}}) ->
   ?atint(Yr).

%% Returns $arg if it contains zero or one items. Otherwise, raises an error. 
%% fn:zero-or-one($arg as item()*) as item()?
-spec 'zero-or-one'(xq_types:context(),
                    [] | xq_types:sequence(xq_types:xq_item())) -> 
         [] | xq_types:xq_item().
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
'put'(Ctx, Arg1, Arg2) ->
   'put'(Ctx, Arg1, Arg2, []).
'put'(Ctx, [Node0], Uri0, Opts0) -> 'put'(Ctx, Node0, Uri0, Opts0);
'put'(#{'base-uri' := BaseUri0} = Ctx, Node0, Uri0, Opts0) -> 
   ok = case xqldb_mem_nodes:node_kind(Node0) of
           document -> ok;
           element -> ok;
           %comment -> ok;
           %'processing-instruction' -> ok;
           _ ->
              ?err('FOUP0001')
        end,
   Uri = xqerl_types:value(Uri0),
   BaseUri = xqerl_types:value(BaseUri0),
   try 
      xqerl_lib:resolve_against_base_uri(BaseUri, Uri) 
   of
      AbsUri ->
         Nss = maps:get(namespaces, Ctx, []),
         Opts = xqerl_options:serialization_option_map(Opts0, Nss),
         _ = xqerl_update:add(Ctx, {put, Node0, AbsUri, Opts}),
         []
   catch
      _:_ ->
         ?err('FOUP0002')
   end.
