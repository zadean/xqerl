% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

-module(xqldb_imp_bx).

% Imports BaseX DB files to xqerl.

% -include("xqerl_db.hrl").

-compile(inline).
-compile({inline_size, 100}).
-compile(inline_list_funcs).

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    read_token/1,
    read_tokens/1,
    read_file_token/2,
    read_token_set/1,
    read_number/1,
    read_numbers/1,
    read_diffs/1,
    read_double/1,
    read_boolean/1
]).

-export([
    read_inf/1,
    read_table_index/1,
    read_doc_uris/5,
    read_textual_lookups/3,
    read_textual_index/5,
    read_stats/1
]).

%% ====================================================================
%% Internal functions
%% ====================================================================

% reads the meta data for the importing database
-spec read_meta(Bin :: binary()) -> {map(), Rest :: binary()}.
read_meta(Bin) ->
    {Meta, Rest} = read_meta(Bin, []),
    {meta_values(Meta), Rest}.

read_meta(Bin, Map) ->
    case read_token(Bin) of
        {<<>>, Rest} ->
            {Map, Rest};
        {Key, Rest} ->
            {Value, Rest1} = read_token(Rest),
            read_meta(Rest1, [{Key, Value} | Map])
    end.

read_inf(Bin) ->
    {MetaMap, Rest} = read_meta(Bin),
    read_inf_tags(Rest, #{meta => MetaMap}).

read_inf_tags(Bin, #{meta := #{up_to_date := UpToDate}} = Map) ->
    case read_token(Bin) of
        {<<>>, R} ->
            {Map, R};
        {<<"TAGS">>, Rest} ->
            % get element names
            % Names(in)
            {M, Rest2} = read_names(Rest),
            read_inf_tags(Rest2, Map#{names => M});
        {<<"ATTS">>, Rest} ->
            % get attribute names
            {M, Rest2} = read_names(Rest),
            read_inf_tags(Rest2, Map#{atts => M});
        % TODO ignore and rebuild, no namespaces in it
        {<<"PATH">>, Rest} ->
            % get paths
            {Paths, Rest1} = read_path_index(Rest, UpToDate),
            read_inf_tags(Rest1, Map#{path => Paths});
        {<<"NS">>, Rest} ->
            % get namespaces
            {Tags, Rest1} = read_namespaces(Rest),
            read_inf_tags(Rest1, Map#{ns => Tags});
        {<<"DOCS">>, Rest} ->
            % get documents
            {Diffs, Rest1} = read_diffs(Rest),
            read_inf_tags(Rest1, Map#{docs => Diffs})
    end.

% counts can be off if the DB is not up-to-date
%% -spec read_names(Bin::binary()) ->
%%    {[name_rec()], Rest::binary()}.
read_names(Bin) ->
    {#{keys := Keys, size := Size}, Rest1} = read_token_set(Bin),
    F = fun
        (_, {0, A, B}) ->
            {1, A, B};
        (K, {C, A, B}) when C =< Size ->
            {#{count := Cnt}, R} = read_stats(B),
            N = split_name(K),
            {C + 1, [{C, N}, {N, Cnt, C} | A], R};
        (_, {C, A, B}) ->
            {C + 1, A, B}
    end,
    {_, NewKeys, Rest2} = lists:foldl(F, {0, [], Rest1}, Keys),
    {NewKeys, Rest2}.

-spec read_namespaces(Bin :: binary()) ->
    {
        #{
            prefixes => [{non_neg_integer(), binary()}],
            uris => [{non_neg_integer(), binary()}],
            index => [term()]
        },
        Rest :: binary()
    }.
% TODO similar iterator as gb_trees
read_namespaces(Bin) ->
    {Prefixes, Rest1} = read_token_set(Bin),
    {Uris, Rest2} = read_token_set(Rest1),
    {_Pre, Rest3} = read_number(Rest2),
    {_Values, Rest4} = read_numbers(Rest3),
    {Size, Rest5} = read_number(Rest4),
    {Sub, Rest6} = read_namespaces(Rest5, Size, []),
    Node = #{
        prefixes => token_set_to_pos_list(Prefixes),
        uris => token_set_to_pos_list(Uris),
        index => Sub
    },
    {Node, Rest6}.

read_namespaces(Bin, 0, Acc) ->
    {lists:reverse(Acc), Bin};
read_namespaces(Bin, Cnt, Acc) ->
    {Pre, Rest3} = read_number(Bin),
    {Values, Rest4} = read_numbers(Rest3),
    {Size, Rest5} = read_number(Rest4),
    {Sub, Rest6} = read_namespaces(Rest5, Size, []),
    Node =
        if
            Size == 0 ->
                {Pre, split_int_list(Values)};
            true ->
                {Pre, split_int_list(Values), Sub}
        end,
    read_namespaces(Rest6, Cnt - 1, [Node | Acc]).

read_path_index(Bin, UpToDate) ->
    % root always true for disk data
    {true, Rest} = read_boolean(Bin),
    read_path_node(Rest, UpToDate).

read_path_node(Bin, false) ->
    {_Name, <<_Kind:8, Rest1/binary>>} = read_number(Bin),
    % nibble one
    {_, Rest2} = read_number(Rest1),
    {ChildCount, Rest3} = read_number(Rest2),
    % nibble one
    {_, Rest4} = read_double(Rest3),
    {_Stats, Rest5} = read_stats(Rest4),
    {_Children, Rest6} = read_path_node(Rest5, ChildCount, []),
    {rebuild, Rest6};
read_path_node(Bin, true) ->
    {Name, <<Kind0:8, Rest1/binary>>} = read_number(Bin),
    Kind = get_kind_name(Kind0),
    % nibble one
    {_, Rest2} = read_number(Rest1),
    {ChildCount, Rest3} = read_number(Rest2),
    % nibble one
    {_, Rest4} = read_double(Rest3),
    {Stats, Rest5} = read_stats(Rest4),
    {Children, Rest6} = read_path_node(Rest5, ChildCount, []),
    % element
    Node =
        if
            Kind == element, ChildCount > 0 ->
                (path_stats(Stats))#{
                    name => Name,
                    kind => Kind,
                    children => Children
                };
            % element
            Kind == element ->
                (path_stats(Stats))#{
                    name => Name,
                    kind => Kind
                };
            % document
            Kind == document ->
                (path_stats(Stats))#{
                    kind => Kind,
                    children => Children
                };
            Kind == text;
            % text/comment
            Kind == comment ->
                (path_stats(Stats))#{kind => Kind};
            % attribute/pi
            true ->
                (path_stats(Stats))#{name => Name, kind => Kind}
        end,
    {Node, Rest6}.

read_path_node(Bin, 0, Acc) ->
    {lists:reverse(Acc), Bin};
read_path_node(Bin, Count, Acc) ->
    {Name, <<Kind0:8, Rest1/binary>>} = read_number(Bin),
    Kind = get_kind_name(Kind0),
    % nibble one
    {_, Rest2} = read_number(Rest1),
    {ChildCount, Rest3} = read_number(Rest2),
    % nibble one
    {_, Rest4} = read_double(Rest3),
    {Stats, Rest5} = read_stats(Rest4),
    {Children, Rest6} = read_path_node(Rest5, ChildCount, []),
    % element
    Node =
        if
            Kind == element, ChildCount > 0 ->
                (path_stats(Stats))#{
                    name => Name,
                    kind => Kind,
                    children => Children
                };
            % element
            Kind == element ->
                (path_stats(Stats))#{
                    name => Name,
                    kind => Kind
                };
            % document
            Kind == document ->
                (path_stats(Stats))#{
                    kind => Kind,
                    children => Children
                };
            Kind == text;
            % text/comment
            Kind == comment ->
                (path_stats(Stats))#{kind => Kind};
            % attribute/pi
            true ->
                (path_stats(Stats))#{name => Name, kind => Kind}
        end,
    read_path_node(Rest6, Count - 1, [Node | Acc]).

path_stats(Map) ->
    maps:without([keys, size], Map).

read_table_index(BinF) ->
    Bin = BinF(),
    {Size, Rest} = read_number(Bin),
    {Used, Rest1} = read_number(Rest),
    Regular = Used == 0 orelse Used == 2147483647,
    {Map, Rest2} =
        if
            Regular ->
                Used2 =
                    if
                        Used == 0 ->
                            0;
                        true ->
                            Size
                    end,
                {
                    #{
                        size => Size,
                        used => Used2
                    },
                    Rest1
                };
            true ->
                {Fpres, Rest3} = read_numbers(Rest1),
                {Pages, Rest4} = read_numbers(Rest3),
                {
                    #{
                        size => Size,
                        used => Used,
                        fpres => Fpres,
                        pages => Pages
                    },
                    Rest4
                }
        end,
    {Map2, _Rest7} =
        if
            Regular ->
                {Map, Rest2};
            true ->
                {Psize, Rest5} = read_number(Rest2),
                {Longs, Rest6} = read_longs(Rest5, Psize, []),
                % bits are reversed
                Longs2 = <<<<L:64/integer>> || L <- Longs>>,
                {Map#{used_pages => reverse_bits(Longs2)}, Rest6}
        end,
    normalize_table_pages(Map2).

read_textual_index(TblF, TxtF, TxtLu, Pid, Action) ->
    Split =
        case length(TxtLu) of
            L when L > 1000000 ->
                L div 50;
            L when L > 100000 ->
                L div 40;
            L when L > 10000 ->
                L div 30;
            L when L > 5000 ->
                L div 5;
            _ ->
                0
        end,

    DF = fun(List, Pid2) ->
        Tbl = TblF(),
        Txt = TxtF(),
        PosLens = [{hd(T) * 16, 16} || T <- List],
        {ok, Nodes} = file:pread(Tbl, PosLens),
        TxtLocs = [get_text_pointer(Node) || Node <- Nodes],
        UnPack = fun
            ({not_inline, compressed, <<P:38/integer>>}) ->
                CT = read_file_token(Txt, P),
                unpack_text(CT);
            ({not_inline, uncompressed, <<P:38/integer>>}) ->
                read_file_token(Txt, P);
            ({integer, Int}) ->
                Int;
            ({string, Str}) ->
                Str
        end,
        Toks = [UnPack(L) || L <- TxtLocs],
        Zip = fun(A, B) ->
            Action({0, A, B})
        end,
        _ = lists:zipwith(Zip, Toks, List),
        Pid2 ! {self(), ok},
        file:close(Tbl),
        file:close(Txt)
    end,
    _ = pforeach(DF, TxtLu, Split),
    Pid ! {self(), ok}.

read_textual_lookups(<<Val:40/integer, Rest/binary>>, BinL, Pid) ->
    <<_:Val/bytes, Bin/binary>> = BinL,
    {PreList, _} = read_diffs(Bin),
    [PreList | read_textual_lookups(Rest, BinL, Pid)];
read_textual_lookups(<<>>, _, _) ->
    [];
read_textual_lookups(FR, FL, Pid) ->
    Ret = read_textual_lookups(FR(), FL(), Pid),
    Pid ! {self(), Ret}.

read_doc_uris(PathF, Tbl, Txt, DocOffs, Pid) ->
    % file may not exist, if not, create what it would have had
    try PathF() of
        Paths ->
            {Toks, _} = read_tokens(Paths),
            Pid ! {self(), lists:zip(Toks, DocOffs)}
    catch
        _:_ ->
            %Tbl = TblF(),
            %Txt = TxtF(),
            PosOff = [{D * 16, 16} || D <- DocOffs],
            {ok, Nodes} = file:pread(Tbl, PosOff),
            RawTxtLoc = lists:map(fun get_text_pointer/1, Nodes),
            ToGetPos = [P || {not_inline, _, <<P:38/integer>>} <- RawTxtLoc],
            Toks = [
                read_file_token(Txt, P)
             || P <- ToGetPos
            ],
            Filled = fill_uri_values(RawTxtLoc, Toks),
            Zipped = lists:zip(Filled, DocOffs),
            Pid ! {self(), Zipped}
    end.

fill_uri_values([{string, String} | T], Txts) ->
    [<<$/, String/binary>> | fill_uri_values(T, Txts)];
fill_uri_values([{not_inline, uncompressed, _} | T], [H | Txts]) ->
    [<<$/, H/binary>> | fill_uri_values(T, Txts)];
fill_uri_values([{not_inline, compressed, _} | T], [H | Txts]) ->
    [<<$/, (unpack_text(H))/binary>> | fill_uri_values(T, Txts)];
fill_uri_values([], _) ->
    [].

get_text_pointer(<<_:5, Kind:3, _:16, Text:5/binary, _:64/binary>>) when
    Kind == 2; Kind == 4; Kind == 5
->
    get_text(Text);
get_text_pointer(<<_:3/binary, Text:5/binary, _:8/binary>>) ->
    get_text(Text).

% inline uncompressed string
get_text(<<1:1, 0:1, 1:1, _:5, Rest/binary>>) ->
    {string, <<<<C>> || <<C>> <= Rest, C =/= 0>>};
% inline integer
get_text(<<1:1, 0:7, Rest:32/integer>>) ->
    {integer, Rest};
% inline compressed string
get_text(<<1:1, 1:1, 1:1, L:5, Rest/binary>>) ->
    {string, unpack_text(<<0:3, L:5, Rest/binary>>)};
% not inline uncompressed string
get_text(<<0:1, 0:1, Rest/bitstring>>) ->
    {not_inline, uncompressed, Rest};
% not inline compressed string
get_text(<<0:1, 1:1, Rest/bitstring>>) ->
    {not_inline, compressed, Rest}.

reverse_bits(Bin) ->
    <<
        <<B8:1, B7:1, B6:1, B5:1, B4:1, B3:1, B2:1, B1:1>>
     || <<B1:1, B2:1, B3:1, B4:1, B5:1, B6:1, B7:1, B8:1>> <= Bin
    >>.

pforeach(Fun, List, Split) ->
    pforeach(Fun, List, Split, []).

pforeach(_, [], _, []) ->
    ok;
pforeach(Fun, [], 0, [H | Pids]) ->
    receive
        {H, ok} ->
            pforeach(Fun, [], 0, Pids);
        {H, _} ->
            error
    end;
pforeach(Fun, List, Split, Pids) when Split > 0, length(List) > Split ->
    {H, T} = lists:split(Split, List),
    Self = self(),
    F = fun() -> Fun(H, Self) end,
    P = spawn_link(F),
    pforeach(Fun, T, Split, [P | Pids]),
    ok;
pforeach(Fun, List, _, Pids) ->
    _ = Fun(List, self()),
    pforeach(Fun, [], 0, Pids).

normalize_table_pages(#{
    used_pages := Used,
    fpres := FPres
}) ->
    % sorted to get all in pre order not page order
    lists:sort(normalize_table_pages(Used, FPres, 0));
