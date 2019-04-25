%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2019 Zachary N. Dean  All Rights Reserved.
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
-module(xqldb_dml).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================

-export([analyze/1]).


-export([select_paths/1,
         select_collection/1,
         delete_collection/1,
         import_from_directory/2,
         insert_doc_as_collection/3]).

%% Generic
-export([%exists/1,
         select/1%,
         %insert/2,
         %delete/1
        ]).

%% XML
-export([exists_doc/1,
         select_doc/1,
         insert_doc/2,
         delete_doc/1]).

%% JSON
-export([exists_json_doc/1,
         select_json_doc/1,
         insert_json_doc/2,
         delete_json_doc/1]).

%% Text/Binary Resource - Internal/External
-export([exists_resource/1,
         select_resource/1,
         insert_resource/2,
         delete_resource/1,
         link_resource/2]).

%% XDM Values
-export([exists_item/1,
         select_item/1,
         insert_item/2,
         delete_item/1]).

-define(ENSURE_BIN(Mod), Mod(DocUri) when is_list(DocUri) ->
   Mod(unicode:characters_to_binary(DocUri))).
-define(ENSURE_BIN2(Mod), Mod(DocUri, Arg2) when is_list(DocUri) ->
   Mod(unicode:characters_to_binary(DocUri), Arg2)).
-define(ENSURE_BIN3(Mod), Mod(DocUri, Arg2, Arg3) when is_list(DocUri) ->
   Mod(unicode:characters_to_binary(DocUri), Arg2, Arg3)).

select_paths(Uri) ->
   DBs = xqldb_db:databases(Uri),
   Fun = fun(DB) ->
               PathPid = ?PATH_TABLE_P(DB),
               DbUri = xqldb_path_table:uri(PathPid),
               [xqldb_uri:join(DbUri, element(1, Rec)) 
               || Rec <- xqldb_path_table:all(PathPid)]
         end,
   lists:flatmap(Fun, DBs).

