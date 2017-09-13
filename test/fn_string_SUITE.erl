-module('fn_string_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-stringint1args-1'/1]).
-export(['fn-stringint1args-2'/1]).
-export(['fn-stringint1args-3'/1]).
-export(['fn-stringintg1args-1'/1]).
-export(['fn-stringintg1args-2'/1]).
-export(['fn-stringintg1args-3'/1]).
-export(['fn-stringdec1args-1'/1]).
-export(['fn-stringdec1args-2'/1]).
-export(['fn-stringdec1args-3'/1]).
-export(['fn-stringdbl1args-1'/1]).
-export(['fn-stringdbl1args-2'/1]).
-export(['fn-stringdbl1args-3'/1]).
-export(['fn-stringflt1args-1'/1]).
-export(['fn-stringflt1args-2'/1]).
-export(['fn-stringflt1args-3'/1]).
-export(['fn-stringlng1args-1'/1]).
-export(['fn-stringlng1args-2'/1]).
-export(['fn-stringlng1args-3'/1]).
-export(['fn-stringusht1args-1'/1]).
-export(['fn-stringusht1args-2'/1]).
-export(['fn-stringusht1args-3'/1]).
-export(['fn-stringnint1args-1'/1]).
-export(['fn-stringnint1args-2'/1]).
-export(['fn-stringnint1args-3'/1]).
-export(['fn-stringpint1args-1'/1]).
-export(['fn-stringpint1args-2'/1]).
-export(['fn-stringpint1args-3'/1]).
-export(['fn-stringulng1args-1'/1]).
-export(['fn-stringulng1args-2'/1]).
-export(['fn-stringulng1args-3'/1]).
-export(['fn-stringnpi1args-1'/1]).
-export(['fn-stringnpi1args-2'/1]).
-export(['fn-stringnpi1args-3'/1]).
-export(['fn-stringnni1args-1'/1]).
-export(['fn-stringnni1args-2'/1]).
-export(['fn-stringnni1args-3'/1]).
-export(['fn-stringsht1args-1'/1]).
-export(['fn-stringsht1args-2'/1]).
-export(['fn-stringsht1args-3'/1]).
-export(['fn-string-1'/1]).
-export(['fn-string-2'/1]).
-export(['fn-string-3'/1]).
-export(['fn-string-4'/1]).
-export(['fn-string-5'/1]).
-export(['fn-string-6'/1]).
-export(['fn-string-7'/1]).
-export(['fn-string-8'/1]).
-export(['fn-string-9'/1]).
-export(['fn-string-22'/1]).
-export(['fn-string-23'/1]).
-export(['fn-string-24'/1]).
-export(['fn-string-25'/1]).
-export(['fn-string-26'/1]).
-export(['fn-string-27'/1]).
-export(['fn-string-28'/1]).
-export(['fn-string-29'/1]).
-export(['fn-string-30'/1]).
-export(['fn-string-31'/1]).
-export(['K-StringFunc-1'/1]).
-export(['K-StringFunc-2'/1]).
-export(['K-StringFunc-3'/1]).
-export(['K-StringFunc-4'/1]).
-export(['K-StringFunc-5'/1]).
-export(['K-StringFunc-6'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-stringint1args-1',
   'fn-stringint1args-2',
   'fn-stringint1args-3',
   'fn-stringintg1args-1',
   'fn-stringintg1args-2',
   'fn-stringintg1args-3',
   'fn-stringdec1args-1',
   'fn-stringdec1args-2',
   'fn-stringdec1args-3',
   'fn-stringdbl1args-1',
   'fn-stringdbl1args-2',
   'fn-stringdbl1args-3',
   'fn-stringflt1args-1',
   'fn-stringflt1args-2',
   'fn-stringflt1args-3',
   'fn-stringlng1args-1',
   'fn-stringlng1args-2',
   'fn-stringlng1args-3',
   'fn-stringusht1args-1',
   'fn-stringusht1args-2',
   'fn-stringusht1args-3',
   'fn-stringnint1args-1',
   'fn-stringnint1args-2',
   'fn-stringnint1args-3',
   'fn-stringpint1args-1',
   'fn-stringpint1args-2',
   'fn-stringpint1args-3',
   'fn-stringulng1args-1',
   'fn-stringulng1args-2',
   'fn-stringulng1args-3',
   'fn-stringnpi1args-1',
   'fn-stringnpi1args-2',
   'fn-stringnpi1args-3',
   'fn-stringnni1args-1',
   'fn-stringnni1args-2',
   'fn-stringnni1args-3',
   'fn-stringsht1args-1',
   'fn-stringsht1args-2',
   'fn-stringsht1args-3',
   'fn-string-1',
   'fn-string-2',
   'fn-string-3',
   'fn-string-4',
   'fn-string-5',
   'fn-string-6',
   'fn-string-7',
   'fn-string-8',
   'fn-string-9',
   'fn-string-22',
   'fn-string-23',
   'fn-string-24',
   'fn-string-25',
   'fn-string-26',
   'fn-string-27',
   'fn-string-28',
   'fn-string-29',
   'fn-string-30',
   'fn-string-31',
   'K-StringFunc-1',
   'K-StringFunc-2',
   'K-StringFunc-3',
   'K-StringFunc-4',
   'K-StringFunc-5',
   'K-StringFunc-6'].
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
'fn-stringint1args-1'(_Config) ->
   Qry = "fn:string(xs:int(\"-2147483648\"))",
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
'fn-stringint1args-2'(_Config) ->
   Qry = "fn:string(xs:int(\"-1873914410\"))",
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
'fn-stringint1args-3'(_Config) ->
   Qry = "fn:string(xs:int(\"2147483647\"))",
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
'fn-stringintg1args-1'(_Config) ->
   Qry = "fn:string(xs:integer(\"-999999999999999999\"))",
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
'fn-stringintg1args-2'(_Config) ->
   Qry = "fn:string(xs:integer(\"830993497117024304\"))",
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
'fn-stringintg1args-3'(_Config) ->
   Qry = "fn:string(xs:integer(\"999999999999999999\"))",
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
'fn-stringdec1args-1'(_Config) ->
   Qry = "fn:string(xs:decimal(\"-999999999999999999\"))",
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
'fn-stringdec1args-2'(_Config) ->
   Qry = "fn:string(xs:decimal(\"617375191608514839\"))",
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
'fn-stringdec1args-3'(_Config) ->
   Qry = "fn:string(xs:decimal(\"999999999999999999\"))",
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
'fn-stringdbl1args-1'(_Config) ->
   Qry = "fn:string(xs:double(\"-1.7976931348623157E308\"))",
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
'fn-stringdbl1args-2'(_Config) ->
   Qry = "fn:string(xs:double(\"0\"))",
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
'fn-stringdbl1args-3'(_Config) ->
   Qry = "fn:string(xs:double(\"1.7976931348623157E308\"))",
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
'fn-stringflt1args-1'(_Config) ->
   Qry = "fn:string(xs:float(\"-3.4028235E38\"))",
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
'fn-stringflt1args-2'(_Config) ->
   Qry = "fn:string(xs:float(\"0\"))",
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
'fn-stringflt1args-3'(_Config) ->
   Qry = "fn:string(xs:float(\"3.4028235E38\"))",
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
'fn-stringlng1args-1'(_Config) ->
   Qry = "fn:string(xs:long(\"-92233720368547758\"))",
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
'fn-stringlng1args-2'(_Config) ->
   Qry = "fn:string(xs:long(\"-47175562203048468\"))",
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
'fn-stringlng1args-3'(_Config) ->
   Qry = "fn:string(xs:long(\"92233720368547758\"))",
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
'fn-stringusht1args-1'(_Config) ->
   Qry = "fn:string(xs:unsignedShort(\"0\"))",
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
'fn-stringusht1args-2'(_Config) ->
   Qry = "fn:string(xs:unsignedShort(\"44633\"))",
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
'fn-stringusht1args-3'(_Config) ->
   Qry = "fn:string(xs:unsignedShort(\"65535\"))",
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
'fn-stringnint1args-1'(_Config) ->
   Qry = "fn:string(xs:negativeInteger(\"-999999999999999999\"))",
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
'fn-stringnint1args-2'(_Config) ->
   Qry = "fn:string(xs:negativeInteger(\"-297014075999096793\"))",
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
'fn-stringnint1args-3'(_Config) ->
   Qry = "fn:string(xs:negativeInteger(\"-1\"))",
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
'fn-stringpint1args-1'(_Config) ->
   Qry = "fn:string(xs:positiveInteger(\"1\"))",
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
'fn-stringpint1args-2'(_Config) ->
   Qry = "fn:string(xs:positiveInteger(\"52704602390610033\"))",
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
'fn-stringpint1args-3'(_Config) ->
   Qry = "fn:string(xs:positiveInteger(\"999999999999999999\"))",
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
'fn-stringulng1args-1'(_Config) ->
   Qry = "fn:string(xs:unsignedLong(\"0\"))",
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
'fn-stringulng1args-2'(_Config) ->
   Qry = "fn:string(xs:unsignedLong(\"130747108607674654\"))",
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
'fn-stringulng1args-3'(_Config) ->
   Qry = "fn:string(xs:unsignedLong(\"184467440737095516\"))",
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
'fn-stringnpi1args-1'(_Config) ->
   Qry = "fn:string(xs:nonPositiveInteger(\"-999999999999999999\"))",
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
'fn-stringnpi1args-2'(_Config) ->
   Qry = "fn:string(xs:nonPositiveInteger(\"-475688437271870490\"))",
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
'fn-stringnpi1args-3'(_Config) ->
   Qry = "fn:string(xs:nonPositiveInteger(\"0\"))",
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
'fn-stringnni1args-1'(_Config) ->
   Qry = "fn:string(xs:nonNegativeInteger(\"0\"))",
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
'fn-stringnni1args-2'(_Config) ->
   Qry = "fn:string(xs:nonNegativeInteger(\"303884545991464527\"))",
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
'fn-stringnni1args-3'(_Config) ->
   Qry = "fn:string(xs:nonNegativeInteger(\"999999999999999999\"))",
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
'fn-stringsht1args-1'(_Config) ->
   Qry = "fn:string(xs:short(\"-32768\"))",
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
'fn-stringsht1args-2'(_Config) ->
   Qry = "fn:string(xs:short(\"-5324\"))",
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
'fn-stringsht1args-3'(_Config) ->
   Qry = "fn:string(xs:short(\"32767\"))",
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
'fn-string-1'(_Config) ->
   Qry = "fn:string()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-string-2'(_Config) ->
   Qry = "fn:string(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_seq2:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-string-3'(_Config) ->
   Qry = "fn:string(.)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-string-4'(_Config) ->
   Qry = "string(current-date())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_seq2:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-string-5'(_Config) ->
   Qry = "string(xs:time(\"24:00:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"00:00:00\"
      ",
 Tst = xqerl:run("\"00:00:00\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-string-6'(_Config) ->
   Qry = "string(dateTime(xs:date(\"2011-06-29\"), xs:time(\"24:00:00\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"2011-06-29T00:00:00\"
      ",
 Tst = xqerl:run("\"2011-06-29T00:00:00\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-string-7'(_Config) ->
   Qry = "string(xs:duration(\"P24M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"P2Y\"
      ",
 Tst = xqerl:run("\"P2Y\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-string-8'(_Config) ->
   Qry = "string(QName(\"http://www.w3.org/\", \"test:example\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"test:example\"
      ",
 Tst = xqerl:run("\"test:example\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-string-9'(_Config) ->
   Qry = "xs:double('-INF')[string() = '-INF']",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_seq2:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-string-22'(_Config) ->
   {skip,"Validation Environment"}.
'fn-string-23'(_Config) ->
   Qry = "string(string#1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOTY0014" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOTY0014'}) end.
'fn-string-24'(_Config) ->
   Qry = "string((//*:Open)[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2000-03-21:07:41:34-05:00
      ",
   case xqerl_types:string_value(Res) of
             "2000-03-21:07:41:34-05:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-string-25'(_Config) ->
   Qry = "string((//*:Start)[1]/@*)",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         USD
      ",
   case xqerl_types:string_value(Res) of
             "USD" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-string-26'(_Config) ->
   Qry = "string((//@xml:*)[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         en
      ",
   case xqerl_types:string_value(Res) of
             "en" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-string-27'(_Config) ->
   {skip,"XP20+"}.
'fn-string-28'(_Config) ->
   Qry = "string((//processing-instruction())[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         href=\"none\"
      ",
   case xqerl_types:string_value(Res) of
             "href=\"none\"" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-string-29'(_Config) ->
   Qry = "normalize-space(string((//*:Price)[1]))",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"3.00 10.00 5\"
      ",
 Tst = xqerl:run("\"3.00 10.00 5\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-string-30'(_Config) ->
   Qry = "string((//comment())[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         contains($result, \"______________________________________________________\")
      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""contains($result, \"______________________________________________________\")",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'fn-string-31'(_Config) ->
   Qry = "string((//text())[normalize-space(.)][1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"2000-03-21:07:41:34-05:00\"
      ",
 Tst = xqerl:run("\"2000-03-21:07:41:34-05:00\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-StringFunc-1'(_Config) ->
   Qry = "string(1, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-StringFunc-2'(_Config) ->
   Qry = "if(true()) then true() else string()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-StringFunc-3'(_Config) ->
   Qry = "string(1) eq \"1\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-StringFunc-4'(_Config) ->
   Qry = "string(()) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-StringFunc-5'(_Config) ->
   Qry = "string-length(string(xs:string(current-time()))) gt 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-StringFunc-6'(_Config) ->
   Qry = "string( (1, 2) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
