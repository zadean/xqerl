% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

-module(xqldb_sax).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    parse_file/2,
    parse_node/4,
    parse_dir/2,
    parse_file/4,
    parse_list/4,
    split_parse_file/3
]).

-type state() ::
    % from DTD for typing info
    #{
        att_dec => map(),
        counter => _,
        % paths used right now, a stack
        curr_path => list(),
        db => _,
        % unique document ID
        doc_id => {{_, _}, binary()},
        % the next element has a namespace
        has_ns => boolean(),
        % ignore all WS text nodes or not
        ignore_ws => boolean(),
        % all names used so far
        names => map(),
        % all inscope namespaces so far
        nsps => map(),
        % node stack  -> each node Pos is appended, makes up the unique NodeId
        parent => binary(),
        % paths used : path => ID
        paths => map(),
        % current position    -> simply counts forward
        pos => integer(),
        % cache short text binaries
        texts => map(),
        % document-uri
        uri => _,
        % index writer/collector process
        writer => _
    }.

-define(U2B(S), unicode:characters_to_binary(S)).
%-define(MAX_PROCS, 45).
-define(MAX_PROCS, 32).

parse_dir(DB, Dir) ->
    xqldb_file:pmap(
        Dir,
        ".xml$",
        true,
        fun(Nm) -> xqldb_sax:parse_file(DB, Nm) end
    ).

parse_file(DB, File) ->
    Uri = unicode:characters_to_binary(File),
    parse_file(DB, File, Uri, erlang:system_time()).

parse_file(DB, File, Uri, Stamp) ->
    State0 = default_state(DB, Uri, Stamp),
    Counter = #{},
    WFun = fun() -> index_writer([], {DB, {Uri, Stamp}}, 0) end,
    Writer = erlang:spawn_opt(WFun, [
        link,
        {fullsweep_after, 50}
    ]),
    State = State0#{
        writer => Writer,
        counter => Counter
    },
    try
        {Cont, Init} = ys_utils:trancoding_file_continuation(File),
        Opts = [
            {whitespace, true},
            {continuation, {Cont, <<>>}},
            {base, filename:dirname(File)},
            {external, fun ys_utils:external_file_reader/2}
        ],
        ParserState = yaccety_sax:stream(Init, Opts),
        FirstEvent = yaccety_sax:next_event(ParserState),
        State1 = stax_event(FirstEvent, State),
        % make and insert all index values at all levels
        Self = self(),
        ok = post_document_paths(State1),
        Writer ! {Self, done},
        ok = wait_index_writer(Writer),
        Counts = get_path_counts(maps:get(counter, State1)),
        xqldb_structure_index:incr_counts(DB, Counts),
        ok
    catch
        _:G:E ->
            [{G, E}]
    end.

parse_node(DB, Node, Name, Stamp) ->
    State0 = default_state(DB, Name, Stamp),
    Counter = #{},
    WFun = fun() -> index_writer([], {DB, {Name, Stamp}}, 0) end,
    Writer = erlang:spawn_opt(WFun, [link, {fullsweep_after, 0}]),
    State = State0#{
        writer => Writer,
        counter => Counter
    },
    try
        State1 = parse_node(Node, State),
        %?dbg("State1",State1),
        Self = self(),
        ok = post_document_paths(State1),
        Writer ! {Self, done},
        ok = wait_index_writer(Writer),
        Counts = get_path_counts(maps:get(counter, State1)),
        xqldb_structure_index:incr_counts(DB, Counts),
        ok
    catch
        _:G:E ->
            [{G, E}]
    end.

parse_list(_DB, [], _Uri, _) ->
    ok;
