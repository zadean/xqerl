%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2019 Zachary N. Dean  All Rights Reserved.
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

%% @doc Implementation of the "http://expath.org/ns/file" namespace.
%% TODO: Add serialization.
 
-module(xqerl_mod_expath_file).

-include("xqerl.hrl").
-include_lib("kernel/include/file.hrl").

-define(NS,<<"http://expath.org/ns/file">>).
-define(PX,<<"file">>).
-define(XL,<<"http://xqerl.org/xquery">>).
-define(ND,<<"non-deterministic">>).
-define(NDA,{annotation,{qname, ?XL, <<>>, ?ND},[]}).

%% 3 File Properties
-export([exists/2,
         is_dir/2,
         is_file/2,
         last_modified/2,
         size/2]).
%% 4 Input/Output
-export([append/3,
         append/4,
         append_binary/3,
         append_text/3,
         append_text/4,
         append_text_lines/3,
         append_text_lines/4,
         copy/3,
         create_dir/2,
         create_temp_dir/3,
         create_temp_dir/4,
         create_temp_file/3,
         create_temp_file/4,
         delete/2,
         delete/3,
         list/2,
         list/3,
         list/4,
         move/3,
         read_binary/2,
         read_binary/3,
         read_binary/4,
         read_text/2,
         read_text/3,
         read_text_lines/2,
         read_text_lines/3,
         write/3,
         write/4,
         write_binary/3,
         write_binary/4,
         write_text/3,
         write_text/4,
         write_text_lines/3,
         write_text_lines/4
        ]).
%% 5 Paths
-export([name/2,
         parent/2,
         children/2,
         path_to_native/2,
         path_to_uri/2,
         resolve_path/2
        ]).
%% 6 System Properties
-export([dir_separator/1,
         line_separator/1,
         path_separator/1,
         temp_dir/1,
         base_dir/1,
         current_dir/1
        ]).

