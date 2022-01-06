%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
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
-export([
    serialize/2,
    default_opts/0
]).

-include("xqerl.hrl").

-define(XML, <<"http://www.w3.org/XML/1998/namespace">>).
-define(XHTML, <<"http://www.w3.org/1999/xhtml">>).
-define(SVG, <<"http://www.w3.org/2000/svg">>).
-define(MATHML, <<"http://www.w3.org/1998/Math/MathML">>).

% block array:array(_) warnings
-dialyzer(no_opaque).

-define(IS_ARRAY(A), is_tuple(A), element(1, A) =:= array).

serialize(Seq, Opts) ->
    Opts1 = maps:merge(default_opts(), Opts),
    do_serialize(Seq, Opts1).

default_opts() ->
    #{
        'allow-duplicate-names' => false,
        'byte-order-mark' => false,
        'cdata-section-elements' => [],
        'doctype-public' => <<>>,
        'doctype-system' => <<>>,
        'encoding' => utf8,
        'escape-uri-attributes' => false,
        'html-version' => 5.0,
        'include-content-type' => true,
        'indent' => false,
        'item-separator' => <<>>,
        'json-node-output-method' => xml,
        'media-type' => <<"application/xml">>,
        'method' => xml,
        'normalization-form' => none,
        'omit-xml-declaration' => true,
        'standalone' => omit,
        'suppress-indentation' => [],
        'undeclare-prefixes' => false,
        'use-character-maps' => #{},
        'version' => 1.0
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
norm_s1([]) ->
    [<<>>];
norm_s1(Seq) when is_list(Seq) ->
    norm_s1_(Seq);
norm_s1(Seq) ->
    norm_s1([Seq]).

