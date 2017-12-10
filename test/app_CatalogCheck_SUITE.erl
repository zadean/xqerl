-module('app_CatalogCheck_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Catalog001'/1]).
-export(['Catalog002'/1]).
-export(['Catalog003'/1]).
-export(['Catalog004'/1]).
-export(['Catalog005'/1]).
-export(['Catalog006'/1]).
-export(['Catalog007'/1]).
-export(['Catalog008'/1]).
-export(['Catalog009'/1]).
-export(['Catalog010'/1]).
-export(['Catalog011'/1]).
-export(['Catalog012'/1]).
-export(['Catalog013'/1]).
-export(['Catalog014'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:absname_join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "app")

,[{base_dir, BaseDir}|Config].
all() -> [
   'Catalog001',
   'Catalog002',
   'Catalog003',
   'Catalog004',
   'Catalog005',
   'Catalog006',
   'Catalog007',
   'Catalog008',
   'Catalog009',
   'Catalog010',
   'Catalog011',
   'Catalog012',
   'Catalog013',
   'Catalog014'].
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
];
environment('catalog',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../catalog.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../catalog-schema.xsd"),"http://www.w3.org/2010/09/qt-fots-catalog"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Catalog001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog012'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog013'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'Catalog014'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
