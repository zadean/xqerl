%% -------------------------------------------------------------------
%%
%% xqerl_db - XML Database for xqerl XQuery processor
%%
%% Copyright (c) 2018 Zachary N. Dean  All Rights Reserved.
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
-module(xqldb_docstore).
-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([init/0]).

-export([update/2,
         %
         deactivate/2,
         %
         print/1
         ]).

-export([insert/1,
         insert_collection/2,
         select/1,
         select_collection/1,
         select_collection_uris/1,
         delete/1,
         delete_collection/1,
         get_pid/1,
         get_collection_pids/1,
         exists/1,
         collection_exists/1
         ]).

-define(TAB(Uri),tab(Uri)).
-define(TAB1,list_to_atom(atom_to_list(?MODULE)++"1")).
-define(TAB2,list_to_atom(atom_to_list(?MODULE)++"2")).
-define(TAB3,list_to_atom(atom_to_list(?MODULE)++"3")).
-define(TAB4,list_to_atom(atom_to_list(?MODULE)++"4")).
-define(EXTTAB,xqldb_doc).
-define(COLLTAB,xqldb_collections).
-define(EXTCOLLTAB,xqldb_collection).

print(Uri) ->
   {ok,Pid} = select(Uri),
   xqldb_doc:query(Pid, []).

init() ->
   ets:new(?TAB1, [public,named_table]),
   ets:new(?TAB2, [public,named_table]),
   ets:new(?TAB3, [public,named_table]),
   ets:new(?TAB4, [public,named_table]),
   ets:new(?COLLTAB, [public,named_table]),
   Ins = fun(Key) ->
               ets:insert(tab(Key), {Key,inactive,undefined})
         end,
   lists:foreach(Ins, ext_keys()),
   In1 = fun(Key) ->
               ets:insert(?COLLTAB, {Key,inactive,undefined})
         end,
   lists:foreach(In1, ext_collection_keys()).

% Uri can be Filename of {Uri,Filename}
insert({Uri,_} = U) ->
   case exists(Uri) of
      true ->
         case get_status(Uri) of
            failed ->
               try_load_new(U);
            _ ->
               {error,already_exists}
         end;
      false ->
         add_new(Uri),
         set_status(Uri, loading),
         try_load_new(U)
   end;
insert(Uri) ->
   case exists(Uri) of
      true ->
         case get_status(Uri) of
            failed ->
               try_load_new(Uri);
            _ ->
               {error,already_exists}
         end;
      false ->
         add_new(Uri),
         set_status(Uri, loading),
         try_load_new(Uri)
   end.

insert_collection(Uri,Uris) ->
   case collection_exists(Uri) of
      true ->
         case get_collection_status(Uri) of
            failed ->
               try_load_collection(Uri,Uris);
            _ ->
               {error,already_exists}
         end;
      false ->
         add_new_collection(Uri,Uris),
         set_collection_status(Uri, loading),
         try_load_collection(Uri,Uris)
   end.


select(Uri) ->
   case exists(Uri) of
      false ->
         {error,not_exists};
      true ->
         case get_status(Uri) of
            {active,Pid} ->
               case is_process_alive(Pid) of
                  true ->
                     Pid ! touch,
                     {ok,Pid};
                  _ ->
                     try
                        set_status(Uri, loading),
                        Bin = ext_select(Uri),
                        {ok,Pid1} = xqldb_doc:load(Bin),
                        set_pid(Uri, Pid1),
                        set_status(Uri, active),
                        {ok,Pid1}
                     catch
                        _:Err ->
                           set_status(Uri, inactive),
                           {error,Err}
                     end
               end;
            inactive ->
               try
                  set_status(Uri, loading),
                  Bin = ext_select(Uri),
                  {ok,Pid1} = xqldb_doc:load(Bin),
                  set_pid(Uri, Pid1),
                  set_status(Uri, active),
                  {ok,Pid1}
               catch
                  _:Err ->
                     set_status(Uri, inactive),
                     {error,Err}
               end;
