%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2019 Zachary N. Dean  All Rights Reserved.
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
-module(xqerl_serialize).

%% ====================================================================
%% API functions
%% ====================================================================
-export([serialize/2,
         default_opts/0]).

-include("xqerl.hrl").

-define(output, <<"http://www.w3.org/2010/xslt-xquery-serialization">>).
-define(xml,    <<"http://www.w3.org/XML/1998/namespace">>).
-define(xhtml,  <<"http://www.w3.org/1999/xhtml">>).
-define(svg,    <<"http://www.w3.org/2000/svg">>).
-define(mathml, <<"http://www.w3.org/1998/Math/MathML">>).

serialize(Seq, Opts) ->
   Opts1 = maps:merge(default_opts(), Opts),
   Ser = do_serialize(Seq, Opts1),
   normalize_string_value(Ser, Opts1).

default_opts() ->
   #{
     'allow-duplicate-names'  => false,
     'byte-order-mark'        => false,
     'cdata-section-elements' => [],
     'doctype-public'         => <<>>,
     'doctype-system'         => <<>>,
     'encoding'               => utf8,
     'escape-uri-attributes'  => false,
     'html-version'           => 5.0,
     'include-content-type'   => false,
     'indent'                 => false,
     'item-separator'         => <<>>,
     'json-node-output-method'=> xml,
     'media-type'             => <<"application/xml">>,
     'method'                 => xml,
     'normalization-form'     => none,
     'omit-xml-declaration'   => true,
     'standalone'             => omit,
     'suppress-indentation'   => [],
     'undeclare-prefixes'     => false,
     'use-character-maps'     => #{},
     'version'                => 1.0
    }.

%% ====================================================================
%% Internal functions
%% ====================================================================

%% ====================================================================
%% Sequence Normalization: happens with all methods except json & adaptive.
%% ====================================================================
%% The result tree rooted at the document node that is created by the final 
%% step of this sequence normalization process is the instance of the data 
%% model to which the rules of the appropriate output method are applied. If 
%% the sequence normalization process results in a serialization error, the 
%% serializer MUST signal the error.
%% 
%% The steps in computing the normalized sequence are:
normalize_seq(Seq, Opts) ->
   S1 = norm_s1(Seq),
   S2 = norm_s2(S1),
   S3 = norm_s3(S2, Opts),
   S4 = norm_s4(S3),
   S5 = norm_s5(S4),
   S6 = norm_s6(S5),
   norm_s7(S6).

