-module('fn_substring_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-substring-1'/1]).
-export(['fn-substring-2'/1]).
-export(['fn-substring-3'/1]).
-export(['fn-substring-4'/1]).
-export(['fn-substring-5'/1]).
-export(['fn-substring-6'/1]).
-export(['fn-substring-7'/1]).
-export(['fn-substring-8'/1]).
-export(['fn-substring-9'/1]).
-export(['fn-substring-10'/1]).
-export(['fn-substring-11'/1]).
-export(['fn-substring-12'/1]).
-export(['fn-substring-13'/1]).
-export(['fn-substring-14'/1]).
-export(['fn-substring-15'/1]).
-export(['fn-substring-16'/1]).
-export(['fn-substring-17'/1]).
-export(['fn-substring-18'/1]).
-export(['fn-substring-19'/1]).
-export(['fn-substring-20'/1]).
-export(['fn-substring-21'/1]).
-export(['fn-substring-22'/1]).
-export(['fn-substring-23'/1]).
-export(['fn-substring-24'/1]).
-export(['fn-substring-25'/1]).
-export(['fn-substring-26'/1]).
-export(['fn-substring-27'/1]).
-export(['fn-substring-28'/1]).
-export(['fn-substring-29'/1]).
-export(['fn-substring-30'/1]).
-export(['fn-substring-31'/1]).
-export(['K-SubstringFunc-1'/1]).
-export(['K-SubstringFunc-2'/1]).
-export(['K-SubstringFunc-3'/1]).
-export(['K-SubstringFunc-4'/1]).
-export(['K-SubstringFunc-5'/1]).
-export(['K-SubstringFunc-6'/1]).
-export(['K-SubstringFunc-7'/1]).
-export(['K-SubstringFunc-8'/1]).
-export(['K-SubstringFunc-9'/1]).
-export(['K-SubstringFunc-10'/1]).
-export(['K-SubstringFunc-11'/1]).
-export(['K-SubstringFunc-12'/1]).
-export(['K-SubstringFunc-13'/1]).
-export(['K-SubstringFunc-14'/1]).
-export(['K-SubstringFunc-15'/1]).
-export(['cbcl-substring-001'/1]).
-export(['cbcl-substring-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-substring-1',
   'fn-substring-2',
   'fn-substring-3',
   'fn-substring-4',
   'fn-substring-5',
   'fn-substring-6',
   'fn-substring-7',
   'fn-substring-8',
   'fn-substring-9',
   'fn-substring-10',
   'fn-substring-11',
   'fn-substring-12',
   'fn-substring-13',
   'fn-substring-14',
   'fn-substring-15',
   'fn-substring-16',
   'fn-substring-17',
   'fn-substring-18',
   'fn-substring-19',
   'fn-substring-20',
   'fn-substring-21',
   'fn-substring-22',
   'fn-substring-23',
   'fn-substring-24',
   'fn-substring-25',
   'fn-substring-26',
   'fn-substring-27',
   'fn-substring-28',
   'fn-substring-29',
   'fn-substring-30',
   'fn-substring-31',
   'K-SubstringFunc-1',
   'K-SubstringFunc-2',
   'K-SubstringFunc-3',
   'K-SubstringFunc-4',
   'K-SubstringFunc-5',
   'K-SubstringFunc-6',
   'K-SubstringFunc-7',
   'K-SubstringFunc-8',
   'K-SubstringFunc-9',
   'K-SubstringFunc-10',
   'K-SubstringFunc-11',
   'K-SubstringFunc-12',
   'K-SubstringFunc-13',
   'K-SubstringFunc-14',
   'K-SubstringFunc-15',
   'cbcl-substring-001',
   'cbcl-substring-002'].
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
];
environment('concepts') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/substring/concepts.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-substring-1'(_Config) ->
   Qry = "fn:substring(\"motor car\", 6)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             car
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == " car" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-2'(_Config) ->
   Qry = "fn:substring(\"metadata\", 4, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ada
      ",
   case xqerl_test:string_value(Res) of
             "ada" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-3'(_Config) ->
   Qry = "fn:substring(\"12345\", 1.5, 2.6)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         234
      ",
   case xqerl_test:string_value(Res) of
             "234" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-4'(_Config) ->
   Qry = "fn:substring(\"12345\", 0, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12
      ",
   case xqerl_test:string_value(Res) of
             "12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-5'(_Config) ->
   Qry = "fn:count(fn:substring(\"12345\", 5, -3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-6'(_Config) ->
   Qry = "fn:substring(\"12345\", -3, 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-7'(_Config) ->
   Qry = "fn:count(fn:substring(\"12345\", 0 div 0E0, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-8'(_Config) ->
   Qry = "fn:count(fn:substring(\"12345\", 1, 0 div 0E0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-9'(_Config) ->
   Qry = "fn:count(fn:substring((), 1, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-10'(_Config) ->
   Qry = "fn:substring(\"12345\", -42, 1 div 0E0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12345
      ",
   case xqerl_test:string_value(Res) of
             "12345" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-11'(_Config) ->
   Qry = "fn:count(fn:substring(\"12345\", -1 div 0E0, 1 div 0E0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-12'(_Config) ->
   Qry = "fn:count(fn:substring(\"\",0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-13'(_Config) ->
   Qry = "fn:boolean(fn:substring(\"ABC\",1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-substring-14'(_Config) ->
   Qry = "fn:not(fn:substring(\"ABC\",1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-substring-15'(_Config) ->
   Qry = "fn:substring(fn:substring(\"ABCDE\",1),1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABCDE
      ",
   case xqerl_test:string_value(Res) of
             "ABCDE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-16'(_Config) ->
   Qry = "fn:substring(\"substring\",1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         substring
      ",
   case xqerl_test:string_value(Res) of
             "substring" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-17'(_Config) ->
   Qry = "fn:concat(fn:substring(\"ABC\",1),\"DEF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABCDEF
      ",
   case xqerl_test:string_value(Res) of
             "ABCDEF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-18'(_Config) ->
   Qry = "fn:contains(fn:substring(\"ABCDEF\",1),\"DEF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-substring-19'(_Config) ->
   Qry = "fn:substring(\"!@#$%^*()\",1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         !@#$%^*()
      ",
   case xqerl_test:string_value(Res) of
             "!@#$%^*()" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-20'(_Config) ->
   Qry = "fn:substring(\"ABCD\",xs:double(1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABCD
      ",
   case xqerl_test:string_value(Res) of
             "ABCD" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-21'(_Config) ->
   Qry = "fn:substring(\"ABCDE\",1+1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         BCDE
      ",
   case xqerl_test:string_value(Res) of
             "BCDE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-22'(_Config) ->
   Qry = "concat('#', fn:substring(./concepts/@id, string-length(./concepts/@id) - 18, 1), '#')",
   Env = xqerl_test:handle_environment(environment('concepts')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ##
      ",
   case xqerl_test:string_value(Res) of
             "##" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-23'(_Config) ->
   Qry = [115,117,98,115,116,114,105,110,103,40,34,97,98,99,100,65537,101,102,103,104,34,44,32,54,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"efgh\"
      ",
 Tst = xqerl:run("\"efgh\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-24'(_Config) ->
   Qry = [115,117,98,115,116,114,105,110,103,40,34,97,98,99,100,65537,101,102,103,104,34,44,32,53,44,32,50,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,34,65537,101,34,10,32,32,32,32,32,32],
 Tst = xqerl:run([34,65537,101,34]),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-25'(_Config) ->
   Qry = [115,117,98,115,116,114,105,110,103,40,34,65537,34,44,32,49,44,32,50,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,34,65537,34,10,32,32,32,32,32,32],
 Tst = xqerl:run([34,65537,34]),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-26'(_Config) ->
   Qry = [115,117,98,115,116,114,105,110,103,40,34,65537,34,44,32,50,44,32,49,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-27'(_Config) ->
   Qry = [115,117,98,115,116,114,105,110,103,40,34,65537,34,44,32,48,44,32,50,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,34,65537,34,10,32,32,32,32,32,32],
 Tst = xqerl:run([34,65537,34]),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-28'(_Config) ->
   Qry = [115,117,98,115,116,114,105,110,103,40,34,65537,34,44,32,48,44,32,51,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,34,65537,34,10,32,32,32,32,32,32],
 Tst = xqerl:run([34,65537,34]),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-29'(_Config) ->
   Qry = [115,117,98,115,116,114,105,110,103,40,34,65537,65537,34,44,32,51,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"\"
      ",
 Tst = xqerl:run("\"\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-30'(_Config) ->
   Qry = [115,117,98,115,116,114,105,110,103,40,34,65537,65537,34,44,32,48,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,34,65537,65537,34,10,32,32,32,32,32,32],
 Tst = xqerl:run([34,65537,65537,34]),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-31'(_Config) ->
   Qry = "substring(\"12345\", -3.1e0, 5.2e0) eq \"1\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-1'(_Config) ->
   Qry = "sub-string(\"a string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SubstringFunc-2'(_Config) ->
   Qry = "sub-string(\"a string\", 1, 2, \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SubstringFunc-3'(_Config) ->
   Qry = "substring((), 1, 2) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-4'(_Config) ->
   Qry = "substring((), 1) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-5'(_Config) ->
   Qry = "substring(\"12345\", 1.5, 2.6) eq \"234\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-6'(_Config) ->
   Qry = "substring((), 1, 3) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-7'(_Config) ->
   Qry = "substring(\"motor car\", 6) eq \" car\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-8'(_Config) ->
   Qry = "substring(\"12345\", 0, 3) eq \"12\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-9'(_Config) ->
   Qry = "substring(\"metadata\", 4, 3) eq \"ada\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-10'(_Config) ->
   Qry = "substring(\"12345\", 0 div 0E0, 3) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-11'(_Config) ->
   Qry = "substring(\"12345\", 1, 0 div 0E0) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-12'(_Config) ->
   Qry = "substring(\"12345\", -3, 5) eq \"1\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-13'(_Config) ->
   Qry = "substring(\"12345\", -42, 1 div 0E0) eq \"12345\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-14'(_Config) ->
   Qry = "substring(\"12345\", -1 div 0E0, 1 div 0E0) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringFunc-15'(_Config) ->
   Qry = "substring(\"12345\", 5, -3) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-substring-001'(_Config) ->
   Qry = "fn:boolean(fn:substring('', 1, 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-substring-002'(_Config) ->
   Qry = "fn:boolean(fn:substring('five', 5, 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
