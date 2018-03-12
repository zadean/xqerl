-module('method_adaptive_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Serialization-adaptive-01'/1]).
-export(['Serialization-adaptive-02'/1]).
-export(['Serialization-adaptive-03'/1]).
-export(['Serialization-adaptive-04'/1]).
-export(['Serialization-adaptive-05'/1]).
-export(['Serialization-adaptive-06'/1]).
-export(['Serialization-adaptive-07'/1]).
-export(['Serialization-adaptive-08'/1]).
-export(['Serialization-adaptive-09'/1]).
-export(['Serialization-adaptive-10'/1]).
-export(['Serialization-adaptive-11'/1]).
-export(['Serialization-adaptive-12'/1]).
-export(['Serialization-adaptive-13'/1]).
-export(['Serialization-adaptive-14'/1]).
-export(['Serialization-adaptive-15'/1]).
-export(['Serialization-adaptive-16'/1]).
-export(['Serialization-adaptive-17'/1]).
-export(['Serialization-adaptive-18'/1]).
-export(['Serialization-adaptive-19'/1]).
-export(['Serialization-adaptive-20'/1]).
-export(['Serialization-adaptive-21'/1]).
-export(['Serialization-adaptive-22'/1]).
-export(['Serialization-adaptive-23'/1]).
-export(['Serialization-adaptive-24'/1]).
-export(['Serialization-adaptive-25'/1]).
-export(['Serialization-adaptive-26'/1]).
-export(['Serialization-adaptive-27'/1]).
-export(['Serialization-adaptive-28'/1]).
-export(['Serialization-adaptive-29'/1]).
-export(['Serialization-adaptive-30'/1]).
-export(['Serialization-adaptive-31'/1]).
-export(['Serialization-adaptive-32'/1]).
-export(['Serialization-adaptive-33'/1]).
-export(['Serialization-adaptive-34'/1]).
-export(['Serialization-adaptive-35'/1]).
-export(['Serialization-adaptive-36'/1]).
-export(['Serialization-adaptive-37'/1]).
-export(['Serialization-adaptive-38'/1]).
-export(['Serialization-adaptive-39'/1]).
-export(['Serialization-adaptive-40'/1]).
-export(['Serialization-adaptive-41'/1]).
-export(['Serialization-adaptive-42'/1]).
-export(['Serialization-adaptive-43'/1]).
-export(['Serialization-adaptive-44'/1]).
-export(['Serialization-adaptive-45'/1]).
-export(['Serialization-adaptive-46'/1]).
-export(['Serialization-adaptive-47'/1]).
-export(['Serialization-adaptive-48'/1]).
-export(['Serialization-adaptive-49'/1]).
-export(['Serialization-adaptive-50'/1]).
-export(['Serialization-adaptive-51'/1]).
-export(['Serialization-adaptive-52'/1]).
-export(['Serialization-adaptive-53'/1]).
-export(['Serialization-adaptive-54'/1]).
-export(['Serialization-adaptive-55'/1]).
-export(['Serialization-adaptive-56'/1]).
-export(['Serialization-adaptive-57'/1]).
-export(['Serialization-adaptive-58'/1]).
-export(['Serialization-adaptive-59'/1]).
-export(['Serialization-adaptive-60'/1]).
-export(['Serialization-adaptive-61'/1]).
-export(['Serialization-adaptive-62'/1]).
-export(['Serialization-adaptive-63'/1]).
-export(['Serialization-adaptive-64'/1]).
-export(['Serialization-adaptive-65'/1]).
-export(['Serialization-adaptive-66'/1]).
-export(['Serialization-adaptive-67'/1]).
-export(['Serialization-adaptive-68'/1]).
-export(['Serialization-adaptive-69'/1]).
-export(['Serialization-adaptive-70'/1]).
-export(['Serialization-adaptive-71'/1]).
-export(['Serialization-adaptive-72'/1]).
-export(['Serialization-adaptive-73'/1]).
-export(['Serialization-adaptive-74'/1]).
-export(['Serialization-adaptive-75'/1]).
-export(['Serialization-adaptive-76'/1]).
-export(['Serialization-adaptive-77'/1]).
-export(['Serialization-adaptive-78'/1]).
-export(['Serialization-adaptive-79'/1]).
-export(['Serialization-adaptive-80'/1]).
-export(['Serialization-adaptive-81'/1]).
-export(['Serialization-adaptive-82'/1]).
-export(['Serialization-adaptive-83'/1]).
-export(['Serialization-adaptive-84'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "ser")

,[{base_dir, BaseDir}|Config].
all() -> [
   'Serialization-adaptive-01',
   'Serialization-adaptive-02',
   'Serialization-adaptive-03',
   'Serialization-adaptive-04',
   'Serialization-adaptive-05',
   'Serialization-adaptive-06',
   'Serialization-adaptive-07',
   'Serialization-adaptive-08',
   'Serialization-adaptive-09',
   'Serialization-adaptive-10',
   'Serialization-adaptive-11',
   'Serialization-adaptive-12',
   'Serialization-adaptive-13',
   'Serialization-adaptive-14',
   'Serialization-adaptive-15',
   'Serialization-adaptive-16',
   'Serialization-adaptive-17',
   'Serialization-adaptive-18',
   'Serialization-adaptive-19',
   'Serialization-adaptive-20',
   'Serialization-adaptive-21',
   'Serialization-adaptive-22',
   'Serialization-adaptive-23',
   'Serialization-adaptive-24',
   'Serialization-adaptive-25',
   'Serialization-adaptive-26',
   'Serialization-adaptive-27',
   'Serialization-adaptive-28',
   'Serialization-adaptive-29',
   'Serialization-adaptive-30',
   'Serialization-adaptive-31',
   'Serialization-adaptive-32',
   'Serialization-adaptive-33',
   'Serialization-adaptive-34',
   'Serialization-adaptive-35',
   'Serialization-adaptive-36',
   'Serialization-adaptive-37',
   'Serialization-adaptive-38',
   'Serialization-adaptive-39',
   'Serialization-adaptive-40',
   'Serialization-adaptive-41',
   'Serialization-adaptive-42',
   'Serialization-adaptive-43',
   'Serialization-adaptive-44',
   'Serialization-adaptive-45',
   'Serialization-adaptive-46',
   'Serialization-adaptive-47',
   'Serialization-adaptive-48',
   'Serialization-adaptive-49',
   'Serialization-adaptive-50',
   'Serialization-adaptive-51',
   'Serialization-adaptive-52',
   'Serialization-adaptive-53',
   'Serialization-adaptive-54',
   'Serialization-adaptive-55',
   'Serialization-adaptive-56',
   'Serialization-adaptive-57',
   'Serialization-adaptive-58',
   'Serialization-adaptive-59',
   'Serialization-adaptive-60',
   'Serialization-adaptive-61',
   'Serialization-adaptive-62',
   'Serialization-adaptive-63',
   'Serialization-adaptive-64',
   'Serialization-adaptive-65',
   'Serialization-adaptive-66',
   'Serialization-adaptive-67',
   'Serialization-adaptive-68',
   'Serialization-adaptive-69',
   'Serialization-adaptive-70',
   'Serialization-adaptive-71',
   'Serialization-adaptive-72',
   'Serialization-adaptive-73',
   'Serialization-adaptive-74',
   'Serialization-adaptive-75',
   'Serialization-adaptive-76',
   'Serialization-adaptive-77',
   'Serialization-adaptive-78',
   'Serialization-adaptive-79',
   'Serialization-adaptive-80',
   'Serialization-adaptive-81',
   'Serialization-adaptive-82',
   'Serialization-adaptive-83',
   'Serialization-adaptive-84'].
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
].
'Serialization-adaptive-01'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-02'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-03'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-04'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-05'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-06'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-07'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-08'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-09'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-27'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-28'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-29'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-30'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-31'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-32'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-33'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-34'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-35'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-36'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-37'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-38'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-39'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-40'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-41'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-42'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-43'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-44'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-45'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-46'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-47'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-48'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-49'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-50'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-51'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-52'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-53'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-54'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-55'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-56'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-57'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-58'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-59'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-60'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-61'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-62'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-63'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-64'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-65'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-66'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-67'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-68'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-69'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-70'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-71'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-72'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-73'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-74'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-75'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-76'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-77'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-78'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-79'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-80'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-81'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-82'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-83'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-adaptive-84'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
