%% @doc @todo Add description to xqerl_code_server.

-module(xqerl_code_server).

-behaviour(gen_server).

-include("xqerl.hrl").

-export([init/1, 
         handle_call/3, 
         handle_cast/2, 
         handle_info/2, 
         terminate/2, 
         code_change/3]).

-define(STATIC_MODS, 
        [xqerl_fn,
         xqerl_math,
         xqerl_map,
         xqerl_array,
         xqerl_xs,
         xqerl_expath_file,
         xqerl_http_client,
         xqerl_error]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/0,
         stop/0,
         compile/1, compile/2, compile/3]).

-export([get_static_signatures/0,
         get_signatures/1,
         unload/1]).

%% ====================================================================
%% xq_module
%% ====================================================================
%% target_namespace     * URI namespace for this module; Used with  
%%                        library module, original file location if 
%%                        main module
%% type                 - main / library
%% status               - compiled / error / waiting
%% module_name          - The module name
%% full_text            - original text or file location of XQuery module
%% error                - last compile error
%% last_compile_time    - last attempted compile timestamp
%% first_compile_time   - first attempted compile timestamp
%% imported_modules     - module namespaces that this module imports
-record(xq_module, 
        {target_namespace           :: binary(),
         type              = main   :: main | library,
         status            = waiting:: loaded | unloaded | compiled | 
                                       error | waiting,
         module_name                :: atom(),
         function_sigs     = []     :: [{_,_,_,_,_,_}],
         variable_sigs     = []     :: [{_,_,_,_,_}],
         full_text                  :: {file, string()} | {text, string()},
         error                      :: term(),
         last_compile_time          :: term(),
         first_compile_time         :: term(),
         imported_modules  = []     :: [binary()]
        }).

start_link() ->
   gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

stop() ->
   gen_server:stop(?MODULE).

get_static_signatures() ->
   gen_server:call(?MODULE, get_static_sigs, 5000).

get_signatures(ModNamespace) ->
   Rep = gen_server:call(?MODULE, {get_signatures, ModNamespace}, 10000),
   case Rep of
      {error, unknown_namespace} ->
         xqerl_error:error('XQST0059', "Unknown ModNamespace", ModNamespace);
      _ ->
         {ok, Rep}
   end.

unload(_) ->
   gen_server:call(?MODULE, unload, 60000).


compile(Filename) ->
   {ok, Bin} = file:read_file(Filename),
   Str = binary_to_list(Bin),
   compile(Filename, Str, []).

compile(_, []) -> ?err('XPST0003'); % no empty queries
compile(Filename, Str) ->
   compile(Filename, Str, []).

% compilation needs to happen in the calling process
% only the results from compilation are sent to the server
compile(Filename, [], Hints) -> 
   {ok, Bin} = file:read_file(Filename),
   Str = binary_to_list(Bin),
   do_compile(Filename, Str, Hints);
compile(Filename, Str, Hints) ->
   do_compile(Filename, Str, Hints).

%% ====================================================================
%% Behavioural functions
%% ====================================================================

-spec init(Args :: term()) -> Result when
	Result :: {ok, State}
			| {ok, State, Timeout}
			| {ok, State, hibernate}
			| {stop, Reason :: term()}
			| ignore,
	State :: term(),
	Timeout :: non_neg_integer() | infinity.

init([]) ->
   % base code directory, home of dets table
   CodeDir = application:get_env(xqerl, code_dir, "./code"),
   TabName = filename:join(CodeDir, "code.tab"),
   % ebin directory for beam files
   EbinDir = filename:join(CodeDir, "ebin"),
   ok = filelib:ensure_dir(EbinDir ++ "/x"),
   % create or open table
   {ok, Tab} = dets:open_file(TabName, [{type, set},{keypos, 2}]),
   % add ebin path to code path
   true = code:add_pathz(EbinDir),
   {ok, #{dir  => CodeDir,
          stat => static_signatures(),
          tab  => Tab,
          ebin => EbinDir}}.


-spec handle_call(Request :: term(), From :: {pid(), Tag :: term()}, State :: term()) -> Result when
	Result :: {reply, Reply, NewState}
			| {reply, Reply, NewState, Timeout}
			| {reply, Reply, NewState, hibernate}
			| {noreply, NewState}
			| {noreply, NewState, Timeout}
			| {noreply, NewState, hibernate}
			| {stop, Reason, Reply, NewState}
			| {stop, Reason, NewState},
	Reply :: term(),
	NewState :: term(),
	Timeout :: non_neg_integer() | infinity,
	Reason :: term().

