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

%% @doc  The messy spaghetti-code that writes abstract Erlang.

-module(xqerl_abs).

-export([scan_mod/1,
         handle_predicate/2]).

-define(LN(Line), {undefined, Line}).

-define(e, erl_syntax).

-define(FN,<<"http://www.w3.org/2005/xpath-functions">>).
-define(XS,<<"http://www.w3.org/2001/XMLSchema">>).
-define(REST, <<"http://exquery.org/ns/restxq">>).

-define(CALL(Fun, Line), #xqFunctionCall{call = Fun, anno = Line}).

-include("xqerl.hrl").
-include("xqerl_parser.hrl").

-include_lib("syntax_tools/include/merl.hrl").
% revert everything from merl
-define(P(L, Text), update_line_numbers(L, ?Q(Text))).

-compile(inline_list_funcs).

used_records() ->
    Recs = static_records(),
    Used = get_used_record_types(),
    lists:map(fun(A) ->
                    proplists:get_value(A, Recs)
              end, Used).

static_records() ->
   %% TODO add default values
   [{xqError,       "-record(xqError,{name,description,value,location,additional})."},
    {xqAtomicValue, "-record(xqAtomicValue,{type,value})."},
    {qname,         "-record(qname,{namespace,prefix,local_name})."},
    {xqFunction,    "-record(xqFunction,{annotations,name,arity,params,type,body,external})."},
    {xqNamespace,   "-record(xqNamespace,{namespace,prefix})."},
    {funTest,       "-record(funTest,{kind,annotations,name,params,type})."},
    {seqType,       "-record(seqType,{type,occur})."},
    {kindTest,      "-record(kindTest,{kind,name,type})."},
    {range,         "-record(range,{min,max,cnt})."}
   ].

% revert to erl_parse form
revert_all(L) when is_list(L) ->
   [revert_all(I) || I <- L];
revert_all(I) ->
    case ?e:is_tree(I) of
        true ->
            ?e:revert(I);
        false ->
            %?dbg("Non tree", I),
            ?e:revert(I)
    end.

% recursively set all line numbers
update_line_numbers(_L, Trees) ->
    Trees.

%% update_line_numbers(L, Trees) when is_list(Trees) ->
%%     [update_line_numbers(L, Tree) || Tree <- Trees, Tree =/= {nil, -1}];
%% %% patched #2348
%% update_line_numbers(L, {map_field_assoc, _, Name, Value}) ->
%%     anno(L, ?e:map_field_assoc(Name, Value));
%% %% patched #2348
%% update_line_numbers(L, {map_field_exact, _, Name, Value}) ->
%%     anno(L, ?e:map_field_exact(Name, Value));
%% update_line_numbers(L, {atom, _, Atom}) -> 
%%     anno(L, ?e:atom(Atom));
%% update_line_numbers(L, {var, _, Atom}) -> 
%%     anno(L, ?e:variable(Atom));
%% update_line_numbers(L, Tree) ->
%%     case ?e:get_pos(Tree) of
%%         [{file,_},{location,_}] -> % already set so do not overwrite
%%             Tree;
%%         _ ->
%%             Tree1 = anno(L, Tree),
%%             case ?e:subtrees(Tree1) of
%%                 [] -> Tree1;
%%                 List ->
%%                     Sub = [[update_line_numbers(L, Subtree)
%%                            || Subtree <- Group,
%%                               Subtree =/= {nil, -1}]
%%                           || Group <- List],
%%                     ?e:update_tree(Tree1, Sub)
%%             end
%%     end.

%% current_position() ->
%%    A = erl_anno:new(0),
%%    B = erl_anno:set_file(get_filename(), A),
%%    erl_anno:set_line(get_line(), B).
%% 
%% get_line() ->
%%    erlang:get(line_number).

get_filename() ->
   erlang:get(current_filename).

%% set_line(undefined) -> ok;
%% set_line(-1) -> ok;
%% set_line(L) ->
%%    erlang:put(line_number, L).

set_filename(undefined) ->
   ok;
set_filename(L) ->
   erlang:put(current_filename, L).

init_mod_scan() ->
   erlang:put(current_filename, ""),
%   erlang:put(line_number, 1),
   erlang:put(imp_mod, 1),
   erlang:put(ctx, 1),
   erlang:put(var_tuple, 1),
   erlang:put(iter_loop, 1),
   _ = add_used_record_type(xqError),
   ok.

scan_functions(#{tab := Tab}, Functions,ModName, public) ->
   Specs = [ {#qname{namespace = QN, local_name = QL, prefix = <<>>}, 
              Type, 
              Annos,
              begin
                 {F,A} = xqerl_static:function_hash_name(Name,Arity),
                 {ModName,F,A}
              end, 
              %function_function_name(Id, Arity), 
              Arity, 
              param_types(Params) } 
           || #xqFunctionDef{ 
                          annotations = Annos, 
                          arity = Arity,
                          params = Params,
                          name = #xqQName{namespace = QN, local_name = QL} = Name, 
                          type = Type} 
           <- Functions,
              not_private(Annos) ],
   xqerl_context:import_functions(Specs,Tab),
   Specs.

%% {Name, Type, Annos, function_name, External }
scan_variables(Ctx, Variables) ->
    scan_variables(Ctx, Variables, all).

scan_variables(#{tab := Tab}, Variables, _Scope) ->
    Specs = 
        [{#qname{namespace = Ns, prefix = <<>>, local_name = Ln}, 
          Type, 
          Annos,
          xqerl_static:variable_hash_name(Name),
          External}
           || #xqVar{annotations = Annos, 
                     name = #xqQName{namespace = Ns, local_name = Ln} = Name,
                     external = External, 
                     type = Type} 
           <- Variables%,
              %Scope == all orelse not_private(Annos) 
           ],
    xqerl_context:import_variables(Specs,Tab),
    Specs.

translate_functions([{QName, %
                      Type,
                      Annos,
                      MFA,   %
                      Arity, %
                      ParamTypes}|T]) ->
    Type1 = translate_record(Type),
    Annos1 = translate_record(Annos),
    [{QName, Type1, Annos1, MFA, Arity, ParamTypes}|translate_functions(T)];
translate_functions([]) -> [].

translate_variables([{QName, Type, Annos, MF, External}|T]) ->
    Type1 = translate_record(Type),
    Annos1 = translate_record(Annos),
    [{QName, Type1, Annos1, MF, External}|translate_variables(T)];
    translate_variables([]) -> [].

expand_local_funs(#{module        := Mod,
                    mod_type      := ModType,
                    known_fx_sigs := Funs} = Ctx) ->
   OnlyPriv = 
      % add only private lib functions to a lib
      % all functions to a main module, these are seen by function-lookup
      fun({_, _, Annos, {F,A}, _, _} = S) when ModType == library ->
            case not_private(Annos) of
               true -> false;
               false -> {true, setelement(4, S, {Mod,F,A})}
            end;
         ({_, _, _, {F,A}, _, _} = S) ->
            {true, setelement(4, S, {Mod,F,A})};
         (_) -> false
      end,
   NewFuns = lists:filtermap(OnlyPriv, Funs),
   Ctx#{known_fx_sigs := NewFuns}.

init_fun_abs(Ctx0, KeysToAdd) ->
   Ctx = expand_local_funs(Ctx0),
   Fun = fun({context_item_type, _}, M) -> M;
            (Name, M) ->
               add_context_key(M,Name,Ctx)
         end,
   Map3 = lists:foldl(Fun, #{}, KeysToAdd),
   a_term(Map3).

add_context_key(Map, default_calendar, _) -> Map;
add_context_key(Map, default_place, _) -> Map;
add_context_key(Map, default_language, _) -> Map;
add_context_key(Map, locks, _) -> Map;
add_context_key(Map, module, #{module := M}) ->
   Map#{module => M};
add_context_key(Map, dynamic_known_functions, #{known_fx_sigs := K}) ->
   Map#{named_functions => 
          [{translate_record(QName),
            translate_record(Type),
            translate_record(Annos),
            MFA,
            Arity,
            translate_record(ParamTypes)}
            || {QName, Type, Annos, MFA, Arity, ParamTypes} <- K]};
add_context_key(Map, known_decimal_formats, #{known_dec_formats := K}) ->
   Map#{known_dec_formats => K};
add_context_key(Map, base_uri, #{'base-uri' := K}) ->
   Map#{'base-uri' => K};
add_context_key(Map, known_collations, #{'base-uri' := B,
                                         'default-collation' := D,
                                         known_collations := K}) ->
   Map#{'base-uri' => B,
        'default-collation' => D,
        known_collations => K};
add_context_key(Map, known_namespaces, #{'copy-namespaces' := C,
                                         namespaces := N}) ->
   Map#{'copy-namespaces' => C,
        namespaces => N};
% when named-functions added, everything is needed
add_context_key(Map, named_functions, #{'base-uri'          := B,
                                        'construction-mode' := M,
                                        'copy-namespaces'   := C,
                                        'default-collation' := D,
                                        known_collations    := O,
                                        known_dec_formats   := K}) ->
   Map#{'base-uri'          => B,
        'construction-mode' => M,
        'copy-namespaces'   => C,
        'default-collation' => D,
        known_collations    => O,
        known_dec_formats   => K};
add_context_key(Map,Key,Ctx) ->
   Map#{Key => maps:get(Key, Ctx)}.

%% dynamic_context_items() ->
%%    context_item,
%%    context_position,
%%    context_size,
%%    variable_values,           % lives in process dictionary for global variables, locals stay local
%%    named_functions,           % only filled when fn:function-lookup is used, filled with statically known
%%    current_date_time,         % lives in process dictionary
%%    implicit_timezone,         % lives in process dictionary
%%    available_documents,       % lives in seperate process
%%    available_text_resources,  % lives in seperate process
%%    available_collections,     % lives in seperate process
%%    default_collection,        % always empty
%%    available_uri_collections, % lives in seperate process
%%    default_uri_collection,    % always empty
%%    ok.

scan_mod(#{body := B} = Map) ->
   X = scan_mod(B, maps:remove(body, Map)),
%?parse_dbg("here",ok),
   X.
   
scan_mod(#xqModule{prolog = #xqProlog{sect_1 = Prolog1,
                                      sect_2 = Prolog2}, 
                   declaration = #xqModuleDecl{namespace = ModNs}, 
                   type = library,
                   body = _}, 
         #{imports := {_, _, ImpStaticProps},
           stat_props := LocStaticProps} = Map) ->

    _ = init_mod_scan(),
    _ = set_filename(ModNs),
    _ = add_used_record_type(xqAtomicValue),
    _ = add_used_record_type(seqType),
    Variables = get_prolog_variables_and_context(Prolog2),
    Functions = get_prolog_functions(Prolog2),
    ModName = xqerl_static:string_atom(ModNs),

    VarFun1 = 
        fun(#xqVar{annotations = Annos,
                   external = External,
                   name = Name,
                   type = Type}) ->
               Name2 = xqerl_static:variable_hash_name(Name),
               {Name, Type, Annos, {Name2,1}, External};
           (C) -> % context item dec
               C
        end,
    EmptyMap = Map#{variables => lists:map(VarFun1, Variables),
                    mod_type => library,
                    module => ModName}, 

    ImportNss = get_prolog_module_import_atoms(Prolog1),
    %% add the static properties for this and all imported libs
    ImpStaticProps1 = [Sp || Sp <- ImpStaticProps, not is_record(Sp, xqError)],
    StatProps0 = lists:usort(LocStaticProps ++ ImpStaticProps1),
    %?parse_dbg("Stat",{LocStaticProps, ImpStaticProps1}),
    CtxItemType = maps:get(context_item_type, EmptyMap),
    StatProps = [{context_item_type, translate_record(CtxItemType)}|StatProps0],
    %?parse_dbg("StatProps", StatProps),
    EmptyMap1 = EmptyMap#{stat_props := StatProps0},

    % additional function in libs that closes the static context
    LibCtxClosure = revert_all(
                      init_fun_abs(
                        EmptyMap, 
                        StatProps0 -- [dynamic_known_functions, 
                                       named_functions])),
    LibCtxClosureFun =
        case StatProps0 of
            [] ->
                ?Q("close_context(C) -> C.");
            _ ->
                {map, L, B} = LibCtxClosure,
                CloseMap = {map, L, {var, ?LINE, 'C'}, B},
                ?Q("close_context(C) -> _@CloseMap.")
        end,
    % module level stuff
    P1a = {attribute,1,file,{binary_to_list(ModNs),2}},
    P1 = scan_variables(EmptyMap1, Variables, public), 
    P2 = scan_functions(EmptyMap1, Functions, ModName, public),
    P3 = ?Q(["-module('@ModName@').",
             "-export([static_props/0]).",
             "-export([init/1])."]),
    P5 = ?Q(["%-compile(inline).",
             "static_props() -> _@StatProps@."]),
    % this will also setup the global variable match
    P6 = init_function(ModName, scan_variables(EmptyMap1, Variables), Prolog1),
    P7 = variable_functions(EmptyMap, Variables, library),
    P8 = function_functions(EmptyMap, Functions, library),
    {RestExports, RestWrappers} = rest_functions(EmptyMap, Functions),
    P9 = get_global_funs(),
    ok = delete_global_funs(),
    P4 = lists:flatten(
           [?Q(export_variables(Variables, EmptyMap)),
            ?Q(export_functions(Functions)),
            RestExports,
            ?Q(used_records())]),
    P10 = lists:flatten([P3, 
                         [P1a|P4], 
                         P5, 
                         P6, 
                         LibCtxClosureFun, 
                         P7, P8, P9, 
                         local_error_fun()]),
    %?parse_dbg("ImportedMods",ImportedMods),
    %?parse_dbg("AllAbs",P10),
    {ModNs,
     library,
     ImportNss,
     translate_variables(P1),
     translate_functions(P2),
     revert_all(P10),
     RestWrappers};

scan_mod(#xqModule{prolog = #xqProlog{sect_1 = Prolog1,
                                      sect_2 = Prolog2}, 
                   type = main, 
                   body = Body}, 
         #{file_name := FileName,
           imports := {Functions1, Variables1, StaticProps},
           tab := Tab} =  Map) ->
    xqerl_context:set_statically_known_functions(Tab,[]),
    _ = init_mod_scan(),
    _ = set_filename(FileName),
    FileNameList = binary_to_list(FileName),
    _ = add_used_record_type(xqAtomicValue),
    _ = add_used_record_type(seqType),

    Variables = get_prolog_variables_and_context(Prolog2),
    Functions = get_prolog_functions(Prolog2),
    ImportNss = get_prolog_module_import_atoms(Prolog1),
    _ = [?err(Err, ?LN(0)) || #xqError{} = Err <- StaticProps],
    ok = xqerl_context:import_variables(Variables1, Tab),
    ok = xqerl_context:import_functions(Functions1, Tab),

   VarFun1 = fun(#xqVar{annotations = Annos,
                        external = External,
                        name = Name,
                        type = Type}) ->
                   Name2 = xqerl_static:variable_hash_name(Name),
                   {Name, Type, Annos, {Name2,1},External };
                (X) ->
                   X
             end,
   

   ModName = xqerl_static:string_atom(FileName),
   EmptyMap = Map#{variables => lists:map(VarFun1, Variables),
                   mod_type => main,
                   module => ModName
                  }, 
   
   MapItems = init_fun_abs(
                EmptyMap#{module => ModName},
                maps:get(stat_props, EmptyMap) ++ [options|[module|StaticProps]]),
    % abstract after this point
   P1 = ?P(?LINE, ["-module('@ModName@').",
            "-export([main/1])."
           ]),
   P1a = {attribute,1,file,{FileNameList,1}},
   P3 = ?P(?LINE, [%"-compile(inline).", % later ...
            "init() ->",
            "  _ = xqerl_lib:lnew(),",
            "  Tab = xqerl_context:init(),",
            "  Map = maps:put(tab,Tab,_@MapItems),",
            "  xqerl_context:set_named_functions(Tab,maps:get(named_functions,Map,[])),",
            "  maps:remove(named_functions,Map)."]),
   ContextTypes = [Ty || {context_item_type, Ty} <- StaticProps,
                         Ty =/= #seqType{type = item, occur = zero_or_many}],
   %?parse_dbg("StaticProps", StaticProps),
   %?parse_dbg("ImportNss", ImportNss),
   P4 = body_function(EmptyMap, Body, ImportNss, ContextTypes), % this will also setup the global variable match
   P5 = variable_functions(EmptyMap, Variables), 
   P6 = function_functions(EmptyMap, Functions),
   %{RestExports, RestWrappers} = rest_functions(EmptyMap, Functions),
   P7 = get_global_funs(),
   ok = delete_global_funs(),
   P2 = lists:flatten([?P(?LINE, export_functions(Functions)),
                       [], %RestExports,
                       ?Q(used_records())]),
   AllAbs = lists:flatten([P1,[P1a|P2],P3,P4,P5,P6,P7,local_error_fun()]),
   {FileName,
    main,
    ImportNss,
    translate_variables(scan_variables(EmptyMap,Variables, public)),
    translate_functions(scan_functions(EmptyMap,Functions,ModName, public)),
    revert_all(AllAbs),
    [] %RestWrappers
   }.

%% used in library modules instead of main init 
init_function(ModName, Variables, Prolog1) ->
    Stats = [N || {_,N} <- xqerl_context:static_namespaces()],
    ImportedUris = 
        [N ||
         #xqImport{kind = module, 
                   uri = N,
                   prefix = P} <- Prolog1,
         not lists:member(N, Stats),
         P =/= <<>>],
    Ctx0 = ?Q("Ctx0 = Ctx#{'@ModName@' => imported}"), 
    ImpSetFun = 
        fun(I, CtxVar) ->
               NC0 = next_ctx_var_name(),
               NV0 = var(?LINE, NC0),
               At = xqerl_static:string_atom(I),
               O = ?Q("_@NV0 = '@At@':init(_@CtxVar)"),
               {O, NV0}
        end,
    {ImportedVars, FCtx} = lists:mapfoldl(ImpSetFun, var(?LINE, 'Ctx0'), ImportedUris),

    VarSetFun = 
        fun({_N, _T, _A, V, _Ext}, CtxVar) -> %%% mapfold here to make new ctx for each variable
               NC = next_ctx_var_name(),
               NV = var(?LINE, NC),
               VV = var(?LINE, next_var_name()),
               O = ?Q(["_@VV = '@V@'(_@CtxVar), ",
                       "_@NV = (_@CtxVar)#{'@V@' => _@VV}"]),
               {O, NV}
        end,
    {VarSetAbs, LastCtx} = lists:mapfoldl(VarSetFun, FCtx, lists:reverse(Variables)),

    Imps = ?Q("_@@ImportedVars"),
    Body = lists:flatten([Ctx0, Imps, VarSetAbs, [LastCtx]]),
    Clauses =
        [{clause,?LINE,
          [{var,?LINE,'Ctx'}],
          [[{call,?LINE,
             {remote,?LINE,{atom,?LINE,erlang},{atom,?LINE,is_map_key}},
             [{atom,?LINE,ModName},{var,?LINE,'Ctx'}]}]],
          [{var,?LINE,'Ctx'}]},
         {clause,?LINE,[{var,?LINE,'Ctx'}],[],revert_all(Body)}],
    [{function,?LINE,init,1,Clauses}].

