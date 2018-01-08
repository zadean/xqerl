-module('method_xml_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['K2-Serialization-1'/1]).
-export(['K2-Serialization-2'/1]).
-export(['K2-Serialization-3'/1]).
-export(['K2-Serialization-4'/1]).
-export(['K2-Serialization-5'/1]).
-export(['K2-Serialization-6'/1]).
-export(['K2-Serialization-7'/1]).
-export(['K2-Serialization-7a'/1]).
-export(['K2-Serialization-8'/1]).
-export(['K2-Serialization-8a'/1]).
-export(['K2-Serialization-9'/1]).
-export(['K2-Serialization-10'/1]).
-export(['K2-Serialization-11'/1]).
-export(['K2-Serialization-12'/1]).
-export(['K2-Serialization-13'/1]).
-export(['K2-Serialization-14'/1]).
-export(['K2-Serialization-15'/1]).
-export(['K2-Serialization-16'/1]).
-export(['K2-Serialization-17'/1]).
-export(['K2-Serialization-18'/1]).
-export(['K2-Serialization-20'/1]).
-export(['K2-Serialization-21'/1]).
-export(['K2-Serialization-22'/1]).
-export(['K2-Serialization-23'/1]).
-export(['K2-Serialization-24'/1]).
-export(['K2-Serialization-25'/1]).
-export(['K2-Serialization-26'/1]).
-export(['K2-Serialization-27'/1]).
-export(['K2-Serialization-28'/1]).
-export(['K2-Serialization-29'/1]).
-export(['K2-Serialization-30'/1]).
-export(['K2-Serialization-31'/1]).
-export(['K2-Serialization-32'/1]).
-export(['K2-Serialization-33'/1]).
-export(['K2-Serialization-34'/1]).
-export(['K2-Serialization-35'/1]).
-export(['K2-Serialization-36'/1]).
-export(['K2-Serialization-37'/1]).
-export(['K2-Serialization-38'/1]).
-export(['K2-Serialization-39'/1]).
-export(['Serialization-xml-01'/1]).
-export(['Serialization-xml-02'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "ser")

,[{base_dir, BaseDir}|Config].
all() -> [
   'K2-Serialization-1',
   'K2-Serialization-2',
   'K2-Serialization-3',
   'K2-Serialization-4',
   'K2-Serialization-5',
   'K2-Serialization-6',
   'K2-Serialization-7',
   'K2-Serialization-7a',
   'K2-Serialization-8',
   'K2-Serialization-8a',
   'K2-Serialization-9',
   'K2-Serialization-10',
   'K2-Serialization-11',
   'K2-Serialization-12',
   'K2-Serialization-13',
   'K2-Serialization-14',
   'K2-Serialization-15',
   'K2-Serialization-16',
   'K2-Serialization-17',
   'K2-Serialization-18',
   'K2-Serialization-20',
   'K2-Serialization-21',
   'K2-Serialization-22',
   'K2-Serialization-23',
   'K2-Serialization-24',
   'K2-Serialization-25',
   'K2-Serialization-26',
   'K2-Serialization-27',
   'K2-Serialization-28',
   'K2-Serialization-29',
   'K2-Serialization-30',
   'K2-Serialization-31',
   'K2-Serialization-32',
   'K2-Serialization-33',
   'K2-Serialization-34',
   'K2-Serialization-35',
   'K2-Serialization-36',
   'K2-Serialization-37',
   'K2-Serialization-38',
   'K2-Serialization-39',
   'Serialization-xml-01',
   'Serialization-xml-02'].
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{"file://"++filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
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
{sources, [{"file://"++filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
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
'K2-Serialization-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-7a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-8a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'K2-Serialization-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-24'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-25'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-26'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-27'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-28'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-29'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-30'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-31'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-32'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-33'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-34'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-35'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-36'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-37'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-38'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'K2-Serialization-39'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-xml-01'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-xml-02'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
