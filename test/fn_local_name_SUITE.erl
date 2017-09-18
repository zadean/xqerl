-module('fn_local_name_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-local-name-1'/1]).
-export(['fn-local-name-1a'/1]).
-export(['fn-local-name-2'/1]).
-export(['fn-local-name-3'/1]).
-export(['fn-local-name-4'/1]).
-export(['fn-local-name-5'/1]).
-export(['fn-local-name-6'/1]).
-export(['fn-local-name-7'/1]).
-export(['fn-local-name-8'/1]).
-export(['fn-local-name-8a'/1]).
-export(['fn-local-name-9'/1]).
-export(['fn-local-name-10'/1]).
-export(['fn-local-name-11'/1]).
-export(['fn-local-name-11a'/1]).
-export(['fn-local-name-12'/1]).
-export(['fn-local-name-13'/1]).
-export(['fn-local-name-13a'/1]).
-export(['fn-local-name-14'/1]).
-export(['fn-local-name-15'/1]).
-export(['fn-local-name-16'/1]).
-export(['fn-local-name-17'/1]).
-export(['fn-local-name-18'/1]).
-export(['fn-local-name-19'/1]).
-export(['fn-local-name-20'/1]).
-export(['fn-local-name-21'/1]).
-export(['fn-local-name-22'/1]).
-export(['fn-local-name-23'/1]).
-export(['fn-local-name-51'/1]).
-export(['fn-local-name-52'/1]).
-export(['fn-local-name-53'/1]).
-export(['fn-local-name-54'/1]).
-export(['fn-local-name-55'/1]).
-export(['fn-local-name-56'/1]).
-export(['fn-local-name-57'/1]).
-export(['fn-local-name-58'/1]).
-export(['fn-local-name-59'/1]).
-export(['fn-local-name-60'/1]).
-export(['fn-local-name-61'/1]).
-export(['fn-local-name-62'/1]).
-export(['fn-local-name-63'/1]).
-export(['fn-local-name-64'/1]).
-export(['fn-local-name-65'/1]).
-export(['fn-local-name-66'/1]).
-export(['fn-local-name-67'/1]).
-export(['fn-local-name-68'/1]).
-export(['fn-local-name-71'/1]).
-export(['fn-local-name-72'/1]).
-export(['fn-local-name-73'/1]).
-export(['fn-local-name-74'/1]).
-export(['fn-local-name-75'/1]).
-export(['fn-local-name-76'/1]).
-export(['fn-local-name-77'/1]).
-export(['fn-local-name-78'/1]).
-export(['fn-local-name-79'/1]).
-export(['fn-local-name-80'/1]).
-export(['fn-local-name-81'/1]).
-export(['K-NodeLocalNameFunc-1'/1]).
-export(['K-NodeLocalNameFunc-2'/1]).
-export(['K-NodeLocalNameFunc-3'/1]).
-export(['K2-NodeLocalNameFunc-1'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-local-name-1',
   'fn-local-name-1a',
   'fn-local-name-2',
   'fn-local-name-3',
   'fn-local-name-4',
   'fn-local-name-5',
   'fn-local-name-6',
   'fn-local-name-7',
   'fn-local-name-8',
   'fn-local-name-8a',
   'fn-local-name-9',
   'fn-local-name-10',
   'fn-local-name-11',
   'fn-local-name-11a',
   'fn-local-name-12',
   'fn-local-name-13',
   'fn-local-name-13a',
   'fn-local-name-14',
   'fn-local-name-15',
   'fn-local-name-16',
   'fn-local-name-17',
   'fn-local-name-18',
   'fn-local-name-19',
   'fn-local-name-20',
   'fn-local-name-21',
   'fn-local-name-22',
   'fn-local-name-23',
   'fn-local-name-51',
   'fn-local-name-52',
   'fn-local-name-53',
   'fn-local-name-54',
   'fn-local-name-55',
   'fn-local-name-56',
   'fn-local-name-57',
   'fn-local-name-58',
   'fn-local-name-59',
   'fn-local-name-60',
   'fn-local-name-61',
   'fn-local-name-62',
   'fn-local-name-63',
   'fn-local-name-64',
   'fn-local-name-65',
   'fn-local-name-66',
   'fn-local-name-67',
   'fn-local-name-68',
   'fn-local-name-71',
   'fn-local-name-72',
   'fn-local-name-73',
   'fn-local-name-74',
   'fn-local-name-75',
   'fn-local-name-76',
   'fn-local-name-77',
   'fn-local-name-78',
   'fn-local-name-79',
   'fn-local-name-80',
   'fn-local-name-81',
   'K-NodeLocalNameFunc-1',
   'K-NodeLocalNameFunc-2',
   'K-NodeLocalNameFunc-3',
   'K2-NodeLocalNameFunc-1'].
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
'fn-local-name-1'(_Config) ->
   Qry = "\n        declare namespace eg = \"http://example.org\"; \n        declare function eg:noContextFunction() { fn:local-name() }; \n        eg:noContextFunction()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-local-name-1a'(_Config) ->
   Qry = "fn:local-name()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-local-name-2'(_Config) ->
   Qry = "(1 to 100)[fn:local-name()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-local-name-3'(_Config) ->
   {skip,"Validation Environment"}.
'fn-local-name-4'(_Config) ->
   {skip,"Validation Environment"}.
'fn-local-name-5'(_Config) ->
   {skip,"Validation Environment"}.
'fn-local-name-6'(_Config) ->
   Qry = "fn:count(fn:local-name((comment {\"A Comment Node\"})))",
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
'fn-local-name-7'(_Config) ->
   Qry = "fn:count(fn:local-name(<!-- A Comment Node -->))",
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
'fn-local-name-8'(_Config) ->
   Qry = "fn:count(fn:local-name(document {<aDocument>some content</aDocument>}))",
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
'fn-local-name-8a'(_Config) ->
   {skip,"Validation Environment"}.
'fn-local-name-9'(_Config) ->
   Qry = "fn:string(fn:local-name(element anElement {\"Some content\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         anElement\n      ",
   case xqerl_test:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-10'(_Config) ->
   Qry = "fn:string(fn:local-name(<anElement>Some content</anElement>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         anElement\n      ",
   case xqerl_test:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-11'(_Config) ->
   Qry = "fn:string(fn:local-name(<p1:anElement xmlns:p1=\"http://example.com\">Some content</p1:anElement>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         anElement\n      ",
   case xqerl_test:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-11a'(_Config) ->
   {skip,"Validation Environment"}.
'fn-local-name-12'(_Config) ->
   Qry = "fn:string(fn:local-name(attribute anAttribute {\"Attribute Value\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         anAttribute\n      ",
   case xqerl_test:string_value(Res) of
             "anAttribute" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-13'(_Config) ->
   Qry = "declare namespace p1 = \"http://example.org\"; \n        fn:string(fn:local-name(attribute p1:anAttribute {\"Attribute Value\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         anAttribute\n      ",
   case xqerl_test:string_value(Res) of
             "anAttribute" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-13a'(_Config) ->
   {skip,"Validation Environment"}.
'fn-local-name-14'(_Config) ->
   Qry = "fn:string(fn:local-name(processing-instruction PITarget {\"PIcontent\"}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PITarget\n      ",
   case xqerl_test:string_value(Res) of
             "PITarget" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-15'(_Config) ->
   Qry = "fn:string(fn:local-name(<?format role=\"output\" ?>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         format\n      ",
   case xqerl_test:string_value(Res) of
             "format" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-16'(_Config) ->
   Qry = "declare namespace p1 = \"http://example.org\"; fn:string(fn:local-name(<p1:anElement>Some content</p1:anElement>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         anElement\n      ",
   case xqerl_test:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-17'(_Config) ->
   Qry = "fn:string-length(fn:string(fn:local-name(<anElement>Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         9\n      ",
 Tst = xqerl:run("9"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-local-name-18'(_Config) ->
   Qry = "\n        declare namespace p1 = \"http://example.org\"; \n        fn:string(fn:local-name(element p1:anElement{\"Some content\"}))\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         anElement\n      ",
   case xqerl_test:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-19'(_Config) ->
   Qry = "fn:upper-case(fn:string(fn:local-name(<anElement>Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         ANELEMENT\n      ",
   case xqerl_test:string_value(Res) of
             "ANELEMENT" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-20'(_Config) ->
   Qry = "fn:lower-case(fn:string(fn:local-name(<anElement>Some content</anElement>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         anelement\n      ",
   case xqerl_test:string_value(Res) of
             "anelement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-21'(_Config) ->
   Qry = "fn:upper-case(fn:string(fn:local-name(attribute anAttribute {\"Some content\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         ANATTRIBUTE\n      ",
   case xqerl_test:string_value(Res) of
             "ANATTRIBUTE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-22'(_Config) ->
   Qry = "fn:lower-case(fn:string(fn:local-name(attribute anAttribute {\"Some content\"})))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         anattribute\n      ",
   case xqerl_test:string_value(Res) of
             "anattribute" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-23'(_Config) ->
   Qry = "\n        declare namespace eg = \"http://example.org\"; \n        declare function eg:noContextFunction() { fn:local-name(.) }; \n        eg:noContextFunction()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-local-name-51'(_Config) ->
   Qry = "fn:string-length(fn:local-name(()))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-local-name-52'(_Config) ->
   Qry = "(fn:local-name(./works[1]/employee[1]))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         employee\n      ",
   case xqerl_test:string_value(Res) of
             "employee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-53'(_Config) ->
   Qry = "(fn:local-name(./works[1]/employee[1]/@name))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         name\n      ",
   case xqerl_test:string_value(Res) of
             "name" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-54'(_Config) ->
   Qry = "fn:string-length(fn:local-name(.))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-local-name-55'(_Config) ->
   Qry = "fn:string-length(fn:local-name(./works[1]/nonexistent[1]))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-local-name-56'(_Config) ->
   Qry = "for $h in ./works[1]/employee[2] return\n         fn:string-length(fn:local-name($h/child::text()[last()]))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-local-name-57'(_Config) ->
   Qry = "fn:local-name()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-local-name-58'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:upper-case(fn:local-name($h))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         EMPLOYEE\n      ",
   case xqerl_test:string_value(Res) of
             "EMPLOYEE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-59'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:lower-case(fn:local-name($h))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         employee\n      ",
   case xqerl_test:string_value(Res) of
             "employee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-60'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:local-name($h/parent::node())",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         works\n      ",
   case xqerl_test:string_value(Res) of
             "works" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-61'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:local-name($h/descendant::empnum[position() =\n         1])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         empnum\n      ",
   case xqerl_test:string_value(Res) of
             "empnum" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-62'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return\n         fn:local-name($h/descendant-or-self::empnum[position() = 1])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         empnum\n      ",
   case xqerl_test:string_value(Res) of
             "empnum" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-63'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:substring(fn:local-name($h),2)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         mployee\n      ",
   case xqerl_test:string_value(Res) of
             "mployee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-64'(_Config) ->
   Qry = "for $h in (/works/employee[2]) return fn:concat(fn:local-name($h),\"A String\")",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         employeeA String\n      ",
   case xqerl_test:string_value(Res) of
             "employeeA String" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-65'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:local-name($h/self::employee)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         employee\n      ",
   case xqerl_test:string_value(Res) of
             "employee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-66'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:count(fn:local-name($h/self::div))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            1\n            \n         \n      ",
 case (xqerl_test:string_value(Res) == "1") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-local-name-67'(_Config) ->
   Qry = " for $h in (/works/employee[2]/@name) return fn:local-name($h/parent::node())",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         employee\n      ",
   case xqerl_test:string_value(Res) of
             "employee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-68'(_Config) ->
   Qry = "fn:string-length(fn:local-name(./works[1]/employee[2]/@name))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         4\n      ",
   case xqerl_test:string_value(Res) of
             "4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-71'(_Config) ->
   Qry = "string-join((fn:local-name(./works[1]/employee[1]),fn:local-name(./works[1]/employee[2])),\n         ' ')",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         employee employee\n      ",
   case xqerl_test:string_value(Res) of
             "employee employee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-72'(_Config) ->
   Qry = "fn:count(((fn:local-name(/works[1]/employee[1]),fn:local-name(/works[1]/employee[2]))))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2\n      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-73'(_Config) ->
   Qry = "fn:local-name(.)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-local-name-74'(_Config) ->
   Qry = "name(/*)",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         ma:AuctionWatchList\n      ",
   case xqerl_test:string_value(Res) of
             "ma:AuctionWatchList" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-75'(_Config) ->
   Qry = "name((//*:Start)[1]/@*)",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         ma:currency\n      ",
   case xqerl_test:string_value(Res) of
             "ma:currency" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-76'(_Config) ->
   Qry = "name((//@xml:*)[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xml:lang\n      ",
   case xqerl_test:string_value(Res) of
             "xml:lang" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-77'(_Config) ->
   {skip,"XP20+"}.
'fn-local-name-78'(_Config) ->
   Qry = "name((//processing-instruction())[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xml-stylesheet\n      ",
   case xqerl_test:string_value(Res) of
             "xml-stylesheet" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-79'(_Config) ->
   Qry = "name((//*[.='1983'])[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         recorded\n      ",
   case xqerl_test:string_value(Res) of
             "recorded" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-local-name-80'(_Config) ->
   Qry = "name((//comment())[1]) = ''",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-local-name-81'(_Config) ->
   Qry = "name((//text())[1]) = ''",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeLocalNameFunc-1'(_Config) ->
   Qry = "local-name((), \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-NodeLocalNameFunc-2'(_Config) ->
   Qry = "if(false()) then local-name() else true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NodeLocalNameFunc-3'(_Config) ->
   Qry = "local-name(()) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NodeLocalNameFunc-1'(_Config) ->
   Qry = "local-name(/works/employee[1]/@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         name\n      ",
   case xqerl_test:string_value(Res) of
             "name" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
