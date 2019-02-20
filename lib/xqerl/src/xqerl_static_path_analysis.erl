%% @author Zack
%% @doc @todo Add description to xqerl_static_path_analysis.


-module(xqerl_static_path_analysis).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([analyze/1]).

analyze(G) ->
   Verts = digraph:vertices(G),
   Paths = 
     [begin
         {root, edge(G, Ed, Id)} 
      end || 
      {Id, path_expr} = P <- lists:sort(Verts),
      %{Id,{_,Bin}} = P <- Verts,
      %is_integer(Id),
      %is_binary(Bin), 
      Ed <- digraph:in_edges(G, P)
      ],
   io:format("~p~n", [Paths]),
   
   ok.


%% ====================================================================
%% Internal functions
%% ====================================================================


edge(G, E, Id) ->
   case digraph:edge(G, E) of
      {_, {_, path_expr} = V1, {_, {axisStep, _, _}} = V2, L} -> % predicate
         Out = digraph:in_edges(G, V1),
         InE = [{info, L}|lists:flatten([edge(G, O, Id) || O <- Out])],
         {V2, InE};
      {_, {_, path_expr}, _, L} ->
         {info, L};
      {_, V1, V2, {step, Id}} ->
         Out = digraph:in_edges(G, V1),
         InE = lists:flatten([edge(G, O, Id) || O <- Out]),
         case InE of 
            [] ->
               {V2, [V1]};
            _ ->
               {V2, InE}
         end;
      {_, V1, V2, {variable, _, _} = L} ->
         Out = digraph:in_edges(G, V1),
         InE = lists:flatten([edge(G, O, Id) || O <- Out]),
         case InE of 
            [] ->
               {V2, L, [V1]};
            _ ->
               {V2, L, InE}
         end;
      {_, _, _, _} = L ->
         ?dbg("L", L),
         []
   end.
