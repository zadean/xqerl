-module('fn_distinct_values_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-distinct-valuesint1args-1'/1]).
-export(['fn-distinct-valuesint1args-2'/1]).
-export(['fn-distinct-valuesint1args-3'/1]).
-export(['fn-distinct-valuesintg1args-1'/1]).
-export(['fn-distinct-valuesintg1args-2'/1]).
-export(['fn-distinct-valuesintg1args-3'/1]).
-export(['fn-distinct-valuesdec1args-1'/1]).
-export(['fn-distinct-valuesdec1args-2'/1]).
-export(['fn-distinct-valuesdec1args-3'/1]).
-export(['fn-distinct-valuesdbl1args-1'/1]).
-export(['fn-distinct-valuesdbl1args-2'/1]).
-export(['fn-distinct-valuesdbl1args-3'/1]).
-export(['fn-distinct-valuesflt1args-1'/1]).
-export(['fn-distinct-valuesflt1args-2'/1]).
-export(['fn-distinct-valuesflt1args-3'/1]).
-export(['fn-distinct-valueslng1args-1'/1]).
-export(['fn-distinct-valueslng1args-2'/1]).
-export(['fn-distinct-valueslng1args-3'/1]).
-export(['fn-distinct-valuesusht1args-1'/1]).
-export(['fn-distinct-valuesusht1args-2'/1]).
-export(['fn-distinct-valuesusht1args-3'/1]).
-export(['fn-distinct-valuesnint1args-1'/1]).
-export(['fn-distinct-valuesnint1args-2'/1]).
-export(['fn-distinct-valuesnint1args-3'/1]).
-export(['fn-distinct-valuespint1args-1'/1]).
-export(['fn-distinct-valuespint1args-2'/1]).
-export(['fn-distinct-valuespint1args-3'/1]).
-export(['fn-distinct-valuesulng1args-1'/1]).
-export(['fn-distinct-valuesulng1args-2'/1]).
-export(['fn-distinct-valuesulng1args-3'/1]).
-export(['fn-distinct-valuesnpi1args-1'/1]).
-export(['fn-distinct-valuesnpi1args-2'/1]).
-export(['fn-distinct-valuesnpi1args-3'/1]).
-export(['fn-distinct-valuesnni1args-1'/1]).
-export(['fn-distinct-valuesnni1args-2'/1]).
-export(['fn-distinct-valuesnni1args-3'/1]).
-export(['fn-distinct-valuessht1args-1'/1]).
-export(['fn-distinct-valuessht1args-2'/1]).
-export(['fn-distinct-valuessht1args-3'/1]).
-export(['fn-distinct-values-mixed-args-001'/1]).
-export(['fn-distinct-values-mixed-args-002'/1]).
-export(['fn-distinct-values-mixed-args-003'/1]).
-export(['fn-distinct-values-mixed-args-004'/1]).
-export(['fn-distinct-values-mixed-args-005'/1]).
-export(['fn-distinct-values-mixed-args-006'/1]).
-export(['fn-distinct-values-mixed-args-007'/1]).
-export(['fn-distinct-values-mixed-args-008'/1]).
-export(['fn-distinct-values-mixed-args-009'/1]).
-export(['fn-distinct-values-mixed-args-010'/1]).
-export(['fn-distinct-values-mixed-args-011'/1]).
-export(['fn-distinct-values-mixed-args-012'/1]).
-export(['fn-distinct-values-mixed-args-013'/1]).
-export(['fn-distinct-values-mixed-args-014'/1]).
-export(['fn-distinct-values-mixed-args-015'/1]).
-export(['fn-distinct-values-mixed-args-016'/1]).
-export(['fn-distinct-values-mixed-args-017'/1]).
-export(['fn-distinct-values-mixed-args-018'/1]).
-export(['fn-distinct-values-mixed-args-019'/1]).
-export(['fn-distinct-values-mixed-args-020'/1]).
-export(['fn-distinct-values-mixed-args-021'/1]).
-export(['fn-distinct-values-mixed-args-022'/1]).
-export(['fn-distinct-values-mixed-args-023'/1]).
-export(['fn-distinct-values-mixed-args-024'/1]).
-export(['fn-distinct-values-mixed-args-025'/1]).
-export(['fn-distinct-values-mixed-args-026'/1]).
-export(['fn-distinct-values-mixed-args-027'/1]).
-export(['fn-distinct-values-mixed-args-028'/1]).
-export(['fn-distinct-values-mixed-args-029'/1]).
-export(['fn-distinct-values-mixed-args-030'/1]).
-export(['fn-distinct-values-mixed-args-031'/1]).
-export(['fn-distinct-values-mixed-args-032'/1]).
-export(['K-SeqDistinctValuesFunc-1'/1]).
-export(['K-SeqDistinctValuesFunc-2'/1]).
-export(['K-SeqDistinctValuesFunc-3'/1]).
-export(['K-SeqDistinctValuesFunc-4'/1]).
-export(['K-SeqDistinctValuesFunc-5'/1]).
-export(['K-SeqDistinctValuesFunc-6'/1]).
-export(['K-SeqDistinctValuesFunc-7'/1]).
-export(['K-SeqDistinctValuesFunc-8'/1]).
-export(['K-SeqDistinctValuesFunc-9'/1]).
-export(['K-SeqDistinctValuesFunc-10'/1]).
-export(['K-SeqDistinctValuesFunc-11'/1]).
-export(['K-SeqDistinctValuesFunc-12'/1]).
-export(['K-SeqDistinctValuesFunc-13'/1]).
-export(['K-SeqDistinctValuesFunc-14'/1]).
-export(['K-SeqDistinctValuesFunc-15'/1]).
-export(['K2-SeqDistinctValuesFunc-1'/1]).
-export(['fn-distinct-values-1'/1]).
-export(['fn-distinct-values-2'/1]).
-export(['cbcl-distinct-values-001'/1]).
-export(['cbcl-distinct-values-002'/1]).
-export(['cbcl-distinct-values-002b'/1]).
-export(['cbcl-distinct-values-003'/1]).
-export(['cbcl-distinct-values-004'/1]).
-export(['cbcl-distinct-values-005'/1]).
-export(['cbcl-distinct-values-006'/1]).
-export(['cbcl-distinct-values-007'/1]).
-export(['cbcl-distinct-values-008'/1]).
-export(['cbcl-distinct-values-009'/1]).
-export(['cbcl-distinct-values-010'/1]).
-export(['cbcl-distinct-values-011'/1]).
-export(['cbcl-distinct-values-012'/1]).
-export(['cbcl-distinct-values-013'/1]).
-export(['cbcl-distinct-values-014'/1]).
-export(['cbcl-distinct-values-016'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-distinct-valuesint1args-1',
   'fn-distinct-valuesint1args-2',
   'fn-distinct-valuesint1args-3',
   'fn-distinct-valuesintg1args-1',
   'fn-distinct-valuesintg1args-2',
   'fn-distinct-valuesintg1args-3',
   'fn-distinct-valuesdec1args-1',
   'fn-distinct-valuesdec1args-2',
   'fn-distinct-valuesdec1args-3',
   'fn-distinct-valuesdbl1args-1',
   'fn-distinct-valuesdbl1args-2',
   'fn-distinct-valuesdbl1args-3',
   'fn-distinct-valuesflt1args-1',
   'fn-distinct-valuesflt1args-2',
   'fn-distinct-valuesflt1args-3',
   'fn-distinct-valueslng1args-1',
   'fn-distinct-valueslng1args-2',
   'fn-distinct-valueslng1args-3',
   'fn-distinct-valuesusht1args-1',
   'fn-distinct-valuesusht1args-2',
   'fn-distinct-valuesusht1args-3',
   'fn-distinct-valuesnint1args-1',
   'fn-distinct-valuesnint1args-2',
   'fn-distinct-valuesnint1args-3',
   'fn-distinct-valuespint1args-1',
   'fn-distinct-valuespint1args-2',
   'fn-distinct-valuespint1args-3',
   'fn-distinct-valuesulng1args-1',
   'fn-distinct-valuesulng1args-2',
   'fn-distinct-valuesulng1args-3',
   'fn-distinct-valuesnpi1args-1',
   'fn-distinct-valuesnpi1args-2',
   'fn-distinct-valuesnpi1args-3',
   'fn-distinct-valuesnni1args-1',
   'fn-distinct-valuesnni1args-2',
   'fn-distinct-valuesnni1args-3',
   'fn-distinct-valuessht1args-1',
   'fn-distinct-valuessht1args-2',
   'fn-distinct-valuessht1args-3',
   'fn-distinct-values-mixed-args-001',
   'fn-distinct-values-mixed-args-002',
   'fn-distinct-values-mixed-args-003',
   'fn-distinct-values-mixed-args-004',
   'fn-distinct-values-mixed-args-005',
   'fn-distinct-values-mixed-args-006',
   'fn-distinct-values-mixed-args-007',
   'fn-distinct-values-mixed-args-008',
   'fn-distinct-values-mixed-args-009',
   'fn-distinct-values-mixed-args-010',
   'fn-distinct-values-mixed-args-011',
   'fn-distinct-values-mixed-args-012',
   'fn-distinct-values-mixed-args-013',
   'fn-distinct-values-mixed-args-014',
   'fn-distinct-values-mixed-args-015',
   'fn-distinct-values-mixed-args-016',
   'fn-distinct-values-mixed-args-017',
   'fn-distinct-values-mixed-args-018',
   'fn-distinct-values-mixed-args-019',
   'fn-distinct-values-mixed-args-020',
   'fn-distinct-values-mixed-args-021',
   'fn-distinct-values-mixed-args-022',
   'fn-distinct-values-mixed-args-023',
   'fn-distinct-values-mixed-args-024',
   'fn-distinct-values-mixed-args-025',
   'fn-distinct-values-mixed-args-026',
   'fn-distinct-values-mixed-args-027',
   'fn-distinct-values-mixed-args-028',
   'fn-distinct-values-mixed-args-029',
   'fn-distinct-values-mixed-args-030',
   'fn-distinct-values-mixed-args-031',
   'fn-distinct-values-mixed-args-032',
   'K-SeqDistinctValuesFunc-1',
   'K-SeqDistinctValuesFunc-2',
   'K-SeqDistinctValuesFunc-3',
   'K-SeqDistinctValuesFunc-4',
   'K-SeqDistinctValuesFunc-5',
   'K-SeqDistinctValuesFunc-6',
   'K-SeqDistinctValuesFunc-7',
   'K-SeqDistinctValuesFunc-8',
   'K-SeqDistinctValuesFunc-9',
   'K-SeqDistinctValuesFunc-10',
   'K-SeqDistinctValuesFunc-11',
   'K-SeqDistinctValuesFunc-12',
   'K-SeqDistinctValuesFunc-13',
   'K-SeqDistinctValuesFunc-14',
   'K-SeqDistinctValuesFunc-15',
   'K2-SeqDistinctValuesFunc-1',
   'fn-distinct-values-1',
   'fn-distinct-values-2',
   'cbcl-distinct-values-001',
   'cbcl-distinct-values-002',
   'cbcl-distinct-values-002b',
   'cbcl-distinct-values-003',
   'cbcl-distinct-values-004',
   'cbcl-distinct-values-005',
   'cbcl-distinct-values-006',
   'cbcl-distinct-values-007',
   'cbcl-distinct-values-008',
   'cbcl-distinct-values-009',
   'cbcl-distinct-values-010',
   'cbcl-distinct-values-011',
   'cbcl-distinct-values-012',
   'cbcl-distinct-values-013',
   'cbcl-distinct-values-014',
   'cbcl-distinct-values-016'].
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
'fn-distinct-valuesint1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:int(\"-2147483648\")))",
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
'fn-distinct-valuesint1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:int(\"-1873914410\")))",
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
'fn-distinct-valuesint1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:int(\"2147483647\")))",
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
'fn-distinct-valuesintg1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:integer(\"-999999999999999999\")))",
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
'fn-distinct-valuesintg1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:integer(\"830993497117024304\")))",
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
'fn-distinct-valuesintg1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:integer(\"999999999999999999\")))",
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
'fn-distinct-valuesdec1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:decimal(\"-999999999999999999\")))",
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
'fn-distinct-valuesdec1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:decimal(\"617375191608514839\")))",
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
'fn-distinct-valuesdec1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:decimal(\"999999999999999999\")))",
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
'fn-distinct-valuesdbl1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:double(\"-1.7976931348623157E308\")))",
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
'fn-distinct-valuesdbl1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:double(\"0\")))",
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
'fn-distinct-valuesdbl1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:double(\"1.7976931348623157E308\")))",
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
'fn-distinct-valuesflt1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:float(\"-3.4028235E38\")))",
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
'fn-distinct-valuesflt1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:float(\"0\")))",
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
'fn-distinct-valuesflt1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:float(\"3.4028235E38\")))",
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
'fn-distinct-valueslng1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:long(\"-92233720368547758\")))",
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
'fn-distinct-valueslng1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:long(\"-47175562203048468\")))",
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
'fn-distinct-valueslng1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:long(\"92233720368547758\")))",
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
'fn-distinct-valuesusht1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:unsignedShort(\"0\")))",
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
'fn-distinct-valuesusht1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:unsignedShort(\"44633\")))",
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
'fn-distinct-valuesusht1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:unsignedShort(\"65535\")))",
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
'fn-distinct-valuesnint1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:negativeInteger(\"-999999999999999999\")))",
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
'fn-distinct-valuesnint1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:negativeInteger(\"-297014075999096793\")))",
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
'fn-distinct-valuesnint1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:negativeInteger(\"-1\")))",
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
'fn-distinct-valuespint1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:positiveInteger(\"1\")))",
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
'fn-distinct-valuespint1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:positiveInteger(\"52704602390610033\")))",
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
'fn-distinct-valuespint1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:positiveInteger(\"999999999999999999\")))",
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
'fn-distinct-valuesulng1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:unsignedLong(\"0\")))",
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
'fn-distinct-valuesulng1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:unsignedLong(\"130747108607674654\")))",
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
'fn-distinct-valuesulng1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:unsignedLong(\"184467440737095516\")))",
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
'fn-distinct-valuesnpi1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:nonPositiveInteger(\"-999999999999999999\")))",
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
'fn-distinct-valuesnpi1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:nonPositiveInteger(\"-475688437271870490\")))",
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
'fn-distinct-valuesnpi1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:nonPositiveInteger(\"0\")))",
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
'fn-distinct-valuesnni1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:nonNegativeInteger(\"0\")))",
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
'fn-distinct-valuesnni1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:nonNegativeInteger(\"303884545991464527\")))",
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
'fn-distinct-valuesnni1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:nonNegativeInteger(\"999999999999999999\")))",
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
'fn-distinct-valuessht1args-1'(_Config) ->
   Qry = "fn:distinct-values((xs:short(\"-32768\")))",
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
'fn-distinct-valuessht1args-2'(_Config) ->
   Qry = "fn:distinct-values((xs:short(\"-5324\")))",
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
'fn-distinct-valuessht1args-3'(_Config) ->
   Qry = "fn:distinct-values((xs:short(\"32767\")))",
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
'fn-distinct-values-mixed-args-001'(_Config) ->
   Qry = "fn:distinct-values((1, 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            2 1
            1 2
         
      ",
 case (xqerl_test:string_value(Res) == "2 1") orelse (xqerl_test:string_value(Res) == "1 2") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-distinct-values-mixed-args-002'(_Config) ->
   Qry = "fn:distinct-values(( 1, (1), ((1)) ))",
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
'fn-distinct-values-mixed-args-003'(_Config) ->
   Qry = "fn:distinct-values(( 1, 1.0e0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            1
            
               xs:integer
               xs:double
            
         
      ",
 case    ct:fail(["<any-of xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
               <assert-type>xs:integer</assert-type>
               <assert-type>xs:double</assert-type>
            </any-of>", Res]) andalso xqerl_test:size(Res) == 1 andalso  begin Tst2 = xqerl:run("1"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-distinct-values-mixed-args-004'(_Config) ->
   Qry = "fn:distinct-values(( xs:integer(1), 1))",
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
'fn-distinct-values-mixed-args-005'(_Config) ->
   Qry = "fn:distinct-values(( 0e0, -0, 0, 1 ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 0
      ",
   ct:fail(["<result xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
         <assert-permutation>1, 0</assert-permutation>
      </result>", Res]).
'fn-distinct-values-mixed-args-006'(_Config) ->
   Qry = "fn:distinct-values(( \"cat\", 'CAT' ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"cat\", \"CAT\"
      ",
   ct:fail(["<result xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
         <assert-permutation>\"cat\", \"CAT\"</assert-permutation>
      </result>", Res]).
'fn-distinct-values-mixed-args-007'(_Config) ->
   Qry = "fn:distinct-values(( xs:string(\"hello\"), \"hello\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         hello
      ",
   case xqerl_test:string_value(Res) of
             "hello" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-008'(_Config) ->
   Qry = "fn:distinct-values(( xs:string(\"\"), \"\", ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-009'(_Config) ->
   Qry = "fn:distinct-values((1, true(), true(), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, true()
      ",
   ct:fail(["<result xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
         <assert-permutation>1, true()</assert-permutation>
      </result>", Res]).
'fn-distinct-values-mixed-args-010'(_Config) ->
   Qry = "fn:distinct-values((xs:decimal('1.2'), xs:decimal('1.2000000000000001')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.2000000000000001, 1.2
      ",
   ct:fail(["<result xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
         <assert-permutation>1.2000000000000001, 1.2</assert-permutation>
      </result>", Res]).
'fn-distinct-values-mixed-args-011'(_Config) ->
   Qry = "fn:distinct-values((xs:decimal('1.2'), '1.2'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"1.2\", 1.2
      ",
   ct:fail(["<result xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
         <assert-permutation>\"1.2\", 1.2</assert-permutation>
      </result>", Res]).
'fn-distinct-values-mixed-args-012'(_Config) ->
   Qry = "fn:distinct-values((xs:decimal('1.2'), xs:float('1.2')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.2
      ",
   case xqerl_test:string_value(Res) of
             "1.2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-013'(_Config) ->
   Qry = "fn:distinct-values((xs:decimal('1.2'), xs:double('1.2')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.2
      ",
   case xqerl_test:string_value(Res) of
             "1.2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-014'(_Config) ->
   Qry = "fn:distinct-values((xs:float('NaN'), 'NaN'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-015'(_Config) ->
   Qry = "fn:distinct-values((xs:float('INF'), 'INF'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         INF INF
      ",
   case xqerl_test:string_value(Res) of
             "INF INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-016'(_Config) ->
   Qry = "fn:distinct-values((xs:float('-INF'), '-INF'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -INF -INF
      ",
   case xqerl_test:string_value(Res) of
             "-INF -INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-017'(_Config) ->
   Qry = "fn:distinct-values((xs:float('INF'), xs:float('INF')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         INF
      ",
   case xqerl_test:string_value(Res) of
             "INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-018'(_Config) ->
   Qry = "fn:distinct-values((xs:float('-INF'), xs:float('INF')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:float('-INF'), xs:float('INF')
      ",
   ct:fail(["<result xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
         <assert-permutation>xs:float('-INF'), xs:float('INF')</assert-permutation>
      </result>", Res]).
'fn-distinct-values-mixed-args-019'(_Config) ->
   Qry = "fn:distinct-values((xs:float('NaN'), xs:float('NaN')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-020'(_Config) ->
   Qry = "fn:distinct-values((xs:float('NaN'), xs:float('NaN')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-021'(_Config) ->
   Qry = "fn:distinct-values((xs:float('NaN'), xs:double('NaN')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-022'(_Config) ->
   Qry = "fn:distinct-values((xs:float('INF'), xs:double('INF')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         INF
      ",
   case xqerl_test:string_value(Res) of
             "INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-023'(_Config) ->
   Qry = "fn:distinct-values((xs:float('-INF'), xs:double('-INF')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -INF
      ",
   case xqerl_test:string_value(Res) of
             "-INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-024'(_Config) ->
   Qry = "fn:distinct-values((xs:double('-INF'), xs:double('INF')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            INF -INF
            -INF INF
         
      ",
 case (xqerl_test:string_value(Res) == "INF -INF") orelse (xqerl_test:string_value(Res) == "-INF INF") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-distinct-values-mixed-args-025'(_Config) ->
   Qry = "fn:distinct-values((xs:double('NaN'), xs:double('NaN')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-026'(_Config) ->
   Qry = "fn:distinct-values((xs:double('NaN'), xs:double('NaN')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-distinct-values-mixed-args-027'(_Config) ->
   Qry = "fn:distinct-values((\"NaN\", \"-NaN\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            NaN -NaN
            -NaN NaN
         
      ",
 case (xqerl_test:string_value(Res) == "NaN -NaN") orelse (xqerl_test:string_value(Res) == "-NaN NaN") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-distinct-values-mixed-args-028'(_Config) ->
   Qry = "fn:distinct-values((\"-INF\", \"INF\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            INF -INF
            -INF INF
         
      ",
 case (xqerl_test:string_value(Res) == "INF -INF") orelse (xqerl_test:string_value(Res) == "-INF INF") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-distinct-values-mixed-args-029'(_Config) ->
   Qry = "fn:distinct-values((xs:boolean('true'), true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-distinct-values-mixed-args-030'(_Config) ->
   Qry = "fn:distinct-values((xs:boolean('true'), xs:boolean('1')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-distinct-values-mixed-args-031'(_Config) ->
   Qry = "fn:distinct-values((xs:boolean('false'), xs:boolean('0')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-distinct-values-mixed-args-032'(_Config) ->
   Qry = "fn:distinct-values(( true(), false(), () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true(), false()
      ",
   ct:fail(["<result xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
         <assert-permutation>true(), false()</assert-permutation>
      </result>", Res]).
'K-SeqDistinctValuesFunc-1'(_Config) ->
   Qry = "distinct-values()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqDistinctValuesFunc-2'(_Config) ->
   Qry = "deep-equal(distinct-values((1, 2, 3), \"http://www.example.com/COLLATION/NOT/SUPPORTED\"), (1, 2, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqDistinctValuesFunc-3'(_Config) ->
   Qry = "distinct-values(\"a string\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqDistinctValuesFunc-4'(_Config) ->
   Qry = "distinct-values(\"a string\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\") eq \"a string\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqDistinctValuesFunc-5'(_Config) ->
   Qry = "empty(distinct-values(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqDistinctValuesFunc-6'(_Config) ->
   Qry = "
        declare function local:canon($arg) {
            for $i in 
                for $s in $arg 
                return string($s) 
            order by $i 
            return $i 
        }; 
        deep-equal(
            local:canon(
                distinct-values((\"1\", 1, 2, 1, 1, 3, 1, 1, 3, xs:anyURI(\"example.com/\"), xs:anyURI(\"example.com/\")))), 
            local:canon((\"1\", 1, 2, 3, xs:anyURI(\"example.com/\"))))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqDistinctValuesFunc-7'(_Config) ->
   Qry = "distinct-values((1, 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqDistinctValuesFunc-8'(_Config) ->
   Qry = "distinct-values((-3, -3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -3
            
         
      ",
 case ( begin Tst1 = xqerl:run("-3"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqDistinctValuesFunc-9'(_Config) ->
   Qry = "count(distinct-values((1, 2.0, 3, 2))) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqDistinctValuesFunc-10'(_Config) ->
   Qry = "deep-equal(distinct-values((1, 2.0, 3, 2)), (1, 2.0, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqDistinctValuesFunc-11'(_Config) ->
   Qry = "exists(distinct-values((1, 2, 3, 1)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqDistinctValuesFunc-12'(_Config) ->
   Qry = "not(empty(distinct-values((1, 1))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqDistinctValuesFunc-13'(_Config) ->
   Qry = "count(distinct-values((1, 2, 2, current-time()))) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqDistinctValuesFunc-14'(_Config) ->
   Qry = "count(distinct-values(())) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqDistinctValuesFunc-15'(_Config) ->
   Qry = "count(distinct-values(current-time())) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqDistinctValuesFunc-1'(_Config) ->
   Qry = "fn:distinct-values((\"1\", \"2\", \"3\"), \"http://www.example.com/COLLATION/NOT/SUPPORTED\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0002'}) end.
'fn-distinct-values-1'(_Config) ->
   Qry = "
        let $input := (xs:float('1.0'), xs:decimal('1.0000000000100000000001'), 
                       xs:double( '1.00000000001'), xs:float('2.0'), 
                       xs:decimal('2.0000000000100000000001'), xs:double( '2.00000000001')), 
            $distinct := distinct-values($input) 
        return ( (every $n in $input satisfies $n = $distinct) and 
        (every $bool in (for $d1 at $p in $distinct, $d2 in $distinct [position() > $p] return $d1 eq $d2) satisfies not($bool)) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-distinct-values-2'(_Config) ->
   Qry = "distinct-values((1 to 300, 100 to 400, 29, 145, 20 to 50, for $x in (30 to 40) return xs:string($x), \"foo\", \"bar\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 to 400, \"30\", \"31\", \"32\", \"33\", \"34\", \"35\", \"36\", \"37\", \"38\", \"39\", \"40\", \"foo\", \"bar\"
      ",
   ct:fail(["<result xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
         <assert-permutation>1 to 400, \"30\", \"31\", \"32\", \"33\", \"34\", \"35\", \"36\", \"37\", \"38\", \"39\", \"40\", \"foo\", \"bar\"</assert-permutation>
      </result>", Res]).
'cbcl-distinct-values-001'(_Config) ->
   Qry = "count(distinct-values((xs:integer(\"3\"), xs:float(\"3\"), xs:float(\"NaN\"), xs:double(\"3\"), xs:double(\"NaN\"), xs:decimal(\"3\"), xs:float(\"3\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-002'(_Config) ->
   {skip,"XQ10"}.
'cbcl-distinct-values-002b'(_Config) ->
   Qry = "declare function local:create($arg) as xs:anyAtomicType* { ( if ($arg castable as xs:untypedAtomic) then $arg cast as xs:untypedAtomic else () ), ( if ($arg castable as xs:dateTime) then $arg cast as xs:dateTime else () ), ( if ($arg castable as xs:date) then $arg cast as xs:date else () ), ( if ($arg castable as xs:time) then $arg cast as xs:time else () ), ( if ($arg castable as xs:time) then $arg cast as xs:time else () ), ( if ($arg castable as xs:duration) then $arg cast as xs:duration else () ), ( if ($arg castable as xs:yearMonthDuration) then $arg cast as xs:yearMonthDuration else () ), ( if ($arg castable as xs:dayTimeDuration) then $arg cast as xs:dayTimeDuration else () ), ( if ($arg castable as xs:float) then $arg cast as xs:float else () ), ( if ($arg castable as xs:double) then $arg cast as xs:double else () ), ( if ($arg castable as xs:decimal) then $arg cast as xs:decimal else () ), ( if ($arg castable as xs:integer) then $arg cast as xs:integer else () ), ( if ($arg castable as xs:nonPositiveInteger) then $arg cast as xs:nonPositiveInteger else () ), ( if ($arg castable as xs:negativeInteger) then $arg cast as xs:negativeInteger else () ), ( if ($arg castable as xs:long) then $arg cast as xs:long else () ), ( if ($arg castable as xs:int) then $arg cast as xs:int else () ), ( if ($arg castable as xs:short) then $arg cast as xs:short else () ), ( if ($arg castable as xs:byte) then $arg cast as xs:byte else () ), ( if ($arg castable as xs:byte) then $arg cast as xs:byte else () ), ( if ($arg castable as xs:nonNegativeInteger) then $arg cast as xs:nonNegativeInteger else () ), ( if ($arg castable as xs:unsignedLong) then $arg cast as xs:unsignedLong else () ), ( if ($arg castable as xs:unsignedInt) then $arg cast as xs:unsignedInt else () ), ( if ($arg castable as xs:unsignedShort) then $arg cast as xs:unsignedShort else () ), ( if ($arg castable as xs:unsignedByte) then $arg cast as xs:unsignedByte else () ), ( if ($arg castable as xs:positiveInteger) then $arg cast as xs:positiveInteger else () ), ( if ($arg castable as xs:gYearMonth) then $arg cast as xs:gYearMonth else () ), ( if ($arg castable as xs:gYear) then $arg cast as xs:gYear else () ), ( if ($arg castable as xs:gMonthDay) then $arg cast as xs:gMonthDay else () ), ( if ($arg castable as xs:gDay) then $arg cast as xs:gDay else () ), ( if ($arg castable as xs:gMonth) then $arg cast as xs:gMonth else () ), ( if ($arg castable as xs:string) then $arg cast as xs:string else () ), ( if ($arg castable as xs:normalizedString) then $arg cast as xs:normalizedString else () ), ( if ($arg castable as xs:token) then $arg cast as xs:token else () ), ( if ($arg castable as xs:language) then $arg cast as xs:language else () ), ( if ($arg castable as xs:NMTOKEN) then $arg cast as xs:NMTOKEN else () ), ( if ($arg castable as xs:Name) then $arg cast as xs:Name else () ), ( if ($arg castable as xs:NCName) then $arg cast as xs:NCName else () ), ( if ($arg castable as xs:ID) then $arg cast as xs:ID else () ), ( if ($arg castable as xs:IDREF) then $arg cast as xs:IDREF else () ), ( if ($arg castable as xs:ENTITY) then $arg cast as xs:ENTITY else () ), ( if ($arg castable as xs:boolean) then $arg cast as xs:boolean else () ), ( if ($arg castable as xs:base64Binary) then $arg cast as xs:base64Binary else () ), ( if ($arg castable as xs:hexBinary) then $arg cast as xs:hexBinary else () ), ( if ($arg castable as xs:QName) then $arg cast as xs:QName else () ) }; for $value in fn:distinct-values( ( local:create(0), local:create(-1), local:create(1), local:create(3.141), local:create(3.141e0), local:create(3.333), local:create(3.141e0), local:create(3.333e2), local:create('NaN'), local:create('zero'), local:create('false'), local:create('true'), local:create('http://www.example.com/'), local:create('2008-06-01'), local:create('1972-06-01Z'), local:create('2008-06-01T12:00:00'), local:create('1972-06-01T12:00:00+01:00'), local:create('00:00:00'), local:create('12:00:00'), local:create('2008'), local:create('1972Z'), local:create('--06'), local:create('--12Z'), local:create('2008-06'), local:create('1972-12Z'), local:create('--06-01'), local:create('--12-15Z'), local:create('---01'), local:create('---15Z'), local:create('P20Y15M'), local:create('P10Y15M'), local:create('-P2DT15H0M0S'), local:create('-P1DT15H0M0S'), local:create(fn:QName(\"http://www.example.com/example\", \"person\")), local:create(fn:QName(\"http://www.example.com/example\", \"ht:person\")), local:create('-P2DT15H0M0S'), local:create('FFFEFDFC'), local:create('aGVsbG8=') )) order by string($value) return $value",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	---01 ---01 ---15Z ---15Z --06 --06 --06-01 --06-01 --12-15Z --12-15Z --12Z --12Z -1 -1 -P1DT15H -P1DT15H0M0S -P2DT15H -P2DT15H0M0S 0 0 00:00:00 00:00:00 1 1 12:00:00 12:00:00 1972-06-01T12:00:00+01:00 1972-06-01T12:00:00+01:00 1972-06-01Z 1972-06-01Z 1972-12Z 1972-12Z 1972Z 1972Z 2008 2008 2008 2008 2008 2008-06 2008-06 2008-06-01 2008-06-01 2008-06-01T12:00:00 2008-06-01T12:00:00 3 3.141 3.141 3.141 3.333 3.333 3.333 333 333.3 333.3 333.3 FFFEFDFC FFFEFDFC FFFEFDFC FFFEFDFC NaN NaN NaN P10Y15M P10Y15M P11Y3M P20Y15M P20Y15M P21Y3M aGVsbG8= aGVsbG8= false false false ht:person http://www.example.com/ person person true true true true zero zero zero
      ",
   case xqerl_test:string_value(Res) of
             "---01 ---01 ---15Z ---15Z --06 --06 --06-01 --06-01 --12-15Z --12-15Z --12Z --12Z -1 -1 -P1DT15H -P1DT15H0M0S -P2DT15H -P2DT15H0M0S 0 0 00:00:00 00:00:00 1 1 12:00:00 12:00:00 1972-06-01T12:00:00+01:00 1972-06-01T12:00:00+01:00 1972-06-01Z 1972-06-01Z 1972-12Z 1972-12Z 1972Z 1972Z 2008 2008 2008 2008 2008 2008-06 2008-06 2008-06-01 2008-06-01 2008-06-01T12:00:00 2008-06-01T12:00:00 3 3.141 3.141 3.141 3.333 3.333 3.333 333 333.3 333.3 333.3 FFFEFDFC FFFEFDFC FFFEFDFC FFFEFDFC NaN NaN NaN P10Y15M P10Y15M P11Y3M P20Y15M P20Y15M P21Y3M aGVsbG8= aGVsbG8= false false false ht:person http://www.example.com/ person person true true true true zero zero zero" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-003'(_Config) ->
   Qry = "distinct-values(
              (xs:dateTime(\"2008-01-01T13:00:00\"),
               adjust-dateTime-to-timezone(xs:dateTime(\"2008-01-01T13:00:00\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'cbcl-distinct-values-004'(_Config) ->
   Qry = "for $value in fn:distinct-values(( xs:date('2008-06-01'), xs:date('2008-06-01'), xs:date('2012-06-01'), xs:date('1918-11-11Z'), xs:date('1972-06-01Z'), xs:date('1972-06-01Z') )) order by $value return $value",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1918-11-11Z 1972-06-01Z 2008-06-01 2012-06-01
      ",
   case xqerl_test:string_value(Res) of
             "1918-11-11Z 1972-06-01Z 2008-06-01 2012-06-01" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-005'(_Config) ->
   Qry = "for $value in fn:distinct-values(( xs:dateTime('2008-06-01T12:00:00'), xs:dateTime('2008-06-01T12:00:00'), xs:dateTime('2008-06-01T00:00:00'), xs:dateTime('2008-06-02T00:00:00'), xs:dateTime('1918-11-11T11:00:00Z'), xs:dateTime('1972-06-01T13:00:00Z'), xs:dateTime('1972-06-01T13:00:00Z') )) order by $value return $value",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1918-11-11T11:00:00Z 1972-06-01T13:00:00Z 2008-06-01T00:00:00 2008-06-01T12:00:00 2008-06-02T00:00:00
      ",
   case xqerl_test:string_value(Res) of
             "1918-11-11T11:00:00Z 1972-06-01T13:00:00Z 2008-06-01T00:00:00 2008-06-01T12:00:00 2008-06-02T00:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-006'(_Config) ->
   Qry = "for $value in fn:distinct-values(( xs:time('12:00:00'), xs:time('11:00:00'), xs:time('12:00:00'))) order by $value return $value",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         11:00:00 12:00:00
      ",
   case xqerl_test:string_value(Res) of
             "11:00:00 12:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-007'(_Config) ->
   Qry = "for $value at $p in ( for $time in fn:distinct-values(( xs:time('12:00:00'), xs:time('12:00:00'), xs:time('20:00:00'), xs:time('01:00:00+12:00'), xs:time('02:00:00+13:00'))) order by $time return $time ) return adjust-time-to-timezone($value, (xs:dayTimeDuration(\"PT0S\")[$p]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         13:00:00Z 12:00:00 20:00:00
      ",
   case xqerl_test:string_value(Res) of
             "13:00:00Z 12:00:00 20:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-008'(_Config) ->
   Qry = "for $value in fn:distinct-values(( xs:hexBinary('FFFF'), xs:hexBinary('FFFF'), xs:hexBinary('FFFE'), xs:hexBinary('FF'))) order by string($value) return $value",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         FF FFFE FFFF
      ",
   case xqerl_test:string_value(Res) of
             "FF FFFE FFFF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-009'(_Config) ->
   Qry = "for $value in fn:distinct-values(( xs:base64Binary('aGVsbG8NCg=='), xs:base64Binary('aGVsbG8NCg=='), xs:base64Binary('aGFsbG8NCg=='), xs:base64Binary('aGkNCg=='))) order by string($value) return $value",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         aGFsbG8NCg== aGVsbG8NCg== aGkNCg==
      ",
   case xqerl_test:string_value(Res) of
             "aGFsbG8NCg== aGVsbG8NCg== aGkNCg==" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-010'(_Config) ->
   Qry = "for $value in fn:distinct-values(( xs:untypedAtomic('a'), xs:untypedAtomic('a'), xs:untypedAtomic('b'), xs:untypedAtomic(''))) order by string($value) return $value",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          a b
      ",
   case xqerl_test:string_value(Res) of
             " a b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-011'(_Config) ->
   Qry = "for $value in fn:distinct-values(( xs:string('a'), xs:string('a'), xs:string('b'), xs:string(''))) order by string($value) return $value",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          a b
      ",
   case xqerl_test:string_value(Res) of
             " a b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-012'(_Config) ->
   Qry = "for $value in fn:distinct-values(( xs:gYear('2008'), xs:gYear('2008'), xs:gYear('1972'))) order by string($value) return $value",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1972 2008
      ",
   case xqerl_test:string_value(Res) of
             "1972 2008" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-013'(_Config) ->
   Qry = "for $value in fn:distinct-values(( xs:dayTimeDuration('P0D'), xs:yearMonthDuration('P0Y'), xs:duration('P0Y'), xs:duration('P0Y'), xs:yearMonthDuration('P0Y'), xs:dayTimeDuration('P0D'), xs:dayTimeDuration('P1D'), xs:yearMonthDuration('P1Y'), xs:duration('P1Y'))) order by string($value) return $value",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1D P1Y PT0S
      ",
   case xqerl_test:string_value(Res) of
             "P1D P1Y PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-014'(_Config) ->
   Qry = "for $value in fn:distinct-values(( xs:gMonthDay('--06-16'), xs:gMonthDay('--06-16'), xs:gMonthDay('--12-15'))) order by string($value) return $value",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         --06-16 --12-15
      ",
   case xqerl_test:string_value(Res) of
             "--06-16 --12-15" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-distinct-values-016'(_Config) ->
   Qry = "for $x in 65 to 75 return distinct-values(1 to 10,codepoints-to-string($x to $x+10))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
            
         
      ",
 case (xqerl_test:string_value(Res) == "1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
