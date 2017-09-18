-module('prod_FunctionCall_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['FunctionCall-001'/1]).
-export(['FunctionCall-002'/1]).
-export(['FunctionCall-003'/1]).
-export(['FunctionCall-004'/1]).
-export(['FunctionCall-005'/1]).
-export(['FunctionCall-006'/1]).
-export(['FunctionCall-007'/1]).
-export(['FunctionCall-008'/1]).
-export(['FunctionCall-009'/1]).
-export(['FunctionCall-010'/1]).
-export(['FunctionCall-011'/1]).
-export(['FunctionCall-012'/1]).
-export(['FunctionCall-013'/1]).
-export(['FunctionCall-014'/1]).
-export(['FunctionCall-015'/1]).
-export(['FunctionCall-016'/1]).
-export(['FunctionCall-017'/1]).
-export(['FunctionCall-018'/1]).
-export(['FunctionCall-019'/1]).
-export(['FunctionCall-020'/1]).
-export(['FunctionCall-021'/1]).
-export(['FunctionCall-023'/1]).
-export(['FunctionCall-025'/1]).
-export(['FunctionCall-026'/1]).
-export(['FunctionCall-027'/1]).
-export(['FunctionCall-028'/1]).
-export(['FunctionCall-029'/1]).
-export(['FunctionCall-030'/1]).
-export(['FunctionCall-031'/1]).
-export(['FunctionCall-032'/1]).
-export(['FunctionCall-033'/1]).
-export(['FunctionCall-034'/1]).
-export(['FunctionCall-035'/1]).
-export(['FunctionCall-036'/1]).
-export(['FunctionCall-037'/1]).
-export(['FunctionCall-038'/1]).
-export(['FunctionCall-039'/1]).
-export(['FunctionCall-040'/1]).
-export(['FunctionCall-041'/1]).
-export(['FunctionCall-042'/1]).
-export(['FunctionCall-043'/1]).
-export(['K-FunctionCallExpr-1'/1]).
-export(['K-FunctionCallExpr-2'/1]).
-export(['K-FunctionCallExpr-3'/1]).
-export(['K-FunctionCallExpr-4'/1]).
-export(['K-FunctionCallExpr-5'/1]).
-export(['K-FunctionCallExpr-6'/1]).
-export(['K-FunctionCallExpr-7'/1]).
-export(['K-FunctionCallExpr-8'/1]).
-export(['K-FunctionCallExpr-9'/1]).
-export(['K-FunctionCallExpr-10'/1]).
-export(['K-FunctionCallExpr-11'/1]).
-export(['K-FunctionCallExpr-12'/1]).
-export(['K-FunctionCallExpr-13'/1]).
-export(['K-FunctionCallExpr-14'/1]).
-export(['K-FunctionCallExpr-15'/1]).
-export(['K-FunctionCallExpr-15a'/1]).
-export(['K-FunctionCallExpr-16'/1]).
-export(['K-FunctionCallExpr-16a'/1]).
-export(['K-FunctionCallExpr-17'/1]).
-export(['K-FunctionCallExpr-17a'/1]).
-export(['K-FunctionCallExpr-18'/1]).
-export(['K-FunctionCallExpr-19'/1]).
-export(['K-FunctionCallExpr-20'/1]).
-export(['K-FunctionCallExpr-21'/1]).
-export(['K-FunctionCallExpr-22'/1]).
-export(['K-FunctionCallExpr-23'/1]).
-export(['K-FunctionCallExpr-24'/1]).
-export(['K-FunctionCallExpr-25'/1]).
-export(['K-FunctionCallExpr-25a'/1]).
-export(['K-FunctionCallExpr-26'/1]).
-export(['K-FunctionCallExpr-27'/1]).
-export(['K-FunctionCallExpr-28'/1]).
-export(['K2-FunctionCallExpr-1'/1]).
-export(['K2-FunctionCallExpr-2'/1]).
-export(['K2-FunctionCallExpr-3'/1]).
-export(['K2-FunctionCallExpr-4'/1]).
-export(['K2-FunctionCallExpr-5'/1]).
-export(['K2-FunctionCallExpr-6'/1]).
-export(['K2-FunctionCallExpr-7'/1]).
-export(['K2-FunctionCallExpr-8'/1]).
-export(['K2-FunctionCallExpr-9'/1]).
-export(['K2-FunctionCallExpr-10'/1]).
-export(['K2-FunctionCallExpr-11'/1]).
-export(['K2-FunctionCallExpr-12'/1]).
-export(['K2-FunctionCallExpr-13'/1]).
-export(['cbcl-promotion-001'/1]).
-export(['cbcl-promotion-002'/1]).
-export(['cbcl-promotion-003'/1]).
-export(['cbcl-promotion-004'/1]).
-export(['cbcl-promotion-005'/1]).
-export(['cbcl-promotion-006'/1]).
-export(['cbcl-promotion-007'/1]).
-export(['function-call-reserved-function-names-001'/1]).
-export(['function-call-reserved-function-names-002'/1]).
-export(['function-call-reserved-function-names-003'/1]).
-export(['function-call-reserved-function-names-004'/1]).
-export(['function-call-reserved-function-names-005'/1]).
-export(['function-call-reserved-function-names-006'/1]).
-export(['function-call-reserved-function-names-007'/1]).
-export(['function-call-reserved-function-names-008'/1]).
-export(['function-call-reserved-function-names-009'/1]).
-export(['function-call-reserved-function-names-010'/1]).
-export(['function-call-reserved-function-names-011'/1]).
-export(['function-call-reserved-function-names-012'/1]).
-export(['function-call-reserved-function-names-013'/1]).
-export(['function-call-reserved-function-names-014'/1]).
-export(['function-call-reserved-function-names-015'/1]).
-export(['function-call-reserved-function-names-016'/1]).
-export(['function-call-reserved-function-names-017'/1]).
-export(['function-call-reserved-function-names-018'/1]).
-export(['function-call-reserved-function-names-019'/1]).
-export(['function-call-reserved-function-names-020'/1]).
-export(['function-call-reserved-function-names-021'/1]).
-export(['function-call-reserved-function-names-022'/1]).
-export(['function-call-reserved-function-names-023'/1]).
-export(['function-call-reserved-function-names-024'/1]).
-export(['function-call-reserved-function-names-025'/1]).
-export(['function-call-reserved-function-names-026'/1]).
-export(['function-call-reserved-function-names-027'/1]).
-export(['function-call-reserved-function-names-028'/1]).
-export(['function-call-reserved-function-names-029'/1]).
-export(['function-call-reserved-function-names-030'/1]).
-export(['function-call-reserved-function-names-031'/1]).
-export(['function-call-reserved-function-names-032'/1]).
-export(['function-call-reserved-function-names-033'/1]).
-export(['function-call-reserved-function-names-034'/1]).
-export(['function-call-reserved-function-names-035'/1]).
-export(['function-call-reserved-function-names-036'/1]).
-export(['function-call-reserved-function-names-037'/1]).
-export(['function-call-reserved-function-names-038'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'FunctionCall-001',
   'FunctionCall-002',
   'FunctionCall-003',
   'FunctionCall-004',
   'FunctionCall-005',
   'FunctionCall-006',
   'FunctionCall-007',
   'FunctionCall-008',
   'FunctionCall-009',
   'FunctionCall-010',
   'FunctionCall-011',
   'FunctionCall-012',
   'FunctionCall-013',
   'FunctionCall-014',
   'FunctionCall-015',
   'FunctionCall-016',
   'FunctionCall-017',
   'FunctionCall-018',
   'FunctionCall-019',
   'FunctionCall-020',
   'FunctionCall-021',
   'FunctionCall-023',
   'FunctionCall-025',
   'FunctionCall-026',
   'FunctionCall-027',
   'FunctionCall-028',
   'FunctionCall-029',
   'FunctionCall-030',
   'FunctionCall-031',
   'FunctionCall-032',
   'FunctionCall-033',
   'FunctionCall-034',
   'FunctionCall-035',
   'FunctionCall-036',
   'FunctionCall-037',
   'FunctionCall-038',
   'FunctionCall-039',
   'FunctionCall-040',
   'FunctionCall-041',
   'FunctionCall-042',
   'FunctionCall-043',
   'K-FunctionCallExpr-1',
   'K-FunctionCallExpr-2',
   'K-FunctionCallExpr-3',
   'K-FunctionCallExpr-4',
   'K-FunctionCallExpr-5',
   'K-FunctionCallExpr-6',
   'K-FunctionCallExpr-7',
   'K-FunctionCallExpr-8',
   'K-FunctionCallExpr-9',
   'K-FunctionCallExpr-10',
   'K-FunctionCallExpr-11',
   'K-FunctionCallExpr-12',
   'K-FunctionCallExpr-13',
   'K-FunctionCallExpr-14',
   'K-FunctionCallExpr-15',
   'K-FunctionCallExpr-15a',
   'K-FunctionCallExpr-16',
   'K-FunctionCallExpr-16a',
   'K-FunctionCallExpr-17',
   'K-FunctionCallExpr-17a',
   'K-FunctionCallExpr-18',
   'K-FunctionCallExpr-19',
   'K-FunctionCallExpr-20',
   'K-FunctionCallExpr-21',
   'K-FunctionCallExpr-22',
   'K-FunctionCallExpr-23',
   'K-FunctionCallExpr-24',
   'K-FunctionCallExpr-25',
   'K-FunctionCallExpr-25a',
   'K-FunctionCallExpr-26',
   'K-FunctionCallExpr-27',
   'K-FunctionCallExpr-28',
   'K2-FunctionCallExpr-1',
   'K2-FunctionCallExpr-2',
   'K2-FunctionCallExpr-3',
   'K2-FunctionCallExpr-4',
   'K2-FunctionCallExpr-5',
   'K2-FunctionCallExpr-6',
   'K2-FunctionCallExpr-7',
   'K2-FunctionCallExpr-8',
   'K2-FunctionCallExpr-9',
   'K2-FunctionCallExpr-10',
   'K2-FunctionCallExpr-11',
   'K2-FunctionCallExpr-12',
   'K2-FunctionCallExpr-13',
   'cbcl-promotion-001',
   'cbcl-promotion-002',
   'cbcl-promotion-003',
   'cbcl-promotion-004',
   'cbcl-promotion-005',
   'cbcl-promotion-006',
   'cbcl-promotion-007',
   'function-call-reserved-function-names-001',
   'function-call-reserved-function-names-002',
   'function-call-reserved-function-names-003',
   'function-call-reserved-function-names-004',
   'function-call-reserved-function-names-005',
   'function-call-reserved-function-names-006',
   'function-call-reserved-function-names-007',
   'function-call-reserved-function-names-008',
   'function-call-reserved-function-names-009',
   'function-call-reserved-function-names-010',
   'function-call-reserved-function-names-011',
   'function-call-reserved-function-names-012',
   'function-call-reserved-function-names-013',
   'function-call-reserved-function-names-014',
   'function-call-reserved-function-names-015',
   'function-call-reserved-function-names-016',
   'function-call-reserved-function-names-017',
   'function-call-reserved-function-names-018',
   'function-call-reserved-function-names-019',
   'function-call-reserved-function-names-020',
   'function-call-reserved-function-names-021',
   'function-call-reserved-function-names-022',
   'function-call-reserved-function-names-023',
   'function-call-reserved-function-names-024',
   'function-call-reserved-function-names-025',
   'function-call-reserved-function-names-026',
   'function-call-reserved-function-names-027',
   'function-call-reserved-function-names-028',
   'function-call-reserved-function-names-029',
   'function-call-reserved-function-names-030',
   'function-call-reserved-function-names-031',
   'function-call-reserved-function-names-032',
   'function-call-reserved-function-names-033',
   'function-call-reserved-function-names-034',
   'function-call-reserved-function-names-035',
   'function-call-reserved-function-names-036',
   'function-call-reserved-function-names-037',
   'function-call-reserved-function-names-038'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('ListUnionTypes') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/ValidateExpr/listunion.xsd","http://www.w3.org/XQueryTest/ListUnionTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'FunctionCall-001'(_Config) ->
   Qry = "concat(<a>X</a>, <a>Y</a>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        XY\n      ",
   case xqerl_test:string_value(Res) of
             "XY" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'FunctionCall-002'(_Config) ->
   Qry = "xs:boolean(<a>0</a>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'FunctionCall-003'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-004'(_Config) ->
   Qry = "\n         declare function local:f($in as xs:boolean) as xs:boolean { $in };\n         local:f(<a>0</a>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'FunctionCall-005'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-006'(_Config) ->
   Qry = "\n         let $f := function ($in as xs:boolean) as xs:boolean { $in }\n         return $f(<a>0</a>)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'FunctionCall-007'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-008'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-009'(_Config) ->
   Qry = "\n        declare function local:f($in as xs:decimal*) as xs:decimal {sum($in, 0.0)};\n        local:f(xs:NMTOKENS('1 1.2 1.3 1.4')!xs:untypedAtomic(.))\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          xs:decimal\n          4.9\n        \n      ",
 case  begin Tst2 = xqerl:run("4.9"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:decimal' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'FunctionCall-010'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-011'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-012'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-013'(_Config) ->
   Qry = "\n        declare function local:f($a as xs:integer, $b as xs:integer) as xs:integer {\n          data(<a>{$a}{$b}</a>)\n        };\n        local:f(12, 34)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          xs:integer\n          1234\n        \n      ",
 case  begin Tst2 = xqerl:run("1234"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:integer' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'FunctionCall-014'(_Config) ->
   Qry = "\n        let $f := function($a as xs:integer, $b as xs:integer) as xs:integer {\n          data(<a>{$a}{$b}</a>)\n        }\n        return $f(12, 34)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          xs:integer\n          1234\n        \n      ",
 case  begin Tst2 = xqerl:run("1234"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:integer' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'FunctionCall-015'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-016'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-017'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-018'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-019'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-020'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-021'(_Config) ->
   {skip,"schemaValidation"}.
'FunctionCall-023'(_Config) ->
   Qry = "string-join((<a>X</a>, <a>Y</a>, <a>Z</a>), '')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        XYZ\n      ",
   case xqerl_test:string_value(Res) of
             "XYZ" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'FunctionCall-025'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-026'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-027'(_Config) ->
   {skip,"XP30+"}.
'FunctionCall-028'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-029'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-030'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-031'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-032'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-033'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-034'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-035'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-036'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-037'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-038'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-039'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-040'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-041'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-042'(_Config) ->
   {skip,"schemaImport"}.
'FunctionCall-043'(_Config) ->
   {skip,"schemaImport"}.
'K-FunctionCallExpr-1'(_Config) ->
   Qry = "func-does-not-exist(1, 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionCallExpr-2'(_Config) ->
   Qry = "fn:func-does-not-exist(1, 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionCallExpr-3'(_Config) ->
   Qry = "xs:func-does-not-exist(1, 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionCallExpr-4'(_Config) ->
   Qry = "local:func-does-not-exist(1, 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionCallExpr-5'(_Config) ->
   Qry = "prefix-does-not-exist:func-does-not-exist(1, 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'K-FunctionCallExpr-6'(_Config) ->
   Qry = "f:f:()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionCallExpr-7'(_Config) ->
   Qry = ":f()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FunctionCallExpr-8'(_Config) ->
   Qry = ":f()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FunctionCallExpr-9'(_Config) ->
   Qry = "1fd()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FunctionCallExpr-10'(_Config) ->
   Qry = "p:f:lname()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionCallExpr-11'(_Config) ->
   Qry = "document(\"example.com/file.ext\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionCallExpr-12'(_Config) ->
   {skip,"XP20 XQ10"}.
'K-FunctionCallExpr-13'(_Config) ->
   {skip,"XP20 XQ10"}.
'K-FunctionCallExpr-14'(_Config) ->
   Qry = "key('func', \"a value\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionCallExpr-15'(_Config) ->
   {skip,"XQ10 XP20"}.
'K-FunctionCallExpr-15a'(_Config) ->
   Qry = "format-number(3, \"0000\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"0003\"\n      ",
 Tst = xqerl:run("\"0003\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-FunctionCallExpr-16'(_Config) ->
   {skip,"XQ10 XP20"}.
'K-FunctionCallExpr-16a'(_Config) ->
   Qry = "matches(format-time(current-time(), \"[H01]:[m01]\"), \"[0-2][0-9]:[0-5][0-9]\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n      	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionCallExpr-17'(_Config) ->
   {skip,"XQ10 XP20"}.
'K-FunctionCallExpr-17a'(_Config) ->
   Qry = "matches(format-time(current-time(), \"[H01]:[m01]\", (), (), ()), \"..:..\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n      	\n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionCallExpr-18'(_Config) ->
   Qry = "matches(format-dateTime(current-dateTime(), \"[Y0001]-[M01]-[D01]\"), \"[0-9]{4}-[0-9]{2}-[0-9]{2}\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionCallExpr-19'(_Config) ->
   Qry = "matches(format-dateTime(current-dateTime(), \"[Y0001]-[M01]-[D01]\", (), (), ()), \"....-..-..\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionCallExpr-20'(_Config) ->
   Qry = "matches(format-dateTime(current-dateTime(), \"[M01]/[D01]/[Y0001] at [H01]:[m01]:[s01]\"), \"[0-1][0-9]/[0-3][0-9]/[0-9]{4} at [0-9]{2}:[0-9]{2}:[0-9]{2}\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionCallExpr-21'(_Config) ->
   Qry = "matches(format-dateTime(current-dateTime(), \"[M01]/[D01]/[Y0001] at [H01]:[m01]:[s01]\", (), (), ()), \"../../.... at ..:..:..\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionCallExpr-22'(_Config) ->
   Qry = "current()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionCallExpr-23'(_Config) ->
   Qry = "unparsed-entity-uri(\"example.com/file.ext\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionCallExpr-24'(_Config) ->
   Qry = "unparsed-entity-public-id(\"entity\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionCallExpr-25'(_Config) ->
   {skip,"XQ10"}.
'K-FunctionCallExpr-25a'(_Config) ->
   Qry = "generate-id(<a/>) castable as xs:NCName",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionCallExpr-26'(_Config) ->
   Qry = "system-property(\"xsl:vendor\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionCallExpr-27'(_Config) ->
   Qry = "fn:escape-uri(\"http:/example.com/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionCallExpr-28'(_Config) ->
   Qry = "fn:sub-sequence(\"http:/example.com/\", 1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-FunctionCallExpr-1'(_Config) ->
   Qry = "\n        declare function local:bar($c, $d, $e, $f, $g, $h, $i, $j, $a, $b) { 1 }; \n        declare function local:moo($k) { $k }; \n        local:moo(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-FunctionCallExpr-2'(_Config) ->
   Qry = "current-grouping-key()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-FunctionCallExpr-3'(_Config) ->
   Qry = "current()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-FunctionCallExpr-4'(_Config) ->
   Qry = "unparsed-entity-uri(\"str\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-FunctionCallExpr-5'(_Config) ->
   Qry = "unparsed-entity-public-id(\"str\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-FunctionCallExpr-6'(_Config) ->
   {skip,"XP20 XQ10"}.
'K2-FunctionCallExpr-7'(_Config) ->
   {skip,"XP20 XQ10"}.
'K2-FunctionCallExpr-8'(_Config) ->
   Qry = "system-property(\"property\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-FunctionCallExpr-9'(_Config) ->
   Qry = "key(\"id\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-FunctionCallExpr-10'(_Config) ->
   Qry = "\n        declare variable $a := <a/>; \n        declare function local:testSingleNodeIdentity($node as node()) { $node is $node }; \n        declare function local:testDoubleNodeIdentity($a as node(), $b as node()) { $a is $b }; \n        local:testSingleNodeIdentity(<a/>), local:testDoubleNodeIdentity(<a/>, <b/>), local:testDoubleNodeIdentity($a, $a)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true false true\n      ",
   case xqerl_test:string_value(Res) of
             "true false true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-FunctionCallExpr-11'(_Config) ->
   Qry = "\n        declare function local:compare($arg1 as xs:string, $arg2 as xs:string) { \n            let $cps1 := string-to-codepoints($arg1), \n            $cps2 := string-to-codepoints($arg2) \n            return abs(count($cps1) - count($cps2)) + sum(for $x in 1 to min((count($cps1), count($cps2))) \n                                                          return if ($cps1[$x] ne $cps2[$x]) then 1 else ()) }; \n        local:compare(\"\", \"\"), \n        local:compare(\"a\", \"\"), \n        local:compare(\"\", \"a\"), \n        local:compare(\"a\", \"a\"), \n        local:compare(\"\", \"aa\"), \n        local:compare(\"aa\", \"ab\"), \n        local:compare(\"ba\", \"ba\"), \n        local:compare(\"bab\", \"bbb\"), \n        local:compare(\"aba\", \"bab\")\n     ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0 1 1 0 2 1 0 1 3\n      ",
   case xqerl_test:string_value(Res) of
             "0 1 1 0 2 1 0 1 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-FunctionCallExpr-12'(_Config) ->
   Qry = "\n        declare function local:func1() { if(local:func2('b')) then 3 else local:func1() }; \n        declare function local:func2($a) { if(matches(\"\",$a)) then () else 4 }; \n        local:func1()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         3\n      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-FunctionCallExpr-13'(_Config) ->
   Qry = "declare function local:foo($arg) { local:foo(local:foo(1)) }; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cbcl-promotion-001'(_Config) ->
   Qry = "\n        string-join( (xs:anyURI('http://www.microsoft.com'), xs:anyURI('http://www.google.com/')), ' ')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         http://www.microsoft.com http://www.google.com/\n      ",
   case xqerl_test:string_value(Res) of
             "http://www.microsoft.com http://www.google.com/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-promotion-002'(_Config) ->
   Qry = "\n        declare function local:index-of($seq as xs:double*, $item as xs:double) { for $x at $p in $seq return if ($x eq $item) then $p else () };\n        declare function local:sequence($x as xs:integer) { (\"string\", 1, 2.0, xs:float(3))[$x] };\n        local:index-of(for $x in (2,3,4) return local:sequence($x), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2\n      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-promotion-003'(_Config) ->
   Qry = "\n        declare function local:index-of($seq as xs:integer*, $item as xs:integer?) as xs:float* { \n          if (empty($item)) \n            then -1\n            else for $x at $p in $seq return if ($x eq $item) then $p else () \n        };\n        local:index-of(1 to 10, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         3\n      ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-promotion-004'(_Config) ->
   Qry = "\n        declare function local:f() as xs:double* { \n          if (day-from-date(current-date()) < 32) then xs:integer(3) else -1\n        };\n        local:f() + 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         4\n      ",
   case xqerl_test:string_value(Res) of
             "4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-promotion-005'(_Config) ->
   Qry = "\n        declare function local:index-of($seq, $item) as xs:double? { for $x at $p in $seq return if ($x eq $item) then $p else () };\n        local:index-of((1, 2.0, xs:float(3), 2), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-promotion-006'(_Config) ->
   Qry = "\n        declare function local:f($arg as xs:anyAtomicType?) { $arg };\n        local:f(index-of((1,2,3,2),2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-promotion-007'(_Config) ->
   Qry = "\n        declare function local:f($v as xs:double*) as xs:double+ { if (empty($v)) then 0 else $v };\n        declare function local:g($v as xs:double*) as xs:double+ { local:f($v) };\n        local:g((1,2,3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1 2 3\n      ",
   case xqerl_test:string_value(Res) of
             "1 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'function-call-reserved-function-names-001'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:attribute($arg) { fn:true() };\n	attribute(1)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-002'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:comment($arg) { fn:true() };\n	comment(1)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-003'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:document-node($arg) { fn:true() };\n	document-node(1)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-004'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:element($arg) { fn:true() };\n	element(1)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-005'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:empty-sequence() { fn:true() };\n	empty-sequence()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-006'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:if() { fn:true() };\n	if()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-007'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:item($arg) { fn:true() };\n	item(1)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-008'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:node($arg) { fn:true() };\n	node(1)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-009'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:processing-instruction($arg) { fn:true() };\n	processing-instruction(1)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-010'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:schema-attribute() { fn:true() };\n	schema-attribute()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-011'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:schema-element() { fn:true() };\n	schema-element()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-012'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:text($arg) { fn:true() };\n	text(1)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-013'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:typeswitch() { fn:true() };\n	typeswitch()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-014'(_Config) ->
   {skip,"XQ10"}.
'function-call-reserved-function-names-015'(_Config) ->
   {skip,"XQ10"}.
'function-call-reserved-function-names-016'(_Config) ->
   {skip,"XQ10"}.
'function-call-reserved-function-names-017'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:function() { fn:true() };\n	function()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-018'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:namespace-node($arg) { fn:true() };\n	namespace-node(1)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-019'(_Config) ->
   Qry = "\n	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n	declare function local:switch() { fn:true() };\n	switch()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-call-reserved-function-names-020'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-021'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-022'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-023'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-024'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-025'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-026'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-027'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-028'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-029'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-030'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-031'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-032'(_Config) ->
   {skip,"XP20+"}.
'function-call-reserved-function-names-033'(_Config) ->
   {skip,"XP20"}.
'function-call-reserved-function-names-034'(_Config) ->
   {skip,"XP20"}.
'function-call-reserved-function-names-035'(_Config) ->
   {skip,"XP20"}.
'function-call-reserved-function-names-036'(_Config) ->
   {skip,"XP30+"}.
'function-call-reserved-function-names-037'(_Config) ->
   {skip,"XP30+"}.
'function-call-reserved-function-names-038'(_Config) ->
   {skip,"XP30+"}.