parse_list(DB, List, Name, Stamp) ->
    State0 = default_state(DB, Name, Stamp),
    Counter = #{},
    WFun = fun() -> index_writer([], {DB, {Name, Stamp}}, 0) end,
    Writer = erlang:spawn_opt(WFun, [link, {fullsweep_after, 0}]),
    State = State0#{
        writer => Writer,
        counter => Counter
    },
    try
        F = fun(E, S) ->
            event(E, 0, S)
        end,
        State1 = lists:foldl(F, State, List),
        %?dbg("State1",State1),
        Self = self(),
        ok = post_document_paths(State1),
        Writer ! {Self, done},
        ok = wait_index_writer(Writer),
        Counts = get_path_counts(maps:get(counter, State1)),
        xqldb_structure_index:incr_counts(DB, Counts),
        ok
    catch
        _:G:E ->
            [{G, E}]
    end.

split_parse_file(File, Fun, Path) ->
    State = default_split_state(Fun, Path),
    {ok, ok, _} =
        xmerl_sax_parser:file(File, [
            {continuation_fun, fun default_continuation_cb/1},
            {event_fun, fun split_doc/3},
            {event_state, State}
        ]),
    ok.

default_continuation_cb(IoDevice) ->
    case file:read(IoDevice, 1 bsl 16) of
        eof ->
            {<<>>, IoDevice};
        {ok, FileBin} ->
            {FileBin, IoDevice}
    end.

%% ====================================================================
%% Internal functions
%% ====================================================================

default_state(DB, Uri, Stamp) ->
    {_UriId, M1} = get_name_id(DB, <<>>, #{}),
    {_XmlId, M2} = get_name_id(DB, <<"http://www.w3.org/XML/1998/namespace">>, M1),
    DocId = {Uri, Stamp},
    % pre-encode the doc id
    DocIdEnc = patch_encode({DocId}),
    % unique document ID
    #{
        doc_id => {DocId, DocIdEnc},
        % index writer/collector process
        writer => [],
        % current position    -> simply counts forward
        pos => 0,
        % node stack  -> each node Pos is appended, makes up the unique NodeId
        parent => <<>>,
        % all names used so far
        names => #{},
        % paths used : path => ID
        paths => #{},
        % paths used right now, a stack
        curr_path => [],
        % document-uri
        uri => Uri,
        % all inscope namespaces so far
        nsps => M2,
        % from DTD for typing info
        att_dec => #{},
        % cache short text binaries
        texts => #{},
        % ignore all WS text nodes or not
        ignore_ws => false,
        % the next element has a namespace
        has_ns => false,
        % tables
        db => DB
    }.

default_split_state(Fun, Path) ->
    #{
        path => Path,
        stack => [],
        acc => [],
        pids => [],
        state => search,
        ret => Fun
    }.

parse_node(
    #{
        nk := document,
        ch := Ch
    },
    State
) ->
    State1 = event(startDocument, 0, State),
    State2 = lists:foldl(fun parse_node_1/2, State1, Ch),
    event(endDocument, 0, State2);
%% startDocument
%% endDocument
parse_node(#{nk := _} = Node, State) ->
    State1 = event(startDocument, 0, State),
    State2 = lists:foldl(fun parse_node_1/2, State1, [Node]),
    event(endDocument, 0, State2).

%% {startElement, Uri, LocalName, {Prefix, LocalName}, Attributes}
%% {endElement, Uri, LocalName, {Prefix, LocalName}}
%% {startPrefixMapping, Prefix, Uri}
%% {endPrefixMapping, Prefix}
parse_node_1(
    #{
        nk := element,
        nn := {Ns, Px, Ln},
        ns := Nss,
        at := Atts,
        ch := Ch
    },
    State
) ->
    NsFun = fun({P, U}, TempState) ->
        event({startPrefixMapping, P, U}, 0, TempState)
    end,
    NsEFun = fun({P, _}, TempState) ->
        event({endPrefixMapping, P}, 0, TempState)
    end,
    AtFun = fun(
        #{
            nk := attribute,
            nn := {Au, Ap, Al},
            sv := ASv
        }
    ) ->
        {Au, Ap, Al, ASv}
    end,
    NssList = maps:to_list(Nss),
    State1 = lists:foldl(NsFun, State, NssList),
    Atts1 = lists:map(AtFun, Atts),
    Event = {startElement, Ns, Ln, {Px, Ln}, Atts1},
    State2 = event(Event, 0, State1),
    State3 = lists:foldl(fun parse_node_1/2, State2, Ch),
    Event1 = {endElement, Ns, Ln, {Px, Ln}},
    State4 = event(Event1, 0, State3),
    lists:foldl(NsEFun, State4, NssList);
