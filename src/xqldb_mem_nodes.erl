% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% ====================================================================
%% This module is for building in-memory XML nodes from the DB, XQuery or file.
%% ====================================================================
-module(xqldb_mem_nodes).

-compile({no_auto_import, [element/2]}).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================

-export([
    innermost/1,
    outermost/1
]).

-export([
    parse_file/1,
    parse_list/2,
    parse_binary/2,
    parse_binary_html/2
]).

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%          Constructors             %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
-export([
    document/3,
    fragment/3,
    element/3, element/4,
    attribute/6,
    processing_instruction/3, processing_instruction/4,
    comment/2,
    text/2,
    namespace/1
]).

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%           Modifiers               %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
-export([
    add_children/2,
    add_self_to_children/1,
    add_attribute/2,
    add_namespace/2,
    lookup_node/2
]).

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%           Accessors               %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% These could be more generic and do all node types, DB and mem.
%% Do not want to know where the node came from, just how to get more data.
-export([
    base_uri/1,
    document_uri/1,
    node_identity/1,
    is_id/1,
    is_idrefs/1,
    namespace_nodes/1,
    nilled/1,
    type_name/1,
    typed_value/1,
    node_kind/1,
    node_name/1,
    parent/1,
    children/1,
    % adds parent
    children_p/1,
    % no parent added, used in serialization
    children_no_p/1,
    attributes/1,
    % no parent added, used in serialization
    attributes_no_p/1,
    string_value/1
]).

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%              Axes                 %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
-export([
    ancestors/1,
    descendants/1
]).

%% -type state()::#{pos      => non_neg_integer(),
%%                  parent   => [non_neg_integer()],
%%                  uri      => binary(),
%%                  db       => string(),
%%                  node_stk => list(#{_ := _}),
%%                  chld_stk => list(#{_ := _}),
%%                  nsp_on   => list({_,_}),
%%                  nsp_off  => list({_,_,_})}.

-define(U2B(S),
    if
        is_binary(S) -> S;
        is_list(S) -> unicode:characters_to_binary(S)
    end
).

% construct from file
parse_file(<<"file://", File/binary>>) ->
    parse_file(File);
parse_file(File) ->
    State = default_state(unicode:characters_to_binary(File)),
    {Cont, Init} = ys_utils:trancoding_file_continuation(File),
    Opts = [
        {whitespace, true},
        {continuation, {Cont, <<>>}},
        {base, filename:dirname(File)},
        {external, fun ys_utils:external_file_reader/2}
    ],
    ParserState = yaccety_sax:stream(Init, Opts),
    FirstEvent = yaccety_sax:next_event(ParserState),
    stax_event(FirstEvent, State).

parse_binary(Bin, {Cwd, BaseUri}) ->
    State = default_state(unicode:characters_to_binary(BaseUri)),
    Opts = [
        {whitespace, true},
        {base, Cwd},
        {external, fun ys_utils:external_file_reader/2}
    ],
    ParserState = yaccety_sax:stream(Bin, Opts),
    FirstEvent = yaccety_sax:next_event(ParserState),
    Tree = stax_event(FirstEvent, State),
    case Tree of
        #{du := _} ->
            Tree#{du := []};
        _ ->
            Tree
    end.

parse_binary_html(Bin, BaseUri) ->
    State = default_state(unicode:characters_to_binary(BaseUri)),
    {ok, Tree, _} =
        htmerl:sax(Bin, [
            {event_fun, fun sax_event/3},
            {user_state, State}
        ]),
    case Tree of
        #{du := _} ->
            Tree#{du := []};
        _ ->
            Tree
    end.

-spec parse_list(_, _) -> xq_types:xml_node() | [xq_types:xml_node()].
parse_list(BaseUri, List) when is_list(List) ->
    eventfold(List, default_state(BaseUri)).

-spec eventfold(_, _) -> xq_types:xml_node() | [xq_types:xml_node()].
eventfold([Hd | Tail], State) ->
    eventfold(Tail, sax_event(Hd, 0, State));
eventfold([], Node) ->
    Node.

%% at = attributes
%% bu = base-uri (list of all xml:base atts to document)
%% ch = children
%% du = document-uri
%% id = node-identity (unique ID in document)
%% ii = is-id
%% ir = is-idrefs
%% ns = namespace-nodes (in-scope namespaces)
%% nd = nilled
%% nk = node-kind
%% nn = node-name
%% pt = parent
%% sv = string-value
%% tn = type-name
%% tv = typed-value

%% up = unparsed-entity-public-id (only XSLT)
%% us = unparsed-entity-system-id (only XSLT)

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%          Constructors             %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
document(Id, DocUri, BaseUri) ->
    % children and string value come later
    #{
        nk => document,
        id => Id,
        du => DocUri,
        bu => BaseUri
    }.

