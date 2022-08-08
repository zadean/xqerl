% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% @doc Scans/tokenizes XQuery source code for use in xqerl_parser.
%% @TODO replace with leex.

-module(xqerl_scanner).

%% main API
-export([tokens/1]).
-export([scan_name/1]).

-define(L, get_line()).
-define(F, get_filename()).

-define(LF, 10).
%% whitespace consists of 'space', 'carriage return', 'line feed' or 'tab'
-define(WS(H), (H == 32 orelse H == 13 orelse H == ?LF orelse H == 9)).
-define(NOTWS(H), (H =/= 32 andalso H =/= 13 andalso H =/= ?LF andalso H =/= 9)).

-include("xqerl.hrl").

tokens({Filename, Str}) ->
    init_scan(Filename),
    Norm = normalize_lines(Str),
    Toks = tokens(strip_ws(Norm), []),
    destr_scan(),
    Toks.

tokens_encl([], Acc) ->
    lists:reverse(Acc);
tokens_encl(Str, Acc) ->
    %?dbg("CURR", Acc),
    case scan_token(Str, Acc) of
        {rescan, NewStr} ->
            tokens(NewStr, Acc);
        {direct, NewStr, Depth} ->
            dc_tokens(NewStr, Acc, Depth);
        {invalid_name, _E} ->
            ?dbg(?LINE, 'XPST0003'),
            ?err('XPST0003', {?F, ?L});
        {Token, T} ->
            %?dbg("TE",Token),
            tokens_encl(T, [Token | Acc])
        %tokens_encl(strip_ws(T), [Token|Acc] )
    end.

tokens([], Acc) ->
    %?dbg("LAST", lists:reverse(Acc)),
    lists:flatten(lists:reverse(Acc));
tokens(Str, Acc) ->
    %?dbg("TT",Str),
    case scan_token(Str, Acc) of
        {rescan, NewStr} ->
            tokens(NewStr, Acc);
        {direct, NewStr, Depth} ->
            dc_tokens(NewStr, Acc, Depth);
        {invalid_name, E} ->
            ?dbg(?LINE, E),
            ?err('XPST0003', {?F, ?L});
        {Token, T} ->
            %?dbg("TOKEN",Token),
            tokens(T, [Token | Acc])
        %tokens(strip_ws(T), [Token|Acc])
    end.

dc_tokens([], Acc, _) ->
    tokens([], Acc);
dc_tokens(Str, Acc, Depth) ->
    case scan_dc_token(Str, Acc, Depth) of
        {rescan, NewStr} ->
            dc_tokens(NewStr, Acc, Depth);
        {computed, NewStr} ->
            tokens(strip_ws(NewStr), Acc);
        {Token, T, D2} ->
            dc_tokens(T, [Token | Acc], D2)
    end.

%% when inside a direct constructor, everything is different!!
%% *'PredefinedEntityRef'
%% *'CharRef'
%% *'{{'
%% *'}}'
%% *'EscapeQuot'
%% *'EscapeApos'
%% 'QuotAttrContentChar' *
%% 'ElementContentChar'
%% 'AposAttrContentChar' *

% EscapeQuot
%scan_dc_token("\"\"" ++ T, _A, Depth) -> {{'EscapeQuot', ?L, '""'}, T};
% EscapeApos
%scan_dc_token("''" ++ T, _A, Depth) -> {{'EscapeApos', ?L, '\'\''}, T};
% PredefinedEntityRef
scan_dc_token("&lt;" ++ T, _A, Depth) ->
    {{'PredefinedEntityRef', ?L, [$<]}, T, Depth};
scan_dc_token("&gt;" ++ T, _A, Depth) ->
    {{'PredefinedEntityRef', ?L, [$>]}, T, Depth};
scan_dc_token("&amp;" ++ T, _A, Depth) ->
    {{'PredefinedEntityRef', ?L, [$&]}, T, Depth};