%% {characters, String}
parse_node_1(
    #{
        nk := text,
        sv := Sv
    },
    State
) ->
    Event = {characters, Sv},
    event(Event, 0, State);
%% {processingInstruction, Target, Data}
parse_node_1(
    #{
        nk := 'processing-instruction',
        nn := {_, _, Ln},
        sv := Sv
    },
    State
) ->
    Event = {processingInstruction, Ln, Sv},
    event(Event, 0, State);
%% {comment, String}
parse_node_1(
    #{
        nk := comment,
        sv := Sv
    },
    State
) ->
    Event = {comment, Sv},
    event(Event, 0, State);
parse_node_1(#{nk := _}, State) ->
    State.

%% SAX Events
-spec event(Event :: any(), Location :: any(), State :: state()) ->
    NewState :: state() | {Nodes :: binary(), [any()]}.
%% startDocument
event(
    startDocument,
    _L,
    #{
        doc_id := DocId,
        db := DB,
        paths := Paths,
        writer := Writer,
        counter := Counter,
        uri := Uri
    } = State
) ->
    NodeId = [],
    UriRef = xqldb_string_table2:insert(DB, Uri),
    NodeBin = xqldb_nodes:document(UriRef),
    {PathId, Paths1} = get_path_id(DB, [], Paths),
    Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter),
    State#{
        pos := 1,
        paths := Paths1,
        counter := Counter1,
        parent := NodeId
    };
event(
    startFragment,
    _L,
    #{
        doc_id := DocId,
        db := DB,
        paths := Paths,
        writer := Writer,
        counter := Counter,
        uri := Uri
    } = State
) ->
    NodeId = [],
    UriRef = xqldb_string_table2:insert(DB, Uri),
    NodeBin = xqldb_nodes:document(UriRef),
    {PathId, Paths1} = get_path_id(DB, [], Paths),
    Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter),
    State#{
        pos := 1,
        paths := Paths1,
        counter := Counter1,
        parent := NodeId
    };
event(endDocument, _L, #{parent := []} = State) ->
    State;
event(endFragment, _L, #{parent := []} = State) ->
    State;
event(
    {startPrefixMapping, PrefixS, UriS},
    _,
    #{
        doc_id := DocId,
        db := DB,
        parent := Par,
        pos := Pos,
        writer := Writer,
        nsps := Scp
    } = State
) ->
    ElemId = add_pos(Par, Pos),
    Prefix = ?U2B(PrefixS),
    Uri = ?U2B(UriS),
    {UriId, Scp1} = get_name_id(DB, Uri, Scp),
    {_PrefixId, Scp2} = get_name_id(DB, Prefix, Scp1),
    ok = post_namespace_node(Writer, DocId, ElemId, UriId, Prefix),
    % flag next element that it has a NS
    State#{nsps := Scp2, has_ns := true};
event({endPrefixMapping, _}, _, State) ->
    State;
event(
    {startElement, UriS, LocalNameS, {PrefixS, _} = ElementName, Attributes},
    _,
    #{
        doc_id := DocId,
        db := DB,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        curr_path := CPath,
        names := NameMap,
        has_ns := HasNs,
        nsps := Scp,
        writer := Writer
    } = State
) ->
    AttLen = length(Attributes),
    UK = ?U2B(UriS),
    Prefix = ?U2B(PrefixS),
    LocalName = ?U2B(LocalNameS),
    NodeId = add_pos(Ps, Pos),
    #{UK := UriId} = Scp,
    {PrefixId, Scp1} = get_name_id(DB, Prefix, Scp),
    {NameId, NameMap1} = get_name_id(DB, LocalName, NameMap),
    PathKey = {UriId, NameId},
    CPath1 = [PathKey | CPath],
    {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
    NodeBin = xqldb_nodes:element(NameId, UriId, PrefixId, HasNs, AttLen),
    #{counter := Counter1} =
        State1 = att_events(
            Attributes,
            State#{
                parent := NodeId,
                paths := Paths1,
                curr_path := CPath1,
                names := NameMap1,
                nsps := Scp1,
                pos := Pos + 1
            },
            ElementName
        ),
    Counter2 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter1),
    State1#{
        parent := NodeId,
        curr_path := CPath1,
        counter := Counter2,
        has_ns := false
    };