fragment(Id, DocUri, BaseUri) ->
    % children and string value come later
    #{
        nk => fragment,
        id => Id,
        du => DocUri,
        bu => BaseUri
    }.

element(Id, NodeName, TypeName) ->
    % parent,children,attributes(base-uri),namespace-nodes, and string value come later
    #{
        nk => element,
        id => Id,
        ns => #{},
        at => [],
        tn => TypeName,
        nn => NodeName
    }.

element(Id, NodeName, BaseUri, TypeName) ->
    % parent,children,attributes,namespace-nodes, and string value come later
    #{
        nk => element,
        id => Id,
        ns => #{},
        at => [],
        tn => TypeName,
        nn => NodeName,
        bu => BaseUri
    }.

attribute(Id, NodeName, Value, IsId, IsIdRef, TypeName) ->
    % parent, base-uri comes later
    #{
        nk => attribute,
        id => Id,
        nn => NodeName,
        tn => TypeName,
        sv => Value,
        ii => IsId,
        ir => IsIdRef
    }.

processing_instruction(Id, NodeName, Value) ->
    % parent
    #{
        nk => 'processing-instruction',
        id => Id,
        nn => NodeName,
        sv => Value
    }.

processing_instruction(Id, NodeName, Value, BaseUri) ->
    % parent
    #{
        nk => 'processing-instruction',
        id => Id,
        nn => NodeName,
        sv => Value,
        bu => BaseUri
    }.

comment(Id, Value) ->
    % parent, base-uri comes later
    #{
        nk => comment,
        id => Id,
        sv => Value
    }.

text(Id, Value) ->
    % parent, base-uri comes later
    #{
        nk => text,
        id => Id,
        sv => Value
    }.

namespace(NodeName) ->
    % parent, base-uri comes later
    #{
        nk => namespace,
        % simply something unique
        id => {make_ref(), 1},
        nn => NodeName
    }.

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%           Modifiers               %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
add_children(#{nk := element} = Parent, Children) ->
    Parent#{ch => Children};
add_children(#{nk := document} = Parent, Children) ->
    Parent#{ch => Children}.

add_attribute(
    #{
        nk := element,
        at := Ats
    } = E,
    #{nk := attribute} = At
) ->
    E#{at := [At | Ats]}.

% namespace must be {Uri,Prefix}
add_namespace(
    #{
        nk := element,
        ns := Nss
    } = E,
    {Ns, Px}
) ->
    E#{ns := Nss#{Px => Ns}};
add_namespace(#{nk := element} = E, {Ns, Px}) ->
    E#{ns => #{Px => Ns}}.

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%           Accessors               %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
attributes(
    #{
        nk := element,
        at := _
    } = Elem
) ->
    #{at := At} = add_self_to_attributes(Elem),
    At;
attributes(_) ->
    [].

attributes_no_p(#{
    nk := element,
    at := At
}) ->
    At;
attributes_no_p(_) ->
    [].

