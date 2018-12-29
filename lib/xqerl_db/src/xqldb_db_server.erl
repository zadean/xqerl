%% Server to maintain and server information of all known DBs 

-module(xqldb_db_server).
-behaviour(gen_server).

-export([init/1, 
         handle_call/3, 
         handle_cast/2, 
         handle_info/2, 
         terminate/2, 
         code_change/3]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/0,
         stop/0,
         new/1,
         open/2,
         close/1,
         exists/1,
         get_open/1,
         info/1,
         shrink/0]).

-export([test/0]).

test() ->
   %{ok, _} = ?MODULE:start_link(),
   Host = <<"http://xqerl.org/">>,
   Paths = [begin
               B = integer_to_binary(I),
               <<Host/binary,B/binary,"/dir/">>
            %end || I <- lists:seq(0, 255)],
            end || I <- lists:seq(256, 512)],
   _ = [xqldb_db_sup:start_child(P) || P <- Paths],
   %_ = [?MODULE:new(P) || P <- Paths],
   %_ = [?MODULE:open(P,self()) || P <- Paths],
   _ = xqldb_db:databases(Host),
   _ = [xqldb_db:close(P) || P <- Paths],
   %E = [P || P <- Paths, not ?MODULE:exists(P)],
   %?MODULE:stop(),
   ok.


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
close(Uri) ->
   gen_server:call(?MODULE, {close, uri_to_path(Uri)}).

% Returns true if the Uri exists.
exists(Uri) ->
   gen_server:call(?MODULE, {exists, uri_to_path(Uri)}).

% Returns {Status, Id, Pid} if the Uri exists, {error, not_exists} if not.
info(Uri) ->
   gen_server:call(?MODULE, {info, uri_to_path(Uri)}).

% Returns [{RelUri, Pid}] of all open DBs under given path.
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
      {error,_,_} = Err ->
         throw(Err);
      #{fragment := _} ->
         throw({error, fragment});
      #{scheme := S, host := <<>>, path := <<>>} ->
         [string:lowercase(S)];
      #{scheme := S, host := H, path := <<>>} ->
         [string:lowercase(S),string:lowercase(H)];
      #{scheme := S, host := H, path := P} ->
         [_|Sp] = filename:split(P),
         [string:lowercase(S),string:lowercase(H)|Sp];
      #{host := <<>>, path := P} ->
         [_|Sp] = filename:split(P),
         [<<"file">>|Sp];
      #{path := <<>>} ->
         {error, invalid_uri, ""};
      #{path := P} ->
         [_|Sp] = filename:split(P),
         [<<"file">>|Sp]
   end.

int_to_path(Int) ->
   list2path(integer_to_list(Int, 16)).

list2path([A,B,C,D,E,F,G,H]) -> filename:join([[A,B],[C,D],[E,F],[G,H]]);
list2path([B,C,D,E,F,G,H]) -> filename:join([[$0,B],[C,D],[E,F],[G,H]]);
list2path([C,D,E,F,G,H]) -> filename:join([[$0,$0],[C,D],[E,F],[G,H]]);
list2path([D,E,F,G,H]) -> filename:join([[$0,$0],[$0,D],[E,F],[G,H]]);
list2path([E,F,G,H]) -> filename:join([[$0,$0],[$0,$0],[E,F],[G,H]]);
list2path([F,G,H]) -> filename:join([[$0,$0],[$0,$0],[$0,F],[G,H]]);
list2path([G,H]) -> filename:join([[$0,$0],[$0,$0],[$0,$0],[G,H]]);
list2path([H]) -> filename:join([[$0,$0],[$0,$0],[$0,$0],[$0,H]]);
list2path([]) -> filename:join([[$0,$0],[$0,$0],[$0,$0],[$0,$0]]).

check_fs_exists(TabName, DataDir) ->
   Known = "nodes.heap", % filename known to exist in DBs
   Fun = fun({_, {_, missing}}) -> continue; % already gone
            ({Uri, Id}) ->
               Path = int_to_path(Id),
               Join = filename:join([DataDir, Path, Known]),
               case filelib:is_file(Join) of
                  true ->
                     continue;
                  false ->
                     {continue, {Uri, {Id, missing}}}
               end
         end,               
   Missing = dets:traverse(TabName, Fun),
   dets:insert(TabName, Missing),
   Fold = fun({Path,{Id,Stat}}, M) ->
                insert_new(Path, M, Id, Stat);
             ({Path,Id}, M) ->
                insert_new(Path, M, Id, closed)
          end,
   dets:foldl(Fold, #{}, TabName).

insert_new([], M, Id, Stat) ->
   M#{id => Id,
      stat => Stat};
insert_new([H|Split], M, Id, Stat) ->
   if is_map_key(H, M) ->
         M#{H := insert_new(Split, maps:get(H, M), Id, Stat)};
      true ->
         M#{H => insert_new(Split, #{}, Id, Stat)}
   end.

set_pid_open([], Map, Pid) ->
   Map#{pid => Pid,
        stat => open};
set_pid_open([H|Path], Map, Pid) ->
   if is_map_key(H, Map) ->
         Map#{H := set_pid_open(Path, maps:get(H, Map), Pid)};
      true ->
         throw({error, not_exists})
   end.

