-module('fn_substring_after_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-substring-after-1'/1]).
-export(['fn-substring-after-2'/1]).
-export(['fn-substring-after-3'/1]).
-export(['fn-substring-after-4'/1]).
-export(['fn-substring-after-5'/1]).
-export(['fn-substring-after-6'/1]).
-export(['fn-substring-after-7'/1]).
-export(['fn-substring-after-8'/1]).
-export(['fn-substring-after-9'/1]).
-export(['fn-substring-after-10'/1]).
-export(['fn-substring-after-11'/1]).
-export(['fn-substring-after-12'/1]).
-export(['fn-substring-after-13'/1]).
-export(['fn-substring-after-14'/1]).
-export(['fn-substring-after-15'/1]).
-export(['fn-substring-after-16'/1]).
-export(['fn-substring-after-17'/1]).
-export(['fn-substring-after-18'/1]).
-export(['fn-substring-after-19'/1]).
-export(['fn-substring-after-20'/1]).
-export(['fn-substring-after-21'/1]).
-export(['fn-substring-after-22'/1]).
-export(['fn-substring-after-23'/1]).
-export(['fn-substring-after-24'/1]).
-export(['fn-substring-after-25'/1]).
-export(['K-SubstringAfterFunc-1'/1]).
-export(['K-SubstringAfterFunc-2'/1]).
-export(['K-SubstringAfterFunc-3'/1]).
-export(['K-SubstringAfterFunc-4'/1]).
-export(['K-SubstringAfterFunc-5'/1]).
-export(['K-SubstringAfterFunc-6'/1]).
-export(['K-SubstringAfterFunc-7'/1]).
-export(['K-SubstringAfterFunc-8'/1]).
-export(['K-SubstringAfterFunc-9'/1]).
-export(['K-SubstringAfterFunc-10'/1]).
-export(['K-SubstringAfterFunc-11'/1]).
-export(['cbcl-substring-after-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-substring-after-1',
   'fn-substring-after-2',
   'fn-substring-after-3',
   'fn-substring-after-4',
   'fn-substring-after-5',
   'fn-substring-after-6',
   'fn-substring-after-7',
   'fn-substring-after-8',
   'fn-substring-after-9',
   'fn-substring-after-10',
   'fn-substring-after-11',
   'fn-substring-after-12',
   'fn-substring-after-13',
   'fn-substring-after-14',
   'fn-substring-after-15',
   'fn-substring-after-16',
   'fn-substring-after-17',
   'fn-substring-after-18',
   'fn-substring-after-19',
   'fn-substring-after-20',
   'fn-substring-after-21',
   'fn-substring-after-22',
   'fn-substring-after-23',
   'fn-substring-after-24',
   'fn-substring-after-25',
   'K-SubstringAfterFunc-1',
   'K-SubstringAfterFunc-2',
   'K-SubstringAfterFunc-3',
   'K-SubstringAfterFunc-4',
   'K-SubstringAfterFunc-5',
   'K-SubstringAfterFunc-6',
   'K-SubstringAfterFunc-7',
   'K-SubstringAfterFunc-8',
   'K-SubstringAfterFunc-9',
   'K-SubstringAfterFunc-10',
   'K-SubstringAfterFunc-11',
   'cbcl-substring-after-001'].
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
'fn-substring-after-1'(_Config) ->
   Qry = "fn:substring-after(\"\",\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-2'(_Config) ->
   Qry = "fn:substring-after(\"\",\"A Character String\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-3'(_Config) ->
   Qry = "fn:substring-after(\"A Character String\",\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"A Character String\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"A Character String\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-4'(_Config) ->
   Qry = "fn:substring-after((),\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-5'(_Config) ->
   Qry = "fn:substring-after(\"\",())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-6'(_Config) ->
   Qry = "fn:substring-after(\"A Character String\",())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"A Character String\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"A Character String\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-7'(_Config) ->
   Qry = "fn:substring-after((),\"A Character String\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-8'(_Config) ->
   Qry = "fn:substring-after(\"AAAAABBBBBCCCCC\",\"BBBBB\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         CCCCC\n      ",
   case xqerl_test:string_value(Res) of
             "CCCCC" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-after-9'(_Config) ->
   Qry = "fn:substring-after(\"AAAAABBBBB\",\" \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-10'(_Config) ->
   Qry = "fn:substring-after(\" \",\"AAAAABBBBB\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-11'(_Config) ->
   Qry = "fn:not(fn:substring-after(\"A\",\"A\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-substring-after-12'(_Config) ->
   Qry = "fn:not(fn:substring-after(\"A\",\"B\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-substring-after-13'(_Config) ->
   Qry = "fn:substring-after(xs:string(\"A\"),\"A\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-14'(_Config) ->
   Qry = "fn:substring-after(\"A\",xs:string(\"A\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-15'(_Config) ->
   Qry = "fn:substring-after(\"A\",\"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-16'(_Config) ->
   Qry = "fn:substring-after(\"a\",\"A\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-17'(_Config) ->
   Qry = "fn:substring-after(\"substring-after\",\"substring-after\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-18'(_Config) ->
   Qry = "fn:substring-after(\"substring-aftersubstring-after\",\"substring-after\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         substring-after\n      ",
   case xqerl_test:string_value(Res) of
             "substring-after" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-after-19'(_Config) ->
   Qry = "fn:substring-after(\"****\",\"***\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         *\n      ",
   case xqerl_test:string_value(Res) of
             "*" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-after-20'(_Config) ->
   Qry = "fn:substring-after(\"12345\",\"1234\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         5\n      ",
   case xqerl_test:string_value(Res) of
             "5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-after-21'(_Config) ->
   Qry = "fn:substring-after(\"substring-after\",\"refta-gnirtsbus\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-after-22'(_Config) ->
   Qry = "substring-after(\"banana\", \"a\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"nana\"\n      ",
 Tst = xqerl:run("\"nana\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-after-23'(_Config) ->
   Qry = "substring-after(\"banana\", \"a\", \"collation/codepoint\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"http://www.w3.org/2005/xpath-functions/"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"nana\"\n      ",
 Tst = xqerl:run("\"nana\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-after-24'(_Config) ->
   {skip,"Collation Environment"}.
'fn-substring-after-25'(_Config) ->
   Qry = [115,117,98,115,116,114,105,110,103,45,97,102,116,101,114,40,34,65537,65538,65539,34,44,32,34,65538,34,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,34,65539,34,10,32,32,32,32,32,32],
 Tst = xqerl:run([34,65539,34]),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SubstringAfterFunc-1'(_Config) ->
   Qry = "substring-after()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SubstringAfterFunc-2'(_Config) ->
   Qry = "substring-after(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SubstringAfterFunc-3'(_Config) ->
   Qry = "substring-after((), (), \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SubstringAfterFunc-4'(_Config) ->
   Qry = "substring-after(\"a string\", \"a string\", \"http://www.example.com/COLLATION/NOT/SUPPORTED\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0002'}) end.
'K-SubstringAfterFunc-5'(_Config) ->
   Qry = "substring-after(\"foo\", \"fo\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\") eq \"o\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringAfterFunc-6'(_Config) ->
   Qry = "substring-after(\"tattoo\", \"tat\") eq \"too\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringAfterFunc-7'(_Config) ->
   Qry = "substring-after(\"tattoo\", \"tattoo\") eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringAfterFunc-8'(_Config) ->
   Qry = "substring-after(\"abcdefgedij\", \"def\") eq \"gedij\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringAfterFunc-9'(_Config) ->
   Qry = "substring-after((), ()) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringAfterFunc-10'(_Config) ->
   Qry = "substring-after(\"a string\", ()) eq \"a string\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringAfterFunc-11'(_Config) ->
   Qry = "substring-after(\"a string\", \"not in other\") eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-substring-after-001'(_Config) ->
   Qry = "\n        fn:boolean(fn:substring-after('input', '', 'http://www.w3.org/2005/xpath-functions/collation/codepoint'))\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
