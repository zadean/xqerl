%% @author Zack
%% @doc @todo Add description to xqerl_try.
-module(xqerl_try).
-include("xqerl.hrl").




-export([main/1]).

-export([]).

init() ->
    xqerl_context:init(),
    #{namespaces =>
     [{xqNamespace, 'no-namespace', []},
      {xqNamespace, "http://www.w3.org/2005/xquery-local-functions", "local"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions", "fn"},
      {xqNamespace, "http://www.w3.org/2001/XMLSchema-instance", "xsi"},
      {xqNamespace, "http://www.w3.org/XML/1998/namespace", "xml"},
      {xqNamespace, "http://www.w3.org/2001/XMLSchema", "xs"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions/math", "math"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions/map", "map"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions/array", "array"},
      {xqNamespace, "http://www.w3.org/2005/xqt-errors", "err"},
      {xqNamespace, "http://www.xqsharp.com/raytracer", "raytracer"},
      {xqNamespace, "http://www.xqsharp.com/raytracer/scene", "scene"}]}.


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 


main(Options) ->
    Ctx0 = xqerl_context:merge(init(), Options),
    Ctx = begin
       Local__1 = xqerl_types:promote(maps:get('context-item', Options,
                      xqerl_seq3:position_filter(Ctx0, {xqAtomicValue, 'xs:integer', 20},
                                  xqerl_seq3:flatten([xqerl_seq3:range({xqAtomicValue,
                                               'xs:integer', 1},
                                              {xqAtomicValue,
                                               'xs:integer', 17})]))),
                  {xqSeqType, item, zero_or_one}),
       xqerl_context:set_context_item(Ctx0, Local__1, 1,
                  {xqAtomicValue, 'xs:integer', xqerl_seq3:size(Local__1)})
     end,
    begin
      Query = xqerl_context:get_context_item(Ctx), xqerl_types:return_value(Query)
    end.