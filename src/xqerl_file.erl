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

-include("xqerl.hrl").

-export([doc_file/1]).
-export([rec_list_dir/1]).
-export([bin_to_utf8/1]).
-export([bin_to_utf8/2]).


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



bin_to_utf8(<<>>) ->
    ?err('FOUT1200'); 
bin_to_utf8(Binary) ->
   case unicode:bom_to_encoding(Binary) of
      % no BOM UTF-8 assumed
      {latin1, 0} ->
         case unicode:characters_to_list(Binary, utf8) of
            {error,_,_} ->
               ?err('FOUT1190');
            {incomplete,_,_} ->
               ?err('FOUT1190');
            List ->
               valid_unicode(List)
         end;
      {Enc, L} ->
         ?dbg("Enc",Enc),
         <<_:L/binary, Bin/binary>> = Binary,
         case unicode:characters_to_list(Bin, Enc) of
            {error,_,_} ->
               ?err('FOUT1190');
            {incomplete,_,_} ->
               ?err('FOUT1190');
            List ->
               valid_unicode(List)
         end
    end.

bin_to_utf8(<<>>,_) ->
    ?err('FOUT1200'); 
bin_to_utf8(Binary,Enc) ->
   Enc1 = case string:lowercase(Enc) of
             "utf-8" ->
                utf8;
             "utf-16" ->
                utf16;
             _ ->
                ?err('FOUT1190')
          end,  
   case unicode:characters_to_list(Binary, Enc1) of
      {error,_,_} ->
         ?err('FOUT1190');
      {incomplete,_,_} ->
         ?err('FOUT1190');
      List ->
         valid_unicode(List)
   end.

valid_unicode([]) -> [];
valid_unicode([H|_T]) when H == 16#FFFE;
                           H == 16#FFFF;
                           H == 0 ->
  ?err('FOUT1190');
valid_unicode([H|T]) ->
  [H|valid_unicode(T)].

