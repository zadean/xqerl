% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

-module(xqldb_lib).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    join_uris/2,
    normalize_uri/1,
    filename_to_uri/1,
    uri_to_filename/1
]).

-export([
    pforeach/3,
    pmap/3
]).

-export([valid_http/1]).

-spec join_uris(
    BaseUri :: binary(),
    RefUri :: binary()
) -> binary() | {error, _}.
join_uris(BaseUri, RefUri) ->
    B = parse(BaseUri),
    R = parse(RefUri),
    J = join(B, R),
    case J of
        {error, _} = E ->
            E;
        _ ->
            recompose(J)
    end.

filename_to_uri(Filename) ->
    xqldb_uri:filename_to_uri(Filename).

uri_to_filename(<<"file:///", Rest/binary>>) ->
    case Rest of
        <<L, $:, _/binary>> when L >= $A, L =< $Z; L >= $a, L =< $z ->
            do_decode_binary(filename:absname(Rest));
        _ ->
            do_decode_binary(filename:absname(<<$/, Rest/binary>>))
    end;
uri_to_filename("file:///" ++ Rest) ->
    case Rest of
        [L, $: | _] when L >= $A, L =< $Z; L >= $a, L =< $z ->
            do_decode(filename:absname(Rest));
        _ ->
            do_decode(filename:absname([$/ | Rest]))
    end.

