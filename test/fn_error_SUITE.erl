-module('fn_error_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-error-1'/1]).
-export(['fn-error-2'/1]).
-export(['fn-error-3'/1]).
-export(['fn-error-4'/1]).
-export(['fn-error-5'/1]).
-export(['fn-error-6'/1]).
-export(['fn-error-7'/1]).
-export(['fn-error-8'/1]).
-export(['fn-error-9'/1]).
-export(['fn-error-10'/1]).
-export(['fn-error-11'/1]).
-export(['fn-error-12'/1]).
-export(['fn-error-13'/1]).
-export(['fn-error-14'/1]).
-export(['fn-error-15'/1]).
-export(['fn-error-16'/1]).
-export(['fn-error-17'/1]).
-export(['fn-error-18'/1]).
-export(['fn-error-19'/1]).
-export(['fn-error-20'/1]).
-export(['fn-error-22'/1]).
-export(['fn-error-23'/1]).
-export(['fn-error-25'/1]).
-export(['fn-error-26'/1]).
-export(['fn-error-27'/1]).
-export(['fn-error-28'/1]).
-export(['fn-error-29'/1]).
-export(['fn-error-30'/1]).
-export(['fn-error-31'/1]).
-export(['fn-error-32'/1]).
-export(['fn-error-33'/1]).
-export(['fn-error-34'/1]).
-export(['fn-error-35'/1]).
-export(['fn-error-36'/1]).
-export(['fn-error-37'/1]).
-export(['fn-error-38'/1]).
-export(['fn-error-39'/1]).
-export(['fn-error-40'/1]).
-export(['fn-error-41'/1]).
-export(['fn-error-42'/1]).
-export(['fn-error-43'/1]).
-export(['fn-error-44'/1]).
-export(['fn-error-45'/1]).
-export(['fn-error-46'/1]).
-export(['fn-error-47'/1]).
-export(['fn-error-48'/1]).
-export(['fn-error-49'/1]).
-export(['fn-error-50'/1]).
-export(['fn-error-51'/1]).
-export(['K-ErrorFunc-1'/1]).
-export(['K-ErrorFunc-2'/1]).
-export(['K-ErrorFunc-3'/1]).
-export(['K-ErrorFunc-4'/1]).
-export(['K-ErrorFunc-5'/1]).
-export(['K-ErrorFunc-6'/1]).
-export(['K-ErrorFunc-7'/1]).
-export(['K-ErrorFunc-8'/1]).
-export(['K-ErrorFunc-9'/1]).
-export(['K-ErrorFunc-10'/1]).
-export(['K2-ErrorFunc-1'/1]).
-export(['K2-ErrorFunc-2'/1]).
-export(['K2-ErrorFunc-3'/1]).
-export(['cbcl-error-001'/1]).
-export(['cbcl-error-002'/1]).
-export(['cbcl-error-003'/1]).
-export(['cbcl-error-004'/1]).
-export(['cbcl-error-005'/1]).
-export(['cbcl-error-006'/1]).
-export(['cbcl-error-007'/1]).
-export(['cbcl-error-008'/1]).
-export(['cbcl-error-009'/1]).
-export(['cbcl-error-010'/1]).
-export(['cbcl-error-011'/1]).
-export(['cbcl-error-012'/1]).
-export(['cbcl-error-013'/1]).
-export(['cbcl-error-014'/1]).
-export(['cbcl-error-015'/1]).
-export(['cbcl-error-016'/1]).
-export(['cbcl-error-017'/1]).
-export(['cbcl-error-018'/1]).
-export(['cbcl-error-019'/1]).
-export(['cbcl-error-020'/1]).
-export(['cbcl-error-021'/1]).
-export(['cbcl-error-022'/1]).
-export(['cbcl-error-023'/1]).
-export(['cbcl-error-024'/1]).
-export(['cbcl-error-025'/1]).
-export(['cbcl-error-026'/1]).
-export(['cbcl-error-027'/1]).
-export(['cbcl-error-028'/1]).
-export(['cbcl-error-029'/1]).
-export(['cbcl-error-030'/1]).
-export(['cbcl-error-031'/1]).
-export(['cbcl-error-032'/1]).
-export(['cbcl-error-033'/1]).
-export(['cbcl-error-034'/1]).
-export(['cbcl-error-035'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-error-1',
   'fn-error-2',
   'fn-error-3',
   'fn-error-4',
   'fn-error-5',
   'fn-error-6',
   'fn-error-7',
   'fn-error-8',
   'fn-error-9',
   'fn-error-10',
   'fn-error-11',
   'fn-error-12',
   'fn-error-13',
   'fn-error-14',
   'fn-error-15',
   'fn-error-16',
   'fn-error-17',
   'fn-error-18',
   'fn-error-19',
   'fn-error-20',
   'fn-error-22',
   'fn-error-23',
   'fn-error-25',
   'fn-error-26',
   'fn-error-27',
   'fn-error-28',
   'fn-error-29',
   'fn-error-30',
   'fn-error-31',
   'fn-error-32',
   'fn-error-33',
   'fn-error-34',
   'fn-error-35',
   'fn-error-36',
   'fn-error-37',
   'fn-error-38',
   'fn-error-39',
   'fn-error-40',
   'fn-error-41',
   'fn-error-42',
   'fn-error-43',
   'fn-error-44',
   'fn-error-45',
   'fn-error-46',
   'fn-error-47',
   'fn-error-48',
   'fn-error-49',
   'fn-error-50',
   'fn-error-51',
   'K-ErrorFunc-1',
   'K-ErrorFunc-2',
   'K-ErrorFunc-3',
   'K-ErrorFunc-4',
   'K-ErrorFunc-5',
   'K-ErrorFunc-6',
   'K-ErrorFunc-7',
   'K-ErrorFunc-8',
   'K-ErrorFunc-9',
   'K-ErrorFunc-10',
   'K2-ErrorFunc-1',
   'K2-ErrorFunc-2',
   'K2-ErrorFunc-3',
   'cbcl-error-001',
   'cbcl-error-002',
   'cbcl-error-003',
   'cbcl-error-004',
   'cbcl-error-005',
   'cbcl-error-006',
   'cbcl-error-007',
   'cbcl-error-008',
   'cbcl-error-009',
   'cbcl-error-010',
   'cbcl-error-011',
   'cbcl-error-012',
   'cbcl-error-013',
   'cbcl-error-014',
   'cbcl-error-015',
   'cbcl-error-016',
   'cbcl-error-017',
   'cbcl-error-018',
   'cbcl-error-019',
   'cbcl-error-020',
   'cbcl-error-021',
   'cbcl-error-022',
   'cbcl-error-023',
   'cbcl-error-024',
   'cbcl-error-025',
   'cbcl-error-026',
   'cbcl-error-027',
   'cbcl-error-028',
   'cbcl-error-029',
   'cbcl-error-030',
   'cbcl-error-031',
   'cbcl-error-032',
   'cbcl-error-033',
   'cbcl-error-034',
   'cbcl-error-035'].
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
].
'fn-error-1'(_Config) ->
   Qry = "fn:error()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'fn-error-2'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.example.com/HR', 'myerr:toohighsal'), 'Does not apply because salary is too high')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' -> {comment, "Correct error"};
           true -> ct:fail({Res, '*'}) end.
