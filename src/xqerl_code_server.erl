%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
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

-module(xqerl_code_server).

-behaviour(gen_server).

-include("xqerl.hrl").

-export([
    init/1,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    terminate/2,
    code_change/3
]).

-define(STATIC_MODS, [
    xqerl_mod_fn,
    xqerl_mod_math,
    xqerl_mod_map,
    xqerl_mod_array,
    xqerl_mod_xs,
    xqerl_mod_expath_file,
    xqerl_mod_expath_binary,
    xqerl_mod_exquery_request,
    xqerl_mod_http_client,
    xqerl_mod_rand,
    xqerl_mod_ext_basex,
    xqerl_mod_actor,
    xqerl_mod_csv,
    xqerl_mod_db,
    xqerl_mod_event,
    xqerl_mod_erlang,
    xqerl_error
]).

-define(TIMEOUT, 60000).

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    start_link/0,
    stop/0,
    compile/1, compile/2, compile/3,
    compile_files/1
]).

-export([
    get_static_signatures/0,
    get_signatures/1,
    library_namespaces/0,
    get_function_signatures/2,
    unload/1
]).

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
-record(xq_module, {
    target_namespace :: binary(),
    type = main :: main | library,
    status = waiting ::
        loaded
        | unloaded
        | compiled
        | error
        | waiting,
    module_name :: atom(),
    function_sigs = [] :: [{_, _, _, _, _, _}],
    variable_sigs = [] :: [{_, _, _, _, _}],
    full_text :: {file, string()} | {text, string()},
    error :: term(),
    last_compile_time :: term(),
    first_compile_time :: term(),
    imported_modules = [] :: [binary()],
    rest_xq = [] :: [term()]
}).

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

stop() ->
    cowboy:stop_listener(xqerl_listener),
    gen_server:stop(?MODULE).

get_static_signatures() ->
    gen_server:call(?MODULE, get_static_sigs, ?TIMEOUT).

get_signatures(ModNamespace) ->
    Rep = gen_server:call(?MODULE, {get_signatures, ModNamespace}, ?TIMEOUT),
    case Rep of
        {error, unknown_namespace} ->
            throw(xqerl_error:error('XQST0059', <<"Unknown ModNamespace">>, ModNamespace));
        _ ->
            {ok, Rep}
    end.

get_function_signatures(Namespace, LocalName) ->
    Rep = gen_server:call(?MODULE, {get_fun_sigs, Namespace, LocalName}, ?TIMEOUT),
    {ok, Rep}.

library_namespaces() ->
    gen_server:call(?MODULE, get_lib_namespaces, ?TIMEOUT).

unload(_) ->
    gen_server:call(?MODULE, unload, ?TIMEOUT).

compile(Filename) ->
    {ok, Bin} = file:read_file(Filename),
    Str = binary_to_list(Bin),
    compile(Filename, Str, []).

% no empty queries
compile(_, []) -> ?err('XPST0003');
compile(Filename, Str) -> compile(Filename, Str, []).

% compilation needs to happen in the calling process
% only the results from compilation are sent to the server
compile(Filename, [], Hints) ->
    {ok, Bin} = file:read_file(Filename),
    Str = binary_to_list(Bin),
    do_compile(Filename, Str, Hints);
compile(Filename, Str, Hints) ->
    do_compile(Filename, Str, Hints).

%% takes a list of [{Filename, QNamespace}]
compile_files(Hints) ->
    try
        do_compile_files(Hints)
    catch
        _:#xqError{} = E ->
            [E]
    end.

%% ====================================================================
%% Behavioural functions
%% ====================================================================

