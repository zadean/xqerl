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

-module(xqldb_uri).

%% ====================================================================
%% API functions
%% ====================================================================
-export([join/2,
         split_uri/1,
         filename_to_uri/1,
         filename_to_uri/2]).

join(BaseUri, RelPath) ->
   #{path := Path} = Map = uri_string:parse(BaseUri),
   J = filename:join(Path, RelPath),
   uri_string:normalize(Map#{path := J}).

% splits a uri to {directory, file}
split_uri(Uri) ->
   #{path := Path} = Map = uri_string:parse(Uri),
   Map1 = ensure_case(Map),
   {Flat,File} = flatten_file_path_name(Path),
   {uri_string:recompose(Map1#{path := Flat}), File}.

% Turns Filename /path/to/file.txt into a URI file:///path/to/file.txt
% c:/path/to/file.txt -> file:///path/to/file.txt
% c:\path\to\file.txt -> file:///path/to/file.txt
% /c:/path/to/file.txt -> file:///path/to/file.txt
% /path/to/file.txt -> file:///path/to/file.txt
% path/to/file.txt -> file:///current/working/directory/path/to/file.txt
% using cwd for relative filenames
filename_to_uri(Filename) when is_binary(Filename) ->
   Abs = absname(Filename),
   filename_to_uri_1(Abs);
filename_to_uri(Filename) when is_list(Filename) ->
   B = filename_to_uri(unicode:characters_to_binary(Filename)),
   unicode:characters_to_list(B).

% Turns Filename /path/to/file.txt into a URI file:///path/to/file.txt
% using Dir for relative filenames
filename_to_uri(Filename, Dir) when is_binary(Filename) ->
   Abs = absname(Filename, Dir),
   filename_to_uri_1(Abs);
filename_to_uri(Filename, Dir) when is_list(Filename) ->
   B = filename_to_uri(unicode:characters_to_binary(Filename), Dir),
   unicode:characters_to_list(B).

%% ====================================================================
%% Internal functions
%% ====================================================================

filename_to_uri_1(Abs) ->
   uri_string:normalize(#{scheme => <<"file">>,
                          host => <<>>,
                          path => Abs}).

ensure_case(#{host := Host} = Map) ->
   ensure_case_scheme(Map#{host := string:lowercase(Host)});
ensure_case(Map) ->
   ensure_case_scheme(Map).

ensure_case_scheme(#{scheme := Scheme} = Map) ->
   Map#{scheme := string:lowercase(Scheme)};
ensure_case_scheme(Map) ->
   Map.

flatten_file_path(AbsFilename) ->
   Split = filename:split(AbsFilename),
   Parts = flatten_file_path(Split, []),
   filename:join(Parts).
   
flatten_file_path_name(AbsFilename) ->
   Split = filename:split(AbsFilename),
   Parts = flatten_file_path(Split, []),
   case Parts of
      [Name] ->
         {<<"/">>, Name};
      [<<"/">>, Name] ->
         {<<"/">>, Name};
      _ ->
         Head = filename:join(lists:droplast(Parts)),
         {<<Head/binary,"/">>, lists:last(Parts)}
   end.
   
flatten_file_path([<<"..">>|T], [_|Acc]) ->
   flatten_file_path(T, Acc);
flatten_file_path([<<".">>|T], Acc) ->
   flatten_file_path(T, Acc);
flatten_file_path([H|T], Acc) ->
   flatten_file_path(T, [H|Acc]);
flatten_file_path([], Acc) -> lists:reverse(Acc).

absname(Filename) ->
   flatten_file_path(absname_(filename:absname(Filename))).

absname(Filename, Cwd) -> 
   flatten_file_path(absname_(filename:absname(Filename, Cwd))).

absname_(<<$/,C,$:,$/,Rest/binary>>) 
   when C >= $A andalso C =< $Z;
        C >= $a andalso C =< $z ->
   <<$/,Rest/binary>>;
absname_(<<C,$:,$/,Rest/binary>>) 
   when C >= $A andalso C =< $Z;
        C >= $a andalso C =< $z ->
   <<$/,Rest/binary>>;
absname_(Bin) -> Bin.
   
                                       
