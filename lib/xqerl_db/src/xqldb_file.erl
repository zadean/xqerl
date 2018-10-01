%% @author Zack
%% @doc @todo Add description to xqldb_file.


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
