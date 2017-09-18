-module('fn_year_from_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-year-from-date1args-1'/1]).
-export(['fn-year-from-date1args-2'/1]).
-export(['fn-year-from-date1args-3'/1]).
-export(['fn-year-from-date-1'/1]).
-export(['fn-year-from-date-2'/1]).
-export(['fn-year-from-date-3'/1]).
-export(['fn-year-from-date-4'/1]).
-export(['fn-year-from-date-5'/1]).
-export(['fn-year-from-date-6'/1]).
-export(['fn-year-from-date-7'/1]).
-export(['fn-year-from-date-8'/1]).
-export(['fn-year-from-date-9'/1]).
-export(['fn-year-from-date-10'/1]).
-export(['fn-year-from-date-11'/1]).
-export(['fn-year-from-date-12'/1]).
-export(['fn-year-from-date-13'/1]).
-export(['fn-year-from-date-14'/1]).
-export(['fn-year-from-date-15'/1]).
-export(['fn-year-from-date-16'/1]).
-export(['fn-year-from-date-17'/1]).
-export(['fn-year-from-date-18'/1]).
-export(['fn-year-from-date-19'/1]).
-export(['K-YearFromDateFunc-1'/1]).
-export(['K-YearFromDateFunc-2'/1]).
-export(['K-YearFromDateFunc-3'/1]).
-export(['K-YearFromDateFunc-4'/1]).
-export(['K-YearFromDateFunc-5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-year-from-date1args-1',
   'fn-year-from-date1args-2',
   'fn-year-from-date1args-3',
   'fn-year-from-date-1',
   'fn-year-from-date-2',
   'fn-year-from-date-3',
   'fn-year-from-date-4',
   'fn-year-from-date-5',
   'fn-year-from-date-6',
   'fn-year-from-date-7',
   'fn-year-from-date-8',
   'fn-year-from-date-9',
   'fn-year-from-date-10',
   'fn-year-from-date-11',
   'fn-year-from-date-12',
   'fn-year-from-date-13',
   'fn-year-from-date-14',
   'fn-year-from-date-15',
   'fn-year-from-date-16',
   'fn-year-from-date-17',
   'fn-year-from-date-18',
   'fn-year-from-date-19',
   'K-YearFromDateFunc-1',
   'K-YearFromDateFunc-2',
   'K-YearFromDateFunc-3',
   'K-YearFromDateFunc-4',
   'K-YearFromDateFunc-5'].
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
'fn-year-from-date1args-1'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1970\n      ",
   case xqerl_test:string_value(Res) of
             "1970" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date1args-2'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1983-11-17Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1983\n      ",
   case xqerl_test:string_value(Res) of
             "1983" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date1args-3'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"2030-12-31Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2030\n      ",
   case xqerl_test:string_value(Res) of
             "2030" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-1'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1999-05-31Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1999\n      ",
   case xqerl_test:string_value(Res) of
             "1999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-2'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"2000-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2000\n      ",
   case xqerl_test:string_value(Res) of
             "2000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-3'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1999-12-31Z\")) lt fn:year-from-date(xs:date(\"1999-12-31Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-year-from-date-4'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1999-12-31Z\")) le fn:year-from-date(xs:date(\"1999-12-31Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-year-from-date-5'(_Config) ->
   Qry = "fn:count(fn:year-from-date(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-6'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"0001-05-31Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-7'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"-1999-05-31Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1999\n      ",
   case xqerl_test:string_value(Res) of
             "-1999" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-8'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1970-01-01Z\")) + fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         3940\n      ",
   case xqerl_test:string_value(Res) of
             "3940" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-9'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1970-01-01Z\")) - fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-10'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1970-01-01Z\")) * fn:year-from-date(xs:date(\"0002-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         3940\n      ",
   case xqerl_test:string_value(Res) of
             "3940" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-11'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1970-01-01Z\")) div fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-12'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1970-01-01Z\")) idiv fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-13'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1970-01-01Z\")) mod fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-14'(_Config) ->
   Qry = "+fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1970\n      ",
   case xqerl_test:string_value(Res) of
             "1970" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-15'(_Config) ->
   Qry = "-fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1970\n      ",
   case xqerl_test:string_value(Res) of
             "-1970" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-year-from-date-16'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1970-01-01Z\")) eq fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-year-from-date-17'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1970-01-01Z\")) ne fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-year-from-date-18'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1970-01-01Z\")) le fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-year-from-date-19'(_Config) ->
   Qry = "fn:year-from-date(xs:date(\"1970-01-01Z\")) ge fn:year-from-date(xs:date(\"1970-01-01Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearFromDateFunc-1'(_Config) ->
   Qry = "year-from-date()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-YearFromDateFunc-2'(_Config) ->
   Qry = "year-from-date((), \"Wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-YearFromDateFunc-3'(_Config) ->
   Qry = "empty(year-from-date(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearFromDateFunc-4'(_Config) ->
   Qry = "year-from-date(()) instance of xs:integer?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearFromDateFunc-5'(_Config) ->
   Qry = "year-from-date(xs:date(\"2000-02-03\")) eq 2000",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
