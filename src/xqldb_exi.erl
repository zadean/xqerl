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

-module(xqldb_exi).

%% ====================================================================
%% API functions
%% ====================================================================
-export([parse_file/2]).

-compile({inline, [{unsigned_integer, 1}]}).

-define(dbg(X), io:format("~p~n", [{?LINE, X}])).

%% Terminals
-define(FragmentContent, 10).
-define(DocContent, 11).
-define(DocEnd, 12).
-define(StartTagContent, 13).
-define(ElementContent, 14).

%% Non-Terminals
-define(START_ELEMENT_UNDEF, 0).
-define(START_ELEMENT_DEF(QName), {0, QName}).
-define(TEXT_UNDEF, 1).
-define(TEXT_DEF(QName), {1, QName}).
-define(ATTRIBUTE_UNDEF, 2).
-define(ATTRIBUTE_DEF(QName), {2, QName}).
-define(END_ELEMENT_UNDEF, 3).
-define(END_ELEMENT_DEF, 4).
-define(END_DOCUMENT, 5).
-define(NAMESPACE, 6).
-define(COMMENT, 7).
-define(PROC_INST, 8).

-record(compact_partition, {
    bits :: non_neg_integer(),
    next_id :: non_neg_integer(),
    values :: #{non_neg_integer() => binary()}
}).

parse_file(Filename, Opts) ->
    {ok, Bin} = file:read_file(Filename),
    Body = header(Bin),
    Ret = read(built_in_grammars(), Body, Opts),
    Ret.

read(
    Grammars,
    Bin,
    #{
        event_fun := Fun,
        user_state := Ust
    } = State
) ->
    NewUst = Fun(start_document, Ust),
    read(Grammars, ?DocContent, Bin, [], State#{user_state := NewUst}).

%% ====================================================================
%% Internal functions
%% ====================================================================

header(Bin) ->
    R1 = cookie(Bin),
    R2 = distinguishing_bits(R1),
    {Opt, R3} = has_options(R2),
    {_Vers, R4} = format_version(R3),
    if
        Opt ->
            {_, R5} = read_opts(R4),
            R5;
        true ->
            R4
    end.

cookie(<<$$, $E, $X, $I, Rest/binary>>) -> Rest;
cookie(Bin) -> Bin.

distinguishing_bits(<<2:2, Rest/bitstring>>) -> Rest.

has_options(<<0:1, Rest/bitstring>>) -> {false, Rest};
has_options(<<1:1, Rest/bitstring>>) -> {true, Rest}.

format_version(<<1:1, Rest/bitstring>>) ->
    {V, R} = version_num(Rest, 1),
    {{preview, V}, R};
format_version(<<0:1, Rest/bitstring>>) ->
    {V, R} = version_num(Rest, 1),
    {{final, V}, R}.

version_num(<<15:4, Rest/bitstring>>, A) ->
    version_num(Rest, 15 + A);
version_num(<<I:4/integer, Rest/bitstring>>, A) ->
    {A + I, Rest}.

read_opts(B) ->
    % this would read an EXI body as the options
    {opts, B}.

empty_partition() ->
    #{bits => 0, next_id => 0, next_s => 1, values => #{}}.

empty_compact_partition() ->
    #compact_partition{bits = 0, next_id = 0, values = #{}}.

initial_uri_partition() ->
    #compact_partition{
        bits = 2,
        next_id = 3,
        values = #{
            0 => <<>>,
            1 => <<"http://www.w3.org/XML/1998/namespace">>,
            2 => <<"http://www.w3.org/2001/XMLSchema-instance">>
        }
    }.

% {prefix, 0}
default_prefix_partition() ->
    #compact_partition{bits = 1, next_id = 1, values = #{0 => <<>>}}.

% {prefix, 1}
xml_prefix_partition() ->
    #compact_partition{bits = 1, next_id = 1, values = #{0 => <<"xml">>}}.

% {prefix, 2}
xsi_prefix_partition() ->
    #compact_partition{bits = 1, next_id = 1, values = #{0 => <<"xsi">>}}.

% {local_name, 1}
xml_name_partition() ->
    #{
        bits => 2,
        next_id => 4,
        next_s => 4,
        values => #{
            0 => <<"base">>,
            1 => <<"id">>,
            2 => <<"lang">>,
            3 => <<"space">>
        }
    }.

% {local_name, 2}
xsi_name_partition() ->
    #{
        bits => 1,
        next_id => 2,
        next_s => 2,
        values => #{
            0 => <<"nil">>,
            1 => <<"type">>
        }
    }.

