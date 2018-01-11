-module('method_xhtml_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Serialization-xhtml-1'/1]).
-export(['Serialization-xhtml-1a'/1]).
-export(['Serialization-xhtml-2'/1]).
-export(['Serialization-xhtml-3'/1]).
-export(['Serialization-xhtml-4'/1]).
-export(['Serialization-xhtml-18'/1]).
-export(['Serialization-xhtml-19a'/1]).
-export(['Serialization-xhtml-19b'/1]).
-export(['Serialization-xhtml-19c'/1]).
-export(['Serialization-xhtml-20'/1]).
-export(['Serialization-xhtml-21'/1]).
-export(['Serialization-xhtml-22'/1]).
-export(['Serialization-xhtml-23'/1]).
-export(['Serialization-xhtml-24'/1]).
-export(['Serialization-xhtml-25'/1]).
-export(['Serialization-xhtml-26'/1]).
-export(['Serialization-xhtml-27'/1]).
-export(['Serialization-xhtml-27a'/1]).
-export(['Serialization-xhtml-28'/1]).
-export(['Serialization-xhtml-29'/1]).
-export(['Serialization-xhtml-30'/1]).
-export(['Serialization-xhtml-31'/1]).
-export(['Serialization-xhtml-32'/1]).
-export(['Serialization-xhtml-33'/1]).
-export(['Serialization-xhtml-34'/1]).
-export(['Serialization-xhtml-35'/1]).
-export(['Serialization-xhtml-36'/1]).
-export(['Serialization-xhtml-36a'/1]).
-export(['Serialization-xhtml-37'/1]).
-export(['Serialization-xhtml-37a'/1]).
-export(['Serialization-xhtml-38'/1]).
-export(['Serialization-xhtml-39'/1]).
-export(['Serialization-xhtml-40'/1]).
-export(['Serialization-xhtml-41'/1]).
-export(['Serialization-xhtml-42'/1]).
-export(['Serialization-xhtml-50'/1]).
-export(['Serialization-xhtml-51'/1]).
-export(['Serialization-xhtml-52'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "ser")

,[{base_dir, BaseDir}|Config].
all() -> [
   'Serialization-xhtml-1',
   'Serialization-xhtml-1a',
   'Serialization-xhtml-2',
   'Serialization-xhtml-3',
   'Serialization-xhtml-4',
   'Serialization-xhtml-18',
   'Serialization-xhtml-19a',
   'Serialization-xhtml-19b',
   'Serialization-xhtml-19c',
   'Serialization-xhtml-20',
   'Serialization-xhtml-21',
   'Serialization-xhtml-22',
   'Serialization-xhtml-23',
   'Serialization-xhtml-24',
   'Serialization-xhtml-25',
   'Serialization-xhtml-26',
   'Serialization-xhtml-27',
   'Serialization-xhtml-27a',
   'Serialization-xhtml-28',
   'Serialization-xhtml-29',
   'Serialization-xhtml-30',
   'Serialization-xhtml-31',
   'Serialization-xhtml-32',
   'Serialization-xhtml-33',
   'Serialization-xhtml-34',
   'Serialization-xhtml-35',
   'Serialization-xhtml-36',
   'Serialization-xhtml-36a',
   'Serialization-xhtml-37',
   'Serialization-xhtml-37a',
   'Serialization-xhtml-38',
   'Serialization-xhtml-39',
   'Serialization-xhtml-40',
   'Serialization-xhtml-41',
   'Serialization-xhtml-42',
   'Serialization-xhtml-50',
   'Serialization-xhtml-51',
   'Serialization-xhtml-52'].
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
'Serialization-xhtml-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-1a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-19a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-19b'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-19c'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-27a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-36a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-37a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-39'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-40'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-41'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-42'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-50'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-51'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xhtml-52'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