-spec init(Args :: term()) -> Result when
    Result ::
        {ok, State}
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
    {ok, Tab} = dets:open_file(TabName, [{type, set}, {keypos, 2}]),
    % add ebin path to code path
    true = code:add_patha(EbinDir),
    DispatchFileName = filename:join(CodeDir, "dispatch.dat"),
    ok = init_rest(DispatchFileName),
    AllRecs = dets:match(Tab, '$1'),
    _ = [code:load_file(ModName) || A <- AllRecs, #xq_module{module_name = ModName} <- A],
    {ok,
        #{
            dir => CodeDir,
            stat => static_signatures(),
            tab => Tab,
            ebin => EbinDir,
            disp => DispatchFileName
        },
        ?TIMEOUT}.

-spec handle_call(Request :: term(), From :: {pid(), Tag :: term()}, State :: term()) -> Result when
    Result ::
        {reply, Reply, NewState}
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
handle_call(
    unload,
    _From,
    #{
        tab := Tab,
        ebin := Ebin,
        disp := DispatchFile
    } = State
) ->
    Reply = do_unload(Tab, Ebin, DispatchFile),
    {reply, Reply, State, ?TIMEOUT};
handle_call(get_static_sigs, _From, #{stat := Sigs} = State) ->
    {reply, Sigs, State, ?TIMEOUT};
handle_call({get_fun_sigs, <<>>, _}, _From, State) ->
    {reply, [], State, ?TIMEOUT};
handle_call(
    {get_fun_sigs, Namespace, LocalName},
    _From,
    #{
        tab := Tab,
        stat := {Sigs, _, _}
    } = State
) ->
    Reply =
        case lists:member(Namespace, static_module_namespaces()) of
            true ->
                [
                    Sig
                    || Sig <- Sigs,
                       (element(1, Sig))#qname.local_name == LocalName,
                       (element(1, Sig))#qname.namespace == Namespace
                ];
            false ->
                case dets:lookup(Tab, Namespace) of
                    [] ->
                        [];
                    [#xq_module{function_sigs = Funs}] ->
                        [
                            F
                            || F <- Funs,
                               (element(1, F))#qname.local_name == LocalName
                        ]
                end
        end,
    {reply, Reply, State, ?TIMEOUT};
handle_call({get_signatures, Namespace}, _From, #{tab := Tab} = State) ->
    Reply =
        case dets:lookup(Tab, Namespace) of
            [] ->
                {error, unknown_namespace};
            [
                #xq_module{
                    module_name = Name,
                    function_sigs = Funs,
                    variable_sigs = Vars
                }
            ] ->
                {Name, Funs, Vars}
        end,
    {reply, Reply, State, ?TIMEOUT};
handle_call(get_lib_namespaces, _From, #{tab := Tab} = State) ->
    Reply = dets:select(Tab, [
        {'$1', [{'==', {element, #xq_module.type, '$1'}, library}], [
            {element, #xq_module.target_namespace, '$1'}
        ]}
    ]),
    {reply, Reply, State, ?TIMEOUT};
handle_call({save_mod, Rec, Beam}, _From, State) ->
    Reply = save_module(Rec, Beam, State),
    {reply, Reply, State, ?TIMEOUT}.

-spec handle_cast(Request :: term(), State :: term()) -> Result when
    Result ::
        {noreply, NewState}
        | {noreply, NewState, Timeout}
        | {noreply, NewState, hibernate}
        | {stop, Reason :: term(), NewState},
    NewState :: term(),
    Timeout :: non_neg_integer() | infinity.
handle_cast(_Msg, State) ->
    {noreply, State, ?TIMEOUT}.

-spec handle_info(Info :: timeout | term(), State :: term()) -> Result when
    Result ::
        {noreply, NewState}
        | {noreply, NewState, Timeout}
        | {noreply, NewState, hibernate}
        | {stop, Reason :: term(), NewState},
    NewState :: term(),
    Timeout :: non_neg_integer() | infinity.
handle_info(_Info, State) ->
    {noreply, State, ?TIMEOUT}.

-spec terminate(Reason, State :: term()) -> Any :: term() when
    Reason ::
        normal
        | shutdown
        | {shutdown, term()}
        | term().
terminate(_Reason, _State) ->
    cowboy:stop_listener(xqerl_listener).

-spec code_change(OldVsn, State :: term(), Extra :: term()) -> Result when
    Result :: {ok, NewState :: term()} | {error, Reason :: term()},
    OldVsn :: Vsn | {down, Vsn},
    Vsn :: term().
code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%% ====================================================================
%% Internal functions
%% ====================================================================

static_module_namespaces() ->
    [
        Ns
        || {Px, Ns} <- xqerl_context:static_namespaces(),
           Px =/= <<>>,
           Px =/= <<"local">>,
           Px =/= <<"xsi">>,
           Px =/= <<"xml">>
    ].

static_signatures() ->
    Query = fun(Mod, {PFunsAcc, PVarsAcc, _}) ->
        Atts = Mod:module_info(attributes),
        Vars = proplists:get_value(variables, Atts, []),
        Funs = proplists:get_value(functions, Atts, []),
        PVars = [prepend_mod(Mod, V) || V <- Vars],
        PFuns = [prepend_mod(Mod, V) || V <- Funs],
        {PFuns ++ PFunsAcc, PVars ++ PVarsAcc, []}
    end,
    lists:foldl(Query, {[], [], []}, ?STATIC_MODS).

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

-define(NOT_FOUND(V), #xqError{
    name = #xqAtomicValue{
        value = #qname{
            prefix = <<"err">>,
            local_name = <<"XQST0059">>
        }
    },
    value = V
}).

do_compile(Filename, Str, false) ->
    catch do_compile(Filename, Str, []);
do_compile(Filename, Str, []) ->
    OldProcDict = erlang:get(),
    try
        erlang:erase(),
        Toks = scan_tokens(Filename, Str),
        _ = xqerl_context:init(parser),
        Tree = parse_tokens(Filename, Toks),
        do_compile_tree(Filename, Tree, Str, [])
    catch
        _:#xqError{} = Error ->
            % error is static and has no stack
            %?dbg("Error",Error),
            % TODO save the error
            throw(Error)
    after
        _ = erlang:erase(),
        _ = [erlang:put(K, V) || {K, V} <- OldProcDict],
        ok
    end;
do_compile(_, _, Hints) ->
    Failed = [
        {Hint, R}
        || {Filename, _} = Hint <- Hints,
           R <- [compile(Filename)],
           not is_atom(R)
    ],
    case Failed of
        [] ->
            ok;
        [{_, H} | _] when length(Failed) == length(Hints) ->
            H;
        _ ->
            NewFailed = [H || {H, _} <- Failed],
            do_compile(a, a, NewFailed)
    end.

do_compile_tree(Filename, Tree, Str, Imports) ->
    FileUri = xqldb_lib:filename_to_uri(unicode:characters_to_binary(Filename)),
    Static = scan_tree_static(Tree, FileUri, Imports),
    {ModNs, ModType, ImportedMods, VarSigs, FunSigs, Forms, RestXQ} =
        scan_tree(FileUri, Static),
    xqerl_context:destroy(Static),

    {ok, M, B} = compile:forms(
        Forms,
        [
            debug_info,
            verbose,
            return_errors,
            no_auto_import,
            binary
        ]
    ),
    Rec = #xq_module{
        target_namespace = ModNs,
        type = ModType,
        status = compiled,
        module_name = M,
        full_text = {text, Str},
        error = undefined,
        last_compile_time = erlang:system_time(),
        imported_modules = ImportedMods,
        function_sigs = patch(FunSigs, M),
        variable_sigs = patch(VarSigs, M),
        rest_xq = RestXQ
    },
    %% XXX do the swap in the server
    code:purge(M),
    gen_server:call(?MODULE, {save_mod, Rec, B}, ?TIMEOUT).

%% {Uri, Tree, Str, Filename} -> {Uri, Tree, Str, Filename, Imports}
append_imports(Parsed) ->
    UriTrees = [{Uri, Tree} || {Uri, Tree, _, _} <- Parsed],
    Imports = xqerl_module:expand_imports(UriTrees),
    %?dbg("Imports",Imports),
    [
        {Uri, Tree, Str, Filename, proplists:get_value(Uri, Imports, [])}
        || {Uri, Tree, Str, Filename} <- Parsed
    ].

-define(E(E), #xqError{
    name = #xqAtomicValue{
        value = #qname{
            prefix = <<"err">>,
            local_name = E
        }
    }
}).