% RESTXQ functions:
% needs to init like a main module, and like a library
% Context setup in REST wrapper
% new context, plus all global variables set, pulls in all options set 
% at the module level and overloads them with annotations.
% all path templates as string cast to parameter type,
% all other templates as string cast to parameter type or empty sequence 
% body can be any of the accepted types, xml, json, text, binary; 
% parsed to parameter type
% if return method has body, the function can return sequence where first 
% is an xml element with all header values set. 
% external variable are not set by rest
% if rest: init/2   -> {cowboy_rest, Req, Opts}
% if get/head content_types_provided/2 -> {List, Req, State} 
% if put/post content_types_accepted/2 -> {List, Req, State}
% if delete   delete_resource/2 -> {true, Req, State}
rest_functions(#{module := Mod} = Ctx, Functions) ->
   % internal function name to call from REST wrapper
   FxNameFun = 
     fun(#xqFunctionDef{name = FxName, arity = FxArity}) ->
           {FName, _} = xqerl_static:function_hash_name(FxName, FxArity),
           FName
     end,
   RestFuns = [{F#xqFunctionDef.id,
                FxNameFun(F),
                F#xqFunctionDef.params,
                xqerl_restxq:parse_annos(translate_record(F#xqFunctionDef.annotations))} || 
               #xqFunctionDef{annotations = Annos} = F <-  Functions,
               #xqAnnotation{name = #xqQName{namespace = ?REST, 
                                             local_name = <<"path">>}} <- Annos],
   if RestFuns == [] ->
         ok;
      true ->
         init_ctx_function(Ctx)
   end,
   %?parse_dbg("RestFuns",RestFuns),
   UsedMethods = lists:usort([M || {_,_,_,#{method := Ms}} <- RestFuns, M <- Ms]),
   % allowed_methods callback
   MethodBinFun = fun(Atom) -> string:uppercase(atom_to_binary(Atom, latin1)) end,
   Ms = [MethodBinFun(M) || M <- UsedMethods],
   E0 = if UsedMethods == [] -> [];
           true ->
              G0 = ?Q(["allowed_methods(Req, State) -> {_@Ms@, Req, State}.",
                       "options(Req, State) -> ",
                       " case State of",
                       "  #{options := #{input_media_types := [{_, Fun}]}} ->",
                       "   _@Mod@:Fun(Req, State);",
                       "  _ -> ",
                       "   Opts = lists:usort([<<\"OPTIONS\">>|[string:uppercase(erlang:atom_to_binary(Atom, latin1)) || Atom <- maps:keys(State)]]),",
                       "   <<\",\", Allow/binary>> = << <<\",\", M/binary>> || M <- Opts >>,",
                       "   Req2 = cowboy_req:set_resp_header(<<\"allow\">>, Allow, Req),"
                       "  {ok, Req2, State}",
                       " end."]),
              _ = add_global_funs([G0]),
              ?Q("-export([allowed_methods/2, options/2]).")
        end,
%   ?parse_dbg("UsedMethods",UsedMethods),
   IsProv = UsedMethods =/= [],%[1 || M <- UsedMethods, M == get orelse M == head orelse M == put orelse M == post] =/= [],
   IsAccp = UsedMethods =/= [],%[1 || M <- UsedMethods, M == put orelse M == post] =/= [],
   IsDele = lists:member(delete, UsedMethods),
   
   E1 = if IsProv ->
              Cls_1 = 
                 [begin
                     Mb = MethodBinFun(M),
                     ?P(?LINE, ["content_types_provided(#{method := _@Mb@} = Req, ",
                        "#{_@M@ := #{output_media_types := M}} = State) ->",
                        " {M,Req,State}."])
                  end
                 || 
                  M <- UsedMethods],
             G1 = join_functions(Cls_1),
             _ = add_global_funs([G1]),
             ?Q("-export([content_types_provided/2]).");
          true -> []
       end,
   E2 = if IsAccp ->
              Cls_2 = 
                 [begin
                     Mb = MethodBinFun(M),
                     ?P(?LINE, ["content_types_accepted(#{method := _@Mb@} = Req, ",
                        "#{_@M@ := #{input_media_types := M}} = State) ->",
                        " {M,Req,State}."])
                  end
                 || 
                  M <- UsedMethods],
             G2 = join_functions(Cls_2),
             _ = add_global_funs([G2]),
             ?Q("-export([content_types_accepted/2]).");
          true -> []
       end,
   E3 =
     if IsDele ->
             G3 = ?Q(["delete_resource(Req, #{delete := #{input_media_types := [{_, Fun}]}} = State) ->",
                      "_@Mod@:Fun(Req, State);",
                      "delete_resource(Req, State) ->",
                      " {false, Req, State}."
                     ]),
             _ = add_global_funs([G3]),
             ?Q("-export([delete_resource/2]).");
          true -> []
       end,
   E4 = lists:flatten([E0,E1,E2,E3]),
   Exports1 = if E4 == [] ->
                    [];
                 true ->
                    G4 = ?P(?LINE,"init(Req, Opts) -> {cowboy_rest, Req, Opts}."),
                    _ = add_global_funs([G4]),
                    [?Q("-export([init/2]).")|E4]
              end,
   % cowboy callbacks are done, now on to the wrapper functions
   ParamMapFun = 
     fun(#xqVar{id = Id,
                name = #xqQName{prefix = Px, local_name = Ln}, 
                type = Ty}, VarMap) ->
           Nm = if Px == <<>> -> Ln;
                   true -> <<Px/binary,":", Ln/binary>>
                end,
           VarMap#{Nm => {Id,Ty}}
     end,
   FunMap = 
     fun({FId, FName, FParams, #{fields := Fields,
                                 output := Serial0,
                                 param_cookie := PCookies,
                                 param_form := PForm,
                                 param_header := PHead,
                                 param_query := PQry} = FRestMap}) ->
           Serial = if is_map_key('omit-xml-declaration', Serial0) ->
                          Serial0;
                       true ->
                          Serial0#{'omit-xml-declaration' => false}
                    end,
           ParamMap = lists:foldl(ParamMapFun, #{}, FParams),
           FieldPart = param_fields(Fields, ParamMap),
           CookiePart = param_cookies(PCookies, ParamMap),
           HeaderPart = param_headers(PHead, ParamMap),
           FormPart = param_forms(PForm, ParamMap),
           QryPart = param_queries(PQry, ParamMap),
           Parts = lists:flatten([FieldPart,CookiePart,HeaderPart,FormPart,QryPart]),
           LocalParams = [{var,?LINE,list_to_atom("Var_" ++ integer_to_list(Id))} 
                         || #xqVar{id = Id} <- FParams],
           %?parse_dbg("Parts",Parts),

           HasUpd = maps:get(contains_updates, Ctx),
           FunName = rest_fun_name(FId),
           G5 = if HasUpd == true -> 
                ?Q(["'@FunName@'(#{method := Method} = Req, State) -> ",
                    "_@Parts,",
                    " PUL = xqerl_update:pending_update_list(erlang:self()),",
                    " {ok, TRA} = locks_agent:start([{abort_on_deadlock, true}]),",
                    "Ctx = (init(init_ctx()))#{pul => PUL, trans => TRA},"
                    "XQuery = '@FName@'(Ctx, _@@LocalParams),",
                    "{StatusCode, ReturnVal, Req1} = xqerl_restxq:return_value(XQuery,Ctx#{options => _@Serial@}, Req),",
                    "xqerl_context:destroy(Ctx),",
                    "case Method of",
                    " <<\"DELETE\">> ->",
                    "  {true, Req1, State};",
                    " _ ->",
                    "  Req2 = xqerl_restxq:send_reply(StatusCode, ReturnVal, Req1),",
                    "  {stop, Req2, State}",
                    "end."
                   ]);
                 HasUpd == locks -> 
                ?Q(["'@FunName@'(#{method := Method} = Req, State) -> ",
                    "_@Parts,",
                    " {ok, TRA} = locks_agent:start([{abort_on_deadlock, true}]),",
                    "Ctx = (init(init_ctx()))#{trans => TRA},"
                    "XQuery = '@FName@'(Ctx, _@@LocalParams),",
                    "{StatusCode, ReturnVal, Req1} = xqerl_restxq:return_value(XQuery,Ctx#{options => _@Serial@}, Req),",
                    "xqerl_context:destroy(Ctx),",
                    "case Method of",
                    " <<\"DELETE\">> ->",
                    "  {true, Req1, State};",
                    " _ ->",
                    "  Req2 = xqerl_restxq:send_reply(StatusCode, ReturnVal, Req1),",
                    "  {stop, Req2, State}",
                    "end."
                   ]);
                 true ->
                 ?Q(["'@FunName@'(#{method := _} = Req, State) -> ",
                     "_@Parts,",
                     "Ctx = init(init_ctx()),"
                     "XQuery = '@FName@'(Ctx, _@@LocalParams),",
                     "{StatusCode, ReturnVal, Req1} = xqerl_restxq:return_value(XQuery,Ctx#{options => _@Serial@}, Req),",
                     "xqerl_context:destroy(Ctx), ",
                     "case Method of",
                     " <<\"DELETE\">> ->",
                     "  {true, Req1, State};",
                     " _ ->",
                     "  Req2 = xqerl_restxq:send_reply(StatusCode, ReturnVal, Req1),",
                     "  {stop, Req2, State}",
                     "end."
                    ])
                 end,
           add_global_funs([G5]),
           
           {FunName, FRestMap}
     end,
   Wrappers = lists:map(FunMap, RestFuns),
   Exports2 = lists:foldl(fun({Fx,_}, Acc) ->
                                [?P(?LINE,"-export(['@Fx@'/2]).")|Acc]
                          end, Exports1, Wrappers),
   {Exports2, Wrappers}.

rest_fun_name(Id) ->
   list_to_atom("rest_wrap__" ++ integer_to_list(Id)).

% each function has been created by ?P(?LINE,"afun(_@A,_@B) -> _@X."
% join their clauses to one function.
join_functions([]) -> [];
join_functions([H|_] = Funs) ->
    Name = ?e:function_name(H),
    Clauses = lists:flatten([?e:function_clauses(F) || 
                               F <- Funs,
                               ?e:type(F) == function]),
    ?e:function(Name, Clauses).

init_ctx_function(Ctx) ->
   MapItems = init_fun_abs(Ctx, lists:usort(maps:get(stat_props, Ctx) ++ [options,module] )),
   G = ?P(?LINE, ["init_ctx() ->",
           "  _ = xqerl_lib:lnew(),",
           "  Tab = xqerl_context:init(),",
           "  Map = maps:put(tab,Tab,_@MapItems),",
           "  xqerl_context:set_named_functions(Tab,maps:get(named_functions,Map,[])),",
           "  maps:remove(named_functions,Map)."]),
   add_global_funs([G]).


param_fields([],_) -> [];
param_fields([{body, VarName}|T],Map) ->
   {VarId, _VarType} = maps:get(VarName, Map),
   VarAtom = {var,?LINE,list_to_atom("Var_" ++ integer_to_list(VarId))},
   TmpAtom = {var,?LINE,list_to_atom("TVar_" ++ integer_to_list(VarId))},
   [?P(?LINE, ["_@TmpAtom = xqerl_mod_http_client:read_body(Req),",
        "ContentType = cowboy_req:header(<<\"content-type\">>, Req),",
        "_@VarAtom = xqerl_mod_http_client:parse_body(ContentType, _@TmpAtom, <<>>)"
       ])|param_fields(T,Map)];
param_fields([{Atom, VarName}|T],Map) ->
   {VarId, VarType} = maps:get(VarName, Map),
   VarType1 = translate_record(VarType),
   VarAtom = {var,?LINE,list_to_atom("Var_" ++ integer_to_list(VarId))},
   TmpAtom = {var,?LINE,list_to_atom("TVar_" ++ integer_to_list(VarId))},
   [?P(?LINE, ["_@TmpAtom = cowboy_req:binding(_@Atom@, Req),",
        "_@VarAtom = xqerl_types:cast_as(_@TmpAtom, _@VarType1@)"
       ])|param_fields(T,Map)].

param_headers([],_) -> [];
param_headers(Params,Map) ->
   [begin
       {VarId, VarType} = maps:get(VarName, Map),
       VarType1 = translate_record(VarType),
       VarAtom = {var,?LINE,list_to_atom("Var_" ++ integer_to_list(VarId))},
       TmpAtom = {var,?LINE,list_to_atom("TVar_" ++ integer_to_list(VarId))},
       ?P(?LINE, ["_@TmpAtom = cowboy_req:header(_@ParamName@, Req, _@Default0@),",
           "_@VarAtom = xqerl_types:cast_as(_@TmpAtom, _@VarType1@)"
           ])
    end || {ParamName, VarName, Default0} <- Params].

param_cookies([],_) -> [];
param_cookies(Params,Map) ->
   [?Q("Cookies = cowboy_req:parse_cookies(Req)")|
   [begin
       {VarId, VarType} = maps:get(VarName, Map),
       VarType1 = translate_record(VarType),
       VarAtom = {var,?LINE,list_to_atom("Var_" ++ integer_to_list(VarId))},
       TmpAtom = {var,?LINE,list_to_atom("TVar_" ++ integer_to_list(VarId))},
       ?P(?LINE, ["_@TmpAtom = proplists:get_value(_@CookieName@, Cookies, _@Default0@),",
           "_@VarAtom = xqerl_types:cast_as(_@TmpAtom, _@VarType1@)"
           ])
    end || {CookieName, VarName, Default0} <- Params]
   ].

param_forms([],_) -> [];
param_forms(Params, Map) ->
   [?Q("FormKeyVals = xqerl_restxq:read_multipart_form_data(Req)")|
   [begin
       {VarId, VarType} = maps:get(VarName, Map),
       VarType1 = translate_record(VarType),
       VarAtom = {var,?LINE,list_to_atom("Var_" ++ integer_to_list(VarId))},
       TmpAtom = {var,?LINE,list_to_atom("TVar_" ++ integer_to_list(VarId))},
       ?P(?LINE, ["_@TmpAtom = proplists:get_value(_@ParamName@, FormKeyVals, _@Default0@),",
           "_@VarAtom = xqerl_types:cast_as(_@TmpAtom, _@VarType1@)"
           ])
    end || {ParamName, VarName, Default0} <- Params]].

param_queries([],_) -> [];
param_queries(Params,Map) ->
   [?Q("QueryKeyVals = cowboy_req:parse_qs(Req)")|
   [begin
       {VarId, VarType} = maps:get(VarName, Map),
       VarType1 = translate_record(VarType),
       VarAtom = {var,?LINE,list_to_atom("Var_" ++ integer_to_list(VarId))},
       TmpAtom = {var,?LINE,list_to_atom("TVar_" ++ integer_to_list(VarId))},
       ?P(?LINE, ["_@TmpAtom = proplists:get_value(_@ParamName@, QueryKeyVals, _@Default0@),",
           "_@VarAtom = xqerl_types:cast_as(_@TmpAtom, _@VarType1@)"
           ])
    end || {ParamName, VarName, Default0} <- Params]].

%% get_imported_variables(Module) ->
%%    {_,Variables,_} = xqerl_context:get_module_exports(Module),
%%    [{var,?LINE,V} || {_,_,_A,{_,V},_} <- lists:sort(Variables)].
%% 
%% get_local_variables(Variables) ->
%%    [{var,?LINE,V} || {_,_,_,V,_} <- Variables].



body_function(ContextMap, Body, ImportNss, ContextTypes) ->
    %?parse_dbg("ContextTypes", ContextTypes),
   _ = erlang:put(ctx, 1),
   ImpSetFun = fun(At, CtxVar) ->
                     NC0 = next_ctx_var_name(),
                     NV0 = {var,?LINE,NC0},
                     O = ?P(?LINE,"_@NV0 = '@At@':init(_@CtxVar)"),
                     {O,NV0}
               end,
   {ImportedVars,FCtx} = lists:mapfoldl(ImpSetFun, {var,?LINE,'Ctx0'}, ImportNss),
   
   VarSetFun = 
      fun({_N,_T,_A,{V,1},_Ext}, CtxVar) ->
            AV = ?e:variable(next_var_name()),
            NC = next_ctx_var_name(),
            NV = {var,?LINE,NC},
            P = ?P(?LINE, ["_@AV = '@V@'(_@CtxVar),",
                    "_@NV = (_@CtxVar)#{'@V@' => _@AV}"]),
            {P, NV};
         (#xqContextItemDecl{anno = Line,
                             type = CType, 
                             external = External,
                             default = Expr}, {_,_,C} = CtxVar1) ->
            Occ = if External =:= true  -> zero_or_one;
                     Expr =/= undefined -> one;
                     true               -> zero_or_one
                  end,
            C1 = expr_do(ContextMap, CType#xqSeqType{occur = Occ}),
            Unique = [expr_do(ContextMap, X) || X<- lists:usort(ContextTypes)],
            Dmy = {var, ?LINE, 'CI'},
            Checks = catch_wrap([?Q("_ = xqerl_types:check(_@Dmy, _@U)") || 
                                 U <- Unique], Line),
            NC = next_ctx_var_name(),
            NV = {var,?LINE,NC},
            NextVar = {var,?LINE,next_var_name()},
            NewC = set_context_variable_name(ContextMap, C),
            E2 = expr_do(NewC, Expr),
            P = ?Q(["_@NV = try ",
                    " {CI,_} = maps:get('context-item', Options, {_@E2, 1}),"
                    " _@@Checks ,"
                    " _@NextVar = xqerl_types:promote(CI,_@C1),",
                    " xqerl_context:set_context_item(_@CtxVar1,_@NextVar,1,",
                    "      xqerl_seq3:size(_@NextVar))",
                    " catch _:CE -> local_error(CE, _@Line@)",
                    "end"]),
            {P, NV}
      end,
   % reverse list that the dependencies are correct   
   {VarSetAbs0,{_,_,LastCtx}} = 
     lists:mapfoldl(VarSetFun, FCtx,
                    lists:reverse(maps:get(variables, ContextMap))),
   VarSetAbs = lists:flatten(VarSetAbs0),
   BodyAbs = expr_do(maps:put(ctx_var, LastCtx,ContextMap), Body),
   HasUpd = maps:get(contains_updates, ContextMap),
   V1 = ?P(?LINE,"_@@VarSetAbs"),
   M = if HasUpd == true ->
             ?P(?LINE, ["main(Options) ->",
                 " PUL = xqerl_update:pending_update_list(erlang:self()),",
                 " {ok, TRA} = locks_agent:start([{abort_on_deadlock, true}]),",
                 " Ctx0 = xqerl_context:merge(init(), Options#{pul => PUL, trans => TRA}),",
                 " _@@ImportedVars,",
                 " _@@V1,",
                 "_@BodyAbs."]);
          HasUpd == locks ->
             ?P(?LINE, ["main(Options) ->",
                 " {ok, TRA} = locks_agent:start([{abort_on_deadlock, true}]),",
                 " Ctx0 = xqerl_context:merge(init(), Options#{trans => TRA}),",
                 " _@@ImportedVars,",
                 " _@@V1,",
                 "_@BodyAbs."]);
          true ->
             ?P(?LINE, ["main(Options) ->",
                 " Ctx0 = xqerl_context:merge(init(), Options),",
                 " _@@ImportedVars,",
                 " _@@V1,",
                 "_@BodyAbs."])
       end,             
   [M].



variable_functions(ContextMap, Variables) ->
   variable_functions(ContextMap, Variables, main).

variable_functions(ContextMap, Variables, ModType) ->
   LocCtx = set_context_variable_name(ContextMap, '__Ctx'),
   F = fun(#xqVar{id = _, name = QName, expr = Expr, 
                  external = Ext, type = Type0, anno = LineNum}) ->
             Type = if Type0 == undefined ->
                          translate_record(#xqSeqType{});
                       true ->
                          translate_record(Type0)
                    end,
             #xqQName{namespace = Ns1, prefix = P1, local_name = L1} = QName,
             QNameStr = if Ext == true andalso ModType == library;
                           Ext == true andalso P1 =/= <<>> ->
                              % Ns1 may already have Q{} wrapper
                              case Ns1 of
                                 <<"Q{", _/binary>> ->
                                    <<Ns1/binary, L1/binary>>;
                                 _ ->
                                    <<"Q{", Ns1/binary,"}", L1/binary>>
                              end;
                           P1 == undefined ->
                              <<"Q{", Ns1/binary,"}", L1/binary>>;
                           P1 == <<>> ->
                              L1;
                           true ->
                              <<P1/binary, ":", L1/binary>>
                        end,
             erlang:put(ctx, 1),
             Name = xqerl_static:variable_hash_name(QName),
             Expr1 = expr_do(LocCtx, Expr),
             % when external, check for set value first, then default, 
             % or then XPDY0002 when not set.
             if Ext == true ->
                  ?Q(["'@Name@'(__Ctx) ->",
                      "   Tmp = begin _@Expr1 end,",
                      "   case maps:get(_@QNameStr@,__Ctx,Tmp) of",
                      "      undefined -> local_error('XPDY0002', _@LineNum@);",
                      "      X -> ",
                      "  case catch xqerl_types:promote(X, _@Type@) of",
                      "   #xqError{} = Err -> local_error(Err, _@LineNum@);",
                      "   Y -> Y",
                      "  end"
                      " end."]);
                true ->
                   % close the context in lib variables
                   case ModType of
                      library ->
                         ?P(?LINE, ["'@Name@'(__Ctx0) ->",
                             "   __Ctx = close_context(__Ctx0),",
                             "   _@Expr1."]);
                      _ ->
                         ?P(?LINE, ["'@Name@'(__Ctx) ->",
                             "   _@Expr1."])
                   end
             end
     end,
   [begin 
        F(V) 
    end || 
    #xqVar{} = V <- Variables].

%% internal_variable_function(LocCtx, #xqVar{id = _, name = QName, expr = Expr, 
%%                                           external = Ext, type = Type0, 
%%                                           anno = LineNum}) ->
%%    %_ = set_line(LineNum),
%%    CtxVar = {var, ?LINE, get_context_variable_name(LocCtx)},
%%    Type = if Type0 == undefined ->
%%                  translate_record(#xqSeqType{});
%%               true ->
%%                  translate_record(Type0)
%%            end,
%%     #qname{namespace = Ns1, prefix = P1, local_name = L1} = QName,
%%     QNameStr = if P1 == <<>> ->
%%                      L1;
%%                   P1 == undefined ->
%%                      <<"Q{", Ns1/binary, "}", L1/binary>>;
%%                   true ->
%%                      <<P1/binary, ":", L1/binary>>
%%                end,
%%     Expr1 = expr_do(LocCtx, Expr),
%%     % when external, check for set value first, then default, 
%%     % or then XPDY0002 when not set.
%%     if Ext == true ->
%%          ?P(?LINE, ["fun() ->",
%%              "   Tmp = begin _@Expr1 end,",
%%              "   case maps:get(_@QNameStr@,_@CtxVar,Tmp) of",
%%              "      undefined -> erlang:throw(xqerl_error:error('XPDY0002'));",
%%              "      X -> xqerl_types:promote(X, _@Type@) end end()"]);
%%        true ->
%%          ?P(?LINE, ["fun() ->",
%%              "   _@Expr1 end()"])
%%     end.

function_functions(ContextMap, Functions) ->
   function_functions(ContextMap, Functions, main).

function_functions(ContextMap, Functions, ModType) ->
   CtxName = get_context_variable_name(ContextMap),
   F =fun(#xqFunctionDef{name = FxName,
                         arity = Arity,
                         %type = RType,
                         params = Params,
                         body = Expr}) ->
            erlang:put(ctx, 1),
            {FName, _} = xqerl_static:function_hash_name(FxName, Arity),
            % add parameters to scope
            VF = fun(#xqVar{id = VId,
                            name = Name,
                            type = Type,
                            annotations = Annos}, Map) ->
                       VarName = list_to_atom(
                                   lists:concat([param_prefix(), VId])),
                       %% {name,type,annos,Name}
                       NewMap = add_param({Name,Type,Annos,VarName}, Map),
                       {{var,?LINE,VarName}, NewMap}
                 end,
            {List,Map2} =  lists:mapfoldl(VF, ContextMap, Params),
            CtxName2 = next_ctx_var_name(),
            Map3 = set_context_variable_name(Map2, CtxName2),
            E1 = alist(expr_do(Map3#{in_local_fun => true}, Expr)),
            C1 = {var,?LINE,CtxName},
            C2 = {var,?LINE,CtxName2},
            % do not allow functions to access the current context item
            case ModType of
               library ->
                  ?P(?LINE, ["'@FName@'(_@C1,_@@List) ->",
                      "   _@C2 = close_context(xqerl_context:set_empty_context_item(_@C1)),",
                      "   _@E1."]);
               _ ->
                  ?P(?LINE, ["'@FName@'(_@C1,_@@List) ->",
                      "   _@C2 = xqerl_context:set_empty_context_item(_@C1),",
                      "   _@E1."])
            end
     end,
   [ F(V)
     || #xqFunctionDef{} = V <- Functions].

not_private(Annos) ->
    [ok ||
     #xqAnnotation{name =
                     #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>,
                              local_name = <<"private">>}}
    <- Annos] == [].


export_functions(Functions) ->
   Specs = [ xqerl_static:function_hash_name(Name, Arity) 
           || #xqFunctionDef{name = Name, 
                          arity = Arity,
                          annotations = _Annos} <- Functions%,
              %not_private(Annos)
           ],
   export_atts(Specs).

export_variables(Variables, _Ctx) ->
   Specs = [ {xqerl_static:variable_hash_name(Name),1}
           || #xqVar{name = Name, 
                     annotations = _Annos} <- Variables%,
              %not_private(Annos)
           ],
   export_atts(Specs).

export_atts([]) -> [];
export_atts([{F,A}|T]) ->
    lists:concat(["-export(['",F,"'/",A,"]). ",export_atts(T)]).

param_types(Params) ->
    [ translate_record(T) || #xqVar{type = #xqSeqType{} = T} <- Params].


expr_do(Ctx, [T]) ->
    expr_do(Ctx, T);
expr_do(_Ctx, V) when is_number(V);
                      is_binary(V) ->
    ?Q("_@V@");
expr_do(_Ctx, Atom) when Atom =:= infinity;
                         Atom =:= neg_infinity;
                         Atom =:= neg_zero;
                         Atom =:= nan;
                         Atom =:= true;
                         Atom =:= false;
                         Atom =:= ignore;
                         Atom =:= undefined ->
    atom(0, Atom);

expr_do(_Ctx, 'empty-sequence') -> {nil,?LINE};
expr_do(_Ctx, 'empty-expr') -> {nil,?LINE};

% inline errors
expr_do(_Ctx, {error, Line, ErrCode}) when is_atom(ErrCode) ->
    ?Q("local_error(_@ErrCode@, _@Line@)");

expr_do(_Ctx, <<>>) ->
    ?Q("<<>>");

expr_do(_Ctx, []) ->
    {nil,?LINE};

% context item can be a variable of set in the context map
expr_do(#{context_variable := CtxVar}, {'context-item', _}) ->
    ?Q("_@CtxVar");
expr_do(Ctx, {'context-item', Line}) ->
    CtxName = var(0, get_context_variable_name(Ctx)),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_context:get_context_item(_@CtxName) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

% it is returned because empty map and array can match any fun as parameter 
expr_do(Ctx, {false_not_empty, Line, Expr}) ->
    E1 = expr_do(Ctx, Expr),
    % throws error
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_types:ensure_empty(_@E1) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

expr_do(Ctx, {eff_bool, Line, Expr}) ->
    E = expr_do(Ctx, Expr),
    catch_wrap(?Q("xqerl_operators:eff_bool_val(_@E)"), Line);

% local module variable
expr_do(Ctx, {variable, {Name, 1}}) when is_atom(Name) ->
    M = var(?LINE, get_context_variable_name(Ctx)),
    Result = var(?LINE, next_var_name()),
    ?Q(["case maps:get('@Name@',_@M, undefined) of",
        " undefined -> io:format(\"~p~n\", ['@Name@']),erlang:throw(xqerl_error:error('XQDY0054'));",
        " _@Result -> _@Result",
        "end"]);

% remote module variable
expr_do(Ctx, {variable, {Mod, Name}}) when is_atom(Mod), is_atom(Name) ->
    M = var(?LINE, get_context_variable_name(Ctx)),
    a_var({Mod, Name}, M);

% local variable
expr_do(_Ctx, {variable, Name}) when is_atom(Name) ->
    V = var(?LINE, Name),
    case atom_to_list(Name) of
        "__AddlVar" ++ _ ->
            % special 'additional' variable in thrown error
            ?Q("xqerl_lib:format_stacktrace(_@V)");
        _ ->
            V
    end;

expr_do(Ctx, #xqUpdateExpr{anno = Line, kind = rename, src = Val, tgt = Tgt}) ->
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    ValAbs = expr_do(Ctx, Val),
    Namespaces = abs_ns_list(Ctx),
    TgtAbs = expr_do(Ctx, Tgt),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["begin ",
              " xqerl_update:add(_@CtxVar, {rename, _@TgtAbs, ",
              " case catch xqerl_node:ensure_qname(_@ValAbs, _@Namespaces) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              " end})",
              "end"]);
expr_do(Ctx, #xqUpdateExpr{anno = Line, kind = delete, tgt = Tgt}) ->
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    TgtAbs = expr_do(Ctx, Tgt),
    ?Q("xqerl_update:add(_@CtxVar, {delete, _@TgtAbs})");
expr_do(Ctx, #xqUpdateExpr{anno = Line, 
                           kind = InsertKind, src = Src, tgt = Tgt}) ->
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    SrcAbs = expr_do(Ctx, Src),
    TgtAbs = expr_do(Ctx, Tgt),
    ?Q("xqerl_update:add(_@CtxVar, {_@InsertKind@, _@TgtAbs, _@SrcAbs})");
expr_do(Ctx, #xqModifyExpr{anno = Line,
                           id = Id, vars = VarsStmt, expr = ExprStmt,
                           return = ReturnStmt}) ->
    CtxNext = next_ctx_var_name(),
    Ctx1 = set_context_variable_name(Ctx, CtxNext),
    CtxVar1 = var(Line, CtxNext),
    PFun = fun(#xqVar{anno = VLine,
                      id = ID, 
                      name = #xqQName{} = Name,
                      type = Type, 
                      annotations = Annos,
                      expr = VarEx}, Map) ->
                  VarExprAbs = expr_do(Map, VarEx),
                  VarName = copy_variable_name(ID),
                  %% {name,type,annos,Name}
                  NewMap = add_variable({Name,Type,Annos,VarName}, Map),
                  VarAbs = var(VLine, VarName),
                  {?Q("_@VarAbs = xqerl_node:copy_node(_@VarExprAbs)"), NewMap}
           end,
    {CopySet, Ctx2} =  lists:mapfoldl(PFun, Ctx1, VarsStmt),
    CtxVar = var(Line, get_context_variable_name(Ctx)),

    ModifyMatch = [var(VLine, local_variable_name(ID)) || 
                     #xqVar{anno = VLine, id = ID} <- VarsStmt],
    CopyMatch = [var(VLine, copy_variable_name(ID)) || 
                   #xqVar{anno = VLine, id = ID} <- VarsStmt],
    ExprStmtAbs = expr_do(Ctx2, ExprStmt),
    Pul = var(Line, list_to_atom("Pul__" ++ integer_to_list(Id))),
    RetCtx = lists:foldl(fun(#xqVar{id = ID,
                                    name = #xqQName{} = Name,
                                    type = Type,
                                    annotations = Annos}, C) ->
                                VarName = local_variable_name(ID),
                                add_variable({Name,Type,Annos,VarName}, C)
                         end, Ctx, VarsStmt),
    RetAbs = expr_do(RetCtx, ReturnStmt),
    ?P(Line, ["begin",
              " _@Pul = xqerl_update:pending_update_list(erlang:self()),",
              " _@CtxVar1 = _@CtxVar#{pul => _@Pul},",
              "_@CopySet,",
              "_@ExprStmtAbs,",
              " [_@@ModifyMatch] = xqerl_update:apply_local_updates(_@CtxVar1,",
              " _@Pul, [_@@CopyMatch]),",
              " _@RetAbs",
              "end"]);

expr_do(Ctx, #xqTypingExpr{type = 
                             #xqSeqType{type =
                                          #xqQName{prefix = <<"xs">>,
                                                   local_name = <<"QName">>}
                                       } = Type
                          } = Node) ->
    expr_do(Ctx, Node#xqTypingExpr{type = Type#xqSeqType{type = 'xs:QName'}});
% atomize/promote bodies of functions
expr_do(Ctx, #xqTypingExpr{anno = L,
                           kind = promote,
                           expr = {atomize, #xqFunctionDef{body = Body} = Expr}, 
                           type = #xqSeqType{type = #xqFunTest{type = Type}}}) ->
    Body1 = #xqTypingExpr{anno = L,
                          kind = promote,
                          expr = {atomize, Body}, 
                          type = Type},
    expr_do(Ctx, Expr#xqFunctionDef{body = Body1});
expr_do(Ctx, #xqTypingExpr{anno = L,
                           kind = promote,
                           expr = #xqFunctionDef{body = Body} = Expr, 
                           type = #xqSeqType{type = #xqFunTest{type = Type}}}) ->
    Body1 = #xqTypingExpr{anno = L,
                          kind = promote,
                          expr = Body, 
                          type = Type},
    expr_do(Ctx, Expr#xqFunctionDef{body = Body1});
% cardinality ensure
expr_do(Ctx, #xqTypingExpr{kind = ensure, expr = #xqAtomicValue{} = Expr}) ->
    expr_do(Ctx, Expr);
expr_do(Ctx, #xqTypingExpr{kind = ensure,
                           expr = Expr, 
                           type = #xqSeqType{occur = zero_or_many}}) ->
    expr_do(Ctx, Expr);
expr_do(Ctx, #xqTypingExpr{anno = L,
                           kind = ensure,
                           expr = Expr, 
                           type = #xqSeqType{occur = Occur}}) ->
    Expr1 = expr_do(Ctx, Expr),
    FunName =
        if
            Occur == one -> ensure_one;
            Occur == one_or_many -> ensure_one_or_more;
            Occur == zero_or_one -> ensure_zero_or_one;
            true -> ensure_zero_or_more
        end,
    Error = var(L, next_var_name()),
    Result = var(L, next_var_name()),
    ?P(L, ["case xqerl_seq3:'@FunName@'(_@Expr1) of",
           " {error, _@Error} -> local_error(_@Error, _@L@);",
           " _@Result -> _@Result",
           "end"]);

% instance of / castable
expr_do(Ctx, #xqTypingExpr{anno = L,
                           kind = instance,
                           expr = Expr, 
                           type = Type}) ->
    Expr1 = expr_do(Ctx, Expr),
    Type1 = expr_do(Ctx, Type),
    % does not throw errors
    ?P(L, ["xqerl_types:instance_of(_@Expr1, _@Type1)"]);
expr_do(_Ctx, #xqTypingExpr{anno = L,
                            kind = castable,
                            expr = 'empty-sequence', 
                            type = #xqSeqType{occur = O}}) ->
    case O of
        one -> atom(L, false);
        zero_or_one -> atom(L, true)
    end;

expr_do(Ctx, #xqTypingExpr{anno = L,
                           kind = castable,
                           expr = Expr, 
                           type = #xqSeqType{type = 'xs:QName'}}) ->
    % namespace sensitive
    CtxVar = {var, ?LINE, get_context_variable_name(Ctx)},
    Expr1 = expr_do(Ctx, Expr),
    % does not throw errors
    ?P(L, ["xqerl_types:castable(_@Expr1, 'xs:QName', maps:get(namespaces, _@CtxVar))"]);
expr_do(Ctx, #xqTypingExpr{anno = L,
                           kind = castable,
                           expr = Expr, 
                           type = Type}) ->
    Expr1 = expr_do(Ctx, Expr),
    Type1 = expr_do(Ctx, Type),
    % does not throw errors
    ?P(L, ["xqerl_types:castable(_@Expr1, _@Type1)"]);
% cast as
expr_do(Ctx, #xqTypingExpr{anno = L,
                           kind = cast,
                           expr = Expr, 
                           type = #xqSeqType{type = 'xs:QName'}}) ->
    % namespace sensitive, can throw error
    CtxVar = {var, ?LINE, get_context_variable_name(Ctx)},
    Expr1 = expr_do(Ctx, Expr),
    Error = var(L, next_var_name()),
    Result = var(L, next_var_name()),
    ?P(L, ["case catch xqerl_types:cast_as(_@Expr1,'xs:QName', maps:get(namespaces, _@CtxVar)) of",
           " #xqError{} = _@Error -> local_error(_@Error, _@L@);",
           " _@Result -> _@Result",
           "end"]);
% other casts or check
expr_do(Ctx, #xqTypingExpr{anno = L,
                           kind = Kind,
                           expr = Expr, 
                           type = Type}) when Kind == cast;
                                              Kind == check;
                                              Kind == promote ->
    Expr1 = expr_do(Ctx, Expr),
    Type1 = expr_do(Ctx, Type),
    Error = var(L, next_var_name()),
    Result = var(L, next_var_name()),
    case Kind of
        cast ->
            ?P(L, ["case catch xqerl_types:cast_as(_@Expr1, _@Type1) of",
                   " #xqError{} = _@Error -> local_error(_@Error, _@L@);",
                   " _@Result -> _@Result",
                   "end"]);
        check ->
            ?P(L, ["case catch xqerl_types:check(_@Expr1, _@Type1) of",
                   " #xqError{} = _@Error -> local_error(_@Error, _@L@);",
                   " _@Result -> _@Result",
                   "end"]);
        promote ->
            ?P(L, ["case catch xqerl_types:promote(_@Expr1, _@Type1) of",
                   " #xqError{} = _@Error -> local_error(_@Error, _@L@);",
                   " _@Result -> _@Result",
                   "end"])
    end;

% pragmas
expr_do(Ctx, #xqExtensionExpr{pragmas = [{QName, Value}],
                              expr = Expr}) ->
    case QName of
        %XXX change this to a new statement type that does this pragma
        #xqQName{namespace = <<"http://xqerl.org/xquery">>,
                 local_name = <<"parallel">>} ->
            case string:trim(Value) of
                <<"unordered">> ->
                    {unordered_parallel, expr_do(Ctx, Expr)};
                _ ->
                    {parallel, expr_do(Ctx, Expr)}
            end;
        _ ->
            expr_do(Ctx, Expr)
    end;
expr_do(Ctx, #xqExtensionExpr{pragmas = _Pragmas, % check these
                              expr = Expr}) ->
    expr_do(Ctx, Expr);

expr_do(Ctx, #xqNameTest{name = Name}) ->
    abs_qname(Ctx, Name);


% try/catch
expr_do(Ctx, #xqTryCatch{anno = Line, 
                         id = Id, 
                         expr = Expr, 
                         catches = CatchClauses}) ->
    _ = add_used_record_type(xqAtomicValue),
    %?parse_dbg("Line", Line),
    CodeVar = list_to_atom("__CodeVar" ++ integer_to_list(Id)),
    DescVar = list_to_atom("__DescVar" ++ integer_to_list(Id)),
    ValuVar = list_to_atom("__ValuVar" ++ integer_to_list(Id)),
    ModuVar = list_to_atom("__ModuVar" ++ integer_to_list(Id)),
    LineVar = list_to_atom("__LineVar" ++ integer_to_list(Id)),
    ColnVar = list_to_atom("__ColnVar" ++ integer_to_list(Id)),
    AddlVar = list_to_atom("__AddlVar" ++ integer_to_list(Id)),

    ErrNs = <<"http://www.w3.org/2005/xqt-errors">>,

    NewCodeVar = {#qname{namespace = ErrNs,
                         prefix = <<"err">>,
                         local_name = <<"code">>},
                  #xqSeqType{type = 'xs:QName', 
                             occur = one}, [], CodeVar},
    NewDescVar = {#qname{namespace = ErrNs,
                         prefix = <<"err">>,
                         local_name = <<"description">>},
                  #xqSeqType{type = 'xs:string', 
                             occur = zero_or_one}, [], DescVar},
    NewValuVar = {#qname{namespace = ErrNs,
                         prefix = <<"err">>,
                         local_name = <<"value">>},
                  #xqSeqType{type = 'item', 
                             occur = zero_or_many}, [], ValuVar},
    NewModuVar = {#qname{namespace = ErrNs,
                         prefix = <<"err">>,
                         local_name = <<"module">>},
                  #xqSeqType{type = 'xs:string', 
                             occur = zero_or_one}, [], ModuVar},
    NewLineVar = {#qname{namespace = ErrNs,
                         prefix = <<"err">>,
                         local_name = <<"line-number">>},
                  #xqSeqType{type = 'xs:integer', 
                             occur = zero_or_one}, [], LineVar},
    NewColnVar = {#qname{namespace = ErrNs,
                         prefix = <<"err">>,
                         local_name = <<"column-number">>},
                  #xqSeqType{type = 'xs:integer', 
                             occur = zero_or_one}, [], ColnVar},
    NewAddlVar = {#qname{namespace = ErrNs,
                         prefix = <<"err">>,
                         local_name = <<"additional">>},
                  #xqSeqType{type = item, 
                             occur = zero_or_many}, [], AddlVar},

    Ctx0 = add_variable(NewCodeVar, Ctx),
    Ctx1 = add_variable(NewDescVar, Ctx0),
    Ctx2 = add_variable(NewValuVar, Ctx1),
    Ctx3 = add_variable(NewModuVar, Ctx2),
    Ctx4 = add_variable(NewLineVar, Ctx3),
    Ctx5 = add_variable(NewColnVar, Ctx4),
    Ctx6 = add_variable(NewAddlVar, Ctx5),

    CodeVar1 = var(Line, CodeVar),
    DescVar1 = var(Line, DescVar),
    ValuVar1 = var(Line, ValuVar),
    ModuVar1 = var(Line, ModuVar),
    LineVar1 = var(Line, LineVar),
    ColnVar1 = var(Line, ColnVar),
    AddlVar1 = var(Line, AddlVar),

    ClsFun =
        fun({Errors, DoExpr}) ->
                DoExprAbs = expr_do(Ctx6, DoExpr),
                D = alist(?Q("_@DoExprAbs")),
                lists:map(
                    fun (#xqNameTest{name = #xqQName{namespace = <<"*">>,
                                                     local_name = <<"*">>}}) ->
                            C = ?Q(["#xqError{name = _@CodeVar1,",
                                    "description = _@DescVar1,",
                                    "value = _@ValuVar1,",
                                    "additional = _@AddlVar1,"
                                    "location = {_@ModuVar1, _@LineVar1, _@ColnVar1}}"]),
                            Q = ?e:class_qualifier(?e:underscore(), C, ?e:underscore()),
                            ?e:clause(alist(Q), [], D);
                        (#xqNameTest{name = #xqQName{namespace = <<"*">>,
                                                     local_name = Ln}}) ->
                            _ = add_used_record_type(qname),
                            C = ?Q(["#xqError{name = #xqAtomicValue{value = ",
                                    "#qname{local_name = _@Ln@}} = _@CodeVar1,",
                                    "description = _@DescVar1,",
                                    "value = _@ValuVar1,",
                                    "additional = _@AddlVar1,"
                                    "location = {_@ModuVar1, _@LineVar1, _@ColnVar1}}"]),
                            Q = ?e:class_qualifier(?e:underscore(), C, ?e:underscore()),
                            ?e:clause(alist(Q), [], D);
                        (#xqNameTest{name = #xqQName{namespace = Ns,
                                                     local_name = <<"*">>}}) ->
                            _ = add_used_record_type(qname),
                            C = ?Q(["#xqError{name = #xqAtomicValue{value = ",
                                    "#qname{namespace = _@Ns@}} = _@CodeVar1,",
                                    "description = _@DescVar1,",
                                    "value = _@ValuVar1,",
                                    "additional = _@AddlVar1,"
                                    "location = {_@ModuVar1, _@LineVar1, _@ColnVar1}}"]),
                            Q = ?e:class_qualifier(?e:underscore(), C, ?e:underscore()),
                            ?e:clause(alist(Q), [], D);
                        (#xqNameTest{name = #xqQName{namespace = Ns,
                                                     local_name = Ln}}) ->
                            _ = add_used_record_type(qname),
                            C = ?Q(["#xqError{name = #xqAtomicValue{value = ",
                                    "#qname{namespace = _@Ns@,",
                                    "local_name = _@Ln@}} = _@CodeVar1,",
                                    "description = _@DescVar1,",
                                    "value = _@ValuVar1,",
                                    "additional = _@AddlVar1,"
                                    "location = {_@ModuVar1, _@LineVar1, _@ColnVar1}}"]),
                            Q = ?e:class_qualifier(?e:underscore(), C, ?e:underscore()),
                            ?e:clause(alist(Q), [], D)
                    end, Errors)
        end,

    TryAbs = alist(expr_do(Ctx, Expr)),
    Clauses = lists:flatmap(ClsFun, CatchClauses),
    ?e:try_expr(TryAbs, [], alist(Clauses));