'fn-error-3'(_Config) ->
   Qry = "fn:error('Wrong Argument Type')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-error-4'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOCH0004'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0004'}) end.
'fn-error-5'(_Config) ->
   Qry = "fn:error((), 'err:FOER0000')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'fn-error-6'(_Config) ->
   Qry = "fn:error((), 'err:FOER0000','error raised by this test by setting first argument to empty sequence')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'fn-error-7'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FODT0001'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'fn-error-8'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FORG0009'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0009" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0009'}) end.
'fn-error-9'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOTY0012'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOTY0012" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOTY0012'}) end.
'fn-error-10'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SENR0001'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SENR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SENR0001'}) end.
'fn-error-11'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SEPM0004'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SEPM0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SEPM0004'}) end.
'fn-error-12'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SEPM0009'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SEPM0009" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SEPM0009'}) end.
'fn-error-13'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SEPM0010'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SEPM0010" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SEPM0010'}) end.
'fn-error-14'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SEPM0016'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SEPM0016" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SEPM0016'}) end.
'fn-error-15'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SERE0003'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SERE0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SERE0003'}) end.
'fn-error-16'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SERE0005'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SERE0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SERE0005'}) end.
'fn-error-17'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SERE0006'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SERE0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SERE0006'}) end.
'fn-error-18'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SERE0008'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SERE0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SERE0008'}) end.
'fn-error-19'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SERE0012'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SERE0012" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SERE0012'}) end.
'fn-error-20'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SERE0014'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SERE0014" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SERE0014'}) end.
'fn-error-22'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SESU0007'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SESU0007" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SESU0007'}) end.
'fn-error-23'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:SESU0011'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SESU0011" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SESU0011'}) end.
'fn-error-25'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XPDY0002'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-error-26'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XPST0010'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0010" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0010'}) end.
'fn-error-27'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XPST0080'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0080" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0080'}) end.
'fn-error-28'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XPTY0018'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0018" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0018'}) end.
'fn-error-29'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQDY0027'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0027" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0027'}) end.
'fn-error-30'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQDY0061'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0061" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0061'}) end.
'fn-error-31'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQDY0084'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0084" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0084'}) end.
'fn-error-32'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0009'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0009" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0009'}) end.
'fn-error-33'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0012'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0012" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0012'}) end.
'fn-error-34'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0013'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0013" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0013'}) end.
'fn-error-35'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0016'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0016" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0016'}) end.
'fn-error-36'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0035'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0035" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0035'}) end.
'fn-error-37'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0036'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0036" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0036'}) end.
'fn-error-38'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0046'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0046" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0046'}) end.
'fn-error-39'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0047'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0047" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0047'}) end.
'fn-error-40'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0048'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0048" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0048'}) end.
'fn-error-41'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0054'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0054" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0054'}) end.
'fn-error-42'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0055'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0055" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0055'}) end.
'fn-error-43'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0057'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0057" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0057'}) end.
'fn-error-44'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0058'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0058" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0058'}) end.
'fn-error-45'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0060'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0060" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0060'}) end.
'fn-error-46'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0073'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0073" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0073'}) end.
'fn-error-47'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0075'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0075" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0075'}) end.
'fn-error-48'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0076'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0076" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0076'}) end.
'fn-error-49'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0079'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0079" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0079'}) end.
'fn-error-50'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQST0087'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0087" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0087'}) end.
'fn-error-51'(_Config) ->
   Qry = "fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:XQTY0030'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0030" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0030'}) end.