xevent_code_match_fun(
    {B1, B2, B3},
    [
        {{N}, S1},
        {{_}, S2},
        {{_}, S3},
        {{_}, S4},
        {{_}, S5},
        {{_}, S6},
        {{_}, S7},
        {{_}, S8},
        % happens often
        {{_}, S9}
        | T
    ],
    Bin
) ->
    <<N0:B1, Rest/bitstring>> = Bin,
    case N0 - N of
        0 -> {S1, Rest};
        1 -> {S2, Rest};
        2 -> {S3, Rest};
        3 -> {S4, Rest};
        4 -> {S5, Rest};
        5 -> {S6, Rest};
        6 -> {S7, Rest};
        7 -> {S8, Rest};
        8 -> {S9, Rest};
        _ -> xevent_code_match_fun({B1, B2, B3}, T, Bin)
    end;
xevent_code_match_fun(
    {B1, B2, B3},
    [
        {{N}, S1},
        {{_}, S2},
        {{_}, S3},
        {{_}, S4},
        {{_}, S5},
        {{_}, S6},
        % happens often
        {{_}, S7},
        {{_}, S8}
        | T
    ],
    Bin
) ->
    <<N0:B1, Rest/bitstring>> = Bin,
    case N0 - N of
        0 -> {S1, Rest};
        1 -> {S2, Rest};
        2 -> {S3, Rest};
        3 -> {S4, Rest};
        4 -> {S5, Rest};
        5 -> {S6, Rest};
        6 -> {S7, Rest};
        7 -> {S8, Rest};
        _ -> xevent_code_match_fun({B1, B2, B3}, T, Bin)
    end;
xevent_code_match_fun(
    {B1, B2, B3},
    [
        {{N}, S1},
        {{_}, S2},
        {{_}, S3},
        {{_}, S4},
        {{_}, S5},
        {{_}, S6},
        % happens often
        {{_}, S7}
        | T
    ],
    Bin
) ->
    <<N0:B1, Rest/bitstring>> = Bin,
    case N0 - N of
        0 -> {S1, Rest};
        1 -> {S2, Rest};
        2 -> {S3, Rest};
        3 -> {S4, Rest};
        4 -> {S5, Rest};
        5 -> {S6, Rest};
        6 -> {S7, Rest};
        _ -> xevent_code_match_fun({B1, B2, B3}, T, Bin)
    end;
xevent_code_match_fun(
    {B1, B2, B3},
    [
        {{N}, S1},
        {{_}, S2},
        {{_}, S3},
        {{_}, S4},
        % happens often
        {{_}, S5},
        {{_}, S6}
        | T
    ],
    Bin
) ->
    <<N0:B1, Rest/bitstring>> = Bin,
    case N0 - N of
        0 -> {S1, Rest};
        1 -> {S2, Rest};
        2 -> {S3, Rest};
        3 -> {S4, Rest};
        4 -> {S5, Rest};
        5 -> {S6, Rest};
        _ -> xevent_code_match_fun({B1, B2, B3}, T, Bin)
    end;
xevent_code_match_fun(
    {B1, B2, B3},
    [
        {{N}, S1},
        {{_}, S2},
        {{_}, S3},
        {{_}, S4},
        % happens often
        {{_}, S5}
        | T
    ],
    Bin
) ->
    <<N0:B1, Rest/bitstring>> = Bin,
    case N0 - N of
        0 -> {S1, Rest};
        1 -> {S2, Rest};
        2 -> {S3, Rest};
        3 -> {S4, Rest};
        4 -> {S5, Rest};
        _ -> xevent_code_match_fun({B1, B2, B3}, T, Bin)
    end;
xevent_code_match_fun(
    {B1, B2, B3},
    [
        {{N}, S1},
        {{_}, S2},
        % happens often
        {{_}, S3},
        {{_}, S4}
        | T
    ],
    Bin
) ->
    <<N0:B1, Rest/bitstring>> = Bin,
    case N0 - N of
        0 -> {S1, Rest};
        1 -> {S2, Rest};
        2 -> {S3, Rest};
        3 -> {S4, Rest};
        _ -> xevent_code_match_fun({B1, B2, B3}, T, Bin)
    end;
xevent_code_match_fun(
    {B1, B2, B3},
    [
        {{N}, S1},
        {{_}, S2},
        % happens often
        {{_}, S3}
        | T
    ],
    Bin
) ->
    <<N0:B1, Rest/bitstring>> = Bin,
    case N0 - N of
        0 -> {S1, Rest};
        1 -> {S2, Rest};
        2 -> {S3, Rest};
        _ -> xevent_code_match_fun({B1, B2, B3}, T, Bin)
    end;