% bang operator
expr_do(Ctx, #xqSimpleMap{anno = Line, lhs = SeqExpr, rhs = MapExpr}) ->
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    SeqAbs = expr_do(Ctx, SeqExpr),

    NextCtxVar = next_ctx_var_name(),
    NextCtxVar1 = var(Line, NextCtxVar),

    IntCtxVar = var(Line, next_var_name()),
    PosVar = var(Line, next_var_name()),
    SizeVar = var(Line, next_var_name()),

    AddFun = fun(N,C) ->
                   add_variable(N, C)
             end,
    Ctx0 = lists:foldl(AddFun, Ctx, [{context_variable,IntCtxVar},
                                     {position_variable,PosVar},
                                     {size_variable,SizeVar}]),
    Ctx1 = set_context_variable_name(Ctx0, NextCtxVar),
    Ctx2 = Ctx1#{context_variable => IntCtxVar,
                 position_variable => PosVar,
                 size_variable => SizeVar},

    BodyAbs = expr_do(Ctx2, MapExpr),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    FunAbs = ?P(Line, "fun(_@NextCtxVar1,_@IntCtxVar,_@PosVar,_@SizeVar) -> _@BodyAbs end"),
    ?P(Line, ["case catch xqerl_seq3:map(_@CtxVar,_@FunAbs,_@SeqAbs) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

% range
expr_do(Ctx, #xqRange{anno = Line, from = Expr1, to = Expr2}) ->
    E1 = expr_do(Ctx, Expr1),
    E2 = expr_do(Ctx, Expr2),
    % catch this, can throw error
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_seq3:range(_@E1, _@E2) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

% context item declaration
expr_do(_Ctx, #xqContextItemDecl{anno = Line,
                                default = undefined}) ->
    {nil, Line};
expr_do(Ctx, #xqContextItemDecl{anno = Line,
                                default = Expr}) ->
    Expr1 = expr_do(Ctx, Expr),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch begin _@Expr1 end of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

% empty map
expr_do(_Ctx, #xqMapConst{content = []}) -> 
    ?Q("#{}");
% map contructor
expr_do(Ctx, #xqMapConst{anno = Line,
                         content = Entries}) -> 
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    Fold = fun(#xqMapEntry{anno = ALine,
                           key = Key,
                           value = Val}, Acc) ->
                  KeyExp = expr_do(Ctx,Key),
                  ValExp = expr_do(Ctx,Val),
                  ?P(ALine, "[{_@KeyExp, _@ValExp}|_@Acc]")
           end,
    AVals = lists:foldl(Fold, {nil, Line}, alist(Entries)),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_mod_map:construct(_@CtxVar,_@@AVals) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

