-module('prod_FLWORExpr_static_typing_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['statictyping-21'/1]).
-export(['statictyping-22'/1]).
-export(['statictyping-23'/1]).
-export(['statictyping-24'/1]).
-export(['ST-WhereExpr001'/1]).
-export(['ST-WhereExpr002'/1]).
-export(['statictyping-1'/1]).
-export(['statictyping-2'/1]).
-export(['statictyping-3'/1]).
-export(['statictyping-4'/1]).
-export(['statictyping-5'/1]).
-export(['statictyping-6'/1]).
-export(['statictyping-7'/1]).
-export(['statictyping-8'/1]).
-export(['statictyping-9'/1]).
-export(['statictyping-10'/1]).
-export(['statictyping-11'/1]).
-export(['statictyping-12'/1]).
-export(['statictyping-13'/1]).
-export(['statictyping-14'/1]).
-export(['statictyping-15'/1]).
-export(['statictyping-16'/1]).
-export(['statictyping-17'/1]).
-export(['statictyping-18'/1]).
-export(['statictyping-19'/1]).
-export(['statictyping-20'/1]).
-export(['ST-PITest-01'/1]).
-export(['ST-PITest-02'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'statictyping-21',
   'statictyping-22',
   'statictyping-23',
   'statictyping-24',
   'ST-WhereExpr001',
   'ST-WhereExpr002',
   'statictyping-1',
   'statictyping-2',
   'statictyping-3',
   'statictyping-4',
   'statictyping-5',
   'statictyping-6',
   'statictyping-7',
   'statictyping-8',
   'statictyping-9',
   'statictyping-10',
   'statictyping-11',
   'statictyping-12',
   'statictyping-13',
   'statictyping-14',
   'statictyping-15',
   'statictyping-16',
   'statictyping-17',
   'statictyping-18',
   'statictyping-19',
   'statictyping-20',
   'ST-PITest-01',
   'ST-PITest-02'].
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
environment('fsx',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "ForClause/fsx.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('fsx_NS',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "ForClause/fsx_NS.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'statictyping-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-WhereExpr001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-WhereExpr002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'statictyping-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-PITest-01'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
'ST-PITest-02'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.