handle_call(unload, _From, #{tab  := Tab,
                             ebin := Ebin} = State) ->
   Reply = do_unload(Tab, Ebin),
   {reply, Reply, State};

handle_call(get_static_sigs, _From, #{stat := Sigs} = State) ->
   {reply, Sigs, State};

handle_call({get_signatures, Namespace0}, _From, #{tab := Tab} = State) ->
   Namespace = trim_q(Namespace0),
   
   Reply = case dets:lookup(Tab, Namespace) of
              [] ->
                 {error, unknown_namespace};
              [#xq_module{module_name   = Name,
                          function_sigs = Funs,
                          variable_sigs = Vars}] ->
                 {Name, Funs, Vars}
           end,
    {reply, Reply, State};

handle_call({save_mod, Rec, Beam}, _From, State) ->
   Reply = save_module(Rec, Beam, State),
   {reply, Reply, State}.


-spec handle_cast(Request :: term(), State :: term()) -> Result when
	Result :: {noreply, NewState}
			| {noreply, NewState, Timeout}
			| {noreply, NewState, hibernate}
			| {stop, Reason :: term(), NewState},
	NewState :: term(),
	Timeout :: non_neg_integer() | infinity.

handle_cast(_Msg, State) ->
    {noreply, State}.


-spec handle_info(Info :: timeout | term(), State :: term()) -> Result when
	Result :: {noreply, NewState}
			| {noreply, NewState, Timeout}
			| {noreply, NewState, hibernate}
			| {stop, Reason :: term(), NewState},
	NewState :: term(),
	Timeout :: non_neg_integer() | infinity.

handle_info(_Info, State) ->
    {noreply, State}.


-spec terminate(Reason, State :: term()) -> Any :: term() when
	Reason :: normal
			| shutdown
			| {shutdown, term()}
			| term().

terminate(_Reason, _State) ->
    ok.


-spec code_change(OldVsn, State :: term(), Extra :: term()) -> Result when
	Result :: {ok, NewState :: term()} | {error, Reason :: term()},
	OldVsn :: Vsn | {down, Vsn},
	Vsn :: term().

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%% ====================================================================
%% Internal functions
%% ====================================================================



static_signatures() ->
   Mods = ?STATIC_MODS,
   Query = 
     fun(Mod,{PFunsAcc,PVarsAcc,_}) ->
           Atts = Mod:module_info(attributes),
           Vars = proplists:get_value(variables, Atts, []),
           Funs = proplists:get_value(functions, Atts, []),
           PVars = [prepend_mod(Mod, V) || V <- Vars],
           PFuns = [prepend_mod(Mod, V) || V <- Funs],
           {PFuns ++ PFunsAcc, PVars ++ PVarsAcc, []}
     end,
   lists:foldl(Query, {[],[],[]}, Mods).

patch(Tups, Mod) ->
   [prepend_mod(Mod, Tup) || Tup <- Tups].

prepend_mod(Mod, Tup) ->
   case element(4, Tup) of
      {_, F, A} ->
         setelement(4, Tup, {Mod, F, A});
      {F, A} ->
         setelement(4, Tup, {Mod, F, A});
      F ->
         setelement(4, Tup, {Mod, F})
   end.

add_stacktrace(E, StackTrace) ->
   E#xqError{additional = xqerl_lib:format_stacktrace(StackTrace)}.

-define(NOT_FOUND(V), 
        _:#xqError{name =
                     #xqAtomicValue{value = 
                                      #qname{prefix = <<"err">>,
                                             local_name = <<"XQST0059">>}},
                   value = V}).


do_compile(Filename, Str, Hints) ->
   OldProcDict = erlang:erase(),
   try
   %%%
      Toks = scan_tokens(Str),
      _ = xqerl_context:init(parser),
      Tree = parse_tokens(Toks),
      FileUri = xqldb_lib:filename_to_uri(unicode:characters_to_binary(Filename)),
      Static = scan_tree_static(Tree, FileUri),
      {ModNs,ModType,ImportedMods,VarSigs,FunSigs,Ret} = scan_tree(Static),
      xqerl_context:destroy(Static),
   
      {ok,M,B} = compile:forms(Ret,
                               [debug_info, verbose,
                                return_errors, no_auto_import,
                                binary]),
      Rec =        
        #xq_module{target_namespace = ModNs,
                   type = ModType,
                   status = compiled,
                   module_name = M,
                   full_text = {text, Str},
                   error = undefined,
                   last_compile_time = erlang:system_time(),
                   imported_modules = ImportedMods,
                   function_sigs = patch(FunSigs,M),
                   variable_sigs = patch(VarSigs,M)},
      gen_server:call(?MODULE, {save_mod, Rec, B})
   catch 
      ?NOT_FOUND(V) = Error ->
         KN1 = trim_q(V),
         case lists:keyfind(KN1, 2, Hints) of
            false ->
               Error;
            {F1,_} = G ->
               case compile(F1, [], Hints -- [G]) of
                  #xqError{} = Ex ->
                     Ex;
                  _ -> % try again
                     compile(Filename, Str, Hints)
               end
         end;
      _:#xqError{} = Error:StackTrace ->
         % TODO save the error
         add_stacktrace(Error, StackTrace);
      _:Error:StackTrace ->
         ?dbg("Error",Error),
         ?dbg("Error",StackTrace),
         % TODO save the error
         Error
   %%%
   after
      _ = erlang:erase(),
      _ = [erlang:put(K, V) || {K, V} <- OldProcDict]
   end.


