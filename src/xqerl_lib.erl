%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
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

%% @doc A veritable cornucopia of 'helpful' functions.
%% All decode/helper functions that are spread throughout the
%% code should be brought in.

-module(xqerl_lib).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    lnew/0,
    lget/1,
    lget/2,
    lput/2,
    lput/3
]).

-export([
    get_remote_resource/2,
    get_environment_variable/2,
    get_environment_variable_names/1
]).

-export([is_xsname_start_char/1]).
-export([is_xsname_char/1]).
-export([is_xschar/1]).
-export([is_xsncname_start_char/1]).

-export([decode_string/1]).

-export([escape_uri/1]).
-export([encode_for_uri/1]).
-export([pct_encode3/1]).

-export([
    resolve_against_base_uri/2,
    check_uri_string/1,
    is_absolute_uri/1,
    is_valid_token/1,
    is_valid_tokens/1,
    is_valid_name/1
]).

-export([
    contains/2,
    trim/1,
    normalize_spaces/1,
    normalize_string/1,
    bin_to_utf8/1,
    bin_to_utf8/2
]).

-export([format_stacktrace/1]).

-export([next_comp_prefix/1]).
-export([pmap/3]).

-define(space, 32).
-define(cr, 13).
-define(lf, 10).
-define(tab, 9).
%% whitespace consists of 'space', 'carriage return', 'line feed' or 'tab'
-define(WS(H), H == ?space; H == ?cr; H == ?lf; H == ?tab).
%% non-space whitespace
-define(NSWS(H), H == ?cr; H == ?lf; H == ?tab).

