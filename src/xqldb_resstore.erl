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
-module(xqldb_resstore).
-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([init/0]).

-export([insert/1,
         select/1,
         update/2,
         delete/1,
         %
         deactivate/2,
         %
         print/1,
         get_pid/1,
         exists/1
         ]).

-define(TAB(Uri),tab(Uri)).
-define(TAB1,list_to_atom(atom_to_list(?MODULE)++"1")).
-define(TAB2,list_to_atom(atom_to_list(?MODULE)++"2")).
-define(TAB3,list_to_atom(atom_to_list(?MODULE)++"3")).
-define(TAB4,list_to_atom(atom_to_list(?MODULE)++"4")).
-define(EXTTAB,xqldb_res).

print(Uri) ->
   {ok,Pid} = select(Uri),
   xqldb_res:query(Pid, []).

init() ->
   ets:new(?TAB1, [public,named_table]),
   ets:new(?TAB2, [public,named_table]),
   ets:new(?TAB3, [public,named_table]),
   ets:new(?TAB4, [public,named_table]),
   Ins = fun(Key) ->
               ets:insert(tab(Key), {Key,inactive,undefined})
         end,
   lists:foreach(Ins, ext_keys()).

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
                        {ok,Pid1} = xqldb_res:load(Bin),
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
                  {ok,Pid1} = xqldb_res:load(Bin),
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
            true -> catch xqldb_res:delete(Pid)
         end,
         ets:delete(?TAB(Uri), Uri),         
         ok
   end.

deactivate(Uri,Obj) ->
   try_unload_new(Uri,Obj).
   

%% ====================================================================
%% Internal functions
%% ====================================================================

add_new(Uri) ->
   ets:insert(?TAB(Uri), {Uri,undefined,undefined}).


% status :: active | inactive | failed | loading | updating
set_status(Uri,Status) ->
   ets:update_element(?TAB(Uri), Uri, {2,Status}).

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

set_pid(Uri,Pid) ->
   ets:update_element(?TAB(Uri), Uri, {3,Pid}).

get_pid(Uri) ->
   [{_,_,Pid}] = ets:lookup(?TAB(Uri), Uri),
   Pid.

exists(Uri) ->
   ets:lookup(?TAB(Uri), Uri) =/= [].


ext_delete(Uri) ->
   F = fun() -> mnesia:delete({?EXTTAB, Uri}) end,
   {atomic,R} = mnesia:transaction(F),
   R.

ext_insert(Uri,Obj) ->
   F = fun() -> mnesia:write(#?EXTTAB{uri = Uri, bin = Obj}) end,
   {atomic,R} = mnesia:transaction(F),
   R.

ext_select(Uri) ->
   Match = #?EXTTAB{uri = Uri, bin = '$1'},
   F = fun() ->
             [Obj] = mnesia:select(?EXTTAB,[{Match, [], ['$1']}]),
             Obj
       end,
   mnesia:ets(F).

ext_keys() ->
   Match = #?EXTTAB{uri = '$1', bin = '_'},
   F = fun() ->
             mnesia:select(?EXTTAB,[{Match, [], ['$1']}])
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
      {ok,Pid} = xqldb_res:load(U),
      {ok,Bin} = xqldb_res:export(Pid),
      ok = ext_insert(Uri, Bin),
      set_pid(Uri, Pid),
      set_status(Uri, active),
      ok
   catch
      _:_ ->
         set_status(Uri, failed),
         {error,failed}
   end;
try_load_new(Uri) ->
   try
      {ok,Pid} = xqldb_res:load(Uri),
      {ok,Bin} = xqldb_res:export(Pid),
      ok = ext_insert(Uri, Bin),
      set_pid(Uri, Pid),
      set_status(Uri, active),
      ok
   catch
      _:_ ->
         set_status(Uri, failed),
         {error,failed}
   end.

try_unload_new(Uri,Obj) ->
   try
      Bin = term_to_binary(Obj, [{compressed,1},{minor_version, 2}]),
      ok = ext_insert(Uri, Bin),
      ets:update_element(?TAB(Uri), Uri, [{2,inactive},{3,undefined}]),
      ok
   catch
      _:_ ->
         ets:update_element(?TAB(Uri), Uri, [{2,inactive},{3,undefined}]),
         {error,failed}
   end.
