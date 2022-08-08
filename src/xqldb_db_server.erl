% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

-module(xqldb_db_server).

-behaviour(gen_server).

-export([
    init/1,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    terminate/2,
    code_change/3
]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    start_link/0,
    stop/0,
    new/1,
    open/2,
    close/1,
    exists/1,
    get_open/1,
    info/1,
    shrink/0
]).

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

stop() ->
    gen_server:stop(?MODULE).

% Sets Uri to status opening or {error, already_exists} if the DB already exists.
% Returns the Directory to use for the new DB.
new(Uri) ->
    gen_server:call(?MODULE, {new, uri_to_path(Uri)}).

% Sets Uri to status open or throws error if the DB does not exist.
open(Uri, SupPid) ->
    gen_server:call(?MODULE, {open, uri_to_path(Uri), SupPid}).

% Sets Uri to status closed if it exists or does nothing if not.
close({Uri, Id}) ->
    gen_server:call(?MODULE, {close, uri_to_path(Uri), Id}).

% Returns true if the Uri exists.
exists(Uri) ->
    gen_server:call(?MODULE, {exists, uri_to_path(Uri)}).

% Returns {Status, Id, Pid} if the Uri exists, {error, not_exists} if not.
info(Uri) ->
    gen_server:call(?MODULE, {info, uri_to_path(Uri)}).

% Returns [{RelUri, Pid}] of all open DBs under given path.
%% idea here is when given a Uri to get all dbs with rel path
get_open(Uri) ->
    gen_server:call(?MODULE, {get_open, uri_to_path(Uri)}).

% Shrinks the lookup table by removing URIs that point to DBs not on the
% File System. This releases IDs held by deleted/dropped DBs. These IDs will be
% reused by newly created DBs.
shrink() ->
    gen_server:cast(?MODULE, shrink).

%% ====================================================================
%% Internal functions
%% ====================================================================
uri_to_path(Uri) when is_list(Uri) ->
    uri_to_path(unicode:characters_to_binary(Uri));
uri_to_path(Uri) when is_binary(Uri) ->
    case uri_string:parse(Uri) of
        {error, _, _} = Err ->
            throw(Err);
        #{fragment := _} ->
            throw({error, fragment});
        #{scheme := S, host := <<>>, path := <<>>} ->
            [string:lowercase(S)];
        #{scheme := S, host := H, path := <<>>} ->
            [string:lowercase(S), string:lowercase(H)];
        #{scheme := S, host := H, path := P} ->
            [_ | Sp] = filename:split(P),
            [string:lowercase(S), string:lowercase(H) | Sp];
        #{host := <<>>, path := P} ->
            [_ | Sp] = filename:split(P),
            [<<"file">> | Sp];
        #{path := <<>>} ->
            throw({error, invalid_uri, ""});
        #{path := P} ->
            [_ | Sp] = filename:split(P),
            [<<"file">> | Sp]
    end.

int_to_path(Int) ->
    list2path(integer_to_list(Int, 16)).

list2path([A, B, C, D, E, F, G, H]) -> filename:join([[A, B], [C, D], [E, F], [G, H]]);
list2path([B, C, D, E, F, G, H]) -> filename:join([[$0, B], [C, D], [E, F], [G, H]]);
list2path([C, D, E, F, G, H]) -> filename:join([[$0, $0], [C, D], [E, F], [G, H]]);
list2path([D, E, F, G, H]) -> filename:join([[$0, $0], [$0, D], [E, F], [G, H]]);
list2path([E, F, G, H]) -> filename:join([[$0, $0], [$0, $0], [E, F], [G, H]]);
list2path([F, G, H]) -> filename:join([[$0, $0], [$0, $0], [$0, F], [G, H]]);
list2path([G, H]) -> filename:join([[$0, $0], [$0, $0], [$0, $0], [G, H]]);
list2path([H]) -> filename:join([[$0, $0], [$0, $0], [$0, $0], [$0, H]]);
list2path([]) -> filename:join([[$0, $0], [$0, $0], [$0, $0], [$0, $0]]).

check_fs_exists(TabName, DataDir) ->
    % filename known to exist in DBs
    Known = "ind",
    % already gone
    Fun = fun
        ({_, {_, missing}}) ->
            continue;
        ({Uri, Id}) ->
            Path = int_to_path(Id),
            Join = filename:join([DataDir, Path, Known]),
            case filelib:is_dir(Join) of
                true ->
                    continue;
                false ->
                    {continue, {Uri, {Id, missing}}}
            end
    end,
    Missing = dets:traverse(TabName, Fun),
    dets:insert(TabName, Missing),
    ok.

%% collect all DB ids
%% this should return a list of relative paths
do_get_open(Path, Ets) ->
    MPattern = Path ++ '$1',
    MatchSpec = [
        {{{MPattern, '_'}, '_', open}, [], ['$1']},
        {{{MPattern, '_'}, '_', closed}, [], ['$1']}
    ],
    Res = ets:select(Ets, MatchSpec),
    lists:sort([filename:join([<<".">> | R]) || R <- Res]).

get_next_id(Name) ->
    Fun = fun
        ({_, {I, _}}, A) when I > A ->
            I;
        ({_, {_, _}}, A) ->
            A;
        ({_, I}, A) when I > A ->
            I;
        (_, A) ->
            A
    end,
    case dets:foldl(Fun, 0, Name) of
        0 ->
            0;
        Max ->
            io:format("Count of DBs: ~p~n", [Max]),
            Max + 1
    end.

