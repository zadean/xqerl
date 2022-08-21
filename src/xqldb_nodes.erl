% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% This module is for use with DB nodes only. Root is always single document.
-module(xqldb_nodes).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================

-export([
    string_value/1,
    parent/1,
    ancestors/1,
    following/1,
    preceding/1,
    siblings/1,
    children/1,
    attributes/1
]).

-export([
    document/1,
    element/5,
    text/1,
    attribute/5,
    comment/1,
    proc_inst/2
]).

-export([
    trunc_id/1,
    deep_copy_node/1,
    nodes_to_postings/4,
    ids_to_root/1
]).

%% NodeBin filters on type name, value
-export([
    is_element/2,
    is_attribute/3,
    is_proc_inst/2,
    is_comment/1,
    is_text/2,
    is_document/1
]).

-export([
    get_doc/1,
    base_uri/1,
    document_uri/1,
    namespace_nodes/1,
    iterator_to_node_list/2,
    iterator_to_node_set/2,
    iterator_to_atom_set/2,
    iterator_to_dbl_set/2,
    select_with_prefix/2,
    select_following_siblings/2,
    select_preceding_siblings/2,
    get_single_node/3,

    test/0
]).

%% d - Kind:8 | Text:32                   = 40
document(UriRef) ->
    <<?document, UriRef/binary>>.

%% e - Kind:8 |         | Name:21 | Ns:11 | NsF:1 | Atts:7 = 48
element(NameRef, NsRef, PxRef, true, AttCnt) ->
    <<?element, NameRef:24/integer, NsRef:12/integer, PxRef:12/integer, 1:1, AttCnt:7/integer>>;
element(NameRef, NsRef, PxRef, _, AttCnt) ->
    <<?element, NameRef:24/integer, NsRef:12/integer, PxRef:12/integer, 0:1, AttCnt:7/integer>>.

%% t - Kind:8 | Text:32 |                 = 40
text(TextRef) ->
    <<?text, TextRef/binary>>.

%% a - Kind:4 | Type:4  | Text:32 | Name:21 | Ns:11 = 72
attribute(NameRef, NsRef, PxRef, TextRef, Type) ->
    <<?attribute:4, Type:4, NameRef:24/integer, NsRef:12/integer, PxRef:12/integer,
        TextRef/binary>>.

%% c - Kind:8 | Text:32 |                 = 40
comment(TextRef) ->
    <<?comment:8, TextRef/binary>>.

%% p - Kind:8 | Text:32 | Name:24         = 64
proc_inst(NameRef, TextRef) ->
    <<?proc_inst:8, NameRef:24/integer, TextRef/binary>>.

% List of nodes as index postings
nodes_to_postings(Index, Field, Nodes, Timestamp) ->
    [{Index, Field, Id, Bin, [], Timestamp} || {Id, Bin} <- Nodes].

% Path to root from list node id
ids_to_root([]) -> [[]];
ids_to_root(NodeId) -> [NodeId | ids_to_root(lists:droplast(NodeId))].

%% Returns if this NodeBin is an element with Name, NameId is a list.
-spec is_element(
    Name :: {UriId :: '_' | non_neg_integer(), NameId :: '_' | non_neg_integer()},
    NodeBin :: binary()
) -> boolean().
is_element(
    Name,
    <<?element, NameRef:24/integer, NsRef:12/integer, _PxRef:12/integer, _H:1, _AttCnt:7/integer>>
) ->
    case Name of
        {'_', '_'} -> true;
        {'_', NameRef} -> true;
        {NsRef, '_'} -> true;
        {NsRef, NameRef} -> true;
        _ -> false
    end;
is_element(_, _) ->
    false.

%% Returns if this NodeBin is an attribute with Name and Value, NameId is a list.
-spec is_attribute(
    Name :: {UriId :: '_' | non_neg_integer(), NameId :: '_' | non_neg_integer()},
    Value :: '_' | non_neg_integer(),
    NodeBin :: binary()
) -> boolean().
is_attribute(
    Name,
    Value,
    <<?attribute:4, _Type:4, NameRef:24/integer, NsRef:12/integer, _PxRef:12/integer,
        TextRef/binary>>
) ->
    case {Name, Value} of
        {{'_', '_'}, '_'} -> true;
        {{'_', NameRef}, '_'} -> true;
        {{NsRef, '_'}, '_'} -> true;
        {{NsRef, NameRef}, '_'} -> true;
        {{'_', '_'}, TextRef} -> true;
        {{'_', NameRef}, TextRef} -> true;
        {{NsRef, '_'}, TextRef} -> true;
        {{NsRef, NameRef}, TextRef} -> true;
        _ -> false
    end;
