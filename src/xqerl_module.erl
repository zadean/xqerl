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

-include("xqerl.hrl").
-include("xqerl_parser.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([merge_library_trees/1,
         expand_imports/1,
         module_namespace/2]).



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
   F = fun({Uri, #xqError{}}) ->
             {Uri, {[], [], [], []}};
          ({Uri, Mod}) ->
             I = collect_imports(Mod, List),
             Fs = filter(I, 'xqFunctionDef', Uri),
             Vs = filter(I, 'xqVar', Uri),
             {Uri, {clear_id(Fs), function_sigs(Fs), 
                    clear_id(Vs), variable_sigs(Vs)}}
       end,
   lists:map(F, List).

module_namespace(#xqModule{type = library,
                           declaration = {ModNs, _}}, _Def) ->
   ModNs;
module_namespace(_, Def) -> Def.

collect_imports(#xqModule{type = library,
                          declaration = {ModNs, _},
                          prolog = Prolog}, All) ->
   Imports = get_imported(Prolog),
   collect_imports(Imports, All, [ModNs]).

collect_imports([ModNs|Imports], All, Acc) ->
   case lists:member(ModNs, Acc) of
      true ->
         % already in the list
         collect_imports(Imports, All, Acc);
      false ->
         % find imports for this mod and add to the Imports
         Imps = get_imported(get_module_prolog(ModNs, All)),
         collect_imports(Imps ++ Imports, All, [ModNs|Acc])
   end;
collect_imports([], All, Acc) ->
   F = fun(Ns) ->
             Prolog = get_module_prolog(Ns, All),
             Vars = filter(Prolog, 'xqVar'),
             Funs = filter(Prolog, 'xqFunctionDef'),
             Funs ++ Vars
       end,
   lists:flatmap(F, Acc).

get_imported(Prolog) ->
   lists:usort([Ns || {_, {Ns,_}} <- filter(Prolog, 'module-import')]).

get_module_prolog(Ns, All) ->
   P = [Prolog ||
        {ModNs, #xqModule{type = library,
                          declaration = {ModNs, _},
                          prolog = Prolog}} <- All,
        ModNs == Ns],
   lists:flatten(P).