scan_dc_token("&quot;" ++ T, _A, Depth) ->
    {{'PredefinedEntityRef', ?L, [$"]}, T, Depth};
scan_dc_token("&apos;" ++ T, _A, Depth) ->
    {{'PredefinedEntityRef', ?L, [$']}, T, Depth};
% double curly brackets
%scan_dc_token("{{" ++ T, _A, Depth) -> {{'{{', ?L, '{{'}, T};
%scan_dc_token("}}" ++ T, _A, Depth) -> {{'}}', ?L, '}}'}, T};
% CharRef
scan_dc_token("&#x" ++ T, _A, Depth) ->
    {S, T1} = scan_hex_char_ref(T, []),
    {S, T1, Depth};
scan_dc_token("&#" ++ T, _A, Depth) ->
    {S, T1} = scan_dec_char_ref(T, []),
    {S, T1, Depth};
% EntityRef
scan_dc_token("&" ++ T, _A, Depth) ->
    {S, T1} = scan_entity_ref(T, "&"),
    {S, T1, Depth};
scan_dc_token("<![CDATA[" ++ T, _A, Depth) ->
    {CData, T1} = scan_cdata_contents(T, []),
    {[{'<![CDATA[', ?L, '<![CDATA['}, CData, {']]>', ?L, ']]>'}], T1, Depth};
%% scan_dc_token("]]>" ++ T, _A, 0) ->
%%    ?dbg(?MODULE,?LINE),
%%    {computed, T};
%% scan_dc_token("]]>" ++ T, _A, _Depth) ->
%%    ?dbg(?MODULE,?LINE),
%%    {rescan, T};

% direct comment can trigger direct scanning
scan_dc_token("<!--" ++ T, _A, Depth) ->
    {Comment, T1} = scan_direct_comment_text(T, []),
    %io:format("Comment: ~p~n", [T1]),
    {[{'<!--', ?L, '<!--'}, Comment, {'-->', ?L, '-->'}], "-->" ++ T1, Depth};
scan_dc_token("-->" ++ T, _A, 0) ->
    {computed, T};
scan_dc_token("-->" ++ T, _A, _Depth) ->
    {rescan, T};
% direct PI can trigger direct scanning
scan_dc_token("<?" ++ T, _A, Depth) ->
    {Target, Contents, T1} = scan_direct_pi_constructor(T),
    {[{'<?', ?L, '<?'}, Target, Contents, {'?>', ?L, '?>'}], T1, Depth};
scan_dc_token("?>" ++ T, _A, 0) ->
    {computed, T};
scan_dc_token("?>" ++ T, _A, _Depth) ->
    {rescan, T};
% direct element can trigger direct scanning, T should start with a QName and no whitespace
scan_dc_token("</Q{" ++ T, _A, Depth) ->
    {Tok1, T2} = scan_eqname("Q{" ++ T),
    {Tok2, T3} = scan_name(T2),
    {QName, T1} =
        case Tok2 of
            invalid_name ->
                {Tok1, T2};
            true ->
                {lists:flatten([Tok1, Tok2]), T3}
        end,
    A1 = {'</', ?L, '</'},
    A2 = [A1, QName],
    {A2, strip_ws_c(T1), Depth - 1};
scan_dc_token("</" ++ [H | T], _A, Depth) when ?NOTWS(H) ->
    {QName, T1} = scan_name([H | T]),
    A1 = {'</', ?L, '</'},
    A2 = [A1, QName],
    {A2, strip_ws_c(T1), Depth - 1};
scan_dc_token("<Q{" ++ T, _A, Depth) ->
    {Tok1, T2} = scan_eqname("Q{" ++ T),
    {Tok2, T3} = scan_name(T2),
    {QName, T1} =
        case Tok2 of
            invalid_name when Tok1 == invalid_name ->
                ?err('XPST0003', {?F, ?L});
            invalid_name ->
                {Tok1, T2};
            true ->
                {lists:flatten([Tok1, Tok2]), T3}
        end,
    scan_dc_token_name_start(QName, T1, Depth);
scan_dc_token("<" ++ [H | T], _A, Depth) when ?NOTWS(H) ->
    case scan_name([H | T]) of
        {invalid_name, _} ->
            ?err('XPST0003', {?F, ?L});
        {QName, T1} ->
            scan_dc_token_name_start(QName, T1, Depth)
    end;
scan_dc_token(Str = "/>" ++ _, _A, 1) ->
    {computed, Str};
scan_dc_token("/>" ++ T, _A, Depth) ->
    {{'/>', ?L, '/>'}, T, Depth - 1};
scan_dc_token(Str = ">" ++ _, _A, 0) ->
    {computed, Str};
scan_dc_token(">" ++ T, A, Depth) ->
    case lookback(A) of
        %'S' ->
        %   {{'>', ?L, '>'}, T, Depth };
        'maybeNCName' ->
            {{'>', ?L, '>'}, T, Depth};
        {'</', _, _} ->
            {{'>', ?L, '>'}, T, Depth};
        [] ->
            {{'>', ?L, '>'}, T, Depth};
        X ->
            ?dbg("X", X),
            {{'ElementContentChar', ?L, $>}, T, Depth}
    end;
scan_dc_token("}}" ++ T, _A, Depth) ->
    {{'}}', ?L, $}}, T, Depth};
scan_dc_token("{{" ++ T, _A, Depth) ->
    {{'{{', ?L, ${}, T, Depth};
%back to expr
scan_dc_token("{" ++ T, _A, Depth) ->
    %currently in a direct constructor,
    %enclosed expressions can happen here,
    %read ahead to get the entire expression
    {Expr, T1} = scan_enclosed_expr(strip_ws_c(T), [], 1, 0, 0, false),
    %io:format("Expr: ~p T: ~p~n", [Expr, T1]),
    Encl = tokens_encl(strip_ws_c(Expr), [{'{', 99, '{'}]),
    %io:format("Encl: ~p~n", [Encl]),
    {Encl, T1, Depth};
scan_dc_token("}" ++ T, _A, Depth) ->
    {{'}', ?L, '}'}, T, Depth};
scan_dc_token([?LF | T], _Acc, Depth) ->
    incr_line(),
    {{'S', ?L, ?LF}, T, Depth};
scan_dc_token([H | T], _Acc, Depth) ->
    case is_content_char(H) of
        true when ?WS(H) ->
            {{'S', ?L, H}, T, Depth};
        true ->
            {{'ElementContentChar', ?L, H}, T, Depth};
        _ ->
            ?err('XPST0003', {?F, ?L})
    end.

scan_dc_token_name_start(QName, T1, Depth) ->
    {Atts, T4} = scan_dir_attr_list(T1, []),
    {[{'<', ?L, '<'}, QName, Atts], strip_ws_c(T4), Depth + 1}.

scan_dir_attr_list(Str = "/>" ++ _T, Acc) ->
    {reorder_dir_attr_list(Acc, [], []), Str};
scan_dir_attr_list(Str = ">" ++ _T, Acc) ->
    {reorder_dir_attr_list(Acc, [], []), Str};
scan_dir_attr_list(T, Acc) ->
    %io:format("Got: ~p~n", [T]),
    case scan_dir_attr(T) of
        {[], T1} ->
            {Acc, T1};
        {Att, T1} ->
            scan_dir_attr_list(T1, Acc ++ Att)
    end.

reorder_dir_attr_list([], N, A) ->
    %?dbg("Acc",N ++ A),
    N ++ A;
reorder_dir_attr_list([{'S', _, _} = S, {_, _, "xmlns"} = X, {'=', _, _} = E, V | T], N, A) ->
    reorder_dir_attr_list(T, [S, X, E, V | N], A);
reorder_dir_attr_list([{'S', _, _} = S, [{_, _, "xmlns"}, _, _] = X, {'=', _, _} = E, V | T], N, A) ->
    reorder_dir_attr_list(T, [S, X, E, V | N], A);
reorder_dir_attr_list([{'S', _, _} = S, X, {'=', _, _} = E, V | T], N, A) ->
    reorder_dir_attr_list(T, N, [S, X, E, V | A]);
reorder_dir_attr_list([{'S', _, _} | T], N, A) ->
    reorder_dir_attr_list(T, N, A).

scan_dir_attr([H | T]) when ?WS(H) ->
    S = {'S', ?L, 'S'},
    T1 = strip_ws_c(T),
    inc(H),
    case scan_name(T1) of
        {invalid_name, _} ->
            {[S], T1};
        {QName, T2} ->
            try
                "=" ++ T3 = strip_ws_c(T2),
                Q = QName,
                E = {'=', ?L, '='},
                % now in the attribute value
                [Delim | T4] = strip_ws_c(T3),
                {V, T5} = scan_dir_attr_value(Delim, T4),
                {[S, Q, E, V], T5}
            catch
                _:_ ->
                    ?err('XPST0003', {?F, ?L})
            end
    end;
scan_dir_attr(T) ->
    {[], T}.

% { [AttributeStack], T }
scan_dir_attr_value($', T) ->
    {Text, T1} = scan_dir_attr_apos_value(T, []),
    {[{'apos', ?L, 'apos'}, Text, {'apos', ?L, 'apos'}], T1};
scan_dir_attr_value($", T) ->
    {Text, T1} = scan_dir_attr_quot_value(T, []),
    {[{'quot', ?L, 'quot'}, Text, {'quot', ?L, 'quot'}], T1}.

scan_dir_attr_apos_value([], _) ->
    ?err('XPST0003', {?F, ?L});
scan_dir_attr_apos_value("''" ++ T, Acc) ->
    scan_dir_attr_apos_value(T, [{'EscapeApos', ?L, "'"} | Acc]);
scan_dir_attr_apos_value("'" ++ T, Acc) ->
    {lists:reverse(Acc), T};
scan_dir_attr_apos_value("&#x" ++ T, Acc) ->
    {S, T1} = scan_hex_char_ref(T, []),
    scan_dir_attr_apos_value(T1, [S | Acc]);
scan_dir_attr_apos_value("&#" ++ T, Acc) ->
    {S, T1} = scan_dec_char_ref(T, []),
    scan_dir_attr_apos_value(T1, [S | Acc]);
scan_dir_attr_apos_value("}}" ++ T, Acc) ->
    scan_dir_attr_apos_value(T, [{'}}', ?L, $}} | Acc]);
scan_dir_attr_apos_value("{{" ++ T, Acc) ->
    scan_dir_attr_apos_value(T, [{'{{', ?L, ${} | Acc]);
% end on an expression
scan_dir_attr_apos_value("}" ++ T, Acc) ->
    scan_dir_attr_apos_value(T, [{'}', ?L, '}'} | Acc]);
scan_dir_attr_apos_value([H | T] = Str, Acc) ->
    case is_apos_attr_content_char(H) of
        true ->
            scan_dir_attr_apos_value(T, [{'AposAttrContentChar', ?L, H} | Acc]);
        _ when H == $& ->
            % check for predef entities
            %% in an attribute and got an entity
            {Pre, T2} =
                case Str of
                    "&lt;" ++ T1 ->
                        {{'PredefinedEntityRef', ?L, [$<]}, T1};
                    "&gt;" ++ T1 ->
                        {{'PredefinedEntityRef', ?L, [$>]}, T1};
                    "&amp;" ++ T1 ->
                        {{'PredefinedEntityRef', ?L, [$&]}, T1};
                    "&quot;" ++ T1 ->
                        {{'PredefinedEntityRef', ?L, [$"]}, T1};
                    "&apos;" ++ T1 ->
                        {{'PredefinedEntityRef', ?L, [$']}, T1};
                    % unknown predef
                    _ ->
                        ?err('XPST0003', {?F, ?L})
                end,
            %?dbg("scan_dir_attr_quot_value predef entities",{Pre, T2}),
            scan_dir_attr_apos_value(T2, [Pre | Acc]);
        _ ->
            %% in an attribute and got an expression
            % scan ahead to the end of the enclosed statement
            {Expr, T1} = scan_enclosed_expr(T, [], 1, 0, 0, false),
            %SExpr = remove_all_comments(Expr),
            Encl = tokens_encl(Expr, [{'{', 98, '{'}]),
            scan_dir_attr_apos_value(T1, [Encl | Acc])
    end.

scan_dir_attr_quot_value([], _) ->
    ?err('XPST0003', {?F, ?L});
scan_dir_attr_quot_value("\"\"" ++ T, Acc) ->
    scan_dir_attr_quot_value(T, [{'EscapeQuot', ?L, "\""} | Acc]);
scan_dir_attr_quot_value("\"" ++ T, Acc) ->
    {lists:reverse(Acc), T};
scan_dir_attr_quot_value("&#x" ++ T, Acc) ->
    {S, T1} = scan_hex_char_ref(T, []),
    scan_dir_attr_quot_value(T1, [S | Acc]);
scan_dir_attr_quot_value("&#" ++ T, Acc) ->
    {S, T1} = scan_dec_char_ref(T, []),
    scan_dir_attr_quot_value(T1, [S | Acc]);
scan_dir_attr_quot_value("}}" ++ T, Acc) ->
    scan_dir_attr_quot_value(T, [{'}}', ?L, $}} | Acc]);
scan_dir_attr_quot_value("{{" ++ T, Acc) ->
    scan_dir_attr_quot_value(T, [{'{{', ?L, ${} | Acc]);
% end on an expression
scan_dir_attr_quot_value("}" ++ T, Acc) ->
    scan_dir_attr_quot_value(T, [{'}', ?L, '}'} | Acc]);
scan_dir_attr_quot_value([H | T] = Str, Acc) ->
    case is_quot_attr_content_char(H) of
        true ->
            scan_dir_attr_quot_value(T, [{'QuotAttrContentChar', ?L, H} | Acc]);
        _ when H == $& ->
            % check for predef entities
            %% in an attribute and got an entity
            {Pre, T2} =
                case Str of
                    "&lt;" ++ T1 ->
                        {{'PredefinedEntityRef', ?L, [$<]}, T1};
                    "&gt;" ++ T1 ->
                        {{'PredefinedEntityRef', ?L, [$>]}, T1};
                    "&amp;" ++ T1 ->
                        {{'PredefinedEntityRef', ?L, [$&]}, T1};
                    "&quot;" ++ T1 ->
                        {{'PredefinedEntityRef', ?L, [$"]}, T1};
                    "&apos;" ++ T1 ->
                        {{'PredefinedEntityRef', ?L, [$']}, T1};
                    % unknown predef
                    _ ->
                        ?err('XPST0003', {?F, ?L})
                end,
            %?dbg("scan_dir_attr_quot_value predef entities",{Pre, T2}),
            scan_dir_attr_quot_value(T2, [Pre | Acc]);
        _ ->
            %% in an attribute and got an expression
            % scan ahead to the end of the enclosed statement
            {Expr, T1} = scan_enclosed_expr(T, [], 1, 0, 0, false),
            %?dbg("scan_dir_attr_quot_value Expr",Expr),
            %SExpr = remove_all_comments(Expr),
            Encl = tokens_encl(Expr, [{'{', ?L, '{'}]),
            %?dbg("scan_dir_attr_quot_value Encl",Encl),
            %?dbg("scan_dir_attr_quot_value T1",T1),
            scan_dir_attr_quot_value(T1, [Encl | Acc])
    end.

is_apos_attr_content_char($') -> false;
is_apos_attr_content_char(C) -> is_content_char(C).

is_quot_attr_content_char($") -> false;
is_quot_attr_content_char(C) -> is_content_char(C).

is_content_char(${) -> false;
is_content_char($}) -> false;
is_content_char($<) -> false;
is_content_char($&) -> false;
is_content_char(C) -> xqerl_lib:is_xschar(C).

% Comments
scan_token("(:" ++ T, A) ->
    scan_token(trim_comment(T), A);
% NumberLiteral
scan_token([H | T], _A) when H >= $0, H =< $9 ->
    case scan_number([H | T]) of
        {{integer, L, Num}, T1} ->
            {{'IntegerLiteral', L, Num}, T1};
        {{decimal, L, Num}, T1} ->
            {{'DecimalLiteral', L, Num}, T1};
        {{double, L, Num}, T1} ->
            {{'DoubleLiteral', L, Num}, T1}
    end;
% StringLiteral
scan_token([H | T], _A) when H == $"; H == $' ->
    {Literal, T1} = scan_literal(T, H, []),
    {{'StringLiteral', ?L, Literal}, T1};
% types
scan_token(Str = "xs:" ++ _T, _A) ->
    scan_name(Str);
scan_token("Q{}" ++ T, _A) ->
    {[{'Q', ?L, 'Q'}, {'{', ?L, '{'}, {'}', ?L, '}'}], T};
scan_token(Str = "Q{" ++ _, _A) ->
    scan_eqname(Str);
scan_token("zero-digit" ++ T, _A) ->
    maybe_token("zero-digit", T);
scan_token("xquery" ++ T, _A) ->
    maybe_token("xquery", T);
% update facility
scan_token("with" ++ T, _A) ->
    maybe_token("with", T);
scan_token("window" ++ T, _A) ->
    maybe_token("window", T);
scan_token("where" ++ T, _A) ->
    maybe_token("where", T);
scan_token("when" ++ T, _A) ->
    maybe_token("when", T);
scan_token("version" ++ T, _A) ->
    maybe_token("version", T);
scan_token("variable" ++ T, _A) ->
    maybe_token("variable", T);
% update facility
scan_token("value" ++ T, _A) ->
    maybe_token("value", T);
scan_token("validate" ++ T, _A) ->
    maybe_token("validate", T);
% update facility
scan_token("updating" ++ T, _A) ->
    maybe_token("updating", T);
scan_token("unordered" ++ T, _A) ->
    maybe_token("unordered", T);
scan_token("union" ++ T, _A) ->
    maybe_token("union", T);
% reserved function names
scan_token("typeswitch" ++ T = Str, _A) ->
    case lookforward_is_paren(T) of
        true -> maybe_token("typeswitch", T);
        false -> scan_name(Str)
    end;
scan_token("type" ++ T, _A) ->
    maybe_token("type", T);
scan_token("tumbling" ++ T, _A) ->
    maybe_token("tumbling", T);
scan_token("try" ++ T, _A) ->
    maybe_token("try", T);
scan_token("treat" ++ T, _A) ->
    maybe_token("treat", T);
% update facility
scan_token("transform" ++ T, _A) ->
    maybe_token("transform", T);
scan_token("to" ++ T, _A) ->
    maybe_token("to", T);
scan_token("then" ++ T, _A) ->
    maybe_token("then", T);
% reserved function names
scan_token("text" ++ T = Str, _A) ->
    case lookforward_is_paren_or_curly(T) of
        true -> maybe_token("text", T);
        false -> scan_name(Str)
    end;
% reserved function names
scan_token("switch" ++ T = Str, _A) ->
    case lookforward_is_paren(T) of
        true -> maybe_token("switch", T);
        false -> scan_name(Str)
    end;
scan_token("strip" ++ T, _A) ->
    maybe_token("strip", T);
scan_token("strict" ++ T, _A) ->
    maybe_token("strict", T);
scan_token("start" ++ T, _A) ->
    maybe_token("start", T);
scan_token("stable" ++ T, _A) ->
    maybe_token("stable", T);
scan_token("some" ++ T, _A) ->
    maybe_token("some", T);
scan_token("sliding" ++ T, _A) ->
    maybe_token("sliding", T);
% ??
scan_token("skip" ++ T, _A) ->
    maybe_token("skip", T);
scan_token("self" ++ T = Str, _A) ->
    case lookforward_is_axis(T) of
        % is only keyword in axis
        true -> maybe_token("self", T);
        false -> scan_name(Str)
    end;
% reserved function names
scan_token("schema-element" ++ T = Str, _A) ->
    case lookforward_is_paren(T) of
        true -> maybe_token("schema-element", T);
        false -> scan_name(Str)
    end;
% reserved function names
scan_token("schema-attribute" ++ T = Str, _A) ->
    case lookforward_is_paren(T) of
        true -> maybe_token("schema-attribute", T);
        false -> scan_name(Str)
    end;
scan_token("schema" ++ T, _A) ->
    maybe_token("schema", T);
scan_token("satisfies" ++ T, _A) ->
    maybe_token("satisfies", T);
% update facility
scan_token("revalidation" ++ T, _A) ->
    maybe_token("revalidation", T);
scan_token("return" ++ T = Str, A) ->
    % check if back is constructor and forward a curly
    case
        lookback_is_named_constructor(A) andalso
            lookforward_is_curly(T)
    of
        true -> scan_name(Str);
        false -> maybe_token("return", T)
    end;
% update facility
scan_token("replace" ++ T, _A) ->
    maybe_token("replace", T);
% update facility
scan_token("rename" ++ T, _A) ->
    maybe_token("rename", T);
% reserved function names
scan_token("processing-instruction" ++ T = Str, A) ->
    case
        (lookforward_is_paren_or_curly(T) andalso not lookback_is_named_constructor(A)) orelse
            lookforward_is_whitespace_name_curly(T) orelse
            (lookforward_is_whitespace_name_start(T) andalso lookback_not_iter(A))
    of
        true -> maybe_token("processing-instruction", T);
        false -> scan_name(Str)
    end;
scan_token("previous" ++ T, _A) ->
    maybe_token("previous", T);
scan_token("preserve" ++ T, _A) ->
    maybe_token("preserve", T);
scan_token("preceding-sibling" ++ T, _A) ->
    maybe_token("preceding-sibling", T);
scan_token("preceding" ++ T, _A) ->
    maybe_token("preceding", T);
scan_token("percent" ++ T, _A) ->
    maybe_token("percent", T);
scan_token("per-mille" ++ T, _A) ->
    maybe_token("per-mille", T);
scan_token("pattern-separator" ++ T, _A) ->
    maybe_token("pattern-separator", T);
scan_token("parent" ++ T, _A) ->
    maybe_token("parent", T);
scan_token("ordering" ++ T, _A) ->
    maybe_token("ordering", T);
scan_token("ordered" ++ T, _A) ->
    maybe_token("ordered", T);
scan_token("order" ++ T, _A) ->
    maybe_token("order", T);
scan_token("or" ++ T, _A) ->
    maybe_token("or", T);
scan_token("option" ++ T, _A) ->
    maybe_token("option", T);
scan_token("only" ++ T, _A) ->
    maybe_token("only", T);
scan_token("of" ++ T, _A) ->
    maybe_token("of", T);
% update facility
scan_token("nodes" ++ T, _A) ->
    maybe_token("nodes", T);
% reserved function names
scan_token("node" ++ T = Str, A) ->
    case lookback_is_updating(A) of
        true ->
            {{'node', ?L, 'node'}, T};
        false ->
            case lookforward_is_paren(T) of
                true -> maybe_token("node", T);
                false -> scan_name(Str)
            end
    end;
scan_token("no-preserve" ++ T, _A) ->
    maybe_token("no-preserve", T);
scan_token("no-inherit" ++ T, _A) ->
    maybe_token("no-inherit", T);
scan_token("next" ++ T, _A) ->
    maybe_token("next", T);
scan_token("ne" ++ T, _A) ->
    maybe_token("ne", T);
% reserved function names
scan_token("namespace-node" ++ T = Str, _A) ->
    case lookforward_is_paren(T) of
        true -> maybe_token("namespace-node", T);
        false -> scan_name(Str)
    end;
scan_token("namespace" ++ T = Str, A) ->
    case
        (lookforward_is_curly(T) andalso not lookback_is_named_constructor(A)) orelse
            lookforward_is_whitespace_name_start(T)
    of
        %lookforward_is_whitespace_name_curly(T) of
        true -> maybe_token("namespace", T);
        false -> scan_name(Str)
    end;
scan_token("module" ++ T, _A) ->
    maybe_token("module", T);
scan_token("modify" ++ T, _A) ->
    maybe_token("modify", T);
scan_token("mod" ++ T, _A) ->
    maybe_token("mod", T);
scan_token("minus-sign" ++ T, _A) ->
    maybe_token("minus-sign", T);
% reserved function names
scan_token("map" ++ T = Str, _A) ->
    case lookforward_is_paren_or_curly(T) of
        true -> maybe_token("map", T);
        false -> scan_name(Str)
    end;
scan_token("lt" ++ T, _A) ->
    maybe_token("lt", T);
scan_token("let" ++ T, _A) ->
    maybe_token("let", T);
scan_token("least" ++ T, _A) ->
    maybe_token("least", T);
scan_token("le" ++ T, _A) ->
    maybe_token("le", T);
scan_token("lax" ++ T, _A) ->
    maybe_token("lax", T);
% update facility
scan_token("last" ++ T, _A) ->
    maybe_token("last", T);
% reserved function names
scan_token("item" ++ T = Str, A) ->
    case lookforward_is_paren(T) orelse lookback(A) == 'context' of
        true -> maybe_token("item", T);
        false -> scan_name(Str)
    end;
scan_token("is" ++ T, _A) ->
    maybe_token("is", T);
% update facility
scan_token("invoke" ++ T, _A) ->
    maybe_token("invoke", T);
% update facility
scan_token("into" ++ T, _A) ->
    maybe_token("into", T);
scan_token("intersect" ++ T, _A) ->
    maybe_token("intersect", T);
scan_token("instance" ++ T, _A) ->
    maybe_token("instance", T);
% update facility
scan_token("insert" ++ T, _A) ->
    maybe_token("insert", T);
scan_token("inherit" ++ T, _A) ->
    maybe_token("inherit", T);
scan_token("infinity" ++ T, _A) ->
    maybe_token("infinity", T);
scan_token("in" ++ T, _A) ->
    maybe_token("in", T);
% import !!
scan_token(Str = "import" ++ T, _A) ->
    case is_keyword_import(T) of
        true ->
            {{'import', ?L, 'import'}, T};
        _ ->
            scan_name(Str)
    end;
% reserved function names
scan_token("if" ++ T = Str, _A) ->
    case lookforward_is_paren(T) of
        true -> maybe_token("if", T);
        false -> scan_name(Str)
    end;
scan_token("idiv" ++ T, _A) ->
    maybe_token("idiv", T);
scan_token("gt" ++ T, _A) ->
    maybe_token("gt", T);
scan_token("grouping-separator" ++ T, _A) ->
    maybe_token("grouping-separator", T);
scan_token("group" ++ T, _A) ->
    maybe_token("group", T);
scan_token("greatest" ++ T, _A) ->
    maybe_token("greatest", T);
scan_token("ge" ++ T, _A) ->
    maybe_token("ge", T);
% reserved function names
scan_token("function" ++ T = Str, A) ->
    case
        (lookforward_is_paren_or_curly(T) orelse
            lookforward_is_whitespace_name_start(T)) andalso
            lookback(A) =/= [] orelse lookforward_is_paren_or_curly(T)
    of
        true -> maybe_token("function", T);
        false -> scan_name(Str)
    end;
scan_token("for" ++ T, _A) ->
    maybe_token("for", T);
scan_token("following-sibling" ++ T, _A) ->
    maybe_token("following-sibling", T);
scan_token("following" ++ T, _A) ->
    maybe_token("following", T);
% update facility
scan_token("first" ++ T, _A) ->
    maybe_token("first", T);
scan_token("external" ++ T, _A) ->
    maybe_token("external", T);
scan_token("exponent-separator" ++ T, _A) ->
    maybe_token("exponent-separator", T);
scan_token("except" ++ T, _A) ->
    maybe_token("except", T);
scan_token("every" ++ T, _A) ->
    maybe_token("every", T);
scan_token("eq" ++ T, _A) ->
    maybe_token("eq", T);
scan_token("end" ++ T, _A) ->
    maybe_token("end", T);
scan_token("encoding" ++ T, _A) ->
    maybe_token("encoding", T);
% reserved function names
scan_token("empty-sequence" ++ T = Str, _A) ->
    case lookforward_is_paren(T) of
        true -> maybe_token("empty-sequence", T);
        false -> scan_name(Str)
    end;
scan_token("empty" ++ T, _A) ->
    maybe_token("empty", T);
scan_token("else" ++ T, _A) ->
    maybe_token("else", T);
% reserved function names
scan_token("element" ++ T = Str, A) ->
    case
        (lookforward_is_paren_or_curly(T) andalso
            not lookback_is_named_constructor(A)) orelse
            lookforward_is_whitespace_name_curly(T) orelse
            lookback_is_default(A)
    of
        true -> maybe_token("element", T);
        false -> scan_name(Str)
    end;
% reserved function names
scan_token("document-node" ++ T = Str, _A) ->
    case lookforward_is_paren(T) of
        true -> maybe_token("document-node", T);
        false -> scan_name(Str)
    end;
scan_token("document" ++ T, _A) ->
    maybe_token("document", T);
scan_token("div" ++ T, _A) ->
    maybe_token("div", T);
scan_token("digit" ++ T, _A) ->
    maybe_token("digit", T);
scan_token("descending" ++ T, _A) ->
    maybe_token("descending", T);
scan_token("descendant-or-self" ++ T, _A) ->
    maybe_token("descendant-or-self", T);
scan_token("descendant" ++ T, _A) ->
    maybe_token("descendant", T);
% update facility
scan_token("delete" ++ T, _A) ->
    maybe_token("delete", T);
scan_token("default" ++ T, _A) ->
    maybe_token("default", T);
% declare !!
scan_token(Str = "declare" ++ T, _A) ->
    case is_keyword_declare(T) of
        true ->
            {{'declare', ?L, 'declare'}, T};
        _ ->
            scan_name(Str)
    end;
scan_token("decimal-separator" ++ T, _A) ->
    maybe_token("decimal-separator", T);
scan_token("decimal-format" ++ T, _A) ->
    maybe_token("decimal-format", T);
scan_token("count" ++ T, _A) ->
    maybe_token("count", T);
scan_token("copy-namespaces" ++ T, _A) ->
    maybe_token("copy-namespaces", T);
% update facility
scan_token("copy" ++ T, _A) ->
    maybe_token("copy", T);
scan_token("context" ++ T, _A) ->
    maybe_token("context", T);
scan_token("construction" ++ T, _A) ->
    maybe_token("construction", T);
% reserved function names
scan_token("comment" ++ T = Str, _A) ->
    case lookforward_is_paren_or_curly(T) of
        true -> maybe_token("comment", T);
        false -> scan_name(Str)
    end;
scan_token("collation" ++ T, _A) ->
    maybe_token("collation", T);
scan_token("child" ++ T, _A) ->
    maybe_token("child", T);
% ??
scan_token("cdata-contents" ++ T, _A) ->
    maybe_token("cdata-contents", T);
scan_token("catch" ++ T, _A) ->
    maybe_token("catch", T);
scan_token("castable" ++ T, _A) ->
    maybe_token("castable", T);
scan_token("cast" ++ T, _A) ->
    maybe_token("cast", T);
scan_token("case" ++ T, _A) ->
    maybe_token("case", T);
scan_token("by" ++ T, _A) ->
    maybe_token("by", T);
scan_token("boundary-space" ++ T, _A) ->
    maybe_token("boundary-space", T);
scan_token("before" ++ T, _A) ->
    maybe_token("before", T);
scan_token("base-uri" ++ T, _A) ->
    maybe_token("base-uri", T);
% reserved function names
scan_token("attribute" ++ T = Str, A) ->
    case
        (lookforward_is_paren_or_curly(T) andalso not lookback_is_named_constructor(A)) orelse
            (lookforward_is_whitespace_name_curly(T)) orelse
            lookforward_is_axis(T)
    of
        true -> maybe_token("attribute", T);
        false -> scan_name(Str)
    end;
scan_token("at" ++ T, _A) ->
    maybe_token("at", T);
scan_token("ascending" ++ T, _A) ->
    maybe_token("ascending", T);
scan_token("as" ++ T, _A) ->
    maybe_token("as", T);
% reserved function names
scan_token("array" ++ T = Str, _A) ->
    case lookforward_is_paren_or_curly(T) of
        true -> maybe_token("array", T);
        false -> scan_name(Str)
    end;
scan_token("and" ++ T, _A) ->
    maybe_token("and", T);
scan_token("ancestor-or-self" ++ T, _A) ->
    maybe_token("ancestor-or-self", T);
scan_token("ancestor" ++ T, _A) ->
    maybe_token("ancestor", T);
% update facility
scan_token("after" ++ T, _A) ->
    maybe_token("after", T);
scan_token("allowing" ++ T, _A) ->
    maybe_token("allowing", T);
scan_token("NaN" ++ T, _A) ->
    maybe_token("NaN", T);
%% 'declare' and 'import' must be done in scanner, no NCName
scan_token("%" ++ T, _A) ->
    {{'%', ?L, '%'}, T};
scan_token("||" ++ T, _A) ->
    {{'||', ?L, '||'}, T};
scan_token("=>" ++ T, _A) ->
    {{'=>', ?L, '=>'}, T};
scan_token("#" ++ T, _A) ->
    {{'#', ?L, '#'}, T};
scan_token(Str = "``[" ++ _T, _A) ->
    {Toks, T1} = scan_str_const(Str, [], []),
    {lists:flatten(Toks), T1};
scan_token("]``" ++ T, _A) ->
    {{']``', ?L, ']``'}, T};
scan_token(Str = "(#" ++ _T, _A) ->
    {Toks, T1} = scan_pragma(Str, [], []),
    {Toks, T1};
scan_token(")#" ++ T, _A) ->
    {{')#', ?L, ')#'}, T};
scan_token("`{" ++ T, _A) ->
    {{'`{', ?L, '`{'}, T};
scan_token("}`" ++ T, _A) ->
    {{'}`', ?L, '}`'}, T};
scan_token(Str = "<![CDATA[" ++ _, _A) ->
    {direct, Str, 0};
scan_token("]]>" ++ T, _A) ->
    ?dbg(?MODULE, ?LINE),
    {{']]>', ?L, ']]>'}, T};
% direct comment, send to DC
scan_token(Str = "<!--" ++ _, _A) ->
    {direct, Str, 0};
% direct PI, send to DC
scan_token(Str = "<?" ++ _, _A) ->
    {direct, Str, 0};
scan_token("(/)" ++ T, A) ->
    case lookback(A) of
        V when
            V == 'maybeNCName';
            % maybe a fun call ???
            V == ')';
            % maybe a fun ref call ???
            V == 'IntegerLiteral'
        ->
            {[{'(', ?L, '('}, {'lone-slash', ?L, 'lone-slash'}, {')', ?L, ')'}], T};
        % maybe a variable ???
        ':=' ->
            {{'lone-slash', ?L, 'lone-slash'}, T};
        X ->
            ?dbg("X", X),
            {{'lone-slash', ?L, 'lone-slash'}, T}
    end;
scan_token("!=" ++ T, _A) ->
    {{'!=', ?L, '!='}, T};
scan_token(".." ++ T, _A) ->
    {{'..', ?L, '..'}, T};
scan_token("//" ++ T, _A) ->
    {{'//', ?L, '//'}, T};
scan_token("::" ++ T, _A) ->
    {{'::', ?L, '::'}, T};
scan_token(":=" ++ T, _A) ->
    {{':=', ?L, ':='}, T};
scan_token(Str = ":*" ++ _T, _A) ->
    {Name, T1} = scan_name(tl(Str)),
    {[{':', ?L, ':'}, Name], T1};
scan_token("*:=" ++ T, _A) ->
    {[{'*', ?L, '*'}, {':=', ?L, ':='}], T};
% let the parser figure it out
scan_token("*:*" ++ T, _A) ->
    {[{'*', ?L, '*'}, {':', ?L, ':'}, {'*', ?L, '*'}], T};
scan_token(Str = "*:" ++ _T, _A) ->
    scan_name(Str);
scan_token("<<" ++ T, _A) ->
    {{'<<', ?L, '<<'}, T};
scan_token("<=" ++ T, _A) ->
    {{'<=', ?L, '<='}, T};
scan_token(">=" ++ T, _A) ->
    {{'>=', ?L, '>='}, T};
scan_token(">>" ++ T, _A) ->
    {{'>>', ?L, '>>'}, T};
scan_token("-" ++ T, _A) ->
    {{'-', ?L, '-'}, T};
scan_token("$" ++ T, _A) ->
    case scan_eqname(strip_ws(T)) of
        {invalid_name, _} ->
            ?err('XPST0003', {?F, ?L});
        {QName, T2} ->
            {[{'$', ?L, '$'}, QName], T2}
    end;
scan_token("(" ++ T, _A) ->
    {{'(', ?L, '('}, T};
scan_token(")" ++ T, _A) ->
    {{')', ?L, ')'}, T};
scan_token("*" ++ T, _A) ->
    {{'*', ?L, '*'}, T};
scan_token("," ++ T, _A) ->
    {{',', ?L, ','}, T};
scan_token("." ++ T, A) ->
    case lookforward_is_number(T) of
        true ->
            scan_token("0." ++ T, A);
        _ ->
            {{'.', ?L, '.'}, T}
    end;
scan_token("/" ++ T, A) ->
    % look ahead for non path character
    case strip_ws(T) of
        [$< | _] ->
            {{'/', ?L, '/'}, T};
        [$> | T1] ->
            {{'/>', ?L, '/>'}, T1};
        [$@ | _] ->
            {{'/', ?L, '/'}, T};
        [$( | _] ->
            {{'/', ?L, '/'}, T};
        [$[ | _] ->
            {{'/', ?L, '/'}, T};
        [$* | _] ->
            {{'/', ?L, '/'}, T};
        [$$ | _] ->
            {{'/', ?L, '/'}, T};
        [$. | _] ->
            {{'/', ?L, '/'}, T};
        [H1 | _] ->
            Lb = lookback(A),
            case xqerl_lib:is_xsncname_start_char(H1) of
                true -> {{'/', ?L, '/'}, T};
                _ when Lb == '/>' -> {{'/', ?L, '/'}, T};
                _ when Lb == 'maybeNCName' -> {{'/', ?L, '/'}, T};
                _ when Lb == ')' -> {{'/', ?L, '/'}, T};
                _ when Lb == ']' -> {{'/', ?L, '/'}, T};
                _ when Lb == 'IntegerLiteral' -> ?err('XPTY0019', {?F, ?L});
                _ when is_tuple(Lb), element(Lb, 1) == '$' -> {{'/', ?L, '/'}, T};
                _ -> {{'lone-slash', ?L, 'lone-slash'}, T}
            end;
        _ ->
            ?err('XPST0003', {?F, ?L})
    end;
% unbalanced comment
scan_token(":)" ++ _T, A) ->
    ?dbg("A", A),
    ?dbg(?LINE, 'XPST0003'),
    ?err('XPST0003', {?F, ?L});
scan_token([H, $:, $= | T], _A) when ?WS(H) ->
    inc(H),
    {{':=', ?L, ':='}, T};
scan_token([H, $: | T], _A) when ?WS(H) ->
    inc(H),
    {{' :', ?L, ' :'}, T};
scan_token([$:, H | T], _A) when ?WS(H) ->
    inc(H),
    {{': ', ?L, ': '}, T};
scan_token(":" ++ T, _A) ->
    {{':', ?L, ':'}, T};
scan_token(";" ++ T, _A) ->
    {{';', ?L, ';'}, T};
scan_token("?" ++ T, _A) ->
    {{'?', ?L, '?'}, T};
scan_token("@" ++ T, _A) ->
    {{'@', ?L, '@'}, T};
scan_token("[" ++ T, _A) ->
    {{'[', ?L, '['}, T};
scan_token("]" ++ T, _A) ->
    {{']', ?L, ']'}, T};
scan_token("{" ++ T, _A) ->
    {{'{', ?L, '{'}, T};
scan_token("|" ++ T, _A) ->
    {{'|', ?L, '|'}, T};
scan_token("}" ++ T, _A) ->
    {{'}', ?L, '}'}, T};
scan_token("+" ++ T, _A) ->
    {{'+', ?L, '+'}, T};
scan_token("!" ++ T, _A) ->
    {{'!', ?L, '!'}, T};
% could be a direct constructor
scan_token(Str = "<" ++ T, A) ->
    case lookback(A) of
        'lone-slash' ->
            %?dbg("lone-slash",A),
            {{'<', ?L, '<'}, T};
        LB ->
            case scan_name(T) of
                {invalid_name, _} when LB == [] ->
                    ?err('XPST0003', {?F, ?L});
                {invalid_name, _} ->
                    {{'<', ?L, '<'}, T};
                _ ->
                    {direct, Str, 0}
            end
    end;
scan_token("=" ++ T, _A) ->
    {{'=', ?L, '='}, T};
scan_token(">" ++ T, _A) ->
    {{'>', ?L, '>'}, T};
scan_token("/>" ++ _, _A) ->
    ?err('XPST0003', {?F, ?L});
% special idiv ??
scan_token(Str = [S, $i, $d, $i, $v, H | T], A) when
    (?WS(H)) andalso
        (?WS(S))
->
    inc(H),
    inc(S),
    case lookback(A) of
        'function' ->
            scan_name(tl(Str));
        _ ->
            {{'idiv', ?L, 'idiv'}, T}
    end;
% special mod ??
scan_token(Str = [S, $m, $o, $d, H | T], A) when
    (?WS(H)) andalso
        (?WS(S))
->
    inc(H),
    inc(S),
    case lookback(A) of
        'function' ->
            scan_name(tl(Str));
        _ ->
            {{'mod', ?L, 'mod'}, T}
    end;
% special div ??
scan_token(Str = [S, $d, $i, $v, H | T], A) when
    (?WS(H)) andalso
        (?WS(S))
->
    inc(H),
    inc(S),
    case lookback(A) of
        'function' ->
            scan_name(tl(Str));
        _ ->
            {{'div', ?L, 'div'}, T}
    end;
% QName as the fall-through, for function names
scan_token([H | T], _A) when ?WS(H) ->
    inc(H),
    {rescan, T};
scan_token(T, _A) ->
    %?dbg("fallthrough",T),
    scan_name(T).

maybe_token(TokenPart, []) ->
    % not ending a query with keyword...
    scan_name(TokenPart);
maybe_token(TokenPart, Rest = [H | _]) ->
    case
        xmerl_lib:is_namechar(H) orelse
            H == 895 orelse
            H == 383
    of
        true when H =/= $: ->
            scan_name(TokenPart ++ Rest);
        % false or is colon
        _ ->
            Atom = list_to_atom(TokenPart),
            {{Atom, ?L, Atom}, Rest}
    end.

trim_ws([H | T]) when ?WS(H) ->
    trim_ws(T);
trim_ws("(:" ++ T) ->
    trim_ws(trim_comment_no_incr(T));
trim_ws(T) ->
    T.

strip_ws([?LF | T]) ->
    incr_line(),
    strip_ws(T);
strip_ws([H | T]) when ?WS(H) ->
    strip_ws(T);
strip_ws("(:" ++ T) ->
    strip_ws(trim_comment(T));
strip_ws(T) ->
    T.

strip_ws_c([?LF | T]) ->
    incr_line(),
    strip_ws_c(T);
strip_ws_c([H | T]) when ?WS(H) ->
    strip_ws_c(T);
strip_ws_c(T) ->
    T.

scan_integer([], Acc) ->
    {{integer, ?L, list_to_integer(lists:reverse(Acc))}, []};
scan_integer([H | T], Acc) when H >= $0, H =< $9 ->
    scan_integer(T, [H | Acc]);
scan_integer(".e" ++ T, Acc) ->
    scan_decimal("e" ++ T, "0." ++ Acc);
scan_integer(".E" ++ T, Acc) ->
    scan_decimal("E" ++ T, "0." ++ Acc);
scan_integer([H], Acc) when H == $. ->
    {{decimal, ?L, xqerl_numeric:decimal(list_to_binary(lists:reverse(Acc)))}, []};
scan_integer([H | T], Acc) when H == $. ->
    scan_decimal(T, [H | Acc]);
scan_integer(Str = [H | _], Acc) when H == $e; H == $E ->
    scan_decimal(Str, "0." ++ Acc);
scan_integer([H | _] = Str, Acc) ->
    case
        xmerl_lib:is_letter(H) orelse
            H == 895 orelse
            H == 383
    of
        true ->
            ?err('XPST0003', {?F, ?L});
        false ->
            {{integer, ?L, list_to_integer(lists:reverse(Acc))}, Str}
    end.

scan_decimal([], Acc) ->
    {{decimal, ?L, xqerl_numeric:decimal(list_to_binary(lists:reverse(Acc)))}, []};
scan_decimal([H | T], Acc) when H >= $0, H =< $9 ->
    scan_decimal(T, [H | Acc]);
scan_decimal("e+" ++ T, Acc) ->
    scan_double(T, "+e" ++ Acc);
scan_decimal("E+" ++ T, Acc) ->
    scan_double(T, "+e" ++ Acc);
scan_decimal("e-" ++ T, Acc) ->
    scan_double(T, "-e" ++ Acc);
scan_decimal("E-" ++ T, Acc) ->
    scan_double(T, "-e" ++ Acc);
scan_decimal("e" ++ T, Acc) ->
    scan_double(T, "+e" ++ Acc);
scan_decimal("E" ++ T, Acc) ->
    scan_double(T, "+e" ++ Acc);
scan_decimal(T, Acc) ->
    {{decimal, ?L, xqerl_numeric:decimal(list_to_binary(lists:reverse([$0 | Acc])))}, T}.

scan_double([], Acc) ->
    case catch list_to_float(lists:reverse(Acc)) of
        {'EXIT', _} ->
            {{double, ?L, infinity}, []};
        Dbl ->
            {{double, ?L, Dbl}, []}
    end;
scan_double([H | T], Acc) when H >= $0, H =< $9 ->
    {Number, T1} = scan_digits([H | T], Acc),
    case catch list_to_float(Number) of
        {'EXIT', _} ->
            {{double, ?L, infinity}, T1};
        Dbl ->
            {{double, ?L, Dbl}, T1}
    end;
% not a number
scan_double(_, _) ->
    ?err('XPST0003', {?F, ?L}).

%% scan_number will catch a leading dot

scan_number(T) ->
    scan_number(T, []).

scan_number("." ++ T, []) ->
    scan_decimal(T, ".0");
scan_number([H | T], Acc) when H >= $0, H =< $9 ->
    scan_integer(T, [H | Acc]);
scan_number(T, Acc) ->
    {{integer, ?L, list_to_integer(lists:reverse(Acc))}, T}.

scan_digits([], Acc) ->
    {lists:reverse(Acc), []};
scan_digits([H | T], Acc) when H >= $0, H =< $9 ->
    scan_digits(T, [H | Acc]);
scan_digits(T, Acc) ->
    {lists:reverse(Acc), T}.

scan_literal([], _, _) ->
    ?err('XPST0003', {?F, ?L});
% double delim
scan_literal([H, H | T], H, Acc) ->
    scan_literal(T, H, [H | Acc]);
scan_literal([H | T], H, Acc) ->
    {lists:reverse(Acc), T};
scan_literal("&apos;" ++ T, Delim, Acc) ->
    scan_literal(T, Delim, [$' | Acc]);
scan_literal("&quot;" ++ T, Delim, Acc) ->
    scan_literal(T, Delim, [$" | Acc]);
scan_literal("&amp;" ++ T, Delim, Acc) ->
    scan_literal(T, Delim, [$& | Acc]);
scan_literal("&gt;" ++ T, Delim, Acc) ->
    scan_literal(T, Delim, [$> | Acc]);
scan_literal("&lt;" ++ T, Delim, Acc) ->
    scan_literal(T, Delim, [$< | Acc]);
scan_literal("&#x" ++ T, Delim, Acc) ->
    {{'CharRef', _, CP}, T1} = scan_hex_char_ref(T, []),
    scan_literal(T1, Delim, [CP | Acc]);
scan_literal("&#" ++ T, Delim, Acc) ->
    {{'CharRef', _, CP}, T1} = scan_dec_char_ref(T, []),
    scan_literal(T1, Delim, [CP | Acc]);
% not allowed in literal
scan_literal("&" ++ _T, _Delim, _Acc) ->
    ?err('XPST0003', {?F, ?L});
scan_literal([H | T], Delim, Acc) ->
    scan_literal(T, Delim, [H | Acc]).

scan_eqname("Q{" ++ T) ->
    {Uri, T1} = scan_braced_uri(T, []),
    {[{'Q', ?L, 'Q'}, {'{', ?L, '{'}, {'StringLiteral', ?L, Uri}, {'}', ?L, '}'}], T1};
scan_eqname(Str) ->
    scan_name(Str).

scan_name([H1, H2 | T]) when H1 == $:, ?WS(H2) ->
    ?dbg("Line", ?LINE),
    {invalid_name, [H1, H2 | T]};
scan_name([H1, H2 | T]) when H1 == $: ->
    scan_prefix([H2 | T], [H1]);
scan_name([H | T]) when H == $* ->
    scan_prefix([H | T], []);
scan_name([$_ | T]) ->
    scan_prefix(T, [$_]);
scan_name([H | T]) ->
    case
        xmerl_lib:is_letter(H) orelse
            H == 895 orelse
            H == 383
    of
        true ->
            scan_prefix(T, [H]);
        false ->
            {invalid_name, [H | T]}
    end;
scan_name(Str) ->
    ?dbg("Line", ?LINE),
    {invalid_name, Str}.

scan_prefix([], Acc) ->
    {{'maybeNCName', ?L, lists:reverse(Acc)}, []};
scan_prefix(Str = [H | _], Acc) when ?WS(H) ->
    {{'maybeNCName', ?L, lists:reverse(Acc)}, Str};
scan_prefix(T = "::" ++ _, Acc) ->
    %% This is the next token
    {{'maybeNCName', ?L, lists:reverse(Acc)}, T};
scan_prefix(":" ++ T, Acc) ->
    {LocalPart, T1} = scan_local_part(T, []),
    case LocalPart of
        {'*', _, _} ->
            Prefix = {'maybeNCName', ?L, lists:reverse(Acc)},
            {[Prefix, {':*', ?L, ':*'}], T1};
        {'maybeNCName', _, []} ->
            {{'maybeNCName', ?L, lists:reverse(Acc)}, ":" ++ T1};
        {'maybeNCName', _, [H2 | _] = L1} ->
            case
                xmerl_lib:is_letter(H2) orelse
                    H2 =:= $_ orelse
                    H2 == 895 orelse
                    H2 == 383
            of
                true ->
                    %?dbg("LocalPart",LocalPart),
                    Prefix = {'maybeNCName', ?L, lists:reverse(Acc)},
                    {[Prefix, {':', ?L, ':'}, LocalPart], T1};
                _ ->
                    {{'maybeNCName', ?L, lists:reverse(Acc)}, ": " ++ L1 ++ T1}
            end
    end;
scan_prefix("*:" ++ T, _Acc) when T =/= [] ->
    {LocalPart, T1} = scan_local_part(T, []),
    Prefix = {'*:', ?L, '*:'},
    {[Prefix, LocalPart], T1};
scan_prefix("*" ++ T, []) ->
    {{'*', ?L, '*'}, T};
scan_prefix(Str = [H | T], Acc) ->
    case
        xmerl_lib:is_namechar(H) orelse
            H == 895 orelse
            H == 383
    of
        true ->
            scan_prefix(T, [H | Acc]);
        false ->
            {{'maybeNCName', ?L, lists:reverse(Acc)}, Str}
    end.

scan_local_part([], Acc) ->
    {{'maybeNCName', ?L, lists:reverse(Acc)}, []};
scan_local_part([H | T], []) when H == $* ->
    {{'*', ?L, '*'}, T};
scan_local_part(Str = [H | _], Acc) when ?WS(H) ->
    {{'maybeNCName', ?L, lists:reverse(Acc)}, Str};
scan_local_part(Str = [H | _], Acc) when H == $: ->
    {{'maybeNCName', ?L, lists:reverse(Acc)}, Str};
scan_local_part(Str = [H | T], Acc) ->
    case
        xmerl_lib:is_namechar(H) orelse
            H == 895 orelse
            H == 383
    of
        true ->
            scan_local_part(T, [H | Acc]);
        false ->
            {{'maybeNCName', ?L, lists:reverse(Acc)}, Str}
    end.

%% special_token('?') -> true;
%% special_token('@') -> true;
%% special_token('::') -> true;
%% special_token('*:') -> true;
%% special_token(',') -> true;
%% special_token('(') -> true;
%% special_token('[') -> true;
%% special_token('/') -> true;
%% special_token('//') -> true;
%% special_token('|') -> true;
%% special_token('-') -> true;
%% special_token('=') -> true;
%% special_token('!=') -> true;
%% special_token('<') -> true;
%% special_token('<=') -> true;
%% special_token('>=') -> true;
%% special_token('and') -> true;
%% special_token('or') -> true;
%% special_token('mod') -> true;
%% special_token('div') -> true;
%% special_token('</') -> true;
%% special_token(':=') -> true;
%% special_token('where') -> true;
%% special_token(_) -> false.

lookback([[X, _] | _]) -> X;
lookback([{X, _, _} | _]) -> X;
% function call w/ prefix
lookback([[{'maybeNCName', _, _}, _, _] | _]) -> 'maybeNCName';
% string constructor
lookback([[{'``[', _, _} | _] | _]) -> '``[';
lookback(_) -> [].

%% lookforward_greatest_least(T) ->
%%    case lookforward_is_ws(T) of
%%       true ->
%%          case strip_ws(T) of
%%             [$g,$r,$e,$a,$t,$e,$s,$t,$,|_]->
%%                true;
%%             [$g,$r,$e,$a,$t,$e,$s,$t,S|_] when ?WS(S) ->
%%                true;
%%             [$l,$e,$a,$s,$t,$,|_] ->
%%                true;
%%             [$l,$e,$a,$s,$t,S|_] when ?WS(S) ->
%%                true;
%%             _ ->
%%                false
%%          end;
%%       _ ->
%%          false
%%    end.

%% lookforward_external(T) ->
%%    case trim_ws(T) of
%%       ":="++_ ->
%%          true;
%%       ";"++_ ->
%%          true;
%%       _ ->
%%          false
%%    end.

%% lookforward_validate(T) ->
%%    case lookforward_is_ws(T) of
%%       true ->
%%          case trim_ws(T) of
%%             [${|_] ->
%%                true;
%%             [$l,$a,$x|_] ->
%%                true;
%%             [$s,$t,$r,$i,$c,$t|_] ->
%%                true;
%%             [$t,$y,$p,$e,_] ->
%%                true;
%%             _ ->
%%                false
%%          end;
%%       _ ->
%%          case trim_ws(T) of
%%             [${|_] ->
%%                true;
%%             _ ->
%%                false
%%          end
%%    end.

%% lookforward_is_by(T) ->
%%    case lookforward_is_ws(T) of
%%       true ->
%%          case trim_ws(T) of
%%             [$b,$y,S|_] when ?WS(S) ->
%%                true;
%%             _ ->
%%                false
%%          end;
%%       _ ->
%%          false
%%    end.

%% lookforward_is_ws([H|_]) when ?WS(H) ->
%%    true;
%% lookforward_is_ws("(:" ++ _) ->
%%    true;
%% lookforward_is_ws(_) ->
%%    false.

%% lookforward_is_return(T) ->
%%    case trim_ws(T) of
%%       "return" ++ _ -> true;
%%       _ -> false
%%    end.

lookback_is_updating(A) ->
    case lookback(A) of
        'insert' -> true;
        'delete' -> true;
        'replace' -> true;
        'of' -> true;
        'rename' -> true;
        _ -> false
    end.

lookback_is_default(A) ->
    case lookback(A) of
        'default' -> true;
        _ -> false
    end.

lookback_is_named_constructor(A) ->
    case lookback(A) of
        'attribute' -> true;
        'element' -> true;
        'namespace' -> true;
        'processing-instruction' -> true;
        _ -> false
    end.

lookback_not_iter(A) ->
    case lookback(A) of
        [] -> false;
        '/' -> false;
        'in' -> true;
        _ -> true
    end.

lookforward_is_axis(T) ->
    case trim_ws(T) of
        "::" ++ _ -> true;
        _ -> false
    end.

% check if there is a space followed by a name start char
% used for node constructors
lookforward_is_whitespace_name_start([H | T]) when ?WS(H) ->
    case trim_ws(T) of
        [H1 | _] ->
            is_name_start(H1);
        _ ->
            false
    end;
lookforward_is_whitespace_name_start("(:" ++ _ = Str) ->
    case trim_ws(Str) of
        [H1 | _] ->
            is_name_start(H1);
        _ ->
            false
    end;
lookforward_is_whitespace_name_start(_) ->
    false.

lookforward_is_whitespace_name_curly([H | T]) when ?WS(H) ->
    try
        case trim_ws(T) of
            [H1 | _] = Str ->
                case is_name_start(H1) of
                    true ->
                        {_, Str1} = scan_name(Str),
                        lookforward_is_curly(Str1);
                    _ ->
                        false
                end;
            _ ->
                false
        end
    catch
        _:_ ->
            false
    end;
lookforward_is_whitespace_name_curly(_) ->
    false.

is_name_start(H1) ->
    xmerl_lib:is_letter(H1) orelse
        H1 == $_ orelse
        H1 == $' orelse
        H1 == $" orelse
        H1 == 895 orelse H1 == 383.

lookforward_is_number([]) -> false;
lookforward_is_number([H | _]) when H >= $0 andalso H =< $9 -> true;
lookforward_is_number([$. | _]) -> true;
lookforward_is_number([_ | _]) -> false.

%% lookforward_is_end(T) ->
%%    case trim_ws(T) of
%%       "end" ++ _ -> true;
%%       _ -> false
%%    end.

%% lookforward_is_equal(T) ->
%%    case trim_ws(T) of
%%       "=" ++ _ -> true;
%%       _ -> false
%%    end.

%% lookforward_is_empty(T) ->
%%    case trim_ws(T) of
%%       "empty" ++ _ -> true;
%%       _ -> false
%%    end.

%% lookforward_is_var(T) ->
%%    case trim_ws(T) of
%%       "$" ++ _ -> true;
%%       _ -> false
%%    end.

%% lookforward_is_node(T) ->
%%    case trim_ws(T) of
%%       "node" ++ _ -> true;
%%       _ -> false
%%    end.

%% lookforward_is_version(T) ->
%%    case trim_ws(T) of
%%       "version" ++ _ -> true;
%%       "encoding" ++ _ -> true;
%%       _ -> false
%%    end.

%% lookforward_is_namespace(T) ->
%%    case trim_ws(T) of
%%       "namespace" ++ _ -> true;
%%       _ -> false
%%    end.

%% lookforward_is_value(T) ->
%%    case trim_ws(T) of
%%       "value" ++ _ -> true;
%%       _ -> false
%%    end.

%% lookforward_is_window(T) ->
%%    case trim_ws(T) of
%%       "sliding" ++ _ -> true;
%%       "tumbling" ++ _ -> true;
%%       _ -> false
%%    end.

lookforward_is_paren(T) ->
    case trim_ws(T) of
        "(" ++ _ -> true;
        _ -> false
    end.

lookforward_is_curly(T) ->
    case trim_ws(T) of
        "{" ++ _ -> true;
        _ -> false
    end.

lookforward_is_paren_or_curly(T) ->
    case trim_ws(T) of
        "(" ++ _ -> true;
        "{" ++ _ -> true;
        _ -> false
    end.

%% keyword `declare` must not be an NCName
is_keyword_declare(Str) ->
    Trim =
        case Str of
            [H | T] when ?WS(H) ->
                trim_ws(T);
            "(:" ++ _ ->
                trim_ws(Str);
            _ ->
                false
        end,
    case Trim of
        "base-uri" ++ _ -> true;
        "boundary-space" ++ _ -> true;
        "construction" ++ _ -> true;
        "copy-namespaces" ++ _ -> true;
        "decimal-format" ++ _ -> true;
        "default" ++ _ -> true;
        "ordering" ++ _ -> true;
        "namespace" ++ _ -> true;
        "function" ++ _ -> true;
        "variable" ++ _ -> true;
        "context" ++ _ -> true;
        "option" ++ _ -> true;
        "%" ++ _ -> true;
        "updating" ++ _ -> true;
        "revalidation" ++ _ -> true;
        _ -> false
    end.

%% keyword `import` must not be an NCName
is_keyword_import(Str) ->
    Trim =
        case Str of
            [H | T] when ?WS(H) ->
                trim_ws(T);
            "(:" ++ _ ->
                trim_ws(Str);
            _ ->
                false
        end,
    case Trim of
        "schema" ++ _ -> true;
        "module" ++ _ -> true;
        _ -> false
    end.

%% lookforward_is_curly(T) ->
%%    case trim_ws(T) of
%%       "{" ++ _ -> true;
%%       _ -> false
%%    end.

%% qname_if_path(Tok, [], _Last) ->
%%    scan_name(Tok);
%% qname_if_path(Tok, R, []) ->
%%    scan_name(Tok ++ R);
%% qname_if_path(Tok, [H|T], {'$',_,_}) ->
%%    case xmerl_lib:is_namechar(H) of
%%       true ->
%%          scan_name(Tok ++ [H|T]);
%%       _ ->
%%          {{list_to_atom(Tok), ?L, list_to_atom(Tok)}, [H|T]}
%%    end;
%% qname_if_path(Tok, [H|T], Last) ->
%%    case xmerl_lib:is_namechar(H) of
%%       true ->
%%          scan_name(Tok ++ [H|T]);
%%       _ when Last == ')';
%%              Last == 'maybeNCName';
%%              Last == 'IntegerLiteral';
%%              Last == 'DecimalLiteral';
%%              Last == 'DoubleLiteral';
%%              Last == 'StringLiteral' ->
%%          {{list_to_atom(Tok), ?L, list_to_atom(Tok)}, [H|T]};
%%       _ ->
%%          case special_token(Last) orelse
%%                 (lookforward_is_paren([H|T]) andalso not reserved_function_name(Tok)) orelse
%%                 is_naming(Last) of
%%             true ->
%%                scan_name(Tok ++ [H|T]);
%%             _ ->
%%                {{list_to_atom(Tok), ?L, list_to_atom(Tok)}, [H|T]}
%%          end
%%    end.

%% is_naming('element') -> true;
%% is_naming('attribute') -> true;
%% is_naming('namespace') -> true;
%% is_naming('function') -> true;
%% is_naming('union') -> true;
%% is_naming('intersect') -> true;
%% is_naming('except') -> true;
%% is_naming(_) -> false.

%% reserved_function_name("array") -> true;
%% reserved_function_name("attribute") -> true;
%% reserved_function_name("comment") -> true;
%% reserved_function_name("document-node") -> true;
%% reserved_function_name("element") -> true;
%% reserved_function_name("empty-sequence") -> true;
%% reserved_function_name("function") -> true;
%% reserved_function_name("if") -> true;
%% reserved_function_name("item") -> true;
%% reserved_function_name("map") -> true;
%% reserved_function_name("namespace-node") -> true;
%% reserved_function_name("node") -> true;
%% reserved_function_name("processing-instruction") -> true;
%% reserved_function_name("schema-attribute") -> true;
%% reserved_function_name("schema-element") -> true;
%% reserved_function_name("switch") -> true;
%% reserved_function_name("text") -> true;
%% reserved_function_name("typeswitch") -> true;
%% reserved_function_name(_) -> false.

scan_direct_comment_text([], _A) ->
    ?dbg("unbalanced comment", 'XPST0003'),
    ?err('XPST0003', {?F, ?L});
scan_direct_comment_text("-->" ++ T, A) ->
    {{'comment-text', ?L, lists:reverse(A)}, T};
scan_direct_comment_text("--" ++ _T, _A) ->
    ?dbg(?LINE, 'XPST0003'),
    ?err('XPST0003', {?F, ?L});
scan_direct_comment_text([H | T], A) ->
    inc(H),
    scan_direct_comment_text(T, [H | A]).

scan_cdata_contents([], A) ->
    {{'cdata-contents', ?L, lists:reverse(A)}, []};
scan_cdata_contents("]]>" ++ T, A) ->
    {{'cdata-contents', ?L, lists:reverse(A)}, T};
scan_cdata_contents([H | T], A) ->
    inc(H),
    scan_cdata_contents(T, [H | A]).

% {Target, Contents, Tail}
scan_direct_pi_constructor([]) ->
    ?err('XPST0003', {?F, ?L});
scan_direct_pi_constructor([H1, H2, H3, H4 | _]) when
    H1 == $X orelse H1 == $x, H2 == $M orelse H2 == $m, H3 == $L orelse H3 == $l, ?WS(H4)
->
    ?err('XPST0003', {?F, ?L});
scan_direct_pi_constructor([H | _]) when ?WS(H) ->
    ?err('XPST0003', {?F, ?L});
scan_direct_pi_constructor(Str) ->
    case scan_name(Str) of
        {{_, _, Target}, T1} ->
            % significant ws
            scan_direct_pi_constructor_1(T1, Target);
        % bad name
        _ ->
            ?err('XPST0003', {?F, ?L})
    end.

scan_direct_pi_constructor_1([H | T2], Target) when ?WS(H) ->
    inc(H),
    T3 = strip_ws(T2),
    case scan_direct_pi_contents(T3, []) of
        {Contents, T4} ->
            {{'PITarget', ?L, Target}, {'DirPIContents', ?L, Contents}, T4};
        {T4} ->
            {{'PITarget', ?L, Target}, [], T4}
    end;
scan_direct_pi_constructor_1("?>" ++ T9, Target) ->
    {{'PITarget', ?L, Target}, [], "?>" ++ T9};
scan_direct_pi_constructor_1(_, _) ->
    % no significant whitespace found
    ?err('XPST0003', {?F, ?L}).

scan_direct_pi_contents([], Acc) ->
    {lists:reverse(Acc), []};
scan_direct_pi_contents("?>" ++ T, []) ->
    {"?>" ++ T};
scan_direct_pi_contents("?>" ++ T, Acc) ->
    {lists:reverse(Acc), "?>" ++ T};
scan_direct_pi_contents([H | T], Acc) ->
    inc(H),
    scan_direct_pi_contents(T, [H | Acc]).

scan_dec_char_ref([H | T], Acc) when H >= $0, H =< $9 ->
    scan_dec_char_ref(T, [H | Acc]);
scan_dec_char_ref([$; | _], []) ->
    ?err('XPST0003', {?F, ?L});
scan_dec_char_ref([$; | T], Acc) ->
    CP = list_to_integer(lists:reverse(Acc)),
    char_ref(CP, T);
scan_dec_char_ref(_, _) ->
    ?err('XPST0003', {?F, ?L}).

scan_hex_char_ref([H | T], Acc) when H >= $0, H =< $9 ->
    scan_hex_char_ref(T, [H | Acc]);
scan_hex_char_ref([H | T], Acc) when H >= $a, H =< $f ->
    scan_hex_char_ref(T, [H | Acc]);
scan_hex_char_ref([H | T], Acc) when H >= $A, H =< $F ->
    scan_hex_char_ref(T, [H | Acc]);
scan_hex_char_ref([$; | _], []) ->
    ?err('XPST0003', {?F, ?L});
scan_hex_char_ref([$; | T], Acc) ->
    Hex = lists:reverse(Acc),
    CP = list_to_integer(Hex, 16),
    char_ref(CP, T);
scan_hex_char_ref(_, _) ->
    ?err('XPST0003', {?F, ?L}).

char_ref(CP, T) ->
    case xqerl_lib:is_xschar(CP) of
        true ->
            {{'CharRef', ?L, CP}, T};
        false ->
            ?err('XQST0090', {?F, ?L})
    end.

scan_entity_ref([], _) ->
    ?err('XPST0003', {?F, ?L});
scan_entity_ref([H | T], Acc) when H == $; ->
    {{'EntityRef', ?L, lists:reverse([H | Acc])}, T};
scan_entity_ref([H | T], Acc) ->
    inc(H),
    scan_entity_ref(T, [H | Acc]).

scan_enclosed_expr("(:" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth, Q) ->
    T1 = trim_comment(T),
    scan_enclosed_expr(T1, Acc, CurlyDepth, AposDepth, QuotDepth, Q);
scan_enclosed_expr("''" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth, Q) when AposDepth > 0 ->
    scan_enclosed_expr(T, "''" ++ Acc, CurlyDepth, AposDepth, QuotDepth, Q);
scan_enclosed_expr("'" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth, Q) when AposDepth > 0 ->
    scan_enclosed_expr(T, "'" ++ Acc, CurlyDepth, AposDepth - 1, QuotDepth, Q);
scan_enclosed_expr("'" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth, Q) when QuotDepth == 0 ->
    scan_enclosed_expr(T, "'" ++ Acc, CurlyDepth, AposDepth + 1, QuotDepth, Q);
scan_enclosed_expr("\"\"" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth, Q) when QuotDepth > 0 ->
    scan_enclosed_expr(T, "\"\"" ++ Acc, CurlyDepth, AposDepth, QuotDepth, Q);
scan_enclosed_expr("\"" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth, Q) when QuotDepth > 0 ->
    scan_enclosed_expr(T, "\"" ++ Acc, CurlyDepth, AposDepth, QuotDepth - 1, Q);
scan_enclosed_expr("\"" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth, Q) when AposDepth == 0 ->
    scan_enclosed_expr(T, "\"" ++ Acc, CurlyDepth, AposDepth, QuotDepth + 1, Q);
scan_enclosed_expr([H | T], Acc, CurlyDepth, AposDepth, QuotDepth, Q) when
    AposDepth > 0; QuotDepth > 0
->
    scan_enclosed_expr(T, [H | Acc], CurlyDepth, AposDepth, QuotDepth, Q);
scan_enclosed_expr("`{" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth, Q) ->
    scan_enclosed_expr(T, "{`" ++ Acc, CurlyDepth + 1, AposDepth, QuotDepth, Q);
scan_enclosed_expr("{" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth, Q) ->
    scan_enclosed_expr(T, "{" ++ Acc, CurlyDepth + 1, AposDepth, QuotDepth, Q);
scan_enclosed_expr("}`" ++ T, Acc, 1, _AposDepth, _QuotDepth, true) ->
    {lists:flatten(lists:reverse([$`, $} | Acc])), T};
scan_enclosed_expr("}" ++ T, Acc, 1, _AposDepth, _QuotDepth, _Q) ->
    {lists:flatten(lists:reverse([$} | Acc])), T};
scan_enclosed_expr("}`" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth, Q) ->
    scan_enclosed_expr(T, "`}" ++ Acc, CurlyDepth - 1, AposDepth, QuotDepth, Q);
scan_enclosed_expr("}" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth, Q) ->
    scan_enclosed_expr(T, "}" ++ Acc, CurlyDepth - 1, AposDepth, QuotDepth, Q);
scan_enclosed_expr([H | T], Acc, CurlyDepth, AposDepth, QuotDepth, Q) ->
    scan_enclosed_expr(T, [H | Acc], CurlyDepth, AposDepth, QuotDepth, Q);
scan_enclosed_expr(Str, Acc, CurlyDepth, AposDepth, QuotDepth, Q) ->
    ?dbg("scan_enclosed_expr", {Str, Acc, CurlyDepth, AposDepth, QuotDepth, Q}),
    ?err('XPST0003', {?F, ?L}).

% normalize end-of-line characters
normalize_lines([13, 10 | T]) ->
    [10 | normalize_lines(T)];
normalize_lines([13 | T]) ->
    [10 | normalize_lines(T)];
normalize_lines([H | T]) ->
    [H | normalize_lines(T)];
normalize_lines([]) ->
    [].

% remove all xquery comments, they can be nested
trim_comment_no_incr(Str) ->
    scan_comments(Str, 1, false).

trim_comment(Str) ->
    scan_comments(Str, 1, true).

% start comment
scan_comments("(:" ++ T, Depth, Incr) ->
    scan_comments(T, Depth + 1, Incr);
% end comment
scan_comments(":)" ++ T, Depth, Incr) when Depth > 1 ->
    scan_comments(T, Depth - 1, Incr);
% end comment
scan_comments(":)" ++ T, 1, _) ->
    " " ++ T;
% in comment with no more text
scan_comments([], _, _) ->
    ?err('XPST0003', {?F, ?L});
% in comment
scan_comments([H | T], Depth, true) ->
    inc(H),
    scan_comments(T, Depth, true);
% in comment
scan_comments([_ | T], Depth, Incr) ->
    scan_comments(T, Depth, Incr).

scan_str_const([], _A, _L) ->
    ?dbg(?LINE, 'XPST0003'),
    ?err('XPST0003', {?F, ?L});
scan_str_const("`{" ++ T, A, L) ->
    New = {'`{', ?L, '`{'},
    {Encl, T1} = scan_enclosed_expr(T, [], 1, 0, 0, true),
    Toks = tokens_encl(Encl, [New]),
    Chars = {'StringConstructorChars', ?L, lists:reverse(A)},
    scan_str_const(T1, [], [Toks, Chars | L]);
scan_str_const("``[" ++ T, A, []) ->
    scan_str_const(T, A, [{'``[', ?L, '``['}]);
scan_str_const("]``" ++ T, A, L) ->
    List = lists:reverse([{']``', ?L, ']``'}, {'StringConstructorChars', ?L, lists:reverse(A)} | L]),
    {List, T};
scan_str_const([H | T], A, L) ->
    scan_str_const(T, [H | A], L).

% [105]    Pragma            ::=      "(#" S? EQName (S PragmaContents)? "#)"   /* ws: explicit */
scan_pragma("(#" ++ T, _A, _L) ->
    % optional ws
    T1 = strip_ws_c(T),
    case T1 of
        [$Q, ${ | _] ->
            {L1, T2} = scan_eqname(T1),
            {N1, T3} = scan_name(T2),
            L2 = lists:flatten([{'S', ?L, 'S'}, N1, lists:reverse(L1), {'(#', ?L, '(#'}]),
            ?dbg("L2", L2),
            scan_pragma(strip_ws_c(T3), [], L2);
        _ ->
            case scan_name(T1) of
                {Name, [H2 | T2]} when ?WS(H2) -> scan_pragma_1(Name, T2);
                {Name, [$#, $) | _] = T2} -> scan_pragma_1(Name, T2);
                _ -> ?err('XPST0003', {?F, ?L})
            end
    end;
scan_pragma("#)" ++ T, [], L) ->
    case hd(L) of
        {'S', _, _} ->
            {lists:reverse([{'#)', ?L, '#)'} | tl(L)]), T};
        _ ->
            {lists:reverse([{'#)', ?L, '#)'} | L]), T}
    end;
scan_pragma("#)" ++ T, A, L) ->
    {lists:reverse([{'#)', ?L, '#)'}, {'PragmaContents', 2, lists:reverse(A)} | L]), T};
scan_pragma([H | T], A, L) ->
    scan_pragma(T, [H | A], L);
scan_pragma([], _, _) ->
    ?err('XPST0003', {?F, ?L}).

scan_pragma_1(Name, T2) ->
    L1 = [{'S', ?L, 'S'}, Name, {'(#', ?L, '(#'}],
    scan_pragma(strip_ws_c(T2), [], L1).

scan_braced_uri("}" ++ T, Acc) ->
    {lists:reverse(Acc), T};
scan_braced_uri("{" ++ _, _) ->
    ?err('XPST0003', {?F, ?L});
scan_braced_uri("&amp;" ++ T, Acc) ->
    scan_braced_uri(T, [$& | Acc]);
scan_braced_uri("&gt;" ++ T, Acc) ->
    scan_braced_uri(T, [$> | Acc]);
scan_braced_uri("&lt;" ++ T, Acc) ->
    scan_braced_uri(T, [$< | Acc]);
scan_braced_uri("&#x" ++ T, Acc) ->
    {{'CharRef', _, CP}, T1} = scan_hex_char_ref(T, []),
    scan_braced_uri(T1, [CP | Acc]);
scan_braced_uri("&#" ++ T, Acc) ->
    {{'CharRef', _, CP}, T1} = scan_dec_char_ref(T, []),
    scan_braced_uri(T1, [CP | Acc]);
scan_braced_uri([H | T], Acc) ->
    scan_braced_uri(T, [H | Acc]);
scan_braced_uri([], _Acc) ->
    ?dbg(?LINE, 'XPST0003'),
    ?err('XPST0003', {?F, ?L}).

%% in_if_then_no_else([]) -> false;
%% in_if_then_no_else([{then,_,then}|_]) -> true;
%% in_if_then_no_else([{'if',_,'if'}|_]) -> false;
%% in_if_then_no_else([_|T]) ->
%%   in_if_then_no_else(T).

%% in_flwor([]) -> false;
%% in_flwor([{'for',_,'for'}|_]) -> true;
%% in_flwor([{'let',_,'let'}|_]) -> true;
%% in_flwor([{'window',_,'window'}|_]) -> true;
%% in_flwor([{'return',_,'return'}|_]) -> false;
%% in_flwor([_|T]) -> in_flwor(T).

%% in_copy([]) -> false;
%% in_copy([{'copy',_,'copy'}|_]) -> true;
%% in_copy([{'return',_,'return'}|_]) -> false;
%% in_copy([_|T]) -> in_copy(T).

%% in_replace([]) -> false;
%% in_replace([{'with',_,'with'}|_]) -> false;
%% in_replace([{'node',_,_},{'of',_,_}|_]) -> true;
%% in_replace([{'node',_,_},{'replace',_,_}|_]) -> true;
%% in_replace([_|T]) -> in_replace(T).

%% in_rename([]) -> false;
%% in_rename([{'as',_,'as'}|_]) -> false;
%% in_rename([{'node',_,_},{'rename',_,_}|_]) -> true;
%% in_rename([_|T]) -> in_rename(T).

%% in_insert([]) -> false;
%% in_insert([{'node',_,_},{'insert',_,_}|_]) -> true;
%% in_insert([{'nodes',_,_},{'insert',_,_}|_]) -> true;
%% in_insert([_|T]) -> in_insert(T).

inc(?LF) -> incr_line();
inc(_) -> ok.

incr_line() ->
    Val = erlang:get('$_xqerl_current_line'),
    erlang:put('$_xqerl_current_line', Val + 1).

get_line() ->
    erlang:get('$_xqerl_current_line').

get_filename() ->
    erlang:get('$_xqerl_filename').

init_scan(Filename) ->
    erlang:put('$_xqerl_current_line', 1),
    erlang:put('$_xqerl_filename', Filename).

destr_scan() ->
    erlang:erase('$_xqerl_current_line'),
    erlang:erase('$_xqerl_filename').
