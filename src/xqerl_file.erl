%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017 Zachary N. Dean  All Rights Reserved.
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

%% @doc Helpers for collecting xml file names.

-module(xqerl_file).

-export([doc_file/1]).
-export([rec_list_dir/1]).

doc_file(File) ->
   {ok, Io} = file:open(File, [compressed, read]),
   Bin = read(Io),
   ok = file:close(Io),
   binary_to_term(Bin).

read(Io) ->
   case file:read(Io, 100000) of
      {ok,Data} ->
         <<(list_to_binary(Data))/binary, (read(Io))/binary>>;
      eof ->
         <<>>
   end.


%% {ok, [List]}
rec_list_dir(Dir) ->
   rec_list_dir(Dir, true).

rec_list_dir(Dir, FilesOnly) ->
    case filelib:is_file(Dir) of
        true ->
            case filelib:is_dir(Dir) of
                true -> {ok, rec_list_dir([Dir], FilesOnly, [])};
                false -> {error, enotdir}
            end;
        false -> {error, enoent}
    end.

rec_list_dir([], _FilesOnly, Acc) -> lists:reverse(Acc) ;
rec_list_dir([Path|Paths], FilesOnly, Acc) ->
    rec_list_dir(Paths, FilesOnly,
        case filelib:is_dir(Path) of
            false -> 
               case is_xml(Path) of
                  true ->
                     [Path | Acc];
                  _ ->
                     Acc
               end;
            true ->
                {ok, Listing} = file:list_dir(Path),
                SubPaths = [filename:join(Path, Name) || Name <- Listing],
                rec_list_dir(SubPaths, FilesOnly,
                    case FilesOnly of
                        true -> Acc;
                        _ -> [Path | Acc]
                    end)
        end).

is_xml(Path) ->
  filename:extension(Path) == ".xml".