base_uri(#{bu := B}) ->
    B;
base_uri(#{nk := Nk} = N) when
    Nk == text; Nk == attribute; Nk == comment; Nk == 'processing-instruction'
->
    base_uri(parent(N));
base_uri(_) ->
    [].

children(DUMMY) -> children_p(DUMMY).

%% ;
%% children(#{ch := Ch}) ->
%%    Ch;
%% children(_) -> [].

children_p(#{nk := element} = E) ->
    #{ch := Ch} = add_self_to_children(E),
    Ch;
children_p(#{nk := document} = D) ->
    #{ch := Ch} = add_self_to_children(D),
    Ch;
children_p(_) ->
    [].

children_no_p(#{
    nk := element,
    ch := Ch
}) ->
    Ch;
children_no_p(#{
    nk := document,
    ch := Ch
}) ->
    Ch;
children_no_p(_) ->
    [].

document_uri(#{
    nk := document,
    du := Du
}) ->
    Du;
document_uri(_) ->
    [].

node_identity(#{id := Id}) -> Id.

is_id(#{nk := element}) ->
    false;
is_id(#{
    nk := attribute,
    ii := Ii
}) ->
    Ii;
is_id(_) ->
    [].

is_idrefs(#{nk := element}) ->
    false;
is_idrefs(#{
    nk := attribute,
    ir := Ir
}) ->
    Ir;
is_idrefs(_) ->
    [].

namespace_nodes(#{
    nk := element,
    ns := Ns
}) ->
    maps:to_list(Ns);
namespace_nodes(_) ->
    [].

nilled(#{nk := element}) -> false;
nilled(_) -> [].

node_kind(#{nk := Nk}) -> Nk.

node_name(#{
    nk := Nk,
    nn := Nn
}) when Nk =:= element; Nk =:= attribute; Nk =:= namespace; Nk =:= 'processing-instruction' ->
    Nn;
node_name(_) ->
    [].

parent(#{pt := #{nk := _} = Pt}) ->
    Pt;
parent(_) ->
    [].

ancestors(Node) ->
    ancestors_1(xqldb_mem_nodes:parent(Node), []).

ancestors_1([], Acc) ->
    lists:reverse(Acc);
ancestors_1(Node, Acc) ->
    ancestors_1(xqldb_mem_nodes:parent(Node), [Node | Acc]).

descendants(
    #{
        ch := _,
        nk := document
    } = S
) ->
    % block text children of document
    [
        D
     || #{nk := Nk} = C <- xqldb_mem_nodes:children(S),
        Nk =/= text,
        D <- descendants_1(C)
    ];
descendants(#{nk := element} = S) ->
    [
        D
     || C <- xqldb_mem_nodes:children(S),
        D <- descendants_1(C)
    ];
descendants(_) ->
    [].

descendants_1(#{nk := element} = Self) ->
    Ds = [
        D
     || C <- xqldb_mem_nodes:children(Self),
        D <- descendants_1(C)
    ],
    [Self | Ds];
descendants_1(Self) ->
    [Self].

string_value(#{sv := Sv}) ->
    Sv;
string_value(#{ch := _} = N) ->
    Tx = [
        T
     || #{nk := Nk} = T <- children(N),
        Nk == text orelse Nk == element
    ],
    build_string_value(Tx);
string_value(#{
    nk := namespace,
    nn := {U, _}
}) ->
    U.

type_name(#{
    nk := element,
    tn := Tn
}) ->
    Tn;
type_name(#{
    nk := attribute,
    tn := Tn
}) ->
    Tn;
type_name(#{nk := text}) ->
    'xs:untypedAtomic';
type_name(_) ->
    [].

% returns fun arity 1 (double) -> numeric value, else string
typed_value(Node) ->
    S = string_value(Node),
    fun
        (double) ->
            xqerl_numeric:double(S);
        (_) ->
            S
    end.

%% 13.8 fn:innermost
innermost(Nodes) ->
    %%    $nodes except $nodes/ancestor::node()
    S = map_from_node_list(Nodes),
    AncFun = fun(N, A) ->
        map_from_node_list(xqldb_xpath:ancestor_node(N, {[]}), A)
    end,
    Anc = lists:foldl(AncFun, #{}, Nodes),
    Outer = maps:fold(
        fun
            (K, _, A) when is_map_key(K, Anc) ->
                A;
            (_, V, A) ->
                [V | A]
        end,
        [],
        S
    ),
    xqldb_xpath:document_order(Outer).

%% 13.9 fn:outermost
outermost(Nodes) ->
    %%    $nodes[not(ancestor::node() intersect $nodes)]/.
    NodesMap = map_from_node_list(Nodes),
    Pred = fun(N) ->
        [
            1
         || #{id := Aid} <- xqldb_xpath:ancestor_node(N, {[]}),
            is_map_key(Aid, NodesMap)
        ] == []
    end,
    Outer = lists:filter(Pred, Nodes),
    xqldb_xpath:document_order(Outer).

%% ====================================================================
%% Internal functions
%% ====================================================================

map_from_node_list(Nodes) when is_list(Nodes) ->
    F = fun
        (#{id := Id} = E, Map) ->
            Map#{Id => E};
        (_, _) ->
            throw({error, non_node})
    end,
    lists:foldl(F, #{}, Nodes).

map_from_node_list(Nodes, Map) when is_list(Nodes), is_map(Map) ->
    F = fun
        (
            #{
                id := Id,
                nk := Nk
            } = E,
            Map1
        ) when Nk =/= attribute ->
            Map1#{Id => E};
        (_, Map1) ->
            Map1
    end,
    lists:foldl(F, Map, Nodes).

default_state(Uri) ->
    #{
        pos => 0,
        doc_ref => make_ref(),
        parent => [0],
        names => #{},
        uri => Uri,
        node_stk => [],
        chld_stk => [[], []],
        has_ns => false,
        nsps => [],
        nsp_off => [],
        nsp_on => []
    }.

%% SAX Events - File => in-memory document node
%% -spec sax_event(Event::any(),Location::any(),State::state()) ->
%%          xq_types:xml_document() | state().
-spec sax_event(_, _, _) ->
    #{'ch' := _, 'nk' := 'document' | 'element', _ => _}
    | [#{'ch' := _, 'nk' := 'document' | 'element', _ => _}].
%% startDocument

% came from a constructor
sax_event(startDocument, _L, #{uri := _Uri, base_uri := BaseUri, doc_ref := Ref} = State) ->
    Nd = document({Ref, 0}, [], BaseUri),
    State1 = maps:remove(base_uri, State),
    State1#{pos := 1, parent := [{0, Nd}]};
sax_event(startDocument, _L, #{uri := Uri, doc_ref := Ref} = State) ->
    Nd = document({Ref, 0}, Uri, Uri),
    State#{pos := 1, parent := [{0, Nd}]};
sax_event(startFragment, _L, #{uri := Uri, doc_ref := Ref} = State) ->
    Nd = document({Ref, 0}, Uri, Uri),
    State#{pos := 1, base_uri => Uri, parent := [{0, Nd}]};
sax_event(endDocument, _L, #{parent := [{0, Nd}], chld_stk := [Chld, _]} = _State) ->
    add_children(Nd, lists:reverse(Chld));
sax_event(endFragment, _L, #{parent := [{0, _}], chld_stk := [Chld, _]} = _State) ->
    lists:reverse(Chld);
sax_event({startPrefixMapping, PrefixS, UriS}, _, #{nsp_on := On, nsps := Nsps} = State) ->
    Prefix = ?U2B(PrefixS),
    Uri = ?U2B(UriS),
    N = {Uri, Prefix},
    State#{nsp_on := [N | On], has_ns := true, nsps := [N | Nsps]};
sax_event({endPrefixMapping, PrefixS}, _, #{nsp_on := On} = State) ->
    Prefix = ?U2B(PrefixS),
    On1 = pop_uri(On, Prefix),
    State#{nsp_on := On1};
sax_event(
    {startElement, UriS, LocalNameS, {PrefixS, _}, Attributes},
    _,
    #{
        pos := Pos,
        doc_ref := Ref,
        parent := Ps,
        chld_stk := NodeStk,
        has_ns := HasNs,
        nsp_on := NspOn,
        nsps := Nsps
    } = State
) ->
    Uri = ?U2B(UriS),
    Prefix = ?U2B(PrefixS),
    ok =
        case [ok || {UriX, PrefixX} <- NspOn, Uri == UriX, Prefix == PrefixX] of
            [] when Prefix /= <<>> ->
                throw({error, unknown_namespace});
            _ ->
                ok
        end,
    NodeName = {Uri, Prefix, ?U2B(LocalNameS)},
    %%
    {Atts, State1} = att_events(Attributes, [], State#{pos := Pos + 1}),
    {Elem, State2} =
        case State1 of
            #{base_uri := B} ->
                {element({Ref, Pos}, NodeName, B, 'xs:untyped'), maps:remove(base_uri, State1)};
            _ ->
                {element({Ref, Pos}, NodeName, 'xs:untyped'), State1}
        end,
    Elem1 = lists:foldl(fun(A, Acc) -> add_attribute(Acc, A) end, Elem, Atts),
    Elem2 =
        case HasNs of
            true ->
                lists:foldl(fun(A, Acc) -> add_namespace(Acc, A) end, Elem1, Nsps);
            false ->
                Elem1
        end,
    State2#{
        parent := [{Pos, Elem2} | Ps],
        chld_stk := [[], NodeStk],
        nsps := [],
        has_ns := false
    };
sax_event(
    {endElement, _Uri, _LocalName, {_PrefixS, _}},
    _,
    #{parent := [{_Self, Elem} | Ps], chld_stk := [Chldn, [Pc, NodeStk]]} = State
) ->
    Elem1 = add_children(Elem, lists:reverse(Chldn)),
    State#{parent := Ps, chld_stk := [[Elem1 | Pc], NodeStk]};
sax_event(
    {characters, String},
    _,
    #{
        pos := Pos,
        doc_ref := Ref,
        chld_stk := [Pc, NodeStk]
    } = State
) ->
    Value = ?U2B(String),
    Node = text({Ref, Pos}, Value),
    State#{pos := Pos + 1, chld_stk := [[Node | Pc], NodeStk]};
% could ignore with a setting
%% sax_event({ignorableWhitespace, _}, _, State) -> State;
sax_event({ignorableWhitespace, String}, L, State) ->
    sax_event({characters, String}, L, State);
sax_event(
    {processingInstruction, Target, Data},
    _,
    #{pos := Pos, doc_ref := Ref, chld_stk := [Pc, NodeStk]} = State
) ->
    Value = ?U2B(Data),
    NodeName = {<<>>, <<>>, ?U2B(Target)},
    Node = processing_instruction({Ref, Pos}, NodeName, Value),
    State#{pos := Pos + 1, chld_stk := [[Node | Pc], NodeStk]};
sax_event({comment, String}, _, #{pos := Pos, doc_ref := Ref, chld_stk := [Pc, NodeStk]} = State) ->
    Value = ?U2B(String),
    Node = comment({Ref, Pos}, Value),
    State#{pos := Pos + 1, chld_stk := [[Node | Pc], NodeStk]};
sax_event({baseUri, String}, _, State) ->
    Value = ?U2B(String),
    State#{base_uri => Value};
sax_event(
    {attribute, {UriS, PrefixS, AttributeNameS, ValueS}},
    _,
    #{
        pos := Pos,
        chld_stk := [Pc, NodeStk],
        doc_ref := Ref
    } = State
) ->
    Value = ?U2B(ValueS),
    NodeName = {?U2B(UriS), ?U2B(PrefixS), ?U2B(AttributeNameS)},
    Node = attribute({Ref, Pos}, NodeName, Value, false, false, 'xs:untypedAtomic'),
    State#{pos := Pos + 1, chld_stk := [[Node | Pc], NodeStk]};
sax_event({namespace, PrefixS, UriS}, _, #{chld_stk := [Pc, NodeStk]} = State) ->
    Node = namespace({UriS, PrefixS, <<>>}),
    State#{chld_stk := [[Node | Pc], NodeStk]};
sax_event(Event, _, State) ->
    ?dbg("UNKNOWN EVENT", Event),
    State.

att_events(
    [{UriS, Xml, Base, ValueS} | T],
    Acc,
    #{
        pos := Pos,
        doc_ref := Ref
    } = State
) when Xml == <<"xml">> andalso Base == <<"base">>; Xml == "xml" andalso Base == "base" ->
    Value = ?U2B(ValueS),
    NodeName = {?U2B(UriS), <<"xml">>, <<"base">>},
    NewBaseUri =
        case State of
            #{base_uri := Bu} ->
                case catch xqldb_lib:join_uris(Bu, Value) of
                    {error, _} ->
                        % invalid URI joins are empty
                        <<>>;
                    B ->
                        B
                end;
            _ ->
                Value
        end,
    Att = attribute({Ref, Pos}, NodeName, Value, false, false, 'xs:untypedAtomic'),
    att_events(T, [Att | Acc], State#{pos := Pos + 1, base_uri => NewBaseUri});
att_events(
    [{UriS, PrefixS, AttributeNameS, ValueS} | T],
    Acc,
    #{
        pos := Pos,
        doc_ref := Ref
    } = State
) ->
    Value = ?U2B(ValueS),
    NodeName = {?U2B(UriS), ?U2B(PrefixS), ?U2B(AttributeNameS)},
    Att = attribute({Ref, Pos}, NodeName, Value, false, false, 'xs:untypedAtomic'),
    att_events(T, [Att | Acc], State#{pos := Pos + 1});
att_events([], Acc, State) ->
    {Acc, State}.

pop_uri(On, Prefix) ->
    lists:keydelete(Prefix, 2, On).

% used once children added to node
build_string_value(Ch) ->
    build_string_value(Ch, <<>>).

build_string_value([H | T], Acc) ->
    Val =
        case string_value(H) of
            B when is_binary(B) ->
                B;
            F ->
                F()
        end,
    build_string_value(T, <<Acc/binary, Val/binary>>);
build_string_value([], Acc) ->
    Acc.

add_self_to_children(
    #{
        id := {Ref, _},
        ch := Children,
        bu := BU
    } = Obj
) when is_reference(Ref) ->
    Obj#{
        ch := [
            augment_base_uri(C#{pt => Obj}, BU)
         || C <- Children
        ]
    };
add_self_to_children(
    #{
        id := {Ref, _},
        ch := Children,
        bu := BU
    } = Obj
) when is_reference(Ref) ->
    Obj#{ch := [augment_base_uri(C#{pt => Obj}, BU) || C <- Children]};
add_self_to_children(
    #{
        id := {Ref, _},
        ch := Children
    } = Obj
) when is_reference(Ref) ->
    Obj#{ch := [C#{pt => Obj} || C <- Children]};
add_self_to_children(Obj) ->
    Obj.

add_self_to_attributes(
    #{
        at := Children,
        bu := BU
    } = Obj
) ->
    Obj#{
        at := [
            C#{
                pt => Obj,
                bu => BU
            }
         || C <- Children
        ]
    };
add_self_to_attributes(Obj) ->
    Obj.

lookup_node(#{id := NodeId} = Node, Id) when NodeId == Id ->
    Node;
lookup_node([#{id := NodeId} = Node | _], Id) when NodeId == Id ->
    Node;
lookup_node(
    #{
        id := NodeId,
        ch := Children
    },
    Id
) when NodeId < Id ->
    lookup_node(Children, Id);
lookup_node([#{id := NodeId, ch := Children}, #{id := NextNodeId} | _], Id) when
    NodeId < Id, NextNodeId > Id
->
    lookup_node(Children, Id);
lookup_node([#{id := NodeId, ch := Children}], Id) when NodeId < Id ->
    lookup_node(Children, Id);
lookup_node([_ | T], Id) ->
    lookup_node(T, Id).

% Base is the parent base-uri
augment_base_uri(#{bu := BU} = N, BU) ->
    N;
augment_base_uri(#{bu := _} = N, Base) when is_tuple(Base) ->
    N;
augment_base_uri(#{bu := BU} = N, Base) ->
    NewBase = xqldb_lib:join_uris(Base, BU),
    N#{bu := NewBase};
augment_base_uri(N, Base) ->
    N#{bu => Base}.

stax_event(
    {#{type := startDocument}, ParserState},
    #{uri := _Uri, base_uri := BaseUri, doc_ref := Ref} = State
) ->
    Nd = document({Ref, 0}, [], BaseUri),
    State1 = maps:remove(base_uri, State),
    State2 = State1#{pos := 1, parent := [{0, Nd}]},
    stax_event(yaccety_sax:next_event(ParserState), State2);
stax_event({#{type := startDocument}, ParserState}, #{uri := Uri, doc_ref := Ref} = State) ->
    Nd = document({Ref, 0}, Uri, Uri),
    State1 = State#{pos := 1, parent := [{0, Nd}]},
    stax_event(yaccety_sax:next_event(ParserState), State1);
stax_event({#{type := endDocument}, _ParserState}, State) ->
    #{parent := [{0, Nd}], chld_stk := [Chld, _]} = State,
    add_children(Nd, lists:reverse(Chld));
stax_event({#{type := startElement} = Event, ParserState}, State) ->
    #{
        qname := {Uri, Prefix, _LocalName} = NodeName,
        attributes := Attributes,
        namespaces := Namespaces
    } = Event,
    #{
        pos := Pos,
        doc_ref := Ref,
        parent := Ps,
        chld_stk := NodeStk,
        nsp_on := NspOn
    } = State,
    NspOn1 = [Namespaces | NspOn],
    ok = check_namespace(NspOn1, Uri, Prefix),
    State1 = State#{nsp_on := NspOn1},
    {Atts, State2} = stax_att_events(Attributes, [], State1#{pos := Pos + 1}),

    {Elem, State3} =
        case State2 of
            #{base_uri := B} ->
                {element({Ref, Pos}, NodeName, B, 'xs:untyped'), maps:remove(base_uri, State2)};
            _ ->
                {element({Ref, Pos}, NodeName, 'xs:untyped'), State2}
        end,
    Elem1 = lists:foldl(fun(A, Acc) -> add_attribute(Acc, A) end, Elem, Atts),
    Elem2 = lists:foldl(fun(A, Acc) -> add_namespace(Acc, A) end, Elem1, Namespaces),
    State4 = State3#{
        parent := [{Pos, Elem2} | Ps],
        chld_stk := [[], NodeStk]
    },
    stax_event(yaccety_sax:next_event(ParserState), State4);
stax_event({#{type := endElement}, ParserState}, State) ->
    #{parent := [{_Self, Elem} | Ps], chld_stk := [Chldn, [Pc, NodeStk]], nsp_on := [_ | Nsps]} =
        State,
    Elem1 = add_children(Elem, lists:reverse(Chldn)),
    State1 = State#{parent := Ps, chld_stk := [[Elem1 | Pc], NodeStk], nsp_on := Nsps},
    stax_event(yaccety_sax:next_event(ParserState), State1);
stax_event({#{type := characters, data := Data}, ParserState}, State) ->
    #{pos := Pos, doc_ref := Ref, chld_stk := [Pc, NodeStk]} = State,
    Node = text({Ref, Pos}, Data),
    State1 = State#{pos := Pos + 1, chld_stk := [[Node | Pc], NodeStk]},
    stax_event(yaccety_sax:next_event(ParserState), State1);
stax_event({#{type := comment, text := Text}, ParserState}, State) ->
    #{pos := Pos, doc_ref := Ref, chld_stk := [Pc, NodeStk]} = State,
    Node = comment({Ref, Pos}, Text),
    State1 = State#{pos := Pos + 1, chld_stk := [[Node | Pc], NodeStk]},
    stax_event(yaccety_sax:next_event(ParserState), State1);
stax_event({#{type := processingInstruction} = Event, ParserState}, State) ->
    #{target := Target, data := Data} = Event,
    #{pos := Pos, doc_ref := Ref, chld_stk := [Pc, NodeStk]} = State,
    NodeName = {<<>>, <<>>, Target},
    Node = processing_instruction({Ref, Pos}, NodeName, Data),
    State1 = State#{pos := Pos + 1, chld_stk := [[Node | Pc], NodeStk]},
    stax_event(yaccety_sax:next_event(ParserState), State1);
stax_event({#{type := _} = Event, ParserState}, State) ->
    ?dbg("UNKNOWN EVENT", Event),
    stax_event(yaccety_sax:next_event(ParserState), State).

check_namespace(_NspOns, _Uri, <<>>) -> ok;
check_namespace(NspOns, Uri, Prefix) -> find_prefix_uri(Uri, Prefix, NspOns).

find_prefix_uri(_Uri, _Prefix, []) ->
    throw({error, unknown_namespace});
find_prefix_uri(Uri, Prefix, [Ns | Nss]) ->
    case find_prefix_uri_(Ns, Uri, Prefix) of
        nil -> find_prefix_uri(Uri, Prefix, Nss);
        ok -> ok
    end.

find_prefix_uri_([{Uri, Prefix} | _Nss], Uri, Prefix) -> ok;
find_prefix_uri_([_ | Nss], Uri, Prefix) -> find_prefix_uri_(Nss, Uri, Prefix);
find_prefix_uri_([], _Uri, _Prefix) -> nil.

stax_att_events([{{_, <<"xml">>, <<"base">>}, Value} | T], Acc, State) ->
    #{
        pos := Pos,
        doc_ref := Ref
    } = State,
    NodeName = {<<"http://www.w3.org/XML/1998/namespace">>, <<"xml">>, <<"base">>},
    NewBaseUri =
        case State of
            #{base_uri := Bu} ->
                case catch xqldb_lib:join_uris(Bu, Value) of
                    {error, _} ->
                        % invalid URI joins are empty
                        <<>>;
                    B ->
                        B
                end;
            _ ->
                Value
        end,
    Att = attribute({Ref, Pos}, NodeName, Value, false, false, 'xs:untypedAtomic'),
    stax_att_events(T, [Att | Acc], State#{pos := Pos + 1, base_uri => NewBaseUri});
stax_att_events([{{Uri, Prefix, AttributeName}, Value} | T], Acc, State) ->
    #{
        pos := Pos,
        % nsp_on := NspOn,
        doc_ref := Ref
    } = State,
    % Uri = find_prefix_uri(Prefix, NspOn),
    NodeName = {Uri, Prefix, AttributeName},
    Att = attribute({Ref, Pos}, NodeName, Value, false, false, 'xs:untypedAtomic'),
    stax_att_events(T, [Att | Acc], State#{pos := Pos + 1});
stax_att_events([], Acc, State) ->
    {Acc, State}.
