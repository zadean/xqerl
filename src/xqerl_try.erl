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

-variables([{{qname, 'no-namespace', [], "uri"},
        {xqSeqType, item, zero_or_many}, [], {uri, 1}}]).

-functions([]).

-export([uri/1]).

-export([]).

uri(Ctx0) ->
    {xqAtomicValue, 'xs:string',
     "C:/git/zadean/xqerl/test/QT3_1_0/docs/works-m"
     "od.xml"}.

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
          maps:put(variables, [],
              maps:put(ctx_var, 'Ctx',
                  maps:put(parameters, [],
                      lists:foldl(fun ({K, V}, M) ->
                           maps:put(K,
                               V,
                               M)
                        end,
                        maps:new(),
                        Options))))),
    xqerl_context:init(),
    Ctx = Ctx0,
    xqerl_types:return_value(xqerl_fn:boolean(Ctx,
                     xqerl_operators:eff_bool_val(xqerl_fn:contains(Ctx,
                                      xqerl_types:as_seq(
                                          xqerl_fn:'document-uri'(Ctx,
                                                   xqerl_types:as_seq(xqerl_fn:doc(Ctx,
                                                               xqerl_types:as_seq(xqerl_context:get_variable_value({uri,
                                                                                      1},
                                                                                     uri(Ctx)),
                                                                        {xqSeqType,
                                                                         'xs:string',
                                                                         zero_or_one})),
                                                            {xqSeqType,
                                                             {xqKindTest,
                                                              node,
                                                              undefined,
                                                              undefined,
                                                              undefined},
                                                             zero_or_one})),
                                          {xqSeqType,
                                           'xs:string',
                                           zero_or_one}),
                                      xqerl_types:as_seq(xqerl_context:get_variable_value({uri,
                                                        1},
                                                       uri(Ctx)),
                                          {xqSeqType,
                                           'xs:string',
                                           zero_or_one})))
                  orelse
                  xqerl_operators:eff_bool_val(xqerl_operators:general_compare('=',
                                            xqerl_fn:'document-uri'(Ctx,
                                                     xqerl_types:as_seq(xqerl_fn:doc(Ctx,
                                                                 xqerl_types:as_seq(xqerl_context:get_variable_value({uri,
                                                                                   1},
                                                                                  uri(Ctx)),
                                                                     {xqSeqType,
                                                                      'xs:string',
                                                                      zero_or_one})),
                                                         {xqSeqType,
                                                          {xqKindTest,
                                                           node,
                                                           undefined,
                                                           undefined,
                                                           undefined},
                                                          zero_or_one})),
                                            {xqAtomicValue,
                                             'xs:string',
                                             []})))).