%% {Uri, Tree, Str, Filename}
parse_files(Filenames) ->
    OldProcDict = erlang:erase(),
    _ = xqerl_context:init(parser),
    F1 = fun(Filename) ->
        try
            case file:read_file(Filename) of
                {ok, Bin} ->
                    Str = binary_to_list(Bin),
                    Toks = scan_tokens(Filename, Str),
                    Tree = parse_tokens(Filename, Toks),
                    {xqerl_module:module_namespace(Tree, Filename), Tree, Str, Filename};
                _ ->
                    % non-recoverable
                    ?err('XQST0059')
            end
        catch
            _:#xqError{
                name = #xqAtomicValue{
                    value = #qname{prefix = <<"err">>, local_name = <<"XQST0059">>}
                }
            } = E:_ ->
                {Filename, E, [], Filename};
            _:E:_ ->
                % non-recoverable
                throw(E)
            %?err(E) % non-recoverable
        end
    end,
    Out = merge_mods(lists:map(F1, Filenames)),
    _ = erlang:erase(),
    _ = [erlang:put(K, V) || {K, V} <- OldProcDict],
    Out.

module_not_found_errors([{_, ?E(<<"XQST0059">>), _, _, _} = E | T]) ->
    [E | module_not_found_errors(T)];
module_not_found_errors([{_, ?E(<<"XPST0008">>), _, _, _} = E | T]) ->
    [E | module_not_found_errors(T)];
