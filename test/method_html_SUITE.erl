-module('method_html_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Serialization-html-1'/1]).
-export(['Serialization-html-2'/1]).
-export(['Serialization-html-3'/1]).
-export(['Serialization-html-4'/1]).
-export(['Serialization-html-5'/1]).
-export(['Serialization-html-6'/1]).
-export(['Serialization-html-7'/1]).
-export(['Serialization-html-8'/1]).
-export(['Serialization-html-9'/1]).
-export(['Serialization-html-10'/1]).
-export(['Serialization-html-11'/1]).
-export(['Serialization-html-12'/1]).
-export(['Serialization-html-13'/1]).
-export(['Serialization-html-14'/1]).
-export(['Serialization-html-15'/1]).
-export(['Serialization-html-16'/1]).
-export(['Serialization-html-17'/1]).
-export(['Serialization-html-18'/1]).
-export(['Serialization-html-19a'/1]).
-export(['Serialization-html-19b'/1]).
-export(['Serialization-html-19c'/1]).
-export(['Serialization-html-20'/1]).
-export(['Serialization-html-21'/1]).
-export(['Serialization-html-22'/1]).
-export(['Serialization-html-23'/1]).
-export(['Serialization-html-24'/1]).
-export(['Serialization-html-25'/1]).
-export(['Serialization-html-26'/1]).
-export(['Serialization-html-27'/1]).
-export(['Serialization-html-28'/1]).
-export(['Serialization-html-29'/1]).
-export(['Serialization-html-30'/1]).
-export(['Serialization-html-31'/1]).
-export(['Serialization-html-32'/1]).
-export(['Serialization-html-33'/1]).
-export(['Serialization-html-34'/1]).
-export(['Serialization-html-35'/1]).
-export(['Serialization-html-36'/1]).
-export(['Serialization-html-37'/1]).
-export(['Serialization-html-38'/1]).
-export(['Serialization-html-39'/1]).
-export(['Serialization-html-40'/1]).
-export(['Serialization-html-41'/1]).
-export(['Serialization-html-42'/1]).
-export(['Serialization-html-43'/1]).
-export(['Serialization-html-44'/1]).
-export(['Serialization-html-45'/1]).
-export(['Serialization-html-46'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_ds),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "ser")

,[{base_dir, BaseDir}|Config].
all() -> [
   'Serialization-html-1',
   'Serialization-html-2',
   'Serialization-html-3',
   'Serialization-html-4',
   'Serialization-html-5',
   'Serialization-html-6',
   'Serialization-html-7',
   'Serialization-html-8',
   'Serialization-html-9',
   'Serialization-html-10',
   'Serialization-html-11',
   'Serialization-html-12',
   'Serialization-html-13',
   'Serialization-html-14',
   'Serialization-html-15',
   'Serialization-html-16',
   'Serialization-html-17',
   'Serialization-html-18',
   'Serialization-html-19a',
   'Serialization-html-19b',
   'Serialization-html-19c',
   'Serialization-html-20',
   'Serialization-html-21',
   'Serialization-html-22',
   'Serialization-html-23',
   'Serialization-html-24',
   'Serialization-html-25',
   'Serialization-html-26',
   'Serialization-html-27',
   'Serialization-html-28',
   'Serialization-html-29',
   'Serialization-html-30',
   'Serialization-html-31',
   'Serialization-html-32',
   'Serialization-html-33',
   'Serialization-html-34',
   'Serialization-html-35',
   'Serialization-html-36',
   'Serialization-html-37',
   'Serialization-html-38',
   'Serialization-html-39',
   'Serialization-html-40',
   'Serialization-html-41',
   'Serialization-html-42',
   'Serialization-html-43',
   'Serialization-html-44',
   'Serialization-html-45',
   'Serialization-html-46'].
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
'Serialization-html-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-19a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-19b'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-19c'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-27'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-28'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-29'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-30'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-31'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-32'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-33'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-34'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-35'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-36'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-37'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-38'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-39'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-40'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}.
'Serialization-html-41'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-42'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-43'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-44'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-45'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
'Serialization-html-46'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.
