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

%% @doc Implementation of the "http://expath.org/ns/file" namespace.
 
-module(xqerl_expath_file).

-include("xqerl.hrl").
-include_lib("kernel/include/file.hrl").

-define(NS,"http://expath.org/ns/file").

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
-export([dir_seperator/1,
         line_seperator/1,
         path_seperator/1,
         temp_dir/1,
         base_dir/1,
         current_dir/1
        ]).

-'module-namespace'({?NS,"file"}).
-namespaces([]).
-variables([]).
-functions([
%% 3 File Properties
 {{qname,?NS, "file","exists"}, 
  {xqSeqType, 'xs:boolean', one}, [], {'exists', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","is-dir"}, 
  {xqSeqType, 'xs:boolean', one}, [], {'is_dir', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","is-file"}, 
  {xqSeqType, 'xs:boolean', one}, [], {'is_file', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","last-modified"}, 
  {xqSeqType, 'xs:dateTime', one}, [], {'last_modified', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","size"}, 
  {xqSeqType, 'xs:integer', one}, [], {'size', 2}, 1, [{xqSeqType, 'xs:dateTime', one}]},
%% 4 Input/Output
 {{qname,?NS, "file","append"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'append', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'item', zero_or_many}]},
 {{qname,?NS, "file","append"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'append', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'item', zero_or_many},{xqSeqType, 'item', one}]},
 {{qname,?NS, "file","append-binary"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'append_binary', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:base64Binary', one}]},
 {{qname,?NS, "file","append-text"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'append_text', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","append-text"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'append_text', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","append-text-lines"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'append_text_lines', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_many}]},
 {{qname,?NS, "file","append-text-lines"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'append_text_lines', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","copy"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'copy', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","create-dir"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'create_dir', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","create-temp-dir"}, 
  {xqSeqType, 'xs:string', one}, [], {'create_temp_dir', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","create-temp-dir"}, 
  {xqSeqType, 'xs:string', one}, [], {'create_temp_dir', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","create-temp-file"}, 
  {xqSeqType, 'xs:string', one}, [], {'create_temp_file', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","create-temp-file"}, 
  {xqSeqType, 'xs:string', one}, [], {'create_temp_file', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","delete"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'delete', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","delete"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'delete', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:boolean', one}]},
 {{qname,?NS, "file","list"}, 
  {xqSeqType, 'xs:string', zero_or_many}, [], {'list', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","list"}, 
  {xqSeqType, 'xs:string', zero_or_many}, [], {'list', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:boolean', one}]},
 {{qname,?NS, "file","list"}, 
  {xqSeqType, 'xs:string', zero_or_many}, [], {'list', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:boolean', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","move"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'move', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","read-binary"}, 
  {xqSeqType, 'xs:base64Binary', one}, [], {'read_binary', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","read-binary"}, 
  {xqSeqType, 'xs:base64Binary', one}, [], {'read_binary', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:integer', one}]},
 {{qname,?NS, "file","read-binary"}, 
  {xqSeqType, 'xs:base64Binary', one}, [], {'read_binary', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:integer', one},{xqSeqType, 'xs:integer', one}]},
 {{qname,?NS, "file","read-text"}, 
  {xqSeqType, 'xs:string', one}, [], {'read_text', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","read-text"}, 
  {xqSeqType, 'xs:string', one}, [], {'read_text', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","read-text-lines"}, 
  {xqSeqType, 'xs:string', one}, [], {'read_text_lines', 2}, 1, 
  [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","read-text-lines"}, 
  {xqSeqType, 'xs:string', one}, [], {'read_text_lines', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","write"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'write', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'item', zero_or_many}]},
 {{qname,?NS, "file","write"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'write', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'item', zero_or_many},{xqSeqType, 'item', one}]},
 {{qname,?NS, "file","write-binary"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'write_binary', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:base64Binary', one}]},
 {{qname,?NS, "file","write-binary"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'write_binary', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:base64Binary', one},{xqSeqType, 'xs:integer', one}]},
 {{qname,?NS, "file","write-text"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'write_text', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","write-text"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'write_text', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","write-text-lines"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'write_text_lines', 3}, 2, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_many}]},
 {{qname,?NS, "file","write-text-lines"}, 
  {xqSeqType, 'empty-sequence', zero}, [], {'write_text_lines', 4}, 3, 
  [{xqSeqType, 'xs:string', one},{xqSeqType, 'xs:string', zero_or_many},{xqSeqType, 'xs:string', one}]},
%% 5 Paths
 {{qname,?NS, "file","name"}, 
  {xqSeqType, 'xs:string', one}, [], {'name', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","parent"}, 
  {xqSeqType, 'xs:string', zero_or_one}, [], {'parent', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","children"}, 
  {xqSeqType, 'xs:string', zero_or_many}, [], {'children', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","path-to-native"}, 
  {xqSeqType, 'xs:string', one}, [], {'path_to_native', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","path-to-uri"}, 
  {xqSeqType, 'xs:anyURI', one}, [], {'path_to_uri', 2}, 1, [{xqSeqType, 'xs:string', one}]},
 {{qname,?NS, "file","resolve-path"}, 
  {xqSeqType, 'xs:string', one}, [], {'resolve_path', 2}, 1, [{xqSeqType, 'xs:string', one}]},
%% 6 System Properties
 {{qname,?NS, "file","dir-separator"}, 
  {xqSeqType, 'xs:string', one}, [], {'dir_separator', 1}, 0, []},
 {{qname,?NS, "file","line-separator"}, 
  {xqSeqType, 'xs:string', one}, [], {'line_separator', 1}, 0, []},
 {{qname,?NS, "file","path-separator"}, 
  {xqSeqType, 'xs:string', one}, [], {'path_separator', 1}, 0, []},
 {{qname,?NS, "file","temp-dir"}, 
  {xqSeqType, 'xs:string', one}, [], {'temp_dir', 1}, 0, []},
 {{qname,?NS, "file","base-dir"}, 
  {xqSeqType, 'xs:string', zero_or_one}, [], {'base_dir', 1}, 0, []},
 {{qname,?NS, "file","current-dir"}, 
  {xqSeqType, 'xs:string', zero_or_one}, [], {'current_dir', 1}, 0, []}
]).

-define(str(D), #xqAtomicValue{type = 'xs:string', value = D}).
-define(intv(D), #xqAtomicValue{type = 'xs:integer', value = D}).
-define(bool(D), #xqAtomicValue{type = 'xs:boolean', value = D}).
-define(bin(D), #xqAtomicValue{type = 'xs:base64Binary', value = D}).
-define(uri(D), #xqAtomicValue{type = 'xs:anyURI', value = D}).


%% 3 File Properties

%% 3.1 file:exists
%% Signature
%%    file:exists($path as xs:string) as xs:boolean
%% Rules
%%    Tests if the file or directory pointed by $path exists.
%% This function is -nondeterministic-.
exists(_,?str(Path)) ->
   ?bool(filelib:is_file(Path));
exists(Ctx,Path) ->
   exists(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 3.2 file:is-dir
%% Signature
%%    file:is-dir($path as xs:string) as xs:boolean
%% Rules
%%    Tests if $path points to a directory. On UNIX-based systems the 
%%    root and the volume roots are considered directories.
%% This function is -nondeterministic-.
is_dir(_,?str(Path)) ->
   ?bool(filelib:is_dir(Path));
is_dir(Ctx,Path) ->
   is_dir(Ctx,xqerl_types:cast_as(Path, 'xs:string')).

%% 3.3 file:is-file
%% Signature
%%    file:is-file($path as xs:string) as xs:boolean
%% Rules
%%    Tests if $path points to a file.
%% This function is -nondeterministic-.
is_file(_,?str(Path)) ->
   ?bool(filelib:is_regular(Path));
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
last_modified(_,?str(Path)) ->
   case filelib:last_modified(Path) of
      0 -> err_not_found(Path);
      {{Y,M,D},{H,Mi,S}} ->
         DT = #xsDateTime{year = Y,
                          month = M,
                          day = D,
                          hour = H,
                          minute = Mi,
                          second = xqerl_numeric:decimal(S),
                          offset = []},
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
size(_,?str(Path)) ->
   case filelib:file_size(Path) of
      0 ->
         case filelib:is_file(Path) of
            false -> 
               err_not_found(Path);
            true ->
               ?intv(0)
         end;
      Size ->
         ?intv(Size)
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
append(_,?str(File),Items) ->
   case file:open(File, [append,binary]) of
      {ok,Fd} ->
         case file:write(Fd, erlang:term_to_binary(Items)) of
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
      {error,_} ->
         err_io_error(File)
   end;
append(Ctx,File,Items) ->
   append(Ctx,xqerl_types:cast_as(File, 'xs:string'),Items).

-spec append(_,_,_,_) ->
   xq_types:xs_error().
append(_,_File,_Items,_Params) ->
   % serialization
   not_implemented().

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
append_binary(_,?str(Path),?bin(Value)) ->
   case file:open(Path, [append,binary]) of
      {ok,Fd} ->
         case file:write(Fd, Value) of
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
   append_text(Ctx,Path,Value,?str("UTF-8")).

append_text(_,?str(Path),?str(Value),?str(Encoding)) ->
   Enc = get_encoding(Encoding),
   case file:open(Path, [append,{encoding,Enc}]) of
      {ok,Fd} ->
         case file:write(Fd, Value) of
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
      {error,_} ->
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
   append_text_lines(Ctx,Path,Values,?str("UTF-8")).

append_text_lines(_,?str(Path),Values,?str(Encoding)) ->
   Enc = get_encoding(Encoding),
   case file:open(Path, [append,{encoding,Enc}]) of
      {ok,Fd} ->
         W = fun(S) ->
                  write_line(Fd,S)
             end,
         ok = lists:foreach(W, Values),
         _ = file:close(Fd),
         [];
      {error,eisdir} ->
         err_is_dir(Path);
      {error,enotdir} ->
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
copy(_,?str(Source),?str(Target)) ->
   case filelib:is_file(Source) of
      false -> err_not_found(Source);
      true ->
         case filelib:is_regular(Source) of
            true -> 
               case filelib:is_dir(Target) of
                  true -> % copy file into directory 
                     NewTarget = filename:join(Source, Target),
                     case filelib:is_dir(NewTarget) of
                        true -> % file to existing sub-directory
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
                     % Target may or may not exist, ensure base dir
                     case filelib:ensure_dir(Target) of
                        ok ->
                           do_rec_copy(Source,Target);
                        {error,_} ->
                           err_io_error(Target)
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
create_dir(_,?str(Dir)) ->
   case filelib:ensure_dir(Dir) of
      ok ->
         case ensure_dir(Dir) of
            ok ->
               [];
            {error,_} ->
               err_io_error(Dir)
         end;
      {error,enoent} ->
         err_exists(Dir);
      {error,enotdir} ->
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
   Dir = filename:basedir(user_cache, "xqerl"),
   create_temp_dir(Ctx,Prefix,Suffix,?str(Dir)).

create_temp_dir(_,?str(Prefix),?str(Suffix),?str(Dir)) ->
   Name = Prefix ++ integer_to_list(erlang:phash2(make_ref())) ++ Suffix,
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
   Dir = filename:basedir(user_cache, "xqerl"),
   create_temp_file(Ctx,Prefix,Suffix,?str(Dir)).

create_temp_file(_,?str(Prefix),?str(Suffix),?str(Dir)) ->
   Name = Prefix ++ integer_to_list(erlang:phash2(make_ref())) ++ Suffix,
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

delete(_,?str(Path),?bool(Rec)) -> 
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
   list(Ctx,Dir,Recursive,?str("*")).

list(_,?str(Dir),?bool(Recursive),?str(Pattern)) ->
   case filelib:is_dir(Dir) of
      false -> err_no_dir(Dir);
      true ->
         try
            if Recursive ->
                  L = do_rec_list(Dir,Pattern),
                  [?str(tl(Li -- Dir)) || Li <- L];
               true ->
                  [?str(Li) || 
                   Li <- filelib:wildcard(Pattern, Dir)]
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
move(_,?str(Source),?str(Target)) ->
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
read_binary(_,?str(File)) ->
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

read_binary(_,_,?intv(Offset)) when Offset < 0 ->
   err_out_of_range(Offset);
read_binary(_,?str(File),?intv(Offset)) ->
   case file:open(strip_scheme(File), [read,binary]) of
      {ok,Fd} ->
         case do_read_from(Fd,Offset) of
            eof ->
               _ = file:close(Fd),
               err_out_of_range(File);
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

read_binary(_,_,?intv(Offset),?intv(Length)) when Offset < 0;
                                                  Length < 0 ->
   err_out_of_range(Offset);
read_binary(_,?str(File),?intv(Offset),?intv(Length)) ->
   case file:open(strip_scheme(File), [read,binary]) of
      {ok,Fd} ->
         case file:pread(Fd, Offset, Length) of
            eof ->
               _ = file:close(Fd),
               err_out_of_range(File);
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
   read_text(Ctx,File,?str("UTF-8")).

read_text(_,?str(File),?str(Encoding)) ->
   Enc = get_encoding(Encoding),
   case file:open(strip_scheme(File), [read,read_ahead,{encoding,Enc}]) of
      {ok,Fd} ->
         case do_read_from(Fd, 0) of
            {ok,Str} ->
               _ = file:close(Fd),
               ?str(Str);
            X ->
               _ = file:close(Fd),
               ?dbg("X",X),
               err_io_error(File)
         end;
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
   read_text_lines(Ctx,File,?str("UTF-8")).

read_text_lines(_,?str(File),?str(Encoding)) ->
   Enc = get_encoding(Encoding),
   case file:open(strip_scheme(File), [read,read_ahead,{encoding,Enc}]) of
      {ok,Fd} ->
         case catch do_read_lines(Fd) of
            {ok,Strs} ->
               _ = file:close(Fd),
               [?str(Str) || Str <- Strs];
            _ ->
               _ = file:close(Fd),
               err_io_error(File)
         end;
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
write(_,?str(File),Items) ->
   case file:open(File, [write,binary]) of
      {ok,Fd} ->
         case file:write(Fd, erlang:term_to_binary(Items)) of
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
write_binary(Ctx,File,Value) ->
   write_binary(Ctx,File,Value,?intv(0)).

write_binary(_,?str(File),?bin(Value),?intv(Offset)) ->
   case file:open(File, [write,binary]) of
      {ok,Fd} ->
         case file:position(Fd, Offset) of
            {ok,_} ->
               case file:write(Fd, Value) of
                  ok ->
                     _ = file:close(Fd),
                     [];
                  _ ->
                     _ = file:close(Fd),
                     err_io_error(File)
               end;
            {error,einval} ->
               err_out_of_range(Offset)
         end;
      {error,eisdir} ->
         err_is_dir(File);
      {error,enotdir} ->
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
   write_text(Ctx,File,Value,?str("UTF-8")).

write_text(_,?str(File),?str(Value),?str(Encoding)) ->
   Enc = get_encoding(Encoding),
   case file:open(strip_scheme(File), [write,{encoding,Enc}]) of
      {ok,Fd} ->
         ok = io:fwrite(Fd,"~ts",[Value]),
         _ = file:close(Fd),
         [];
      {error,eisdir} ->
         err_is_dir(File);
      {error,enotdir} ->
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
   write_text_lines(Ctx,Path,Values,?str("UTF-8")).

write_text_lines(_,?str(Path),Values,?str(Encoding)) ->
   Enc = get_encoding(Encoding),
   case file:open(Path, [write,{encoding,Enc}]) of
      {ok,Fd} ->
         W = fun(S) ->
                  write_line(Fd,S)
             end,
         ok = lists:foreach(W, Values),
         _ = file:close(Fd),
         [];
      {error,eisdir} ->
         err_is_dir(Path);
      {error,enotdir} ->
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
name(_,?str(Path)) ->
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
parent(_,?str(Path)) ->
   Abs = filename:absname(Path),
   D = filename:dirname(Abs),
   if D == Abs -> % root
         [];
      true ->
         ?str(D)
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
children(Ctx,Dir) ->
   list(Ctx,Dir,?bool(false),?str("*")).

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
path_to_native(_,?str(Path)) ->
   try
      R = xqerl_lib:resolve_against_base_uri(".", Path),
      N = filename:nativename(strip_scheme(R)),
      case filelib:is_file(N) of
         false ->
            err_not_found(N);
         true ->
            case filelib:is_dir(N) of
               true ->
                  N ++ get_dir_sep();
               false ->
                  N
            end
      end
   catch
      _:_ ->
         err_io_error(Path)
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
path_to_uri(_,?str(Path)) ->
   try
      ?uri(xqerl_lib:resolve_against_base_uri(".", Path))
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
resolve_path(_,?str(Path)) ->
   try
      R = xqerl_lib:resolve_against_base_uri(filename:absname(""), Path),
      N = filename:nativename(strip_scheme(R)),
      case filelib:is_file(N) of
         false ->
            err_not_found(N);
         true ->
            case filelib:is_dir(N) of
               true ->
                  N ++ get_dir_sep();
               false ->
                  N
            end
      end
   catch
      _:_ ->
         err_io_error(Path)
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
dir_seperator(_) -> ?str(get_dir_sep()).

%% 6.2 file:line-separator
%% Signature
%%    file:line-separator() as xs:string
%% Rules
%%    Returns the value of the operating system-specific line separator, 
%%       which usually is &#10; on UNIX-based systems, &#13;&#10; on Windows 
%%       systems and &#13; on Mac systems.
%% This function is -nondeterministic-.
line_seperator(_) -> ?str(get_line_sep()).

%% 6.3 file:path-separator
%% Signature
%%    file:path-separator() as xs:string
%% Rules
%%    Returns the value of the operating system-specific path separator, which 
%%       usually is : on UNIX-based systems and ; on Windows systems.
%% 
%% This function is -nondeterministic-.
path_seperator(_) -> ?str(get_path_sep()).

%% 6.4 file:temp-dir
%% Signature
%%    file:temp-dir() as xs:string
%% Rules
%%    Returns the path to the default temporary-file directory of an operating 
%%       system.
%% This function is -nondeterministic-.
temp_dir(_) ->
   ?str(filename:nativename(filename:basedir(user_cache, "xqerl"))).

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
   case filelib:is_file(B) of
      false ->
         [];
      true ->
         parent([],B)
   end.

%% 6.6 file:current-dir
%% Signature
%%    file:current-dir() as xs:string
%% Rules
%%    Returns the current working directory. - This function returns the same 
%%       result as the function call file:resolve-path('.').
current_dir(_) ->
   resolve_path([], ?str("")).

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


err_not_found(Path) ->
   E = #xqError{description = Path ++ " does not exist.",
                name = #qname{namespace = ?NS,prefix = "file",
                              local_name = "not-found"}
                },
   exit(E).
err_invalid_path(Path) ->
   E = #xqError{description = Path ++ " is invalid.",
                name = #qname{namespace = ?NS,prefix = "file",
                              local_name = "invalid-path"}
                },
   exit(E).
err_exists(Path) ->
   E = #xqError{description = Path ++ " already exists.",
                name = #qname{namespace = ?NS,prefix = "file",
                              local_name = "exists"}
                },
   exit(E).
err_no_dir(Path) ->
   E = #xqError{description = Path ++ " does not point to a directory.",
                name = #qname{namespace = ?NS,prefix = "file",
                              local_name = "no-dir"}
                },
   exit(E).
err_is_dir(Path) ->
   E = #xqError{description = Path ++ " points to a directory.",
                name = #qname{namespace = ?NS,prefix = "file",
                              local_name = "is-dir"}
                },
   exit(E).
err_unknown_encoding(Path) ->
   E = #xqError{description = Path ++ " encoding is not supported.",
                name = #qname{namespace = ?NS,prefix = "file",
                              local_name = "unknown-encoding"}
                },
   exit(E).
err_out_of_range(Path) ->
   E = #xqError{description = "The specified offset or length ("
                              ++ Path ++
                              ") is negative, or the chosen values"
                              " would exceed the file bounds",
                name = #qname{namespace = ?NS,prefix = "file",
                              local_name = "out-of-range"}
                },
   exit(E).
err_io_error(File) ->
   E = #xqError{description = "A generic file system error occurred. ("
               ++ File ++ ")",
                name = #qname{namespace = ?NS,prefix = "file",
                              local_name = "io-error"}
                },
   exit(E).

get_encoding(E) ->
   get_encoding_1(string:lowercase(E)).

get_encoding_1("utf-8") -> utf8;
get_encoding_1("us-ascii") -> latin1;
get_encoding_1("iso-8859-1") -> latin1;
get_encoding_1("utf-16") -> utf16;
get_encoding_1("utf-32") -> utf32;
get_encoding_1(E) -> err_unknown_encoding(E).

write_line(Fd,?str(S)) ->
   case file:write(Fd, S) of
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

do_rec_list(Dir,Pattern) ->
   All = filelib:wildcard(Pattern, Dir),
   F = fun(File) ->
             Abs = filename:join(Dir,File),
             case filelib:is_regular(Abs) of
                true ->
                   [Abs];
                false ->
                   [Abs|do_rec_list(Abs, Pattern)]
             end
       end,
   lists:flatmap(F, All).

do_read_from(Fd,Offset) ->
   case file:position(Fd, Offset) of
      {ok,_} ->
         case file:read(Fd,1024*56) of
            eof -> eof;
            {ok,Bin} ->
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
   case file:read_line(Fd) of
      eof -> Acc;
      {ok,Str} ->
         do_read_lines(Fd,[string:trim(Str, trailing, "\n")|Acc]);
      {error,_} = E ->
         E
   end.

do_read(Fd,Acc) when is_binary(Acc) ->
   case file:read(Fd,1024*56) of
      {ok,Bin} ->
         do_read(Fd,<<Acc/binary,Bin/binary>>);
      eof ->
         Acc;
      _ ->
         Acc
   end;
do_read(Fd,Acc) ->
   case file:read(Fd,1024*56) of
      {ok,Bin} ->
         do_read(Fd,Acc ++ Bin);
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

-spec not_implemented() ->
   xq_types:xs_error().
not_implemented() ->
  exit({error,not_implemented}).

get_dir_sep() -> 
   case os:type() of
      {win32,_} -> "\\";
      {_,_} -> "/"
   end.

get_line_sep() -> 
   case os:type() of
      {win32,_} -> "\r\n";
      {unix,darwin} -> "\r";
      {_,_} -> "\n"
   end.

get_path_sep() -> 
   case os:type() of
      {win32,_} -> ";";
      {_,_} -> ":"
   end.

strip_scheme("file:///" ++ Path) -> 
   case os:type() of
      {win32,_} -> Path;
      {_,_} -> [$/|Path]
   end;
strip_scheme("file://" ++ Path) -> Path;
strip_scheme("file:/" ++ Path) -> Path;
strip_scheme(Path) -> Path.
