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

%% @doc  JSON related functions for de-encoding from/to map/array

-module(xqerl_json).
-compile(inline_list_funcs).

-include("xqerl.hrl").

-define(ns, <<"http://www.w3.org/2005/xpath-functions">>).
-define(qn(Local), #qname{namespace = ?ns, prefix = <<>>, local_name = <<Local>>}).
-define(key(Value),#xqAttributeNode{name = #qname{namespace = 'no-namespace', 
                                                  prefix = <<>>, 
                                                  local_name = <<"key">>},
                                    string_value = #xqAtomicValue{type = 'xs:string', 
                                                          value = Value}}).
-define(esckey, #xqAttributeNode{name = #qname{namespace = 'no-namespace', 
                                               prefix = <<>>, 
                                               local_name = <<"escaped-key">>},
                                 string_value = #xqAtomicValue{type = 'xs:string', 
                                                       value = <<"true">>}}).
-define(esc, #xqAttributeNode{name = #qname{namespace = 'no-namespace', 
                                            prefix = <<>>, 
                                            local_name = <<"escaped">>},
                              string_value = #xqAtomicValue{type = 'xs:string', 
                                                    value = <<"true">>}}).

-define(CP_REST(Cp,Rest), <<Cp/utf8,Rest/binary>>).
-define(CP2_REST(Cp1,Cp2,Rest), <<Cp1/utf8,Cp2/utf8,Rest/binary>>).
-define(ACC_CP3(Cp1,Cp2,Cp3,Acc), <<Acc/binary,Cp1/utf8,Cp2/utf8,Cp3/utf8>>).
-define(ACC_CP2(Cp1,Cp2,Acc), <<Acc/binary,Cp1/utf8,Cp2/utf8>>).
-define(ACC_CP(Cp,Acc), <<Acc/binary,Cp/utf8>>).