event(
    {endElement, _, _, {_, _}},
    _,
    #{
        parent := Ps,
        curr_path := [_ | CPath]
    } = State
) ->
    State#{
        parent := rem_pos(Ps),
        curr_path := CPath
    };
%% Ignoring CData flag for now
event(startCDATA, _, State) ->
    State;
event(endCDATA, _, State) ->
    State;
event(
    {characters, String},
    _,
    #{
        doc_id := DocId,
        db := DB,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        curr_path := CPath,
        writer := Writer,
        counter := Counter
    } = State
) ->
    NodeId = add_pos(Ps, Pos),
    Bin = ?U2B(String),
    TextRef = get_text_id(DB, Bin),
    NodeBin = xqldb_nodes:text(TextRef),
    CPath1 = [text | CPath],
    {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
    Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter),
    State#{
        pos := Pos + 1,
        paths := Paths1,
        counter := Counter1
    };
% could ignore with a setting
%% event({ignorableWhitespace, _String}, _, #{ignore_ws := true} = State) ->
%%    State;
event({ignorableWhitespace, String}, L, State) ->
    event({characters, String}, L, State);
event(
    {processingInstruction, Target, Data},
    _,
    #{
        doc_id := DocId,
        db := DB,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        names := NameMap,
        curr_path := CPath,
        writer := Writer,
        counter := Counter
    } = State
) ->
    NodeId = add_pos(Ps, Pos),
    Bin = ?U2B(Data),
    TextRef = get_text_id(DB, Bin),
    {NameRef, NameMap1} = get_name_id(DB, ?U2B(Target), NameMap),
    NodeBin = xqldb_nodes:proc_inst(NameRef, TextRef),
    CPath1 = [{pi, NameRef} | CPath],
    {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
    Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter),
    State#{
        pos := Pos + 1,
        names := NameMap1,
        paths := Paths1,
        counter := Counter1
    };
event(
    {comment, String},
    _,
    #{
        doc_id := DocId,
        db := DB,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        curr_path := CPath,
        writer := Writer,
        counter := Counter
    } = State
) ->
    NodeId = add_pos(Ps, Pos),
    Bin = ?U2B(String),
    TextRef = get_text_id(DB, Bin),
    NodeBin = xqldb_nodes:comment(TextRef),
    CPath1 = [comment | CPath],
    {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
    Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter),
    State#{
        pos := Pos + 1,
        paths := Paths1,
        counter := Counter1
    };
event(
    {attributeDecl, ElementName, AttributeName, Type, _Mode, _Value},
    _,
    #{att_dec := AttDec} = State
) when is_tuple(ElementName) ->
    Key = {ElementName, AttributeName},
    AttDec1 =
        case Type of
            "ID" ->
                AttDec#{Key => ?att_id};
            "IDREF" ->
                AttDec#{Key => ?att_idref};
            "IDREFS" ->
                AttDec#{Key => ?att_idref};
            _ ->
                AttDec#{Key => ?att_str}
        end,
    State#{att_dec := AttDec1};
% non-tuple: is string from xmerl before event change to qualified name
event({attributeDecl, ElementName, AttributeName, Type, Mode, Value}, L, State) ->
    ElementName1 =
        case string:split(ElementName, ":") of
            [P, L] -> {P, L};
            [L] -> {[], L}
        end,
    AttributeName1 =
        case string:split(AttributeName, ":") of
            [AP, AL] -> {AP, AL};
            [AL] -> {[], AL}
        end,
    event({attributeDecl, ElementName1, AttributeName1, Type, Mode, Value}, L, State);
