-module('fn_exactly_one_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-exactly-oneint1args-1'/1]).
-export(['fn-exactly-oneint1args-2'/1]).
-export(['fn-exactly-oneint1args-3'/1]).
-export(['fn-exactly-oneintg1args-1'/1]).
-export(['fn-exactly-oneintg1args-2'/1]).
-export(['fn-exactly-oneintg1args-3'/1]).
-export(['fn-exactly-onedec1args-1'/1]).
-export(['fn-exactly-onedec1args-2'/1]).
-export(['fn-exactly-onedec1args-3'/1]).
-export(['fn-exactly-onedbl1args-1'/1]).
-export(['fn-exactly-onedbl1args-2'/1]).
-export(['fn-exactly-onedbl1args-3'/1]).
-export(['fn-exactly-oneflt1args-1'/1]).
-export(['fn-exactly-oneflt1args-2'/1]).
-export(['fn-exactly-oneflt1args-3'/1]).
-export(['fn-exactly-onelng1args-1'/1]).
-export(['fn-exactly-onelng1args-2'/1]).
-export(['fn-exactly-onelng1args-3'/1]).
-export(['fn-exactly-oneusht1args-1'/1]).
-export(['fn-exactly-oneusht1args-2'/1]).
-export(['fn-exactly-oneusht1args-3'/1]).
-export(['fn-exactly-onenint1args-1'/1]).
-export(['fn-exactly-onenint1args-2'/1]).
-export(['fn-exactly-onenint1args-3'/1]).
-export(['fn-exactly-onepint1args-1'/1]).
-export(['fn-exactly-onepint1args-2'/1]).
-export(['fn-exactly-onepint1args-3'/1]).
-export(['fn-exactly-oneulng1args-1'/1]).
-export(['fn-exactly-oneulng1args-2'/1]).
-export(['fn-exactly-oneulng1args-3'/1]).
-export(['fn-exactly-onenpi1args-1'/1]).
-export(['fn-exactly-onenpi1args-2'/1]).
-export(['fn-exactly-onenpi1args-3'/1]).
-export(['fn-exactly-onenni1args-1'/1]).
-export(['fn-exactly-onenni1args-2'/1]).
-export(['fn-exactly-onenni1args-3'/1]).
-export(['fn-exactly-onesht1args-1'/1]).
-export(['fn-exactly-onesht1args-2'/1]).
-export(['fn-exactly-onesht1args-3'/1]).
-export(['fn-exactly-one-1'/1]).
-export(['K-SeqExactlyOneFunc-1'/1]).
-export(['K-SeqExactlyOneFunc-2'/1]).
-export(['K-SeqExactlyOneFunc-3'/1]).
-export(['K-SeqExactlyOneFunc-4'/1]).
-export(['K-SeqExactlyOneFunc-5'/1]).
-export(['K-SeqExactlyOneFunc-6'/1]).
-export(['K-SeqExactlyOneFunc-7'/1]).
-export(['K-SeqExactlyOneFunc-8'/1]).
-export(['K-SeqExactlyOneFunc-9'/1]).
-export(['K-SeqExactlyOneFunc-10'/1]).
-export(['cbcl-exactly-one-001'/1]).
-export(['cbcl-exactly-one-002'/1]).
-export(['cbcl-exactly-one-003'/1]).
-export(['cbcl-exactly-one-004'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-exactly-oneint1args-1',
   'fn-exactly-oneint1args-2',
   'fn-exactly-oneint1args-3',
   'fn-exactly-oneintg1args-1',
   'fn-exactly-oneintg1args-2',
   'fn-exactly-oneintg1args-3',
   'fn-exactly-onedec1args-1',
   'fn-exactly-onedec1args-2',
   'fn-exactly-onedec1args-3',
   'fn-exactly-onedbl1args-1',
   'fn-exactly-onedbl1args-2',
   'fn-exactly-onedbl1args-3',
   'fn-exactly-oneflt1args-1',
   'fn-exactly-oneflt1args-2',
   'fn-exactly-oneflt1args-3',
   'fn-exactly-onelng1args-1',
   'fn-exactly-onelng1args-2',
   'fn-exactly-onelng1args-3',
   'fn-exactly-oneusht1args-1',
   'fn-exactly-oneusht1args-2',
   'fn-exactly-oneusht1args-3',
   'fn-exactly-onenint1args-1',
   'fn-exactly-onenint1args-2',
   'fn-exactly-onenint1args-3',
   'fn-exactly-onepint1args-1',
   'fn-exactly-onepint1args-2',
   'fn-exactly-onepint1args-3',
   'fn-exactly-oneulng1args-1',
   'fn-exactly-oneulng1args-2',
   'fn-exactly-oneulng1args-3',
   'fn-exactly-onenpi1args-1',
   'fn-exactly-onenpi1args-2',
   'fn-exactly-onenpi1args-3',
   'fn-exactly-onenni1args-1',
   'fn-exactly-onenni1args-2',
   'fn-exactly-onenni1args-3',
   'fn-exactly-onesht1args-1',
   'fn-exactly-onesht1args-2',
   'fn-exactly-onesht1args-3',
   'fn-exactly-one-1',
   'K-SeqExactlyOneFunc-1',
   'K-SeqExactlyOneFunc-2',
   'K-SeqExactlyOneFunc-3',
   'K-SeqExactlyOneFunc-4',
   'K-SeqExactlyOneFunc-5',
   'K-SeqExactlyOneFunc-6',
   'K-SeqExactlyOneFunc-7',
   'K-SeqExactlyOneFunc-8',
   'K-SeqExactlyOneFunc-9',
   'K-SeqExactlyOneFunc-10',
   'cbcl-exactly-one-001',
   'cbcl-exactly-one-002',
   'cbcl-exactly-one-003',
   'cbcl-exactly-one-004'].
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
'fn-exactly-oneint1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:int(\"-2147483648\"))",
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
'fn-exactly-oneint1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:int(\"-1873914410\"))",
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
'fn-exactly-oneint1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:int(\"2147483647\"))",
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
'fn-exactly-oneintg1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:integer(\"-999999999999999999\"))",
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
'fn-exactly-oneintg1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:integer(\"830993497117024304\"))",
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
'fn-exactly-oneintg1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:integer(\"999999999999999999\"))",
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
'fn-exactly-onedec1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:decimal(\"-999999999999999999\"))",
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
'fn-exactly-onedec1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:decimal(\"617375191608514839\"))",
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
'fn-exactly-onedec1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:decimal(\"999999999999999999\"))",
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
'fn-exactly-onedbl1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:double(\"-1.7976931348623157E308\"))",
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
'fn-exactly-onedbl1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:double(\"0\"))",
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
'fn-exactly-onedbl1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:double(\"1.7976931348623157E308\"))",
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
'fn-exactly-oneflt1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:float(\"-3.4028235E38\"))",
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
'fn-exactly-oneflt1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:float(\"0\"))",
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
'fn-exactly-oneflt1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:float(\"3.4028235E38\"))",
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
'fn-exactly-onelng1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:long(\"-92233720368547758\"))",
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
'fn-exactly-onelng1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:long(\"-47175562203048468\"))",
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
'fn-exactly-onelng1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:long(\"92233720368547758\"))",
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
'fn-exactly-oneusht1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:unsignedShort(\"0\"))",
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
'fn-exactly-oneusht1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:unsignedShort(\"44633\"))",
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
'fn-exactly-oneusht1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:unsignedShort(\"65535\"))",
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
'fn-exactly-onenint1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:negativeInteger(\"-999999999999999999\"))",
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
'fn-exactly-onenint1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:negativeInteger(\"-297014075999096793\"))",
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
'fn-exactly-onenint1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:negativeInteger(\"-1\"))",
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
'fn-exactly-onepint1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:positiveInteger(\"1\"))",
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
'fn-exactly-onepint1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:positiveInteger(\"52704602390610033\"))",
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
'fn-exactly-onepint1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:positiveInteger(\"999999999999999999\"))",
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
'fn-exactly-oneulng1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:unsignedLong(\"0\"))",
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
'fn-exactly-oneulng1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:unsignedLong(\"130747108607674654\"))",
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
'fn-exactly-oneulng1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:unsignedLong(\"184467440737095516\"))",
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
'fn-exactly-onenpi1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:nonPositiveInteger(\"-999999999999999999\"))",
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
'fn-exactly-onenpi1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:nonPositiveInteger(\"-475688437271870490\"))",
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
'fn-exactly-onenpi1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:nonPositiveInteger(\"0\"))",
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
'fn-exactly-onenni1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:nonNegativeInteger(\"0\"))",
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
'fn-exactly-onenni1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:nonNegativeInteger(\"303884545991464527\"))",
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
'fn-exactly-onenni1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:nonNegativeInteger(\"999999999999999999\"))",
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
'fn-exactly-onesht1args-1'(_Config) ->
   Qry = "fn:exactly-one(xs:short(\"-32768\"))",
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
'fn-exactly-onesht1args-2'(_Config) ->
   Qry = "fn:exactly-one(xs:short(\"-5324\"))",
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
'fn-exactly-onesht1args-3'(_Config) ->
   Qry = "fn:exactly-one(xs:short(\"32767\"))",
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
'fn-exactly-one-1'(_Config) ->
   Qry = "fn:exactly-one((1,2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0005'}) end.
'K-SeqExactlyOneFunc-1'(_Config) ->
   Qry = "exactly-one(1, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqExactlyOneFunc-2'(_Config) ->
   Qry = "exactly-one()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqExactlyOneFunc-3'(_Config) ->
   Qry = "exactly-one( (1, 2, 3) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0005'}) end.
'K-SeqExactlyOneFunc-4'(_Config) ->
   Qry = "exactly-one(\"one\") eq \"one\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExactlyOneFunc-5'(_Config) ->
   Qry = "count(exactly-one( \"one\" )) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExactlyOneFunc-6'(_Config) ->
   Qry = "exactly-one(error())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-SeqExactlyOneFunc-7'(_Config) ->
   Qry = "exactly-one((true(), error()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-SeqExactlyOneFunc-8'(_Config) ->
   Qry = "exactly-one(( error(), true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-SeqExactlyOneFunc-9'(_Config) ->
   Qry = "exactly-one( () )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0005'}) end.
'K-SeqExactlyOneFunc-10'(_Config) ->
   Qry = "zero-or-more(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'cbcl-exactly-one-001'(_Config) ->
   Qry = "boolean( exactly-one( remove( (<a/>, 1), 1 ) ) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-exactly-one-002'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer) { if ($arg = 0) then (1, 2, 3) else $arg }; 
      	fn:exactly-one(fn:unordered( local:generate(1) ))
      ",
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
'cbcl-exactly-one-003'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) { if ($arg = 0) then () else if ($arg = 1) then $arg else ($arg, $arg) }; 
      	1 + fn:exactly-one(fn:one-or-more( local:generate( 1 ) ))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_types:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-exactly-one-004'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) { if ($arg = 0) then () else if ($arg = 1) then $arg else ($arg, $arg) }; 
      	1 + fn:exactly-one(fn:zero-or-one( local:generate( 1 ) ))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_types:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
