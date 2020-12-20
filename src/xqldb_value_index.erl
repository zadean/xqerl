%% @author Zack
%% @doc @todo Add description to xqldb_value_index.

-module(xqldb_value_index).

%% ====================================================================
%% API functions
%% ====================================================================
-export([]).

%% ====================================================================
%% Internal functions
%% ====================================================================

%% {Index, Field, Term, Value, Properties, TransactionStamp}
%% {<<"values">>, <<"text">>, String, DocId, [{double,DblVal}], erlang:system_time()}
%% {<<"values">>, <<"numeric">>, Number, DocId, [{double,DblVal}], erlang:system_time()}

%% Makes all of the value index entries for a document


%% timestamp() ->
%%    erlang:system_time(microsecond).
