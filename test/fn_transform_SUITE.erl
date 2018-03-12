-module('fn_transform_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-transform-1'/1]).
-export(['fn-transform-1a'/1]).
-export(['fn-transform-1b'/1]).
-export(['fn-transform-1c'/1]).
-export(['fn-transform-1d'/1]).
-export(['fn-transform-1e'/1]).
-export(['fn-transform-2'/1]).
-export(['fn-transform-3'/1]).
-export(['fn-transform-3a'/1]).
-export(['fn-transform-4'/1]).
-export(['fn-transform-5'/1]).
-export(['fn-transform-6'/1]).
-export(['fn-transform-7'/1]).
-export(['fn-transform-8'/1]).
-export(['fn-transform-9'/1]).
-export(['fn-transform-10'/1]).
-export(['fn-transform-11'/1]).
-export(['fn-transform-12'/1]).
-export(['fn-transform-13'/1]).
-export(['fn-transform-13a'/1]).
-export(['fn-transform-14'/1]).
-export(['fn-transform-15'/1]).
-export(['fn-transform-16'/1]).
-export(['fn-transform-17'/1]).
-export(['fn-transform-18'/1]).
-export(['fn-transform-19'/1]).
-export(['fn-transform-20'/1]).
-export(['fn-transform-21'/1]).
-export(['fn-transform-22'/1]).
-export(['fn-transform-23'/1]).
-export(['fn-transform-24'/1]).
-export(['fn-transform-25'/1]).
-export(['fn-transform-26'/1]).
-export(['fn-transform-27'/1]).
-export(['fn-transform-28'/1]).
-export(['fn-transform-29'/1]).
-export(['fn-transform-30'/1]).
-export(['fn-transform-31'/1]).
-export(['fn-transform-32'/1]).
-export(['fn-transform-33'/1]).
-export(['fn-transform-34'/1]).
-export(['fn-transform-35'/1]).
-export(['fn-transform-36'/1]).
-export(['fn-transform-36a'/1]).
-export(['fn-transform-37'/1]).
-export(['fn-transform-38'/1]).
-export(['fn-transform-39'/1]).
-export(['fn-transform-40'/1]).
-export(['fn-transform-41'/1]).
-export(['fn-transform-42'/1]).
-export(['fn-transform-43'/1]).
-export(['fn-transform-44'/1]).
-export(['fn-transform-45'/1]).
-export(['fn-transform-46'/1]).
-export(['fn-transform-47'/1]).
-export(['fn-transform-48'/1]).
-export(['fn-transform-50'/1]).
-export(['fn-transform-51'/1]).
-export(['fn-transform-52'/1]).
-export(['fn-transform-53'/1]).
-export(['fn-transform-54'/1]).
-export(['fn-transform-55'/1]).
-export(['fn-transform-56'/1]).
-export(['fn-transform-57'/1]).
-export(['fn-transform-58'/1]).
-export(['fn-transform-60'/1]).
-export(['fn-transform-61'/1]).
-export(['fn-transform-62'/1]).
-export(['fn-transform-63'/1]).
-export(['fn-transform-64'/1]).
-export(['fn-transform-65'/1]).
-export(['fn-transform-66'/1]).
-export(['fn-transform-67'/1]).
-export(['fn-transform-68'/1]).
-export(['fn-transform-69'/1]).
-export(['fn-transform-70'/1]).
-export(['fn-transform-71'/1]).
-export(['fn-transform-72'/1]).
-export(['fn-transform-73'/1]).
-export(['fn-transform-74'/1]).
-export(['fn-transform-75'/1]).
-export(['fn-transform-76'/1]).
-export(['fn-transform-77'/1]).
-export(['fn-transform-78'/1]).
-export(['fn-transform-79'/1]).
-export(['fn-transform-80'/1]).
-export(['fn-transform-81'/1]).
-export(['fn-transform-82a'/1]).
-export(['fn-transform-82b'/1]).
-export(['fn-transform-82c'/1]).
-export(['fn-transform-82d'/1]).
-export(['fn-transform-82e'/1]).
-export(['fn-transform-err-1'/1]).
-export(['fn-transform-err-2'/1]).
-export(['fn-transform-err-3'/1]).
-export(['fn-transform-err-4'/1]).
-export(['fn-transform-err-5'/1]).
-export(['fn-transform-err-6'/1]).
-export(['fn-transform-err-7'/1]).
-export(['fn-transform-err-8'/1]).
-export(['fn-transform-err-9'/1]).
-export(['fn-transform-err-9a'/1]).
-export(['fn-transform-err-10'/1]).
-export(['fn-transform-err-11'/1]).
-export(['fn-transform-err-12'/1]).
-export(['fn-transform-err-13'/1]).
-export(['fn-transform-err-14'/1]).
-export(['fn-transform-err-15'/1]).
-export(['fn-transform-err-16'/1]).
-export(['fn-transform-901'/1]).
-export(['fn-transform-902'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'fn-transform-1',
   'fn-transform-1a',
   'fn-transform-1b',
   'fn-transform-1c',
   'fn-transform-1d',
   'fn-transform-1e',
   'fn-transform-2',
   'fn-transform-3',
   'fn-transform-3a',
   'fn-transform-4',
   'fn-transform-5',
   'fn-transform-6',
   'fn-transform-7',
   'fn-transform-8',
   'fn-transform-9',
   'fn-transform-10',
   'fn-transform-11',
   'fn-transform-12',
   'fn-transform-13',
   'fn-transform-13a',
   'fn-transform-14',
   'fn-transform-15',
   'fn-transform-16',
   'fn-transform-17',
   'fn-transform-18',
   'fn-transform-19',
   'fn-transform-20',
   'fn-transform-21',
   'fn-transform-22',
   'fn-transform-23',
   'fn-transform-24',
   'fn-transform-25',
   'fn-transform-26',
   'fn-transform-27',
   'fn-transform-28',
   'fn-transform-29',
   'fn-transform-30',
   'fn-transform-31',
   'fn-transform-32',
   'fn-transform-33',
   'fn-transform-34',
   'fn-transform-35',
   'fn-transform-36',
   'fn-transform-36a',
   'fn-transform-37',
   'fn-transform-38',
   'fn-transform-39',
   'fn-transform-40',
   'fn-transform-41',
   'fn-transform-42',
   'fn-transform-43',
   'fn-transform-44',
   'fn-transform-45',
   'fn-transform-46',
   'fn-transform-47',
   'fn-transform-48',
   'fn-transform-50',
   'fn-transform-51',
   'fn-transform-52',
   'fn-transform-53',
   'fn-transform-54',
   'fn-transform-55',
   'fn-transform-56',
   'fn-transform-57',
   'fn-transform-58',
   'fn-transform-60',
   'fn-transform-61',
   'fn-transform-62',
   'fn-transform-63',
   'fn-transform-64',
   'fn-transform-65',
   'fn-transform-66',
   'fn-transform-67',
   'fn-transform-68',
   'fn-transform-69',
   'fn-transform-70',
   'fn-transform-71',
   'fn-transform-72',
   'fn-transform-73',
   'fn-transform-74',
   'fn-transform-75',
   'fn-transform-76',
   'fn-transform-77',
   'fn-transform-78',
   'fn-transform-79',
   'fn-transform-80',
   'fn-transform-81',
   'fn-transform-82a',
   'fn-transform-82b',
   'fn-transform-82c',
   'fn-transform-82d',
   'fn-transform-82e',
   'fn-transform-err-1',
   'fn-transform-err-2',
   'fn-transform-err-3',
   'fn-transform-err-4',
   'fn-transform-err-5',
   'fn-transform-err-6',
   'fn-transform-err-7',
   'fn-transform-err-8',
   'fn-transform-err-9',
   'fn-transform-err-9a',
   'fn-transform-err-10',
   'fn-transform-err-11',
   'fn-transform-err-12',
   'fn-transform-err-13',
   'fn-transform-err-14',
   'fn-transform-err-15',
   'fn-transform-err-16',
   'fn-transform-901',
   'fn-transform-902'].
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
environment('works-mod-uri2',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".","http://www.w3.org/fots/docs/works-mod.xml"},
{filename:join(BaseDir, "transform/render.xsl"), "","http://www.w3.org/fots/fn/transform/render.xsl"}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, [{"uri","xs:string","'http://www.w3.org/fots/docs/works-mod.xml'"},
{"render","xs:string","'http://www.w3.org/fots/fn/transform/render.xsl'"},
{"base-uri","xs:string","'http://www.w3.org/fots/fn/transform/output-doc.xml'"}]},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod-local',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), "$works",""},
{filename:join(BaseDir, "transform/render.xsl"), "$render",""},
{filename:join(BaseDir, "transform/include.xsl"), "$include",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('variable-uri',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "transform/variable.xsl"), ".","http://www.w3.org/fots/fn/transform/variable.xsl"}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, [{"variable-uri","xs:string","'http://www.w3.org/fots/fn/transform/variable.xsl'"}]},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('variable-with-context',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "transform/variable-with-context.xsl"), "$stylesheet",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('multiple-result-docs',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "transform/multipledocs.xsl"), "$multipledocs",""},
{filename:join(BaseDir, "transform/sections.xml"), "$sections",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'fn-transform-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-1a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-1b'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-1c'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-1d'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-1e'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-3a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-13a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-27'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT30"}.
'fn-transform-28'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-29'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-30'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-31'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-32'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-33'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-34'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-35'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-36'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-36a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-37'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-38'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-39'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-40'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-41'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-42'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-43'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-44'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-45'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-46'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-47'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-48'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-50'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-51'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-52'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-53'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-54'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-55'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-56'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-57'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-58'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-60'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-61'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-62'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-63'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-64'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-65'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-66'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-67'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-68'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-69'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-70'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-71'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-72'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-73'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-74'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-75'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-76'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-77'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-78'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-79'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-80'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-81'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-82a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-82b'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-82c'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-82d'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-82e'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-9a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"fn-transform-XSLT"}.
'fn-transform-901'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $result := fn:transform(map {\"stylesheet-location\" : $render, \"source-node\" : fn:doc($uri)})return $result(\"output\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri2',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-transform-901.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOXT0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-transform-902'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
            let $xsl  :=\"<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='3.0'>
                <xsl:param name='static-param' static='yes' select='&quot;success&quot;'/>
                <xsl:template match='/'>
                    <out><xsl:value-of select='$static-param'/></out>
                </xsl:template>
            </xsl:stylesheet>\"
            return
            transform(map{\"stylesheet-node\":parse-xml($xsl), \"source-node\":parse-xml(\"<doc>this</doc>\"), 
            \"static-params\":map{QName('','static-param'):\"Hello World\"}
            })
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-transform-902.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOXT0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