%% 1. If the sequence that is input to serialization is empty, create a 
%%    sequence S1 that consists of a zero-length string. Otherwise, copy each 
%%    item in the sequence that is input to serialization to create the new 
%%    sequence S1. Each item in the sequence that is an array is flattened by 
%%    calling the function array:flatten() before being copied.
norm_s1([]) -> [#xqAtomicValue{type = 'xs:string', value = <<>>}];
norm_s1(Seq) when is_list(Seq) ->
   norm_s1_(Seq);
norm_s1(Seq) ->
   norm_s1([Seq]).

norm_s1_([#array{} = H|T]) ->
   xqerl_array:flatten(#{}, H) ++ norm_s1_(T);
norm_s1_([H|T]) -> [H|norm_s1_(T)];
norm_s1_([]) -> [].
  
%% 2. For each item in S1, if the item is atomic, obtain the lexical 
%%    representation of the item by casting it to an xs:string and copy the 
%%    string representation to the new sequence; otherwise, copy the item to 
%%    the new sequence. The new sequence is S2.
norm_s2([#xqAtomicValue{} = H|T]) ->
   [xqerl_types:cast_as(H, 'xs:string')|norm_s2(T)];
norm_s2([H|T]) when is_boolean(H) ->
   [xqerl_types:cast_as(H, 'xs:string')|norm_s2(T)];
norm_s2([H|T]) ->
   [H|norm_s2(T)];
norm_s2([]) -> [].

%% 3. If the item-separator serialization parameter is absent, then for each 
%%    subsequence of adjacent strings in S2, copy a single string to the new 
%%    sequence equal to the values of the strings in the subsequence 
%%    concatenated in order, each separated by a single space. Copy all other 
%%    items to the new sequence. Otherwise, copy each item in S2 to the new 
%%    sequence, inserting between each pair of items a string whose value is 
%%    equal to the value of the item-separator parameter. The new sequence 
%%    is S3.
norm_s3(Seq, #{'item-separator' := <<>>}) ->
   norm_s3_1(Seq);
norm_s3(Seq, #{'item-separator' := Sep}) ->
   norm_s3_2(Seq, Sep).

norm_s3_1([#xqAtomicValue{value = V1},#xqAtomicValue{value = V2}|T]) ->
   V3 = <<V1/binary," ",V2/binary>>,
   norm_s3_1([#xqAtomicValue{value = V3}|T]);
norm_s3_1([H|T]) ->
   [H|norm_s3_1(T)];
norm_s3_1([]) -> [].

norm_s3_2([Seq], _) -> [Seq];
norm_s3_2([H|T], Sep) -> 
   [H|norm_s3_2_(T,Sep)].

norm_s3_2_([H|T],Sep) ->
   [#xqAtomicValue{value = Sep},H|norm_s3_2_(T,Sep)];
norm_s3_2_([],_) -> [].

%% 4. For each item in S3, if the item is a string, create a text node in the 
%%    new sequence whose string value is equal to the string; otherwise, copy 
%%    the item to the new sequence. The new sequence is S4.
norm_s4([#xqAtomicValue{value = Val}|T]) ->
   [xqldb_mem_nodes:text({make_ref(), 0},Val)|norm_s4(T)];
norm_s4([H|T]) ->
   [H|norm_s4(T)];
norm_s4([]) -> [].
   
%% 5. For each item in S4, if the item is a document node, copy its children 
%%    to the new sequence; otherwise, copy the item to the new sequence. 
%%    The new sequence is S5.
%% also, if this is a DB node, do deep copy for serialization
norm_s5([#{id := {_,_,_},
           nk := _} = H|T]) ->
   H1 = xqldb_nodes:deep_copy_node(H),
   norm_s5([H1|T]);
norm_s5([#{nk := document, ch := []}|T]) ->
   norm_s5(T);
norm_s5([#{nk := document} = H|T]) ->
   xqldb_mem_nodes:children(H) ++ norm_s5(T);
norm_s5([H|T]) ->
   [H|norm_s5(T)];
norm_s5([]) -> [].

%% 6. For each subsequence of adjacent text nodes in S5, copy a single text 
%%    node to the new sequence equal to the values of the text nodes in the 
%%    subsequence concatenated in order. Any text nodes with values of zero 
%%    length are dropped. Copy all other items to the new sequence. 
%%    The new sequence is S6.
norm_s6([#{nk := text, sv := <<>>}|T]) ->
   norm_s6(T);
norm_s6([#{nk := text, sv := V1} = Tx,#{nk := text, sv := V2}|T]) ->
   norm_s6([Tx#{sv := <<V1/binary,V2/binary>>}|T]);
norm_s6([H|T]) ->
   [H|norm_s6(T)];
norm_s6([]) -> [].

%% 7. It is a serialization error [err:SENR0001] if an item in S6 is an 
%%    attribute node, a namespace node or a function. Otherwise, construct a 
%%    new sequence, S7, that consists of a single document node and copy all 
%%    the items in the sequence, which are all nodes, as children of that 
%%    document node.
norm_s7(Seq) ->
   Ch = norm_s7_(Seq),
   Doc = xqldb_mem_nodes:document({make_ref(),0},<<>>,<<>>),
   xqldb_mem_nodes:add_children(Doc, Ch).

norm_s7_([#xqFunction{}|_]) -> ?err('SENR0001');
norm_s7_([#{nk := attribute}|_]) -> ?err('SENR0001');
norm_s7_([#{nk := namespace}|_]) -> ?err('SENR0001');
norm_s7_([Map|_]) when is_map(Map), not is_map_key(nk, Map) -> ?err('SENR0001');
norm_s7_([H|T]) -> [H|norm_s7_(T)];
norm_s7_([]) -> [].  
%% S7 is the normalized sequence.


%% ====================================================================
%% Phases of Serialization: XML, HTML, XHTML and Text. (after normalization)
%% ====================================================================
%% 1. A meta element is added to the sequence along with discarding an 
%%    existing meta element, as controlled by the include-content-type 
%%    parameter for the XHTML and HTML output methods. This step is skipped 
%%    for the other output methods defined by this specification.
html_head_meta(#{nn := {Ns,_,_},
                 id := {Ref,_}} = Elem, 
               #{'include-content-type' := true,
                 encoding := Enc}) ->
   HttpEquiv = xqldb_mem_nodes:attribute(
                 {Ref,0}, {<<>>,<<>>,<<"http-equiv">>}, <<"Content-Type">>, 
                 false, false, none),
   ContText = if Enc == utf8 ->
                    <<"text/html; charset=UTF-8">>;
                 Enc == utf16 ->
                    <<"text/html; charset=UTF-16">>;
                 true ->
                    <<"text/html">>
              end,                 
   Content = xqldb_mem_nodes:attribute(
                 {Ref,0}, {<<>>,<<>>,<<"content">>}, ContText, 
                 false, false, none),
   Meta = xqldb_mem_nodes:element({Ref,0}, {Ns,<<>>,<<"meta">>}, none),
   Meta1 = xqldb_mem_nodes:add_attribute(Meta, HttpEquiv),
   Meta2 = xqldb_mem_nodes:add_attribute(Meta1, Content),
   Meta3 = xqldb_mem_nodes:add_children(Meta2, []),
   #{ch := Ch} = Elem1 = delete_old_meta(Elem),
   Elem1#{ch := [Meta3|Ch]};
html_head_meta(Elem, _) ->
   Elem.

delete_old_meta(Elem) ->
   Children = xqldb_mem_nodes:children(Elem),
   Children1 = delete_old_meta_1(Children),
   Elem#{ch => Children1}.

delete_old_meta_1([#{nk := element, nn := {_,_,<<"meta">>}} = H|T]) ->
   Atts = xqldb_mem_nodes:attributes(H),
   case [1 || #{nn := {_,_,<<"http-equiv">>},
                sv := Sv} <- Atts,
              string:lowercase(xqerl_lib:trim(Sv)) == <<"content-type">>
        ] of
      [] ->
         [H|delete_old_meta_1(T)];
      [1] ->
         delete_old_meta_1(T)
   end;
delete_old_meta_1([H|T]) ->
   [H|delete_old_meta_1(T)];
delete_old_meta_1([]) -> [].

%% 2. Markup generation produces the character representation of those parts 
%%    of the serialized result that describe the structure of the sequence. 
%%    In the cases of the XML, HTML and XHTML output methods, this phase 
%%    produces the character representations of the following:
%%    - the document type declaration;
%%    - start tags and end tags (except for attribute values, whose 
%%      representation is produced by the character expansion phase);
%%    - processing instructions; and
%%    - comments.
%%    In the cases of the XML and XHTML output methods, this phase also 
%%    produces the following:
%%    - the XML or text declaration; and
%%    - empty element tags (except for the attribute values);
%%    In the case of the text output method, this phase replaces the single 
%%    document node produced by sequence normalization with a new document 
%%    node that has exactly one child, which is a text node. The string value 
%%    of the new text node is the string value of the document node that was 
%%    produced by sequence normalization.
%% 
%% 3. Character expansion is concerned with the representation of characters 
%%    appearing in text and attribute nodes in the sequence. For each text and 
%%    attribute node, the following rules are applied in sequence.
%%    a. If the node is an attribute that is a URI attribute value and the 
%%       escape-uri-attributes parameter is set to require escaping of URI 
%%       attributes, apply URI escaping as defined below, and skip rules b-e. 
%%       Otherwise, continue with rule b.
%%       [Definition: URI escaping consists of the following three steps 
%%       applied in sequence to the content of URI attribute values:]
%%         i. normalize to NFC using the method defined in Section 5.4.6 
%%            fn:normalize-unicode FO31
%%        ii. percent-encode any special characters in the URI using the 
%%            method defined in Section 6.4 fn:escape-html-uri FO31
%%       iii. escape according to the rules of the XML or HTML output method, 
%%            whichever is applicable, any characters that require escaping, 
%%            and any characters that cannot be represented in the selected 
%%            encoding. For example, replace < with &lt; (See also section 
%%            7.3 Writing Character Data).
%%       [Definition: The values of attributes listed in D List of URI 
%%       Attributes are URI attribute values. Attributes are not considered 
%%       to be URI attributes simply because they are namespace declaration 
%%       attributes or have the type annotation xs:anyURI.]
%%    b. If the node is a text node whose parent element is selected by the 
%%       rules of the cdata-section-elements parameter for the applicable 
%%       output method, create CDATA sections as described below, and skip 
%%       rules c-e. Otherwise, continue with rule c.
%%       Apply the following two processes in sequence to create CDATA sections
%%         i. Unicode Normalization if requested by the normalization-form 
%%            parameter.
%%        ii. The application of changes as detailed in the description of 
%%            the cdata-section-elements parameter for the applicable output 
%%            method.
%%    c. Apply character mapping as determined by the use-character-maps 
%%       parameter for the applicable output method. For characters that 
%%       were substituted by this process, skip rules d and e. For the 
%%       remaining characters that were not modified by character mapping, 
%%       continue with rule d.
%%    d. Apply Unicode Normalization if requested by the normalization-form 
%%       parameter.
%%       [Definition: Unicode Normalization is the process of removing 
%%       alternative representations of equivalent sequences from textual 
%%       data, to convert the data into a form that can be binary-compared 
%%       for equivalence, as specified in [UAX #15: Unicode Normalization 
%%       Forms]. For specific recommendations for character normalization on 
%%       the World Wide Web, see [Character Model for the World Wide Web 1.0: 
%%       Normalization].]
%%       The meanings associated with the possible values of the 
%%       normalization-form parameter are defined in section 5.1.9 XML Output 
%%       Method: the normalization-form Parameter.
%%       Continue with step e.
%%    e. Escape according to the rules of the XML or HTML output method, 
%%       whichever is applicable, any characters (such as < and &) where XML 
%%       or HTML requires escaping, and any characters that cannot be 
%%       represented in the selected encoding. For example, replace < with 
%%       &lt;. (See also section 7.3 Writing Character Data). For characters 
%%       such as > where XML defines a built-in entity but does not require 
%%       its use in all circumstances, it is implementation-dependent whether 
%%       the character is escaped.
%% 
%% 4. Indentation, as controlled by the indent parameter and the 
%%    suppress-indentation parameter, MAY add or remove whitespace according 
%%    to the rules defined by the applicable output method.
%% 
%% 5. Encoding, as controlled by the encoding parameter, converts the character 
%%    stream produced by the previous phases into an octet stream.

-define(STR_REST(Str,Rest), <<Str,Rest/binary>>).
-define(CP_REST(Cp,Rest), <<Cp/utf8,Rest/binary>>).


do_serialize(Seq, #{method := adaptive,
                    'item-separator' := Sep} = Opts) ->
   if Sep == <<>> ->
         do_serialize_adaptive(Seq, Opts#{'item-separator' := <<$\n>>});
      true ->
         do_serialize_adaptive(Seq, Opts)
   end;
do_serialize(Seq, #{method := json} = Opts) ->
   do_serialize_json(Seq, Opts);
do_serialize(Seq, #{method := text} = Opts) ->
   do_serialize_text(Seq, Opts);
do_serialize(Seq, #{method := xml} = Opts) ->
   Norm = normalize_seq(Seq, Opts),
   do_serialize_xml(Norm, Opts);
do_serialize(Seq, #{method := xhtml} = Opts) ->
   Norm = normalize_seq(Seq, Opts),
   do_serialize_xhtml(Norm, Opts);
do_serialize(Seq, #{method := html} = Opts) ->
   Norm = normalize_seq(Seq, Opts),
   do_serialize_html(Norm, Opts);
do_serialize(Seq, _) ->
   Seq.

do_serialize_json(#{nk := _} = Node, 
                  #{'json-node-output-method' := Method} = Opts) ->
   NewOpts = (default_opts())#{method := Method,
                               'omit-xml-declaration' := true},
   Val = do_serialize(Node, NewOpts),
   to_json_string(Val, Opts);
do_serialize_json(#array{data = Vals}, Opts) ->
   Vals1 = [do_serialize_json(V, Opts) || V <- Vals],
   Vals2 = string_join(Vals1, <<$,>>),
   <<$[,Vals2/binary,$]>>;
do_serialize_json(Map, Opts) when is_map(Map) ->
   KVs = maps:values(Map),
   KVs1 = [begin
              Key = to_json_string(K, Opts),
              Val = do_serialize_json(V, Opts),
              {Key, Val}
           end || {K,V} <- KVs],
   ok = case maps:get('allow-duplicate-names', Opts) of
           true -> ok;
           false -> check_duplicate_keys(KVs1,[])
        end,
   KVs2 = [<<K/binary,$:,V/binary>> || {K,V} <- KVs1],
   Body = string_join(KVs2, <<$,>>),
   <<"{",Body/binary,"}">>;
do_serialize_json(#xqAtomicValue{value = nan}, _Opts) -> ?err('SERE0020');
do_serialize_json(#xqAtomicValue{value = infinity}, _Opts) -> ?err('SERE0020');
do_serialize_json(#xqAtomicValue{value = neg_infinity}, _Opts) -> ?err('SERE0020');
do_serialize_json(#xqAtomicValue{value = neg_zero}, _Opts) -> 
   <<"-0">>;
do_serialize_json(#xqAtomicValue{type = Type, value = Val}, _Opts)
   when ?xs_numeric(Type) ->
   xqerl_numeric:string(Val);
do_serialize_json(true, _Opts) ->
   <<"true">>;
do_serialize_json(false, _Opts) ->
   <<"false">>;
do_serialize_json(#xqAtomicValue{} = Atomic, Opts) ->
   to_json_string(Atomic, Opts);
do_serialize_json([], _Opts) ->
   <<"null">>;
do_serialize_json([V], Opts) ->
   do_serialize_json(V, Opts);
do_serialize_json([_|_], _Opts) ->
   ?err('SERE0023');
do_serialize_json(_, _) ->
   ?err('SERE0021').

do_serialize_adaptive(Seq, #{'item-separator' := Sep} = Opts) when is_list(Seq) ->
   Seq1 = [do_serialize_adaptive(S, Opts) || S <- Seq],
   string_join(Seq1, Sep);
do_serialize_adaptive(#{nk := _} = Node, Opts) ->
   do_serialize_xml(Node, Opts);
do_serialize_adaptive(true, _Opts) ->
   <<"true()">>;
do_serialize_adaptive(false, _Opts) ->
   <<"false()">>;
do_serialize_adaptive(#xqAtomicValue{type = Type, value = Val}, _Opts)
   when Type == 'xs:untypedAtomic';
        Type == 'xs:anyURI';
        ?xs_string(Type) ->
   Q = duplicate_quotes(Val,<<>>),
   <<$",Q/binary,$">>;
do_serialize_adaptive(#xqAtomicValue{type = Type, value = Val}, _Opts)
   when ?xs_decimal(Type) ->
   xqerl_numeric:string(Val);
do_serialize_adaptive(#xqAtomicValue{type = Type} = Val, _Opts)
   when Type == 'xs:double' ->
   Pic = #xqAtomicValue{type = 'xs:string',
                        value = <<"0.0##########################e0">>},
   Str = xqerl_fn:'format-number'(#{},Val,Pic,
                                  #dec_format{infinity = "INF"}),
   Str#xqAtomicValue.value;
do_serialize_adaptive(#xqAtomicValue{type = Type, 
                                     value = #qname{namespace = Ns,
                                                    local_name = Ln}}, _Opts)
   when Type == 'xs:QName';
        Type == 'xs:NOTATION' ->
   if Ns == 'no-namespace' ->
         <<$Q,${,$},Ln/binary>>;
      true ->
         <<$Q,${,Ns/binary,$},Ln/binary>>
   end;
do_serialize_adaptive(#xqAtomicValue{type = Type} = Val, _Opts)
   when ?xs_duration(Type) ->
   TypeBin = <<"xs:duration">>,
   Str = xqerl_types:string_value(Val),
   <<TypeBin/binary,$(,$",Str/binary,$",$)>>;
do_serialize_adaptive(#xqAtomicValue{type = Type} = Val, _Opts) ->
   TypeBin = atom_to_binary(Type, utf8),
   Str = xqerl_types:string_value(Val),
   <<TypeBin/binary,$(,$",Str/binary,$",$)>>;
do_serialize_adaptive(#array{data = Vals}, Opts) ->
   Vals1 = [if is_list(V) ->
                  do_serialize_adaptive_seq(V, Opts);
               true ->
                  do_serialize_adaptive(V, Opts)
            end || V <- Vals],
   Vals2 = string_join(Vals1, <<$,>>),
   <<$[,Vals2/binary,$]>>;
do_serialize_adaptive(Map, Opts) when is_map(Map) ->
   KVs = maps:values(Map),
   Entries = [begin
                 Key = do_serialize_adaptive(K, Opts),
                 Val = if is_list(V) ->
                             do_serialize_adaptive_seq(V, Opts);
                          true ->
                             do_serialize_adaptive(V, Opts)
                       end,
                 <<Key/binary,$:,Val/binary>>
              end || {K,V} <- KVs],
   Body = string_join(Entries, <<$,>>),
   <<"map{",Body/binary,"}">>;
do_serialize_adaptive(#xqFunction{name = undefined, arity = Arity}, _Opts) ->
   A = integer_to_binary(Arity),
   <<"(anonymous-function)#",A/binary>>;
do_serialize_adaptive(#xqFunction{name = #qname{namespace = Ns,
                                                local_name = Ln}, 
                                  arity = Arity}, _Opts) ->
   Head = if Ns == <<"http://www.w3.org/2005/xpath-functions">> ->
                <<"fn:">>;
             Ns == <<"http://www.w3.org/2005/xpath-functions/math">> ->
                <<"math:">>;
             Ns == <<"http://www.w3.org/2005/xpath-functions/map">> ->
                <<"map:">>;
             Ns == <<"http://www.w3.org/2005/xpath-functions/array">> ->
                <<"array:">>;
             Ns == <<"http://www.w3.org/2001/XMLSchema">> ->
                <<"xs:">>;
             true ->
                <<$Q,${,Ns/binary,$}>>
          end,
   A = integer_to_binary(Arity),
   <<Head/binary,Ln/binary,"#",A/binary>>;
  
do_serialize_adaptive(Seq, _Opts) ->
   Seq.

do_serialize_adaptive_seq([V], Opts) ->
   do_serialize_adaptive(V, Opts);
do_serialize_adaptive_seq(Vals, Opts) ->
   Vals1 = [do_serialize_adaptive(V, Opts) || V <- Vals],
   Vals2 = string_join(Vals1, <<$,>>),
   <<$(,Vals2/binary,$)>>.   

do_serialize_text(Seq, Opts) ->
   Norm = normalize_seq(Seq, Opts),
   xqldb_mem_nodes:string_value(Norm).

do_serialize_html(Seq, #{'html-version' := 5.0} = Opts) ->
   Seq1 = normalize_prefixes(Seq, #{<<>> => <<>>}),
   do_serialize_html(Seq1, Opts, #{<<>> => <<>>});
do_serialize_html(Seq, Opts) ->
   do_serialize_html(Seq, Opts, #{<<>> => <<>>}).

do_serialize_html(#{nk := document} = Doc, Opts, NsInScope) ->
   Ch = xqldb_mem_nodes:children(Doc),
   IsWellFormed = is_well_formed(Ch),
   [L|_] = [L ||#{nn := {_,_,L}, nk := element} <- Ch],
   Decl = do_xml_declaration(IsWellFormed, L, Opts),
   Body = << <<(do_serialize_html(C, Opts, NsInScope))/binary>> ||
      C <- Ch>>,
   <<Decl/binary, Body/binary>>;   
do_serialize_html(#{nk := 'processing-instruction',
                     nn := {_,_,Ln}} = Node, _Opts, _) ->
   Tgt = xqldb_mem_nodes:string_value(Node),
   if Tgt == <<>> -> % no trailing '?' in html
         <<"<?", Ln/binary, " >">>;
      true ->
         <<"<?", Ln/binary, " ", Tgt/binary, ">">>
   end;
do_serialize_html(#{nk := comment} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   <<"<!--", Txt/binary, "-->">>;
do_serialize_html(#{nk := text} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   encode_text(Txt);
do_serialize_html(#{nk := cdata} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   encode_cdata(Txt);
do_serialize_html(#{nk := attribute,
                     nn := NodeName} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   QNm = encode_qname(NodeName),
   AttTxt = encode_att_text(Txt),
   <<QNm/binary, "=\"", AttTxt/binary, "\"">>;

do_serialize_html(#{nk := element,
                   ch := _,
                   ns := Ns,
                   nn := {ENs,_,Ln} = NodeName} = Node, 
                   #{'html-version' := HtmlV} = Opts, InScopeNamespaces) ->
   At = xqldb_mem_nodes:attributes(Node),
   QNm = encode_qname(NodeName),
   NewNs = get_new_namespaces(Ns, InScopeNamespaces),
   InScopeNamespaces1 = maps:merge(InScopeNamespaces, Ns),
   NsStr = << <<" ", (encode_namespace(P, N))/binary>> ||
              {P,N} <- NewNs>>,
   Atts = << <<" ", (do_serialize_html(A, Opts, InScopeNamespaces1))/binary>> ||
             A <- At>>,
   IsCdataNode = is_cdata_node(NodeName, Opts),
   Node1 = if Ln == <<"head">> ->
                 html_head_meta(Node, Opts);
              true ->
                 Node
           end,
   ChNds = xqldb_mem_nodes:children(Node1),
   IsHtml = ENs == <<>> orelse (ENs == ?xhtml andalso HtmlV == 5.0),
   Ch = if IsCdataNode andalso not IsHtml ->
              lists:map(fun(#{nk := text} = Txt) ->
                              Txt#{nk := cdata};
                           (O) ->
                              O
                        end, ChNds);
           true ->
              ChNds
        end,
   {Indent,Opts2} = case can_indent(NodeName, ChNds, Opts) of
                       true -> {<<"\n">>, Opts};
                       false -> {<<>>, Opts#{indent := false}}
                    end,
   Chld = << <<Indent/binary, (do_serialize_html(C, Opts2, InScopeNamespaces1))/binary>> ||
             C <- Ch >>,
   Empty = if HtmlV == 5.0 ->
                 is_void_element(NodeName);
              true ->
                 is_empty_element(NodeName)
           end,
   if Ch == [], Empty, IsHtml ->
         <<"<", QNm/binary, NsStr/binary, Atts/binary, ">">>;
      true ->
         <<"<", QNm/binary, NsStr/binary, Atts/binary, ">",
           Chld/binary, Indent/binary, "</", QNm/binary, ">">>
   end;

do_serialize_html(_, _, _) ->
   ?err('SENR0001').

do_serialize_xhtml(Seq, #{'html-version' := 5.0} = Opts) ->
   Seq1 = normalize_prefixes(Seq, #{<<>> => <<>>}),
   do_serialize_xhtml(Seq1, Opts, #{<<>> => <<>>});
do_serialize_xhtml(Seq, Opts) ->
   do_serialize_xhtml(Seq, Opts, #{<<>> => <<>>}).

do_serialize_xhtml(#{nk := document} = Doc, Opts, NsInScope) ->
   Ch = xqldb_mem_nodes:children(Doc),
   IsWellFormed = is_well_formed(Ch),
   Decl = case html_doctype(Ch, Opts) of
             <<>> ->
                [L|_] = [L ||#{nn := {_,_,L}, nk := element} <- Ch],
                do_xml_declaration(IsWellFormed, L, Opts);
             D ->
                D
          end,
   Body = << <<(do_serialize_xhtml(C, Opts, NsInScope))/binary>> ||
      C <- Ch>>,
   <<Decl/binary, Body/binary>>;   
do_serialize_xhtml(#{nk := 'processing-instruction',
                     nn := {_,_,Ln}} = Node, _Opts, _) ->
   Tgt = xqldb_mem_nodes:string_value(Node),
   if Tgt == <<>> ->
         <<"<?", Ln/binary, "?>">>; % no trailing whitespace allowed
      true ->
         <<"<?", Ln/binary, " ", Tgt/binary, "?>">>
   end;
do_serialize_xhtml(#{nk := comment} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   <<"<!--", Txt/binary, "-->">>;
do_serialize_xhtml(#{nk := text} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   encode_text(Txt);
do_serialize_xhtml(#{nk := cdata} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   encode_cdata(Txt);
do_serialize_xhtml(#{nk := attribute,
                     nn := NodeName} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   QNm = encode_qname(NodeName),
   AttTxt = encode_att_text(Txt),
   <<QNm/binary, "=\"", AttTxt/binary, "\"">>;

do_serialize_xhtml(#{nk := element,
                   ch := _,
                   ns := Ns,
                   nn := {_,_,Ln} = NodeName} = Node, 
                   #{'html-version' := HtmlV} = Opts, InScopeNamespaces) ->
   At = xqldb_mem_nodes:attributes(Node),
   QNm = encode_qname(NodeName),
   NewNs = get_new_namespaces(Ns, InScopeNamespaces),
   InScopeNamespaces1 = maps:merge(InScopeNamespaces, Ns),
   NsStr = << <<" ", (encode_namespace(P, N))/binary>> ||
              {P,N} <- NewNs>>,
   Atts = << <<" ", (do_serialize_xhtml(A, Opts, InScopeNamespaces1))/binary>> ||
             A <- At>>,
   IsCdataNode = is_cdata_node(NodeName, Opts),
   Node1 = if Ln == <<"head">> ->
                 html_head_meta(Node, Opts);
              true ->
                 Node
           end,
   ChNds = xqldb_mem_nodes:children(Node1),
   Ch = if IsCdataNode ->
              lists:map(fun(#{nk := text} = Txt) ->
                              Txt#{nk := cdata};
                           (O) ->
                              O
                        end, ChNds);
           true ->
              ChNds
        end,
   {Indent,Opts2} = case can_indent(NodeName, ChNds, Opts) of
                       true -> {<<"\n">>, Opts};
                       false -> {<<>>, Opts#{indent := false}}
                    end,
   Chld = << <<Indent/binary, (do_serialize_xhtml(C, Opts2, InScopeNamespaces1))/binary>> ||
             C <- Ch >>,
   Empty = if HtmlV == 5.0 ->
                 is_void_element(NodeName);
              true ->
                 is_empty_element(NodeName)
           end,
   IsHtml = is_html_tag(NodeName, HtmlV),
   if Ch == [], Empty, IsHtml ->
         <<"<", QNm/binary, NsStr/binary, Atts/binary, " />",Indent/binary>>;
      true ->
         <<"<", QNm/binary, NsStr/binary, Atts/binary, ">",
           Chld/binary, Indent/binary, "</", QNm/binary, ">">>
   end;

do_serialize_xhtml(_, _, _) ->
   ?err('SENR0001').


do_serialize_xml(Seq, Opts) ->
   do_serialize_xml(Seq, Opts, #{<<>> => <<>>}).

do_serialize_xml(#{nk := document} = Doc, Opts, NsInScope) ->
   Ch = xqldb_mem_nodes:children(Doc),
   IsWellFormed = is_well_formed(Ch),
   Decl = if IsWellFormed ->
                [L|_] = [L ||#{nn := {_,_,L}, nk := element} <- Ch],
                do_xml_declaration(IsWellFormed, L, Opts);
             true ->
                do_xml_declaration(IsWellFormed, <<>>, Opts)
          end,
   Body = << <<(do_serialize_xml(C, Opts, NsInScope))/binary>> ||
      C <- Ch>>,
   <<Decl/binary, Body/binary>>;   
do_serialize_xml(#{nk := 'processing-instruction',
                   nn := {_,_,Ln}} = Node, _Opts, _) ->
   Tgt = xqldb_mem_nodes:string_value(Node),
   if Tgt == <<>> ->
         <<"<?", Ln/binary, " ?>">>;
      true ->
         <<"<?", Ln/binary, " ", Tgt/binary, "?>">>
   end;
do_serialize_xml(#{nk := comment} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   <<"<!--", Txt/binary, "-->">>;
do_serialize_xml(#{nk := text} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   encode_text(Txt);
do_serialize_xml(#{nk := cdata} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   encode_cdata(Txt);
do_serialize_xml(#{nk := attribute,
                   nn := NodeName} = Node, _Opts, _) ->
   Txt = xqldb_mem_nodes:string_value(Node),
   QNm = encode_qname(NodeName),
   AttTxt = encode_att_text(Txt),
   <<QNm/binary, "=\"", AttTxt/binary, "\"">>;

do_serialize_xml(#{nk := element,
                   ch := _,
                   ns := Ns,
                   nn := NodeName} = Node, Opts, InScopeNamespaces) ->
   At = xqldb_mem_nodes:attributes(Node),
   QNm = encode_qname(NodeName),
   NewNs = get_new_namespaces(Ns, InScopeNamespaces),
   InScopeNamespaces1 = maps:merge(InScopeNamespaces, Ns),
   NsStr = << <<" ", (encode_namespace(P, N))/binary>> ||
              {P,N} <- NewNs, P =/= <<"xml">>>>,
   Atts = << <<" ", (do_serialize_xml(A, Opts, InScopeNamespaces1))/binary>> ||
             A <- At>>,
   IsCdataNode = is_cdata_node(NodeName, Opts),
   ChNds = xqldb_mem_nodes:children(Node),
   Ch = if IsCdataNode ->
              lists:map(fun(#{nk := text} = Txt) ->
                              Txt#{nk := cdata};
                           (O) ->
                              O
                        end, ChNds);
           true ->
              ChNds
        end,
   {Indent,Opts2} = case can_indent(NodeName, ChNds, Opts) of
                       true -> {<<"\n">>, Opts};
                       false -> {<<>>, Opts#{indent := false}}
                    end,
   Chld = << <<Indent/binary, (do_serialize_xml(C, Opts2, InScopeNamespaces1))/binary>> ||
             C <- Ch>>,
   if Ch == [] ->
         <<"<", QNm/binary, NsStr/binary, Atts/binary, "/>",Indent/binary>>;
      true ->
         <<"<", QNm/binary, NsStr/binary, Atts/binary, ">",
           Chld/binary, Indent/binary, "</", QNm/binary, ">">>
   end;

do_serialize_xml(_, _, _) ->
   ?err('SENR0001').

encode_namespace(<<"xml">>, _) -> <<>>;
encode_namespace(<<>>, Ns) ->
   Ns1 = encode_ns_text(Ns),
   <<"xmlns=\"", Ns1/binary, "\"">>;
encode_namespace(Px, Ns) ->
   Ns1 = encode_ns_text(Ns),
   <<"xmlns:", Px/binary, "=\"", Ns1/binary, "\"">>.
           

get_new_namespaces(Current, Old) ->
   [{K,V} || {K,V} <- maps:to_list(Current),
             maps:find(K, Old) =/= {ok,V}].

normalize_prefixes(#{nk := document} = Node, Nss) ->
   Ch = xqldb_mem_nodes:children(Node),
   Ch2 = [normalize_prefixes(N,Nss) || N <- Ch],
   xqldb_mem_nodes:add_children(Node, Ch2);
normalize_prefixes(#{nk := element,
                     ns := ENs,
                     nn := {Ns, _, Ln}} = Node, Nss)
   when Ns == ?xhtml;
        Ns == ?svg;
        Ns == ?mathml ->
   Atts = xqldb_mem_nodes:attributes(Node),
   Child = xqldb_mem_nodes:children(Node),
   UsedPxs = [P || #{nn := {_,P,_}} <- Atts, P =/= <<>>],
   Keep = maps:with(UsedPxs, maps:merge(Nss, ENs)),
   Added = Keep#{<<>> => Ns},
   NewChild = [normalize_prefixes(C,Added) || C <- Child],
   Node#{ns := Added,
         nn := {Ns,<<>>,Ln},
         ch => NewChild};
normalize_prefixes(#{nk := element,
                     ns := ENs} = Node, Nss) ->
   Child = xqldb_mem_nodes:children(Node),
   NewChild = [normalize_prefixes(C, maps:merge(Nss, ENs)) || C <- Child],
   Node#{ch => NewChild};
normalize_prefixes(Node, _) ->
   Node.

encode_text(Bin) -> encode_text(Bin,<<>>).

encode_text(<<>>,Acc) -> Acc;
encode_text(?STR_REST("<",Tail),Acc) ->
   encode_text(Tail,<<Acc/binary,"&lt;">>);
encode_text(?STR_REST(">",Tail),Acc) ->
   encode_text(Tail,<<Acc/binary, "&gt;">>);
encode_text(?STR_REST("&", Tail),Acc) ->
   encode_text(Tail,<<Acc/binary,"&amp;">>);
encode_text(?CP_REST(H, Tail),Acc) when H == 16#0d ->
   encode_text(Tail,<<Acc/binary,"&#xD;">>);
encode_text(?CP_REST(H, Tail),Acc) when H >= 127 ->
   encode_text(Tail,<<Acc/binary,"&#x",(integer_to_binary(H,16))/binary,";">>);
encode_text(?CP_REST(H, Tail),Acc) ->
   encode_text(Tail,<<Acc/binary,H/utf8>>).

encode_cdata(Txt) -> encode_cdata(Txt, <<"<![CDATA[">>).

encode_cdata(?STR_REST("]]>", Tail), Acc) ->
   encode_cdata(Tail, <<Acc/binary,"]]]]><![CDATA[>">>);
encode_cdata(?CP_REST(H, Tail), Acc) ->
   encode_cdata(Tail, <<Acc/binary,H/utf8>>);
encode_cdata(<<>>, Acc) ->
   <<Acc/binary,"]]>">>.


encode_att_text(Bin) -> encode_att_text(Bin,<<>>).

encode_att_text(<<>>,Acc) -> Acc;
encode_att_text(?CP_REST(H, Tail),Acc) when H == 16#0d ->
   encode_att_text(Tail,<<Acc/binary,"&#xD;">>);
encode_att_text(?CP_REST(H, Tail),Acc) when H == 16#0a ->
   encode_att_text(Tail,<<Acc/binary,"&#xA;">>);
encode_att_text(?CP_REST(H, Tail),Acc) when H == 16#09 ->
   encode_att_text(Tail,<<Acc/binary,"&#x9;">>);
encode_att_text(?CP_REST(H, Tail),Acc) 
  when H >= 127 ->
   encode_att_text(Tail,<<Acc/binary,"&#x",(integer_to_binary(H,16))/binary,";">>);
encode_att_text(?STR_REST("\"", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"&quot;">>);
encode_att_text(?STR_REST("<", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"&lt;">>);
encode_att_text(?STR_REST(">", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"&gt;">>);
encode_att_text(?STR_REST("&", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"&amp;">>);
encode_att_text(?STR_REST("{{", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"{{">>);
encode_att_text(?STR_REST("{", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"{{">>);
encode_att_text(?STR_REST("}}", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"}}">>);
encode_att_text(?STR_REST("}", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"}}">>);
encode_att_text(?CP_REST(H, Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,H/utf8>>).

encode_ns_text(Bin) -> encode_ns_text(Bin,<<>>).

encode_ns_text(<<>>,Acc) -> Acc;
encode_ns_text(?CP_REST(H, Tail),Acc) 
  when H >= 255;
       H == 9;
       H == 10;
       H == 13 ->
   encode_ns_text(Tail,<<Acc/binary,"&#",(integer_to_binary(H))/binary,";">>);
encode_ns_text(?STR_REST("\"", Tail),Acc) ->
   encode_ns_text(Tail,<<Acc/binary,"&quot;">>);
encode_ns_text(?STR_REST("<", Tail),Acc) ->
   encode_ns_text(Tail,<<Acc/binary,"&lt;">>);
encode_ns_text(?STR_REST(">", Tail),Acc) ->
   encode_ns_text(Tail,<<Acc/binary,"&gt;">>);
encode_ns_text(?STR_REST("&", Tail),Acc) ->
   encode_ns_text(Tail,<<Acc/binary,"&amp;">>);
encode_ns_text(?CP_REST(H, Tail),Acc) ->
   encode_ns_text(Tail,<<Acc/binary,H/utf8>>).


encode_qname({_, Px, Ln}) when is_atom(Px);
                               Px == <<>> ->
   Ln;
encode_qname({_, Px, Ln}) ->
   <<Px/binary, ":", Ln/binary>>.

encode_binary(Val, utf8) -> Val;
encode_binary(Val, Enc) -> 
   unicode:characters_to_binary(Val, unicode, Enc).

string_join([], _With) -> <<>>;
string_join([H], _With) -> H;
string_join([H|T], With) ->
   string_join(T, With, H).

string_join([], _, Acc) -> Acc;
string_join([H|T], With, Acc) ->
   string_join(T, With, <<Acc/binary,With/binary,H/binary>>).

duplicate_quotes(<<$",Rest/binary>>, Acc) ->
   duplicate_quotes(Rest, <<Acc/binary,$",$">>);
duplicate_quotes(<<C/utf8,Rest/binary>>, Acc) ->
   duplicate_quotes(Rest, <<Acc/binary,C/utf8>>);
duplicate_quotes(<<>>, Acc) -> Acc.

to_json_string(Val, #{'normalization-form' := Form}) ->
   Str = xqerl_types:string_value(Val),
   Str1 = if Form == nfc ->
                unicode:characters_to_nfc_binary(Str);
             Form == none ->
                Str
          end,             
   Esc = xqerl_json:xml_no_escape(Str1, <<>>),
   <<$",Esc/binary,$">>.

normalize_string_value(Val, #{'normalization-form' := nfc,
                              'use-character-maps' := Map}) ->
   case maps:size(Map) of
      0 ->
         unicode:characters_to_nfc_binary(Val);
      _ ->
         norm_nfc_mapped(Val, Map, <<>>, <<>>)
   end;
normalize_string_value(Val, #{'normalization-form' := none,
                              'use-character-maps' := Map,
                              encoding := Enc}) ->
   case maps:size(Map) of
      0 ->
         encode_binary(Val, Enc);
      _ ->
         encode_binary(norm_mapped(Val, Map, <<>>), Enc)
   end.

norm_nfc_mapped(<<C/utf8,Val/binary>>, Map, Acc, Buf) when is_map_key(C, Map) ->
   Str = maps:get(C, Map),
   Buf1 = unicode:characters_to_nfc_binary(Buf),
   Acc1 = <<Acc/binary,Buf1/binary,Str/binary>>,
   norm_nfc_mapped(Val, Map, Acc1, <<>>);
norm_nfc_mapped(<<C/utf8,Val/binary>>, Map, Acc, Buf) ->
   norm_nfc_mapped(Val, Map, Acc, <<Buf/binary, C/utf8>>);
norm_nfc_mapped(<<>>, _Map, Acc, Buf) ->
   Buf1 = unicode:characters_to_nfc_binary(Buf),
   <<Acc/binary,Buf1/binary>>.

norm_mapped(<<C/utf8,Val/binary>>, Map, Acc) when is_map_key(C, Map) ->
   Str = maps:get(C, Map),
   Acc1 = <<Acc/binary,Str/binary>>,
   norm_mapped(Val, Map, Acc1);
norm_mapped(<<C/utf8,Val/binary>>, Map, Acc) ->
   norm_mapped(Val, Map, <<Acc/binary, C/utf8>>);
norm_mapped(<<>>, _Map, Acc) ->
   Acc.
   


check_duplicate_keys([{K,_}|T],Acc) ->
   case lists:member(K, Acc) of
      true ->
         ?err('SERE0022');
      false ->
         check_duplicate_keys(T, [K|Acc])
   end;
check_duplicate_keys([],_) -> ok.

is_well_formed(Children) ->
   [1 || #{nk := text} <- Children] == []
   andalso [1 || #{nk := element} <- Children] == [1].

can_indent(_, _, #{indent := false}) -> false;
can_indent({Ns, _, Ln}, Children, #{'suppress-indentation' := Els}) ->
   Ln0 = string:lowercase(Ln),
   case [1 || #qname{namespace = Ns1, local_name = Ln1} <- Els,
              Ln0 == string:lowercase(Ln1),
              Ns == Ns1 orelse 
                (Ns == <<>> andalso Ns1 == 'no-namespace')] =/= [] of
      true ->
         false;
      false ->
         [1 || #{nk := text} <- Children] == []
   end.

is_cdata_node({Ns, _, Ln}, #{'cdata-section-elements' := Els}) ->
   [1 ||
    #qname{namespace = Ns1, local_name = Ln1} <- Els,
    Ln == Ln1,
    Ns == Ns1 orelse (Ns == <<>> andalso Ns1 == 'no-namespace')] =/= [].

do_xml_declaration(Wellformed, ElementName, 
                   #{'omit-xml-declaration' := O,
                     standalone := Standalone,
                     'html-version' := HtmlVers,
                     method := Method,
                     version := 1.0,
                     'doctype-system' := D,
                     'doctype-public' := P,
                     encoding := Encoding}) -> 
   Enc = if Encoding == utf8 -> <<"UTF-8">>;
            Encoding == utf16 -> <<"UTF-16">>;
            Encoding == utf32 -> <<"UTF-32">>            
         end,
   DocType = if Method == html, D == <<>>, P == <<>>, HtmlVers == 5.0, ElementName == <<"html">> -> 
                  <<"<!DOCTYPE ", ElementName/binary, ">\n">>;
                Method == html, D == <<>>, P == <<>> -> <<>>;
                Method == html, D == <<>> -> 
                   <<"<!DOCTYPE ", ElementName/binary, " PUBLIC \"",P/binary,"\">\n">>;
                D == <<>> -> <<>>;
                true ->
                   if P == <<>> ->
                         %io:format("~p~n", [D]),
                         <<"<!DOCTYPE ", ElementName/binary, " SYSTEM \"",D/binary,"\">\n">>;
                      true ->
                         %io:format("~p~n", [D]),
                         <<"<!DOCTYPE ", ElementName/binary, " PUBLIC \"", P/binary, "\" \"",D/binary,"\">\n">>
                   end
             end,
                   
   if O == false, Standalone == omit ->
         <<DocType/binary, "<?xml version=\"1.0\" encoding=\"",Enc/binary,"\"?>">>;
      Standalone == true, Wellformed == false ->
         ?err('SEPM0004');
      Wellformed == false, D =/= <<>> ->
         ?err('SEPM0004');
      O == false, Standalone == true ->
         <<DocType/binary, "<?xml version=\"1.0\" encoding=\"",Enc/binary,"\" standalone=\"yes\"?>">>;
      O == false ->
         <<DocType/binary, "<?xml version=\"1.0\" encoding=\"",Enc/binary,"\" standalone=\"no\"?>">>;
      true ->
         DocType
   end.

% takes children of document node
html_doctype([#{nk := text, sv := Sv}|T], Opts) ->
   case xqerl_lib:trim(Sv) of
      <<>> ->
         html_doctype(T, Opts);
      _ ->
         <<>>
   end;
html_doctype([#{nn := {_,_,Html}}|_], #{'html-version' := 5.0,
                                        'doctype-system' := <<>>}) ->
   case string:lowercase(Html) of
      <<"html">> ->
         <<"<!DOCTYPE ", Html/binary, ">">>;
      _ ->
         <<>>
   end;
html_doctype(_, _) -> <<>>.

is_empty_element({_,_,<<"area">>}) -> true;
is_empty_element({_,_,<<"base">>}) -> true;
is_empty_element({_,_,<<"br">>}) -> true;
is_empty_element({_,_,<<"col">>}) -> true;
is_empty_element({_,_,<<"embed">>}) -> true;
is_empty_element({_,_,<<"hr">>}) -> true;
is_empty_element({_,_,<<"img">>}) -> true;
is_empty_element({_,_,<<"input">>}) -> true;
is_empty_element({_,_,<<"link">>}) -> true;
is_empty_element({_,_,<<"meta">>}) -> true;
is_empty_element({_,_,<<"basefont">>}) -> true;
is_empty_element({_,_,<<"frame">>}) -> true;
is_empty_element({_,_,<<"isindex">>}) -> true;
is_empty_element({_,_,<<"param">>}) -> true;
is_empty_element({_,_,_}) -> false.

is_void_element({_,_,<<"area">>}) -> true;
is_void_element({_,_,<<"base">>}) -> true;
is_void_element({_,_,<<"br">>}) -> true;
is_void_element({_,_,<<"col">>}) -> true;
is_void_element({_,_,<<"embed">>}) -> true;
is_void_element({_,_,<<"hr">>}) -> true;
is_void_element({_,_,<<"img">>}) -> true;
is_void_element({_,_,<<"input">>}) -> true;
is_void_element({_,_,<<"keygen">>}) -> true;
is_void_element({_,_,<<"link">>}) -> true;
is_void_element({_,_,<<"meta">>}) -> true;
is_void_element({_,_,<<"param">>}) -> true;
is_void_element({_,_,<<"source">>}) -> true;
is_void_element({_,_,<<"track">>}) -> true;
is_void_element({_,_,<<"wbr">>}) -> true;
is_void_element({_,_,_}) -> false.

is_html_tag({?xhtml,_,_}, _) -> true;
is_html_tag({<<>>,_,Tag}, 5.0) -> 
   is_html_tag(string:lowercase(Tag));
is_html_tag(_, _) ->
   false.

is_html_tag(<<"a">>) -> true;
is_html_tag(<<"abbr">>) -> true;
is_html_tag(<<"acronym">>) -> true;
is_html_tag(<<"address">>) -> true;
is_html_tag(<<"applet">>) -> true;
is_html_tag(<<"area">>) -> true;
is_html_tag(<<"article">>) -> true;
is_html_tag(<<"aside">>) -> true;
is_html_tag(<<"audio">>) -> true;
is_html_tag(<<"b">>) -> true;
is_html_tag(<<"base">>) -> true;
is_html_tag(<<"basefont">>) -> true;
is_html_tag(<<"bdi">>) -> true;
is_html_tag(<<"bdo">>) -> true;
is_html_tag(<<"big">>) -> true;
is_html_tag(<<"blockquote">>) -> true;
is_html_tag(<<"body">>) -> true;
is_html_tag(<<"br">>) -> true;
is_html_tag(<<"button">>) -> true;
is_html_tag(<<"canvas">>) -> true;
is_html_tag(<<"caption">>) -> true;
is_html_tag(<<"center">>) -> true;
is_html_tag(<<"cite">>) -> true;
is_html_tag(<<"code">>) -> true;
is_html_tag(<<"col">>) -> true;
is_html_tag(<<"colgroup">>) -> true;
is_html_tag(<<"data">>) -> true;
is_html_tag(<<"datalist">>) -> true;
is_html_tag(<<"dd">>) -> true;
is_html_tag(<<"del">>) -> true;
is_html_tag(<<"details">>) -> true;
is_html_tag(<<"dfn">>) -> true;
is_html_tag(<<"dialog">>) -> true;
is_html_tag(<<"dir">>) -> true;
is_html_tag(<<"div">>) -> true;
is_html_tag(<<"dl">>) -> true;
is_html_tag(<<"dt">>) -> true;
is_html_tag(<<"em">>) -> true;
is_html_tag(<<"embed">>) -> true;
is_html_tag(<<"fieldset">>) -> true;
is_html_tag(<<"figcaption">>) -> true;
is_html_tag(<<"figure">>) -> true;
is_html_tag(<<"font">>) -> true;
is_html_tag(<<"footer">>) -> true;
is_html_tag(<<"form">>) -> true;
is_html_tag(<<"frame">>) -> true;
is_html_tag(<<"frameset">>) -> true;
is_html_tag(<<"h1">>) -> true;
is_html_tag(<<"head">>) -> true;
is_html_tag(<<"header">>) -> true;
is_html_tag(<<"hr">>) -> true;
is_html_tag(<<"html">>) -> true;
is_html_tag(<<"i">>) -> true;
is_html_tag(<<"iframe">>) -> true;
is_html_tag(<<"img">>) -> true;
is_html_tag(<<"input">>) -> true;
is_html_tag(<<"ins">>) -> true;
is_html_tag(<<"kbd">>) -> true;
is_html_tag(<<"keygen">>) -> true;
is_html_tag(<<"label">>) -> true;
is_html_tag(<<"legend">>) -> true;
is_html_tag(<<"li">>) -> true;
is_html_tag(<<"link">>) -> true;
is_html_tag(<<"main">>) -> true;
is_html_tag(<<"map">>) -> true;
is_html_tag(<<"mark">>) -> true;
is_html_tag(<<"meta">>) -> true;
is_html_tag(<<"meter">>) -> true;
is_html_tag(<<"nav">>) -> true;
is_html_tag(<<"noframes">>) -> true;
is_html_tag(<<"noscript">>) -> true;
is_html_tag(<<"object">>) -> true;
is_html_tag(<<"ol">>) -> true;
is_html_tag(<<"optgroup">>) -> true;
is_html_tag(<<"option">>) -> true;
is_html_tag(<<"output">>) -> true;
is_html_tag(<<"p">>) -> true;
is_html_tag(<<"param">>) -> true;
is_html_tag(<<"picture">>) -> true;
is_html_tag(<<"pre">>) -> true;
is_html_tag(<<"progress">>) -> true;
is_html_tag(<<"q">>) -> true;
is_html_tag(<<"rp">>) -> true;
is_html_tag(<<"rt">>) -> true;
is_html_tag(<<"ruby">>) -> true;
is_html_tag(<<"s">>) -> true;
is_html_tag(<<"samp">>) -> true;
is_html_tag(<<"script">>) -> true;
is_html_tag(<<"section">>) -> true;
is_html_tag(<<"select">>) -> true;
is_html_tag(<<"small">>) -> true;
is_html_tag(<<"source">>) -> true;
is_html_tag(<<"span">>) -> true;
is_html_tag(<<"strike">>) -> true;
is_html_tag(<<"strong">>) -> true;
is_html_tag(<<"style">>) -> true;
is_html_tag(<<"sub">>) -> true;
is_html_tag(<<"summary">>) -> true;
is_html_tag(<<"sup">>) -> true;
is_html_tag(<<"svg">>) -> true;
is_html_tag(<<"table">>) -> true;
is_html_tag(<<"tbody">>) -> true;
is_html_tag(<<"td">>) -> true;
is_html_tag(<<"template">>) -> true;
is_html_tag(<<"textarea">>) -> true;
is_html_tag(<<"tfoot">>) -> true;
is_html_tag(<<"th">>) -> true;
is_html_tag(<<"thead">>) -> true;
is_html_tag(<<"time">>) -> true;
is_html_tag(<<"title">>) -> true;
is_html_tag(<<"tr">>) -> true;
is_html_tag(<<"track">>) -> true;
is_html_tag(<<"tt">>) -> true;
is_html_tag(<<"u">>) -> true;
is_html_tag(<<"ul">>) -> true;
is_html_tag(<<"var">>) -> true;
is_html_tag(<<"video">>) -> true;
is_html_tag(<<"wbr">>) -> true;
is_html_tag(_) -> false.

  