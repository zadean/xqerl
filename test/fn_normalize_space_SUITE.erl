-module('fn_normalize_space_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-normalize-space1args-1'/1]).
-export(['fn-normalize-space1args-2'/1]).
-export(['fn-normalize-space1args-3'/1]).
-export(['fn-normalize-space1args-4'/1]).
-export(['fn-normalize-space0args-1'/1]).
-export(['fn-normalize-space-1'/1]).
-export(['fn-normalize-space-2'/1]).
-export(['fn-normalize-space-3'/1]).
-export(['fn-normalize-space-4'/1]).
-export(['fn-normalize-space-5'/1]).
-export(['fn-normalize-space-6'/1]).
-export(['fn-normalize-space-7'/1]).
-export(['fn-normalize-space-8'/1]).
-export(['fn-normalize-space-9'/1]).
-export(['fn-normalize-space-10'/1]).
-export(['fn-normalize-space-11'/1]).
-export(['fn-normalize-space-12'/1]).
-export(['fn-normalize-space-13'/1]).
-export(['fn-normalize-space-14'/1]).
-export(['fn-normalize-space-15'/1]).
-export(['fn-normalize-space-16'/1]).
-export(['fn-normalize-space-17'/1]).
-export(['fn-normalize-space-18'/1]).
-export(['fn-normalize-space-19'/1]).
-export(['fn-normalize-space-20'/1]).
-export(['fn-normalize-space-21'/1]).
-export(['fn-normalize-space-23'/1]).
-export(['fn-normalize-space-24'/1]).
-export(['fn-normalize-space-25'/1]).
-export(['fn-normalize-space-26'/1]).
-export(['K-NormalizeSpaceFunc-1'/1]).
-export(['K-NormalizeSpaceFunc-2'/1]).
-export(['K-NormalizeSpaceFunc-3'/1]).
-export(['K-NormalizeSpaceFunc-4'/1]).
-export(['K-NormalizeSpaceFunc-5'/1]).
-export(['K-NormalizeSpaceFunc-6'/1]).
-export(['K-NormalizeSpaceFunc-7'/1]).
-export(['K-NormalizeSpaceFunc-8'/1]).
-export(['K-NormalizeSpaceFunc-9'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-normalize-space1args-1',
   'fn-normalize-space1args-2',
   'fn-normalize-space1args-3',
   'fn-normalize-space1args-4',
   'fn-normalize-space0args-1',
   'fn-normalize-space-1',
   'fn-normalize-space-2',
   'fn-normalize-space-3',
   'fn-normalize-space-4',
   'fn-normalize-space-5',
   'fn-normalize-space-6',
   'fn-normalize-space-7',
   'fn-normalize-space-8',
   'fn-normalize-space-9',
   'fn-normalize-space-10',
   'fn-normalize-space-11',
   'fn-normalize-space-12',
   'fn-normalize-space-13',
   'fn-normalize-space-14',
   'fn-normalize-space-15',
   'fn-normalize-space-16',
   'fn-normalize-space-17',
   'fn-normalize-space-18',
   'fn-normalize-space-19',
   'fn-normalize-space-20',
   'fn-normalize-space-21',
   'fn-normalize-space-23',
   'fn-normalize-space-24',
   'fn-normalize-space-25',
   'fn-normalize-space-26',
   'K-NormalizeSpaceFunc-1',
   'K-NormalizeSpaceFunc-2',
   'K-NormalizeSpaceFunc-3',
   'K-NormalizeSpaceFunc-4',
   'K-NormalizeSpaceFunc-5',
   'K-NormalizeSpaceFunc-6',
   'K-NormalizeSpaceFunc-7',
   'K-NormalizeSpaceFunc-8',
   'K-NormalizeSpaceFunc-9'].
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
'fn-normalize-space1args-1'(_Config) ->
   Qry = "fn:normalize-space(\"This is a charac\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This is a charac\n      ",
   case xqerl_test:string_value(Res) of
             "This is a charac" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space1args-2'(_Config) ->
   Qry = "fn:normalize-space(\"This is a ch\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This is a ch\n      ",
   case xqerl_test:string_value(Res) of
             "This is a ch" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space1args-3'(_Config) ->
   Qry = "fn:normalize-space(\"This is a charac\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This is a charac\n      ",
   case xqerl_test:string_value(Res) of
             "This is a charac" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space1args-4'(_Config) ->
   Qry = "normalize-space(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \"\"\n            xs:string\n            1\n         \n      ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst1 = xqerl:run("\"\""),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-normalize-space0args-1'(_Config) ->
   Qry = "//doc/normalize-space(zero-or-one(a[normalize-space() = 'Hello, How are you?']))",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/normalize-space/textWithSpaces.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         Hello, How are you?\n      ",
   case xqerl_test:string_value(Res) of
             "Hello, How are you?" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space-1'(_Config) ->
   Qry = "fn:normalize-space(\" The wealthy curled darlings of our nation. \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         The wealthy curled darlings of our nation.\n      ",
   case xqerl_test:string_value(Res) of
             "The wealthy curled darlings of our nation." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space-2'(_Config) ->
   Qry = "fn:normalize-space()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-normalize-space-3'(_Config) ->
   Qry = "fn:normalize-space(\"This	text should contains no tabs\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This text should contains no tabs\n      ",
   case xqerl_test:string_value(Res) of
             "This text should contains no tabs" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space-4'(_Config) ->
   Qry = "fn:normalize-space(\"This text should contains\nno newline characters.\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This text should contains no newline characters.\n      ",
   case xqerl_test:string_value(Res) of
             "This text should contains no newline characters." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space-5'(_Config) ->
   Qry = "fn:normalize-space(\"This	text	should	contains	no	tab	characters.\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This text should contains no tab characters.\n      ",
   case xqerl_test:string_value(Res) of
             "This text should contains no tab characters." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space-6'(_Config) ->
   Qry = "fn:normalize-space(\"This\ntext\nshould\ncontains\nno\nnewline\ncharacters.\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This text should contains no newline characters.\n      ",
   case xqerl_test:string_value(Res) of
             "This text should contains no newline characters." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space-7'(_Config) ->
   Qry = "fn:normalize-space(\"This text	should contains no tabs or\nnewline characters.\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This text should contains no tabs or newline characters.\n      ",
   case xqerl_test:string_value(Res) of
             "This text should contains no tabs or newline characters." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space-8'(_Config) ->
   Qry = "fn:normalize-space(\"This	 text	 should	 contains\n no tabs or newline characters.\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         This text should contains no tabs or newline characters.\n      ",
   case xqerl_test:string_value(Res) of
             "This text should contains no tabs or newline characters." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space-9'(_Config) ->
   Qry = "fn:normalize-space(\"    \")",
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
'fn-normalize-space-10'(_Config) ->
   Qry = "fn:normalize-space(\" \")",
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
'fn-normalize-space-11'(_Config) ->
   Qry = "fn:normalize-space(\"\")",
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
'fn-normalize-space-12'(_Config) ->
   Qry = "fn:normalize-space(\"	\")",
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
'fn-normalize-space-13'(_Config) ->
   Qry = "fn:normalize-space(\"		\")",
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
'fn-normalize-space-14'(_Config) ->
   Qry = "fn:normalize-space(\"\n\")",
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
'fn-normalize-space-15'(_Config) ->
   Qry = "fn:normalize-space(\"\n\n\")",
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
'fn-normalize-space-16'(_Config) ->
   Qry = "fn:normalize-space(\" 	  	 \")",
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
'fn-normalize-space-17'(_Config) ->
   Qry = "fn:normalize-space(\"   \n \")",
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
'fn-normalize-space-18'(_Config) ->
   Qry = "fn:normalize-space(\"	\n\")",
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
'fn-normalize-space-19'(_Config) ->
   Qry = "fn:normalize-space(\"	12345\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         12345\n      ",
   case xqerl_test:string_value(Res) of
             "12345" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space-20'(_Config) ->
   Qry = "fn:normalize-space(fn:string(\" ABC \"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         ABC\n      ",
   case xqerl_test:string_value(Res) of
             "ABC" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space-21'(_Config) ->
   Qry = "fn:normalize-space(fn:normalize-space(\" ABC\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         ABC\n      ",
   case xqerl_test:string_value(Res) of
             "ABC" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-normalize-space-23'(_Config) ->
   {skip,"Validation Environment"}.
