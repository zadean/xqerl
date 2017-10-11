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

%% @doc Module for Serialization options
%% @TODO Complete the implementation
 
-module(xqerl_options).

-define(NS,"https://www.w3.org/2010/xslt-xquery-serialization").

-include("xqerl.hrl").

-export([validate/1]).

%% Serialization parameter | Permitted values for parameter
%% ========================|================================
%% allow-duplicate-names   | One of the enumerated values yes, no, true, false, 1 or 0. 
%%                         | This parameter indicates whether a map item serialized as a JSON object using the 
%%                         | JSON output method is allowed to contain duplicate member names. If the value no, 
%%                         | false or 0 is specified, serialization error [err:SERE0022] will be raised.
%%                         |---------------------------------------------
%% byte-order-mark         | One of the enumerated values yes, no, true, false, 1 or 0. This parameter indicates 
%%                         | whether the serialized sequence of octets is to be preceded by a Byte Order Mark 
%%                         | (See Section 5.1 of [Unicode Encoding]). The actual octet order used is 
%%                         | implementation-dependent. If the encoding defines no Byte Order Mark, or if the 
%%                         | Byte Order Mark is prohibited for the specific Unicode encoding or implementation 
%%                         | environment, then this parameter is ignored.
%%                         |---------------------------------------------
%% cdata-section-elements  | A list of expanded QNames, possibly empty.
%%                         |---------------------------------------------
%% doctype-public          | A string of PubidCharXML characters. This parameter MAY be absent.
%%                         |---------------------------------------------
%% doctype-system          | A string of Unicode characters that does not include both an apostrophe (#x27) and 
%%                         | a quotation mark (#x22) character. This parameter MAY be absent.
%%                         |---------------------------------------------
%% encoding                | A string of Unicode characters in the range #x21 to #x7E (that is, printable ASCII 
%%                         | characters); the value SHOULD be a charset registered with the Internet Assigned 
%%                         | Numbers Authority [IANA], [RFC2978] or begin with the characters x- or X-.
%%                         |---------------------------------------------
%% escape-uri-attributes   | One of the enumerated values yes, no, true, false, 1 or 0.
%%                         |---------------------------------------------
%% html-version            | A decimal value. This parameter MAY be absent.
%%                         |---------------------------------------------
%% include-content-type    | One of the enumerated values yes, no, true, false, 1 or 0.
%%                         |---------------------------------------------
%% indent                  | One of the enumerated values yes, no, true, false, 1 or 0.
%%                         |---------------------------------------------
%% item-separator          | A string of Unicode characters. This parameter MAY be absent.
%%                         |---------------------------------------------
%% json-node-output-method | An expanded QName with a non-null namespace URI, or with a null namespace URI and 
%%                         | a local name equal to one of xml, xhtml, html or text. If the namespace URI is non-null, 
%%                         | the parameter specifies an implementation-defined output method.
%%                         |---------------------------------------------
%% media-type              | A string of Unicode characters specifying the media type (MIME content type) [RFC2046]; 
%%                         | the charset parameter of the media type MUST NOT be specified explicitly in the value 
%%                         | of the media-type parameter. If the destination of the serialized output is annotated 
%%                         | with a media type, this parameter MAY be used to provide such an annotation. For example, 
%%                         | it MAY be used to set the media type in an HTTP header.
%%                         |---------------------------------------------
%% method                  | An expanded QName with a non-null namespace URI, or with a null namespace URI and a 
%%                         | local name equal to one of xml, xhtml, html, text, json, or adaptive. If the namespace 
%%                         | URI is non-null, the parameter specifies an implementation-defined output method.
%%                         |---------------------------------------------
%% normalization-form      | One of the enumerated values NFC, NFD, NFKC, NFKD, fully-normalized or none, or an 
%%                         | implementation-defined value of type NMTOKEN.
%%                         |---------------------------------------------
%% omit-xml-declaration    | One of the enumerated values yes, no, true, false, 1 or 0.
%%                         |---------------------------------------------
%% standalone              | One of the enumerated values yes, no, true, false, 1 or 0 or omit.
%%                         |---------------------------------------------
%% suppress-indentation    | A list of expanded QNames, possibly empty.
%%                         |---------------------------------------------
%% undeclare-prefixes      | One of the enumerated values yes, no, true, false, 1 or 0.
%%                         |---------------------------------------------
%% use-character-maps      | A list of pairs, possibly empty, with each pair consisting of a single Unicode 
%%                         | character and a string of Unicode characters.
%%                         |---------------------------------------------
%% version                 | A string of Unicode characters.
%%                         |---------------------------------------------
default_state() ->
   #{
     'allow-duplicate-names'  => false,
     'byte-order-mark'        => false,
     'cdata-section-elements' => [],
     'doctype-public'         => [],
     'doctype-system'         => [],
     'encoding'               => utf8,
     'escape-uri-attributes'  => false,
     'html-version'           => [],
     'include-content-type'   => false,
     'indent'                 => false,
     'item-separator'         => [],
     'json-node-output-method'=> xml,
     'media-type'             => "application/xml",
     'method'                 => xml,
     'normalization-form'     => nfc,
     'omit-xml-declaration'   => true,
     'standalone'             => omit,
     'suppress-indentation'   => [],
     'undeclare-prefixes'     => false,
     'use-character-maps'     => [],
     'version'                => 1.0
    }.


validate(Options) ->
   validate1(Options,default_state()).


validate1([],State) -> State;
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "allow-duplicate-names"},Value}|T],State) -> 
   validate1(T,maps:put('allow-duplicate-names', true_false(Value), State));
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "byte-order-mark"},Value}|T],State) ->
   validate1(T,maps:put('byte-order-mark', true_false(Value), State));
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "cdata-section-elements"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "doctype-public"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "doctype-system"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "encoding"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "escape-uri-attributes"},Value}|T],State) -> 
   validate1(T,maps:put('escape-uri-attributes', true_false(Value), State));
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "html-version"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "include-content-type"},Value}|T],State) -> 
   validate1(T,maps:put('include-content-type', true_false(Value), State));
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "indent"},Value}|T],State) -> 
   validate1(T,maps:put('indent', true_false(Value), State));
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "item-separator"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "json-node-output-method"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "media-type"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "method"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "normalization-form"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "omit-xml-declaration"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "standalone"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "suppress-indentation"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "undeclare-prefixes"},Value}|T],State) -> 
   validate1(T,maps:put('undeclare-prefixes', true_false(Value), State));
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "use-character-maps"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{namespace = ?NS, prefix = "output", local_name = "version"},Value}|T],State) -> 
   validate1(T,State);
validate1([{#qname{} = Q,Value}|T],State) ->
   ?dbg("Unknown option",{Q,Value}),
   validate1(T,State).


true_false("1") -> true;
true_false("yes") -> true;
true_false("true") -> true;
true_false("0") -> false;
true_false("no") -> false;
true_false("false") -> false;
true_false(_) -> xqerl_error:error('SEPM0016').