%%             loading ->
%%                select(Uri);
            Other ->
               {error,Other}
         end
   end.

select_collection(Uri) ->
   case collection_exists(Uri) of
      false ->
         {error,not_exists};
      true ->
         case get_collection_status(Uri) of
            {active,Pids} ->
               {ok,Pids};
            inactive ->
               try
                  Uris = ext_select_collection(Uri),
                  set_collection_status(Uri, loading),
                  try_load_collection(Uri,Uris),
                  {active,Pids} = get_collection_status(Uri),
                  {ok,Pids}
               catch
                  _:Err ->
                     set_collection_status(Uri, inactive),
                     {error,Err}
               end;
%%             loading ->
%%                select(Uri);
            Other ->
               {error,Other}
         end
   end.

select_collection_uris(Uri) ->
   case collection_exists(Uri) of
      false ->
         {error,not_exists};
      true ->
         Uris = ext_select_collection(Uri),
         {ok,Uris}
   end.

update(Uri,_Value) ->
   case exists(Uri) of
      false ->
         {error,not_exists};
      true ->
         ok
   end.

delete(Uri) ->
   case exists(Uri) of
      false ->
         ok;
      true ->
         Pid = get_pid(Uri),
         ext_delete(Uri),
         if Pid == undefined -> ok;
            true -> catch xqldb_doc:delete(Pid)
         end,
         ets:delete(?TAB(Uri), Uri),         
         ok
   end.

delete_collection(Uri) ->
   case collection_exists(Uri) of
      false ->
         ok;
      true ->
         ext_delete_collection(Uri),
         ets:delete(?COLLTAB, Uri),         
         ok
   end.

deactivate(Uri,Obj) ->
   try_unload_new(Uri,Obj).
   

%% ====================================================================
%% Internal functions
%% ====================================================================

add_new(Uri) ->
   ets:insert(?TAB(Uri), {Uri,undefined,undefined}).

add_new_collection(Uri,_) ->
   ets:insert(?COLLTAB, {Uri,undefined,undefined}).


% status :: active | inactive | failed | loading | updating
set_status(Uri,Status) ->
   ets:update_element(?TAB(Uri), Uri, {2,Status}).

set_collection_status(Uri,Status) ->
   ets:update_element(?COLLTAB, Uri, {2,Status}).

% return status | {active,Pid}
get_status(Uri) ->
   case ets:lookup(?TAB(Uri), Uri) of
      [{_,active,Pid}] ->
         {active,Pid};
      [{_,S,_}] ->
         S;
      _ ->
         {error,not_exists}
   end.

get_collection_status(Uri) ->
   case ets:lookup(?COLLTAB, Uri) of
      [{_,active,Pids}] ->
         {active,Pids};
      [{_,S,_}] ->
         S;
      _ ->
         {error,not_exists}
   end.

deactivate_collection_by_doc(Pid) ->
   Act = ets:match(?COLLTAB,{'$1',active,'$2'}),
   %?dbg("Act",Act),
   [set_collection_status(U,inactive)|| 
      [U,L] <- Act,
      {_,Li,_} <- L,
      Pid == Li],
   ok.

set_pid(Uri,Pid) ->
   ets:update_element(?TAB(Uri), Uri, {3,Pid}).

set_collection_pids(Uri,Pids) ->
   ets:update_element(?COLLTAB, Uri, {3,Pids}).

get_pid(Uri) ->
   [{_,_,Pid}] = ets:lookup(?TAB(Uri), Uri),
   Pid.

get_collection_pids(Uri) ->
   [{_,_,Pids}] = ets:lookup(?COLLTAB, Uri),
   Pids.

exists(Uri) ->
   ets:lookup(?TAB(Uri), Uri) =/= [].

collection_exists(Uri) ->
   ets:lookup(?COLLTAB, Uri) =/= [].


