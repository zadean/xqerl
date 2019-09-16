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

-module(xqldb_file).

-include_lib("kernel/include/file.hrl").

-define(TIMEOUT, 90000).

%% ====================================================================
%% API functions
%% ====================================================================
-export([pmap/4]).

pmap(Dir, Pattern, Recursive, Fun) ->
   Self = self(),
   Fun2 = fun(Filename, Acc) ->
                Pid = spawn(fun() -> Self ! {self(), catch(Fun(Filename))} end ),
                [Pid|Acc]
          end,
   Pids = filelib:fold_files(Dir, Pattern, Recursive, Fun2, []),
   receive_pids(lists:reverse(Pids)).



%% ====================================================================
%% Internal functions
%% ====================================================================

receive_pids(Pids) -> receive_pids(Pids, []).

receive_pids([H|T], Acc) ->
   receive
      {H,V} ->
         receive_pids(T, [V|Acc])
   after
       ?TIMEOUT -> timeout
   end;
receive_pids([], Acc) -> Acc.





%% -record(file_info,
%%         {size   :: non_neg_integer() | 'undefined',  % Size of file in bytes.
%%          type   :: 'device' | 'directory' | 'other' | 'regular' | 'symlink'
%%                  | 'undefined',
%%          access :: 'read' | 'write' | 'read_write' | 'none' | 'undefined',
%%          mtime  :: file:date_time() | non_neg_integer() | 'undefined',% The local time the file was last written.