% base uri sent from constructors and updates
event({baseUri, _}, _, State) ->
    State;
event(Event, _, State) ->
    ?dbg("UNKNOWN EVENT", Event),
    State.

att_events(
    [{UriS, PrefixS, AttributeNameS, ValueS} | T],
    #{
        doc_id := DocId,
        db := DB,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        curr_path := CPath,
        names := NameMap,
        att_dec := AttDec,
        writer := Writer,
        counter := Counter,
        nsps := Scp
    } = State,
    ElementName
) ->
    NodeId = add_pos(Ps, Pos),
    Uri = ?U2B(UriS),
    Prefix = ?U2B(PrefixS),
    Bin = ?U2B(ValueS),
    AttributeName = ?U2B(AttributeNameS),
    #{Uri := UriId} = Scp,
    Type = get_att_type({ElementName, {PrefixS, AttributeNameS}}, AttDec),
    TextRef = get_text_id(DB, Bin),
    {PrefixId, Scp1} = get_name_id(DB, Prefix, Scp),
    {NameId, NameMap1} = get_name_id(DB, AttributeName, NameMap),

    NodeBin = xqldb_nodes:attribute(NameId, UriId, PrefixId, TextRef, Type),
    PathKey = {att, UriId, NameId},
    CPath1 = [PathKey | CPath],
    {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
    Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter),
    att_events(
        T,
        State#{
            names := NameMap1,
            pos := Pos + 1,
            paths := Paths1,
            nsps := Scp1,
            counter := Counter1
        },
        ElementName
    );
att_events([], State, _) ->
    State.

stax_event({#{type := startDocument}, ParserState}, State) ->
    #{
        doc_id := DocId,
        db := DB,
        paths := Paths,
        writer := Writer,
        counter := Counter,
        uri := Uri
    } = State,
    NodeId = [],
    UriRef = xqldb_string_table2:insert(DB, Uri),
    NodeBin = xqldb_nodes:document(UriRef),
    {PathId, Paths1} = get_path_id(DB, [], Paths),
    Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter),
    State1 = State#{
        pos := 1,
        paths := Paths1,
        counter := Counter1,
        parent := NodeId
    },
    stax_event(yaccety_sax:next_event(ParserState), State1);
stax_event({#{type := endDocument}, _ParserState}, #{parent := []} = State) ->
    State;
stax_event({#{type := startElement} = Event, ParserState}, State) ->
    #{
        qname := {Uri, Prefix, LocalName},
        attributes := Attributes,
        namespaces := Namespaces
    } = Event,
    #{
        doc_id := DocId,
        db := DB,
        pos := Pos,
        parent := Par,
        paths := Paths,
        curr_path := CPath,
        names := NameMap,
        nsps := Scp0,
        writer := Writer
    } = State,
    HasNs = Namespaces /= [],
    NodeId = add_pos(Par, Pos),
    AddNs = fun({NsUri, NsPrefix}, Acc) ->
        {UriId, Acc1} = get_name_id(DB, NsUri, Acc),
        {_PrefixId, Acc2} = get_name_id(DB, NsPrefix, Acc1),
        % ?dbg("UriId", UriId),
        % ?dbg("NsUri", NsUri),
        ok = post_namespace_node(Writer, DocId, NodeId, UriId, NsPrefix),
        Acc2
    end,
    Scp = lists:foldl(AddNs, Scp0, Namespaces),
    AttLen = length(Attributes),
    #{Uri := UriId} = Scp,
    {PrefixId, Scp1} = get_name_id(DB, Prefix, Scp),
    {NameId, NameMap1} = get_name_id(DB, LocalName, NameMap),
    PathKey = {UriId, NameId},
    CPath1 = [PathKey | CPath],
    {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
    NodeBin = xqldb_nodes:element(NameId, UriId, PrefixId, HasNs, AttLen),
    #{counter := Counter1} =
        State1 = stax_att_events(
            Attributes,
            State#{
                parent := NodeId,
                paths := Paths1,
                curr_path := CPath1,
                names := NameMap1,
                nsps := Scp1,
                pos := Pos + 1
            },
            {Prefix, LocalName}
        ),
    Counter2 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter1),
    State2 = State1#{
        parent := NodeId,
        curr_path := CPath1,
        counter := Counter2,
        has_ns := false
    },
    stax_event(yaccety_sax:next_event(ParserState), State2);
