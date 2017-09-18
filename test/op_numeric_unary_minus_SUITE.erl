-module('op_numeric_unary_minus_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-numeric-unary-minusint1args-1'/1]).
-export(['op-numeric-unary-minusint1args-2'/1]).
-export(['op-numeric-unary-minusint1args-3'/1]).
-export(['op-numeric-unary-minusintg1args-1'/1]).
-export(['op-numeric-unary-minusintg1args-2'/1]).
-export(['op-numeric-unary-minusintg1args-3'/1]).
-export(['op-numeric-unary-minusdec1args-1'/1]).
-export(['op-numeric-unary-minusdec1args-2'/1]).
-export(['op-numeric-unary-minusdec1args-3'/1]).
-export(['op-numeric-unary-minusdbl1args-1'/1]).
-export(['op-numeric-unary-minusdbl1args-2'/1]).
-export(['op-numeric-unary-minusdbl1args-3'/1]).
-export(['op-numeric-unary-minusflt1args-1'/1]).
-export(['op-numeric-unary-minusflt1args-2'/1]).
-export(['op-numeric-unary-minusflt1args-3'/1]).
-export(['op-numeric-unary-minuslng1args-1'/1]).
-export(['op-numeric-unary-minuslng1args-2'/1]).
-export(['op-numeric-unary-minuslng1args-3'/1]).
-export(['op-numeric-unary-minususht1args-1'/1]).
-export(['op-numeric-unary-minususht1args-2'/1]).
-export(['op-numeric-unary-minususht1args-3'/1]).
-export(['op-numeric-unary-minusnint1args-1'/1]).
-export(['op-numeric-unary-minusnint1args-2'/1]).
-export(['op-numeric-unary-minusnint1args-3'/1]).
-export(['op-numeric-unary-minuspint1args-1'/1]).
-export(['op-numeric-unary-minuspint1args-2'/1]).
-export(['op-numeric-unary-minuspint1args-3'/1]).
-export(['op-numeric-unary-minusulng1args-1'/1]).
-export(['op-numeric-unary-minusulng1args-2'/1]).
-export(['op-numeric-unary-minusulng1args-3'/1]).
-export(['op-numeric-unary-minusnpi1args-1'/1]).
-export(['op-numeric-unary-minusnpi1args-2'/1]).
-export(['op-numeric-unary-minusnpi1args-3'/1]).
-export(['op-numeric-unary-minusnni1args-1'/1]).
-export(['op-numeric-unary-minusnni1args-2'/1]).
-export(['op-numeric-unary-minusnni1args-3'/1]).
-export(['op-numeric-unary-minussht1args-1'/1]).
-export(['op-numeric-unary-minussht1args-2'/1]).
-export(['op-numeric-unary-minussht1args-3'/1]).
-export(['K-NumericUnaryMinus-1'/1]).
-export(['K-NumericUnaryMinus-2'/1]).
-export(['K-NumericUnaryMinus-3'/1]).
-export(['K-NumericUnaryMinus-4'/1]).
-export(['K-NumericUnaryMinus-5'/1]).
-export(['K-NumericUnaryMinus-6'/1]).
-export(['K-NumericUnaryMinus-7'/1]).
-export(['K-NumericUnaryMinus-8'/1]).
-export(['K-NumericUnaryMinus-9'/1]).
-export(['K-NumericUnaryMinus-10'/1]).
-export(['K-NumericUnaryMinus-11'/1]).
-export(['K-NumericUnaryMinus-12'/1]).
-export(['K-NumericUnaryMinus-13'/1]).
-export(['K2-NumericUnaryMinus-1'/1]).
-export(['K2-NumericUnaryMinus-2'/1]).
-export(['K2-NumericUnaryMinus-3'/1]).
-export(['K2-NumericUnaryMinus-4'/1]).
-export(['K2-NumericUnaryMinus-5'/1]).
-export(['K2-NumericUnaryMinus-6'/1]).
-export(['K2-NumericUnaryMinus-7'/1]).
-export(['K2-NumericUnaryMinus-8'/1]).
-export(['K2-NumericUnaryMinus-9'/1]).
-export(['K2-NumericUnaryMinus-10'/1]).
-export(['op-numeric-unary-minus-1'/1]).
-export(['cbcl-numeric-unary-minus-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-numeric-unary-minusint1args-1',
   'op-numeric-unary-minusint1args-2',
   'op-numeric-unary-minusint1args-3',
   'op-numeric-unary-minusintg1args-1',
   'op-numeric-unary-minusintg1args-2',
   'op-numeric-unary-minusintg1args-3',
   'op-numeric-unary-minusdec1args-1',
   'op-numeric-unary-minusdec1args-2',
   'op-numeric-unary-minusdec1args-3',
   'op-numeric-unary-minusdbl1args-1',
   'op-numeric-unary-minusdbl1args-2',
   'op-numeric-unary-minusdbl1args-3',
   'op-numeric-unary-minusflt1args-1',
   'op-numeric-unary-minusflt1args-2',
   'op-numeric-unary-minusflt1args-3',
   'op-numeric-unary-minuslng1args-1',
   'op-numeric-unary-minuslng1args-2',
   'op-numeric-unary-minuslng1args-3',
   'op-numeric-unary-minususht1args-1',
   'op-numeric-unary-minususht1args-2',
   'op-numeric-unary-minususht1args-3',
   'op-numeric-unary-minusnint1args-1',
   'op-numeric-unary-minusnint1args-2',
   'op-numeric-unary-minusnint1args-3',
   'op-numeric-unary-minuspint1args-1',
   'op-numeric-unary-minuspint1args-2',
   'op-numeric-unary-minuspint1args-3',
   'op-numeric-unary-minusulng1args-1',
   'op-numeric-unary-minusulng1args-2',
   'op-numeric-unary-minusulng1args-3',
   'op-numeric-unary-minusnpi1args-1',
   'op-numeric-unary-minusnpi1args-2',
   'op-numeric-unary-minusnpi1args-3',
   'op-numeric-unary-minusnni1args-1',
   'op-numeric-unary-minusnni1args-2',
   'op-numeric-unary-minusnni1args-3',
   'op-numeric-unary-minussht1args-1',
   'op-numeric-unary-minussht1args-2',
   'op-numeric-unary-minussht1args-3',
   'K-NumericUnaryMinus-1',
   'K-NumericUnaryMinus-2',
   'K-NumericUnaryMinus-3',
   'K-NumericUnaryMinus-4',
   'K-NumericUnaryMinus-5',
   'K-NumericUnaryMinus-6',
   'K-NumericUnaryMinus-7',
   'K-NumericUnaryMinus-8',
   'K-NumericUnaryMinus-9',
   'K-NumericUnaryMinus-10',
   'K-NumericUnaryMinus-11',
   'K-NumericUnaryMinus-12',
   'K-NumericUnaryMinus-13',
   'K2-NumericUnaryMinus-1',
   'K2-NumericUnaryMinus-2',
   'K2-NumericUnaryMinus-3',
   'K2-NumericUnaryMinus-4',
   'K2-NumericUnaryMinus-5',
   'K2-NumericUnaryMinus-6',
   'K2-NumericUnaryMinus-7',
   'K2-NumericUnaryMinus-8',
   'K2-NumericUnaryMinus-9',
   'K2-NumericUnaryMinus-10',
   'op-numeric-unary-minus-1',
   'cbcl-numeric-unary-minus-001'].
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
'op-numeric-unary-minusint1args-1'(_Config) ->
   Qry = "-(xs:int(\"-2147483647\"))",
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
'op-numeric-unary-minusint1args-2'(_Config) ->
   Qry = "-(xs:int(\"-1873914410\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1873914410\n      ",
 Tst = xqerl:run("1873914410"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusint1args-3'(_Config) ->
   Qry = "-(xs:int(\"2147483647\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -2147483647\n      ",
 Tst = xqerl:run("-2147483647"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusintg1args-1'(_Config) ->
   Qry = "-(xs:integer(\"-999999999999999999\"))",
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
'op-numeric-unary-minusintg1args-2'(_Config) ->
   Qry = "-(xs:integer(\"830993497117024304\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -830993497117024304\n      ",
 Tst = xqerl:run("-830993497117024304"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusintg1args-3'(_Config) ->
   Qry = "-(xs:integer(\"999999999999999999\"))",
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
'op-numeric-unary-minusdec1args-1'(_Config) ->
   Qry = "-(xs:decimal(\"-999999999999999999\"))",
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
'op-numeric-unary-minusdec1args-2'(_Config) ->
   Qry = "-(xs:decimal(\"617375191608514839\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -617375191608514839\n      ",
 Tst = xqerl:run("-617375191608514839"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusdec1args-3'(_Config) ->
   Qry = "-(xs:decimal(\"999999999999999999\"))",
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
'op-numeric-unary-minusdbl1args-1'(_Config) ->
   Qry = "-(xs:double(\"-1.7976931348623157E308\"))",
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
'op-numeric-unary-minusdbl1args-2'(_Config) ->
   Qry = "-(xs:double(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -0\n      ",
 Tst = xqerl:run("-0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusdbl1args-3'(_Config) ->
   Qry = "-(xs:double(\"1.7976931348623157E308\"))",
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
'op-numeric-unary-minusflt1args-1'(_Config) ->
   Qry = "-(xs:float(\"-3.4028235E38\"))",
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
'op-numeric-unary-minusflt1args-2'(_Config) ->
   Qry = "-(xs:float(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -0\n      ",
 Tst = xqerl:run("-0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusflt1args-3'(_Config) ->
   Qry = "-(xs:float(\"3.4028235E38\"))",
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
'op-numeric-unary-minuslng1args-1'(_Config) ->
   Qry = "-(xs:long(\"-92233720368547758\"))",
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
'op-numeric-unary-minuslng1args-2'(_Config) ->
   Qry = "-(xs:long(\"-47175562203048468\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         47175562203048468\n      ",
 Tst = xqerl:run("47175562203048468"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minuslng1args-3'(_Config) ->
   Qry = "-(xs:long(\"92233720368547758\"))",
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
'op-numeric-unary-minususht1args-1'(_Config) ->
   Qry = "-(xs:unsignedShort(\"0\"))",
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
'op-numeric-unary-minususht1args-2'(_Config) ->
   Qry = "-(xs:unsignedShort(\"44633\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -44633\n      ",
 Tst = xqerl:run("-44633"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minususht1args-3'(_Config) ->
   Qry = "-(xs:unsignedShort(\"65535\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -65535\n      ",
 Tst = xqerl:run("-65535"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusnint1args-1'(_Config) ->
   Qry = "-(xs:negativeInteger(\"-999999999999999999\"))",
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
'op-numeric-unary-minusnint1args-2'(_Config) ->
   Qry = "-(xs:negativeInteger(\"-297014075999096793\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         297014075999096793\n      ",
 Tst = xqerl:run("297014075999096793"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusnint1args-3'(_Config) ->
   Qry = "-(xs:negativeInteger(\"-1\"))",
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
'op-numeric-unary-minuspint1args-1'(_Config) ->
   Qry = "-(xs:positiveInteger(\"1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1\n      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minuspint1args-2'(_Config) ->
   Qry = "-(xs:positiveInteger(\"52704602390610033\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -52704602390610033\n      ",
 Tst = xqerl:run("-52704602390610033"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minuspint1args-3'(_Config) ->
   Qry = "-(xs:positiveInteger(\"999999999999999999\"))",
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
'op-numeric-unary-minusulng1args-1'(_Config) ->
   Qry = "-(xs:unsignedLong(\"0\"))",
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
'op-numeric-unary-minusulng1args-2'(_Config) ->
   Qry = "-(xs:unsignedLong(\"130747108607674654\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -130747108607674654\n      ",
 Tst = xqerl:run("-130747108607674654"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusulng1args-3'(_Config) ->
   Qry = "-(xs:unsignedLong(\"184467440737095516\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -184467440737095516\n      ",
 Tst = xqerl:run("-184467440737095516"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusnpi1args-1'(_Config) ->
   Qry = "-(xs:nonPositiveInteger(\"-999999999999999999\"))",
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
'op-numeric-unary-minusnpi1args-2'(_Config) ->
   Qry = "-(xs:nonPositiveInteger(\"-475688437271870490\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         475688437271870490\n      ",
 Tst = xqerl:run("475688437271870490"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusnpi1args-3'(_Config) ->
   Qry = "-(xs:nonPositiveInteger(\"0\"))",
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
'op-numeric-unary-minusnni1args-1'(_Config) ->
   Qry = "-(xs:nonNegativeInteger(\"0\"))",
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
'op-numeric-unary-minusnni1args-2'(_Config) ->
   Qry = "-(xs:nonNegativeInteger(\"303884545991464527\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -303884545991464527\n      ",
 Tst = xqerl:run("-303884545991464527"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minusnni1args-3'(_Config) ->
   Qry = "-(xs:nonNegativeInteger(\"999999999999999999\"))",
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
'op-numeric-unary-minussht1args-1'(_Config) ->
   Qry = "-(xs:short(\"-32768\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         32768\n      ",
 Tst = xqerl:run("32768"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minussht1args-2'(_Config) ->
   Qry = "-(xs:short(\"-5324\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         5324\n      ",
 Tst = xqerl:run("5324"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minussht1args-3'(_Config) ->
   Qry = "-(xs:short(\"32767\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -32767\n      ",
 Tst = xqerl:run("-32767"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-1'(_Config) ->
   Qry = "-\"a string\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-NumericUnaryMinus-2'(_Config) ->
   Qry = "+(-3) eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-3'(_Config) ->
   Qry = "(-3) eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-4'(_Config) ->
   Qry = "(+3) ne -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-5'(_Config) ->
   Qry = "-3 eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-6'(_Config) ->
   Qry = "+(-3) eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-7'(_Config) ->
   Qry = "-(+3) eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-8'(_Config) ->
   Qry = "-(3) eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-9'(_Config) ->
   Qry = "-(3) eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-10'(_Config) ->
   Qry = "---------3 eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-11'(_Config) ->
   Qry = "+-+-+-+-+-+-+-+3 eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-12'(_Config) ->
   Qry = "----+-+-++-+-+-+-+++-+--+--3 eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericUnaryMinus-13'(_Config) ->
   Qry = "---3 eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NumericUnaryMinus-1'(_Config) ->
   Qry = "-xs:double(0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -0\n      ",
 Tst = xqerl:run("-0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-NumericUnaryMinus-2'(_Config) ->
   Qry = "-xs:float(0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -0\n      ",
 Tst = xqerl:run("-0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-NumericUnaryMinus-3'(_Config) ->
   Qry = "-xs:decimal(0)",
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
'K2-NumericUnaryMinus-4'(_Config) ->
   Qry = "-xs:integer(0)",
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
'K2-NumericUnaryMinus-5'(_Config) ->
   Qry = "-0.0",
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
'K2-NumericUnaryMinus-6'(_Config) ->
   Qry = "xs:float(-0.0)",
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
'K2-NumericUnaryMinus-7'(_Config) ->
   Qry = "xs:double(-0.0)",
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
'K2-NumericUnaryMinus-8'(_Config) ->
   Qry = "empty(document{()}/(-element()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NumericUnaryMinus-9'(_Config) ->
   Qry = "empty(-())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NumericUnaryMinus-10'(_Config) ->
   Qry = "-((<n>1</n> | ())[1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1\n      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-numeric-unary-minus-1'(_Config) ->
   Qry = "\n        for $x in (1, xs:decimal(2), xs:float(3), xs:double(4), xs:untypedAtomic(5)) \n        return typeswitch (-$x) \n        case xs:integer return \"integer\" \n        case xs:decimal return \"decimal\" \n        case xs:float return \"float\" \n        case xs:double return \"double\" \n        default return error()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         integer decimal float double double\n      ",
   case xqerl_test:string_value(Res) of
             "integer decimal float double double" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-numeric-unary-minus-001'(_Config) ->
   Qry = "declare function local:value($number as xs:boolean) { if ($number) then 1 else xs:string('1') }; -(local:value(true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            -1\n            \n         \n      ",
 case (xqerl_test:string_value(Res) == "-1") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