is_attribute(_, _, _) ->
    false.

%% Returns if this NodeBin is a processing-instruction with NameId.
-spec is_proc_inst(
    Name :: '_' | non_neg_integer(),
    NodeBin :: binary()
) -> boolean().
is_proc_inst('_', <<?proc_inst, _/binary>>) -> true;
is_proc_inst(NameRef, <<?proc_inst, NameRef:24/integer, _/binary>>) -> true;
is_proc_inst(_, _) -> false.

%% Returns if this NodeBin is a comment.
-spec is_comment(NodeBin :: binary()) -> boolean().
is_comment(<<?comment, _/binary>>) ->
    true;
is_comment(_) ->
    false.

%% Returns if this NodeBin is a text with Value.
-spec is_text(
    Value :: '_' | binary(),
    NodeBin :: binary()
) -> boolean().
is_text(Value, <<?text, TextRef/binary>>) ->
    case Value of
        '_' -> true;
        TextRef -> true;
        _ -> false
    end;
is_text(_, _) ->
    false.

%% Returns if this NodeBin is a document. TODO add root element name
-spec is_document(NodeBin :: binary()) -> boolean().
is_document(<<?document, _/binary>>) ->
    true;
is_document(_) ->
    false.

get_doc({DbPid, DocId, _} = XNode) ->
    Node = erlang:node(DbPid),
    case Node == node() of
        false ->
            % non-local XML should be built where it came from
            rpc:call(Node, ?MODULE, ?FUNCTION_NAME, [XNode]);
        true ->
            local_doc(DbPid, DocId)
    end.

db_node_to_node(_, []) ->
    [];
db_node_to_node(#{db_name := DbPid} = DB, {NodeId, [{b, Bin}, {d, DocId}, {p, Path}]}) ->
    Map = map_from_node_bin(DB, Bin),
    Map#{
        id => {DbPid, DocId, NodeId},
        pa => Path
    }.

%db_node_to_atom(_, []) -> [];
db_node_to_atom(DB, Node) ->
    Nd = db_node_to_node(DB, Node),
    Tv = xqerl_types:atomize(Nd),
    % typed value
    Nd#{tv => Tv}.

%db_node_to_dbl(_, []) -> [];
db_node_to_dbl(DB, Node) ->
    Nd = db_node_to_node(DB, Node),
    Tv = xqerl_types:cast_as(Nd, 'xs:double'),
    % typed value
    Nd#{tv => Tv}.

%% db_node_to_node_key(_, []) -> [];
%% db_node_to_node_key(#{db_name := DbPid} = DB, {NodeId, [{b,Bin},{d,DocId},{p,Path}]}) ->
%%    Map = map_from_node_bin(DB, Bin),
%%    {NodeId, Map#{id => {DbPid, DocId, NodeId},
%%                  pa => Path}}.

map_from_node_bin(
    #{names := Names},
    <<?element, NameRef:24/integer, NsRef:12/integer, PxRef:12/integer, H:1/integer,
        AttCnt:7/integer>>
) ->
    #{
        nk => element,
        nn => get_name(NsRef, PxRef, NameRef, Names),
        hn =>
            if
                H == 1 -> true;
                true -> false
            end,
        at => AttCnt
    };
map_from_node_bin(DB, <<?text, TextRef/binary>>) ->
    #{
        nk => text,
        sv => get_string_value(TextRef, DB)
    };
map_from_node_bin(
    #{names := Names} = DB,
    <<?attribute:4, Type:4/integer, NameRef:24/integer, NsRef:12/integer, PxRef:12/integer,
        TextRef/binary>>
) ->
    #{
        nk => attribute,
        nn => get_name(NsRef, PxRef, NameRef, Names),
        tn => attribute_type_to_name(Type),
        sv => get_string_value(TextRef, DB)
    };
map_from_node_bin(DB, <<?document, UriRef/binary>>) ->
    Uri = xqldb_string_table2:lookup(DB, UriRef),
    #{
        nk => document,
        du => Uri
    };
map_from_node_bin(DB, <<?comment, TextRef/binary>>) ->
    #{
        nk => comment,
        sv => get_string_value(TextRef, DB)
    };