-record(state, {liberal    = false, % ignored, no liberal parsing
                duplicates = use_first,
                escape     = false,
                %escape     = true, %% different from the spec
                validate   = false,
                indent     = false,
                fallback   = fun(_) -> <<16#FFFD/utf8>> end}).


%% ====================================================================
%% API functions
%% ====================================================================
-export([xml_no_escape/2, xml_escape/2, xml_to_json/2]).

-export([db_json_to_item/2,
         string/2,
         string_to_xml/2,
         xml_to_string/2]).

db_json_to_item(Uri, Options) ->
   State = parse_options(#state{},Options),
   case xqldb_dml:select_json_doc(Uri) of
      {error,_} = Err ->
         Err;
      Obj ->
         json_to_map(State, Obj)
   end.
   
string(String, Options) ->
   State = parse_options(#state{},Options),
   try 
      xqldb_json_objs:string_to_json(String)
   of
      {error,invalid_json} ->
         ?err('FOJS0001');
      Term ->
         %?dbg("Term",Term),
         Map = json_to_map(State, Term),
         %?dbg("Map",Map),
         Map
   catch
      _:_ ->
         ?err('FOJS0001')
   end.

xml_to_string(Node, Options) ->
   State = parse_options(#state{},Options),
   #xqAtomicValue{type = 'xs:string', value = xml_to_json(State, Node)}.

string_to_xml(String, Options) ->
   State = parse_options(#state{duplicates = retain,
                                escape = false},Options),
   try 
      xqldb_json_objs:string_to_json(String) 
   of
      {error,invalid_json} ->
         ?err('FOJS0001');
      Term ->
         %?dbg("Term",Term),
         Frag = json_to_xml(State, <<>>, Term),
         Doc = #xqDocumentNode{content = Frag},
         Opt = #{namespaces => [],
                 'base-uri' => get_base_uri(Options),
                 'copy-namespaces' => {preserve,'inherit'}},
         xqerl_node:new_fragment(Opt, Doc)
   catch
      _:_ :Stk ->
         ?dbg("Stk", Stk),
         ?err('FOJS0001')
   end.

%% ====================================================================
%% Internal functions
%% ====================================================================

get_base_uri(Options) ->
   proplists:get_value('base-uri', Options).

if_empty(<<>>,Default) -> Default;
if_empty([],Default) -> Default;
if_empty(Value,_Default) -> Value.

xml_to_json(State, #{nk := _} = Doc) ->
   Tree = xqerl_node:node_to_content(Doc, preserve),
   % Attributes are in 'expr', not in 'attributes'
   case xml_to_json(State, Tree) of
      {_K,V,_EscKey0} -> % key with no map, internal node
         V;
      V ->
         V
   end;

xml_to_json(State, [#xqElementNode{} = E]) ->
  xml_to_json(State, E);

xml_to_json(State = #state{indent = Indent},
             #xqElementNode{name = #qname{namespace = ?ns, 
                                          local_name = <<"array">>},
                            content = Expr}) ->
   {Key, EscKey, _Esc, Rest} = get_attributes(Expr,false),
   Content = lists:map(fun(V) ->
                          xml_to_json(State, V)
                       end, Rest),
   if Key =:= [] ->
         serialize_array(Content, Indent);
      true ->
         State1 = State#state{escape = if_empty(EscKey,false)},
         KeyVal = normalize_xml_string(State1, xqerl_types:string_value(Key)),
         {<<$", KeyVal/binary, $">>, serialize_array(Content, Indent), EscKey}
   end;
xml_to_json(State = #state{indent = Indent}, 
            #xqElementNode{name = #qname{namespace = ?ns, local_name = <<"map">>},
                           content = Expr}) ->
   {Key, EscKey, _Esc, Rest} = get_attributes(Expr,false),
   Fold = fun(V,Check) ->
                case xml_to_json(State, V) of
                   {K,V1,EscKey0} ->
                      EscKey1 = if_empty(EscKey0,false),
                      K1 = if EscKey1 ->
                                 to_codepoints(K,true,<<>>);
                              true ->
                                 to_codepoints(K,false,<<>>)
                           end,
                      case maps:is_key(K1, Check) of
                         true ->
                            ?err('FOJS0006');
                         _ ->
                            {{K,V1}, Check#{K1 => ok}}
                      end;
                   _ ->
                      ?err('FOJS0006')
                end
          end,
   {Content,_} = lists:mapfoldl(Fold, #{}, Rest),
   if Key == [] ->
         serialize_map(Content, Indent);
      true ->
         State1 = State#state{escape = if_empty(EscKey,false)},
         KeyVal = normalize_xml_string(State1, xqerl_types:string_value(Key)),
         {<<$", KeyVal/binary, $">>,serialize_map(Content, Indent), EscKey}
   end;
xml_to_json(State, #xqElementNode{name = #qname{namespace = ?ns, 
                                                local_name = <<"boolean">>},
                                  content = Expr}) -> 
   try
      {Key, EscKey, _Esc, Rest} = get_attributes(Expr,true),
      Txt = xqerl_node:atomize_nodes(Rest),
      Bool = xqerl_types:string_value(xqerl_types:cast_as(Txt,'xs:boolean')),
      if Key == [] ->
            Bool;
         true ->
            State1 = State#state{escape = if_empty(EscKey,false)},
            KeyVal = normalize_xml_string(State1, xqerl_types:string_value(Key)),
            {<<$", KeyVal/binary, $">>,Bool, EscKey}
      end
   catch
      _:_ ->
         ?err('FOJS0006') % invalid boolean
   end;
xml_to_json(State, #xqElementNode{name = #qname{namespace = ?ns, 
                                                local_name = <<"null">>},
                                  content = Expr}) -> 
   {Key, EscKey, _Esc, Rest} = get_attributes(Expr,true),
   if Rest =/= [] ->
         ?err('FOJS0006');
      Key == [] ->
         <<"null">>;
      true ->
         State1 = State#state{escape = if_empty(EscKey,false)},
         KeyVal = normalize_xml_string(State1, xqerl_types:string_value(Key)),
         {<<$", KeyVal/binary, $">>,<<"null">>, EscKey}
   end;
xml_to_json(State, #xqElementNode{name = #qname{namespace = ?ns, 
                                                local_name = <<"number">>},
                                  content = Expr})->
   try
      {Key, EscKey, _Esc, Rest} = get_attributes(Expr,true),
      Txt = xqerl_node:atomize_nodes(Rest),
      Dbl = xqerl_types:cast_as(Txt,'xs:double'),
      NumTxt = xqerl_types:string_value(Dbl),
      if NumTxt == <<"INF">>;
         NumTxt == <<"-INF">>;
         NumTxt == <<"NaN">> -> % not allowed in JSON
            ?err('FOJS0006');
         Key == [] ->
            NumTxt;
         true ->
            State1 = State#state{escape = if_empty(EscKey,false)},
            KeyVal = normalize_xml_string(State1, xqerl_types:string_value(Key)),
            {<<$", KeyVal/binary, $">>,NumTxt, EscKey}
      end
   catch 
      _:_ ->
         ?err('FOJS0006') % invalid number
   end;
