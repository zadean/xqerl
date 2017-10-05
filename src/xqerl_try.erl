%% @author Zack
%% @doc @todo Add description to xqerl_try.
-module(xqerl_try).
-include("xqerl.hrl").



%-export([d/0]).


-export([main/1]).

-variables([]).

-functions([]).

-export([]).

-export([]).

init() ->
    xqerl_context:init(),
    #{'base-uri' => {xqAtomicValue, 'xs:anyURI', "c:/git/zadean/xqerl/lib"},
      'default-collation' =>
     "http://www.w3.org/2005/xpath-functions/collation/codepoint",
      known_collations =>
     ["http://www.w3.org/2005/xpath-functions/collation/codepoint"],
      named_functions => [],
      namespaces =>
     [{[], 'no-namespace'},
      {"local", "http://www.w3.org/2005/xquery-local-functions"},
      {"fn", "http://www.w3.org/2005/xpath-functions"},
      {"xsi", "http://www.w3.org/2001/XMLSchema-instance"},
      {"xml", "http://www.w3.org/XML/1998/namespace"},
      {"xs", "http://www.w3.org/2001/XMLSchema"},
      {"math", "http://www.w3.org/2005/xpath-functions/math"},
      {"map", "http://www.w3.org/2005/xpath-functions/map"},
      {"array", "http://www.w3.org/2005/xpath-functions/array"},
      {"err", "http://www.w3.org/2005/xqt-errors"}]}.

main(Options) ->
    Ctx0 = init(),
    Ctx = begin
       Local__1 = xqerl_fn:doc(Ctx0,
                {xqAtomicValue, 'xs:string',
                 "file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/has-children/has-"
                 "children.xml"}),
       xqerl_context:set_context_position(xqerl_context:set_context_item(xqerl_context:set_context_size(Ctx0,
                                            xqerl_seq2:size(Local__1)),
                                 Local__1),
                      {xqAtomicValue, 'xs:integer', 1})
     end,
    xqerl_types:return_value(begin
                Local__2 = xqerl_step:root(Ctx, xqerl_context:get_context_item(Ctx)),
                ?dbg("Local__2",Local__2),
                begin
                   List = xqerl_step:forward(Ctx,
                           xqerl_step:forward(Ctx, Local__2, child,
                                    {qname, 'no-namespace', [], "root"}, []),
                           child, {qname, 'no-namespace', [], "non-empty"}, []),
                   ?dbg("List",xqerl_node:to_xml(List)), 
             xqerl_seq2:node_map(Ctx, fun (Ctx__3) -> xqerl_fn:'has-children'(Ctx__3) end,List)
                end
              end).