xevent_code_match_fun(
    {B1, B2, B3},
    % happens often
    [{{N}, S1}, {{_}, S2} | T],
    Bin
) ->
    <<N0:B1, Rest/bitstring>> = Bin,
    case N0 - N of
        0 -> {S1, Rest};
        1 -> {S2, Rest};
        _ -> xevent_code_match_fun({B1, B2, B3}, T, Bin)
    end;
xevent_code_match_fun(
    {B1, B2, B3},
    [{{N1}, S1} | T],
    Bin
) ->
    <<N0:B1, Rest/bitstring>> = Bin,
    case N0 of
        N1 -> {S1, Rest};
        _ -> xevent_code_match_fun({B1, B2, B3}, T, Bin)
    end;
% 2s come in pairs or 5s
xevent_code_match_fun({B1, B2, B3}, [{{N1, N2}, S} | T], Bin) ->
    case Bin of
        <<N1:B1, N2:B2, Rest/bitstring>> ->
            {S, Rest};
        _ ->
            xevent_code_match_fun({B1, B2, B3}, T, Bin)
    end;
% 3s come in pairs
xevent_code_match_fun({B1, B2, B3}, [{{N1, N2, N3}, S} | T], Bin) ->
    case Bin of
        <<N1:B1, N2:B2, N3:B3, Rest/bitstring>> ->
            {S, Rest};
        _ ->
            xevent_code_match_fun({B1, B2, B3}, T, Bin)
    end;
xevent_code_match_fun(_, [], Bin) ->
    throw({unknown_event, Bin}).

built_in_grammars() ->
    % each grammar is {Code, Name, Next} | {Code, Name}
    DocContent = [
        {{0}, {?START_ELEMENT_UNDEF, ?DocEnd}},
        {{1, 0, 0}, {?COMMENT, ?DocContent}},
        {{1, 0, 1}, {?PROC_INST, ?DocContent}}
    ],
    DocEnd = [
        {{0}, ?END_DOCUMENT},
        {{1, 0, 0}, {?COMMENT, ?DocEnd}},
        {{1, 0, 1}, {?PROC_INST, ?DocEnd}}
    ],
    FragmentContent = [
        {{0}, {?START_ELEMENT_UNDEF, ?FragmentContent}},
        {{1}, ?END_DOCUMENT},
        {{2, 0}, {?COMMENT, ?FragmentContent}},
        {{2, 1}, {?PROC_INST, ?FragmentContent}}
    ],
    StartTagContent = [
        {{0, 0}, ?END_ELEMENT_UNDEF},
        {{0, 1}, {?ATTRIBUTE_UNDEF, ?StartTagContent}},
        {{0, 2}, {?NAMESPACE, ?StartTagContent}},
        {{0, 3}, {?START_ELEMENT_UNDEF, ?ElementContent}},
        {{0, 4}, {?TEXT_UNDEF, ?ElementContent}},
        {{0, 5, 0}, {?COMMENT, ?ElementContent}},
        {{0, 5, 1}, {?PROC_INST, ?ElementContent}}
    ],
    ElementContent = [
        {{0}, ?END_ELEMENT_DEF},
        {{1, 0}, {?START_ELEMENT_UNDEF, ?ElementContent}},
        {{1, 1}, {?TEXT_UNDEF, ?ElementContent}},
        {{1, 2, 0}, {?COMMENT, ?ElementContent}},
        {{1, 2, 1}, {?PROC_INST, ?ElementContent}}
    ],

    #{
        ?DocContent => {{1, 0, 1}, DocContent},
        ?DocEnd => {{1, 0, 1}, DocEnd},
        ?FragmentContent => {{2, 1, 0}, FragmentContent},
        ?StartTagContent => {{0, 3, 1}, StartTagContent},
        ?ElementContent => {{1, 2, 1}, ElementContent},
        % global string partitions
        uri => initial_uri_partition(),
        global => #{next_id => 0, next_s => 1, bits => 0},
        {prefix, 0} => default_prefix_partition(),
        {prefix, 1} => xml_prefix_partition(),
        {prefix, 2} => xsi_prefix_partition(),
        {name, 0} => empty_partition(),
        {name, 1} => xml_name_partition(),
        {name, 2} => xsi_name_partition()
    }.

add_new_element_grammar(Name, Production, Grammars) when
    is_map_key({?StartTagContent, Name}, Grammars)
->
    #{Production := {_, ToPushCont}} = Grammars,
    Grammars#{
        Production := push_new_production(
            {?START_ELEMENT_DEF(Name), {?StartTagContent, Name}},
            ToPushCont
        )
    };