scan_tokens(Str) ->
   try 
      xqerl_scanner:tokens(Str) 
   catch
      _:#xqError{} = E:S ->
         throw(add_stacktrace(E, S));
      _:E:StackTrace ->
         ?dbg("scan_tokens",E),
         ?dbg("scan_tokens",StackTrace),
         xqerl_error:error('XPST0003')
   end.

parse_tokens(Tokens) ->
   try 
      {ok, Tree} = xqerl_parser:parse(Tokens),
      Tree
   catch
      _:#xqError{} = E:S ->
         throw(add_stacktrace(E, S));
      _:E:StackTrace ->
         ?dbg("parse_tokens e",E),
         ?dbg("parse_tokens e",StackTrace),
         xqerl_error:error('XPST0003')
   end.

scan_tree_static(Tree, BaseUri) ->
   try 
      xqerl_static:handle_tree(Tree, BaseUri)
   catch
      _:#xqError{} = E:S ->
         throw(add_stacktrace(E, S));
      _:E:StackTrace ->
         ?dbg("scan_tree_static",E),
         ?dbg("scan_tree_static",StackTrace),
         xqerl_error:error('XPST0003')
   end.

scan_tree(Tree) ->
   %?dbg("Tree",Tree),
   try 
      xqerl_abs:scan_mod(Tree)
   catch
      _:#xqError{} = E:S ->
         throw(add_stacktrace(E, S));
      _:E:StackTrace ->
         ?dbg("scan_tree",E),
         ?dbg("scan_tree",StackTrace),
         xqerl_error:error('XPST0003')
   end.

save_module(#xq_module{module_name = ModName} = ModuleRecord,
            Beam, #{tab  := Tab,
                    ebin := Ebin }) ->
   BeamFilename = filename:join([Ebin, ModName]) ++ ".beam",
   %?dbg("ModName",ModName),
   _ = print_erl(ModName, Beam),
   file:write_file(BeamFilename, Beam),
   dets:insert(Tab, ModuleRecord),
   ModName.

%% trim_q(<<"Q{", Namespace0/binary>>) ->
%%    binary:part(Namespace0, 0, byte_size(Namespace0) - 1);
trim_q(Namespace0) -> Namespace0.

do_unload(Tab, Ebin) ->
   All = dets:match(Tab, '$1'),
   _ = [begin
           file:delete(filename:join(Ebin, Mod) ++ ".beam"),
           code:purge(Mod),
           code:delete(Mod),
           code:purge(Mod),
           dets:delete(Tab, Key)
        end || 
        A <- All,
        #xq_module{target_namespace = Key, module_name = Mod} <- A],
   ok.

-define(PRINT,false).
%-define(PRINT,true).

-if(?PRINT).
   % see what comes out
   print_erl(M,B) ->
      {ok,{_,[{abstract_code,{_,AC}}]}} = beam_lib:chunks(B,[abstract_code]),
      FL = erl_syntax:form_list(AC),
      PP = (catch erl_prettypr:format(FL, [{ribbon, 80},{paper, 140}, 
                                           {encoding, utf8}])),
      Flat = lists:flatten(io_lib:fwrite("~ts~n", [PP])),
      %?dbg("",Flat),
      Filename = filename:join("/git/zadean/xqerl/lib/xqerl_tests/src",atom_to_list(M) ++ ".erl"),
      ?dbg("Filename",Filename),
      {ok,FP} = file:open(Filename, [write,{encoding, utf8}]),
      %?dbg("PP",PP),
      io:put_chars(FP, PP),
      file:close(FP),
      %ok = file:write_file(Filename, list_to_binary(PP)),
      Flat.   
-elif(true).
   print_erl(_,_) -> ok.
-endif.

