%% @author Zack
%% @doc @todo Add description to xqerl_static_path.


-module(xqerl_static_path).

%% ====================================================================
%% API functions
%% ====================================================================
-export([]).
-compile(export_all).

-include("xqerl.hrl").
-include("xqerl_parser.hrl").

-define(FN_NS,<<"http://www.w3.org/2005/xpath-functions">>).
-define(IO(V), io:format("~p~n",[V])).

%% ====================================================================
%% Internal functions
%% ====================================================================

test() ->
   Term = term(),
   Prolog = prolog(Term),
   _GlobVars = global_variables(Prolog),
   GlobFuns = global_functions(Prolog),
   ?IO(glob_funs_to_records(GlobFuns)).



-spec glob_vars_to_records([#xqVar{}]) -> [{{Name::atom(),1},Type::#xqSeqType{},Expr::any()}].
glob_vars_to_records([#xqVar{name = Name, type = Type,expr = Expr}|T]) ->
   [{global_variable_name(Name),Type,Expr}|glob_vars_to_records(T)];
glob_vars_to_records([]) -> [].

-spec glob_funs_to_records([#xqFunction{}]) -> [{Name::{atom(),integer()},
                                                 Params::[any()],
                                                 Type::#xqSeqType{},Body::any()}].
glob_funs_to_records([#xqFunction{name = Name, 
                                  arity = Arity,
                                  params = Params, 
                                  type = Type,
                                  body = Expr}|T]) ->
   [{function_hash_name(Name, Arity),
     param_vars_to_records(Params),
     %Type,Expr}];
     Type,Expr}|glob_funs_to_records(T)];
glob_funs_to_records([]) -> [].

-spec param_vars_to_records([#xqVar{}]) ->[ {Name::atom(),Type::#xqSeqType{}}].
param_vars_to_records([#xqVar{id = Name, type = Type}|T]) ->
   [{param_variable_name(Name),Type}|param_vars_to_records(T)];
param_vars_to_records([]) -> [].



term() ->
   {ok,Term} = file:consult("/git/zadean/xqerl/data/static_test.txt"),
   Term.

body([#xqModule{body = Body}]) -> Body.

prolog([#xqModule{prolog = Prolog}]) -> Prolog.

global_functions([#xqFunction{} = H|T] = _Prolog) ->
   [H|global_functions(T)];
global_functions([_|T] = _Prolog) ->
   global_functions(T);
global_functions([]) -> [].

global_variables([#xqVar{} = H|T] = _Prolog) ->
   [H|global_variables(T)];
global_variables([_|T] = _Prolog) ->
   global_variables(T);
global_variables([]) -> [].






-spec global_variable_name(#qname{}) -> {atom(),1}.
global_variable_name(Name) ->
   {variable_hash_name(Name),1}.

-spec local_variable_name(integer()) -> atom().
local_variable_name(Id) ->
   list_to_atom(lists:concat(["__XQ__var_", Id])).

-spec param_variable_name(integer()) -> atom().
param_variable_name(Id) ->
   list_to_atom(lists:concat([param_prefix(), Id])).

param_prefix() -> "__Param__var_".

variable_hash_name(#qname{namespace = 'no-namespace',local_name = L}) ->
   string_atom(<<"___Q_", L/binary>>);
variable_hash_name(#qname{namespace = N,local_name = L}) ->
   string_atom(<<"___Q_", N/binary, "_", L/binary>>).

-spec function_hash_name(#qname{} | undefined, Arity::integer()) -> {atom(),integer()}.
function_hash_name(undefined, Arity) ->
   {undefined, Arity + 1};
function_hash_name(#qname{namespace = N,local_name = L}, Arity) ->
   Bin = <<"__Q_", N/binary, "_", L/binary>>,
   {string_atom(Bin), Arity + 1}.

string_atom(Term) ->
   Bin = binary:replace(
           unicode:characters_to_binary(Term),
           [<<"<">>,<<">">>,<<"@">>,<<":">>,
            <<"?">>,<<"=">>,<<"/">>,<<".">>,
            <<"{">>,<<"}">>,<<"-">>,<<"#">>,
            <<"[">>,<<"]">>],<<"_">>,
           [global]),
   binary_to_atom(Bin, latin1).



%% ============================================================================
%% Each of these functions has an arity-zero signature which is equivalent to 
%% the arity-one form, with the context item supplied as the implicit first 
%% argument. In addition, each of the arity-one functions accepts an empty 
%% sequence as the argument, in which case it generally delivers an empty 
%% sequence as the result: the exception is fn:string, which delivers a 
%% zero-length string.
%% ============================================================================
%% Function          Accessor       Accepts           Returns
%% fn:node-name      node-name      node (optional)   xs:QName (optional)
%% fn:nilled         nilled         node (optional)   xs:boolean (optional)
%% fn:string         string-value   item (optional)   xs:string
%% fn:data           typed-value    zero or more items   a sequence of atomic values
%% fn:base-uri       base-uri       node (optional)   xs:anyURI (optional)
%% fn:document-uri   document-uri   node (optional)   xs:anyURI (optional)



%% any numeric operations = double value

%% fn:boolean | Computes the effective boolean value of the sequence $arg.

%% any cast on a node is a cast on the untypedAtomicValue

%% fn:resolve-QName in-scope namespaces of 2nd parameter
