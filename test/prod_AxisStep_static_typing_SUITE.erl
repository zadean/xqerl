-module('prod_AxisStep_static_typing_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['ST-Axes001'/1]).
-export(['ST-Axes002'/1]).
-export(['ST-Axes003'/1]).
-export(['ST-Axes004'/1]).
-export(['ST-Axes005'/1]).
-export(['ST-Axes006'/1]).
-export(['ST-Axes007'/1]).
-export(['ST-Axes008'/1]).
-export(['ST-Axes009'/1]).
-export(['ST-Axes010'/1]).
-export(['ST-Axes011'/1]).
-export(['ST-Axes012'/1]).
-export(['ST-Axes013'/1]).
-export(['ST-Axes014'/1]).
-export(['ST-Axes015'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_ds),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'ST-Axes001',
   'ST-Axes002',
   'ST-Axes003',
   'ST-Axes004',
   'ST-Axes005',
   'ST-Axes006',
   'ST-Axes007',
   'ST-Axes008',
   'ST-Axes009',
   'ST-Axes010',
   'ST-Axes011',
   'ST-Axes012',
   'ST-Axes013',
   'ST-Axes014',
   'ST-Axes015'].
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('TopMany',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/TopMany.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('TreeCompass',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/TreeCompass.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('Tree1Text',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/Tree1Text.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'ST-Axes001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-Axes015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