module_not_found_errors([{_, ?E(<<"XPST0017">>), _, _, _} = E | T]) ->
    [E | module_not_found_errors(T)];
module_not_found_errors([_ | T]) ->
    module_not_found_errors(T);
module_not_found_errors([]) ->
    [].

do_compile_files(List) ->
    Files = lists:usort([Name || {Name, _} <- List]),
    Parsed = parse_files(Files),
    Imports = append_imports(Parsed),
    Errors = do_compile_files(Imports, []),
    [A || {_, A, _, _, _} <- Errors].

do_compile_files([], Acc) ->
    Early = module_not_found_errors(Acc),
    %?dbg("Early", Early),
    Failed = lists:subtract([E || {_, #xqError{}, _, _, _} = E <- Acc], Early),
    %?dbg("Failed", Failed),
    Passed = [B || {_, A, _, _, _} = B <- Acc, is_atom(A)],
    case {Passed, Early} of
        {[], _} -> Failed ++ Early;
        {_, []} -> Failed;
        _ -> Failed ++ do_compile_files(Early, [])
    end;
do_compile_files([{Uri, #xqError{} = Res, [], Filename, I} | Rest], Acc) ->
    ?dbg("NOT TRYING", Uri),
    do_compile_files(Rest, [{Uri, Res, [], Filename, I} | Acc]);
do_compile_files([{Uri, #xqError{}, Str, Filename, I} | Rest], Acc) ->
    ?dbg("TRYING again", Uri),
    Res =
        try
            do_compile(Filename, Str, [])
        catch
            _:E ->
                ?dbg("FAILED again", {Uri, E}),
                E
        end,
    do_compile_files(Rest, [{Uri, Res, Str, Filename, I} | Acc]);
do_compile_files([{Uri, Tree, Str, Filename, I} | Rest], Acc) ->
    ?dbg("TRYING", Uri),
    Res =
        try
            Ok = do_compile_tree(Filename, Tree, Str, I),
            ?dbg("WORKED", Uri),
            Ok
        catch
            _:E ->
                ?dbg("FAILED", {Uri, E}),
                E
        end,
    do_compile_files(Rest, [{Uri, Res, Str, Filename, I} | Acc]).

scan_tokens(Filename, Str) ->
    FileUri = xqldb_lib:filename_to_uri(unicode:characters_to_binary(Filename)),
    xqerl_scanner:tokens({FileUri, Str}).

parse_tokens(Filename, Tokens) ->
    try
        {ok, Tree} = xqerl_parser:parse(Tokens),
        Tree
    catch
        _:#xqError{location = {undefined, Ln, _}} = E ->
            % patch filename of the error
            FileUri = xqldb_lib:filename_to_uri(unicode:characters_to_binary(Filename)),
            ?err(E, {FileUri, Ln});
        _:#xqError{} = E ->
            ?err(E);
        _:{badmatch, {error, {Ln, xqerl_parser, _}}} ->
            FileUri = xqldb_lib:filename_to_uri(unicode:characters_to_binary(Filename)),
            ?err('XPST0003', {FileUri, Ln})
    end.

scan_tree_static(Tree, FileUri, Imports) ->
    try
        xqerl_static:handle_tree(Tree, FileUri, Imports)
    catch
        _:#xqError{location = {undefined, Ln, _}} = E ->
            % patch filename of the error
            ?err(E, {FileUri, Ln});
        _:#xqError{} = E ->
            ?err(E)
    end.

scan_tree(FileUri, Tree) ->
    try
        xqerl_abs:scan_mod(Tree)
    catch
        _:#xqError{location = {undefined, Ln, _}} = E ->
            % patch filename of the error
            ?err(E, {FileUri, Ln});
        _:#xqError{} = E ->
            ?err(E)
    end.

save_module(
    #xq_module{
        module_name = ModName,
        rest_xq = RestXq
    } = ModuleRecord,
    Beam,
    #{
        tab := Tab,
        ebin := Ebin,
        disp := Dispatch
    }
) ->
    BeamFilename = filename:join([Ebin, ModName]) ++ ".beam",
    _ = print_erl(ModName, Beam),
    ok = file:write_file(BeamFilename, Beam),
    dets:insert(Tab, ModuleRecord),
    %%% XXX might be nasty
    code:purge(ModName),
    code:delete(ModName),
    code:purge(ModName),
    code:load_file(ModName),
    %%%
    case RestXq of
        [] ->
            ModName;
        _ ->
            _ = merge_load_dispatch(ModName, RestXq, Dispatch),
            ModName
    end.

init_rest(DispatchFileName) ->
    Port = application:get_env(xqerl, port, 8081),
    Paths =
        case filelib:is_regular(DispatchFileName) of
            true ->
                {ok, Dis} = file:consult(DispatchFileName),
                case Dis of
                    [] -> [];
                    [D] -> D
                end;
            false ->
                Dis = [],
                ok = write_dispatch(DispatchFileName, Dis),
                Dis
        end,
    Routes = lists:flatten([
                xqerl_restxq:endpoint_sort(Paths),
                {"/assets/[...]", cowboy_static, {priv_dir, xqerl, "static/assets"}},
                {"/",  xqerl_handler_greeter, #{}}
                ]),
    Dispatch = cowboy_router:compile( [{'_',Routes}]),
    _ = cowboy:start_clear( xqerl_listener,
          [{port, Port}],
          #{ env => #{dispatch => Dispatch}}
          ),
    ok.

merge_load_dispatch(Module, Rest, DispatchFile) ->
    {ok, OldEndPoints} = file:consult(DispatchFile),
    NewEndPoints = xqerl_restxq:build_endpoints(Module, Rest),
    OldEndPoints1 = remove_module_from_endpoints(Module, OldEndPoints),
    EndPoints = lists:flatten(NewEndPoints ++ OldEndPoints1),
    DisTerm = xqerl_restxq:endpoint_sort(EndPoints),
    Dispatch = cowboy_router:compile([{'_', DisTerm}]),
    _ = write_dispatch(DispatchFile, EndPoints),
    _ = cowboy:set_env(xqerl_listener, dispatch, Dispatch),
    ok.

remove_module_from_endpoints(_Module, []) ->
    [];
remove_module_from_endpoints(Module, [EndPoints]) ->
    [Ep || #endpoint{module = M} = Ep <- EndPoints, M =/= Module].

remove_module_dispatch(Module, DispatchFile) ->
    {ok, OldEndPoints} = file:consult(DispatchFile),
    EndPoints = remove_module_from_endpoints(Module, OldEndPoints),
    _ = write_dispatch(DispatchFile, EndPoints),
    DisTerm = xqerl_restxq:endpoint_sort(EndPoints),
    Dispatch = cowboy_router:compile([{'_', DisTerm}]),
    _ = cowboy:set_env(xqerl_listener, dispatch, Dispatch),
    ok.

write_dispatch(Filename, Term) ->
    Ser = io_lib:format("~tp.~n", [Term]),
    file:write_file(Filename, Ser).

% RestEndpoints = xqerl_restxq:build_endpoints(ModName, RestWrappers),
% Dispatch = cowboy_router:compile([{'_', RestEndpoints}]),
% ?dbg("Dispatch",Dispatch),
% _ = cowboy:set_env(xqerl_listener, dispatch, Dispatch),

do_unload(Tab, Ebin, DispatchFile) ->
    All = dets:match(Tab, '$1'),
    _ = [
        begin
            file:delete(filename:join(Ebin, Mod) ++ ".beam"),
            code:purge(Mod),
            code:delete(Mod),
            code:purge(Mod),
            dets:delete(Tab, Key),
            case R of
                [] ->
                    ok;
                _ ->
                    remove_module_dispatch(Mod, DispatchFile)
            end
        end
        || A <- All,
           #xq_module{
               target_namespace = Key,
               module_name = Mod,
               rest_xq = R
           } <- A
    ],
    ok.

merge_mods(List) ->
    merge_mods(List, #{}).

%% {Uri, Tree, Str, Filename}
merge_mods([{Ns, Mod, Str, Name} | Mods], Acc) ->
    Up = fun({O, Str0, Name0}) -> {[Mod | O], Str0, Name0} end,
    merge_mods(Mods, maps:update_with(Ns, Up, {[Mod], Str, Name}, Acc));
merge_mods([], Acc) ->
    List = maps:to_list(Acc),
    [
        {Uri, xqerl_module:merge_library_trees(Mods), Str, Name}
        || {Uri, {Mods, Str, Name}} <- List
    ].

-define(PRINT, false).

%-define(PRINT,true).

-if(?PRINT).
% see what comes out
print_erl(M, B) ->
    {ok, {_, [{abstract_code, {_, AC}}]}} = beam_lib:chunks(B, [abstract_code]),
    FL = erl_syntax:form_list(AC),
    PP =
        (catch erl_prettypr:format(FL, [
            {ribbon, 80},
            {paper, 140},
            {encoding, utf8}
        ])),
    Flat = lists:flatten(io_lib:fwrite("~ts~n", [PP])),
    %?dbg("",Flat),
    Filename = filename:join("/git/zadean/xqerl/lib/xqerl_tests/src", atom_to_list(M) ++ ".erl"),
    ?dbg("Filename", Filename),
    {ok, FP} = file:open(Filename, [write, {encoding, utf8}]),
    %?dbg("PP",PP),
    %io:format(PP),
    io:put_chars(FP, PP),
    file:close(FP),
    Flat.

-elif(true).

print_erl(_, _) -> ok.
-endif.