'K-ErrorFunc-1'(_Config) ->
   Qry = "if(true()) then true() else error()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ErrorFunc-2'(_Config) ->
   Qry = "if(true()) then true() else error(QName(\"\", \"local\"), \"description\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ErrorFunc-3'(_Config) ->
   Qry = "error(QName(\"\", \"local\"), \"description\", \"object\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ErrorFunc-4'(_Config) ->
   Qry = "error( () )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-ErrorFunc-5'(_Config) ->
   Qry = "error(QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-ErrorFunc-6'(_Config) ->
   Qry = "error((), \"description\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-ErrorFunc-7'(_Config) ->
   Qry = "if(false()) then error((), \"description\") else true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ErrorFunc-8'(_Config) ->
   Qry = "error()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-ErrorFunc-9'(_Config) ->
   Qry = "error(QName(\"\", \"XPDY6666\"), \"description\", \"error object\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' -> {comment, "Correct error"};
           true -> ct:fail({Res, '*'}) end.
'K-ErrorFunc-10'(_Config) ->
   Qry = "exactly-one((true(), error()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K2-ErrorFunc-1'(_Config) ->
   Qry = "(1, 2, error())[2]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            2\n            \n         \n      ",
 case (xqerl_test:string_value(Res) == "2") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-ErrorFunc-2'(_Config) ->
   Qry = "declare default element namespace \"\"; fn:error(xs:QName(\"onlyAnNCName\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' -> {comment, "Correct error"};
           true -> ct:fail({Res, '*'}) end.