add_new_element_grammar(Name, Production, Grammars) ->
    #{Production := {_, ToPushCont}} = Grammars,
    STKey = {?StartTagContent, Name},
    ECKey = {?ElementContent, Name},
    NewProd = push_new_production({?START_ELEMENT_DEF(Name), STKey}, ToPushCont),

    Ls0 = [
        {{0, 0}, ?END_ELEMENT_UNDEF},
        {{0, 1}, {?ATTRIBUTE_UNDEF, STKey}},
        {{0, 2}, {?NAMESPACE, STKey}},
        {{0, 3}, {?START_ELEMENT_UNDEF, ECKey}},
        {{0, 4}, {?TEXT_UNDEF, ECKey}},
        {{0, 5, 0}, {?COMMENT, ECKey}},
        {{0, 5, 1}, {?PROC_INST, ECKey}}
    ],

    StartTagContent = {{0, 3, 1}, Ls0},

    Ls1 = [
        {{0}, ?END_ELEMENT_DEF},
        {{1, 0}, {?START_ELEMENT_UNDEF, ECKey}},
        {{1, 1}, {?TEXT_UNDEF, ECKey}},
        {{1, 2, 0}, {?COMMENT, ECKey}},
        {{1, 2, 1}, {?PROC_INST, ECKey}}
    ],

    ElementContent = {{1, 2, 1}, Ls1},

    Locals =
        if
            is_map_key({local, Name}, Grammars) ->
                % might be here from an attribute
                maps:get({local, Name}, Grammars);
            true ->
                empty_partition()
        end,

    Grammars#{
        Production := NewProd,
        STKey => StartTagContent,
        ECKey => ElementContent,
        % local string table
        {local, Name} => Locals
    }.

add_new_attribute_to_grammar(QName, {_, EQName} = CurrentState, Grammars) ->
    #{CurrentState := {_, ToPushCont}} = Grammars,
    NewProd = push_new_production(
        {?ATTRIBUTE_DEF(QName), {?StartTagContent, EQName}},
        ToPushCont
    ),
    Locals =
        if
            is_map_key({local, QName}, Grammars) ->
                % might be here from element
                maps:get({local, QName}, Grammars);
            true ->
                empty_partition()
        end,
    Grammars#{
        {local, QName} => Locals,
        CurrentState := NewProd
    }.

add_new_text_to_grammar({_, QName} = Production, Grammars) ->
    #{Production := {_, ToPushCont}} = Grammars,
    Grammars#{
        Production := push_new_production(
            {?TEXT_DEF(QName), {?ElementContent, QName}},
            ToPushCont
        )
    }.

add_new_end_element_to_grammar(Production, Grammars) ->
    #{Production := {_, ToPushCont}} = Grammars,
    Grammars#{
        Production := push_new_production(?END_ELEMENT_DEF, ToPushCont)
    }.

push_new_production(Prod, ToPushCont) ->
    {{A, B, C}, L} = add_one(ToPushCont, []),
    {{A, B, C}, [{{0}, Prod} | L]}.

add_one([{{L1}, A} | T], Acc) ->
    add_one(T, [{{L1 + 1}, A} | Acc]);
add_one([{{L1, L2}, A} | T], Acc) ->
    add_one(T, [{{L1 + 1, L2}, A} | Acc]);
add_one([{{L1, L2, L3}, A} | T], Acc) ->
    add_one(T, [{{L1 + 1, L2, L3}, A} | Acc]);
add_one([], [{L, S} | Acc]) ->
    NewL = widths(L),
    {NewL, lists:reverse(Acc, [{L, S}])}.

widths({L1}) -> {bit_width(L1 + 1), 0, 0};
widths({L1, L2}) -> {bit_width(L1 + 1), bit_width(L2 + 1), 0};
widths({L1, L2, L3}) -> {bit_width(L1 + 1), bit_width(L2 + 1), bit_width(L3 + 1)}.