set_closed([], Map) ->
   Map#{pid => none,
        stat => closed};
set_closed([H|Path], Map) ->
   if is_map_key(H, Map) ->
         Map#{H := set_closed(Path, maps:get(H, Map))};
      true ->
         Map
   end.

do_exists([], #{id := _}) -> true;
do_exists([], _) -> false;
do_exists([H|Path], Map) ->
   if is_map_key(H, Map) ->
         do_exists(Path, maps:get(H, Map));
      true ->
         false
   end.

% {Status, Id, Pid}
get_info([], #{id := I, stat := S, pid := P}) ->
   {S, I, P};
get_info([], #{id := I, stat := S}) ->
   {S, I, none};
get_info([], _) ->
   {error, not_exists};
get_info([H|Path], Map) ->
   if is_map_key(H, Map) ->
         get_info(Path, maps:get(H, Map));
      true ->
         {error, not_exists}
   end.

do_get_open([], Map) ->
   Open = collect_open([{<<".">>, Map}], []),
   lists:sort(Open);
do_get_open([H|Path], Map) ->
   if is_map_key(H, Map) ->
         do_get_open(Path, maps:get(H, Map));
      true ->
         []
   end.
   
collect_open([{U, #{stat := open, pid := P} = M}|Ms], A) ->
   NMs = [{filename:join(U, D), N} || {D, N} <- maps:to_list(M), is_binary(D), is_map(N)],
   NA = collect_open(NMs, [{U,P}|A]),
   collect_open(Ms, NA);
collect_open([{U, #{stat := closed} = M}|Ms], A) ->
   NMs = [{filename:join(U, D), N} || {D, N} <- maps:to_list(M), is_binary(D), is_map(N)],
   NA = collect_open(NMs, [{U,closed}|A]),
   collect_open(Ms, NA);
collect_open([{U,M}|Ms], A) ->
   NMs = [{filename:join(U, D), N} || {D, N} <- maps:to_list(M), is_binary(D), is_map(N)],
   NA = collect_open(NMs, A),
   collect_open(Ms, NA);
collect_open([], A) ->
   A.

get_next_id(Name) ->
   Fun = fun({_,{I,_}}, A) when I > A ->
               I;
            ({_,{_,_}}, A) ->
               A;
            ({_,I}, A) when I > A ->
               I;
            (_, A) ->
               A
         end,            
   Max = dets:foldl(Fun, 0, Name),
   io:format("~p~n",[Max]),
   if Max =:= 0 -> 0; true -> Max + 1 end.

   

%% ====================================================================
%% Behavioural functions
%% ====================================================================

init([]) ->
   DataDir = application:get_env(xqerl_db, data_dir, "./data"),
   AbsDir = filename:absname(DataDir),
   ok = filelib:ensure_dir(AbsDir),
   TabFile = filename:join(AbsDir, "xqerl_db.meta"),
   {ok, TabName} = dets:open_file(TabFile, []),
   Next = get_next_id(TabName),
   PathMap = check_fs_exists(TabName, AbsDir),
   {ok, #{tab => TabName,
          map => PathMap,
          nxt => Next,
          dir => AbsDir}}.

% Sets Uri to status opening or {error, already_exists} if the DB already exists.
% Returns the Directory to use for the new DB.
handle_call({new, Path}, _From, #{tab := TabName,
                                  map := Map,
                                  dir := DataDir,
                                  nxt := Next} = State) ->
   case dets:lookup(TabName, Path) of
      [] ->
         % insert Next increase Next
         Map1 = insert_new(Path, Map, Next, opening),
         dets:insert(TabName, {Path, Next}),
         DbDir = filename:join([DataDir, int_to_path(Next)]),
         {reply, DbDir, State#{nxt := Next + 1,
                               map := Map1}};
      [{_, Id}] ->
         Map1 = insert_new(Path, Map, Next, opening),
         DbDir = filename:join([DataDir, int_to_path(Id)]),
         {reply, DbDir, State#{map := Map1}}
   end;
% Sets Uri to status open or {error, not_exists} if the DB does not exist.
handle_call({open, Path, SupPid}, _From, #{map := Map} = State) ->
   try 
      Map1 = set_pid_open(Path, Map, SupPid),
      {reply, ok, State#{map := Map1}}
   catch
      _:_ ->
         {reply, {error, not_exists}, State}
   end;
% Sets Uri to status closed if it exists or does nothing if not.
handle_call({close, Path}, _From, #{map := Map} = State) ->
   Map1 = set_closed(Path, Map),
   {reply, ok, State#{map := Map1}};
% Returns true if the Uri exists.
handle_call({exists, Path}, _From, #{map := Map} = State) ->
   Reply = do_exists(Path, Map),
   {reply, Reply, State};
% Returns {Status, Id, Pid} if the Uri exists, {error, not_exists} if not.
handle_call({info, Path}, _From, #{map := Map} = State) ->
   Reply = get_info(Path, Map),
   {reply, Reply, State};
% Returns [{Uri, Pid}] of all existing DBs under given path.
handle_call({get_open, Path}, _From, #{map := Map} = State) ->
   Reply = do_get_open(Path, Map),
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