'K2-ErrorFunc-3'(_Config) ->
   Qry = "error(QName(\"\", \"FOO\"), \"DESCRIPTION\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' -> {comment, "Correct error"};
           true -> ct:fail({Res, '*'}) end.
'cbcl-error-001'(_Config) ->
   Qry = "declare function local:ignore($arg) { true() }; local:ignore( fn:error() )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-002'(_Config) ->
   Qry = "empty(() + fn:error())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-003'(_Config) ->
   Qry = "empty(fn:error() + ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-004'(_Config) ->
   Qry = "empty(() eq fn:error())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n	  \n	  \n	\n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-005'(_Config) ->
   Qry = "empty(fn:error() eq ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-006'(_Config) ->
   Qry = "fn:error() = ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-007'(_Config) ->
   Qry = "() = fn:error()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-008'(_Config) ->
   Qry = "empty(fn:error() is ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-009'(_Config) ->
   Qry = "empty(() is fn:error())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n	  \n	  \n	\n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-010'(_Config) ->
   Qry = "fn:error() and false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-011'(_Config) ->
   Qry = "false() and fn:error()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-012'(_Config) ->
   Qry = "fn:error() or true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-013'(_Config) ->
   Qry = "true() or fn:error()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n	    \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-014'(_Config) ->
   Qry = "for $x in fn:error() return true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-015'(_Config) ->
   Qry = "for $x at $p in fn:error() return true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-016'(_Config) ->
   Qry = "let $x := fn:error() return true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-017'(_Config) ->
   Qry = "if (fn:error()) then true() else true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-018'(_Config) ->
   Qry = "some $x in fn:error() satisfies false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-019'(_Config) ->
   Qry = "every $x in fn:error() satisfies true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-020'(_Config) ->
   Qry = "fn:error() instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-021'(_Config) ->
   Qry = "typeswitch ( fn:error() ) case xs:integer return true() default return false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-022'(_Config) ->
   Qry = "typeswitch ( fn:error() ) case xs:integer return true() default return false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-023'(_Config) ->
   Qry = "empty(fn:error()[2])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-024'(_Config) ->
   Qry = "empty(fn:error()[false()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-025'(_Config) ->
   Qry = "empty((1 div 0)[false()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-026'(_Config) ->
   Qry = "empty( if (current-date() lt xs:date('2009-01-01')) then fn:error() else ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-027'(_Config) ->
   Qry = "empty( if (current-date() lt xs:date('2009-01-01')) then () else fn:error())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-028'(_Config) ->
   Qry = "declare function local:item() { if (current-date() lt xs:date('2012-10-10')) then 1 else \"one\" }; empty( typeswitch ( local:item() ) case xs:integer return fn:error() default return ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-029'(_Config) ->
   Qry = "declare function local:item() { if (current-date() gt xs:date('1900-01-01')) then 1 else \"one\" }; empty( typeswitch ( local:item() ) case xs:integer return () default return fn:error())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-error-030'(_Config) ->
   Qry = "empty(fn:remove( fn:error(), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-031'(_Config) ->
   Qry = "empty(fn:subsequence( fn:error(), 2, 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-032'(_Config) ->
   Qry = "empty(fn:error() except fn:error() )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-033'(_Config) ->
   Qry = "empty(fn:error() intersect fn:error() )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-034'(_Config) ->
   Qry = "empty( fn:zero-or-one(fn:error()) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-error-035'(_Config) ->
   Qry = "empty( fn:error() treat as empty-sequence() )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