stax_event({#{type := endElement}, ParserState}, State) ->
    #{parent := Ps, curr_path := [_ | CPath]} = State,
    State1 = State#{parent := rem_pos(Ps), curr_path := CPath},
    stax_event(yaccety_sax:next_event(ParserState), State1);
stax_event({#{type := characters, data := String}, ParserState}, State) ->
    #{
        doc_id := DocId,
        db := DB,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        curr_path := CPath,
        writer := Writer,
        counter := Counter
    } = State,
    NodeId = add_pos(Ps, Pos),
    TextRef = get_text_id(DB, String),
    NodeBin = xqldb_nodes:text(TextRef),
    CPath1 = [text | CPath],
    {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
    Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter),
    State1 = State#{
        pos := Pos + 1,
        paths := Paths1,
        counter := Counter1
    },
    stax_event(yaccety_sax:next_event(ParserState), State1);
stax_event({#{type := processingInstruction, target := Target, data := Data}, ParserState}, State) ->
    #{
        doc_id := DocId,
        db := DB,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        names := NameMap,
        curr_path := CPath,
        writer := Writer,
        counter := Counter
    } = State,
    NodeId = add_pos(Ps, Pos),
    TextRef = get_text_id(DB, Data),
    {NameRef, NameMap1} = get_name_id(DB, Target, NameMap),
    NodeBin = xqldb_nodes:proc_inst(NameRef, TextRef),
    CPath1 = [{pi, NameRef} | CPath],
    {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
    Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter),
    State1 = State#{
        pos := Pos + 1,
        names := NameMap1,
        paths := Paths1,
        counter := Counter1
    },
    stax_event(yaccety_sax:next_event(ParserState), State1);
stax_event({#{type := comment, text := Text}, ParserState}, State) ->
    #{
        doc_id := DocId,
        db := DB,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        curr_path := CPath,
        writer := Writer,
        counter := Counter
    } = State,
    NodeId = add_pos(Ps, Pos),
    TextRef = get_text_id(DB, Text),
    NodeBin = xqldb_nodes:comment(TextRef),
    CPath1 = [comment | CPath],
    {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
    Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter),
    State1 = State#{
        pos := Pos + 1,
        paths := Paths1,
        counter := Counter1
    },
    stax_event(yaccety_sax:next_event(ParserState), State1);
stax_event({#{type := dtd, proc := DTD}, ParserState}, State) ->
    #{atts := AttDecs} = DTD,
    AttTypes = [
        {
            {ElemName, AttName},
            case AttType of
                id -> ?att_id;
                idref -> ?att_idref;
                idrefs -> ?att_idref;
                _ -> ?att_str
            end
        }
     || {ElemName, Atts} <- maps:to_list(AttDecs),
        {AttName, {AttType, _Default}} <- maps:to_list(Atts)
    ],
    State1 = State#{att_dec := maps:from_list(AttTypes)},
    stax_event(yaccety_sax:next_event(ParserState), State1);
% base uri sent from constructors and updates
stax_event({baseUri, _}, State) ->
    State;
stax_event(Event, State) ->
    ?dbg("UNKNOWN EVENT", Event),
    State.

stax_att_events([{{Uri, Prefix, AttributeName}, Value} | T], State, ElementName) ->
    #{
        doc_id := DocId,
        db := DB,
        pos := Pos,
        parent := Ps,
        paths := Paths,
        curr_path := CPath,
        names := NameMap,
        att_dec := AttDec,
        writer := Writer,
        counter := Counter,
        nsps := Scp
    } = State,
    NodeId = add_pos(Ps, Pos),
    #{Uri := UriId} = Scp,
    Type = get_att_type({ElementName, {Prefix, AttributeName}}, AttDec),
    TextRef = get_text_id(DB, Value),
    {PrefixId, Scp1} = get_name_id(DB, Prefix, Scp),
    {NameId, NameMap1} = get_name_id(DB, AttributeName, NameMap),

    NodeBin = xqldb_nodes:attribute(NameId, UriId, PrefixId, TextRef, Type),
    PathKey = {att, UriId, NameId},
    CPath1 = [PathKey | CPath],
    {PathId, Paths1} = get_path_id(DB, CPath1, Paths),
    Counter1 = post_node_indexes(Writer, DocId, NodeId, NodeBin, PathId, Counter),
    stax_att_events(
        T,
        State#{
            names := NameMap1,
            pos := Pos + 1,
            paths := Paths1,
            nsps := Scp1,
            counter := Counter1
        },
        ElementName
    );
stax_att_events([], State, _) ->
    State.

get_att_type(Key, AttDec) ->
    %?dbg("Key, AttDec", {Key, AttDec}),
    case AttDec of
        #{Key := Type} ->
            Type;
        _ ->
            ?att_str
    end.

% Add Pos to the NodeId
add_pos(Par, Pos) ->
    Par ++ [Pos].

%   <<Par/binary,Pos:32/integer>>.

% Remove highest Pos from the NodeId
rem_pos([]) -> [];
rem_pos(Par) -> lists:droplast(Par).

%   binary:part(Par, {0, byte_size(Par) - 4}).

split_doc(startDocument, _, #{stack := Stack} = State) ->
    State#{stack := [document | Stack]};
split_doc(endDocument, _, _) ->
    ok;
% start element while searching, push stack, check for match
split_doc(
    {startElement, _, LocalName, {Prefix, _}, _},
    _,
    #{
        path := Path,
        stack := Stack,
        state := search
    } = State
) ->
    SEv = {element, Prefix, LocalName},
    NewStack = [SEv | Stack],
    case Stack == Path of
        true ->
            State#{
                stack := NewStack,
                acc := [startDocument],
                state := capture
            };
        _ ->
            State#{stack := NewStack}
    end;
% start element while capturing, push stack, capture
split_doc(
    {startElement, _, LocalName, {Prefix, _}, _} = Event,
    _,
    #{
        acc := Acc,
        stack := Stack,
        state := capture
    } = State
) ->
    SEv = {element, Prefix, LocalName},
    NewStack = [SEv | Stack],
    State#{
        stack := NewStack,
        acc := [Event | Acc]
    };
