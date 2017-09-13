-module('fn_name_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-name-1'/1]).
-export(['fn-name-2'/1]).
-export(['fn-name-3'/1]).
-export(['fn-name-4'/1]).
-export(['fn-name-5'/1]).
-export(['fn-name-6'/1]).
-export(['fn-name-7'/1]).
-export(['fn-name-8'/1]).
-export(['fn-name-9'/1]).
-export(['fn-name-10'/1]).
-export(['fn-name-11'/1]).
-export(['fn-name-12'/1]).
-export(['fn-name-13'/1]).
-export(['fn-name-14'/1]).
-export(['fn-name-15'/1]).
-export(['fn-name-16'/1]).
-export(['fn-name-17'/1]).
-export(['fn-name-18'/1]).
-export(['fn-name-19'/1]).
-export(['fn-name-20'/1]).
-export(['fn-name-21'/1]).
-export(['fn-name-22'/1]).
-export(['fn-name-23'/1]).
-export(['fn-name-24'/1]).
-export(['fn-name-25'/1]).
-export(['fn-name-26'/1]).
-export(['fn-name-27'/1]).
-export(['fn-name-28'/1]).
-export(['fn-name-29'/1]).
-export(['fn-name-30'/1]).
-export(['fn-name-31'/1]).
-export(['K-NameFunc-1'/1]).
-export(['K-NameFunc-2'/1]).
-export(['K-NameFunc-3'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-name-1',
   'fn-name-2',
   'fn-name-3',
   'fn-name-4',
   'fn-name-5',
   'fn-name-6',
   'fn-name-7',
   'fn-name-8',
   'fn-name-9',
   'fn-name-10',
   'fn-name-11',
   'fn-name-12',
   'fn-name-13',
   'fn-name-14',
   'fn-name-15',
   'fn-name-16',
   'fn-name-17',
   'fn-name-18',
   'fn-name-19',
   'fn-name-20',
   'fn-name-21',
   'fn-name-22',
   'fn-name-23',
   'fn-name-24',
   'fn-name-25',
   'fn-name-26',
   'fn-name-27',
   'fn-name-28',
   'fn-name-29',
   'fn-name-30',
   'fn-name-31',
   'K-NameFunc-1',
   'K-NameFunc-2',
   'K-NameFunc-3'].
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
'fn-name-1'(_Config) ->
   Qry = "fn:string-length(fn:name(()))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-name-2'(_Config) ->
   Qry = "(fn:name(./works[1]/employee[1]))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         employee
      ",
   case xqerl_types:string_value(Res) of
             "employee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-3'(_Config) ->
   Qry = "(fn:name(./works[1]/employee[1]/@name))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         name
      ",
   case xqerl_types:string_value(Res) of
             "name" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-4'(_Config) ->
   Qry = "fn:string-length(fn:name(.))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-name-5'(_Config) ->
   Qry = "fn:string-length(fn:name(./works[1]/nonexistent[1]))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-name-6'(_Config) ->
   Qry = "for $h in ./works[1]/employee[2] return
         fn:string-length(fn:name($h/child::text()[last()]))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-name-7'(_Config) ->
   Qry = "fn:name()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-name-8'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:upper-case(fn:name($h))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         EMPLOYEE
      ",
   case xqerl_types:string_value(Res) of
             "EMPLOYEE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-9'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:lower-case(fn:name($h))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         employee
      ",
   case xqerl_types:string_value(Res) of
             "employee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-10'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:name($h/parent::node())",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         works
      ",
   case xqerl_types:string_value(Res) of
             "works" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-11'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:name($h/descendant::empnum[position() =
         1])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         empnum
      ",
   case xqerl_types:string_value(Res) of
             "empnum" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-12'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:name($h/descendant-or-self::empnum[position()
         = 1])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         empnum
      ",
   case xqerl_types:string_value(Res) of
             "empnum" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-13'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:substring(fn:name($h),2)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         mployee
      ",
   case xqerl_types:string_value(Res) of
             "mployee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-14'(_Config) ->
   Qry = "for $h in (/works/employee[2]) return fn:concat(fn:name($h),\"A String\")",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         employeeA String
      ",
   case xqerl_types:string_value(Res) of
             "employeeA String" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-15'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:name($h/self::employee)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         employee
      ",
   case xqerl_types:string_value(Res) of
             "employee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-16'(_Config) ->
   Qry = "for $h in (./works/employee[2]) return fn:count(fn:name($h/self::div))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            
         
      ",
 case (xqerl_types:string_value(Res) == "1") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-name-17'(_Config) ->
   Qry = " for $h in (/works/employee[2]/@name) return fn:name($h/parent::node())",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         employee
      ",
   case xqerl_types:string_value(Res) of
             "employee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-18'(_Config) ->
   Qry = "fn:string-length(fn:name(./works[1]/employee[2]/@name))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4
      ",
   case xqerl_types:string_value(Res) of
             "4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-19'(_Config) ->
   Qry = "fn:name(<anElement>Content</anElement>)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         anElement
      ",
   case xqerl_types:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-20'(_Config) ->
   Qry = "fn:name(<anElement name=\"attribute1\">Content</anElement>)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         anElement
      ",
   case xqerl_types:string_value(Res) of
             "anElement" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-21'(_Config) ->
   Qry = "(fn:name(./works[1]/employee[1]),fn:name(./works[1]/employee[2]))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         employee employee
      ",
   case xqerl_types:string_value(Res) of
             "employee employee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-22'(_Config) ->
   Qry = "fn:count(((fn:name(/works[1]/employee[1]),fn:name(/works[1]/employee[2]))))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-name-23'(_Config) ->
   Qry = "fn:name(.)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-name-24'(_Config) ->
   Qry = "name(/*)",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ma:AuctionWatchList
      ",
   case xqerl_types:string_value(Res) of
             "ma:AuctionWatchList" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-25'(_Config) ->
   Qry = "name((//*:Start)[1]/@*)",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ma:currency
      ",
   case xqerl_types:string_value(Res) of
             "ma:currency" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-26'(_Config) ->
   Qry = "name((//@xml:*)[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xml:lang
      ",
   case xqerl_types:string_value(Res) of
             "xml:lang" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-27'(_Config) ->
   {skip,"XP20+"}.
'fn-name-28'(_Config) ->
   Qry = "name((//processing-instruction())[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xml-stylesheet
      ",
   case xqerl_types:string_value(Res) of
             "xml-stylesheet" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-29'(_Config) ->
   Qry = "name((//*[.='1983'])[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         recorded
      ",
   case xqerl_types:string_value(Res) of
             "recorded" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-name-30'(_Config) ->
   Qry = "name((//comment())[1]) = ''",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-name-31'(_Config) ->
   Qry = "name((//text())[1]) = ''",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NameFunc-1'(_Config) ->
   Qry = "name((), \"wrong param\")",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-NameFunc-2'(_Config) ->
   Qry = "if(false()) then name() else true()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NameFunc-3'(_Config) ->
   Qry = "name(()) eq \"\"",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
