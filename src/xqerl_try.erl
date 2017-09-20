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

-functions([{{qname,
         "http://www.w3.org/2005/xquery-local-functions",
         "local", "round"},
        {xqSeqType, 'xs:double', one}, [], {'fx$^1', 2}, 1,
        [{xqSeqType, 'xs:double', one}]},
       {{qname,
         "http://www.w3.org/2005/xquery-local-functions",
         "local", "ops"},
        {xqSeqType,
         {xqFunTest, function, [], undefined,
          [{xqSeqType, 'xs:double', one}],
          {xqSeqType, 'xs:double', one}},
         zero_or_many},
        [], {'fx$^4', 1}, 0, []}]).

-export([]).

-export(['fx$^1'/2, 'fx$^4'/1]).

'fx$^1'(Ctx0, Param__var_1) ->
    xqerl_types:as_seq(xqerl_fn:floor(Ctx0,
                  xqerl_types:as_seq(Param__var_1,
                      {xqSeqType,
                       'xs:numeric',
                       zero_or_one})),
             {xqSeqType, 'xs:double', one}).

'fx$^4'(Ctx0) ->
    xqerl_types:as_seq(xqerl_seq2:sort_seq(xqerl_seq2:append({xqFunction,
                           undefined,
                           undefined,
                           {qname,
                            "http://www.w3.org/2005/xpath-functions",
                            "fn",
                            "round-half-to-even"},
                           2, [],
                           {xqSeqType, item,
                            zero_or_many},
                           fun (Ctx__2,
                           Local__3) ->
                              xqerl_fn:'round-half-to-even'(Ctx__2,
                                        xqerl_types:as_seq(Local__3,
                                                 {xqSeqType,
                                             'xs:numeric',
                                             zero_or_one}),
                                        xqerl_types:as_seq({xqAtomicValue,
                                             'xs:integer',
                                             2},
                                                 {xqSeqType,
                                             'xs:integer',
                                             one}))
                           end},
                          xqerl_seq2:append({xqFunction,
                              undefined,
                              undefined,
                              undefined,
                              1,
                              [{xqSeqType,
                                item,
                                zero_or_many}],
                              {xqSeqType,
                               item,
                               zero_or_many},
                              fun
                                (Ctx__1,
                                 Param__var_2) ->
                                    xqerl_operators:add(Param__var_2,
                                         {xqAtomicValue,
                                          'xs:integer',
                                          1})
                              end},
                                  xqerl_seq2:append({xqFunction,
                                      undefined,
                                      undefined,
                                      {qname,
                                       "http://www.w3.org/2005/xpath-functions",
                                       "fn",
                                       "abs"},
                                      1,
                                      [{xqSeqType,
                                        'xs:numeric',
                                        zero_or_one}],
                                      {xqSeqType,
                                       'xs:numeric',
                                       zero_or_one},
                                      fun xqerl_fn:abs/2},
                                     xqerl_seq2:empty())))),
             {xqSeqType,
         {xqFunTest, function, [], undefined,
          [{xqSeqType, 'xs:double', one}],
          {xqSeqType, 'xs:double', one}},
         zero_or_many}).

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
    xqerl_types:return_value(xqerl_seq2:sort_seq(xqerl_seq2:append({xqAtomicValue,
                            'xs:string',
                            "~"},
                           xqerl_seq2:append(begin
                                     VarTup__1 =
                                    fun
                                      Local__8() ->
                                     fun
                                       IterLoop__1(Iter__1,
                                              Local__5) ->
                                           case
                                        xqerl_seq2:next(Iter__1)
                                          of
                                        empty ->
                                            Local__5;
                                        none ->
                                            Local__5;
                                        {Local__6,
                                         Local__4,
                                         Iter__2} ->
                                            [],
                                            Local__var_5 =
                                           Local__4,
                                            IterLoop__1(Iter__2,
                                              xqerl_flwor:stream_append({Local__var_5},
                                                         Local__5))
                                           end
                                     end(xqerl_seq2:get_seq_iter('fx$^4'(Ctx)),
                                         xqerl_flwor:stream_new())
                                    end(),
                                     fun
                                  IterLoop__2(Iter__3,
                                         Local__11) ->
                                      case
                                        xqerl_flwor:stream_next(Iter__3)
                                     of
                                        none ->
                                       xqerl_seq2:sort_seq(Local__11);
                                        {_,
                                    {Local__var_5},
                                    Iter__4} ->
                                       IterLoop__2(Iter__4,
                                              xqerl_seq2:append(begin
                                                   Local__9 =
                                                       xqerl_types:value(Local__var_5),
                                                   case
                                                     Local__9
                                                       ==
                                                       fun xqerl_fn:concat/2
                                                       of
                                                     true ->
                                                    Local__9(Ctx,
                                                        xqerl_seq2:sort_seq(xqerl_seq2:append(xqerl_xs:xs_untypedAtomic(Ctx,
                                                                                xqerl_types:as_seq({xqAtomicValue,
                                                                                          'xs:string',
                                                                                          "123.456"},
                                                                                         {xqSeqType,
                                                                                          'xs:anyAtomicType',
                                                                                          zero_or_one})),
                                                                     xqerl_seq2:empty())));
                                                     {xqFunction,
                                                      _,
                                                      _,
                                                      _,
                                                      _,
                                                      _,
                                                      _,
                                                      Local__10} ->
                                                    Local__10(Ctx,
                                                         xqerl_xs:xs_untypedAtomic(Ctx,
                                                                    xqerl_types:as_seq({xqAtomicValue,
                                                                         'xs:string',
                                                                         "123.456"},
                                                                        {xqSeqType,
                                                                         'xs:anyAtomicType',
                                                                         zero_or_one})));
                                                     _
                                                    when
                                                      erlang:is_map(Local__9) ->
                                                    xqerl_map:get(Ctx,
                                                             Local__9,
                                                             xqerl_xs:xs_untypedAtomic(Ctx,
                                                                   xqerl_types:as_seq({xqAtomicValue,
                                                                             'xs:string',
                                                                             "123.456"},
                                                                            {xqSeqType,
                                                                             'xs:anyAtomicType',
                                                                             zero_or_one})));
                                                     _ ->
                                                    Local__9(Ctx,
                                                        xqerl_xs:xs_untypedAtomic(Ctx,
                                                                   xqerl_types:as_seq({xqAtomicValue,
                                                                        'xs:string',
                                                                        "123.456"},
                                                                            {xqSeqType,
                                                                        'xs:anyAtomicType',
                                                                        zero_or_one})))
                                                   end
                                                 end,
                                                 Local__11))
                                      end
                                     end(xqerl_flwor:stream_iter(VarTup__1),
                                    xqerl_seq2:empty())
                                   end,
                                   xqerl_seq2:empty())))).