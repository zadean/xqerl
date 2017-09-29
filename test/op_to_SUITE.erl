-module('op_to_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['rangeExpr-1'/1]).
-export(['rangeExpr-2'/1]).
-export(['rangeExpr-3'/1]).
-export(['rangeExpr-4'/1]).
-export(['rangeExpr-5'/1]).
-export(['rangeExpr-6'/1]).
-export(['rangeExpr-7'/1]).
-export(['rangeExpr-8'/1]).
-export(['rangeExpr-9'/1]).
-export(['rangeExpr-10'/1]).
-export(['rangeExpr-11'/1]).
-export(['rangeExpr-12'/1]).
-export(['rangeExpr-13'/1]).
-export(['rangeExpr-14'/1]).
-export(['rangeExpr-15'/1]).
-export(['rangeExpr-16'/1]).
-export(['rangeExpr-17'/1]).
-export(['rangeExpr-18'/1]).
-export(['rangeExpr-19'/1]).
-export(['rangeExpr-20'/1]).
-export(['rangeExpr-21'/1]).
-export(['rangeExpr-22'/1]).
-export(['rangeExpr-23'/1]).
-export(['rangeExpr-24'/1]).
-export(['rangeExpr-25'/1]).
-export(['rangeExpr-26'/1]).
-export(['rangeExpr-27'/1]).
-export(['rangeExpr-28'/1]).
-export(['rangeExpr-29'/1]).
-export(['rangeExpr-30'/1]).
-export(['rangeExpr-31'/1]).
-export(['rangeExpr-32'/1]).
-export(['K-RangeExpr-1'/1]).
-export(['K-RangeExpr-2'/1]).
-export(['K-RangeExpr-3'/1]).
-export(['K-RangeExpr-4'/1]).
-export(['K-RangeExpr-5'/1]).
-export(['K-RangeExpr-6'/1]).
-export(['K-RangeExpr-7'/1]).
-export(['K-RangeExpr-8'/1]).
-export(['K-RangeExpr-9'/1]).
-export(['K-RangeExpr-10'/1]).
-export(['K-RangeExpr-11'/1]).
-export(['K-RangeExpr-12'/1]).
-export(['K-RangeExpr-13'/1]).
-export(['K-RangeExpr-14'/1]).
-export(['K-RangeExpr-15'/1]).
-export(['K-RangeExpr-16'/1]).
-export(['K-RangeExpr-17'/1]).
-export(['K-RangeExpr-18'/1]).
-export(['K-RangeExpr-19'/1]).
-export(['K-RangeExpr-20'/1]).
-export(['K-RangeExpr-21'/1]).
-export(['K-RangeExpr-22'/1]).
-export(['K-RangeExpr-23'/1]).
-export(['K-RangeExpr-24'/1]).
-export(['K-RangeExpr-25'/1]).
-export(['K-RangeExpr-26'/1]).
-export(['K-RangeExpr-27'/1]).
-export(['K-RangeExpr-28'/1]).
-export(['K-RangeExpr-29'/1]).
-export(['K-RangeExpr-30'/1]).
-export(['K-RangeExpr-31'/1]).
-export(['K-RangeExpr-32'/1]).
-export(['K-RangeExpr-33'/1]).
-export(['K-RangeExpr-34'/1]).
-export(['K-RangeExpr-35'/1]).
-export(['K-RangeExpr-36'/1]).
-export(['K2-RangeExpr-1'/1]).
-export(['K2-RangeExpr-2'/1]).
-export(['K2-RangeExpr-3'/1]).
-export(['K2-RangeExpr-4'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'rangeExpr-1',
   'rangeExpr-2',
   'rangeExpr-3',
   'rangeExpr-4',
   'rangeExpr-5',
   'rangeExpr-6',
   'rangeExpr-7',
   'rangeExpr-8',
   'rangeExpr-9',
   'rangeExpr-10',
   'rangeExpr-11',
   'rangeExpr-12',
   'rangeExpr-13',
   'rangeExpr-14',
   'rangeExpr-15',
   'rangeExpr-16',
   'rangeExpr-17',
   'rangeExpr-18',
   'rangeExpr-19',
   'rangeExpr-20',
   'rangeExpr-21',
   'rangeExpr-22',
   'rangeExpr-23',
   'rangeExpr-24',
   'rangeExpr-25',
   'rangeExpr-26',
   'rangeExpr-27',
   'rangeExpr-28',
   'rangeExpr-29',
   'rangeExpr-30',
   'rangeExpr-31',
   'rangeExpr-32',
   'K-RangeExpr-1',
   'K-RangeExpr-2',
   'K-RangeExpr-3',
   'K-RangeExpr-4',
   'K-RangeExpr-5',
   'K-RangeExpr-6',
   'K-RangeExpr-7',
   'K-RangeExpr-8',
   'K-RangeExpr-9',
   'K-RangeExpr-10',
   'K-RangeExpr-11',
   'K-RangeExpr-12',
   'K-RangeExpr-13',
   'K-RangeExpr-14',
   'K-RangeExpr-15',
   'K-RangeExpr-16',
   'K-RangeExpr-17',
   'K-RangeExpr-18',
   'K-RangeExpr-19',
   'K-RangeExpr-20',
   'K-RangeExpr-21',
   'K-RangeExpr-22',
   'K-RangeExpr-23',
   'K-RangeExpr-24',
   'K-RangeExpr-25',
   'K-RangeExpr-26',
   'K-RangeExpr-27',
   'K-RangeExpr-28',
   'K-RangeExpr-29',
   'K-RangeExpr-30',
   'K-RangeExpr-31',
   'K-RangeExpr-32',
   'K-RangeExpr-33',
   'K-RangeExpr-34',
   'K-RangeExpr-35',
   'K-RangeExpr-36',
   'K2-RangeExpr-1',
   'K2-RangeExpr-2',
   'K2-RangeExpr-3',
   'K2-RangeExpr-4'].
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
'rangeExpr-1'(_Config) ->
   Qry = "(10, 1 to 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10 1 2 3 4
      ",
   case xqerl_test:string_value(Res) of
             "10 1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-2'(_Config) ->
   Qry = "10 to 10",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         10
      ",
   case xqerl_test:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-3'(_Config) ->
   Qry = "fn:count(15 to 10)",
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
'rangeExpr-4'(_Config) ->
   Qry = "fn:reverse(10 to 15)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         15 14 13 12 11 10
      ",
   case xqerl_test:string_value(Res) of
             "15 14 13 12 11 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-5'(_Config) ->
   Qry = "fn:count((1, 2 to ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            1
            
         
      ",
 case (xqerl_test:string_value(Res) == "1") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'rangeExpr-6'(_Config) ->
   Qry = "((1+2) to (2+2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         3 4
      ",
   case xqerl_test:string_value(Res) of
             "3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-7'(_Config) ->
   Qry = "(-4,-3 to 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -4 -3 -2 -1 0 1 2
      ",
   case xqerl_test:string_value(Res) of
             "-4 -3 -2 -1 0 1 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-8'(_Config) ->
   Qry = "(-4, -3 to -1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -4 -3 -2 -1
      ",
   case xqerl_test:string_value(Res) of
             "-4 -3 -2 -1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-9'(_Config) ->
   Qry = "(xs:integer(1) to 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4 5
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-10'(_Config) ->
   Qry = "(1 to xs:integer(5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4 5
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-11'(_Config) ->
   Qry = "(xs:integer(1) to xs:integer(5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4 5
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-12'(_Config) ->
   Qry = "(fn:min((1,2)) to 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4 5
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-13'(_Config) ->
   Qry = "(fn:max((1,2)) to 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2 3 4 5
      ",
   case xqerl_test:string_value(Res) of
             "2 3 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-14'(_Config) ->
   Qry = "(fn:min((1,2)) to fn:max((6,7)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4 5 6 7
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5 6 7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-15'(_Config) ->
   Qry = "fn:min((1 to 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-16'(_Config) ->
   Qry = "fn:max((1 to 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         5
      ",
   case xqerl_test:string_value(Res) of
             "5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-17'(_Config) ->
   Qry = "fn:avg((1 to 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         3
      ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-18'(_Config) ->
   Qry = "fn:count((1 to 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         5
      ",
   case xqerl_test:string_value(Res) of
             "5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-19'(_Config) ->
   Qry = "((3*2) to 10)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         6 7 8 9 10
      ",
   case xqerl_test:string_value(Res) of
             "6 7 8 9 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-20'(_Config) ->
   Qry = "(1 to (3*2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4 5 6
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-21'(_Config) ->
   Qry = "((1*2) to (3*2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2 3 4 5 6
      ",
   case xqerl_test:string_value(Res) of
             "2 3 4 5 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-22'(_Config) ->
   Qry = "((3 - 2) to 10)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4 5 6 7 8 9 10
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5 6 7 8 9 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-23'(_Config) ->
   Qry = "(1 to (3 - 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-24'(_Config) ->
   Qry = "((2 - 1) to (7 - 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4 5 6
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-25'(_Config) ->
   Qry = "((6 idiv 2) to 10)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         3 4 5 6 7 8 9 10
      ",
   case xqerl_test:string_value(Res) of
             "3 4 5 6 7 8 9 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-26'(_Config) ->
   Qry = "(1 to (10 idiv 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4 5
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-27'(_Config) ->
   Qry = "((5 idiv 5) to (8 idiv 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'rangeExpr-28'(_Config) ->
   Qry = "18446744073709551616 to 18446744073709551620",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            18446744073709551616 18446744073709551617 18446744073709551618 18446744073709551619 18446744073709551620
            
         
      ",
 case (xqerl_test:string_value(Res) == "18446744073709551616 18446744073709551617 18446744073709551618 18446744073709551619 18446744073709551620") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'rangeExpr-29'(_Config) ->
   Qry = "count(18446744073709551616 to 18446744073709551620)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            5
            
                  
      ",
 case ( begin Tst1 = xqerl:run("5"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'rangeExpr-30'(_Config) ->
   Qry = "(28446744073709551616 to 28446744073709551620)!position()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            1 2 3 4 5
            
                 
      ",
 case (xqerl_test:string_value(Res) == "1 2 3 4 5") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'rangeExpr-31'(_Config) ->
   Qry = "((28446744073709551616 to 28446744073709551620)!last())[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            5
            
                 
      ",
 case ( begin Tst1 = xqerl:run("5"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'rangeExpr-32'(_Config) ->
   Qry = "reverse(28446744073709551616 to 28446744073709551620)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            28446744073709551620 28446744073709551619 28446744073709551618 28446744073709551617 28446744073709551616
            
         
      ",
 case (xqerl_test:string_value(Res) == "28446744073709551620 28446744073709551619 28446744073709551618 28446744073709551617 28446744073709551616") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-RangeExpr-1'(_Config) ->
   Qry = "1 to 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-RangeExpr-2'(_Config) ->
   Qry = "empty(30 to 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-3'(_Config) ->
   Qry = "empty(0 to -3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-4'(_Config) ->
   Qry = "empty(1 to ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-RangeExpr-5'(_Config) ->
   Qry = "empty(() to 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-RangeExpr-6'(_Config) ->
   Qry = "empty(-1 to -3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-7'(_Config) ->
   Qry = "count(1 to 4) eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-8'(_Config) ->
   Qry = "count(0 to 4) eq 5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-9'(_Config) ->
   Qry = "count(-5 to -0) eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-10'(_Config) ->
   Qry = "count((10, 1 to 4)) eq 5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-11'(_Config) ->
   Qry = "subsequence(-3 to -1, 1, 1) eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-12'(_Config) ->
   Qry = "subsequence(-3 to -1, 3, 1) eq -1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-13'(_Config) ->
   Qry = "empty(reverse(4 to 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-14'(_Config) ->
   Qry = "subsequence(reverse(1 to 3), 1, 1) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-15'(_Config) ->
   Qry = "subsequence(reverse(1 to 3), 3, 1) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-16'(_Config) ->
   Qry = "subsequence(reverse(1 to 4), 2, 1) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-17'(_Config) ->
   Qry = "subsequence(reverse(1 to 4), 3, 1) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-18'(_Config) ->
   Qry = "subsequence(reverse(-4 to -1), 2, 1) eq -2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-19'(_Config) ->
   Qry = "deep-equal((-1, -2, -3, -4), reverse(-4 to -1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-20'(_Config) ->
   Qry = "deep-equal((), reverse(0 to -5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-21'(_Config) ->
   Qry = "deep-equal((0, -1, -2, -3, -4, -5), reverse(-5 to 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-22'(_Config) ->
   Qry = "count(reverse(-5 to -2)) eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-23'(_Config) ->
   Qry = "count(reverse(-5 to -0)) eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-24'(_Config) ->
   Qry = "count(reverse(1 to 4)) eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-25'(_Config) ->
   Qry = "empty(1 to 0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-26'(_Config) ->
   Qry = "empty(0 to -5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-27'(_Config) ->
   Qry = "empty(-4 to -5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-28'(_Config) ->
   Qry = "empty(reverse(1 to 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-29'(_Config) ->
   Qry = "empty(reverse(0 to -5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-30'(_Config) ->
   Qry = "empty(reverse(-4 to -5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-RangeExpr-31'(_Config) ->
   Qry = "(remove((2.e0, 4), 1) treat as xs:integer to 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         4
      ",
   case xqerl_test:string_value(Res) of
             "4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-RangeExpr-32'(_Config) ->
   Qry = "(4 to remove((2e0, 4), 1) treat as xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         4
      ",
   case xqerl_test:string_value(Res) of
             "4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-RangeExpr-33'(_Config) ->
   Qry = "1.1 to 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-RangeExpr-34'(_Config) ->
   Qry = "3 to 1.1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-RangeExpr-35'(_Config) ->
   Qry = "1.1 to 3.3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-RangeExpr-36'(_Config) ->
   Qry = "1 + 1.1 to 5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-RangeExpr-1'(_Config) ->
   Qry = "1e3 to 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-RangeExpr-2'(_Config) ->
   Qry = "3 to 1e3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-RangeExpr-3'(_Config) ->
   Qry = "for $i in 1 to 3 return $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-RangeExpr-4'(_Config) ->
   Qry = "1 to <value>5</value>, 5 to <value>5</value>, <value>1</value> to 5, <value>1</value> to <value>5</value>, let $i := <e>5</e> return $i to $i, count(5 to 10), count(1000 to 2000), count(<e>5</e> to 10), count(3 to <e>10</e>), count(<e>3</e> to <e>10</e>), count(<e>5</e> to 10), count(3 to <e>10</e>), count(<e>3</e> to <e>10</e>), count(4294967295 to 4294967298)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4 5 5 1 2 3 4 5 1 2 3 4 5 5 6 1001 6 8 8 6 8 8 4
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5 5 1 2 3 4 5 1 2 3 4 5 5 6 1001 6 8 8 6 8 8 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