ext_delete(Uri) ->
   F = fun() -> mnesia:delete({?EXTTAB, Uri}) end,
   {atomic,R} = mnesia:transaction(F),
   R.

ext_delete_collection(Uri) ->
   F = fun() -> mnesia:delete({?EXTCOLLTAB, Uri}) end,
   {atomic,R} = mnesia:transaction(F),
   R.

ext_insert(Uri,Obj) ->
   F = fun() -> mnesia:write(#?EXTTAB{uri = Uri, bin = Obj}) end,
   {atomic,R} = mnesia:transaction(F),
   R.

ext_insert_collection(Uri,Obj) ->
   F = fun() -> mnesia:write(#?EXTCOLLTAB{uri = Uri, uris = Obj}) end,
   {atomic,R} = mnesia:transaction(F),
   R.

ext_select(Uri) ->
   Match = #?EXTTAB{uri = Uri, bin = '$1'},
   F = fun() ->
             [Obj] = mnesia:select(?EXTTAB,[{Match, [], ['$1']}]),
             Obj
       end,
   mnesia:ets(F).

ext_select_collection(Uri) ->
   Match = #?EXTCOLLTAB{uri = Uri, uris = '$1'},
   F = fun() ->
             [Obj] = mnesia:select(?EXTCOLLTAB,[{Match, [], ['$1']}]),
             Obj
       end,
   mnesia:ets(F).

ext_keys() ->
   Match = #?EXTTAB{uri = '$1', bin = '_'},
   F = fun() ->
             mnesia:select(?EXTTAB,[{Match, [], ['$1']}])
       end,
   mnesia:ets(F).

ext_collection_keys() ->
   Match = #?EXTCOLLTAB{uri = '$1', uris = '_'},
   F = fun() ->
             mnesia:select(?EXTCOLLTAB,[{Match, [], ['$1']}])
       end,
   mnesia:ets(F).

tab(Val) ->
   case erlang:phash2(Val, 4) + 1 of
      1 -> ?TAB1;
      2 -> ?TAB2;
      3 -> ?TAB3;
      4 -> ?TAB4
   end.

try_load_new({Uri,_} = U) ->
   try
      {ok,Pid} = xqldb_doc:load(U),
      {ok,Bin} = xqldb_doc:export(Pid),
      ok = ext_insert(Uri, Bin),
      set_pid(Uri, Pid),
      set_status(Uri, active),
      ok
   catch
      _:E -> ?dbg("E",E),
         set_status(Uri, failed),
         {error,failed}
   end;
try_load_new(Uri) ->
   try
      {ok,Pid} = xqldb_doc:load(Uri),
      {ok,Bin} = xqldb_doc:export(Pid),
      ok = ext_insert(Uri, Bin),
      set_pid(Uri, Pid),
      set_status(Uri, active),
      ok
   catch
      _:E -> ?dbg("E",E),
         set_status(Uri, failed),
         {error,failed}
   end.

try_load_collection(Uri,Uris) ->
   try
      List = 
        lists:map(fun(U) when is_function(U, 0) ->
                        U();
                     (U) ->
                        U
                  end,  Uris),
      ok = ext_insert_collection(Uri, Uris),
      %Pids = [P || {ok,P} <- List],
      set_collection_pids(Uri, List),
      set_collection_status(Uri, active),
      ok
   catch
      _:E ->
         ?dbg("E",E),
         set_collection_status(Uri, failed),
         {error,failed}
   end.

try_unload_new(Uri,Obj) ->
   try
      Pid = get_pid(Uri),
      deactivate_collection_by_doc(Pid),
      Bin = term_to_binary(Obj, [{compressed,1},{minor_version, 2}]),
      ok = ext_insert(Uri, Bin),
      ets:update_element(?TAB(Uri), Uri, [{2,inactive},{3,undefined}]),
      ok
   catch
      _:_ ->
         ets:update_element(?TAB(Uri), Uri, [{2,inactive},{3,undefined}]),
         {error,failed}
   end.
