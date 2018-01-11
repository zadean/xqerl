-module('method_json_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Serialization-json-1'/1]).
-export(['Serialization-json-2'/1]).
-export(['Serialization-json-3'/1]).
-export(['Serialization-json-4'/1]).
-export(['Serialization-json-5'/1]).
-export(['Serialization-json-6'/1]).
-export(['Serialization-json-7'/1]).
-export(['Serialization-json-8'/1]).
-export(['Serialization-json-9'/1]).
-export(['Serialization-json-10'/1]).
-export(['Serialization-json-11'/1]).
-export(['Serialization-json-12'/1]).
-export(['Serialization-json-13'/1]).
-export(['Serialization-json-14'/1]).
-export(['Serialization-json-15'/1]).
-export(['Serialization-json-16'/1]).
-export(['Serialization-json-17'/1]).
-export(['Serialization-json-18'/1]).
-export(['Serialization-json-19'/1]).
-export(['Serialization-json-20'/1]).
-export(['Serialization-json-21'/1]).
-export(['Serialization-json-22'/1]).
-export(['Serialization-json-23'/1]).
-export(['Serialization-json-24'/1]).
-export(['Serialization-json-25'/1]).
-export(['Serialization-json-26'/1]).
-export(['Serialization-json-27'/1]).
-export(['Serialization-json-28'/1]).
-export(['Serialization-json-29'/1]).
-export(['Serialization-json-30'/1]).
-export(['Serialization-json-31'/1]).
-export(['Serialization-json-32'/1]).
-export(['Serialization-json-33'/1]).
-export(['Serialization-json-34'/1]).
-export(['Serialization-json-35'/1]).
-export(['Serialization-json-36'/1]).
-export(['Serialization-json-37'/1]).
-export(['Serialization-json-38'/1]).
-export(['Serialization-json-39'/1]).
-export(['Serialization-json-40'/1]).
-export(['Serialization-json-41'/1]).
-export(['Serialization-json-42'/1]).
-export(['Serialization-json-43'/1]).
-export(['Serialization-json-44'/1]).
-export(['Serialization-json-45'/1]).
-export(['Serialization-json-46'/1]).
-export(['Serialization-json-47'/1]).
-export(['Serialization-json-48'/1]).
-export(['Serialization-json-49'/1]).
-export(['Serialization-json-50'/1]).
-export(['Serialization-json-51'/1]).
-export(['Serialization-json-52'/1]).
-export(['Serialization-json-53'/1]).
-export(['Serialization-json-54'/1]).
-export(['Serialization-json-55'/1]).
-export(['Serialization-json-56'/1]).
-export(['Serialization-json-57'/1]).
-export(['Serialization-json-58'/1]).
-export(['Serialization-json-59'/1]).
-export(['Serialization-json-60'/1]).
-export(['Serialization-json-61'/1]).
-export(['Serialization-json-62'/1]).
-export(['Serialization-json-63'/1]).
-export(['Serialization-json-64'/1]).
-export(['Serialization-json-65'/1]).
-export(['Serialization-json-66'/1]).
-export(['Serialization-json-67'/1]).
-export(['Serialization-json-68'/1]).
-export(['Serialization-json-69'/1]).
-export(['Serialization-json-70'/1]).
-export(['Serialization-json-71'/1]).
-export(['Serialization-json-72'/1]).
-export(['Serialization-json-73'/1]).
-export(['Serialization-json-74'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "ser")

,[{base_dir, BaseDir}|Config].
all() -> [
   'Serialization-json-1',
   'Serialization-json-2',
   'Serialization-json-3',
   'Serialization-json-4',
   'Serialization-json-5',
   'Serialization-json-6',
   'Serialization-json-7',
   'Serialization-json-8',
   'Serialization-json-9',
   'Serialization-json-10',
   'Serialization-json-11',
   'Serialization-json-12',
   'Serialization-json-13',
   'Serialization-json-14',
   'Serialization-json-15',
   'Serialization-json-16',
   'Serialization-json-17',
   'Serialization-json-18',
   'Serialization-json-19',
   'Serialization-json-20',
   'Serialization-json-21',
   'Serialization-json-22',
   'Serialization-json-23',
   'Serialization-json-24',
   'Serialization-json-25',
   'Serialization-json-26',
   'Serialization-json-27',
   'Serialization-json-28',
   'Serialization-json-29',
   'Serialization-json-30',
   'Serialization-json-31',
   'Serialization-json-32',
   'Serialization-json-33',
   'Serialization-json-34',
   'Serialization-json-35',
   'Serialization-json-36',
   'Serialization-json-37',
   'Serialization-json-38',
   'Serialization-json-39',
   'Serialization-json-40',
   'Serialization-json-41',
   'Serialization-json-42',
   'Serialization-json-43',
   'Serialization-json-44',
   'Serialization-json-45',
   'Serialization-json-46',
   'Serialization-json-47',
   'Serialization-json-48',
   'Serialization-json-49',
   'Serialization-json-50',
   'Serialization-json-51',
   'Serialization-json-52',
   'Serialization-json-53',
   'Serialization-json-54',
   'Serialization-json-55',
   'Serialization-json-56',
   'Serialization-json-57',
   'Serialization-json-58',
   'Serialization-json-59',
   'Serialization-json-60',
   'Serialization-json-61',
   'Serialization-json-62',
   'Serialization-json-63',
   'Serialization-json-64',
   'Serialization-json-65',
   'Serialization-json-66',
   'Serialization-json-67',
   'Serialization-json-68',
   'Serialization-json-69',
   'Serialization-json-70',
   'Serialization-json-71',
   'Serialization-json-72',
   'Serialization-json-73',
   'Serialization-json-74'].
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
'Serialization-json-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-39'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-40'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-41'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-42'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-43'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-44'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-45'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-46'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-47'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-48'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-49'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-50'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-51'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-52'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-53'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-54'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-55'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-56'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-57'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-58'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-59'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-60'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-61'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-62'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-63'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-64'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-65'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-66'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-67'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-68'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-69'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-70'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-71'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-72'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-73'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-json-74'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
