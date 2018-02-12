%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2018 Zachary N. Dean  All Rights Reserved.
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

-export([read_uri/1]).
-export([doc_file/1]).
-export([rec_list_dir/1]).
-export([bin_to_utf8/1]).
-export([bin_to_utf8/2]).

read_uri(Uri) ->
   uri_get(Uri).

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

read_file(File) ->
   case file:read_file(File) of
      {ok, Bin} -> {ok, Bin};
      %{ok, bin_to_utf8(Bin)};
      {error, Reason} -> {error, Reason}
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
  filename:extension(Path) == ".xml" orelse filename:extension(Path) == ".xsd".



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

bin_to_utf8(Bin,[]) ->
   bin_to_utf8(Bin);
bin_to_utf8(<<>>,_) ->
    ?err('FOUT1200'); 
bin_to_utf8(Binary,Enc) ->
   Enc1 = case string:lowercase(Enc) of
             "utf-8" ->
                utf8;
             "utf-16" ->
                utf16;
             E ->
                ?dbg("Encoding?",E),
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

valid_unicode(List) -> List.
%% %% remove for now 
%% valid_unicode([]) -> [];
%% valid_unicode([H|_T]) when H == 16#FFFE;
%%                            H == 16#FFFF;
%%                            H == 0 ->
%%   ?err('FOUT1190');
%% valid_unicode([H|T]) ->
%%   [H|valid_unicode(T)].


%% from edoc_lib for reading files at URI

%% @private
is_relative_uri([$: | _]) ->
    false;
is_relative_uri([$/, $/ | _]) ->
    false;
is_relative_uri([$/ | _]) ->
    true;
is_relative_uri([$? | _]) ->
    true;
is_relative_uri([$# | _]) ->
    true;
is_relative_uri([_ | Cs]) ->
    is_relative_uri(Cs);
is_relative_uri([]) ->
    true.

%% @private
uri_get("file:///" ++ Path) ->
    uri_get_file(Path);
uri_get("file://localhost/" ++ Path) ->
    uri_get_file(Path);
uri_get("file://" ++ Path) ->
    Msg = io_lib:format("cannot handle 'file:' scheme with "
         "nonlocal network-path: 'file://~ts'.",
         [Path]),
    {error, Msg};
uri_get("file:/" ++ Path) ->
    uri_get_file(Path);
uri_get("file:" ++ Path) ->
    Msg = io_lib:format("ignoring malformed URI: 'file:~ts'.", [Path]),
    {error, Msg};
uri_get("http:" ++ Path) ->
    uri_get_http("http:" ++ Path);
uri_get("ftp:" ++ Path) ->
    uri_get_ftp("ftp:" ++ Path);
uri_get("//" ++ Path) ->
    Msg = io_lib:format("cannot access network-path: '//~ts'.", [Path]),
    {error, Msg};
uri_get([C, $:, $/ | _]=Path) when C >= $A, C =< $Z; C >= $a, C =< $z ->
    uri_get_file(Path);  % special case for Windows
uri_get([C, $:, $\ | _]=Path) when C >= $A, C =< $Z; C >= $a, C =< $z ->
    uri_get_file(Path);  % special case for Windows
uri_get(URI) ->
    case is_relative_uri(URI) of
   true ->
       uri_get_file(URI);
   false ->
       Msg = io_lib:format("cannot handle URI: '~ts'.", [URI]),
       {error, Msg}
    end.

uri_get_file(File0) ->
    File = filename:join("/", File0),
    case read_file(File) of
   {ok, Text} ->
       {ok, Text};
   {error, R} ->
       {error, file:format_error(R)}
    end.

uri_get_ftp(URI) ->
    Msg = io_lib:format("cannot access ftp scheme yet: '~ts'.", [URI]),
    {error, Msg}.

uri_get_http(URI) ->
    %% Try using option full_result=false
    case catch {ok, httpc:request(get, {URI,[]}, [],
              [{full_result, false}])} of
   {'EXIT', _} ->
       uri_get_http_r10(URI);
   Result ->
       uri_get_http_1(Result, URI)
    end.

uri_get_http_r10(URI) ->
    %% Try most general form of request
    Result = (catch {ok, httpc:request(get, {URI,[]}, [], [])}),
    uri_get_http_1(Result, URI).

uri_get_http_1(Result, URI) ->
    case Result of
   {ok, {ok, {200, Text}}} when is_list(Text) ->
       %% new short result format
       {ok, Text};
   {ok, {ok, {Status, Text}}} when is_integer(Status), is_list(Text) ->
       %% new short result format when status /= 200
       Phrase = httpd_util:reason_phrase(Status),
       {error, http_errmsg(Phrase, URI)};
   {ok, {ok, {{_Vsn, 200, _Phrase}, _Hdrs, Text}}} when is_list(Text) ->
       %% new long result format
       {ok, Text};
   {ok, {ok, {{_Vsn, _Status, Phrase}, _Hdrs, Text}}} when is_list(Text) ->
       %% new long result format when status /= 200
       {error, http_errmsg(Phrase, URI)};
   {ok, {200,_Hdrs,Text}} when is_list(Text) ->
       %% old result format
       {ok, Text};
   {ok, {Status,_Hdrs,Text}} when is_list(Text) ->
       %% old result format when status /= 200
       Phrase = httpd_util:reason_phrase(Status),
       {error, http_errmsg(Phrase, URI)};
   {ok, {error, R}} ->
       Reason = inet:format_error(R),
       {error, http_errmsg(Reason, URI)};
   {ok, R} ->
       Reason = io_lib:format("bad return value ~tP", [R, 5]),
       {error, http_errmsg(Reason, URI)};
   {'EXIT', R} ->
       Reason = io_lib:format("crashed with reason ~tw", [R]),
       {error, http_errmsg(Reason, URI)};
   R ->
       Reason = io_lib:format("uncaught throw: ~tw", [R]),
       {error, http_errmsg(Reason, URI)}
    end.

http_errmsg(Reason, URI) ->
    io_lib:format("http error: ~ts: '~ts'", [Reason, URI]).