xml_to_json(State, #xqElementNode{name = #qname{namespace = ?ns, 
                                                local_name = <<"string">>},
                                  content = Expr}) ->
   {Key, EscKey, Esc, Rest} = get_attributes(Expr,true),
   case Rest of
      [#xqTextNode{}] when Key =:= [] ->
         State1 = State#state{escape = if_empty(Esc,false)},
         StrVal = normalize_xml_string(State1, xqerl_types:string_value(Rest)),
         <<$", StrVal/binary, $">>;
      [#xqTextNode{}] ->
         State2 = State#state{escape = if_empty(EscKey,false)},
         State3 = State#state{escape = if_empty(Esc,false)},
         KeyVal = normalize_xml_string(State2, xqerl_types:string_value(Key)),
         StrVal = normalize_xml_string(State3, xqerl_types:string_value(Rest)),
         {<<$", KeyVal/binary, $">>,<<$", StrVal/binary, $">>, EscKey};
      [] when Key =:= [] ->
         <<$",$">>;
      [] ->
         State4 = State#state{escape = if_empty(EscKey,false)},
         KeyVal = normalize_xml_string(State4, xqerl_types:string_value(Key)),
         {<<$", KeyVal/binary, $">>,<<$",$">>, EscKey};
      _ ->
         ?err('FOJS0006')
   end;
xml_to_json(_State, _) -> % not schema conform
   ?err('FOJS0006').

get_attributes(Content, AllowWs) ->
   %?dbg("Content",Content),
   try
      Key = [ xqerl_types:string_value(K) || 
              #xqAttributeNode{name = #qname{namespace = 'no-namespace', 
                                             local_name = <<"key">>},
                               string_value = K} <- Content ],
      EscKey = [ xqerl_types:value(xqerl_types:cast_as(K,'xs:boolean')) || 
                 #xqAttributeNode{name = #qname{namespace = 'no-namespace', 
                                                local_name = <<"escaped-key">>},
                                  string_value = K} <- Content ],
      Esc = [ xqerl_types:value(xqerl_types:cast_as(K,'xs:boolean')) || 
              #xqAttributeNode{name = #qname{namespace = 'no-namespace', 
                                             local_name = <<"escaped">>},
                               string_value = K} <- Content ],
      Rest0 = [ K || K <- Content, 
                     not is_record(K, xqProcessingInstructionNode),
                     not is_record(K, xqCommentNode)],
      F = fun(#xqTextNode{string_value = [#xqAtomicValue{value = V}]}) ->
                AllowWs orelse xqerl_lib:trim(V) =/= <<>>;
             (#xqTextNode{string_value = #xqAtomicValue{value = V}}) ->
                AllowWs orelse xqerl_lib:trim(V) =/= <<>>;
             (#xqAttributeNode{name = #qname{namespace = 'no-namespace', 
                                             local_name = Ln}}) 
                when Ln == <<"key">>;
                     Ln == <<"escaped-key">>;
                     Ln == <<"escaped">> ->
                false;
             (#xqAttributeNode{name = #qname{namespace = Ns}}) 
                when Ns == 'no-namespace';
                     Ns == ?ns ->
                true;
             (#xqAttributeNode{}) ->
                false;
             (_) ->
                true
          end,
      Rest = lists:filter(F, Rest0),
      {sing_val(Key), 
       sing_val(EscKey), 
       sing_val(Esc), 
       xqerl_node:merge_content(Rest,[])}
   catch 
      _:_ -> ?err('FOJS0006') % bad cast
  end.

sing_val([Val]) -> Val;
sing_val([]) -> [].

json_to_xml(State, Key, {array, Values}) ->
   Content = lists:map(fun(V) ->
                          json_to_xml(State, <<>>, V)
                       end, Values),
   #xqElementNode{name = ?qn("array"),
                  attributes = att_key(Key, State#state.escape),
                  inscope_ns = [#xqNamespace{prefix = <<>>,namespace = ?ns}],
                  type = 'xs:untyped',
                  content = Content};
json_to_xml(#state{duplicates = Dupes,
                   escape = Escape} = State, 
            Key, {object, Members}) ->
   F = fun({K,V},Map) when Dupes == reject ->
               NormKey = if_empty(normalize_string(State, K), empty),
               case maps:is_key(NormKey, Map) of
                  true ->
                     ?err('FOJS0003');
                  _ ->
                     {json_to_xml(State, NormKey, V),Map#{NormKey => <<>>}} 
               end;
          ({K,V},Map) when Dupes == use_first ->
               NormKey = if_empty(normalize_string(State, K), empty),
               case maps:is_key(NormKey, Map) of
                  true ->
                     {[],Map};
                  _ ->
                     {json_to_xml(State, NormKey, V),Map#{NormKey => <<>>}}
               end;
          ({K,V},Map) when Dupes == retain ->
               NormKey = if_empty(normalize_string(State, K), empty),
               {json_to_xml(State, NormKey, V),Map#{NormKey => <<>>}};
          (_,_) ->
             ?err('FOJS0005')
       end,
   {Content,_} = lists:mapfoldl( F, #{}, Members),
   #xqElementNode{name = ?qn("map"),
                  attributes = att_key(Key, Escape),
                  inscope_ns = [#xqNamespace{prefix = <<>>,namespace = ?ns}],
                  type = 'xs:untyped',
                  content = Content};
json_to_xml(State, Key, true) -> 
   #xqElementNode{name = ?qn("boolean"),
                  attributes = att_key(Key, State#state.escape),
                  inscope_ns = [#xqNamespace{prefix = <<>>,namespace = ?ns}],
                  type = 'xs:untyped',
                  content = true}; %% TODO make this a string node
json_to_xml(State, Key, false) -> 
   #xqElementNode{name = ?qn("boolean"),
                  attributes = att_key(Key, State#state.escape),
                  inscope_ns = [#xqNamespace{prefix = <<>>,namespace = ?ns}],
                  type = 'xs:untyped',
                  content = false}; %% TODO make this a string node
json_to_xml(State, Key, null) -> 
   #xqElementNode{name = ?qn("null"),
                  inscope_ns = [#xqNamespace{prefix = <<>>,namespace = ?ns}],
                  type = 'xs:untyped',
                  attributes = att_key(Key, State#state.escape)};
json_to_xml(State, Key, {Val, Lex}) 
   when is_float(Val);
        Val =:= neg_zero;
        Val =:= infinity;
        Val =:= neg_infinity ->
   #xqElementNode{name = ?qn("number"),
                  attributes = att_key(Key, State#state.escape),
                  inscope_ns = [#xqNamespace{prefix = <<>>,namespace = ?ns}],
                  type = 'xs:untyped',
                  content = #xqAtomicValue{type = 'xs:string', value = Lex}}; %% TODO make this a string node
json_to_xml(State, Key, Val) ->
   Norm = normalize_string(State, Val),
   Esc = att_esc(Norm, State#state.escape),
   #xqElementNode{name = ?qn("string"),
                  attributes = [Esc|att_key(Key, State#state.escape)],
                  inscope_ns = [#xqNamespace{prefix = <<>>,namespace = ?ns}],
                  type = 'xs:untyped',
                  content = #xqAtomicValue{type = 'xs:string', 
                                        value = Norm}}. %% TODO make this a string node

json_to_map(State, {array, Values}) ->
   {array,lists:map(fun(V) ->
                          json_to_map(State,V)
                    end, Values)};
json_to_map(#state{duplicates = Dupes} = State, {object, Members}) ->
   F = fun({K,V},Map) when Dupes == reject ->
             NormKey = normalize_string(State, K),
             case maps:is_key(NormKey, Map) of
                true ->
                   ?err('FOJS0003');
                _ ->
                   ATString = #xqAtomicValue{type = 'xs:string', 
                                             value = NormKey},
                   Map#{NormKey => {ATString,json_to_map(State,V)}}
             end;
          ({K,V},Map) when Dupes == use_first ->
             NormKey = normalize_string(State, K),
             case maps:is_key(NormKey, Map) of
                true ->
                   Map;
                _ ->
                   ATString = #xqAtomicValue{type = 'xs:string', 
                                             value = NormKey},
                   Map#{NormKey => {ATString,json_to_map(State,V)}}
             end;
          ({K,V},Map) when Dupes == use_last ->
             NormKey = normalize_string(State, K),
             ATString = #xqAtomicValue{type = 'xs:string', 
                                       value = NormKey},
             Map#{NormKey => {ATString,json_to_map(State,V)}};
          (_,_) ->
             ?err('FOJS0005')
       end,
   lists:foldl(F, #{}, Members);
json_to_map(_State, true) -> true;
json_to_map(_State, false) -> false;
json_to_map(_State, null) -> [];
json_to_map(_State, {Val, _Lex}) 
   when is_float(Val);
        Val =:= neg_zero;
        Val =:= infinity;
        Val =:= neg_infinity ->
   #xqAtomicValue{type = 'xs:double', value = Val};
json_to_map(State, Val) ->
   %?dbg("State#state.escape",State#state.escape),
   Norm = normalize_string(State, Val),
   #xqAtomicValue{type = 'xs:string', value = Norm}.

normalize_string(#state{escape = true}, String) ->
   escape(String, <<>>);
normalize_string(#state{escape = []}, String) ->
   escape(String, <<>>);
normalize_string(#state{fallback = Fallback}, String) ->
   no_escape(String, Fallback, <<>>).

normalize_xml_string(#state{escape = true}, String) ->
   xml_escape(String, <<>>);
normalize_xml_string(#state{escape = []}, String) ->
   xml_escape(String, <<>>);
normalize_xml_string(#state{}, String) ->
   xml_no_escape(String, <<>>).

do_pad(H) ->
   string:uppercase(
           list_to_binary(string:pad(integer_to_binary(H,16), 4, leading, $0))).

%% JSON escape sequences are used in the result to represent special characters 
%% in the JSON input, as defined below, whether or not they were represented 
%% using JSON escape sequences in the input. The characters that are considered 
%% "special" for this purpose are:
%%    * all codepoints in the range x00 to x1F or x7F to x9F;
%%    * all codepoints that do not represent characters that are valid in the 
%%      version of XML supported by the processor, including codepoints 
%%      representing unpaired surrogates;
%%    * the backslash character itself (x5C).
%% Such characters are represented using a two-character escape sequence where 
%% available (for example, \t), or a six-character escape sequence otherwise 
%% (for example \uDEAD). Characters other than these are not escaped in the 
%% result, even if they were escaped in the input.
escape(<<>>, Acc) -> Acc;
escape(?CP_REST($/,T), Acc) ->
   escape(T, ?ACC_CP2($\\,$/,Acc));
escape(?CP_REST($\f,T), Acc) ->
   escape(T, ?ACC_CP2($\\,$f,Acc));
escape(?CP_REST($\n,T), Acc) -> 
   escape(T, ?ACC_CP2($\\,$n,Acc));
escape(?CP_REST($\r,T), Acc) -> 
   escape(T, ?ACC_CP2($\\,$r,Acc));
escape(?CP_REST($\t,T), Acc) -> 
   escape(T, ?ACC_CP2($\\,$t,Acc));
escape(?CP_REST(H,T), Acc) 
   when H >= 16#00,   H =< 16#07; % hack \b out
        H >= 16#09,   H =< 16#1F;
        H >= 16#7F,   H =< 16#9F -> 
   Pad = do_pad(H),
   escape(T, <<Acc/binary,$\\,$u,Pad/binary>>);
escape(?CP2_REST(H1,H2,T), Acc) when H1 >= 16#D800, H1 =< 16#DFFF, 
                                     H2 >= 16#D800, H2 =< 16#DFFF ->
   C = from_surrogates(H1, H2),
   escape(T,?ACC_CP(C,Acc));
%% escape(?CP_REST($\\,_), Acc) -> 
%%    ?err('FOJS0007'); % bad escape sequence
escape(?CP2_REST($\\,$u,T), Acc) ->
   escape(T, ?ACC_CP2($\\,$u,Acc));
escape(?CP2_REST($\\,$/,T), Acc) ->
   escape(T, ?ACC_CP3($\\,$\\,$/,Acc));
escape(?CP_REST($\\,T), Acc) ->
   escape(T, ?ACC_CP2($\\,$\\,Acc));
escape(?CP_REST(H,T), Acc) ->
   case xqerl_lib:is_xschar(H) of
      true ->
         %?dbg("H",H),
         escape(T,?ACC_CP(H,Acc));
      _ ->
         Pad = do_pad(H),
         Str = <<$\\,$u, Pad/binary>>,
         escape(T, <<Acc/binary,Str/binary>>)
   end.

%% All characters in the input that are valid in the version of XML supported 
%% by the implementation, whether or not they are represented in the input by 
%% means of an escape sequence, are represented as unescaped characters in the 
%% result. Any characters or codepoints that are not valid XML characters (for 
%% example, unpaired surrogates) are passed to the fallback function as described 
%% below; in the absence of a fallback function, they are replaced by the Unicode 
%% REPLACEMENT CHARACTER (xFFFD).
no_escape(<<>>, _Fallback, Acc) -> Acc;
no_escape(<<$\\,$u,A,B,C,D, T/binary>>,Fallback, Acc) ->
   % this should be a bad codepoint, so call fallback
   Str = <<$\\,$u,A,B,C,D>>,
   NewStr = Fallback(#xqAtomicValue{type = 'xs:string', value = Str}),
   StrVal = xqerl_types:string_value(NewStr),
   no_escape(T, Fallback, <<Acc/binary,StrVal/binary>>);
no_escape(?CP2_REST($\\,H,_), _Fallback, _Acc) 
   when H =/= $\\, H =/= $/,
        H =/= $",  H =/= $b,
        H =/= $f,  H =/= $n,
        H =/= $r,  H =/= $t -> 
   ?err('FOJS0007'); % bad escape sequence
no_escape(?CP_REST(H,T), Fallback, Acc) ->
   %?dbg("H",H),
   case xqerl_lib:is_xschar(H) of
      true ->
         no_escape(T, Fallback, ?ACC_CP(H,Acc));
      _ ->
         try
            Pad = do_pad(H),
            Str = <<$\\,$u,Pad/binary>>,
            NewStr = Fallback(#xqAtomicValue{type = 'xs:string', value = Str}),
            NewVal = xqerl_types:string_value(NewStr),
            no_escape(T, Fallback, <<Acc/binary,NewVal/binary>>)
         catch
            _:#xqError{} = E ->
               throw(E);
            _:_:Stack ->
               ?dbg("Stack",Stack),
               ?err('XPTY0004')
         end
   end.

%% If the attribute escaped="true" is present for a string value, or 
%% escaped-key="true" for a key value, then:
%%    * any valid JSON escape sequence present in the string is copied unchanged 
%%      to the output;
%%    * any invalid JSON escape sequence results in a dynamic error [err:FOJS0007];
%%    * any unescaped occurrence of quotation mark, backspace, form-feed, 
%%      newline, carriage return, tab, or solidus is replaced by \", \b, \f, 
%%      \n, \r, \t, or \/ respectively;
%% any other codepoint in the range 1-31 or 127-159 is replaced by an escape in 
%% the form \uHHHH where HHHH is the upper-case hexadecimal representation of 
%% the codepoint value.
xml_escape(<<>>, Acc) -> Acc;
xml_escape(?CP2_REST($\\,H,T), Acc) 
   when H == $\\; H == $/;
        H == $";  H == $b;
        H == $f;  H == $n;
        H == $r;  H == $t ->
   xml_escape(T, ?ACC_CP2($\\,H,Acc));
xml_escape(?CP_REST($" ,T), Acc) ->
   xml_escape(T, ?ACC_CP2($\\,$",Acc));
xml_escape(?CP_REST($\b,T), Acc) ->
   xml_escape(T, ?ACC_CP2($\\,$b,Acc));
xml_escape(?CP_REST($\f,T), Acc) ->
   xml_escape(T, ?ACC_CP2($\\,$f,Acc));
xml_escape(?CP_REST($\n,T), Acc) ->
   xml_escape(T, ?ACC_CP2($\\,$n,Acc));
xml_escape(?CP_REST($\r,T), Acc) ->
   xml_escape(T, ?ACC_CP2($\\,$r,Acc));
xml_escape(?CP_REST($\t,T), Acc) ->
   xml_escape(T, ?ACC_CP2($\\,$t,Acc));
xml_escape(?CP_REST($/,T), Acc) ->
   xml_escape(T, ?ACC_CP2($\\,$/,Acc));

xml_escape(<<$\\,$u,A,B,C,D,$\\,$u,A2,B2,C2,D2,T/binary>>,Acc) ->
   try
      _High = list_to_integer([A,B,C,D],16),
      _Low  = list_to_integer([A2,B2,C2,D2],16),
       xml_escape(T, <<Acc/binary,$\\,$u,A,B,C,D,$\\,$u,A2,B2,C2,D2>>)
   catch
      _:_ ->
         ?err('FOJS0007')
   end;
xml_escape(<<$\\,$u,A,B,C,D,T/binary>>,Acc) ->
   try
      Int = list_to_integer([A,B,C,D],16),
      if Int >= 16#D800, Int =< 16#DFFF -> % lonely surrogate
            ?err('FOJS0007');
         true ->
            xml_escape(T, <<Acc/binary,$\\,$u,A,B,C,D>>)
      end
   catch
      _:_ ->
         ?err('FOJS0007')
   end;
xml_escape(?CP_REST($\\,_), _) ->
   ?err('FOJS0007');
xml_escape(?CP_REST(H,T), Acc) 
   when H >= 1,   H =< 31;
        H >= 127, H =< 159 -> 
   Pad = do_pad(H),
   xml_escape(T, <<Acc/binary,$\\,$u,Pad/binary>>);
xml_escape(?CP_REST(H,T), Acc) ->
   case xqerl_lib:is_xschar(H) of
      true ->
         xml_escape(T,?ACC_CP(H,Acc));
      _ -> % should not be here
         Pad = do_pad(H),
         Str = <<$\\,$u, Pad/binary>>,
         xml_escape(T, <<Acc/binary,Str/binary>>)
   end.

%% Otherwise (that is, in the absence of the attribute escaped="true" for a 
%% string value, or escaped-key="true" for a key value):
%%    * any occurrence of backslash is replaced by \\
%%    * any occurrence of quotation mark, backspace, form-feed, newline, 
%%      carriage return, or tab is replaced by \", \b, \f, \n, \r, or \t 
%%      respectively;
%%    * any other codepoint in the range 1-31 or 127-159 is replaced by an 
%%      escape in the form \uHHHH where HHHH is the upper-case hexadecimal 
%%      representation of the codepoint value.
xml_no_escape(<<>>, Acc) -> Acc;
xml_no_escape(?CP_REST($\\,T), Acc) ->
   xml_no_escape(T, ?ACC_CP2($\\,$\\,Acc));
xml_no_escape(?CP_REST($" ,T), Acc) ->
   xml_no_escape(T, ?ACC_CP2($\\,$",Acc));
xml_no_escape(?CP_REST($\b,T), Acc) ->
   xml_no_escape(T, ?ACC_CP2($\\,$b,Acc));
xml_no_escape(?CP_REST($\f,T), Acc) ->
   xml_no_escape(T, ?ACC_CP2($\\,$f,Acc));
xml_no_escape(?CP_REST($\n,T), Acc) ->
   xml_no_escape(T, ?ACC_CP2($\\,$n,Acc));
xml_no_escape(?CP_REST($\r,T), Acc) ->
   xml_no_escape(T, ?ACC_CP2($\\,$r,Acc));
xml_no_escape(?CP_REST($\t,T), Acc) ->
   xml_no_escape(T, ?ACC_CP2($\\,$t,Acc));
xml_no_escape(?CP_REST($/,T), Acc) ->
   xml_no_escape(T, ?ACC_CP2($\\,$/,Acc));
xml_no_escape(?CP_REST(H,T), Acc)
   when H >= 1,   H =< 31;
        H >= 127, H =< 159 -> 
   Pad = do_pad(H),
   xml_no_escape(T, <<Acc/binary,$\\,$u,Pad/binary>>);
xml_no_escape(?CP_REST(H,T), Acc) ->
   xml_no_escape(T, ?ACC_CP(H,Acc)).

-compile({nowarn_unused_function, to_surrogates/1}).
to_surrogates(C) when C >= 16#10000, C =< 16#10FFFF ->
   CP = C - 16#10000,
   High = CP bsr 10 + 16#D800,
   Low  = CP band 16#3FF + 16#DC00,
   [High,Low].

from_surrogates(High, Low) ->
   HC = (High - 16#D800) bsl 10,
   LC = Low - 16#DC00,
   HC bor LC + 16#10000.


parse_options(State, []) ->
   State;
parse_options(State, [{liberal,Bool}|T]) ->
   parse_options(State#state{liberal = Bool}, T);
parse_options(State, [{duplicates,Bool}|T]) ->
   parse_options(State#state{duplicates = Bool}, T);
parse_options(State, [{escape,Bool}|T]) ->
   parse_options(State#state{escape = Bool}, T);
parse_options(State, [{fallback,Bool}|T]) ->
   parse_options(State#state{fallback = Bool}, T);
parse_options(State, [{indent,Bool}|T]) ->
   parse_options(State#state{indent = Bool}, T);
parse_options(State, [_|T]) ->
   parse_options(State, T).

att_esc(<<>>,_) -> [];
att_esc(_, false) -> [];
att_esc(Key, true) -> 
   case contains(Key, $\\) of
      true ->
         [?esc];
      _ ->
         []
   end.

att_key(<<>>,_) -> [];
att_key(empty, _) -> 
   [?key(<<>>)];
att_key(Key, false) -> 
   [?key(Key)];
att_key(Key, true) -> 
   case contains(Key, $\\) of
      true ->
         [?key(Key),?esckey];
      _ ->
         [?key(Key)]
   end.

contains(<<>>, _) -> false;
contains(<<C/utf8,_/binary>>, C) -> true;
contains(<<_/utf8,Rest/binary>>, C) ->
   contains(Rest, C).

serialize_array([],_) -> <<"[]">>;
serialize_array([H|T],false) ->
   serialize_array_no_indent(T,<<"[", H/binary>>);
serialize_array([H|T],true) ->
   serialize_array_indent(T,<<"[", H/binary>>).

serialize_array_no_indent([],Acc) ->
   <<Acc/binary,"]">>;
serialize_array_no_indent([H|T],Acc) ->
   serialize_array_no_indent(T,<<Acc/binary,",",H/binary>>).

serialize_array_indent([],Acc) ->
   <<Acc/binary,"]">>;
serialize_array_indent([H|T],Acc) ->
   serialize_array_indent(T,<<Acc/binary,", ",H/binary>>).


serialize_map([],_) -> <<"{}">>;
serialize_map([{K,V}|T],false) ->
   serialize_map_no_indent(T,<<"{",K/binary,$:,V/binary>>);
serialize_map([{K,V}|T],true) ->
   serialize_map_indent(T,<<"{ ",K/binary,$:,V/binary>>).

serialize_map_indent([],Acc) ->
   <<Acc/binary," }">>;
serialize_map_indent([{K,V}|T],Acc) ->
   serialize_map_indent(T, <<Acc/binary,",\n",K/binary,$:,V/binary>>).

serialize_map_no_indent([],Acc) ->
   <<Acc/binary,"}">>;
serialize_map_no_indent([{K,V}|T],Acc) ->
   serialize_map_no_indent(T, <<Acc/binary,",",K/binary,$:,V/binary>>).

to_codepoints(<<>>,_,Acc) -> Acc;
to_codepoints(?CP2_REST($\\,$",T),Esc,Acc) -> 
   to_codepoints(T,Esc,?ACC_CP($",Acc));
to_codepoints(?CP2_REST($\\,$b,T),Esc,Acc) -> 
   to_codepoints(T,Esc,?ACC_CP($\b,Acc));
to_codepoints(?CP2_REST($\\,$f,T),Esc,Acc) -> 
   to_codepoints(T,Esc,?ACC_CP($\f,Acc));
to_codepoints(?CP2_REST($\\,$n,T),Esc,Acc) -> 
   to_codepoints(T,Esc,?ACC_CP($\n,Acc));
to_codepoints(?CP2_REST($\\,$r,T),Esc,Acc) -> 
   to_codepoints(T,Esc,?ACC_CP($\r,Acc));
to_codepoints(?CP2_REST($\\,$t,T),Esc,Acc) -> 
   to_codepoints(T,Esc,?ACC_CP($\t,Acc));
to_codepoints(<<$\\,$u,A,B,C,D,$\\,$u,A2,B2,C2,D2,T/binary>>,true,Acc) ->
   try
      High = list_to_integer([A,B,C,D],16),
      Low  = list_to_integer([A2,B2,C2,D2],16),
      if High >= 16#D800, High =< 16#DFFF, Low >= 16#D800, Low =< 16#DFFF ->
            New = from_surrogates(High, Low),
            to_codepoints(T,true,?ACC_CP(New,Acc));
         true ->
            to_codepoints(<<$\\,$u,A2,B2,C2,D2,T/binary>>,true, 
                       <<Acc/binary,$\\,$u,A,B,C,D>>)
      end
   catch 
      _:_ ->
         ?err('FOJS0007')
   end;
to_codepoints(<<$\\,$u,A,B,C,D,T/binary>>,true,Acc) ->
   try
      Int = list_to_integer([A,B,C,D],16),
      to_codepoints(T,true,?ACC_CP(Int,Acc))
   catch 
      _:_ ->
         ?err('FOJS0007')
   end;
to_codepoints(?CP_REST(H,T),Esc,Acc) ->
   to_codepoints(T,Esc,?ACC_CP(H,Acc)).