% characters allowed in XML 1.0
% #x9 | #xA | #xD | [#x20-#xD7FF] | [#xE000-#xFFFD] | [#x10000-#x10FFFF]
% 11 and 12 added to XML 1.1
is_xschar(16#09) -> true;
is_xschar(16#0A) -> true;
%is_xschar(16#0B) -> true; % XML 1.1
%is_xschar(16#0C) -> true; % XML 1.1
is_xschar(16#0D) -> true;
is_xschar(X) when X >= 16#20, X =< 16#D7FF -> true;
is_xschar(X) when X >= 16#E000, X =< 16#FFFD -> true;
is_xschar(X) when X >= 16#10000, X =< 16#10FFFF -> true;
is_xschar(_) -> false.

% ":" | [A-Z] | "_" | [a-z] | [#xC0-#xD6] | [#xD8-#xF6] | [#xF8-#x2FF] |
% [#x370-#x37D] | [#x37F-#x1FFF] | [#x200C-#x200D] | [#x2070-#x218F] |
% [#x2C00-#x2FEF] | [#x3001-#xD7FF] | [#xF900-#xFDCF] | [#xFDF0-#xFFFD] |
% [#x10000-#xEFFFF]
is_xsname_start_char(C) when C >= $a, C =< $z -> true;
is_xsname_start_char(C) when C >= $A, C =< $Z -> true;
is_xsname_start_char($_) -> true;
is_xsname_start_char($:) -> true;
is_xsname_start_char(C) when C >= 16#C0, C =< 16#D6 -> true;
is_xsname_start_char(C) when C >= 16#D8, C =< 16#F6 -> true;
is_xsname_start_char(C) when C >= 16#F8, C =< 16#2FF -> true;
is_xsname_start_char(C) when C >= 16#370, C =< 16#37D -> true;
is_xsname_start_char(C) when C >= 16#37F, C =< 16#1FFF -> true;
is_xsname_start_char(C) when C >= 16#200C, C =< 16#200D -> true;
is_xsname_start_char(C) when C >= 16#2070, C =< 16#218F -> true;
is_xsname_start_char(C) when C >= 16#2C00, C =< 16#2FEF -> true;
is_xsname_start_char(C) when C >= 16#3001, C =< 16#D7FF -> true;
is_xsname_start_char(C) when C >= 16#F900, C =< 16#FDCF -> true;
is_xsname_start_char(C) when C >= 16#FDF0, C =< 16#FFFD -> true;
is_xsname_start_char(C) when C >= 16#10000, C =< 16#EFFFF -> true;
is_xsname_start_char(_) -> false.

% NameStartChar | "-" | "." | [0-9] | #xB7 | [#x0300-#x036F] | [#x203F-#x2040]
is_xsname_char(C) when C >= $a, C =< $z -> true;
is_xsname_char(C) when C >= $A, C =< $Z -> true;
is_xsname_char($-) -> true;
is_xsname_char(C) when C >= $0, C =< $9 -> true;
is_xsname_char($.) -> true;
is_xsname_char($_) -> true;
is_xsname_char($:) -> true;
is_xsname_char(16#B7) -> true;
is_xsname_char(C) when C >= 16#C0, C =< 16#D6 -> true;
is_xsname_char(C) when C >= 16#D8, C =< 16#F6 -> true;
is_xsname_char(C) when C >= 16#F8, C =< 16#2FF -> true;
is_xsname_char(C) when C >= 16#300, C =< 16#36F -> true;
is_xsname_char(C) when C >= 16#370, C =< 16#37D -> true;
is_xsname_char(C) when C >= 16#37F, C =< 16#1FFF -> true;
is_xsname_char(C) when C >= 16#200C, C =< 16#200D -> true;
is_xsname_char(C) when C >= 16#203F, C =< 16#2040 -> true;
is_xsname_char(C) when C >= 16#2070, C =< 16#218F -> true;
is_xsname_char(C) when C >= 16#2C00, C =< 16#2FEF -> true;
is_xsname_char(C) when C >= 16#3001, C =< 16#D7FF -> true;
is_xsname_char(C) when C >= 16#F900, C =< 16#FDCF -> true;
is_xsname_char(C) when C >= 16#FDF0, C =< 16#FFFD -> true;
is_xsname_char(C) when C >= 16#10000, C =< 16#EFFFF -> true;
is_xsname_char(_) -> false.

is_xsncname_start_char($:) -> false;
is_xsncname_start_char(C) -> is_xsname_start_char(C).

%% is_xsncname_char($:) -> false;
%% is_xsncname_char(C) -> is_xsname_char(C).

%% FROM edoc_lib.erl modified for 4 byte
escape_uri([C | Cs]) when C >= $a, C =< $z ->
    [C | escape_uri(Cs)];
escape_uri([C | Cs]) when C >= $A, C =< $Z ->
    [C | escape_uri(Cs)];
escape_uri([C | Cs]) when C >= $0, C =< $9 ->
    [C | escape_uri(Cs)];
escape_uri([C = $. | Cs]) ->
    [C | escape_uri(Cs)];
escape_uri([C = $- | Cs]) ->
    [C | escape_uri(Cs)];
escape_uri([C = $~ | Cs]) ->
    [C | escape_uri(Cs)];
escape_uri([C = $_ | Cs]) ->
    [C | escape_uri(Cs)];
%% The value of each individual byte indicates its UTF-8 function, as follows:
%% 00 to 7F hex (0 to 127): first and only byte of a sequence.
%% 80 to BF hex (128 to 191): continuing byte in a multi-byte sequence.
%% C2 to DF hex (194 to 223): first byte of a two-byte sequence.
%% E0 to EF hex (224 to 239): first byte of a three-byte sequence.
%% F0 to FF hex (240 to 255): first byte of a four-byte sequence.

% 1 byte
escape_uri([C | Cs]) when C < 16#80 ->
    escape_byte(C) ++ escape_uri(Cs);
% 2 byte
escape_uri([C | Cs]) when C >= 16#80, C =< 16#7ff ->
    % 16#c0 = 192
    % 16#80 = 128
    % 16#3f =  63
    escape_byte(((C bsr 6) band 16#3f) + 16#c0) ++
        escape_byte(C band 16#3f + 16#80) ++
        escape_uri(Cs);
% 3 byte
escape_uri([C | Cs]) when C >= 16#800, C =< 16#ffff ->
    escape_byte(((C bsr 12) band 16#3f) + 16#e0) ++
        escape_byte(((C bsr 6) band 16#3f) + 16#80) ++
        escape_byte(C band 16#3f + 16#80) ++
        escape_uri(Cs);
% 4 byte
escape_uri([C | Cs]) when C >= 16#10000, C =< 16#10ffff ->
    escape_byte(((C bsr 18) band 16#3f) + 16#f0) ++
        escape_byte(((C bsr 12) band 16#3f) + 16#80) ++
        escape_byte(((C bsr 6) band 16#3f) + 16#80) ++
        escape_byte(C band 16#3f + 16#80) ++
        escape_uri(Cs);
escape_uri([]) ->
    [].

escape_byte(C) when C >= 0, C =< 255 ->
    [$%, hex_digit(C bsr 4), hex_digit(C band 15)].

hex_digit(N) when N >= 0, N =< 9 ->
    N + $0;
hex_digit(N) when N > 9, N =< 15 ->
    N + $A - 10.

%% shrink_spaces(Bin) when is_binary(Bin) ->
%%    Str = bin_to_str(Bin),
%%    unicode:characters_to_binary(shrink_spaces(Str));
%% shrink_spaces([]) ->
%%    [];
%% shrink_spaces([32,WS|T]) when ?WS(WS) ->
%%    shrink_spaces([32|T]);
%% shrink_spaces("&#xD;"++T) ->
%%    shrink_spaces([32|T]);
%% shrink_spaces("&#xA;"++T) ->
%%    shrink_spaces([32|T]);
%% shrink_spaces("&#x9;"++T) ->
%%    shrink_spaces([32|T]);
%% shrink_spaces([WS|T]) when ?NSWS(WS) ->
%%    shrink_spaces([32|T]);
%% shrink_spaces([H|T]) ->
%%    [H|shrink_spaces(T)].

bin_to_str(Bin) ->
    [C || <<C/utf8>> <= Bin].

contains(<<>>, _) -> false;
contains(<<C/utf8, _/binary>>, C) -> true;
contains(<<_/utf8, Rest/binary>>, C) -> contains(Rest, C).

trim(<<>>) ->
    <<>>;
trim(<<H/utf8, T/binary>>) when
    H == 32;
    H == $\r;
    H == $\n;
    H == 9;
    H == 10;
    H == 10;
    H == 11;
    H == 12;
    H == 13;
    H == 133;
    H == 8206;
    H == 8207;
    H == 8232;
    H == 8233
->
    trim(T);
trim(String) ->
    trim_1(String).

trim_1(<<>>) ->
    <<>>;
trim_1(String) ->
    BS = byte_size(String),
    case binary:last(String) of
        H when
            H == 32;
            H == $\r;
            H == $\n;
            H == 9;
            H == 10;
            H == 10;
            H == 11;
            H == 12;
            H == 13;
            H == 133
        ->
            Sz = byte_size(String) - 1,
            <<Out:Sz/bytes, _/binary>> = String,
            trim_1(Out);
        H when H < 128 ->
            String;
        _ when
            binary_part(String, BS, -3) == <<8206/utf8>>;
            binary_part(String, BS, -3) == <<8207/utf8>>;
            binary_part(String, BS, -3) == <<8232/utf8>>;
            binary_part(String, BS, -3) == <<8233/utf8>>
        ->
            Sz = byte_size(String) - 3,
            <<Out:Sz/bytes, _/utf8>> = String,
            trim_1(Out);
        _ ->
            String
    end.

normalize_spaces(<<>>) -> <<>>;
normalize_spaces(Str) -> normalize_spaces(trim(Str), <<>>).

normalize_spaces(<<32, C/utf8, T/binary>>, Acc) when ?WS(C) ->
    normalize_spaces(<<32, T/binary>>, Acc);
normalize_spaces(<<"&#xD;", T/binary>>, Acc) ->
    normalize_spaces(<<32, T/binary>>, Acc);
normalize_spaces(<<"&#xA;", T/binary>>, Acc) ->
    normalize_spaces(<<32, T/binary>>, Acc);
normalize_spaces(<<"&#x9;", T/binary>>, Acc) ->
    normalize_spaces(<<32, T/binary>>, Acc);
normalize_spaces(<<C/utf8, T/binary>>, Acc) when ?NSWS(C) ->
    normalize_spaces(<<32, T/binary>>, Acc);
normalize_spaces(<<C/utf8, T/binary>>, Acc) ->
    normalize_spaces(T, <<Acc/binary, C/utf8>>);
normalize_spaces(<<>>, Acc) ->
    Acc.

normalize_string(<<>>) -> <<>>;
normalize_string(Str) -> normalize_string(Str, <<>>).

normalize_string(<<"&#xD;", T/binary>>, Acc) ->
    normalize_string(T, <<Acc/binary, 32>>);
normalize_string(<<"&#xA;", T/binary>>, Acc) ->
    normalize_string(T, <<Acc/binary, 32>>);
normalize_string(<<"&#x9;", T/binary>>, Acc) ->
    normalize_string(T, <<Acc/binary, 32>>);
normalize_string(<<C/utf8, T/binary>>, Acc) when ?NSWS(C) ->
    normalize_string(T, <<Acc/binary, 32>>);
normalize_string(<<C/utf8, T/binary>>, Acc) ->
    normalize_string(T, <<Acc/binary, C/utf8>>);
normalize_string(<<>>, Acc) ->
    Acc.

encode_for_uri(<<>>) ->
    <<>>;
encode_for_uri(<<H/utf8, T/binary>>) when
    H == $-; H == $_; H == $.; H == $~; H >= $A, H =< $Z; H >= $a, H =< $z; H >= $0, H =< $9
->
    <<H, (encode_for_uri(T))/binary>>;
encode_for_uri(<<H/utf8, T/binary>>) ->
    Esc = edoc_lib:escape_uri([H]),
    Upp = string:uppercase(list_to_binary(Esc)),
    <<Upp/binary, (encode_for_uri(T))/binary>>.

bin_to_utf8(<<>>) ->
    <<>>;
bin_to_utf8(Binary) ->
    case unicode:bom_to_encoding(Binary) of
        % no BOM UTF-8 assumed
        {latin1, 0} ->
            case unicode:characters_to_binary(Binary, unicode) of
                {error, _, _} ->
                    % maybe latin1
                    case unicode:characters_to_binary(Binary, latin1) of
                        Bin1 when is_binary(Bin1) ->
                            Bin1;
                        _ ->
                            ?err('FOUT1200')
                    end;
                {incomplete, _, _} ->
                    ?err('FOUT1200');
                Bin ->
                    Bin
            end;
        {Enc, L} ->
            <<_:L/binary, Bin/binary>> = Binary,
            case unicode:characters_to_binary(Bin, Enc, unicode) of
                {error, _, E} ->
                    ?dbg("E", E),
                    ?err('FOUT1190');
                {incomplete, _, E} ->
                    ?dbg("E", E),
                    ?err('FOUT1190');
                BinOut ->
                    BinOut
            end
    end.

bin_to_utf8(Bin, []) ->
    bin_to_utf8(Bin);
% special case not allowing latin1
bin_to_utf8(Binary, <<"utf8+">>) ->
    case unicode:bom_to_encoding(Binary) of
        % no BOM UTF-8 assumed
        {latin1, 0} ->
            case unicode:characters_to_binary(Binary, unicode) of
                {error, _, _} ->
                    ?err('FOUT1200');
                {incomplete, _, _} ->
                    ?err('FOUT1200');
                Bin ->
                    Bin
            end;
        {Enc, L} ->
            <<_:L/binary, Bin/binary>> = Binary,
            case unicode:characters_to_binary(Bin, Enc, unicode) of
                {error, _, _} ->
                    ?err('FOUT1190');
                {incomplete, _, _} ->
                    ?err('FOUT1190');
                BinOut ->
                    BinOut
            end
    end;
bin_to_utf8(<<>>, _) ->
    ?err('FOUT1200');
bin_to_utf8(Binary, Enc) ->
    Enc1 =
        case string:lowercase(Enc) of
            <<"utf-8">> ->
                utf8;
            <<"utf-16">> ->
                utf16;
            E ->
                ?dbg("Encoding?", E),
                ?err('FOUT1190')
        end,
    case unicode:characters_to_binary(Binary, Enc1) of
        {error, _, _} ->
            ?err('FOUT1190');
        {incomplete, _, _} ->
            ?err('FOUT1190');
        Bin ->
            Bin
    end.

pct_encode3(Bin) when is_binary(Bin) ->
    Str = bin_to_str(Bin),
    unicode:characters_to_binary(pct_encode3(Str));
pct_encode3([]) ->
    [];
pct_encode3([H | T]) when
    H == $<; H == $>; H == $\"; H == $\s; H == ${; H == $}; H == $|; H == $\\; H == $^; H == $`
->
    string:uppercase(xqerl_lib:escape_uri([H])) ++ pct_encode3(T);
pct_encode3([H | T]) when H >= 32, H =< 126 ->
    [H | pct_encode3(T)];
pct_encode3([H | T]) ->
    string:uppercase(xqerl_lib:escape_uri([H])) ++ pct_encode3(T).

decode_string(<<>>) ->
    <<>>;
decode_string(Bin) when is_binary(Bin) ->
    Str = [C || <<C/utf8>> <= Bin],
    unicode:characters_to_binary(decode_string(Str));
decode_string(Str) when is_list(Str) ->
    decode_string(Str, []).

decode_string([], Acc) ->
    lists:reverse(Acc);
decode_string("&apos;" ++ T, Acc) ->
    decode_string(T, [$' | Acc]);
decode_string("&quot;" ++ T, Acc) ->
    decode_string(T, [$" | Acc]);
decode_string("&amp;" ++ T, Acc) ->
    decode_string(T, [$& | Acc]);
decode_string("&gt;" ++ T, Acc) ->
    decode_string(T, [$> | Acc]);
decode_string("&lt;" ++ T, Acc) ->
    decode_string(T, [$< | Acc]);
decode_string("&#x" ++ T, Acc) ->
    {CP, T1} = scan_hex_char_ref(T, []),
    decode_string(T1, [CP | Acc]);
decode_string("&#" ++ T, Acc) ->
    {CP, T1} = scan_dec_char_ref(T, []),
    decode_string(T1, [CP | Acc]);
decode_string([H | T], Acc) ->
    decode_string(T, [H | Acc]).

scan_dec_char_ref([H | T], Acc) when H >= $0, H =< $9 ->
    scan_dec_char_ref(T, [H | Acc]);
scan_dec_char_ref([H | T], Acc) when H == $; ->
    {list_to_integer(lists:reverse(Acc)), T}.

scan_hex_char_ref([H | T], Acc) when H >= $0, H =< $9 ->
    scan_hex_char_ref(T, [H | Acc]);
scan_hex_char_ref([H | T], Acc) when H >= $a, H =< $f ->
    scan_hex_char_ref(T, [H | Acc]);
scan_hex_char_ref([H | T], Acc) when H >= $A, H =< $F ->
    scan_hex_char_ref(T, [H | Acc]);
scan_hex_char_ref([H | T], Acc) when H == $; ->
    Hex = lists:reverse(Acc),
    {list_to_integer(Hex, 16), T}.

-spec resolve_against_base_uri(
    binary(),
    binary()
) -> binary() | {error, _}.
resolve_against_base_uri(BaseUri, RefUri) ->
    case xqldb_lib:join_uris(BaseUri, RefUri) of
        Base when is_binary(Base) ->
            check_uri_string(Base);
        Base ->
            Base
    end.

-define(ISHEX(H), H >= $0, H =< $9; H >= $A, H =< $F; H >= $a, H =< $f).

-spec check_uri_string(binary()) -> binary() | {error, _}.
check_uri_string(Uri) ->
    Trim = trim(Uri),
    case colon_first(Trim) of
        true ->
            {error, invalid_uri};
        false ->
            check_uri_string(Trim, <<>>)
    end.

check_uri_string(<<$%, H1, H2, T/binary>>, Acc) when ?ISHEX(H1) ->
    if
        ?ISHEX(H2) ->
            check_uri_string(T, <<Acc/binary, $%, H1, H2>>);
        true ->
            {error, [H1, H2]}
    end;
check_uri_string(<<C, _/binary>>, _Acc) when C == $% ->
    %; C == $]->
    {error, invalid_uri};
%% check_uri_string(<<$[,Rest/binary>>, Acc) ->
%%    ipv6(Rest,8,<<Acc/binary,$[>>);
check_uri_string(<<32, C/utf8, T/binary>>, Acc) when ?WS(C) ->
    check_uri_string(<<32, T/binary>>, Acc);
check_uri_string(<<"&#xD;", T/binary>>, Acc) ->
    check_uri_string(<<32, T/binary>>, Acc);
check_uri_string(<<"&#xA;", T/binary>>, Acc) ->
    check_uri_string(<<32, T/binary>>, Acc);
check_uri_string(<<"&#x9;", T/binary>>, Acc) ->
    check_uri_string(<<32, T/binary>>, Acc);
check_uri_string(<<C/utf8, T/binary>>, Acc) when ?NSWS(C) ->
    check_uri_string(<<32, T/binary>>, Acc);
check_uri_string(<<C/utf8, T/binary>>, Acc) ->
    check_uri_string(T, <<Acc/binary, C/utf8>>);
check_uri_string(<<>>, Acc) ->
    Acc.

%% ipv6(<<A,B,C,D,$],Rest/binary>>,1,Acc) ->
%%    Pred = fun(V) when ?ISHEX(V) -> true;
%%              (_) -> false
%%           end,
%%    IsHex = lists:all(Pred, [A,B,C,D]),
%%    if IsHex ->
%%          check_uri_string(Rest,<<Acc/binary,A,B,C,D,$]>>);
%%       true ->
%%          {error, invalid_uri}
%%    end;
%% ipv6(<<A,B,C,D,$:,Rest/binary>>,L,Acc) ->
%%    Pred = fun(V) when ?ISHEX(V) -> true;
%%              (_) -> false
%%           end,
%%    IsHex = lists:all(Pred, [A,B,C,D]),
%%    if IsHex ->
%%          ipv6(Rest,L - 1,<<Acc/binary,A,B,C,D,$:>>);
%%       true ->
%%          {error, invalid_uri}
%%    end;
%% ipv6(_,_,_) -> {error, invalid_uri}.

colon_first(<<$:, _/binary>>) -> true;
colon_first(_) -> false.

-spec is_absolute_uri(binary()) -> boolean().
is_absolute_uri(<<C/utf8, T/binary>>) when
    C >= $a, C =< $z; C >= $A, C =< $Z; C >= $0, C =< $9; C == $-; C == $.
->
    is_absolute_uri(T);
is_absolute_uri(<<":/", _/binary>>) ->
    true;
is_absolute_uri(_) ->
    false.

-spec is_valid_name(binary()) -> boolean().
is_valid_name(<<>>) ->
    false;
is_valid_name(<<H/utf8>>) ->
    is_xsname_start_char(H);
is_valid_name(<<H/utf8, T/binary>>) ->
    is_xsname_start_char(H) andalso
        is_valid_token(T).

-spec is_valid_token(binary()) -> boolean().
is_valid_token(<<>>) ->
    false;
is_valid_token(Token) ->
    F = fun(C) ->
        is_xsname_char(C) == false
    end,
    lists:any(F, [C || <<C/utf8>> <= Token]) == false.

-spec is_valid_tokens(binary()) -> boolean().
is_valid_tokens(<<>>) ->
    false;
is_valid_tokens(Token) ->
    [
        C
        || <<C/utf8>> <= Token,
           C =/= 32,
           is_xsname_char(C) == false
    ] == [].

format_stacktrace(#xqError{additional = L} = E) ->
    E#xqError{additional = simplify_stack(L)};
format_stacktrace(L) ->
    format_stacktrace_(L).

format_stacktrace_([]) ->
    [];
format_stacktrace_([{Mod, Fun, Ary, [{file, File}, {line, Ln}]} | T]) when is_integer(Ary) ->
    ModB = atom_to_binary(Mod, utf8),
    FunB = atom_to_binary(Fun, utf8),
    AryB = integer_to_binary(Ary),
    FileB = list_to_binary(filename:basename(File)),
    LnB = integer_to_binary(Ln),
    Out = <<FileB/binary, "(", LnB/binary, ") ", ModB/binary, ":", FunB/binary, "/", AryB/binary>>,
    [Out | format_stacktrace_(T)];
format_stacktrace_([H | T]) ->
    [H | format_stacktrace_(T)].

simplify_stack(L) ->
    simplify_stack(L, []).

simplify_stack([{File, Line}, {File, Line} | T], Acc) ->
    simplify_stack([{File, Line} | T], Acc);
simplify_stack([H | T], Acc) ->
    simplify_stack(T, [H | Acc]);
simplify_stack([], Acc) ->
    Acc.

%% shrink_spaces([H|T]) ->
%%    [H|shrink_spaces(T)].
%%

%% resolve_against_base_uri(Base,[]) ->
%%    Base;
%% resolve_against_base_uri("xqerl_main",RelPath) ->
%%    resolve_against_base_uri("file:///",RelPath);
%% resolve_against_base_uri(Base,RelPath0) ->
%%    ok = check_bad_percent(RelPath0),
%%    RelPath = ensure_schema(RelPath0),
%%    %?dbg("RelPath",RelPath),
%%    Opts = [{scheme_defaults,
%%             [{file,1},{urn,2}|http_uri:scheme_defaults()]},{fragment,true}],
%%    case http_uri:parse(RelPath,Opts) of
%%       % not absolute
%%       {error,_} ->
%%          NonHeir = lists:member($:, RelPath),
%%          if NonHeir , RelPath == ":" ->
%%                {error,malformed};
%%             NonHeir ->
%%                RelPath;
%%             true ->
%%                %?dbg("Base",Base),
%%                %?dbg("RelPath",RelPath),
%%                % leading slash on relative does not mean root
%%                RelPath1 = if hd(RelPath) == $/ ->
%%                                 tl(RelPath);
%%                              true ->
%%                                 RelPath
%%                           end,
%%                % fragments allowed on base
%%                {ok, Parsed} = http_uri:parse(Base,Opts),
%%                %?dbg("RelPath1",RelPath1),
%%                %?dbg("Parsed",Parsed),
%%                parsed_to_path(RelPath1,Parsed)
%%          end;
%%       {ok,{_,_,_,_,"/",_,[]}} ->
%%          %?dbg("RelPath",RelPath),
%%          RelPath;
%%       {ok,{_,_,_,_,_,Q,[]} = P} ->
%%          %?dbg("P",P),
%%          parsed_to_path([],P) ++ Q;
%%       _ ->
%%          % relative with fragment
%%          ?err('FORG0002')
%%    end.

lnew() ->
    %%    catch ets:delete(local_data),
    %%    _ = ets:new(local_data, [set, private, named_table]),
    ok.

lget(Key) ->
    erlang:get(Key).

lget(Tab, Key) ->
    case ets:lookup(Tab, Key) of
        [{_, Val}] ->
            Val;
        _ ->
            undefined
    end.

%% put this value in the process dictionary and return Val
lput(Key, Val) ->
    %?dbg("Putting: ",{Key,Val}),
    %ets:insert(local_data, {Key, Val}),
    _ = erlang:put(Key, Val),
    Val.

%% put this value in an ETS table and return Val
lput(Tab, Key, Val) ->
    ets:insert(Tab, {Key, Val}),
    Val.

%% creates a new namespace prefix
next_comp_prefix(Namespaces) when is_map(Namespaces) ->
    next_comp_prefix(
        [
            #xqNamespace{namespace = N, prefix = P}
            || {P, N} <- maps:to_list(Namespaces)
        ]
    );
next_comp_prefix(Namespaces) ->
    Pxs = [P || #xqNamespace{prefix = P} <- Namespaces],
    F = fun
        ("ns_" ++ SNum, Max) ->
            case catch list_to_integer(SNum) of
                Int when is_integer(Int) ->
                    erlang:max(Max, Int);
                _ ->
                    Max
            end;
        (_, Max) ->
            Max
    end,
    Last = lists:foldl(F, 0, Pxs),
    list_to_binary("ns_" ++ integer_to_list(Last + 1)).

% use a queue to map a function to a list in parallel with limited processes
pmap(Fun, List, MaxProc) ->
    padd(queue:new(), Fun, List, MaxProc, queue:new()).

padd(Qin, F, [], M, Qout) ->
    case queue:out(Qin) of
        {empty, Qin} ->
            queue:to_list(Qout);
        {{value, K}, Q2} ->
            Val = yield(K),
            padd(Q2, F, [], M, queue:in(Val, Qout))
    end;
padd(Qin, Fun, [H | T], MaxProc, Qout) ->
    case MaxProc > queue:len(Qin) of
        true ->
            Pid = async_single_call(Fun, H),
            Q1 = queue:in(Pid, Qin),
            padd(Q1, Fun, T, MaxProc, Qout);
        false ->
            case queue:out(Qin) of
                {empty, Qin} ->
                    ok;
                {{value, K}, Q2} ->
                    Val = yield(K),
                    padd(Q2, Fun, [H | T], MaxProc, queue:in(Val, Qout))
            end
    end.

-spec yield(Key) -> Res when
    Key :: pid(),
    Res :: term().
yield(Key) when is_pid(Key) ->
    {value, R} = do_yield(Key, 1000),
    R.

-spec do_yield(pid(), timeout()) -> {'value', _} | 'timeout'.
do_yield(Key, Timeout) ->
    receive
        {Key, {reply, R}} ->
            {value, R}
    after Timeout -> timeout
    end.

async_single_call(Fun, Arg) when is_function(Fun, 1) ->
    ReplyTo = self(),
    spawn_link(fun() ->
        R = (catch Fun(Arg)),
        ReplyTo ! {self(), {reply, R}}
    end).

%% Attempts to retrieve a file or http resource
-spec get_remote_resource(Uri :: binary(), xml | binary | text) -> binary().
get_remote_resource(<<"file:", _/binary>> = FileUri, xml) ->
    xqldb_mem_nodes:parse_file(FileUri);
get_remote_resource(<<"file:", _/binary>> = FileUri, Type) ->
    Filename = xqldb_lib:uri_to_filename(FileUri),
    {ok, Bin} = file:read_file(Filename),
    case Type of
        binary ->
            #xqAtomicValue{type = 'xs:base64Binary', value = Bin};
        text ->
            Bin
    end;
get_remote_resource(Uri, Type) ->
    {ok, 200, _Headers, ClientRef} = hackney:request(Uri),
    {ok, Body} = hackney:body(ClientRef),
    case Type of
        xml ->
            xqldb_mem_nodes:parse_binary(Body, {Uri, Uri});
        binary ->
            #xqAtomicValue{type = 'xs:base64Binary', value = Body};
        text ->
            Body
    end.

get_environment_variable(#{tab := Tab} = Ctx, Name) ->
    Key = environment_variables,
    case ets:lookup(Tab, Key) of
        [{_, Vars}] ->
            maps:get(Name, Vars, []);
        [] ->
            ok = set_environment_variables(Ctx),
            get_environment_variable(Ctx, Name)
    end.

get_environment_variable_names(#{tab := Tab} = Ctx) ->
    Key = environment_variables,
    case ets:lookup(Tab, Key) of
        [{_, Vars}] ->
            maps:keys(Vars);
        [] ->
            ok = set_environment_variables(Ctx),
            get_environment_variable_names(Ctx)
    end.

set_environment_variables(#{tab := Tab}) ->
    Key = environment_variables,
    case ets:lookup(Tab, Key) of
        [_] ->
            ok;
        [] ->
            Values = [unicode:characters_to_binary(S) || S <- os:getenv()],
            Values1 = lists:foldl(
                fun(I, A) ->
                    [K, V] = string:split(I, <<"=">>),
                    A#{K => V}
                end,
                #{},
                Values
            ),
            true = ets:insert(Tab, {Key, Values1}),
            ok
    end.
