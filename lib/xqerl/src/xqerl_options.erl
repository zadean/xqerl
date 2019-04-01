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

%% @doc Module for Serialization options
%% @TODO Complete the implementation
 
-module(xqerl_options).

-define(NS,<<"http://www.w3.org/2010/xslt-xquery-serialization">>).
-define(OUTPUT(N), #qname{namespace = ?NS, prefix = _, local_name = <<N>>}).
-define(OUTPUTO, #qname{namespace = ?NS, prefix = _, local_name = _}).
-define(OUTPUTB(N), #qname{namespace = ?NS, prefix = <<"output">>, local_name = N}).

-include("xqerl.hrl").

-export([serialization_option_map/1,
         serialization_option_map/2]).

serialization_option_map(Options) ->
   serialization_option_map(Options, parser).

serialization_option_map(Options, Namespaces) when is_list(Options) ->
   validate(Options, Namespaces);
serialization_option_map(#{nk := element,
                           nn := {?NS,_,<<"serialization-parameters">>}} = Node, 
                         Namespaces) ->
   Ch = xqldb_mem_nodes:children(Node),
   List = parse_xml_options(Ch),
   serialization_option_map(List, Namespaces);
serialization_option_map(Options, Namespaces) 
  when is_map(Options), not is_map_key(nk, Options) ->
   List = maps:to_list(Options),
   List1 = keys_as_string(List),
   serialization_option_map(
     [{?OUTPUTB(KeyBin), 
       type_check_mapped_vals(KeyBin, Value)} || 
      {KeyBin,{_,Value}} <- List1], Namespaces);
serialization_option_map(_, _) ->
   ?err('XPTY0004').

type_check_mapped_vals(<<"allow-duplicate-names">>, Val) -> true_false_def(Val, <<"no">>);
type_check_mapped_vals(<<"byte-order-mark">>, Val) -> true_false_def(Val, <<"no">>);
type_check_mapped_vals(<<"escape-uri-attributes">>, Val) -> true_false_def(Val, <<"yes">>);
type_check_mapped_vals(<<"include-content-type">>, Val) -> true_false_def(Val, <<"yes">>);
type_check_mapped_vals(<<"indent">>, Val) -> true_false_def(Val, <<"no">>);
type_check_mapped_vals(<<"omit-xml-declaration">>, Val) -> true_false_def(Val, <<"yes">>);
type_check_mapped_vals(<<"standalone">>, Val) -> true_false_def(Val, <<"omit">>);
type_check_mapped_vals(<<"undeclare-prefixes">>, Val) -> true_false_def(Val, <<"no">>);

type_check_mapped_vals(<<"cdata-section-elements">>, Val) -> qname_list(Val);
type_check_mapped_vals(<<"suppress-indentation">>, Val) -> qname_list(Val);

type_check_mapped_vals(<<"doctype-public">>, Val) -> string_value(Val);
type_check_mapped_vals(<<"doctype-system">>, Val) -> string_value(Val);
type_check_mapped_vals(<<"encoding">>, Val) -> string_value(Val);
type_check_mapped_vals(<<"item-separator">>, Val) -> string_value(Val);
type_check_mapped_vals(<<"media-type">>, Val) -> string_value(Val);
type_check_mapped_vals(<<"normalization-form">>, Val) -> string_value(Val);
type_check_mapped_vals(<<"version">>, Val) -> string_value(Val);
type_check_mapped_vals(<<"html-version">>, Val) -> decimal_value(Val); % should be decimal
type_check_mapped_vals(<<"json-node-output-method">>, Val) -> string_value(Val);
type_check_mapped_vals(<<"method">>, Val) -> string_value(Val);
type_check_mapped_vals(<<"use-character-maps">>, Val) -> Val;
type_check_mapped_vals(_,V) -> V .

keys_as_string([{_,{#xqAtomicValue{type = 'xs:QName',
                                   value = #qname{namespace = 'no-namespace',
                                                  local_name = Str}} = N,V}}|T]) ->
   [{Str, {N, V}}|keys_as_string(T)];
keys_as_string([H|T]) ->
   [H|keys_as_string(T)];
keys_as_string([]) ->
   [].

