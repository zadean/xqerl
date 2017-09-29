-module('fn_substring_before_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-substring-before-1'/1]).
-export(['fn-substring-before-2'/1]).
-export(['fn-substring-before-3'/1]).
-export(['fn-substring-before-4'/1]).
-export(['fn-substring-before-5'/1]).
-export(['fn-substring-before-6'/1]).
-export(['fn-substring-before-7'/1]).
-export(['fn-substring-before-8'/1]).
-export(['fn-substring-before-9'/1]).
-export(['fn-substring-before-10'/1]).
-export(['fn-substring-before-11'/1]).
-export(['fn-substring-before-12'/1]).
-export(['fn-substring-before-13'/1]).
-export(['fn-substring-before-14'/1]).
-export(['fn-substring-before-15'/1]).
-export(['fn-substring-before-16'/1]).
-export(['fn-substring-before-17'/1]).
-export(['fn-substring-before-18'/1]).
-export(['fn-substring-before-19'/1]).
-export(['fn-substring-before-20'/1]).
-export(['fn-substring-before-21'/1]).
-export(['fn-substring-before-22'/1]).
-export(['fn-substring-before-23'/1]).
-export(['fn-substring-before-24'/1]).
-export(['fn-substring-before-25'/1]).
-export(['K-SubstringBeforeFunc-1'/1]).
-export(['K-SubstringBeforeFunc-2'/1]).
-export(['K-SubstringBeforeFunc-3'/1]).
-export(['K-SubstringBeforeFunc-4'/1]).
-export(['K-SubstringBeforeFunc-5'/1]).
-export(['K-SubstringBeforeFunc-6'/1]).
-export(['K-SubstringBeforeFunc-7'/1]).
-export(['K-SubstringBeforeFunc-8'/1]).
-export(['K-SubstringBeforeFunc-9'/1]).
-export(['K-SubstringBeforeFunc-10'/1]).
-export(['cbcl-substring-before-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-substring-before-1',
   'fn-substring-before-2',
   'fn-substring-before-3',
   'fn-substring-before-4',
   'fn-substring-before-5',
   'fn-substring-before-6',
   'fn-substring-before-7',
   'fn-substring-before-8',
   'fn-substring-before-9',
   'fn-substring-before-10',
   'fn-substring-before-11',
   'fn-substring-before-12',
   'fn-substring-before-13',
   'fn-substring-before-14',
   'fn-substring-before-15',
   'fn-substring-before-16',
   'fn-substring-before-17',
   'fn-substring-before-18',
   'fn-substring-before-19',
   'fn-substring-before-20',
   'fn-substring-before-21',
   'fn-substring-before-22',
   'fn-substring-before-23',
   'fn-substring-before-24',
   'fn-substring-before-25',
   'K-SubstringBeforeFunc-1',
   'K-SubstringBeforeFunc-2',
   'K-SubstringBeforeFunc-3',
   'K-SubstringBeforeFunc-4',
   'K-SubstringBeforeFunc-5',
   'K-SubstringBeforeFunc-6',
   'K-SubstringBeforeFunc-7',
   'K-SubstringBeforeFunc-8',
   'K-SubstringBeforeFunc-9',
   'K-SubstringBeforeFunc-10',
   'cbcl-substring-before-001'].
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
'fn-substring-before-1'(_Config) ->
   Qry = "fn:substring-before(\"\",\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-2'(_Config) ->
   Qry = "fn:substring-before(\"\",\"A Character String\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-3'(_Config) ->
   Qry = "fn:substring-before(\"A Character String\",\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-4'(_Config) ->
   Qry = "fn:substring-before((),\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-5'(_Config) ->
   Qry = "fn:substring-before(\"\",())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-6'(_Config) ->
   Qry = "fn:substring-before(\"A Character String\",())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-7'(_Config) ->
   Qry = "fn:substring-before((),\"A Character String\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-8'(_Config) ->
   Qry = "fn:substring-before(\"AAAAABBBBBCCCCC\",\"BBBBB\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AAAAA
      ",
   case xqerl_test:string_value(Res) of
             "AAAAA" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-substring-before-9'(_Config) ->
   Qry = "fn:substring-before(\"AAAAABBBBB\",\" \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-10'(_Config) ->
   Qry = "fn:substring-before(\" \",\"AAAAABBBBB\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-11'(_Config) ->
   Qry = "fn:not(fn:substring-before(\"A\",\"A\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-substring-before-12'(_Config) ->
   Qry = "fn:not(fn:substring-before(\"A\",\"B\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-substring-before-13'(_Config) ->
   Qry = "fn:substring-before(xs:string(\"A\"),\"A\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-14'(_Config) ->
   Qry = "fn:substring-before(\"A\",xs:string(\"A\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-15'(_Config) ->
   Qry = "fn:substring-before(\"A\",\"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-16'(_Config) ->
   Qry = "fn:substring-before(\"a\",\"A\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-17'(_Config) ->
   Qry = "fn:substring-before(\"substring-before\",\"substring-before\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-18'(_Config) ->
   Qry = "fn:substring-before(\"substring-beforesubstring-before\",\"substring-before\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-19'(_Config) ->
   Qry = "fn:substring-before(\"****\",\"***\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-20'(_Config) ->
   Qry = "fn:substring-before(\"12345\",\"2345\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"1\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"1\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-21'(_Config) ->
   Qry = "fn:substring-before(\"substring-before\",\"erofeb-gnirtsbus\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            \"\"
            1
         
      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-substring-before-22'(_Config) ->
   Qry = "substring-before(\"banana\", \"a\",
         \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"b\"
      ",
 Tst = xqerl:run("\"b\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-before-23'(_Config) ->
   Qry = "substring-before(\"banana\", \"a\", \"collation/codepoint\")",
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
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"b\"
      ",
 Tst = xqerl:run("\"b\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-substring-before-24'(_Config) ->
   {skip,"Collation Environment"}.
'fn-substring-before-25'(_Config) ->
   Qry = "substring-before(\"𐀁𐀂𐀃\", \"𐀂\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         \"𐀁\"
      ",
 Tst = xqerl:run("\"𐀁\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SubstringBeforeFunc-1'(_Config) ->
   Qry = "substring-before()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SubstringBeforeFunc-2'(_Config) ->
   Qry = "substring-before(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SubstringBeforeFunc-3'(_Config) ->
   Qry = "substring-before((), (), \"http://www.w3.org/2005/xpath-functions/collation/codepoint\",
         \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SubstringBeforeFunc-4'(_Config) ->
   Qry = "substring-before(\"a string\", \"a string\",
         \"http://www.example.com/COLLATION/NOT/SUPPORTED\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0002'}) end.
'K-SubstringBeforeFunc-5'(_Config) ->
   Qry = "substring-before(\"foo\", \"oo\",
         \"http://www.w3.org/2005/xpath-functions/collation/codepoint\") eq \"f\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringBeforeFunc-6'(_Config) ->
   Qry = "substring-before(\"tattoo\", \"attoo\") eq \"t\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringBeforeFunc-7'(_Config) ->
   Qry = "substring-before(\"tattoo\", \"tatto\") eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringBeforeFunc-8'(_Config) ->
   Qry = "substring-before((), ()) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringBeforeFunc-9'(_Config) ->
   Qry = "substring-before(\"a string\", \"\") eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SubstringBeforeFunc-10'(_Config) ->
   Qry = "substring-before(\"a string\", \"not in other\") eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-substring-before-001'(_Config) ->
   Qry = "
        fn:boolean(fn:substring-before('input', '', 'http://www.w3.org/2005/xpath-functions/collation/codepoint'))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