clear_id([#xqFunctionDef{} = H|T]) ->
   [H#xqFunctionDef{id = 0}|clear_id(T)];
clear_id([#xqVar{} = H|T]) ->
   [H#xqVar{id = 0}|clear_id(T)];
clear_id([]) -> [].



%% merges library ASTs from the same target namespace into one module
merge_library_trees([Mod]) -> Mod;
merge_library_trees([#xqModule{type = library,
                               declaration = {ModNs, ModPxA},
                               prolog = PrologA} = A,
                     #xqModule{type = library,
                               declaration = {ModNs, ModPxB},
                               prolog = PrologB}|Mods]) ->
   FirstFun = fun({'element-namespace', _}) -> true;
                 ({'function-namespace', _}) -> true;
                 ({'set', _}) -> true;
                 ({'namespace', _}) -> true;
                 ({'module-import', _}) -> true;
                 (_) -> false               
              end,
   SecondFun = fun({'context-item', _}) -> true;
                  (#xqFunctionDef{}) -> true;
                  (#xqVar{}) -> true;
                  ({'option', _}) -> true;
                  (_) -> false               
              end,
   {Pro1A, RestA} = lists:splitwith(FirstFun, PrologA),
   {Pro1B, RestB} = lists:splitwith(FirstFun, PrologB),
   {Pro2A, Rest1A} = lists:splitwith(SecondFun, RestA),
   {Pro2B, Rest1B} = lists:splitwith(SecondFun, RestB),
   
   ElNs = unique('element-namespace', Pro1A, Pro1B),
   FnNs = unique('function-namespace', Pro1A, Pro1B),
   Sets = unique('set', Pro1A, Pro1B),
   Nsps = unique('namespace', Pro1A, Pro1B),
   Imps = unique('module-import', Pro1A, Pro1B),
   
   ImNs = patch_imports(Imps, Nsps, ModNs),

   Ctxs = unique('context-item', Pro2A, Pro2B),
   Opts = unique('option', Pro2A, Pro2B),
   Vars = filter(Pro2A, 'xqVar') ++ filter(Pro2B, 'xqVar'),
   Funs = filter(Pro2A, 'xqFunctionDef') ++ filter(Pro2B, 'xqFunctionDef'),
   
   ExNs = if ModPxA == ModPxB ->
                [];
             true ->
                N = {'namespace', {ModNs, ModPxB}},
                case lists:member(N, Nsps) of
                   true ->
                      [];
                   false ->
                      [N]
                end
          end,
   
   NewA = A#xqModule{prolog = 
                       ElNs ++ FnNs ++ Sets ++ ExNs ++ ImNs ++
                       Ctxs ++ Opts ++ Vars ++ Funs
                       ++ Rest1A ++ Rest1B},
   merge_library_trees([NewA|Mods]).

% if self is imported change it to namespace declaration unless already there.
patch_imports(Imps, Nsps, ModNs) ->
   Self = [{'namespace', {Ns, Px}} || {'module-import', {Ns,Px}} <- Imps, Ns == ModNs],
   Flt = fun({'module-import', {Ns,_}}) when Ns == ModNs -> false;
            (_) -> true
         end,
   case Self of
      [] ->
         Imps ++ Nsps;
      _ ->
         lists:foldl(fun(Ns, Acc) ->
                           case lists:member(Ns, Acc) of
                              true ->
                                 Acc;
                              false ->
                                 [Ns|Acc]
                           end
                     end, Nsps, Self) ++ lists:filter(Flt, Imps)
   end.

filter([E|T], Atom) when is_tuple(E), element(1, E) == Atom ->
   [E|filter(T, Atom)];
filter([_|T], Atom) ->
   filter(T, Atom);
filter([], _) -> [].

filter([#xqFunctionDef{name = #qname{namespace = Ns0}} = E|T], 'xqFunctionDef', Ns) when Ns0 =/= Ns ->
   [E|filter(T, 'xqFunctionDef', Ns)];
filter([#xqVar{name = #qname{namespace = Ns0}} = E|T], 'xqVar', Ns) when Ns0 =/= Ns ->
   [E|filter(T, 'xqVar', Ns)];
filter([_|T], Atom, Ns) ->
   filter(T, Atom, Ns);
filter([], _, _) -> [].

unique(Name, A, B) ->
   A1 = filter(A, Name),
   B1 = filter(B, Name) -- A1,
   A1 ++ B1.
 
function_sigs(Functions) ->
   %ModName = xqerl_static:string_atom(ModNs),
   Specs = [ {Name#qname{prefix = <<>>}, 
              Type, 
              Annos,
              begin
                 {F,A} = xqerl_static:function_hash_name(Name,Arity),
                 {xqerl_static:string_atom(Name#qname.namespace),F,A}
              end, 
              Arity, 
              param_types(Params) } 
           || #xqFunctionDef{%id = Id, 
                          annotations = Annos, 
                          arity = Arity,
                          params = Params,
                          name = Name, 
                          type = Type} 
           <- Functions,
              not_private(Annos) ],
   Specs.

%% {Name, Type, Annos, function_name, External }
variable_sigs(Variables) ->
   %ModName = xqerl_static:string_atom(ModNs),
   [{Name#qname{prefix = <<>>}, Type, Annos, 
     {xqerl_static:string_atom(Name#qname.namespace), 
      xqerl_static:variable_hash_name(Name)},External}
   || #xqVar{annotations = Annos, 
             name = Name,
             external = External, 
             type = Type}
   <- Variables].


not_private(Annos) ->
   [ok || 
    #annotation{name = #qname{namespace = <<"http://www.w3.org/2012/xquery">>,
                              local_name = <<"private">>}} <- Annos] == [].

param_types(Params) ->
   [ T || #xqVar{type = T} <- Params].