dets_to_ets(TabName, Ets) ->
    Fun = fun
        ({P, {I, missing}}, E) ->
            ets:insert(E, {{P, I}, undefined, missing}),
            E;
        ({P, I}, E) ->
            ets:insert(E, {{P, I}, undefined, closed}),
            E
    end,
    _ = dets:foldl(Fun, Ets, TabName),
    ok.

%% ====================================================================
%% Behavioural functions
%% ====================================================================

%% dets table is {Path, Id}
%% ets table is {{Path, Id}, Pid, Status}

init([]) ->
    DataDir = application:get_env(xqerl_db, data_dir, "./data"),
    AbsDir = filename:absname(DataDir),
    TabFile = filename:join(AbsDir, "xqerl_db.meta"),
    ok = filelib:ensure_dir(TabFile),
    {ok, TabName} = dets:open_file(TabFile, []),
    Ets = ets:new(?MODULE, [ordered_set]),
    Next = get_next_id(TabName),
    % loads dets table
    ok = check_fs_exists(TabName, AbsDir),
    % load the ets table
    ok = dets_to_ets(TabName, Ets),
    {ok, #{
        meta => TabName,
        tab => Ets,
        nxt => Next,
        dir => AbsDir
    }}.

% Sets Uri to status opening or {error, already_exists} if the DB already exists.
% Returns the {Directory, Id} to use for the new DB.
handle_call(
    {new, Path},
    _From,
    #{
        meta := TabName,
        tab := Ets,
        dir := DataDir,
        nxt := Next
    } = State
) ->
    try
        case select_path(Ets, Path) of
            [] ->
                % insert Next increase Next
                dets:insert(TabName, {Path, Next}),
                ets:insert(Ets, {{Path, Next}, undefined, opening}),
                DbDir = filename:join([DataDir, int_to_path(Next)]),
                {reply, {DbDir, Next}, State#{nxt := Next + 1}};
            [{{_, Id}, _, missing}] ->
                dets:insert(TabName, {Path, Id}),
                ets:insert(Ets, {{Path, Id}, undefined, opening}),
                DbDir = filename:join([DataDir, int_to_path(Id)]),
                {reply, {DbDir, Id}, State};
            [{{_, Id}, Pid, open}] when is_pid(Pid) ->
                DbDir = filename:join([DataDir, int_to_path(Id)]),
                % check if it is still alive
                case erlang:is_process_alive(Pid) of
                    % already there
                    true ->
                        {reply, {open, Pid, Id}, State};
                    false ->
                        % if not alive, mark closed and return error
                        ets:insert(Ets, {{Path, Id}, undefined, closed}),
                        {reply, {closed, DbDir, Id}, State}
                end;
            [{{_, Id}, undefined, closed}] ->
                ets:insert(Ets, {{Path, Id}, undefined, opening}),
                DbDir = filename:join([DataDir, int_to_path(Id)]),
                {reply, {DbDir, Id}, State};
            [{{_, Id}, undefined, opening}] ->
                %DbDir = filename:join([DataDir, int_to_path(Id)]),
                {reply, {opening, Id}, State}
        end
    catch
        _:ER ->
            %io:format("~p~n",[{ER,St}]),
            {reply, {error, ER}, State}
    end;
% Sets Uri to status open or {error, not_exists} if the DB does not exist.
handle_call({open, Path, SupPid}, _From, #{tab := Ets} = State) ->
    try
        [Id] = ets:select(Ets, [{{{Path, '$1'}, '_', '_'}, [], ['$1']}]),
        ets:insert(Ets, {{Path, Id}, SupPid, open}),
        {reply, ok, State}
    catch
        _:_ ->
            {reply, {error, not_exists}, State}
    end;
% Sets Uri to status closed if it exists or does nothing if not.
handle_call({close, Path, Id}, _From, #{tab := Ets} = State) ->
    ets:insert(Ets, {{Path, Id}, undefined, closed}),
    {reply, ok, State};
% Returns true if the Uri exists.
handle_call({exists, Path}, _From, #{tab := Ets} = State) ->
    case select_path(Ets, Path) of
        [] ->
            {reply, false, State};
        _ ->
            {reply, true, State}
    end;
% Returns {Status, Id, Pid} if the Uri exists, {error, not_exists} if not.
handle_call({info, Path}, _From, #{tab := Ets} = State) ->
    case select_path(Ets, Path) of
        [] ->
            {reply, {error, not_exists}, State};
        [{{_, _}, _, missing}] ->
            {reply, {error, not_exists}, State};
        [{{_, Id}, Pid, Status}] when is_pid(Pid) ->
            % check if it is still alive
            case erlang:is_process_alive(Pid) of
                true ->
                    {reply, {Status, Id, Pid}, State};
                false ->
                    {reply, {error, not_exists}, State}
            end;
        [{{_, Id}, undefined, opening}] ->
            {reply, {opening, Id, undefined}, State};
        [{{_, Id}, undefined, closed}] ->
            {reply, {closed, Id, undefined}, State}
    end;
% Returns [{Uri, Pid}] of all existing DBs under given path.
handle_call({get_open, Path}, _From, #{tab := Ets} = State) ->
    Reply = do_get_open(Path, Ets),
    {reply, Reply, State}.

handle_cast(shrink, State) ->
    % TODO little more difficult
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

select_path(Ets, Path) ->
    ets:select(Ets, [{{{Path, '_'}, '_', '_'}, [], ['$_']}]).