% curly
expr_do(Ctx, #xqArrayConst{anno = Line, content = #xqEnclosedExpr{expr = Expr}}) ->
    Expr1 = expr_do(Ctx, Expr),
    ?P(Line, "xqerl_mod_array:from_list(xqerl_seq3:flatten(_@Expr1))");
% square
expr_do(Ctx, #xqArrayConst{anno = Line, content = Expr}) ->
    Fun = fun(E, Acc) ->
                 Ex = expr_do(Ctx, E),
                 case Ex of
                     {nil, _} ->
                         ?P(Line, "[[]|_@Acc]");
                     _ ->
                         ?P(Line, "[_@Ex|_@Acc]")
                 end
          end,
    Vals = lists:foldr(Fun, {nil,?LINE}, alist(Expr)),
    % does not fail
    ?P(Line, "xqerl_mod_array:from_list(_@Vals)");

% wraps the body of the entire main query
expr_do(Ctx, #xqQuery{query = Qry}) ->
    XQ = alist(expr_do(Ctx, Qry)),
    CtxVar = var(0, get_context_variable_name(Ctx)),
    Error = var(0, next_var_name()),
    ?Q(["try",
        " XQuery = begin _@XQ end,",
        " xqerl_types:return_value(XQuery,_@CtxVar)",
        "catch _:_@Error:Stack ->",
        "io:format(\"~p~n\", [Stack]),",
        " local_error(_@Error, 0)",
        "after ",
        " xqerl_context:destroy(_@CtxVar)",
        "end"]);

expr_do(Ctx, #xqAtomicValue{type = 'xs:QName', value = #xqQName{} = V}) ->
    abs_qname(Ctx, V);
expr_do(_Ctx, #xqAtomicValue{type = T, value = V}) ->
    ?Q("#xqAtomicValue{type = _@T@, value = _@V@}");

expr_do(Ctx, #xqStringConstructor{anno = Line, content = Expr}) ->
    C = var(Line, get_context_variable_name(Ctx)),
    F = fun(<<>>, Abs) -> Abs;
           (V, Abs) when is_binary(V) ->
               V1 = binary_to_list(V),
               B = {bin_element, Line, {string, Line, V1}, default, default},
               [B|Abs];
           (I, Abs) ->
               V = expr_do(Ctx, I),
               {_,_,[B]} = ?e:revert(?Q("<<(xqerl_types:string_value(_@C, _@V))/binary>>")),
               [B|Abs]
        end,
    Es = lists:foldr(F, [], alist(Expr)),
    catch_wrap({bin, Line, Es}, Line);

% and/or
expr_do(Ctx, #xqLogicalExpr{anno = Line,
                            comp = Op,
                            lhs = Expr1,
                            rhs = Expr2}) ->
    E1 = expr_do(Ctx, Expr1),
    E2 = expr_do(Ctx, Expr2),
    if 
        Op =:= 'and' ->
            catch_wrap(?Q("xqerl_operators:op_and(_@E1, fun() -> _@E2 end)"), Line);
        Op =:= 'or' ->
            catch_wrap(?Q("xqerl_operators:op_or(_@E1, fun() -> _@E2 end)"), Line)
    end;

expr_do(Ctx, #xqSeqType{type = Type} = ST) ->
    case Type of
        #xqQName{local_name = Ln} ->
            Atom = erlang:binary_to_atom(<<"xs:", Ln/binary>>, latin1),
            abs_seq_type(Ctx, ST#xqSeqType{type = Atom});
        _ ->
            abs_seq_type(Ctx, ST)
    end;

%% expr_do(Ctx, #xqEnclosedExpr{expr = [Expr]}) ->
%%     expr_do(Ctx, Expr);
expr_do(Ctx, #xqEnclosedExpr{anno = _Line, expr = Expr}) ->
    Exprs = lists:foldr(
                fun('empty-sequence', Acc) -> Acc;
                   (E, Acc) ->
                       Ex = expr_do(Ctx, E),
                       ?Q("[_@Ex|_@Acc]")
                end, {nil, ?LINE}, alist(Expr)),
    %Exprs;
    %from_list_to_seq(Exprs);
    ?Q("xqerl_seq3:flatten(_@Exprs)");

expr_do(Ctx, #xqSequence{vals = List}) ->
    Fun = fun('empty-sequence') -> [];
             (#xqSequence{vals = SList}) ->
                 alist(expr_do(Ctx, SList));
             (E) ->
                 alist(expr_do(Ctx, E))
          end,
    Exprs = lists:flatmap(Fun, List),
    from_list_to_seq(Exprs);

expr_do(Ctx, #xqIfExpr{anno = Line,
                       condition = If,
                       if_true = Then,
                       if_false = Else}) ->
    IfSt = expr_do(Ctx, If),
    True = expr_do(Ctx, Then),
    False = expr_do(Ctx, Else),
    Error = var(Line, next_var_name()),
    % catch this, can throw error
    ?P(Line, ["case catch xqerl_seq3:singleton_value(_@IfSt) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " true -> _@True; ",
              " false -> _@False",
              " end"]);

% node sequences
expr_do(Ctx, #xqNodeUnionExpr{anno = Line, expr = Exprs}) ->
    Exprs1 = expr_do(Ctx, Exprs),
    ?P(Line, "xqerl_seq3:union(_@Exprs1)");

expr_do(Ctx, #xqNodeSetExpr{anno = Line, kind = Kind, lhs = Lhs, rhs = Rhs}) ->
    E1 = expr_do(Ctx, Lhs),
    E2 = expr_do(Ctx, Rhs),
    case Kind of
        intersect ->
            ?P(Line, "xqerl_seq3:intersect(_@E1,_@E2)");
        except ->
            ?P(Line, "xqerl_seq3:except(_@E1,_@E2)")
    end;

% paths
expr_do(_,#xqPathExpr{expr = ['empty-sequence'|_]}) ->
    {nil,?LINE};
%% Split path into simple and complex parts: 
%% Simple is path with only positional/easy predicates
%%  they send a fun to the document process 
%% Complex are joins and complex predicates  
%%  they call the document process per function 
expr_do(Ctx, #xqPathExpr{} = P) ->
    abs_path_expr(Ctx, P);


expr_do(Ctx, #xqPostfixExpr{part = false,
                            expr = #xqFunctionRef{} = Ref,
                            post = [#xqArgumentList{args = Args}]}) ->
    ArF = fun({var,_,_} = Arg) -> Arg;
             (Arg) -> expr_do(Ctx, Arg)
          end,
    ArgAbs = lists:map(ArF, Args),
    CtxVar = var(?LINE, get_context_variable_name(Ctx)),
    NextVar = var(?LINE, next_var_name()),
    E1 = expr_do(Ctx, Ref),
    ?P(?LINE, "begin _@NextVar = _@E1, _@NextVar(_@CtxVar,_@@ArgAbs) end");

expr_do(Ctx, #xqPostfixExpr{part = true,
                            expr = #xqFunctionRef{} = Ref,
                            post = [#xqArgumentList{args = Args}]}) ->
    PlaceHolders = [var(Line, next_var_name()) 
                   || #xqArgumentPlaceholder{anno = Line} 
                   <- Args],
    % put new placeholders in args
    NwF = fun(#xqArgumentPlaceholder{}, PHs) ->
                 {hd(PHs), tl(PHs)};
             (Arg, PHs) ->
                 {Arg, PHs}
          end,
    {NewArgs, _} = lists:mapfoldl(NwF, PlaceHolders, Args),
    % ensure all are abstract
    ArF = fun({var,_,_} = Arg) -> Arg;
             (Arg) -> expr_do(Ctx, Arg)
          end,
    ArgAbs = lists:map(ArF, NewArgs),
    CtxVar = var(?LINE, get_context_variable_name(Ctx)),
    NextVar = var(?LINE, next_var_name()),
    E1 = expr_do(Ctx, Ref),
    ?P(?LINE, ["fun(_@CtxVar,_@@PlaceHolders) ->",
               "_@NextVar = _@E1, _@NextVar(_@CtxVar,_@@ArgAbs) end"]);

% map/array unary lookups
expr_do(Ctx, #xqPostfixExpr{expr = Map, 
                            post = [#xqLookup{anno = Line,
                                              key = wildcard}]}) ->
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    MapExpr = expr_do(Ctx, Map),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_operators:lookup(_@CtxVar,_@MapExpr,all) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);
expr_do(Ctx, #xqPostfixExpr{expr = Map, 
                            post = [#xqLookup{anno = Line,
                                              key = Val}]}) ->
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    MapExpr = expr_do(Ctx, Map),
    ValExp =  expr_do(Ctx, Val),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_operators:lookup(_@CtxVar,_@MapExpr,_@ValExp) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);
expr_do(Ctx, #xqLookup{anno = Line, key = Key}) when Key == all;
                                                     Key == wildcard ->
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    MapExpr = expr_do(Ctx, {'context-item', Line}),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_operators:lookup(_@CtxVar,_@MapExpr,all) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);
expr_do(Ctx, #xqLookup{anno = Line, key = Key}) ->
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    MapExpr = expr_do(Ctx, {'context-item', Line}),
    ValExp = expr_do(Ctx, Key),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_operators:lookup(_@CtxVar,_@MapExpr,_@ValExp) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

expr_do(Ctx, #xqPostfixExpr{expr = Base, post = Preds}) when is_list(Preds) ->
    % flag that ctx item is accessible
    Source = expr_do(Ctx#{in_pred => true}, Base), 
    lists:foldl(fun(Val, Abs) ->
                       handle_predicate({Ctx, Val}, Abs)
                end, Source, Preds);

% inline anonymous function definitions
expr_do(Ctx, #xqFunctionDef{name = undefined, % fun object
                            annotations = _, 
                            arity = _,
                            params = Params,
                            body = Expr,
                            anno = Line} = F) ->
    _ = add_used_record_type(xqFunction),
    NextCtxVar = next_ctx_var_name(),
    NextNextCtxVar = next_ctx_var_name(),
    NextNextNextCtxVar = next_ctx_var_name(),
    Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
    % add parameters to scope
    PFun = fun(#xqVar{anno = VLine,
                      id = ID, 
                      name = #xqQName{} = Name,
                      type = Type, 
                      annotations = Annos}, Map) ->
                  VarName = list_to_atom(lists:concat([param_prefix(), ID])),
                  TVarName = list_to_atom(lists:concat(["T",param_prefix(), ID])),
                  %% {name,type,annos,Name}
                  NewMap = add_param({Name,Type,Annos,VarName}, Map),
                  {var(VLine, TVarName), NewMap};
              (X, Map) ->
                  X1 = expr_do(Ctx, X),
                  {X1, Map}
           end,
    {ParamList, Ctx2} =  lists:mapfoldl(PFun, Ctx1, Params),
    % check parameter types
    Checks = 
        [begin
             V = var(VLine, list_to_atom(lists:concat([param_prefix(), ID]))),
             T = var(VLine, list_to_atom(lists:concat(["T",param_prefix(), ID]))),
             ensure_param_type(Ctx, V, T, Type)
         end ||
         #xqVar{anno = VLine, id = ID, type = Type} <- Params],
    % do not allow functions to access the current context item
    Ctx3 = set_context_variable_name(Ctx2, NextNextNextCtxVar),
    CtxP = var(Line, NextNextCtxVar),
    CtxI = var(Line, NextNextNextCtxVar),
    Error = var(Line, next_var_name()),
    case maps:find(in_pred, Ctx) of
        error ->
            FunBod = expr_do(clear_context_variables(Ctx3), Expr),
            Body = 
                ?P(Line, ["fun(_@CtxP,_@@ParamList) ->",
                          " _@CtxI = xqerl_context:set_empty_context_item(_@CtxP),",
                          " try",
                          " _@@Checks,",
                          " _@FunBod",
                          " catch _:_@Error -> local_error(_@Error, _@Line@)",
                          " end",
                          "end"]),
         abs_function(Ctx, F, Body);
        {ok, true} ->
            FunBod = expr_do(Ctx3, Expr),
            Body = 
                ?P(Line, ["fun(_@CtxI,_@@ParamList) ->",
                          " try",
                          " _@@Checks,",
                          " _@FunBod",
                          " catch _:_@Error -> local_error(_@Error, _@Line@)",
                          " end",
                          "end"]),
            abs_function(Ctx, F, Body)
    end;

%% function calls

% position and size replacement from context
expr_do(#{position_variable := PosVar}, 
        ?CALL(#xqFunctionDef{body = {xqerl_mod_fn,position,_}}, Line)) ->
    ?P(Line, "_@PosVar");
expr_do(#{size_variable := {var,_,_} = SizeVar}, 
        ?CALL(#xqFunctionDef{body = {xqerl_mod_fn,last,_}}, Line)) ->
    ?P(Line, "(_@SizeVar)()");
expr_do(#{size_variable := SizeVar}, 
        ?CALL(#xqFunctionDef{body = {xqerl_mod_fn,last,_}}, Line)) ->
    ?P(Line, "_@SizeVar");

% 'lang' call on context item
expr_do(#{context_variable := _} = Ctx, 
        ?CALL(#xqFunctionDef{params = [A],
                             body = {xqerl_mod_fn,lang,2}} = FC, Line)) ->
    expr_do(Ctx, ?CALL(FC#xqFunctionDef{params = [A,{'context-item', Line}],
                                        body = {xqerl_mod_fn,lang,3}}, Line));

% magic functions that automatically use the context item
expr_do(#{context_variable := _} = Ctx, 
        ?CALL(#xqFunctionDef{body = {xqerl_mod_fn,Fn,1}} = FC, Line))
  when Fn == 'node-name';        Fn == 'nilled';
       Fn == 'string';           Fn == 'data';
       Fn == 'base-uri';         Fn == 'document-uri';
       Fn == 'number';           Fn == 'normalize-space';
       Fn == 'string-length';    Fn == 'name';
       Fn == 'local-name';       Fn == 'namespace-uri';
       Fn == 'root';             Fn == 'path';
       Fn == 'has-children';     Fn == 'generate-id' -> 
    expr_do(Ctx, ?CALL(FC#xqFunctionDef{params = [{'context-item', Line}],
                                        body = {xqerl_mod_fn,Fn,2}}, Line));

%% special case fn:error set line number
expr_do(Ctx, ?CALL(#xqFunctionDef{params = Params,
                                  body = {xqerl_mod_fn,error,_A}}, Line)) ->
    CtxName = var(Line, get_context_variable_name(Ctx)),
    NewArgs = lists:map(fun(P) ->
                               expr_do(Ctx, P)
                        end, Params),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_mod_fn:error(_@CtxName,_@@NewArgs) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);
%% special case spawn_ sets parent process in context
expr_do(Ctx, ?CALL(#xqFunctionDef{params = Params,
                                  body = {xqerl_mod_actor,spawn_,_A}}, Line)) ->
    NextCtxVar = next_ctx_var_name(),
    Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
    CtxName = var(Line, get_context_variable_name(Ctx)),
    Ctx1Name = var(Line, get_context_variable_name(Ctx1)),
    NewArgs = lists:map(fun(P) ->
                               expr_do(Ctx1, P)
                        end, Params),
    ?P(Line, ["begin _@Ctx1Name = _@CtxName#{parent => erlang:self()}, ",
              "xqerl_mod_actor:spawn_(_@Ctx1Name,_@@NewArgs) end"]);
% closed fun
expr_do(Ctx, ?CALL(#xqFunctionDef{params = {P1, OldP1},
                                  body = #xqFunctionDef{params = P2,
                                                        body = B2},
                                  anno = Line}, _)) ->
    CtxVar = get_context_variable_name(Ctx),
    PFun = fun(#xqVar{anno = VLine,
                      id = ID, 
                      name = #xqQName{} = Name,
                      type = Type, 
                      annotations = Annos}, Map) ->
                  VarName = list_to_atom(lists:concat([param_prefix(), ID])),
                  %% {name,type,annos,Name}
                  NewMap = add_param({Name,Type,Annos,VarName}, Map),
                  {var(VLine, VarName), NewMap};
              (X, Map) ->
                  X1 = expr_do(Ctx, X),
                  {X1, Map}
           end,
    {P1_1, Ctx2} =  lists:mapfoldl(PFun, Ctx, P1),
    {P1_2, Ctx3} =  lists:mapfoldl(PFun, Ctx2, OldP1),
    P2_1 = lists:map(fun(P) -> expr_do(Ctx3,P) end, P2),
    B2_1 = alist(expr_do(Ctx3, B2)),
    CtxVar1 = var(Line, CtxVar),
    ?P(Line, ["fun (_@CtxVar1,_@@P1_1) -> ",
              " fun(_@CtxVar1,_@@P1_2) -> _@@B2_1 end(_@CtxVar1,_@@P2_1)",
              "end"]);
% remote call
expr_do(Ctx, ?CALL(#xqFunctionDef{params = Params,
                                  body = {M,F,_A}}, Line)) when is_atom(M),
                                                                is_atom(F) ->
    CtxName = var(Line, get_context_variable_name(Ctx)),
    NewArgs = lists:map(fun(P) ->
                               expr_do(Ctx,P)
                        end, Params),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch '@M@':'@F@'(_@CtxName,_@@NewArgs) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);
% local call
expr_do(Ctx, ?CALL(#xqFunctionDef{params = Params,
                                  body = {F,_A},
                                  anno = Line}, _)) ->
    CtxName = var(Line, get_context_variable_name(Ctx)),
    NewArgs = lists:map(fun(P) ->
                               expr_do(Ctx,P)
                        end, Params),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch '@F@'(_@CtxName,_@@NewArgs) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

%% named function definitions

expr_do(_Ctx, #xqFunctionDef{annotations = Annos, 
                             name = Name, 
                             arity = Ay, 
                             params = Params,
                             type = Type,
                             body = {xqerl_mod_fn,concat,_},
                             anno = Line}) ->
    Annos1 = translate_record(Annos),
    Name1 = translate_record(Name),
    Params1 = translate_record(Params),
    Type1 = translate_record(Type),
    _ = add_used_record_type(xqFunction),
    ?P(Line, ["#xqFunction{annotations = _@Annos1@,",
              "            name = _@Name1@,",
              "            arity = _@Ay@,",
              "            params = _@Params1@,",
              "            type = _@Type1@,",
              "            body = fun xqerl_mod_fn:concat/2}"]);
expr_do(Ctx, #xqFunctionDef{annotations = Annos, 
                            name = Name, 
                            arity = Ay, 
                            params = Params,
                            type = Type,
                            body = #xqTypingExpr{kind = promote,
                                                 expr = {M,F,_},
                                                 type = OtherType},
                            anno = Line}) ->
    Annos1 = translate_record(Annos),
    Name1 = translate_record(Name),
    Params1 = translate_record(Params),
    Type1 = translate_record(Type),
    _ = add_used_record_type(xqFunction),
    TA = expr_do(Ctx, OtherType),
    CtxVar = context_map_abs(Ctx), 
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    Fun = 
        if 
            Ay > 0 ->
                DArgs = [var(?LINE, list_to_atom("P__"++integer_to_list(I))) ||
                           I <- lists:seq(1, Ay)],
                ?P(Line, ["fun(_,_@@DArgs) -> ",
                          " case catch xqerl_types:promote('@M@':'@F@'(_@CtxVar,_@@DArgs),_@TA) of",
                          " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          " _@Result -> _@Result",
                          "end",
                          "end"]);
            true ->
                ?P(Line, ["fun(_) -> ",
                          "case catch xqerl_types:promote('@M@':'@F@'(_@CtxVar),_@TA) of",
                          " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          " _@Result -> _@Result",
                          "end",
                          "end"])
         end,
    ?P(Line, ["#xqFunction{annotations = _@Annos1@,",
              "            name = _@Name1@,",
              "            arity = _@Ay@,",
              "            params = _@Params1@,",
              "            type = _@Type1@,",
              "            body = _@Fun}"]);

expr_do(Ctx, #xqFunctionDef{annotations = Annos, 
                            name = Name, 
                            arity = Ay, 
                            params = Params,
                            type = Type,
                            body = {M,F,_},
                            anno = Line}) ->
    Annos1 = translate_record(Annos),
    Name1 = translate_record(Name),
    Params1 = translate_record(Params),
    Type1 = translate_record(Type),
    _ = add_used_record_type(xqFunction),
    CtxVar = context_map_abs(Ctx), 
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    Fun = 
        if 
            Ay > 0 ->
                DArgs = [var(?LINE, list_to_atom("P__"++integer_to_list(I))) ||
                           I <- lists:seq(1, Ay)],
                ?P(Line, ["fun(_,_@@DArgs) -> ",
                          " case catch '@M@':'@F@'(_@CtxVar,_@@DArgs) of",
                          " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          " _@Result -> _@Result",
                          "end",
                          "end"]);
            true ->
                ?P(Line, ["fun(_) -> ",
                          " case catch '@M@':'@F@'(_@CtxVar) of",
                          " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          " _@Result -> _@Result",
                          "end",
                          "end"])
        end,
    ?P(Line, ["#xqFunction{annotations = _@Annos1@,",
              "            name = _@Name1@,",
              "            arity = _@Ay@,",
              "            params = _@Params1@,",
              "            type = _@Type1@,",
              "            body = _@Fun}"]);

expr_do(Ctx, #xqFunctionDef{annotations = Annos, 
                            name = Name, 
                            arity = Ay, 
                            params = Params,
                            type = Type,
                            body = {F,_},
                            anno = Line}) ->
    Annos1 = translate_record(Annos),
    Name1 = translate_record(Name),
    Params1 = translate_record(Params),
    Type1 = translate_record(Type),
    _ = add_used_record_type(xqFunction),
    CtxVar = context_map_abs(Ctx), 
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    Fun = 
        if 
            Ay > 0 ->
                DArgs = [var(?LINE, list_to_atom("P__"++integer_to_list(I))) ||
                           I <- lists:seq(1, Ay)],
                ?P(Line, ["fun(_,_@@DArgs) -> ",
                          " case catch '@F@'(_@CtxVar,_@@DArgs) of",
                          " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          " _@Result -> _@Result",
                          "end",
                          "end"]);
            true ->
                ?P(Line, ["fun(_) -> ",
                          " case catch '@F@'(_@CtxVar) of",
                          " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          " _@Result -> _@Result",
                          "end",
                          "end"])
        end,
    ?P(Line, ["#xqFunction{annotations = _@Annos1@,",
              "            name = _@Name1@,",
              "            arity = _@Ay@,",
              "            params = _@Params1@,",
              "            type = _@Type1@,",
              "            body = _@Fun}"]);

expr_do(Ctx, #xqComparisonExpr{anno = Line,
                               comp = Op,
                               lhs = Expr1,
                               rhs = Expr2}) ->
    E1 = expr_do(Ctx, Expr1),
    E2 = expr_do(Ctx, Expr2),
    E3 =
        if
            Op =:= '='; Op =:= '!=';
            Op =:= '>'; Op =:= '>=';
            Op =:= '<'; Op =:= '<=' ->
                ?Q("xqerl_operators:general_compare('@Op@',_@E1,_@E2)");
                %xqerl_context:get_default_collation(Ctx)
            Op =:= 'eq' -> ?Q("xqerl_operators:equal(_@E1,_@E2)");
            Op =:= 'ne' -> ?Q("xqerl_operators:not_equal(_@E1,_@E2)");
            Op =:= 'gt' -> ?Q("xqerl_operators:greater_than(_@E1,_@E2)");
            Op =:= 'ge' -> ?Q("xqerl_operators:greater_than_eq(_@E1,_@E2)");
            Op =:= 'lt' -> ?Q("xqerl_operators:less_than(_@E1,_@E2)");
            Op =:= 'le' -> ?Q("xqerl_operators:less_than_eq(_@E1,_@E2)");
            Op =:= '<<' -> ?Q("xqerl_operators:node_before(_@E1,_@E2)");
            Op =:= '>>' -> ?Q("xqerl_operators:node_after(_@E1,_@E2)");
            Op =:= 'is' -> ?Q("xqerl_operators:node_is(_@E1,_@E2)")
        end,
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch _@E3 of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

expr_do(Ctx, #xqAxisStep{anno = Line} = Step) ->
    Base = expr_do(Ctx, {'context-item', Line}),
    S = step_expr_do(Ctx, [Step], Base),
    ?Q("begin _@S end");

expr_do(Ctx, #xqUnaryExpr{anno = Line, sign = Sign, expr = Expr}) ->
    E1 = expr_do(Ctx, Expr),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    case Sign of
        '+' ->
            ?P(Line, ["case catch xqerl_operators:unary_plus(_@E1) of",
                      " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                      " _@Result -> _@Result",
                      "end"]);
        '-' ->
            ?P(Line, ["case catch xqerl_operators:unary_minus(_@E1) of",
                      " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                      " _@Result -> _@Result",
                      "end"])
    end;

expr_do(Ctx, #xqArithExpr{op = Op,
                          lhs = Expr1,
                          rhs = Expr2,
                          anno = Line}) ->
    E1 = expr_do(Ctx, Expr1),
    E2 = expr_do(Ctx, Expr2),
    E3 = 
        if 
            Op =:= '+' -> ?P(?LINE,"xqerl_operators:add(_@E1,_@E2)");
            Op =:= '-' -> ?P(?LINE,"xqerl_operators:subtract(_@E1,_@E2)");
            Op =:= '*' -> ?P(?LINE,"xqerl_operators:multiply(_@E1,_@E2)");
            Op =:= 'div' -> ?P(?LINE,"xqerl_operators:divide(_@E1,_@E2)");
            Op =:= 'mod' -> ?P(?LINE,"xqerl_operators:modulo(_@E1,_@E2)");
            Op =:= 'idiv' -> ?P(?LINE,"xqerl_operators:idivide(_@E1,_@E2)")
        end,
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch (_@E3) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

expr_do(Ctx, #xqVarRef{name = Name}) ->
    {V,_} = get_variable_ref(Name, Ctx),
    V;

% each position of the flwor is put in its own function.
% every function is a body call to the next section and tail to self.
expr_do(Ctx, #xqFlwor{id = RetId, loop = Loop, return = Return}) ->
    Ctx1 = Ctx#{grp_variables => []}, % Clear any grouping variables
    VarTup = get_variable_tuple_name(Ctx1),
    %% find when variables are used last
    Rems = scan_variable_usage(Loop, Return),
    {_NewCtx,In,Out} = flwor(Ctx1, Loop, RetId, Return, [], [],VarTup, false, Rems),
    add_global_funs(Out),
    ?Q("xqerl_seq3:flatten(begin _@In end)");

% some, every == lists: any, all
expr_do(Ctx, #xqQuantifiedExpr{which = Op,
                               in_expr = Vars,
                               satisfies = Test}) ->
    % add the variables to the stack
    VarNames = [{[],[],[],local_variable_name(Id)} || #xqVar{id = Id} <- Vars],
    VarTup = get_variable_tuple(Ctx, VarNames),

    Fun = 
        fun(#xqVar{anno = Line,
                   id = Id,
                   name = Name,
                   type = Type,
                   expr = Expr}, Ctx1) ->
               VarName = local_variable_name(Id),
               Ctx2 = add_variable({Name,Type,[],VarName}, Ctx1),
               E = expr_do(Ctx1, Expr),
               {?e:generator(
                  var(Line, VarName), 
                  ?Q("xqerl_seq3:expand(_@E)")), Ctx2}
        end,
    {Gens, Ctx3} = lists:mapfoldl(Fun, Ctx, l(Vars)),
    F = case Op of
            every -> ?Q("lists:all");
            some ->  ?Q("lists:any")
        end,
    E = expr_do(Ctx3, Test),
    ?Q([" _@F(fun(_@VarTup) ->",
        "  xqerl_operators:eff_bool_val(_@E)",
        " end,[_@VarTup || _@Gens])"]);

% switch, has ID could be lifted to function
expr_do(Ctx, #xqSwitch{anno = Line,
                       operand = RootExpr,
                       clauses = Cases,
                       default = DefaultExpr}) ->
    RootVar = var(Line, next_var_name()),
    RootExpr1 = #xqTypingExpr{anno = Line,
                              kind = ensure,
                              expr = RootExpr,
                              type = #xqSeqType{occur = zero_or_one}},
    E1 = expr_do(Ctx,RootExpr1),
    Atom = ?Q("xqerl_types:atomize(_@E1)"),
    Value = ?Q("xqerl_types:value(_@Atom)"),
    RootVarSet = ?Q("_@RootVar = _@Value"),
    DefaultRet = alist(expr_do(Ctx,DefaultExpr)),
    OFold =
        fun(#xqSwitchClause{anno = CLine,
                            operands = MatchExprs,
                            expr = ReturnExpr}, Abs) ->
               MatchExprs2 = if MatchExprs == [] -> [[]];
                                true -> MatchExprs
                             end,
               ReturnAbs = expr_do(Ctx, ReturnExpr),
               %% TODO change this to lists:any/2 of deep-equal matches
               %% The match should be using the default collation
               IFold = 
                    fun(MatchExpr, Abs1) ->
                           Var = var(?LINE, next_var_name()),
                           MatchExpr1 = #xqTypingExpr{anno = CLine,
                                                      kind = ensure,
                                                      expr = MatchExpr,
                                                      type = #xqSeqType{occur = zero_or_one}},
                           MatchExpr2 = expr_do(Ctx, MatchExpr1),
                           Atom1 = ?Q("xqerl_types:atomize(_@MatchExpr2)"),
                           Value1 = ?Q("xqerl_types:value(_@Atom1)"),
                           ?Q(["_@Var = _@Value1,",
                               " if _@RootVar == _@Var -> _@ReturnAbs;",
                               " true -> _@Abs1 end"])
                    end,
               lists:foldr(IFold, Abs, MatchExprs2)
        end,
    IfStatements = lists:foldr(OFold, DefaultRet, Cases),
    %IfStatements = (catch lists:foldr(OFold, DefaultRet, Cases)),
    ?P(Line, "begin _@RootVarSet, _@@IfStatements end");

% typeswitch, has ID could be lifted to function
expr_do(Ctx, #xqTypeswitch{anno = Line,
                           input = RootExpr,
                           cases = Cases,
                           default = Default}) ->
    RootVar = var(Line, next_var_name()),
    Root = expr_do(Ctx, RootExpr),
    % make a case for each type
    ExpandF = 
        fun(#xqTypeswitchCase{types = Types} = E) ->
               [E#xqTypeswitchCase{types = Type} || Type <- Types]
        end,
    ExpandedCases = lists:flatmap(ExpandF, l(Cases)) ++ [Default],
    CaseF = 
        fun(#xqTypeswitchCase{types = default,
                              variable = undefined,
                              expr = Expr}, _Acc) ->
               alist(expr_do(Ctx, Expr));
           (#xqTypeswitchCase{types = default,
                              variable = #xqVar{anno = VLine,
                                                id = Id,
                                                name = Name,
                                                type = Type,
                                                expr = RetExpr}}, _Acc) ->
               VarName = local_variable_name(Id),
               NewVar  = {Name,Type,[],VarName},
               NewCtx  = add_variable(NewVar, Ctx),
               R1 = expr_do(NewCtx, RetExpr),
               VarName1 = var(VLine, VarName),
               ?P(VLine, "_@VarName1 = _@RootVar, _@R1");
           (#xqTypeswitchCase{types = Types,
                              variable = undefined,
                              expr = RetExpr}, Acc) ->
               AType = abs_seq_type(Ctx, Types),
               R1 = expr_do(Ctx, RetExpr),
               ?Q(["case catch xqerl_types:instance_of(_@RootVar,_@AType) of",
                   " true -> _@R1;",
                   " _ -> _@Acc end"]);
           (#xqTypeswitchCase{types = Types,
                              variable = #xqVar{anno = VLine,
                                                id = Id,
                                                name = Name,
                                                type = Type,
                                                expr = RetExpr}}, Acc) ->
               AType = abs_seq_type(Ctx,Types),
               VarName = local_variable_name(Id),
               NewVar  = {Name,Type,[],VarName},
               NewCtx  = add_variable(NewVar, Ctx),
               R1 = expr_do(NewCtx, RetExpr),
               VarName1 = var(VLine, VarName),
               ?P(VLine, ["case catch xqerl_types:instance_of(_@RootVar,_@AType) of",
                          " true -> _@VarName1 = _@RootVar, _@R1;",
                          " _ -> _@Acc end"])
        end,
    CaseNestExprs = lists:foldr(CaseF, [{nil,Line}], ExpandedCases),
    ?P(Line, "begin _@RootVar = _@Root, _@@CaseNestExprs end");