normalize_table_pages(_) ->
    [{0, 0}].

normalize_table_pages(<<1:1, Rest/bitstring>>, [H | T], P) ->
    [{H, P} | normalize_table_pages(Rest, T, P + 1)];
normalize_table_pages(<<0:1, Rest/bitstring>>, [_ | T], P) ->
    normalize_table_pages(Rest, T, P + 1);
normalize_table_pages(_, [], _) ->
    [];
normalize_table_pages(<<>>, _, _) ->
    [].

read_longs(Rest, 0, Acc) ->
    {lists:reverse(Acc), Rest};
read_longs(<<Long:64/integer-little, Rest/binary>>, Cnt, Acc) ->
    read_longs(Rest, Cnt - 1, [Long | Acc]).

split_int_list([A, B | T]) ->
    [{A, B} | split_int_list(T)];
split_int_list([]) ->
    [].

token_set_to_pos_list(#{keys := Ks, size := S}) ->
    Sub = lists:sublist(Ks, S + 1),
    list_to_pos_list(tl(Sub), 1).

list_to_pos_list([H | T], C) ->
    [{C, H} | list_to_pos_list(T, C + 1)];
list_to_pos_list([], _) ->
    [].

% try to limit pread calls
-define(READ_AHEAD, 64).

read_file_token(Fd, Pos) ->
    case file:pread(Fd, Pos, ?READ_AHEAD) of
        {ok, <<0:1, 0:1, B:6, Tok:B/binary, _/binary>>} ->
            Tok;
        {ok, <<0:1, _:1, B:14, Tok:B/binary, _/binary>>} ->
            Tok;
        {ok, <<0:1, _:1, B:14, R/binary>>} ->
            {ok, Tok} = file:pread(Fd, Pos + ?READ_AHEAD, B - (?READ_AHEAD - 2)),
            <<R/binary, Tok/binary>>;
        {ok, <<_:1, 0:1, B:30, Tok:B/binary, _/binary>>} ->
            Tok;
        {ok, <<_:1, 0:1, B:30, R/binary>>} ->
            {ok, Tok} = file:pread(Fd, Pos + ?READ_AHEAD, B - (?READ_AHEAD - 3)),
            <<R/binary, Tok/binary>>;
        {ok, <<_, B:32/integer, Tok:B/binary, _/binary>>} ->
            Tok;
        {ok, <<_, B:32/integer, R/binary>>} ->
            {ok, Tok} = file:pread(Fd, Pos + ?READ_AHEAD, B - (?READ_AHEAD - 4)),
            <<R/binary, Tok/binary>>
    end.

read_token_set(Bin) ->
    {Keys, Rest1} = read_tokens(Bin),
    {_Next, Rest2} = read_numbers(Rest1),
    {_Buckets, Rest3} = read_numbers(Rest2),
    {Size, Rest4} = read_number(Rest3),
    {
        #{
            keys => Keys,
            %next => Next,
            %buckets => Buckets,
            size => Size - 1
        },
        Rest4
    }.

