-module('op_concat_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-concatint2args-1'/1]).
-export(['op-concatint2args-2'/1]).
-export(['op-concatint2args-3'/1]).
-export(['op-concatint2args-4'/1]).
-export(['op-concatint2args-5'/1]).
-export(['op-concatintg2args-1'/1]).
-export(['op-concatintg2args-2'/1]).
-export(['op-concatintg2args-3'/1]).
-export(['op-concatintg2args-4'/1]).
-export(['op-concatintg2args-5'/1]).
-export(['op-concatdec2args-1'/1]).
-export(['op-concatdec2args-2'/1]).
-export(['op-concatdec2args-3'/1]).
-export(['op-concatdec2args-4'/1]).
-export(['op-concatdec2args-5'/1]).
-export(['op-concatdbl2args-1'/1]).
-export(['op-concatdbl2args-2'/1]).
-export(['op-concatdbl2args-3'/1]).
-export(['op-concatdbl2args-4'/1]).
-export(['op-concatdbl2args-5'/1]).
-export(['op-concatflt2args-1'/1]).
-export(['op-concatflt2args-2'/1]).
-export(['op-concatflt2args-3'/1]).
-export(['op-concatflt2args-4'/1]).
-export(['op-concatflt2args-5'/1]).
-export(['op-concatlng2args-1'/1]).
-export(['op-concatlng2args-2'/1]).
-export(['op-concatlng2args-3'/1]).
-export(['op-concatlng2args-4'/1]).
-export(['op-concatlng2args-5'/1]).
-export(['op-concatusht2args-1'/1]).
-export(['op-concatusht2args-2'/1]).
-export(['op-concatusht2args-3'/1]).
-export(['op-concatusht2args-4'/1]).
-export(['op-concatusht2args-5'/1]).
-export(['op-concatnint2args-1'/1]).
-export(['op-concatnint2args-2'/1]).
-export(['op-concatnint2args-3'/1]).
-export(['op-concatnint2args-4'/1]).
-export(['op-concatnint2args-5'/1]).
-export(['op-concatpint2args-1'/1]).
-export(['op-concatpint2args-2'/1]).
-export(['op-concatpint2args-3'/1]).
-export(['op-concatpint2args-4'/1]).
-export(['op-concatpint2args-5'/1]).
-export(['op-concatulng2args-1'/1]).
-export(['op-concatulng2args-2'/1]).
-export(['op-concatulng2args-3'/1]).
-export(['op-concatulng2args-4'/1]).
-export(['op-concatulng2args-5'/1]).
-export(['op-concatnpi2args-1'/1]).
-export(['op-concatnpi2args-2'/1]).
-export(['op-concatnpi2args-3'/1]).
-export(['op-concatnpi2args-4'/1]).
-export(['op-concatnpi2args-5'/1]).
-export(['op-concatnni2args-1'/1]).
-export(['op-concatnni2args-2'/1]).
-export(['op-concatnni2args-3'/1]).
-export(['op-concatnni2args-4'/1]).
-export(['op-concatnni2args-5'/1]).
-export(['op-concatsht2args-1'/1]).
-export(['op-concatsht2args-2'/1]).
-export(['op-concatsht2args-3'/1]).
-export(['op-concatsht2args-4'/1]).
-export(['op-concatsht2args-5'/1]).
-export(['op-concat-1'/1]).
-export(['op-concat-2'/1]).
-export(['op-concat-3'/1]).
-export(['op-concat-4'/1]).
-export(['op-concat-5'/1]).
-export(['op-concat-6'/1]).
-export(['op-concat-7'/1]).
-export(['op-concat-8'/1]).
-export(['op-concat-9'/1]).
-export(['op-concat-10'/1]).
-export(['op-concat-11'/1]).
-export(['op-concat-12'/1]).
-export(['op-concat-13'/1]).
-export(['op-concat-14'/1]).
-export(['op-concat-15'/1]).
-export(['op-concat-16'/1]).
-export(['op-concat-17'/1]).
-export(['op-concat-18'/1]).
-export(['op-concat-19'/1]).
-export(['op-concat-20'/1]).
-export(['K-ConcatOp-3'/1]).
-export(['K-ConcatOp-4'/1]).
-export(['K-ConcatOp-5'/1]).
-export(['K-ConcatOp-6'/1]).
-export(['K-ConcatOp-7'/1]).
-export(['K-ConcatOp-8'/1]).
-export(['K-ConcatOp-9'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-concatint2args-1',
   'op-concatint2args-2',
   'op-concatint2args-3',
   'op-concatint2args-4',
   'op-concatint2args-5',
   'op-concatintg2args-1',
   'op-concatintg2args-2',
   'op-concatintg2args-3',
   'op-concatintg2args-4',
   'op-concatintg2args-5',
   'op-concatdec2args-1',
   'op-concatdec2args-2',
   'op-concatdec2args-3',
   'op-concatdec2args-4',
   'op-concatdec2args-5',
   'op-concatdbl2args-1',
   'op-concatdbl2args-2',
   'op-concatdbl2args-3',
   'op-concatdbl2args-4',
   'op-concatdbl2args-5',
   'op-concatflt2args-1',
   'op-concatflt2args-2',
   'op-concatflt2args-3',
   'op-concatflt2args-4',
   'op-concatflt2args-5',
   'op-concatlng2args-1',
   'op-concatlng2args-2',
   'op-concatlng2args-3',
   'op-concatlng2args-4',
   'op-concatlng2args-5',
   'op-concatusht2args-1',
   'op-concatusht2args-2',
   'op-concatusht2args-3',
   'op-concatusht2args-4',
   'op-concatusht2args-5',
   'op-concatnint2args-1',
   'op-concatnint2args-2',
   'op-concatnint2args-3',
   'op-concatnint2args-4',
   'op-concatnint2args-5',
   'op-concatpint2args-1',
   'op-concatpint2args-2',
   'op-concatpint2args-3',
   'op-concatpint2args-4',
   'op-concatpint2args-5',
   'op-concatulng2args-1',
   'op-concatulng2args-2',
   'op-concatulng2args-3',
   'op-concatulng2args-4',
   'op-concatulng2args-5',
   'op-concatnpi2args-1',
   'op-concatnpi2args-2',
   'op-concatnpi2args-3',
   'op-concatnpi2args-4',
   'op-concatnpi2args-5',
   'op-concatnni2args-1',
   'op-concatnni2args-2',
   'op-concatnni2args-3',
   'op-concatnni2args-4',
   'op-concatnni2args-5',
   'op-concatsht2args-1',
   'op-concatsht2args-2',
   'op-concatsht2args-3',
   'op-concatsht2args-4',
   'op-concatsht2args-5',
   'op-concat-1',
   'op-concat-2',
   'op-concat-3',
   'op-concat-4',
   'op-concat-5',
   'op-concat-6',
   'op-concat-7',
   'op-concat-8',
   'op-concat-9',
   'op-concat-10',
   'op-concat-11',
   'op-concat-12',
   'op-concat-13',
   'op-concat-14',
   'op-concat-15',
   'op-concat-16',
   'op-concat-17',
   'op-concat-18',
   'op-concat-19',
   'op-concat-20',
   'K-ConcatOp-3',
   'K-ConcatOp-4',
   'K-ConcatOp-5',
   'K-ConcatOp-6',
   'K-ConcatOp-7',
   'K-ConcatOp-8',
   'K-ConcatOp-9'].
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
'op-concatint2args-1'(_Config) ->
   Qry = "xs:int(\"-2147483648\")||xs:int(\"-2147483648\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -2147483648-2147483648
      ",
   case xqerl_types:string_value(Res) of
             "-2147483648-2147483648" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatint2args-2'(_Config) ->
   Qry = "xs:int(\"-1873914410\")||xs:int(\"-2147483648\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1873914410-2147483648
      ",
   case xqerl_types:string_value(Res) of
             "-1873914410-2147483648" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatint2args-3'(_Config) ->
   Qry = "xs:int(\"2147483647\")||xs:int(\"-2147483648\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2147483647-2147483648
      ",
   case xqerl_types:string_value(Res) of
             "2147483647-2147483648" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatint2args-4'(_Config) ->
   Qry = "(xs:int(\"-2147483648\")||xs:int(\"-1873914410\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -2147483648-1873914410
      ",
   case xqerl_types:string_value(Res) of
             "-2147483648-1873914410" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatint2args-5'(_Config) ->
   Qry = "(xs:int(\"-2147483648\")||xs:int(\"2147483647\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -21474836482147483647
      ",
   case xqerl_types:string_value(Res) of
             "-21474836482147483647" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatintg2args-1'(_Config) ->
   Qry = "(xs:integer(\"-999999999999999999\")||xs:integer(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatintg2args-2'(_Config) ->
   Qry = "(xs:integer(\"830993497117024304\")||xs:integer(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         830993497117024304-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "830993497117024304-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatintg2args-3'(_Config) ->
   Qry = "(xs:integer(\"999999999999999999\")||xs:integer(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "999999999999999999-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatintg2args-4'(_Config) ->
   Qry = "(xs:integer(\"-999999999999999999\")||xs:integer(\"830993497117024304\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999830993497117024304
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999830993497117024304" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatintg2args-5'(_Config) ->
   Qry = "(xs:integer(\"-999999999999999999\")||xs:integer(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatdec2args-1'(_Config) ->
   Qry = "(xs:decimal(\"-999999999999999999\")||xs:decimal(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatdec2args-2'(_Config) ->
   Qry = "(xs:decimal(\"617375191608514839\")||xs:decimal(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         617375191608514839-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "617375191608514839-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatdec2args-3'(_Config) ->
   Qry = "(xs:decimal(\"999999999999999999\")||xs:decimal(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "999999999999999999-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatdec2args-4'(_Config) ->
   Qry = "(xs:decimal(\"-999999999999999999\")||xs:decimal(\"617375191608514839\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999617375191608514839
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999617375191608514839" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatdec2args-5'(_Config) ->
   Qry = "(xs:decimal(\"-999999999999999999\")||xs:decimal(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatdbl2args-1'(_Config) ->
   Qry = "(xs:double(\"-1.7976931348623157E308\")||xs:double(\"-1.7976931348623157E308\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.7976931348623157E308-1.7976931348623157E308
      ",
   case xqerl_types:string_value(Res) of
             "-1.7976931348623157E308-1.7976931348623157E308" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatdbl2args-2'(_Config) ->
   Qry = "(xs:double(\"0\")||xs:double(\"-1.7976931348623157E308\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0-1.7976931348623157E308
      ",
   case xqerl_types:string_value(Res) of
             "0-1.7976931348623157E308" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatdbl2args-3'(_Config) ->
   Qry = "(xs:double(\"1.7976931348623157E308\")||xs:double(\"-1.7976931348623157E308\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.7976931348623157E308-1.7976931348623157E308
      ",
   case xqerl_types:string_value(Res) of
             "1.7976931348623157E308-1.7976931348623157E308" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatdbl2args-4'(_Config) ->
   Qry = "(xs:double(\"-1.7976931348623157E308\") || xs:double(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.7976931348623157E3080
      ",
   case xqerl_types:string_value(Res) of
             "-1.7976931348623157E3080" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatdbl2args-5'(_Config) ->
   Qry = "(xs:double(\"-1.7976931348623157E308\") || xs:double(\"1.7976931348623157E308\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.7976931348623157E3081.7976931348623157E308
      ",
   case xqerl_types:string_value(Res) of
             "-1.7976931348623157E3081.7976931348623157E308" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatflt2args-1'(_Config) ->
   Qry = "(xs:float(\"-3.4028235E38\") || xs:float(\"-3.4028235E38\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -3.4028235E38-3.4028235E38
      ",
   case xqerl_types:string_value(Res) of
             "-3.4028235E38-3.4028235E38" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatflt2args-2'(_Config) ->
   Qry = "(xs:float(\"0\") || xs:float(\"-3.4028235E38\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0-3.4028235E38
      ",
   case xqerl_types:string_value(Res) of
             "0-3.4028235E38" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatflt2args-3'(_Config) ->
   Qry = "(xs:float(\"3.4028235E38\") || xs:float(\"-3.4028235E38\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3.4028235E38-3.4028235E38
      ",
   case xqerl_types:string_value(Res) of
             "3.4028235E38-3.4028235E38" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatflt2args-4'(_Config) ->
   Qry = "(xs:float(\"-3.4028235E38\") || xs:float(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -3.4028235E380
      ",
   case xqerl_types:string_value(Res) of
             "-3.4028235E380" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatflt2args-5'(_Config) ->
   Qry = "(xs:float(\"-3.4028235E38\") || xs:float(\"3.4028235E38\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -3.4028235E383.4028235E38
      ",
   case xqerl_types:string_value(Res) of
             "-3.4028235E383.4028235E38" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatlng2args-1'(_Config) ->
   Qry = "(xs:long(\"-92233720368547758\") || xs:long(\"-92233720368547758\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -92233720368547758-92233720368547758
      ",
   case xqerl_types:string_value(Res) of
             "-92233720368547758-92233720368547758" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatlng2args-2'(_Config) ->
   Qry = "(xs:long(\"-47175562203048468\") || xs:long(\"-92233720368547758\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -47175562203048468-92233720368547758
      ",
   case xqerl_types:string_value(Res) of
             "-47175562203048468-92233720368547758" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatlng2args-3'(_Config) ->
   Qry = "(xs:long(\"92233720368547758\") || xs:long(\"-92233720368547758\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         92233720368547758-92233720368547758
      ",
   case xqerl_types:string_value(Res) of
             "92233720368547758-92233720368547758" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatlng2args-4'(_Config) ->
   Qry = "(xs:long(\"-92233720368547758\") || xs:long(\"-47175562203048468\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -92233720368547758-47175562203048468
      ",
   case xqerl_types:string_value(Res) of
             "-92233720368547758-47175562203048468" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatlng2args-5'(_Config) ->
   Qry = "(xs:long(\"-92233720368547758\") || xs:long(\"92233720368547758\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -9223372036854775892233720368547758
      ",
   case xqerl_types:string_value(Res) of
             "-9223372036854775892233720368547758" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatusht2args-1'(_Config) ->
   Qry = "(xs:unsignedShort(\"0\") || xs:unsignedShort(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         00
      ",
   case xqerl_types:string_value(Res) of
             "00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatusht2args-2'(_Config) ->
   Qry = "(xs:unsignedShort(\"44633\") || xs:unsignedShort(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         446330
      ",
   case xqerl_types:string_value(Res) of
             "446330" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatusht2args-3'(_Config) ->
   Qry = "(xs:unsignedShort(\"65535\") || xs:unsignedShort(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         655350
      ",
   case xqerl_types:string_value(Res) of
             "655350" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatusht2args-4'(_Config) ->
   Qry = "(xs:unsignedShort(\"0\") || xs:unsignedShort(\"44633\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         044633
      ",
   case xqerl_types:string_value(Res) of
             "044633" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatusht2args-5'(_Config) ->
   Qry = "(xs:unsignedShort(\"0\") || xs:unsignedShort(\"65535\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         065535
      ",
   case xqerl_types:string_value(Res) of
             "065535" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnint2args-1'(_Config) ->
   Qry = "(xs:negativeInteger(\"-999999999999999999\") || xs:negativeInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnint2args-2'(_Config) ->
   Qry = "(xs:negativeInteger(\"-297014075999096793\") || xs:negativeInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -297014075999096793-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-297014075999096793-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnint2args-3'(_Config) ->
   Qry = "(xs:negativeInteger(\"-1\") || xs:negativeInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-1-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnint2args-4'(_Config) ->
   Qry = "(xs:negativeInteger(\"-999999999999999999\") || xs:negativeInteger(\"-297014075999096793\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999-297014075999096793
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999-297014075999096793" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnint2args-5'(_Config) ->
   Qry = "(xs:negativeInteger(\"-999999999999999999\") || xs:negativeInteger(\"-1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999-1
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatpint2args-1'(_Config) ->
   Qry = "(xs:positiveInteger(\"1\") || xs:positiveInteger(\"1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         11
      ",
   case xqerl_types:string_value(Res) of
             "11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatpint2args-2'(_Config) ->
   Qry = "(xs:positiveInteger(\"52704602390610033\") || xs:positiveInteger(\"1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         527046023906100331
      ",
   case xqerl_types:string_value(Res) of
             "527046023906100331" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatpint2args-3'(_Config) ->
   Qry = "(xs:positiveInteger(\"999999999999999999\") || xs:positiveInteger(\"1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9999999999999999991
      ",
   case xqerl_types:string_value(Res) of
             "9999999999999999991" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatpint2args-4'(_Config) ->
   Qry = "(xs:positiveInteger(\"1\") || xs:positiveInteger(\"52704602390610033\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         152704602390610033
      ",
   case xqerl_types:string_value(Res) of
             "152704602390610033" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatpint2args-5'(_Config) ->
   Qry = "(xs:positiveInteger(\"1\") || xs:positiveInteger(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "1999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatulng2args-1'(_Config) ->
   Qry = "(xs:unsignedLong(\"0\") || xs:unsignedLong(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         00
      ",
   case xqerl_types:string_value(Res) of
             "00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatulng2args-2'(_Config) ->
   Qry = "(xs:unsignedLong(\"130747108607674654\") || xs:unsignedLong(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1307471086076746540
      ",
   case xqerl_types:string_value(Res) of
             "1307471086076746540" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatulng2args-3'(_Config) ->
   Qry = "(xs:unsignedLong(\"184467440737095516\") || xs:unsignedLong(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1844674407370955160
      ",
   case xqerl_types:string_value(Res) of
             "1844674407370955160" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatulng2args-4'(_Config) ->
   Qry = "(xs:unsignedLong(\"0\") || xs:unsignedLong(\"130747108607674654\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0130747108607674654
      ",
   case xqerl_types:string_value(Res) of
             "0130747108607674654" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatulng2args-5'(_Config) ->
   Qry = "(xs:unsignedLong(\"0\") || xs:unsignedLong(\"184467440737095516\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0184467440737095516
      ",
   case xqerl_types:string_value(Res) of
             "0184467440737095516" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnpi2args-1'(_Config) ->
   Qry = "(xs:nonPositiveInteger(\"-999999999999999999\") || xs:nonPositiveInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnpi2args-2'(_Config) ->
   Qry = "(xs:nonPositiveInteger(\"-475688437271870490\") || xs:nonPositiveInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -475688437271870490-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "-475688437271870490-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnpi2args-3'(_Config) ->
   Qry = "(xs:nonPositiveInteger(\"0\") || xs:nonPositiveInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0-999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "0-999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnpi2args-4'(_Config) ->
   Qry = "(xs:nonPositiveInteger(\"-999999999999999999\") || xs:nonPositiveInteger(\"-475688437271870490\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999-475688437271870490
      ",
   case xqerl_types:string_value(Res) of
             "-999999999999999999-475688437271870490" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnpi2args-5'(_Config) ->
   Qry = "(xs:nonPositiveInteger(\"-999999999999999999\") || xs:nonPositiveInteger(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -9999999999999999990
      ",
   case xqerl_types:string_value(Res) of
             "-9999999999999999990" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnni2args-1'(_Config) ->
   Qry = "(xs:nonNegativeInteger(\"0\") || xs:nonNegativeInteger(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         00
      ",
   case xqerl_types:string_value(Res) of
             "00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnni2args-2'(_Config) ->
   Qry = "(xs:nonNegativeInteger(\"303884545991464527\") || xs:nonNegativeInteger(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3038845459914645270
      ",
   case xqerl_types:string_value(Res) of
             "3038845459914645270" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnni2args-3'(_Config) ->
   Qry = "(xs:nonNegativeInteger(\"999999999999999999\") || xs:nonNegativeInteger(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9999999999999999990
      ",
   case xqerl_types:string_value(Res) of
             "9999999999999999990" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnni2args-4'(_Config) ->
   Qry = "(xs:nonNegativeInteger(\"0\") || xs:nonNegativeInteger(\"303884545991464527\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0303884545991464527
      ",
   case xqerl_types:string_value(Res) of
             "0303884545991464527" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatnni2args-5'(_Config) ->
   Qry = "(xs:nonNegativeInteger(\"0\") || xs:nonNegativeInteger(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0999999999999999999
      ",
   case xqerl_types:string_value(Res) of
             "0999999999999999999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatsht2args-1'(_Config) ->
   Qry = "(xs:short(\"-32768\") || xs:short(\"-32768\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -32768-32768
      ",
   case xqerl_types:string_value(Res) of
             "-32768-32768" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatsht2args-2'(_Config) ->
   Qry = "(xs:short(\"-5324\") || xs:short(\"-32768\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -5324-32768
      ",
   case xqerl_types:string_value(Res) of
             "-5324-32768" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatsht2args-3'(_Config) ->
   Qry = "(xs:short(\"32767\") || xs:short(\"-32768\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         32767-32768
      ",
   case xqerl_types:string_value(Res) of
             "32767-32768" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatsht2args-4'(_Config) ->
   Qry = "(xs:short(\"-32768\") || xs:short(\"-5324\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -32768-5324
      ",
   case xqerl_types:string_value(Res) of
             "-32768-5324" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concatsht2args-5'(_Config) ->
   Qry = "(xs:short(\"-32768\") || xs:short(\"32767\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -3276832767
      ",
   case xqerl_types:string_value(Res) of
             "-3276832767" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-1'(_Config) ->
   Qry = "('un' ||  'grateful')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ungrateful
      ",
   case xqerl_types:string_value(Res) of
             "ungrateful" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-2'(_Config) ->
   Qry = "('Thy ' ||  () ||  'old ' ||  \"groans\" ||  \"\" ||  ' ring' ||  ' yet' ||  ' in' ||  ' my' ||  ' ancient' || ' ears.')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Thy old groans ring yet in my ancient ears.
      ",
   case xqerl_types:string_value(Res) of
             "Thy old groans ring yet in my ancient ears." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-3'(_Config) ->
   Qry = "('Ciao!' || ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Ciao!
      ",
   case xqerl_types:string_value(Res) of
             "Ciao!" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-4'(_Config) ->
   Qry = "('Ingratitude, ' ||  'thou ' ||  'marble-hearted' ||  ' fiend!')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Ingratitude, thou marble-hearted fiend!
      ",
   case xqerl_types:string_value(Res) of
             "Ingratitude, thou marble-hearted fiend!" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-5'(_Config) ->
   Qry = "(\"AB\" || \"CD\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABCD
      ",
   case xqerl_types:string_value(Res) of
             "ABCD" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-6'(_Config) ->
   Qry = "(\"abc\" || \"de\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abcde
      ",
   case xqerl_types:string_value(Res) of
             "abcde" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-7'(_Config) ->
   Qry = "(\"ABCDE\" || \"abcde\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABCDEabcde
      ",
   case xqerl_types:string_value(Res) of
             "ABCDEabcde" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-8'(_Config) ->
   Qry = "fn:count((\"\" || \"\"))",
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
'op-concat-9'(_Config) ->
   Qry = "(fn:upper-case(\"Abc\") || fn:upper-case(\"DH\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABCDH
      ",
   case xqerl_types:string_value(Res) of
             "ABCDH" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-10'(_Config) ->
   Qry = "(\"**\" || \"***\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         *****
      ",
   case xqerl_types:string_value(Res) of
             "*****" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-11'(_Config) ->
   Qry = "((\"zzz\" || \"zz\") || \"123\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         zzzzz123
      ",
   case xqerl_types:string_value(Res) of
             "zzzzz123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-12'(_Config) ->
   Qry = "fn:boolean((\"ab\" || \"cde\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-concat-13'(_Config) ->
   Qry = "fn:string((\"abc\" || \"de\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abcde
      ",
   case xqerl_types:string_value(Res) of
             "abcde" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-14'(_Config) ->
   Qry = "fn:not((\"ab\" || \"cde\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-concat-15'(_Config) ->
   Qry = "(\"%$\" || \"#@!\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         %$#@!
      ",
   case xqerl_types:string_value(Res) of
             "%$#@!" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-16'(_Config) ->
   Qry = "(\"concat\" || \"concat\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         concatconcat
      ",
   case xqerl_types:string_value(Res) of
             "concatconcat" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-concat-17'(_Config) ->
   Qry = "(\"abc\" || \"abc\") and (\"abc\" || \"abc\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-concat-18'(_Config) ->
   Qry = "(\"abc\" || \"abc\" ||  fn:concat#3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOTY0013" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOTY0013'}) end.
'op-concat-19'(_Config) ->
   Qry = "12 || 34 - 50",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            \"12-16\"
            xs:string
         
      ",
 case  begin Tst1 = xqerl:run("\"12-16\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'op-concat-20'(_Config) ->
   Qry = "\"1234\" eq 12 || 34",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ConcatOp-3'(_Config) ->
   Qry = "(\"ab\" ||  \"c\") eq \"abc\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ConcatOp-4'(_Config) ->
   Qry = "(\"ab\" ||  \"c\") instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ConcatOp-5'(_Config) ->
   Qry = "(() ||  ()) instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ConcatOp-6'(_Config) ->
   Qry = "(() ||  ()) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ConcatOp-7'(_Config) ->
   Qry = "('a' ||  'b' ||  'c' ||  () ||  'd' ||  'e' ||  'f' ||  'g' ||  'h' ||  ' ' ||  'i' ||  'j' ||  'k l') eq \"abcdefgh ijk l\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ConcatOp-8'(_Config) ->
   Qry = "(1 ||  2 ||  3) eq \"123\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ConcatOp-9'(_Config) ->
   Qry = "(1 ||  \"2\" ||  3) eq \"123\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