expr_do(Ctx, {atomize, #xqFunctionDef{body = Body} = Expr1}) ->
    expr_do(Ctx, Expr1#xqFunctionDef{body = {atomize, Body}});

% atomize called on cardinality fun
expr_do(Ctx, {double, ?CALL(#xqFunctionDef{params = [A],
                                           body = {xqerl_mod_fn,Name,2}} = F, 
                            Line)}) 
   when Name == 'exactly-one';
        Name == 'zero-or-one';
        Name == 'one-or-more' ->
   expr_do(Ctx, ?CALL(F#xqFunctionDef{params = [{double, A}]}, Line));
expr_do(Ctx, {atomize, ?CALL(#xqFunctionDef{params = [A],
                                            body = {xqerl_mod_fn,Name,2}} = F,
                             Line)}) 
   when Name == 'exactly-one';
        Name == 'zero-or-one';
        Name == 'one-or-more' ->
   expr_do(Ctx, ?CALL(F#xqFunctionDef{params = [{atomize, A}]}, Line));

expr_do(Ctx, {double, #xqPathExpr{expr = Steps} = P}) ->
    expr_do(Ctx, P#xqPathExpr{expr = Steps ++ [double]});
expr_do(Ctx, {atomize, #xqPathExpr{expr = Steps} = P}) ->
    expr_do(Ctx, P#xqPathExpr{expr = Steps ++ [atomize]});

expr_do(Ctx, {atomize, Expr}) ->
    E = expr_do(Ctx, Expr),
    ?Q("xqerl_types:atomize(_@E)");
expr_do(Ctx, {double, Expr}) ->
    E = expr_do(Ctx, Expr),
    ?Q("xqerl_types:cast_as(_@E, 'xs:double')");

expr_do(Ctx, {root, Line}) ->
   expr_do(Ctx, {'context-item', Line});

% node construction
expr_do(Ctx, #xqNodeConstructor{id = Id,
                                type = Type,
                                cons = Expr}) ->
    CallingCtxVar = var(?LINE, get_context_variable_name(Ctx)),
    FunctionCtx = set_context_variable_name(Ctx, 'Ctx'),
    FunName = node_function_name({Type, Id}),
    VarTup = get_variable_tuple(Ctx),
    Cons = expr_do(FunctionCtx, Expr),
    % NodeRef variable accessible in each contructor
    case global_fun_exists(FunName, 3) of
        true ->
            ok;
        false ->
            Fun = ?Q(["'@FunName@'(Ctx,_@VarTup,NodeRef) ->",
                      "xqerl_node:contruct(Ctx, _@Cons)."]),
            add_global_funs([Fun]),
            ok
    end,
    Line = get_line_from_node_cons(Expr),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    Call = ?Q(["'@FunName@'(_@CallingCtxVar,_@VarTup,erlang:make_ref())"]),
    ?P(Line, ["case catch (_@Call) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

% node constructors
expr_do(Ctx, #xqDocumentNode{} = N) ->
    abs_document_node(Ctx, N);
expr_do(Ctx, #xqElementNode{} = N) ->
    abs_element_node(Ctx, N);
expr_do(Ctx, #xqAttributeNode{} = N) ->
    abs_attribute_node(Ctx, N);
expr_do(Ctx, #xqTextNode{} = N) ->
    abs_text_node(Ctx, N);
expr_do(Ctx, #xqCommentNode{} = N) ->
    abs_comment_node(Ctx, N);
expr_do(Ctx, #xqProcessingInstructionNode{} = N) ->
    abs_pi_node(Ctx, N);
%% expr_do(Ctx, #xqNamespace{} = N) ->
%%     abs_namespace_node(Ctx, N);
expr_do(Ctx, #xqNamespaceNode{} = N) ->
    abs_namespace_node(Ctx, N);


% ordering XXX ignored for now
%% expr_do(Ctx, {'unordered-expr', Expr}) ->
%%    % new context to unordered
%%    % run expression with new context
%%    % continue with old context
%%    C = {var,?LINE,get_context_variable_name(Ctx)},
%%    NextCtx = next_ctx_var_name(),
%%    Ctx1 = set_context_variable_name(Ctx, NextCtx),
%%    V = {var,?LINE,NextCtx},
%%    S3 = expr_do(Ctx1, Expr),
%%    ?P(?LINE,"begin _@V = xqerl_context:set_ordering_mode(_@C,unordered), _@S3 end");
%% 
%% expr_do(Ctx, {'ordered-expr', Expr}) ->
%%    % new context to ordered
%%    % run expression with new context
%%    % continue with old context
%%    C = {var,?LINE,get_context_variable_name(Ctx)},
%%    NextCtx = next_ctx_var_name(),
%%    Ctx1 = set_context_variable_name(Ctx, NextCtx),
%%    V = {var,?LINE,NextCtx},
%%    S3 = expr_do(Ctx1, Expr),
%%    ?P(?LINE,"begin _@V = xqerl_context:set_ordering_mode(_@C,ordered), _@S3 end");

















expr_do(Ctx, List) when is_list(List) ->
   Exprs = lists:map(fun(E) ->
                           expr_do(Ctx, E)
                     end, List),
   abs_list(Exprs);

expr_do(_Ctx, #seqType{} = S) -> ?Q("_@S@");

% catch-all
expr_do(_Ctx, Expr) ->
   ?parse_dbg("TODO", Expr),
   {nil,?LINE}.


-define(noline(Line), ?noline(Line, [])).
-define(noline(Line, Expr), 
        if 
            Line == undefined -> 
                ?dbg("Step1", Expr),
                ets:insert(error_collector, {{?MODULE, ?FUNCTION_NAME, ?LINE, Expr}} ),
                ok; true -> ok end).


step_expr_do(_, [], SourceVar) ->
    O = ?Q("_@SourceVar"),
    alist(O);
step_expr_do(_, [continue], SourceVar) ->
    % continue triggers that this statement will be used as 
    % the context for another statement
    SourceVar;
step_expr_do(_, [atomize], SourceVar) -> 
    DocVar = var(?LINE, next_var_name()),
    O = ?P(?LINE, [" xqerl_seq3:path_map(",
                   " fun(_@DocVar,_,_) ->",
                   "  xqerl_types:atomize(_@DocVar)",
                   " end, _@SourceVar)"]),
    alist(O);
step_expr_do(_, [double], SourceVar) -> 
    DocVar = var(?LINE, next_var_name()),
    O = ?P(?LINE, [" xqerl_seq3:path_map(",
                   " fun(_@DocVar,_,_) ->",
                   "  xqerl_types:cast_as(_@DocVar, 'xs:double')",
                   " end, _@SourceVar)"]),
    alist(O);
step_expr_do(Ctx, [{'root', Line}|Rest], SourceVar) ->
    ?noline(Line, root),
    CurrCtxVar = var(Line, get_context_variable_name(Ctx)),
    NextVar = var(Line, next_var_name()),
    PosVar = var(Line, next_var_name()),
    SizVar = var(Line, next_var_name()),
    NodeVar = var(Line, next_var_name()),
    R1 = alist(step_expr_do(Ctx, Rest, NextVar)),
    O1 = ?P(Line, ["_@NextVar = xqerl_seq3:path_map(",
                   "fun(#{nk := document} = _@NodeVar,_@PosVar,_@SizVar) ->",
                   "     _@NodeVar;",
                   "   (#{nk := _} = _@NodeVar,_@PosVar,_@SizVar) ->",
                   "     local_error('XPDY0050', _@Line@);",
                   "   (_,_,_) ->",
                   "     local_error('XPTY0019', _@Line@)",
                   "end, xqerl_mod_fn:root(_@CurrCtxVar, _@SourceVar))"]), 
    [O1|R1];
% empty predicates so no context item needs to be set
step_expr_do(Ctx, [#xqAxisStep{anno = Line, predicates = []} = Step1|Rest], SourceVar) ->
    ?noline(Line, Step1),
    %?parse_dbg("SourceVar",SourceVar),
    NextVar = var(Line, next_var_name()),
    TempVar = var(Line, next_var_name()),
    NodeVar = var(Line, next_var_name()),
    ErrVar = var(Line, next_var_name()),
    NextCtxVar = next_ctx_var_name(),
    Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
    E1 = step_expr_do(Ctx1, Step1, NodeVar),
    R1 = alist(step_expr_do(Ctx, Rest, NextVar)),
    O1 = ?P(Line, ["_@NextVar = ",
                   "case catch xqldb_xpath:document_order(lists:append([_@E1 || _@NodeVar <- xqerl_seq3:sequence(_@SourceVar)])) of",
                   "{'EXIT',{function_clause,_}} -> local_error('XPTY0019', _@Line@); ",
                   "#xqError{} = _@ErrVar -> local_error(_@ErrVar, _@Line@); ",
                   "{'EXIT',_@ErrVar} -> local_error(_@ErrVar, _@Line@); ",
                   "_@TempVar -> _@TempVar end"]),
    [O1|R1];
step_expr_do(Ctx, [#xqAxisStep{anno = Line} = Step1|Rest], SourceVar) ->
    ?noline(Line, Step1),
    CurrCtxVar = var(Line, get_context_variable_name(Ctx)),
    NextVar = var(Line, next_var_name()),
    PosVar = var(Line, next_var_name()),
    SizVar = var(Line, next_var_name()),
    NodeVar = var(Line, next_var_name()),
    NextCtxVar = next_ctx_var_name(),
    NextCtxVVar = var(Line, NextCtxVar),
    Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
    E1 = step_expr_do(Ctx1, Step1, NodeVar),
    R1 = alist(step_expr_do(Ctx, Rest, NextVar)),
    O1 = ?P(Line, ["_@NextVar = xqerl_seq3:path_map(",
                   "fun(#{nk := _} = _@NodeVar,_@PosVar,_@SizVar) ->",
                   " _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,_@NodeVar,_@PosVar,_@SizVar),",
                   " _@E1;",
                   "(_,_,_) -> local_error('XPTY0019', _@Line@)",
            "      end, _@SourceVar)"]),
%?dbg("NodeVar",NodeVar),
    alist(O1) ++ R1;
% dupe xqAxisStep
step_expr_do(Ctx, [#xqFunctionCall{anno = Line} = Step1|Rest], SourceVar) ->
    ?noline(Line, Step1),
    CurrCtxVar = var(Line, get_context_variable_name(Ctx)),
    NextVar = var(Line, next_var_name()),
    PosVar = var(Line, next_var_name()),
    SizVar = var(Line, next_var_name()),
    NodeVar = var(Line, next_var_name()),
    NextCtxVar = next_ctx_var_name(),
    NextCtxVVar = var(Line, NextCtxVar),
    Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
    E1 = alist(expr_do(Ctx1, Step1)),
    R1 = alist(step_expr_do(Ctx, Rest, NextVar)),
    O1 = ?P(Line, ["_@NextVar = xqerl_seq3:path_map(",
                   "fun(#{nk := _} = _@NodeVar,_@PosVar,_@SizVar) ->",
                   " _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,_@NodeVar,_@PosVar,_@SizVar),",
                   " _@@E1;",
                   "(_,_,_) -> local_error('XPTY0019', _@Line@)",
            "      end, _@SourceVar)"]),
    alist(O1) ++ R1;
% dupe xqAxisStep
step_expr_do(Ctx, [#xqVarRef{anno = Line} = Step1|Rest], SourceVar) ->
    ?noline(Line, Step1),
    CurrCtxVar = var(Line, get_context_variable_name(Ctx)),
    NextVar = var(Line, next_var_name()),
    PosVar = var(Line, next_var_name()),
    SizVar = var(Line, next_var_name()),
    NodeVar = var(Line, next_var_name()),
    NextCtxVar = next_ctx_var_name(),
    NextCtxVVar = var(Line, NextCtxVar),
    Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
    E1 = alist(expr_do(Ctx1, Step1)),
    R1 = alist(step_expr_do(Ctx, Rest, NextVar)),
    O1 = ?P(Line, ["_@NextVar = xqerl_seq3:path_map(",
                   "fun(#{nk := _} = _@NodeVar,_@PosVar,_@SizVar) ->",
                   " _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,_@NodeVar,_@PosVar,_@SizVar),",
                   " _@@E1;",
                   "(_,_,_) -> local_error('XPTY0019', _@Line@)",
            "      end, _@SourceVar)"]),
    alist(O1) ++ R1;
step_expr_do(Ctx, [Step1|Rest], SourceVar) -> % unknown
    CurrCtxVar = var(?LINE, get_context_variable_name(Ctx)),
    NextVar = var(?LINE, next_var_name()),
    PosVar = var(?LINE, next_var_name()),
    SizVar = var(?LINE, next_var_name()),
    NodeVar = var(?LINE, next_var_name()),
    NextCtxVar = next_ctx_var_name(),
    NextCtxVVar = var(?LINE, NextCtxVar),
    Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
    E1 = alist(expr_do(Ctx1, Step1)),
    R1 = alist(step_expr_do(Ctx, Rest, NextVar)),
    O1 = ?P(?LINE, ["_@NextVar = xqerl_seq3:path_map(",
                   "fun(#{nk := _} = _@NodeVar,_@PosVar,_@SizVar) ->",
                   " _@NextCtxVVar = xqerl_context:set_context_item(_@CurrCtxVar,_@NodeVar,_@PosVar,_@SizVar),",
                   " _@@E1;",
                   "(_,_,_) -> erlang:throw(xqerl_error:error('XPTY0019'))",
            "      end, _@SourceVar)"]),
    alist(O1) ++ R1;
step_expr_do(Ctx, #xqAxisStep{} = As, SourceAbs) ->
    do_axis_step(Ctx, SourceAbs, As).

do_axis_step(Ctx, SourceVariable, #xqAxisStep{anno = Line,
                                              id = _Id, axis = Axis,
                                              node_test = NodeTest, 
                                              predicates = Preds}) ->
    AbsPreds = abs_list([handle_axis_step_pred(Ctx, P) || P <- Preds]),
    ?noline(Line),
    %% XXX catch errors, line number
    case xpath_function(Axis, NodeTest) of
        {none, Fun} ->
            ?P(Line, "xqldb_xpath:'@Fun@'(_@SourceVariable,{_@AbsPreds})");
        {name, Fun} -> 
            N = local_name_filter(NodeTest),
            ?P(Line, "xqldb_xpath:'@Fun@'(_@SourceVariable,{_@N, _@AbsPreds})");
        {name_type, Fun} -> 
            N = name_type_filter(NodeTest),
            ?P(Line, "xqldb_xpath:'@Fun@'(_@SourceVariable,{_@N, _@AbsPreds})");
        {error, _} ->
            {nil,?LINE}
    end.

handle_axis_step_pred(Ctx, #xqPredicate{pos = IsPos,
                                        anno = Line,
                                        expr = Pred}) ->
    ?noline(Line),
    IntCtxVar = var(Line, next_var_name()),
    PosVar = var(Line, next_var_name()),
    SizeVar = var(Line, next_var_name()),
    %?dbg("IntCtxVar",IntCtxVar),
    %?dbg("Pred     ",Pred),

    AddFun = fun(N, C) ->
                    add_variable(N, C)
             end,
    Ctx1 = lists:foldl(AddFun, Ctx, 
                       [{context_variable,IntCtxVar},
                        {position_variable,PosVar},
                        {size_variable,SizeVar}]),
    Ctx2 = Ctx1#{context_variable => IntCtxVar,
                 position_variable => PosVar,
                 size_variable => SizeVar},
    E1 = expr_do(Ctx2, Pred),
    case IsPos of
        false ->
            ?P(Line, ["fun(_@IntCtxVar,_@PosVar,_@SizeVar) -> ",
                      "xqerl_operators:eff_bool_val(_@E1) end"]);
        true ->
            ?P(Line, ["fun(_@IntCtxVar,_@PosVar,_@SizeVar) -> ",
                      "xqerl_operators:eff_bool_val(",
                      "  xqerl_operators:general_compare('=',_@E1, _@PosVar)) ",
                      "end"])
    end;
handle_axis_step_pred(Ctx, Other) ->
    ?parse_dbg("!!!SKIPPING!!!", Other),
    expr_do(Ctx, Other).

% return module function that takes a list of nodes and returns whatever
abs_path_expr(Ctx, #xqPathExpr{anno = Line,
                               id = Id} = P) ->
    ?noline(Line),
    %?dbg("P", P),
    FunNameAtom = path_function_name(Id), 
    CallingCtx = context_map_abs(Ctx),
    %CallingCtx = var(?LINE, get_context_variable_name(Ctx)),
    CallingVarTup = get_variable_tuple(Ctx),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    %% conditionals can duplicate path calls
    %% so make sure there is only one function
    Ctx1 = set_context_variable_name(Ctx, '__Ctx'),
    Expr = catch_wrap(path_expr_do(Ctx1, P), Line),
    ok = 
        case global_fun_exists(FunNameAtom, 2) of
            true ->
                ok;
            false ->
                Fun = ?Q(["'@FunNameAtom@'(__Ctx,_@CallingVarTup) ->",
                        " _@Expr."]),
                add_global_funs([Fun]),
                ok
        end,
    ?Q(["case catch '@FunNameAtom@'(_@CallingCtx,_@CallingVarTup) of",
        " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
        " _@Result -> _@Result",
        "end"]).

%% path_expr_do : here recursivly try to compile simple steps together
% and jump out to do one step at a time (step_expr_do) if complex  
% entire path expression goes in a global function, so no need
% to wrap in begin/end
path_expr_do(Ctx0, #xqPathExpr{anno = Line, expr = [ Base | Steps ]}) ->
    ?noline(Line, Base),
    Ctx = clear_context_variables(Ctx0),
    CtxVar = var(Line, 'InitCtxItem'),
    CtxItems =
        case Base of
            {'context-item', _} -> % get context item
                %?dbg("Base", Base),
                %E = expr_do(Ctx0, Base),
                E = expr_do(Ctx, Base),
                %?dbg("Base", E), 
                E;
            {'root', A} -> % get root of context item
                step_expr_do(Ctx, [Base], expr_do(Ctx0, {'context-item', A}));
            #xqPostfixExpr{} -> % use old context item
                expr_do(Ctx0, Base);
            #xqAxisStep{} -> % use old context item, 
                expr_do(Ctx0, Base);
            {variable, Var} ->
                CurrCtxVar = var(Line, get_context_variable_name(Ctx0)),
                a_var(Var, CurrCtxVar);
            _ ->
                %?parse_dbg("Base", Base),
                expr_do(Ctx, Base)
        end,

    % document order ensures this is a list of XML nodes
    case Steps of
        [] when is_record(Base, xqAxisStep) -> % already doc ordered
            ?Q(["_@CtxItems"]);
        [] when Line == undefined ->
         ?Q(["case xqldb_xpath:document_order(begin  _@CtxItems end) of",
             " {error, non_node} -> erlang:throw(xqerl_error:error('XPTY0019'));",
             " C -> C end"]);
        [] ->
         ?P(Line, ["case xqldb_xpath:document_order(begin  _@CtxItems end) of",
                   " {error, non_node} -> local_error('XPTY0019', _@Line@);",
                   " C -> C end"]);
        _ ->
            CtxSeq = ?P(Line, ["InitCtxItem = begin _@CtxItems end"]), % steps will order it
            [CtxSeq | compile_path_statement(Ctx, CtxVar, Steps)]
    end.






get_variable_ref(#xqQName{anno = Line, namespace = Ns, prefix = Px, local_name = Ln}, 
                 #{tab        := Tab,
                   parameters := Vars1,
                   variables  := Vars2,
                   namespaces := Nss} = Ctx) ->
    Vars0 = xqerl_context:get_in_scope_variables(Tab),
    Vars = Vars2 ++ Vars1 ++ Vars0,
    Ns2 = case Ns of
              undefined ->
                  proplists:get_value(Px, Nss);
              _ ->
                  Ns
          end,
    Var = 
        lists:filter(fun(E) ->
                            case element(1, E) of
                                #qname{namespace = Ns2, local_name = Ln} ->
                                    true;
                                _ ->
                                    false
                            end
                     end, Vars),
    Loc = 
        case Var of
            [] ->
                ?err('XPST0008', ?LN(Line)); % should not happen
            [H|_] ->
                element(4, H)
        end,
    Typ = element(2, hd(Var)),
    if 
        is_atom(Loc) ->
            {var(?LINE, Loc), Typ};
        true ->
            {F, _} = Loc,
            CtxVar = get_context_variable_name(Ctx),
            CV = var(?LINE, CtxVar),
            %GV = {var,?LINE,F},
            Get = ?Q("maps:get('@F@',_@CV)"),
            {Get, Typ}
    end.

alist(L) when is_list(L) -> lists:flatten(L);
alist(L) -> [L].

l(L) when is_list(L) -> L.
%;l(L) -> [L].


abs_document_node(Ctx, #xqDocumentNode{anno = Line,
                                       content = Contents}) ->
    % can only be computed, not direct
    NextCtx = next_ctx_var_name(),
    NextCtxVar = var(Line, NextCtx),
    Ctx1 = set_context_variable_name(Ctx, NextCtx),
    Contents1 = expr_do(Ctx1, Contents),
    ?P(Line, ["#{nk => document,",
              "  id => {NodeRef, -1},",
              "  ch => fun(_@NextCtxVar) -> _@Contents1 end"
              " }"]).

abs_element_node(Ctx, 
                 #xqElementNode{anno = Line,
                                type = direct,
                                id = _Id,
                                name = #xqQName{namespace = Ns,
                                                prefix = Px,
                                                local_name = Ln}, 
                                attributes = Atts, % namespaces in here
                                content = Contents}) ->
    NextCtx = next_ctx_var_name(),
    NextCtxVar = var(Line, NextCtx),
    Ctx1 = set_context_variable_name(Ctx, NextCtx),

    Atts1 = expr_do(Ctx, Atts),
    Contents1 = expr_do(Ctx1, Contents),
    %?parse_dbg("Contents ", Contents),
    %?parse_dbg("Contents1", Contents1),

    NodeName = case Ns of
                   <<>> ->
                       ?Q("{<<>>, <<>>, _@Ln@}");
                   _ ->
                       ?Q("{_@Ns@, _@Px@, _@Ln@}")
               end,
    TypeName = case maps:get('construction-mode', Ctx) of
                   strip ->
                       atom(Line, 'xs:untyped');
                   _ ->
                       atom(Line, 'xs:anyType')
               end,
    ?P(Line, ["#{nk => element,",
              "  tn => _@TypeName,",
              "  nn => _@NodeName,",
              "  id => {NodeRef, -1},",
              "  at => _@Atts1,",
              "  ch => fun(_@NextCtxVar) -> _@Contents1 end"
              " }"]);
abs_element_node(Ctx, 
                 #xqElementNode{anno = Line,
                                type = comp,
                                id = _Id,
                                name = Name,
                                content = Contents}) ->
    NextCtx = next_ctx_var_name(),
    NextCtxVar = var(Line, NextCtx),
    Ctx1 = set_context_variable_name(Ctx, NextCtx),

    Name1 = 
        case Name of
            #xqQName{namespace = N,
                     prefix = P,
                     local_name = L} ->
                ?Q("{_@N@, _@P@, _@L@}");
            _ ->
                CurrCtxVar = var(?LINE, get_context_variable_name(Ctx)),
                Name2 = expr_do(Ctx, Name),
                ?Q("xqerl_node:expand_node_name(_@CurrCtxVar, _@Name2)")
        end,

    Contents1 = expr_do(Ctx1, Contents),
    TypeName = case maps:get('construction-mode', Ctx) of
                   strip ->
                       atom(Line, 'xs:untyped');
                   _ ->
                       atom(Line, 'xs:anyType')
               end,
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    Node = ?Q(["#{nk => element,",
               "  at => [],",
               "  tn => _@TypeName,",
               "  nn => _@Name1,",
               "  id => {NodeRef, -1},",
               "  ch => fun(_@NextCtxVar) -> _@Contents1 end"
               " }"]),
    ?P(Line, ["case catch (_@Node) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]).

abs_attribute_node(Ctx, 
                   #xqAttributeNode{anno = Line,
                                    type = direct,
                                    name = #xqQName{namespace = Ns,
                                                    prefix = Px,
                                                    local_name = Ln},
                                    text = Text}) ->
    Text1 = 
        case Text of
            #xqEnclosedExpr{} ->
                En = expr_do(Ctx, Text),
                ?Q("[_@En]");
            [#xqEnclosedExpr{}] ->
                En = expr_do(Ctx, Text),
                ?Q("[_@En]");
            _ ->
                %?parse_dbg("Text", Text),
                expr_do(Ctx, Text)
        end,
    %?parse_dbg("T ", Text),
    %?parse_dbg("T1", Text1),
    Type = atom(Line, 'xs:untypedAtomic'),
    NodeName = case Ns of
                   <<>> ->
                       ?Q("{<<>>, <<>>, _@Ln@}");
                   _ ->
                       ?Q("{_@Ns@, _@Px@, _@Ln@}")
               end,
    ?P(Line, ["#{nk => attribute,",
              "  nn => _@NodeName,",
              "  tn => _@Type,",
              "  id => {NodeRef, -1},",
              "  sv => _@Text1"
              " }"]);
abs_attribute_node(Ctx, 
                   #xqAttributeNode{anno = Line,
                                    type = comp,
                                    name = Name,
                                    text = Text}) ->
    Name1 = 
        case Name of
            #xqQName{namespace = N,
                     prefix = P,
                     local_name = L} ->
                ?Q("{_@N@, _@P@, _@L@}");
            _ ->
                CurrCtxVar = var(?LINE, get_context_variable_name(Ctx)),
                Name2 = expr_do(Ctx, Name),
                ?Q("xqerl_node:expand_attribute_name(_@CurrCtxVar, _@Name2)")
        end,
    Text1 = expr_do(Ctx, Text),
    Type = atom(Line, 'xs:untypedAtomic'),
    ?P(Line, ["#{nk => attribute,",
              "  nn => _@Name1,",
              "  tn => _@Type,",
              "  id => {NodeRef, -1},",
              "  sv => xqerl_types:string_value(_@Text1)"
              " }"]).

abs_text_node(Ctx, #xqTextNode{anno = Line,
                               type = _,
                               text = Text}) ->
    %?parse_dbg("Text", Text),
    Text1 = expr_do(Ctx, Text),
    ?P(Line, ["#{nk => text,",
              "  id => {NodeRef, -1},",
              "  sv => _@Text1"
              " }"]).

abs_comment_node(Ctx, #xqCommentNode{anno = Line,
                                     type = _,
                                     text = Text}) ->
    Text1 = expr_do(Ctx, Text),
    ?P(Line, ["#{nk => comment,",
              "  id => {NodeRef, -1},",
              "  sv => xqerl_types:string_value(_@Text1)"
              " }"]).

abs_pi_node(Ctx, #xqProcessingInstructionNode{anno = Line,
                                              type = direct,
                                              name = #xqQName{local_name = Ln}, 
                                              data = Data}) ->
    Data1 = expr_do(Ctx, Data),
    NodeName = ?Q("{<<>>, <<>>, _@Ln@}"),
    ?P(Line, ["#{nk => 'processing-instruction',",
              "  nn => _@NodeName,",
              "  id => {NodeRef, -1},",
              "  sv => _@Data1"
              " }"]);
abs_pi_node(Ctx, #xqProcessingInstructionNode{anno = Line,
                                              type = comp,
                                              name = Name, 
                                              data = Data}) ->
    Name1 = 
        case Name of
            #xqQName{local_name = L} ->
                ?Q("{<<>>, <<>>, _@L@}");
            _ ->
                %?parse_dbg("Name",Name),
                Name2 = expr_do(Ctx, Name),
                ?Q("xqerl_node:expand_pi_name(_@Name2)")
        end,
    Data1 = expr_do(Ctx, Data),
    ?P(Line, ["#{nk => 'processing-instruction',",
              "  nn => _@Name1,",
              "  id => {NodeRef, -1},",
              "  sv => xqerl_types:string_value(_@Data1)"
              " }"]).

abs_namespace_node(_Ctx, #xqNamespaceNode{anno = Line,
                                          type = direct,
                                          uri = U, 
                                          prefix = P}) ->
    ?P(Line, ["#{nk => 'namespace',",
              "  nn => {_@U@, _@P@},",
              "  id => {NodeRef, -1}",
              " }"]);
abs_namespace_node(Ctx, #xqNamespaceNode{anno = Line,
                                         type = comp,
                                         uri = U, 
                                         prefix = P}) ->
    U1 = expr_do(Ctx, U),
    P1 = expr_do(Ctx, P),
    Name = ?Q(["xqerl_node:expand_ns_name(",
               "{_@U1,",
               " _@P1})"]),
    ?P(Line, ["#{nk => 'namespace',",
              "  nn => _@Name,",
              "  id => {NodeRef, -1}",
              " }"]).

abs_fun_test(Ctx,#xqFunTest{kind = Kind, 
                            annotations = Annos, 
                            name = Name, 
                            params = Params, 
                            type = Type}) ->
    _ = add_used_record_type(funTest),
    AnnoF = fun(#xqAnnotation{name = #xqQName{} = Q}, Abs) ->
                   {cons,?LINE,abs_qname(Ctx, Q), Abs}
            end,
    E1 = if 
            Annos == [] -> {nil,?LINE};
            true ->
                lists:foldr(AnnoF, {nil,?LINE}, Annos)
         end,
    E2 = abs_qname(Ctx,Name),
    E3 = 
        if 
            Params =:= any ->
                atom_or_string(any);
            is_atom(Params) ->
                {cons,?LINE,abs_seq_type(Ctx,Params), {nil,?LINE}};
            true ->
                lists:foldr(fun(P, Abs) ->
                                   {cons,?LINE,abs_seq_type(Ctx,P), Abs}
                            end, {nil,?LINE}, Params)
        end,
    E4 = 
        if 
            Type =:= any ->
                atom_or_string(any);
            true ->
                abs_seq_type(Ctx,Type)
        end,
    ?Q(["#funTest{kind = '@Kind@', annotations = _@E1, name = _@E2,",
        "params = _@E3, type = _@E4}"]).

abs_seq_type(_Ctx,Type) when is_atom(Type) ->
    _ = add_used_record_type(seqType),
    ?e:revert(?Q("#seqType{type = '@Type@', occur = one}"));
abs_seq_type(Ctx,#xqSeqType{anno = Line, type = #xqFunTest{} = Ft, occur = O}) ->
    _ = add_used_record_type(seqType),
    E1 = abs_fun_test(Ctx, Ft),
    ?e:revert(?P(Line, "#seqType{type = _@E1, occur = _@O@}"));
abs_seq_type(Ctx,#xqSeqType{anno = Line, type = #xqKindTest{} = Kt, occur = O}) ->
    _ = add_used_record_type(seqType),
    E1 = abs_kind_test(Ctx,Kt),
    ?e:revert(?P(Line, "#seqType{type = _@E1, occur = _@O@}"));
abs_seq_type(_Ctx,#xqSeqType{anno = Line, type = T, occur = O}) ->
    _ = add_used_record_type(seqType),
    ?e:revert(?P(Line, "#seqType{type = _@T@, occur = _@O@}")).

abs_qname(Ctx, [Val]) -> abs_qname(Ctx, Val);
abs_qname(_Ctx, undefined) ->
    atom_or_string(undefined);
abs_qname(_Ctx, {variable,_}) ->
    atom_or_string(undefined);
abs_qname(_Ctx, #xqQName{anno = A, namespace = N, prefix = P, local_name = L}) ->
    _ = add_used_record_type(qname),
    try
        N1 = 
            if 
                N == <<>> ->
                    <<>>;
                true ->
                    N2 = xqerl_types:cast_as(N, 'xs:anyURI'),
                    xqerl_types:string_value(N2)
            end,
        P1 = 
            if 
                P == <<>> ->
                    <<>>;
                true ->
                    P2 = xqerl_types:cast_as(P, 'xs:NCName'),
                    xqerl_types:string_value(P2)
            end,
        L1 = xqerl_types:string_value(xqerl_types:cast_as(L, 'xs:NCName')),
        _ = add_used_record_type(xqAtomicValue),
        ?e:revert(?P(A, ["#xqAtomicValue{type = 'xs:QName',",
               "               value = #qname{namespace = _@N1@,",
               "                              prefix = _@P1@,",
               "                              local_name = _@L1@}}"]))
    catch
        _:_ ->
            if 
                is_atom(N) ->
                    ?e:revert(?P(A, "#qname{namespace = '@N@', prefix = _@P@, local_name = _@L@}"));
                true ->
                    ?e:revert(?P(A, "#qname{namespace = _@N@, prefix = _@P@, local_name = _@L@}"))
            end
    end.

% {xqKindTest,node,undefined,undefined,undefined}
abs_kind_test(Ctx, #xqKindTest{kind = K, name = Q, type = T}) ->
    _ = add_used_record_type(kindTest),
    E1 = abs_qname(Ctx,Q),
    E2 = 
        if 
            is_atom(T) ->
                atom_or_string(T);
            true ->
                expr_do(Ctx, T)
        end,
    ?Q("#kindTest{kind = _@K@, name = _@E1, type = _@E2}").

abs_function(Ctx,#xqFunctionDef{annotations = _A,
                                name = N,
                                arity = Ar,
                                params = Params,
                                type = Type,
                                anno = Line}, BodyAbs) ->
    _ = add_used_record_type(xqFunction),
    AbsName = abs_qname(Ctx, N),
    AbsArity = {integer,?LINE,Ar},
    AbsParams = abs_param_list(Ctx, Params),
    AbsType = abs_seq_type(Ctx, Type),
    ?P(Line, ["#xqFunction{",
              " name   = _@AbsName,",
              " arity  = _@AbsArity,",
              " params = _@AbsParams,",
              " type   = _@AbsType,",
              " body   = _@BodyAbs}"]).

abs_param_list(Ctx, List) ->
    Fun = 
        fun (#xqSeqType{} = St,Acc) ->
               {cons,?LINE,abs_seq_type(Ctx, St) ,Acc};
            (#xqVar{type = #xqSeqType{} = St},Acc) ->
                {cons,?LINE,abs_seq_type(Ctx, St) ,Acc};
            (#xqVar{type = undefined},Acc) ->
                {cons,?LINE,abs_seq_type(Ctx, #xqSeqType{}) ,Acc};
            (#xqAtomicValue{type = St},Acc) ->
                {cons,?LINE,abs_seq_type(Ctx,
                                         #xqSeqType{occur = one,
                                                    type = St}) ,Acc};
            (I, Acc) when is_binary(I) ->
                {cons,?LINE,abs_seq_type(Ctx, 
                                         #xqSeqType{occur = one,
                                                    type = 'xs:string'}) ,Acc};
            (I, Acc) when is_float(I) ->
                {cons,?LINE,abs_seq_type(Ctx, 
                                         #xqSeqType{occur = one,
                                                    type = 'xs:double'}) ,Acc};
            (I, Acc) when is_integer(I) ->
                {cons,?LINE,abs_seq_type(Ctx, 
                                         #xqSeqType{occur = one,
                                                    type = 'xs:integer'}) ,Acc}
        end,
    lists:foldr(Fun, {nil,?LINE}, List).

abs_simp_atomic_value(#xqAtomicValue{type = T, value = V}) ->
    _ = add_used_record_type(xqAtomicValue),
    ?Q("#xqAtomicValue{type = _@T@, value = _@V@}").

atom_or_string(AS) -> atom(?LINE, AS).

get_context_variable_name(#{ctx_var := V}) -> V.
set_context_variable_name(Ctx, Name) ->
    Ctx#{ctx_var => Name}.

get_variable_tuple_name(#{var_tuple := V}) -> V.
set_variable_tuple_name(Ctx, Name) ->
    Ctx#{var_tuple => Name}.

%% XXX maybe ditch the namespace record for {Px, Ns} | {Ns, Px}
abs_ns_list(Ctx) ->
   _ = add_used_record_type(xqNamespace),
   lists:foldr(fun(#xqNamespace{prefix = P,namespace = N}, Abs) ->
                     ?P(?LINE,"[#xqNamespace{prefix = _@P@,namespace = _@N@}|_@Abs]");
                  ({P, N}, Abs) ->
                     ?P(?LINE,"[#xqNamespace{prefix = _@P@,namespace = _@N@}|_@Abs]")
               end, {nil,?LINE}, maps:get(namespaces,Ctx)).   

next_var_tuple_name() ->
    list_to_atom("__VarTup__"++integer_to_list(next_id(var_tuple))).

next_id(Atom) ->
    Id = erlang:get(Atom),
    erlang:put(Atom, Id + 1),
    Id.

next_id() ->
    Id = erlang:get(imp_mod),
    erlang:put(imp_mod, Id + 1),
    Id.

next_ctx_id() ->
    Id = erlang:get(ctx),
    erlang:put(ctx, Id + 1),
    Id.

next_var_name() ->
    list_to_atom("__Local__"++integer_to_list(next_id())).

next_ctx_var_name() ->
    list_to_atom("__Ctx__"++integer_to_list(next_ctx_id())).

local_variable_name(Id) ->
    list_to_atom(lists:concat(["__XQ__var_", Id])).

copy_variable_name(Id) ->
    list_to_atom(lists:concat(["__Copy__var_", Id])).

node_function_name({direct, Id}) ->
    list_to_atom(lists:concat(["direct_node_cons__", Id]));
node_function_name({comp, Id}) ->
    list_to_atom(lists:concat(["comp_node_cons__", Id])).

path_function_name(Id) ->
    list_to_atom(lists:concat(["path_expr__", Id])).

get_variable_tuple(#{variables := Vars} = Ctx) ->
    if 
        length(Vars) == 0 ->
            {nil,?LINE};
        true ->
            get_variable_tuple(Ctx, Vars)
    end.

get_variable_tuple(_Ctx, List) when is_list(List) ->
    F = fun({_,_,_,Name}) when is_atom(Name) ->
               {true, var(?LINE, Name)};
           ({Name,{var,_,_} = Var}) when is_atom(Name) ->
               {true,Var}; % context items
           %({Name,{tree,variable,_,_} = Var}) when is_atom(Name) ->
           %    {true,Var}; % context items
           (_) ->
               false
        end,
    Vars = lists:filtermap(F, List),
    ?Q("{_@@Vars}").

abs_list(List) ->
    lists:foldr(fun(E, Abs) ->
                       ?e:cons(E, Abs)
                end, {nil,?LINE}, List).

%% XXX before this, check to see if list can be deep at all
from_list_to_seq(List) when is_list(List) ->
    E1 = abs_list(List),
    ?Q("xqerl_seq3:flatten(_@E1)").

get_global_funs() ->
    case erlang:get(global_funs) of
        undefined ->
            [];
        F ->
            F
    end.

delete_global_funs() ->
    erlang:erase(global_funs),
    ok.

add_global_funs(Funs) ->
    case erlang:get(global_funs) of
        undefined ->
            erlang:put(global_funs,Funs);
        Gs ->
            erlang:put(global_funs,Funs ++ Gs)
    end.

global_fun_exists(Name, Arity) ->
    F = fun(Fun) ->
               FName = ?e:atom_value(?e:function_name(Fun)),
               FArity = ?e:function_arity(Fun),
               Name == FName andalso Arity == FArity
        end,
    lists:any(F, get_global_funs()).

a_term(Term) ->
    ?e:abstract(Term).

handle_predicate({Ctx, #xqLookup{anno = Line, key = wildcard}}, Abs) ->
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_operators:lookup(_@CtxVar,_@Abs,all) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);
handle_predicate({Ctx, #xqLookup{anno = Line, key = Val}}, Abs) ->
    %?parse_dbg("Val",Val),
    E1 =  expr_do(Ctx, Val),
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_operators:lookup(_@CtxVar,_@Abs,_@E1) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);
handle_predicate({Ctx, #xqPredicate{expr = [P]} = Pred}, Abs) ->
    handle_predicate({Ctx, Pred#xqPredicate{expr = P}}, Abs);
handle_predicate({Ctx, #xqPredicate{expr = #xqSequence{vals = [P]}} = Pred}, Abs) ->
    handle_predicate({Ctx, Pred#xqPredicate{expr = P}}, Abs);
handle_predicate({Ctx, #xqPredicate{anno = Line,
                                    pos = true, 
                                    expr = {variable, Name}}}, Abs) ->
    Name1 = var(Line, Name),
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_seq3:position_filter(_@CtxVar,_@Name1,_@Abs) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);
handle_predicate({Ctx, #xqPredicate{anno = Line,
                                    pos = true, 
                                    expr = #xqAtomicValue{} = A}}, Abs) ->
    A1 = abs_simp_atomic_value(A),
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_seq3:position_filter(_@CtxVar,_@A1,_@Abs) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);
handle_predicate({Ctx, #xqPredicate{anno = Line,
                                    pos = true, 
                                    expr = #xqVarRef{name = Name}}}, Abs) ->
    {VarAbs, _} = get_variable_ref(Name, Ctx),
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_seq3:position_filter(_@CtxVar,_@VarAbs,_@Abs) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);
handle_predicate({_Ctx, #xqPredicate{pos = true, 
                                     expr = ?CALL(#xqFunctionDef{body = {xqerl_mod_fn,last,_}}, _)}}, Abs) ->

   ?Q("xqerl_seq3:last(_@Abs)");
handle_predicate({Ctx, #xqPredicate{anno = Line,
                                    pos = true, 
                                    expr = P}}, Abs) ->

    CtxVar = var(Line, get_context_variable_name(Ctx)),
    NextCtxVar = next_ctx_var_name(),
    NextCtxVar1 = var(Line, NextCtxVar),
    Ctx1 = set_context_variable_name(Ctx, NextCtxVar),
    E1 = expr_do(Ctx1, P),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_seq3:position_filter(_@CtxVar,fun(_@NextCtxVar1) ->",
              " _@E1 end,_@Abs) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

handle_predicate({Ctx, #xqPredicate{anno = Line,
                                    pos = false, 
                                    expr = #xqAtomicValue{type = Type} = A}}, Abs)
  when ?xs_numeric(Type) ->
    A1 = abs_simp_atomic_value(A),
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ?P(Line, ["case catch xqerl_seq3:position_filter(_@CtxVar,_@A1,_@Abs) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);
handle_predicate({Ctx, #xqPredicate{anno = Line,
                                    pos = false, 
                                    expr = #xqVarRef{name = Name}}}, Abs) ->
    {VarAbs, #xqSeqType{type = VarType}} = get_variable_ref(Name, Ctx),
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    if 
        ?xs_numeric(VarType) ->
            ?P(Line, ["case catch xqerl_seq3:position_filter(_@CtxVar,_@VarAbs,_@Abs) of",
                      " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                      " _@Result -> _@Result",
                      "end"]);
            true ->
                NextCtxVar = var(Line, next_ctx_var_name()),
                ?P(Line, ["case catch xqerl_seq3:filter(_@CtxVar,fun(_@NextCtxVar,_,_,_) -> _@VarAbs end,_@Abs) of",
                          " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          " _@Result -> _@Result",
                          "end"])
    end;
handle_predicate({Ctx, #xqPredicate{anno = Line,
                                    pos = false, 
                                    expr = P}}, Abs) ->
    CtxVar = var(Line, get_context_variable_name(Ctx)),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    NextCtxVar = next_ctx_var_name(),
    NextCtxVar1 = var(Line, NextCtxVar),
    IntCtxVar = var(Line, next_var_name()),
    PosVar = var(Line, next_var_name()),
    SizeVar = var(Line, next_var_name()),

    AddFun = fun(N, C) -> add_variable(N, C) end,
    Ctx0 = lists:foldl(AddFun, Ctx, 
                       [{context_variable,IntCtxVar},
                        {position_variable,PosVar},
                        {size_variable,SizeVar}]),
    Ctx1 = set_context_variable_name(Ctx0, NextCtxVar),
    Ctx2 = Ctx1#{context_variable => IntCtxVar,
                 position_variable => PosVar,
                 size_variable => SizeVar},
    E1 = expr_do(Ctx2, P),
    ?P(Line, ["case catch xqerl_seq3:filter(_@CtxVar,fun(_@NextCtxVar1,_@IntCtxVar,_@PosVar,_@SizeVar) -> _@E1 end,_@Abs) of",
              " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
              " _@Result -> _@Result",
              "end"]);

handle_predicate({Ctx, #xqArgumentList{anno = Anno, args = Args}}, Abs) ->
    PlaceHolders = [var(Line, next_var_name()) 
                   || #xqArgumentPlaceholder{anno = Line} <- Args], 
    NwF = fun(#xqArgumentPlaceholder{}, PHs) ->
                 {hd(PHs), tl(PHs)};
             (Arg, PHs) ->
                 {Arg, PHs}
          end,
    {NewArgs, _} = lists:mapfoldl(NwF, PlaceHolders, Args),
    AgF = fun({var,_,_} = Arg) -> Arg;
             (Arg) -> expr_do(Ctx, Arg)
          end,
    ArgAbs = lists:map(AgF, NewArgs),
    NextCtxVar2 = var(?LINE, next_ctx_var_name()),
    NextVar2    = var(?LINE, next_var_name()),
    CtxAbs = context_map_abs(Ctx),
    Fun1 = ?P(?LINE, ["fun([]) ->",
                      " erlang:throw(xqerl_error:error('XPTY0004'));",
                      "(_@NextVar2) ->",
                      " xqerl_seq3:do_call(_@CtxAbs,_@NextVar2,{_@@ArgAbs})",
                      "end"]),
    Fun2 = ?P(?LINE, ["fun(_@NextCtxVar2,_@@PlaceHolders) ->",
                      " _@NextVar2 = xqerl_types:value(_@Abs),",
                      " _@NextVar2(_@NextCtxVar2,_@@ArgAbs)",
                      "end"]),
    Error = var(Anno, next_var_name()),
    Result = var(Anno, next_var_name()),
    if 
        PlaceHolders == [] ->
            ?Q(["case catch xqerl_seq3:val_map(_@Fun1,_@Abs) of",
                " #xqError{} = _@Error -> local_error(_@Error, _@Anno@);",
                " _@Result -> _@Result",
                "end"]);
        true ->
            Fun2
    end.

a_var({_,Name},CtxVar) when is_atom(Name) -> % imported var
    V = atom(?LINE, Name),
    ?Q("maps:get(_@V, _@CtxVar)");
a_var({Name,1},CtxVar) when is_atom(Name) ->
    V = atom(?LINE, Name),
    ?Q("maps:get(_@V, _@CtxVar)");
a_var(Name,_CtxVar) when is_atom(Name) ->
    var(?LINE, Name).

param_prefix() -> "__Param__var_".

ensure_param_type(_Ctx,Var,TVar,#xqSeqType{type = item, occur = zero_or_many}) ->
    ?Q("_@Var = _@TVar");
ensure_param_type(_Ctx,Var,TVar,undefined) ->
    ?Q("_@Var = _@TVar");
ensure_param_type(Ctx,Var,TVar,Type) ->
    T = expr_do(Ctx,Type),
    ?Q("_@Var = xqerl_types:promote(_@TVar,_@T)").

clear_context_variables(Map) ->
    M1 = maps:remove(context_variable, Map),
    M2 = maps:remove(position_variable, M1),
    maps:remove(size_variable, M2).

context_map_abs(#{context_variable := C,
                  position_variable := P,
                  size_variable := S} = Ctx) ->
    CtxVar = var(?LINE, get_context_variable_name(Ctx)),
    ?Q("xqerl_context:set_context_item(_@CtxVar,_@C,xqerl_types:value(_@P),_@S)");
context_map_abs(Ctx) ->
    var(?LINE, get_context_variable_name(Ctx)).



local_name_filter(#xqKindTest{name = #xqQName{local_name = Ln}}) ->
    ?Q("{_@Ln@}");
local_name_filter(#xqKindTest{name = undefined}) ->
    ?Q("{'_'}").

name_type_filter(#xqKindTest{type = #xqSeqType{type = 'xs:anyType'}} = K) ->
    name_type_filter(K#xqKindTest{type = undefined});

name_type_filter(#xqKindTest{name = undefined, type = undefined}) -> 
    ?Q("{'_','_','_'}");
name_type_filter(#xqKindTest{name = undefined, type = #xqSeqType{type = Type}}) -> 
    ?Q("{'_','_',_@Type@}");

name_type_filter(#xqKindTest{name = #xqQName{namespace = <<"*">>,
                                             local_name = <<"*">>}, 
                             type = undefined}) -> 
    ?Q("{'_','_','_'}");
name_type_filter(#xqKindTest{name = #xqQName{namespace = <<"*">>,
                                             local_name = Ln}, 
                             type = undefined}) -> 
    ?Q("{'_',_@Ln@,'_'}");
name_type_filter(#xqKindTest{name = #xqQName{namespace = Ns,
                                             local_name = <<"*">>}, 
                             type = undefined}) -> 
    ?Q("{_@Ns@,'_','_'}");
name_type_filter(#xqKindTest{name = #xqQName{namespace = Ns,
                                             local_name = Ln}, 
                             type = undefined}) -> 
    ?Q("{_@Ns@,_@Ln@,'_'}");

name_type_filter(#xqKindTest{name = #xqQName{namespace = <<"*">>,
                                             local_name = <<"*">>}, 
                             type = #xqSeqType{type = Type}}) -> 
    ?Q("{'_','_',_@Type@}");
name_type_filter(#xqKindTest{name = #xqQName{namespace = <<"*">>,
                                             local_name = Ln}, 
                             type = #xqSeqType{type = Type}}) -> 
    ?Q("{'_',_@Ln@,_@Type@}");
name_type_filter(#xqKindTest{name = #xqQName{namespace = Ns,
                                             local_name = <<"*">>}, 
                             type = #xqSeqType{type = Type}}) -> 
    ?Q("{_@Ns@,'_',_@Type@}");
name_type_filter(#xqKindTest{name = #xqQName{namespace = Ns,
                                             local_name = Ln}, 
                             type = #xqSeqType{type = Type}}) -> 
    ?Q("{_@Ns@,_@Ln@,_@Type@}").





% {name | name_type | none, fun_name}
xpath_function('ancestor', #xqKindTest{kind = 'document-node'}) -> {name_type,ancestor_document_node};
xpath_function('ancestor', #xqKindTest{kind = 'element'}) -> {name_type,ancestor_element};
xpath_function('ancestor', #xqKindTest{kind = 'node'}) -> {none,ancestor_node};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'attribute'}) -> {name_type,ancestor_or_self_attribute};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'comment'}) -> {none,ancestor_or_self_comment};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'document-node'}) -> {name_type,ancestor_or_self_document_node};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'element'}) -> {name_type,ancestor_or_self_element};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'node'}) -> {none,ancestor_or_self_node};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'processing-instruction'}) -> {name,ancestor_or_self_processing_instruction};
xpath_function('ancestor-or-self', #xqKindTest{kind = 'text'}) -> {none,ancestor_or_self_text};
xpath_function('attribute', #xqKindTest{kind = 'attribute'}) -> {name_type,attribute_attribute};
xpath_function('attribute', #xqKindTest{kind = 'node'}) -> {none,attribute_node};
xpath_function('child', #xqKindTest{kind = 'comment'}) -> {none,child_comment};
xpath_function('child', #xqKindTest{kind = 'element'}) -> {name_type,child_element};
xpath_function('child', #xqKindTest{kind = 'node'}) -> {none,child_node};
xpath_function('child', #xqKindTest{kind = 'processing-instruction'}) -> {name,child_processing_instruction};
xpath_function('child', #xqKindTest{kind = 'text'}) -> {none,child_text};
xpath_function('descendant', #xqKindTest{kind = 'comment'}) -> {none,descendant_comment};
xpath_function('descendant', #xqKindTest{kind = 'element'}) -> {name_type,descendant_element};
xpath_function('descendant', #xqKindTest{kind = 'node'}) -> {none,descendant_node};
xpath_function('descendant', #xqKindTest{kind = 'processing-instruction'}) -> {name,descendant_processing_instruction};
xpath_function('descendant', #xqKindTest{kind = 'text'}) -> {none,descendant_text};
xpath_function('descendant-or-self', #xqKindTest{kind = 'attribute'}) -> {name_type,descendant_or_self_attribute};
xpath_function('descendant-or-self', #xqKindTest{kind = 'comment'}) -> {none,descendant_or_self_comment};
xpath_function('descendant-or-self', #xqKindTest{kind = 'document-node'}) -> {name_type,descendant_or_self_document_node};
xpath_function('descendant-or-self', #xqKindTest{kind = 'element'}) -> {name_type,descendant_or_self_element};
xpath_function('descendant-or-self', #xqKindTest{kind = 'node'}) -> {none,descendant_or_self_node};
xpath_function('descendant-or-self', #xqKindTest{kind = 'processing-instruction'}) -> {name,descendant_or_self_processing_instruction};
xpath_function('descendant-or-self', #xqKindTest{kind = 'text'}) -> {none,descendant_or_self_text};
xpath_function('following', #xqKindTest{kind = 'comment'}) -> {none,following_comment};
xpath_function('following', #xqKindTest{kind = 'element'}) -> {name_type,following_element};
xpath_function('following', #xqKindTest{kind = 'node'}) -> {none,following_node};
xpath_function('following', #xqKindTest{kind = 'processing-instruction'}) -> {name,following_processing_instruction};
xpath_function('following', #xqKindTest{kind = 'text'}) -> {none,following_text};
xpath_function('following-sibling', #xqKindTest{kind = 'comment'}) -> {none,following_sibling_comment};
xpath_function('following-sibling', #xqKindTest{kind = 'element'}) -> {name_type,following_sibling_element};
xpath_function('following-sibling', #xqKindTest{kind = 'node'}) -> {none,following_sibling_node};
xpath_function('following-sibling', #xqKindTest{kind = 'processing-instruction'}) -> {name,following_sibling_processing_instruction};
xpath_function('following-sibling', #xqKindTest{kind = 'text'}) -> {none,following_sibling_text};
xpath_function('parent', #xqKindTest{kind = 'document-node'}) -> {name_type,parent_document_node};
xpath_function('parent', #xqKindTest{kind = 'element'}) -> {name_type,parent_element};
xpath_function('parent', #xqKindTest{kind = 'node'}) -> {none,parent_node};
xpath_function('preceding', #xqKindTest{kind = 'comment'}) -> {none,preceding_comment};
xpath_function('preceding', #xqKindTest{kind = 'element'}) -> {name_type,preceding_element};
xpath_function('preceding', #xqKindTest{kind = 'node'}) -> {none,preceding_node};
xpath_function('preceding', #xqKindTest{kind = 'processing-instruction'}) -> {name,preceding_processing_instruction};
xpath_function('preceding', #xqKindTest{kind = 'text'}) -> {none,preceding_text};
xpath_function('preceding-sibling', #xqKindTest{kind = 'comment'}) -> {none,preceding_sibling_comment};
xpath_function('preceding-sibling', #xqKindTest{kind = 'element'}) -> {name_type,preceding_sibling_element};
xpath_function('preceding-sibling', #xqKindTest{kind = 'node'}) -> {none,preceding_sibling_node};
xpath_function('preceding-sibling', #xqKindTest{kind = 'processing-instruction'}) -> {name,preceding_sibling_processing_instruction};
xpath_function('preceding-sibling', #xqKindTest{kind = 'text'}) -> {none,preceding_sibling_text};
xpath_function('self', #xqKindTest{kind = 'attribute'}) -> {name_type,self_attribute};
xpath_function('self', #xqKindTest{kind = namespace}) -> {none,self_namespace};
xpath_function('self', #xqKindTest{kind = 'comment'}) -> {none,self_comment};
xpath_function('self', #xqKindTest{kind = 'document-node'}) -> {name_type,self_document_node};
xpath_function('self', #xqKindTest{kind = 'element'}) -> {name_type,self_element};
xpath_function('self', #xqKindTest{kind = 'node'}) -> {none,self_node};
xpath_function('self', #xqKindTest{kind = 'processing-instruction'}) -> {name,self_processing_instruction};
xpath_function('self', #xqKindTest{kind = 'text'}) -> {none,self_text};
xpath_function(_, _) -> {error, empty_axis}.

get_used_record_types() ->
    case erlang:get('$_used_records') of
        undefined ->
            [];
        L ->
            L
    end.

add_used_record_type(Atom) ->
    case erlang:get('$_used_records') of
        undefined ->
            erlang:put('$_used_records', [Atom]),
            ok;
        L ->
            erlang:put('$_used_records', ordsets:add_element(Atom, L)),
            ok
    end.

%% splits a path expression into simple and complex parts.
%% simple parts: forward axes without predicates
%%  all child axes need not be doc-ordered
%% complex part: steps predicates and reverse steps other than parent
%%   after a complex step, if the steps continue, they can possibly be simple.
%% need to check if they are. so, split the path expression into parts  

%% Simple steps can most-likely be answered using the structure index
%% db_path_expr are known to be DB nodes path_expr can be either DB or memory
compile_path_statement(Ctx, CurrentContextSeq, Steps) ->
    SplitSteps = split_steps(Steps), 
    compile_path_statement_1(Ctx, CurrentContextSeq, SplitSteps).

compile_path_statement_1(Ctx, SourceVar, [{[],Hard}]) ->
    step_expr_do(Ctx, Hard, SourceVar);
compile_path_statement_1(Ctx, SourceVar, [{Simp,[]}]) ->
    [build_simple_path(Ctx, SourceVar, Simp)];
compile_path_statement_1(Ctx, SourceVar, [{Simp,Hard}]) ->
    NextVar = var(?LINE, next_var_name()),
    S = build_simple_path(Ctx, SourceVar, Simp),
    Sa = ?Q("_@NextVar = _@S"),
    [Sa|step_expr_do(Ctx, Hard, NextVar)];

compile_path_statement_1(Ctx, SourceVar, [{[],Hard}|Rest]) ->
    Abs0 = step_expr_do(Ctx, Hard ++ [continue], SourceVar),
    NewSourceVar = lists:last(Abs0),
    Abs = lists:droplast(Abs0),
    Abs ++ compile_path_statement_1(Ctx, NewSourceVar, Rest);
compile_path_statement_1(Ctx, SourceVar, [{Simp,[]}|Rest]) ->
    NextVar = var(?LINE, next_var_name()),
    S = build_simple_path(Ctx, SourceVar, Simp),
    Sa = ?Q("_@NextVar = _@S"),
    [Sa|compile_path_statement_1(Ctx, NextVar, Rest)];
compile_path_statement_1(Ctx, SourceVar, [{Simp,Hard}|Rest]) ->
    NextVar = var(?LINE, next_var_name()),
    S = build_simple_path(Ctx, SourceVar, Simp),
    Sa = ?Q("_@NextVar = _@S"),
    Abs0 = step_expr_do(Ctx, Hard ++ [continue], NextVar),
    NewSourceVar = lists:last(Abs0),
    Abs = lists:droplast(Abs0),
    [Sa|Abs] ++ compile_path_statement_1(Ctx, NewSourceVar, Rest).

build_simple_path(_Ctx, SourceVar, Simp) ->
    List = lists:map(fun simple_axis/1, Simp),
    AList = a_term(List),
    %% XXX line number?
    ?Q(["try ",
        " xqldb_xpath:simple_path(_@SourceVar, _@AList)",
        " catch _:_ -> ",
        " erlang:throw(xqerl_error:error('XPTY0019'))",
        " end"]).

%% returns [{Simple, Hard}] list 
split_steps([]) -> [];
split_steps(Steps) ->
    case lists:splitwith(fun is_simple_step/1, Steps) of
        {[atomize], []} ->
            [{[], [atomize]}];
        {[double], []} ->
            [{[], [double]}];
        {Sim1, []} ->
            [{Sim1, []}];
        {Sim1, Hard1} ->
            {Sim1a, Hard1a} = maybe_split_predicate_step(Sim1, Hard1),
            {Hard2, Rest} = lists:splitwith(fun is_hard_step/1, Hard1a),
            [{Sim1a, Hard2} | split_steps(Rest)]
    end.

is_hard_step(Step) ->
    not is_simple_step(Step).

is_simple_step(atomize) -> true;
is_simple_step(double) -> true;
is_simple_step(#xqAxisStep{axis = Axis,
                           node_test = #xqKindTest{type = Ty},
                           predicates = []}) 
  when Axis == child;
       Axis == self;
       Axis == descendant;
       Axis == 'descendant-or-self';
       Axis == attribute ->
    if 
        Ty == undefined;
        Ty == 'xs:anyType';
        Ty == 'xs:string';
        Ty == 'xs:untyped';
        Ty == 'xs:untypedAtomic' ->
            true;
        true ->
            false
    end;
is_simple_step(_) ->
    false.

% if the head of the hard steps is easy, except for non-positional predicate, 
% split into
% simple & hd hard, and make hd hard into a self axis step
maybe_split_predicate_step(Sim, 
                           [#xqAxisStep{axis = Axis,
                                        predicates = [#xqPredicate{pos = Pos}] = Preds} = H|Hs]) 
  when Axis == child;
       Axis == self;
       Axis == descendant;
       Axis == 'descendant-or-self';
       Axis == attribute ->
    case Pos orelse contains_position_call(Preds) of
        true ->
            {Sim, [H|Hs]};
        false ->
            %?parse_dbg("Preds",Preds),
            NewSim = Sim ++ [H#xqAxisStep{predicates = []}],
            NewHard = [H#xqAxisStep{axis = self}|Hs],
            %?parse_dbg("H    ",H),
            {NewSim, NewHard}
    end;
maybe_split_predicate_step(Sim, Hard) ->
    {Sim, Hard}.

simple_axis(atomize) -> atomize;
simple_axis(double) -> double;
simple_axis(#xqAxisStep{axis = Axis,
                        node_test = 
                          #xqKindTest{kind = Kind,
                                      name = Name}}) ->
    %?parse_dbg("K", {Kind, Name}),
    {Axis, simple_name(Kind, Name)}.

simple_name(attribute, #xqQName{namespace = N, local_name = L}) ->
    {att, any_name(N), any_name(L)};
simple_name(attribute, undefined) ->
    {att, '_', '_'};
simple_name('processing-instruction', #xqQName{local_name = L}) ->
    {pi, any_name(L)};
simple_name('processing-instruction', undefined) ->
    {pi, '_'};
simple_name(_, #xqQName{namespace = N, local_name = L}) ->
    {any_name(N), any_name(L)};
simple_name(document, undefined) -> [];
simple_name('document-node', undefined) -> [];
simple_name(node, _) -> '_';
simple_name(Kind, _) -> Kind.

any_name(<<"*">>) -> '_';
any_name(N) -> N.

contains_position_call(#xqQName{namespace = <<"http://www.w3.org/2005/xpath-functions">>,
                                local_name = <<"position">>}) -> true;
contains_position_call(#xqQName{namespace = <<"http://www.w3.org/2005/xpath-functions">>,
                                local_name = <<"last">>}) -> true;
contains_position_call(L) when is_list(L) ->
    lists:any(fun contains_position_call/1, L);
contains_position_call(T) when is_tuple(T) ->
    contains_position_call(tuple_to_list(T));
contains_position_call(_) -> false.

get_prolog_functions(Prolog2) ->
    [F || #xqFunctionDef{} = F <- Prolog2].

get_prolog_module_import_atoms(Prolog1) ->
    [xqerl_static:string_atom(N)||
       #xqImport{kind = module, uri = N, prefix = P} <- Prolog1,
       P =/= <<>>].

get_prolog_variables_and_context(Prolog2) ->
    VarFun = fun(#xqVar{}) ->
                   true;
                (#xqContextItemDecl{}) ->
                   true;
                (_) ->
                   false
             end,
    lists:filter(VarFun, Prolog2).

%% {name,type,annos,Name}
add_param(Variable, #{parameters := Vars} = Map) ->
    NewMap = add_variable(Variable, Map),
    Key = element(1, Variable),
    NewVars = lists:keystore(Key, 1, Vars, Variable),
    NewMap#{parameters := NewVars}.

remove_variables(Vars, Map) ->
    F = fun(V, M) ->
              remove_variable(V, M)
        end,
    lists:foldl(F, Map, Vars).

remove_variable(AtomName, #{variables := Vars,
                            grp_variables := GVars} = Map) ->
    RemFun = fun({_,_,_,N}) when N == AtomName -> false;
                (_) -> true
             end,
    Vars1 = [V || V <- Vars, RemFun(V)],
    GVars1 = [V || V <- GVars, RemFun(V)],
    Map#{variables := Vars1,
         grp_variables := GVars1}.

add_grouping_variable({#xqQName{namespace = N, local_name = L},A,B,C}, Map) ->
    add_grouping_variable({#qname{namespace = N, local_name = L},A,B,C}, Map);
add_grouping_variable({#qname{} = Qn,_,_,_} = Variable, 
                      #{tab := Tab,
                        variables := Vars,
                        grp_variables := GVars} = Map) ->
    Qn1 = Qn#qname{prefix = <<>>},
    Variable1 = erlang:setelement(1, Variable, Qn1),
    _ = xqerl_context:add_in_scope_variable(Tab,Variable1),
    Vars1 = lists:keydelete(Qn1, 1, Vars),
    NewVars = lists:keystore(Qn1, 1, Vars1, Variable1),
    GVars1 = lists:keydelete(Qn1, 1, GVars),
    GNewVars = lists:keystore(Qn1, 1, GVars1, Variable1),
    Map#{variables => NewVars,
         grp_variables => GNewVars}.

%% {qname, seqType, annos, AtomName}
add_variable({#xqQName{namespace = N, local_name = L},A,B,C}, Map) ->
    add_variable({#qname{namespace = N, local_name = L},A,B,C}, Map);
add_variable({#qname{} = Qn,_,_,_} = Variable, #{tab := Tab,
                                                 variables := Vars} = Map) ->
    Qn1 = Qn#qname{prefix = <<>>},
    Variable1 = erlang:setelement(1, Variable, Qn1),
    _ = xqerl_context:add_in_scope_variable(Tab,Variable1),
    Vars1 = lists:keydelete(Qn1, 1, Vars),
    NewVars = lists:keystore(Qn1, 1, Vars1, Variable1),
    Map#{variables := NewVars};
% these are the context item variables
add_variable({Name,_} = Variable, #{variables := Vars} = Map) when is_atom(Name) ->
    Vars1 = lists:keydelete(Name, 1, Vars),
    NewVars = lists:keystore(Name, 1, Vars1, Variable),
    Map#{variables := NewVars}.

%%% XXX just in case
%%             #qname{namespace = undefined, prefix = Px, local_name = Ln} ->
%%                Nss = maps:get(namespaces, Map),
%%                Ns1 = proplists:get_value(Px, Nss),
%%                #qname{namespace = Ns1, prefix = <<>>, local_name = Ln};

scan_variable_usage(Loop, Return) ->
    FMap = 
        fun(#xqFor{var = #xqVar{id = Id, position = #xqPosVar{id = PId}}}) ->
               {true, [local_variable_name(Id), local_variable_name(PId)]};
           (#xqFor{var = #xqVar{id = Id}}) ->
               {true, [local_variable_name(Id)]};
           (#xqLet{var = #xqVar{id = Id}}) ->
               {true, [local_variable_name(Id)]};
           (#xqCount{var = #xqVar{id = Id}}) ->
               {true, [local_variable_name(Id)]};
           (#xqWindow{win_variable = #xqVar{id = Id}}) ->
               {true, [local_variable_name(Id)]};
           (_) ->
               false
        end,
    Local = lists:append(lists:filtermap(FMap, Loop)),
    UMap = 
        fun(Exp) ->
               A = collect_variable_refs(Exp),
               U = lists:usort(A),
               [I || I <- U, lists:member(I, Local)]
        end,
    Used = lists:map(UMap, Loop ++ [Return]),
    RFold = 
        fun(U, Acc) ->
               {[I || I <- U, not lists:member(I, Acc)], U ++ Acc}
        end,
    {Last,  _} = lists:mapfoldr(RFold, [], Used),
    %?parse_dbg("Last", Last),
    Last.


collect_variable_refs(Expr) ->
    collect_variable_refs(Expr, []).

collect_variable_refs({variable, Var}, Acc) ->
    [Var|Acc];
collect_variable_refs(Tup, Acc) when is_tuple(Tup) ->
    collect_variable_refs(erlang:tuple_to_list(Tup), Acc);
collect_variable_refs(List, Acc) when is_list(List) ->
    lists:flatten([collect_variable_refs(L) || L <- List]) ++ Acc;
collect_variable_refs(_, Acc) ->
    Acc.

glob_fun_name({window,Id}) ->
    list_to_atom("window__" ++ integer_to_list(Id));
glob_fun_name({group_by,Id}) ->
    list_to_atom("group__" ++ integer_to_list(Id));
glob_fun_name({order_by,Id}) ->
    list_to_atom("order__" ++ integer_to_list(Id));
glob_fun_name({return,Id}) ->
    list_to_atom("return__" ++ integer_to_list(Id));
glob_fun_name({where,Id}) ->
    list_to_atom("where__" ++ integer_to_list(Id));
glob_fun_name(#xqCount{var = #xqVar{id = Id}}) ->
    list_to_atom("count__" ++ integer_to_list(Id));
glob_fun_name(#xqFor{var = #xqVar{id = Id}}) ->
    list_to_atom("for__" ++ integer_to_list(Id));
glob_fun_name(#xqLet{var = #xqVar{id = Id}}) ->
    list_to_atom("let__" ++ integer_to_list(Id)).

flwor_is_list(Internal, Inline) ->
    if
        Internal =:= [] -> false;
        Inline =:= false -> true;
        true -> false
    end.

flwor_next_tuple_variable(TupleVar, Inline) ->
    if 
        TupleVar =:= [];
        Inline =:= false ->
            var(?LINE, next_var_tuple_name());
        true ->
            TupleVar
    end.

flwor_variable_tuple(Ctx) ->
    case get_variable_tuple(Ctx) of
        {nil,_} -> {atom,?LINE,new};
        O -> O
    end.


% return clause end loop and returns {NewCtx,Internal,Global}
flwor(Ctx, [], RetId, Return, Internal, Global,TupleVar,true, _) ->
   {NewCtx,FunAbs} = return_part(Ctx, {RetId, Return},false),
   NewCtx1 = set_variable_tuple_name(NewCtx, TupleVar),
   {NewCtx1,Internal,FunAbs ++ Global};
flwor(Ctx, [], RetId, Return, Internal, Global,TupleVar,_Inline, _) ->
   FunctionName = glob_fun_name({return,RetId}),
   CurrContext = {var, ?LINE, get_context_variable_name(Ctx)},
   NextTupleVar = next_var_tuple_name(),
   {NewCtx,FunAbs} = return_part(Ctx, {RetId, Return},true),
   NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
   Call = [?P(?LINE, "'@FunctionName@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
   NewInt = Internal ++ Call,
   %?parse_dbg("FunAbs",FunAbs),
   {NewCtx1,NewInt,FunAbs ++ Global};

% (for|let)/return
flwor(Ctx, [F], RetId, Return, Internal, Global, TupleVar, Inline, [Rem|Rems]) 
    when is_record(F, xqFor);
         is_record(F, xqLet) ->
    IsList = flwor_is_list(Internal, Inline),
    Vars = flwor_variable_tuple(Ctx),
    NextTupleVar = flwor_next_tuple_variable(TupleVar, Inline),
    CurrContext = var(?LINE, get_context_variable_name(Ctx)),
    ThisFun = glob_fun_name(F),
    NextFun = glob_fun_name({return, RetId}),
    {NewCtx, FunAbs} = 
        if 
            is_record(F, xqLet) ->
                let_part(Ctx, F, NextFun, IsList, Rem);
            true ->
                for_loop(Ctx, F, NextFun, IsList, Rem)
        end,
    Call1 = [?Q("_@NextTupleVar = '@ThisFun@'(_@CurrContext,_@@Vars)")],
    Call2 = [?Q("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
    NewInternal = 
        if 
            Internal =:= [] ->
            Internal ++ Call1;
            Inline =:= false ->
                Internal ++ Call2;
            true ->
                Internal
        end,
    NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
    flwor(NewCtx1, [], RetId, Return, NewInternal, FunAbs ++ Global, NextTupleVar, true, Rems);

% for/let
flwor(Ctx, [F, N|T], RetId, Return, Internal, 
      Global,TupleVar,Inline,[Rem|Rems]) 
   when is_record(F, xqLet) andalso is_record(N, xqLet);
        is_record(F, xqLet) andalso is_record(N, xqFor);
        is_record(F, xqFor) andalso is_record(N, xqLet);
        is_record(F, xqFor) andalso is_record(N, xqFor) ->
    IsList = flwor_is_list(Internal, Inline),
    Vars = flwor_variable_tuple(Ctx),
    NextTupleVar = flwor_next_tuple_variable(TupleVar, Inline),
    CurrContext = var(?LINE, get_context_variable_name(Ctx)),
    ThisFun = glob_fun_name(F),
    NextFun = glob_fun_name(N),
    {NewCtx, FunAbs} = 
        if 
            is_record(F, xqLet) ->
                let_part(Ctx, F, NextFun, IsList, Rem);
            true ->
                for_loop(Ctx, F, NextFun, IsList, Rem)
        end,
    Call1 = [?Q("_@NextTupleVar = '@ThisFun@'(_@CurrContext,_@@Vars)")],
    Call2 = [?Q("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
    NewInternal = 
        if 
            Internal =:= [] ->
                Internal ++ Call1;
            Inline =:= false ->
                Internal ++ Call2;
            true ->
                Internal
        end,
    NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
    flwor(NewCtx1, [N|T], RetId, Return, NewInternal, FunAbs ++ Global, NextTupleVar, true, Rems);

% for/other
flwor(Ctx, [F|T], RetId, Return, Internal, Global,TupleVar,Inline,[Rem|Rems]) 
    when is_record(F, xqFor);
         is_record(F, xqLet) ->
    Vars = flwor_variable_tuple(Ctx),
    NextTupleVar = flwor_next_tuple_variable(TupleVar, Inline),
    CurrContext = var(?LINE, get_context_variable_name(Ctx)),
    ThisFun = glob_fun_name(F),
    {NewCtx, FunAbs} = 
        if 
            is_record(F, xqLet) ->
                let_part(Ctx, F, [], not Inline andalso Internal =/= [], Rem);
            true ->
                for_loop(Ctx, F, [], not Inline andalso Internal =/= [], Rem)
        end,
    Call1 = [?Q("_@NextTupleVar = '@ThisFun@'(_@CurrContext,_@@Vars)")],
    Call2 = [?Q("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
    NewInternal = 
        if 
            Internal =:= [] ->
                Internal ++ Call1;
            Inline =:= false ->
                Internal ++ Call2;
            true ->
                Internal
        end,
    NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
    flwor(NewCtx1, T, RetId, Return, NewInternal, FunAbs ++ Global, NextTupleVar, false, Rems);

flwor(Ctx, [#xqWindow{win_variable = #xqVar{id = Id}} = F|T], RetId, 
      Return, Internal, Global,TupleVar,Inline,[Rem|Rems]) ->
    Vars = flwor_variable_tuple(Ctx),
    NextTupleVar = flwor_next_tuple_variable(TupleVar, Inline),
    CurrContext = var(?LINE, get_context_variable_name(Ctx)),
    ThisFun = glob_fun_name({window,Id}),
    {NewCtx, FunAbs} = window_loop(Ctx, F, [], Internal == [], Rem),
    Call1 = [?Q("_@NextTupleVar = '@ThisFun@'(_@CurrContext,_@@Vars)")],
    Call2 = [?Q("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
    NewInternal = 
        if 
            Internal =:= [] ->
                Internal ++ Call1;
            Inline =:= false andalso TupleVar =/= [] ->
                Internal ++ Call2;
            true ->
                Internal ++ Call1
        end,
    NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
    flwor(NewCtx1, T, RetId, Return, NewInternal, FunAbs ++ Global, NextTupleVar, false, Rems);

% where
flwor(Ctx, [#xqWhere{id = Id} = W|T], RetId, Return, Internal, Global, TupleVar, _Inline, [Rem|Rems]) ->
    NextTupleVar = var(?LINE, next_var_tuple_name()),
    CurrContext = var(?LINE, get_context_variable_name(Ctx)),
    ThisFun = glob_fun_name({where,Id}),
    {NewCtx, FunAbs} = where_part(Ctx, W, [], Rem),
    Call2 = [?Q("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
    NewInternal = Internal ++ Call2,
    NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
    flwor(NewCtx1, T, RetId, Return, NewInternal, FunAbs ++ Global, NextTupleVar, false, Rems);

% count
flwor(Ctx, [#xqCount{} = C|T], RetId, Return, Internal, Global, TupleVar, _Inline, [_Rem|Rems]) ->
    NextTupleVar = var(?LINE, next_var_tuple_name()),
    CurrContext = var(?LINE, get_context_variable_name(Ctx)),
    ThisFun = glob_fun_name(C),
    {NewCtx, FunAbs} = count_part(Ctx, C, []),
    Call2 = [?Q("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
    NewInternal = Internal ++ Call2,
    NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
    flwor(NewCtx1, T, RetId, Return, NewInternal, FunAbs ++ Global, NextTupleVar, false, Rems);

% group
flwor(Ctx, [#xqGroup{id = Id} = F|T], RetId, Return, Internal, Global, TupleVar, _Inline, [Rem|Rems]) ->
    NextTupleVar = var(?LINE, next_var_tuple_name()),
    CurrContext = var(?LINE, get_context_variable_name(Ctx)),
    ThisFun = glob_fun_name({group_by,Id}),
    {NewCtx, FunAbs} = group_part(Ctx, F, Rem),
    Call2 = [?Q("_@NextTupleVar = '@ThisFun@'(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
    NewInternal = Internal ++ Call2,
    NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
    flwor(NewCtx1, T, RetId, Return, NewInternal, FunAbs ++ Global, NextTupleVar, false, Rems);

% order
flwor(Ctx, [#xqOrderByClause{anno = L, id = Id} = F|T], RetId, Return, Internal, Global, TupleVar, _Inline, [Rem,Rem2|Rems]) ->
    NextTupleVar = var(L, next_var_tuple_name()),
    CurrContext = var(L, get_context_variable_name(Ctx)),
    ThisFun = atom(L, glob_fun_name({order_by,Id})),
    {NewCtx, FunAbs} = order_part(Ctx, F),
    Call2 = [?Q("_@NextTupleVar = _@ThisFun(_@CurrContext,xqerl_seq3:flatten(_@TupleVar))")],
    NewInternal = Internal ++ Call2,
    NewCtx1 = set_variable_tuple_name(NewCtx, NextTupleVar),
    flwor(NewCtx1, T, RetId, Return, NewInternal, FunAbs ++ Global, NextTupleVar, false, [Rem ++ Rem2|Rems]);
flwor(_, [H|_], _, _, _, _, _, _, _) ->
    throw({error, {unknown, H}}).

return_part(Ctx,{Id, Expr},IsList) ->
    FunctionName = glob_fun_name({return,Id}),
    OldVariableTupleMatch = get_variable_tuple(Ctx),
    LocCtx = set_context_variable_name(Ctx, '__Ctx'),
    %InLine = attribute(compile, {inline,{FunctionName,2}}),
    E1 = expr_do(LocCtx,Expr),
    %?parse_dbg("Expr",Expr),
    R = if 
            IsList ->
                ?Q(["'@FunctionName@'(_,[]) -> [];",
                    "'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
                    "   ['@FunctionName@'(Ctx,X) || X <- L];",
                    "'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
                    "   _@E1."]);
            true ->
                ?Q(["'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
                    "   _@E1."])
        end,
    %{Ctx,[InLine, R]}.
    {Ctx,[R]}.

where_part(Ctx, #xqWhere{anno = Line, id = Id, expr = Expr},_NextFunAtom, Rem) ->
    FunctionName = glob_fun_name({where, Id}),
    OldVariableTupleMatch = get_variable_tuple(Ctx),
    Ctx1 = remove_variables(Rem, Ctx),
    NewVariableTupleMatch = get_variable_tuple(Ctx1),
    %InLine = attribute(compile, {inline,{FunctionName,2}}),
    LocCtx = set_context_variable_name(Ctx, '__Ctx'),

    E1 = expr_do(LocCtx,Expr),
    R = ?P(Line, ["'@FunctionName@'(_,[]) -> [];",
                  "'@FunctionName@'(__Ctx,List) ->",
                  "[_@NewVariableTupleMatch || _@OldVariableTupleMatch <- List,",
                  " _@E1 =:= true]."]),
    %{Ctx,[InLine,WhereFun]}.
    {Ctx1, [R]}.

order_part(Ctx, #xqOrderByClause{anno = Line, id = Id, spec = Exprs}) ->
    Collations = [C || 
                  #xqOrderSpec{modifier = #xqOrderModifier{collation = C}} 
                 <- alist(Exprs)],
    CollVars = [begin
                    V = var(Line, next_var_name()),
                    ?Q("_@V = xqerl_coll:parse(_@C@)")
                end || C <- Collations],
    FunctionName = glob_fun_name({order_by, Id}),
    LocCtx = set_context_variable_name(Ctx, '__Ctx'),
    VarTup = get_variable_tuple(Ctx),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    OFun = 
        fun({#xqOrderSpec{expr = Expr, 
                          modifier = #xqOrderModifier{direction = Dir, 
                                                      empty = Empty}}, CF}, Acc) ->
               Error1 = var(Line, next_var_name()),
               Result1 = var(Line, next_var_name()),
               % catch this, can throw error
               E1 = expr_do(LocCtx, Expr),
               ?P(Line,["[{fun(_@VarTup) -> ",
                        " case catch xqerl_coll:sort_key(xqerl_seq3:singleton_value(_@E1), _@CF) of",
                        "  #xqError{} = _@Error1 -> local_error(_@Error1, _@Line@);",
                        "  _@Result1 -> _@Result1",
                        " end"
                        " end, '@Dir@','@Empty@'}|_@Acc]"])
        end,
    Funs = lists:foldr(OFun, {nil,?LINE}, lists:zip(alist(Exprs), CollVars)),
    R = ?P(Line, ["'@FunctionName@'(_,[]) -> [];",
                  "'@FunctionName@'(__Ctx, Stream) ->",
                  " case catch xqerl_flwor:orderbyclause(Stream,_@Funs) of",
                  "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                  "  _@Result -> _@Result",
                  " end."]),
    %{Ctx,[InLine,WhereFun]}.
    {Ctx,[R]}.

count_part(Ctx, #xqCount{var = #xqVar{id = Id,
                                      name = Name,
                                      anno = Line}} = Part,NextFunAtom) ->
    VarName = local_variable_name(Id),
    VarName1 = var(Line, VarName),
    NewVar  = {Name,#xqSeqType{type = 'xs:integer', occur = 'one'},[],VarName},
    FunctionName = glob_fun_name(Part),
    NewCtx  = add_grouping_variable(NewVar, Ctx),
    OldVariableTupleMatch = get_variable_tuple(Ctx),
    NewVariableTupleMatch = get_variable_tuple(NewCtx),

    NextFun = 
        if 
            NextFunAtom == [] ->
                NewVariableTupleMatch;
            true ->
                ?Q("'@NextFunAtom@'(Ctx,_@NewVariableTupleMatch)")
        end,
    R1 = ?P(Line, ["'@FunctionName@'(Ctx,Stream) ->",
                   " '@FunctionName@'(Ctx,1,Stream)."]),
    R2 = ?P(Line, ["'@FunctionName@'(_,_,[]) -> [];",
                   "'@FunctionName@'(Ctx,_@VarName1,[_@OldVariableTupleMatch|T]) ->",
                   " [_@NextFun|'@FunctionName@'(Ctx,_@VarName1 + 1,T)]."]),
    {NewCtx,[R1,R2]}.

group_part(#{grp_variables := GrpVars,
             variables     := Vars} = Ctx, 
           #xqGroup{anno = Line, id = Id, vars = Clauses}, Rem) ->
    % 1. seperate the local/group-able variables from the out-of-scope variables.
    AllInScopeVars = [N || {_,_,_,N} <- Vars, is_atom(N)],
    GroupVars      = [N || {_,_,_,N} <- GrpVars],
    OuterVars      = AllInScopeVars -- GroupVars,
    % 2. split key/vals
    KeyNames = [ Name || 
                 #xqGroupBy{grp_variable = {variable, Name}} <- alist(Clauses)],
    OK = lists:all(fun(N) ->
                         lists:member(N, GroupVars)
                   end, KeyNames),
    if  
        OK -> ok;
        true ->
            %TODO move this check to static phase
            ?err('XQST0094', ?LN(Line))% out of scope grouping variable
    end,
    UColls = lists:usort([Coll ||
                          #xqGroupBy{collation = Coll} <- alist(Clauses)]),

    CollsFun = fun(Str,{Acc,I}) ->
                     {Acc#{Str => {?Q("xqerl_coll:parse('@Str@')"),I}}, I + 1}
               end,
    {CollsMap, _} = lists:foldl(CollsFun, {#{},1}, UColls),
    CollMFun = fun(_K,{V,Id1},L) ->
                     VA = var(?LINE, list_to_atom("C"++integer_to_list(Id1))),
                     [?Q("_@VA = _@V")|L]
               end,
    CollMatch = maps:fold(CollMFun, [], CollsMap),
    CollNFun = fun(_K,{_V,Id1},L) ->
                    VA = var(?LINE, list_to_atom("C"++integer_to_list(Id1))),
                    [VA|L]
               end,
    CollNT = {tuple,?LINE,maps:fold(CollNFun, [], CollsMap)},

    KeyTuples = 
        [begin
             {_,Id2} = maps:get(Coll, CollsMap),
             VName = var(?LINE, list_to_atom("C"++integer_to_list(Id2))),
             Name1 = var(?LINE, Name),
             ?Q("{_@Name1,_@VName}")
         end || #xqGroupBy{grp_variable = {variable, Name},
                           collation = Coll} 
        <- alist(Clauses)],
    KeyNamesTup = [var(?LINE, Name) || 
                   #xqGroupBy{grp_variable = {variable, Name}} 
                  <- alist(Clauses)],

    KeyTuple = 
        if 
            KeyTuples == [] ->
                {nil,?LINE};
            true ->
                ?e:revert(?Q("{_@@KeyTuples}"))
        end,
    GroupedVars = GroupVars -- KeyNames,
    GroupedTups = [var(?LINE, Name) || Name <- GroupedVars],
    OuterTups = 
        if 
            OuterVars == [] ->
                {nil,?LINE};
            true ->
                {tuple,?LINE,[var(?LINE, Name) || Name <- OuterVars]}
        end,
    GroupedTup  = {tuple,?LINE,GroupedTups},
    % 3. group key/vals
    ToGroupTuple = {tuple,?LINE,[KeyTuple,GroupedTup]},
    OutputTuple  = {tuple,?LINE,KeyNamesTup ++ GroupedTups},
    % 4. send back entire tuple
    Ctx1 = remove_variables(Rem, Ctx),
    OutgoingVarTup0 = get_variable_tuple(Ctx),
    OutgoingVarTup = get_variable_tuple(Ctx1),

    FunctionName = glob_fun_name({group_by, Id}),
    %?parse_dbg("OuterVars", OuterVars),
    %?parse_dbg("OutgoingVarTup", OutgoingVarTup),
    Hd = ?Q("erlang:hd([_@OuterTups || _@OutgoingVarTup0 <- List])"),
    Flatten = ?Q("lists:flatten(['@FunctionName@'(Ctx,T,_@CollNT) || T <- List])"),
    Rest = if OuterVars =:= [] -> {nil,?LINE}; true -> Hd end,
    %?parse_dbg("_@@CollMatch",?P(?LINE,"_@@CollMatch")),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    GrpFun1 = 
        ?P(Line, ["'@FunctionName@'(_,[]) -> [];",
                  "'@FunctionName@'(Ctx,List) when erlang:is_list(List) -> ",
                  "   _@@CollMatch, Split = _@Flatten, Rest = _@Rest,",
                  "   '@FunctionName@'(Ctx,Split,Rest)."]),
    GrpFun2 =
        ?P(Line, ["'@FunctionName@'(_Ctx,_@OutgoingVarTup0,_@CollNT) -> _@ToGroupTuple;",
                  "'@FunctionName@'(_Ctx,Split,_@OuterTups) -> ",
                  " Grouped = case catch xqerl_flwor:groupbyclause(Split) of ",
                  "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                  "  _@Result -> _@Result",
                  " end,"
                  " [_@OutgoingVarTup || _@OutputTuple <- Grouped]."]),
    {Ctx1, [GrpFun1,GrpFun2]}.

let_part(Ctx, #xqLet{var = 
                       #xqVar{id = Id,
                              name = Name,
                              type = Type,
                              expr = Expr,
                              anno = Line}} = Part, NextFunAtom, IsList, Rem) ->
    VarName = local_variable_name(Id),
    NewVar  = {Name,Type,[],VarName},
    FunctionName = glob_fun_name(Part),
    LocCtx = set_context_variable_name(Ctx, '__Ctx'),
    NewCtx0  = add_grouping_variable(NewVar, Ctx),
    NewCtx = remove_variables(Rem, NewCtx0),
    OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                                {nil,_} ->
                                    {var, ?LINE, '_'};
                                O -> O
                            end,
    NewVariableTupleMatch = get_variable_tuple(NewCtx),
    %InLine = attribute(compile, {inline,{FunctionName,2}}),

    E1 = expr_do(LocCtx,Expr),
    VarName1 = var(?LINE, VarName),
    Ens = {nil, ?LINE}, %ensure_type(Ctx,VarName1,Type,AType),
    LetFun =
        if 
            NextFunAtom == [] andalso IsList ->
                ?P(Line, ["'@FunctionName@'(Ctx,L) when erlang:is_list(L) ->",
                          "   ['@FunctionName@'(Ctx,X) || X <- L];",
                          "'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
                          "   _@VarName1 = _@E1,",
                          "   _@Ens,",
                          "   _@NewVariableTupleMatch."]);
            NextFunAtom == [] ->
                ?P(Line, ["'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
                          "   _@VarName1 = _@E1,",
                          "   _@Ens,",
                          "   _@NewVariableTupleMatch."]);
            IsList ->
                ?P(Line, ["'@FunctionName@'(Ctx,L) when erlang:is_list(L) ->",
                          "   ['@FunctionName@'(Ctx,X) || X <- L];",
                          "'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
                          "   _@VarName1 = _@E1,",
                          "   _@Ens,",
                          "   '@NextFunAtom@'(__Ctx,_@NewVariableTupleMatch)."]);
            true ->
                ?P(Line, ["'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) ->",
                          "   _@VarName1 = _@E1,",
                          "   _@Ens,",
                          "   '@NextFunAtom@'(__Ctx,_@NewVariableTupleMatch)."])
        end,
    %{NewCtx,[InLine, LetFun]}.
    {NewCtx,[LetFun]}.

add_windows_variable(Var, Ctx, Type) ->
    case Var of
        #xqVar{id = Id1, name = Name1} ->
            Vn1 = local_variable_name(Id1),
            Var1 = {Name1,Type,[],Vn1},
            Ctx1 = add_grouping_variable(Var1, Ctx),
            {Var1,Ctx1};
        undefined ->
            {{[],[],[],'_'}, Ctx}
    end.

add_windows_pos_variable(Var, Ctx, Type) ->
    case Var of
        #xqPosVar{id = Id2,name = Name2} ->
            Vn2 = local_variable_name(Id2),
            Var2 = {Name2, Type, [], Vn2},
            Ctx3 = add_grouping_variable(Var2, Ctx),
            {Var2,Ctx3};
        undefined ->
            {{[],[],[],'_'},Ctx}
    end.

window_loop(Ctx, #xqWindow{type = Type,
                           win_variable = #xqVar{id = WId,
                                                 name = WName,
                                                 type = WType,
                                                 expr = Expr,
                                                 anno = Line}, 
                           s     = S,
                           spos  = SPos,
                           sprev = SPrev,
                           snext = SNext,
                           e     = E,
                           epos  = EPos,
                           eprev = EPrev,
                           enext = ENext,
                           only  = Only,
                           start_expr = StartExpr,
                           end_expr = EndExpr}, NextFunAtom, IsInitial, Rem) ->
    OldCtxname = get_context_variable_name(Ctx),
    LocCtx = set_context_variable_name(Ctx, '__Ctx'),
    
    {SVar,Ctx0} = add_windows_variable(S, LocCtx, WType),
    {SPosVar,Ctx2} = add_windows_pos_variable(SPos, Ctx0, WType),
    {SPrevVar,Ctx4} = add_windows_variable(SPrev, Ctx2, WType),
    {SNextVar,Ctx6} = add_windows_variable(SNext, Ctx4, WType),
    {EVar,Ctx10} = add_windows_variable(E, Ctx6, WType),
    {EPosVar,Ctx12} = add_windows_pos_variable(EPos, Ctx10, WType),
    {EPrevVar,Ctx14} = add_windows_variable(EPrev, Ctx12, WType),
    {ENextVar,Ctx16} = add_windows_variable(ENext, Ctx14, WType),
    WVn = local_variable_name(WId),
    WVar = {WName,WType,[],WVn},
    Ctx21 = add_grouping_variable(WVar, Ctx16),
    {WinVar,Ctx20} = {WVar, remove_variables(Rem, Ctx21)},
    % first check for bad name shadows
    StartTup = get_variable_tuple(Ctx, [SVar,SPosVar,SPrevVar,SNextVar]),
    EndTup   = get_variable_tuple(Ctx, [SVar,SPosVar,SPrevVar,SNextVar,
                                        EVar,EPosVar,EPrevVar,ENextVar]),
    % mask the win variable name to type-check it later
    % TODO
    %TempWinVarName = next_var_name(),
    %TempWinVar = {[],[],[],TempWinVarName},

    OutTup   = get_variable_tuple(Ctx, [SVar,SPosVar,SPrevVar,SNextVar,
                                        EVar,EPosVar,EPrevVar,ENextVar,WinVar]),
    StartFunAbs = 
        case StartExpr of
            true -> % very common start
                ?Q("true");
            _ ->
                E1 = expr_do(Ctx6, StartExpr),
                ?Q("fun(_@StartTup) -> _@E1 end")
        end,
    WType1 = expr_do(Ctx, WType),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    WinCall = 
        if 
            EndExpr =:= undefined ->
                ?P(Line, ["case catch xqerl_flwor:windowclause(List,_@StartFunAbs,_@WType1) of",
                          " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          " _@Result -> _@Result",
                          "end"]);
            true ->
                E2 = alist(expr_do(Ctx16, EndExpr)),
                EndFunAbs = ?Q("fun(_@EndTup) -> _@E2 end"),
                ?P(Line, ["case catch xqerl_flwor:windowclause(List,_@StartFunAbs,",
                          "_@EndFunAbs,{'@Type@','@Only@'},_@WType1) of",
                          " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          " _@Result -> _@Result",
                          "end"])
        end,
    FunctionName = glob_fun_name({window,WId}),
    OldVariableTupleMatch = 
        case get_variable_tuple(Ctx) of
            {nil,_} -> var(Line, '_');
            O -> O
        end,

    NewVariableTupleMatch = get_variable_tuple(Ctx20),

    TempStreamVar = var(Line, next_var_name()),

    E3 = expr_do(LocCtx, Expr),
    Next = 
        if 
            NextFunAtom == [] ->
                ?Q("_@NewVariableTupleMatch");
            true ->
                ?Q("'@NextFunAtom@'(__Ctx,_@NewVariableTupleMatch)")
        end,

    WinFun =
        if 
            IsInitial ->
                ?P(Line, ["'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) -> ",
                          "   List = _@E3,",
                          "   _@TempStreamVar = _@WinCall,",
                          "   [_@Next || _@OutTup <- _@TempStreamVar]."]);
            true ->
                ?P(Line, ["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
                          "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
                          "'@FunctionName@'(__Ctx,_@OldVariableTupleMatch) -> ",
                          "   List = _@E3,",
                          "   _@TempStreamVar = _@WinCall,",
                          "   [_@Next || _@OutTup <- _@TempStreamVar]."])
        end,
    OutCtx = set_context_variable_name(Ctx20, OldCtxname),
    {OutCtx, [WinFun]}.

% for loop with no position var
for_loop(Ctx, #xqFor{var = 
                       #xqVar{id = Id,
                              name = Name, 
                              type = Type, 
                              empty = Empty,
                              expr = Expr, 
                              position = undefined,
                              anno = Line}} = Part, NextFunAtom, IsList, Rem) ->
    VarName = local_variable_name(Id),
    NewVar    = {Name,Type,[],VarName},
    NoEmptyType = (Type#xqSeqType.occur == one orelse 
                   Type#xqSeqType.occur == one_or_many), 
    NewCtx  = add_grouping_variable(NewVar, remove_variables(Rem, Ctx)),
    FunctionName = glob_fun_name(Part),
    LocCtx = set_context_variable_name(Ctx, '__Ctx'),
    OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                                {nil,_} -> var(Line, '_');
                                O -> O
                            end,
    NewVariableTupleMatch = get_variable_tuple(NewCtx),
    VarName1 = var(Line, VarName),
    {FName, E1} = 
        case expr_do(LocCtx, Expr) of
            {parallel,E} -> {pformap,E};
            {unordered_parallel,E} -> {pmap,E};
            E -> {formap,E}
        end,
    Next = 
        if 
            NextFunAtom == [] ->
                ?Q("_@NewVariableTupleMatch");
            true ->
                ?Q("'@NextFunAtom@'(__Ctx,_@NewVariableTupleMatch)")
        end,
    Ens = {nil, ?LINE}, %ensure_type(Ctx,VarName1,Type,AType),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ForFun1 =
        if 
            IsList andalso Empty andalso NoEmptyType ->
                ?P(Line, ["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
                          "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
                          "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/3,",
                          "   if List =:= [] -> ",
                          "         local_error('XPTY0004', _@Line@);",
                          "      true -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List) of",
                          " #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          " _@Result -> _@Result",
                          " end",
                          "   end."]);
            IsList andalso Empty ->
                ?P(Line, ["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
                          "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
                          "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/3, ",
                          "   if List =:= [] -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, [List]) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end;",
                          "      true -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end",
                          "   end."]);
            Empty andalso NoEmptyType ->
                ?P(Line, ["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/3, ",
                          "   if List =:= [] -> ",
                          "         local_error('XPTY0004', _@Line@);",
                          "      true -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end",
                          "   end."]);
            Empty ->
                ?P(Line, ["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/3, ",
                          "   if List =:= [] -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, [List]) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end;",
                          "      true -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end",
                          "   end."]);
            IsList ->
                ?P(Line, ["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
                          "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
                          "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/3, ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end."]);
            true ->
                ?P(Line, ["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/3, ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end."])
        end,
    ForFun2 = ?P(Line, ["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch, _@VarName1) -> _@Ens,_@Next."]),
    {NewCtx,[ForFun1, ForFun2]};
% for loop with position var
for_loop(Ctx, #xqFor{var = 
                       #xqVar{id = Id,
                              name = Name, 
                              type = Type, 
                              empty = Empty,
                              expr = Expr, 
                              position = #xqPosVar{id = PId, 
                                                   name = PName},
                              anno = Line}} = Part, NextFunAtom, IsList, Rem) ->
    VarName = local_variable_name(Id),
    NewVar    = {Name,Type,[],VarName},
    PosVarName = local_variable_name(PId),
    NewPosVar  = {PName,#xqSeqType{type = 'xs:integer', 
                                   occur = 'one'},[],PosVarName},
    NoEmptyType = (Type#xqSeqType.occur == one orelse 
                   Type#xqSeqType.occur == one_or_many), 
    NewCtx      = add_grouping_variable(NewPosVar, 
                                        add_grouping_variable(NewVar, 
                                                              remove_variables(Rem, Ctx))),
    FunctionName = glob_fun_name(Part),
    LocCtx = set_context_variable_name(Ctx, '__Ctx'),
    OldVariableTupleMatch = case get_variable_tuple(Ctx) of
                               {nil,_} -> var(Line, '_');
                               O -> O
                            end,
    NewVariableTupleMatch = get_variable_tuple(NewCtx),

    VarName1 = var(Line, VarName),
    PosVarName1 = var(Line, PosVarName),
    {FName, E1} = case expr_do(LocCtx, Expr) of
                      {parallel,E} -> {forposmap,E};
                      {unordered_parallel,E} -> {forposmap,E};
                      E -> {forposmap,E}
                  end,
    Next = 
        if 
            NextFunAtom == [] ->
                ?Q("_@NewVariableTupleMatch");
            true ->
                ?Q("'@NextFunAtom@'(__Ctx,_@NewVariableTupleMatch)")
        end,
    Ens = {nil, ?LINE},%ensure_type(Ctx,VarName1,Type,AType),
    Error = var(Line, next_var_name()),
    Result = var(Line, next_var_name()),
    ForFun1 =
        if 
            IsList andalso Empty andalso NoEmptyType ->
                ?P(Line, ["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
                          "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
                          "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/4,",
                          "   if List =:= [] -> ",
                          "         local_error('XPTY0004', _@Line@);",
                          "      true -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end",
                          "   end."]);
            IsList andalso Empty ->
                ?P(Line, ["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
                          "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
                          "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/4,",
                          "   if List =:= [] -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, [List], 0) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end;",
                          "      true -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end",
                          "   end."]);
            Empty andalso NoEmptyType ->
                ?P(Line, ["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/4,",
                          "   if List =:= [] -> ",
                          "         local_error('XPTY0004', _@Line@);",
                          "      true -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end",
                          "   end."]);
            Empty ->
                ?P(Line, ["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/4,",
                          "   if List =:= [] -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, [List], 0) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end;",
                          "      true -> ",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end",
                          "   end."]);
            IsList ->
                ?P(Line, ["'@FunctionName@'(Ctx,L) when erlang:is_list(L) -> ",
                          "   lists:map(fun(X) -> '@FunctionName@'(Ctx,X) end,L);",
                          "'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/4,",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1) of"
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end."]);
            true ->
                ?P(Line, ["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch = Tuple) -> ",
                          "   List = _@E1,",
                          "   Fun = fun '@FunctionName@'/4,",
                          " case catch xqerl_seq3:'@FName@'({Fun, __Ctx, Tuple}, List, 1) of",
                          "  #xqError{} = _@Error -> local_error(_@Error, _@Line@);",
                          "  _@Result -> _@Result",
                          " end."])
        end,
    ForFun2 = ?P(Line, ["'@FunctionName@'(__Ctx, _@OldVariableTupleMatch, _@VarName1,",
                        " _@PosVarName1) ->  _@Ens,_@Next."]),
    {NewCtx,[ForFun1, ForFun2]}.



atom(undefined, Atom) ->
    ?e:atom(Atom);
atom(L, Atom) ->
    anno(L, ?e:atom(Atom)).

var(undefined, Atom) ->
    {var, 0, Atom};
var(L, Atom) ->
    {var, L, Atom}.

anno(L, Tree) ->
    A = erl_anno:new(L),
    B = erl_anno:set_file(get_filename(), A),
    ?e:set_pos(Tree, B).


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% resusable functions for each production record that might catch
%% and report errors. 
%% Catch error, check for set line number. If set then add to top
%% of stack and raise old error.
%% these are run-time functions so just line number is passed in
%% filename is compiled in.
%% each production function should have a unique function name 
%% within the module.
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% xqAnnotation
%% xqArgumentList
%% xqArgumentPlaceholder
%% xqArithExpr
%% xqArrayConst
%% xqAttributeNode
%% xqAxisStep
%% xqCommentNode
%% xqComparisonExpr
%% xqConcatExpr
%% xqDocumentNode
%% xqElementNode
%% xqEnclosedExpr
%% xqExtensionExpr
%% xqFunTest
%% xqFunctionCall
%% xqFunctionDef
%% xqFunctionRef
%% xqIfExpr
%% xqKindTest
%% xqLogicalExpr
%% xqLookup
%% xqMapConst
%% xqMapEntry
%% xqModifyExpr
%% xqNCName
%% xqNameTest
%% xqNamespaceNode
%% xqNodeSetExpr
%% xqNodeUnionExpr
%% xqOrderByClause
%% xqOrderModifier
%% xqPartialFunctionCall
%% xqPathExpr
%% xqPosVar
%% xqPostfixStep
%% xqPredicate
%% xqProcessingInstructionNode
%% xqQName
%% xqRange
%% xqSeqType
%% xqSimpleMap
%% xqStringConstructor
%% xqStringLiteral
%% xqSwitch
%% xqSwitchClause
%% xqTextNode
%% xqTryCatch
%% xqTypeswitch
%% xqTypeswitchCase
%% xqTypingExpr
%% xqURILiteral
%% xqUnaryExpr
%% xqUpdateExpr
%% xqValidateExpr
%% xqVar
%% xqVarRef
%% xqWhere

local_error_fun() ->
    File = get_filename(),
    ?Q(["local_error(#xqError{location = undefined} = E, L) ->",
        "    F = _@File@,",
        "    E1 = E#xqError{location = {F, L, 0},",
        "                   additional = [{F, L}]},",
        "    erlang:throw(E1);",
        "local_error(#xqError{additional = Add} = E, L) ->",
        "    E1 = E#xqError{additional = [{_@File@, L}|Add]},",
        "    erlang:throw(E1);",
        "local_error(E, L) when erlang:is_atom(E) ->",
        "    F = _@File@,",
        "    E1 = xqerl_error:error(E, {F, L}),",
        "    E2 = E1#xqError{additional = [{F, L}]},",
        "    erlang:throw(E2)."]).

translate_record(any) -> any;
translate_record(undefined) -> undefined;
translate_record(List) when is_list(List) -> 
    [translate_record(A) || A <- List];
translate_record(#xqKindTest{kind = Kind,
                             name = Name,
                             type = Type}) ->
    #kindTest{kind = Kind,
              name = translate_record(Name),
              type = translate_record(Type)};
translate_record(#xqFunTest{kind = Kind,
                            annotations = Annos,
                            name = Name,
                            params = Params,
                            type = Type}) ->
    #funTest{kind = Kind,
             annotations = [translate_record(A) || A <- Annos],
             name = translate_record(Name),
             params = translate_record(Params),
             type = translate_record(Type)};
translate_record(#xqAnnotation{name = QName,
                               values = Vals}) ->
    #annotation{name = translate_record(QName),
                values = Vals};
translate_record(#xqQName{namespace = N, 
                          prefix = P,
                          local_name = L}) ->
    #qname{namespace = N,
           prefix = P,
           local_name = L};
translate_record(#xqSeqType{type = Ty, occur = Oc}) when is_atom(Ty) ->
    #seqType{type = Ty, occur = Oc};
translate_record(#xqSeqType{type = Ty, occur = Oc}) ->
    Ty1 = translate_record(Ty),
    #seqType{type = Ty1, occur = Oc}.

get_line_from_node_cons(#xqDocumentNode{anno = A}) -> A;
get_line_from_node_cons(#xqElementNode{anno = A}) -> A;
get_line_from_node_cons(#xqAttributeNode{anno = A}) -> A;
get_line_from_node_cons(#xqNamespaceNode{anno = A}) -> A;
get_line_from_node_cons(#xqProcessingInstructionNode{anno = A}) -> A;
get_line_from_node_cons(#xqCommentNode{anno = A}) -> A;
get_line_from_node_cons(#xqTextNode{anno = A}) -> A.

catch_wrap([], _) -> {nil, 0};
catch_wrap(Expr, undefined) -> Expr;
catch_wrap(Expr, Line) ->
    Error = var(Line, next_var_name()),
    ?Q(["try _@Expr ",
        "catch _:#xqError{} = _@Error -> local_error(_@Error, _@Line@)",
        "end"]).
  