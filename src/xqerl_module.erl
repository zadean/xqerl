%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2019 Zachary N. Dean  All Rights Reserved.
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
-module(xqerl_module).

-include("xqerl_parser.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    merge_library_trees/1,
    expand_imports/1,
    module_namespace/2
]).

%% ====================================================================
%% Internal functions
%% ====================================================================

%% When given a list of {Uri, #xqModule{}} tuples, follows imports for each
%% module and makes a list of all functions and variable asts in the modules
%% the original module depends on. If an imported module is not in the list
%% nothing is added. It is then assumed that the code is compiled already
%% This function is here to allow cyclic dependencies among modules.
%% Returns: [{Uri, ImportedAstList}]
expand_imports(List) ->
    F = fun
        ({Uri, #xqError{}}) ->
            {Uri, {[], [], [], []}};
        ({Uri, Mod}) ->
            I = collect_imports(Mod, List),
            Fs = filter(I, 'xqFunctionDef', Uri),
            Vs = filter(I, 'xqVar', Uri),
            {Uri, {clear_id(Fs), function_sigs(Fs), clear_id(Vs), variable_sigs(Vs)}}
    end,
    lists:map(F, List).

module_namespace(
    #xqModule{
        type = library,
        declaration = #xqModuleDecl{namespace = ModNs}
    },
    _Def
) ->
    ModNs;
module_namespace(_, Def) ->
    Def.

collect_imports(
    #xqModule{
        type = library,
        declaration = #xqModuleDecl{namespace = ModNs},
        prolog = Prolog
    },
    All
) ->
    Imports = get_imported(Prolog),
    collect_imports(Imports, All, [ModNs]).

collect_imports([ModNs | Imports], All, Acc) ->
    case lists:member(ModNs, Acc) of
        true ->
            % already in the list
            collect_imports(Imports, All, Acc);
        false ->
            % find imports for this mod and add to the Imports
            Pro = get_module_prolog(ModNs, All),
            Imps = get_imported(Pro),
            collect_imports(Imps ++ Imports, All, [ModNs | Acc])
    end;
collect_imports([], All, Acc) ->
    F = fun(Ns) ->
        Prolog = get_module_prolog(Ns, All),
        Vars = filter(Prolog, 'xqVar'),
        Funs = filter(Prolog, 'xqFunctionDef'),
        Funs ++ Vars
    end,
    lists:flatmap(F, Acc).

get_imported(undefined) -> [];
get_imported(Prolog) -> lists:usort([Ns || #xqImport{uri = Ns} <- Prolog]).

get_module_prolog(Ns, All) ->
    P = [
        Prolog
        || {ModNs, #xqModule{
               type = library,
               declaration = #xqModuleDecl{namespace = ModNs},
               prolog = Prolog
           }} <-
               All,
           ModNs == Ns
    ],
    lists:flatten(P).

clear_id([#xqFunctionDef{} = H | T]) ->
    [H#xqFunctionDef{id = 0} | clear_id(T)];
clear_id([#xqVar{} = H | T]) ->
    [H#xqVar{id = 0} | clear_id(T)];
clear_id([]) ->
    [].

%% merges library ASTs from the same target namespace into one module
merge_library_trees([Mod]) ->
    Mod;
merge_library_trees([
    #xqModule{
        type = library,
        declaration = #xqModuleDecl{
            namespace = ModNs,
            prefix = ModPxA
        },
        prolog = PrologA
    } = ModA,
    #xqModule{
        type = library,
        declaration = #xqModuleDecl{
            namespace = ModNs,
            prefix = ModPxB
        },
        prolog = PrologB
    }
    | Mods
]) ->
    {PrologA1, PrologA2} = xqerl_static:prolog_order(PrologA),
    {PrologB1, PrologB2} = xqerl_static:prolog_order(PrologB),
    Prolog1 = unique_prolog_1(PrologA1, PrologB1),
    Prolog2 = unique_prolog_2(PrologA2, PrologB2),
    Prolog1_1 = patch_imports(Prolog1, ModNs),
    Prolog1_2 =
        if
            ModPxA == ModPxB ->
                Prolog1_1;
            true ->
                N = #xqNamespaceDecl{uri = ModNs, prefix = ModPxB},
                [N | without(N, Prolog1_1)]
        end,
    NewA = ModA#xqModule{prolog = Prolog1_2 ++ Prolog2},
    merge_library_trees([NewA | Mods]).

% if self is imported change it to namespace declaration unless already there.
patch_imports(Prolog, ModNs) ->
    Self = [
        #xqNamespaceDecl{uri = Ns, prefix = Px}
        || #xqImport{
               kind = module,
               uri = Ns,
               prefix = Px
           } <- Prolog,
           Ns == ModNs
    ],
    Flt = fun
        (
            #xqImport{
                kind = module,
                uri = Ns
            }
        ) when Ns == ModNs ->
            false;
        (_) ->
            true
    end,
    case Self of
        [] ->
            Prolog;
        _ ->
            Self ++ lists:filter(Flt, Prolog)
    end.

filter([E | T], Atom) when is_tuple(E), element(1, E) == Atom ->
    [E | filter(T, Atom)];
filter([_ | T], Atom) ->
    filter(T, Atom);
filter([], _) ->
    [].

filter([#xqFunctionDef{name = #xqQName{namespace = Ns0}} = E | T], 'xqFunctionDef', Ns) when
    Ns0 =/= Ns
->
    [E | filter(T, 'xqFunctionDef', Ns)];
filter([#xqVar{name = #xqQName{namespace = Ns0}} = E | T], 'xqVar', Ns) when Ns0 =/= Ns ->
    [E | filter(T, 'xqVar', Ns)];
filter([_ | T], Atom, Ns) ->
    filter(T, Atom, Ns);
filter([], _, _) ->
    [].

function_sigs(Functions) ->
    %ModName = xqerl_static:string_atom(ModNs),
    Specs = [
        {Name#xqQName{prefix = <<>>}, Type, Annos,
            begin
                {F, A} = xqerl_static:function_hash_name(Name, Arity),
                {xqerl_static:string_atom(Name#xqQName.namespace), F, A}
            end,
            Arity,
            param_types(Params)}
        || %id = Id,
           #xqFunctionDef{
               annotations = Annos,
               arity = Arity,
               params = Params,
               name = Name,
               type = Type
           } <-
               Functions,
           not_private(Annos)
    ],
    Specs.

%% {Name, Type, Annos, function_name, External }
variable_sigs(Variables) ->
    [
        {Name#xqQName{prefix = <<>>}, Type, Annos,
            {xqerl_static:string_atom(Name#xqQName.namespace),
                xqerl_static:variable_hash_name(Name)},
            External}
        || #xqVar{
               annotations = Annos,
               name = Name,
               external = External,
               type = Type
           } <-
               Variables
    ].

not_private(Annos) ->
    [
        ok
        || #xqAnnotation{
               name = #xqQName{
                   namespace = <<"http://www.w3.org/2012/xquery">>,
                   local_name = <<"private">>
               }
           } <- Annos
    ] == [].

param_types(Params) ->
    [T || #xqVar{type = T} <- Params].

unique_prolog_1(PrologA1, PrologB1) ->
    F = fun(A, Acc) ->
        without(A, Acc)
    end,
    Without = lists:foldl(F, PrologB1, PrologA1),
    PrologA1 ++ Without.

unique_prolog_2(PrologA2, PrologB2) ->
    F = fun
        (#xqVar{}, Acc) -> Acc;
        (#xqFunctionDef{}, Acc) -> Acc;
        (A, Acc) -> without(A, Acc)
    end,
    Without = lists:foldl(F, PrologB2, PrologA2),
    PrologA2 ++ Without.

without(
    #xqOptionDecl{name = #xqQName{namespace = N, local_name = L}} = A,
    [#xqOptionDecl{name = #xqQName{namespace = N, local_name = L}} | T]
) ->
    without(A, T);
without(
    #xqContextItemDecl{type = Y} = A,
    [#xqContextItemDecl{type = Y} | T]
) ->
    without(A, T);
without(
    #xqDefaultNamespaceDecl{kind = K, uri = U} = A,
    [#xqDefaultNamespaceDecl{kind = K, uri = U} | T]
) ->
    without(A, T);
without(
    #xqDecimalFormatDecl{name = #xqQName{namespace = N, local_name = L}} = A,
    [#xqDecimalFormatDecl{name = #xqQName{namespace = N, local_name = L}} | T]
) ->
    without(A, T);
without(
    #xqCopyNamespacesDecl{inh = I, pre = P} = A,
    [#xqCopyNamespacesDecl{inh = I, pre = P} | T]
) ->
    without(A, T);
without(
    #xqEmptyOrderDecl{mode = M} = A,
    [#xqEmptyOrderDecl{mode = M} | T]
) ->
    without(A, T);
without(
    #xqOrderingModeDecl{mode = M} = A,
    [#xqOrderingModeDecl{mode = M} | T]
) ->
    without(A, T);
without(
    #xqConstructionDecl{mode = M} = A,
    [#xqConstructionDecl{mode = M} | T]
) ->
    without(A, T);
without(
    #xqBaseURIDecl{uri = U} = A,
    [#xqBaseURIDecl{uri = U} | T]
) ->
    without(A, T);
without(
    #xqDefaultCollationDecl{uri = U} = A,
    [#xqDefaultCollationDecl{uri = U} | T]
) ->
    without(A, T);
without(
    #xqBoundarySpaceDecl{mode = M} = A,
    [#xqBoundarySpaceDecl{mode = M} | T]
) ->
    without(A, T);
without(
    #xqRevalidationDecl{kind = K} = A,
    [#xqRevalidationDecl{kind = K} | T]
) ->
    without(A, T);
without(
    #xqNamespaceDecl{uri = U, prefix = P} = A,
    [#xqNamespaceDecl{uri = U, prefix = P} | T]
) ->
    without(A, T);
without(
    #xqImport{kind = K, uri = U, prefix = P} = A,
    [#xqImport{kind = K, uri = U, prefix = P} | T]
) ->
    without(A, T);
without(A, [H | T]) ->
    [H | without(A, T)];
without(_, []) ->
    [].