% end element while searching, pop stack
split_doc(
    {endElement, _, _, _},
    _,
    #{
        stack := [_ | Stack],
        state := search
    } = State
) ->
    State#{stack := Stack};
% end element while capturing, pop stack, check path stop capture
split_doc(
    {endElement, _, _, _} = Event,
    _,
    #{
        path := Path,
        stack := [_ | Stack],
        acc := Acc,
        pids := Pids,
        state := capture,
        ret := Fun
    } = State
) ->
    case Stack == Path of
        true ->
            % do Fun to the Acc
            Events = lists:reverse([endDocument, Event | Acc]),
            Pids1 =
                case length(Pids) >= ?MAX_PROCS of
                    true ->
                        wait_yield(Pids);
                    false ->
                        Pids
                end,
            NewPid = Fun(Events),
            State#{
                stack := Stack,
                pids := [NewPid | Pids1],
                acc := [],
                state := search
            };
        _ ->
            State#{
                stack := Stack,
                acc := [Event | Acc]
            }
    end;
% ignore when something found in search that is not important
split_doc(_, _, #{state := search} = State) ->
    State;
% simply add to events accumulator when not element event
split_doc(
    Event,
    _,
    #{
        state := capture,
        acc := Acc
    } = State
) ->
    State#{acc := [Event | Acc]}.

%%
%% {startDTD, Name, PublicId, SystemId}
%% endDTD
%% {startEntity, SysId}
%% {endEntity, SysId}
%% {elementDecl, Name, Model}
%% {internalEntityDecl, Name, Value}
%% {externalEntityDecl, Name, PublicId, SystemId}
%% {unparsedEntityDecl, Name, PublicId, SystemId, Ndata}
%% {notationDecl, Name, PublicId, SystemId}

