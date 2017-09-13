-module('prod_AxisStep_abbr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['abbreviatedSyntax-1'/1]).
-export(['abbreviatedSyntax-2'/1]).
-export(['abbreviatedSyntax-3'/1]).
-export(['abbreviatedSyntax-5'/1]).
-export(['abbreviatedSyntax-6'/1]).
-export(['abbreviatedSyntax-7'/1]).
-export(['abbreviatedSyntax-8'/1]).
-export(['abbreviatedSyntax-9'/1]).
-export(['abbreviatedSyntax-10'/1]).
-export(['abbreviatedSyntax-12'/1]).
-export(['abbreviatedSyntax-13'/1]).
-export(['abbreviatedSyntax-14'/1]).
-export(['abbreviatedSyntax-16'/1]).
-export(['abbreviatedSyntax-17'/1]).
-export(['abbreviatedSyntax-18'/1]).
-export(['abbreviatedSyntax-19'/1]).
-export(['abbreviatedSyntax-20'/1]).
-export(['abbreviatedSyntax-21'/1]).
-export(['abbreviatedSyntax-22'/1]).
-export(['abbreviatedSyntax-24'/1]).
-export(['abbreviatedSyntax-25'/1]).
-export(['abbreviatedSyntax-26'/1]).
-export(['K2-AbbrAxes-1'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'abbreviatedSyntax-1',
   'abbreviatedSyntax-2',
   'abbreviatedSyntax-3',
   'abbreviatedSyntax-5',
   'abbreviatedSyntax-6',
   'abbreviatedSyntax-7',
   'abbreviatedSyntax-8',
   'abbreviatedSyntax-9',
   'abbreviatedSyntax-10',
   'abbreviatedSyntax-12',
   'abbreviatedSyntax-13',
   'abbreviatedSyntax-14',
   'abbreviatedSyntax-16',
   'abbreviatedSyntax-17',
   'abbreviatedSyntax-18',
   'abbreviatedSyntax-19',
   'abbreviatedSyntax-20',
   'abbreviatedSyntax-21',
   'abbreviatedSyntax-22',
   'abbreviatedSyntax-24',
   'abbreviatedSyntax-25',
   'abbreviatedSyntax-26',
   'K2-AbbrAxes-1'].
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
'abbreviatedSyntax-1'(_Config) ->
   Qry = "for $h in (/works/employee[4]) return $h/hours/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         20 40
      ",
   case xqerl_types:string_value(Res) of
             "20 40" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-2'(_Config) ->
   Qry = "for $h in (/works/employee[2]) return $h/text()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Text data from Employee[2]
      ",
   case xqerl_types:string_value(Res) of
             "Text data from Employee[2]" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'abbreviatedSyntax-3'(_Config) ->
   Qry = "for $h in (/works/employee[10]) return $h/@name",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         John Doe 10
      ",
   case xqerl_types:string_value(Res) of
             "John Doe 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-5'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[1]/@name",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 1
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-6'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[fn:last()]/@name",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 13
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 13" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-7'(_Config) ->
   Qry = "for $h in (/works) return $h/*/hours/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         40 70 20 80 20 40 20 30 12 40 80 20 20 20 40 80
      ",
   case xqerl_types:string_value(Res) of
             "40 70 20 80 20 40 20 30 12 40 80 20 20 20 40 80" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-8'(_Config) ->
   Qry = "/works/employee[5]/hours[2]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         30
      ",
   case xqerl_types:string_value(Res) of
             "30" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-9'(_Config) ->
   Qry = "for $h in (/works) return $h/employee//hours/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         40 70 20 80 20 40 20 30 12 40 80 20 20 20 40 80
      ",
   case xqerl_types:string_value(Res) of
             "40 70 20 80 20 40 20 30 12 40 80 20 20 20 40 80" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-10'(_Config) ->
   Qry = "for $h in (/works) return $h//hours/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         40 70 20 80 20 40 20 30 12 40 80 20 20 20 40 80
      ",
   case xqerl_types:string_value(Res) of
             "40 70 20 80 20 40 20 30 12 40 80 20 20 20 40 80" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-12'(_Config) ->
   Qry = "for $h in (/works) return $h//overtime/day/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Monday Tuesday
      ",
   case xqerl_types:string_value(Res) of
             "Monday Tuesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-13'(_Config) ->
   Qry = "for $h in (/works) return $h/.//day/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Monday Tuesday
      ",
   case xqerl_types:string_value(Res) of
             "Monday Tuesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-14'(_Config) ->
   Qry = "for $h in (/works/employee[12]/overtime) return $h/../@name",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         John Doe 12
      ",
   case xqerl_types:string_value(Res) of
             "John Doe 12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-16'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[@name=\"Jane Doe 11\"]/@name",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 11
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-17'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[@gender=\"female\"][5]/@name",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 9
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 9" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-18'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[5][@gender=\"female\"]/@name",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 5
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-19'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[status=\"active\"]/@name",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 13
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 13" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-20'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[overtime]/@name",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         John Doe 12
      ",
   case xqerl_types:string_value(Res) of
             "John Doe 12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-21'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[@name and @type]/@name",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 13
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 13" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-22'(_Config) ->
   Qry = "for $h in (/works) return $h/employee/(status|overtime)/day/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Monday Tuesday
      ",
   case xqerl_types:string_value(Res) of
             "Monday Tuesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-24'(_Config) ->
   Qry = "for $h in (/works) return $h/employee/(status union overtime)/day/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Monday Tuesday
      ",
   case xqerl_types:string_value(Res) of
             "Monday Tuesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-25'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[@name = \"Jane Doe 13\" or @type=\"FT\"]/@name",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 13
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 13" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'abbreviatedSyntax-26'(_Config) ->
   Qry = "let $in := <a><b>ABC</b><b>XYZ</b></a> return $in//string-to-codepoints(.)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         65 66 67 88 89 90 65 66 67 65 66 67 88 89 90 88 89 90
      ",
   case xqerl_types:string_value(Res) of
             "65 66 67 88 89 90 65 66 67 65 66 67 88 89 90 88 89 90" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-AbbrAxes-1'(_Config) ->
   Qry = "declare function local:myFunc() { .. }; local:myFunc()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
