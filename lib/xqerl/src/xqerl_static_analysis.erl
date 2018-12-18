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

%% @doc  Static analysis phase of compilation.

-module(xqerl_static_analysis).

-include("xqerl.hrl").
-include("xqerl_parser.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([analyze/3,
         has_cycle/2,
         add_edge/3]).

analyze(Body, Functions, Variables) ->
   G = digraph:new([]),
   if Body == [] ->
         add_vertex(G, library);
      true ->
         add_vertex(G, main)
   end,
   % add the variables
   M1 = add_glob_variables(G, Variables),
   % add the functions
   M2 = add_glob_funs(G, Functions, M1),
   % strip non-functions
   Functions1 = [F || #xqFunction{} = F  <- Functions],
   % strip non-variables
   Variables1 = [V || #xqVar{} = V  <- Variables] ++ 
                  [C || {'context-item', _} = C <- Variables],
   % globals are set now recurse for dependencies
   Body1 = l(Body),
   % analyze
   _ = x(G, M2, Body1 ++ Functions1 ++ Variables1, []),
   %print(G),
   G.

%% print(G) ->
%%    Paths = [P || {_,{'no-namespace',_}} = P <- digraph:vertices(G)],
%%    Fun = fun(P) ->
%%                ?dbg("reaching",{P,digraph_utils:reaching([P], G)}),
%%                ?dbg("reachable",{P,digraph_utils:reachable([P], G)})
%%          end,
%%    lists:foreach(Fun, Paths),
%%    ok.


% scan everything, when new Var found, add edge and make parent, 
% when new Ref found, find id and make link to parent, leave parent as is

% path expressions
%% x(G, Map, Parent,{path_expr,Id,Expr} ) ->
%%    K = {Id,path_expr},
%%    ?dbg("{K,Parent}",{K,Parent}),
%%    add_vertex(G, K),
%%    add_edge(G,K,Parent),
%%    x(G, Map, K, Expr),
%%    Map;

x(G, Map, Parent,{where,Id,Expr} ) ->
   K = {Id,where},
   add_vertex(G, K),
   add_edge(G,K,Parent),
   x(G, Map, K, Expr),
   Map;

x(G, Map, Parent,{order_by,Id,Expr} ) ->
   K = {Id,order_by},
   add_vertex(G, K),
   add_edge(G,K,Parent),
   x(G, Map, K, Expr),
   Map;

x(G, Map, Parent,{group_by,Id,Expr} ) ->
   K = {Id,group_by},
   %?dbg("{Id,group}",K),
   add_vertex(G, K),
   add_edge(G,K,Parent),
   x(G, Map, K, Expr),
   Map;

x(G, Map, Parent, #xqVar{id = Id, name = Nm0, expr = D, position = Pos}) ->
   Nm = sim_name(Nm0),
   add_vertex(G, {Id,Nm}),
   add_edge(G, {Id,Nm}, Parent),
   M1 = add_variable_to_scope(Nm, Id, Map, G),
   case Pos of
      #xqPosVar{id = Id1, name = Nm1} ->
         if Nm0 == Nm1 ->
               ?err('XQST0089');
            true ->
               ok
         end,
         add_vertex(G, {Id1,sim_name(Nm1)}),
         add_edge(G, {Id1,sim_name(Nm1)}, Parent),
         M2 = maps:put(sim_name(Nm1), Id1, M1),
         x(G, Map, Parent, D),
         x(G, Map, {Id,Nm}, D),
         M2;
      _ ->
         x(G, Map, Parent, D),
         x(G, Map, {Id,Nm}, D),
         M1
   end;

x(G, Map, Parent,
  #xqWindow{win_variable = #xqVar{id = Id, name = Nm0, expr = Ex},
            s          = S1,
            spos       = S2,
            sprev      = S3,
            snext      = S4,
            e          = E1,
            epos       = E2,
            eprev      = E3,
            enext      = E4,
            start_expr = Se,
            end_expr   = Ee}) ->
   Nm = sim_name(Nm0),
   add_vertex(G, {Id,Nm}),
   add_edge(G, {Id,Nm}, Parent),
   M1 = add_variable_to_scope(Nm, Id, Map, G),
   x(G, Map, {Id,Nm}, Ex),
   Fold = fun(undefined,M) ->
                M;
             (#xqVar{id = Id2, name = Nm3},M) ->
                Nm2 = sim_name(Nm3),
                add_vertex(G, {Id2,Nm2}),
                add_edge(G, {Id2,Nm2}, {Id2,Nm2}),
                add_variable_to_scope(Nm2, Id2, M, G);
             (#xqPosVar{id = Id2, name = Nm3},M) ->
                Nm2 = sim_name(Nm3),
                add_vertex(G, {Id2,Nm2}),
                add_edge(G, {Id2,Nm2}, {Id2,Nm2}),
                add_variable_to_scope(Nm2, Id2, M, G)
          end,
   M2 = lists:foldl(Fold, M1, [S1,S2,S3,S4]),
   x(G, M2, {Id,Nm}, Se),
   M3 = lists:foldl(Fold, M2, [E1,E2,E3,E4]),
   x(G, M3, {Id,Nm}, Ee),
   M3;

x(G, Map, Parent, #xqTypeswitchCase{types = default, variable = #xqVar{id = Id, name = Nm0, expr = D}}) ->
   Nm = sim_name(Nm0),
   add_vertex(G, {Id,Nm}),
   add_edge(G, {Id,Nm}, Parent),
   M1 = add_variable_to_scope(Nm, Id, Map, G),
   x(G, M1, Parent, D),
   Map;

x(G, Map, Parent, [#xqTypeswitchCase{variable = #xqVar{id = Id, name = Nm0, expr = D}}|T]) ->
   Nm = sim_name(Nm0),
   add_vertex(G, {Id,Nm}),
   add_edge(G, {Id,Nm}, Parent),
   M1 = add_variable_to_scope(Nm, Id, Map, G),
   x(G, M1, Parent, D),
   x(G, Map, Parent, T),
   Map;

x(G, Map, [#xqFunction{id = Id, 
                       name = Nm0, 
                       arity = Ar, 
                       body = Body, 
                       params = Params}|T], _Data) ->
   Nm = sim_name(Nm0),
   add_vertex(G, {Id,Nm,Ar}),
   % overload params
   Map1 = lists:foldl(fun(#xqVar{id = Id1, name = Nm1}, M) ->
                            add_vertex(G, {Id1,sim_name(Nm1)}),
                            maps:put(sim_name(Nm1), Id1, M)
                      end, Map, Params),
   x(G, Map1, {Id,Nm, Ar}, Body),
   x(G, Map, T, []);

% global variables
x(G, Map, [#xqVar{id = Id, name = Nm0, expr = Body}|T], _Data) ->
   Nm = sim_name(Nm0),
   % all global variable bodies can have dependency on context item
   add_vertex(G, {Id,Nm}),
   case maps:is_key(context_item, Map) of
      true ->
         %add_edge(G,context_item,{Id,Nm}),
         x(G, Map, {Id,Nm}, Body),
         ContextEdges = digraph_utils:reaching([{Id,Nm}], G),
         case lists:member({dynamic,context_item}, ContextEdges) of
            true ->
               add_edge(G,context_item,{Id,Nm});
            _ ->
               ok
         end;
      _ ->
         x(G, Map, {Id,Nm}, Body)
   end,
   x(G, Map, T, []);
% main query
x(G, Map, [#xqQuery{query = Qry}|T], _Data) ->
   add_vertex(G, main),
   x(G, Map, T, []),
   x(G, Map, main, Qry),
   % check for context dependency
   ContextEdges = digraph_utils:reaching([main], G),
   case lists:member({dynamic,context_item}, ContextEdges) of
      true ->
         add_edge(G,context_item,main);
      _ ->
         ok
   end;
x(G, Map, [{'context-item',{_,_,Expr}}|T],_Data ) ->
   add_vertex(G, context_item),
   add_edge(G,context_item,main),
   x(G, Map, context_item, Expr),
   x(G, Map, T, []);
x(G, Map, Parent, Data) when is_list(Data) ->
   lists:foldl(fun(D,M) ->
                     x(G, M, Parent, D)
                 end, Map, Data);

%'if-then-else' branches
x(G, Map, Parent,{'if-then-else',If,{TI,Then},{EI,Else}} ) ->
   add_vertex(G, {TI,'if-then-else'}),
   add_vertex(G, {EI,'if-then-else'}),
   add_edge(G,{TI,'if-then-else'},Parent),
   add_edge(G,{EI,'if-then-else'},Parent),
   x(G, Map, Parent, If),
   x(G, Map, {TI,'if-then-else'}, Then),
   x(G, Map, {EI,'if-then-else'}, Else),
   Map;

x(G, Map, Parent, #xqTryCatch{expr = Expr, catches = Catches}) ->
   x(G, Map, Parent, Expr),
   ErrNs = <<"http://www.w3.org/2005/xqt-errors">>,
   E1 = {ErrNs,<<"code">>},
   E2 = {ErrNs,<<"description">>},
   E3 = {ErrNs,<<"value">>},
   E4 = {ErrNs,<<"module">>},
   E5 = {ErrNs,<<"line-number">>},
   E6 = {ErrNs,<<"column-number">>},
   E7 = {ErrNs,<<"additional">>},
   add_vertex(G, E1),
   add_vertex(G, E2),
   add_vertex(G, E3),
   add_vertex(G, E4),
   add_vertex(G, E5),
   add_vertex(G, E6),
   add_vertex(G, E7),
   M2 = Map#{E1 => E1,
             E2 => E2,
             E3 => E3,
             E4 => E4,
             E5 => E5,
             E6 => E6,
             E7 => E7},
   x(G, M2, Parent, Catches);
x(G, Map, Parent, {Cons,Bod}) when Cons =:= direct_cons;
                                   Cons =:= comp_cons ->
   add_vertex(G, {static,base_uri}),
   add_vertex(G, {static,known_namespaces}),
   add_edge(G,{static,base_uri},Parent),
   add_edge(G,{static,known_namespaces},Parent),
   %?dbg("Bod",Bod),
   x(G, Map, Parent, Bod),
   Map;
x(G, Map, Parent, #xqFlwor{} = Data) ->
   xf(G, Map, Parent, Data),
   Map;
x(G, Map, Parent, #xqPosVar{id = Id1, name = Nm1}) ->
   add_vertex(G, {Id1,sim_name(Nm1)}),
   add_edge(G, {Id1,sim_name(Nm1)}, Parent),
   M2 = maps:put(sim_name(Nm1), Id1, Map),
   x(G, M2, Parent, []),
   M2;
x(_, _, _, #xqVarRef{name = #qname{namespace = undefined}}) ->
   ?err('XPST0081'); % unknown prefix/namespace for variable
x(G, Map, Parent, #xqVarRef{name = Nm0}) ->
   Nm = sim_name(Nm0),
   case catch maps:get(Nm, Map) of
      {'EXIT',_} ->
         ?dbg("XPST0008",{Nm}),
         ?err('XPST0008');
      Id when {Id,Nm} == Parent ->
         ?dbg("XPST0008",'XPST0008'),
         ?err('XPST0008'); % self reference, variable does not exist yet
      Id ->
         add_edge(G, {Id,Nm}, Parent),
         Map
   end;
x(G, Map, Parent, {FC, Nm0, Ar, Args}) when FC == 'function-call';
                                            FC == 'partial-function' ->
   Nm = sim_name(Nm0),
   case maps:is_key({Nm, Ar}, Map) of 
      true ->
         Id = maps:get({Nm, Ar}, Map),
         if Id == 0 ->
               add_vertex(G, {-1,Nm,Ar}),
               add_edge(G, {-1,Nm,Ar}, Parent),
               add_edge(G, {Id,Nm,Ar}, Parent);
            true ->
               add_edge(G, {Id,Nm,Ar}, Parent)
         end,
         x(G, Map, Parent, Args);
      _ -> % non local function
         add_properties(G, Nm0, Ar),
         add_vertex(G, {-1,Nm,Ar}),
         add_edge(G, {-1,Nm,Ar}, Parent),
         x(G, Map, Parent, Args)
   end,
   Map;
x(G, Map, Parent, {'function-ref', Nm0, Ar}) ->
   Nm = sim_name(Nm0),
   case maps:is_key({Nm, Ar}, Map) of 
      true ->
         Id = maps:get({Nm, Ar}, Map),
         if Id == 0 ->
               add_vertex(G, {-1,Nm,Ar}),
               add_edge(G, {-1,Nm,Ar}, Parent),
               add_edge(G, {Id,Nm,Ar}, Parent);
            true ->
               add_edge(G, {Id,Nm,Ar}, Parent) % allow local function refs...
               %add_edge(G, {-1,Nm,Ar}, Parent) % allow local function refs...
         end;
      _ -> % non local function
         add_properties(G, Nm0, Ar),
         add_vertex(G, {-1,Nm,Ar}),
         add_edge(G, {-1,Nm,Ar}, Parent)
   end,
   Map;
x(G, Map, Parent, Data) when is_tuple(Data) ->
   D1 = tuple_to_list(Data),
   x(G, Map, Parent, D1);
x(G, Map, Parent, 'context-item') ->
   add_vertex(G, context_item),
   add_edge(G, context_item, Parent),
   Map;
x(G, Map, [_|T], D) ->
   x(G, Map, T, D);
x(_, Map, _, _) ->
   Map.

xf(G, Map, Parent, #xqFlwor{id = Id, loop = Loop, return = Ret}) ->
   %?dbg("Loop",Loop),
   %?dbg("{Parent,{Id,flwor}}",{Parent,{Id,flwor}}),
   add_vertex(G, {Id,flwor}),
   %add_edge(G,Parent,{Id,flwor}),
   add_edge(G,{Id,flwor},Parent),
   Le = lists:flatmap(fun(#xqWindow{} = E) ->
                           l(E);
                         ({group_by,_,_} = E) ->
                           l(E);
                         ({where,_,_} = E) ->
                           l(E);
                         ({order_by,_,_} = E) ->
                           l(E);
                         ({for,_,_} = E) ->
                           l(E);
                         ({'let',_,_} = E) ->
                           l(E);
                         ({_,E}) ->
                           l(E)
                      end, Loop),
   LM = lists:foldl(fun(E,M) ->
                        x(G, M, Parent, E)
                        %x(G, M, {Id,flwor}, E)
                    end, Map, Le),
   %?dbg("Le",Le),
   %x(G, LM, Parent, Ret).
   %Verts = digraph_utils:reaching([{Id,flwor}], G),
   %?dbg("Verts",Verts),
   %Sub = digraph_utils:subgraph(G, Verts),
   %Sort = better_topsort(Sub,Le),
   %?dbg("Sort",Sort),
   
   %digraph:delete(Sub),
   % put in process dict for static phase to reorder
   %erlang:put({Id,flwor}, Sort),

   %x(G, LM, Parent, Ret).
   x(G, LM, {Id,flwor}, Ret).

%% better_topsort(G,O) ->
%%    Orig = [ case T of
%%                #xqWindow{win_variable = #xqVar{id = I, name = N}} ->
%%                   {I,sim_name(N)};
%%                #xqVar{id = I, name = N} ->
%%                   {I,sim_name(N)};
%%                {where,I,_} ->
%%                   {I,where};
%%                {group_by,I,_} ->
%%                   {I,group_by};
%%                {order_by,I,_} ->
%%                   {I,order_by}
%%             end || T <- O
%%           ],
%%    TS = [{I,N} || {I,N} <- Orig],
%%    Cons = [ {I,sim_name(N)} || 
%%             #xqVar{id = I, name = N, expr = Expr} <- O,
%%             constuctor_let(Expr)] ++
%%             [{I,sim_name(N)} || 
%%              #xqWindow{win_variable = #xqVar{id = I, name = N}} <- O],
%%    %?dbg("OSort",Orig),
%%    F = lists:filter(fun(V) ->
%%                           Rg = [{I,N} || 
%%                                 {I,N} <- digraph_utils:reaching([V], G), 
%%                                 is_integer(I),
%%                                 not is_atom(N) ],
%%                           %?dbg("V",V),
%%                           %?dbg("Rg",Rg),
%%                           Rg == [V] andalso not lists:member(V, Cons)
%%                     end, TS),
%%    L = F ++ (TS -- F),
%%    %?dbg("TS",TS),
%%    %?dbg("F",F),
%%    %?dbg("L",L),
%%    [I || {I,_} <- L].



add_vertex(G,V) -> digraph:add_vertex(G,V).

add_edge(G, A, B) ->
   Ex = [V || E <- digraph:out_edges(G, A),
              {_,_,V,_} <- [digraph:edge(G, E)],
              V == B],
   case Ex of
      [] ->
         digraph:add_edge(G, A, B);
      _ ->
         ok
   end,
   ok.

has_cycle(G, Variables) ->
   Vars = [{Id,sim_name(Nm)} || #xqVar{id = Id, name = Nm} <- Variables],
   lists:foreach(fun(Var) ->
                       case digraph:get_cycle(G, Var) of
                           false ->
                              ok;
                          C ->
                             ?dbg("C",C),
                             Cond = [N || {N,'if-then-else'} <- C],
                             case Cond of
                                [] ->
                                   ?err('XQDY0054'); % variable cycle
                                [N|X] ->
                                   ?dbg("[N|X]",[N|X]),
                                   % cycle was in a logic branch. 
                                   % it may never happen, throw at run-time
                                   erlang:put({'if-then-else',N}, 'XQDY0054')
                             end
                       end
                 end, Vars).

l([]) -> [];
l(L) when is_list(L) ->
  L;
l(L) ->
  [L].

sim_name(#qname{namespace = N, local_name = L}) -> {N,L}.

% returns map
add_glob_variables(G, Variables) ->
   %?dbg("Variables",Variables),
   Fun = fun({#qname{} = Nm,_,Annos,_,_}, Map) ->
               IsPriv = is_private(Annos),
               if IsPriv ->
                     Map;
                  true ->
                     Sim = sim_name(Nm),
                     add_vertex(G, {0,sim_name(Nm)}),
                     case maps:is_key(Sim, Map) of
                        true -> ?err('XQST0049');
                        _ -> maps:put(Sim, 0, Map)
                     end
               end;
            (#xqVar{id = Id, name = Nm}, Map) ->
               Sim = sim_name(Nm),
               add_vertex(G, {Id,sim_name(Nm)}),
               case maps:is_key(Sim, Map) of
                  true -> ?err('XQST0049');
                  _ -> maps:put(Sim, Id, Map)
               end;
            ({'context-item',_}, Map) ->
               add_vertex(G, context_item),
               maps:put(context_item, -1, Map)
         end,
   lists:foldl(Fun, maps:new(), Variables).

% returns map
add_glob_funs(G, Functions, Map0) ->
   %?dbg("Functions",Functions),
   Fun = fun(#xqFunction{name = #qname{namespace = undefined}}, _) ->
               ?err('XQST0060');
            (#xqFunction{id = Id, name = Nm, arity = Ar}, Map) ->
               S = sim_name(Nm),
               add_vertex(G, {Id,S, Ar}),
               case maps:is_key({S, Ar}, Map) of
                  true -> ?err('XQST0034');
                  _ -> maps:put({S, Ar}, Id, Map)
               end;
            ({#qname{} = Nm,_,Annos,_,Ar,_}, Map) ->
               IsPriv = is_private(Annos),
               if IsPriv ->
                     Map;
                  true ->
                     S = sim_name(Nm),
                     add_properties(G, Nm, Ar),
                     case maps:is_key({S, Ar}, Map) of
                        true -> ?err('XQST0034');
                        _ -> maps:put({S, Ar}, 0, Map)
                     end
               end
         end,
   lists:foldl(Fun, Map0, Functions).

% adds static and dynamic properities for a function to the digraph
add_properties(G, Nm0, Ar) ->
   Properties = xqerl_static_fn_props:get_props(Nm0, Ar),
   Nm = sim_name(Nm0),
   add_vertex(G, {0,Nm,Ar}),
   Static = maps:get(static_properties, Properties),
   Dynamic = maps:get(dynamic_properties, Properties),
   lists:foreach(fun(P) ->
                       add_vertex(G, {static, P}),
                       add_edge(G, {static, P},{0,Nm,Ar})
                 end, Static),
   lists:foreach(fun(P) ->
                       add_vertex(G, {dynamic, P}),
                       add_edge(G, {dynamic, P},{0,Nm,Ar})
                 end, Dynamic),
   ok.


%% constuctor_let(undefined) -> true; % count clause
%% constuctor_let(Expr) ->
%%    F = fun O([]) ->
%%             false;
%%            O(T) when is_tuple(T) ->
%%             O(tuple_to_list(T));
%%            O(L) when is_list(L) ->
%%             lists:foldl(fun(X,A) -> A orelse O(X) end, false, L);
%%            O(direct_cons) ->
%%             true;
%%            O(comp_cons) ->
%%             true;
%%            O(_) ->
%%             false
%%          end,
%%    F(Expr).

% add variable to the map, also if shadowing name, add edge
add_variable_to_scope(Nm, Id, Map, _G) ->
   case maps:find(Nm, Map) of
      error ->
         maps:put(Nm, Id, Map);
      {ok,_V} ->
         %K = {Id,Nm},
         %?dbg("K",K),
         %?dbg("V",V),
         %add_edge(G, {V,Nm}, K),
         maps:put(Nm, Id, Map)
   end.


is_private([]) -> false;
is_private([{annotation, 
             #qname{namespace = <<"http://www.w3.org/2012/xquery">>,
                    local_name = <<"private">>}, _}|_]) -> true;
is_private([_|T]) -> is_private(T).











