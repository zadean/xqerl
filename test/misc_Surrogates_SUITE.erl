-module('misc_Surrogates_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['surrogates01'/1]).
-export(['surrogates02'/1]).
-export(['surrogates03'/1]).
-export(['surrogates04'/1]).
-export(['surrogates05'/1]).
-export(['surrogates06'/1]).
-export(['surrogates07'/1]).
-export(['surrogates08'/1]).
-export(['surrogates09'/1]).
-export(['surrogates10'/1]).
-export(['surrogates11'/1]).
-export(['surrogates12'/1]).
-export(['surrogates13'/1]).
-export(['surrogates14'/1]).
-export(['surrogates15'/1]).
-export(['surrogates16'/1]).
-export(['surrogates01a'/1]).
-export(['surrogates02a'/1]).
-export(['surrogates03a'/1]).
-export(['surrogates04a'/1]).
-export(['surrogates05a'/1]).
-export(['surrogates06a'/1]).
-export(['surrogates07a'/1]).
-export(['surrogates08a'/1]).
-export(['surrogates09a'/1]).
-export(['surrogates10a'/1]).
-export(['surrogates11a'/1]).
-export(['surrogates12a'/1]).
-export(['surrogates13a'/1]).
-export(['surrogates14a'/1]).
-export(['surrogates15a'/1]).
-export(['surrogates16a'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'surrogates01',
   'surrogates02',
   'surrogates03',
   'surrogates04',
   'surrogates05',
   'surrogates06',
   'surrogates07',
   'surrogates08',
   'surrogates09',
   'surrogates10',
   'surrogates11',
   'surrogates12',
   'surrogates13',
   'surrogates14',
   'surrogates15',
   'surrogates16',
   'surrogates01a',
   'surrogates02a',
   'surrogates03a',
   'surrogates04a',
   'surrogates05a',
   'surrogates06a',
   'surrogates07a',
   'surrogates08a',
   'surrogates09a',
   'surrogates10a',
   'surrogates11a',
   'surrogates12a',
   'surrogates13a',
   'surrogates14a',
   'surrogates15a',
   'surrogates16a'].
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
'surrogates01'(_Config) ->
   Qry = "string-length(\"abc&#x1D156;def\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         7\n      ",
 Tst = xqerl:run("7"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'surrogates02'(_Config) ->
   Qry = "substring(\"abc&#x1D156;def\", 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         def\n      ",
   case xqerl_test:string_value(Res) of
             "def" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates03'(_Config) ->
   Qry = "substring(\"abc&#x1D156;def\", 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,119126,100,101,102,10,32,32,32,32,32,32],
   case xqerl_test:string_value(Res) of
             [119126,100,101,102] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates04'(_Config) ->
   Qry = "translate(\"abc&#x1D156;def\", \"&#x1D156;\", \"#\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         abc#def\n      ",
   case xqerl_test:string_value(Res) of
             "abc#def" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates05'(_Config) ->
   Qry = "translate(\"abc&#x1D156;def\", \"&#x1D156;de\", \"#DE\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         abc#DEf\n      ",
   case xqerl_test:string_value(Res) of
             "abc#DEf" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates06'(_Config) ->
   Qry = "translate(\"abc&#x1D156;def\", \"def\", \"&#x1D156;EF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,97,98,99,119126,119126,69,70,10,32,32,32,32,32,32],
   case xqerl_test:string_value(Res) of
             [97,98,99,119126,119126,69,70] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates07'(_Config) ->
   Qry = "string-to-codepoints(\"abc&#x1D156;def\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         97 98 99 119126 100 101 102\n      ",
   case xqerl_test:string_value(Res) of
             "97 98 99 119126 100 101 102" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates08'(_Config) ->
   Qry = "codepoints-to-string((97, 98, 99, 119126, 100, 101, 102))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,97,98,99,119126,100,101,102,10,32,32,32,32,32,32],
   case xqerl_test:string_value(Res) of
             [97,98,99,119126,100,101,102] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates09'(_Config) ->
   Qry = "substring-before(\"abc&#x1D156;def\", \"&#x1D156;\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         abc\n      ",
   case xqerl_test:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates10'(_Config) ->
   Qry = "substring-before(\"abc&#x1D156;def\", \"f\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,97,98,99,119126,100,101,10,32,32,32,32,32,32],
   case xqerl_test:string_value(Res) of
             [97,98,99,119126,100,101] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates11'(_Config) ->
   Qry = "substring-after(\"abc&#x1D156;def\", \"&#x1D156;\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         def\n      ",
   case xqerl_test:string_value(Res) of
             "def" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates12'(_Config) ->
   Qry = "matches(\"abc&#x1D157;def\", \"abc[&#x1D156;-&#x1D158;]def\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'surrogates13'(_Config) ->
   Qry = "matches(\"abc&#x1D157;def\", \"abc.def\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'surrogates14'(_Config) ->
   Qry = "replace(\"abc&#119130;def\", \"[&#119120;-&#119135;]\", \"&#119135;\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,97,98,99,119135,100,101,102,10,32,32,32,32,32,32],
   case xqerl_test:string_value(Res) of
             [97,98,99,119135,100,101,102] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates15'(_Config) ->
   Qry = "replace(\"abc&#x1D157;def\", \"[^a-f]\", \"###\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         abc###def\n      ",
   case xqerl_test:string_value(Res) of
             "abc###def" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates16'(_Config) ->
   Qry = "string-to-codepoints(substring(\"&#x10FC00;A\", 2, 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         65\n      ",
 Tst = xqerl:run("65"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'surrogates01a'(_Config) ->
   {skip,"XP20+"}.
'surrogates02a'(_Config) ->
   {skip,"XP20+"}.
'surrogates03a'(_Config) ->
   {skip,"XP20+"}.
'surrogates04a'(_Config) ->
   {skip,"XP20+"}.
'surrogates05a'(_Config) ->
   {skip,"XP20+"}.
'surrogates06a'(_Config) ->
   {skip,"XP20+"}.
'surrogates07a'(_Config) ->
   {skip,"XP20+"}.
'surrogates08a'(_Config) ->
   Qry = "codepoints-to-string((97, 98, 99, 119126, 100, 101, 102))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,97,98,99,119126,100,101,102,10,32,32,32,32,32,32],
   case xqerl_test:string_value(Res) of
             [97,98,99,119126,100,101,102] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'surrogates09a'(_Config) ->
   {skip,"XP20+"}.
'surrogates10a'(_Config) ->
   {skip,"XP20+"}.
'surrogates11a'(_Config) ->
   {skip,"XP20+"}.
'surrogates12a'(_Config) ->
   {skip,"XP20+"}.
'surrogates13a'(_Config) ->
   {skip,"XP20+"}.
'surrogates14a'(_Config) ->
   {skip,"XP20+"}.
'surrogates15a'(_Config) ->
   {skip,"XP20+"}.
'surrogates16a'(_Config) ->
   {skip,"XP20+"}.
