-module('fn_one_or_more_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-one-or-moreint1args-1'/1]).
-export(['fn-one-or-moreint1args-2'/1]).
-export(['fn-one-or-moreint1args-3'/1]).
-export(['fn-one-or-moreintg1args-1'/1]).
-export(['fn-one-or-moreintg1args-2'/1]).
-export(['fn-one-or-moreintg1args-3'/1]).
-export(['fn-one-or-moredec1args-1'/1]).
-export(['fn-one-or-moredec1args-2'/1]).
-export(['fn-one-or-moredec1args-3'/1]).
-export(['fn-one-or-moredbl1args-1'/1]).
-export(['fn-one-or-moredbl1args-2'/1]).
-export(['fn-one-or-moredbl1args-3'/1]).
-export(['fn-one-or-moreflt1args-1'/1]).
-export(['fn-one-or-moreflt1args-2'/1]).
-export(['fn-one-or-moreflt1args-3'/1]).
-export(['fn-one-or-morelng1args-1'/1]).
-export(['fn-one-or-morelng1args-2'/1]).
-export(['fn-one-or-morelng1args-3'/1]).
-export(['fn-one-or-moreusht1args-1'/1]).
-export(['fn-one-or-moreusht1args-2'/1]).
-export(['fn-one-or-moreusht1args-3'/1]).
-export(['fn-one-or-morenint1args-1'/1]).
-export(['fn-one-or-morenint1args-2'/1]).
-export(['fn-one-or-morenint1args-3'/1]).
-export(['fn-one-or-morepint1args-1'/1]).
-export(['fn-one-or-morepint1args-2'/1]).
-export(['fn-one-or-morepint1args-3'/1]).
-export(['fn-one-or-moreulng1args-1'/1]).
-export(['fn-one-or-moreulng1args-2'/1]).
-export(['fn-one-or-moreulng1args-3'/1]).
-export(['fn-one-or-morenpi1args-1'/1]).
-export(['fn-one-or-morenpi1args-2'/1]).
-export(['fn-one-or-morenpi1args-3'/1]).
-export(['fn-one-or-morenni1args-1'/1]).
-export(['fn-one-or-morenni1args-2'/1]).
-export(['fn-one-or-morenni1args-3'/1]).
-export(['fn-one-or-moresht1args-1'/1]).
-export(['fn-one-or-moresht1args-2'/1]).
-export(['fn-one-or-moresht1args-3'/1]).
-export(['fn-one-or-more-1'/1]).
-export(['K-SeqOneOrMoreFunc-1'/1]).
-export(['K-SeqOneOrMoreFunc-2'/1]).
-export(['K-SeqOneOrMoreFunc-3'/1]).
-export(['K-SeqOneOrMoreFunc-4'/1]).
-export(['K-SeqOneOrMoreFunc-5'/1]).
-export(['K-SeqOneOrMoreFunc-6'/1]).
-export(['K-SeqOneOrMoreFunc-7'/1]).
-export(['K-SeqOneOrMoreFunc-8'/1]).
-export(['K2-SeqOneOrMoreFunc-1'/1]).
-export(['cbcl-one-or-more-001'/1]).
-export(['cbcl-one-or-more-002'/1]).
-export(['cbcl-one-or-more-003'/1]).
-export(['cbcl-one-or-more-004'/1]).
-export(['cbcl-one-or-more-005'/1]).
-export(['cbcl-one-or-more-006'/1]).
-export(['cbcl-one-or-more-007'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-one-or-moreint1args-1',
   'fn-one-or-moreint1args-2',
   'fn-one-or-moreint1args-3',
   'fn-one-or-moreintg1args-1',
   'fn-one-or-moreintg1args-2',
   'fn-one-or-moreintg1args-3',
   'fn-one-or-moredec1args-1',
   'fn-one-or-moredec1args-2',
   'fn-one-or-moredec1args-3',
   'fn-one-or-moredbl1args-1',
   'fn-one-or-moredbl1args-2',
   'fn-one-or-moredbl1args-3',
   'fn-one-or-moreflt1args-1',
   'fn-one-or-moreflt1args-2',
   'fn-one-or-moreflt1args-3',
   'fn-one-or-morelng1args-1',
   'fn-one-or-morelng1args-2',
   'fn-one-or-morelng1args-3',
   'fn-one-or-moreusht1args-1',
   'fn-one-or-moreusht1args-2',
   'fn-one-or-moreusht1args-3',
   'fn-one-or-morenint1args-1',
   'fn-one-or-morenint1args-2',
   'fn-one-or-morenint1args-3',
   'fn-one-or-morepint1args-1',
   'fn-one-or-morepint1args-2',
   'fn-one-or-morepint1args-3',
   'fn-one-or-moreulng1args-1',
   'fn-one-or-moreulng1args-2',
   'fn-one-or-moreulng1args-3',
   'fn-one-or-morenpi1args-1',
   'fn-one-or-morenpi1args-2',
   'fn-one-or-morenpi1args-3',
   'fn-one-or-morenni1args-1',
   'fn-one-or-morenni1args-2',
   'fn-one-or-morenni1args-3',
   'fn-one-or-moresht1args-1',
   'fn-one-or-moresht1args-2',
   'fn-one-or-moresht1args-3',
   'fn-one-or-more-1',
   'K-SeqOneOrMoreFunc-1',
   'K-SeqOneOrMoreFunc-2',
   'K-SeqOneOrMoreFunc-3',
   'K-SeqOneOrMoreFunc-4',
   'K-SeqOneOrMoreFunc-5',
   'K-SeqOneOrMoreFunc-6',
   'K-SeqOneOrMoreFunc-7',
   'K-SeqOneOrMoreFunc-8',
   'K2-SeqOneOrMoreFunc-1',
   'cbcl-one-or-more-001',
   'cbcl-one-or-more-002',
   'cbcl-one-or-more-003',
   'cbcl-one-or-more-004',
   'cbcl-one-or-more-005',
   'cbcl-one-or-more-006',
   'cbcl-one-or-more-007'].
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
'fn-one-or-moreint1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:int(\"-2147483648\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -2147483648
      ",
   case xqerl_types:string_value(Res) of
             "-2147483648" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreint1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:int(\"-1873914410\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1873914410
      ",
   case xqerl_types:string_value(Res) of
             "-1873914410" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreint1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:int(\"2147483647\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2147483647
      ",
   case xqerl_types:string_value(Res) of
             "2147483647" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreintg1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:integer(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreintg1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:integer(\"830993497117024304\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         830993497117024304
      ",
   case xqerl_types:string_value(Res) of
             "830993497117024304" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreintg1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:integer(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moredec1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:decimal(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moredec1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:decimal(\"617375191608514839\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         617375191608514839
      ",
   case xqerl_types:string_value(Res) of
             "617375191608514839" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moredec1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:decimal(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moredbl1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:double(\"-1.7976931348623157E308\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.7976931348623157E308
      ",
   case xqerl_types:string_value(Res) of
             "-1.7976931348623157E308" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moredbl1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:double(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moredbl1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:double(\"1.7976931348623157E308\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.7976931348623157E308
      ",
   case xqerl_types:string_value(Res) of
             "1.7976931348623157E308" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreflt1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:float(\"-3.4028235E38\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -3.4028235E38
      ",
   case xqerl_types:string_value(Res) of
             "-3.4028235E38" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreflt1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:float(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreflt1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:float(\"3.4028235E38\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3.4028235E38
      ",
   case xqerl_types:string_value(Res) of
             "3.4028235E38" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morelng1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:long(\"-92233720368547758\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -92233720368547758
      ",
   case xqerl_types:string_value(Res) of
             "-92233720368547758" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morelng1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:long(\"-47175562203048468\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -47175562203048468
      ",
   case xqerl_types:string_value(Res) of
             "-47175562203048468" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morelng1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:long(\"92233720368547758\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         92233720368547758
      ",
   case xqerl_types:string_value(Res) of
             "92233720368547758" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreusht1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:unsignedShort(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreusht1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:unsignedShort(\"44633\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         44633
      ",
   case xqerl_types:string_value(Res) of
             "44633" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreusht1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:unsignedShort(\"65535\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         65535
      ",
   case xqerl_types:string_value(Res) of
             "65535" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morenint1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:negativeInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morenint1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:negativeInteger(\"-297014075999096793\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -297014075999096793
      ",
   case xqerl_types:string_value(Res) of
             "-297014075999096793" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morenint1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:negativeInteger(\"-1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
   case xqerl_types:string_value(Res) of
             "-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morepint1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:positiveInteger(\"1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_types:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morepint1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:positiveInteger(\"52704602390610033\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         52704602390610033
      ",
   case xqerl_types:string_value(Res) of
             "52704602390610033" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morepint1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:positiveInteger(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreulng1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:unsignedLong(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreulng1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:unsignedLong(\"130747108607674654\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         130747108607674654
      ",
   case xqerl_types:string_value(Res) of
             "130747108607674654" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moreulng1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:unsignedLong(\"184467440737095516\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         184467440737095516
      ",
   case xqerl_types:string_value(Res) of
             "184467440737095516" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morenpi1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:nonPositiveInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morenpi1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:nonPositiveInteger(\"-475688437271870490\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -475688437271870490
      ",
   case xqerl_types:string_value(Res) of
             "-475688437271870490" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morenpi1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:nonPositiveInteger(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morenni1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:nonNegativeInteger(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morenni1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:nonNegativeInteger(\"303884545991464527\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         303884545991464527
      ",
   case xqerl_types:string_value(Res) of
             "303884545991464527" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-morenni1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:nonNegativeInteger(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moresht1args-1'(_Config) ->
   Qry = "fn:one-or-more(xs:short(\"-32768\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -32768
      ",
   case xqerl_types:string_value(Res) of
             "-32768" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moresht1args-2'(_Config) ->
   Qry = "fn:one-or-more(xs:short(\"-5324\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -5324
      ",
   case xqerl_types:string_value(Res) of
             "-5324" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-moresht1args-3'(_Config) ->
   Qry = "fn:one-or-more(xs:short(\"32767\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         32767
      ",
   case xqerl_types:string_value(Res) of
             "32767" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-one-or-more-1'(_Config) ->
   Qry = "fn:one-or-more(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0004'}) end.
'K-SeqOneOrMoreFunc-1'(_Config) ->
   Qry = "one-or-more(1, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqOneOrMoreFunc-2'(_Config) ->
   Qry = "one-or-more()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqOneOrMoreFunc-3'(_Config) ->
   Qry = "one-or-more(\"one\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         one
      ",
   case xqerl_types:string_value(Res) of
             "one" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K-SeqOneOrMoreFunc-4'(_Config) ->
   Qry = "exists(one-or-more((\"one\", 2)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqOneOrMoreFunc-5'(_Config) ->
   Qry = "count(one-or-more( \"one\" )) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqOneOrMoreFunc-6'(_Config) ->
   Qry = "count(one-or-more( (1, 2, 3, \"four\") )) eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqOneOrMoreFunc-7'(_Config) ->
   Qry = "one-or-more(error())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-SeqOneOrMoreFunc-8'(_Config) ->
   Qry = "one-or-more( () )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0004'}) end.
'K2-SeqOneOrMoreFunc-1'(_Config) ->
   Qry = "codepoints-to-string(one-or-more(string-to-codepoints(\"foo\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         foo
      ",
   case xqerl_types:string_value(Res) of
             "foo" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-one-or-more-001'(_Config) ->
   Qry = "
        declare function local:generate($arg as xs:integer?) { if ($arg = 0) then (1, 2, 3) else $arg };
        fn:one-or-more(fn:reverse( local:generate( 0 ) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3 2 1
      ",
   case xqerl_types:string_value(Res) of
             "3 2 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-one-or-more-002'(_Config) ->
   Qry = "
        declare function local:generate($arg as xs:integer?) { if ($arg = 0) then (1, 2, 3) else $arg };
        fn:one-or-more(fn:zero-or-one( local:generate( () ) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0004'}) end.
'cbcl-one-or-more-003'(_Config) ->
   Qry = "
      boolean(one-or-more(for $x in 1 to month-from-date(current-date()) return <a/>))
   ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-one-or-more-004'(_Config) ->
   Qry = "boolean(one-or-more(month-from-date(current-date()) to 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0004'}) end.
'cbcl-one-or-more-005'(_Config) ->
   Qry = "boolean(one-or-more((1 to 10)[. mod 2 = 0]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'cbcl-one-or-more-006'(_Config) ->
   Qry = "one-or-more((1 to 10)[. div 2 = 0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0004'}) end.
'cbcl-one-or-more-007'(_Config) ->
   Qry = "
      boolean(one-or-more(for $x in (1 to 10)[. div 2 = 1] return true()))
   ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
