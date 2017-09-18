%% @author Zack
%% @doc @todo Add description to xqerl_try.
-module(xqerl_try).
-include("xqerl.hrl").



%-export([d/0]).




-export([main/1]).

-'element-namespace'('no-namespace').

-'import-functions'([]).

-'import-variables'([]).

-'context-item'({item, external, undefined}).

-'boundary-space'(strip).

-'default-collation'("http://www.w3.org/2005/xpath-functions/collat"
           "ion/codepoint").

-'base-uri'("C:\\Users\\Zack").

-'construction-mode'(preserve).

-'ordering-mode'(ordered).

-'empty-seq-order'(greatest).

-'copy-namespaces'({preserve, 'no-inherit'}).

-'decimal-format'([]).

-namespaces([{'no-namespace', []}]).

-options([]).

-variables([]).

-functions([]).

-export([]).

-export([]).

get_namespaces() ->
    lists:foreach(fun ({Ns, Px}) ->
           xqerl_context:add_statically_known_namespace(Ns, Px)
        end,
        proplists:get_value(namespaces,
                  module_info(attributes))),
    lists:foreach(fun (Value) ->
           xqerl_context:add_statically_known_function(Value)
        end,
        proplists:get_value(functions, module_info(attributes))
          ++
          proplists:get_value('import-functions',
               module_info(attributes))),
    xqerl_context:set_default_element_type_namespace(proplists:get_value('element-namespace',
                            module_info(attributes))).

main(Options) ->
    Ctx0 = maps:put(namespaces,
          [{"", 'no-namespace'},
           {"local",
            "http://www.w3.org/2005/xquery-local-functions"},
           {"fn", "http://www.w3.org/2005/xpath-functions"},
           {"xsi", "http://www.w3.org/2001/XMLSchema-instance"},
           {"xml", "http://www.w3.org/XML/1998/namespace"},
           {"xs", "http://www.w3.org/2001/XMLSchema"},
           {"math", "http://www.w3.org/2005/xpath-functions/math"},
           {"map", "http://www.w3.org/2005/xpath-functions/map"},
           {"array",
            "http://www.w3.org/2005/xpath-functions/array"},
           {"err", "http://www.w3.org/2005/xqt-errors"}],
          maps:put('base-uri', "C:\\Users\\Zack",
              maps:put(variables, [],
                  maps:put(ctx_var, 'Ctx',
                      maps:put(parameters, [],
                     lists:foldl(fun ({K, V},
                            M) ->
                               maps:put(K,
                                   V,
                                   M)
                            end,
                            maps:new(),
                            Options)))))),
    xqerl_context:init(),
    get_namespaces(),
    Ctx = Ctx0,
    xqerl_types:return_value(xqerl_fn:'local-name'(Ctx,
                     xqerl_types:as_seq(xqerl_step:forward(Ctx,
                                  xqerl_node:new_fragment({xqElementNode,
                                            undefined,
                                            undefined,
                                            {qname,
                                             'no-namespace',
                                             [],
                                             "elem"},
                                            undefined,
                                            [],
                                            [],
                                            [],
                                            undefined,
                                            'xs:anyType',
                                            undefined,
                                            undefined,
                                            begin
                                              Ctx__1 =
                                             Ctx,
                                              [{xqAttributeNode,
                                                undefined,
                                                {qname,
                                                 'no-namespace',
                                                 [],
                                                 "attr"},
                                                undefined,
                                                undefined,
                                                undefined,
                                                undefined,
                                                [{xqAttributeNode,
                                             undefined,
                                             {qname,
                                              'no-namespace',
                                              [],
                                              "name"},
                                             undefined,
                                             undefined,
                                             undefined,
                                             undefined,
                                             [xqerl_seq2:singleton({xqAtomicValue,
                                                          'xs:string',
                                                          " content "})]}]}]
                                            end},
                                           {xqAtomicValue,
                                            'xs:anyURI',
                                            "C:\\Users\\Zack"}),
                                  attribute,
                                  {qname,
                                   'no-namespace',
                                   [],
                                   "attr"},
                                  []),
                              {xqSeqType,
                               {xqKindTest,
                           node,
                           undefined,
                           undefined,
                           undefined},
                               zero_or_one}))).