wait_yield(Pids) ->
    receive
        {Pid, done} when is_pid(Pid) ->
            lists:delete(Pid, Pids)
    after 60000 -> timeout
    end.

-define(MAX_POST, 5000).

wait_index_writer(Pid) ->
    receive
        {Pid, done} when is_pid(Pid) ->
            ok
    after 60000 -> timeout
    end.

%% pop_uri(On,Prefix) ->
%%    pop_uri(On,Prefix,[]).
%%
%% pop_uri([{_,_,Prefix} = M|T],Prefix,Acc) ->
%%    {M, lists:reverse(Acc) ++ T};
%% pop_uri([M|T],Prefix,Acc) ->
%%    pop_uri(T,Prefix,[M|Acc]).

get_name_id(DB, Key, NameMap) ->
    case NameMap of
        #{Key := Id} ->
            {Id, NameMap};
        _ ->
            Id = xqldb_name_table:insert(DB, Key),
            {Id, NameMap#{Key => Id}}
    end.

% Path is a reversed list
get_path_id(DB, Path, Paths) ->
    case Paths of
        #{Path := Id} ->
            {Id, Paths};
        _ ->
            Id = xqldb_structure_index:add(DB, lists:reverse(Path)),
            {Id, Paths#{Path => Id}}
    end.

get_text_id(DB, Text) ->
    xqldb_string_table2:insert(DB, Text).

post_document_paths(#{paths := Paths, writer := Writer}) ->
    Writer ! {path_doc, maps:values(Paths)},
    ok.

post_node_indexes(Writer, {DocId, DocIdEnc}, NodeId, NodeBin, PathId, Counter) ->
    Props = term_to_binary({NodeBin, PathId}),
    Counter2 = update_counter(Counter, PathId, 1),
    Postings = [
        {path, {DocId, PathId}, NodeId},
        {node, encode(NodeId, DocIdEnc), Props}
    ],
    Writer ! {postings, self(), Postings},
    _ =
        receive
            continue -> ok
        end,
    Counter2.

post_namespace_node(Writer, {DocId, _}, NodeId, UriId, Prefix) ->
    Postings = [{namespace, {DocId, NodeId}, {UriId, Prefix}}],
    Writer ! {postings, self(), Postings},
    receive
        continue -> ok
    end.

index_writer(Postings, {DB, _} = State, Count) when Count > ?MAX_POST ->
    ok = xqldb_idx_mi:index(DB, lists:append(Postings)),
    index_writer([[]], State, 0);
index_writer(Postings, {DB, DocId} = State, Count) ->
    receive
        {postings, Par, P} ->
            Par ! continue,
            index_writer([P | Postings], State, Count + length(P));
        {path_doc, Paths} ->
            PathDocs = [
                {path_doc, P, DocId}
             || P <- Paths
            ],
            ok = xqldb_idx_mi:index(DB, PathDocs),
            index_writer(Postings, State, Count);
        {Par, done} when Count == 0 ->
            Par ! {self(), done};
        {Par, done} ->
            ok = xqldb_idx_mi:index(DB, lists:append(Postings)),
            Par ! {self(), done}
    after 60000 -> timeout
    end.

get_path_counts(Counter) ->
    maps:to_list(Counter).

update_counter(Map, Key, Increment) ->
    case Map of
        #{Key := OldVal} ->
            Map#{Key := OldVal + Increment};
        _ ->
            Map#{Key => Increment}
    end.

% append the node id to the pre-encoded doc id
encode(NodeId, DocIdEnc) ->
    <<DocIdEnc/binary, (sext:encode(NodeId))/binary>>.

% patch the doc id to have a count of 2 instead of 1.
patch_encode(Term) ->
    <<16, 0, 0, 0, 1, Rest/binary>> = sext:encode(Term),
    <<16, 0, 0, 0, 2, Rest/binary>>.