-'module-namespace'({?NS,?PX}).
-namespaces([]).
-variables([]).
-functions([
%% 3 File Properties
 {{qname,?NS, ?PX,<<"exists">>}, 
  {xqSeqType, 'xs:boolean', one}, [?NDA], {'exists', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"is-dir">>}, 
  {xqSeqType, 'xs:boolean', one}, [?NDA], {'is_dir', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"is-file">>}, 
  {xqSeqType, 'xs:boolean', one}, [?NDA], {'is_file', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"last-modified">>}, 
  {xqSeqType, 'xs:dateTime', one}, [?NDA], {'last_modified', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"size">>}, 
  {xqSeqType, 'xs:integer', one}, [?NDA], {'size', 2}, 1, [{xqSeqType, 'xs:string', one}]},
%% 4 Input/Output
 {{qname,?NS, ?PX,<<"append">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'append', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'item', zero_or_many}]},
 {{qname,?NS, ?PX,<<"append">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'append', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'item', zero_or_many},{xqSeqType, 'item', one}]},
 {{qname,?NS, ?PX,<<"append-binary">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'append_binary', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:base64Binary', one}]},
 {{qname,?NS, ?PX,<<"append-text">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'append_text', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"append-text">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'append_text', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"append-text-lines">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'append_text_lines', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_many}]},
 {{qname,?NS, ?PX,<<"append-text-lines">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'append_text_lines', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"copy">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'copy', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"create-dir">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'create_dir', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"create-temp-dir">>}, 
  {xqSeqType, 'xs:string', one}, [?NDA], {'create_temp_dir', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"create-temp-dir">>}, 
  {xqSeqType, 'xs:string', one}, [?NDA], {'create_temp_dir', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"create-temp-file">>}, 
  {xqSeqType, 'xs:string', one}, [?NDA], {'create_temp_file', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"create-temp-file">>}, 
  {xqSeqType, 'xs:string', one}, [?NDA], {'create_temp_file', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"delete">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'delete', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"delete">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'delete', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:boolean', one}]},
 {{qname,?NS, ?PX,<<"list">>}, 
  {xqSeqType, 'xs:string', zero_or_many}, [?NDA], {'list', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"list">>}, 
  {xqSeqType, 'xs:string', zero_or_many}, [?NDA], {'list', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:boolean', one}]},
 {{qname,?NS, ?PX,<<"list">>}, 
  {xqSeqType, 'xs:string', zero_or_many}, [?NDA], {'list', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:boolean', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"move">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'move', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"read-binary">>}, 
  {xqSeqType, 'xs:base64Binary', one}, [?NDA], {'read_binary', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"read-binary">>}, 
  {xqSeqType, 'xs:base64Binary', one}, [?NDA], {'read_binary', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:integer', one}]},
 {{qname,?NS, ?PX,<<"read-binary">>}, 
  {xqSeqType, 'xs:base64Binary', one}, [?NDA], {'read_binary', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:integer', one},{xqSeqType, 'xs:integer', one}]},
 {{qname,?NS, ?PX,<<"read-text">>}, 
  {xqSeqType, 'xs:string', one}, [?NDA], {'read_text', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"read-text">>}, 
  {xqSeqType, 'xs:string', one}, [?NDA], {'read_text', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"read-text-lines">>}, 
  {xqSeqType, 'xs:string', zero_or_many}, [?NDA], {'read_text_lines', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"read-text-lines">>}, 
  {xqSeqType, 'xs:string', zero_or_many}, [?NDA], {'read_text_lines', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"write">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'write', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'item', zero_or_many}]},
 {{qname,?NS, ?PX,<<"write">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'write', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'item', zero_or_many},{xqSeqType, 'item', one}]},
 {{qname,?NS, ?PX,<<"write-binary">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'write_binary', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:base64Binary', one}]},
 {{qname,?NS, ?PX,<<"write-binary">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'write_binary', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:base64Binary', one},{xqSeqType, 'xs:integer', one}]},
 {{qname,?NS, ?PX,<<"write-text">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'write_text', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"write-text">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'write_text', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"write-text-lines">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'write_text_lines', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_many}]},
 {{qname,?NS, ?PX,<<"write-text-lines">>}, 
  {xqSeqType, 'empty-sequence', zero}, [?NDA], {'write_text_lines', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, 'xs:string', one}]},
%% 5 Paths
 {{qname,?NS, ?PX,<<"name">>}, 
  {xqSeqType, 'xs:string', one}, [?NDA], {'name', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"parent">>}, 
  {xqSeqType, 'xs:string', zero_or_one}, [?NDA], {'parent', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"children">>}, 
  {xqSeqType, 'xs:string', zero_or_many}, [?NDA], {'children', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"path-to-native">>}, 
  {xqSeqType, 'xs:string', one}, [?NDA], {'path_to_native', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"path-to-uri">>}, 
  {xqSeqType, 'xs:anyURI', one}, [?NDA], {'path_to_uri', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, ?PX,<<"resolve-path">>}, 
  {xqSeqType, 'xs:string', one}, [?NDA], {'resolve_path', 2}, 1, [{xqSeqType, 'xs:string', one}]},
%% 6 System Properties
 {{qname,?NS, ?PX,<<"dir-separator">>}, 
  {xqSeqType, 'xs:string', one}, [], {'dir_separator', 1}, 0, []},
 {{qname,?NS, ?PX,<<"line-separator">>}, 
  {xqSeqType, 'xs:string', one}, [], {'line_separator', 1}, 0, []},
 {{qname,?NS, ?PX,<<"path-separator">>}, 
  {xqSeqType, 'xs:string', one}, [], {'path_separator', 1}, 0, []},
 {{qname,?NS, ?PX,<<"temp-dir">>}, 
  {xqSeqType, 'xs:string', one}, [], {'temp_dir', 1}, 0, []},
 {{qname,?NS, ?PX,<<"base-dir">>}, 
  {xqSeqType, 'xs:string', zero_or_one}, [], {'base_dir', 1}, 0, []},
 {{qname,?NS, ?PX,<<"current-dir">>}, 
  {xqSeqType, 'xs:string', zero_or_one}, [], {'current_dir', 1}, 0, []}
]).

-define(str(D), D).
-define(intv(D), D).
-define(bool(D), D).
-define(bin(D), #xqAtomicValue{type = 'xs:base64Binary', value = D}).
-define(uri(D), #xqAtomicValue{type = 'xs:anyURI', value = D}).


%% 3 File Properties

%% 3.1 file:exists
%% Signature
%%    file:exists($path as xs:string) as xs:boolean
%% Rules
%%    Tests if the file or directory pointed by $path exists.
%% This function is -nondeterministic-.
exists(_, Path) when is_binary(Path) ->
   APath = filenameify(Path),
   ?bool(filelib:is_file(APath));
exists(Ctx,Path) ->
   exists(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 3.2 file:is-dir
%% Signature
%%    file:is-dir($path as xs:string) as xs:boolean
%% Rules
%%    Tests if $path points to a directory. On UNIX-based systems the 
%%    root and the volume roots are considered directories.
%% This function is -nondeterministic-.
is_dir(_, Path) when is_binary(Path) ->
   APath = filenameify(Path),
   ?bool(filelib:is_dir(APath));
is_dir(Ctx,Path) ->
   is_dir(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 3.3 file:is-file
%% Signature
%%    file:is-file($path as xs:string) as xs:boolean
%% Rules
%%    Tests if $path points to a file.
%% This function is -nondeterministic-.
is_file(_, Path) when is_binary(Path) ->
   APath = filenameify(Path),
   ?bool(filelib:is_regular(APath));
is_file(Ctx,Path) ->
   is_file(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 3.4 file:last-modified
%% Signature
%%    file:last-modified($path as xs:string) as xs:dateTime
%% Rules
%%    Returns the last modification time of a file or directory.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:not-found] is raised if $path does not exist.
%%    [file:io-error] is raised if any other error occurs.
last_modified(_, Path) when is_binary(Path) ->
   APath = filenameify(Path),
   case filelib:last_modified(APath) of
      0 -> err_not_found(APath);
      {{Y,M,D},{H,Mi,S}} ->
         DT = #xsDateTime{year = Y,
                          month = M,
                          day = D,
                          hour = H,
                          minute = Mi,
                          second = xqerl_numeric:decimal(S),
                          offset = xqerl_context:get_implicit_timezone()},
         Str = xqerl_datetime:to_string(DT, 'xs:dateTime'),
         #xqAtomicValue{type = 'xs:dateTime', 
                        value = DT#xsDateTime{string_value = Str}}
   end;
last_modified(Ctx,Path) ->
   last_modified(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 3.5 file:size
%% Signature
%%    file:size($file as xs:string) as xs:integer
%% Rules
%%    Returns the byte size of a file, or the value 0 for directories.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:not-found] is raised if $path does not exist.
%%    [file:io-error] is raised if any other error occurs.
size(_, Path) when is_binary(Path) ->
   APath = filenameify(Path),
   case filelib:file_size(APath) of
      0 ->
         case filelib:is_file(APath) of
            false -> 
               err_not_found(APath);
            true ->
               0
         end;
      Size ->
         case filelib:is_dir(APath) of
            true ->
               0;
            false ->
               Size
         end
   end;
size(Ctx,Path) ->
   size(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 4 Input/Output

%% 4.1 file:append
%% Signature
%%    file:append($file as xs:string,
%%                $items as item()*) as empty-sequence()
%%    file:append($file as xs:string,
%%                $items as item()*,
%%                $params as element(output:serialization-parameters)) as empty-sequence()
%% Rules
%%    Appends a sequence of items to a file. If the file pointed by 
%%       $file does not exist, a new file will be created.
%%    $params controls the way the $items items are serialized. The 
%%       semantics of $params is the same as for the fn:serialize function 
%%       in [XQuery and XPath Functions and Operators 3.0]. This consists 
%%       of an output:serialization-parameters element whose format is defined 
%%       in [XSLT and XQuery Serialization 3.0]. In contrast to fn:serialize, 
%%       the encoding stage will not be skipped by this function.
%%    The function returns the empty sequence if the operation is successful.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if the parent directory of $file does not exist.
%%    [file:is-dir] is raised if $file points to a directory.
%%    [file:io-error] is raised if any other error occurs.
%% NOTE: Params as item to allow map instead of element 
append(C, Path, Items) ->
   append(C, Path, Items, []).

append(C, Path, Items, Params) when is_binary(Path) ->
   File = filenameify(Path),
   Ser = xqerl_mod_fn:serialize(C, Items, Params),
   case file:open(File, [append,binary]) of
      {ok,Fd} ->
         case catch io:put_chars(Fd, Ser) of
            ok ->
               _ = file:close(Fd),
               [];
            _ ->
               _ = file:close(Fd),
               err_io_error(File)
         end;
      {error,eisdir} ->
         err_is_dir(File);
      {error,enotdir} ->
         err_no_dir(File);
      {error,enoent} ->
         err_no_dir(File);
      {error,_} ->
         err_io_error(File)
   end;
append(Ctx,File,Items,Params) ->
   append(Ctx,xqerl_types:cast_as(File, 'xs:string'),Items,Params).

%% 4.2 file:append-binary
%% Signature
%%    file:append-binary($file as xs:string,
%%                       $value as xs:base64Binary) as empty-sequence()
%% Rules
%%    Appends a Base64 item as binary to a file. If the file pointed by 
%%       $file does not exist, a new file will be created.
%%    The function returns the empty sequence if the operation is successful.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if the parent directory of $file does not exist.
%%    [file:is-dir] is raised if $file points to a directory.
%%    [file:io-error] is raised if any other error occurs.
append_binary(_, Path0, ?bin(Value)) when is_binary(Path0) ->
   Path = filenameify(Path0),
   case file:open(Path, [append,binary]) of
      {ok,Fd} ->
         case catch io:put_chars(Fd, Value) of
            ok ->
               _ = file:close(Fd),
               [];
            _ ->
               _ = file:close(Fd),
               err_io_error(Path)
         end;
      {error,eisdir} ->
         err_is_dir(Path);
      {error,enotdir} ->
         err_no_dir(Path);
      {error,enoent} ->
         err_no_dir(Path);
      {error,_} ->
         err_io_error(Path)
   end;
append_binary(Ctx,Path,Value) ->
   append_binary(Ctx,xqerl_types:cast_as(Path, 'xs:string'),
                     xqerl_types:cast_as(Value, 'xs:base64Binary')).

%% 4.3 file:append-text
%% Signature
%%    file:append-text($file as xs:string,
%%                     $value as xs:string) as empty-sequence()
%%    file:append-text($file as xs:string,
%%                     $value as xs:string,
%%                     $encoding as xs:string) as empty-sequence()
%% Rules
%%    Appends a string to a file. If the file pointed by $file does not exist, 
%%       a new file will be created.
%%    The optional parameter $encoding, if not provided, is considered to be UTF-8.
%%    The function returns the empty sequence if the operation is successful.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if the parent directory of $file does not exist.
%%    [file:is-dir] is raised if $file points to a directory.
%%    [file:unknown-encoding] is raised if $encoding is invalid or not 
%%       supported by the implementation.
%%    [file:io-error] is raised if any other error occurs.
append_text(Ctx,Path,Value) ->
   append_text(Ctx,Path,Value,?str(<<"UTF-8">>)).

append_text(_, Path0, Value, Encoding) when is_binary(Path0),
                                            is_binary(Value),
                                            is_binary(Encoding) ->
   Enc = get_encoding(Encoding),
   Path = filenameify(Path0),
   case file:open(Path, [append,binary,{encoding,Enc}]) of
      {ok,Fd} ->
         try
            % not a fan of this, but it is like this in the test-suite
            % BOM for every append...
            if Enc == utf16 -> ok = io:put_chars(Fd, [16#FEFF]);
               true -> ok
            end,
            ok = io:put_chars(Fd, Value),
            []
         catch
            _:_ ->
               err_io_error(Path)
         after
             _ = file:close(Fd)
         end;
      {error,eisdir} ->
         err_is_dir(Path);
      {error,enotdir} ->
         err_no_dir(Path);
      {error,enoent} ->
         err_no_dir(Path);
      {error, _Err} ->
         %?dbg("Err",Err),
         err_io_error(Path)
   end;
append_text(Ctx,Path,Value,Encoding) ->
   append_text(Ctx,xqerl_types:cast_as(Path, 'xs:string'),
                   xqerl_types:cast_as(Value, 'xs:string'),
                   xqerl_types:cast_as(Encoding, 'xs:string')).

%% 4.4 file:append-text-lines
%% Signature
%%    file:append-text-lines($file as xs:string,
%%                           $values as xs:string*) as empty-sequence()
%%    file:append-text-lines($file as xs:string,
%%                           $lines as xs:string*,
%%                           $encoding as xs:string) as empty-sequence()
%% Rules
%%    Appends a sequence of strings to a file, each followed by the 
%%       system-dependent newline character. If the file pointed by $file does 
%%       not exist, a new file will be created.
%%    The optional parameter $encoding, if not provided, is considered to be UTF-8.
%%    The function returns the empty sequence if the operation is successful.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if the parent directory of $file does not exist.
%%    [file:is-dir] is raised if $file points to a directory.
%%    [file:unknown-encoding] is raised if $encoding is invalid or not 
%%       supported by the implementation.
%%    [file:io-error] is raised if any other error occurs.
append_text_lines(Ctx,Path,Values) ->
   append_text_lines(Ctx,Path,Values,?str(<<"UTF-8">>)).

append_text_lines(_, Path0, Values, Encoding) when is_binary(Path0),
                                                   is_binary(Encoding) ->
   Enc = get_encoding(Encoding),
   Path = filenameify(Path0),
   case file:open(Path, [append,binary,{encoding,Enc}]) of
      {ok,Fd} ->
         W = fun(S) ->
                  write_line(Fd,S)
             end,
         ok = lists:foreach(W, l(Values)),
         _ = file:close(Fd),
         [];
      {error,eisdir} ->
         err_is_dir(Path);
      {error,enotdir} ->
         err_no_dir(Path);
      {error,enoent} ->
         err_no_dir(Path);
      {error,_} ->
         err_io_error(Path)
   end;
append_text_lines(Ctx,Path,Values,Encoding) ->
   append_text_lines(Ctx,xqerl_types:cast_as(Path, 'xs:string'),
                         Values,
                         xqerl_types:cast_as(Encoding, 'xs:string')).

%% 4.5 file:copy
%% Signature
%%    file:copy($source as xs:string,
%%              $target as xs:string) as empty-sequence()
%% Rules
%%    Copies a file or a directory given a source and a target path/URI. The 
%%    following cases may occur if $source points to a file:
%%       if $target does not exist, it will be created.
%%       if $target is a file, it will be overwritten.
%%       if $target is a directory, the file will be created in that directory 
%%          with the name of the source file. If a file already exists, it 
%%          will be overwritten.
%%    The following cases may occur if $source points to a directory:
%%       if $target does not exist, it will be created as directory, and all 
%%          files of the source directory are copied to this directory with 
%%          their existing local names.
%%       if $target is a directory, the source directory with all its files 
%%          will be copied into the target directory. At each level, if a 
%%          file already exists in the target with the same name as in the 
%%          source, it is overwritten. If a directory already exists in the 
%%          target with the same name as in the source, it is not removed, it 
%%          is recursed in place (if it does not exist, it is created before 
%%          recursing).
%%    Other cases will raise one of the errors listed below.
%%    The function returns the empty sequence if the operation is successful. 
%%    If an error occurs during the operation, no rollback to the original 
%%       state will be possible
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:not-found] is raised if the $source path does not exist.
%%    [file:exists] is raised if $source points to a directory and $target 
%%       points to an existing file.
%%    [file:no-dir] is raised if the parent directory of $source does not exist.
%%    [file:is-dir] is raised if $source points to a file and $target points 
%%       to a directory, in which a subdirectory exists with the name of the 
%%       source file.
%%    [file:io-error] is raised if any other error occurs.
copy(_, Source0, Target0) when is_binary(Source0),
                               is_binary(Target0) ->
   Source = filenameify(Source0),
   Target = filenameify(Target0),
   case filelib:is_file(Source) of
      false -> err_not_found(Source);
      true ->
         case filelib:is_regular(Source) of
            true -> 
               case filelib:is_dir(Target) of
                  true -> % copy file into directory 
                     NewTarget = filename:join(Target, filename:basename(Source)),
                     case filelib:is_dir(NewTarget) of
                        true -> % file to existing sub-directory
                           ?dbg("NewTarget is dir", NewTarget),
                           err_is_dir(NewTarget);
                        false ->
                           do_copy(Source, NewTarget)
                     end;
                  false -> % copy file to whatever 
                     do_copy(Source, Target)
               end;
            false -> % directory copy 
               case filelib:is_regular(Target) of
                  true -> % copy directory to existing file
                     err_exists(Target);
                  false ->
                     % check if target exists already
                     case filelib:is_dir(Target) of
                        true -> % copy directory into this directory 
                           NewTarget = filename:join(Target, filename:basename(Source)),
                           case filelib:is_dir(NewTarget) of
                              true -> % file to existing sub-directory
                                 ?dbg("NewTarget is dir", NewTarget),
                                 err_is_dir(NewTarget);
                              false ->
                                 do_rec_copy(Source, NewTarget)
                           end;
                        false ->
                           % Target does not exist, ensure base dir
                           case filelib:ensure_dir(Target) of
                              ok ->
                                 do_rec_copy(Source,Target);
                              {error,_} ->
                                 err_io_error(Target)
                           end
                     end
               end
         end
   end;
copy(Ctx,Source,Target) ->
   copy(Ctx,xqerl_types:cast_as(Source, 'xs:string'),
            xqerl_types:cast_as(Target, 'xs:string')).

%% 4.6 file:create-dir
%% Signature
%%    file:create-dir($dir as xs:string) as empty-sequence()
%% Rules
%%    Creates a directory, or does nothing if the directory already exists. 
%%    The operation will create all non-existing parent directories.
%%    The function returns the empty sequence if the operation is successful.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:exists] is raised if the specified path, or any of its parent 
%%       directories, points to an existing file.
%%    [file:io-error] is raised if any other error occurs.
create_dir(_, Dir0) when is_binary(Dir0) ->
   Dir = filenameify(Dir0),
   case filelib:ensure_dir(Dir) of
      ok ->
         case filelib:is_regular(Dir) of
            true ->
               err_exists(Dir);
            false ->
               case ensure_dir(Dir) of
                  ok ->
                     [];
                  {error, _} ->
                     err_io_error(Dir)
               end
         end;
      {error,enoent} ->
         err_exists(Dir);
      {error,enotdir} ->
         err_exists(Dir);
      {error,eexist} ->
         err_exists(Dir);
      {error,_} ->
         err_io_error(Dir)
   end;
create_dir(Ctx,Dir) ->
   create_dir(Ctx, xqerl_types:cast_as(Dir, 'xs:string')).

%% 4.7 file:create-temp-dir
%% Signature
%%    file:create-temp-dir($prefix as xs:string,
%%                         $suffix as xs:string) as xs:string
%%    file:create-temp-dir($prefix as xs:string,
%%                         $suffix as xs:string,
%%                         $dir as xs:string) as xs:string
%% Rules
%%    Creates a temporary directory and all non-existing parent directories 
%%       and returns the full path to the created directory.
%%    The temporary directory will not be automatically deleted after query 
%%       execution. It is guaranteed to not already exist when the 
%%       function is called.
%%    If $dir is not given, the directory will be created inside the 
%%       system-dependent default temporary-file directory.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if the specified directory does not exist or 
%%       points to a file.
%%    [file:io-error] is raised if any other error occurs.
create_temp_dir(Ctx,Prefix,Suffix) ->
   Dir = filename:basedir(user_cache, <<"xqerl">>),
   create_temp_dir(Ctx,Prefix,Suffix,?str(Dir)).

create_temp_dir(_, Prefix, Suffix, Dir) when is_binary(Prefix),
                                             is_binary(Suffix),
                                             is_binary(Dir) ->
   Name = <<Prefix/binary, 
            (integer_to_binary(erlang:phash2(make_ref())))/binary, 
            Suffix/binary>>,
   DirName = filename:join(Dir,Name),
   try
      ok = filelib:ensure_dir(DirName),
      ok = file:make_dir(DirName),
      ?str(filename:absname(DirName))
   catch
      _:_ ->
         err_io_error(DirName)
   end;
create_temp_dir(Ctx,Prefix,Suffix,Dir) ->
   create_temp_dir(Ctx,
                   xqerl_types:cast_as(Prefix, 'xs:string'),
                   xqerl_types:cast_as(Suffix, 'xs:string'),
                   xqerl_types:cast_as(Dir, 'xs:string')).

%% 4.8 file:create-temp-file
%% Signature
%%    file:create-temp-file($prefix as xs:string,
%%                          $suffix as xs:string) as xs:string
%%    file:create-temp-file($prefix as xs:string,
%%                          $suffix as xs:string,
%%                          $dir as xs:string) as xs:string
%% Rules
%%    Creates a temporary file and all non-existing parent directories and 
%%       returns the full path to the created file.
%%    The temporary file will not be automatically deleted after query 
%%       execution. It is guaranteed to not already exist when the 
%%       function is called.
%%    If $dir is not given, the directory will be created inside the 
%%       system-dependent default temporary-file directory.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if the specified does not exist or points to a file.
%%    [file:io-error] is raised if any other error occurs.
create_temp_file(Ctx,Prefix,Suffix) ->
   Dir = filename:basedir(user_cache, <<"xqerl">>),
   create_temp_file(Ctx,Prefix,Suffix,?str(Dir)).

create_temp_file(_, Prefix, Suffix, Dir) when is_binary(Prefix),
                                              is_binary(Suffix),
                                              is_binary(Dir) ->
   Name = <<Prefix/binary, 
            (integer_to_binary(erlang:phash2(make_ref())))/binary, 
            Suffix/binary>>,
   FileName = filename:join(Dir,Name),
   try
      ok = filelib:ensure_dir(FileName),
      {ok,Fd} = file:open(FileName, [write]),
      ok = file:close(Fd),
      ?str(filename:absname(FileName))
   catch
      _:_ ->
         err_io_error(FileName)
   end;
create_temp_file(Ctx,Prefix,Suffix,Dir) ->
   create_temp_file(Ctx,
                   xqerl_types:cast_as(Prefix, 'xs:string'),
                   xqerl_types:cast_as(Suffix, 'xs:string'),
                   xqerl_types:cast_as(Dir, 'xs:string')).

%% 4.9 file:delete
%% Signature
%%    file:delete($path as xs:string) as empty-sequence()
%%    file:delete($path as xs:string,
%%                $recursive as xs:boolean) as empty-sequence()
%% Rules
%%    Deletes a file or a directory from the file system.
%%    If the optional parameter $recursive is set to true(), sub-directories 
%%       will be deleted as well.
%%    The function returns the empty sequence if the operation is successful.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:not-found] is raised if $path does not exist.
%%    [file:is-dir] is raised if $file points to a non-empty directory.
%%    [file:io-error] is raised if any other error occurs.
delete(Ctx,Path) ->
   delete(Ctx,Path,?bool(false)).

delete(_, Path, Rec) when is_binary(Path),
                          is_boolean(Rec) -> 
   case filelib:is_file(Path) of
      false -> err_not_found(Path);
      true when Rec -> % recursive delete 
         case filelib:is_dir(Path) of
            true -> % recursive directory delete 
               do_rec_delete(Path);
            false -> % existing file delete
               case file:delete(Path) of
                  ok ->
                     [];
                  {error,_} -> % should only be 'eacces'
                     err_io_error(Path)
               end
         end;
      true -> % non-recursive delete
         case filelib:is_dir(Path) of
            true -> % fail on non-empty directory 
               case file:del_dir(Path) of
                  ok ->
                     [];
                  {error,eexist} ->
                     err_is_dir(Path);
                  {error,_} ->
                     err_io_error(Path)
               end;
            false -> % existing file delete
               case file:delete(Path) of
                  ok ->
                     [];
                  {error,_} -> % should only be 'eacces'
                     err_io_error(Path)
               end
         end
   end;
delete(Ctx,Path,Rec) -> 
   delete(Ctx,
          xqerl_types:cast_as(Path, 'xs:string'),
          xqerl_types:cast_as(Rec, 'xs:boolean')).

%% 4.10 file:list
%% Signature
%%    file:list($dir as xs:string) as xs:string*
%%    file:list($dir as xs:string,
%%              $recursive as xs:boolean) as xs:string*
%%    file:list($dir as xs:string,
%%              $recursive as xs:boolean,
%%              $pattern as xs:string) as xs:string*
%% Rules
%%    Lists all files and directories in a given directory. The order of the 
%%       items in the resulting sequence is not defined. The "." and ".." 
%%       items are never returned. The returned paths are relative to the 
%%       provided directory $dir.
%%    If the optional parameter $recursive is set to true(), all directories and
%%       files will be returned that are found while recursively traversing the 
%%       given directory.
%%    The optional $pattern parameter defines a name pattern in the glob 
%%       syntax. If this is provided, only the paths of the files and 
%%       directories whose names are matching the pattern will be returned.
%%    An implementation must support at least the following glob syntax for the 
%%       pattern:
%%          * for matching any number of unknown characters and
%%          ? for matching one unknown character.
%%    A related function is file:children.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if $dir does not point to an existing directory.
%%    [file:io-error] is raised if any other error occurs.
list(Ctx,Dir) ->
   list(Ctx,Dir,?bool(false)).

list(Ctx,Dir,Recursive) ->
   list(Ctx,Dir,Recursive,?str(<<"*">>)).

list(_, Dir, Recursive, Pattern) when is_binary(Dir),
                                      is_boolean(Recursive),
                                      is_binary(Pattern) ->
   case filelib:is_dir(Dir) of
      false -> err_no_dir(Dir);
      true ->
         try
            NDir = maybe_add_dir_sep(filename:nativename(Dir)),
            Rep = fun(Li) ->
                        binary:replace(
                          maybe_add_dir_sep(
                            filename:nativename(Li)), NDir, <<>>)
                  end,
            %?dbg("NDir",NDir),
            if Recursive ->
                  L = do_rec_list(Dir),
                  %?dbg("L",L),
                  [Rep(Li) || Li <- L];
               true ->
                  [Rep(Li) || Li <- file_wildcard(Pattern, Dir)]
            end
         catch
            _:_ ->
               err_io_error(Dir)
         end
   end;
list(Ctx,Dir,Recursive,Pattern) ->
   list(Ctx,
        xqerl_types:cast_as(Dir, 'xs:string'),
        xqerl_types:cast_as(Recursive, 'xs:boolean'),
        xqerl_types:cast_as(Pattern, 'xs:string')).

%% 4.11 file:move
%% Signature
%%    file:move($source as xs:string,
%%              $target as xs:string) as empty-sequence()
%% Rules
%%    Moves a file or a directory given a source and a target path/URI. 
%%    The following cases may occur if $source points to a file:
%%       if $target does not exist, it will be created.
%%       if $target is a file, it will be overwritten.
%%       if $target is a directory, the file will be created in that 
%%          directory with the name of the source file. If a file already 
%%          exists, it will be overwritten.
%%    The following cases may occur if $source points to a directory:
%%       if $target does not exist, it will be created as directory, and all 
%%          files of the source directory are moved to this directory with 
%%          their existing local names.
%%       if $target is a directory, the source directory with all its files 
%%          will be moved into the target directory. If the target directory 
%%          contains a directory with the same name as the source, the error 
%%          [file:is-dir] is raised.
%%    Other cases will raise one of the errors listed below.
%%    The function returns the empty sequence if the operation is successful. 
%%       If an error occurs during the operation, no rollback to the original 
%%       state will be possible
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:not-found] is raised if the $source path does not exist.
%%    [file:exists] is raised if $source points to a directory and $target 
%%       points to an existing file.
%%    [file:no-dir] is raised if the parent directory of $source does not exist.
%%    [file:is-dir] is raised if $target points to a directory, in which a 
%%       subdirectory exists with the name of the source.
%%    [file:io-error] is raised if any other error occurs.
move(_, Source, Target) when is_binary(Source),
                             is_binary(Target) ->
   case filelib:is_file(Source) of
      false -> err_not_found(Source);
      true ->
         NewTarget = case filelib:is_dir(Target) of
                        false -> Target;
                        true ->
                           B = filename:basename(Source),
                           filename:join(Target,B)
                     end,
         case file:rename(Source, NewTarget) of
            ok -> [];
            {error,eisdir} -> err_is_dir(NewTarget);
            {error,enotdir} -> err_no_dir(Source);
            {error,eexist} -> err_exists(Source);
            {error,_} -> err_io_error(Source)
         end
   end;
move(Ctx,Source,Target) ->
   move(Ctx,
        xqerl_types:cast_as(Source, 'xs:string'),
        xqerl_types:cast_as(Target, 'xs:string')).

%% 4.12 file:read-binary
%% Signature
%%    file:read-binary($file as xs:string) as xs:base64Binary
%%    file:read-binary($file as xs:string,
%%                     $offset as xs:integer) as xs:base64Binary
%%    file:read-binary($file as xs:string,
%%                     $offset as xs:integer,
%%                     $length as xs:integer) as xs:base64Binary
%% Rules
%%    Returns the content of a file in its Base64 representation.
%%    The optional parameters $offset and $length can be used to read chunks 
%%       of a file.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:not-found] is raised if $file does not exist.
%%    [file:is-dir] is raised if $file points to a directory.
%%    [file:out-of-range] is raised if $offset or $length is negative, or if 
%%       the chosen values would exceed the file bounds.
%%    [file:io-error] is raised if any other error occurs.
read_binary(_, File) when is_binary(File) ->
   case file:read_file(strip_scheme(File)) of
      {ok,Bin} ->
         ?bin(Bin);
      {error,enoent} ->
         err_not_found(File);
      {error,eisdir} ->
         err_is_dir(File);
      {error,_} ->
         err_io_error(File)
   end;
read_binary(Ctx,File) ->
   read_binary(Ctx,
               xqerl_types:cast_as(File, 'xs:string')).

read_binary(_, _, Offset) when is_integer(Offset), Offset < 0 ->
   err_out_of_range(Offset);
read_binary(_, File, Offset) when is_binary(File),
                                  is_integer(Offset) ->
   case file:open(strip_scheme(File), [read,binary]) of
      {ok,Fd} ->
         case do_read_from(Fd,Offset) of
            eof ->
               _ = file:close(Fd),
               err_out_of_range(Offset);
            {ok,Bin} ->
               _ = file:close(Fd),
               ?bin(Bin);
            {error,E} ->
               ?dbg("E",E),
               _ = file:close(Fd),
               err_io_error(File)
         end;
      {error,enoent} ->
         err_not_found(File);
      {error,eisdir} ->
         err_is_dir(File);
      {error,E} ->
         ?dbg("E",E),
         err_io_error(File)
   end;
read_binary(Ctx,File,Offset) ->
   read_binary(Ctx,
               xqerl_types:cast_as(File, 'xs:string'),
               xqerl_types:cast_as(Offset, 'xs:integer')).

read_binary(_, _, Offset, Length) when is_integer(Offset), Offset < 0;
                                       is_integer(Length), Length < 0 ->
   err_out_of_range(Offset);
read_binary(_, File, Offset, Length) when is_binary(File),
                                          is_integer(Offset),
                                          is_integer(Length) ->
   case file:open(strip_scheme(File), [read,binary]) of
      {ok,Fd} ->
         case file:pread(Fd, Offset, Length) of
            eof ->
               _ = file:close(Fd),
               err_out_of_range(Offset);
            {ok,Bin} when byte_size(Bin) < Length ->
               _ = file:close(Fd),
               err_out_of_range(Length);
            {ok,Bin} ->
               _ = file:close(Fd),
               ?bin(Bin);
            {error,_} ->
               _ = file:close(Fd),
               err_io_error(File)
         end;
      {error,enoent} ->
         err_not_found(File);
      {error,eisdir} ->
         err_is_dir(File);
      {error,_} ->
         err_io_error(File)
   end;
read_binary(Ctx,File,Offset,Length) ->
   read_binary(Ctx,
               xqerl_types:cast_as(File, 'xs:string'),
               xqerl_types:cast_as(Offset, 'xs:integer'),
               xqerl_types:cast_as(Length, 'xs:integer')).

%% 4.13 file:read-text
%% Signature
%%    file:read-text($file as xs:string) as xs:string
%%    file:read-text($file as xs:string,
%%                   $encoding as xs:string) as xs:string
%% Rules
%%    Returns the content of a file in its string representation.
%%    The optional parameter $encoding, if not provided, is considered to be UTF-8.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:not-found] is raised if $file does not exist.
%%    [file:is-dir] is raised if $file points to a directory.
%%    [file:unknown-encoding] is raised if $encoding is invalid or not 
%%       supported by the implementation.
%%    [file:io-error] is raised if any other error occurs.
read_text(Ctx,File) ->
   read_text(Ctx,File,?str(<<"UTF-8">>)).

read_text(_, File, Encoding) when is_binary(File), 
                                  is_binary(Encoding) ->
   Enc = get_encoding(Encoding),
   case file:open(strip_scheme(File), [read,read_ahead,binary,{encoding,Enc}]) of
      {ok,Fd} ->
         case do_read_from(Fd, 0) of
            {ok,Str} ->
               _ = file:close(Fd),
               ?str(Str);
            eof ->
               _ = file:close(Fd),
               ?str(<<>>);
            X ->
               _ = file:close(Fd),
               ?dbg("X",X),
               err_io_error(File)
         end;
      {error,enoent} ->
         err_not_found(File);
      {error,eisdir} ->
         err_is_dir(File);
      {error,enotdir} ->
         err_no_dir(File);
      {error,E} ->
         ?dbg("E",E),
         ?dbg("File",File),
         err_io_error(File)
   end;
read_text(Ctx,File,Encoding) ->
   read_text(Ctx,
             xqerl_types:cast_as(File, 'xs:string'),
             xqerl_types:cast_as(Encoding, 'xs:string')).

%% 4.14 file:read-text-lines
%% Signature
%%    file:read-text-lines($file as xs:string) as xs:string*
%%    file:read-text-lines($file as xs:string,
%%                         $encoding as xs:string) as xs:string*
%% Rules
%%    Returns the contents of a file as a sequence of strings, separated at 
%%       newline boundaries.
%%    The optional parameter $encoding, if not provided, is considered to be UTF-8.
%%    The newline handling is the same as for the fn:unparsed-text-lines 
%%       function in [XQuery and XPath Functions and Operators 3.0].
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:not-found] is raised if $file does not exist.
%%    [file:is-dir] is raised if $file points to a directory.
%%    [file:unknown-encoding] is raised if $encoding is invalid or not 
%%       supported by the implementation.
%%    [file:io-error] is raised if any other error occurs.
read_text_lines(Ctx,File) ->
   read_text_lines(Ctx,File,?str(<<"UTF-8">>)).

read_text_lines(_, File, Encoding) when is_binary(File),
                                        is_binary(Encoding) ->
   Enc = get_encoding(Encoding),
   case file:open(strip_scheme(File), [read,read_ahead,binary,{encoding,Enc}]) of
      {ok,Fd} ->
         case catch do_read_lines(Fd) of
            {ok,Strs} ->
               _ = file:close(Fd),
               [?str(Str) || Str <- Strs];
            _ ->
               _ = file:close(Fd),
               err_io_error(File)
         end;
      {error,enoent} ->
         err_not_found(File);
      {error,eisdir} ->
         err_is_dir(File);
      {error,enotdir} ->
         err_no_dir(File);
      {error,_} ->
         err_io_error(File)
   end;
read_text_lines(Ctx,File,Encoding) ->
   read_text_lines(Ctx,
                   xqerl_types:cast_as(File, 'xs:string'),
                   xqerl_types:cast_as(Encoding, 'xs:string')).

%% 4.15 file:write
%% Signature
%%    file:write($file as xs:string,
%%               $items as item()*) as empty-sequence()
%%    file:write($file as xs:string,
%%               $items as item()*,
%%               $params as element(output:serialization-parameters)) as empty-sequence()
%% Rules
%%    Writes a sequence of items to a file. If $file already exists, it will 
%%       be overwritten; otherwise, it will be created.
%%    $params controls the way the $items items are serialized. The semantics 
%%       of $params is the same as for the fn:serialize function in [XQuery 
%%       and XPath Functions and Operators 3.0]. This consists of an 
%%       output:serialization-parameters element whose format is defined in 
%%       [XSLT and XQuery Serialization 3.0]. In contrast to fn:serialize, the 
%%       encoding stage will not be skipped by this function.
%%    The function returns the empty sequence if the operation is successful.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if the parent directory of $file does not exist.
%%    [file:is-dir] is raised if $file points to a directory.
%%    [file:io-error] is raised if any other error occurs.
write(_, File, Items) when is_binary(File) ->
   case file:open(File, [write,binary]) of
      {ok,Fd} ->
         case catch io:put_chars(Fd, erlang:term_to_binary(Items)) of
            ok ->
               _ = file:close(Fd),
               [];
            _ ->
               _ = file:close(Fd),
               err_io_error(File)
         end;
      {error,eisdir} ->
         err_is_dir(File);
      {error,enotdir} ->
         err_no_dir(File);
      {error,enoent} ->
         err_no_dir(File);
      {error,_} ->
         err_io_error(File)
   end;
write(Ctx,File,Items) ->
   write(Ctx,xqerl_types:cast_as(File, 'xs:string'),Items).

-spec write(_,_,_,_) ->
   xq_types:xs_error().
write(_,_File,_Items,_Params) ->
   % serialization
   not_implemented().

%% 4.16 file:write-binary
%% Signature
%%    file:write-binary($file as xs:string,
%%                      $value as xs:base64Binary) as empty-sequence()
%%    file:write-binary($file as xs:string,
%%                      $value as xs:base64Binary,
%%                      $offset as xs:integer) as empty-sequence()
%% Rules
%%    Writes a Base64 item as binary to a file. If $file already exists, it 
%%       will be overwritten; otherwise, it will be created.
%%    If the optional parameter $offset is specified, data will be written to 
%%       this file position. An existing file may be resized by that operation.
%%    The function returns the empty sequence if the operation is successful.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if the parent directory of $file does not exist.
%%    [file:is-dir] is raised if $file points to a directory.
%%    [file:out-of-range] is raised if $offset is negative, or if it exceeds 
%%       the current file size.
%%    [file:io-error] is raised if any other error occurs.
write_binary(_, File, ?bin(Value)) when is_binary(File) ->
   % truncate the file if possible when no offset
   case file:open(File, [write,binary]) of
      {ok, Fd} ->
         try
            ok = file:write(Fd, Value),
            []
         catch
            _:_ ->
               err_io_error(File)
         after
             file:close(Fd)
         end;
      {error,eisdir} ->
         err_is_dir(File);
      {error,enotdir} ->
         err_no_dir(File);
      {error,enoent} ->
         err_no_dir(File);
      {error,_} ->
         err_io_error(File)
   end;
write_binary(Ctx, File, Value) ->
   write_binary(Ctx,xqerl_types:cast_as(File, 'xs:string'),
                    xqerl_types:cast_as(Value, 'xs:base64Binary')).


write_binary(_, _, _, Offset) when is_integer(Offset),
                                   Offset < 0->
   err_out_of_range(Offset);
write_binary(_, File, ?bin(Value), Offset) when is_binary(File),
                                                is_integer(Offset) ->
   case file:open(File, [write,read,binary]) of
      {ok,Fd} ->
         {ok, Size} = file:position(Fd, eof),
         if Offset > Size -> % out of bounds
               _ = file:close(Fd),
               err_out_of_range(Offset);
            true ->
               {ok, Offset} = file:position(Fd, Offset),
               try
                  ok = file:write(Fd, Value),
                  []
               catch
                  _:_ ->
                     err_io_error(File)
               after
                   file:close(Fd)
               end
         end;
      {error,eisdir} ->
         err_is_dir(File);
      {error,enotdir} ->
         err_no_dir(File);
      {error,enoent} ->
         err_no_dir(File);
      {error,_} ->
         err_io_error(File)
   end;
write_binary(Ctx,File,Value,Offset) ->
   write_binary(Ctx,xqerl_types:cast_as(File, 'xs:string'),
                    xqerl_types:cast_as(Value, 'xs:base64Binary'),
                    xqerl_types:cast_as(Offset, 'xs:integer')).

%% 4.17 file:write-text
%% Signature
%%    file:write-text($file as xs:string,
%%                    $value as xs:string) as empty-sequence()
%%    file:write-text($file as xs:string,
%%                    $value as xs:string,
%%                    $encoding as xs:string) as empty-sequence()
%% Rules
%%    Writes a strings to a file. If $file already exists, it will be overwritten.
%%    The optional parameter $encoding, if not provided, is considered to be UTF-8.
%%    The function returns the empty sequence if the operation is successful.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if the parent directory of $file does not exist.
%%    [file:is-dir] is raised if $file points to a directory.
%%    [file:unknown-encoding] is raised if $encoding is invalid or not 
%%       supported by the implementation.
%%    [file:io-error] is raised if any other error occurs.
write_text(Ctx,File,Value) ->
   write_text(Ctx,File,Value,?str(<<"UTF-8">>)).

write_text(_, File, Value, Encoding) when is_binary(File),
                                          is_binary(Value),
                                          is_binary(Encoding) ->
   Enc = get_encoding(Encoding),
   case file:open(strip_scheme(File), [write,binary,{encoding,Enc}]) of
      {ok,Fd} ->
         if Enc == utf16 -> ok = io:put_chars(Fd, [16#FEFF]);
            true -> ok
         end,
         ok = io:put_chars(Fd, Value),
         _ = file:close(Fd),
         [];
      {error,eisdir} ->
         err_is_dir(File);
      {error,enotdir} ->
         err_no_dir(File);
      {error,enoent} ->
         err_no_dir(File);
      {error,E} ->
         ?dbg("E",E),
         ?dbg("E",strip_scheme(File)),
         err_io_error(File)
   end;
write_text(Ctx,File,Value,Encoding) ->
   write_text(Ctx,xqerl_types:cast_as(File, 'xs:string'),
                  xqerl_types:cast_as(Value, 'xs:string'),
                  xqerl_types:cast_as(Encoding, 'xs:string')).

%% 4.18 file:write-text-lines
%% Signature
%%    file:write-text-lines($file as xs:string,
%%                          $values as xs:string*) as empty-sequence()
%%    file:write-text-lines($file as xs:string,
%%                          $values as xs:string*,
%%                          $encoding as xs:string) as empty-sequence()
%% Rules
%%    Writes a sequence of strings to a file, each followed by the 
%%       system-dependent newline character. If $file already exists, it will 
%%       be overwritten; otherwise, it will be created.
%%    The optional parameter $encoding, if not provided, is considered to be UTF-8.
%%    The function returns the empty sequence if the operation is successful.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if the parent directory of $file does not exist.
%%    [file:is-dir] is raised if $file points to a directory.
%%    [file:unknown-encoding] is raised if $encoding is invalid or not 
%%       supported by the implementation.
%%    [file:io-error] is raised if any other error occurs.
write_text_lines(Ctx,Path,Values) ->
   write_text_lines(Ctx,Path,Values,?str(<<"UTF-8">>)).

write_text_lines(_, Path, Values, Encoding) when is_binary(Path),
                                                 is_binary(Encoding) ->
   Enc = get_encoding(Encoding),
   case file:open(Path, [write,binary,{encoding,Enc}]) of
      {ok,Fd} ->
         W = fun(S) ->
                  write_line(Fd,S)
             end,
         ok = lists:foreach(W, l(Values)),
         _ = file:close(Fd),
         [];
      {error,eisdir} ->
         err_is_dir(Path);
      {error,enotdir} ->
         err_no_dir(Path);
      {error,enoent} ->
         err_no_dir(Path);
      {error,_} ->
         err_io_error(Path)
   end;
write_text_lines(Ctx,Path,Values,Encoding) ->
   write_text_lines(Ctx,xqerl_types:cast_as(Path, 'xs:string'),
                        Values,
                        xqerl_types:cast_as(Encoding, 'xs:string')).

%% 5 Paths
%% None of the functions in this section performs any check regarding the 
%%    existence of the received or returned paths.

%% 5.1 file:name
%% Signature
%%    file:name($path as xs:string) as xs:string
%% Rules
%%    Returns the name of a file or directory.
%%    An empty string is returned if the path points to the root directory, 
%%       or if it contains no directory separators.
%% This function is -deterministic- (no path existence check is made).
name(_, Path) when is_binary(Path) ->
   ?str(filename:basename(Path));
name(Ctx,Path) ->
   name(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 5.2 file:parent
%% Signature
%%    file:parent($path as xs:string) as xs:string?
%% Rules
%%    Transforms the given path into an absolute path, as specified by 
%%       file:resolve-path, and returns the parent directory.
%%    The inverse function is file:children.
%%    An empty sequence is returned if the path points to a root directory.
%% This function is -nondeterministic-.
parent(_, Path) when is_binary(Path) ->
   Stripped = strip_scheme(Path),
   Abs = filename:absname(Stripped),
   D = filename:dirname(Abs),
   if D == Abs -> % root
         [];
      true ->
         add_dir_sep(filename:nativename(D))
   end;
parent(Ctx,Path) ->
   parent(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 5.3 file:children
%% Signature
%%    file:children($path as xs:string) as xs:string*
%% Rules
%%    Returns the paths of all files and directories that are located in the 
%%       given directory. The order of the items in the resulting sequence is 
%%       not defined. The "." and ".." items are never returned.
%%    The inverse function is file:parent; a related function is file:list.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:no-dir] is raised if $path does not point to an existing directory.
%%    [file:io-error] is raised if any other error occurs.
children(_, Dir) when is_binary(Dir) ->
   case filelib:is_dir(Dir) of
      false -> err_no_dir(Dir);
      true ->
         try
            Rep = fun(Li) ->
                        maybe_add_dir_sep(
                          filename:nativename(Li))
                  end,
            [Rep(Li) || Li <- file_wildcard(<<"*">>, Dir)]
         catch
            _:_ ->
               err_io_error(Dir)
         end
   end;
children(Ctx, Dir) ->
   children(Ctx, xqerl_types:cast_as(Dir, 'xs:string')).

%% 5.4 file:path-to-native
%% Signature
%%    file:path-to-native($path as xs:string) as xs:string
%% Rules
%%    Transforms a URI, an absolute path, or relative path to a canonical, 
%%       system-dependent path representation. A canonical path is both 
%%       absolute and unique and thus contains no redirections such as 
%%       references to parent directories or symbolic links.
%%    If the resulting path points to a directory, it will be suffixed with 
%%       the system-specific directory separator.
%% This function is -nondeterministic-.
%% Error Conditions
%%    [file:not-found] is raised if $path does not exist.
%%    [file:io-error] is raised if an error occurs while trying to obtain the 
%%       native path.
path_to_native(_, Path) when is_binary(Path) ->
   APath = filenameify(Path),
   Native = filename:nativename(APath),
   case filelib:is_file(Native) of
      false ->
         err_not_found(Native);
      true ->
         case filelib:is_dir(Native) of
            true ->
               <<Native/binary, (get_dir_sep())/binary>>;
            false ->
               Native
         end
   end;
path_to_native(Ctx,Path) ->
   path_to_native(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 5.5 file:path-to-uri
%% Signature
%%    file:path-to-uri($path as xs:string) as xs:anyURI
%% Rules
%%    Transforms a file system path into a URI with the file:// scheme. If the 
%%       path is relative, it is first resolved against the current working 
%%       directory.
%% This function is -deterministic- (no path existence check is made).
path_to_uri(_, Path) when is_binary(Path) ->
   try
      EPath = filename:absname(Path),
      ?uri(xqldb_lib:filename_to_uri(EPath))
   catch
      _:_ ->
         err_invalid_path(Path)
   end;
path_to_uri(Ctx,Path) ->
   path_to_uri(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 5.6 file:resolve-path
%% Signature
%%    file:resolve-path($path as xs:string) as xs:string
%% Rules
%%    Transforms a relative path into an absolute operating system path by 
%%       resolving it against the current working directory.
%%    If the resulting path points to a directory, it will be suffixed 
%%       with the system-specific directory separator.
%% This function is -nondeterministic-.
resolve_path(_, Path) when is_binary(Path) ->
   try
      EPath = ensure_flat_path(filename:absname(Path)),
      N = filename:nativename(EPath),
      case filelib:is_file(N) of
         false ->
            err_not_found(N);
         true ->
            maybe_add_dir_sep(N)
      end
   catch
      _:_ ->
         err_invalid_path(Path)
   end;
resolve_path(Ctx,Path) ->
   resolve_path(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 6 System Properties

%% 6.1 file:dir-separator
%% Signature
%%    file:dir-separator() as xs:string
%% Rules
%%    Returns the value of the operating system-specific directory separator, 
%%       which usually is / on UNIX-based systems and \ on Windows systems.
%% This function is -nondeterministic-.
dir_separator(_) -> ?str(get_dir_sep()).

%% 6.2 file:line-separator
%% Signature
%%    file:line-separator() as xs:string
%% Rules
%%    Returns the value of the operating system-specific line separator, 
%%       which usually is &#10; on UNIX-based systems, &#13;&#10; on Windows 
%%       systems and &#13; on Mac systems.
%% This function is -nondeterministic-.
line_separator(_) -> ?str(get_line_sep()).

%% 6.3 file:path-separator
%% Signature
%%    file:path-separator() as xs:string
%% Rules
%%    Returns the value of the operating system-specific path separator, which 
%%       usually is : on UNIX-based systems and ; on Windows systems.
%% 
%% This function is -nondeterministic-.
path_separator(_) -> ?str(get_path_sep()).

%% 6.4 file:temp-dir
%% Signature
%%    file:temp-dir() as xs:string
%% Rules
%%    Returns the path to the default temporary-file directory of an operating 
%%       system.
%% This function is -nondeterministic-.
temp_dir(_) ->
   ?str(filename:nativename(filename:basedir(user_cache, <<"xqerl">>))).

%% 6.5 file:base-dir
%% Signature
%%    file:base-dir() as xs:string?
%% Rules
%%    Returns the parent directory of the static base URI. If the Base URI 
%%       property is undefined, the empty sequence is returned. - If a static 
%%       base URI exists, and if points to a local file path, this function 
%%       returns the same result as the expression 
%%       file:parent(static-base-uri()).
base_dir(#{'base-uri' := ?uri(B)}) ->
   Stripped = strip_scheme(B),
   case filename:pathtype(Stripped) =/= relative of
      false ->
         [];
      true ->
         parent([],Stripped)
   end;
base_dir(_) -> [].

%% 6.6 file:current-dir
%% Signature
%%    file:current-dir() as xs:string
%% Rules
%%    Returns the current working directory. - This function returns the same 
%%       result as the function call file:resolve-path('.').
current_dir(_) ->
   Cwd = filename:absname(<<"">>),
   Nat = filename:nativename(Cwd),
   maybe_add_dir_sep(Nat).

%% A References
%% XSLT and XQuery Serialization 3.0
%% XSLT and XQuery Serialization 3.0. Henry Zongaro, et al. W3C Recommendation 08 April 2014.
%% XQuery and XPath Functions and Operators 3.0
%% XPath and XQuery Functions and Operators 3.0. Michael Kay. W3C Recommendation 08 April 2014.

%% B Summary of Error Conditions
%% file:not-found
%% The specified path does not exist.
%% file:invalid-path
%% The specified path is invalid.
%% file:exists
%% The specified path already exists.
%% file:no-dir
%% The specified path does not point to a directory.
%% file:is-dir
%% The specified path points to a directory.
%% file:unknown-encoding
%% The specified encoding is not supported.
%% file:out-of-range
%% The specified offset or length is negative, or the chosen values would exceed the file bounds.
%% file:io-error
%% A generic file system error occurred.
%% 

-define(Q(V), #xqAtomicValue{type = 'xs:QName', 
                             value = #qname{namespace = ?NS,prefix = ?PX,
                              local_name = V}}).

err_not_found(Path) ->
   E = #xqError{description = <<Path/binary, " does not exist.">>,
                name = ?Q(<<"not-found">>)
                },
   exit(E).
err_invalid_path(Path) ->
   E = #xqError{description = <<Path/binary, " is invalid.">>,
                name = ?Q(<<"invalid-path">>)
                },
   exit(E).
err_exists(Path) ->
   E = #xqError{description = <<Path/binary, " already exists.">>,
                name = ?Q(<<"exists">>)
                },
   exit(E).
err_no_dir(Path) ->
   E = #xqError{description = <<Path/binary, " does not point to a directory.">>,
                name = ?Q(<<"no-dir">>)
                },
   exit(E).
err_is_dir(Path) ->
   E = #xqError{description = <<Path/binary, " points to a directory.">>,
                name = ?Q(<<"is-dir">>)
                },
   exit(E).
err_unknown_encoding(Path) ->
   E = #xqError{description = <<Path/binary, " encoding is not supported.">>,
                name = ?Q(<<"unknown-encoding">>)
                },
   exit(E).
err_out_of_range(Offset) ->
   E = #xqError{description = <<"The specified offset or length (",
                              (integer_to_binary(Offset))/binary,
                              ") is negative, or the chosen values"
                              " would exceed the file bounds">>,
                name = ?Q(<<"out-of-range">>)
                },
   exit(E).
err_io_error(File) ->
   E = #xqError{description = <<"A generic file system error occurred. (",
               File/binary, ")">>,
                name = ?Q(<<"io-error">>)
                },
   exit(E).

get_encoding(E) ->
   get_encoding_1(string:lowercase(E)).

get_encoding_1(<<"utf-8">>) -> utf8;
get_encoding_1(<<"us-ascii">>) -> latin1;
get_encoding_1(<<"iso-8859-1">>) -> latin1;
get_encoding_1(<<"utf-16">>) -> utf16;
get_encoding_1(<<"utf-32">>) -> utf32;
get_encoding_1(E) -> err_unknown_encoding(E).

write_line(Fd, S) when is_binary(S) ->
   case catch io:put_chars(Fd, S) of
      ok ->
         io:nl(Fd);
      _ ->
         err_io_error(S)
   end;
write_line(Fd,S) ->
   write_line(Fd,
              xqerl_types:cast_as(S, 'xs:string')).

do_copy(Source,Destination) ->
   case file:copy(Source, Destination) of
      {ok,_Bytes} ->
         [];
      {error,_} ->
         err_io_error(Source)
   end.

% takes [{FileName,#file_info{}}], returns file names
do_get_files(List) ->
   [Name || {Name,#file_info{type = regular}} <- List].

% takes [{FileName,#file_info{}}], returns directory names
do_get_directories(List) ->
   [Name || {Name,#file_info{type = directory}} <- List].

% recursive directory copy
do_rec_copy(Source,Target) ->
   try
      ok = ensure_dir(Target),
      {ok,Names} = file:list_dir_all(Source),
      All = [begin
                {ok,I} = file:read_file_info(filename:join(Source,Name)),
                {Name,I}
             end || Name <- Names],
      Dirs = do_get_directories(All),
      Files = do_get_files(All), % not following links
      FC = fun(N) ->
                 NewF = filename:join(Source, N),
                 NewT = filename:join(Target, N),
                 do_copy(NewF, NewT)
           end,  
      DC = fun(N) ->
                 NewF = filename:join(Source, N),
                 NewT = filename:join(Target, N),
                 do_rec_copy(NewF, NewT)
           end,  
      ok = lists:foreach(FC, Files),
      ok = lists:foreach(DC, Dirs),
      []
   catch
      _:_ ->
         err_io_error(Source)
   end.

do_rec_delete(Path) ->
   try
      {ok,Names} = file:list_dir_all(Path),
      All = [begin
                {ok,I} = file:read_file_info(filename:join(Path,Name)),
                {Name,I}
             end || Name <- Names],
      Dirs = do_get_directories(All),
      Files = do_get_files(All), % not following links
      FC = fun(N) ->
                 NewF = filename:join(Path, N),
                 ok = file:delete(NewF)
           end,  
      DC = fun(N) ->
                 NewD = filename:join(Path, N),
                 do_rec_delete(NewD)
           end,  
      ok = lists:foreach(FC, Files),
      ok = lists:foreach(DC, Dirs),
      ok = file:del_dir(Path),
      []
   catch
      _:_ ->
         err_io_error(Path)
   end.

do_rec_list(Dir) ->
   Level = file_wildcard(<<"*">>, Dir),
   F = fun(Name) ->
             case filelib:is_regular(Name) of
                true ->
                   [Name];
                false ->
                   [Name|do_rec_list(Name)]
             end
       end,
   lists:flatmap(F, Level).

do_read_from(Fd,Offset) ->
   case file:position(Fd, Offset) of
      {ok,_} ->
         case io:get_chars(Fd, "", 1024*56) of
            eof -> eof;
            Bin when is_binary(Bin) ->
               {ok,do_read(Fd,Bin)};
            {error,_} = E ->
               E
         end;
      Err ->
         Err
   end.

do_read_lines(Fd) ->
   L = do_read_lines(Fd,[]),
   {ok,lists:reverse(L)}.

do_read_lines(Fd,Acc) ->
   case io:get_line(Fd, "") of
      eof -> Acc;
      Str when is_binary(Str) ->
         do_read_lines(Fd,[string:trim(Str, trailing, "\n")|Acc]);
      {error,_} = E ->
         E
   end.

do_read(Fd,Acc) when is_binary(Acc) ->
   case io:get_chars(Fd, "", 1024*56) of
      Bin when is_binary(Bin) ->
         do_read(Fd,<<Acc/binary,Bin/binary>>);
      eof ->
         Acc;
      _ ->
         Acc
   end.

% keep making missing directories
ensure_dir(Dir) ->
   case file:make_dir(Dir) of
      ok ->
         ok;
      {error,eexist} ->
         ok;
      X ->
         X
   end.

file_wildcard(Pat, Dir) ->
   %maybe_add_dir_sep
   Names = filelib:wildcard(unicode:characters_to_list(Pat),
                            unicode:characters_to_list(Dir)),
   [filename:join(Dir, Name)
    || Name <- Names].

-spec not_implemented() ->
   xq_types:xs_error().
not_implemented() ->
  exit({error,not_implemented}).

get_dir_sep() -> 
   case os:type() of
      {win32,_} -> <<"\\">>;
      {_,_} -> <<"/">>
   end.

get_line_sep() -> 
   case os:type() of
      {win32,_} -> <<"\r\n">>;
      {unix,darwin} -> <<"\r">>;
      {_,_} -> <<"\n">>
   end.

get_path_sep() -> 
   case os:type() of
      {win32,_} -> <<";">>;
      {_,_} -> <<":">>
   end.

strip_scheme(<<"file:///", Path/binary>>) -> 
   <<$/,Path/binary>>;
strip_scheme(<<"file://", Path/binary>>) -> Path;
strip_scheme(<<"file:/", Path/binary>>) -> Path;
strip_scheme(Path) -> Path.

l(L) when is_list(L) -> L;
l(L) -> [L].
  
add_dir_sep(Name) ->
   <<Name/binary, (get_dir_sep())/binary>>.

maybe_add_dir_sep(Name) ->
   case filelib:is_dir(Name) of
      true ->
         <<Name/binary, (get_dir_sep())/binary>>;
      false ->
         Name
   end.

ensure_flat_path(Path) ->
   Fun = fun(<<".">>, Acc) ->
               Acc;
            (<<"..">>, []) ->
               [];
            (<<"..">>, Acc) ->
               tl(Acc);
            (S, Acc) ->
               [S|Acc]
         end,
   Sim = lists:foldl(Fun, [], filename:split(Path)),
   filename:join(lists:reverse(Sim)).

filenameify(Path) ->
   case catch xqldb_lib:uri_to_filename(Path) of
      {'EXIT', _} ->
         filename:absname(Path);
      P ->
         P
   end.
  