norm_s1_([A | T]) when ?IS_ARRAY(A) ->
    xqerl_mod_array:flatten(#{}, A) ++ norm_s1_(T);
norm_s1_([H | T]) ->
    [H | norm_s1_(T)];
norm_s1_([]) ->
    [].

%% 2. For each item in S1, if the item is atomic, obtain the lexical
%%    representation of the item by casting it to an xs:string and copy the
%%    string representation to the new sequence; otherwise, copy the item to
%%    the new sequence. The new sequence is S2.
norm_s2([#xqAtomicValue{} = H | T]) ->
    [xqerl_types:cast_as(H, 'xs:string') | norm_s2(T)];
norm_s2([H | T]) when is_binary(H) ->
    [H | norm_s2(T)];
norm_s2([H | T]) when is_number(H); is_atom(H) ->
    [xqerl_types:cast_as(H, 'xs:string') | norm_s2(T)];
norm_s2([H | T]) ->
    [H | norm_s2(T)];
norm_s2([]) ->
    [].

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

norm_s3_1([V1, V2 | T]) when is_binary(V1), is_binary(V2) ->
    V3 = <<V1/binary, " ", V2/binary>>,
    norm_s3_1([V3 | T]);
norm_s3_1([H | T]) ->
    [H | norm_s3_1(T)];
norm_s3_1([]) ->
    [].

norm_s3_2([Seq], _) -> [Seq];
norm_s3_2([H | T], Sep) -> [H | norm_s3_3(T, Sep)].

norm_s3_3([H | T], Sep) ->
    [Sep, H | norm_s3_3(T, Sep)];
norm_s3_3([], _) ->
    [].

%% 4. For each item in S3, if the item is a string, create a text node in the
%%    new sequence whose string value is equal to the string; otherwise, copy
%%    the item to the new sequence. The new sequence is S4.
norm_s4([Val | T]) when is_binary(Val) ->
    [xqldb_mem_nodes:text({make_ref(), 0}, Val) | norm_s4(T)];
norm_s4([H | T]) ->
    [H | norm_s4(T)];
norm_s4([]) ->
    [].

%% 5. For each item in S4, if the item is a document node, copy its children
%%    to the new sequence; otherwise, copy the item to the new sequence.
%%    The new sequence is S5.
%% also, if this is a DB node, do deep copy for serialization
norm_s5([
    #{
        id := {_, _, _},
        nk := _
    } = H
    | T
]) ->
    ReturnTo = self(),
    F = fun() ->
        D = xqldb_nodes:deep_copy_node(H),
        ReturnTo ! {self(), D}
    end,
    S = erlang:spawn_link(F),
    H1 = fun() ->
        receive
            {S, V} -> V
        end
    end,
    norm_s5([H1 | T]);
norm_s5([#{nk := document, ch := []} | T]) ->
    norm_s5(T);
norm_s5([#{nk := document} = H | T]) ->
    xqldb_mem_nodes:children(H) ++ norm_s5(T);
norm_s5([H | T]) ->
    [H | norm_s5(T)];
norm_s5([]) ->
    [].

%% 6. For each subsequence of adjacent text nodes in S5, copy a single text
%%    node to the new sequence equal to the values of the text nodes in the
%%    subsequence concatenated in order. Any text nodes with values of zero
%%    length are dropped. Copy all other items to the new sequence.
%%    The new sequence is S6.
norm_s6([F | T]) when is_function(F, 0) ->
    norm_s6([F() | T]);
norm_s6([#{nk := document, ch := C} | T]) ->
    norm_s6(C ++ T);
norm_s6([#{nk := text, sv := <<>>} | T]) ->
    norm_s6(T);
norm_s6([#{nk := text, sv := V1} = Tx, #{nk := text, sv := V2} | T]) ->
    norm_s6([Tx#{sv := <<V1/binary, V2/binary>>} | T]);
norm_s6([H | T]) ->
    [H | norm_s6(T)];
norm_s6([]) ->
    [].

%% 7. It is a serialization error [err:SENR0001] if an item in S6 is an
%%    attribute node, a namespace node or a function. Otherwise, construct a
%%    new sequence, S7, that consists of a single document node and copy all
%%    the items in the sequence, which are all nodes, as children of that
%%    document node.
norm_s7(Seq) ->
    Ch = norm_s7_(Seq),
    Doc = xqldb_mem_nodes:document({make_ref(), 0}, <<>>, <<>>),
    xqldb_mem_nodes:add_children(Doc, Ch).

norm_s7_([#xqFunction{} | _]) -> ?err('SENR0001');
norm_s7_([#{nk := attribute} | _]) -> ?err('SENR0001');
norm_s7_([#{nk := namespace} | _]) -> ?err('SENR0001');
norm_s7_([Map | _]) when is_map(Map), not is_map_key(nk, Map) -> ?err('SENR0001');
norm_s7_([H | T]) -> [H | norm_s7_(T)];
norm_s7_([]) -> [].

%% S7 is the normalized sequence.

%% ====================================================================
%% Phases of Serialization: XML, HTML, XHTML and Text. (after normalization)
%% ====================================================================
%% 1. A meta element is added to the sequence along with discarding an
%%    existing meta element, as controlled by the include-content-type
%%    parameter for the XHTML and HTML output methods. This step is skipped
%%    for the other output methods defined by this specification.
html_head_meta(
    #{
        nn := {Ns, _, _},
        id := {Ref, _}
    } = Elem,
    #{
        'include-content-type' := true,
        encoding := Enc
    }
) ->
    HttpEquiv = xqldb_mem_nodes:attribute(
        {Ref, 0},
        {<<>>, <<>>, <<"http-equiv">>},
        <<"Content-Type">>,
        false,
        false,
        none
    ),
    ContText =
        case Enc of
            utf8 -> <<"text/html; charset=UTF-8">>;
            utf16 -> <<"text/html; charset=UTF-16">>;
            _ -> <<"text/html">>
        end,
    Content = xqldb_mem_nodes:attribute(
        {Ref, 0},
        {<<>>, <<>>, <<"content">>},
        ContText,
        false,
        false,
        none
    ),
    Meta = xqldb_mem_nodes:element({Ref, 0}, {Ns, <<>>, <<"meta">>}, none),
    Meta1 = xqldb_mem_nodes:add_attribute(Meta, Content),
    Meta2 = xqldb_mem_nodes:add_attribute(Meta1, HttpEquiv),
    Meta3 = xqldb_mem_nodes:add_children(Meta2, []),
    #{ch := Ch} = Elem1 = delete_old_meta(Elem),
    Elem1#{ch := [Meta3 | Ch]};
html_head_meta(Elem, _) ->
    Elem.

delete_old_meta(Elem) ->
    Children = xqldb_mem_nodes:children(Elem),
    Children1 = delete_old_meta_1(Children),
    Elem#{ch => Children1}.

delete_old_meta_1([#{nk := element, nn := {_, _, <<"meta">>}} = H | T]) ->
    Atts = xqldb_mem_nodes:attributes(H),
    case
        [
            1
         || #{
                nn := {_, _, <<"http-equiv">>},
                sv := Sv
            } <- Atts,
            string:lowercase(xqerl_lib:trim(Sv)) == <<"content-type">>
        ]
    of
        [] ->
            [H | delete_old_meta_1(T)];
        [1] ->
            delete_old_meta_1(T)
    end;
delete_old_meta_1([H | T]) ->
    [H | delete_old_meta_1(T)];
delete_old_meta_1([]) ->
    [].

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

-define(STR_REST(Str, Rest), <<Str, Rest/binary>>).
-define(CP_REST(Cp, Rest), <<Cp/utf8, Rest/binary>>).

encoder_fun(CMap) ->
    TextPattern = binary:compile_pattern([<<"<">>, <<">">>, <<"&">>, <<"\r">>]),
    fun(Bin) ->
        case binary:match(Bin, TextPattern) of
            nomatch ->
                encode_m_text_(Bin, CMap);
            _ ->
                encode_text_(Bin, CMap)
        end
    end.

do_serialize(
    Seq,
    #{
        method := adaptive,
        'item-separator' := <<>>
    } = Opts
) ->
    do_serialize_adaptive(Seq, Opts#{'item-separator' := <<$\n>>});
do_serialize(Seq, #{method := adaptive} = Opts) ->
    do_serialize_adaptive(Seq, Opts);
do_serialize(Seq, #{method := json} = Opts) ->
    do_serialize_json(Seq, Opts);
do_serialize(Seq, #{method := text} = Opts) ->
    do_serialize_text(Seq, Opts);
do_serialize(
    Seq,
    #{
        method := xml,
        'use-character-maps' := CMap
    } = Opts
) ->
    Norm = normalize_seq(Seq, Opts),
    TextEncoder = encoder_fun(CMap),
    do_serialize_xml(Norm, Opts#{text_encoder => TextEncoder});
do_serialize(Seq, #{method := xhtml} = Opts) ->
    Norm = normalize_seq(Seq, Opts),
    do_serialize_xhtml(Norm, Opts);
do_serialize(Seq, #{method := html} = Opts) ->
    Norm = normalize_seq(Seq, Opts),
    do_serialize_html(Norm, Opts);
do_serialize(Seq, _) ->
    Seq.

do_serialize_json(
    #{nk := _} = Node,
    #{'json-node-output-method' := Method} = Opts
) ->
    NewOpts = (default_opts())#{
        method := Method,
        'omit-xml-declaration' := true
    },
    Val = do_serialize(Node, NewOpts),
    to_json_string(Val, Opts);
do_serialize_json(A, Opts) when ?IS_ARRAY(A) ->
    Vals1 = [do_serialize_json(V, Opts) || V <- array:to_list(A)],
    Vals2 = string_join(Vals1, <<$,>>),
    <<$[, Vals2/binary, $]>>;
do_serialize_json(Map, Opts) when is_map(Map) ->
    KVs = maps:values(Map),
    KVs1 = [
        begin
            Key = to_json_string(K, Opts),
            Val = do_serialize_json(V, Opts),
            {Key, Val}
        end
     || {K, V} <- KVs
    ],
    ok =
        case maps:get('allow-duplicate-names', Opts) of
            true -> ok;
            false -> check_duplicate_keys(KVs1, [])
        end,
    KVs2 = [<<(normalize_string_value(K, Opts))/binary, $:, V/binary>> || {K, V} <- KVs1],
    Body = string_join(KVs2, <<$,>>),
    <<"{", Body/binary, "}">>;
do_serialize_json(#xqAtomicValue{value = nan}, _Opts) ->
    ?err('SERE0020');
do_serialize_json(#xqAtomicValue{value = infinity}, _Opts) ->
    ?err('SERE0020');
do_serialize_json(#xqAtomicValue{value = neg_infinity}, _Opts) ->
    ?err('SERE0020');
do_serialize_json(#xqAtomicValue{value = neg_zero}, _Opts) ->
    <<"-0">>;
do_serialize_json(nan, _Opts) ->
    ?err('SERE0020');
do_serialize_json(infinity, _Opts) ->
    ?err('SERE0020');
do_serialize_json(neg_infinity, _Opts) ->
    ?err('SERE0020');
do_serialize_json(neg_zero, _Opts) ->
    <<"-0">>;
do_serialize_json(Val, _Opts) when is_number(Val) ->
    xqerl_numeric:string(Val);
do_serialize_json(#xqAtomicValue{type = Type, value = Val}, _Opts) when ?xs_numeric(Type) ->
    xqerl_numeric:string(Val);
do_serialize_json(true, _Opts) ->
    <<"true">>;
do_serialize_json(false, _Opts) ->
    <<"false">>;
do_serialize_json(Bin, Opts) when is_binary(Bin) ->
    normalize_string_value(to_json_string(Bin, Opts), Opts);
do_serialize_json(#xqAtomicValue{} = Atomic, Opts) ->
    normalize_string_value(to_json_string(Atomic, Opts), Opts);
do_serialize_json([], _Opts) ->
    <<"null">>;
do_serialize_json([V], Opts) ->
    do_serialize_json(V, Opts);
do_serialize_json([_ | _], _Opts) ->
    ?err('SERE0023');
do_serialize_json(_, _) ->
    ?err('SERE0021').

do_serialize_adaptive(Seq, #{'item-separator' := Sep} = Opts) when is_list(Seq) ->
    Seq1 = [do_serialize_adaptive(S, Opts) || S <- Seq],
    string_join(Seq1, Sep);
do_serialize_adaptive(#{nk := _} = Node, #{'use-character-maps' := CMap} = Opts) ->
    TextEncoder = encoder_fun(CMap),
    do_serialize_xml(Node, Opts#{text_encoder => TextEncoder});
do_serialize_adaptive(true, _Opts) ->
    <<"true()">>;
do_serialize_adaptive(false, _Opts) ->
    <<"false()">>;
do_serialize_adaptive(Val, _Opts) when is_binary(Val) ->
    Q = duplicate_quotes(Val, <<>>),
    <<$", Q/binary, $">>;
do_serialize_adaptive(#xqAtomicValue{type = Type, value = Val}, _Opts) when
    Type == 'xs:untypedAtomic'; Type == 'xs:anyURI'; ?xs_string(Type)
->
    Q = duplicate_quotes(Val, <<>>),
    <<$", Q/binary, $">>;
do_serialize_adaptive(Val, _Opts) when is_integer(Val) ->
    xqerl_numeric:string(Val);
do_serialize_adaptive(#xqAtomicValue{type = Type, value = Val}, _Opts) when ?xs_decimal(Type) ->
    xqerl_numeric:string(Val);
do_serialize_adaptive(Val, _Opts) when
    is_float(Val); Val == neg_zero; Val == infinity; Val == nan; Val == neg_infinity
->
    Pic = <<"0.0##########################e0">>,
    xqerl_mod_fn:'format-number'(#{}, Val, Pic, #dec_format{infinity = "INF"});
do_serialize_adaptive(
    #xqAtomicValue{
        type = Type,
        value = #qname{
            namespace = Ns,
            local_name = Ln
        }
    },
    _Opts
) when Type == 'xs:QName'; Type == 'xs:NOTATION' ->
    <<$Q, ${, Ns/binary, $}, Ln/binary>>;
do_serialize_adaptive(#xqAtomicValue{type = Type} = Val, _Opts) when ?xs_duration(Type) ->
    TypeBin = <<"xs:duration">>,
    Str = xqerl_types:string_value(Val),
    <<TypeBin/binary, $(, $", Str/binary, $", $)>>;
do_serialize_adaptive(#xqAtomicValue{type = Type} = Val, _Opts) ->
    TypeBin = atom_to_binary(Type, utf8),
    Str = xqerl_types:string_value(Val),
    <<TypeBin/binary, $(, $", Str/binary, $", $)>>;
do_serialize_adaptive(A, Opts) when ?IS_ARRAY(A) ->
    Vals1 = [
        do_serialize_adaptive_1(V, Opts)
     || V <- array:to_list(A)
    ],
    Vals2 = string_join(Vals1, <<$,>>),
    <<$[, Vals2/binary, $]>>;
do_serialize_adaptive(Map, Opts) when is_map(Map) ->
    KVs = maps:values(Map),
    Entries = [
        begin
            Key = do_serialize_adaptive(K, Opts),
            Val = do_serialize_adaptive_1(V, Opts),
            <<Key/binary, $:, Val/binary>>
        end
     || {K, V} <- KVs
    ],
    Body = string_join(Entries, <<$,>>),
    <<"map{", Body/binary, "}">>;
do_serialize_adaptive(#xqFunction{name = undefined, arity = Arity}, _Opts) ->
    A = integer_to_binary(Arity),
    <<"(anonymous-function)#", A/binary>>;
do_serialize_adaptive(
    #xqFunction{
        name = #qname{
            namespace = Ns,
            local_name = Ln
        },
        arity = Arity
    },
    _Opts
) ->
    Head =
        case Ns of
            <<"http://www.w3.org/2005/xpath-functions">> ->
                <<"fn:">>;
            <<"http://www.w3.org/2005/xpath-functions/math">> ->
                <<"math:">>;
            <<"http://www.w3.org/2005/xpath-functions/map">> ->
                <<"map:">>;
            <<"http://www.w3.org/2005/xpath-functions/array">> ->
                <<"array:">>;
            <<"http://www.w3.org/2001/XMLSchema">> ->
                <<"xs:">>;
            _ ->
                <<$Q, ${, Ns/binary, $}>>
        end,
    A = integer_to_binary(Arity),
    <<Head/binary, Ln/binary, "#", A/binary>>;
do_serialize_adaptive(Seq, _Opts) ->
    Seq.

do_serialize_adaptive_seq([V], Opts) ->
    do_serialize_adaptive(V, Opts);
do_serialize_adaptive_seq(Vals, Opts) ->
    Vals1 = [do_serialize_adaptive(V, Opts) || V <- Vals],
    Vals2 = string_join(Vals1, <<$,>>),
    <<$(, Vals2/binary, $)>>.

do_serialize_adaptive_1(V, Opts) when is_list(V) -> do_serialize_adaptive_seq(V, Opts);
do_serialize_adaptive_1(V, Opts) -> do_serialize_adaptive(V, Opts).

do_serialize_text(Seq, Opts) ->
    Norm = normalize_seq(Seq, Opts),
    xqldb_mem_nodes:string_value(Norm).

do_serialize_html(Seq, #{'html-version' := 5.0} = Opts) ->
    Seq1 = normalize_prefixes(Seq, #{
        <<>> => <<>>,
        <<"xml">> => ?XML
    }),
    do_serialize_html(Seq1, Opts, #{
        <<>> => <<>>,
        <<"xml">> => ?XML
    });
do_serialize_html(Seq, Opts) ->
    do_serialize_html(Seq, Opts, #{
        <<>> => <<>>,
        <<"xml">> => ?XML
    }).

do_serialize_html(#{nk := document} = Doc, Opts, NsInScope) ->
    Ch = xqldb_mem_nodes:children(Doc),
    IsWellFormed = is_well_formed(Ch),
    [L | _] = [L || #{nn := {_, _, L}, nk := element} <- Ch],
    Decl = do_xml_declaration(IsWellFormed, L, Opts#{'omit-xml-declaration' := true}),
    Body = <<
        <<(do_serialize_html(C, Opts, NsInScope))/binary>>
     || C <- Ch
    >>,
    <<Decl/binary, Body/binary>>;
do_serialize_html(
    #{
        nk := 'processing-instruction',
        nn := {_, _, Ln}
    } = Node,
    _Opts,
    _
) ->
    % no trailing '?' in html
    case xqldb_mem_nodes:string_value(Node) of
        <<>> -> <<"<?", Ln/binary, " >">>;
        Tgt -> <<"<?", Ln/binary, " ", Tgt/binary, ">">>
    end;
do_serialize_html(#{nk := comment} = Node, _Opts, _) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    <<"<!--", Txt/binary, "-->">>;
do_serialize_html(#{nk := text} = Node, _Opts, _) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    encode_html_text(Txt);
do_serialize_html(#{nk := cdata} = Node, _Opts, _) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    encode_cdata(Txt);
do_serialize_html(#{nk := script} = Node, _Opts, _) ->
    xqldb_mem_nodes:string_value(Node);
do_serialize_html(
    #{
        nk := attribute,
        nn := NodeName
    } = Node,
    #{
        'escape-uri-attributes' := true,
        parent_name := ParentNodeName,
        'use-character-maps' := CMap
    },
    _
) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    QNm = encode_qname(NodeName),
    AttTxt = att_text(ParentNodeName, NodeName, Txt, CMap),
    <<QNm/binary, "=\"", AttTxt/binary, "\"">>;
do_serialize_html(
    #{
        nk := attribute,
        nn := NodeName
    } = Node,
    #{'use-character-maps' := CMap},
    _
) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    QNm = encode_qname(NodeName),
    AttTxt = encode_att_text(Txt, CMap),
    <<QNm/binary, "=\"", AttTxt/binary, "\"">>;
do_serialize_html(
    #{
        nk := element,
        ch := _,
        ns := Ns,
        nn := {ENs, _, Ln} = NodeName
    } = Node,
    #{'html-version' := HtmlV} = Opts,
    InScopeNamespaces
) ->
    At = xqldb_mem_nodes:attributes(Node),
    QNm = encode_qname(NodeName),
    NewNs = get_new_namespaces(Ns, InScopeNamespaces),
    %?dbg("NewNs", NewNs),
    InScopeNamespaces1 = maps:merge(InScopeNamespaces, Ns),
    %NsStr = <<>>,
    NsStr = <<
        <<" ", (encode_namespace(P, N))/binary>>
     || {P, N} <- NewNs
    >>,
    Atts = <<
        <<" ", (do_serialize_html(A, Opts#{parent_name => NodeName}, InScopeNamespaces1))/binary>>
     || A <- At
    >>,
    IsCdataNode = is_cdata_node(NodeName, Opts),
    Node1 =
        case Ln of
            <<"head">> ->
                html_head_meta(Node, Opts);
            _ ->
                Node
        end,
    ChNds = xqldb_mem_nodes:children(Node1),
    IsHtml = ENs == <<>> orelse (ENs == ?XHTML andalso HtmlV == 5.0),
    ChFun = fun
        (#{nk := text} = Txt) when Ln == <<"script">>; Ln == <<"style">> ->
            Txt#{nk := script};
        (#{nk := text} = Txt) when IsCdataNode andalso not IsHtml ->
            Txt#{nk := cdata};
        (O) ->
            O
    end,
    Ch = lists:map(ChFun, ChNds),
    {Indent, Opts2} = indent_opts(NodeName, ChNds, Opts),
    Chld = <<
        <<Indent/binary, (do_serialize_html(C, Opts2, InScopeNamespaces1))/binary>>
     || C <- Ch
    >>,
    Empty =
        case HtmlV == 5.0 of
            true ->
                is_void_element(NodeName);
            false ->
                is_empty_element(NodeName)
        end,
    case Ch of
        [] when Empty, IsHtml ->
            <<"<", QNm/binary, NsStr/binary, Atts/binary, ">">>;
        _ ->
            <<"<", QNm/binary, NsStr/binary, Atts/binary, ">", Chld/binary, Indent/binary, "</",
                QNm/binary, ">">>
    end;
do_serialize_html(_, _, _) ->
    ?err('SENR0001').

do_serialize_xhtml(Seq, #{'html-version' := 5.0} = Opts) ->
    Seq1 = normalize_prefixes(Seq, #{
        <<>> => <<>>,
        <<"xml">> => ?XML
    }),
    do_serialize_xhtml(Seq1, Opts, #{
        <<>> => <<>>,
        <<"xml">> => ?XML
    });
do_serialize_xhtml(Seq, Opts) ->
    do_serialize_xhtml(Seq, Opts, #{
        <<>> => <<>>,
        <<"xml">> => ?XML
    }).

do_serialize_xhtml(#{nk := document} = Doc, Opts, NsInScope) ->
    Ch = xqldb_mem_nodes:children(Doc),
    IsWellFormed = is_well_formed(Ch),
    Decl =
        case html_doctype(Ch, Opts) of
            <<>> ->
                [L | _] = [L || #{nn := {_, _, L}, nk := element} <- Ch],
                do_xml_declaration(IsWellFormed, L, Opts);
            D ->
                D
        end,
    Body = <<
        <<(do_serialize_xhtml(C, Opts, NsInScope))/binary>>
     || C <- Ch
    >>,
    <<Decl/binary, Body/binary>>;
do_serialize_xhtml(
    #{
        nk := 'processing-instruction',
        nn := {_, _, Ln}
    } = Node,
    _Opts,
    _
) ->
    case xqldb_mem_nodes:string_value(Node) of
        <<>> ->
            % no trailing whitespace allowed
            <<"<?", Ln/binary, "?>">>;
        Tgt ->
            <<"<?", Ln/binary, " ", Tgt/binary, "?>">>
    end;
do_serialize_xhtml(#{nk := comment} = Node, _Opts, _) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    <<"<!--", Txt/binary, "-->">>;
do_serialize_xhtml(#{nk := text} = Node, _Opts, _) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    encode_html_text(Txt);
do_serialize_xhtml(#{nk := cdata} = Node, _Opts, _) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    encode_cdata(Txt);
do_serialize_xhtml(#{nk := script} = Node, _Opts, _) ->
    xqldb_mem_nodes:string_value(Node);
do_serialize_xhtml(
    #{
        nk := attribute,
        nn := NodeName
    } = Node,
    #{
        'escape-uri-attributes' := true,
        parent_name := ParentNodeName,
        'use-character-maps' := CMap
    },
    _
) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    QNm = encode_qname(NodeName),
    AttTxt = att_text(ParentNodeName, NodeName, Txt, CMap),
    <<QNm/binary, "=\"", AttTxt/binary, "\"">>;
do_serialize_xhtml(
    #{
        nk := attribute,
        nn := NodeName
    } = Node,
    #{'use-character-maps' := CMap},
    _
) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    QNm = encode_qname(NodeName),
    AttTxt = encode_att_text(Txt, CMap),
    <<QNm/binary, "=\"", AttTxt/binary, "\"">>;
do_serialize_xhtml(
    #{
        nk := element,
        ch := _,
        ns := Ns,
        nn := {_, _, Ln} = NodeName
    } = Node,
    #{'html-version' := HtmlV} = Opts,
    InScopeNamespaces
) ->
    At = xqldb_mem_nodes:attributes(Node),
    QNm = encode_qname(NodeName),
    NewNs = get_new_namespaces(Ns, InScopeNamespaces),
    InScopeNamespaces1 = maps:merge(InScopeNamespaces, Ns),
    NsStr = <<
        <<" ", (encode_namespace(P, N))/binary>>
     || {P, N} <- NewNs
    >>,
    Atts = <<
        <<" ", (do_serialize_xhtml(A, Opts#{parent_name => NodeName}, InScopeNamespaces1))/binary>>
     || A <- At
    >>,
    IsCdataNode = is_cdata_node(NodeName, Opts),
    Node1 =
        case Ln of
            <<"head">> ->
                html_head_meta(Node, Opts);
            _ ->
                Node
        end,
    ChNds = xqldb_mem_nodes:children(Node1),
    ChFn = fun
        (#{nk := text} = Txt) when Ln == <<"script">>; Ln == <<"style">> ->
            Txt#{nk := script};
        (#{nk := text} = Txt) when IsCdataNode ->
            Txt#{nk := cdata};
        (O) ->
            O
    end,
    Ch = lists:map(ChFn, ChNds),
    {Indent, Opts2} = indent_opts(NodeName, ChNds, Opts),
    Chld = <<
        <<Indent/binary, (do_serialize_xhtml(C, Opts2, InScopeNamespaces1))/binary>>
     || C <- Ch
    >>,
    Empty =
        case HtmlV == 5.0 of
            true ->
                is_void_element(NodeName);
            false ->
                is_empty_element(NodeName)
        end,
    IsHtml = is_html_tag(NodeName, HtmlV),
    case Ch of
        [] when Empty, IsHtml ->
            <<"<", QNm/binary, NsStr/binary, Atts/binary, " />", Indent/binary>>;
        _ ->
            <<"<", QNm/binary, NsStr/binary, Atts/binary, ">", Chld/binary, Indent/binary, "</",
                QNm/binary, ">">>
    end;
do_serialize_xhtml(_, _, _) ->
    ?err('SENR0001').

do_serialize_xml(Seq, Opts) ->
    IoList = do_serialize_xml(Seq, Opts, #{
        <<>> => <<>>,
        <<"xml">> => ?XML
    }),
    iolist_to_binary(IoList).

do_serialize_xml(#{nk := document} = Doc, Opts, NsInScope) ->
    Ch = xqldb_mem_nodes:children_no_p(Doc),
    Decl =
        case is_well_formed(Ch) of
            true ->
                [L | _] = [L || #{nn := {_, _, L}, nk := element} <- Ch],
                do_xml_declaration(true, L, Opts);
            false ->
                do_xml_declaration(false, <<>>, Opts)
        end,
    Body = [
        do_serialize_xml(C, Opts, NsInScope)
     || C <- Ch
    ],
    [Decl | Body];
do_serialize_xml(
    #{
        nk := 'processing-instruction',
        nn := {_, _, Ln}
    } = Node,
    _Opts,
    _
) ->
    case xqldb_mem_nodes:string_value(Node) of
        <<>> -> <<"<?", Ln/binary, " ?>">>;
        Tgt -> <<"<?", Ln/binary, " ", Tgt/binary, "?>">>
    end;
do_serialize_xml(#{nk := comment} = Node, _Opts, _) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    [<<"<!--">>, Txt, <<"-->">>];
do_serialize_xml(#{nk := text} = Node, Opts, _) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    encode_text(Txt, Opts);
do_serialize_xml(#{nk := cdata} = Node, _Opts, _) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    encode_cdata(Txt);
do_serialize_xml(
    #{
        nk := attribute,
        nn := NodeName
    } = Node,
    #{'use-character-maps' := CMap},
    _
) ->
    Txt = xqldb_mem_nodes:string_value(Node),
    QNm = encode_qname(NodeName),
    AttTxt = encode_att_text(Txt, CMap),
    [QNm, "=\"", AttTxt, "\""];
do_serialize_xml(
    #{
        nk := element,
        ch := _,
        ns := Ns,
        nn := NodeName
    } = Node,
    Opts,
    InScopeNamespaces
) ->
    At = xqldb_mem_nodes:attributes_no_p(Node),
    QNm = encode_qname(NodeName),
    NewNs = get_new_namespaces(Ns, InScopeNamespaces),
    InScopeNamespaces1 = maps:merge(InScopeNamespaces, Ns),
    NsStr = [
        [<<" ">>, encode_namespace(P, N)]
     || {P, N} <- NewNs, P =/= <<"xml">>
    ],
    Atts = [
        [<<" ">>, do_serialize_xml(A, Opts, InScopeNamespaces1)]
     || A <- At
    ],
    IsCdataNode = is_cdata_node(NodeName, Opts),
    ChNds = xqldb_mem_nodes:children_no_p(Node),
    ChFun = fun
        (#{nk := text} = Txt) when IsCdataNode ->
            Txt#{nk := cdata};
        (O) ->
            O
    end,
    Ch = lists:map(ChFun, ChNds),
    {Indent, Opts2} = indent_opts(NodeName, ChNds, Opts),
    Chld = [
        [Indent, do_serialize_xml(C, Opts2, InScopeNamespaces1)]
     || C <- Ch
    ],
    case Ch of
        [] ->
            [<<"<">>, QNm, NsStr, Atts, <<"/>">>, Indent];
        _ ->
            [<<"<">>, QNm, NsStr, Atts, <<">">>, Chld, Indent, <<"</">>, QNm, <<">">>]
    end;
do_serialize_xml(_, _, _) ->
    ?err('SENR0001').

indent_opts(NodeName, ChNds, Opts) ->
    case can_indent(NodeName, ChNds, Opts) of
        true -> {<<"\n">>, Opts};
        false -> {<<>>, Opts#{indent := false}}
    end.

encode_namespace(<<"xml">>, _) ->
    <<>>;
encode_namespace(<<>>, Ns) ->
    Ns1 = encode_ns_text(Ns),
    <<"xmlns=\"", Ns1/binary, "\"">>;
encode_namespace(Px, Ns) ->
    Ns1 = encode_ns_text(Ns),
    <<"xmlns:", Px/binary, "=\"", Ns1/binary, "\"">>.

get_new_namespaces(New, Old) ->
    [
        {K, V}
     || {K, V} <- maps:to_list(New),
        maps:find(K, Old) =/= {ok, V}
    ].

normalize_prefixes(#{nk := document} = Node, Nss) ->
    Ch = xqldb_mem_nodes:children(Node),
    Ch2 = [normalize_prefixes(N, Nss) || N <- Ch],
    xqldb_mem_nodes:add_children(Node, Ch2);
normalize_prefixes(
    #{
        nk := element,
        ns := ENs,
        nn := {Ns, _, Ln}
    } = Node,
    Nss
) when Ns == ?XHTML; Ns == ?SVG; Ns == ?MATHML ->
    Atts = xqldb_mem_nodes:attributes(Node),
    Child = xqldb_mem_nodes:children(Node),
    UsedPxs = [P || #{nn := {_, P, _}} <- Atts, P =/= <<>>],
    Keep = maps:with(UsedPxs, maps:merge(Nss, ENs)),
    Added = Keep#{<<>> => Ns},
    NewChild = [normalize_prefixes(C, Added) || C <- Child],
    Node#{
        ns := Added,
        nn := {Ns, <<>>, Ln},
        ch => NewChild
    };
normalize_prefixes(
    #{
        nk := element,
        ns := ENs
    } = Node,
    Nss
) ->
    Child = xqldb_mem_nodes:children(Node),
    NewChild = [normalize_prefixes(C, maps:merge(Nss, ENs)) || C <- Child],
    Node#{ch => NewChild};
normalize_prefixes(Node, _) ->
    Node.

%% XXX move encoders to nifs
encode_text(Bin, #{text_encoder := TextEncoder}) ->
    TextEncoder(Bin).

encode_m_text_(Bin, CMap) ->
    case maps:size(CMap) of
        0 ->
            Bin;
        _ ->
            <<
                <<
                    (case B of
                        _ when is_map_key(B, CMap) ->
                            maps:get(B, CMap);
                        _ ->
                            <<B>>
                    end)/binary
                >>
             || <<B>> <= Bin
            >>
    end.

encode_text_(Bin, CMap) ->
    <<
        <<
            (case B of
                _ when is_map_key(B, CMap) ->
                    maps:get(B, CMap);
                $& ->
                    <<"&amp;">>;
                $< ->
                    <<"&lt;">>;
                $> ->
                    <<"&gt;">>;
                $" ->
                    <<"&quot;">>;
                $' ->
                    <<"&apos;">>;
                $\r ->
                    <<"&#xD;">>;
                _ ->
                    <<B>>
            end)/binary
        >>
     || <<B>> <= Bin
    >>.

%% encode_text(<<>>,Acc) -> Acc;
%% encode_text(?STR_REST("<",Tail),Acc) ->
%%    encode_text(Tail,<<Acc/binary,"&lt;">>);
%% encode_text(?STR_REST(">",Tail),Acc) ->
%%    encode_text(Tail,<<Acc/binary, "&gt;">>);
%% encode_text(?STR_REST("&", Tail),Acc) ->
%%    encode_text(Tail,<<Acc/binary,"&amp;">>);
%% encode_text(<<H, Tail/binary>>, Acc) when H == 16#0d ->
%%    encode_text(Tail,<<Acc/binary,"&#xD;">>);
%% encode_text(<<H, Tail/binary>>, Acc) when H < 127 ->
%%    encode_text(Tail,<<Acc/binary, H>>);
%% encode_text(?CP_REST(H, Tail), Acc) when H >= 127 ->
%%    encode_text(Tail,<<Acc/binary,"&#x",(integer_to_binary(H,16))/binary,";">>).

encode_html_text(Bin) ->
    encode_html_text(Bin, <<>>).

encode_html_text(<<>>, Acc) ->
    Acc;
encode_html_text(?STR_REST("<", Tail), Acc) ->
    encode_html_text(Tail, <<Acc/binary, "&lt;">>);
encode_html_text(?STR_REST(">", Tail), Acc) ->
    encode_html_text(Tail, <<Acc/binary, "&gt;">>);
encode_html_text(?STR_REST("&", Tail), Acc) ->
    encode_html_text(Tail, <<Acc/binary, "&amp;">>);
encode_html_text(?CP_REST(16#0d, Tail), Acc) ->
    encode_html_text(Tail, <<Acc/binary, "&#xD;">>);
encode_html_text(?CP_REST(H, Tail), Acc) ->
    if
        H >= 127 ->
            Ref = reference(H),
            encode_html_text(Tail, <<Acc/binary, Ref/binary>>);
        true ->
            encode_html_text(Tail, <<Acc/binary, H/utf8>>)
    end.

encode_cdata(Txt) -> encode_cdata(Txt, <<"<![CDATA[">>).

encode_cdata(?STR_REST("]]>", Tail), Acc) ->
    encode_cdata(Tail, <<Acc/binary, "]]]]><![CDATA[>">>);
encode_cdata(?CP_REST(H, Tail), Acc) ->
    encode_cdata(Tail, <<Acc/binary, H/utf8>>);
encode_cdata(<<>>, Acc) ->
    <<Acc/binary, "]]>">>.

encode_att_text(Bin, CMap) -> encode_att_text(Bin, <<>>, CMap).

encode_att_text(<<>>, Acc, _) ->
    Acc;
encode_att_text(?CP_REST(H, Tail), Acc, CMap) when is_map_key(H, CMap) ->
    S = maps:get(H, CMap),
    encode_att_text(Tail, <<Acc/binary, S/binary>>, CMap);
encode_att_text(?CP_REST(H, Tail), Acc, CMap) when H == 16#0d ->
    encode_att_text(Tail, <<Acc/binary, "&#xD;">>, CMap);
encode_att_text(?CP_REST(H, Tail), Acc, CMap) when H == 16#0a ->
    encode_att_text(Tail, <<Acc/binary, "&#xA;">>, CMap);
encode_att_text(?CP_REST(H, Tail), Acc, CMap) when H == 16#09 ->
    encode_att_text(Tail, <<Acc/binary, "&#x9;">>, CMap);
encode_att_text(?CP_REST(H, Tail), Acc, CMap) when H >= 127 ->
    encode_att_text(Tail, <<Acc/binary, "&#x", (integer_to_binary(H, 16))/binary, ";">>, CMap);
encode_att_text(?STR_REST("\"", Tail), Acc, CMap) ->
    encode_att_text(Tail, <<Acc/binary, "&quot;">>, CMap);
encode_att_text(?STR_REST("<", Tail), Acc, CMap) ->
    encode_att_text(Tail, <<Acc/binary, "&lt;">>, CMap);
encode_att_text(?STR_REST(">", Tail), Acc, CMap) ->
    encode_att_text(Tail, <<Acc/binary, "&gt;">>, CMap);
encode_att_text(?STR_REST("&", Tail), Acc, CMap) ->
    encode_att_text(Tail, <<Acc/binary, "&amp;">>, CMap);
encode_att_text(?STR_REST("{{", Tail), Acc, CMap) ->
    encode_att_text(Tail, <<Acc/binary, "{{">>, CMap);
encode_att_text(?STR_REST("{", Tail), Acc, CMap) ->
    encode_att_text(Tail, <<Acc/binary, "{{">>, CMap);
encode_att_text(?STR_REST("}}", Tail), Acc, CMap) ->
    encode_att_text(Tail, <<Acc/binary, "}}">>, CMap);
encode_att_text(?STR_REST("}", Tail), Acc, CMap) ->
    encode_att_text(Tail, <<Acc/binary, "}}">>, CMap);
encode_att_text(?CP_REST(H, Tail), Acc, CMap) ->
    encode_att_text(Tail, <<Acc/binary, H/utf8>>, CMap).

encode_uri_att_text(Bin) ->
    Nfc = unicode:characters_to_nfc_binary(Bin),
    Enc = <<(encode_uri_att_text_c(C)) || <<C>> <= Nfc>>,
    encode_att_text(Enc, <<>>).

encode_uri_att_text_c(C) when C >= 32, C =< 126 -> <<C>>;
encode_uri_att_text_c(C) -> <<"%", (integer_to_binary(C, 16))/binary>>.

encode_ns_text(Bin) -> encode_ns_text(Bin, <<>>).

encode_ns_text(<<>>, Acc) ->
    Acc;
encode_ns_text(?CP_REST(H, Tail), Acc) when H >= 255; H == 9; H == 10; H == 13 ->
    encode_ns_text(Tail, <<Acc/binary, "&#", (integer_to_binary(H))/binary, ";">>);
encode_ns_text(?STR_REST("\"", Tail), Acc) ->
    encode_ns_text(Tail, <<Acc/binary, "&quot;">>);
encode_ns_text(?STR_REST("<", Tail), Acc) ->
    encode_ns_text(Tail, <<Acc/binary, "&lt;">>);
encode_ns_text(?STR_REST(">", Tail), Acc) ->
    encode_ns_text(Tail, <<Acc/binary, "&gt;">>);
encode_ns_text(?STR_REST("&", Tail), Acc) ->
    encode_ns_text(Tail, <<Acc/binary, "&amp;">>);
encode_ns_text(?CP_REST(H, Tail), Acc) ->
    encode_ns_text(Tail, <<Acc/binary, H/utf8>>).

encode_qname({_, Px, Ln}) when is_atom(Px); Px == <<>> ->
    Ln;
encode_qname({_, Px, Ln}) ->
    <<Px/binary, ":", Ln/binary>>.

encode_binary(Val, utf8) -> Val;
encode_binary(Val, Enc) -> unicode:characters_to_binary(Val, unicode, Enc).

is_uri_attribute({PNs, _, PLn}, {Ns, _, Ln}) when PNs == <<>> orelse PNs == ?XHTML, Ns == <<>> ->
    Pn = string:lowercase(PLn),
    case string:lowercase(Ln) of
        <<"action">> ->
            Pn == <<"form">>;
        <<"archive">> ->
            Pn == <<"object">>;
        <<"background">> ->
            Pn == <<"body">>;
        <<"cite">> ->
            lists:member(Pn, [<<"blockquote">>, <<"del">>, <<"ins">>, <<"q">>]);
        <<"classid">> ->
            Pn == <<"object">>;
        <<"codebase">> ->
            lists:member(Pn, [<<"applet">>, <<"object">>]);
        <<"data">> ->
            Pn == <<"object">>;
        <<"datasrc">> ->
            lists:member(Pn, [
                <<"button">>,
                <<"div">>,
                <<"input">>,
                <<"object">>,
                <<"select">>,
                <<"span">>,
                <<"table">>,
                <<"textarea">>
            ]);
        <<"for">> ->
            Pn == <<"script">>;
        <<"formaction">> ->
            lists:member(Pn, [<<"button">>, <<"input">>]);
        <<"href">> ->
            lists:member(Pn, [<<"a">>, <<"area">>, <<"base">>, <<"link">>]);
        <<"icon">> ->
            Pn == <<"command">>;
        <<"longdesc">> ->
            lists:member(Pn, [<<"frame">>, <<"iframe">>, <<"img">>]);
        <<"manifest">> ->
            Pn == <<"html">>;
        <<"name">> ->
            Pn == <<"a">>;
        <<"poster">> ->
            Pn == <<"video">>;
        <<"profile">> ->
            Pn == <<"head">>;
        <<"src">> ->
            lists:member(Pn, [
                <<"audio">>,
                <<"embed">>,
                <<"frame">>,
                <<"iframe">>,
                <<"img">>,
                <<"input">>,
                <<"script">>,
                <<"source">>,
                <<"track">>,
                <<"video">>
            ]);
        <<"usemap">> ->
            lists:member(Pn, [<<"img">>, <<"input">>, <<"object">>]);
        <<"value">> ->
            Pn == <<"input">>;
        _ ->
            false
    end;
is_uri_attribute(_, _) ->
    false.

att_text(ParentNodeName, NodeName, Txt, CMap) ->
    case is_uri_attribute(ParentNodeName, NodeName) of
        true ->
            encode_uri_att_text(Txt);
        false ->
            encode_att_text(Txt, CMap)
    end.

string_join([], _With) -> <<>>;
string_join([H], _With) -> H;
string_join([H | T], With) -> string_join(T, With, H).

string_join([], _, Acc) -> Acc;
string_join([H | T], With, Acc) -> string_join(T, With, <<Acc/binary, With/binary, H/binary>>).

duplicate_quotes(<<$", Rest/binary>>, Acc) ->
    duplicate_quotes(Rest, <<Acc/binary, $", $">>);
duplicate_quotes(<<C/utf8, Rest/binary>>, Acc) ->
    duplicate_quotes(Rest, <<Acc/binary, C/utf8>>);
duplicate_quotes(<<>>, Acc) ->
    Acc.

to_json_string(Val, _Opts) ->
    Str = xqerl_types:string_value(Val),
    Esc = xqerl_json:xml_no_escape(Str, <<>>),
    <<$", Esc/binary, $">>.

normalize_string_value(Val, #{
    'normalization-form' := nfc,
    'use-character-maps' := Map
}) ->
    case maps:size(Map) of
        0 ->
            unicode:characters_to_nfc_binary(Val);
        _ ->
            norm_nfc_mapped(Val, Map, <<>>, <<>>)
    end;
normalize_string_value(Val, #{
    'normalization-form' := none,
    'use-character-maps' := Map,
    encoding := Enc
}) ->
    case maps:size(Map) of
        0 ->
            encode_binary(Val, Enc);
        _ ->
            encode_binary(norm_mapped(Val, Map, <<>>), Enc)
    end.

norm_nfc_mapped(<<C/utf8, Val/binary>>, Map, Acc, Buf) when is_map_key(C, Map) ->
    Str = maps:get(C, Map),
    Buf1 = unicode:characters_to_nfc_binary(Buf),
    Acc1 = <<Acc/binary, Buf1/binary, Str/binary>>,
    norm_nfc_mapped(Val, Map, Acc1, <<>>);
norm_nfc_mapped(<<C/utf8, Val/binary>>, Map, Acc, Buf) ->
    norm_nfc_mapped(Val, Map, Acc, <<Buf/binary, C/utf8>>);
norm_nfc_mapped(<<>>, _Map, Acc, Buf) ->
    Buf1 = unicode:characters_to_nfc_binary(Buf),
    <<Acc/binary, Buf1/binary>>.

norm_mapped(<<C/utf8, Val/binary>>, Map, Acc) when is_map_key(C, Map) ->
    Str = maps:get(C, Map),
    Acc1 = <<Acc/binary, Str/binary>>,
    norm_mapped(Val, Map, Acc1);
norm_mapped(<<C/utf8, Val/binary>>, Map, Acc) ->
    norm_mapped(Val, Map, <<Acc/binary, C/utf8>>);
norm_mapped(<<>>, _Map, Acc) ->
    Acc.

check_duplicate_keys([{K, _} | T], Acc) ->
    case lists:member(K, Acc) of
        true ->
            ?err('SERE0022');
        false ->
            check_duplicate_keys(T, [K | Acc])
    end;
check_duplicate_keys([], _) ->
    ok.

is_well_formed(Children) ->
    [1 || #{nk := text} <- Children] == [] andalso
        [1 || #{nk := element} <- Children] == [1].

can_indent(_, _, #{indent := false}) ->
    false;
can_indent({Ns, _, Ln}, Children, #{'suppress-indentation' := Els}) ->
    Ln0 = string:lowercase(Ln),
    case
        [
            1
         || #qname{namespace = Ns1, local_name = Ln1} <- Els,
            Ln0 == string:lowercase(Ln1),
            Ns == Ns1
        ] =/= []
    of
        true ->
            false;
        false ->
            [1 || #{nk := text} <- Children] == []
    end.

is_cdata_node({Ns, _, Ln}, #{'cdata-section-elements' := Els}) ->
    [
        1
     || #qname{namespace = Ns1, local_name = Ln1} <- Els,
        Ln == Ln1,
        Ns == Ns1
    ] =/= [].

do_xml_declaration(
    Wellformed,
    ElementName,
    #{
        'omit-xml-declaration' := O,
        standalone := Standalone,
        'html-version' := HtmlVers,
        method := Method,
        version := 1.0,
        'doctype-system' := D,
        'doctype-public' := P,
        encoding := Encoding
    }
) ->
    Enc =
        case Encoding of
            utf8 -> <<"UTF-8">>;
            utf16 -> <<"UTF-16">>;
            utf32 -> <<"UTF-32">>
        end,
    ElementNameL = string:lowercase(ElementName),
    DocType = do_xml_declaration_1(Method, D, P, HtmlVers, ElementName, ElementNameL),
    do_xml_declaration_2(Wellformed, Standalone, D, O, Enc, DocType).

do_xml_declaration_1(html, <<>>, <<>>, HtmlVers, _ElementName, <<"html">>) when HtmlVers == 5.0 ->
    <<"<!DOCTYPE html>\n">>;
do_xml_declaration_1(html, <<>>, <<>>, _HtmlVers, _ElementName, _ElementNameL) ->
    <<>>;
do_xml_declaration_1(html, <<>>, P, _HtmlVers, _ElementName, ElementNameL) ->
    <<"<!DOCTYPE ", ElementNameL/binary, " PUBLIC \"", P/binary, "\">\n">>;
do_xml_declaration_1(_Method, <<>>, _P, _HtmlVers, _ElementName, _ElementNameL) ->
    <<>>;
do_xml_declaration_1(_Method, D, <<>>, _HtmlVers, ElementName, _ElementNameL) ->
    <<"<!DOCTYPE ", ElementName/binary, " SYSTEM \"", D/binary, "\">\n">>;
do_xml_declaration_1(_Method, D, P, _HtmlVers, ElementName, _ElementNameL) ->
    <<"<!DOCTYPE ", ElementName/binary, " PUBLIC \"", P/binary, "\" \"", D/binary, "\">\n">>.

do_xml_declaration_2(false, _Standalone, D, _O, _Enc, _DocType) when D =/= <<>> ->
    ?err('SEPM0004');
do_xml_declaration_2(false, true, _D, _O, _Enc, _DocType) ->
    ?err('SEPM0004');
do_xml_declaration_2(_Wellformed, omit, _D, false, Enc, DocType) ->
    <<"<?xml version=\"1.0\" encoding=\"", Enc/binary, "\"?>", DocType/binary>>;
do_xml_declaration_2(_Wellformed, true, _D, false, Enc, DocType) ->
    <<"<?xml version=\"1.0\" encoding=\"", Enc/binary, "\" standalone=\"yes\"?>", DocType/binary>>;
do_xml_declaration_2(_Wellformed, _Standalone, _D, false, Enc, DocType) ->
    <<"<?xml version=\"1.0\" encoding=\"", Enc/binary, "\" standalone=\"no\"?>", DocType/binary>>;
do_xml_declaration_2(_Wellformed, _Standalone, _D, _O, _Enc, DocType) ->
    DocType.

% takes children of document node
html_doctype([#{nk := text, sv := Sv} | T], Opts) ->
    case xqerl_lib:trim(Sv) of
        <<>> ->
            html_doctype(T, Opts);
        _ ->
            <<>>
    end;
html_doctype([#{nn := {_, _, Html}} | _], #{
    'html-version' := 5.0,
    'doctype-system' := <<>>
}) ->
    case string:lowercase(Html) of
        <<"html">> ->
            <<"<!DOCTYPE ", Html/binary, ">\n">>;
        _ ->
            <<>>
    end;
html_doctype(_, _) ->
    <<>>.

is_empty_element({_, _, <<"area">>}) -> true;
is_empty_element({_, _, <<"base">>}) -> true;
is_empty_element({_, _, <<"br">>}) -> true;
is_empty_element({_, _, <<"col">>}) -> true;
is_empty_element({_, _, <<"embed">>}) -> true;
is_empty_element({_, _, <<"hr">>}) -> true;
is_empty_element({_, _, <<"img">>}) -> true;
is_empty_element({_, _, <<"input">>}) -> true;
is_empty_element({_, _, <<"link">>}) -> true;
is_empty_element({_, _, <<"meta">>}) -> true;
is_empty_element({_, _, <<"basefont">>}) -> true;
is_empty_element({_, _, <<"frame">>}) -> true;
is_empty_element({_, _, <<"isindex">>}) -> true;
is_empty_element({_, _, <<"param">>}) -> true;
is_empty_element({_, _, _}) -> false.

is_void_element({_, _, <<"br">>}) -> true;
is_void_element({_, _, <<"hr">>}) -> true;
is_void_element({_, _, <<"link">>}) -> true;
is_void_element({_, _, <<"meta">>}) -> true;
is_void_element({_, _, <<"img">>}) -> true;
is_void_element({_, _, <<"area">>}) -> true;
is_void_element({_, _, <<"base">>}) -> true;
is_void_element({_, _, <<"col">>}) -> true;
is_void_element({_, _, <<"embed">>}) -> true;
is_void_element({_, _, <<"input">>}) -> true;
is_void_element({_, _, <<"keygen">>}) -> true;
is_void_element({_, _, <<"param">>}) -> true;
is_void_element({_, _, <<"source">>}) -> true;
is_void_element({_, _, <<"track">>}) -> true;
is_void_element({_, _, <<"wbr">>}) -> true;
is_void_element({_, _, _}) -> false.

is_html_tag({?XHTML, _, _}, _) -> true;
is_html_tag({<<>>, _, Tag}, 5.0) -> is_html_tag(string:lowercase(Tag));
is_html_tag(_, _) -> false.

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

%% html entity references that are shorter than decimal encoding
reference(160) -> <<"&nbsp;">>;
reference(162) -> <<"&cent;">>;
reference(165) -> <<"&yen;">>;
reference(167) -> <<"&sect;">>;
reference(168) -> <<"&die;">>;
reference(169) -> <<"&copy;">>;
reference(170) -> <<"&ordf;">>;
reference(172) -> <<"&not;">>;
reference(173) -> <<"&shy;">>;
reference(174) -> <<"&reg;">>;
reference(175) -> <<"&macr;">>;
reference(176) -> <<"&deg;">>;
reference(177) -> <<"&pm;">>;
reference(178) -> <<"&sup2;">>;
reference(179) -> <<"&sup3;">>;
reference(182) -> <<"&para;">>;
reference(185) -> <<"&sup1;">>;
reference(186) -> <<"&ordm;">>;
reference(189) -> <<"&half;">>;
reference(196) -> <<"&Auml;">>;
reference(203) -> <<"&Euml;">>;
reference(207) -> <<"&Iuml;">>;
reference(208) -> <<"&ETH;">>;
reference(214) -> <<"&Ouml;">>;
reference(220) -> <<"&Uuml;">>;
reference(228) -> <<"&auml;">>;
reference(235) -> <<"&euml;">>;
reference(239) -> <<"&iuml;">>;
reference(240) -> <<"&eth;">>;
reference(246) -> <<"&ouml;">>;
reference(247) -> <<"&div;">>;
reference(252) -> <<"&uuml;">>;
reference(255) -> <<"&yuml;">>;
reference(266) -> <<"&Cdot;">>;
reference(267) -> <<"&cdot;">>;
reference(278) -> <<"&Edot;">>;
reference(279) -> <<"&edot;">>;
reference(288) -> <<"&Gdot;">>;
reference(289) -> <<"&gdot;">>;
reference(304) -> <<"&Idot;">>;
reference(330) -> <<"&ENG;">>;
reference(331) -> <<"&eng;">>;
reference(376) -> <<"&Yuml;">>;
reference(379) -> <<"&Zdot;">>;
reference(380) -> <<"&zdot;">>;
reference(402) -> <<"&fnof;">>;
reference(710) -> <<"&circ;">>;
reference(729) -> <<"&dot;">>;
reference(730) -> <<"&ring;">>;
reference(731) -> <<"&ogon;">>;
reference(914) -> <<"&Beta;">>;
reference(918) -> <<"&Zeta;">>;
reference(919) -> <<"&Eta;">>;
reference(921) -> <<"&Iota;">>;
reference(924) -> <<"&Mu;">>;
reference(925) -> <<"&Nu;">>;
reference(926) -> <<"&Xi;">>;
reference(928) -> <<"&Pi;">>;
reference(929) -> <<"&Rho;">>;
reference(932) -> <<"&Tau;">>;
reference(934) -> <<"&Phi;">>;
reference(935) -> <<"&Chi;">>;
reference(936) -> <<"&Psi;">>;
reference(937) -> <<"&ohm;">>;
reference(946) -> <<"&beta;">>;
reference(949) -> <<"&epsi;">>;
reference(950) -> <<"&zeta;">>;
reference(951) -> <<"&eta;">>;
reference(953) -> <<"&iota;">>;
reference(956) -> <<"&mu;">>;
reference(957) -> <<"&nu;">>;
reference(958) -> <<"&xi;">>;
reference(960) -> <<"&pi;">>;
reference(961) -> <<"&rho;">>;
reference(964) -> <<"&tau;">>;
reference(965) -> <<"&upsi;">>;
reference(966) -> <<"&phi;">>;
reference(967) -> <<"&chi;">>;
reference(968) -> <<"&psi;">>;
reference(978) -> <<"&Upsi;">>;
reference(981) -> <<"&phiv;">>;
reference(982) -> <<"&piv;">>;
reference(1009) -> <<"&rhov;">>;
reference(1013) -> <<"&epsiv;">>;
reference(1014) -> <<"&bepsi;">>;
reference(1025) -> <<"&IOcy;">>;
reference(1026) -> <<"&DJcy;">>;
reference(1027) -> <<"&GJcy;">>;
reference(1028) -> <<"&Jukcy;">>;
reference(1029) -> <<"&DScy;">>;
reference(1030) -> <<"&Iukcy;">>;
reference(1031) -> <<"&YIcy;">>;
reference(1033) -> <<"&LJcy;">>;
reference(1034) -> <<"&NJcy;">>;
reference(1035) -> <<"&TSHcy;">>;
reference(1036) -> <<"&KJcy;">>;
reference(1038) -> <<"&Ubrcy;">>;
reference(1039) -> <<"&DZcy;">>;
reference(1040) -> <<"&Acy;">>;
reference(1041) -> <<"&Bcy;">>;
reference(1042) -> <<"&Vcy;">>;
reference(1043) -> <<"&Gcy;">>;
reference(1044) -> <<"&Dcy;">>;
reference(1045) -> <<"&IEcy;">>;
reference(1046) -> <<"&ZHcy;">>;
reference(1047) -> <<"&Zcy;">>;
reference(1048) -> <<"&Icy;">>;
reference(1049) -> <<"&Jcy;">>;
reference(1050) -> <<"&Kcy;">>;
reference(1051) -> <<"&Lcy;">>;
reference(1052) -> <<"&Mcy;">>;
reference(1053) -> <<"&Ncy;">>;
reference(1054) -> <<"&Ocy;">>;
reference(1055) -> <<"&Pcy;">>;
reference(1056) -> <<"&Rcy;">>;
reference(1057) -> <<"&Scy;">>;
reference(1058) -> <<"&Tcy;">>;
reference(1059) -> <<"&Ucy;">>;
reference(1060) -> <<"&Fcy;">>;
reference(1061) -> <<"&KHcy;">>;
reference(1062) -> <<"&TScy;">>;
reference(1063) -> <<"&CHcy;">>;
reference(1064) -> <<"&SHcy;">>;
reference(1067) -> <<"&Ycy;">>;
reference(1069) -> <<"&Ecy;">>;
reference(1070) -> <<"&YUcy;">>;
reference(1071) -> <<"&YAcy;">>;
reference(1072) -> <<"&acy;">>;
reference(1073) -> <<"&bcy;">>;
reference(1074) -> <<"&vcy;">>;
reference(1075) -> <<"&gcy;">>;
reference(1076) -> <<"&dcy;">>;
reference(1077) -> <<"&iecy;">>;
reference(1078) -> <<"&zhcy;">>;
reference(1079) -> <<"&zcy;">>;
reference(1080) -> <<"&icy;">>;
reference(1081) -> <<"&jcy;">>;
reference(1082) -> <<"&kcy;">>;
reference(1083) -> <<"&lcy;">>;
reference(1084) -> <<"&mcy;">>;
reference(1085) -> <<"&ncy;">>;
reference(1086) -> <<"&ocy;">>;
reference(1087) -> <<"&pcy;">>;
reference(1088) -> <<"&rcy;">>;
reference(1089) -> <<"&scy;">>;
reference(1090) -> <<"&tcy;">>;
reference(1091) -> <<"&ucy;">>;
reference(1092) -> <<"&fcy;">>;
reference(1093) -> <<"&khcy;">>;
reference(1094) -> <<"&tscy;">>;
reference(1095) -> <<"&chcy;">>;
reference(1096) -> <<"&shcy;">>;
reference(1099) -> <<"&ycy;">>;
reference(1101) -> <<"&ecy;">>;
reference(1102) -> <<"&yucy;">>;
reference(1103) -> <<"&yacy;">>;
reference(1105) -> <<"&iocy;">>;
reference(1106) -> <<"&djcy;">>;
reference(1107) -> <<"&gjcy;">>;
reference(1108) -> <<"&jukcy;">>;
reference(1109) -> <<"&dscy;">>;
reference(1110) -> <<"&iukcy;">>;
reference(1111) -> <<"&yicy;">>;
reference(1113) -> <<"&ljcy;">>;
reference(1114) -> <<"&njcy;">>;
reference(1115) -> <<"&tshcy;">>;
reference(1116) -> <<"&kjcy;">>;
reference(1118) -> <<"&ubrcy;">>;
reference(1119) -> <<"&dzcy;">>;
reference(8194) -> <<"&ensp;">>;
reference(8195) -> <<"&emsp;">>;
reference(8199) -> <<"&numsp;">>;
reference(8204) -> <<"&zwnj;">>;
reference(8205) -> <<"&zwj;">>;
reference(8206) -> <<"&lrm;">>;
reference(8207) -> <<"&rlm;">>;
reference(8208) -> <<"&dash;">>;
reference(8211) -> <<"&ndash;">>;
reference(8212) -> <<"&mdash;">>;
reference(8214) -> <<"&Vert;">>;
reference(8216) -> <<"&lsquo;">>;
reference(8217) -> <<"&rsquo;">>;
reference(8218) -> <<"&sbquo;">>;
reference(8220) -> <<"&ldquo;">>;
reference(8221) -> <<"&rdquo;">>;
reference(8222) -> <<"&bdquo;">>;
reference(8226) -> <<"&bull;">>;
reference(8229) -> <<"&nldr;">>;
reference(8230) -> <<"&mldr;">>;
reference(8242) -> <<"&prime;">>;
reference(8243) -> <<"&Prime;">>;
reference(8254) -> <<"&oline;">>;
reference(8257) -> <<"&caret;">>;
reference(8260) -> <<"&frasl;">>;
reference(8271) -> <<"&bsemi;">>;
reference(8289) -> <<"&af;">>;
reference(8290) -> <<"&it;">>;
reference(8291) -> <<"&ic;">>;
reference(8364) -> <<"&euro;">>;
reference(8411) -> <<"&tdot;">>;
reference(8450) -> <<"&Copf;">>;
reference(8458) -> <<"&gscr;">>;
reference(8459) -> <<"&Hscr;">>;
reference(8460) -> <<"&Hfr;">>;
reference(8461) -> <<"&Hopf;">>;
reference(8463) -> <<"&hbar;">>;
reference(8464) -> <<"&Iscr;">>;
reference(8465) -> <<"&Im;">>;
reference(8466) -> <<"&Lscr;">>;
reference(8467) -> <<"&ell;">>;
reference(8469) -> <<"&Nopf;">>;
reference(8472) -> <<"&wp;">>;
reference(8473) -> <<"&Popf;">>;
reference(8474) -> <<"&Qopf;">>;
reference(8475) -> <<"&Rscr;">>;
reference(8476) -> <<"&Re;">>;
reference(8477) -> <<"&Ropf;">>;
reference(8478) -> <<"&rx;">>;
reference(8482) -> <<"&trade;">>;
reference(8484) -> <<"&Zopf;">>;
reference(8487) -> <<"&mho;">>;
reference(8488) -> <<"&Zfr;">>;
reference(8489) -> <<"&iiota;">>;
reference(8492) -> <<"&Bscr;">>;
reference(8493) -> <<"&Cfr;">>;
reference(8495) -> <<"&escr;">>;
reference(8496) -> <<"&Escr;">>;
reference(8497) -> <<"&Fscr;">>;
reference(8499) -> <<"&Mscr;">>;
reference(8500) -> <<"&oscr;">>;
reference(8501) -> <<"&aleph;">>;
reference(8502) -> <<"&beth;">>;
reference(8503) -> <<"&gimel;">>;
reference(8517) -> <<"&DD;">>;
reference(8518) -> <<"&dd;">>;
reference(8519) -> <<"&ee;">>;
reference(8520) -> <<"&ii;">>;
reference(8592) -> <<"&larr;">>;
reference(8593) -> <<"&uarr;">>;
reference(8594) -> <<"&rarr;">>;
reference(8595) -> <<"&darr;">>;
reference(8596) -> <<"&harr;">>;
reference(8597) -> <<"&varr;">>;
reference(8598) -> <<"&nwarr;">>;
reference(8599) -> <<"&nearr;">>;
reference(8600) -> <<"&searr;">>;
reference(8601) -> <<"&swarr;">>;
reference(8602) -> <<"&nlarr;">>;
reference(8603) -> <<"&nrarr;">>;
reference(8605) -> <<"&rarrw;">>;
reference(8606) -> <<"&Larr;">>;
reference(8607) -> <<"&Uarr;">>;
reference(8608) -> <<"&Rarr;">>;
reference(8609) -> <<"&Darr;">>;
reference(8614) -> <<"&map;">>;
reference(8621) -> <<"&harrw;">>;
reference(8622) -> <<"&nharr;">>;
reference(8624) -> <<"&lsh;">>;
reference(8625) -> <<"&rsh;">>;
reference(8626) -> <<"&ldsh;">>;
reference(8627) -> <<"&rdsh;">>;
reference(8629) -> <<"&crarr;">>;
reference(8634) -> <<"&olarr;">>;
reference(8635) -> <<"&orarr;">>;
reference(8636) -> <<"&lharu;">>;
reference(8637) -> <<"&lhard;">>;
reference(8638) -> <<"&uharr;">>;
reference(8639) -> <<"&uharl;">>;
reference(8640) -> <<"&rharu;">>;
reference(8641) -> <<"&rhard;">>;
reference(8642) -> <<"&dharr;">>;
reference(8643) -> <<"&dharl;">>;
reference(8644) -> <<"&rlarr;">>;
reference(8645) -> <<"&udarr;">>;
reference(8646) -> <<"&lrarr;">>;
reference(8647) -> <<"&llarr;">>;
reference(8648) -> <<"&uuarr;">>;
reference(8649) -> <<"&rrarr;">>;
reference(8650) -> <<"&ddarr;">>;
reference(8651) -> <<"&lrhar;">>;
reference(8652) -> <<"&rlhar;">>;
reference(8653) -> <<"&nlArr;">>;
reference(8654) -> <<"&nhArr;">>;
reference(8655) -> <<"&nrArr;">>;
reference(8656) -> <<"&lArr;">>;
reference(8657) -> <<"&uArr;">>;
reference(8658) -> <<"&rArr;">>;
reference(8659) -> <<"&dArr;">>;
reference(8660) -> <<"&iff;">>;
reference(8661) -> <<"&vArr;">>;
reference(8662) -> <<"&nwArr;">>;
reference(8663) -> <<"&neArr;">>;
reference(8664) -> <<"&seArr;">>;
reference(8665) -> <<"&swArr;">>;
reference(8666) -> <<"&lAarr;">>;
reference(8667) -> <<"&rAarr;">>;
reference(8676) -> <<"&larrb;">>;
reference(8677) -> <<"&rarrb;">>;
reference(8693) -> <<"&duarr;">>;
reference(8701) -> <<"&loarr;">>;
reference(8702) -> <<"&roarr;">>;
reference(8703) -> <<"&hoarr;">>;
reference(8705) -> <<"&comp;">>;
reference(8706) -> <<"&part;">>;
reference(8707) -> <<"&exist;">>;
reference(8709) -> <<"&empty;">>;
reference(8711) -> <<"&Del;">>;
reference(8712) -> <<"&in;">>;
reference(8713) -> <<"&notin;">>;
reference(8715) -> <<"&ni;">>;
reference(8716) -> <<"&notni;">>;
reference(8719) -> <<"&prod;">>;
reference(8721) -> <<"&sum;">>;
reference(8722) -> <<"&minus;">>;
reference(8723) -> <<"&mp;">>;
reference(8726) -> <<"&setmn;">>;
reference(8730) -> <<"&Sqrt;">>;
reference(8733) -> <<"&prop;">>;
reference(8734) -> <<"&infin;">>;
reference(8735) -> <<"&angrt;">>;
reference(8736) -> <<"&ang;">>;
reference(8739) -> <<"&mid;">>;
reference(8740) -> <<"&nmid;">>;
reference(8741) -> <<"&par;">>;
reference(8742) -> <<"&npar;">>;
reference(8743) -> <<"&and;">>;
reference(8744) -> <<"&or;">>;
reference(8745) -> <<"&cap;">>;
reference(8746) -> <<"&cup;">>;
reference(8747) -> <<"&int;">>;
reference(8748) -> <<"&Int;">>;
reference(8749) -> <<"&tint;">>;
reference(8750) -> <<"&oint;">>;
reference(8753) -> <<"&cwint;">>;
reference(8758) -> <<"&ratio;">>;
reference(8759) -> <<"&Colon;">>;
reference(8762) -> <<"&mDDot;">>;
reference(8764) -> <<"&sim;">>;
reference(8765) -> <<"&bsim;">>;
reference(8766) -> <<"&ac;">>;
reference(8767) -> <<"&acd;">>;
reference(8768) -> <<"&wr;">>;
reference(8769) -> <<"&nsim;">>;
reference(8770) -> <<"&esim;">>;
reference(8771) -> <<"&sime;">>;
reference(8772) -> <<"&nsime;">>;
reference(8773) -> <<"&cong;">>;
reference(8774) -> <<"&simne;">>;
reference(8775) -> <<"&ncong;">>;
reference(8776) -> <<"&ap;">>;
reference(8777) -> <<"&nap;">>;
reference(8778) -> <<"&ape;">>;
reference(8779) -> <<"&apid;">>;
reference(8780) -> <<"&bcong;">>;
reference(8782) -> <<"&bump;">>;
reference(8783) -> <<"&bumpe;">>;
reference(8784) -> <<"&esdot;">>;
reference(8785) -> <<"&eDot;">>;
reference(8786) -> <<"&efDot;">>;
reference(8787) -> <<"&erDot;">>;
reference(8790) -> <<"&ecir;">>;
reference(8791) -> <<"&cire;">>;
reference(8794) -> <<"&veeeq;">>;
reference(8796) -> <<"&trie;">>;
reference(8800) -> <<"&ne;">>;
reference(8801) -> <<"&equiv;">>;
reference(8804) -> <<"&le;">>;
reference(8805) -> <<"&ge;">>;
reference(8806) -> <<"&lE;">>;
reference(8807) -> <<"&gE;">>;
reference(8808) -> <<"&lnE;">>;
reference(8809) -> <<"&gnE;">>;
reference(8810) -> <<"&ll;">>;
reference(8811) -> <<"&gg;">>;
reference(8812) -> <<"&twixt;">>;
reference(8814) -> <<"&nlt;">>;
reference(8815) -> <<"&ngt;">>;
reference(8816) -> <<"&nle;">>;
reference(8817) -> <<"&nge;">>;
reference(8818) -> <<"&lsim;">>;
reference(8819) -> <<"&gsim;">>;
reference(8820) -> <<"&nlsim;">>;
reference(8821) -> <<"&ngsim;">>;
reference(8822) -> <<"&lg;">>;
reference(8823) -> <<"&gl;">>;
reference(8824) -> <<"&ntlg;">>;
reference(8825) -> <<"&ntgl;">>;
reference(8826) -> <<"&pr;">>;
reference(8827) -> <<"&sc;">>;
reference(8828) -> <<"&prcue;">>;
reference(8829) -> <<"&sccue;">>;
reference(8830) -> <<"&prsim;">>;
reference(8831) -> <<"&scsim;">>;
reference(8832) -> <<"&npr;">>;
reference(8833) -> <<"&nsc;">>;
reference(8834) -> <<"&sub;">>;
reference(8835) -> <<"&sup;">>;
reference(8836) -> <<"&nsub;">>;
reference(8837) -> <<"&nsup;">>;
reference(8838) -> <<"&sube;">>;
reference(8839) -> <<"&supe;">>;
reference(8840) -> <<"&nsube;">>;
reference(8841) -> <<"&nsupe;">>;
reference(8842) -> <<"&subne;">>;
reference(8843) -> <<"&supne;">>;
reference(8846) -> <<"&uplus;">>;
reference(8847) -> <<"&sqsub;">>;
reference(8848) -> <<"&sqsup;">>;
reference(8851) -> <<"&sqcap;">>;
reference(8852) -> <<"&sqcup;">>;
reference(8853) -> <<"&oplus;">>;
reference(8856) -> <<"&osol;">>;
reference(8857) -> <<"&odot;">>;
reference(8858) -> <<"&ocir;">>;
reference(8859) -> <<"&oast;">>;
reference(8861) -> <<"&odash;">>;
reference(8862) -> <<"&plusb;">>;
reference(8865) -> <<"&sdotb;">>;
reference(8866) -> <<"&vdash;">>;
reference(8867) -> <<"&dashv;">>;
reference(8868) -> <<"&top;">>;
reference(8869) -> <<"&bot;">>;
reference(8872) -> <<"&vDash;">>;
reference(8873) -> <<"&Vdash;">>;
reference(8875) -> <<"&VDash;">>;
reference(8882) -> <<"&vltri;">>;
reference(8883) -> <<"&vrtri;">>;
reference(8884) -> <<"&ltrie;">>;
reference(8885) -> <<"&rtrie;">>;
reference(8887) -> <<"&imof;">>;
reference(8888) -> <<"&mumap;">>;
reference(8895) -> <<"&lrtri;">>;
reference(8896) -> <<"&Wedge;">>;
reference(8897) -> <<"&Vee;">>;
reference(8898) -> <<"&xcap;">>;
reference(8899) -> <<"&xcup;">>;
reference(8900) -> <<"&diam;">>;
reference(8901) -> <<"&sdot;">>;
reference(8902) -> <<"&Star;">>;
reference(8909) -> <<"&bsime;">>;
reference(8910) -> <<"&cuvee;">>;
reference(8911) -> <<"&cuwed;">>;
reference(8912) -> <<"&Sub;">>;
reference(8913) -> <<"&Sup;">>;
reference(8914) -> <<"&Cap;">>;
reference(8915) -> <<"&Cup;">>;
reference(8916) -> <<"&fork;">>;
reference(8917) -> <<"&epar;">>;
reference(8918) -> <<"&ltdot;">>;
reference(8919) -> <<"&gtdot;">>;
reference(8920) -> <<"&Ll;">>;
reference(8921) -> <<"&Gg;">>;
reference(8922) -> <<"&leg;">>;
reference(8923) -> <<"&gel;">>;
reference(8926) -> <<"&cuepr;">>;
reference(8927) -> <<"&cuesc;">>;
reference(8934) -> <<"&lnsim;">>;
reference(8935) -> <<"&gnsim;">>;
reference(8938) -> <<"&nltri;">>;
reference(8939) -> <<"&nrtri;">>;
reference(8943) -> <<"&ctdot;">>;
reference(8944) -> <<"&utdot;">>;
reference(8945) -> <<"&dtdot;">>;
reference(8946) -> <<"&disin;">>;
reference(8948) -> <<"&isins;">>;
reference(8953) -> <<"&isinE;">>;
reference(8954) -> <<"&nisd;">>;
reference(8955) -> <<"&xnis;">>;
reference(8956) -> <<"&nis;">>;
reference(8968) -> <<"&lceil;">>;
reference(8969) -> <<"&rceil;">>;
reference(8976) -> <<"&bnot;">>;
reference(8994) -> <<"&frown;">>;
reference(8995) -> <<"&smile;">>;
reference(9021) -> <<"&ovbar;">>;
reference(9140) -> <<"&tbrk;">>;
reference(9141) -> <<"&bbrk;">>;
reference(9251) -> <<"&blank;">>;
reference(9416) -> <<"&oS;">>;
reference(9472) -> <<"&boxh;">>;
reference(9474) -> <<"&boxv;">>;
reference(9484) -> <<"&boxdr;">>;
reference(9488) -> <<"&boxdl;">>;
reference(9492) -> <<"&boxur;">>;
reference(9496) -> <<"&boxul;">>;
reference(9500) -> <<"&boxvr;">>;
reference(9508) -> <<"&boxvl;">>;
reference(9516) -> <<"&boxhd;">>;
reference(9524) -> <<"&boxhu;">>;
reference(9532) -> <<"&boxvh;">>;
reference(9552) -> <<"&boxH;">>;
reference(9553) -> <<"&boxV;">>;
reference(9554) -> <<"&boxdR;">>;
reference(9555) -> <<"&boxDr;">>;
reference(9556) -> <<"&boxDR;">>;
reference(9557) -> <<"&boxdL;">>;
reference(9558) -> <<"&boxDl;">>;
reference(9559) -> <<"&boxDL;">>;
reference(9560) -> <<"&boxuR;">>;
reference(9561) -> <<"&boxUr;">>;
reference(9562) -> <<"&boxUR;">>;
reference(9563) -> <<"&boxuL;">>;
reference(9564) -> <<"&boxUl;">>;
reference(9565) -> <<"&boxUL;">>;
reference(9566) -> <<"&boxvR;">>;
reference(9567) -> <<"&boxVr;">>;
reference(9568) -> <<"&boxVR;">>;
reference(9569) -> <<"&boxvL;">>;
reference(9570) -> <<"&boxVl;">>;
reference(9571) -> <<"&boxVL;">>;
reference(9572) -> <<"&boxHd;">>;
reference(9573) -> <<"&boxhD;">>;
reference(9574) -> <<"&boxHD;">>;
reference(9575) -> <<"&boxHu;">>;
reference(9576) -> <<"&boxhU;">>;
reference(9577) -> <<"&boxHU;">>;
reference(9578) -> <<"&boxvH;">>;
reference(9579) -> <<"&boxVh;">>;
reference(9580) -> <<"&boxVH;">>;
reference(9600) -> <<"&uhblk;">>;
reference(9604) -> <<"&lhblk;">>;
reference(9608) -> <<"&block;">>;
reference(9617) -> <<"&blk14;">>;
reference(9618) -> <<"&blk12;">>;
reference(9619) -> <<"&blk34;">>;
reference(9633) -> <<"&squ;">>;
reference(9642) -> <<"&squf;">>;
reference(9645) -> <<"&rect;">>;
reference(9649) -> <<"&fltns;">>;
reference(9651) -> <<"&xutri;">>;
reference(9652) -> <<"&utrif;">>;
reference(9653) -> <<"&utri;">>;
reference(9656) -> <<"&rtrif;">>;
reference(9657) -> <<"&rtri;">>;
reference(9661) -> <<"&xdtri;">>;
reference(9662) -> <<"&dtrif;">>;
reference(9663) -> <<"&dtri;">>;
reference(9666) -> <<"&ltrif;">>;
reference(9667) -> <<"&ltri;">>;
reference(9674) -> <<"&loz;">>;
reference(9675) -> <<"&cir;">>;
reference(9711) -> <<"&xcirc;">>;
reference(9720) -> <<"&ultri;">>;
reference(9721) -> <<"&urtri;">>;
reference(9722) -> <<"&lltri;">>;
reference(9733) -> <<"&starf;">>;
reference(9734) -> <<"&star;">>;
reference(9742) -> <<"&phone;">>;
reference(9794) -> <<"&male;">>;
reference(9827) -> <<"&clubs;">>;
reference(9830) -> <<"&diams;">>;
reference(9834) -> <<"&sung;">>;
reference(9837) -> <<"&flat;">>;
reference(9838) -> <<"&natur;">>;
reference(9839) -> <<"&sharp;">>;
reference(10003) -> <<"&check;">>;
reference(10007) -> <<"&cross;">>;
reference(10016) -> <<"&malt;">>;
reference(10038) -> <<"&sext;">>;
reference(10098) -> <<"&lbbrk;">>;
reference(10099) -> <<"&rbbrk;">>;
reference(10214) -> <<"&lobrk;">>;
reference(10215) -> <<"&robrk;">>;
reference(10216) -> <<"&lang;">>;
reference(10217) -> <<"&rang;">>;
reference(10218) -> <<"&Lang;">>;
reference(10219) -> <<"&Rang;">>;
reference(10220) -> <<"&loang;">>;
reference(10221) -> <<"&roang;">>;
reference(10229) -> <<"&xlarr;">>;
reference(10230) -> <<"&xrarr;">>;
reference(10231) -> <<"&xharr;">>;
reference(10232) -> <<"&xlArr;">>;
reference(10233) -> <<"&xrArr;">>;
reference(10234) -> <<"&xhArr;">>;
reference(10236) -> <<"&xmap;">>;
reference(10498) -> <<"&nvlArr;">>;
reference(10499) -> <<"&nvrArr;">>;
reference(10500) -> <<"&nvHarr;">>;
reference(10501) -> <<"&Map;">>;
reference(10508) -> <<"&lbarr;">>;
reference(10509) -> <<"&rbarr;">>;
reference(10510) -> <<"&lBarr;">>;
reference(10511) -> <<"&rBarr;">>;
reference(10512) -> <<"&RBarr;">>;
reference(10518) -> <<"&Rarrtl;">>;
reference(10521) -> <<"&latail;">>;
reference(10522) -> <<"&ratail;">>;
reference(10523) -> <<"&lAtail;">>;
reference(10524) -> <<"&rAtail;">>;
reference(10525) -> <<"&larrfs;">>;
reference(10526) -> <<"&rarrfs;">>;
reference(10531) -> <<"&nwarhk;">>;
reference(10532) -> <<"&nearhk;">>;
reference(10533) -> <<"&searhk;">>;
reference(10534) -> <<"&swarhk;">>;
reference(10535) -> <<"&nwnear;">>;
reference(10536) -> <<"&toea;">>;
reference(10537) -> <<"&tosa;">>;
reference(10538) -> <<"&swnwar;">>;
reference(10547) -> <<"&rarrc;">>;
reference(10550) -> <<"&ldca;">>;
reference(10551) -> <<"&rdca;">>;
reference(10553) -> <<"&larrpl;">>;
reference(10565) -> <<"&rarrpl;">>;
reference(10594) -> <<"&lHar;">>;
reference(10595) -> <<"&uHar;">>;
reference(10596) -> <<"&rHar;">>;
reference(10597) -> <<"&dHar;">>;
reference(10602) -> <<"&lharul;">>;
reference(10603) -> <<"&llhard;">>;
reference(10604) -> <<"&rharul;">>;
reference(10605) -> <<"&lrhard;">>;
reference(10606) -> <<"&udhar;">>;
reference(10607) -> <<"&duhar;">>;
reference(10609) -> <<"&erarr;">>;
reference(10613) -> <<"&rarrap;">>;
reference(10614) -> <<"&ltlarr;">>;
reference(10616) -> <<"&gtrarr;">>;
reference(10620) -> <<"&lfisht;">>;
reference(10621) -> <<"&rfisht;">>;
reference(10622) -> <<"&ufisht;">>;
reference(10623) -> <<"&dfisht;">>;
reference(10629) -> <<"&lopar;">>;
reference(10630) -> <<"&ropar;">>;
reference(10635) -> <<"&lbrke;">>;
reference(10636) -> <<"&rbrke;">>;
reference(10641) -> <<"&langd;">>;
reference(10642) -> <<"&rangd;">>;
reference(10643) -> <<"&lparlt;">>;
reference(10644) -> <<"&rpargt;">>;
reference(10645) -> <<"&gtlPar;">>;
reference(10646) -> <<"&ltrPar;">>;
reference(10652) -> <<"&vangrt;">>;
reference(10660) -> <<"&ange;">>;
reference(10661) -> <<"&range;">>;
reference(10677) -> <<"&ohbar;">>;
reference(10678) -> <<"&omid;">>;
reference(10679) -> <<"&opar;">>;
reference(10681) -> <<"&operp;">>;
reference(10684) -> <<"&odsold;">>;
reference(10686) -> <<"&olcir;">>;
reference(10687) -> <<"&ofcir;">>;
reference(10688) -> <<"&olt;">>;
reference(10689) -> <<"&ogt;">>;
reference(10691) -> <<"&cirE;">>;
reference(10692) -> <<"&solb;">>;
reference(10693) -> <<"&bsolb;">>;
reference(10697) -> <<"&boxbox;">>;
reference(10701) -> <<"&trisb;">>;
reference(10716) -> <<"&iinfin;">>;
reference(10723) -> <<"&eparsl;">>;
reference(10731) -> <<"&lozf;">>;
reference(10742) -> <<"&dsol;">>;
reference(10752) -> <<"&xodot;">>;
reference(10753) -> <<"&xoplus;">>;
reference(10754) -> <<"&xotime;">>;
reference(10756) -> <<"&xuplus;">>;
reference(10758) -> <<"&xsqcup;">>;
reference(10764) -> <<"&qint;">>;
reference(10769) -> <<"&awint;">>;
reference(10789) -> <<"&plusdu;">>;
reference(10793) -> <<"&mcomma;">>;
reference(10797) -> <<"&loplus;">>;
reference(10798) -> <<"&roplus;">>;
reference(10799) -> <<"&Cross;">>;
reference(10800) -> <<"&timesd;">>;
reference(10803) -> <<"&smashp;">>;
reference(10807) -> <<"&Otimes;">>;
reference(10808) -> <<"&odiv;">>;
reference(10812) -> <<"&iprod;">>;
reference(10815) -> <<"&amalg;">>;
reference(10816) -> <<"&capdot;">>;
reference(10818) -> <<"&ncup;">>;
reference(10819) -> <<"&ncap;">>;
reference(10820) -> <<"&capand;">>;
reference(10821) -> <<"&cupor;">>;
reference(10822) -> <<"&cupcap;">>;
reference(10823) -> <<"&capcup;">>;
reference(10826) -> <<"&cupcup;">>;
reference(10827) -> <<"&capcap;">>;
reference(10828) -> <<"&ccups;">>;
reference(10829) -> <<"&ccaps;">>;
reference(10835) -> <<"&And;">>;
reference(10836) -> <<"&Or;">>;
reference(10837) -> <<"&andand;">>;
reference(10838) -> <<"&oror;">>;
reference(10842) -> <<"&andv;">>;
reference(10843) -> <<"&orv;">>;
reference(10844) -> <<"&andd;">>;
reference(10845) -> <<"&ord;">>;
reference(10847) -> <<"&wedbar;">>;
reference(10854) -> <<"&sdote;">>;
reference(10858) -> <<"&simdot;">>;
reference(10862) -> <<"&easter;">>;
reference(10863) -> <<"&apacir;">>;
reference(10864) -> <<"&apE;">>;
reference(10865) -> <<"&eplus;">>;
reference(10866) -> <<"&pluse;">>;
reference(10867) -> <<"&Esim;">>;
reference(10868) -> <<"&Colone;">>;
reference(10869) -> <<"&Equal;">>;
reference(10871) -> <<"&eDDot;">>;
reference(10873) -> <<"&ltcir;">>;
reference(10874) -> <<"&gtcir;">>;
reference(10877) -> <<"&les;">>;
reference(10878) -> <<"&ges;">>;
reference(10879) -> <<"&lesdot;">>;
reference(10880) -> <<"&gesdot;">>;
reference(10885) -> <<"&lap;">>;
reference(10886) -> <<"&gap;">>;
reference(10887) -> <<"&lne;">>;
reference(10888) -> <<"&gne;">>;
reference(10889) -> <<"&lnap;">>;
reference(10890) -> <<"&gnap;">>;
reference(10891) -> <<"&lEg;">>;
reference(10892) -> <<"&gEl;">>;
reference(10893) -> <<"&lsime;">>;
reference(10894) -> <<"&gsime;">>;
reference(10895) -> <<"&lsimg;">>;
reference(10896) -> <<"&gsiml;">>;
reference(10897) -> <<"&lgE;">>;
reference(10898) -> <<"&glE;">>;
reference(10899) -> <<"&lesges;">>;
reference(10900) -> <<"&gesles;">>;
reference(10901) -> <<"&els;">>;
reference(10902) -> <<"&egs;">>;
reference(10903) -> <<"&elsdot;">>;
reference(10904) -> <<"&egsdot;">>;
reference(10905) -> <<"&el;">>;
reference(10906) -> <<"&eg;">>;
reference(10909) -> <<"&siml;">>;
reference(10910) -> <<"&simg;">>;
reference(10911) -> <<"&simlE;">>;
reference(10912) -> <<"&simgE;">>;
reference(10916) -> <<"&glj;">>;
reference(10917) -> <<"&gla;">>;
reference(10918) -> <<"&ltcc;">>;
reference(10919) -> <<"&gtcc;">>;
reference(10920) -> <<"&lescc;">>;
reference(10921) -> <<"&gescc;">>;
reference(10922) -> <<"&smt;">>;
reference(10923) -> <<"&lat;">>;
reference(10924) -> <<"&smte;">>;
reference(10925) -> <<"&late;">>;
reference(10926) -> <<"&bumpE;">>;
reference(10927) -> <<"&pre;">>;
reference(10928) -> <<"&sce;">>;
reference(10931) -> <<"&prE;">>;
reference(10932) -> <<"&scE;">>;
reference(10933) -> <<"&prnE;">>;
reference(10934) -> <<"&scnE;">>;
reference(10935) -> <<"&prap;">>;
reference(10936) -> <<"&scap;">>;
reference(10937) -> <<"&prnap;">>;
reference(10938) -> <<"&scnap;">>;
reference(10939) -> <<"&Pr;">>;
reference(10940) -> <<"&Sc;">>;
reference(10941) -> <<"&subdot;">>;
reference(10942) -> <<"&supdot;">>;
reference(10949) -> <<"&subE;">>;
reference(10950) -> <<"&supE;">>;
reference(10951) -> <<"&subsim;">>;
reference(10952) -> <<"&supsim;">>;
reference(10955) -> <<"&subnE;">>;
reference(10956) -> <<"&supnE;">>;
reference(10959) -> <<"&csub;">>;
reference(10960) -> <<"&csup;">>;
reference(10961) -> <<"&csube;">>;
reference(10962) -> <<"&csupe;">>;
reference(10963) -> <<"&subsup;">>;
reference(10964) -> <<"&supsub;">>;
reference(10965) -> <<"&subsub;">>;
reference(10966) -> <<"&supsup;">>;
reference(10969) -> <<"&forkv;">>;
reference(10971) -> <<"&mlcp;">>;
reference(10980) -> <<"&Dashv;">>;
reference(10982) -> <<"&Vdashl;">>;
reference(10983) -> <<"&Barv;">>;
reference(10984) -> <<"&vBar;">>;
reference(10985) -> <<"&vBarv;">>;
reference(10987) -> <<"&Vbar;">>;
reference(10988) -> <<"&Not;">>;
reference(10989) -> <<"&bNot;">>;
reference(10990) -> <<"&rnmid;">>;
reference(10991) -> <<"&cirmid;">>;
reference(10992) -> <<"&midcir;">>;
reference(10993) -> <<"&topcir;">>;
reference(10994) -> <<"&nhpar;">>;
reference(10995) -> <<"&parsim;">>;
reference(11005) -> <<"&parsl;">>;
reference(64256) -> <<"&fflig;">>;
reference(64257) -> <<"&filig;">>;
reference(64258) -> <<"&fllig;">>;
reference(64259) -> <<"&ffilig;">>;
reference(64260) -> <<"&ffllig;">>;
reference(119964) -> <<"&Ascr;">>;
reference(119966) -> <<"&Cscr;">>;
reference(119967) -> <<"&Dscr;">>;
reference(119970) -> <<"&Gscr;">>;
reference(119973) -> <<"&Jscr;">>;
reference(119974) -> <<"&Kscr;">>;
reference(119977) -> <<"&Nscr;">>;
reference(119978) -> <<"&Oscr;">>;
reference(119979) -> <<"&Pscr;">>;
reference(119980) -> <<"&Qscr;">>;
reference(119982) -> <<"&Sscr;">>;
reference(119983) -> <<"&Tscr;">>;
reference(119984) -> <<"&Uscr;">>;
reference(119985) -> <<"&Vscr;">>;
reference(119986) -> <<"&Wscr;">>;
reference(119987) -> <<"&Xscr;">>;
reference(119988) -> <<"&Yscr;">>;
reference(119989) -> <<"&Zscr;">>;
reference(119990) -> <<"&ascr;">>;
reference(119991) -> <<"&bscr;">>;
reference(119992) -> <<"&cscr;">>;
reference(119993) -> <<"&dscr;">>;
reference(119995) -> <<"&fscr;">>;
reference(119997) -> <<"&hscr;">>;
reference(119998) -> <<"&iscr;">>;
reference(119999) -> <<"&jscr;">>;
reference(120000) -> <<"&kscr;">>;
reference(120001) -> <<"&lscr;">>;
reference(120002) -> <<"&mscr;">>;
reference(120003) -> <<"&nscr;">>;
reference(120005) -> <<"&pscr;">>;
reference(120006) -> <<"&qscr;">>;
reference(120007) -> <<"&rscr;">>;
reference(120008) -> <<"&sscr;">>;
reference(120009) -> <<"&tscr;">>;
reference(120010) -> <<"&uscr;">>;
reference(120011) -> <<"&vscr;">>;
reference(120012) -> <<"&wscr;">>;
reference(120013) -> <<"&xscr;">>;
reference(120014) -> <<"&yscr;">>;
reference(120015) -> <<"&zscr;">>;
reference(120068) -> <<"&Afr;">>;
reference(120069) -> <<"&Bfr;">>;
reference(120071) -> <<"&Dfr;">>;
reference(120072) -> <<"&Efr;">>;
reference(120073) -> <<"&Ffr;">>;
reference(120074) -> <<"&Gfr;">>;
reference(120077) -> <<"&Jfr;">>;
reference(120078) -> <<"&Kfr;">>;
reference(120079) -> <<"&Lfr;">>;
reference(120080) -> <<"&Mfr;">>;
reference(120081) -> <<"&Nfr;">>;
reference(120082) -> <<"&Ofr;">>;
reference(120083) -> <<"&Pfr;">>;
reference(120084) -> <<"&Qfr;">>;
reference(120086) -> <<"&Sfr;">>;
reference(120087) -> <<"&Tfr;">>;
reference(120088) -> <<"&Ufr;">>;
reference(120089) -> <<"&Vfr;">>;
reference(120090) -> <<"&Wfr;">>;
reference(120091) -> <<"&Xfr;">>;
reference(120092) -> <<"&Yfr;">>;
reference(120094) -> <<"&afr;">>;
reference(120095) -> <<"&bfr;">>;
reference(120096) -> <<"&cfr;">>;
reference(120097) -> <<"&dfr;">>;
reference(120098) -> <<"&efr;">>;
reference(120099) -> <<"&ffr;">>;
reference(120100) -> <<"&gfr;">>;
reference(120101) -> <<"&hfr;">>;
reference(120102) -> <<"&ifr;">>;
reference(120103) -> <<"&jfr;">>;
reference(120104) -> <<"&kfr;">>;
reference(120105) -> <<"&lfr;">>;
reference(120106) -> <<"&mfr;">>;
reference(120107) -> <<"&nfr;">>;
reference(120108) -> <<"&ofr;">>;
reference(120109) -> <<"&pfr;">>;
reference(120110) -> <<"&qfr;">>;
reference(120111) -> <<"&rfr;">>;
reference(120112) -> <<"&sfr;">>;
reference(120113) -> <<"&tfr;">>;
reference(120114) -> <<"&ufr;">>;
reference(120115) -> <<"&vfr;">>;
reference(120116) -> <<"&wfr;">>;
reference(120117) -> <<"&xfr;">>;
reference(120118) -> <<"&yfr;">>;
reference(120119) -> <<"&zfr;">>;
reference(120120) -> <<"&Aopf;">>;
reference(120121) -> <<"&Bopf;">>;
reference(120123) -> <<"&Dopf;">>;
reference(120124) -> <<"&Eopf;">>;
reference(120125) -> <<"&Fopf;">>;
reference(120126) -> <<"&Gopf;">>;
reference(120128) -> <<"&Iopf;">>;
reference(120129) -> <<"&Jopf;">>;
reference(120130) -> <<"&Kopf;">>;
reference(120131) -> <<"&Lopf;">>;
reference(120132) -> <<"&Mopf;">>;
reference(120134) -> <<"&Oopf;">>;
reference(120138) -> <<"&Sopf;">>;
reference(120139) -> <<"&Topf;">>;
reference(120140) -> <<"&Uopf;">>;
reference(120141) -> <<"&Vopf;">>;
reference(120142) -> <<"&Wopf;">>;
reference(120143) -> <<"&Xopf;">>;
reference(120144) -> <<"&Yopf;">>;
reference(120146) -> <<"&aopf;">>;
reference(120147) -> <<"&bopf;">>;
reference(120148) -> <<"&copf;">>;
reference(120149) -> <<"&dopf;">>;
reference(120150) -> <<"&eopf;">>;
reference(120151) -> <<"&fopf;">>;
reference(120152) -> <<"&gopf;">>;
reference(120153) -> <<"&hopf;">>;
reference(120154) -> <<"&iopf;">>;
reference(120155) -> <<"&jopf;">>;
reference(120156) -> <<"&kopf;">>;
reference(120157) -> <<"&lopf;">>;
reference(120158) -> <<"&mopf;">>;
reference(120159) -> <<"&nopf;">>;
reference(120160) -> <<"&oopf;">>;
reference(120161) -> <<"&popf;">>;
reference(120162) -> <<"&qopf;">>;
reference(120163) -> <<"&ropf;">>;
reference(120164) -> <<"&sopf;">>;
reference(120165) -> <<"&topf;">>;
reference(120166) -> <<"&uopf;">>;
reference(120167) -> <<"&vopf;">>;
reference(120168) -> <<"&wopf;">>;
reference(120169) -> <<"&xopf;">>;
reference(120170) -> <<"&yopf;">>;
reference(120171) -> <<"&zopf;">>;
reference(Cp) -> <<"&#", (integer_to_binary(Cp))/binary, ";">>.