event_namespace(
    Grammars,
    Stream,
    NextProd,
    Stack,
    #{
        event_fun := Fun,
        user_state := Ust
    } = State
) ->
    {Grammars1, {Uri, Prefix, IsLocal}, R1} = uri(Grammars, Stream),
    Event = {namespace, Uri, Prefix, IsLocal},
    NewUst = Fun(Event, Ust),
    read(Grammars1, NextProd, R1, Stack, State#{user_state := NewUst}).

event_comment(
    Grammars,
    Stream,
    NextProd,
    Stack,
    #{
        event_fun := Fun,
        user_state := Ust
    } = State
) ->
    {Value, Rest} = string(Stream),
    % only Str
    Event = {comment, Value},
    NewUst = Fun(Event, Ust),
    read(Grammars, NextProd, Rest, Stack, State#{user_state := NewUst}).

event_text(
    Grammars,
    Stream,
    NextProd,
    Stack,
    #{
        event_fun := Fun,
        user_state := Ust
    } = State
) ->
    {Grammars1, Value, Rest} = read_value(Stream, NextProd, Grammars),
    % can be {Id,Str} or just Id
    Event = {text, Value},
    NewUst = Fun(Event, Ust),
    read(Grammars1, NextProd, Rest, Stack, State#{user_state := NewUst}).

event_attribute(
    Grammars,
    Stream,
    NextProd,
    Stack,
    QName,
    QNameKey,
    #{
        event_fun := Fun,
        user_state := Ust
    } = State
) ->
    {Grammars1, Value, Rest} = read_value(Stream, {attribute, QNameKey}, Grammars),
    % {{Ns, Ln, Px}, Id | {Id, Str}}
    Event = {attribute, QName, Value},
    NewUst = Fun(Event, Ust),
    read(Grammars1, NextProd, Rest, Stack, State#{user_state := NewUst}).

event_proc_inst(
    Grammars,
    Stream,
    NextProd,
    Stack,
    #{
        event_fun := Fun,
        user_state := Ust
    } = State
) ->
    {Name, Rest} = string(Stream),
    {Target, Rest1} = string(Rest),
    Event = {pi, Name, Target},
    NewUst = Fun(Event, Ust),
    read(Grammars, NextProd, Rest1, Stack, State#{user_state := NewUst}).

event_start_element(
    Grammars,
    Stream,
    ?DocEnd,
    Stack,
    QName,
    QNameKey,
    #{
        event_fun := Fun,
        user_state := Ust
    } = State
) ->
    % root element in document is a little different
    NewState = {?StartTagContent, QNameKey},
    OutState = {?ElementContent, QNameKey},
    Event = {start_element, QName},
    NewUst = Fun(Event, Ust),
    read(Grammars, NewState, Stream, [OutState, ?DocEnd | Stack], State#{user_state := NewUst});
event_start_element(
    Grammars,
    Stream,
    _NextProd,
    Stack,
    QName,
    QNameKey,
    #{
        event_fun := Fun,
        user_state := Ust
    } = State
) ->
    NextState = {?StartTagContent, QNameKey},
    OutState = {?ElementContent, QNameKey},
    Event = {start_element, QName},
    NewUst = Fun(Event, Ust),
    read(Grammars, NextState, Stream, [OutState | Stack], State#{user_state := NewUst}).

event_end_element(
    Grammars,
    Stream,
    _NextProd,
    [?DocEnd],
    #{
        event_fun := Fun,
        user_state := Ust
    } = State
) ->
    Event = end_element,
    NewUst = Fun(Event, Ust),
    read(Grammars, ?DocEnd, Stream, [?DocEnd], State#{user_state := NewUst});
event_end_element(
    Grammars,
    Stream,
    _NextProd,
    Stack,
    #{
        event_fun := Fun,
        user_state := Ust
    } = State
) ->
    [_ | Stack1] = Stack,
    H = hd(Stack1),
    Event = end_element,
    NewUst = Fun(Event, Ust),
    read(Grammars, H, Stream, Stack1, State#{user_state := NewUst}).

event_end_document(Stream, #{
    event_fun := Fun,
    user_state := Ust
}) ->
    Event = end_document,
    NewUst = Fun(Event, Ust),
    {ok, NewUst, Stream}.

read(_, _, <<>>, _, Acc) ->
    Acc;
