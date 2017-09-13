-module('op_numeric_divide_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-numeric-divideint2args-1'/1]).
-export(['op-numeric-divideint2args-2'/1]).
-export(['op-numeric-divideint2args-3'/1]).
-export(['op-numeric-divideint2args-4'/1]).
-export(['op-numeric-divideint2args-5'/1]).
-export(['op-numeric-divideintg2args-1'/1]).
-export(['op-numeric-divideintg2args-2'/1]).
-export(['op-numeric-divideintg2args-3'/1]).
-export(['op-numeric-divideintg2args-4'/1]).
-export(['op-numeric-divideintg2args-5'/1]).
-export(['op-numeric-divideintg2args-6'/1]).
-export(['op-numeric-dividedec2args-1'/1]).
-export(['op-numeric-dividedec2args-2'/1]).
-export(['op-numeric-dividedec2args-3'/1]).
-export(['op-numeric-dividedec2args-4'/1]).
-export(['op-numeric-dividedec2args-5'/1]).
-export(['op-numeric-dividedbl2args-1'/1]).
-export(['op-numeric-dividedbl2args-2'/1]).
-export(['op-numeric-dividedbl2args-3'/1]).
-export(['op-numeric-dividedbl2args-4'/1]).
-export(['op-numeric-divideflt2args-1'/1]).
-export(['op-numeric-divideflt2args-2'/1]).
-export(['op-numeric-divideflt2args-3'/1]).
-export(['op-numeric-divideflt2args-4'/1]).
-export(['op-numeric-dividelng2args-1'/1]).
-export(['op-numeric-dividelng2args-2'/1]).
-export(['op-numeric-dividelng2args-3'/1]).
-export(['op-numeric-dividelng2args-4'/1]).
-export(['op-numeric-dividelng2args-5'/1]).
-export(['op-numeric-divideusht2args-1'/1]).
-export(['op-numeric-divideusht2args-2'/1]).
-export(['op-numeric-dividenint2args-1'/1]).
-export(['op-numeric-dividenint2args-2'/1]).
-export(['op-numeric-dividenint2args-3'/1]).
-export(['op-numeric-dividenint2args-4'/1]).
-export(['op-numeric-dividenint2args-5'/1]).
-export(['op-numeric-dividepint2args-1'/1]).
-export(['op-numeric-dividepint2args-2'/1]).
-export(['op-numeric-dividepint2args-3'/1]).
-export(['op-numeric-dividepint2args-4'/1]).
-export(['op-numeric-dividepint2args-5'/1]).
-export(['op-numeric-divideulng2args-1'/1]).
-export(['op-numeric-divideulng2args-2'/1]).
-export(['op-numeric-dividenpi2args-1'/1]).
-export(['op-numeric-dividenpi2args-2'/1]).
-export(['op-numeric-dividenpi2args-3'/1]).
-export(['op-numeric-dividenpi2args-4'/1]).
-export(['op-numeric-dividenni2args-1'/1]).
-export(['op-numeric-dividenni2args-2'/1]).
-export(['op-numeric-dividesht2args-1'/1]).
-export(['op-numeric-dividesht2args-2'/1]).
-export(['op-numeric-dividesht2args-3'/1]).
-export(['op-numeric-dividesht2args-4'/1]).
-export(['op-numeric-dividesht2args-5'/1]).
-export(['op-numeric-dividemix2args-1'/1]).
-export(['op-numeric-dividemix2args-2'/1]).
-export(['op-numeric-dividemix2args-3'/1]).
-export(['op-numeric-dividemix2args-4'/1]).
-export(['op-numeric-dividemix2args-5'/1]).
-export(['op-numeric-dividemix2args-6'/1]).
-export(['op-numeric-dividemix2args-7'/1]).
-export(['op-numeric-dividemix2args-8'/1]).
-export(['op-numeric-dividemix2args-9'/1]).
-export(['K-NumericDivide-1'/1]).
-export(['K-NumericDivide-2'/1]).
-export(['K-NumericDivide-3'/1]).
-export(['K-NumericDivide-4'/1]).
-export(['K-NumericDivide-5'/1]).
-export(['K-NumericDivide-6'/1]).
-export(['K-NumericDivide-7'/1]).
-export(['K-NumericDivide-8'/1]).
-export(['K-NumericDivide-9'/1]).
-export(['K-NumericDivide-10'/1]).
-export(['K-NumericDivide-11'/1]).
-export(['K-NumericDivide-12'/1]).
-export(['K-NumericDivide-13'/1]).
-export(['K-NumericDivide-14'/1]).
-export(['K-NumericDivide-15'/1]).
-export(['K-NumericDivide-16'/1]).
-export(['K-NumericDivide-17'/1]).
-export(['K-NumericDivide-18'/1]).
-export(['K-NumericDivide-19'/1]).
-export(['K-NumericDivide-20'/1]).
-export(['K-NumericDivide-21'/1]).
-export(['K-NumericDivide-22'/1]).
-export(['K-NumericDivide-23'/1]).
-export(['K-NumericDivide-24'/1]).
-export(['K-NumericDivide-25'/1]).
-export(['K-NumericDivide-26'/1]).
-export(['K-NumericDivide-27'/1]).
-export(['K-NumericDivide-28'/1]).
-export(['K-NumericDivide-29'/1]).
-export(['K-NumericDivide-30'/1]).
-export(['K-NumericDivide-31'/1]).
-export(['K-NumericDivide-32'/1]).
-export(['K-NumericDivide-33'/1]).
-export(['K-NumericDivide-34'/1]).
-export(['K-NumericDivide-35'/1]).
-export(['K-NumericDivide-36'/1]).
-export(['K-NumericDivide-37'/1]).
-export(['K-NumericDivide-38'/1]).
-export(['K-NumericDivide-39'/1]).
-export(['K-NumericDivide-40'/1]).
-export(['K-NumericDivide-41'/1]).
-export(['K-NumericDivide-42'/1]).
-export(['K-NumericDivide-43'/1]).
-export(['K2-NumericDivide-1'/1]).
-export(['K2-NumericDivide-2'/1]).
-export(['K2-NumericDivide-3'/1]).
-export(['K2-NumericDivide-4'/1]).
-export(['K2-NumericDivide-5'/1]).
-export(['K2-NumericDivide-6'/1]).
-export(['K2-NumericDivide-7'/1]).
-export(['K2-NumericDivide-8'/1]).
-export(['K2-NumericDivide-9'/1]).
-export(['K2-NumericDivide-10'/1]).
-export(['K2-NumericDivide-11'/1]).
-export(['K2-NumericDivide-12'/1]).
-export(['K2-NumericDivide-13'/1]).
-export(['K2-NumericDivide-14'/1]).
-export(['K2-NumericDivide-15'/1]).
-export(['K2-NumericDivide-16'/1]).
-export(['K2-NumericDivide-17'/1]).
-export(['op-numeric-divide-1'/1]).
-export(['cbcl-numeric-divide-001'/1]).
-export(['cbcl-numeric-divide-002'/1]).
-export(['cbcl-numeric-divide-003'/1]).
-export(['cbcl-numeric-divide-004'/1]).
-export(['cbcl-numeric-divide-005'/1]).
-export(['cbcl-numeric-divide-006'/1]).
-export(['cbcl-numeric-divide-007'/1]).
-export(['cbcl-numeric-divide-008'/1]).
-export(['cbcl-numeric-divide-009'/1]).
-export(['cbcl-numeric-divide-010'/1]).
-export(['cbcl-numeric-divide-011'/1]).
-export(['cbcl-numeric-divide-012'/1]).
-export(['cbcl-numeric-divide-013'/1]).
-export(['cbcl-numeric-divide-014'/1]).
-export(['cbcl-numeric-divide-015'/1]).
-export(['op-numeric-divide-big-01'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-numeric-divideint2args-1',
   'op-numeric-divideint2args-2',
   'op-numeric-divideint2args-3',
   'op-numeric-divideint2args-4',
   'op-numeric-divideint2args-5',
   'op-numeric-divideintg2args-1',
   'op-numeric-divideintg2args-2',
   'op-numeric-divideintg2args-3',
   'op-numeric-divideintg2args-4',
   'op-numeric-divideintg2args-5',
   'op-numeric-divideintg2args-6',
   'op-numeric-dividedec2args-1',
   'op-numeric-dividedec2args-2',
   'op-numeric-dividedec2args-3',
   'op-numeric-dividedec2args-4',
   'op-numeric-dividedec2args-5',
   'op-numeric-dividedbl2args-1',
   'op-numeric-dividedbl2args-2',
   'op-numeric-dividedbl2args-3',
   'op-numeric-dividedbl2args-4',
   'op-numeric-divideflt2args-1',
   'op-numeric-divideflt2args-2',
   'op-numeric-divideflt2args-3',
   'op-numeric-divideflt2args-4',
   'op-numeric-dividelng2args-1',
   'op-numeric-dividelng2args-2',
   'op-numeric-dividelng2args-3',
   'op-numeric-dividelng2args-4',
   'op-numeric-dividelng2args-5',
   'op-numeric-divideusht2args-1',
   'op-numeric-divideusht2args-2',
   'op-numeric-dividenint2args-1',
   'op-numeric-dividenint2args-2',
   'op-numeric-dividenint2args-3',
   'op-numeric-dividenint2args-4',
   'op-numeric-dividenint2args-5',
   'op-numeric-dividepint2args-1',
   'op-numeric-dividepint2args-2',
   'op-numeric-dividepint2args-3',
   'op-numeric-dividepint2args-4',
   'op-numeric-dividepint2args-5',
   'op-numeric-divideulng2args-1',
   'op-numeric-divideulng2args-2',
   'op-numeric-dividenpi2args-1',
   'op-numeric-dividenpi2args-2',
   'op-numeric-dividenpi2args-3',
   'op-numeric-dividenpi2args-4',
   'op-numeric-dividenni2args-1',
   'op-numeric-dividenni2args-2',
   'op-numeric-dividesht2args-1',
   'op-numeric-dividesht2args-2',
   'op-numeric-dividesht2args-3',
   'op-numeric-dividesht2args-4',
   'op-numeric-dividesht2args-5',
   'op-numeric-dividemix2args-1',
   'op-numeric-dividemix2args-2',
   'op-numeric-dividemix2args-3',
   'op-numeric-dividemix2args-4',
   'op-numeric-dividemix2args-5',
   'op-numeric-dividemix2args-6',
   'op-numeric-dividemix2args-7',
   'op-numeric-dividemix2args-8',
   'op-numeric-dividemix2args-9',
   'K-NumericDivide-1',
   'K-NumericDivide-2',
   'K-NumericDivide-3',
   'K-NumericDivide-4',
   'K-NumericDivide-5',
   'K-NumericDivide-6',
   'K-NumericDivide-7',
   'K-NumericDivide-8',
   'K-NumericDivide-9',
   'K-NumericDivide-10',
   'K-NumericDivide-11',
   'K-NumericDivide-12',
   'K-NumericDivide-13',
   'K-NumericDivide-14',
   'K-NumericDivide-15',
   'K-NumericDivide-16',
   'K-NumericDivide-17',
   'K-NumericDivide-18',
   'K-NumericDivide-19',
   'K-NumericDivide-20',
   'K-NumericDivide-21',
   'K-NumericDivide-22',
   'K-NumericDivide-23',
   'K-NumericDivide-24',
   'K-NumericDivide-25',
   'K-NumericDivide-26',
   'K-NumericDivide-27',
   'K-NumericDivide-28',
   'K-NumericDivide-29',
   'K-NumericDivide-30',
   'K-NumericDivide-31',
   'K-NumericDivide-32',
   'K-NumericDivide-33',
   'K-NumericDivide-34',
   'K-NumericDivide-35',
   'K-NumericDivide-36',
   'K-NumericDivide-37',
   'K-NumericDivide-38',
   'K-NumericDivide-39',
   'K-NumericDivide-40',
   'K-NumericDivide-41',
   'K-NumericDivide-42',
   'K-NumericDivide-43',
   'K2-NumericDivide-1',
   'K2-NumericDivide-2',
   'K2-NumericDivide-3',
   'K2-NumericDivide-4',
   'K2-NumericDivide-5',
   'K2-NumericDivide-6',
   'K2-NumericDivide-7',
   'K2-NumericDivide-8',
   'K2-NumericDivide-9',
   'K2-NumericDivide-10',
   'K2-NumericDivide-11',
   'K2-NumericDivide-12',
   'K2-NumericDivide-13',
   'K2-NumericDivide-14',
   'K2-NumericDivide-15',
   'K2-NumericDivide-16',
   'K2-NumericDivide-17',
   'op-numeric-divide-1',
   'cbcl-numeric-divide-001',
   'cbcl-numeric-divide-002',
   'cbcl-numeric-divide-003',
   'cbcl-numeric-divide-004',
   'cbcl-numeric-divide-005',
   'cbcl-numeric-divide-006',
   'cbcl-numeric-divide-007',
   'cbcl-numeric-divide-008',
   'cbcl-numeric-divide-009',
   'cbcl-numeric-divide-010',
   'cbcl-numeric-divide-011',
   'cbcl-numeric-divide-012',
   'cbcl-numeric-divide-013',
   'cbcl-numeric-divide-014',
   'cbcl-numeric-divide-015',
   'op-numeric-divide-big-01'].
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
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
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
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
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
'op-numeric-divideint2args-1'(_Config) ->
   Qry = "xs:int(\"-2147483648\") div xs:int(\"-2147483648\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideint2args-2'(_Config) ->
   Qry = "fn:round-half-to-even((xs:int(\"-1873914410\") div xs:int(\"-2147483648\")),10)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0.8726093965
      ",
 Tst = xqerl:run("0.8726093965"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideint2args-3'(_Config) ->
   Qry = "fn:round-half-to-even((xs:int(\"2147483647\") div xs:int(\"-2147483648\")),10)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -0.9999999995
      ",
 Tst = xqerl:run("-0.9999999995"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideint2args-4'(_Config) ->
   Qry = "fn:round-half-to-even((xs:int(\"-2147483648\") div xs:int(\"-1873914410\")),10)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.145988118
      ",
 Tst = xqerl:run("1.145988118"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideint2args-5'(_Config) ->
   Qry = "fn:round-half-to-even((xs:int(\"-2147483648\") div xs:int(\"2147483647\")),10)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.0000000005
      ",
 Tst = xqerl:run("-1.0000000005"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideintg2args-1'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") div xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideintg2args-2'(_Config) ->
   Qry = "fn:round-half-to-even((xs:integer(\"830993497117024304\") div xs:integer(\"-999999999999999999\")),18)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -0.830993497117024305
            -0.830993497117
         
      ",
 case ( begin Tst1 = xqerl:run("-0.830993497117024305"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("-0.830993497117"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-divideintg2args-3'(_Config) ->
   Qry = "xs:integer(\"999999999999999999\") div xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideintg2args-4'(_Config) ->
   Qry = "fn:round-half-to-even((xs:integer(\"-999999999999999999\") div xs:integer(\"830993497117024304\")),18)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -1.203378851301859738
            -1.203378851301
         
      ",
 case ( begin Tst1 = xqerl:run("-1.203378851301859738"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("-1.203378851301"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-divideintg2args-5'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") div xs:integer(\"999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideintg2args-6'(_Config) ->
   Qry = "(xs:integer(\"-999999999999999999\") div xs:integer(\"999999999999999999\")) instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-dividedec2args-1'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") div xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividedec2args-2'(_Config) ->
   Qry = "fn:round-half-to-even((xs:decimal(\"617375191608514839\") div xs:decimal(\"-999999999999999999\")),18)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -0.61737519160851484
            -0.6173751916085
         
      ",
 case ( begin Tst1 = xqerl:run("-0.61737519160851484"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("-0.6173751916085"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividedec2args-3'(_Config) ->
   Qry = "xs:decimal(\"999999999999999999\") div xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividedec2args-4'(_Config) ->
   Qry = "fn:round-half-to-even((xs:decimal(\"-999999999999999999\") div xs:decimal(\"617375191608514839\")),18)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -1.619760582531006901
            -1.619760582531
         
      ",
 case ( begin Tst1 = xqerl:run("-1.619760582531006901"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("-1.619760582531"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividedec2args-5'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") div xs:decimal(\"999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividedbl2args-1'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") div xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividedbl2args-2'(_Config) ->
   Qry = "xs:double(\"0\") div xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -0
      ",
 Tst = xqerl:run("-0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividedbl2args-3'(_Config) ->
   Qry = "xs:double(\"1.7976931348623157E308\") div xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividedbl2args-4'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") div xs:double(\"1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideflt2args-1'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") div xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideflt2args-2'(_Config) ->
   Qry = "xs:float(\"0\") div xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -0
      ",
 Tst = xqerl:run("-0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideflt2args-3'(_Config) ->
   Qry = "xs:float(\"3.4028235E38\") div xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideflt2args-4'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") div xs:float(\"3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividelng2args-1'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") div xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividelng2args-2'(_Config) ->
   Qry = "fn:round-half-to-even((xs:long(\"-47175562203048468\") div xs:long(\"-92233720368547758\")),17)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0.51147847028770199
            0.511478470287
         
      ",
 case ( begin Tst1 = xqerl:run("0.51147847028770199"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("0.511478470287"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividelng2args-3'(_Config) ->
   Qry = "xs:long(\"92233720368547758\") div xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividelng2args-4'(_Config) ->
   Qry = "fn:round-half-to-even((xs:long(\"-92233720368547758\") div xs:long(\"-47175562203048468\")),17)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1.95511650654133906
            1.955116506541
         
      ",
 case ( begin Tst1 = xqerl:run("1.95511650654133906"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("1.955116506541"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividelng2args-5'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") div xs:long(\"92233720368547758\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideusht2args-1'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") div xs:unsignedShort(\"44633\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideusht2args-2'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") div xs:unsignedShort(\"65535\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividenint2args-1'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") div xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividenint2args-2'(_Config) ->
   Qry = "fn:round-half-to-even((xs:negativeInteger(\"-297014075999096793\") div xs:negativeInteger(\"-999999999999999999\")),18)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0.297014075999096793
            0.297014075999
         
      ",
 case ( begin Tst1 = xqerl:run("0.297014075999096793"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("0.297014075999"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividenint2args-3'(_Config) ->
   Qry = "xs:negativeInteger(\"-1\") div xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0.000000000000000001
            0.000000000000000001000000000000000001
            0
         
      ",
 case ( begin Tst1 = xqerl:run("0.000000000000000001"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("0.000000000000000001000000000000000001"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) orelse ( begin Tst3 = xqerl:run("0"),
  ResVal3 = xqerl_types:value(Res),
  TstVal3 = xqerl_types:value(Tst3),
  ResVal3 == TstVal3 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividenint2args-4'(_Config) ->
   Qry = "fn:round-half-to-even((xs:negativeInteger(\"-999999999999999999\") div xs:negativeInteger(\"-297014075999096793\")),18)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            3.366843799022646172
            3.366843799022
         
      ",
 case ( begin Tst1 = xqerl:run("3.366843799022646172"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("3.366843799022"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividenint2args-5'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") div xs:negativeInteger(\"-1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999
      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividepint2args-1'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") div xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividepint2args-2'(_Config) ->
   Qry = "xs:positiveInteger(\"52704602390610033\") div xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         52704602390610033
      ",
 Tst = xqerl:run("52704602390610033"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividepint2args-3'(_Config) ->
   Qry = "xs:positiveInteger(\"999999999999999999\") div xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999
      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividepint2args-4'(_Config) ->
   Qry = "fn:round-half-to-even((xs:positiveInteger(\"1\") div xs:positiveInteger(\"52704602390610033\")),17)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0.00000000000000002
            0
         
      ",
 case ( begin Tst1 = xqerl:run("0.00000000000000002"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("0"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividepint2args-5'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") div xs:positiveInteger(\"999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0.000000000000000001
            0.000000000000000001000000000000000001
            0
         
      ",
 case ( begin Tst1 = xqerl:run("0.000000000000000001"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("0.000000000000000001000000000000000001"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) orelse ( begin Tst3 = xqerl:run("0"),
  ResVal3 = xqerl_types:value(Res),
  TstVal3 = xqerl_types:value(Tst3),
  ResVal3 == TstVal3 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-divideulng2args-1'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") div xs:unsignedLong(\"130747108607674654\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-divideulng2args-2'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") div xs:unsignedLong(\"184467440737095516\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividenpi2args-1'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") div xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividenpi2args-2'(_Config) ->
   Qry = "fn:round-half-to-even((xs:nonPositiveInteger(\"-475688437271870490\") div xs:nonPositiveInteger(\"-999999999999999999\")),18)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0.47568843727187049
            0.475688437271
         
      ",
 case ( begin Tst1 = xqerl:run("0.47568843727187049"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("0.475688437271"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividenpi2args-3'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"0\") div xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividenpi2args-4'(_Config) ->
   Qry = "fn:round-half-to-even((xs:nonPositiveInteger(\"-999999999999999999\") div xs:nonPositiveInteger(\"-475688437271870490\")),18)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            2.102216328265447024
            2.102216328265
         
      ",
 case ( begin Tst1 = xqerl:run("2.102216328265447024"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("2.102216328265"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividenni2args-1'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") div xs:nonNegativeInteger(\"303884545991464527\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividenni2args-2'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") div xs:nonNegativeInteger(\"999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividesht2args-1'(_Config) ->
   Qry = "xs:short(\"-32768\") div xs:short(\"-32768\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividesht2args-2'(_Config) ->
   Qry = "fn:round-half-to-even((xs:short(\"-5324\") div xs:short(\"-32768\")),5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0.16248
      ",
 Tst = xqerl:run("0.16248"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividesht2args-3'(_Config) ->
   Qry = "xs:short(\"32767\") div xs:short(\"-32768\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -0.999969482421875
            -0.999969482421
         
      ",
 case ( begin Tst1 = xqerl:run("-0.999969482421875"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("-0.999969482421"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividesht2args-4'(_Config) ->
   Qry = "fn:round-half-to-even((xs:short(\"-32768\") div xs:short(\"-5324\")),5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6.15477
      ",
 Tst = xqerl:run("6.15477"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividesht2args-5'(_Config) ->
   Qry = "xs:short(\"-32768\") div xs:short(\"32767\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        abs($result + 1.000030518509475997) lt 1e-12
      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""abs($result + 1.000030518509475997) lt 1e-12",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'op-numeric-dividemix2args-1'(_Config) ->
   Qry = "() div 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-dividemix2args-2'(_Config) ->
   Qry = "1 div '1'",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'op-numeric-dividemix2args-3'(_Config) ->
   Qry = "1 div xs:integer('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividemix2args-4'(_Config) ->
   Qry = "1 div <a> 2 </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0.5
      ",
 Tst = xqerl:run("0.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividemix2args-5'(_Config) ->
   Qry = "1 div <a> <b> 2 </b> </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0.5
      ",
 Tst = xqerl:run("0.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividemix2args-6'(_Config) ->
   Qry = "1 div <a> <b> 2</b> <c> 2</c> </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'op-numeric-dividemix2args-7'(_Config) ->
   Qry = "<a> 1 </a> div <b> 2 </b>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0.5
      ",
 Tst = xqerl:run("0.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-dividemix2args-8'(_Config) ->
   Qry = "1 div <a> x </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'op-numeric-dividemix2args-9'(_Config) ->
   Qry = "1 div <a/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'K-NumericDivide-1'(_Config) ->
   Qry = "xs:double(6) div xs:double(2) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-2'(_Config) ->
   Qry = "xs:decimal(6) div xs:decimal(2) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-3'(_Config) ->
   Qry = "xs:integer(6) div xs:integer(2) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-4'(_Config) ->
   Qry = "xs:float(6) div xs:float(2) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-5'(_Config) ->
   Qry = "xs:double(5) div xs:double(2) eq 2.5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-6'(_Config) ->
   Qry = "xs:double(5) div xs:double(2) ne 2.6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-7'(_Config) ->
   Qry = "xs:float(5) div xs:float(2) eq 2.5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-8'(_Config) ->
   Qry = "xs:float(5) div xs:float(2) ne 2.6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-9'(_Config) ->
   Qry = "xs:integer(5) div xs:integer(2) eq 2.5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-10'(_Config) ->
   Qry = "xs:integer(5) div xs:integer(2) ne 2.6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-11'(_Config) ->
   Qry = "xs:decimal(5) div xs:decimal(2) eq 2.5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-12'(_Config) ->
   Qry = "xs:decimal(5) div xs:decimal(2) ne 2.6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-13'(_Config) ->
   Qry = "5 div 2 ne 2.6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-14'(_Config) ->
   Qry = "5.0 div 2.0 eq 2.5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-15'(_Config) ->
   Qry = "5.0 div 2.0 ne 2.6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-16'(_Config) ->
   Qry = "(xs:decimal(6) div xs:integer(2)) instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-17'(_Config) ->
   Qry = "(xs:integer(6) div xs:decimal(2)) instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-18'(_Config) ->
   Qry = "(xs:integer(6) div xs:integer(2)) instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-19'(_Config) ->
   Qry = "(xs:decimal(6) div xs:decimal(2)) instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-20'(_Config) ->
   Qry = "(xs:float(6) div xs:decimal(2)) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-21'(_Config) ->
   Qry = "(xs:decimal(6) div xs:float(2)) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-22'(_Config) ->
   Qry = "(xs:float(6) div xs:integer(2)) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-23'(_Config) ->
   Qry = "(xs:integer(6) div xs:float(2)) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-24'(_Config) ->
   Qry = "(xs:float(6) div xs:float(2)) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-25'(_Config) ->
   Qry = "(xs:decimal(6) div xs:double(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-26'(_Config) ->
   Qry = "(xs:double(6) div xs:decimal(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-27'(_Config) ->
   Qry = "(xs:double(6) div xs:float(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-28'(_Config) ->
   Qry = "(xs:float(6) div xs:double(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-29'(_Config) ->
   Qry = "(xs:double(6) div xs:integer(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-30'(_Config) ->
   Qry = "(xs:integer(6) div xs:double(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-31'(_Config) ->
   Qry = "(xs:double(6) div xs:double(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-32'(_Config) ->
   Qry = "\"3\" div \"3\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-NumericDivide-33'(_Config) ->
   Qry = "xs:double(3) div \"3\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-NumericDivide-34'(_Config) ->
   Qry = "(xs:double(3) div xs:untypedAtomic(\"3\")) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-35'(_Config) ->
   Qry = "(xs:untypedAtomic(\"3\") div xs:double(3)) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericDivide-36'(_Config) ->
   Qry = "10 div3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-NumericDivide-37'(_Config) ->
   Qry = "10div 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-NumericDivide-38'(_Config) ->
   Qry = "10div3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-NumericDivide-39'(_Config) ->
   Qry = "empty(() div ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NumericDivide-40'(_Config) ->
   Qry = "empty(1 div ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NumericDivide-41'(_Config) ->
   Qry = "empty(() div 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NumericDivide-42'(_Config) ->
   Qry = "empty(xs:double(3) div ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NumericDivide-43'(_Config) ->
   Qry = "empty(() div xs:decimal(1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-NumericDivide-1'(_Config) ->
   Qry = "1 div 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOAR0001'}) end.
'K2-NumericDivide-2'(_Config) ->
   Qry = "1 div 0.0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOAR0001'}) end.
'K2-NumericDivide-3'(_Config) ->
   Qry = "1 div +0.0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOAR0001'}) end.
'K2-NumericDivide-4'(_Config) ->
   Qry = "1 div -0.0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOAR0001'}) end.
'K2-NumericDivide-5'(_Config) ->
   Qry = "1 div 0e0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         INF
      ",
   case xqerl_types:string_value(Res) of
             "INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-6'(_Config) ->
   Qry = "-1 div 0e0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -INF
      ",
   case xqerl_types:string_value(Res) of
             "-INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-7'(_Config) ->
   Qry = "1 div xs:float(0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         INF
      ",
   case xqerl_types:string_value(Res) of
             "INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-8'(_Config) ->
   Qry = "-1 div xs:float(0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -INF
      ",
   case xqerl_types:string_value(Res) of
             "-INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-9'(_Config) ->
   Qry = "+0e0 div -0e0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-10'(_Config) ->
   Qry = "+0e0 div +0e0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-11'(_Config) ->
   Qry = "-0e0 div -0e0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-12'(_Config) ->
   Qry = "-0e0 div +0e0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-13'(_Config) ->
   Qry = "+3 div +0e0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         INF
      ",
   case xqerl_types:string_value(Res) of
             "INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-14'(_Config) ->
   Qry = "-3 div +0e0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -INF
      ",
   case xqerl_types:string_value(Res) of
             "-INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-15'(_Config) ->
   Qry = "+3 div -0e0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -INF
      ",
   case xqerl_types:string_value(Res) of
             "-INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-16'(_Config) ->
   Qry = "-3 div -0e0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         INF
      ",
   case xqerl_types:string_value(Res) of
             "INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-NumericDivide-17'(_Config) ->
   Qry = "empty(<e/>/(div div div))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-divide-1'(_Config) ->
   Qry = "for $x in (1, xs:decimal(2), xs:float(3), xs:double(4), xs:untypedAtomic(5)), 
                $y in (6, xs:decimal(6), xs:float(6), xs:double(6), xs:untypedAtomic(6)),
                $result in ($x div $y)
            return 
                if ($result instance of xs:integer) then \"integer\"
                else if ($result instance of xs:decimal) then \"decimal\" 
                else if ($result instance of xs:double) then \"double\"
                else if ($result instance of xs:float) then \"float\"
                else error() 
       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         decimal decimal float double double decimal decimal float double double float float float double double double double double double double double double double double double
      ",
   case xqerl_types:string_value(Res) of
             "decimal decimal float double double decimal decimal float double double float float float double double double double double double double double double double double double" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-001'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	xs:double('NaN') div local:square(7)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-002'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	local:square(7) div xs:double('NaN')
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-003'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	local:square(7) div 1e0
      	",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         49
      ",
   case xqerl_types:string_value(Res) of
             "49" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-004'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	local:square(7) div -1e0
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -49
      ",
   case xqerl_types:string_value(Res) of
             "-49" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-005'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	xs:float('NaN') div local:square(7)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-006'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	local:square(7) div xs:float('NaN')
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-007'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	local:square(7) div xs:float(1)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         49
      ",
   case xqerl_types:string_value(Res) of
             "49" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-008'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	local:square(7) div xs:float(-1)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -49
      ",
   case xqerl_types:string_value(Res) of
             "-49" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-009'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	local:square(2.0) div 0.0
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOAR0001'}) end.
'cbcl-numeric-divide-010'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	local:square(7.0) div 1.0
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         49
      ",
   case xqerl_types:string_value(Res) of
             "49" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-011'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	local:square(7.0) div -1.0
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -49
      ",
   case xqerl_types:string_value(Res) of
             "-49" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-012'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	local:square(2) div 0
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOAR0001'}) end.
'cbcl-numeric-divide-013'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	local:square(7) div 1
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         49
      ",
   case xqerl_types:string_value(Res) of
             "49" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-014'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; 
      	local:square(7) div -1
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -49
      ",
   case xqerl_types:string_value(Res) of
             "-49" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-numeric-divide-015'(_Config) ->
   Qry = "10000000000000000000000000000.0 div 0.1 gt 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
	      
	      
	    
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-divide-big-01'(_Config) ->
   Qry = "(10000000000000000000000000000.0 div 0.1) cast as xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
	      
	      100000000000000000000000000000
	    
      ",
 case (xqerl_types:string_value(Res) == "100000000000000000000000000000") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