read_stats(Bin) ->
    {Num, Rest} = read_number(Bin),
    Type = Num band 16#F,
    IsInt = is_integer_type(Type),
    IsNum = IsInt orelse is_double_type(Type),
    IsCat = is_category_type(Type),
    {Map, Rest1} =
        if
            IsNum ->
                {Min, Rest2} = read_double(Rest),
                {Max, Rest3} = read_double(Rest2),
                if
                    IsInt ->
                        {
                            #{
                                min => erlang:trunc(Min),
                                max => erlang:trunc(Max)
                            },
                            Rest3
                        };
                    true ->
                        {
                            #{
                                min => Min,
                                max => Max
                            },
                            Rest3
                        }
                end;
            true ->
                {#{}, Rest}
        end,
    {Map2, Rest4} =
        if
            IsCat ->
                {Values, Rest5} = read_token_int_map(Rest1),
                {maps:merge(Map, Values), Rest5};
            true ->
                {Map, Rest1}
        end,
    {Count, Rest6} = read_number(Rest4),
    {Leaf, Rest7} = read_boolean(Rest6),
    {_, Rest8} = read_double(Rest7),
    {
        Map2#{
            count => Count,
            leaf => Leaf,
            type => get_type_name(Type)
        },
        Rest8
    }.

read_token_int_map(Bin) ->
    {Map, Rest} = read_token_set(Bin),
    {Values, Rest2} = read_numbers(Rest),
    {add_counts_to_keys(Map, Values), Rest2}.