read(Grammars, CurrentState, Bin, Stack, State) ->
    #{CurrentState := {Sizes, Productions}} = Grammars,
    Run = (catch xevent_code_match_fun(Sizes, Productions, Bin)),
    case Run of
        {{?START_ELEMENT_DEF(QName), NextProd}, Stream} ->
            event_start_element(Grammars, Stream, NextProd, Stack, QName, QName, State);
        {{?TEXT_DEF(_), NextProd}, Stream} ->
            event_text(Grammars, Stream, NextProd, Stack, State);
        {?END_ELEMENT_DEF, Stream} ->
            event_end_element(Grammars, Stream, none, Stack, State);
        {{?ATTRIBUTE_UNDEF, NextProd}, Stream} ->
            {Grammars1, QName0, R1} = qname(Grammars, Stream),
            QName = qname_key(QName0),
            Grammars2 = add_new_attribute_to_grammar(QName, CurrentState, Grammars1),
            event_attribute(Grammars2, R1, NextProd, Stack, QName0, QName, State);
        {{?ATTRIBUTE_DEF(QName), NextProd}, Stream} ->
            event_attribute(Grammars, Stream, NextProd, Stack, QName, QName, State);
        {{?TEXT_UNDEF, NextProd}, Stream} ->
            Grammars1 = add_new_text_to_grammar(CurrentState, Grammars),
            event_text(Grammars1, Stream, NextProd, Stack, State);
        % root element
        {{?START_ELEMENT_UNDEF, ?DocEnd}, Stream} ->
            {Grammars1, QName0, R1} = qname(Grammars, Stream),
            QName = qname_key(QName0),
            Grammars2 = add_new_element_grammar(QName, CurrentState, Grammars1),
            event_start_element(Grammars2, R1, ?DocEnd, Stack, QName0, QName, State);
        {{?START_ELEMENT_UNDEF, NextProd}, Stream} ->
            {Grammars1, QName0, R1} = qname(Grammars, Stream),
            QName = qname_key(QName0),
            Grammars2 = add_new_element_grammar(QName, CurrentState, Grammars1),
            event_start_element(Grammars2, R1, NextProd, Stack, QName0, QName, State);
        {?END_ELEMENT_UNDEF, Stream} ->
            Grammars1 = add_new_end_element_to_grammar(CurrentState, Grammars),
            event_end_element(Grammars1, Stream, none, Stack, State);
        {?END_DOCUMENT, Stream} ->
            event_end_document(Stream, State);
        {{?NAMESPACE, NextProd}, Stream} ->
            event_namespace(Grammars, Stream, NextProd, Stack, State);
        {{?COMMENT, NextProd}, Stream} ->
            event_comment(Grammars, Stream, NextProd, Stack, State);
        {{?PROC_INST, NextProd}, Stream} ->
            event_proc_inst(Grammars, Stream, NextProd, Stack, State);
        {unknown_event, _} = Err ->
            ?dbg(CurrentState),
            ?dbg({"PRODUCTIONS", Productions}),
            throw(Err)
    end.

% local hit
read_value(<<0:8, R/bitstring>>, {_, QName}, Grammars) ->
    PartKey = {local, QName},
    #{
        PartKey := #{
            bits := B,
            values := V
        }
    } = Grammars,
    <<I:B/integer, R1/bitstring>> = R,
    #{I := GlbId} = V,
    {Grammars, GlbId, R1};
% global hit
read_value(<<1:8, R/bitstring>>, _, Grammars) ->
    #{global := #{bits := B}} = Grammars,
    %#{global  := {B,_,_}} = Grammars,
    <<GlbId:B/integer, R1/bitstring>> = R,
    {Grammars, GlbId, R1};
% new string
read_value(Bin, {_, QName}, Grammars) ->
    PartKey = {local, QName},
    #{
        global := Global,
        PartKey := Local
    } = Grammars,
    {Len2, R} = unsigned_integer(Bin),
    {Str, R1} = string_1(R, Len2 - 2, <<>>),
    % do not need the value
    {GId, Global1} = add_string_to_gpartition(Global),
    %{GId, Global1} = add_string_to_partition(Global, Str),
    {_LId, Local1} = add_string_to_partition(Local, GId),
    {
        Grammars#{
            global := Global1,
            PartKey := Local1
        },
        {GId, Str},
        R1
    }.

bit_width(0) -> 0;
bit_width(1) -> 0;
bit_width(2) -> 1;
bit_width(N) when N =< 16#4 -> 2;
bit_width(N) when N =< 16#8 -> 3;
bit_width(N) when N =< 16#10 -> 4;
bit_width(N) when N =< 16#20 -> 5;
bit_width(N) when N =< 16#40 -> 6;
bit_width(N) when N =< 16#80 -> 7;
bit_width(N) when N =< 16#100 -> 8;
bit_width(N) when N =< 16#200 -> 9;
bit_width(N) when N =< 16#400 -> 10;
bit_width(N) when N =< 16#800 -> 11;
bit_width(N) when N =< 16#1000 -> 12;
bit_width(N) when N =< 16#2000 -> 13;
bit_width(N) when N =< 16#4000 -> 14;
% after this log2 should be faster
bit_width(N) when N =< 16#8000 -> 15;
bit_width(N) -> erlang:ceil(math:log2(N)).

%% EXI Event              | Event Content                 | Grammar Notation
%% ----------------------------------------------------------------------------
%% Start Document         |                               | SD
%% End Document           |                               | ED
%% Start Element          | qname                         | SE ( qname )
%%                        |                               | SE ( * )
%%                        |                               | SE ( uri : * )
%% End Element            |                               | EE
%% Attribute              | qname, value                  | AT ( qname )
%%                        |                               | AT ( * )
%%                        |                               | AT ( uri : * )
%% Characters             | value                         | CH
%% Namespace Decl         | uri, prefix, local-element-ns | NS
%% Comment                | text                          | CM
%% Processing Instruction | name, text                    | PI

