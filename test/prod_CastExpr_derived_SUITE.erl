-module('prod_CastExpr_derived_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['cast-derived-1'/1]).
-export(['cast-derived-2'/1]).
-export(['cast-derived-3'/1]).
-export(['cast-derived-4'/1]).
-export(['cast-derived-5'/1]).
-export(['cast-derived-6'/1]).
-export(['cast-derived-7'/1]).
-export(['cast-derived-8'/1]).
-export(['cast-derived-9'/1]).
-export(['cast-derived-10'/1]).
-export(['cast-derived-11'/1]).
-export(['cast-derived-12'/1]).
-export(['cast-derived-13'/1]).
-export(['cast-derived-14'/1]).
-export(['cast-derived-15'/1]).
-export(['cast-derived-16'/1]).
-export(['cast-derived-17'/1]).
-export(['cast-derived-18'/1]).
-export(['cast-derived-19'/1]).
-export(['cast-derived-20'/1]).
-export(['cast-derived-21'/1]).
-export(['cast-to-parent-1'/1]).
-export(['cast-to-parent-2'/1]).
-export(['cast-to-parent-3'/1]).
-export(['cast-to-parent-4'/1]).
-export(['cast-to-parent-5'/1]).
-export(['cast-to-parent-6'/1]).
-export(['cast-to-parent-7'/1]).
-export(['cast-to-parent-8'/1]).
-export(['cast-to-parent-9'/1]).
-export(['cast-to-parent-10'/1]).
-export(['cast-to-parent-11'/1]).
-export(['cast-to-parent-12'/1]).
-export(['cast-to-parent-13'/1]).
-export(['cast-to-parent-14'/1]).
-export(['cast-to-parent-15'/1]).
-export(['cast-to-parent-16'/1]).
-export(['cast-to-parent-17'/1]).
-export(['cast-to-parent-18'/1]).
-export(['cast-to-parent-19'/1]).
-export(['cast-to-parent-20'/1]).
-export(['cast-to-parent-21'/1]).
-export(['cast-within-1'/1]).
-export(['cast-within-2'/1]).
-export(['cast-within-3'/1]).
-export(['cast-within-4'/1]).
-export(['cast-within-5'/1]).
-export(['cast-within-6'/1]).
-export(['cast-within-7'/1]).
-export(['cast-within-8'/1]).
-export(['cast-within-9'/1]).
-export(['cast-within-10'/1]).
-export(['cast-within-11'/1]).
-export(['cast-within-12'/1]).
-export(['cast-within-13'/1]).
-export(['cast-within-14'/1]).
-export(['cast-within-15'/1]).
-export(['cast-within-16'/1]).
-export(['cast-within-17'/1]).
-export(['cast-within-18'/1]).
-export(['cast-within-19'/1]).
-export(['cast-within-20'/1]).
-export(['cast-within-21'/1]).
-export(['cbcl-cast-derived-001'/1]).
-export(['cbcl-cast-byte-001'/1]).
-export(['cbcl-cast-byte-002'/1]).
-export(['cbcl-cast-byte-003'/1]).
-export(['cbcl-cast-byte-004'/1]).
-export(['cbcl-cast-date-001'/1]).
-export(['cbcl-cast-date-002'/1]).
-export(['cbcl-cast-dateTime-001'/1]).
-export(['cbcl-cast-dateTime-002'/1]).
-export(['cbcl-cast-dayTimeDuration-001'/1]).
-export(['cbcl-cast-dayTimeDuration-002'/1]).
-export(['cbcl-cast-decimal-001'/1]).
-export(['cbcl-cast-decimal-002'/1]).
-export(['cbcl-cast-decimal-003'/1]).
-export(['cbcl-cast-decimal-004'/1]).
-export(['cbcl-cast-duration-001'/1]).
-export(['cbcl-cast-duration-002'/1]).
-export(['cbcl-cast-entity-001'/1]).
-export(['cbcl-cast-entity-002'/1]).
-export(['cbcl-cast-id-001'/1]).
-export(['cbcl-cast-id-002'/1]).
-export(['cbcl-cast-idref-001'/1]).
-export(['cbcl-cast-idref-002'/1]).
-export(['cbcl-cast-int-001'/1]).
-export(['cbcl-cast-int-002'/1]).
-export(['cbcl-cast-int-003'/1]).
-export(['cbcl-cast-int-004'/1]).
-export(['cbcl-cast-integer-001'/1]).
-export(['cbcl-cast-integer-002'/1]).
-export(['cbcl-cast-integer-003'/1]).
-export(['cbcl-cast-integer-004'/1]).
-export(['cbcl-cast-language-001'/1]).
-export(['cbcl-cast-long-001'/1]).
-export(['cbcl-cast-long-002'/1]).
-export(['cbcl-cast-long-003'/1]).
-export(['cbcl-cast-long-004'/1]).
-export(['cbcl-cast-name-001'/1]).
-export(['cbcl-cast-name-002'/1]).
-export(['cbcl-cast-ncname-001'/1]).
-export(['cbcl-cast-ncname-002'/1]).
-export(['cbcl-cast-negativeInteger-001'/1]).
-export(['cbcl-cast-negativeInteger-002'/1]).
-export(['cbcl-cast-nmtoken-001'/1]).
-export(['cbcl-cast-nmtoken-001b'/1]).
-export(['cbcl-cast-nmtoken-002'/1]).
-export(['cbcl-cast-nonNegativeInteger-001'/1]).
-export(['cbcl-cast-nonNegativeInteger-002'/1]).
-export(['cbcl-cast-nonPositiveInteger-001'/1]).
-export(['cbcl-cast-nonPositiveInteger-002'/1]).
-export(['cbcl-cast-normalizedString-001'/1]).
-export(['cbcl-cast-normalizedString-001b'/1]).
-export(['cbcl-cast-positiveInteger-001'/1]).
-export(['cbcl-cast-positiveInteger-002'/1]).
-export(['cbcl-cast-short-001'/1]).
-export(['cbcl-cast-short-002'/1]).
-export(['cbcl-cast-short-003'/1]).
-export(['cbcl-cast-short-004'/1]).
-export(['cbcl-cast-token-001'/1]).
-export(['cbcl-cast-token-001b'/1]).
-export(['cbcl-cast-unsignedByte-001'/1]).
-export(['cbcl-cast-unsignedByte-002'/1]).
-export(['cbcl-cast-unsignedByte-003'/1]).
-export(['cbcl-cast-unsignedByte-004'/1]).
-export(['cbcl-cast-unsignedInt-001'/1]).
-export(['cbcl-cast-unsignedInt-002'/1]).
-export(['cbcl-cast-unsignedInt-003'/1]).
-export(['cbcl-cast-unsignedInt-004'/1]).
-export(['cbcl-cast-unsignedLong-001'/1]).
-export(['cbcl-cast-unsignedLong-002'/1]).
-export(['cbcl-cast-unsignedLong-003'/1]).
-export(['cbcl-cast-unsignedLong-004'/1]).
-export(['cbcl-cast-unsignedShort-001'/1]).
-export(['cbcl-cast-unsignedShort-002'/1]).
-export(['cbcl-cast-unsignedShort-003'/1]).
-export(['cbcl-cast-unsignedShort-004'/1]).
-export(['cbcl-cast-yearMonthDuration-001'/1]).
-export(['cbcl-cast-yearMonthDuration-002'/1]).
-export(['cbcl-cast-date-003'/1]).
-export(['cbcl-cast-date-004'/1]).
-export(['cbcl-cast-dateTime-003'/1]).
-export(['cbcl-cast-dateTime-004'/1]).
-export(['cbcl-cast-nonNegativeInteger-003'/1]).
-export(['cbcl-cast-nonPositiveInteger-003'/1]).
-export(['cbcl-cast-unsignedByte-005'/1]).
-export(['cbcl-cast-unsignedInt-005'/1]).
-export(['cbcl-cast-unsignedLong-005'/1]).
-export(['cbcl-cast-unsignedShort-005'/1]).
-export(['cbcl-cast-gYear-001'/1]).
-export(['cbcl-cast-gYearMonth-001'/1]).
-export(['cbcl-cast-gYearMonth-002'/1]).
-export(['cbcl-cast-gYear-002'/1]).
-export(['cbcl-cast-gYear-003'/1]).
-export(['cbcl-cast-gYearMonth-003'/1]).
-export(['cbcl-cast-gYearMonth-004'/1]).
-export(['cbcl-case-anyUri-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'cast-derived-1',
   'cast-derived-2',
   'cast-derived-3',
   'cast-derived-4',
   'cast-derived-5',
   'cast-derived-6',
   'cast-derived-7',
   'cast-derived-8',
   'cast-derived-9',
   'cast-derived-10',
   'cast-derived-11',
   'cast-derived-12',
   'cast-derived-13',
   'cast-derived-14',
   'cast-derived-15',
   'cast-derived-16',
   'cast-derived-17',
   'cast-derived-18',
   'cast-derived-19',
   'cast-derived-20',
   'cast-derived-21',
   'cast-to-parent-1',
   'cast-to-parent-2',
   'cast-to-parent-3',
   'cast-to-parent-4',
   'cast-to-parent-5',
   'cast-to-parent-6',
   'cast-to-parent-7',
   'cast-to-parent-8',
   'cast-to-parent-9',
   'cast-to-parent-10',
   'cast-to-parent-11',
   'cast-to-parent-12',
   'cast-to-parent-13',
   'cast-to-parent-14',
   'cast-to-parent-15',
   'cast-to-parent-16',
   'cast-to-parent-17',
   'cast-to-parent-18',
   'cast-to-parent-19',
   'cast-to-parent-20',
   'cast-to-parent-21',
   'cast-within-1',
   'cast-within-2',
   'cast-within-3',
   'cast-within-4',
   'cast-within-5',
   'cast-within-6',
   'cast-within-7',
   'cast-within-8',
   'cast-within-9',
   'cast-within-10',
   'cast-within-11',
   'cast-within-12',
   'cast-within-13',
   'cast-within-14',
   'cast-within-15',
   'cast-within-16',
   'cast-within-17',
   'cast-within-18',
   'cast-within-19',
   'cast-within-20',
   'cast-within-21',
   'cbcl-cast-derived-001',
   'cbcl-cast-byte-001',
   'cbcl-cast-byte-002',
   'cbcl-cast-byte-003',
   'cbcl-cast-byte-004',
   'cbcl-cast-date-001',
   'cbcl-cast-date-002',
   'cbcl-cast-dateTime-001',
   'cbcl-cast-dateTime-002',
   'cbcl-cast-dayTimeDuration-001',
   'cbcl-cast-dayTimeDuration-002',
   'cbcl-cast-decimal-001',
   'cbcl-cast-decimal-002',
   'cbcl-cast-decimal-003',
   'cbcl-cast-decimal-004',
   'cbcl-cast-duration-001',
   'cbcl-cast-duration-002',
   'cbcl-cast-entity-001',
   'cbcl-cast-entity-002',
   'cbcl-cast-id-001',
   'cbcl-cast-id-002',
   'cbcl-cast-idref-001',
   'cbcl-cast-idref-002',
   'cbcl-cast-int-001',
   'cbcl-cast-int-002',
   'cbcl-cast-int-003',
   'cbcl-cast-int-004',
   'cbcl-cast-integer-001',
   'cbcl-cast-integer-002',
   'cbcl-cast-integer-003',
   'cbcl-cast-integer-004',
   'cbcl-cast-language-001',
   'cbcl-cast-long-001',
   'cbcl-cast-long-002',
   'cbcl-cast-long-003',
   'cbcl-cast-long-004',
   'cbcl-cast-name-001',
   'cbcl-cast-name-002',
   'cbcl-cast-ncname-001',
   'cbcl-cast-ncname-002',
   'cbcl-cast-negativeInteger-001',
   'cbcl-cast-negativeInteger-002',
   'cbcl-cast-nmtoken-001',
   'cbcl-cast-nmtoken-001b',
   'cbcl-cast-nmtoken-002',
   'cbcl-cast-nonNegativeInteger-001',
   'cbcl-cast-nonNegativeInteger-002',
   'cbcl-cast-nonPositiveInteger-001',
   'cbcl-cast-nonPositiveInteger-002',
   'cbcl-cast-normalizedString-001',
   'cbcl-cast-normalizedString-001b',
   'cbcl-cast-positiveInteger-001',
   'cbcl-cast-positiveInteger-002',
   'cbcl-cast-short-001',
   'cbcl-cast-short-002',
   'cbcl-cast-short-003',
   'cbcl-cast-short-004',
   'cbcl-cast-token-001',
   'cbcl-cast-token-001b',
   'cbcl-cast-unsignedByte-001',
   'cbcl-cast-unsignedByte-002',
   'cbcl-cast-unsignedByte-003',
   'cbcl-cast-unsignedByte-004',
   'cbcl-cast-unsignedInt-001',
   'cbcl-cast-unsignedInt-002',
   'cbcl-cast-unsignedInt-003',
   'cbcl-cast-unsignedInt-004',
   'cbcl-cast-unsignedLong-001',
   'cbcl-cast-unsignedLong-002',
   'cbcl-cast-unsignedLong-003',
   'cbcl-cast-unsignedLong-004',
   'cbcl-cast-unsignedShort-001',
   'cbcl-cast-unsignedShort-002',
   'cbcl-cast-unsignedShort-003',
   'cbcl-cast-unsignedShort-004',
   'cbcl-cast-yearMonthDuration-001',
   'cbcl-cast-yearMonthDuration-002',
   'cbcl-cast-date-003',
   'cbcl-cast-date-004',
   'cbcl-cast-dateTime-003',
   'cbcl-cast-dateTime-004',
   'cbcl-cast-nonNegativeInteger-003',
   'cbcl-cast-nonPositiveInteger-003',
   'cbcl-cast-unsignedByte-005',
   'cbcl-cast-unsignedInt-005',
   'cbcl-cast-unsignedLong-005',
   'cbcl-cast-unsignedShort-005',
   'cbcl-cast-gYear-001',
   'cbcl-cast-gYearMonth-001',
   'cbcl-cast-gYearMonth-002',
   'cbcl-cast-gYear-002',
   'cbcl-cast-gYear-003',
   'cbcl-cast-gYearMonth-003',
   'cbcl-cast-gYearMonth-004',
   'cbcl-case-anyUri-001'].
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
environment('derived') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/CastExpr/derived.xsd","http://www.w3.org/XQueryTest/derivedTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('durations') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/CastExpr/durations.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/CastExpr/derived.xsd","http://www.w3.org/XQueryTest/derivedTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'cast-derived-1'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-2'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-3'(_Config) ->
   Qry = "let $value := xs:float(-10.0) return $value cast as xs:nonPositiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -10
      ",
 Tst = xqerl:run("-10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-4'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:long",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-5'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:nonNegativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-6'(_Config) ->
   Qry = "let $value := xs:float(-10.0) return $value cast as xs:negativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -10
      ",
 Tst = xqerl:run("-10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-7'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-8'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:unsignedLong",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-9'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:positiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-10'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:short",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-11'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:unsignedInt",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-12'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:unsignedShort",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-13'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:unsignedByte",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-14'(_Config) ->
   Qry = "let $value := xs:float(10.0) return $value cast as xs:byte",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-15'(_Config) ->
   Qry = "let $value := xs:double(10E2) return $value cast as xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-16'(_Config) ->
   Qry = "let $value := xs:double(10E2) return $value cast as xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-17'(_Config) ->
   Qry = "let $value := xs:double(10E2) return $value cast as xs:positiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-18'(_Config) ->
   Qry = "let $value := xs:double(10E2) return $value cast as xs:long",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-19'(_Config) ->
   Qry = "let $value := xs:double(10E2) return $value cast as xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-20'(_Config) ->
   Qry = "let $value := xs:double(10E2) return $value cast as xs:unsignedLong",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-derived-21'(_Config) ->
   Qry = "let $value := xs:double(10E2) return $value cast as xs:short",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-1'(_Config) ->
   Qry = "let $value := xs:decimal(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-2'(_Config) ->
   Qry = "let $value := xs:integer(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-3'(_Config) ->
   Qry = "let $value := xs:nonPositiveInteger(-10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -10
      ",
 Tst = xqerl:run("-10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-4'(_Config) ->
   Qry = "let $value := xs:long(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-5'(_Config) ->
   Qry = "let $value := xs:nonNegativeInteger(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-6'(_Config) ->
   Qry = "let $value := xs:negativeInteger(-10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -10
      ",
 Tst = xqerl:run("-10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-7'(_Config) ->
   Qry = "let $value := xs:int(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-8'(_Config) ->
   Qry = "let $value := xs:unsignedLong(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-9'(_Config) ->
   Qry = "let $value := xs:positiveInteger(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-10'(_Config) ->
   Qry = "let $value := xs:short(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-11'(_Config) ->
   Qry = "let $value := xs:unsignedInt(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-12'(_Config) ->
   Qry = "let $value := xs:unsignedShort(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-13'(_Config) ->
   Qry = "let $value := xs:unsignedByte(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-14'(_Config) ->
   Qry = "let $value := xs:byte(10.0) return $value cast as xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-15'(_Config) ->
   Qry = "let $value := xs:decimal(10E2) return $value cast as xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-16'(_Config) ->
   Qry = "let $value := xs:integer(10E2) return $value cast as xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-17'(_Config) ->
   Qry = "let $value := xs:positiveInteger(10E2) return $value cast as xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-18'(_Config) ->
   Qry = "let $value := xs:long(10E2) return $value cast as xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-19'(_Config) ->
   Qry = "let $value := xs:int(10E2) return $value cast as xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-20'(_Config) ->
   Qry = "let $value := xs:unsignedLong(10E2) return $value cast as xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-to-parent-21'(_Config) ->
   Qry = "let $value := xs:short(10E2) return $value cast as xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1000
      ",
 Tst = xqerl:run("1000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-1'(_Config) ->
   Qry = "let $value := xs:integer(-10.0) return $value cast as xs:nonPositiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -10
      ",
 Tst = xqerl:run("-10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-2'(_Config) ->
   Qry = "let $value := xs:integer(10.0) return $value cast as xs:long",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-3'(_Config) ->
   Qry = "let $value := xs:integer(10.0) return $value cast as xs:nonNegativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-4'(_Config) ->
   Qry = "let $value := xs:integer(-10.0) return $value cast as xs:negativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -10
      ",
 Tst = xqerl:run("-10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-5'(_Config) ->
   Qry = "let $value := xs:integer(10.0) return $value cast as xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-6'(_Config) ->
   Qry = "let $value := xs:integer(10.0) return $value cast as xs:unsignedLong",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-7'(_Config) ->
   Qry = "let $value := xs:integer(10.0) return $value cast as xs:positiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-8'(_Config) ->
   Qry = "let $value := xs:integer(10.0) return $value cast as xs:short",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-9'(_Config) ->
   Qry = "let $value := xs:integer(10.0) return $value cast as xs:unsignedInt",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-10'(_Config) ->
   Qry = "let $value := xs:integer(10.0) return $value cast as xs:byte",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-11'(_Config) ->
   Qry = "let $value := xs:integer(10.0) return $value cast as xs:unsignedShort",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-12'(_Config) ->
   Qry = "let $value := xs:integer(10.0) return $value cast as xs:unsignedByte",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-13'(_Config) ->
   Qry = "let $value := xs:long(10.0) return $value cast as xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-14'(_Config) ->
   Qry = "let $value := xs:long(10.0) return $value cast as xs:nonNegativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-15'(_Config) ->
   Qry = "let $value := xs:long(-10) return $value cast as xs:negativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -10
      ",
 Tst = xqerl:run("-10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-16'(_Config) ->
   Qry = "let $value := xs:long(10) return $value cast as xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-17'(_Config) ->
   Qry = "let $value := xs:long(10) return $value cast as xs:unsignedLong",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-18'(_Config) ->
   Qry = "let $value := xs:long(10) return $value cast as xs:positiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-19'(_Config) ->
   Qry = "let $value := xs:long(10) return $value cast as xs:short",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-20'(_Config) ->
   Qry = "let $value := xs:long(10) return $value cast as xs:unsignedInt",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cast-within-21'(_Config) ->
   Qry = "let $value := xs:long(10) return $value cast as xs:byte",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cbcl-cast-derived-001'(_Config) ->
   {skip,"schemaImport"}.
'cbcl-cast-byte-001'(_Config) ->
   Qry = "xs:byte(128)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-byte-002'(_Config) ->
   Qry = "xs:byte(-129)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-byte-003'(_Config) ->
   Qry = "xs:byte(\"128\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-byte-004'(_Config) ->
   Qry = "xs:byte(\"-129\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-date-001'(_Config) ->
   Qry = "\"-25252734927766555-06-06\" cast as xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-cast-date-002'(_Config) ->
   Qry = "\"25252734927766555-07-29\" cast as xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-cast-dateTime-001'(_Config) ->
   Qry = "\"-25252734927766555-06-06T00:00:00Z\" cast as xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-cast-dateTime-002'(_Config) ->
   Qry = "\"25252734927766555-07-29T00:00:00Z\" cast as xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-cast-dayTimeDuration-001'(_Config) ->
   Qry = "\"P11768614336404564651D\" cast as xs:dayTimeDuration",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'cbcl-cast-dayTimeDuration-002'(_Config) ->
   Qry = "\"-P11768614336404564651D\" cast as xs:duration",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'cbcl-cast-decimal-001'(_Config) ->
   Qry = "1.7976931348623157E+308 cast as xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            string-length(string($result)) gt 300
         
      ",
 case (   (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"string-length(string($result)) gt 300",Options)) == {xqAtomicValue,'xs:boolean',true})) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-cast-decimal-002'(_Config) ->
   Qry = "-1.7976931348623157E+308 cast as xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            string-length(string($result)) gt 300
         
      ",
 case (   (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"string-length(string($result)) gt 300",Options)) == {xqAtomicValue,'xs:boolean',true})) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-cast-decimal-003'(_Config) ->
   Qry = "xs:float('3.402823e38') cast as xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            string-length(string($result)) gt 36
         
      ",
 case (   (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"string-length(string($result)) gt 36",Options)) == {xqAtomicValue,'xs:boolean',true})) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-cast-decimal-004'(_Config) ->
   Qry = "xs:float('-3.402823e38') cast as xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            string-length(string($result)) gt 36
         
      ",
 case (   (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"string-length(string($result)) gt 36",Options)) == {xqAtomicValue,'xs:boolean',true})) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-cast-duration-001'(_Config) ->
   Qry = "\"-P768614336404564651Y\" cast as xs:duration",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'cbcl-cast-duration-002'(_Config) ->
   Qry = "\"P768614336404564651Y\" cast as xs:duration",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'cbcl-cast-entity-001'(_Config) ->
   Qry = "xs:NCName('entity') cast as xs:ENTITY",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         entity
      ",
   case xqerl_test:string_value(Res) of
             "entity" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-entity-002'(_Config) ->
   Qry = "fn:current-time() cast as xs:ENTITY",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-id-001'(_Config) ->
   Qry = "xs:NCName('id') cast as xs:ID",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         id
      ",
   case xqerl_test:string_value(Res) of
             "id" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-id-002'(_Config) ->
   Qry = "fn:current-time() cast as xs:ID",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-idref-001'(_Config) ->
   Qry = "xs:NCName('idref') cast as xs:IDREF",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         idref
      ",
   case xqerl_test:string_value(Res) of
             "idref" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-idref-002'(_Config) ->
   Qry = "fn:current-time() cast as xs:IDREF",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-int-001'(_Config) ->
   Qry = "xs:int(2147483648)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-int-002'(_Config) ->
   Qry = "xs:int(-2147483649)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-int-003'(_Config) ->
   Qry = "xs:int(\"2147483648\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-int-004'(_Config) ->
   Qry = "xs:int(\"-2147483649\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-integer-001'(_Config) ->
   Qry = "1.7976931348623157E+308 cast as xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            string-length(string($result)) gt 300
         
      ",
 case (   (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"string-length(string($result)) gt 300",Options)) == {xqAtomicValue,'xs:boolean',true})) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-cast-integer-002'(_Config) ->
   Qry = "-1.7976931348623157E+308 cast as xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            string-length(string($result)) gt 300
         
      ",
 case (   (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"string-length(string($result)) gt 300",Options)) == {xqAtomicValue,'xs:boolean',true})) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-cast-integer-003'(_Config) ->
   Qry = "xs:float('3.402823e38') cast as xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            string-length(string($result)) gt 36
         
      ",
 case (   (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"string-length(string($result)) gt 36",Options)) == {xqAtomicValue,'xs:boolean',true})) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-cast-integer-004'(_Config) ->
   Qry = "xs:float('-3.402823e38') cast as xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            string-length(string($result)) gt 36
         
      ",
 case (   (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"string-length(string($result)) gt 36",Options)) == {xqAtomicValue,'xs:boolean',true})) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-cast-language-001'(_Config) ->
   Qry = "xs:language('en-gb') cast as xs:language",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         en-gb
      ",
   case xqerl_test:string_value(Res) of
             "en-gb" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-long-001'(_Config) ->
   Qry = "xs:long(9223372036854775808)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
          
            
            
          
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-cast-long-002'(_Config) ->
   Qry = "xs:long(-9223372036854775809)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
          
            
            
          
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-cast-long-003'(_Config) ->
   Qry = "xs:long(\"9223372036854775808\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-long-004'(_Config) ->
   Qry = "xs:long(\"-9223372036854775809\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-name-001'(_Config) ->
   Qry = "xs:NCName('NCName') cast as xs:Name",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         NCName
      ",
   case xqerl_test:string_value(Res) of
             "NCName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-name-002'(_Config) ->
   Qry = "fn:current-time() cast as xs:Name",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-ncname-001'(_Config) ->
   Qry = "xs:ID('id') cast as xs:NCName",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         id
      ",
   case xqerl_test:string_value(Res) of
             "id" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-ncname-002'(_Config) ->
   Qry = "fn:current-time() cast as xs:NCName",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-negativeInteger-001'(_Config) ->
   Qry = "xs:negativeInteger(0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-negativeInteger-002'(_Config) ->
   Qry = "xs:negativeInteger(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-nmtoken-001'(_Config) ->
   Qry = "
        let $string := (\"&#xD;&#xA;&#x9; foobar &#xA;&#xD;&#x9;\" cast as xs:NMTOKEN) return not(contains($string, '&#x9;') or contains($string, '&#xA;') or contains($string, '&#xD;') or string-length($string) ne 6)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-cast-nmtoken-001b'(_Config) ->
   Qry = "for $string in (\"\n	 foobar 
	\" cast as xs:NMTOKEN) return not(contains($string, '	') or contains($string, '
') or contains($string, '') or string-length($string) ne 6)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-cast-nmtoken-002'(_Config) ->
   Qry = "xs:NMTOKEN('NMTOKEN') cast as xs:NMTOKEN",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         NMTOKEN
      ",
   case xqerl_test:string_value(Res) of
             "NMTOKEN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-nonNegativeInteger-001'(_Config) ->
   Qry = "xs:nonNegativeInteger(-1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-nonNegativeInteger-002'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"-1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-nonPositiveInteger-001'(_Config) ->
   Qry = "xs:nonPositiveInteger(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-nonPositiveInteger-002'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-normalizedString-001'(_Config) ->
   Qry = "
        for $string in (\"&#xD; foo &#x9; bar &#xA;\" cast as xs:normalizedString)
        return not(contains($string, '&#x9;') or 
                   contains($string, '&#xA;') or 
                   contains($string, '&#xD;') or 
                   string-length($string) ne 13)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-cast-normalizedString-001b'(_Config) ->
   Qry = "
        for $string in (\" foo 	 bar 
\" cast as xs:normalizedString)
        return not(contains($string, '	') or 
                   contains($string, '
') or 
                   contains($string, '') or 
                   string-length($string) ne 13)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-cast-positiveInteger-001'(_Config) ->
   Qry = "xs:positiveInteger(0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-positiveInteger-002'(_Config) ->
   Qry = "xs:positiveInteger(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-short-001'(_Config) ->
   Qry = "xs:short(32768)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-short-002'(_Config) ->
   Qry = "xs:short(-32769)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-short-003'(_Config) ->
   Qry = "xs:short(\"32768\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-short-004'(_Config) ->
   Qry = "xs:short(\"-32769\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-token-001'(_Config) ->
   Qry = "
        for $string in (\"&#xD; foo &#x9; bar &#xA;\" cast as xs:token) 
        return not(contains($string, '&#x9;') or 
                   contains($string, '&#xA;') or 
                   contains($string, '&#xD;') or 
                   string-length($string) ne 7)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-cast-token-001b'(_Config) ->
   Qry = "
        for $string in (\" foo 	 bar 
\" cast as xs:token) 
        return not(contains($string, '	') or 
                   contains($string, '
') or 
                   contains($string, '') or 
                   string-length($string) ne 7)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-cast-unsignedByte-001'(_Config) ->
   Qry = "xs:unsignedByte(256)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedByte-002'(_Config) ->
   Qry = "xs:unsignedByte(-1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedByte-003'(_Config) ->
   Qry = "xs:unsignedByte(\"256\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedByte-004'(_Config) ->
   Qry = "xs:unsignedByte(\"-1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedInt-001'(_Config) ->
   Qry = "xs:unsignedInt(4294967296)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedInt-002'(_Config) ->
   Qry = "xs:unsignedInt(-1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedInt-003'(_Config) ->
   Qry = "xs:unsignedInt(\"4294967296\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedInt-004'(_Config) ->
   Qry = "xs:unsignedInt(\"-1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedLong-001'(_Config) ->
   Qry = "xs:unsignedLong(18446744073709551616)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
          
            
            
          
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-cast-unsignedLong-002'(_Config) ->
   Qry = "xs:unsignedLong(-1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedLong-003'(_Config) ->
   Qry = "xs:unsignedLong(\"18446744073709551616\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedLong-004'(_Config) ->
   Qry = "xs:unsignedLong(\"-1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedShort-001'(_Config) ->
   Qry = "xs:unsignedShort(65536)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedShort-002'(_Config) ->
   Qry = "xs:unsignedShort(-1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedShort-003'(_Config) ->
   Qry = "xs:unsignedShort(\"65536\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-unsignedShort-004'(_Config) ->
   Qry = "xs:unsignedShort(\"-1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-yearMonthDuration-001'(_Config) ->
   Qry = "\"-P768614336404564651Y\" cast as xs:yearMonthDuration",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'cbcl-cast-yearMonthDuration-002'(_Config) ->
   Qry = "\"P768614336404564651Y\" cast as xs:yearMonthDuration",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'cbcl-cast-date-003'(_Config) ->
   Qry = "\"18446744073709551616-05-15\" cast as xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-cast-date-004'(_Config) ->
   Qry = "\"18446744073709551616-QQ-15\" cast as xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-dateTime-003'(_Config) ->
   Qry = "\"18446744073709551616-05-15T16:15:00\" cast as xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-cast-dateTime-004'(_Config) ->
   Qry = "\"18446744073709551616-QQ-15T16:15:00\" cast as xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-nonNegativeInteger-003'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"-00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-nonPositiveInteger-003'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"+00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-unsignedByte-005'(_Config) ->
   Qry = "xs:unsignedByte(\"-00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-unsignedInt-005'(_Config) ->
   Qry = "xs:unsignedInt(\"-00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-unsignedLong-005'(_Config) ->
   Qry = "xs:unsignedLong(\"-00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-unsignedShort-005'(_Config) ->
   Qry = "xs:unsignedShort(\"-00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-cast-gYear-001'(_Config) ->
   Qry = "\"99999999999999999999999999999\" cast as xs:gYear",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-cast-gYearMonth-001'(_Config) ->
   Qry = "\"99999999999999999999999999999-01\" cast as xs:gYearMonth",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-cast-gYearMonth-002'(_Config) ->
   Qry = "\"99999999999999999999999999999-XX\" cast as xs:gYearMonth",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-gYear-002'(_Config) ->
   Qry = "\"0000\" cast as xs:gYear",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-gYear-003'(_Config) ->
   Qry = "\"-0000\" cast as xs:gYear",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-gYearMonth-003'(_Config) ->
   Qry = "\"0000-05\" cast as xs:gYearMonth",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-cast-gYearMonth-004'(_Config) ->
   Qry = "\"-0000-05\" cast as xs:gYearMonth",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-case-anyUri-001'(_Config) ->
   Qry = "\"http://example.com?query=\" cast as xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         http://example.com?query=
      ",
   case xqerl_test:string_value(Res) of
             "http://example.com?query=" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