add_counts_to_keys(#{keys := Keys} = Map, Counts) ->
    List = add_counts_to_keys(Keys, Counts),
    Map#{keys := List};
add_counts_to_keys([], _) ->
    [];
add_counts_to_keys([_ | Ks], [0 | Cs]) ->
    add_counts_to_keys(Ks, Cs);
add_counts_to_keys([K | Ks], [C | Cs]) ->
    [{K, C} | add_counts_to_keys(Ks, Cs)].

read_numbers(Bin) ->
    {Num, Rest} = read_number(Bin),
    read_numbers(Rest, Num, []).

read_numbers(Bin, 0, Acc) ->
    {lists:reverse(Acc), Bin};
read_numbers(Bin, Cnt, Acc) ->
    {Num, Rest} = read_number(Bin),
    read_numbers(Rest, Cnt - 1, [Num | Acc]).

read_tokens(Bin) ->
    {Num, Rest} = read_number(Bin),
    %?i({"reading",Num,Bin}),
    read_tokens(Rest, Num, []).

read_tokens(Bin, 0, Acc) ->
    {lists:reverse(Acc), Bin};
read_tokens(Bin, Cnt, Acc) ->
    {Token, Rest} = read_token(Bin),
    read_tokens(Rest, Cnt - 1, [Token | Acc]).

read_number(<<0:1, 0:1, B:6, Rest/binary>>) -> {B, Rest};
read_number(<<0:1, _:1, B:14, Rest/binary>>) -> {B, Rest};
read_number(<<_:1, 0:1, B:30, Rest/binary>>) -> {B, Rest};
read_number(<<_, B:32/integer, Rest/binary>>) -> {B, Rest};
read_number(<<>>) -> {0, <<>>}.

read_number_l(Pos, Bin) ->
    case Bin of
        <<_:Pos/binary, 0:1, 0:1, B:6, _/binary>> -> {1, B};
        <<_:Pos/binary, 0:1, _:1, B:14, _/binary>> -> {2, B};
        <<_:Pos/binary, _:1, 0:1, B:30, _/binary>> -> {4, B};
        <<_:Pos/binary, _, B:32/integer, _/binary>> -> {5, B}
    end.

read_diffs(Bin) ->
    {Size, Rest1} = read_number(Bin),
    read_diffs(Rest1, Size, 0, 0, []).

read_diffs(Bin, 0, _, _, Acc) ->
    {lists:reverse(Acc), Bin};
read_diffs(Bin, Cnt, Last, Pos, Acc) ->
    {L, Num} = read_number_l(Pos, Bin),
    Next = Num + Last,
    read_diffs(Bin, Cnt - 1, Next, Pos + L, [Next | Acc]).

read_token(Bin) ->
    {Length, Rest} = read_number(Bin),
    <<Token:Length/bytes, Rest1/binary>> = Rest,
    {Token, Rest1}.

read_boolean(<<1, Rest/binary>>) -> {true, Rest};
read_boolean(<<_, Rest/binary>>) -> {false, Rest}.

read_double(Bin) ->
    {Token, Rest} = read_token(Bin),
    try binary_to_integer(Token) of
        F ->
            {erlang:float(F), Rest}
    catch
        _:_ ->
            try binary_to_float(Token) of
                F ->
                    {F, Rest}
            catch
                _:_ ->
                    %?i({"Token",Token}),
                    {nan, Rest}
            end
    end.

%is_string_type(T) -> T == 0.
is_integer_type(T) -> T == 2 orelse T == 5.

is_double_type(T) -> T == 3 orelse T == 6.

%is_none_type(T) -> T == 4.
is_category_type(T) -> T == 5 orelse T == 6 orelse T == 1.

%is_numeric_type(T) ->
%   is_integer_type(T) orelse is_double_type(T).

get_type_name(0) -> string;
get_type_name(1) -> strings;
get_type_name(2) -> integer;
get_type_name(3) -> double;
get_type_name(4) -> empty;
get_type_name(5) -> integers;
get_type_name(6) -> doubles.

get_kind_name(0) -> document;
get_kind_name(1) -> element;
get_kind_name(2) -> text;
get_kind_name(3) -> attribute;
get_kind_name(4) -> comment;
get_kind_name(5) -> pi.

split_name(Bin) ->
    split_name(Bin, <<>>).

split_name(<<$:, Rest/binary>>, Acc) ->
    {Rest, Acc};
split_name(<<C, Rest/binary>>, Acc) ->
    split_name(Rest, <<Acc/binary, C>>);
split_name(<<>>, Acc) ->
    {Acc, <<>>}.

meta_values(Map) -> meta_values(Map, #{}).

meta_values([{<<"STORAGE">>, V} | T], Map) ->
    meta_values(T, Map#{storage => V});
% 8.6
meta_values([{<<"ISTORAGE">>, V} | T], Map) ->
    meta_values(T, Map#{version => V});
meta_values([{<<"FNAME">>, V} | T], Map) ->
    meta_values(T, Map#{original => V});
meta_values([{<<"FTSTOP">>, V} | T], Map) ->
    meta_values(T, Map#{fulltext_stopwords => V});
meta_values([{<<"FTLANG">>, V} | T], Map) ->
    meta_values(T, Map#{fulltext_language => V});
meta_values([{<<"SIZE">>, V} | T], Map) ->
    meta_values(T, Map#{node_count => binary_to_integer(V)});
meta_values([{<<"NDOCS">>, V} | T], Map) ->
    meta_values(T, Map#{document_count => binary_to_integer(V)});
meta_values([{<<"MAXLEN">>, V} | T], Map) ->
    meta_values(T, Map#{max_index_val_length => binary_to_integer(V)});
meta_values([{<<"MAXCATS">>, V} | T], Map) ->
    meta_values(T, Map#{max_index_vals => binary_to_integer(V)});
meta_values([{<<"LASTID">>, V} | T], Map) ->
    meta_values(T, Map#{last_id => binary_to_integer(V)});
meta_values([{<<"TIME">>, V} | T], Map) ->
    meta_values(T, Map#{
        created_time => erlang:convert_time_unit(binary_to_integer(V), millisecond, native)
    });
meta_values([{<<"FSIZE">>, V} | T], Map) ->
    meta_values(T, Map#{file_size => binary_to_integer(V)});
meta_values([{<<"FTDC">>, V} | T], Map) ->
    meta_values(T, Map#{fulltext_diaretics_removal => to_bool(V)});
meta_values([{<<"UPDINDEX">>, V} | T], Map) ->
    meta_values(T, Map#{auto_update => to_bool(V)});
meta_values([{<<"AUTOOPT">>, V} | T], Map) ->
    meta_values(T, Map#{auto_optimize => to_bool(V)});
meta_values([{<<"TXTINDEX">>, V} | T], Map) ->
    meta_values(T, Map#{text_index => to_bool(V)});
meta_values([{<<"ATVINDEX">>, V} | T], Map) ->
    meta_values(T, Map#{attribute_index => to_bool(V)});
meta_values([{<<"TOKINDEX">>, V} | T], Map) ->
    meta_values(T, Map#{token_index => to_bool(V)});
meta_values([{<<"FTXINDEX">>, V} | T], Map) ->
    meta_values(T, Map#{fulltext_index => to_bool(V)});
meta_values([{<<"TXTINC">>, V} | T], Map) ->
    meta_values(T, Map#{element_names_text_index => V});
meta_values([{<<"ATVINC">>, V} | T], Map) ->
    meta_values(T, Map#{attribute_names_text_index => V});
meta_values([{<<"TOKINC">>, V} | T], Map) ->
    meta_values(T, Map#{attribute_names_token_index => V});
meta_values([{<<"FTXINC">>, V} | T], Map) ->
    meta_values(T, Map#{names_fulltext_index => V});
meta_values([{<<"SPLITS">>, V} | T], Map) ->
    meta_values(T, Map#{index_split_size => binary_to_integer(V)});
meta_values([{<<"CRTTXT">>, V} | T], Map) ->
    meta_values(T, Map#{keep_text_index => to_bool(V)});
meta_values([{<<"CRTATV">>, V} | T], Map) ->
    meta_values(T, Map#{keep_attribute_index => to_bool(V)});
meta_values([{<<"CRTTOK">>, V} | T], Map) ->
    meta_values(T, Map#{keep_token_index => to_bool(V)});
meta_values([{<<"CRTFTX">>, V} | T], Map) ->
    meta_values(T, Map#{keep_fulltext_index => to_bool(V)});
meta_values([{<<"FTSTEM">>, V} | T], Map) ->
    meta_values(T, Map#{fulltext_stemming => to_bool(V)});
meta_values([{<<"FTCS">>, V} | T], Map) ->
    meta_values(T, Map#{fulltext_case_sensitive => to_bool(V)});
meta_values([{<<"UPTODATE">>, V} | T], Map) ->
    meta_values(T, Map#{up_to_date => to_bool(V)});
meta_values([], Map) ->
    Map.

to_bool(<<"1">>) -> true;
to_bool(<<"0">>) -> false.

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   binary table translation stuff
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  * <pre>
%%  * COMMON ATTRIBUTES:
%%  * - Byte     0:  KIND: Node kind (bits: 2-0)
%%  * - Byte 12-15:  UNID: Unique Node ID
%%  * DOCUMENT NODES (kind = 0):
%%  * - Byte  3- 7:  TEXT: Text reference
%%  * - Byte  8-11:  SIZE: Number of descendants
%%  * ELEMENT NODES (kind = 1):
%%  * - Byte     0:  ATTS: Number of attributes (bits: 7-3).
%%  *                      Calculated in real-time if bit range is too small
%%  * - Byte  1- 2:  NAME: Namespace Flag (bit: 15), Name (bits: 14-0)
%%  * - Byte     3:  NURI: Namespace URI
%%  * - Byte  4- 7:  DIST: Distance to parent node
%%  * - Byte  8-11:  SIZE: Number of descendants
%%  * TEXT, COMMENT, PI NODES (kind = 2, 4, 5):
%%  * - Byte  3- 7:  TEXT: Text reference
%%  * - Byte  8-11:  DIST: Distance to parent node
%%  * ATTRIBUTE NODES (kind = 3):
%%  * - Byte     0:  DIST: Distance to parent node (bits: 7-3)
%%  *                      Calculated in real-time if bit range is too small
%%  * - Byte  1- 2:  NAME: Namespace Flag (bit: 15), Name (bits: 14-0)
%%  * - Byte  3- 7:  TEXT: Attribute value reference
%%  * - Byte    11:  NURI: Namespace (bits: 7-3)
%%  * </pre>

%% KIND is identical
%% UNID is recalculated

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   text compression stuff
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-define(V30,
    M = map_value_3(<<V1:1, V2:1, V3:1>>, Fun), unpack_text(R, Rest, Fun, S - 1, <<Acc/binary, M>>)
).

-define(V30n,
    M = map_value_3(V, Fun), unpack_text(R, Rest, Fun, S - 1, <<Acc/binary, M>>)
).

-define(V38,
    M = map_value_4(<<V1:1, V2:1, V3:1>>, Fun), unpack_text(R, Rest, Fun, S - 1, <<Acc/binary, M>>)
).

-define(V38n,
    M = map_value_4(V, Fun), unpack_text(R, Rest, Fun, S - 1, <<Acc/binary, M>>)
).

-define(V416,
    M = map_value_5(<<V1:1, V2:1, V3:1, V4:1>>, Fun),
    unpack_text(R, Rest, Fun, S - 1, <<Acc/binary, M>>)
).

-define(V416n,
    M = map_value_5(V, Fun), unpack_text(R, Rest, Fun, S - 1, <<Acc/binary, M>>)
).

-define(V532,
    M = map_value_6(<<V1:1, V2:1, V3:1, V4:1, V5:1>>, Fun),
    unpack_text(R, Rest, Fun, S - 1, <<Acc/binary, M>>)
).

-define(V532n,
    M = map_value_6(V, Fun), unpack_text(R, Rest, Fun, S - 1, <<Acc/binary, M>>)
).

-define(V8,
    <<V>> = <<V1:1, V2:1, V3:1, V4:1, V5:1, V6:1, V7:1, V8:1>>,
    M = map_value(V, Fun),
    unpack_text(R, Rest, Fun, S - 1, <<Acc/binary, M>>)
).

-define(V8n,
    M = map_value(V, Fun), unpack_text(R, Rest, Fun, S - 1, <<Acc/binary, M>>)
).

unpack_text(<<0:2, S:6/integer, Rest/binary>>) ->
    unpack_text(Rest, S);
unpack_text(<<1:2, S:14/integer, Rest/binary>>) ->
    unpack_text(Rest, S);
unpack_text(<<2:2, S:30/integer, Rest/binary>>) ->
    unpack_text(Rest, S);
unpack_text(<<3:2, _:6, S:32/integer, Rest/binary>>) ->
    unpack_text(Rest, S).

unpack_text(<<E:6/bitstring, 1:1, _:1, Rest/binary>>, S) ->
    unpack_text(<<E:6/bitstring, 0:2>>, Rest, up1, S, <<>>);
unpack_text(<<E:6/bitstring, _:2, Rest/binary>>, S) ->
    unpack_text(<<E:6/bitstring, 0:2>>, Rest, up2, S, <<>>).

% unpacking this is a mess because the big-endian bytes are
% little-endian-ish internally, keep the tail binary in bytes
% bits are organized as:
% [7,6,5,4,3,2,1,0][15,14,13,12,11,10,9,8]
% matching sorted by length of 1st param, then size of match
%
unpack_text(_, _, _, 0, Acc) ->
    Acc;
unpack_text(<<>>, <<R:4/bitstring, V:3/bitstring, 1:1, Rest/binary>>, Fun, S, Acc) ->
    ?V30n;
unpack_text(<<>>, <<R:3/bitstring, V:3/bitstring, 2:2, Rest/binary>>, Fun, S, Acc) ->
    ?V38n;
unpack_text(<<>>, <<R:1/bitstring, V:4/bitstring, 4:3, Rest/binary>>, Fun, S, Acc) ->
    ?V416n;
unpack_text(<<>>, <<V2:1, V3:1, V4:1, V5:1, 8:4, R:7/bitstring, V1:1, Rest/binary>>, Fun, S, Acc) ->
    ?V532;
unpack_text(
    <<>>,
    <<V5:1, V6:1, V7:1, V8:1, 0:4, R:4/bitstring, V1:1, V2:1, V3:1, V4:1, Rest/binary>>,
    Fun,
    S,
    Acc
) ->
    ?V8;
unpack_text(<<1:1>>, <<R:5/bitstring, V:3/bitstring, Rest/binary>>, Fun, S, Acc) ->
    ?V30n;
unpack_text(<<0:1>>, <<R:4/bitstring, V:3/bitstring, 1:1, Rest/binary>>, Fun, S, Acc) ->
    ?V38n;
unpack_text(<<0:1>>, <<R:2/bitstring, V:4/bitstring, 2:2, Rest/binary>>, Fun, S, Acc) ->
    ?V416n;
unpack_text(<<0:1>>, <<V:5/bitstring, 4:3, Rest/binary>>, Fun, S, Acc) ->
    R = <<>>,
    ?V532n;
unpack_text(
    <<0:1>>,
    <<V4:1, V5:1, V6:1, V7:1, V8:1, 0:3, R:5/bitstring, V1:1, V2:1, V3:1, Rest/binary>>,
    Fun,
    S,
    Acc
) ->
    ?V8;
unpack_text(<<V3:1, 1:1>>, <<R:6/bitstring, V1:1, V2:1, Rest/binary>>, Fun, S, Acc) ->
    ?V30;
unpack_text(<<2:2>>, <<R:5/bitstring, V:3/bitstring, Rest/binary>>, Fun, S, Acc) ->
    ?V38n;
unpack_text(<<0:2>>, <<R:3/bitstring, V:4/bitstring, 1:1, Rest/binary>>, Fun, S, Acc) ->
    ?V416n;
unpack_text(<<0:2>>, <<R:1/bitstring, V:5/bitstring, 2:2, Rest/binary>>, Fun, S, Acc) ->
    ?V532n;
unpack_text(
    <<0:2>>,
    <<V3:1, V4:1, V5:1, V6:1, V7:1, V8:1, 0:2, R:6/bitstring, V1:1, V2:1, Rest/binary>>,
    Fun,
    S,
    Acc
) ->
    ?V8;
unpack_text(<<V2:1, V3:1, 1:1>>, <<R:7/bitstring, V1:1, Rest/binary>>, Fun, S, Acc) ->
    ?V30;
unpack_text(<<V3:1, 2:2>>, <<R:6/bitstring, V1:1, V2:1, Rest/binary>>, Fun, S, Acc) ->
    ?V38;
unpack_text(<<4:3>>, <<R:4/bitstring, V:4/bitstring, Rest/binary>>, Fun, S, Acc) ->
    ?V416n;
unpack_text(<<0:3>>, <<R:2/bitstring, V:5/bitstring, 1:1, Rest/binary>>, Fun, S, Acc) ->
    ?V532n;
unpack_text(
    <<0:3>>,
    <<V2:1, V3:1, V4:1, V5:1, V6:1, V7:1, V8:1, 0:1, R:7/bitstring, V1:1, Rest/binary>>,
    Fun,
    S,
    Acc
) ->
    ?V8;
unpack_text(<<V:3/bitstring, 1:1>>, <<Rest/binary>>, Fun, S, Acc) ->
    R = <<>>,
    ?V30n;
unpack_text(<<V2:1, V3:1, 2:2>>, <<R:7/bitstring, V1:1, Rest/binary>>, Fun, S, Acc) ->
    ?V38;
unpack_text(<<V4:1, 4:3>>, <<R:5/bitstring, V1:1, V2:1, V3:1, Rest/binary>>, Fun, S, Acc) ->
    ?V416;
unpack_text(<<8:4>>, <<R:3/bitstring, V:5/bitstring, Rest/binary>>, Fun, S, Acc) ->
    ?V532n;
unpack_text(<<0:4>>, <<V, Rest/binary>>, Fun, S, Acc) ->
    R = <<>>,
    ?V8n;
unpack_text(<<R:1/bitstring, V:3/bitstring, 1:1>>, <<Rest/binary>>, Fun, S, Acc) ->
    ?V30n;
unpack_text(<<V:3/bitstring, 2:2>>, <<Rest/binary>>, Fun, S, Acc) ->
    R = <<>>,
    ?V38n;
unpack_text(<<V3:1, V4:1, 4:3>>, <<R:6/bitstring, V1:1, V2:1, Rest/binary>>, Fun, S, Acc) ->
    ?V416;
unpack_text(<<V5:1, 8:4>>, <<R:4/bitstring, V1:1, V2:1, V3:1, V4:1, Rest/binary>>, Fun, S, Acc) ->
    ?V532;
unpack_text(
    <<V8:1, 0:4>>,
    <<R:1/bitstring, V1:1, V2:1, V3:1, V4:1, V5:1, V6:1, V7:1, Rest/binary>>,
    Fun,
    S,
    Acc
) ->
    ?V8;
unpack_text(<<R:2/bitstring, V:3/bitstring, 1:1>>, <<Rest/binary>>, Fun, S, Acc) ->
    ?V30n;
unpack_text(<<R:1/bitstring, V:3/bitstring, 2:2>>, <<Rest/binary>>, Fun, S, Acc) ->
    ?V38n;
unpack_text(<<V2:1, V3:1, V4:1, 4:3>>, <<R:7/bitstring, V1:1, Rest/binary>>, Fun, S, Acc) ->
    ?V416;
unpack_text(<<V4:1, V5:1, 8:4>>, <<R:5/bitstring, V1:1, V2:1, V3:1, Rest/binary>>, Fun, S, Acc) ->
    ?V532;
unpack_text(
    <<V7:1, V8:1, 0:4>>,
    <<R:2/bitstring, V1:1, V2:1, V3:1, V4:1, V5:1, V6:1, Rest/binary>>,
    Fun,
    S,
    Acc
) ->
    ?V8;
unpack_text(<<R:3/bitstring, V:3/bitstring, 1:1>>, <<Rest/binary>>, Fun, S, Acc) ->
    ?V30n;
unpack_text(<<R:2/bitstring, V:3/bitstring, 2:2>>, <<Rest/binary>>, Fun, S, Acc) ->
    ?V38n;
unpack_text(<<V:4/bitstring, 4:3>>, <<Rest/binary>>, Fun, S, Acc) ->
    R = <<>>,
    ?V416n;
unpack_text(<<V3:1, V4:1, V5:1, 8:4>>, <<R:6/bitstring, V1:1, V2:1, Rest/binary>>, Fun, S, Acc) ->
    ?V532;
unpack_text(
    <<V6:1, V7:1, V8:1, 0:4>>,
    <<R:3/bitstring, V1:1, V2:1, V3:1, V4:1, V5:1, Rest/binary>>,
    Fun,
    S,
    Acc
) ->
    ?V8;
% special 1st run 8-bit
unpack_text(<<R:2/bitstring, V:3/bitstring, 4:3>>, <<Rest/binary>>, Fun, S, Acc) ->
    ?V30n;
% special 1st run 8-bit
unpack_text(<<R:1/bitstring, V:3/bitstring, 8:4>>, <<Rest/binary>>, Fun, S, Acc) ->
    ?V38n;
% special 1st run 8-bit
unpack_text(<<V2:1, V3:1, V4:1, 16:5>>, <<R:7/bitstring, V1:1, Rest/binary>>, Fun, S, Acc) ->
    ?V416;
% special 1st run 8-bit
unpack_text(<<V4:1, V5:1, 32:6>>, <<R:5/bitstring, V1:1, V2:1, V3:1, Rest/binary>>, Fun, S, Acc) ->
    ?V532;
% special 1st run 8-bit
unpack_text(
    <<V7:1, V8:1, 0:6>>,
    <<R:2/bitstring, V1:1, V2:1, V3:1, V4:1, V5:1, V6:1, Rest/binary>>,
    Fun,
    S,
    Acc
) ->
    ?V8.

map_value_3(B, up1) -> unpack1_3(B);
map_value_3(B, _) -> unpack2_3(B).

map_value_4(B, up1) -> unpack1_4(B);
map_value_4(B, _) -> unpack2_4(B).

map_value_5(B, up1) -> unpack1_5(B);
map_value_5(B, _) -> unpack2_5(B).

map_value_6(B, up1) -> unpack1_6(B);
map_value_6(B, _) -> unpack2_6(B).

map_value(B, up1) -> unpack1(B);
map_value(B, _) -> unpack2(B).

unpack1_3(<<0:3>>) -> 32;
unpack1_3(<<1:3>>) -> 97;
unpack1_3(<<2:3>>) -> 101;
unpack1_3(<<3:3>>) -> 110;
unpack1_3(<<4:3>>) -> 105;
unpack1_3(<<5:3>>) -> 111;
unpack1_3(<<6:3>>) -> 114;
unpack1_3(<<7:3>>) -> 115.

unpack1_4(<<0:3>>) -> 116;
unpack1_4(<<1:3>>) -> 108;
unpack1_4(<<2:3>>) -> 117;
unpack1_4(<<3:3>>) -> 104;
unpack1_4(<<4:3>>) -> 100;
unpack1_4(<<5:3>>) -> 99;
unpack1_4(<<6:3>>) -> 103;
unpack1_4(<<7:3>>) -> 109.

unpack1_5(<<0:4>>) -> 112;
unpack1_5(<<1:4>>) -> 121;
unpack1_5(<<2:4>>) -> 98;
unpack1_5(<<3:4>>) -> 107;
unpack1_5(<<4:4>>) -> 102;
unpack1_5(<<5:4>>) -> 118;
unpack1_5(<<6:4>>) -> 67;
unpack1_5(<<7:4>>) -> 83;
unpack1_5(<<8:4>>) -> 119;
unpack1_5(<<9:4>>) -> 77;
unpack1_5(<<10:4>>) -> 65;
unpack1_5(<<11:4>>) -> 66;
unpack1_5(<<12:4>>) -> 80;
unpack1_5(<<13:4>>) -> 122;
unpack1_5(<<14:4>>) -> 46;
unpack1_5(<<15:4>>) -> 10.

unpack1_6(<<0:5>>) -> 84;
unpack1_6(<<1:5>>) -> 82;
unpack1_6(<<2:5>>) -> 75;
unpack1_6(<<3:5>>) -> 76;
unpack1_6(<<4:5>>) -> 71;
unpack1_6(<<5:5>>) -> 78;
unpack1_6(<<6:5>>) -> 72;
unpack1_6(<<7:5>>) -> 106;
unpack1_6(<<8:5>>) -> 69;
unpack1_6(<<9:5>>) -> 73;
unpack1_6(<<10:5>>) -> 68;
unpack1_6(<<11:5>>) -> 70;
unpack1_6(<<12:5>>) -> 74;
unpack1_6(<<13:5>>) -> 120;
unpack1_6(<<14:5>>) -> 79;
unpack1_6(<<15:5>>) -> 113;
unpack1_6(<<16:5>>) -> 48;
unpack1_6(<<17:5>>) -> 49;
unpack1_6(<<18:5>>) -> 50;
unpack1_6(<<19:5>>) -> 51;
unpack1_6(<<20:5>>) -> 52;
unpack1_6(<<21:5>>) -> 53;
unpack1_6(<<22:5>>) -> 54;
unpack1_6(<<23:5>>) -> 55;
unpack1_6(<<24:5>>) -> 56;
unpack1_6(<<25:5>>) -> 57;
unpack1_6(<<26:5>>) -> 58;
unpack1_6(<<27:5>>) -> 45;
unpack1_6(<<28:5>>) -> 39;
unpack1_6(<<29:5>>) -> 44;
unpack1_6(<<30:5>>) -> 34;
unpack1_6(<<31:5>>) -> 63.

unpack1(64) -> 86;
unpack1(65) -> 87;
unpack1(66) -> 85;
unpack1(67) -> 90;
unpack1(68) -> 89;
unpack1(69) -> 81;
unpack1(70) -> 88;
unpack1(71) -> 9;
unpack1(72) -> 64;
unpack1(73) -> 40;
unpack1(74) -> 47;
unpack1(75) -> 41;
unpack1(76) -> 43;
unpack1(77) -> 126;
unpack1(78) -> 33;
unpack1(79) -> 35;
unpack1(80) -> 36;
unpack1(81) -> 37;
unpack1(82) -> 38;
unpack1(83) -> 42;
unpack1(84) -> 59;
unpack1(85) -> 60;
unpack1(86) -> 61;
unpack1(87) -> 62;
unpack1(88) -> 91;
unpack1(89) -> 92;
unpack1(90) -> 93;
unpack1(91) -> 94;
unpack1(92) -> 95;
unpack1(93) -> 96;
unpack1(94) -> 123;
unpack1(95) -> 124;
unpack1(96) -> 125;
unpack1(97) -> 127;
unpack1(98) -> 0;
unpack1(99) -> 1;
unpack1(100) -> 2;
unpack1(101) -> 3;
unpack1(102) -> 4;
unpack1(103) -> 5;
unpack1(104) -> 6;
unpack1(105) -> 7;
unpack1(106) -> 8;
unpack1(107) -> 11;
unpack1(108) -> 12;
unpack1(109) -> 13;
unpack1(110) -> 14;
unpack1(111) -> 15;
unpack1(112) -> 16;
unpack1(113) -> 17;
unpack1(114) -> 18;
unpack1(115) -> 19;
unpack1(116) -> 20;
unpack1(117) -> 21;
unpack1(118) -> 22;
unpack1(119) -> 23;
unpack1(120) -> 24;
unpack1(121) -> 25;
unpack1(122) -> 26;
unpack1(123) -> 27;
unpack1(124) -> 28;
unpack1(125) -> 29;
unpack1(126) -> 30;
unpack1(127) -> 31;
unpack1(B) -> B.

unpack2_3(<<0:3>>) -> 32;
unpack2_3(<<1:3>>) -> 65;
unpack2_3(<<2:3>>) -> 69;
unpack2_3(<<3:3>>) -> 78;
unpack2_3(<<4:3>>) -> 73;
unpack2_3(<<5:3>>) -> 79;
unpack2_3(<<6:3>>) -> 82;
unpack2_3(<<7:3>>) -> 83.

unpack2_4(<<0:3>>) -> 84;
unpack2_4(<<1:3>>) -> 76;
unpack2_4(<<2:3>>) -> 85;
unpack2_4(<<3:3>>) -> 72;
unpack2_4(<<4:3>>) -> 68;
unpack2_4(<<5:3>>) -> 67;
unpack2_4(<<6:3>>) -> 71;
unpack2_4(<<7:3>>) -> 77.

unpack2_5(<<0:4>>) -> 80;
unpack2_5(<<1:4>>) -> 89;
unpack2_5(<<2:4>>) -> 66;
unpack2_5(<<3:4>>) -> 75;
unpack2_5(<<4:4>>) -> 70;
unpack2_5(<<5:4>>) -> 86;
unpack2_5(<<6:4>>) -> 99;
unpack2_5(<<7:4>>) -> 115;
unpack2_5(<<8:4>>) -> 87;
unpack2_5(<<9:4>>) -> 109;
unpack2_5(<<10:4>>) -> 97;
unpack2_5(<<11:4>>) -> 98;
unpack2_5(<<12:4>>) -> 112;
unpack2_5(<<13:4>>) -> 90;
unpack2_5(<<14:4>>) -> 46;
unpack2_5(<<15:4>>) -> 10.

unpack2_6(<<0:5>>) -> 116;
unpack2_6(<<1:5>>) -> 114;
unpack2_6(<<2:5>>) -> 107;
unpack2_6(<<3:5>>) -> 108;
unpack2_6(<<4:5>>) -> 103;
unpack2_6(<<5:5>>) -> 110;
unpack2_6(<<6:5>>) -> 104;
unpack2_6(<<7:5>>) -> 74;
unpack2_6(<<8:5>>) -> 101;
unpack2_6(<<9:5>>) -> 105;
unpack2_6(<<10:5>>) -> 100;
unpack2_6(<<11:5>>) -> 102;
unpack2_6(<<12:5>>) -> 106;
unpack2_6(<<13:5>>) -> 88;
unpack2_6(<<14:5>>) -> 111;
unpack2_6(<<15:5>>) -> 81;
unpack2_6(<<16:5>>) -> 48;
unpack2_6(<<17:5>>) -> 49;
unpack2_6(<<18:5>>) -> 50;
unpack2_6(<<19:5>>) -> 51;
unpack2_6(<<20:5>>) -> 52;
unpack2_6(<<21:5>>) -> 53;
unpack2_6(<<22:5>>) -> 54;
unpack2_6(<<23:5>>) -> 55;
unpack2_6(<<24:5>>) -> 56;
unpack2_6(<<25:5>>) -> 57;
unpack2_6(<<26:5>>) -> 58;
unpack2_6(<<27:5>>) -> 45;
unpack2_6(<<28:5>>) -> 39;
unpack2_6(<<29:5>>) -> 44;
unpack2_6(<<30:5>>) -> 34;
unpack2_6(<<31:5>>) -> 63.

unpack2(64) -> 118;
unpack2(65) -> 119;
unpack2(66) -> 117;
unpack2(67) -> 122;
unpack2(68) -> 121;
unpack2(69) -> 113;
unpack2(70) -> 120;
unpack2(71) -> 9;
unpack2(72) -> 64;
unpack2(73) -> 40;
unpack2(74) -> 47;
unpack2(75) -> 41;
unpack2(76) -> 43;
unpack2(77) -> 126;
unpack2(78) -> 33;
unpack2(79) -> 35;
unpack2(80) -> 36;
unpack2(81) -> 37;
unpack2(82) -> 38;
unpack2(83) -> 42;
unpack2(84) -> 59;
unpack2(85) -> 60;
unpack2(86) -> 61;
unpack2(87) -> 62;
unpack2(88) -> 91;
unpack2(89) -> 92;
unpack2(90) -> 93;
unpack2(91) -> 94;
unpack2(92) -> 95;
unpack2(93) -> 96;
unpack2(94) -> 123;
unpack2(95) -> 124;
unpack2(96) -> 125;
unpack2(97) -> 127;
unpack2(98) -> 0;
unpack2(99) -> 1;
unpack2(100) -> 2;
unpack2(101) -> 3;
unpack2(102) -> 4;
unpack2(103) -> 5;
unpack2(104) -> 6;
unpack2(105) -> 7;
unpack2(106) -> 8;
unpack2(107) -> 11;
unpack2(108) -> 12;
unpack2(109) -> 13;
unpack2(110) -> 14;
unpack2(111) -> 15;
unpack2(112) -> 16;
unpack2(113) -> 17;
unpack2(114) -> 18;
unpack2(115) -> 19;
unpack2(116) -> 20;
unpack2(117) -> 21;
unpack2(118) -> 22;
unpack2(119) -> 23;
unpack2(120) -> 24;
unpack2(121) -> 25;
unpack2(122) -> 26;
unpack2(123) -> 27;
unpack2(124) -> 28;
unpack2(125) -> 29;
unpack2(126) -> 30;
unpack2(127) -> 31;
unpack2(B) -> B.
