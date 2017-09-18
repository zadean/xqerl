-module('op_numeric_subtract_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-numeric-subtractint2args-1'/1]).
-export(['op-numeric-subtractint2args-2'/1]).
-export(['op-numeric-subtractint2args-3'/1]).
-export(['op-numeric-subtractint2args-4'/1]).
-export(['op-numeric-subtractint2args-5'/1]).
-export(['op-numeric-subtractintg2args-1'/1]).
-export(['op-numeric-subtractintg2args-2'/1]).
-export(['op-numeric-subtractintg2args-3'/1]).
-export(['op-numeric-subtractintg2args-4'/1]).
-export(['op-numeric-subtractintg2args-5'/1]).
-export(['op-numeric-subtractdec2args-1'/1]).
-export(['op-numeric-subtractdec2args-2'/1]).
-export(['op-numeric-subtractdec2args-3'/1]).
-export(['op-numeric-subtractdec2args-4'/1]).
-export(['op-numeric-subtractdec2args-5'/1]).
-export(['op-numeric-subtractdbl2args-1'/1]).
-export(['op-numeric-subtractdbl2args-2'/1]).
-export(['op-numeric-subtractdbl2args-3'/1]).
-export(['op-numeric-subtractdbl2args-4'/1]).
-export(['op-numeric-subtractdbl2args-5'/1]).
-export(['op-numeric-subtractflt2args-1'/1]).
-export(['op-numeric-subtractflt2args-2'/1]).
-export(['op-numeric-subtractflt2args-3'/1]).
-export(['op-numeric-subtractflt2args-4'/1]).
-export(['op-numeric-subtractflt2args-5'/1]).
-export(['op-numeric-subtractlng2args-1'/1]).
-export(['op-numeric-subtractlng2args-2'/1]).
-export(['op-numeric-subtractlng2args-3'/1]).
-export(['op-numeric-subtractlng2args-4'/1]).
-export(['op-numeric-subtractlng2args-5'/1]).
-export(['op-numeric-subtractusht2args-1'/1]).
-export(['op-numeric-subtractusht2args-2'/1]).
-export(['op-numeric-subtractusht2args-3'/1]).
-export(['op-numeric-subtractusht2args-4'/1]).
-export(['op-numeric-subtractusht2args-5'/1]).
-export(['op-numeric-subtractnint2args-1'/1]).
-export(['op-numeric-subtractnint2args-2'/1]).
-export(['op-numeric-subtractpint2args-1'/1]).
-export(['op-numeric-subtractpint2args-2'/1]).
-export(['op-numeric-subtractpint2args-3'/1]).
-export(['op-numeric-subtractulng2args-1'/1]).
-export(['op-numeric-subtractulng2args-2'/1]).
-export(['op-numeric-subtractulng2args-3'/1]).
-export(['op-numeric-subtractulng2args-4'/1]).
-export(['op-numeric-subtractulng2args-5'/1]).
-export(['op-numeric-subtractnpi2args-1'/1]).
-export(['op-numeric-subtractnpi2args-2'/1]).
-export(['op-numeric-subtractnpi2args-3'/1]).
-export(['op-numeric-subtractnpi2args-4'/1]).
-export(['op-numeric-subtractnpi2args-5'/1]).
-export(['op-numeric-subtractnni2args-1'/1]).
-export(['op-numeric-subtractnni2args-2'/1]).
-export(['op-numeric-subtractnni2args-3'/1]).
-export(['op-numeric-subtractnni2args-4'/1]).
-export(['op-numeric-subtractnni2args-5'/1]).
-export(['op-numeric-subtractsht2args-1'/1]).
-export(['op-numeric-subtractsht2args-2'/1]).
-export(['op-numeric-subtractsht2args-3'/1]).
-export(['op-numeric-subtractsht2args-4'/1]).
-export(['op-numeric-subtractsht2args-5'/1]).
-export(['op-numeric-subtractmix2args-1'/1]).
-export(['op-numeric-subtractmix2args-2'/1]).
-export(['op-numeric-subtractmix2args-3'/1]).
-export(['op-numeric-subtractmix2args-4'/1]).
-export(['op-numeric-subtractmix2args-5'/1]).
-export(['op-numeric-subtractmix2args-6'/1]).
-export(['op-numeric-subtractmix2args-7'/1]).
-export(['op-numeric-subtractmix2args-8'/1]).
-export(['op-numeric-subtractmix2args-9'/1]).
-export(['K-NumericSubtract-1'/1]).
-export(['K-NumericSubtract-2'/1]).
-export(['K-NumericSubtract-3'/1]).
-export(['K-NumericSubtract-4'/1]).
-export(['K-NumericSubtract-5'/1]).
-export(['K-NumericSubtract-6'/1]).
-export(['K-NumericSubtract-7'/1]).
-export(['K-NumericSubtract-8'/1]).
-export(['K-NumericSubtract-9'/1]).
-export(['K-NumericSubtract-10'/1]).
-export(['K-NumericSubtract-11'/1]).
-export(['K-NumericSubtract-12'/1]).
-export(['K-NumericSubtract-13'/1]).
-export(['K-NumericSubtract-14'/1]).
-export(['K-NumericSubtract-15'/1]).
-export(['K-NumericSubtract-16'/1]).
-export(['K-NumericSubtract-17'/1]).
-export(['K-NumericSubtract-18'/1]).
-export(['K-NumericSubtract-19'/1]).
-export(['K-NumericSubtract-20'/1]).
-export(['K-NumericSubtract-21'/1]).
-export(['K-NumericSubtract-22'/1]).
-export(['K-NumericSubtract-23'/1]).
-export(['K-NumericSubtract-24'/1]).
-export(['K-NumericSubtract-25'/1]).
-export(['K-NumericSubtract-26'/1]).
-export(['K-NumericSubtract-27'/1]).
-export(['K-NumericSubtract-28'/1]).
-export(['K-NumericSubtract-29'/1]).
-export(['K-NumericSubtract-30'/1]).
-export(['K-NumericSubtract-31'/1]).
-export(['K-NumericSubtract-32'/1]).
-export(['K-NumericSubtract-33'/1]).
-export(['K-NumericSubtract-34'/1]).
-export(['K-NumericSubtract-35'/1]).
-export(['K-NumericSubtract-36'/1]).
-export(['K-NumericSubtract-37'/1]).
-export(['K-NumericSubtract-38'/1]).
-export(['K2-NumericSubtract-1'/1]).
-export(['K2-NumericSubtract-2'/1]).
-export(['op-numeric-subtract-1'/1]).
-export(['cbcl-numeric-subtract-001'/1]).
-export(['cbcl-numeric-subtract-002'/1]).
-export(['cbcl-numeric-subtract-003'/1]).
-export(['cbcl-numeric-subtract-004'/1]).
-export(['cbcl-numeric-subtract-005'/1]).
-export(['cbcl-numeric-subtract-006'/1]).
-export(['cbcl-numeric-subtract-007'/1]).
-export(['cbcl-numeric-subtract-008'/1]).
-export(['op-numeric-subtract-big-01'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-numeric-subtractint2args-1',
   'op-numeric-subtractint2args-2',
   'op-numeric-subtractint2args-3',
   'op-numeric-subtractint2args-4',
   'op-numeric-subtractint2args-5',
   'op-numeric-subtractintg2args-1',
   'op-numeric-subtractintg2args-2',
   'op-numeric-subtractintg2args-3',
   'op-numeric-subtractintg2args-4',
   'op-numeric-subtractintg2args-5',
   'op-numeric-subtractdec2args-1',
   'op-numeric-subtractdec2args-2',
   'op-numeric-subtractdec2args-3',
   'op-numeric-subtractdec2args-4',
   'op-numeric-subtractdec2args-5',
   'op-numeric-subtractdbl2args-1',
   'op-numeric-subtractdbl2args-2',
   'op-numeric-subtractdbl2args-3',
   'op-numeric-subtractdbl2args-4',
   'op-numeric-subtractdbl2args-5',
   'op-numeric-subtractflt2args-1',
   'op-numeric-subtractflt2args-2',
   'op-numeric-subtractflt2args-3',
   'op-numeric-subtractflt2args-4',
   'op-numeric-subtractflt2args-5',
   'op-numeric-subtractlng2args-1',
   'op-numeric-subtractlng2args-2',
   'op-numeric-subtractlng2args-3',
   'op-numeric-subtractlng2args-4',
   'op-numeric-subtractlng2args-5',
   'op-numeric-subtractusht2args-1',
   'op-numeric-subtractusht2args-2',
   'op-numeric-subtractusht2args-3',
   'op-numeric-subtractusht2args-4',
   'op-numeric-subtractusht2args-5',
   'op-numeric-subtractnint2args-1',
   'op-numeric-subtractnint2args-2',
   'op-numeric-subtractpint2args-1',
   'op-numeric-subtractpint2args-2',
   'op-numeric-subtractpint2args-3',
   'op-numeric-subtractulng2args-1',
   'op-numeric-subtractulng2args-2',
   'op-numeric-subtractulng2args-3',
   'op-numeric-subtractulng2args-4',
   'op-numeric-subtractulng2args-5',
   'op-numeric-subtractnpi2args-1',
   'op-numeric-subtractnpi2args-2',
   'op-numeric-subtractnpi2args-3',
   'op-numeric-subtractnpi2args-4',
   'op-numeric-subtractnpi2args-5',
   'op-numeric-subtractnni2args-1',
   'op-numeric-subtractnni2args-2',
   'op-numeric-subtractnni2args-3',
   'op-numeric-subtractnni2args-4',
   'op-numeric-subtractnni2args-5',
   'op-numeric-subtractsht2args-1',
   'op-numeric-subtractsht2args-2',
   'op-numeric-subtractsht2args-3',
   'op-numeric-subtractsht2args-4',
   'op-numeric-subtractsht2args-5',
   'op-numeric-subtractmix2args-1',
   'op-numeric-subtractmix2args-2',
   'op-numeric-subtractmix2args-3',
   'op-numeric-subtractmix2args-4',
   'op-numeric-subtractmix2args-5',
   'op-numeric-subtractmix2args-6',
   'op-numeric-subtractmix2args-7',
   'op-numeric-subtractmix2args-8',
   'op-numeric-subtractmix2args-9',
   'K-NumericSubtract-1',
   'K-NumericSubtract-2',
   'K-NumericSubtract-3',
   'K-NumericSubtract-4',
   'K-NumericSubtract-5',
   'K-NumericSubtract-6',
   'K-NumericSubtract-7',
   'K-NumericSubtract-8',
   'K-NumericSubtract-9',
   'K-NumericSubtract-10',
   'K-NumericSubtract-11',
   'K-NumericSubtract-12',
   'K-NumericSubtract-13',
   'K-NumericSubtract-14',
   'K-NumericSubtract-15',
   'K-NumericSubtract-16',
   'K-NumericSubtract-17',
   'K-NumericSubtract-18',
   'K-NumericSubtract-19',
   'K-NumericSubtract-20',
   'K-NumericSubtract-21',
   'K-NumericSubtract-22',
   'K-NumericSubtract-23',
   'K-NumericSubtract-24',
   'K-NumericSubtract-25',
   'K-NumericSubtract-26',
   'K-NumericSubtract-27',
   'K-NumericSubtract-28',
   'K-NumericSubtract-29',
   'K-NumericSubtract-30',
   'K-NumericSubtract-31',
   'K-NumericSubtract-32',
   'K-NumericSubtract-33',
   'K-NumericSubtract-34',
   'K-NumericSubtract-35',
   'K-NumericSubtract-36',
   'K-NumericSubtract-37',
   'K-NumericSubtract-38',
   'K2-NumericSubtract-1',
   'K2-NumericSubtract-2',
   'op-numeric-subtract-1',
   'cbcl-numeric-subtract-001',
   'cbcl-numeric-subtract-002',
   'cbcl-numeric-subtract-003',
   'cbcl-numeric-subtract-004',
   'cbcl-numeric-subtract-005',
   'cbcl-numeric-subtract-006',
   'cbcl-numeric-subtract-007',
   'cbcl-numeric-subtract-008',
   'op-numeric-subtract-big-01'].
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
'op-numeric-subtractint2args-1'(_Config) ->
   Qry = "xs:int(\"-2147483648\") - xs:int(\"-2147483648\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractint2args-2'(_Config) ->
   Qry = "xs:int(\"-1873914410\") - xs:int(\"-2147483648\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         273569238\n      ",
 Tst = xqerl:run("273569238"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractint2args-3'(_Config) ->
   Qry = "xs:int(\"-1\") - xs:int(\"-2147483648\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2147483647\n      ",
 Tst = xqerl:run("2147483647"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractint2args-4'(_Config) ->
   Qry = "xs:int(\"-2147483648\") - xs:int(\"-1873914410\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -273569238\n      ",
 Tst = xqerl:run("-273569238"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractint2args-5'(_Config) ->
   Qry = "xs:int(\"-1\") - xs:int(\"2147483647\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -2147483648\n      ",
 Tst = xqerl:run("-2147483648"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractintg2args-1'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") - xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractintg2args-2'(_Config) ->
   Qry = "xs:integer(\"0\") - xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractintg2args-3'(_Config) ->
   Qry = "xs:integer(\"0\") - xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractintg2args-4'(_Config) ->
   Qry = "xs:integer(\"-169006502882975695\") - xs:integer(\"830993497117024304\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractintg2args-5'(_Config) ->
   Qry = "xs:integer(\"0\") - xs:integer(\"999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractdec2args-1'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") - xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractdec2args-2'(_Config) ->
   Qry = "xs:decimal(\"0\") - xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractdec2args-3'(_Config) ->
   Qry = "xs:decimal(\"0\") - xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractdec2args-4'(_Config) ->
   Qry = "xs:decimal(\"-382624808391485160\") - xs:decimal(\"617375191608514839\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractdec2args-5'(_Config) ->
   Qry = "xs:decimal(\"0\") - xs:decimal(\"999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractdbl2args-1'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") - xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractdbl2args-2'(_Config) ->
   Qry = "xs:double(\"0\") - xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1.7976931348623157E308\n      ",
 Tst = xqerl:run("1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractdbl2args-3'(_Config) ->
   Qry = "xs:double(\"0\") - xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1.7976931348623157E308\n      ",
 Tst = xqerl:run("1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractdbl2args-4'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") - xs:double(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1.7976931348623157E308\n      ",
 Tst = xqerl:run("-1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractdbl2args-5'(_Config) ->
   Qry = "xs:double(\"0\") - xs:double(\"1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1.7976931348623157E308\n      ",
 Tst = xqerl:run("-1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractflt2args-1'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") - xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractflt2args-2'(_Config) ->
   Qry = "xs:float(\"0\") - xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xs:float(3.4028235E38)\n      ",
 Tst = xqerl:run("xs:float(3.4028235E38)"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractflt2args-3'(_Config) ->
   Qry = "xs:float(\"0\") - xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xs:float(3.4028235E38)\n      ",
 Tst = xqerl:run("xs:float(3.4028235E38)"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractflt2args-4'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") - xs:float(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xs:float(-3.4028235E38)\n      ",
 Tst = xqerl:run("xs:float(-3.4028235E38)"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractflt2args-5'(_Config) ->
   Qry = "xs:float(\"0\") - xs:float(\"3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xs:float(-3.4028235E38)\n      ",
 Tst = xqerl:run("xs:float(-3.4028235E38)"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractlng2args-1'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") - xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractlng2args-2'(_Config) ->
   Qry = "xs:long(\"-47175562203048468\") - xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         45058158165499290\n      ",
 Tst = xqerl:run("45058158165499290"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractlng2args-3'(_Config) ->
   Qry = "xs:long(\"0\") - xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         92233720368547758\n      ",
 Tst = xqerl:run("92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractlng2args-4'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") - xs:long(\"-47175562203048468\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -45058158165499290\n      ",
 Tst = xqerl:run("-45058158165499290"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractlng2args-5'(_Config) ->
   Qry = "xs:long(\"0\") - xs:long(\"92233720368547758\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -92233720368547758\n      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractusht2args-1'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") - xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractusht2args-2'(_Config) ->
   Qry = "xs:unsignedShort(\"44633\") - xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         44633\n      ",
 Tst = xqerl:run("44633"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractusht2args-3'(_Config) ->
   Qry = "xs:unsignedShort(\"65535\") - xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         65535\n      ",
 Tst = xqerl:run("65535"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractusht2args-4'(_Config) ->
   Qry = "xs:unsignedShort(\"44633\") - xs:unsignedShort(\"44633\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractusht2args-5'(_Config) ->
   Qry = "xs:unsignedShort(\"65535\") - xs:unsignedShort(\"65535\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnint2args-1'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") - xs:negativeInteger(\"-297014075999096793\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -702985924000903206\n      ",
 Tst = xqerl:run("-702985924000903206"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnint2args-2'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") - xs:negativeInteger(\"-1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999998\n      ",
 Tst = xqerl:run("-999999999999999998"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractpint2args-1'(_Config) ->
   Qry = "xs:positiveInteger(\"52704602390610033\") - xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         52704602390610032\n      ",
 Tst = xqerl:run("52704602390610032"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractpint2args-2'(_Config) ->
   Qry = "xs:positiveInteger(\"999999999999999999\") - xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999998\n      ",
 Tst = xqerl:run("999999999999999998"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractpint2args-3'(_Config) ->
   Qry = "xs:positiveInteger(\"52704602390610034\") - xs:positiveInteger(\"52704602390610033\")",
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
'op-numeric-subtractulng2args-1'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") - xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractulng2args-2'(_Config) ->
   Qry = "xs:unsignedLong(\"130747108607674654\") - xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         130747108607674654\n      ",
 Tst = xqerl:run("130747108607674654"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractulng2args-3'(_Config) ->
   Qry = "xs:unsignedLong(\"184467440737095516\") - xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         184467440737095516\n      ",
 Tst = xqerl:run("184467440737095516"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractulng2args-4'(_Config) ->
   Qry = "xs:unsignedLong(\"130747108607674654\") - xs:unsignedLong(\"130747108607674654\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractulng2args-5'(_Config) ->
   Qry = "xs:unsignedLong(\"184467440737095516\") - xs:unsignedLong(\"184467440737095516\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnpi2args-1'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") - xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnpi2args-2'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") - xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnpi2args-3'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") - xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnpi2args-4'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") - xs:nonPositiveInteger(\"-475688437271870490\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -524311562728129509\n      ",
 Tst = xqerl:run("-524311562728129509"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnpi2args-5'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") - xs:nonPositiveInteger(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnni2args-1'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") - xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnni2args-2'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"303884545991464527\") - xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         303884545991464527\n      ",
 Tst = xqerl:run("303884545991464527"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnni2args-3'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"999999999999999999\") - xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnni2args-4'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"303884545991464527\") - xs:nonNegativeInteger(\"303884545991464527\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractnni2args-5'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"999999999999999999\") - xs:nonNegativeInteger(\"999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractsht2args-1'(_Config) ->
   Qry = "xs:short(\"-32768\") - xs:short(\"-32768\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractsht2args-2'(_Config) ->
   Qry = "xs:short(\"-5324\") - xs:short(\"-32768\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         27444\n      ",
 Tst = xqerl:run("27444"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractsht2args-3'(_Config) ->
   Qry = "xs:short(\"-1\") - xs:short(\"-32768\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         32767\n      ",
 Tst = xqerl:run("32767"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractsht2args-4'(_Config) ->
   Qry = "xs:short(\"-32768\") - xs:short(\"-5324\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -27444\n      ",
 Tst = xqerl:run("-27444"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractsht2args-5'(_Config) ->
   Qry = "xs:short(\"-1\") - xs:short(\"32767\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -32768\n      ",
 Tst = xqerl:run("-32768"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractmix2args-1'(_Config) ->
   Qry = "1 - ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-numeric-subtractmix2args-2'(_Config) ->
   Qry = "1 - '1'",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'op-numeric-subtractmix2args-3'(_Config) ->
   Qry = "1 - xs:integer('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtractmix2args-4'(_Config) ->
   Qry = "3 - <a> 2 </a>",
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
'op-numeric-subtractmix2args-5'(_Config) ->
   Qry = "3 - <a> <b> 2 </b> </a>",
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
'op-numeric-subtractmix2args-6'(_Config) ->
   Qry = "3 - <a> <b> 2</b> <c> 2</c> </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'op-numeric-subtractmix2args-7'(_Config) ->
   Qry = "<a> 2 </a> - <b> 1 </b>",
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
'op-numeric-subtractmix2args-8'(_Config) ->
   Qry = "1 - <a> x </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'op-numeric-subtractmix2args-9'(_Config) ->
   Qry = "1 - <a/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'K-NumericSubtract-1'(_Config) ->
   Qry = "xs:double(6) - xs:double(2) eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-2'(_Config) ->
   Qry = "xs:decimal(6) - xs:decimal(2) eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-3'(_Config) ->
   Qry = "xs:integer(6) - xs:integer(2) eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-4'(_Config) ->
   Qry = "xs:float(5) - xs:float(1) eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-5'(_Config) ->
   Qry = "(xs:decimal(6) - xs:integer(2)) instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-6'(_Config) ->
   Qry = "(xs:integer(6) - xs:decimal(2)) instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-7'(_Config) ->
   Qry = "(xs:integer(6) - xs:integer(2)) instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-8'(_Config) ->
   Qry = "(xs:decimal(6) - xs:decimal(2)) instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-9'(_Config) ->
   Qry = "(xs:decimal(6) - xs:float(2)) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-10'(_Config) ->
   Qry = "(xs:float(6) - xs:decimal(2)) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-11'(_Config) ->
   Qry = "(xs:float(6) - xs:integer(2)) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-12'(_Config) ->
   Qry = "(xs:integer(6) - xs:float(2)) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-13'(_Config) ->
   Qry = "(xs:float(6) - xs:float(2)) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-14'(_Config) ->
   Qry = "(xs:decimal(6) - xs:double(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-15'(_Config) ->
   Qry = "(xs:double(6) - xs:decimal(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-16'(_Config) ->
   Qry = "(xs:double(6) - xs:float(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-17'(_Config) ->
   Qry = "(xs:float(6) - xs:double(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-18'(_Config) ->
   Qry = "(xs:double(6) - xs:integer(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-19'(_Config) ->
   Qry = "(xs:integer(6) - xs:double(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-20'(_Config) ->
   Qry = "(xs:double(6) - xs:double(2)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-21'(_Config) ->
   Qry = "string(xs:float(\"NaN\") - 3) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-22'(_Config) ->
   Qry = "string(xs:double(\"NaN\") - 3) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-23'(_Config) ->
   Qry = "string(3 - xs:float(\"NaN\")) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-24'(_Config) ->
   Qry = "string(3 - xs:double(\"NaN\")) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-25'(_Config) ->
   Qry = "\"3\" - \"3\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-NumericSubtract-26'(_Config) ->
   Qry = "xs:untypedAtomic(\"3\") - \"3\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-NumericSubtract-27'(_Config) ->
   Qry = "(xs:untypedAtomic(\"3\") - 3) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-28'(_Config) ->
   Qry = "(3 - xs:untypedAtomic(\"3\")) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-29'(_Config) ->
   Qry = "empty(() - ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NumericSubtract-30'(_Config) ->
   Qry = "empty(() - xs:float(3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NumericSubtract-31'(_Config) ->
   Qry = "empty(() - xs:double(3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NumericSubtract-32'(_Config) ->
   Qry = "(xs:untypedAtomic(\"3\") - xs:untypedAtomic(\"3\")) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-33'(_Config) ->
   Qry = "(xs:untypedAtomic(\"3\") - xs:untypedAtomic(\"3\")) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-34'(_Config) ->
   Qry = "(xs:untypedAtomic(\"3\") - 1.1) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-35'(_Config) ->
   Qry = "(1.1 - xs:untypedAtomic(\"3\")) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericSubtract-36'(_Config) ->
   Qry = "1 eq (remove((current-time(), 1), 1) - 0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NumericSubtract-37'(_Config) ->
   Qry = "1 eq (remove((current-time(), 1), 1) + 0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NumericSubtract-38'(_Config) ->
   Qry = "1 eq (0 + remove((current-time(), 1), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-NumericSubtract-1'(_Config) ->
   Qry = "0 - xs:double(0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-NumericSubtract-2'(_Config) ->
   Qry = "0 - xs:float(0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-subtract-1'(_Config) ->
   Qry = "\n        for $x in (1, xs:decimal(2), xs:float(3), xs:double(4), xs:untypedAtomic(5)) \n        for $y in (1, xs:decimal(2), xs:float(3), xs:double(4), xs:untypedAtomic(5)) \n        return typeswitch ($x - $y) \n        case xs:integer return \"integer\" \n        case xs:decimal return \"decimal\" \n        case xs:float return \"float\" \n        case xs:double return \"double\" \n        default return error()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         integer decimal float double double decimal decimal float double double float float float double double double double double double double double double double double double\n      ",
   case xqerl_test:string_value(Res) of
             "integer decimal float double double decimal decimal float double double float float float double double double double double double double double double double double double" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-numeric-subtract-001'(_Config) ->
   Qry = "-79228162514264337593543950335.0 - 1.0 lt 0.0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n	  \n	  \n	\n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-numeric-subtract-002'(_Config) ->
   Qry = "-79228162514264337593543950335 - 1 lt 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	\n	  \n	  \n	\n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-numeric-subtract-003'(_Config) ->
   Qry = "\n      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; \n      	local:square(7.5) - 0.0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         56.25\n      ",
   case xqerl_test:string_value(Res) of
             "56.25" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-numeric-subtract-004'(_Config) ->
   Qry = "\n      	declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; \n      	local:square(7) - 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         49\n      ",
   case xqerl_test:string_value(Res) of
             "49" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-numeric-subtract-005'(_Config) ->
   Qry = "\n      	declare function local:integer($x as xs:decimal) { if ($x mod 1 eq 0) then xs:integer($x) else $x }; \n      	(local:integer(2) - local:integer(2)) instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-subtract-006'(_Config) ->
   Qry = "\n      	declare function local:integer($x as xs:decimal) { if ($x mod 1 eq 0) then xs:integer($x) else $x }; \n      	-(local:integer(2)) - -(local:integer(4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2\n      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-numeric-subtract-007'(_Config) ->
   Qry = "\n      	declare function local:integer($x as xs:decimal) { if ($x mod 1 eq 0) then xs:integer($x) else $x }; \n      	local:integer(2) - -(local:integer(4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         6\n      ",
   case xqerl_test:string_value(Res) of
             "6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-numeric-subtract-008'(_Config) ->
   Qry = "\n      	declare function local:integer($x as xs:decimal) { if ($x mod 1 eq 0) then xs:integer($x) else $x }; \n      	-(local:integer(2)) - local:integer(4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -6\n      ",
   case xqerl_test:string_value(Res) of
             "-6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-numeric-subtract-big-01'(_Config) ->
   Qry = "(-79228162514264337593543950335.0 - 1.0) cast as xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n	    \n	      -79228162514264337593543950336\n	      \n	    \n      ",
 case (xqerl_test:string_value(Res) == "-79228162514264337593543950336") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
