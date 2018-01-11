-module('method_text_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Serialization-text-1'/1]).
-export(['Serialization-text-2'/1]).
-export(['Serialization-text-3'/1]).
-export(['Serialization-text-4'/1]).
-export(['Serialization-text-5'/1]).
-export(['Serialization-text-6'/1]).
-export(['Serialization-text-7'/1]).
-export(['Serialization-text-7a'/1]).
-export(['Serialization-text-8'/1]).
-export(['Serialization-text-8a'/1]).
-export(['Serialization-text-9'/1]).
-export(['Serialization-text-10'/1]).
-export(['Serialization-text-11'/1]).
-export(['Serialization-text-13'/1]).
-export(['Serialization-text-14'/1]).
-export(['Serialization-text-15'/1]).
-export(['Serialization-text-16'/1]).
-export(['Serialization-text-17'/1]).
-export(['Serialization-text-18'/1]).
-export(['Serialization-text-19'/1]).
-export(['Serialization-text-20'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "ser")

,[{base_dir, BaseDir}|Config].
all() -> [
   'Serialization-text-1',
   'Serialization-text-2',
   'Serialization-text-3',
   'Serialization-text-4',
   'Serialization-text-5',
   'Serialization-text-6',
   'Serialization-text-7',
   'Serialization-text-7a',
   'Serialization-text-8',
   'Serialization-text-8a',
   'Serialization-text-9',
   'Serialization-text-10',
   'Serialization-text-11',
   'Serialization-text-13',
   'Serialization-text-14',
   'Serialization-text-15',
   'Serialization-text-16',
   'Serialization-text-17',
   'Serialization-text-18',
   'Serialization-text-19',
   'Serialization-text-20'].
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
'Serialization-text-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-7a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-8a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'Serialization-text-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
