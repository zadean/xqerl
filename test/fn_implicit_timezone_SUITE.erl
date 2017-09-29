-module('fn_implicit_timezone_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-implicit-timezone-1'/1]).
-export(['fn-implicit-timezone-2'/1]).
-export(['fn-implicit-timezone-3'/1]).
-export(['fn-implicit-timezone-4'/1]).
-export(['fn-implicit-timezone-5'/1]).
-export(['fn-implicit-timezone-6'/1]).
-export(['fn-implicit-timezone-7'/1]).
-export(['fn-implicit-timezone-8'/1]).
-export(['fn-implicit-timezone-9'/1]).
-export(['fn-implicit-timezone-10'/1]).
-export(['fn-implicit-timezone-11'/1]).
-export(['fn-implicit-timezone-12'/1]).
-export(['fn-implicit-timezone-13'/1]).
-export(['fn-implicit-timezone-14'/1]).
-export(['fn-implicit-timezone-15'/1]).
-export(['fn-implicit-timezone-16'/1]).
-export(['fn-implicit-timezone-17'/1]).
-export(['fn-implicit-timezone-18'/1]).
-export(['fn-implicit-timezone-19'/1]).
-export(['fn-implicit-timezone-20'/1]).
-export(['fn-implicit-timezone-21'/1]).
-export(['fn-implicit-timezone-22'/1]).
-export(['fn-implicit-timezone-23'/1]).
-export(['fn-implicit-timezone-24'/1]).
-export(['K-ContextImplicitTimezoneFunc-1'/1]).
-export(['K-ContextImplicitTimezoneFunc-2'/1]).
-export(['K-ContextImplicitTimezoneFunc-3'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-implicit-timezone-1',
   'fn-implicit-timezone-2',
   'fn-implicit-timezone-3',
   'fn-implicit-timezone-4',
   'fn-implicit-timezone-5',
   'fn-implicit-timezone-6',
   'fn-implicit-timezone-7',
   'fn-implicit-timezone-8',
   'fn-implicit-timezone-9',
   'fn-implicit-timezone-10',
   'fn-implicit-timezone-11',
   'fn-implicit-timezone-12',
   'fn-implicit-timezone-13',
   'fn-implicit-timezone-14',
   'fn-implicit-timezone-15',
   'fn-implicit-timezone-16',
   'fn-implicit-timezone-17',
   'fn-implicit-timezone-18',
   'fn-implicit-timezone-19',
   'fn-implicit-timezone-20',
   'fn-implicit-timezone-21',
   'fn-implicit-timezone-22',
   'fn-implicit-timezone-23',
   'fn-implicit-timezone-24',
   'K-ContextImplicitTimezoneFunc-1',
   'K-ContextImplicitTimezoneFunc-2',
   'K-ContextImplicitTimezoneFunc-3'].
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
'fn-implicit-timezone-1'(_Config) ->
   Qry = "fn:implicit-timezone(\"Argument 1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-implicit-timezone-2'(_Config) ->
   Qry = "fn:implicit-timezone()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:dayTimeDuration
      ",
   case xqerl_types:type(Res) of
           'xs:dayTimeDuration' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-3'(_Config) ->
   Qry = "fn:string(fn:implicit-timezone() + fn:implicit-timezone())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:string
      ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-4'(_Config) ->
   Qry = "fn:string(fn:implicit-timezone() - fn:implicit-timezone())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         PT0S
      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-implicit-timezone-5'(_Config) ->
   Qry = "fn:implicit-timezone() * xs:double(2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:dayTimeDuration
      ",
   case xqerl_types:type(Res) of
           'xs:dayTimeDuration' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-6'(_Config) ->
   Qry = "fn:string(fn:implicit-timezone() * (0 div 0E0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0005'}) end.
'fn-implicit-timezone-7'(_Config) ->
   Qry = "fn:string(fn:implicit-timezone() * 0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         PT0S
      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-implicit-timezone-8'(_Config) ->
   Qry = "fn:string(fn:implicit-timezone() * -0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         PT0S
      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-implicit-timezone-9'(_Config) ->
   Qry = "fn:string(fn:implicit-timezone() div xs:double(2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:string
      ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-10'(_Config) ->
   Qry = "fn:string(fn:implicit-timezone() div ( 0 div 0E0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0005'}) end.
'fn-implicit-timezone-11'(_Config) ->
   Qry = "fn:string(fn:implicit-timezone() div 0 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'fn-implicit-timezone-12'(_Config) ->
   Qry = "fn:string(fn:implicit-timezone() div -0 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'fn-implicit-timezone-13'(_Config) ->
   Qry = "(implicit-timezone() + xs:dayTimeDuration('PT1S')) div (implicit-timezone() + xs:dayTimeDuration('PT1S'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-14'(_Config) ->
   Qry = "fn:string(fn:implicit-timezone() div xs:dayTimeDuration(\"P0DT60M00S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:string
      ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-15'(_Config) ->
   Qry = "xs:time(\"05:00:00\") + fn:implicit-timezone()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:time
      ",
   case xqerl_types:type(Res) of
           'xs:time' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-16'(_Config) ->
   Qry = "xs:time(\"05:00:00\") - fn:implicit-timezone()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:time
      ",
   case xqerl_types:type(Res) of
           'xs:time' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-17'(_Config) ->
   Qry = "(xs:date(\"2000-10-30\") - fn:implicit-timezone())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:date
      ",
   case xqerl_types:type(Res) of
           'xs:date' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-18'(_Config) ->
   Qry = "(xs:date(\"2000-10-30\") + fn:implicit-timezone())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:date
      ",
   case xqerl_types:type(Res) of
           'xs:date' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-19'(_Config) ->
   Qry = "(xs:dateTime(\"2000-10-30T11:12:00\") - fn:implicit-timezone())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:dateTime
      ",
   case xqerl_types:type(Res) of
           'xs:dateTime' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-20'(_Config) ->
   Qry = "(xs:dateTime(\"2000-10-30T11:12:00\") + fn:implicit-timezone())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:dateTime
      ",
   case xqerl_types:type(Res) of
           'xs:dateTime' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-21'(_Config) ->
   Qry = "(fn:adjust-date-to-timezone(xs:date(\"2000-10-30\"),fn:implicit-timezone()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:date
      ",
   case xqerl_types:type(Res) of
           'xs:date' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-22'(_Config) ->
   Qry = "(fn:adjust-time-to-timezone(xs:time(\"10:00:00\"),fn:implicit-timezone()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:time
      ",
   case xqerl_types:type(Res) of
           'xs:time' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-23'(_Config) ->
   Qry = "(fn:adjust-dateTime-to-timezone(xs:dateTime(\"2002-03-07T10:00:00\"),fn:implicit-timezone()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:dateTime
      ",
   case xqerl_types:type(Res) of
           'xs:dateTime' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-implicit-timezone-24'(_Config) ->
   Qry = "implicit-timezone() ge xs:dayTimeDuration('-PT14H') and implicit-timezone() le xs:dayTimeDuration('PT14H')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextImplicitTimezoneFunc-1'(_Config) ->
   Qry = "implicit-timezone(\"WRONG PARAM\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ContextImplicitTimezoneFunc-2'(_Config) ->
   Qry = "seconds-from-duration(implicit-timezone()) le 0 or seconds-from-duration(implicit-timezone()) gt 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextImplicitTimezoneFunc-3'(_Config) ->
   Qry = "exists(seconds-from-duration(implicit-timezone()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
