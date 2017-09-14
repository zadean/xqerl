%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017 Zachary N. Dean  All Rights Reserved.
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
%%       one namespace across different erlang modules. The functions attribute compiled in sucks!!
%% @TODO de-dupe helper functions throughout.
%% @TODO remove the kludge/spaghetti code and deeply nested case statements.
%% @TODO move helpful stuff into operators or own module.
 
-module(xqerl_fn).

-define(inbool(Val), #xqAtomicValue{type = 'xs:boolean', value = Val}).
-define(bool(Val), ?seq:singleton(#xqAtomicValue{type = 'xs:boolean', value = Val})).
-define(int(Val), ?seq:singleton(#xqAtomicValue{type = 'xs:integer', value = Val})).
-define(dec(Val), ?seq:singleton(#xqAtomicValue{type = 'xs:decimal', value = Val})).
-define(dbl(Val), ?seq:singleton(#xqAtomicValue{type = 'xs:double', value = Val})).
-define(str(Val), ?seq:singleton(#xqAtomicValue{type = 'xs:string', value = Val})).
-define(atm(Typ,Val), ?seq:singleton(#xqAtomicValue{type = Typ, value = Val})).
-define(node_test, ?seq:singleton(#xqAtomicValue{type = 'xs:string', value = Val})).
-include("xqerl.hrl").

-'module-namespace'({"http://www.w3.org/2005/xpath-functions", "fn"}).
-variables([]).
-functions([
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","abs"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'abs', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","adjust-dateTime-to-timezone"},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'adjust-dateTime-to-timezone', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","adjust-dateTime-to-timezone"},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'adjust-dateTime-to-timezone', 3}, 2,[{xqSeqType, 'xs:dateTime', zero_or_one},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","adjust-date-to-timezone"},{xqSeqType, 'xs:date', zero_or_one}, [], 
 {'adjust-date-to-timezone', 2}, 1, [{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","adjust-date-to-timezone"},{xqSeqType, 'xs:date', zero_or_one}, [], 
 {'adjust-date-to-timezone', 3},2,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","adjust-time-to-timezone"},{xqSeqType, 'xs:time', zero_or_one}, [], 
 {'adjust-time-to-timezone', 2},1, [{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","adjust-time-to-timezone"},{xqSeqType, 'xs:time', zero_or_one}, [], 
 {'adjust-time-to-timezone', 3},2,[{xqSeqType, 'xs:time', zero_or_one},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","analyze-string"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, one}, [], 
 {'analyze-string', 3},2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","analyze-string"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, one}, [], 
 {'analyze-string', 4},3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","apply"},{xqSeqType, item, zero_or_many}, [], 
 {'apply', 3}, 2,[{xqSeqType,{xqFunTest,function,[],undefined,any,any}, one},{xqSeqType, {is_array, '*'}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","available-environment-variables"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'available-environment-variables', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","avg"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'avg', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","base-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'base-uri', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","base-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'base-uri', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","boolean"},{xqSeqType, 'xs:boolean', one}, [], 
 {'boolean', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","ceiling"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'ceiling', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","codepoint-equal"},{xqSeqType, 'xs:boolean', zero_or_one}, [],
 {'codepoint-equal', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","codepoints-to-string"},{xqSeqType, 'xs:string', one}, [], 
 {'codepoints-to-string', 2}, 1,[{xqSeqType, 'xs:integer', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","collation-key"},{xqSeqType, 'xs:base64Binary', one}, [], 
 {'collation-key', 2},1, [{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","collation-key"},{xqSeqType, 'xs:base64Binary', one}, [], 
 {'collation-key', 3},2,[{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","collection"},{xqSeqType, item, one}, [], 
 {'collection', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","collection"},{xqSeqType, item, one}, [], 
 {'collection', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","compare"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'compare', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","compare"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'compare', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
 {'concat', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 4}, 3,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 5}, 4,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 6}, 5,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 7}, 6,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 8}, 7,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 9}, 8,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 10},9,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 11},10,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 12},11,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 13},12,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
%% {{qname, "http://www.w3.org/2005/xpath-functions", "fn","concat"},{xqSeqType, 'xs:string', one}, [], 
%%  {'concat', 14},13,[{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","contains"},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","contains"},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","contains-token"},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains-token', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","contains-token"},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains-token', 4}, 3,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","count"},{xqSeqType, 'xs:integer', one}, [], 
 {'count', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","current-date"},{xqSeqType, 'xs:date', one}, [], 
 {'current-date', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","current-dateTime"},{xqSeqType, 'xs:dateTimeStamp', one}, [], 
 {'current-dateTime', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","current-time"},{xqSeqType, 'xs:time', one}, [], 
 {'current-time', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","data"},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'data', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","data"},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'data', 2}, 1, [{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","dateTime"},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'dateTime', 3}, 2,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","day-from-date"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'day-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","day-from-dateTime"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'day-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","days-from-duration"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'days-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","deep-equal"},{xqSeqType, 'xs:boolean', one}, [], 
 {'deep-equal', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","deep-equal"},{xqSeqType, 'xs:boolean', one}, [], 
 {'deep-equal', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","default-collation"},{xqSeqType, 'xs:string', one}, [], 
 {'default-collation', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","default-language"},{xqSeqType, 'xs:language', one}, [], 
 {'default-language', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","distinct-values"},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'distinct-values', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","distinct-values"},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'distinct-values', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","doc"},{xqSeqType, {xqKindTest,document,undefined,undefined,undefined}, one}, [],
 {'doc', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","doc-available"},{xqSeqType, 'xs:boolean', one}, [], 
 {'doc-available', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","document-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'document-uri', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","document-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'document-uri', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","element-with-id"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, zero_or_many}, [],
 {'element-with-id', 2}, 1,[{xqSeqType, 'xs:string', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","element-with-id"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, zero_or_many}, [],
 {'element-with-id', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","empty"},{xqSeqType, 'xs:boolean', one}, [], 
 {'empty', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","encode-for-uri"},{xqSeqType, 'xs:string', one}, [], 
 {'encode-for-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","ends-with"},{xqSeqType, 'xs:boolean', one}, [], 
 {'ends-with', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","ends-with"},{xqSeqType, 'xs:boolean', one}, [], 
 {'ends-with', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","environment-variable"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'environment-variable', 2}, 1, [{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","error"},{xqSeqType, 'empty-sequence', one}, [], 
 {'error', 1},0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","error"},{xqSeqType, 'empty-sequence', one}, [], 
 {'error', 2},1, [{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","error"},{xqSeqType, 'empty-sequence', one}, [], 
 {'error', 3},2,[{xqSeqType, 'xs:QName', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","error"},{xqSeqType, 'empty-sequence', one}, [], 
 {'error', 4},3,[{xqSeqType, 'xs:QName', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","escape-html-uri"},{xqSeqType, 'xs:string', one}, [], 
 {'escape-html-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","exactly-one"},{xqSeqType, item, one}, [], 
 {'exactly-one', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","exists"},{xqSeqType, 'xs:boolean', one}, [], 
 {'exists', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","false"},{xqSeqType, 'xs:boolean', one}, [], 
 {'false', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","filter"},{xqSeqType, item, zero_or_many}, [], 
 {'filter', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, "http://www.w3.org/2005/xpath-functions", "fn","filter"},[{xqSeqType, item, one}],{xqSeqType, 'xs:boolean', one}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","floor"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'floor', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","fold-left"},{xqSeqType, item, zero_or_many}, [], 
 {'fold-left', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, "http://www.w3.org/2005/xpath-functions", "fn","fold-left"},[{xqSeqType, item, zero_or_many},{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","fold-right"},{xqSeqType, item, zero_or_many}, [], 
 {'fold-right', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, "http://www.w3.org/2005/xpath-functions", "fn","fold-right"},[{xqSeqType, item, zero_or_many},{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","for-each"},{xqSeqType, item, zero_or_many}, [], 
 {'for-each', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, "http://www.w3.org/2005/xpath-functions", "fn","for-each"},[{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","for-each-pair"},{xqSeqType, item, zero_or_many}, [], 
 {'for-each-pair', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_many},{xqSeqType,{xqFunTest,function,[],{qname, "http://www.w3.org/2005/xpath-functions", "fn","for-each-pair"},[{xqSeqType, item, one},{xqSeqType, item, one}],{xqSeqType, item, zero_or_many}},zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","format-date"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-date', 3}, 2,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","format-date"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-date', 6}, 5,[{xqSeqType, 'xs:date', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","format-dateTime"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-dateTime', 3}, 2,[{xqSeqType, 'xs:dateTime', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","format-dateTime"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-dateTime', 6}, 5,[{xqSeqType, 'xs:dateTime', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","format-integer"},{xqSeqType, 'xs:string', one}, [], 
 {'format-integer', 3}, 2,[{xqSeqType, 'xs:integer', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","format-integer"},{xqSeqType, 'xs:string', one}, [], 
 {'format-integer', 4}, 3,[{xqSeqType, 'xs:integer', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","format-number"},{xqSeqType, 'xs:string', one}, [], 
 {'format-number', 3}, 2,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","format-number"},{xqSeqType, 'xs:string', one}, [], 
 {'format-number', 4}, 3,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","format-time"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-time', 3}, 2,[{xqSeqType, 'xs:time', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","format-time"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'format-time', 6}, 5,[{xqSeqType, 'xs:time', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","function-arity"},{xqSeqType, 'xs:integer', one}, [], 
 {'function-arity', 2}, 1,[{xqSeqType,{xqFunTest,function,[],undefined,any,any}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","function-lookup"},{xqSeqType,{xqFunTest,function,[],undefined,any,any},zero_or_one},[], 
 {'function-lookup', 3}, 2,[{xqSeqType, 'xs:QName', one},{xqSeqType, 'xs:integer', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","function-name"},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'function-name', 2}, 1,[{xqSeqType,{xqFunTest,function,[],undefined,any,any}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","generate-id"},{xqSeqType, 'xs:string', one}, [], 
 {'generate-id', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","generate-id"},{xqSeqType, 'xs:string', one}, [], 
 {'generate-id', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","has-children"},{xqSeqType, 'xs:boolean', one}, [], 
 {'has-children', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","has-children"},{xqSeqType, 'xs:boolean', one}, [], 
 {'has-children', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","head"},{xqSeqType, item, zero_or_one}, [], 
 {'head', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","hours-from-dateTime"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'hours-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","hours-from-duration"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'hours-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","hours-from-time"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'hours-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","id"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, zero_or_many}, [],
 {'id', 2}, 1,[{xqSeqType, 'xs:string', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","id"},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, zero_or_many}, [],
 {'id', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","idref"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}, [],
 {'idref', 2}, 1,[{xqSeqType, 'xs:string', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","idref"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}, [],
 {'idref', 3}, 2,[{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","implicit-timezone"},{xqSeqType, 'xs:dayTimeDuration', one}, [],
 {'implicit-timezone', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","index-of"},{xqSeqType, 'xs:integer', zero_or_many}, [],
 {'index-of', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:anyAtomicType', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","index-of"},{xqSeqType, 'xs:integer', zero_or_many}, [],
 {'index-of', 4}, 3,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:anyAtomicType', one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","innermost"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}, [],
 {'innermost', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","in-scope-prefixes"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'in-scope-prefixes', 2}, 1,[{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","insert-before"},{xqSeqType, item, zero_or_many}, [], 
 {'insert-before', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:integer', one},{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","iri-to-uri"},{xqSeqType, 'xs:string', one}, [], 
 {'iri-to-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","json-doc"},{xqSeqType, item, zero_or_one}, [], 
 {'json-doc', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","json-doc"},{xqSeqType, item, zero_or_one}, [], 
 {'json-doc', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {is_map, '*'}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","json-to-xml"},{xqSeqType, {xqKindTest,document,undefined,undefined,undefined}, one}, [],
 {'json-to-xml', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","json-to-xml"},{xqSeqType, {xqKindTest,document,undefined,undefined,undefined}, one}, [],
 {'json-to-xml', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {is_map, '*'}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","lang"},{xqSeqType, 'xs:boolean', one}, [], 
 {'lang', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","lang"},{xqSeqType, 'xs:boolean', one}, [], 
 {'lang', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","last"},{xqSeqType, 'xs:integer', one}, [], 
 {'last', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","load-xquery-module"},{xqSeqType, {is_map, '*'}, one}, [], 
 {'load-xquery-module', 2}, 1,[{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","load-xquery-module"},{xqSeqType, {is_map, '*'}, one}, [], 
 {'load-xquery-module', 3}, 2,[{xqSeqType, 'xs:string', one},{xqSeqType, {is_map, '*'}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","local-name"},{xqSeqType, 'xs:string', one}, [], 
 {'local-name', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","local-name"},{xqSeqType, 'xs:string', one}, [], 
 {'local-name', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","local-name-from-QName"},{xqSeqType, 'xs:NCName', zero_or_one}, [],
 {'local-name-from-QName', 2}, 1,[{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","lower-case"},{xqSeqType, 'xs:string', one}, [], 
 {'lower-case', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","matches"},{xqSeqType, 'xs:boolean', one}, [], 
 {'matches', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","matches"},{xqSeqType, 'xs:boolean', one}, [], 
 {'matches', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","max"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'max', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","max"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'max', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","min"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'min', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","min"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'min', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","minutes-from-dateTime"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'minutes-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","minutes-from-duration"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'minutes-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","minutes-from-time"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'minutes-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","month-from-date"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'month-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","month-from-dateTime"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'month-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","months-from-duration"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'months-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","name"},{xqSeqType, 'xs:string', one}, [], 
 {'name', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","name"},{xqSeqType, 'xs:string', one}, [], 
 {'name', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","namespace-uri"},{xqSeqType, 'xs:anyURI', one}, [], 
 {'namespace-uri', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","namespace-uri"},{xqSeqType, 'xs:anyURI', one}, [], 
 {'namespace-uri', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","namespace-uri-for-prefix"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'namespace-uri-for-prefix', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","namespace-uri-from-QName"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'namespace-uri-from-QName', 2}, 1,[{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","nilled"},{xqSeqType, 'xs:boolean', zero_or_one}, [],
 {'nilled', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","nilled"},{xqSeqType, 'xs:boolean', zero_or_one}, [],
 {'nilled', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","node-name"},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'node-name', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","node-name"},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'node-name', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","normalize-space"},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-space', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","normalize-space"},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-space', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","normalize-unicode"},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-unicode', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","normalize-unicode"},{xqSeqType, 'xs:string', one}, [], 
 {'normalize-unicode', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","not"},{xqSeqType, 'xs:boolean', one}, [], 
 {'not', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","number"},{xqSeqType, 'xs:double', one}, [], 
 {'number', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","number"},{xqSeqType, 'xs:double', one}, [], 
 {'number', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","one-or-more"},{xqSeqType, item, one_or_many}, [], 
 {'one-or-more', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","outermost"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}, [],
 {'outermost', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","parse-ietf-date"},{xqSeqType, 'xs:dateTime', zero_or_one}, [],
 {'parse-ietf-date', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","parse-json"},{xqSeqType, item, zero_or_one}, [], 
 {'parse-json', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","parse-json"},{xqSeqType, item, zero_or_one}, [], 
 {'parse-json', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {is_map, '*'}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","parse-xml"},{xqSeqType, {is_document, {xqKindTest,element,undefined,undefined,undefined}}, one}, [],
 {'parse-xml', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","parse-xml-fragment"},{xqSeqType, {xqKindTest,document,undefined,undefined,undefined}, zero_or_one}, [],
 {'parse-xml-fragment', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","path"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'path', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","path"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'path', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","position"},{xqSeqType, 'xs:integer', one}, [], 
 {'position', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","prefix-from-QName"},{xqSeqType, 'xs:NCName', zero_or_one}, [],
 {'prefix-from-QName', 2}, 1,[{xqSeqType, 'xs:QName', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","QName"},{xqSeqType, 'xs:QName', one}, [], 
 {'QName', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","random-number-generator"},{xqSeqType,{is_map,{'map-type', 'xs:string', {xqSeqType, item, one}}},one},[], 
 {'random-number-generator', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","random-number-generator"},{xqSeqType,{is_map,{'map-type', 'xs:string', {xqSeqType, item, one}}},one},[], 
 {'random-number-generator', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","remove"},{xqSeqType, item, zero_or_many}, [], 
 {'remove', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:integer', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","replace"},{xqSeqType, 'xs:string', one}, [], 
 {'replace', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","replace"},{xqSeqType, 'xs:string', one}, [], 
 {'replace', 5}, 4,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","resolve-QName"},{xqSeqType, 'xs:QName', zero_or_one}, [],
 {'resolve-QName', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, {xqKindTest,element,undefined,undefined,undefined}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","resolve-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'resolve-uri', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","resolve-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'resolve-uri', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","reverse"},{xqSeqType, item, zero_or_many}, [], 
 {'reverse', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","root"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, one}, [], 
 {'root', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","root"},{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}, [],
 {'root', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","round"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","round"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round', 3}, 2,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:integer', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","round-half-to-even"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round-half-to-even', 2}, 1,[{xqSeqType, 'xs:numeric', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","round-half-to-even"},{xqSeqType, 'xs:numeric', zero_or_one}, [],
 {'round-half-to-even', 3}, 2,[{xqSeqType, 'xs:numeric', zero_or_one},{xqSeqType, 'xs:integer', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","seconds-from-dateTime"},{xqSeqType, 'xs:decimal', zero_or_one}, [],
 {'seconds-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","seconds-from-duration"},{xqSeqType, 'xs:decimal', zero_or_one}, [],
 {'seconds-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","seconds-from-time"},{xqSeqType, 'xs:decimal', zero_or_one}, [],
 {'seconds-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","serialize"},{xqSeqType, 'xs:string', one}, [], 
 {'serialize', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","serialize"},{xqSeqType, 'xs:string', one}, [], 
 {'serialize', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, item, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","sort"},{xqSeqType, item, zero_or_many}, [], 
 {'sort', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","sort"},{xqSeqType, item, zero_or_many}, [], 
 {'sort', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","sort"},{xqSeqType, item, zero_or_many}, [], 
 {'sort', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType,{is_function, {annotations, undefined},{{xqSeqType, 'xs:anyAtomicType', zero_or_many},{parameters, [{xqSeqType, item, one}]}}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","starts-with"},{xqSeqType, 'xs:boolean', one}, [], 
 {'starts-with', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","starts-with"},{xqSeqType, 'xs:boolean', one}, [], 
 {'starts-with', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","static-base-uri"},{xqSeqType, 'xs:anyURI', zero_or_one}, [],
 {'static-base-uri', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","string"},{xqSeqType, 'xs:string', one}, [], 
 {'string', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","string"},{xqSeqType, 'xs:string', one}, [], 
 {'string', 2}, 1,[{xqSeqType, item, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","string-join"},{xqSeqType, 'xs:string', one}, [], 
 {'string-join', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","string-join"},{xqSeqType, 'xs:string', one}, [], 
 {'string-join', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","string-length"},{xqSeqType, 'xs:integer', one}, [], 
 {'string-length', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","string-length"},{xqSeqType, 'xs:integer', one}, [], 
 {'string-length', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","string-to-codepoints"},{xqSeqType, 'xs:integer', zero_or_many}, [],
 {'string-to-codepoints', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","subsequence"},{xqSeqType, item, zero_or_many}, [], 
 {'subsequence', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:double', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","subsequence"},{xqSeqType, item, zero_or_many}, [], 
 {'subsequence', 4}, 3,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:double', one},{xqSeqType, 'xs:double', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","substring"},{xqSeqType, 'xs:string', one}, [], 
 {'substring', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:double', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","substring"},{xqSeqType, 'xs:string', one}, [], 
 {'substring', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:double', one},{xqSeqType, 'xs:double', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","substring-after"},{xqSeqType, 'xs:string', one}, [], 
 {'substring-after', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","substring-after"},{xqSeqType, 'xs:string', one}, [], 
 {'substring-after', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","substring-before"},{xqSeqType, 'xs:string', one}, [], 
 {'substring-before', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","substring-before"},{xqSeqType, 'xs:string', one}, [], 
 {'substring-before', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","sum"},{xqSeqType, 'xs:anyAtomicType', one}, [],
 {'sum', 2}, 1,[{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","sum"},{xqSeqType, 'xs:anyAtomicType', zero_or_one}, [],
 {'sum', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', zero_or_many},{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","tail"},{xqSeqType, item, zero_or_many}, [], 
 {'tail', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","timezone-from-date"},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
 {'timezone-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","timezone-from-dateTime"},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
 {'timezone-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","timezone-from-time"},{xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
 {'timezone-from-time', 2}, 1,[{xqSeqType, 'xs:time', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","tokenize"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'tokenize', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","tokenize"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'tokenize', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","tokenize"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'tokenize', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","trace"},{xqSeqType, item, zero_or_many}, [], 
 {'trace', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","trace"},{xqSeqType, item, zero_or_many}, [], 
 {'trace', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","transform"},{xqSeqType, {is_map, '*'}, one}, [], 
 {'transform', 2}, 1,[{xqSeqType, {is_map, '*'}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","translate"},{xqSeqType, 'xs:string', one}, [], 
 {'translate', 4}, 3,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","true"},{xqSeqType, 'xs:boolean', one}, [], 
 {'true', 1}, 0,[]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","unordered"},{xqSeqType, item, zero_or_many}, [], 
 {'unordered', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","unparsed-text"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'unparsed-text', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","unparsed-text"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'unparsed-text', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","unparsed-text-available"},{xqSeqType, 'xs:boolean', one}, [], 
 {'unparsed-text-available', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","unparsed-text-available"},{xqSeqType, 'xs:boolean', one}, [], 
 {'unparsed-text-available', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","unparsed-text-lines"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'unparsed-text-lines', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","unparsed-text-lines"},{xqSeqType, 'xs:string', zero_or_many}, [],
 {'unparsed-text-lines', 3}, 2,[{xqSeqType, 'xs:string', zero_or_one},{xqSeqType, 'xs:string', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","upper-case"},{xqSeqType, 'xs:string', one}, [], 
 {'upper-case', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","uri-collection"},{xqSeqType, 'xs:anyURI', zero_or_many}, [],
 {'uri-collection', 1}, 0, []},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","uri-collection"},{xqSeqType, 'xs:anyURI', zero_or_many}, [],
 {'uri-collection', 2}, 1,[{xqSeqType, 'xs:string', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","xml-to-json"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'xml-to-json', 2}, 1,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","xml-to-json"},{xqSeqType, 'xs:string', zero_or_one}, [],
 {'xml-to-json', 3}, 2,[{xqSeqType, {xqKindTest,node,undefined,undefined,undefined}, zero_or_one},{xqSeqType, {is_map, '*'}, one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","year-from-date"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'year-from-date', 2}, 1,[{xqSeqType, 'xs:date', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","year-from-dateTime"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'year-from-dateTime', 2}, 1,[{xqSeqType, 'xs:dateTime', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","years-from-duration"},{xqSeqType, 'xs:integer', zero_or_one}, [],
 {'years-from-duration', 2}, 1,[{xqSeqType, 'xs:duration', zero_or_one}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","zero-or-one"},{xqSeqType, item, zero_or_one}, [], 
 {'zero-or-one', 2}, 1,[{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions", "fn","put"},{xqSeqType, 'empty-sequence', one},[{annotation,{{qname, "http://www.w3.org/2012/xquery", [],"updating"},[]}}],
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
'abs'(_Ctx,Arg01) ->
   Arg1 = case ?seq:is_sequence(Arg01) of
             true ->
                Arg01;
             _ ->
               ?seq:singleton(Arg01)
          end,
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         #xqAtomicValue{type = Type, value = Val} = ?seq:singleton_value(Arg1),
         case Val of
            "INF" ->
               Arg1;
            "-INF" ->
               ?seq:singleton(#xqAtomicValue{type = Type, value = "INF"});
            "NaN" ->
               Arg1;
            _ ->
               case xqerl_types:subtype_of(Type, 'xs:integer') of
                  true ->
                     ?seq:singleton(#xqAtomicValue{type = 'xs:integer', value = erlang:abs(Val)});
                  _ ->
                     if is_list(Val) ->
                           ?seq:singleton(#xqAtomicValue{type = 'xs:double', value = erlang:abs(erlang:list_to_float(Val))});
                        true ->
                           ?seq:singleton(#xqAtomicValue{type = Type, value = erlang:abs(Val)})
                     end
               end
         end
   end.

%% Adjusts an xs:dateTime value to a specific timezone, or to no timezone at all. 
'adjust-dateTime-to-timezone'(Ctx,Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         'adjust-dateTime-to-timezone'(Ctx,Arg1,?seq:singleton(#xqAtomicValue{type = 'xs:dayTimeDuration', 
                                                                              value = #xsDateTime{month = 0,
                                                                                                  day = 0,
                                                                                                  offset = xqerl_context:get_implicit_timezone()}}
                                                              ))
   end.

'adjust-dateTime-to-timezone'(_Ctx,Arg1,Arg2) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         #xqAtomicValue{type = Type, value = #xsDateTime{offset = Os} = Val} = ?seq:singleton_value(Arg1),
         case ?seq:is_empty(Arg2) of
            true ->
               NewDtTmWOs = Val#xsDateTime{offset = []},
               %?dbg("adjust-dateTime-to-timezone NewDtTmWOs",NewDtTmWOs),
               Str = xqerl_datetime:to_string(NewDtTmWOs, Type),
               %?dbg("adjust-dateTime-to-timezone Str",Str),
               ?seq:singleton(#xqAtomicValue{type = Type, value = NewDtTmWOs#xsDateTime{string_value = Str}});
         _ ->
            ArgDurStr  = case Os of 
                           [] ->
                              [];
                           _ ->
                              xqerl_datetime:to_string(Os,'xs:dayTimeDuration')
                        end,
            AdjDurStr = case ?seq:singleton_value(Arg2) of
                           #xqAtomicValue{type = 'xs:dayTimeDuration', value = #xsDateTime{second = Sec}} when Sec > 0 ->
                              xqerl_error:error('FODT0003');
                           #xqAtomicValue{type = 'xs:dayTimeDuration'} ->
                              Arg2;
                           O ->
                              xqerl_datetime:to_string(O,'xs:dayTimeDuration')
                        end,
            if ArgDurStr == [] andalso AdjDurStr == [] ->
                  Arg1;
               ArgDurStr == [] ->
                  AdjDur = xqerl_types:cast_as(AdjDurStr, 'xs:dayTimeDuration'),
                  #xsDateTime{sign = S, hour = H, minute = M} = xqerl_types:value(AdjDur),
                  NewOffset = #off_set{sign = S, hour = H, min = M},
                  NewDtTmWOs = Val#xsDateTime{offset = NewOffset},
                  Str = xqerl_datetime:to_string(NewDtTmWOs, Type),
                  ?seq:singleton(#xqAtomicValue{type = Type, value = NewDtTmWOs#xsDateTime{string_value = Str}});
               true ->
                  %?dbg("ArgDurStr",ArgDurStr),
                  DtDur  = xqerl_types:cast_as(?str(ArgDurStr), 'xs:dayTimeDuration'),
                  %?dbg("adjust-dateTime-to-timezone DtDur",DtDur),
                  AdjDur = xqerl_types:cast_as(AdjDurStr, 'xs:dayTimeDuration'),
                  %?dbg("adjust-dateTime-to-timezone AdjDur",AdjDur),
                  #xsDateTime{sign = S, hour = H, minute = M} = xqerl_types:value(AdjDur),
                  Diff = xqerl_operators:subtract(AdjDur, DtDur),
                  %?dbg("adjust-dateTime-to-timezone Diff",Diff),
                  #xqAtomicValue{value = NewDtTm} = ?seq:singleton_value(xqerl_operators:add(Arg1, Diff)),
                  %?dbg("adjust-dateTime-to-timezone NewDtTm",NewDtTm),
                  NewOffset = #off_set{sign = S, hour = H, min = M},
                  NewDtTmWOs = NewDtTm#xsDateTime{offset = NewOffset},
                  %?dbg("adjust-dateTime-to-timezone NewDtTmWOs",NewDtTmWOs),
                  Str = xqerl_datetime:to_string(NewDtTmWOs, Type),
                  %?dbg("adjust-dateTime-to-timezone Str",Str),
                  ?seq:singleton(#xqAtomicValue{type = Type, value = NewDtTmWOs#xsDateTime{string_value = Str}})
            end
         end
   end.


%% Adjusts an xs:date value to a specific timezone, or to no timezone at all; the result is the date in the target timezone that contains the starting instant of the supplied date. 
'adjust-date-to-timezone'(Ctx,Arg1) -> 
   'adjust-dateTime-to-timezone'(Ctx,Arg1).
'adjust-date-to-timezone'(Ctx,Arg1,Arg2) -> 
   'adjust-dateTime-to-timezone'(Ctx,Arg1,Arg2).

%% Adjusts an xs:time value to a specific timezone, or to no timezone at all. 
'adjust-time-to-timezone'(Ctx,Arg1) -> 
   'adjust-dateTime-to-timezone'(Ctx,Arg1).
'adjust-time-to-timezone'(Ctx,Arg1,Arg2) -> 
   'adjust-dateTime-to-timezone'(Ctx,Arg1,Arg2).

%% Analyzes a string using a regular expression, returning an XML structure that identifies which parts of the input string matched or failed to match the regular expression, and in the case of matched substrings, which substrings matched each capturing group in the regular expression. 
'analyze-string'(Ctx,Input,Pattern) ->
   'analyze-string'(Ctx,Input,Pattern,[]).

'analyze-string'(Ctx,Input,Pattern,Flags) -> 
   MP = xqerl_regex:regex_comp(Pattern,Flags),
   Input1 = string_value(Input),
   Content = case re:run(Input1, MP, [global]) of
                nomatch ->
                   [];
                {match,List} ->
                   List
             end,
   BaseUri = maps:get('base-uri', Ctx),
   Frag = #xqElementNode{name = #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                       prefix = "fn",
                                       local_name = "analyze-string-result"},
                         expr = if Input1 == [] ->
                                      [];
                                   true ->
                                      analyze_string1(Content,Input1)
                                end},
   xqerl_node:new_fragment(Frag,BaseUri).

analyze_string1([],String) -> % no matches
   #xqElementNode{name = #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                prefix = "fn",
                                local_name = "non-match"},
                         expr = ?str(String)};
analyze_string1(List,String) ->
   Fun = fun([{Start,End}|Groups],LastPos) ->
               Pre = if Start =/= LastPos ->
                           [analyze_string1([],string:slice(String,LastPos,(Start-LastPos)))];
                        true ->
                           []
                     end,
               Matches = case Groups of
                            [] ->
                               S = string:slice(String,Start,End),
                               #xqTextNode{expr = ?str(S)};
                            _ ->
                               {B,_} = hd(Groups),
                               {Es,Ee} = hd(lists:reverse(Groups)),
                               GrpSize = Es+Ee,
                               Tail = if Start + End > GrpSize -> % missing tail text 
                                            [#xqTextNode{expr = ?str(string:slice(String,GrpSize,Start + End - GrpSize))}];
                                         true ->
                                            []
                                      end,
                               if B > Start ->
                                     S = string:slice(String,Start,Start + End - B),
                                     [#xqTextNode{expr = ?str(S)}|get_groups(String,Groups,1)] ++ Tail;
                                  true ->
                                     get_groups(String,Groups,1) ++ Tail
                               end
                         end,
               Match = #xqElementNode{name = #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                                    prefix = "fn",
                                                    local_name = "match"},
                                      expr = Matches},
               if End == 0 ->
                     xqerl_error:error('FORX0003'); % would match empty str
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
   [#xqElementNode{name = #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                prefix = "fn",
                                local_name = "group"},
                  expr = [#xqAttributeNode{name = #qname{namespace = 'no-namespace', local_name = "nr"},
                                           expr = ?int(Cnt)},
                          if End == 0 ->
                                [];
                             true ->
                                #xqTextNode{expr = ?str(string:slice(String,Start,End))}
                          end
                         ]}];   
get_groups(String,[{-1,0}|T],Cnt) ->
   get_groups(String,T,Cnt+1);   
get_groups(String,[{Start,End},{NStart,NEnd}|Rest],Cnt) ->
   Pos1 = Start + End,
   if NStart =< Pos1 orelse (NStart == Pos1 andalso NEnd > 0) -> % overlap
         End1 = NStart - Start,
         Txt1 = #xqTextNode{expr = ?str(string:slice(String,Start,End1))},
         Att1 = #xqAttributeNode{name = #qname{namespace = 'no-namespace', local_name = "nr"}, expr = ?int(Cnt)},
         [#xqElementNode{name = #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                      prefix = "fn",
                                      local_name = "group"},
                        expr = [Att1,Txt1,get_groups(String,[{NStart,NEnd}|Rest],Cnt + 1)]}];
      true -> % no overlap
         Txt1 = #xqTextNode{expr = ?str(string:slice(String,Start,End))},
         Att1 = #xqAttributeNode{name = #qname{namespace = 'no-namespace', local_name = "nr"}, expr = ?int(Cnt)},
         [#xqElementNode{name = #qname{namespace = "http://www.w3.org/2005/xpath-functions",
                                      prefix = "fn",
                                      local_name = "group"},
                        expr = [Att1,Txt1]}|get_groups(String,[{NStart,NEnd}|Rest],Cnt + 1)]
  end.


%% Makes a dynamic call on a function with an argument list supplied in the form of an array. 
'apply'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% Returns a list of environment variable names that are suitable for passing to fn:environment-variable, as a (possibly empty) sequence of strings. 
'available-environment-variables'(_Ctx) -> 
   % NOT ALLOWING ACCESS TO ENVIRONMENT
   ?seq:empty().

%% Returns the average of the values in the input sequence $arg, that is, the sum of the values divided by the number of values. 
'avg'(_Ctx,Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         try
            {Seq,SeqType} = compare_convert_seq(?seq:to_list(Arg1), [], []),
            %?dbg("min", {Seq,SeqType}),
            Avg = avg1(Seq, [], 0),
            %?dbg("min1", Min1),
            xqerl_types:cast_as(Avg,
                                case xqerl_types:subtype_of(SeqType, 'xs:integer') of
                                   true ->
                                      'xs:decimal';
                                   _ ->
                                      SeqType
                                end)
         catch
            _:_ ->
               xqerl_error:error('FORG0006')
         end
   end.

avg1([], Sum, Count) ->
   xqerl_operators:divide(Sum, ?int(Count));
avg1([#xqAtomicValue{type = 'xs:double', value = "NaN"} = H|_], _, _) ->
   H;
avg1([#xqAtomicValue{type = 'xs:float', value = "NaN"} = H|_], _, _) ->
   H;
avg1([#xqAtomicValue{type = 'xs:double', value = "INF"} = H|_], _, _) ->
   H#xqAtomicValue{value = "NaN"};
avg1([#xqAtomicValue{type = 'xs:float', value = "INF"} = H|_], _, _) ->
   H#xqAtomicValue{value = "NaN"};
avg1([#xqAtomicValue{type = 'xs:double', value = "-INF"} = H|_], _, _) ->
   H#xqAtomicValue{value = "NaN"};
avg1([#xqAtomicValue{type = 'xs:float', value = "-INF"} = H|_], _, _) ->
   H#xqAtomicValue{value = "NaN"};
avg1([H|T], [], 0) ->
   avg1(T, H, 1);
avg1([H|T], Sum, Count) ->
   avg1(T, xqerl_operators:add(H, Sum), Count + 1).


%% Returns the base URI of a node. 
'base-uri'(Ctx) -> 'base-uri'(Ctx,xqerl_context:get_context_item(Ctx)).
'base-uri'(_Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         Node = ?seq:singleton_value(Arg1),
         case Node of
            #xqNode{frag_id = F} ->
               case xqerl_node:get_node(Node) of
                  #xqElementNode{base_uri = Base} ->
                     if Base == [] -> ?seq:empty();
                        true -> 
                           case ?seq:is_sequence(Base) of
                              true ->
                                 Base;
                              _ ->
                                 ?seq:singleton(Base)
                           end
                     end;
                  #xqDocumentNode{base_uri = Base} ->
                     if Base == [] -> ?seq:empty();
                        true -> 
                           case ?seq:is_sequence(Base) of
                              true ->
                                 Base;
                              _ ->
                                 ?seq:singleton(Base)
                           end
                     end;
                  #xqAttributeNode{parent_node = P} ->
                     case xqerl_node:get_node(#xqNode{frag_id = F, identity = P}) of
                        #xqElementNode{base_uri = PBase} ->
                           if PBase == [] -> ?seq:empty();
                              true -> 
                                 case ?seq:is_sequence(PBase) of
                                    true ->
                                       PBase;
                                    _ ->
                                       ?seq:singleton(PBase)
                                 end
                           end;
                        #xqDocumentNode{base_uri = PBase} ->
                           if PBase == [] -> ?seq:empty();
                              true -> 
                                 case ?seq:is_sequence(PBase) of
                                    true ->
                                       PBase;
                                    _ ->
                                       ?seq:singleton(PBase)
                                 end
                           end;
                        _ ->
                           ?seq:empty()
                     end;
                  O ->
                    ?dbg("base-uri",O),
                    ?seq:empty()
               end;
            _ ->
               xqerl_error:error('XPTY0004')
         end
   end.

%% Computes the effective boolean value of the sequence $arg. 
% 1
'boolean'(_Ctx,true) ->
   ?bool(true);
'boolean'(_Ctx,[true]) ->
   ?bool(true);
'boolean'(_Ctx,false) -> 
   ?bool(false);
'boolean'(_Ctx,[false]) -> 
   ?bool(false);
% 2
'boolean'(_Ctx,#xqNode{}) ->
   ?bool(true);
'boolean'(_Ctx,[#xqNode{}|_]) ->
   ?bool(true);
% 3
'boolean'(_Ctx,#xqAtomicValue{type = 'xs:boolean', value = true}) -> 
   ?bool(true);
'boolean'(_Ctx,#xqAtomicValue{type = 'xs:boolean', value = false}) -> 
   ?bool(false);
% 4
'boolean'(_Ctx,#xqAtomicValue{type = Type, value = Val}) when Type == 'xs:string';
                                                                Type == 'xs:anyURI';
                                                                Type == 'xs:untypedAtomic'-> 
   ?bool(if Val == "" -> false;
            true -> true
         end);
% 5 + 6
'boolean'(_Ctx,#xqAtomicValue{type = Type, value = Val}) ->
   %?dbg("boolean", Type),
   %?dbg("boolean", Val),
   case xqerl_types:is_numeric_type(Type) of
      true ->
         if Val == 0 orelse Val == "NaN" ->
               ?bool(false);
            true ->
               ?bool(true)
         end;
      _ ->
         xqerl_error:error('FORG0006')
   end;
%% 'boolean'(Ctx,Arg1) when is_map(Arg1) ->
%%    'boolean'(Ctx,xqerl_context:get_context_item(Arg1));
%% 'boolean'(Ctx,Arg1) when is_tuple(Arg1) -> 
%%    'boolean'(Ctx,[Arg1]);
'boolean'(Ctx,[Seq]) -> 'boolean'(Ctx,Seq);

'boolean'(Ctx,Seq) ->
   case ?seq:is_sequence(Seq) of
      true ->
         case ?seq:is_empty(Seq) of
            true ->
               ?bool(false);
            _ ->
               'boolean'(Ctx,?seq:to_list(Seq))
         end;
      _ ->
         ?dbg("boolean", Seq),
         xqerl_error:error('FORG0006')
   end.

%% Rounds $arg upwards to a whole number. 
'ceiling'(_Ctx,Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         Val = xqerl_types:value(Arg1),
         if Val == "INF" orelse Val == "-INF" orelse Val == "NaN" ->
               Arg1;
            true ->
               Type = xqerl_types:type(Arg1),
               T = trunc(Val),
               case (Val - T) of
                  Neg when Neg < 0 -> xqerl_types:cast_as(?int(T), Type) ;
                  Pos when Pos > 0 -> xqerl_types:cast_as(?int(T + 1), Type);
                  _ -> xqerl_types:cast_as(?int(T), Type)
               end
         end
   end.

%% Returns true if two strings are equal, considered codepoint-by-codepoint. 
'codepoint-equal'(_Ctx,Arg1,Arg2) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         case ?seq:is_empty(Arg2) of
            true ->
               Arg2;
            _ ->
               try
                  #xqAtomicValue{type = 'xs:string', value = Str1} = ?seq:singleton_value(Arg1),
                  #xqAtomicValue{type = 'xs:string', value = Str2} = ?seq:singleton_value(Arg2),
                  ?bool(Str1 == Str2)
               catch
                  _:_ ->
                     xqerl_error:error('XPTY0004')
               end
         end
   end.

%% Returns an xs:string whose characters have supplied codepoints. 
'codepoints-to-string'(_Ctx,Arg1) -> 
   %?dbg("codepoints-to-string", Arg1),
   Ints = ?seq:to_list(Arg1),
   %?dbg("codepoints-to-string",?LINE),
   Fun = fun(#xqAtomicValue{value = Int}) when is_integer(Int) ->
               case xqerl_lib:is_xschar(Int) of
                  true ->
                     Int;
                  _ ->
                     xqerl_error:error('FOCH0001')
               end
         end,
   %?dbg("codepoints-to-string",?LINE),
   Cps = lists:map(Fun, Ints),
   %?dbg("codepoints-to-string",?LINE),
   ?str(Cps).

%% Given a string value and a collation, generates an internal value called a collation key, with the property that 
%% the matching and ordering of collation keys reflects the matching and ordering of strings under the specified collation. 
'collation-key'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'collation-key'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% Returns a sequence of items identified by a collection URI; or a default collection if no URI is supplied. 
'collection'(_Ctx) -> exit({not_implemented_maybe_later,?LINE}).
'collection'(_Ctx,_Arg1) -> exit({not_implemented_maybe_later,?LINE}).

%% Returns -1, 0, or 1, depending on whether $comparand1 collates before, equal to, or after $comparand2 according to the rules of a selected collation. 
'compare'(_Ctx,Arg1,Arg2) -> 
   case ?seq:is_empty(Arg1) of true -> Arg1;
      _ ->
         case ?seq:is_empty(Arg2) of true -> Arg2;
         _ ->
            Str1 = xqerl_types:string_value(Arg1),
            Str2 = xqerl_types:string_value(Arg2),
            if Str1 < Str2 -> ?int(-1);
               Str1 > Str2 -> ?int(1);
               true -> ?int(0)
            end
         end
   end.

%TODO collation
'compare'(Ctx,Arg1,Arg2,Collation) -> 
   Coll = xqerl_types:value(Collation),
   All = xqerl_context:get_statically_known_collations(),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         ?MODULE:'compare'(Ctx,Arg1,Arg2);
      _ ->
         xqerl_error:error('FOCH0002')
   end.

%% Returns the concatenation of the string values of the arguments. 
%% 'concat'(Ctx,Arg1,Arg2) -> concat1(Ctx,[Arg1,Arg2]).
'concat'(Ctx,Arg1) -> 'string-join'(Ctx,Arg1).


%% 'concat'(_Ctx,Arg1,Arg2) -> 
%%    Val1 = xqerl_types:string_value(Arg1),
%%    Val2 = xqerl_types:string_value(Arg2),
%%    ?seq:singleton(#xqAtomicValue{type='xs:string', value = lists:concat([Val1,Val2])}).

%% concat1(Ctx,List) ->
%%    'string-join'(Ctx,?seq:from_list(List)).


%% Returns true if the string $arg1 contains $arg2 as a substring, taking collations into account. 
'contains'(_Ctx,Arg1,Arg2) -> 
   S1 = string_value(data(_Ctx, Arg1)),
   S2 = xqerl_types:value(Arg2),
   case string:find(S1,S2) of
      nomatch ->
         ?bool(false);
      _ ->
         ?bool(true)
   end.
%TODO collation
'contains'(_Ctx,Arg1,Arg2,Collation) -> 
   Coll = xqerl_types:value(Collation),
   All = xqerl_context:get_statically_known_collations(),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         'contains'(_Ctx,Arg1,Arg2);
      _ ->
         xqerl_error:error('FOCH0002')
   end.

%% Determines whether or not any of the supplied strings, when tokenized at whitespace boundaries, 
%% contains the supplied token, under the rules of the supplied collation. 
'contains-token'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).
'contains-token'(_Ctx,_Arg1,_Arg2,_Arg3) -> exit({not_implemented,?LINE}).

'count'(_Ctx,Arg1) ->
   Size = ?seq:size(Arg1),
   ?int(Size).

%% Returns the current date. 
'current-date'(_Ctx) -> 
   xqerl_types:cast_as(xqerl_context:get_current_datetime(), 'xs:date') .

%% Returns the current date and time (with timezone). 
'current-dateTime'(_Ctx) -> 
   ?seq:singleton(xqerl_context:get_current_datetime()).

%% Returns the current time. 
'current-time'(_Ctx) -> 
   xqerl_types:cast_as(xqerl_context:get_current_datetime(), 'xs:time') .

%% Returns the result of atomizing a sequence. This process flattens arrays, and replaces nodes by their typed values. 
'data'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'data'(Ctx, Ci).
'data'(_Ctx,Arg1) -> 
   Data = ?seq:val_map(fun(I) ->
                   case I of
                      #xqAtomicValue{} ->
                         I;
                      #xqNode{} -> % TODO all node types
                         xqerl_node:atomize_nodes(I);
                      #xqFunction{} ->
                         xqerl_error:error('FOTY0013')
                   end                      
             end, Arg1),
   %?dbg("Data",Data),
   Data.

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
                     xqerl_error:error('FORG0008')
               end,
   DT = Date#xsDateTime{hour = Hour, minute = Min, second = Sec, offset = NewOffset},
   ?seq:singleton(
   #xqAtomicValue{type = 'xs:dateTime', 
                  value = DT#xsDateTime{string_value = xqerl_datetime:to_string(DT,'xs:dateTime')}});
'dateTime'(Ctx,Arg1,Arg2) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         case ?seq:is_empty(Arg2) of
            true ->
               Arg2;
            _ ->
               'dateTime'(Ctx,?seq:singleton_value(Arg1),?seq:singleton_value(Arg2))
         end
   end.

%% Returns the day component of an xs:date. 
'day-from-date'(Ctx,Arg1) -> 
   'days-from-duration'(Ctx, Arg1).

%% Returns the day component of an xs:dateTime. 
'day-from-dateTime'(Ctx,Arg1) -> 
   'days-from-duration'(Ctx, Arg1).

%% Returns the number of days in a duration. 
'days-from-duration'(_Ctx, Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
        Arg1;
      _ ->
         #xqAtomicValue{value = #xsDateTime{sign = Sn, day = Dy}} = ?seq:singleton_value(Arg1),
         Dy1 = if Sn =:= '-' ->
                     Dy * -1;
                  true ->
                     Dy
               end,
         ?int(Dy1)
   end.

%% This function assesses whether two sequences are deep-equal to each other. 
%% To be deep-equal, they must contain items that are pairwise deep-equal; 
%% and for two items to be deep-equal, they must either be atomic values that compare equal, 
%% or nodes of the same kind, with the same name, whose children are deep-equal, 
%% or maps with matching entries, or arrays with matching members. 
%TODO arrays
%'deep-equal'(_Ctx,[],[]) -> ?bool(true);
'deep-equal'(_Ctx,Arg1,Arg2) -> 
   case ?seq:is_empty(Arg1) andalso ?seq:is_empty(Arg2) of
      true ->
         ?bool(true);
      _ ->
         case count([], Arg1) =/= count([], Arg2) of
            true ->
               ?bool(false);
            _ ->
               Zip = lists:zip(?seq:to_list(Arg1), ?seq:to_list(Arg2)),
               %?dbg("deep-equal",Zip),
               try
                  ?bool(lists:all(fun({#xqNode{} = N1,#xqNode{} = N2}) ->
                                        A1 = xqerl_node:nodes_equal(N1,N2),
                                        %?dbg("deep-equal",A1),
                                        A1 == {xqAtomicValue,'xs:boolean',true};
                                     ({#xqAtomicValue{value = "NaN"},#xqAtomicValue{value = "NaN"}}) ->
                                        true;
                                     ({#xqAtomicValue{value = "INF"},#xqAtomicValue{value = "INF"}}) ->
                                        true;
                                     ({#xqAtomicValue{value = "-INF"},#xqAtomicValue{value = "-INF"}}) ->
                                        true;
                                     ({#xqAtomicValue{} = N1,#xqAtomicValue{} = N2}) ->
                                        ?seq:singleton_value(xqerl_operators:equal(N1,N2)) == {xqAtomicValue,'xs:boolean',true};
                                     ({#xqFunction{},#xqFunction{}}) ->
                                        xqerl_error:error('FOTY0015');
                                     ({M1,M2}) when is_map(M1) andalso is_map(M2) ->
                                        M1 == M2
                                  end, Zip))
               catch
                  _:_ ->
                     ?bool(false)
               end
         end
   end.

%TODO collation
'deep-equal'(Ctx,Arg1,Arg2,Collation) -> 
   Coll = xqerl_types:value(Collation),
   All = xqerl_context:get_statically_known_collations(),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         ?MODULE:'deep-equal'(Ctx,Arg1,Arg2);
      _ ->
         xqerl_error:error('FOCH0002')
   end.

%% Returns the value of the default collation property from the static context. 
'default-collation'(_Ctx) -> 
   Str = xqerl_context:get_default_collation(),
   ?str(Str).

%% Returns the value of the default language property from the dynamic context. 
'default-language'(_Ctx) -> 
   ?seq:singleton(xqerl_context:get_default_language()).

%% Returns the values that appear in a sequence, with duplicates eliminated. 
'distinct-values'(_Ctx,Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         Vals = xqerl_context:get_context_item(Arg1),
        %?dbg("distinct-values ",Vals),
         Unique = lists:foldl(fun(A, S) ->
                                    At = case A of
                                            #xqAtomicValue{} ->
                                               A;
                                            _ ->
                                               hd(?seq:to_list(xqerl_node:atomize_nodes(A)))
                                         end,
                                    #xqAtomicValue{value = Val1} = At,
                                    case lists:any(fun(E) ->
                                                         try
                                                            if Val1 == "NaN" ->
                                                                  #xqAtomicValue{value = Val2} = E,
                                                                  if Val2 == "NaN" ->
                                                                        true;
                                                                     true ->
                                                                        false
                                                                  end;
                                                               true ->
                                                                  Equ = ?seq:singleton_value(xqerl_operators:equal(E, At)),
                                                                  %?dbg("Equ",Equ),
                                                                  Equ == {xqAtomicValue,'xs:boolean',true}
                                                            end
                                                         catch
                                                            _:_ ->
                                                               false
                                                         end
                                                   end, S) of
                                       true ->
                                          %?dbg("D",true),
                                          S;
                                       false ->
                                          %?dbg("D",false),
                                          [At|S]
                                    end
                              end, [], ?seq:to_list(Vals)),
         %?dbg("distinct-values", Unique),
         ?seq:from_list(lists:reverse(Unique))
   end.

'distinct-values'(Ctx,Arg1,Collation) ->
   Coll = xqerl_types:value(Collation),
   All = xqerl_context:get_statically_known_collations(),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         'distinct-values'(Ctx,Arg1);
      _ ->
         xqerl_error:error('FOCH0002')
   end.
   
%% Retrieves a document using a URI supplied as an xs:string, and returns the corresponding document node. 
% TODO check for valid Uri else FODC0005
'doc'(_Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         Uri = xqerl_types:value(Arg1),
         %?dbg("doc Uri",{?LINE, Uri}),
         case catch xqerl_context:get_available_document(Uri) of
                  {'EXIT',_} ->
         %?dbg("doc Uri",{?LINE, Uri}),
                     Doc = xqerl_doc:read_http(Uri),
                     ?seq:singleton(xqerl_doc:doc_to_node(Doc));
                  _ ->
         %?dbg("doc Uri",{?LINE, Uri}),
                     ?seq:singleton(#xqNode{frag_id = Uri, identity = 1})
               end
   end.


%% The function returns true if and only if the function call fn:doc($uri) would return a document node. 
'doc-available'(_Ctx,Arg1) -> 
   Uri = xqerl_types:value(Arg1),
   case catch xqerl_context:get_available_document(Uri) of
            {'EXIT',_} ->
               ?bool(false);
            _ ->
               ?bool(true)
         end.

%% Returns the URI of a resource where a document can be found, if available. 
'document-uri'(Ctx) ->
   Ci = xqerl_context:get_context_item(Ctx),
   'document-uri'(Ctx,Ci).
'document-uri'(_Ctx,Arg1) -> 
   Node = case ?seq:is_sequence(Arg1) of
             true ->
                ?seq:singleton_value(Arg1);
             _ ->
                Arg1
          end,
   if Node == [] ->
         ?seq:empty();
      true ->
         case xqerl_node:get_node_type(Node) of
            'document-node' ->
               #xqNode{frag_id = Uri} = Node,
               if is_integer(Uri) ->
                     ?seq:empty();
                  true ->
                     ?atm('xs:anyURI', Uri)
               end;
            _ ->
               ?seq:empty()
         end
   end.

%% Returns the sequence of element nodes that have an ID value matching the value of one or more of the IDREF values supplied in $arg. 
%% Validation Environment
'element-with-id'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'element-with-id'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% Returns true if the argument is the empty sequence. 
'empty'(_Ctx,Arg1) -> 
   ?bool(?seq:is_empty(Arg1)).

%% Encodes reserved characters in a string that is intended to be used in the path segment of a URI. 
'encode-for-uri'(_Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         ?str("");
      _ ->
         Val = xqerl_types:string_value(Arg1),
         ?str(pct_encode1(Val))
   end.

pct_encode1([]) ->
   [];
pct_encode1([H|T]) when H == $-;
                        H == $_;
                        H == $.;
                        H == $~ ->
   [H|pct_encode1(T)];
pct_encode1([H|T]) when H >= $A, H =< $Z ->
   [H|pct_encode1(T)];
pct_encode1([H|T]) when H >= $a, H =< $z ->
   [H|pct_encode1(T)];
pct_encode1([H|T]) when H >= $0, H =< $9 ->
   [H|pct_encode1(T)];
pct_encode1([H|T]) ->
   string:to_upper(edoc_lib:escape_uri([H])) ++ pct_encode1(T).


%% Returns true if the string $arg1 contains $arg2 as a trailing substring, taking collations into account. 
'ends-with'(Ctx,[],Arg2) -> 'ends-with'(Ctx,?str(""),Arg2);
'ends-with'(_Ctx,_Arg1,[]) -> ?bool(true);
'ends-with'(_Ctx,Arg1,Arg2) -> 
   Str1 = xqerl_types:string_value(Arg1),
   Str2 = xqerl_types:string_value(Arg2),
   if Str2 == [] ->
         ?bool(true);
      Str1 == [] ->
         ?bool(false);
      true ->
         case lists:suffix(Str2, Str1) of
            true ->
               ?bool(true);
            _ ->
               ?bool(false)
         end
   end.

'ends-with'(Ctx,Arg1,Arg2,Collation) -> 
   Coll = xqerl_types:value(Collation),
   All = xqerl_context:get_statically_known_collations(),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         ?MODULE:'ends-with'(Ctx,Arg1,Arg2);
      _ ->
         xqerl_error:error('FOCH0002')
   end.


%% Returns the value of a system environment variable, if it exists. 
%% NOT IMPLEMENTING
'environment-variable'(_Ctx,_Arg1) -> 
   ?seq:empty().

%% Calling the fn:error function raises an application-defined error.
%% -record(xqError, {
%%       name,
%%       description,
%%       value,
%%       location % {Module, Line, Column} %TODO
%%    }). 
'error'(_Ctx) -> 
   xqerl_error:error('FOER0000').
'error'(_Ctx,QName) ->
   case ?seq:is_sequence(QName) andalso ?seq:is_empty(QName) of
      true ->
         xqerl_error:error('XPTY0004'); % no empty error without description
      _ ->
         xqerl_error:error(xqerl_types:value(QName))
   end.
'error'(_Ctx,QName,Description) -> 
   Name = case ?seq:is_sequence(QName) of
             true ->
                QName;
             _ ->
                ?seq:singleton(QName)
          end,
   Str = xqerl_types:string_value(Description),
   case ?seq:is_empty(Name) of
      true ->
         xqerl_error:error('FOER0000',Str);
      _ ->
         xqerl_error:error(xqerl_types:value(QName),Str)
   end.
'error'(_Ctx,QName,Description,Object) ->
   Str = xqerl_types:string_value(Description),
   case ?seq:is_sequence(QName) andalso ?seq:is_empty(QName) of
      true ->
         xqerl_error:error('FOER0000',Str, Object);
      _ ->
         xqerl_error:error(xqerl_types:value(QName),Str, Object)
   end.


%% Escapes a URI in the same way that HTML user agents handle attribute values expected to contain URIs. 
'escape-html-uri'(_Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         ?str("");
      _ ->
         Val = xqerl_types:string_value(Arg1),
         ?str(pct_encode2(Val))
   end.

pct_encode2([]) ->
   [];
pct_encode2([H|T]) when H >= 32, H =< 126 ->
   [H|pct_encode2(T)];
pct_encode2([H|T]) ->
   ?dbg("pct_encode2",H),
   string:to_upper(xqerl_lib:escape_uri([H])) ++ pct_encode2(T).

pct_encode3([]) ->
   [];
pct_encode3([H|T]) when H == $< ;H == $>;
                        H == $\";H == $ ;
                        H == ${ ;H == $};
                        H == $| ;H == $\\;
                        H == $^ ;H == $` ->
   string:to_upper(xqerl_lib:escape_uri([H])) ++ pct_encode3(T);
pct_encode3([H|T]) when H >= 32, H =< 126 ->
   [H|pct_encode3(T)];
pct_encode3([H|T]) ->
   string:to_upper(xqerl_lib:escape_uri([H])) ++ pct_encode3(T).

%% Returns $arg if it contains exactly one item. Otherwise, raises an error. 
'exactly-one'(_Ctx,Arg1) -> 
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            1 ->
               Arg1;
            _ ->
               xqerl_error:error('FORG0005')
         end;
      _ ->
         ?seq:singleton(Arg1)
  end.

%% Returns true if the argument is a non-empty sequence. 
'exists'(_Ctx,Arg1) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         ?bool(not ?seq:is_empty(Arg1));
      _ ->
         ?bool(not ?seq:is_empty(?seq:singleton(Arg1)))
   end.

%% Returns the xs:boolean value false. 
'false'(_Ctx) -> 
   ?bool(false).

%% Returns those items from the sequence $seq for which the supplied function $f returns true. 
'filter'(Ctx,Seq,F) ->
   ?seq:map(Ctx, fun(S) ->
                  Val = xqerl_context:get_context_item(S),
                  case ?seq:singleton_value(F(Ctx,Val)) of
                     #xqAtomicValue{type = 'xs:boolean', value = true} ->
                        ?seq:singleton(Val);
                     #xqAtomicValue{type = 'xs:boolean', value = false} ->
                        ?seq:empty();
                     _ ->
                        xqerl_error:error('XPTY0004')
                  end
            end, Seq).

%% Rounds $arg downwards to a whole number. 
'floor'(_Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         Val = xqerl_types:value(Arg1),
         if Val == "INF" orelse Val == "-INF" orelse Val == "NaN" ->
               Arg1;
            true ->
               Type = xqerl_types:type(Arg1),
               T = trunc(Val),
               case (Val - T) of
                  Neg when Neg < 0 -> xqerl_types:cast_as(?int(T - 1), Type) ;
                  Pos when Pos > 0 -> xqerl_types:cast_as(?int(T), Type);
                  _ -> xqerl_types:cast_as(?int(T), Type)
               end
         end
   end.

%% Processes the supplied sequence from left to right, applying the supplied function repeatedly to each item in turn, 
%% together with an accumulated result value. 
'fold-left'(Ctx,Seq,Zero,F) -> 
   ?seq:foldl(Ctx,F, Zero, Seq).

%% Processes the supplied sequence from right to left, applying the supplied function repeatedly to each item in turn, 
%% together with an accumulated result value. 
'fold-right'(Ctx,Seq,Zero,F) -> 
   ?seq:foldr(Ctx,F, Zero, Seq).

%% Applies the function item $action to every item from the sequence $seq in turn, 
%% returning the concatenation of the resulting sequences in order. 
'for-each'(Ctx,Seq,Action) -> 
   ?seq:for_each(Ctx, Action, Seq).

%% Applies the function item $action to successive pairs of items taken one from $seq1 and one from $seq2, 
%% returning the concatenation of the resulting sequences in order. 
'for-each-pair'(Ctx,Seq1,Seq2,Action) -> 
   ?seq:zip_with(Ctx, Action, Seq1, Seq2).

%% Returns a string containing an xs:date value formatted for display. 
'format-date'(_Ctx,Date,Picture) -> 
   'format-dateTime'(_Ctx,Date,Picture).
'format-date'(_Ctx,Date,Picture,_Arg3,_Arg4,_Arg5) -> 
   'format-dateTime'(_Ctx,Date,Picture).

%% Returns a string containing an xs:dateTime value formatted for display. 
'format-dateTime'(_Ctx,Date,Picture) -> 
   IntVal = ?seq:singleton_value(Date),
   StrVal = xqerl_types:value(Picture),
   if StrVal == [] ->
         xqerl_error:error('FODF1310');
      true ->
         Formatted = xqerl_format:parse_picture(IntVal, StrVal),
         ?str(Formatted)
   end.

'format-dateTime'(_Ctx,Date,Picture,_Arg3,_Arg4,_Arg5) -> 
   'format-dateTime'(_Ctx,Date,Picture).

%% Formats an integer according to a given picture string, using the conventions of a given natural language if specified. 
'format-integer'(_Ctx,Int,Picture) -> 
   IntVal = xqerl_types:value(Int),
   StrVal = xqerl_types:value(Picture),
   if StrVal == [] ->
         xqerl_error:error('FODF1310');
      IntVal == [] ->
         ?str("");
      true ->
         Formatted = xqerl_format:parse_picture(IntVal, StrVal),
         ?str(Formatted)
   end.
'format-integer'(_Ctx,Int,Picture,_Lang) -> 
   'format-integer'(_Ctx,Int,Picture).

%% Returns a string containing a number formatted according to a given picture string, taking account of decimal formats specified in the static context. 
'format-number'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).
   %'format-number'(Ctx,Arg1,Arg2,[]).
'format-number'(_Ctx,_Arg1,_Arg2,_Arg3) -> 
   exit({not_implemented,?LINE}).

%% Returns a string containing an xs:time value formatted for display. 
'format-time'(_Ctx,Date,Picture) -> 
   'format-dateTime'(_Ctx,Date,Picture).
'format-time'(_Ctx,Date,Picture,_Arg3,_Arg4,_Arg5) -> 
   'format-dateTime'(_Ctx,Date,Picture).

%% Returns the arity of the function identified by a function item. 
'function-arity'(_Ctx,Arg1) when is_function(Arg1) ->
   {_,A} = erlang:fun_info(Arg1,arity),
   ?int(A - 1);
'function-arity'(_Ctx,Arg1) ->
   case ?seq:singleton_value(Arg1) of
      Fx when is_function(Fx) ->
         {_,A} = erlang:fun_info(Fx,arity),
         ?int(A - 1);
      #xqFunction{arity = Ar} ->
         ?int(Ar)
   end.

%% Returns the function having a given name and arity, if there is one. 
'function-lookup'(_Ctx,Name,Arity) -> 
   #qname{namespace = Ns, prefix = Px, local_name = Ln} = xqerl_types:value(Name),
   Arity1 = xqerl_types:value(Arity),
   Funs = xqerl_context:get_statically_known_functions(),
   %?dbg("Funs", Funs),
   Ns2 = mask_static_mod_ns(case Ns of
            undefined ->
               xqerl_context:get_statically_known_namespace_from_prefix(Px);
            _ ->
               Ns
         end),
   NsA = list_to_atom(Ns2),
   %?dbg("Funs", NsA),
   %Name1 = #qname{namespace = Ns2, prefix = Px, local_name = Ln},
   %?dbg("{Name,Arity}", #qname{namespace = Ns2, prefix = Px, local_name = Ln}),
   Fun = case lists:filter(fun(F) ->
                                 FQ = element(1, F),
                                 %?dbg("FQ", FQ),
                                 %?dbg("Ns2", Ns2),
                                 %?dbg("Ln", Ln),
                                 %?dbg("Ln", {element(5, F) , Arity1}),
                                 if element(2, FQ) == Ns2 andalso element(4, FQ) == Ln ->
                                       if element(5, F) == Arity1;
                                          Ln == "concat" andalso NsA == xqerl_fn andalso Arity1 > 1 ->
                                             true;
                                          true ->
                                             false
                                       end;
                                    true ->
                                       false
                                 end
                        end, Funs) of
            [FX] ->
               FX;
            X ->
               ?dbg("X",X),
               []
         end,
   %?dbg("Fun", Fun),
   if Fun == [] ->
         ?seq:empty();
      true ->
         Loc = element(4, Fun),
         case tuple_size(Loc) of
            2 -> % local call
               M = NsA,
               F = element(1, Loc),
               A = element(2, Loc),
               ?seq:singleton(fun M:F/A);
            3 -> % module call
               M = NsA,
               F = element(2, Loc),
               A = element(3, Loc),
               ?seq:singleton(fun M:F/A)
         end
   end.

mask_static_mod_ns("http://www.w3.org/2005/xpath-functions") -> "xqerl_fn";
mask_static_mod_ns("http://www.w3.org/2001/XMLSchema") -> "xqerl_xs";
mask_static_mod_ns("http://www.w3.org/2005/xpath-functions/math") -> "xqerl_math";
mask_static_mod_ns("http://www.w3.org/2005/xpath-functions/map") -> "xqerl_map";
mask_static_mod_ns("http://www.w3.org/2005/xpath-functions/array") -> "xqerl_array";
mask_static_mod_ns("http://www.w3.org/2005/xqt-errors") -> "xqerl_error";
mask_static_mod_ns("http://www.w3.org/2005/xquery-local-functions") -> "xqerl_main";
mask_static_mod_ns(T) -> T.

unmask_static_mod_ns("xqerl_fn") -> "http://www.w3.org/2005/xpath-functions";
unmask_static_mod_ns("xqerl_xs") -> "http://www.w3.org/2001/XMLSchema";
unmask_static_mod_ns("xqerl_math") -> "http://www.w3.org/2005/xpath-functions/math";
unmask_static_mod_ns("xqerl_map") -> "http://www.w3.org/2005/xpath-functions/map";
unmask_static_mod_ns("xqerl_array") -> "http://www.w3.org/2005/xpath-functions/array";
unmask_static_mod_ns("xqerl_error") -> "http://www.w3.org/2005/xqt-errors";
unmask_static_mod_ns("xqerl_main") -> "http://www.w3.org/2005/xquery-local-functions";
unmask_static_mod_ns(T) -> T.

%% Returns the name of the function identified by a function item. 
%% fn:function-name($func as function(*)) as xs:QName? 
'function-name'(_Ctx,Arg1) when is_function(Arg1) ->
   {_,N} = erlang:fun_info(Arg1,name),
   {_,M} = erlang:fun_info(Arg1,module),
   {_,T} = erlang:fun_info(Arg1,type),
   if T == local ->
         ?seq:empty();
      true ->
         Funs = xqerl_context:get_statically_known_functions(),
         %Name1 = Name#qname{namespace = Ns2},
         %?dbg("Funs", {N,M, }), 
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
                     ?dbg("Arg1",Arg1),
                     xqerl_error:error('XPST0017');
                  FX ->
                     element(4,element(1,hd(FX)))
               end,
         
         NsL = atom_to_list(M),
         Ns = unmask_static_mod_ns(NsL),
         PxDict = xqerl_context:get_statically_known_namespaces(),
         PxL = dict:to_list(PxDict),
         %?dbg("PxL",{PxL,Ns}),
         {Px,_} = lists:keyfind(Ns, 2, PxL),
         Qn = #qname{namespace = Ns, prefix = Px, local_name = N2},
         ?atm('xs:QName',Qn)
   end;
'function-name'(_Ctx,#xqFunction{name = Name}) ->
   ?atm('xs:QName',Name);
'function-name'(Ctx,Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
         xqerl_error:error('XPTY0004');
      _ ->
         case ?seq:singleton_value(Arg1) of
            Fx when is_function(Fx) ->
               'function-name'(Ctx,Fx);
            #xqFunction{name = Name} ->
               ?atm('xs:QName',Name);
            _ ->
               xqerl_error:error('XPTY0004')
         end
   end.

%% This function returns a string that uniquely identifies a given node. 
'generate-id'(Ctx) ->
   Item = xqerl_context:get_context_item(Ctx),
   'generate-id'(Ctx, Item).
'generate-id'(_Ctx,Arg1) ->
   Item = case ?seq:is_sequence(Arg1) of
             true ->
                ?seq:singleton_value(Arg1);
             _ ->
               Arg1
          end,
   if Item == [] ->
         ?str("");
      true ->
         Hash = xqerl_node:get_node_id(Item),
         ?str( "ID" ++ erlang:integer_to_list(Hash) )
   end.

%% Returns true if the supplied node has one or more child nodes (of any kind). 
'has-children'(Ctx) ->
   'has-children'(Ctx, xqerl_context:get_context_item(Ctx)).

'has-children'(_Ctx,Arg1) -> 
   Seq = case ?seq:is_sequence(Arg1) of
            true ->
               Arg1;
            _ ->
               ?seq:singleton(Arg1)
         end,
   case ?seq:is_empty(Seq) of
      true ->
         ?bool(false);
      _ ->
         case xqerl_node:get_node_children(?seq:singleton_value(Seq)) of
            [] ->
               ?bool(false);
            _ ->
               ?bool(true)
         end
   end.

%% Returns the first item in a sequence. 
'head'(_Ctx,Arg1) -> 
   ?seq:head(Arg1).

%% Returns the hours component of an xs:dateTime. 
'hours-from-dateTime'(Ctx,Arg1) -> 
   'hours-from-duration'(Ctx, Arg1).

%% Returns the number of hours in a duration. 
'hours-from-duration'(_Ctx, Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
        Arg1;
      _ ->
         #xqAtomicValue{value = #xsDateTime{sign = Sn, hour = Hr}} = ?seq:singleton_value(Arg1),
         Hr1 = if Sn =:= '-' ->
                     Hr * -1;
                  true ->
                     Hr
               end,
         ?int(Hr1)
   end.

%% Returns the hours component of an xs:time. 
'hours-from-time'(Ctx,Arg1) -> 
   'hours-from-duration'(Ctx, Arg1).

%% Returns the sequence of element nodes that have an ID value matching the value of one or more of the IDREF values supplied in $arg. 
'id'(Ctx,Refs) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'id'(Ctx,Refs,Ci).

'id'(Ctx,Refs,Node) -> 
   %?dbg("Norm", Norm ),
   RefToks = ?seq:val_map(fun(Val) ->
                                'tokenize'(Ctx, 'normalize-space'(Ctx, ?seq:singleton(Val)))
                          end, Refs),
   %?dbg("id RefToks", RefToks ),
   try
      Root = xqerl_step:root(Ctx,Node),
      %?dbg("Root",Root),
      Desc = xqerl_step:forward(Ctx,Root, 'descendant-or-self', #qname{prefix = "*", local_name = "*"}, []),
      %?dbg("Desc",Desc),
      Atts = xqerl_step:forward(Ctx,Desc, attribute, #qname{prefix = "*", local_name = "*"}, 
                                [fun(CtxLoc) ->
                                       Ci = ?seq:singleton_value(xqerl_context:get_context_item(CtxLoc)),
                                       Att = xqerl_node:get_node(Ci),
                                       At = Att#xqAttributeNode.expr,
                                       %?dbg("At",At),
                                       Ty = xqerl_types:type(At), 
                                       %?dbg("Ty",Ty),
                                       if Ty == 'xs:ID' ->
                                             Str = xqerl_types:value(At),
                                             %?dbg("Str",Str),
                                             Match = ?seq:singleton_value(xqerl_operators:general_compare('=',
                                                                                                          #xqAtomicValue{type = 'xs:string', value = Str},
                                                                                                          RefToks)),
                                             %?dbg("Match",Match),
                                             ?bool(Match == #xqAtomicValue{type = 'xs:boolean', value = true});
                                          true ->
                                             ?bool(false)
                                       end
                                         
                                 end]),
      %?dbg("id Refs", Refs),
      %?dbg("id Refs1", Refs1),
      %?dbg("id Node", Node),
      %?dbg("id Root", Root),
      %?dbg("id Desc", Desc),
      %?dbg("id Atts", Atts),
      Elems = xqerl_step:reverse(Ctx,Atts, parent, [],[]),
      Elems
   catch 
      _:#xqError{value = _, location = _, description =_, name = #qname{namespace = _, prefix = "err", local_name = "XPDY0050"}} ->
            xqerl_error:error('FODC0001');
      _:#xqError{value = _, location = _, description =_, name = #qname{namespace = _, prefix = "err", local_name = "XPTY0019"}} ->
            xqerl_error:error('XPTY0004');
      _:E ->
         throw(E)
   end.

%% Returns the sequence of element or attribute nodes with an IDREF value 
%% matching the value of one or more of the ID values supplied in $arg. 
'idref'(Ctx,Arg1) ->
   Node = xqerl_context:get_context_item(Ctx),
   'idref'(Ctx,Arg1,Node).
'idref'(Ctx,_Arg1,Node) -> % dtd-infoset dependency 
%%    RefToks = ?seq:val_map(fun(Val) ->
%%                                 'tokenize'(Ctx, 'normalize-space'(Ctx, ?seq:singleton(Val)))
%%                           end, Arg1),
   try
      _Root = xqerl_step:root(Ctx,Node),
      ?seq:empty()
   catch 
      _:#xqError{value = _, location = _, description =_, name = #qname{namespace = _, prefix = "err", local_name = "XPDY0050"}} ->
            xqerl_error:error('FODC0001');
      _:#xqError{value = _, location = _, description =_, name = #qname{namespace = _, prefix = "err", local_name = "XPTY0019"}} ->
            xqerl_error:error('XPTY0004');
      _:E ->
         throw(E)
   end.

%% Returns the value of the implicit timezone property from the dynamic context. 
'implicit-timezone'(_Ctx) ->
   ImpOs = xqerl_context:get_implicit_timezone(),
   %?dbg("implicit-timezone ImpOs", ImpOs),
   ImpOsStr = xqerl_datetime:to_string(ImpOs, 'xs:dayTimeDuration'),
   %?dbg("implicit-timezone ImpOsStr", ImpOsStr),
   xqerl_types:cast_as(?str(ImpOsStr), 'xs:dayTimeDuration').

%% Returns a sequence of positive integers giving the positions within the sequence $seq of items that are equal to $search. 
'index-of'(_Ctx,Seq,Arg2) -> 
   %{index,counter}
   Fun = fun(Elem,{List,Counter}) ->
               case catch ?seq:singleton_value(xqerl_operators:equal(Elem, Arg2)) of
                  #xqAtomicValue{type = 'xs:boolean', value = true} ->
                     Int = #xqAtomicValue{type = 'xs:integer', value = Counter},
                     {0,{[Int|List], Counter + 1}};
                  _ ->
                     {0,{List, Counter + 1}}
               end
         end,
   {_,{Indexes,_}} = lists:mapfoldl(Fun, {[],1}, ?seq:to_list(Seq)),
   ?seq:from_list(lists:reverse(Indexes)).

%TODO collation
'index-of'(_Ctx,Seq,Arg2,Collation) -> 
   Coll = xqerl_types:value(Collation),
   All = xqerl_context:get_statically_known_collations(),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         ?MODULE:'index-of'(_Ctx,Seq,Arg2);
      _ ->
         xqerl_error:error('FOCH0002')
   end.

%% Returns every node within the input sequence that is not an ancestor of another member of the input sequence; 
%% the nodes are returned in document order with duplicates eliminated. 
'innermost'(Ctx,Arg1) -> 
   %%    $nodes except $nodes/ancestor::node()
   ?dbg("innermost",Arg1),
   ?seq:except(Arg1,
                    xqerl_step:reverse(Ctx,
                      ?seq:union(Arg1,?seq:empty()),
                      ancestor,#xqKindTest{type = node},
                      [])).

%% Returns the prefixes of the in-scope namespaces for an element node. 
'in-scope-prefixes'(_Ctx,Arg1) -> 
   #xqElementNode{inscope_ns = Ns} = xqerl_node:get_node(?seq:singleton_value(Arg1)),
   %?dbg("in-scope-prefixes",Ns),
   List = lists:filtermap(fun(#xqNamespace{prefix = P}) when is_atom(P) ->
                                false;
                             (#xqNamespace{namespace = 'no-namespace'}) ->
                                false;
                             (#xqNamespace{prefix = P}) ->
                                {true,#xqAtomicValue{type = 'xs:string', value = P}}
                          end, Ns),
   ?seq:from_list(List).

%% Returns a sequence constructed by inserting an item or a sequence of items at a given position within an existing sequence. 
'insert-before'(_Ctx,Target,Position,Inserts) ->
   ?seq:insert(Target,Inserts,Position).

%% Converts a string containing an IRI into a URI according to the rules of [rfc3987]. 
'iri-to-uri'(_Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         ?str("");
      _ ->
         Val = xqerl_types:string_value(Arg1),
         ?str(pct_encode3(Val))
   end.

%% Reads an external resource containing JSON, and returns the result of parsing the resource as JSON. 
'json-doc'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'json-doc'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% Parses a string supplied in the form of a JSON text, returning the results in the form of an XML document node. 
'json-to-xml'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'json-to-xml'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% This function tests whether the language of $node, or the context item if the second argument is omitted, as specified by xml:lang attributes is the same as, or is a sublanguage of, the language specified by $testlang. 
'lang'(Ctx,Arg1) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'lang'(Ctx,Arg1,Ci).
'lang'(Ctx,Testlang0,Node) -> 
   try
      Testlang = xqerl_types:string_value(Testlang0),
      Root = xqerl_step:any_root(Ctx,Node),
      Desc = xqerl_step:forward(Ctx,Root, 'descendant-or-self', #qname{prefix = "*", local_name = "*"}, []),
      Atts = xqerl_step:forward(Ctx,Desc, attribute, #qname{prefix = "*", local_name = "*"}, 
                                [fun(CtxLoc) ->
                                       Ci = ?seq:singleton_value(xqerl_context:get_context_item(CtxLoc)),
                                       Att = xqerl_node:get_node(Ci),
                                       At = hd(string:tokens(xqerl_types:string_value(Att#xqAttributeNode.expr),"-")),
                                       %?dbg("Lang",Lang),
                                       %?dbg("At",At),
                                       ?bool(string:to_lower(At) == string:to_lower(Testlang))
                                 end]),
      Elems = xqerl_step:reverse(Ctx,Atts, 'parent', #xqKindTest{type = node},[]),
      Ances = xqerl_step:forward(Ctx,Elems, 'descendant-or-self', #xqKindTest{type = node},[]),
      Any = ?seq:intersect(Node, Ances),
      %?dbg("Lang Atts",Atts),
      %?dbg("Lang Ances",Ances),
      %?dbg("Lang Node",Node),
      %?dbg("Lang Any",Any),
      exists(Ctx, Any)
   catch 
      _:#xqError{value = _, location = _, description =_, name = #qname{namespace = _, prefix = "err", local_name = "XPDY0050"}} ->
            xqerl_error:error('FODC0001');
      _:#xqError{value = _, location = _, description =_, name = #qname{namespace = _, prefix = "err", local_name = "XPTY0019"}} ->
            xqerl_error:error('XPTY0004')
   end.

%% Returns the context size from the dynamic context. 
'last'(Ctx) ->
   ?seq:singleton(xqerl_context:get_context_size(Ctx)).

%% Provides access to the public functions and global variables of a dynamically-loaded XQuery library module. 
'load-xquery-module'(_Ctx,_Arg1) -> xqerl_error:error('FOQM0006').
'load-xquery-module'(_Ctx,_Arg1,_Arg2) -> xqerl_error:error('FOQM0006').

%% Returns the local part of the name of $arg as an xs:string that is either the zero-length string, or has the lexical form of an xs:NCName. 
'local-name'(Ctx) -> 
   QName = ?seq:singleton_value('node-name'(Ctx)),
   #qname{local_name = L} = xqerl_types:value(QName),
   ?seq:singleton(#xqAtomicValue{type = 'xs:string', value = L}).

'local-name'(Ctx,Arg1) -> 
   QName = ?seq:singleton_value('node-name'(Ctx,Arg1)),
   case xqerl_types:value(QName) of
      #qname{local_name = L} ->
         ?str(L);
      [] ->
         ?str("")
   end.

%% Returns the local part of the supplied QName. 
'local-name-from-QName'(_Ctx, Arg) ->
   case ?seq:is_sequence(Arg) andalso ?seq:is_empty(Arg) of
      true ->
         Arg;
      _ ->
         #qname{local_name = L} = xqerl_types:value(Arg),
         #xqAtomicValue{type = 'xs:NCName', value = L}
   end.

%% Converts a string to lower case. 
'lower-case'(_Ctx,Arg1) ->
   Out = 
   case ?seq:is_empty(Arg1) of
      true ->
         #xqAtomicValue{type = 'xs:string', value = ""};
      _ ->
         case ?seq:singleton_value(Arg1) of
            #xqNode{} ->
               Str = string_value(Arg1),
               Upp = string:to_lower(Str),
               #xqAtomicValue{type = 'xs:string', value = Upp};
            #xqAtomicValue{type = Type} ->
               case xqerl_types:subtype_of(Type, 'xs:string') of
                  true ->
                     Str = string_value(Arg1),
                     Upp = string:to_lower(Str),
                     #xqAtomicValue{type = 'xs:string', value = Upp};
                  _ ->
                     xqerl_error:error('XPTY0004')
               end
         end
   end,
   ?seq:singleton(Out).   

%% Returns true if the supplied string matches a given regular expression. 
'matches'(_Ctx,String,Pattern) ->
   'matches'(_Ctx,String,Pattern,[]).
'matches'(_Ctx,String,Pattern,Flags) ->
   Pattern1 = xqerl_regex:regex_back_ref(xqerl_types:value(Pattern),0),
   %?dbg("back ref", Pattern),
   %?dbg("Pattern1", Pattern1),
   MP = xqerl_regex:regex_comp(Pattern1,Flags),
   %?dbg("MP", MP),
   Input1 = string_value(String),
   %?dbg("Input1", Input1),
   case re:run(Input1, MP, [global]) of
      nomatch ->
         %?dbg("",false),
         ?bool(false);
      {match,[[{0,0}]]} ->
         ?bool(false);
      X ->
         ?dbg(?LINE,X),
         ?bool(true)
   end.

%% Returns a value that is equal to the highest value appearing in the input sequence. 
'max'(_Ctx,Arg1) -> 
   {Seq,SeqType} = compare_convert_seq(?seq:to_list(Arg1), [], []),
   %?dbg("max", {Seq,SeqType}),
   Max1 = max1(Seq, []),
   %?dbg("max1", Max1),
   xqerl_types:cast_as(Max1, SeqType).

%TODO collation
'max'(Ctx,Arg1,Collation) -> 
   Coll = xqerl_types:value(Collation),
   All = xqerl_context:get_statically_known_collations(),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         ?MODULE:'max'(Ctx,Arg1);
      _ ->
         xqerl_error:error('FOCH0002')
   end.   

max1([], Max) ->
   Max;
max1([#xqAtomicValue{type = 'xs:double', value = "NaN"} = H|_], _) ->
   H;
max1([#xqAtomicValue{type = 'xs:float', value = "NaN"} = H|_], _) ->
   H;
max1([H|T], []) ->
   max1(T, H);
max1([H|T], Max) ->
   case ?seq:singleton_value(xqerl_operators:less_than(H, Max)) of
      ?inbool(true) ->
         max1(T, Max);
      ?inbool(false) ->
         max1(T, H)     
   end.

min1([], Min) ->
   Min;
min1([#xqAtomicValue{type = 'xs:double', value = "NaN"} = H|_], _) ->
   H;
min1([#xqAtomicValue{type = 'xs:float', value = "NaN"} = H|_], _) ->
   H;
min1([H|T], []) ->
   min1(T, H);
min1([H|T], Min) ->
   %?dbg("min1",H),
   case ?seq:singleton_value(xqerl_operators:greater_than(H, Min)) of
      ?inbool(true) ->
         min1(T, Min);
      ?inbool(false) ->
         min1(T, H)     
   end.

compare_convert_seq([], Acc, SeqType) ->
   {Acc,SeqType};
compare_convert_seq([H|T], Acc, SeqType) ->
   case H of
      #xqNode{} ->
         H1 = ?seq:singleton_value(xqerl_node:atomize_nodes(H)),
         compare_convert_seq([H1|T], Acc, SeqType);
      #xqAtomicValue{type = 'xs:untypedAtomic'} ->
         H1 = xqerl_types:cast_as(H,'xs:double'),
         if SeqType == 'xs:double' orelse SeqType == 'xs:decimal' orelse SeqType == 'xs:float' orelse SeqType == 'xs:integer' orelse SeqType == [] ->
               compare_convert_seq([H1|T], Acc, 'xs:double');
            true ->
               xqerl_error:error('FORG0006')
         end;
      #xqAtomicValue{type = 'xs:anyURI'} ->
         H1 = xqerl_types:cast_as(H,'xs:string'),
         if SeqType == 'xs:string' orelse SeqType == [] ->
               compare_convert_seq(T, [H1|Acc], 'xs:string');
            true ->
               xqerl_error:error('FORG0006')
         end;
      #xqAtomicValue{type = 'xs:string'} ->
         if SeqType == 'xs:string' orelse SeqType == [] ->
               compare_convert_seq(T, [H|Acc], 'xs:string');
            true ->
               xqerl_error:error('FORG0006')
         end;
      #xqAtomicValue{type = 'xs:double'} ->
            compare_convert_seq(T, [H|Acc], 'xs:double');
      #xqAtomicValue{type = 'xs:float'} ->
         if SeqType == 'xs:float' orelse SeqType == 'xs:decimal' orelse SeqType == 'xs:integer' orelse SeqType == [] ->
               compare_convert_seq(T, [H|Acc], 'xs:float');
            SeqType == 'xs:double' ->
               compare_convert_seq(T, [H|Acc], 'xs:double');
            true ->
               xqerl_error:error('FORG0006')
         end;
      #xqAtomicValue{type = 'xs:decimal'} ->
         if SeqType == 'xs:decimal' orelse SeqType == 'xs:integer' orelse SeqType == [] ->
               compare_convert_seq(T, [H|Acc], 'xs:decimal');
            SeqType == 'xs:float' ->
               compare_convert_seq(T, [H|Acc], 'xs:float');
            SeqType == 'xs:double' ->
               compare_convert_seq(T, [H|Acc], 'xs:double');
            true ->
               xqerl_error:error('FORG0006')
         end;
      #xqAtomicValue{type = 'xs:integer'} ->
         if SeqType == 'xs:integer' orelse SeqType == [] ->
               compare_convert_seq(T, [H|Acc], 'xs:integer');
            SeqType == 'xs:decimal' ->
               compare_convert_seq(T, [H|Acc], 'xs:decimal');
            SeqType == 'xs:float' ->
               compare_convert_seq(T, [H|Acc], 'xs:float');
            SeqType == 'xs:double' ->
               compare_convert_seq(T, [H|Acc], 'xs:double');
            true ->
               xqerl_error:error('FORG0006')
         end;
      #xqAtomicValue{type = Type} ->
         case xqerl_operators:is_comparable(Type) of
            true ->
               case xqerl_types:subtype_of(Type, SeqType) of
                  true ->
                     compare_convert_seq(T, [H|Acc], SeqType);
                  _ ->
                     case xqerl_types:subtype_of(SeqType, Type) orelse SeqType == [] of
                        true ->
                           compare_convert_seq(T, [H|Acc], Type);
                        _ ->
                           xqerl_error:error('FORG0006')
                     end
               end;
            _ ->
               xqerl_error:error('FORG0006')
         end
   
   end.



%% Returns a value that is equal to the lowest value appearing in the input sequence. 
'min'(_Ctx,Arg1) -> 
   {Seq,SeqType} = compare_convert_seq(?seq:to_list(Arg1), [], []),
   %?dbg("min", {Seq,SeqType,Arg1}),
   Min1 = min1(Seq, []),
   %?dbg("min1", Min1),
   xqerl_types:cast_as(Min1, SeqType).

%TODO collation
'min'(Ctx,Arg1,Collation) -> 
   Coll = xqerl_types:value(Collation),
   All = xqerl_context:get_statically_known_collations(),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         ?MODULE:'min'(Ctx,Arg1);
      _ ->
         xqerl_error:error('FOCH0002')
   end.

%% Returns the minute component of an xs:dateTime. 
'minutes-from-dateTime'(Ctx,Arg1) -> 
   'minutes-from-duration'(Ctx, Arg1).

%% Returns the number of minutes in a duration. 
'minutes-from-duration'(_Ctx, Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
        Arg1;
      _ ->
         #xqAtomicValue{value = #xsDateTime{sign = Sn, minute = Mi}} = ?seq:singleton_value(Arg1),
         Mi1 = if Sn =:= '-' ->
                     Mi * -1;
                  true ->
                     Mi
               end,
         ?int(Mi1)
   end.

%% Returns the minutes component of an xs:time. 
'minutes-from-time'(Ctx,Arg1) -> 
   'minutes-from-dateTime'(Ctx, Arg1).

%% Returns the month component of an xs:date. 
'month-from-date'(Ctx,Arg1) -> 
   'month-from-dateTime'(Ctx, Arg1).

%% Returns the month component of an xs:dateTime. 
'month-from-dateTime'(_Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
        Arg1;
      _ ->
         #xqAtomicValue{value = #xsDateTime{month = Mo}} = ?seq:singleton_value(Arg1),
         ?int(Mo)
   end.

%% Returns the number of months in a duration. 
'months-from-duration'(_Ctx, Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
        Arg1;
      _ ->
         #xqAtomicValue{value = #xsDateTime{sign = Sn, month = Mo}} = ?seq:singleton_value(Arg1),
         Mo1 = if Sn =:= '-' ->
                     Mo * -1;
                  true ->
                     Mo
               end,
         ?int(Mo1)
   end.


%% Returns the name of a node, as an xs:string that is either the zero-length string, or has the lexical form of an xs:QName. 
'name'(Ctx) -> 
   Q = 'node-name'(Ctx),
   ?seq:singleton(xqerl_types:cast_as( Q, 'xs:string' )).
'name'(Ctx,Arg1) -> 
   Q = 'node-name'(Ctx,Arg1),
   ?seq:singleton(xqerl_types:cast_as( Q, 'xs:string' )).

%% Returns the namespace URI part of the name of $arg, as an xs:anyURI value. 
'namespace-uri'(Ctx) -> 
   Item = xqerl_context:get_context_item(Ctx),
   'namespace-uri'(Ctx,Item).
'namespace-uri'(_Ctx,Arg1) ->
   case ?seq:is_empty(Arg1) of 
      true ->
         ?atm('xs:anyURI',"");
      _ ->
         Node = ?seq:singleton_value(Arg1),
         case xqerl_node:get_node_name(Node) of
            #qname{namespace = 'no-namespace'} ->
               ?atm('xs:anyURI',"");
            #qname{namespace = Uri} ->
               ?atm('xs:anyURI',Uri);
            [] ->
               ?atm('xs:anyURI',"")
         end
   end.

%% Returns the namespace URI of one of the in-scope namespaces for $element, identified by its namespace prefix. 
'namespace-uri-for-prefix'(_Ctx,Prefix,Element) -> 
   P1 = xqerl_types:string_value(Prefix),
   Node = ?seq:singleton_value(Element),
   #xqElementNode{inscope_ns = InScopeNamespaces} = xqerl_node:get_node(Node),
   %?dbg("namespace-uri-for-prefix", InScopeNamespaces),
   case lists:keyfind(P1, 3, InScopeNamespaces) of
      false ->
         ?seq:empty();
      #xqNamespace{namespace = 'no-namespace'} ->
         ?seq:empty();
      #xqNamespace{namespace = Ns} ->
         ?atm('xs:anyURI', Ns)
   end.

%% Returns the namespace URI part of the supplied QName. 
'namespace-uri-from-QName'(_Ctx,Arg1) ->
   case ?seq:is_empty(Arg1) of 
      true ->
         Arg1;
      _ ->
         QName = xqerl_types:value(Arg1),
         case QName of
            #qname{namespace = 'no-namespace'} ->
               ?atm('xs:anyURI',"");
            #qname{namespace = Uri} ->
               ?atm('xs:anyURI',Uri);
            [] ->
               ?atm('xs:anyURI',"")
         end
   end.   

%% Returns true for an element that is nilled. 
'nilled'(_Ctx) -> exit({not_implemented,?LINE}).
'nilled'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).

%% Returns the name of a node, as an xs:QName. 
'node-name'(Ctx) ->
   'node-name'(Ctx, xqerl_context:get_context_item(Ctx)).

'node-name'(_Ctx, #xqAtomicValue{}) -> xqerl_error:error('XPTY0004');
'node-name'(_Ctx, #xqNode{frag_id = F, identity = I}) ->
   Doc = xqerl_context:get_available_document(F),
   Q = xqerl_node:get_node_name({I,Doc}),
   %?dbg("Q",Q),
   if Q == [] ->
         ?str("");
      true ->
         ?seq:singleton(#xqAtomicValue{type = 'xs:QName', value = Q})
   end;
'node-name'(Ctx, Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
         ?str("");
      _ ->
         'node-name'(Ctx, ?seq:singleton_value(Arg1))
   end.

%% Returns the value of $arg with leading and trailing whitespace removed, and sequences of internal whitespace reduced to a single space character. 
'normalize-space'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'normalize-space'(Ctx, Ci).
%%    case ?seq:is_sequence(Ci) of 
%%       true ->
%%          'normalize-space'(Ctx, Ci);
%%       _ ->
%%          'normalize-space'(Ctx, ?seq:singleton(Ci))
%%    end.
'normalize-space'(_Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         ?str("");
      _ ->
         StrVal = xqerl_types:string_value(Arg1),
         if StrVal == [] -> ?str("");
            true ->
               Trimmed = string:trim(StrVal, both, [32,13,10,9]),
               if StrVal == "" -> ?str("");
                  true ->
                     Rep = shrink_spaces(Trimmed),
                     ?str(Rep)
               end
         end
   end.

shrink_spaces([]) ->
   [];
shrink_spaces([WS|T]) when WS == 31;
                           WS == 10;
                           WS == 9 ->
   shrink_spaces([32|T]);
shrink_spaces([32,WS|T]) when WS == 32;
                              WS == 31;
                              WS == 10;
                              WS == 9 ->
   shrink_spaces([32|T]);
shrink_spaces([H|T]) ->
   [H|shrink_spaces(T)].


%% Returns the value of $arg after applying Unicode normalization. 
'normalize-unicode'(Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
          ?str("");
      _ ->
         'normalize-unicode'(Ctx,Arg1,?str("NFC"))
   end.

'normalize-unicode'(Ctx,Arg1,NormalizationForm) -> 
   case ?seq:is_empty(Arg1) of
      true ->
          ?str("");
      _ ->
         Norm = 'normalize-space'(Ctx,NormalizationForm),
         Upper = 'upper-case'(Ctx,Norm),
         Form1 = xqerl_types:string_value(Upper),
         Str = xqerl_types:string_value(Arg1),
         Ret = case Form1 of
            "NFC" ->
               ?str(binary_to_list(unicode:characters_to_nfc_binary(Str)));
            "NFD" ->
               ?str(binary_to_list(unicode:characters_to_nfd_binary(Str)));
            "NFKC" ->
               ?str(binary_to_list(unicode:characters_to_nfkc_binary(Str)));
            "NFKD" ->
               ?str(binary_to_list(unicode:characters_to_nfkd_binary(Str)));
            "FULLY-NORMALIZED" ->
               ?str(binary_to_list(unicode:characters_to_binary(Str)));
            "" ->
               Arg1
         end,
         Ret
   end.

%% Returns true if the effective boolean value of $arg is false, or false if it is true. 
'not'(_Ctx,Arg1) -> 
   case ?seq:singleton_value(boolean([], Arg1)) of
      ?inbool(true) ->
         ?bool(false);
      ?inbool(false) ->
         ?bool(true)
   end.

%% Returns the value indicated by $arg or, if $arg is not specified, the context item after atomization, converted to an xs:double. 
'number'(Ctx) ->
   Val = xqerl_context:get_context_item(Ctx),
   'number'([], Val).
'number'(_Ctx,Arg1) -> 
   Val = ?seq:singleton_value(Arg1),
   case catch xqerl_types:cast_as(Val, 'xs:double') of
      {'EXIT',_} ->
         ?dbl("NaN");
      V ->
         ?seq:singleton(V)
   end.

%% Returns $arg if it contains one or more items. Otherwise, raises an error. 
'one-or-more'(_Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         xqerl_error:error('FORG0004');
      _ ->
         Arg1
   end.

%% Returns every node within the input sequence that has no ancestor that is itself a member of the input sequence; 
%% the nodes are returned in document order with duplicates eliminated. 
%% fn:outermost($nodes as node()*) as node()*
'outermost'(Ctx,Arg1) -> 
   %%    $nodes except $nodes/ancestor::node()
   %?dbg("outermost",Arg1),
   ?seq:except(Arg1,
               ?seq:union(
                xqerl_step:forward(Ctx,?seq:union(Arg1,?seq:empty()),descendant,#xqKindTest{type = node},[]),
                xqerl_step:forward(Ctx,?seq:union(Arg1,?seq:empty()),attribute,#xqKindTest{type = attribute},[])
                )
               ).

%% Parses a string containing the date and time in IETF format, returning the corresponding xs:dateTime value. 
'parse-ietf-date'(_Ctx,Arg1) -> 
   Str = xqerl_types:string_value(Arg1),
   case ietf_date:string(Str) of
      {ok,L,_} ->
         {ok,Dt} = ietf_date_parse:parse(L),
         DtStr = xqerl_datetime:to_string(Dt, 'xs:dateTime'),
         ?atm('xs:dateTime', Dt#xsDateTime{string_value = DtStr});
      _E ->
         %?dbg("E",E),
         xqerl_error:error('FORG0010')
   end.

%% Parses a string supplied in the form of a JSON text, returning the results typically in the form of a map or array. 
'parse-json'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'parse-json'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% This function takes as input an XML document represented as a string, and returns the document node at the root of an XDM tree representing the parsed document. 
'parse-xml'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).

%% This function takes as input an XML external entity represented as a string, and returns the document node at the root of an XDM tree representing the parsed document fragment. 
'parse-xml-fragment'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).

%% Returns a path expression that can be used to select the supplied node relative to the root of its containing document. 
'path'(_Ctx) -> exit({not_implemented,?LINE}).
'path'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).

%% Returns the context position from the dynamic context. 
'position'(Ctx) -> 
   ?seq:singleton(xqerl_context:get_context_position(Ctx)).

%% Returns the prefix component of the supplied QName. 
'prefix-from-QName'(_Ctx,[]) -> [] ;
'prefix-from-QName'(_Ctx,Arg) -> 
   #qname{prefix = L} = xqerl_types:value(Arg),
   #xqAtomicValue{type = 'xs:NCName', value = L}.

%% Returns an xs:QName value formed using a supplied namespace URI and lexical QName. 
'QName'(Ctx,[],QNameTxt) ->
   'QName'(Ctx,?str('no-namespace'),QNameTxt);
'QName'(Ctx,Uri,QNameTxt) ->
   case string_value(QNameTxt) of
      [] ->
         xqerl_error:error('FOCA0002');
      Str ->
         StrUri = case string_value(Uri) of
                     'no-namespace' ->
                        'no-namespace';
                     [] ->
                        'no-namespace';
                     S ->
                        S
                  end,
         {Prefix, Local} = case xqerl_types:scan_ncname(Str) of
                                 {P, L} -> {P, L};
                                 L -> {"", L}
                              end,
         if Prefix =/= "" andalso StrUri == 'no-namespace' ->
               xqerl_error:error('FOCA0002');
            true ->
               Prefix1 = if Prefix == [] ->
                               Namespaces = maps:get(namespaces, Ctx),
                               %?dbg("Namespaces",Namespaces),
                               case lists:keyfind(StrUri, 2, Namespaces) of
                                  false ->
                                     Prefix;
                                  {P1,_} ->
                                     P1
                               end;
                            true ->
                               Prefix
                         end,
               Q = #qname{namespace = StrUri, prefix = Prefix1, local_name = Local},
               ?dbg("Q",Q),
               ?atm('xs:QName',Q)
         end
   end.

%% Returns a random number generator, which can be used to generate sequences of random numbers. 
'random-number-generator'(_Ctx) -> exit({not_implemented,?LINE}).
'random-number-generator'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).

%% Returns a new sequence containing all the items of $target except the item at position $position. 
'remove'(_Ctx,[],_Position) -> [];
'remove'(_Ctx,Target,Position) -> 
   case ?seq:is_empty(Target) of
      true ->
         Target;
      _ ->
         Index = xqerl_types:value(Position),
         Size = ?seq:size(Target),
         if Index < 1 orelse Index > Size ->
               Target;
            true ->
               ?seq:from_list(remove1(?seq:to_list(Target),Index,1))
         end
   end.

remove1([],_,_) ->
   [];
remove1([_|T],Position,Current) when Position == Current ->
   T;
remove1([H|T],Position,Current) ->
   [H|remove1(T,Position,Current + 1)].
  

%% Returns a string produced from the input string by replacing any substrings that match a given regular expression with a supplied replacement string. 
'replace'(_Ctx,Input,Pattern,Replacement) -> 
   'replace'(_Ctx,Input,Pattern,Replacement,[]).
'replace'(_Ctx,Input,Pattern,Replacement,Flags) ->
   %Pattern1 = xqerl_regex:regex_back_ref(xqerl_types:value(Pattern),0),
   %?dbg("Pattern1", Pattern1),
   MP = xqerl_regex:regex_comp(Pattern,Flags),
   Repl = string_value(Replacement),
   Repl1 = xqerl_regex:regex_back_ref(Repl,0),
   Input1 = string_value(Input),
   %?dbg("Input1 replace", Input1),
   %?dbg("Repl1 replace", Repl1),
   Str = re:replace(Input1, MP, Repl1, [{return,list},global]),
   ?str(Str).



string_value(At) -> xqerl_types:string_value(At).

%% Returns an xs:QName value (that is, an expanded-QName) by taking an xs:string that has the 
%% lexical form of an xs:QName (a string in the form "prefix:local-name" or "local-name") and 
%% resolving it using the in-scope namespaces for a given element.
%% 
%% fn:resolve-QName($qname as xs:string?, $element as element()) as xs:QName? 
'resolve-QName'(_Ctx,String,Element) -> 
   #xqElementNode{inscope_ns = IsNs} = xqerl_node:get_node(?seq:singleton_value(Element)),
   xqerl_types:cast_as(String, 'xs:QName', IsNs).

%% Resolves a relative IRI reference against an absolute IRI. 
'resolve-uri'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'resolve-uri'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% Reverses the order of items in a sequence. 
'reverse'(_Ctx,Arg1) -> 
   ?seq:from_list(lists:reverse(?seq:to_list(Arg1))).

%% Returns the root of the tree to which $arg belongs. This will usually, but not necessarily, be a document node. 
'root'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   ?MODULE:root(Ctx,Ci).
'root'(Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         Arg1;
      _ ->
         case ?seq:all_node(Arg1) of
            true ->
               xqerl_step:any_root(Ctx,Arg1);
            _ ->
               xqerl_error:error('XPTY0004')
         end
   end.

%% Rounds a value to a specified number of decimal places, rounding upwards if two such values are equally near. 
'round'(Ctx,Arg1) -> 
   'round'(Ctx,Arg1, ?int(0)).
'round'(_Ctx,Arg,Precision) -> 
   Half = fun([$5|Rest]) ->
                case lists:all(fun($0) -> true; (_) -> false end, Rest) of
                   true ->
                      middle;
                   _ ->
                      greater
                end;
             ([C|_Rest]) when C < $5 ->
                less;
             ([C|_Rest]) when C > $5 ->
                greater;
             ([]) ->
                less
          end,
   Val1 = xqerl_types:value(Arg),
   Typ1 = xqerl_types:type(Arg),
   Prec1 = xqerl_types:value(Precision),
   if Val1 == "NaN" ->
         Arg;
      Val1 == "-INF" ->
         Arg;
      Val1 == "INF" ->
         Arg;
      Val1 == [] ->
         Arg;
      true ->
         if Prec1 == 0 ->
               if Val1 < 0 ->
                     Abs = abs(Val1),
                     List = List = lists:flatten(io_lib:format("~w", [Abs])),
                     [_I1,F1] = case string:split(List,[$.]) of
                                  [I2,F2] ->
                                     [I2,F2];
                                  [I2] ->
                                     [I2,""]
                               end,
                     H = Half(F1),
                     %?dbg("Middle",{H,List,Abs}),
                     if H == middle ->
                           Val = round(Val1 + 1),
                           ?seq:singleton(xqerl_types:cast_as(?atm('xs:decimal', Val), Typ1));
                        true ->
                           Val = round(Val1),
                           ?seq:singleton(xqerl_types:cast_as(?atm('xs:decimal', Val), Typ1))
                     end;
                  true ->
                     Val = round(Val1),
                     ?seq:singleton(xqerl_types:cast_as(?atm('xs:decimal', Val), Typ1))
               end;
            Prec1 < 0 ->
               Prec2 = math:pow(10, -Prec1),
               %?dbg("Prec1",Prec1),
               Val = round(Val1 / Prec2) * Prec2,
               ?seq:singleton(xqerl_types:cast_as(?atm('xs:decimal', Val), Typ1));
            true ->
               if Val1 < 0 ->
                     List = lists:flatten(io_lib:format("~w", [Val1])),
                     [I1,F1] = case string:split(List,[$.]) of
                                  [I2,F2] ->
                                     [I2,F2];
                                  [I2] ->
                                     [I2,""]
                               end,
                     Len = length(F1),
                     I3 = I1 ++ lists:sublist(F1, 1, Prec1),
                     %?dbg("All",{I3,Len,I1,F1}),
                     F3 = if Len < Prec1 ->
                                "0";
                             true ->
                                lists:sublist(F1, Prec1 + 1, Len)
                          end,
                     H = Half(F3),
                     if H == middle ->
                           Val = case catch list_to_float(I3) of
                                    {'EXIT',_} ->
                                       list_to_integer(I3) * math:pow(10, - Prec1);
                                    D ->
                                       D * math:pow(10, - Prec1)
                                 end,
                           %?dbg("All",{Val,H,F3,I3,Len,I1,F1}),
                           ?seq:singleton(xqerl_types:cast_as(?atm('xs:decimal', Val), Typ1));
                        true ->
                           List1 = float_to_list(float(Val1), [{decimals,Prec1},compact]),
                           Val = case catch list_to_float(List1) of
                                    {'EXIT',_} ->
                                       list_to_integer(List1);
                                    D ->
                                       D
                                 end,
                           ?seq:singleton(xqerl_types:cast_as(?atm('xs:decimal', Val), Typ1))
                     end;
                  true ->
                     List = float_to_list(float(Val1), [{decimals,Prec1},compact]),
                     Val = case catch list_to_float(List) of
                              {'EXIT',_} ->
                                 list_to_integer(List);
                              D ->
                                 D
                           end,
                     ?seq:singleton(xqerl_types:cast_as(?atm('xs:decimal', Val), Typ1))
               end
         end
   end.

%% Rounds a value to a specified number of decimal places, rounding to make the last digit even if two such values are equally near. 
'round-half-to-even'(Ctx,Arg1) -> 'round-half-to-even'(Ctx,Arg1,?int(0)).
'round-half-to-even'(_Ctx,Arg,Precision) -> 
   Pres = xqerl_types:value(Precision),
   ArgType = xqerl_types:type(Arg),
   ArgVal = xqerl_types:value(Arg),
   if ArgVal == [];
      ArgVal == "NaN";
      ArgVal == "-INF";
      ArgVal == "INF";
      abs(Pres) > 308 ->
         Arg;
      true ->
         Half = fun([$5|Rest]) ->
                      case lists:all(fun($0) -> true; (_) -> false end, Rest) of
                         true ->
                            less;
                         _ ->
                            greater
                      end;
                   ([C|_Rest]) when C < $5 ->
                      less;
                   ([C|_Rest]) when C > $5 ->
                      greater;
                   ([]) ->
                      less
                end,
         Sign = if ArgVal < 0 -> -1; true -> 1 end,
         FltVal = abs(ArgVal),
         {Int, Fract} = if ArgType =/= 'xs:float',
                           ArgType =/= 'xs:double' ->
                              List = lists:flatten(io_lib:format("~w", [FltVal])),
                              [I1,F1] = case string:split(List,[$.]) of
                                           [I2,F2] ->
                                              [I2,F2];
                                           [I2] ->
                                              [I2,""]
                                        end,
                              {I1,F1};
                           true ->
                              I = trunc(FltVal),
                              F = float(FltVal),
                              List = lists:flatten(io_lib:format("~w", [F])),
                              %?dbg("List",List),
                              [_,Fl] = string:split(List,[$.]),
                              {integer_to_list(I), Fl}
                        end,
         {Int1,Fract1} = if Pres == 0 -> {Int, Fract};
                            Pres < 1 ->
                               Len = length(Int),
                               AbsPres = abs(Pres),
                               if Len < abs(Pres) ->
                                     {"0", "0"++Int++Fract};
                                  true ->
                                     NewInt = lists:sublist(Int, Len - AbsPres),
                                     NewFract = lists:sublist(Int, Len - AbsPres + 1, AbsPres) ++ Fract,
                                     {NewInt, NewFract}
                               end;
                            true ->
                               Len = length(Fract),
                               if Len < Pres ->
                                     TempFract = lists:flatten(string:pad(Fract,Pres,trailing,[$0])),
                                     {Int++TempFract,""};
                                  true ->
                                     NewInt = Int ++ lists:sublist(Fract, 1, Pres),
                                     NewFract = lists:sublist(Fract, Pres + 1, Len),
                                     {NewInt, NewFract}
                               end
                         end,
         Int2 = list_to_integer(Int1),
         Mod1 = Int2 rem 2,
         ?dbg("All",{Int1,Int,Fract1,Fract,Int2,Mod1}),
         Int3 = case {Mod1, Half(Fract1)} of
                   {_, less} ->
                      Int2;
%%                    {1, less} ->
%%                       if Fract1 == [] ->
%%                             Int2;
%%                          true ->
%%                             Int2 + 1
%%                       end;
                   _ ->
                      Int2 + 1
                end,
         Factor = if Pres < 1 ->
                        trunc(math:pow(10, - Pres));
                     true ->
                        math:pow(10, - Pres)
                  end,
         Value = if (ArgType =/= 'xs:float' andalso ArgType =/= 'xs:double' andalso ArgType =/= 'xs:decimal') ->
                       trunc(Int3 * Factor * Sign);
                    true ->
                       Int3 * Factor * Sign
                 end,
         %?dbg("All",{Pres,Value,Factor,Int3,Int2,Int1,Int,Fract1,Fract}),
         ?atm(ArgType,Value)
   end.

%% Returns the seconds component of an xs:dateTime. 
'seconds-from-dateTime'(Ctx,Arg1) -> 
   'seconds-from-duration'(Ctx, Arg1).

%% Returns the number of seconds in a duration. 
'seconds-from-duration'(_Ctx, Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
        Arg1;
      _ ->
         #xqAtomicValue{value = #xsDateTime{sign = Sn, second = Sd}} = ?seq:singleton_value(Arg1),
         Sd1 = if Sn =:= '-' ->
                     Sd * -1;
                  true ->
                     Sd
               end,
         ?dec(Sd1)
   end.

%% Returns the seconds component of an xs:time. 
'seconds-from-time'(Ctx,Arg1) -> 
   'seconds-from-duration'(Ctx, Arg1).

%% This function serializes the supplied input sequence $arg as described in [xslt-xquery-serialization-31], returning the serialized representation of the sequence as a string. 
'serialize'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'serialize'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% Sorts a supplied sequence, based on the value of a sort key supplied as a function. 
'sort'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'sort'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).
'sort'(_Ctx,_Arg1,_Arg2,_Arg3) -> exit({not_implemented,?LINE}).

%% Returns true if the string $arg1 contains $arg2 as a leading substring, taking collations into account. 
'starts-with'(Ctx,[],Arg2) -> 'starts-with'(Ctx,?str(""),Arg2);
'starts-with'(_Ctx,_Arg1,[]) -> ?bool(true);
'starts-with'(_Ctx,Arg1,Arg2) -> 
   Str1 = xqerl_types:string_value(Arg1),
   Str2 = xqerl_types:string_value(Arg2),
   if Str2 == [] ->
         ?bool(true);
      Str1 == [] ->
         ?bool(false);
      true ->
         case lists:prefix(Str2, Str1) of
            true ->
               ?bool(true);
            _ ->
               ?bool(false)
         end
   end.
%TODO collation
'starts-with'(Ctx,Arg1,Arg2,Collation) -> 
   Coll = xqerl_types:value(Collation),
   All = xqerl_context:get_statically_known_collations(),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         ?MODULE:'starts-with'(Ctx,Arg1,Arg2);
      _ ->
         xqerl_error:error('FOCH0002')
   end.

%% This function returns the value of the static base URI property from the static context. 
'static-base-uri'(_Ctx) -> 
   ?atm('xs:anyURI', xqerl_context:get_static_base_uri()).

%% Returns the value of $arg represented as an xs:string. 
'string'(Ctx) -> 
   Ci = xqerl_context:get_context_item(Ctx),
   'string'(Ctx, Ci).

'string'(_Ctx,#xqAtomicValue{} = Av) ->
   ?seq:singleton(xqerl_types:cast_as(Av, 'xs:string'));
'string'(_Ctx,#xqNode{} = Node) ->
   ?seq:singleton(xqerl_types:cast_as(xqerl_node:atomize_nodes(Node), 'xs:string'));
'string'(_Ctx,Arg1) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         ?str("");
      _ ->
         case ?seq:get_seq_type(Arg1) of
            #xqSeqType{type = function} ->
               xqerl_error:error('FOTY0014');
            _ ->
               %?dbg("Arg1",T),
               Val = xqerl_types:cast_as(Arg1, 'xs:string'),
               %?dbg("Val",Val),
               ?seq:singleton(Val)
         end
   end.

%% Returns a string created by concatenating the items in a sequence, with a defined separator between adjacent items. 
'string-join'(_Ctx,Arg1) ->
   'string-join'(_Ctx,Arg1, ?str("")).

'string-join'(_Ctx,Arg1,Arg2) ->
   case ?seq:is_empty(Arg1) of
      true ->
         ?str("");
      _ ->
         NewArg1 = ?seq:to_list(Arg1),
         %?dbg("string-join", Arg1),
         Sep = xqerl_types:value(xqerl_types:cast_as(Arg2, 'xs:string')),
         'string-join1'(_Ctx,NewArg1,Sep)
   end.

'string-join1'(_Ctx,[H|Arg1],Sep) ->
   Hd = xqerl_types:value(xqerl_types:cast_as(H, 'xs:string')),
   %?dbg("string-join1",Hd),
   Tl = lists:map(fun(I) ->                        
               xqerl_types:value(xqerl_types:cast_as(I, 'xs:string'))
              end, Arg1),
   %?dbg("string-join1",Tl),
   Ct = Hd ++ 
           lists:concat(
           [Sep ++ A ||
            A <- Tl
           ]),
   %?dbg("string-join1",Ct),
   ?str(Ct).

%% Returns the number of characters in a string. 
'string-length'(Ctx) -> 
   Val = xqerl_context:get_context_item(Ctx),
   ?int(length(xqerl_types:string_value(Val))).
'string-length'(_Ctx,Arg1) -> 
   ?int(length(xqerl_types:string_value(Arg1))).

%% Returns the sequence of codepoints that constitute an xs:string value. 
'string-to-codepoints'(_Ctx,Arg1) -> 
   Str = string_value(Arg1),
   List = lists:map(fun(C) ->
                          #xqAtomicValue{type = 'xs:integer', value = C}
                    end, Str),
   ?seq:from_list(List).

%% Returns the contiguous sequence of items in the value of $sourceSeq beginning at the position indicated by the value of $startingLoc and continuing for the number of items indicated by the value of $length. 
'subsequence'(_Ctx,SourceSeq,StartingLoc) -> 
   ?dbg("SourceSeq,StartingLoc",{SourceSeq,StartingLoc}),
   Start = erlang:round(erlang:max(1,xqerl_types:value(StartingLoc))),
   case Start > ?seq:size(SourceSeq) of
      true ->
         ?seq:empty();
      _ ->
         ?seq:from_list(lists:sublist(?seq:to_list(SourceSeq), Start, ?seq:size(SourceSeq)))
   end.
'subsequence'(_Ctx,SourceSeq,StartingLoc,Length) -> 
   Start = erlang:round(erlang:max(1,xqerl_types:value(StartingLoc))),
   Len = erlang:round(xqerl_types:value(Length)),
   case Start > ?seq:size(SourceSeq) of
      true ->
         ?seq:empty();
      _ ->
         ?seq:from_list(lists:sublist(?seq:to_list(SourceSeq), Start, Len))
   end.

%% Returns the portion of the value of $sourceString beginning at the position indicated by the value of $start and continuing for the number of characters indicated by the value of $length. 
'substring'(Ctx,SourceString,Start) ->
   'substring'(Ctx,SourceString,Start, 'string-length'(Ctx,SourceString)).

'substring'(_Ctx,SourceString,Start,Length) -> 
   Str = xqerl_types:cast_as(SourceString, 'xs:string'),
   Val = xqerl_types:value(Str),
   StartPos = erlang:round(erlang:max(1,xqerl_types:value(Start))),
   Length1 = erlang:round(xqerl_types:value(Length)),
   if Val == [] ->
         ?str("");
      StartPos > length(Val) ->
         ?str("");
      true ->
         Sub = string:substr(Val, StartPos, Length1),
         ?str(Sub)
   end.

%% Returns the part of $arg1 that follows the first occurrence of $arg2, taking collations into account. 
'substring-after'(_Ctx,Arg1,Arg2) ->
   Str1 = string_value(Arg1),
   Str2 = string_value(Arg2),
   case string:split(Str1,Str2) of
      [_] ->
         ?str("");
      [_,A] ->
         ?str(A)
   end.

'substring-after'(Ctx,Arg1,Arg2,Collation) ->
   Coll = xqerl_types:value(Collation),
   All = xqerl_context:get_statically_known_collations(),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         'substring-after'(Ctx,Arg1,Arg2);
      _ ->
         xqerl_error:error('FOCH0002')
   end.
   
%% Returns the part of $arg1 that precedes the first occurrence of $arg2, taking collations into account. 
'substring-before'(_Ctx,Arg1,Arg2) -> 
   Str1 = string_value(Arg1),
   Str2 = string_value(Arg2),
   Str3 = string:split(Str1,Str2),
   case Str3 of
      [_] ->
         ?str("");
      _ ->
         ?str(hd(Str3))
   end.
%TODO collation
'substring-before'(Ctx,Arg1,Arg2,Collation) ->
   Coll = xqerl_types:value(Collation),
   All = xqerl_context:get_statically_known_collations(),
   case lists:any(fun(U) -> U == Coll end, All) of
      true ->
         'substring-before'(Ctx,Arg1,Arg2);
      _ ->
         xqerl_error:error('FOCH0002')
   end.
   

%% Returns a value obtained by adding together the values in $arg. 
'sum'(_Ctx,[]) ->
   ?int(0);
'sum'(Ctx,Arg1) ->
   'sum'(Ctx,Arg1,?int(0)).

'sum'(_Ctx,Arg1,Arg2) -> 
   case ?seq:is_empty(Arg1) of
      true ->
         Arg2;
      _ ->
         {Seq,SeqType} = compare_convert_seq(?seq:to_list(Arg1), [], []),
         %?dbg("sum", {Seq,SeqType}),
         case xqerl_types:is_numeric_type(SeqType) orelse xqerl_types:is_date_type(SeqType) of
            true ->
               Sum1 = sum1(lists:reverse(Seq), []),
               %?dbg("sum1", Sum1),
               xqerl_types:cast_as(Sum1, SeqType);
            _ ->
               xqerl_error:error('FORG0006')
         end
   end.

sum1([], Sum) ->
   Sum;
sum1([#xqAtomicValue{type = 'xs:double', value = "NaN"} = H|_], _) ->
   H;
sum1([#xqAtomicValue{type = 'xs:float', value = "NaN"} = H|_], _) ->
   H;
sum1([H|T], []) ->
   %?dbg("sum1[]",H),
   sum1(T, H);
sum1([H|T], Sum) ->
   %?dbg("sum1",H),
   %?dbg("sum1",Sum),
   case catch xqerl_operators:add(Sum, H) of
      {'EXIT',_} ->
         xqerl_error:error('FOAR0002');
      NewSum ->
         sum1(T, NewSum)
   end.

%%     
%%     Min1 = min1(Seq, []),
%%    %?dbg("min1", Min1),
%%    xqerl_types:cast_as(Min1, SeqType).




%% Returns all but the first item in a sequence. 
'tail'(_Ctx,Arg1) -> 
   ?seq:tail(Arg1).

%% Returns the timezone component of an xs:date. 
'timezone-from-date'(_Ctx,Dt) ->
   case xqerl_types:value(Dt) of
      [] ->
         ?seq:empty();
      #xsDateTime{offset = OS} ->
         if OS == [] -> [];
            true ->
               Str = xqerl_datetime:to_string(OS,'xs:dayTimeDuration'),
               ?seq:singleton(xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = Str}, 'xs:dayTimeDuration' ))
         end
   end.

%% Returns the timezone component of an xs:dateTime. 
'timezone-from-dateTime'(_Ctx,Dt) ->
   case xqerl_types:value(Dt) of
      [] ->
         ?seq:empty();
      #xsDateTime{offset = OS} ->
         if OS == [] -> [];
            true ->
               Str = xqerl_datetime:to_string(OS,'xs:dayTimeDuration'),
               ?seq:singleton(xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = Str}, 'xs:dayTimeDuration' ))
         end
   end.

%% Returns the timezone component of an xs:time. 
'timezone-from-time'(_Ctx,Dt) -> 
   case xqerl_types:value(Dt) of
      [] ->
         ?seq:empty();
      #xsDateTime{offset = OS} ->
         if OS == [] -> [];
            true ->
               Str = xqerl_datetime:to_string(OS,'xs:dayTimeDuration'),
               ?seq:singleton(xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = Str}, 'xs:dayTimeDuration' ))
         end
   end.

%% Returns a sequence of strings constructed by splitting the input wherever a separator is found; the separator is any substring that matches a given regular expression. 
'tokenize'(Ctx,Arg1) -> 'tokenize'(Ctx,Arg1,?str(" ")).
'tokenize'(_Ctx,Arg1,Arg2) ->
   'tokenize'(_Ctx,Arg1,Arg2,[]).
'tokenize'(_Ctx,Input,Pattern,Flags) -> 
   MP = xqerl_regex:regex_comp(Pattern,Flags),
   %?dbg("Input",Input),
   %?dbg("Pattern",Pattern),
   %?dbg("Flags",Flags),
   Str = xqerl_types:cast_as(Input, 'xs:string'),
   %?dbg("Str",Str),
   Input1 = string_value(Str),
   %?dbg("Input1",Input1),
   List = re:split(Input1, MP, [group, {return,list}]),
   %?dbg("List",List),
   ?seq:sort_seq(lists:foldl(fun(S, Seq) -> 
                       H = lists:flatten(hd(S)),
                       if H == [] ->
                             T = lists:flatten(tl(S)),
                             if T == [] ->
                                   ?seq:empty();
                                true ->
                                   ?seq:append(#xqAtomicValue{type = 'xs:string', value = ""}, Seq)
                             end;
                          true ->
                             ?seq:append(#xqAtomicValue{type = 'xs:string', value = hd(S)}, Seq)
                       end
               end, ?seq:empty(), List)).

%% Provides an execution trace intended to be used in debugging queries. 
'trace'(_Ctx,Arg1) -> 
   io:format("~p~n", [Arg1]),
   Arg1.
'trace'(_Ctx,Arg1,Arg2) ->
   AtStr = xqerl_xs:xs_string([], Arg2),
   Str = xqerl_types:value(AtStr) , 
   io:format("~s:~p~n", [Str,Arg1]),
   Arg1.

%% Invokes a transformation using a dynamically-loaded XSLT stylesheet. 
'transform'(_Ctx,_Arg1) -> xqerl_error:error('FOXT0004').

%% Returns the value of $arg modified by replacing or removing individual characters. 
'translate'(_Ctx,Arg,MapString,TransString) -> 
   ArgV = xqerl_types:value(Arg),
   if ArgV == [] ->
         ?str("");
      true ->
         MapStringV = xqerl_types:value(MapString),
         if MapStringV == [] ->
               Arg;
            true ->
               TransStringV = xqerl_types:value(TransString),
               Map = zip_map_trans(MapStringV,TransStringV),
               %?dbg("Map",Map),
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
               %?dbg("NewStr",NewStr),
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
'true'(_Ctx) ->
   ?bool(true).

%% Returns the items of $sourceSeq in an implementation-dependent order. 
'unordered'(_Ctx,Arg1) ->
   Arg1.
%%    exit({not_implemented,?LINE}). % set order in the context, do expr, set context back DONE IN-LINE

%% The fn:unparsed-text function reads an external resource (for example, a file) and returns a string representation of the resource. 
'unparsed-text'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'unparsed-text'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% Because errors in evaluating the fn:unparsed-text function are non-recoverable, these two functions are provided to allow an application to determine whether a call with particular arguments would succeed. 
'unparsed-text-available'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'unparsed-text-available'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% The fn:unparsed-text-lines function reads an external resource (for example, a file) and returns its contents as a sequence of strings, one for each line of text in the string representation of the resource. 
'unparsed-text-lines'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'unparsed-text-lines'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% Converts a string to upper case. 
'upper-case'(_Ctx,Arg1) ->
   Out = 
   case ?seq:is_empty(Arg1) of
      true ->
         #xqAtomicValue{type = 'xs:string', value = ""};
      _ ->
         case ?seq:singleton_value(Arg1) of
            #xqNode{} ->
               Str = string_value(Arg1),
               Upp = string:to_upper(Str),
               #xqAtomicValue{type = 'xs:string', value = Upp};
            #xqAtomicValue{type = Type} ->
               case xqerl_types:subtype_of(Type, 'xs:string') of
                  true ->
                     Str = string_value(Arg1),
                     Upp = string:to_upper(Str),
                     #xqAtomicValue{type = 'xs:string', value = Upp};
                  _ ->
                     xqerl_error:error('XPTY0004')
               end
         end
   end,
   ?seq:singleton(Out).   

%% Returns a sequence of xs:anyURI values representing the URIs in a URI collection. 
'uri-collection'(_Ctx) -> exit({not_implemented,?LINE}).
'uri-collection'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).

%% Converts an XML tree, whose format corresponds to the XML representation of JSON defined in this specification, into a string conforming to the JSON grammar. 
'xml-to-json'(_Ctx,_Arg1) -> exit({not_implemented,?LINE}).
'xml-to-json'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

%% Returns the year component of an xs:date. 
'year-from-date'(Ctx, Arg1) -> 
   'years-from-duration'(Ctx, Arg1).

%% Returns the year component of an xs:dateTime. 
'year-from-dateTime'(Ctx, Arg1) -> 
   'years-from-duration'(Ctx, Arg1).

%% Returns the number of years in a duration. 
'years-from-duration'(_Ctx, Arg1) ->
   case ?seq:is_empty(Arg1) of
      true ->
        Arg1;
      _ ->
         #xqAtomicValue{value = #xsDateTime{sign = Sn, year = Yr}} = ?seq:singleton_value(Arg1),
         Yr1 = if Sn =:= '-' ->
                     Yr * -1;
                  true ->
                     Yr
               end,
         ?int(Yr1)
   end.

%% Returns $arg if it contains zero or one items. Otherwise, raises an error. 
'zero-or-one'(_Ctx,[]) -> [];
'zero-or-one'(_Ctx,L) when is_list(L) -> L;
'zero-or-one'(_Ctx,Arg1) -> 
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               Arg1;
            _ ->
            xqerl_error:error('FORG0003')
         end;
      _ ->
         ?seq:singleton(Arg1)
   end.

%% The external effects of fn:put are implementation-defined, since they occur outside the domain of XQuery. The intent is that, if fn:put is invoked on a document node and no error is raised, a subsequent query can access the stored document by invoking fn:doc with the same URI. 
'put'(_Ctx,_Arg1,_Arg2) -> exit({not_implemented,?LINE}).

