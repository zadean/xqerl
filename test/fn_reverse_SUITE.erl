-module('fn_reverse_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-reverseint1args-1'/1]).
-export(['fn-reverseint1args-2'/1]).
-export(['fn-reverseint1args-3'/1]).
-export(['fn-reverseintg1args-1'/1]).
-export(['fn-reverseintg1args-2'/1]).
-export(['fn-reverseintg1args-3'/1]).
-export(['fn-reversedec1args-1'/1]).
-export(['fn-reversedec1args-2'/1]).
-export(['fn-reversedec1args-3'/1]).
-export(['fn-reversedbl1args-1'/1]).
-export(['fn-reversedbl1args-2'/1]).
-export(['fn-reversedbl1args-3'/1]).
-export(['fn-reverseflt1args-1'/1]).
-export(['fn-reverseflt1args-2'/1]).
-export(['fn-reverseflt1args-3'/1]).
-export(['fn-reverselng1args-1'/1]).
-export(['fn-reverselng1args-2'/1]).
-export(['fn-reverselng1args-3'/1]).
-export(['fn-reverseusht1args-1'/1]).
-export(['fn-reverseusht1args-2'/1]).
-export(['fn-reverseusht1args-3'/1]).
-export(['fn-reversenint1args-1'/1]).
-export(['fn-reversenint1args-2'/1]).
-export(['fn-reversenint1args-3'/1]).
-export(['fn-reversepint1args-1'/1]).
-export(['fn-reversepint1args-2'/1]).
-export(['fn-reversepint1args-3'/1]).
-export(['fn-reverseulng1args-1'/1]).
-export(['fn-reverseulng1args-2'/1]).
-export(['fn-reverseulng1args-3'/1]).
-export(['fn-reversenpi1args-1'/1]).
-export(['fn-reversenpi1args-2'/1]).
-export(['fn-reversenpi1args-3'/1]).
-export(['fn-reversenni1args-1'/1]).
-export(['fn-reversenni1args-2'/1]).
-export(['fn-reversenni1args-3'/1]).
-export(['fn-reversesht1args-1'/1]).
-export(['fn-reversesht1args-2'/1]).
-export(['fn-reversesht1args-3'/1]).
-export(['reverse-001'/1]).
-export(['reverse-002'/1]).
-export(['reverse-003'/1]).
-export(['K-SeqReverseFunc-1'/1]).
-export(['K-SeqReverseFunc-2'/1]).
-export(['K-SeqReverseFunc-3'/1]).
-export(['K-SeqReverseFunc-4'/1]).
-export(['K-SeqReverseFunc-5'/1]).
-export(['K-SeqReverseFunc-6'/1]).
-export(['K-SeqReverseFunc-7'/1]).
-export(['K-SeqReverseFunc-8'/1]).
-export(['K-SeqReverseFunc-9'/1]).
-export(['K-SeqReverseFunc-10'/1]).
-export(['K-SeqReverseFunc-11'/1]).
-export(['K-SeqReverseFunc-12'/1]).
-export(['K-SeqReverseFunc-13'/1]).
-export(['K-SeqReverseFunc-14'/1]).
-export(['K-SeqReverseFunc-15'/1]).
-export(['K-SeqReverseFunc-16'/1]).
-export(['K-SeqReverseFunc-17'/1]).
-export(['K-SeqReverseFunc-18'/1]).
-export(['K-SeqReverseFunc-19'/1]).
-export(['K-SeqReverseFunc-20'/1]).
-export(['K-SeqReverseFunc-21'/1]).
-export(['K2-SeqReverseFunc-1'/1]).
-export(['K2-SeqReverseFunc-2'/1]).
-export(['K2-SeqReverseFunc-3'/1]).
-export(['K2-SeqReverseFunc-4'/1]).
-export(['K2-SeqReverseFunc-5'/1]).
-export(['K2-SeqReverseFunc-6'/1]).
-export(['cbcl-reverse-1'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-reverseint1args-1',
   'fn-reverseint1args-2',
   'fn-reverseint1args-3',
   'fn-reverseintg1args-1',
   'fn-reverseintg1args-2',
   'fn-reverseintg1args-3',
   'fn-reversedec1args-1',
   'fn-reversedec1args-2',
   'fn-reversedec1args-3',
   'fn-reversedbl1args-1',
   'fn-reversedbl1args-2',
   'fn-reversedbl1args-3',
   'fn-reverseflt1args-1',
   'fn-reverseflt1args-2',
   'fn-reverseflt1args-3',
   'fn-reverselng1args-1',
   'fn-reverselng1args-2',
   'fn-reverselng1args-3',
   'fn-reverseusht1args-1',
   'fn-reverseusht1args-2',
   'fn-reverseusht1args-3',
   'fn-reversenint1args-1',
   'fn-reversenint1args-2',
   'fn-reversenint1args-3',
   'fn-reversepint1args-1',
   'fn-reversepint1args-2',
   'fn-reversepint1args-3',
   'fn-reverseulng1args-1',
   'fn-reverseulng1args-2',
   'fn-reverseulng1args-3',
   'fn-reversenpi1args-1',
   'fn-reversenpi1args-2',
   'fn-reversenpi1args-3',
   'fn-reversenni1args-1',
   'fn-reversenni1args-2',
   'fn-reversenni1args-3',
   'fn-reversesht1args-1',
   'fn-reversesht1args-2',
   'fn-reversesht1args-3',
   'reverse-001',
   'reverse-002',
   'reverse-003',
   'K-SeqReverseFunc-1',
   'K-SeqReverseFunc-2',
   'K-SeqReverseFunc-3',
   'K-SeqReverseFunc-4',
   'K-SeqReverseFunc-5',
   'K-SeqReverseFunc-6',
   'K-SeqReverseFunc-7',
   'K-SeqReverseFunc-8',
   'K-SeqReverseFunc-9',
   'K-SeqReverseFunc-10',
   'K-SeqReverseFunc-11',
   'K-SeqReverseFunc-12',
   'K-SeqReverseFunc-13',
   'K-SeqReverseFunc-14',
   'K-SeqReverseFunc-15',
   'K-SeqReverseFunc-16',
   'K-SeqReverseFunc-17',
   'K-SeqReverseFunc-18',
   'K-SeqReverseFunc-19',
   'K-SeqReverseFunc-20',
   'K-SeqReverseFunc-21',
   'K2-SeqReverseFunc-1',
   'K2-SeqReverseFunc-2',
   'K2-SeqReverseFunc-3',
   'K2-SeqReverseFunc-4',
   'K2-SeqReverseFunc-5',
   'K2-SeqReverseFunc-6',
   'cbcl-reverse-1'].
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
'fn-reverseint1args-1'(_Config) ->
   Qry = "fn:reverse((xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -2147483648
      ",
 Tst = xqerl:run("-2147483648"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverseint1args-2'(_Config) ->
   Qry = "fn:reverse((xs:int(\"-1873914410\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1873914410
      ",
 Tst = xqerl:run("-1873914410"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverseint1args-3'(_Config) ->
   Qry = "fn:reverse((xs:int(\"2147483647\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2147483647
      ",
 Tst = xqerl:run("2147483647"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverseintg1args-1'(_Config) ->
   Qry = "fn:reverse((xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverseintg1args-2'(_Config) ->
   Qry = "fn:reverse((xs:integer(\"830993497117024304\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         830993497117024304
      ",
 Tst = xqerl:run("830993497117024304"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverseintg1args-3'(_Config) ->
   Qry = "fn:reverse((xs:integer(\"999999999999999999\")))",
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
'fn-reversedec1args-1'(_Config) ->
   Qry = "fn:reverse((xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversedec1args-2'(_Config) ->
   Qry = "fn:reverse((xs:decimal(\"617375191608514839\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         617375191608514839
      ",
 Tst = xqerl:run("617375191608514839"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversedec1args-3'(_Config) ->
   Qry = "fn:reverse((xs:decimal(\"999999999999999999\")))",
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
'fn-reversedbl1args-1'(_Config) ->
   Qry = "fn:reverse((xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.7976931348623157E308
      ",
 Tst = xqerl:run("-1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversedbl1args-2'(_Config) ->
   Qry = "fn:reverse((xs:double(\"0\")))",
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
'fn-reversedbl1args-3'(_Config) ->
   Qry = "fn:reverse((xs:double(\"1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.7976931348623157E308
      ",
 Tst = xqerl:run("1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverseflt1args-1'(_Config) ->
   Qry = "fn:reverse((xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:float(\"-3.4028235E38\")
      ",
 Tst = xqerl:run("xs:float(\"-3.4028235E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverseflt1args-2'(_Config) ->
   Qry = "fn:reverse((xs:float(\"0\")))",
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
'fn-reverseflt1args-3'(_Config) ->
   Qry = "fn:reverse((xs:float(\"3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:float(\"3.4028235E38\")
      ",
 Tst = xqerl:run("xs:float(\"3.4028235E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverselng1args-1'(_Config) ->
   Qry = "fn:reverse((xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -92233720368547758
      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverselng1args-2'(_Config) ->
   Qry = "fn:reverse((xs:long(\"-47175562203048468\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -47175562203048468
      ",
 Tst = xqerl:run("-47175562203048468"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverselng1args-3'(_Config) ->
   Qry = "fn:reverse((xs:long(\"92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         92233720368547758
      ",
 Tst = xqerl:run("92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverseusht1args-1'(_Config) ->
   Qry = "fn:reverse((xs:unsignedShort(\"0\")))",
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
'fn-reverseusht1args-2'(_Config) ->
   Qry = "fn:reverse((xs:unsignedShort(\"44633\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         44633
      ",
 Tst = xqerl:run("44633"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverseusht1args-3'(_Config) ->
   Qry = "fn:reverse((xs:unsignedShort(\"65535\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         65535
      ",
 Tst = xqerl:run("65535"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversenint1args-1'(_Config) ->
   Qry = "fn:reverse((xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversenint1args-2'(_Config) ->
   Qry = "fn:reverse((xs:negativeInteger(\"-297014075999096793\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -297014075999096793
      ",
 Tst = xqerl:run("-297014075999096793"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversenint1args-3'(_Config) ->
   Qry = "fn:reverse((xs:negativeInteger(\"-1\")))",
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
'fn-reversepint1args-1'(_Config) ->
   Qry = "fn:reverse((xs:positiveInteger(\"1\")))",
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
'fn-reversepint1args-2'(_Config) ->
   Qry = "fn:reverse((xs:positiveInteger(\"52704602390610033\")))",
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
'fn-reversepint1args-3'(_Config) ->
   Qry = "fn:reverse((xs:positiveInteger(\"999999999999999999\")))",
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
'fn-reverseulng1args-1'(_Config) ->
   Qry = "fn:reverse((xs:unsignedLong(\"0\")))",
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
'fn-reverseulng1args-2'(_Config) ->
   Qry = "fn:reverse((xs:unsignedLong(\"130747108607674654\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         130747108607674654
      ",
 Tst = xqerl:run("130747108607674654"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reverseulng1args-3'(_Config) ->
   Qry = "fn:reverse((xs:unsignedLong(\"184467440737095516\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         184467440737095516
      ",
 Tst = xqerl:run("184467440737095516"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversenpi1args-1'(_Config) ->
   Qry = "fn:reverse((xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversenpi1args-2'(_Config) ->
   Qry = "fn:reverse((xs:nonPositiveInteger(\"-475688437271870490\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -475688437271870490
      ",
 Tst = xqerl:run("-475688437271870490"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversenpi1args-3'(_Config) ->
   Qry = "fn:reverse((xs:nonPositiveInteger(\"0\")))",
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
'fn-reversenni1args-1'(_Config) ->
   Qry = "fn:reverse((xs:nonNegativeInteger(\"0\")))",
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
'fn-reversenni1args-2'(_Config) ->
   Qry = "fn:reverse((xs:nonNegativeInteger(\"303884545991464527\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         303884545991464527
      ",
 Tst = xqerl:run("303884545991464527"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversenni1args-3'(_Config) ->
   Qry = "fn:reverse((xs:nonNegativeInteger(\"999999999999999999\")))",
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
'fn-reversesht1args-1'(_Config) ->
   Qry = "fn:reverse((xs:short(\"-32768\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -32768
      ",
 Tst = xqerl:run("-32768"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversesht1args-2'(_Config) ->
   Qry = "fn:reverse((xs:short(\"-5324\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -5324
      ",
 Tst = xqerl:run("-5324"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-reversesht1args-3'(_Config) ->
   Qry = "fn:reverse((xs:short(\"32767\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         32767
      ",
 Tst = xqerl:run("32767"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'reverse-001'(_Config) ->
   Qry = "fn:reverse(1 to 10)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10, 9, 8, 7, 6, 5, 4, 3, 2, 1
      ",
 Tst = xqerl:run("10, 9, 8, 7, 6, 5, 4, 3, 2, 1"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'reverse-002'(_Config) ->
   Qry = "fn:reverse(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'reverse-003'(_Config) ->
   Qry = "string-join(reverse(((//*:Open)[1])/ancestor-or-self::*/local-name()), '~')",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"Open~Schedule~Auction~AuctionWatchList\"
      ",
 Tst = xqerl:run("\"Open~Schedule~Auction~AuctionWatchList\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-1'(_Config) ->
   Qry = "reverse()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqReverseFunc-2'(_Config) ->
   Qry = "reverse(1, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqReverseFunc-3'(_Config) ->
   Qry = "empty(reverse(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqReverseFunc-4'(_Config) ->
   Qry = "not(empty(reverse((1))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-5'(_Config) ->
   Qry = "not(reverse(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqReverseFunc-6'(_Config) ->
   Qry = "not(exists(reverse(())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqReverseFunc-7'(_Config) ->
   Qry = "exists(reverse((1)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-8'(_Config) ->
   Qry = "reverse((1, current-time())[1])",
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
'K-SeqReverseFunc-9'(_Config) ->
   Qry = "exists(reverse((1, 2, 3)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-10'(_Config) ->
   Qry = "count(reverse((1, 2, 3)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-11'(_Config) ->
   Qry = "count(reverse((1, 2, 3)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-12'(_Config) ->
   Qry = "deep-equal((3, 2, 1), reverse(1 to 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-13'(_Config) ->
   Qry = "deep-equal((3, 2, 1), reverse((1, 2, 3)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-14'(_Config) ->
   Qry = "deep-equal((11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1), reverse(((), (), 1, 2, (3, 4), (5), (6, (7, 8), 9), 10, (), 11, ())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-15'(_Config) ->
   Qry = "reverse(error())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-SeqReverseFunc-16'(_Config) ->
   Qry = "reverse((1, 2, 3))[last()] eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-17'(_Config) ->
   Qry = "reverse((1, 2, 3))[last() - 2]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-18'(_Config) ->
   Qry = "reverse((1, 2, 3))[last() - 1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-19'(_Config) ->
   Qry = "deep-equal((3, 2, 1), reverse((1, 2, 3))[true()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-20'(_Config) ->
   Qry = "reverse((1, 2, current-time(), 3))[last() - 1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqReverseFunc-21'(_Config) ->
   Qry = "reverse((1, 2, current-time(), 3))[last() - 0]",
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
'K2-SeqReverseFunc-1'(_Config) ->
   Qry = "reverse((<a> <b> <c/> <d/> </b> <e/> </a> , <f/>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <f/><a><b><c/><d/></b><e/></a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<f/><a><b><c/><d/></b><e/></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<f/><a><b><c/><d/></b><e/></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-SeqReverseFunc-2'(_Config) ->
   Qry = "declare variable $myVar := unordered{ordered{unordered{fn:reverse((<a/>, <b/>))}}}; deep-equal($myVar, (<a/>, <b/>)) or deep-equal($myVar, (<b/>, <a/>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqReverseFunc-3'(_Config) ->
   Qry = "declare variable $myVar := unordered(fn:reverse((<a/>, <b/>))); deep-equal($myVar, (<a/>, <b/>)) or deep-equal($myVar, (<b/>, <a/>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqReverseFunc-4'(_Config) ->
   Qry = "fn:reverse(1, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-SeqReverseFunc-5'(_Config) ->
   Qry = "fn:reverse()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-SeqReverseFunc-6'(_Config) ->
   Qry = "declare ordering unordered; reverse((1, 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2, 1
      ",
 Tst = xqerl:run("2, 1"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'cbcl-reverse-1'(_Config) ->
   Qry = "empty(reverse( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