'fn-normalize-space-24'(_Config) ->
   {skip,"Validation Environment"}.
'fn-normalize-space-25'(_Config) ->
   {skip,"Validation Environment"}.
'fn-normalize-space-26'(_Config) ->
   {skip,"Validation Environment"}.
'K-NormalizeSpaceFunc-1'(_Config) ->
   Qry = "normalize-space(\"a string\", \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-NormalizeSpaceFunc-2'(_Config) ->
   Qry = "if(false()) then normalize-space() else true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-NormalizeSpaceFunc-3'(_Config) ->
   Qry = "normalize-space(\"foo\") eq \"foo\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NormalizeSpaceFunc-4'(_Config) ->
   Qry = "normalize-space(\" foo\") eq \"foo\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NormalizeSpaceFunc-5'(_Config) ->
   Qry = "normalize-space(\"foo \") eq \"foo\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NormalizeSpaceFunc-6'(_Config) ->
   Qry = "normalize-space(()) eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NormalizeSpaceFunc-7'(_Config) ->
   Qry = "normalize-space(\"f o o \") eq \"f o o\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NormalizeSpaceFunc-8'(_Config) ->
   Qry = "normalize-space(\" 143 1239 fhjkls \") eq \"143 1239 fhjkls\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NormalizeSpaceFunc-9'(_Config) ->
   Qry = "normalize-space(normalize-space((\"foo\", current-time())[1])) eq \"foo\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
