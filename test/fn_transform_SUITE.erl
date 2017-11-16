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
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
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
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
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
environment('qname') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('works-mod-uri2') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".","http://www.w3.org/fots/docs/works-mod.xml"},
{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform/render.xsl","","http://www.w3.org/fots/fn/transform/render.xsl"}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform.xml"}]},
{params, []},
{vars, [{"uri","xs:string","'http://www.w3.org/fots/docs/works-mod.xml'"},
{"render","xs:string","'http://www.w3.org/fots/fn/transform/render.xsl'"},
{"base-uri","xs:string","'http://www.w3.org/fots/fn/transform/output-doc.xml'"}]},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod-local') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml","$works",""},
{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform/render.xsl","$render",""},
{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform/include.xsl","$include",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('variable-uri') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform/variable.xsl",".","http://www.w3.org/fots/fn/transform/variable.xsl"}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform.xml"}]},
{params, []},
{vars, [{"variable-uri","xs:string","'http://www.w3.org/fots/fn/transform/variable.xsl'"}]},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('variable-with-context') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform/variable-with-context.xsl","$stylesheet",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform.xml"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('multiple-result-docs') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform/multipledocs.xsl","$multipledocs",""},
{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform/sections.xml","$sections",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xquery-3.1/QT3-test-suite/fn/transform.xml"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'fn-transform-1'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-1a'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-1b'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-1c'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-1d'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-1e'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-2'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-3'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-3a'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-4'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-5'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-6'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-7'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-8'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-9'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-10'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-11'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-12'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-13'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-13a'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-14'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-15'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-16'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-17'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-18'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-19'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-20'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-21'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-22'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-23'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-24'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-25'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-26'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-27'(_Config) ->
   Qry = "
            let $xsl  :=\"<xsl:stylesheet version='3.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
                <xsl:variable name='dateTime' static='yes' select='current-dateTime()'/>
                <xsl:template match='/'>
                    <x><xsl:value-of select='$dateTime'/></x>
                </xsl:template>
            </xsl:stylesheet>\"
            return let $output1 := fn:transform(map {\"stylesheet-text\" : $xsl, \"source-node\" : parse-xml(\"<doc1/>\"), \"cache\":false()})?output//x/string()
            return let $output2 := fn:transform(map {\"stylesheet-text\" : $xsl, \"source-node\" : parse-xml(\"<doc2/>\"), \"cache\":false()})?output//x/string()
            return trace($output1,'output1') eq trace($output2,'output2')
            ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-transform-28'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-29'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-30'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-31'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-32'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-33'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-34'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-35'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-36'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-36a'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-37'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-38'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-39'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-40'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-41'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-42'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-43'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-44'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-45'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-46'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-47'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-48'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-50'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-51'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-52'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-53'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-54'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-55'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-56'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-57'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-58'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-60'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-61'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-62'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-63'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-64'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-65'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-66'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-67'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-68'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-69'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-70'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-71'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-72'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-73'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-74'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-75'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-76'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-77'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-78'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-79'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-80'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-81'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-82a'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-82b'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-82c'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-82d'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-82e'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-1'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-2'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-3'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-4'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-5'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-6'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-7'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-8'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-9'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-9a'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-10'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-11'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-12'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-13'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-14'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-15'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-err-16'(_Config) ->
   {skip,"fn-transform-XSLT"}.
'fn-transform-901'(_Config) ->
   Qry = "let $result := fn:transform(map {\"stylesheet-location\" : $render, \"source-node\" : fn:doc($uri)})return $result(\"output\")",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod-uri2')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOXT0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-transform-902'(_Config) ->
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
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOXT0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