true_false_def([], Def) -> Def;
true_false_def(true, _) -> <<"yes">>;
true_false_def(false, _) -> <<"no">>;
true_false_def(#xqAtomicValue{type = 'xs:untypedAtomic'} = V, D) -> 
   true_false_def(xqerl_types:cast_as(V, 'xs:boolean'), D);
true_false_def(_,_) ->
   ?err('XPTY0004').

qname_list(#xqAtomicValue{value = #qname{} = Q}) ->
   [Q];
qname_list([#xqAtomicValue{value = #qname{} = Q}|T]) ->
   [Q|qname_list(T)];
qname_list([]) -> [];
qname_list(O) ->
   ?dbg("O",O),
   ?err('XPTY0004').

string_value([]) -> <<>>;
string_value(Val) -> 
   xqerl_types:string_value(Val).

decimal_value(Val) -> xqerl_types:cast_as(Val, 'xs:decimal').

validate(Options, Namespaces) ->
   V1 = validate1(Options, #{}, Namespaces),
   validate2(V1).

validate1([], State, _Namespaces) -> State;
%% One of the enumerated values yes, no, true, false, 1 or 0. 
%% This parameter indicates whether a map item serialized as a JSON object using the 
%% JSON output method is allowed to contain duplicate member names. If the value no, 
%% false or 0 is specified, serialization error [err:SERE0022] will be raised.
validate1([{?OUTPUT("allow-duplicate-names"),Value}|T],State, Namespaces) -> 
   validate1(T, State#{'allow-duplicate-names' => true_false(Value)}, Namespaces);
%% One of the enumerated values yes, no, true, false, 1 or 0. This parameter indicates 
%% whether the serialized sequence of octets is to be preceded by a Byte Order Mark 
%% (See Section 5.1 of [Unicode Encoding]). The actual octet order used is 
%% implementation-dependent. If the encoding defines no Byte Order Mark, or if the 
%% Byte Order Mark is prohibited for the specific Unicode encoding or implementation 
%% environment, then this parameter is ignored.
validate1([{?OUTPUT("byte-order-mark"),Value}|T],State, Namespaces) ->
   validate1(T, State#{'byte-order-mark' => true_false(Value)}, Namespaces);
%% A list of expanded QNames, possibly empty.
validate1([{?OUTPUT("cdata-section-elements"),Value}|T],State, Namespaces) ->
   Els = split_names_list(Value, Namespaces),
   validate1(T, State#{'cdata-section-elements' => Els}, Namespaces);
%% A string of PubidCharXML characters. This parameter MAY be absent.
validate1([{?OUTPUT("doctype-public"),Value}|T],State, Namespaces) -> 
   State1 = State#{'doctype-public' => Value},
   validate1(T, State1, Namespaces);
%% A string of Unicode characters that does not include both an apostrophe (#x27) and 
%% a quotation mark (#x22) character. This parameter MAY be absent.
validate1([{?OUTPUT("doctype-system"),Value}|T],State, Namespaces) -> 
   State1 = State#{'doctype-system' => Value},
   validate1(T, State1, Namespaces);
%% A string of Unicode characters in the range #x21 to #x7E (that is, printable ASCII 
%% characters); the value SHOULD be a charset registered with the Internet Assigned 
%% Numbers Authority [IANA], [RFC2978] or begin with the characters x- or X-.
validate1([{?OUTPUT("encoding"),Value}|T],State, Namespaces) -> 
   Enc = get_encoding(Value),
   validate1(T, State#{'encoding' => Enc}, Namespaces);
%% One of the enumerated values yes, no, true, false, 1 or 0.
validate1([{?OUTPUT("escape-uri-attributes"),Value}|T],State, Namespaces) -> 
   validate1(T, State#{'escape-uri-attributes' => true_false(Value)}, Namespaces);
%% A decimal value. This parameter MAY be absent.
validate1([{?OUTPUT("html-version"),Value}|T],State, Namespaces) -> 
   Vers = get_html_version(Value),
   validate1(T, State#{'html-version' => Vers}, Namespaces);
%% One of the enumerated values yes, no, true, false, 1 or 0.
validate1([{?OUTPUT("include-content-type"),Value}|T],State, Namespaces) -> 
   validate1(T, State#{'include-content-type' => true_false(Value)}, Namespaces);
%% One of the enumerated values yes, no, true, false, 1 or 0.
validate1([{?OUTPUT("indent"),Value}|T],State, Namespaces) -> 
   validate1(T, State#{'indent' => true_false(Value)}, Namespaces);
%% A string of Unicode characters. This parameter MAY be absent.
validate1([{?OUTPUT("item-separator"),Value}|T],State, Namespaces) -> 
   validate1(T, State#{'item-separator' => Value}, Namespaces);
%% An expanded QName with a non-null namespace URI, or with a null namespace URI and 
%% a local name equal to one of xml, xhtml, html or text. If the namespace URI is non-null, 
%% the parameter specifies an implementation-defined output method.
validate1([{?OUTPUT("json-node-output-method"),Value}|T],State, Namespaces) -> 
   Meth = get_method(Value),
   validate1(T, State#{'json-node-output-method' => Meth}, Namespaces);
%% A string of Unicode characters specifying the media type (MIME content type) [RFC2046]; 
%% the charset parameter of the media type MUST NOT be specified explicitly in the value 
%% of the media-type parameter. If the destination of the serialized output is annotated 
%% with a media type, this parameter MAY be used to provide such an annotation. For example, 
%% it MAY be used to set the media type in an HTTP header.
validate1([{?OUTPUT("media-type"),_Value}|T],State, Namespaces) -> 
   validate1(T,State, Namespaces);
%% An expanded QName with a non-null namespace URI, or with a null namespace URI and a 
%% local name equal to one of xml, xhtml, html, text, json, or adaptive. If the namespace 
%% URI is non-null, the parameter specifies an implementation-defined output method.
validate1([{?OUTPUT("method"),Value}|T],State, Namespaces) ->
   Meth = get_method(Value),
   validate1(T, State#{'method' => Meth}, Namespaces);
%% One of the enumerated values NFC, NFD, NFKC, NFKD, fully-normalized or none, or an 
%% implementation-defined value of type NMTOKEN.
validate1([{?OUTPUT("normalization-form"),Value}|T],State, Namespaces) -> 
   Form = get_normalization_form(Value),
   validate1(T, State#{'normalization-form' => Form}, Namespaces);
%% One of the enumerated values yes, no, true, false, 1 or 0.
validate1([{?OUTPUT("omit-xml-declaration"),Value}|T],State, Namespaces) -> 
   validate1(T, State#{'omit-xml-declaration' => true_false(Value)}, Namespaces);
validate1([{?OUTPUT("parameter-document"),_Value}|_],_State, _Namespaces) -> 
   ?err('XQST0119'); % not supprting parameter doc
%% One of the enumerated values yes, no, true, false, 1 or 0 or omit.
validate1([{?OUTPUT("standalone"),Value}|T],State, Namespaces) -> 
   Stnd = get_standalone(Value),
   State1 = State#{'standalone' => Stnd},
   validate1(T, State1, Namespaces);
%% A list of expanded QNames, possibly empty.
validate1([{?OUTPUT("suppress-indentation"),Value}|T],State, Namespaces) -> 
   Els = split_names_list(Value, Namespaces),
   validate1(T, State#{'suppress-indentation' => Els}, Namespaces);
%% One of the enumerated values yes, no, true, false, 1 or 0.
validate1([{?OUTPUT("undeclare-prefixes"),Value}|T],State, Namespaces) -> 
   validate1(T, State#{'undeclare-prefixes' => true_false(Value)}, Namespaces);
%% A list of pairs, possibly empty, with each pair consisting of a single Unicode 
%% character and a string of Unicode characters.
validate1([{?OUTPUT("use-character-maps"),_Value}|_],_,parser) -> 
   ?err('XQST0109'); % not allowed in prolog, only param doc
validate1([{?OUTPUT("use-character-maps"),Value}|T],State, Namespaces) -> 
   Map = normalize_character_map(Value),
   validate1(T, State#{'use-character-maps' => Map}, Namespaces);
%% A string of Unicode characters.
validate1([{?OUTPUT("version"),Value}|T],State, Namespaces) -> 
   Vers = get_version(Value),
   validate1(T, State#{'version' => Vers}, Namespaces);
validate1([{?OUTPUTO,_Value}|_],_,_) -> 
   ?err('XQST0109');
validate1([{#qname{} = Q,Value}|T],State, Namespaces) ->
   ?dbg("Unknown option",{Q,Value}),
   validate1(T,State, Namespaces).
%'XQST0119'

validate2(#{version := Vers,
            method := html} = Opts) when not is_map_key('html-version', Opts) ->
   validate2(Opts#{version := 1.0,
                   'html-version' => Vers});
validate2(Opts) ->
   if is_map_key(version, Opts), map_get(version, Opts) =/= 1.0 ->
         ?err('SESU0013');      
      is_map_key('omit-xml-declaration', Opts), map_get('omit-xml-declaration', Opts) == true,
      is_map_key(standalone, Opts), map_get(standalone, Opts) =/= omit ->
         ?err('SEPM0009');
      is_map_key('undeclare-prefixes', Opts), map_get('undeclare-prefixes', Opts) == true,
      is_map_key(version, Opts), map_get(version, Opts) == 1.0,
      is_map_key(method, Opts), ((map_get(method, Opts) == xml) orelse (map_get(method, Opts) == xhtml)) ->
         ?err('SEPM0010');
      true ->
         Opts
   end.

true_false(Val) -> 
   true_false_(xqerl_lib:trim(Val)).

true_false_(<<"1">>) -> true;
true_false_(<<"yes">>) -> true;
true_false_(<<"true">>) -> true;
true_false_(<<"0">>) -> false;
true_false_(<<"no">>) -> false;
true_false_(<<"false">>) -> false;
true_false_(_) -> ?err('SEPM0016').

split_names_list(Values, parser) ->
   Nss = xqerl_context:get_statically_known_namespaces(parser),
   Def = #xqNamespace{namespace = xqerl_context:get_default_element_type_namespace(parser), 
                      prefix = <<>>}, 
   Nss1 = [#xqNamespace{namespace = Ns, prefix = Px} || 
           {Px,Ns} <- dict:to_list(Nss),
           Px =/= <<>>],
   split_names_list(Values, [Def|Nss1]);
split_names_list([#qname{}|_] = Vals, _) -> Vals;
split_names_list(Values, Namespaces) ->
   Split = string:split(xqerl_lib:trim(Values), "\s", all),
   ?dbg("Split",Split),
   [try
       QNm = xqerl_types:cast_as(S, 'xs:QName', Namespaces),
       QNm#xqAtomicValue.value
    catch
       _:_ ->
          ?err('SEPM0016')
    end || S <- Split,
           S =/= <<>>].

get_encoding(Value) ->
   case string:lowercase(Value) of
      <<"utf-8">> -> utf8;
      <<"utf-16">> -> utf16;
      <<"utf-32">> -> utf32;
      _ -> ?err('SESU0007')
   end.

get_html_version(#xqAtomicValue{value = #xsDecimal{int = 5, scf = 0}}) -> 5.0;
get_html_version(#xqAtomicValue{value = #xsDecimal{int = 4, scf = 0}}) -> 4.0;
get_html_version(Value) ->
   case xqerl_lib:trim(Value) of
      <<"5.0">> -> 5.0;
      <<"4.0">> -> 4.0;
      _ -> ?err('SEPM0016')
   end.

get_method(Value) ->
   case xqerl_lib:trim(string:lowercase(Value)) of
      <<"html">> -> html;
      <<"xhtml">> -> xhtml;
      <<"xml">> -> xml;
      <<"json">> -> json;
      <<"text">> -> text;
      <<"adaptive">> -> adaptive;
      <<"q{}html">> -> html;
      <<"q{}xhtml">> -> xhtml;
      <<"q{}xml">> -> xml;
      <<"q{}json">> -> json;
      <<"q{}text">> -> text;
      <<"q{}adaptive">> -> adaptive;
      _ -> ?err('SEPM0016')
   end.

get_normalization_form(Value) ->
   case xqerl_lib:trim(string:lowercase(Value)) of
      <<"nfc">> -> nfc;
      <<"none">> -> none;
      <<"nfd">> -> ?err('SESU0011');
      <<"nfkc">> -> ?err('SESU0011');
      <<"nfkd">> -> ?err('SESU0011');
      <<"fully-normalized">> -> ?err('SESU0011');
      _ -> ?err('SESU0011')
      %_ -> ?err('SEPM0016')
   end.

get_standalone(Value) ->
   case xqerl_lib:trim(string:lowercase(Value)) of
      <<"omit">> -> omit;
      Other -> true_false_(Other)
   end.

get_version(Value) ->
   case xqerl_lib:trim(Value) of
      <<"1.0">> -> 1.0;
      <<"5.0">> -> 5.0;% html versions that will later be checked
      <<"4.0">> -> 4.0;
      <<"1.1">> -> ?err('SESU0013');
      _ -> ?err('SESU0013')
      %_ -> ?err('SEPM0016')
   end.

normalize_character_map(Value) ->
   List = [{case Key of
               <<K/utf8>> -> K;
               I when is_integer(I) -> I;
               _ -> 
                  ?dbg("Key",Key),
                  ?err('XPTY0004')
            end,
            if is_binary(V) ->
                  V;
               true ->
                  ?err('XPTY0004')
            end} 
          || {Key, {_,V}} <- maps:to_list(Value)],
   maps:from_list(List).

% return all options as a list
parse_xml_options([]) -> [];
parse_xml_options([#{nk := element,
                     nn := {?NS,_,Ln},
                     at := Atts} = N| T]) ->
   [Val] = [xqldb_mem_nodes:string_value(A) || #{nn := {<<>>,_,<<"value">>}} = A <- Atts],
   Val1 = if Ln == <<"use-character-maps">> ->
                normalize_xml_character_map(N);
             true ->
                Val
          end,
   [{#qname{namespace = ?NS, local_name = Ln}, Val1}|parse_xml_options(T)];
parse_xml_options([#{nk := element,
                     nn := {?NS,_,Ln}} = N| T]) ->
   Val1 = if Ln == <<"use-character-maps">> ->
                normalize_xml_character_map(N);
             true ->
                <<>>
          end,
   [{#qname{namespace = ?NS, local_name = Ln}, Val1}|parse_xml_options(T)].
   
normalize_xml_character_map(Value) ->
   Ch = xqldb_mem_nodes:children(Value),
   % is a list of lists, check validity
   List = normalize_xml_character_map_1(Ch),
   normalize_xml_character_map_3(List, #{}).

normalize_xml_character_map_1([]) -> [];
normalize_xml_character_map_1([#{nk := element,
                                nn := {?NS,_,<<"character-map">>},
                                at := Atts}|T]) ->
   [normalize_xml_character_map_2(Atts, [])|normalize_xml_character_map_1(T)];
normalize_xml_character_map_1(_) ->
   ?err('SEPM0017').

normalize_xml_character_map_2([#{nn := {_,_,<<"character">>},
                                sv := <<C/utf8>>}|T], Acc) ->
   normalize_xml_character_map_2(T, [{char,C}|Acc]);
normalize_xml_character_map_2([#{nn := {_,_,<<"map-string">>},
                                sv := Sv}|T], Acc) ->
   normalize_xml_character_map_2(T, [{string,Sv}|Acc]);
normalize_xml_character_map_2([], Acc) -> Acc;
normalize_xml_character_map_2(_, _) -> ?err('SEPM0017').

normalize_xml_character_map_3([H|T], Map) ->
   case H of
      [] -> ?err('SEPM0017');
      [_] -> ?err('SEPM0017');
      [{char,C},{string,_}] when is_map_key(C, Map) -> ?err('SEPM0017');
      [{char,C},{string,S}] ->
         normalize_xml_character_map_3(T, #{C => {C,S}});
      [{string,_},{char,C}] when is_map_key(C, Map) -> ?err('SEPM0017');
      [{string,S},{char,C}] -> 
         normalize_xml_character_map_3(T, #{C => {C,S}})
   end;
normalize_xml_character_map_3([], Map) -> Map.
