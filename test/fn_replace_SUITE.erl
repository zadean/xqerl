-module('fn_replace_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-replace3args-1'/1]).
-export(['fn-replace3args-2'/1]).
-export(['fn-replace3args-3'/1]).
-export(['fn-replace3args-4'/1]).
-export(['fn-replace3args-5'/1]).
-export(['fn-replace3args-6'/1]).
-export(['fn-replace3args-7'/1]).
-export(['fn-replaceErr-1'/1]).
-export(['fn-replaceErr-2'/1]).
-export(['fn-replaceErr-3'/1]).
-export(['fn-replace-1'/1]).
-export(['fn-replace-2'/1]).
-export(['fn-replace-3'/1]).
-export(['fn-replace-4'/1]).
-export(['fn-replace-5'/1]).
-export(['fn-replace-6'/1]).
-export(['fn-replace-7'/1]).
-export(['fn-replace-8'/1]).
-export(['fn-replace-9'/1]).
-export(['fn-replace-10'/1]).
-export(['fn-replace-11'/1]).
-export(['fn-replace-12'/1]).
-export(['fn-replace-13'/1]).
-export(['fn-replace-14'/1]).
-export(['fn-replace-15'/1]).
-export(['fn-replace-16'/1]).
-export(['fn-replace-17'/1]).
-export(['fn-replace-18'/1]).
-export(['fn-replace-19'/1]).
-export(['fn-replace-20'/1]).
-export(['fn-replace-21'/1]).
-export(['fn-replace-22'/1]).
-export(['fn-replace-23'/1]).
-export(['fn-replace-24'/1]).
-export(['fn-replace-25'/1]).
-export(['fn-replace-26'/1]).
-export(['fn-replace-27'/1]).
-export(['fn-replace-28'/1]).
-export(['fn-replace-29'/1]).
-export(['fn-replace-30'/1]).
-export(['fn-replace-31'/1]).
-export(['fn-replace-32'/1]).
-export(['fn-replace-33'/1]).
-export(['fn-replace-34'/1]).
-export(['fn-replace-35'/1]).
-export(['fn-replace-36'/1]).
-export(['fn-replace-37'/1]).
-export(['fn-replace-38'/1]).
-export(['fn-replace-39'/1]).
-export(['fn-replace-40'/1]).
-export(['fn-replace-41'/1]).
-export(['fn-replace-42'/1]).
-export(['fn-replace-43'/1]).
-export(['fn-replace-44'/1]).
-export(['fn-replace-45'/1]).
-export(['K-ReplaceFunc-1'/1]).
-export(['K-ReplaceFunc-2'/1]).
-export(['K-ReplaceFunc-3'/1]).
-export(['K-ReplaceFunc-4'/1]).
-export(['K-ReplaceFunc-5'/1]).
-export(['K-ReplaceFunc-6'/1]).
-export(['K-ReplaceFunc-7'/1]).
-export(['K-ReplaceFunc-8'/1]).
-export(['K-ReplaceFunc-9'/1]).
-export(['K2-ReplaceFunc-1'/1]).
-export(['K2-ReplaceFunc-2'/1]).
-export(['K2-ReplaceFunc-3'/1]).
-export(['K2-ReplaceFunc-4'/1]).
-export(['K2-ReplaceFunc-5'/1]).
-export(['K2-ReplaceFunc-6'/1]).
-export(['K2-ReplaceFunc-7'/1]).
-export(['K2-ReplaceFunc-8'/1]).
-export(['cbcl-fn-replace-001'/1]).
-export(['cbcl-fn-replace-002'/1]).
-export(['cbcl-fn-replace-003'/1]).
-export(['cbcl-fn-replace-004'/1]).
-export(['cbcl-fn-replace-005'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-replace3args-1',
   'fn-replace3args-2',
   'fn-replace3args-3',
   'fn-replace3args-4',
   'fn-replace3args-5',
   'fn-replace3args-6',
   'fn-replace3args-7',
   'fn-replaceErr-1',
   'fn-replaceErr-2',
   'fn-replaceErr-3',
   'fn-replace-1',
   'fn-replace-2',
   'fn-replace-3',
   'fn-replace-4',
   'fn-replace-5',
   'fn-replace-6',
   'fn-replace-7',
   'fn-replace-8',
   'fn-replace-9',
   'fn-replace-10',
   'fn-replace-11',
   'fn-replace-12',
   'fn-replace-13',
   'fn-replace-14',
   'fn-replace-15',
   'fn-replace-16',
   'fn-replace-17',
   'fn-replace-18',
   'fn-replace-19',
   'fn-replace-20',
   'fn-replace-21',
   'fn-replace-22',
   'fn-replace-23',
   'fn-replace-24',
   'fn-replace-25',
   'fn-replace-26',
   'fn-replace-27',
   'fn-replace-28',
   'fn-replace-29',
   'fn-replace-30',
   'fn-replace-31',
   'fn-replace-32',
   'fn-replace-33',
   'fn-replace-34',
   'fn-replace-35',
   'fn-replace-36',
   'fn-replace-37',
   'fn-replace-38',
   'fn-replace-39',
   'fn-replace-40',
   'fn-replace-41',
   'fn-replace-42',
   'fn-replace-43',
   'fn-replace-44',
   'fn-replace-45',
   'K-ReplaceFunc-1',
   'K-ReplaceFunc-2',
   'K-ReplaceFunc-3',
   'K-ReplaceFunc-4',
   'K-ReplaceFunc-5',
   'K-ReplaceFunc-6',
   'K-ReplaceFunc-7',
   'K-ReplaceFunc-8',
   'K-ReplaceFunc-9',
   'K2-ReplaceFunc-1',
   'K2-ReplaceFunc-2',
   'K2-ReplaceFunc-3',
   'K2-ReplaceFunc-4',
   'K2-ReplaceFunc-5',
   'K2-ReplaceFunc-6',
   'K2-ReplaceFunc-7',
   'K2-ReplaceFunc-8',
   'cbcl-fn-replace-001',
   'cbcl-fn-replace-002',
   'cbcl-fn-replace-003',
   'cbcl-fn-replace-004',
   'cbcl-fn-replace-005'].
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
'fn-replace3args-1'(_Config) ->
   Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         This is a characte
      ",
   case xqerl_types:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace3args-2'(_Config) ->
   Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         This is a characte
      ",
   case xqerl_types:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace3args-3'(_Config) ->
   Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         This is a characte
      ",
   case xqerl_types:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace3args-4'(_Config) ->
   Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         This is a characte
      ",
   case xqerl_types:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace3args-5'(_Config) ->
   Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         This is a characte
      ",
   case xqerl_types:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace3args-6'(_Config) ->
   Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         This is a characte
      ",
   case xqerl_types:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace3args-7'(_Config) ->
   Qry = "fn:replace(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         This is a characte
      ",
   case xqerl_types:string_value(Res) of
             "This is a characte" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replaceErr-1'(_Config) ->
   Qry = "fn:replace(\"abracadabra\", \"bra\", \"*\", \"p\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0001'}) end.
'fn-replaceErr-2'(_Config) ->
   Qry = "fn:replace(\"abracadabra\", \"bra\", \"\\\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0004'}) end.
'fn-replaceErr-3'(_Config) ->
   Qry = "fn:replace(\"abracadabra\", \"bra\", \"$y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0004'}) end.
'fn-replace-1'(_Config) ->
   Qry = "replace(\"abracadabra\", \"bra\", \"*\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a*cada*
      ",
   case xqerl_types:string_value(Res) of
             "a*cada*" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-2'(_Config) ->
   Qry = "replace(\"abracadabra\", \"a.*a\", \"*\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         *
      ",
   case xqerl_types:string_value(Res) of
             "*" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-3'(_Config) ->
   Qry = "replace(\"abracadabra\", \"a.*?a\", \"*\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         *c*bra
      ",
   case xqerl_types:string_value(Res) of
             "*c*bra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-4'(_Config) ->
   Qry = "replace(\"abracadabra\", \"a\", \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         brcdbr
      ",
   case xqerl_types:string_value(Res) of
             "brcdbr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-5'(_Config) ->
   Qry = "replace(\"abracadabra\", \"a(.)\", \"a$1$1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abbraccaddabbra
      ",
   case xqerl_types:string_value(Res) of
             "abbraccaddabbra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-6'(_Config) ->
   Qry = "replace(\"abracadabra\", \".*?\", \"$1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0003'}) end.
'fn-replace-7'(_Config) ->
   Qry = "replace(\"AAAA\", \"A+\", \"b\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         b
      ",
   case xqerl_types:string_value(Res) of
             "b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-8'(_Config) ->
   Qry = "replace(\"AAAA\", \"A+?\", \"b\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         bbbb
      ",
   case xqerl_types:string_value(Res) of
             "bbbb" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-9'(_Config) ->
   Qry = "replace(\"darted\", \"^(.*?)d(.*)$\", \"$1c$2\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         carted
      ",
   case xqerl_types:string_value(Res) of
             "carted" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-10'(_Config) ->
   Qry = "fn:replace(\"abcd\", \"(ab)|(a)\", \"[1=$1][2=$2]\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         [1=ab][2=]cd
      ",
   case xqerl_types:string_value(Res) of
             "[1=ab][2=]cd" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-11'(_Config) ->
   Qry = "fn:count(fn:replace((), \"bra\", \"*\"))",
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
'fn-replace-12'(_Config) ->
   Qry = "replace(\"abracadabra\", \"bra\", \"*\", \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a*cada*
      ",
   case xqerl_types:string_value(Res) of
             "a*cada*" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-13'(_Config) ->
   Qry = "fn:replace(\"abracadabra?abracadabra\", \"\\?\", \"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-14'(_Config) ->
   Qry = "fn:replace(\"abracadabra*abracadabra\", \"\\*\", \"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-15'(_Config) ->
   Qry = "fn:replace(\"abracadabra+abracadabra\", \"\\+\", \"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-16'(_Config) ->
   Qry = "fn:replace(\"abracadabra{abracadabra\", \"\\{\", \"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-17'(_Config) ->
   Qry = "fn:replace(\"abracadabra}abracadabra\", \"\\}\", \"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-18'(_Config) ->
   Qry = "fn:replace(\"abracadabra(abracadabra\", \"\\(\", \"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-19'(_Config) ->
   Qry = "fn:replace(\"abracadabra)abracadabra\", \"\\)\", \"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-20'(_Config) ->
   Qry = "fn:replace(\"abracadabra[abracadabra\", \"\\[\", \"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-21'(_Config) ->
   Qry = "fn:replace(\"abracadabra]abracadabra\", \"\\]\", \"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-22'(_Config) ->
   Qry = "fn:replace(\"abracadabra-abracadabra\", \"\\-\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-23'(_Config) ->
   Qry = "fn:replace(\"abracadabra.abracadabra\", \"\\.\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-24'(_Config) ->
   Qry = "fn:replace(\"abracadabra|abracadabra\", \"\\|\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-25'(_Config) ->
   Qry = "fn:replace(\"abracadabra\\abracadabra\", \"\\\\\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-26'(_Config) ->
   Qry = "fn:replace(\"abracadabra	abracadabra\", \"\\t\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-27'(_Config) ->
   Qry = "fn:replace(\"abracadabra
abracadabra\", \"\\n\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-28'(_Config) ->
   Qry = "fn:replace(\"abracadabraabracadabra\", \"aa{1}\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrwithbracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrwithbracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-29'(_Config) ->
   Qry = "fn:replace(\"abracadabraabracadabraabracadabra\", \"aa{1,}\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrwithbracadabrwithbracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrwithbracadabrwithbracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-30'(_Config) ->
   Qry = "fn:replace(\"abracadabraabracadabraabracadabra\", \"aa{1,2}\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrwithbracadabrwithbracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrwithbracadabrwithbracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-31'(_Config) ->
   Qry = "fn:replace(\"abracadabra^abracadabra\", \"\\^\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabrawithabracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabrawithabracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-32'(_Config) ->
   Qry = "fn:replace(\"abracadabra\", \"^a\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         withbracadabra
      ",
   case xqerl_types:string_value(Res) of
             "withbracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-33'(_Config) ->
   Qry = "fn:replace(\"abracadabra\", \"ww\",\"with\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-34'(_Config) ->
   {skip,"XP30+"}.
'fn-replace-35'(_Config) ->
   {skip,"XP30+"}.
'fn-replace-36'(_Config) ->
   {skip,"XP30+"}.
'fn-replace-37'(_Config) ->
   Qry = "fn:replace(\"abracadabra\", \"a\", \"\\$\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         $br$c$d$br$
      ",
   case xqerl_types:string_value(Res) of
             "$br$c$d$br$" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-38'(_Config) ->
   Qry = "fn:replace(\"abracadabra\", \"(a)\", \"\\$$1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         $abr$ac$ad$abr$a
      ",
   case xqerl_types:string_value(Res) of
             "$abr$ac$ad$abr$a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-39'(_Config) ->
   Qry = "fn:replace(\"abracadabra\", \"a\", \"\\\\\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \\br\\c\\d\\br\\
      ",
   case xqerl_types:string_value(Res) of
             "\\br\\c\\d\\br\\" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-40'(_Config) ->
   Qry = "fn:replace(\"abracadabra\", \"((((( ((((( (((((a))))) ))))) )))))\", \"|$1$15|\", \"x\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         |aa|br|aa|c|aa|d|aa|br|aa|
      ",
   case xqerl_types:string_value(Res) of
             "|aa|br|aa|c|aa|d|aa|br|aa|" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-41'(_Config) ->
   Qry = "fn:replace(\"abracadabra\", \"((((( ((((( (((((a))))) ))))) )))))\", \"$1520\", \"x\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a20bra20ca20da20bra20
      ",
   case xqerl_types:string_value(Res) of
             "a20bra20ca20da20bra20" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-42'(_Config) ->
   Qry = "fn:replace(\"abracadabra\", \"((((( ((((( (((((a)(b))))) ))))) )))))\", \"($14.$15.$16.$17)\", \"x\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         (ab.a.b.ab7)racad(ab.a.b.ab7)ra
      ",
   case xqerl_types:string_value(Res) of
             "(ab.a.b.ab7)racad(ab.a.b.ab7)ra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-replace-43'(_Config) ->
   Qry = "fn:replace(concat('Mary', codepoints-to-string(13), 'Jones'), 'Mary.Jones', 'Jacob Jones')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	concat('Mary', codepoints-to-string(13), 'Jones')
      ",
 Tst = xqerl:run("concat('Mary', codepoints-to-string(13), 'Jones')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-replace-44'(_Config) ->
   Qry = "fn:replace(concat('Mary', codepoints-to-string(13), 'Jones'), 'Mary.Jones', 'Jacob Jones', 's')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	'Jacob Jones'
      ",
 Tst = xqerl:run("'Jacob Jones'"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-replace-45'(_Config) ->
   Qry = "replace(\"Now, let's SEND OUT for QUICHE!!\", \"[A-Z][A-Z]+\", \"$0$0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	\"Now, let's SENDSEND OUTOUT for QUICHEQUICHE!!\"
      ",
 Tst = xqerl:run("\"Now, let's SENDSEND OUTOUT for QUICHEQUICHE!!\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-ReplaceFunc-1'(_Config) ->
   Qry = "replace(\"input\", \"pattern\", \"replacement\", \" \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0001'}) end.
'K-ReplaceFunc-2'(_Config) ->
   Qry = "replace(\"input\", (), \"replacement\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-ReplaceFunc-3'(_Config) ->
   Qry = "replace(\"input\", \"pattern\", ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-ReplaceFunc-4'(_Config) ->
   Qry = "replace(\"input\", \"pattern\", \"replacement\", \"X\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0001'}) end.
'K-ReplaceFunc-5'(_Config) ->
   Qry = "replace(\"input\", \"pattern\", \"replacement\", \"\", ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ReplaceFunc-6'(_Config) ->
   Qry = "replace(\"input\", \"in\", \"thisIsInvalid\\\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0004'}) end.
'K-ReplaceFunc-7'(_Config) ->
   Qry = "replace(\"input\", \"(input)\", \"thisIsInvalid$\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0004'}) end.
'K-ReplaceFunc-8'(_Config) ->
   Qry = "replace(\"input\", \"in\", \"thisIsInvalid\\ \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0004'}) end.
'K-ReplaceFunc-9'(_Config) ->
   Qry = "replace(\"input\", \"in\", \"thisIsInvalid$ \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0004'}) end.
'K2-ReplaceFunc-1'(_Config) ->
   Qry = "replace(\"a a a \", \"(a )\", \"replacment: \\1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0004'}) end.
'K2-ReplaceFunc-2'(_Config) ->
   Qry = "replace(\"a a a \", \"(a )\", \"replacment: \\1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0004'}) end.
'K2-ReplaceFunc-3'(_Config) ->
   Qry = "replace(\"abcd\", \"(a)\\2(b)\", \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
'K2-ReplaceFunc-4'(_Config) ->
   Qry = "replace(\"abcd\", \"(asd)[\\1]\", \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
'K2-ReplaceFunc-5'(_Config) ->
   Qry = "replace(\"abcd\", \"(asd)[asd\\1]\", \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
'K2-ReplaceFunc-6'(_Config) ->
   Qry = "replace(\"abcd\", \"(asd)[asd\\0]\", \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
'K2-ReplaceFunc-7'(_Config) ->
   Qry = "replace(\"abcd\", \"1[asd\\0]\", \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
'K2-ReplaceFunc-8'(_Config) ->
   Qry = "declare function local:doReplace($input as xs:string?, $pattern as xs:string, $replacement as xs:string) as xs:string { fn:replace($input, $pattern, $replacement) }; <result> <para>{fn:replace(\"ThiY Ybcd.\", \"Y\", \"Q\")}</para> <para>{local:doReplace(\"ThiY iY a abYY.\", \"Y\", \"Q\")}</para> </result>, fn:replace(\"ThiY abcdY.\", \"Y\", \"Q\"), local:doReplace(\"ThiY iY a abYY.\", \"Y\", \"Q\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <result><para>ThiQ Qbcd.</para><para>ThiQ iQ a abQQ.</para></result>ThiQ abcdQ. ThiQ iQ a abQQ.
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result><para>ThiQ Qbcd.</para><para>ThiQ iQ a abQQ.</para></result>ThiQ abcdQ. ThiQ iQ a abQQ."++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result><para>ThiQ Qbcd.</para><para>ThiQ iQ a abQQ.</para></result>ThiQ abcdQ. ThiQ iQ a abQQ." of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'cbcl-fn-replace-001'(_Config) ->
   Qry = "
      boolean(replace(if(exists((1 to 10)[. mod 2 = 0])) then \"blah\" else (),\"a\",\"e\",\"m\"))
   ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-fn-replace-002'(_Config) ->
   Qry = "replace(\"a\",\"\",\"b\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0003'}) end.
'cbcl-fn-replace-003'(_Config) ->
   Qry = "
        replace(string-join(for $x in (1 to 10)[. mod 2 = 0] return string($x),\",\"),\"\",\"c\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0003'}) end.
'cbcl-fn-replace-004'(_Config) ->
   Qry = "
        replace(string-join(for $x in (1 to 10)[. mod 2 = 0] return string($x),\",\"),\"\",\"c\",\"m\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0003'}) end.
'cbcl-fn-replace-005'(_Config) ->
   Qry = "
        replace(string-join(for $x in (1 to 10)[. mod 2 = 0] return string($x),\",\"),\"\",\"c\",\"m\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0003'}) end.