map_from_node_bin(#{names := Names} = DB, <<?proc_inst, NameRef:24/integer, TextRef/binary>>) ->
    #{
        nk => 'processing-instruction',
        nn => {<<>>, <<>>, maps:get(NameRef, Names)},
        sv => get_string_value(TextRef, DB)
    }.

get_name(NsRef, PxRef, NameRef, Names) ->
    #{
        NameRef := Name,
        PxRef := Px,
        NsRef := Ns
    } = Names,
    {Ns, Px, Name}.

attribute_type_to_name(?att_id) -> 'xs:ID';
attribute_type_to_name(?att_idref) -> 'xs:IDREF';
attribute_type_to_name(_) -> 'xs:untypedAtomic'.

iterator_to_node_list(Iter, DB) when is_function(Iter) ->
    iterator_to_node_list(Iter(), DB);
iterator_to_node_list([Iter], DB) when is_function(Iter) ->
    iterator_to_node_list(Iter(), DB);
iterator_to_node_list([H | T], DB) ->
    [db_node_to_node(DB, H) | iterator_to_node_list(T, DB)];
iterator_to_node_list([], _) ->
    [].

local_doc(DbPid, DocId) ->
    DB = xqerl_context:get_db(DbPid),
    [Node] = xqldb_idx_mi:lookup_node(DB, DocId, []),
    db_node_to_node(DB, Node).

namespace_nodes(#{id := {DbPid, DocId, NodeId}}) ->
    DB = xqerl_context:get_db(DbPid),
    % list from current to root
    IdsToRoot = ids_to_root(NodeId),
    NsMaps = [get_namespaces(DB, DocId, Id) || Id <- IdsToRoot],
    IsNss = lists:foldr(
        fun(M, A) ->
            maps:merge(A, M)
        end,
        #{<<"xml">> => <<"http://www.w3.org/XML/1998/namespace">>},
        NsMaps
    ),
    maps:to_list(IsNss).

document_uri(#{
    id := {DbPid, _, []},
    du := U
}) ->
    #{uri := DbUri} = xqerl_context:get_db(DbPid),
    xqldb_uri:join(DbUri, U);
document_uri(_) ->
    [].

base_uri(#{id := {DbPid, DocId, _}} = Node) ->
    #{uri := DbUri} = DB = xqerl_context:get_db(DbPid),
    [Doc] = xqldb_idx_mi:lookup_node(DB, DocId, []),
    #{du := U} = db_node_to_node(DB, Doc),
    Base = xqldb_uri:join(DbUri, U),
    Ancestors = ancestors(Node),
    Steps = [{attribute, {att, <<"http://www.w3.org/XML/1998/namespace">>, <<"base">>}}],
    BaseAtts = xqldb_xpath:simple_path([Node | Ancestors], Steps),
    Fold = fun(#{sv := Sv}, OldBase) ->
        xqldb_lib:join_uris(OldBase, Sv)
    end,
    lists:foldl(Fold, Base, BaseAtts).

trunc_id([]) -> [];
trunc_id([_] = A) -> A;
trunc_id([_, _] = A) -> A;
trunc_id([_, _, _] = A) -> A;
trunc_id([A, B, C | _]) -> [A, B, C].

%% trunc_id(<<>>) -> <<>>;
%% trunc_id(<<_:4/binary>> = A) -> A;
%% trunc_id(<<_:8/binary>> = A) -> A;
%% trunc_id(<<_:12/binary>> = A) -> A;
%% trunc_id(<<A:12/binary,_/binary>>) -> A.

test() -> ok.

%% ====================================================================
%% Internal functions
%% ====================================================================

%% d - Kind:8 | Text:32                   = 40
%% e - Kind:8 |         | Name:21 | Ns:11 | NsF:1 | Atts:7 = 48
%% t - Kind:8 | Text:32 |                 = 40
%% a - Kind:4 | Type:4  | Text:32 | Name:21 | Ns:11 = 72
%% c - Kind:8 | Text:32 |                 = 40
%% p - Kind:8 | Text:32 | Name:24         = 64

parent_id([]) -> [];
parent_id(Id) -> lists:droplast(Id).

%% parent_id(Par) ->
%%    binary:part(Par, {0, byte_size(Par) - 4}).

preceding(
    #{
        id := {DbPid, DocId, NodeId},
        nk := _
    } = _
) ->
    Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, NodeId},
    case xqerl_lib:lget(Key) of
        undefined ->
            DB = xqerl_context:get_db(DbPid),
            Res = xqldb_idx_mi:lookup_preceding(DB, DocId, NodeId),
            % reversed results for predicates
            Out = lists:reverse(iterator_to_node_list(Res, DB)),
            xqerl_lib:lput(Key, Out);
        Out ->
            Out
    end;