select_collection(Uri) ->
   DBs = xqldb_db:databases(Uri),
   G = fun({N,xml,Sp}, #{db_name := DbPid}) ->
             NodeId = {DbPid, {N, Sp}, <<>>},
             xqldb_nodes:get_doc(NodeId);
          ({_,link,_,Filename}, _) ->
             {ok, Bin} = file:read_file(Filename),
             Bin;
          ({_,json,_,{Pos,Len}}, DB) ->
             xqldb_json_objs:build_object(DB, Pos, Len);
          ({_,res,_,{Pos,Len}}, DB) ->
             xqldb_resource_table:get(?RESOURCES_TABLE_P(DB), {Pos,Len});
          ({_,item,_,{Pos,Len}}, DB) ->
             Res = xqldb_resource_table:get(?RESOURCES_TABLE_P(DB), {Pos,Len}),
             binary_to_term(Res, [safe]);
          (Other, _) ->
             ?dbg("Other",Other),
             Other
       end,         
             
   Fun = fun(DB) ->
               [G(P, DB) || P <- xqldb_path_table:all(?PATH_TABLE_P(DB))]
         end,
   lists:flatmap(Fun, DBs).

delete_collection(Uri) ->
   DBs = xqldb_db:databases(Uri),
   _ = [begin
         xqldb_path_table:delete_all(?PATH_TABLE_P(DB), DB)
        end || DB <- DBs],
   ok.
   
%xqldb_structure_index:incr_counts(?STRUCT_INDEX_P(DB), Counts),
analyze(DocUri) when is_binary(DocUri) ->
   {DbUri,_Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> {error, not_exists};
      true ->
         DB = xqldb_db:database(DbUri),
         xqldb_structure_index:analyze(?STRUCT_INDEX_P(DB))
   end;
?ENSURE_BIN(analyze).

select(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> {error, not_exists};
      true ->
         DB = xqldb_db:database(DbUri),
         case xqldb_path_table:lookup(?PATH_TABLE_P(DB), Name) of
            {xml, Stamp} ->
               DBId = maps:get(db_name, DB),
               NodeId = {DBId, {Name, Stamp}, <<>>},
               xqldb_nodes:get_doc(NodeId);
            {item, _Stamp, {Pos, Len}} ->
               Res = xqldb_resource_table:get(?RESOURCES_TABLE_P(DB), {Pos, Len}),
               binary_to_term(Res, [safe]);
            {link, _Stamp, FileName} ->
               {ok, Bin} = file:read_file(FileName),
               Bin;
            {res,  _Stamp, {Pos, Len}} ->
               xqldb_resource_table:get(?RESOURCES_TABLE_P(DB), {Pos, Len});
            {json, _Stamp, {Pos, Len}} ->
               xqldb_json_objs:build_object(DB, Pos, Len);
            _ ->
               {error, not_exists}
         end
   end;
?ENSURE_BIN(select).

exists_doc(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db_server:info(DbUri) of
      {error, not_exists} -> false;
      {closed, _, _} -> 
         _ = xqldb_db:open(DbUri),
         timer:sleep(1),
         exists_doc(DocUri);
      {opening, _, _} -> 
         timer:sleep(1),
         exists_doc(DocUri);
      _ -> 
         #{paths := Paths} = xqldb_db:database(DbUri),
         xqldb_path_table:lookup(Paths, Name) =/= []
   end;
?ENSURE_BIN(exists_doc).

select_doc(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> {error, not_exists};
      true ->
         #{paths   := Paths,
           db_name := DBId} = xqldb_db:database(DbUri),
         case xqldb_path_table:lookup(Paths, Name) of
            {xml,Stamp} ->
               NodeId = {DBId, {Name,Stamp}, <<>>},
               xqldb_nodes:get_doc(NodeId);
            _ ->
               {error, not_exists}
         end
   end;
?ENSURE_BIN(select_doc).

insert_doc(DocUri, Filename) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   {Agent, _} = locks:begin_transaction(),
   _ = locks:lock(Agent, [DbUri,Name]),
   #{paths := Paths} = DB = xqldb_db:database(DbUri),
   case xqldb_path_table:lookup(Paths, Name) of
      [] -> 
         Stamp = erlang:system_time(),
         ok = xqldb_sax:parse_file(DB,Filename,Name,Stamp),
         xqldb_path_table:insert(Paths, {Name, xml, Stamp}),
         locks:end_transaction(Agent);
      _ ->
         locks:end_transaction(Agent)
   end;
?ENSURE_BIN2(insert_doc).

delete_doc(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> ok;
      true ->
         #{paths := Paths} = xqldb_db:database(DbUri),
         xqldb_path_table:delete(Paths, Name)
   end;
?ENSURE_BIN(delete_doc).

exists_json_doc(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> false;
      true ->
         #{paths := Paths} = xqldb_db:database(DbUri),
         case xqldb_path_table:lookup(Paths, Name) of
            [{json,_,_}] -> true;
            _ -> false
         end
   end;
?ENSURE_BIN(exists_json_doc).

select_json_doc(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> {error, not_exists};
      true ->
         DB = xqldb_db:database(DbUri),
         case xqldb_path_table:lookup(?PATH_TABLE_P(DB), Name) of
            {json, _Stamp, {Pos, Len}} ->
               xqldb_json_objs:build_object(DB, Pos, Len);
            _ ->
               {error, not_exists}
         end
   end;
?ENSURE_BIN(select_json_doc).

insert_json_doc(DocUri, String) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> {error, not_exists};
      true ->
         DB = xqldb_db:database(DbUri),
         case xqldb_json_objs:string_to_json_bin(String) of
            Bin when is_binary(Bin) ->
               PosSize = xqldb_json_table:insert(?JSON_TABLE_P(DB), Bin),
               Stamp = erlang:system_time(),
               xqldb_path_table:insert(?PATH_TABLE_P(DB), {Name,json,PosSize,Stamp});
            Error ->
               Error
         end
   end;
?ENSURE_BIN2(insert_json_doc).

delete_json_doc(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> ok;
      true ->
         DB = xqldb_db:database(DbUri),
         xqldb_path_table:delete(?PATH_TABLE_P(DB), {Name, json})
   end;
?ENSURE_BIN(delete_json_doc).


exists_resource(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> false;
      true ->
         DB = xqldb_db:database(DbUri),
         case xqldb_path_table:lookup(?PATH_TABLE_P(DB), Name) of
            {res,_,_} ->
               true;
            {link,_,_} ->
               true;
            _ ->
               false
         end
   end;
?ENSURE_BIN(exists_resource).

select_resource(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> 
         try
            Fn = xqldb_lib:uri_to_filename(DocUri),
            {ok, Bin} = file:read_file(Fn),
            Bin
         catch
            _:_ ->
               {error, not_exists}
         end;
      true ->
         DB = xqldb_db:database(DbUri),
         case xqldb_path_table:lookup(?PATH_TABLE_P(DB), Name) of
            {res,_,PosSize} ->
               xqldb_resource_table:get(?RESOURCES_TABLE_P(DB), PosSize);
            {link,_,Filename} ->
               {ok, Bin} = file:read_file(Filename),
               Bin;
            [] ->
               try
                  Fn = xqldb_lib:uri_to_filename(DocUri),
                  {ok, Bin} = file:read_file(Fn),
                  Bin
               catch
                  _:_ ->
                     {error, not_exists}
               end
         end
   end;
?ENSURE_BIN(select_resource).

insert_resource(DocUri, Bin) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   {Agent, _} = locks:begin_transaction(),
   _ = locks:lock(Agent, [DbUri,Name]),
   #{paths := Paths,
     resources := Resources} = xqldb_db:database(DbUri),
   case xqldb_path_table:lookup(Paths, Name) of
      [] -> 
         Stamp = erlang:system_time(),
         PosSize = xqldb_resource_table:insert(Resources, Bin),
         xqldb_path_table:insert(Paths, {Name, res, Stamp, PosSize}),
         locks:end_transaction(Agent);
      _ ->
         locks:end_transaction(Agent)
   end;
?ENSURE_BIN2(insert_resource).

delete_resource(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> ok;
      true ->
         DB = xqldb_db:database(DbUri),
         _ = xqldb_path_table:delete(?PATH_TABLE_P(DB), {Name, res}),
         xqldb_path_table:delete(?PATH_TABLE_P(DB), {Name, link})
   end;
?ENSURE_BIN(delete_resource).

link_resource(DocUri, Filename) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   DB = case xqldb_db:exists(DbUri) of
           false -> 
              _ = xqldb_db:open(DbUri),
              xqldb_db:database(DbUri);
           true ->
              xqldb_db:database(DbUri)
        end,
   Bin = unicode:characters_to_binary(Filename),
   PosSize = xqldb_resource_table:insert(?RESOURCES_TABLE_P(DB), Bin),
   Stamp = erlang:system_time(),
   xqldb_path_table:insert(?PATH_TABLE_P(DB), {Name, link, PosSize, Stamp});
?ENSURE_BIN2(link_resource).

exists_item(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> false;
      true ->
         DB = xqldb_db:database(DbUri),
         case xqldb_path_table:lookup(?PATH_TABLE_P(DB), {Name, item}) of
            [_] ->
               true;
            _ ->
               false
         end
   end;
?ENSURE_BIN(exists_item).

select_item(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> {error, not_exists};
      true ->
         DB = xqldb_db:database(DbUri),
         case xqldb_path_table:lookup(?PATH_TABLE_P(DB), {Name, item}) of
            [PosSize] ->
               Res = xqldb_resource_table:get(?RESOURCES_TABLE_P(DB), PosSize),
               binary_to_term(Res, [safe]);
            [] ->
               {error, not_exists}
         end
   end;
?ENSURE_BIN(select_item).

insert_item(DocUri, Item) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   DB = case xqldb_db:exists(DbUri) of
           false -> 
              _ = xqldb_db:open(DbUri),
              xqldb_db:database(DbUri);
           true ->
              xqldb_db:database(DbUri)
        end,
   Stamp = erlang:system_time(),
   Bin = term_to_binary(Item),
   PosSize = xqldb_resource_table:insert(?RESOURCES_TABLE_P(DB), Bin),
   xqldb_path_table:insert(?PATH_TABLE_P(DB), {Name, item, Stamp, PosSize});
?ENSURE_BIN2(insert_item).

delete_item(DocUri) when is_binary(DocUri) ->
   {DbUri,Name} = xqldb_uri:split_uri(DocUri),
   case xqldb_db:exists(DbUri) of
      false -> ok;
      true ->
         DB = xqldb_db:database(DbUri),
         xqldb_path_table:delete(?PATH_TABLE_P(DB), Name)
   end;
?ENSURE_BIN(delete_item).


insert_doc_as_collection(DocUri, Filename, BasePath) when is_binary(DocUri) ->
   ReplyTo = self(),
   {DbUri, Name} = xqldb_uri:split_uri(DocUri),
   DB = case xqldb_db:exists(DbUri) of
           false -> 
              _ = xqldb_db:open(DbUri),
              xqldb_db:database(DbUri);
           true ->
              xqldb_db:database(DbUri)
        end,
   PathTab = ?PATH_TABLE_P(DB),
   InsFun = fun(Events) ->
                  F = fun() ->
                            Self = self(),
                            uuid:new(Self),
                            UUID = uuid:get_v4_urandom(),
                            NName = uuid:uuid_to_string(UUID, binary_standard),
                            Name1 = <<Name/binary,$-,NName/binary>>,
                            Stamp = erlang:system_time(),
                            xqldb_sax:parse_list(DB, Events, Name1,Stamp),
                            _ = xqldb_path_table:insert(PathTab, {Name1, xml, Stamp}),
                            ReplyTo ! {Self, done} 
                      end,
                  erlang:spawn_link(F)                                               
            end,
   Path = path_to_stack(BasePath),
   xqldb_sax:split_parse_file(Filename, InsFun, Path);
?ENSURE_BIN3(insert_doc_as_collection).


import_from_directory(BaseUri, Directory) when is_list(Directory) ->
   Dir = filename:absname(Directory),
   % all relative filenames
   All = filelib:wildcard("**/*.xml", Dir),
   Grouped = group(All, dict:new(), Dir, list_to_binary(BaseUri)),
   Parent = self(),
   Fun = fun(DbUri, Vals, Acc) ->
               DB = case xqldb_db:exists(DbUri) of
                       true ->
                          xqldb_db:database(DbUri);
                       false ->
                          {ok, _, _} = xqldb_db:open(DbUri),
                          xqldb_db:database(DbUri)
                    end,
               Fun1 = fun() ->
                            {Agent, _} = locks:begin_transaction(),
                            % lock entire database
                            {ok, _} = locks:lock(Agent, [DbUri]),
                            [try
                                Stamp = erlang:system_time(),
                                xqldb_sax:parse_file(DB, FN, Name, Stamp),
                                _ = xqldb_path_table:insert(?PATH_TABLE_P(DB), {Name, xml, Stamp}),
                                ok
                             catch _:_ -> ok
                             end ||
                             {FN,Name} <- Vals],
                            locks:end_transaction(Agent),
                            Parent ! {done, self(), DbUri}
                      end,
               Child = erlang:spawn(Fun1),
               [{Child, DbUri}|Acc] 
         end,
   Uris = dict:fold(Fun, [], Grouped),
   collect_uris(Uris).


%% ====================================================================
%% Internal functions
%% ====================================================================

collect_uris([]) -> ok;
collect_uris([{Pid, Uri}|T]) -> 
   receive
      {done, Pid, Uri} ->
         collect_uris(T)
   after 
      600000 -> 
         erlang:exit(Pid, timeout),
         collect_uris(T)
   end.

   



path_to_stack(Path) when is_binary(Path) ->
   path_to_stack(binary_to_list(Path));
path_to_stack(Path) when is_list(Path) ->
   Split = filename:split(Path),
   compile_stack(Split, []).

compile_stack(["/"|Ts], Acc) ->
   compile_stack(Ts, [document|Acc]);
compile_stack([QName|Ts], Acc) ->
   case string:split(QName, ":") of
      [Prefix, Name] ->
         compile_stack(Ts, [{element, Prefix, Name}|Acc]);
      [Name] ->
         compile_stack(Ts, [{element, [], Name}|Acc])
   end;
compile_stack([], Acc) ->
  Acc.

 
% startDocument
% {startElement, _UriS, LocalNameS, {PrefixS,_}, _Attributes}


group([], Dict, _, _) -> Dict;
group([F|Fs], Dict, FileDir, BaseUri0) ->
   BaseUri = case binary:last(BaseUri0) of
                $/ ->
                   BaseUri0;
                _ ->
                   <<BaseUri0/binary,$/>>
             end,
   FileName = filename:join([FileDir, F]),
   DocUri = xqldb_lib:join_uris(BaseUri, unicode:characters_to_binary(F)),
   {DbUri, Name} = xqldb_uri:split_uri(DocUri),
   Value = {FileName, Name},
   group(Fs,dict:append(DbUri, Value, Dict), FileDir, BaseUri).

