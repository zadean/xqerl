%% @author Zack
%% @doc @todo Add description to xqerl_try.
-module(xqerl_try).
-include("xqerl.hrl").




-export([main/1]).

-variables([]).

-functions([{{qname, "http://www.w3.org/2005/xquery-local-functions", "local",
         "f"},
        {xqSeqType,
         {xqFunTest, function, [], undefined,
          [{xqSeqType, {xqKindTest, namespace, undefined, undefined, undefined}, one}],
          {xqSeqType, element, one}},
         one},
        [], {'fx$^4', 2}, 1,
        [{xqSeqType, {xqKindTest, namespace, undefined, undefined, undefined}, one}]}]).

-export([]).

init() ->
    xqerl_context:init(),
    #{'base-uri' => {xqAtomicValue, 'xs:anyURI', "http://xqerl.org"},
      'construction-mode' => preserve,
      'copy-namespaces' => {'no-preserve', 'no-inherit'},
      'default-collation' =>
     "http://www.w3.org/2005/xpath-functions/collation/codepoint",
      known_collations =>
     ["http://www.w3.org/2005/xpath-functions/collation/codepoint"],
      named_functions =>
     [],
      namespaces =>
     [{xqNamespace, "http://www.w3.org/2000/svg", []},
      {xqNamespace, "http://www.w3.org/2005/xquery-local-functions", "local"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions", "fn"},
      {xqNamespace, "http://www.w3.org/2001/XMLSchema-instance", "xsi"},
      {xqNamespace, "http://www.w3.org/XML/1998/namespace", "xml"},
      {xqNamespace, "http://www.w3.org/2001/XMLSchema", "xs"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions/math", "math"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions/map", "map"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions/array", "array"},
      {xqNamespace, "http://www.w3.org/2005/xqt-errors", "err"},
      {xqNamespace, "http://www.SDMX.org/resources/SDMXML/schemas/v1_0/message", "msg"},
      {xqNamespace, "http://www.newyorkfed.org/xml/schemas/FX/utility", "frbny"}]}.


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 



main(Options) ->
    Ctx0 = xqerl_context:merge(init(), Options),
    Ctx = begin
       Local__1 = xqerl_fn:doc(Ctx0,
                {xqAtomicValue, 'xs:string',
                 "file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/report1.xml"}),
       xqerl_context:set_context_item(Ctx0, Local__1, 1,
                  {xqAtomicValue, 'xs:integer', xqerl_seq3:size(Local__1)})
     end,
    begin
      Query = xqerl_node:new_fragment(Ctx,
                  {xqElementNode, undefined, undefined,
                   {qname, 'no-namespace', [], "critical_sequence"}, undefined, [], [],
                   [{xqNamespace, 'no-namespace', []}], undefined, 'xs:anyType', [], undefined,
                   [xqerl_seq3:flatten(begin
                          VarTup__1 = let__1(Ctx, new),
                          VarTup__2 = where__5(Ctx, VarTup__1),
                          return__6(Ctx, VarTup__2)
                        end)]}),
      xqerl_types:return_value(Query)
    end.

-compile({inline, {return__6, 2}}).

return__6(_, []) -> [];
return__6(Ctx, List) when erlang:is_list(List) ->
    [return__6(Ctx, T) || T <- List];
return__6(Ctx, {XQ__var_1, XQ__var_2, XQ__var_3, XQ__var_4}) -> XQ__var_4.

-compile({inline, {where__5, 2}}).

where__5(_, []) -> [];
where__5(Ctx, Stream) when not erlang:is_list(Stream) ->
    where__5(Ctx, [Stream]);
where__5(Ctx, [{XQ__var_1, XQ__var_2, XQ__var_3, XQ__var_4} | T]) ->
    True = xqerl_operators:eff_bool_val(xqerl_fn:boolean(Ctx,
                      xqerl_operators:eff_bool_val(xqerl_operators:node_after(XQ__var_4, XQ__var_2))
                        andalso
                        xqerl_operators:eff_bool_val(xqerl_operators:node_before(XQ__var_4,
                                              XQ__var_3)))),
    if True == true ->
      [{XQ__var_1, XQ__var_2, XQ__var_3, XQ__var_4} | where__5(Ctx, T)];
       true -> where__5(Ctx, T)
    end.

for__4(_, []) -> [];
for__4(Ctx, List) when erlang:is_list(List) ->
    lists:flatten([for__4(Ctx, T) || T <- List]);
for__4(Ctx, {XQ__var_1, XQ__var_2, XQ__var_3} = Stream) ->
    List = xqerl_seq3:except(xqerl_step:forward(Ctx,
                  xqerl_step:forward(Ctx, XQ__var_1, 'descendant-or-self',
                           {xqKindTest, node, undefined, undefined, undefined}, []),
                  child, {xqKindTest, node, undefined, undefined, undefined}, []),
              xqerl_step:forward(Ctx,
                  xqerl_step:forward(Ctx, XQ__var_2, 'descendant-or-self',
                           {xqKindTest, node, undefined, undefined, undefined}, []),
                  child, {xqKindTest, node, undefined, undefined, undefined}, [])),
    if List == [] -> lists:flatten(for__4(Ctx, empty, Stream));
       true -> lists:flatten(for__4(Ctx, List, Stream))
    end.

for__4(_, empty, _) -> [];
for__4(_, [], _) -> [];
for__4(Ctx, NoList, Stream) when not erlang:is_list(NoList) ->
    for__4(Ctx, [NoList], Stream);
for__4(Ctx, [XQ__var_4 | T], {XQ__var_1, XQ__var_2, XQ__var_3}) ->
    [{XQ__var_1, XQ__var_2, XQ__var_3, XQ__var_4} | for__4(Ctx, T,
                        {XQ__var_1, XQ__var_2, XQ__var_3})].

-compile({inline, {let__3, 2}}).

let__3(Ctx, List) when erlang:is_list(List) ->
    lists:flatten([let__3(Ctx, T) || T <- List]);
let__3(Ctx, {XQ__var_1, XQ__var_2}) ->
    XQ__var_3 = xqerl_seq3:position_filter(Ctx, {xqAtomicValue, 'xs:integer', 2},
                  xqerl_step:forward(Ctx,
                           xqerl_step:forward(Ctx, XQ__var_1, 'descendant-or-self',
                               {xqKindTest, node, undefined, undefined, undefined}, []),
                           child, {qname, 'no-namespace', [], "incision"}, [])),
    for__4(Ctx, {XQ__var_1, XQ__var_2, XQ__var_3}).

-compile({inline, {let__2, 2}}).

let__2(Ctx, List) when erlang:is_list(List) ->
    lists:flatten([let__2(Ctx, T) || T <- List]);
let__2(Ctx, {XQ__var_1}) ->
    XQ__var_2 = xqerl_seq3:position_filter(Ctx, {xqAtomicValue, 'xs:integer', 1},
                  xqerl_step:forward(Ctx,
                           xqerl_step:forward(Ctx, XQ__var_1, 'descendant-or-self',
                               {xqKindTest, node, undefined, undefined, undefined}, []),
                           child, {qname, 'no-namespace', [], "incision"}, [])),
    let__3(Ctx, {XQ__var_1, XQ__var_2}).

-compile({inline, {let__1, 2}}).

let__1(Ctx, List) when erlang:is_list(List) ->
    lists:flatten([let__1(Ctx, T) || T <- List]);
let__1(Ctx, _) ->
    XQ__var_1 = xqerl_step:forward(Ctx,
               xqerl_step:forward(Ctx,
                        xqerl_step:any_root(Ctx, xqerl_context:get_context_item(Ctx)),
                        'descendant-or-self', {xqKindTest, node, undefined, undefined, undefined}, []),
               child, {qname, 'no-namespace', [], "section"},
               [fun (Ctx__2) ->
                   xqerl_operators:general_compare('=',
                               xqerl_step:forward(Ctx__2,
                                        xqerl_context:get_context_item(Ctx__2),
                                        child,
                                        {qname, 'no-namespace', [], "section.title"},
                                        []),
                               {xqAtomicValue, 'xs:string', "Procedure"})
                end,
                {xqAtomicValue, 'xs:integer', 1}]),
    let__2(Ctx, {XQ__var_1}).