preceding(_) ->
    [].

following(
    #{
        id := {DbPid, DocId, NodeId},
        nk := _
    } = _
) ->
    Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, NodeId},
    case xqerl_lib:lget(Key) of
        undefined ->
            DB = xqerl_context:get_db(DbPid),
            Res = xqldb_idx_mi:lookup_following(DB, DocId, NodeId),
            Out = iterator_to_node_list(Res, DB),
            xqerl_lib:lput(Key, Out);
        Out ->
            Out
    end;
following(_) ->
    [].

ancestors(
    #{
        id := {DbPid, DocId, NodeId},
        nk := Nk
    } = _
) when Nk =/= document ->
    Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, NodeId},
    case xqerl_lib:lget(Key) of
        undefined ->
            AncIds = tl(ids_to_root(NodeId)),
            DB = xqerl_context:get_db(DbPid),
            Res = [
                get_single_node(DB, DocId, Id)
             || Id <- AncIds
            ],
            xqerl_lib:lput(Key, Res);
        Out ->
            Out
    end;
ancestors(_) ->
    [].

%{DbPid, DocId, ChildId},
siblings(
    #{
        id := _,
        nk := Nk
    } = Nd
) when Nk =/= document ->
    Parent = parent(Nd),
    % call children on fake parent node
    children(Parent).

% child axis for DB nodes
parent(
    #{
        id := {DbPid, DocId, ChildId},
        nk := Nk
    } = _
) when Nk =/= document ->
    ParentId = parent_id(ChildId),
    Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, ParentId},
    case xqerl_lib:lget(Key) of
        undefined ->
            DB = xqerl_context:get_db(DbPid),
            Res = xqldb_idx_mi:lookup_node(DB, DocId, ParentId),
            [Out] = iterator_to_node_list(Res, DB),
            xqerl_lib:lput(Key, Out);
        Out ->
            Out
    end;
parent(_) ->
    [].

% child axis for DB nodes
children(
    #{
        id := {DbPid, DocId, NodeId},
        nk := Nk
    } = _
) when Nk == element; Nk == document ->
    Key = {?MODULE, ?FUNCTION_NAME, DbPid, DocId, NodeId},
    case xqerl_lib:lget(Key) of
        undefined ->
            DB = xqerl_context:get_db(DbPid),
            Res = xqldb_idx_mi:lookup_children(DB, DocId, NodeId),
            Out =
                case iterator_to_node_list(Res, DB) of
                    O when Nk == document ->
                        [I || #{nk := Ik} = I <- O, Ik /= text];
                    O ->
                        O
                end,
            xqerl_lib:lput(Key, Out);
        Out ->
            Out
    end;
children(_) ->
    [].

%{DbPid, DocId, NodeId},
attributes(
    #{
        id := _,
        nk := element,
        at := Atc
    } = Nd
) when Atc > 0 ->
    xqldb_xpath:simple_path(Nd, [{attribute, {att, '_', '_'}}]);
attributes(_) ->
    [].

get_single_node(DB, DocId, NodeId) ->
    Res = xqldb_idx_mi:lookup_node(DB, DocId, NodeId),
    [Out] = iterator_to_node_list(Res, DB),
    Out.

string_value(
    #{
        id := {_, _, _},
        nk := Nk
    } = N
) when Nk == element; Nk == document ->
    Texts = xqldb_xpath:simple_path([N], [{descendant, text}]),
    iolist_to_binary([Sv || #{sv := Sv} <- Texts]);
string_value(
    #{
        id := {_, _, _},
        nk := Nk,
        sv := Sv
    } = _
) when Nk == text; Nk == attribute; Nk == comment; Nk == 'processing-instruction' ->
    Sv;
string_value(_) ->
    [].

select_with_prefix(Set, Prefix) ->
    MS = [{{Prefix ++ '_', '$1'}, [], ['$1']}],
    %MS = [{{lists:append(Prefix, '_'),'$1'},[],['$1']}],
    ets:select(Set, MS).

select_following_siblings(Set, Prefix) ->
    [C | R] = lists:reverse(Prefix),
    M = lists:reverse(['$1' | R]),
    MS = [{{M, '$2'}, [{'>', '$1', C}], ['$2']}],
    ets:select(Set, MS).

select_preceding_siblings(Set, Prefix) ->
    [C | R] = lists:reverse(Prefix),
    M = lists:reverse(['$1' | R]),
    MS = [{{M, '$2'}, [{'<', '$1', C}], ['$2']}],
    ets:select(Set, MS).

%% XXX better here to completely build the nodes expanding string values to
%% their full size if need be. Also get all nested nodes and add as children.
%% leave their ID as-is, this will allow getting
%% parent/ancestor/preceding/following axes later
deep_copy_node(
    #{
        id := {_DbPid, _, Id},
        nk := Nk,
        sv := _Sv
    } = N
) when Nk =:= text; Nk =:= comment; Nk =:= attribute; Nk =:= 'processing-instruction' ->
    N#{id := {0, Id}};