%% Content item      | Used in     | Datatype representation
%% ------------------|-------------|-------------------------
%% name              | PI          | 7.1.10 String
%% prefix            | NS          | 7.1.10 String
%% local-element-ns  | NS          | 7.1.2 Boolean
%% qname             | SE, AT      | 7.1.7 QName
%% text              | CM, PI      | 7.1.10 String
%% uri               | NS          | 7.1.10 String
%% value             | CH, AT      | 7.1.10 String

%% 7.1.2 Boolean
boolean(<<1:1, Rest/bitstring>>) ->
    {true, Rest};
boolean(<<0:1, Rest/bitstring>>) ->
    {false, Rest}.

%% 7.1.6 Unsigned Integer
unsigned_integer(<<0:1, I:7/integer, Rest/bitstring>>) ->
    {I, Rest};
unsigned_integer(<<1:1, I1:7/integer, 0:1, I2:7/integer, Rest/bitstring>>) ->
    Num = I1 bor (I2 bsl 7),
    {Num, Rest};
unsigned_integer(<<1:1, I1:7/integer, 1:1, I2:7/integer, 0:1, I3:7/integer, Rest/bitstring>>) ->
    Num = I1 bor (I2 bsl 7) bor (I3 bsl 14),
    {Num, Rest};
unsigned_integer(
    <<1:1, I1:7/integer, 1:1, I2:7/integer, 1:1, I3:7/integer, 0:1, I4:7/integer, Rest/bitstring>>
) ->
    Num = I1 bor (I2 bsl 7) bor (I3 bsl 14) bor (I4 bsl 21),
    {Num, Rest};
unsigned_integer(
    <<1:1, I1:7/integer, 1:1, I2:7/integer, 1:1, I3:7/integer, 1:1, I4:7/integer, 0:1, I5:7/integer,
        Rest/bitstring>>
) ->
    Num =
        I1 bor (I2 bsl 7) bor (I3 bsl 14) bor (I4 bsl 21) bor
            (I5 bsl 28),
    {Num, Rest};
unsigned_integer(
    <<1:1, I1:7/integer, 1:1, I2:7/integer, 1:1, I3:7/integer, 1:1, I4:7/integer, 1:1, I5:7/integer,
        0:1, I6:7/integer, Rest/bitstring>>
) ->
    Num =
        I1 bor (I2 bsl 7) bor (I3 bsl 14) bor (I4 bsl 21) bor
            (I5 bsl 28) bor (I6 bsl 35),
    {Num, Rest};
unsigned_integer(
    <<1:1, I1:7/integer, 1:1, I2:7/integer, 1:1, I3:7/integer, 1:1, I4:7/integer, 1:1, I5:7/integer,
        1:1, I6:7/integer, 0:1, I7:7/integer, Rest/bitstring>>
) ->
    Num =
        I1 bor (I2 bsl 7) bor (I3 bsl 14) bor (I4 bsl 21) bor
            (I5 bsl 28) bor (I6 bsl 35) bor (I7 bsl 42),
    {Num, Rest};
unsigned_integer(_) ->
    throw({error, big_num}).

