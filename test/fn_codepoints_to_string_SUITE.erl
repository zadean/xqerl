-module('fn_codepoints_to_string_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-codepoints-to-string1args-1'/1]).
-export(['fn-codepoints-to-string1args-2'/1]).
-export(['fn-codepoints-to-string1args-3'/1]).
-export(['fn-codepoints-to-string1args-4'/1]).
-export(['fn-codepoints-to-string-1'/1]).
-export(['fn-codepoints-to-string-2'/1]).
-export(['fn-codepoints-to-string-3'/1]).
-export(['fn-codepoints-to-string-4'/1]).
-export(['fn-codepoints-to-string-5'/1]).
-export(['fn-codepoints-to-string-6'/1]).
-export(['fn-codepoints-to-string-7'/1]).
-export(['fn-codepoints-to-string-8'/1]).
-export(['fn-codepoints-to-string-9'/1]).
-export(['fn-codepoints-to-string-10'/1]).
-export(['fn-codepoints-to-string-11'/1]).
-export(['fn-codepoints-to-string-12'/1]).
-export(['fn-codepoints-to-string-13'/1]).
-export(['fn-codepoints-to-string-14'/1]).
-export(['fn-codepoints-to-string-15'/1]).
-export(['fn-codepoints-to-string-16'/1]).
-export(['K-CodepointToStringFunc-1'/1]).
-export(['K-CodepointToStringFunc-2'/1]).
-export(['K-CodepointToStringFunc-3'/1]).
-export(['K-CodepointToStringFunc-4'/1]).
-export(['K-CodepointToStringFunc-5'/1]).
-export(['K-CodepointToStringFunc-6'/1]).
-export(['K-CodepointToStringFunc-7'/1]).
-export(['K-CodepointToStringFunc-8'/1]).
-export(['K-CodepointToStringFunc-9'/1]).
-export(['K-CodepointToStringFunc-10'/1]).
-export(['K-CodepointToStringFunc-11'/1]).
-export(['K-CodepointToStringFunc-11b'/1]).
-export(['K-CodepointToStringFunc-12'/1]).
-export(['K-CodepointToStringFunc-12b'/1]).
-export(['K-CodepointToStringFunc-13'/1]).
-export(['K-CodepointToStringFunc-14'/1]).
-export(['K-CodepointToStringFunc-15'/1]).
-export(['K-CodepointToStringFunc-16'/1]).
-export(['K-CodepointToStringFunc-17'/1]).
-export(['K-CodepointToStringFunc-18'/1]).
-export(['K-CodepointToStringFunc-19'/1]).
-export(['K-CodepointToStringFunc-20'/1]).
-export(['K-CodepointToStringFunc-21'/1]).
-export(['K-CodepointToStringFunc-22'/1]).
-export(['K-CodepointToStringFunc-23'/1]).
-export(['K-CodepointToStringFunc-24'/1]).
-export(['K-CodepointToStringFunc-25'/1]).
-export(['K-CodepointToStringFunc-26'/1]).
-export(['K-CodepointToStringFunc-27'/1]).
-export(['K-CodepointToStringFunc-28'/1]).
-export(['K-CodepointToStringFunc-29'/1]).
-export(['cbcl-codepoints-to-string-001'/1]).
-export(['cbcl-codepoints-to-string-002'/1]).
-export(['cbcl-codepoints-to-string-003'/1]).
-export(['cbcl-codepoints-to-string-004'/1]).
-export(['cbcl-codepoints-to-string-005'/1]).
-export(['cbcl-codepoints-to-string-006'/1]).
-export(['cbcl-codepoints-to-string-007'/1]).
-export(['cbcl-codepoints-to-string-008'/1]).
-export(['cbcl-codepoints-to-string-009'/1]).
-export(['cbcl-codepoints-to-string-010'/1]).
-export(['cbcl-codepoints-to-string-011'/1]).
-export(['cbcl-codepoints-to-string-012'/1]).
-export(['cbcl-codepoints-to-string-013'/1]).
-export(['cbcl-codepoints-to-string-014'/1]).
-export(['cbcl-codepoints-to-string-015'/1]).
-export(['cbcl-codepoints-to-string-016'/1]).
-export(['cbcl-codepoints-to-string-017'/1]).
-export(['cbcl-codepoints-to-string-018'/1]).
-export(['cbcl-codepoints-to-string-019'/1]).
-export(['cbcl-codepoints-to-string-020'/1]).
-export(['cbcl-codepoints-to-string-021'/1]).
-export(['cbcl-codepoints-to-string-022'/1]).
-export(['cbcl-codepoints-to-string-023'/1]).
-export(['cbcl-codepoints-to-string-024'/1]).
-export(['cbcl-codepoints-to-string-025'/1]).
-export(['cbcl-codepoints-to-string-026'/1]).
-export(['cbcl-codepoints-to-string-027'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-codepoints-to-string1args-1',
   'fn-codepoints-to-string1args-2',
   'fn-codepoints-to-string1args-3',
   'fn-codepoints-to-string1args-4',
   'fn-codepoints-to-string-1',
   'fn-codepoints-to-string-2',
   'fn-codepoints-to-string-3',
   'fn-codepoints-to-string-4',
   'fn-codepoints-to-string-5',
   'fn-codepoints-to-string-6',
   'fn-codepoints-to-string-7',
   'fn-codepoints-to-string-8',
   'fn-codepoints-to-string-9',
   'fn-codepoints-to-string-10',
   'fn-codepoints-to-string-11',
   'fn-codepoints-to-string-12',
   'fn-codepoints-to-string-13',
   'fn-codepoints-to-string-14',
   'fn-codepoints-to-string-15',
   'fn-codepoints-to-string-16',
   'K-CodepointToStringFunc-1',
   'K-CodepointToStringFunc-2',
   'K-CodepointToStringFunc-3',
   'K-CodepointToStringFunc-4',
   'K-CodepointToStringFunc-5',
   'K-CodepointToStringFunc-6',
   'K-CodepointToStringFunc-7',
   'K-CodepointToStringFunc-8',
   'K-CodepointToStringFunc-9',
   'K-CodepointToStringFunc-10',
   'K-CodepointToStringFunc-11',
   'K-CodepointToStringFunc-11b',
   'K-CodepointToStringFunc-12',
   'K-CodepointToStringFunc-12b',
   'K-CodepointToStringFunc-13',
   'K-CodepointToStringFunc-14',
   'K-CodepointToStringFunc-15',
   'K-CodepointToStringFunc-16',
   'K-CodepointToStringFunc-17',
   'K-CodepointToStringFunc-18',
   'K-CodepointToStringFunc-19',
   'K-CodepointToStringFunc-20',
   'K-CodepointToStringFunc-21',
   'K-CodepointToStringFunc-22',
   'K-CodepointToStringFunc-23',
   'K-CodepointToStringFunc-24',
   'K-CodepointToStringFunc-25',
   'K-CodepointToStringFunc-26',
   'K-CodepointToStringFunc-27',
   'K-CodepointToStringFunc-28',
   'K-CodepointToStringFunc-29',
   'cbcl-codepoints-to-string-001',
   'cbcl-codepoints-to-string-002',
   'cbcl-codepoints-to-string-003',
   'cbcl-codepoints-to-string-004',
   'cbcl-codepoints-to-string-005',
   'cbcl-codepoints-to-string-006',
   'cbcl-codepoints-to-string-007',
   'cbcl-codepoints-to-string-008',
   'cbcl-codepoints-to-string-009',
   'cbcl-codepoints-to-string-010',
   'cbcl-codepoints-to-string-011',
   'cbcl-codepoints-to-string-012',
   'cbcl-codepoints-to-string-013',
   'cbcl-codepoints-to-string-014',
   'cbcl-codepoints-to-string-015',
   'cbcl-codepoints-to-string-016',
   'cbcl-codepoints-to-string-017',
   'cbcl-codepoints-to-string-018',
   'cbcl-codepoints-to-string-019',
   'cbcl-codepoints-to-string-020',
   'cbcl-codepoints-to-string-021',
   'cbcl-codepoints-to-string-022',
   'cbcl-codepoints-to-string-023',
   'cbcl-codepoints-to-string-024',
   'cbcl-codepoints-to-string-025',
   'cbcl-codepoints-to-string-026',
   'cbcl-codepoints-to-string-027'].
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
'fn-codepoints-to-string1args-1'(_Config) ->
   Qry = "codepoints-to-string((98,223,1682,12365,63744))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,98,223,1682,12365,63744,10,32,32,32,32,32,32],
   case xqerl_types:string_value(Res) of
             [98,223,1682,12365,63744] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string1args-2'(_Config) ->
   Qry = "codepoints-to-string(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string1args-3'(_Config) ->
   Qry = "codepoints-to-string('hello')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-codepoints-to-string1args-4'(_Config) ->
   Qry = "codepoints-to-string((),())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-codepoints-to-string-1'(_Config) ->
   Qry = "fn:codepoints-to-string(0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'fn-codepoints-to-string-2'(_Config) ->
   Qry = "fn:codepoints-to-string(10000000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'fn-codepoints-to-string-3'(_Config) ->
   Qry = "fn:codepoints-to-string(49)",
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
'fn-codepoints-to-string-4'(_Config) ->
   Qry = "fn:codepoints-to-string(97)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a
      ",
   case xqerl_types:string_value(Res) of
             "a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string-5'(_Config) ->
   Qry = "fn:codepoints-to-string((49,97))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1a
      ",
   case xqerl_types:string_value(Res) of
             "1a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string-6'(_Config) ->
   Qry = "fn:codepoints-to-string((35, 42, 94, 36))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         #*^$
      ",
   case xqerl_types:string_value(Res) of
             "#*^$" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string-7'(_Config) ->
   Qry = "fn:codepoints-to-string((99,111,100,101,112,111,105,110,116,115,45,116,111,45,115,116,114,105,110,103))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         codepoints-to-string
      ",
   case xqerl_types:string_value(Res) of
             "codepoints-to-string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string-8'(_Config) ->
   Qry = "xs:string(fn:codepoints-to-string((65,32,83,116,114,105,110,103)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         A String
      ",
   case xqerl_types:string_value(Res) of
             "A String" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string-9'(_Config) ->
   Qry = "fn:upper-case(fn:codepoints-to-string((65,32,83,84,82,73,78,71)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         A STRING
      ",
   case xqerl_types:string_value(Res) of
             "A STRING" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string-10'(_Config) ->
   Qry = "fn:lower-case(fn:codepoints-to-string((97,32,115,116,114,105,110,103)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a string
      ",
   case xqerl_types:string_value(Res) of
             "a string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string-11'(_Config) ->
   Qry = "fn:codepoints-to-string(xs:integer(97))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a
      ",
   case xqerl_types:string_value(Res) of
             "a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string-12'(_Config) ->
   Qry = "fn:codepoints-to-string(xs:integer(fn:avg((65,32,83,116,114,105,110,103))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         [
      ",
   case xqerl_types:string_value(Res) of
             "[" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string-13'(_Config) ->
   Qry = "fn:concat(fn:codepoints-to-string((49,97)),\"1a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1a1a
      ",
   case xqerl_types:string_value(Res) of
             "1a1a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-codepoints-to-string-14'(_Config) ->
   Qry = "fn:string-to-codepoints(fn:codepoints-to-string((49,97)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         49, 97
      ",
 Tst = xqerl:run("49, 97"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-codepoints-to-string-15'(_Config) ->
   Qry = "fn:string-length(fn:codepoints-to-string((49,97)))",
   Qry1 = Qry,
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
'fn-codepoints-to-string-16'(_Config) ->
   Qry = "fn:string-join((fn:codepoints-to-string((49,97)),'ab'),'')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1aab
      ",
   case xqerl_types:string_value(Res) of
             "1aab" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K-CodepointToStringFunc-1'(_Config) ->
   Qry = "codepoints-to-string()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-CodepointToStringFunc-2'(_Config) ->
   Qry = "codepoints-to-string((84, 104), \"INVALID\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-CodepointToStringFunc-3'(_Config) ->
   Qry = "codepoints-to-string(()) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-4'(_Config) ->
   Qry = "codepoints-to-string((87, 36, 56, 87, 102, 96)) eq \"W$8Wf`\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-5'(_Config) ->
   Qry = "codepoints-to-string(57343)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'K-CodepointToStringFunc-6'(_Config) ->
   Qry = "codepoints-to-string(-500)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'K-CodepointToStringFunc-7'(_Config) ->
   Qry = "codepoints-to-string(0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'K-CodepointToStringFunc-8'(_Config) ->
   Qry = "codepoints-to-string(8)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            &#x8;
            
         
      ",
 case (xqerl_types:string_value(Res) == "&#x8;") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-CodepointToStringFunc-9'(_Config) ->
   Qry = "codepoints-to-string(9) eq \"	\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-10'(_Config) ->
   Qry = "codepoints-to-string(10) eq \"
\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-11'(_Config) ->
   Qry = "codepoints-to-string(11)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'K-CodepointToStringFunc-11b'(_Config) ->
   {skip,"XML 1.1"}.
'K-CodepointToStringFunc-12'(_Config) ->
   Qry = "codepoints-to-string(12)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'K-CodepointToStringFunc-12b'(_Config) ->
   {skip,"XML 1.1"}.
'K-CodepointToStringFunc-13'(_Config) ->
   Qry = "codepoints-to-string(13) eq \"&#xD;\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-14'(_Config) ->
   Qry = "string-to-codepoints(codepoints-to-string(14))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            14
            
         
      ",
 case ( begin Tst1 = xqerl:run("14"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-CodepointToStringFunc-15'(_Config) ->
   Qry = "string-to-codepoints(codepoints-to-string(31))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            31
            
         
      ",
 case ( begin Tst1 = xqerl:run("31"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-CodepointToStringFunc-16'(_Config) ->
   Qry = "codepoints-to-string(32) eq \" \"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-17'(_Config) ->
   Qry = [99,111,100,101,112,111,105,110,116,115,45,116,111,45,115,116,114,105,110,103,40,50,55,54,51,55,41,32,101,113,32,34,27637,34],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-18'(_Config) ->
   Qry = [99,111,100,101,112,111,105,110,116,115,45,116,111,45,115,116,114,105,110,103,40,53,53,50,57,53,41,32,101,113,32,34,55295,34],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-19'(_Config) ->
   Qry = "codepoints-to-string(55296)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'K-CodepointToStringFunc-20'(_Config) ->
   Qry = "codepoints-to-string(57343)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'K-CodepointToStringFunc-21'(_Config) ->
   Qry = [99,111,100,101,112,111,105,110,116,115,45,116,111,45,115,116,114,105,110,103,40,53,55,51,52,52,41,32,101,113,32,34,57344,34],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-22'(_Config) ->
   Qry = [99,111,100,101,112,111,105,110,116,115,45,116,111,45,115,116,114,105,110,103,40,54,49,52,51,56,41,32,101,113,32,34,61438,34],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-23'(_Config) ->
   Qry = [99,111,100,101,112,111,105,110,116,115,45,116,111,45,115,116,114,105,110,103,40,54,53,53,51,51,41,32,101,113,32,34,65533,34],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-24'(_Config) ->
   Qry = "codepoints-to-string(65534)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'K-CodepointToStringFunc-25'(_Config) ->
   Qry = "codepoints-to-string(65535)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'K-CodepointToStringFunc-26'(_Config) ->
   Qry = [99,111,100,101,112,111,105,110,116,115,45,116,111,45,115,116,114,105,110,103,40,54,53,53,51,54,41,32,101,113,32,34,65536,34],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-27'(_Config) ->
   Qry = [99,111,100,101,112,111,105,110,116,115,45,116,111,45,115,116,114,105,110,103,40,53,56,57,56,50,51,41,32,101,113,32,34,589823,34],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-28'(_Config) ->
   Qry = [99,111,100,101,112,111,105,110,116,115,45,116,111,45,115,116,114,105,110,103,40,49,49,49,52,49,49,49,41,32,101,113,32,34,1114111,34],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CodepointToStringFunc-29'(_Config) ->
   Qry = "codepoints-to-string(1114112)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-001'(_Config) ->
   Qry = "
        declare function local:test($test as xs:integer) as xs:integer? { 
          if ($test = 1) then ( 0 ) else if ($test = 2) then ( 9 ) else if ($test = 3) then ( 13 ) else if ($test = 4) then ( 16 ) else () 
        }; 
        fn:codepoints-to-string( local:test(1) to 32 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-002'(_Config) ->
   Qry = "
        declare function local:test($test as xs:integer) as xs:integer? { 
          if ($test = 1) then ( 0 ) else if ($test = 2) then ( 9 ) else if ($test = 3) then ( 13 ) else if ($test = 4) then ( 16 ) else () 
        }; 
        fn:codepoints-to-string( local:test(2) to 32 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-003'(_Config) ->
   Qry = "
      declare function local:test($test as xs:integer) as xs:integer? { 
        if ($test = 1) then ( 0 ) else if ($test = 2) then ( 9 ) else if ($test = 3) then ( 13 )else if ($test = 4) then ( 16 ) else () 
      }; 
      fn:codepoints-to-string( local:test(3) to 32 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-004'(_Config) ->
   Qry = "declare function local:test($test as xs:integer) as xs:integer? { 
        if ($test = 1) then ( 0 ) else if ($test = 2) then ( 9 ) else if ($test = 3) then ( 13 ) else if ($test = 4) then ( 16 ) else () 
      }; 
      fn:codepoints-to-string( local:test(4) to 32 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-005'(_Config) ->
   Qry = "fn:codepoints-to-string( 65536 to 1114112 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-006'(_Config) ->
   Qry = "fn:codepoints-to-string( 55295 to 55297 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-007'(_Config) ->
   Qry = "fn:codepoints-to-string( 55296 to 57343 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-008'(_Config) ->
   Qry = "fn:codepoints-to-string( 65535 to 70000 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-009'(_Config) ->
   Qry = "fn:codepoints-to-string( 65530 to 70000 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-010'(_Config) ->
   Qry = "fn:boolean(fn:codepoints-to-string( 65 to 76 ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-codepoints-to-string-011'(_Config) ->
   Qry = "fn:boolean(fn:codepoints-to-string( 0 ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-012'(_Config) ->
   Qry = "fn:boolean(fn:codepoints-to-string( 999999999 ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-013'(_Config) ->
   Qry = "fn:boolean(fn:codepoints-to-string( 65 ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-codepoints-to-string-014'(_Config) ->
   Qry = "fn:boolean(fn:codepoints-to-string( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-codepoints-to-string-015'(_Config) ->
   Qry = "deep-equal( fn:string-to-codepoints(fn:codepoints-to-string(65536 to 66000)), 65536 to 66000 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-codepoints-to-string-016'(_Config) ->
   Qry = "deep-equal( fn:string-to-codepoints(fn:codepoints-to-string(65536 to 100000)), 65536 to 100000 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-codepoints-to-string-017'(_Config) ->
   Qry = "for $x in 32 to 64 return boolean(codepoints-to-string($x to $x + 10))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true
      ",
   case xqerl_types:string_value(Res) of
             "true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-codepoints-to-string-018'(_Config) ->
   Qry = "if(5 < exactly-one((1 to 10)[. div 2 = 5])) then codepoints-to-string(32 to exactly-one((1 to 100)[. div 2 = 40])) else ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOP
      ",
   case xqerl_types:string_value(Res) of
             " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOP" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-codepoints-to-string-019'(_Config) ->
   Qry = "for $x in 65 to 75 return string-length(codepoints-to-string($x to $x+10))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         11 11 11 11 11 11 11 11 11 11 11
      ",
   case xqerl_types:string_value(Res) of
             "11 11 11 11 11 11 11 11 11 11 11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-codepoints-to-string-020'(_Config) ->
   Qry = "for $x in 65 to 75 return boolean(codepoints-to-string($x[. mod 2 = 0] to ($x+9)[. mod 2 = 0]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         false false false false false false false false false false false
      ",
   case xqerl_types:string_value(Res) of
             "false false false false false false false false false false false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-codepoints-to-string-021'(_Config) ->
   {skip," range "}.
'cbcl-codepoints-to-string-022'(_Config) ->
   Qry = "let $y := 65536*65536 return for $x in $y to $y+10 return codepoints-to-string($x to $x+10)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-023'(_Config) ->
   Qry = "for $x in 9 to 15 return codepoints-to-string($x to $x)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-024'(_Config) ->
   Qry = "for $x in 13 to 15 return codepoints-to-string($x to $x)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'cbcl-codepoints-to-string-025'(_Config) ->
   Qry = "for $x in 9 to 9 return codepoints-to-string($x to $x+1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         '	
'
      ",
 Tst = xqerl:run("'	
'"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cbcl-codepoints-to-string-026'(_Config) ->
   Qry = "for $x in 13 to 13 return codepoints-to-string($x to $x)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-codepoints-to-string-027'(_Config) ->
   Qry = "for $x in (13), $y in (13,9,10) return codepoints-to-string($x to $y)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
           
      ",
   case xqerl_types:string_value(Res) of
             "  " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