%% element and document node copies should pull in all descendant nodes at one
%% time. This can be an iterator list. Also, get the inscope-namespaces.
deep_copy_node(#{
    id := {DbPid, DocId, NodeId},
    nk := Nk
}) ->
    DB = xqerl_context:get_db(DbPid),
    % list from current to root
    IdsToRoot = ids_to_root(NodeId),
    NsMaps = [get_namespaces(DB, DocId, Id) || Id <- IdsToRoot],
    %?dbg("NsMaps",NsMaps),
    IsNss = lists:foldr(
        fun(M, A) ->
            maps:merge(A, M)
        end,
        #{<<>> => <<>>},
        NsMaps
    ),
    Iter = xqldb_idx_mi:lookup_tree(DB, DocId, NodeId),
    List =
        case Nk of
            document ->
                Filter = fun
                    (#{nk := text, id := {_, _, [_]}}) -> false;
                    (_) -> true
                end,
                lists:filter(Filter, iterator_to_node_list(Iter, DB));
            _ ->
                iterator_to_node_list(Iter, DB)
        end,
    {[B], []} = build_node_from_list(
        List,
        DB#{inscope_ns => IsNss},
        node_depth(NodeId),
        [],
        erlang:make_ref()
    ),
    B.

%% at = attributes
%% bu = base-uri (list of all xml:base atts to document)
%% ch = children
%% du = document-uri
%% id = node-identity (unique ID in document)
%% ii = is-id
%% ir = is-idrefs
%% hn = has namespaces, flag to look them up from an element
%% ns = namespace-nodes (in-scope namespaces)
%% nd = nilled
%% nk = node-kind
%% nn = node-name
%% pt = parent
%% sv = string-value
%% tn = type-name
%% tv = typed-value
%% pa = path id in DB

% everything should return {Siblings, Rest}
build_node_from_list([], _DB, _Depth, Siblings, _Ref) ->
    {lists:reverse(Siblings), []};
build_node_from_list(
    [
        #{
            nk := Nk,
            id := {_, _, Id}
        } = N
        | T
    ],
    DB,
    Depth,
    Siblings,
    Ref
) when Nk =:= text; Nk =:= comment; Nk =:= 'processing-instruction' ->
    case node_depth(N) of
        Depth ->
            build_node_from_list(T, DB, Depth, [N#{id := {Ref, Id}} | Siblings], Ref);
        Nd when Nd < Depth ->
            {lists:reverse(Siblings), [N | T]}
    end;
% everything should return {Siblings, Rest}
build_node_from_list(
    [
        #{
            nk := element,
            id := {_, DocId, Id} = NodeId,
            hn := HasNs,
            at := AttCnt
        } = N
        | T
    ],
    #{inscope_ns := Ins} = DB,
    Depth,
    Siblings,
    Ref
) ->
    % inscope_ns is on the DB map and is the inscope for the head element
    % each element with namespaces pulls in its own and merges to map
    case Depth > node_depth(NodeId) of
        true ->
            {lists:reverse(Siblings), [N | T]};
        false ->
            Ins1 =
                case HasNs of
                    true ->
                        maps:merge(Ins, get_namespaces(DB, DocId, Id));
                    false ->
                        Ins
                end,
            {Atts, Rest} =
                case AttCnt of
                    0 ->
                        {[], T};
                    _ ->
                        take_attributes(T, [], DB, Ref)
                end,
            {Ch, Rest1} = build_node_from_list(Rest, DB#{inscope_ns := Ins1}, Depth + 1, [], Ref),
            Nd = N#{
                at := Atts,
                id := {Ref, Id},
                ns => Ins1,
                ch => Ch,
                tn => 'xs:untypedAtomic'
            },
            build_node_from_list(Rest1, DB, Depth, [Nd | Siblings], Ref)
    end;
% everything should return {Siblings, Rest}
build_node_from_list(
    [
        #{
            nk := document,
            du := Sr
        } = N
        | T
    ],
    DB,
    _Depth,
    _Siblings,
    Ref
) ->
    Sv = get_string_value(Sr, DB),
    {Ch, Rest} = build_node_from_list(T, DB, 1, [], Ref),
    {
        [
            N#{
                du := Sv,
                id := {Ref, []},
                ch => Ch
            }
        ],
        Rest
    }.