%%
%% 7.1.7 QName
qname(#{uri := #compact_partition{bits = N} = UriP} = G, Bin) ->
    % uri part, compact
    {G1, Ns, R1} =
        case Bin of
            <<0:N, R9/bitstring>> ->
                {A, B} = string(R9),
                {Id, UriP1} = add_string_to_compact_partition(UriP, A),
                {
                    G#{
                        uri := UriP1,
                        {name, Id} => empty_partition(),
                        {prefix, Id} => empty_compact_partition()
                    },
                    {Id, A},
                    B
                };
            <<I1:N, R9/bitstring>> ->
                {G, I1 - 1, R9}
        end,
    % local name part, normal string
    LnKey = {name, first_or_all(Ns)},
    #{LnKey := #{bits := L} = NamesP} = G1,
    {G2, Ln, R2} =
        case R1 of
            % found
            <<0:8, R7/bitstring>> ->
                {A1, B1} = nbit_uint(L, R7),
                {G1, A1, B1};
            R7 ->
                {L2, R6} = unsigned_integer(R7),
                {Str, R5} = string_1(R6, L2 - 1, <<>>),
                {Id2, NamesP1} = add_string_to_partition(NamesP, Str),
                {G1#{LnKey := NamesP1}, {Id2, Str}, R5}
        end,
    % prefix part, compact
    PxKey = {prefix, first_or_all(Ns)},
    #{PxKey := #compact_partition{bits = P} = PxPart} = G2,
    {G3, Px, R3} =
        case R2 of
            % none or one possible
            _ when P =< 1 ->
                {G2, 0, R2};
            <<0:P, R8/bitstring>> ->
                {A2, B2} = string(R8),
                {Id3, PxPart1} = add_string_to_compact_partition(PxPart, A2),
                {G2#{PxKey := PxPart1}, {Id3, A2}, B2};
            <<I2:P, R8/bitstring>> ->
                {G2, I2 - 1, R8}
        end,
    {G3, {Ns, Ln, Px}, R3}.

uri(#{uri := #compact_partition{bits = N} = UriP} = G, Bin) ->
    {G1, Ns, R1} =
        case Bin of
            <<0:N, R9/bitstring>> ->
                {A, B} = string(R9),
                {Id, UriP1} = add_string_to_compact_partition(UriP, A),
                {
                    G#{
                        uri := UriP1,
                        {name, Id} => empty_partition(),
                        {prefix, Id} => empty_compact_partition()
                    },
                    {Id, A},
                    B
                };
            <<I1:N, R9/bitstring>> ->
                {G, I1 - 1, R9}
        end,
    PxKey = {prefix, first_or_all(Ns)},
    #{PxKey := #compact_partition{bits = P} = PxPart} = G1,
    {G2, Px, R2} =
        case R1 of
            <<0:P, R8/bitstring>> ->
                {A2, B2} = string(R8),
                {Id3, PxPart1} = add_string_to_compact_partition(PxPart, A2),
                {G1#{PxKey := PxPart1}, {Id3, A2}, B2};
            <<I2:P, R8/bitstring>> ->
                {G1, I2 - 1, R8}
        end,
    {IsLocal, R3} = boolean(R2),
    {G2, {Ns, Px, IsLocal}, R3}.

%% 7.1.9 n-bit Unsigned Integer
nbit_uint(N, Bin) ->
    <<I:N/integer, Rest/bitstring>> = Bin,
    {I, Rest}.

%% 7.1.10 String
string(Bin) ->
    {Len, R1} = unsigned_integer(Bin),
    string_1(R1, Len, <<>>).

string_1(Bin, L, Acc) when L == 0 ->
    {Acc, Bin};
string_1(<<0:1, C:7, Rest/bitstring>>, L, Acc) ->
    string_1(Rest, L - 1, <<Acc/binary, C>>);
string_1(Bin, L, Acc) ->
    {C, R} = unsigned_integer(Bin),
    string_1(R, L - 1, <<Acc/binary, C/utf8>>).

qname_key({{Ni, _}, {Li, _}, _}) -> {Ni, Li};
qname_key({Ni, {Li, _}, _}) -> {Ni, Li};
qname_key({{Ni, _}, Li, _}) -> {Ni, Li};
qname_key({Ni, Li, _}) -> {Ni, Li}.

first_or_all({A, _}) -> A;
first_or_all(A) -> A.

add_string_to_compact_partition(
    #compact_partition{
        next_id = NextId,
        values = Values
    },
    String
) ->
    NewNext = NextId + 1,
    BitWidth = bit_width(NewNext + 1),
    {NextId, #compact_partition{
        bits = BitWidth,
        next_id = NewNext,
        values = Values#{NextId => String}
    }}.

add_string_to_partition(
    #{
        next_id := NextId,
        next_s := NextS,
        bits := BitWidth,
        values := Values
    },
    String
) when NextId =:= NextS ->
    NewNext = NextId + 1,
    {NextId, #{
        bits => BitWidth + 1,
        next_s => NextS bsl 1,
        next_id => NewNext,
        % new map when changing bits
        values => Values#{NextId => String}
    }};
add_string_to_partition(
    #{
        next_id := NextId,
        values := Values
    } = Part,
    String
) ->
    NewNext = NextId + 1,
    {NextId, Part#{
        next_id := NewNext,
        values := Values#{NextId => String}
    }}.

add_string_to_gpartition(#{
    next_id := NextId,
    next_s := NextS,
    bits := BitWidth
}) when NextId =:= NextS ->
    NewNext = NextId + 1,
    {NextId, #{
        bits => BitWidth + 1,
        next_s => NextS bsl 1,
        % new map when changing bits
        next_id => NewNext
    }};
add_string_to_gpartition(#{next_id := NextId} = Part) ->
    NewNext = NextId + 1,
    {NextId, Part#{next_id := NewNext}}.