normalize_uri(Uri) ->
    case parse(Uri) of
        #{path := <<F, _/binary>> = P} = M ->
            case valid_http(P) of
                true ->
                    case uri_string:normalize(P) of
                        % absolute/relative unchanged
                        <<F, _/binary>> = N ->
                            uri_string:recompose(M#{path := N});
                        _ ->
                            uri_string:recompose(M)
                    end;
                false ->
                    {error, invalid_uri, Uri}
            end;
        #{path := <<>>} = M ->
            uri_string:recompose(M);
        {error, _, _} = Err ->
            case has_high_codepoint_or_space(Uri) of
                true ->
                    Uri;
                false ->
                    Err
            end
    end.

%% ====================================================================
%% Internal functions
%% ====================================================================

%% uri_string:parse doesn`t like high codepoints or the space character
%% check for existence . of course this lets crap come through...
has_high_codepoint_or_space(Bin) ->
    [C || <<C/utf8>> <= Bin, is_legacy(C)] =/= [].

% list of legacy characters accepted in XQuery
is_legacy(16#20) -> true;
is_legacy(16#3c) -> true;
is_legacy(16#3e) -> true;
is_legacy(16#22) -> true;
is_legacy(16#5c) -> true;
is_legacy(16#5e) -> true;
is_legacy(16#60) -> true;
is_legacy(16#7b) -> true;
is_legacy(16#7c) -> true;
is_legacy(C) when C >= 16#00, C =< 16#1f -> true;
is_legacy(C) when C >= 16#7f, C =< 16#d7ff -> true;
%is_legacy(16#200e) -> true;
%is_legacy(16#200f) -> true;
%is_legacy(C) when C >= 16#202a, C =< 16#202e -> true;
is_legacy(C) when C >= 16#fff0, C =< 16#fffd -> true;
is_legacy(_) -> false.

join(_, Rel) when is_map_key(scheme, Rel) ->
    % relative with scheme is absolute
    Rel;
join(Base, Rel) when not is_map_key(scheme, Base), not is_map_key(scheme, Rel) ->
    {error, relative};
join(Base, _) when is_map_key(fragment, Base) ->
    % Fragment in base is not okay
    {error, fragment};
join(
    #{
        scheme := Scheme,
        path := Path
    },
    Rel
) when is_map_key(userinfo, Rel); is_map_key(host, Rel); is_map_key(port, Rel) ->
    % no relative scheme, but has user info, host, or port.
    Rel#{
        scheme => Scheme,
        path => maybe_normalize(Path)
    };
join(#{scheme := BScheme} = Base, Rel) ->
    BUserInfo = maps:get(userinfo, Base, <<>>),
    BHost = maps:get(host, Base, <<>>),
    BPort = maps:get(port, Base, -1),
    BPath = maps:get(path, Base, <<>>),
    BQuery = maps:get(query, Base, <<>>),

    Path = maps:get(path, Rel, <<>>),
    Query = maps:get(query, Rel, <<>>),
    Fragment = maps:get(fragment, Rel, <<>>),

    {TPath, TQuery} =
        case Path of
            <<>> when Query == <<>> ->
                {BPath, BQuery};
            <<>> ->
                {BPath, Query};
            <<"/", _/binary>> ->
                {maybe_normalize(Path), Query};
            _ ->
                Temp = merge_path(BUserInfo, BPath, Path),
                {maybe_normalize(Temp), Query}
        end,
    M = #{
        scheme => BScheme,
        host => BHost
    },
    M0 = add_to_map_if_not(M, path, TPath, 9999999999),
    M1 = add_to_map_if_not(M0, userinfo, BUserInfo, <<>>),
    M2 = add_to_map_if_not(M1, query, TQuery, <<>>),
    M3 = add_to_map_if_not(M2, fragment, Fragment, <<>>),
    M4 = add_to_map_if_not(M3, port, BPort, -1),
    %?dbg("M4",M4),
    M4;
join({error, E, _}, _) ->
    {error, E};
join(_, {error, E, _}) ->
    {error, E}.

add_to_map_if_not(Map, _Key, Value, Value) ->
    Map;
add_to_map_if_not(Map, Key, Value, _Not) ->
    Map#{Key => Value}.

maybe_normalize(Path) ->
    case uri_string:normalize(Path) of
        {error, _, _} ->
            Path;
        Norm ->
            Norm
    end.

merge_path(BUserInfo, <<>>, RPath) when BUserInfo =/= <<>> ->
    <<"/", RPath/binary>>;
merge_path(_BUserInfo, <<>>, <<"/", _/binary>> = RPath) ->
    RPath;
merge_path(_BUserInfo, <<>>, RPath) when RPath =/= <<>> ->
    <<"/", RPath/binary>>;
merge_path(_BUserInfo, BPath, RPath) ->
    append_last_slash(BPath, RPath).

parse(Uri) ->
    case uri_string:parse(Uri) of
        {error, _, _} ->
            fallback_parse(Uri);
        Map ->
            Map
    end.

do_decode_binary(<<$%, Hex:2/binary, Rest/bits>>) ->
    <<(binary_to_integer(Hex, 16)), (do_decode_binary(Rest))/binary>>;
do_decode_binary(<<First:1/binary, Rest/bits>>) ->
    <<First/binary, (do_decode_binary(Rest))/binary>>;
do_decode_binary(<<>>) ->
    <<>>.

do_decode([$%, Hex1, Hex2 | Rest]) ->
    [list_to_integer([Hex1, Hex2], 16) | do_decode(Rest)];
do_decode([First | Rest]) ->
    [First | do_decode(Rest)];
do_decode([]) ->
    [].

-define(HEX(V), V >= $0, V =< $9; V >= $A, V =< $F; V >= $a, V =< $f).

%-define(I(A,B), io:format("~p:~p~n",[A,B])).

valid_http(<<>>) ->
    true;
valid_http(<<$/, C, $:, $/, Rest/binary>>) when C >= $A, C =< $Z; C >= $a, C =< $z ->
    valid_http(Rest);
valid_http(<<$:, _/binary>>) ->
    false;
valid_http(<<$%, A, B, T/binary>>) when ?HEX(A) ->
    valid_http_1(B, T);
valid_http(<<$%, _/binary>>) ->
    false;
valid_http(<<_, T/binary>>) ->
    valid_http(T).

valid_http_1(B, T) when ?HEX(B) -> valid_http(T);
valid_http_1(_, _) -> false.

append_last_slash(BPath, RPath) ->
    {Head, _} = string:take(BPath, "/", true, trailing),
    <<Head/binary, RPath/binary>>.

pforeach(List, Limit, Fun) ->
    pforeach(self(), List, Fun, Limit, Limit),
    receive
        done ->
            ok
    end.

pforeach(From, [], Fun, Limit, Left) when Left < Limit ->
    receive
        X ->
            From ! X,
            pforeach(From, [], Fun, Limit, Left + 1)
    end;
pforeach(From, [], _, _, _) ->
    From ! done;
pforeach(From, List, Fun, Limit, 0) ->
    receive
        _ ->
            pforeach(From, List, Fun, Limit, 1)
    end;
pforeach(From, [H | T], Fun, Limit, Left) ->
    Self = self(),
    _Pid = erlang:spawn_link(fun() -> Self ! Fun(H) end),
    pforeach(From, T, Fun, Limit, Left - 1).

pmap(List, Limit, Fun) ->
    pmap(self(), List, Fun, Limit, Limit, [], []),
    receive
        {done, Acc2} ->
            lists:reverse(Acc2)
    after 15000 -> error
    end.

pmap(From, [], Fun, Limit, Left, [P | Ps], Acc) when Left < Limit ->
    receive
        {P, {'EXIT', Ex}} ->
            throw(Ex);
        {P, X} ->
            pmap(From, [], Fun, Limit, Left + 1, Ps, [X | Acc])
    after 10000 -> error
    end;
pmap(From, [], _Fun, _Limit, _Left, [], Acc) ->
    From ! {done, Acc};
pmap(From, List, Fun, Limit, 0, [P | Ps], Acc) ->
    receive
        {P, X} ->
            pmap(From, List, Fun, Limit, 1, Ps, [X | Acc])
    after 10000 -> error
    end;
pmap(From, [H | T], Fun, Limit, Left, Pids, Acc) ->
    Self = self(),
    Pid = erlang:spawn_link(
        fun() ->
            Self ! {self(), catch Fun(H)}
        end
    ),
    pmap(From, T, Fun, Limit, Left - 1, Pids ++ [Pid], Acc).

recompose(#{path := P} = URIMap) ->
    case has_high_codepoint_or_space(P) of
        false ->
            uri_string:recompose(URIMap);
        true ->
            legacy_recompose(URIMap)
    end;
recompose(URIMap) ->
    uri_string:recompose(URIMap).

legacy_recompose(UriMap) ->
    Sep = [path, fragment, query],
    Head = uri_string:recompose((maps:without(Sep, UriMap))#{path => <<>>}),
    Tail = maps:with(Sep, UriMap),
    U1 = update_path(Tail, Head),
    U2 = update_query(Tail, U1),
    update_fragment(Tail, U2).

% from uri_string, kind of
update_path(#{path := Path}, URI) ->
    <<URI/bits, Path/bits>>;
update_path(_, URI) ->
    URI.

update_query(#{query := Query}, URI) ->
    <<URI/binary, "?", Query/binary>>;
update_query(_, URI) ->
    URI.

update_fragment(#{fragment := Fragment}, URI) ->
    <<URI/binary, "#", Fragment/binary>>;
update_fragment(_, URI) ->
    URI.

fallback_parse(Uri) ->
    case http_uri:parse(Uri, opts()) of
        {error, no_scheme} ->
            NewUri = <<"http://x/", Uri/binary>>,
            case http_uri:parse(NewUri, opts()) of
                {error, _} = E1 ->
                    E1;
                {ok, {_, UserInfo1, _, _, Path1, Query1, Fragment1}} ->
                    build_map({none, UserInfo1, <<>>, -1, Path1, Query1, Fragment1})
            end;
        {error, E} ->
            ?dbg("E", {E, Uri}),
            {error, invalid_uri, Uri};
        {ok, {SchemeAtom, UserInfo, Host, Port, Path, Query, Fragment}} ->
            build_map({SchemeAtom, UserInfo, Host, Port, Path, Query, Fragment})
    end.

build_map({SchemeAtom, UserInfo, Host, Port, Path, Query, Fragment}) ->
    Port1 =
        case is_default_port(SchemeAtom, Port) of
            true ->
                -1;
            _ ->
                Port
        end,
    M1 = add_to_map_if_not(#{}, scheme, atom_to_binary(SchemeAtom, utf8), <<"none">>),
    M2 = add_to_map_if_not(M1, userinfo, UserInfo, <<>>),
    M3 = add_to_map_if_not(M2, host, Host, <<>>),
    M4 = add_to_map_if_not(M3, port, Port1, -1),
    M5 = add_to_map_if_not(M4, path, Path, 99999999999),
    M6 = add_to_map_if_not(M5, query, Query, <<>>),
    M7 = add_to_map_if_not(M6, fragment, Fragment, <<>>),
    %?dbg("M7",M7),
    M7.

opts() ->
    [
        {scheme_defaults, [{file, 1}, {urn, 2} | scheme_defaults()]},
        {ipv6_host_with_brackets, true},
        {fragment, true}
    ].

scheme_defaults() ->
    [
        {http, 80},
        {https, 443},
        {ftp, 21},
        {ssh, 22},
        {sftp, 22},
        {tftp, 69}
    ].

is_default_port(Scheme, Port) ->
    case lists:keyfind(Scheme, 1, [{file, 1}, {urn, 2} | scheme_defaults()]) of
        {Scheme, Port} ->
            true;
        _ ->
            false
    end.

%% remove_dot_segments([]) -> [];
%% remove_dot_segments(Path) ->
%%    Split = string:split(Path,"/",all),
%%    Fun = fun(".",Acc) ->
%%                Acc;
%%             ("..",[]) ->
%%                [];
%%             ("..",Acc) ->
%%                tl(Acc);
%%             (S,Acc) ->
%%                [S|Acc]
%%          end,
%%    Sim = lists:foldl(Fun, [], Split),
%%    Sim1 = case lists:last(Path) of
%%              $. ->
%%                 [[]|Sim];
%%              _ ->
%%                 Sim
%%           end,
%%    B = build_path(lists:reverse(Sim1)),
%%    case hd(Path) of
%%       $/ when hd(B) =/= $/ ->
%%          [$/|B];
%%       _ ->
%%          B
%%    end.

%% build_path([]) -> [];
%% build_path([H]) ->
%%    H;
%% build_path([[C,$:,$/] = H|T]) when C >= $A, C =< $Z; C >= $a, C =< $z ->
%%    H ++ build_path(T);
%% build_path([[C,$:,$\\] = H|T]) when C >= $A, C =< $Z; C >= $a, C =< $z ->
%%    H ++ build_path(T);
%% build_path([H|T]) ->
%%    H ++ "/" ++ build_path(T).
%%




%{Scheme, UserInfo, Host, Port, Path, Query, Fragment}

%% valid_path(Scheme,Path) when Scheme =:= http;
%%                              Scheme =:= https ->
%%    case valid_http(Path) of
%%       true ->
%%          Path;
%%       _ ->
%%          {error,invalid_uri}
%%    end;
%% valid_path(_Scheme,Path) -> Path.