node_depth(#{id := {_, _, NdId}}) ->
    length(NdId);
node_depth({_, _, NdId}) ->
    length(NdId);
node_depth(NdId) when is_list(NdId) ->
    length(NdId).

% expand all attributes at head of the list return {Atts, Rest}
take_attributes(
    [
        #{
            nk := attribute,
            id := {_, _, Id}
        } = N
        | T
    ],
    Atts,
    DB,
    Ref
) ->
    take_attributes(T, [N#{id := {Ref, Id}} | Atts], DB, Ref);
take_attributes(List, Atts, _DB, _Ref) ->
    {Atts, List}.

get_namespaces(DB, DocId, NodeId) ->
    xqldb_idx_mi:lookup_namespaces(DB, DocId, NodeId).

get_string_value(Ref, _) when byte_size(Ref) < 64 ->
    Ref;
get_string_value(Ref, DB) ->
    xqldb_string_table2:lookup(DB, Ref).

iterator_to_node_set(Iter, DB) ->
    List = iterator_to_node_set_1(Iter, DB),
    Tab = ets:new(?MODULE, [
        protected,
        ordered_set,
        {read_concurrency, true},
        {write_concurrency, true}
    ]),
    ets:insert(Tab, List),
    Tab.

iterator_to_atom_set(Iter, DB) ->
    List = iterator_to_atom_set_1(Iter, DB),
    Tab = ets:new(xqldb_nodes_atom, [
        protected,
        ordered_set,
        {read_concurrency, true},
        {write_concurrency, true}
    ]),
    ets:insert(Tab, List),
    Tab.

iterator_to_dbl_set(Iter, DB) ->
    List = iterator_to_dbl_set_1(Iter, DB),
    Tab = ets:new(xqldb_nodes_dbl, [
        protected,
        ordered_set,
        {read_concurrency, true},
        {write_concurrency, true}
    ]),
    ets:insert(Tab, List),
    Tab.

iterator_to_node_set_1(Iter, DB) when is_function(Iter) ->
    iterator_to_node_set_1(Iter(), DB);
iterator_to_node_set_1([Iter], DB) when is_function(Iter) ->
    iterator_to_node_set_1(Iter(), DB);
iterator_to_node_set_1([{I, _} = H | T], DB) ->
    [{I, db_node_to_node(DB, H)} | iterator_to_node_set_1(T, DB)];
iterator_to_node_set_1([], _) ->
    [].

iterator_to_atom_set_1(Iter, DB) when is_function(Iter) ->
    iterator_to_atom_set_1(Iter(), DB);
iterator_to_atom_set_1([Iter], DB) when is_function(Iter) ->
    iterator_to_atom_set_1(Iter(), DB);
iterator_to_atom_set_1([{I, _} = H | T], DB) ->
    [{I, db_node_to_atom(DB, H)} | iterator_to_atom_set_1(T, DB)];
iterator_to_atom_set_1([], _) ->
    [].

iterator_to_dbl_set_1(Iter, DB) when is_function(Iter) ->
    iterator_to_dbl_set_1(Iter(), DB);
iterator_to_dbl_set_1([Iter], DB) when is_function(Iter) ->
    iterator_to_dbl_set_1(Iter(), DB);
iterator_to_dbl_set_1([{I, _} = H | T], DB) ->
    [{I, db_node_to_dbl(DB, H)} | iterator_to_dbl_set_1(T, DB)];
iterator_to_dbl_set_1([], _) ->
    [].

%% split_id(<<A:32/integer, B:32/integer, C:32/integer, D:32/integer, Rest/binary>>) ->
%%    [A,B,C,D|split_id(Rest)];
%% split_id(<<A:32/integer, B:32/integer, C:32/integer, Rest/binary>>) ->
%%    [A,B,C|split_id(Rest)];
%% split_id(<<A:32/integer, B:32/integer, Rest/binary>>) ->
%%    [A,B|split_id(Rest)];
%% split_id(<<A:32/integer, Rest/binary>>) ->
%%    [A|split_id(Rest)];
%% split_id(<<>>) -> [].
