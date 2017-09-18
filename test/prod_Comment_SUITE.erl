-module('prod_Comment_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['XQueryComment001'/1]).
-export(['XQueryComment002'/1]).
-export(['XQueryComment003'/1]).
-export(['XQueryComment004'/1]).
-export(['XQueryComment005'/1]).
-export(['XQueryComment006'/1]).
-export(['XQueryComment007'/1]).
-export(['XQueryComment008'/1]).
-export(['XQueryComment009'/1]).
-export(['XQueryComment010'/1]).
-export(['XQueryComment011'/1]).
-export(['XQueryComment012'/1]).
-export(['XQueryComment013'/1]).
-export(['XQueryComment014'/1]).
-export(['XQueryComment015'/1]).
-export(['XQueryComment016'/1]).
-export(['XQueryComment017'/1]).
-export(['XQueryComment018'/1]).
-export(['XQueryComment019'/1]).
-export(['XQueryComment020'/1]).
-export(['K-XQueryComment-1'/1]).
-export(['K-XQueryComment-2'/1]).
-export(['K-XQueryComment-3'/1]).
-export(['K-XQueryComment-4'/1]).
-export(['K-XQueryComment-5'/1]).
-export(['K-XQueryComment-6'/1]).
-export(['K-XQueryComment-7'/1]).
-export(['K-XQueryComment-8'/1]).
-export(['K-XQueryComment-9'/1]).
-export(['K-XQueryComment-10'/1]).
-export(['K-XQueryComment-11'/1]).
-export(['K-XQueryComment-12'/1]).
-export(['K-XQueryComment-13'/1]).
-export(['K-XQueryComment-14'/1]).
-export(['K-XQueryComment-15'/1]).
-export(['K-XQueryComment-16'/1]).
-export(['K-XQueryComment-17'/1]).
-export(['K-XQueryComment-18'/1]).
-export(['K-XQueryComment-19'/1]).
-export(['K-XQueryComment-20'/1]).
-export(['K2-XQueryComment-1'/1]).
-export(['K2-XQueryComment-2'/1]).
-export(['K2-XQueryComment-3'/1]).
-export(['K2-XQueryComment-4'/1]).
-export(['K2-XQueryComment-5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'XQueryComment001',
   'XQueryComment002',
   'XQueryComment003',
   'XQueryComment004',
   'XQueryComment005',
   'XQueryComment006',
   'XQueryComment007',
   'XQueryComment008',
   'XQueryComment009',
   'XQueryComment010',
   'XQueryComment011',
   'XQueryComment012',
   'XQueryComment013',
   'XQueryComment014',
   'XQueryComment015',
   'XQueryComment016',
   'XQueryComment017',
   'XQueryComment018',
   'XQueryComment019',
   'XQueryComment020',
   'K-XQueryComment-1',
   'K-XQueryComment-2',
   'K-XQueryComment-3',
   'K-XQueryComment-4',
   'K-XQueryComment-5',
   'K-XQueryComment-6',
   'K-XQueryComment-7',
   'K-XQueryComment-8',
   'K-XQueryComment-9',
   'K-XQueryComment-10',
   'K-XQueryComment-11',
   'K-XQueryComment-12',
   'K-XQueryComment-13',
   'K-XQueryComment-14',
   'K-XQueryComment-15',
   'K-XQueryComment-16',
   'K-XQueryComment-17',
   'K-XQueryComment-18',
   'K-XQueryComment-19',
   'K-XQueryComment-20',
   'K2-XQueryComment-1',
   'K2-XQueryComment-2',
   'K2-XQueryComment-3',
   'K2-XQueryComment-4',
   'K2-XQueryComment-5'].
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
environment('fsx_NS') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/ForClause/fsx_NS.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/filesystem","fs"}]},
{resources, []},
{modules, []}
];
environment('TreeEmpty') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/AxisStep/TreeEmpty.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'XQueryComment001'(_Config) ->
   Qry = "(: Name: XQueryComment001 :)\n(: Description: Simple use case for XQuery comments :)\n\n\n(: This is a comment :)\n<result/>\n\n",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <result/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'XQueryComment002'(_Config) ->
   Qry = "(: Name: XQueryComment002 :)\n(: Description: Simple use case for XQuery comments :)\n\n\n\n\n(: This is a comment :)\n(//fs:Folder)[1]/fs:File[1]/fs:FileName\n",
   Env = xqerl_test:handle_environment(environment('fsx_NS')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <fs:FileName xmlns:fs=\"http://www.example.com/filesystem\">File00000000000</fs:FileName>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<fs:FileName xmlns:fs=\"http://www.example.com/filesystem\">File00000000000</fs:FileName>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<fs:FileName xmlns:fs=\"http://www.example.com/filesystem\">File00000000000</fs:FileName>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'XQueryComment003'(_Config) ->
   Qry = "(: Name: XQueryComment003 :)\n(: Description: Simple use case for XQuery comment containing '-' :)\n\n\n(:This is a comment-:)\n<result/>\n",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <result/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'XQueryComment004'(_Config) ->
   Qry = "(: Name: XQueryComment004 :)\n(: Description: Empty comment :)\n\n\n(::)\n<result/>\n",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <result/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'XQueryComment005'(_Config) ->
   Qry = "(: Name: XQueryComment004 :)\n(: Description: Comment containing only '-' :)\n\n\n(:-:)\n<result/>\n",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <result/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'XQueryComment006'(_Config) ->
   Qry = "(: Name: XQueryComment006 :)\n(: Description: Comment containing ':' :)\n\n\n(: this is a comment ::)\n<result/>\n",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <result/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'XQueryComment007'(_Config) ->
   Qry = "(: Name: XQueryComment007 :)\n(: Description: Comment containing ')' :)\n\n\n(: this is a comment ):)\n<result/>\n",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <result/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'XQueryComment008'(_Config) ->
   Qry = "(: Name: XQueryComment008 :)\n(: Description: Simple example of embedded comments :)\n\n\n(: this is a comment (: this is an embedded comment :):)\n<result/>\n",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <result/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'XQueryComment009'(_Config) ->
   Qry = "(: Name: XQueryComment009 :)\n(: Description: Comments inside a conditional expression :)\n\n\n\nif (:test (: yada (: neato :) :) :) (/fs:MyComputer) \n   then (: yada :) \"true\"\n   else \"false\"\n",
   Env = xqerl_test:handle_environment(environment('fsx_NS')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true\n      ",
   case xqerl_test:string_value(Res) of
             "true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'XQueryComment010'(_Config) ->
   Qry = "\n(: Name: XQueryComment010 :)\n(: Description: Comments inside a conditional expression :)\nif (: comment :) \n  ( //fs:Folder[1]/fs:FolderName/text() = \"Folder00000000000\" ) \nthen (: this is the then case :) ( true() )\nelse (: this is the else case :) ( false() )\n\n",
   Env = xqerl_test:handle_environment(environment('fsx_NS')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'XQueryComment011'(_Config) ->
   Qry = "(: Name: XQueryComment011 :)\n(: Description: Comments inside a conditional expression :)\n\n\n\nif (:test:)(:t2:)(:t3:) (/fs:MyComputer) \n   then \"true\"\n   else \"false\"\n\n",
   Env = xqerl_test:handle_environment(environment('fsx_NS')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true\n      ",
   case xqerl_test:string_value(Res) of
             "true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'XQueryComment012'(_Config) ->
   Qry = "(: Name: XQueryComment012 :)\n(: Description: Comments that looks like a function call :)\n\n\n/south(: test :)\n\n",
   Env = xqerl_test:handle_environment(environment('TreeEmpty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <south mark=\"s0\" />\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<south mark=\"s0\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<south mark=\"s0\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'XQueryComment013'(_Config) ->
   Qry = "(: Name: XQueryComment013 :)\n(: Description: Comments inside a sequence expression :)\n\n\n(1, 2, (: comment :) 3, 4)\n\n",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1 2 3 4\n      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'XQueryComment014'(_Config) ->
   Qry = "(: Name: XQueryComment014 :)\n(: Description: Comments inside a cast expression :)\n\n\n\"10\" cast as (: type comment :) xs:integer ?\n\n",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         10\n      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'XQueryComment015'(_Config) ->
   Qry = "(: Name: XQueryComment015 :)\n(: Description: Incorrect comment syntax :)\n\n\n(! Wrong syntax :)\n<empty/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'XQueryComment016'(_Config) ->
   Qry = "(: Name: XQueryComment016 :)\n(: Description: Invalid comment :)\n\n\n(:)\n<empty/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'XQueryComment017'(_Config) ->
   Qry = "(: Name: XQueryComment017 :)\n(: Description: Invalid comment :)\n\n\n(:: )\n<empty/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'XQueryComment018'(_Config) ->
   Qry = "(: Name: XQueryComment018 :)\n(: Description: Invalid comment :)\n\n\n-- Wrong comment format\n<empty/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'XQueryComment019'(_Config) ->
   Qry = "(: Name: XQueryComment019 :)\n(: Description: Old style comment syntax :)\n\n\n{-- Wrong comment format --}\n<empty/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'XQueryComment020'(_Config) ->
   Qry = "(: Name: XQueryComment020 :)\n(: Description: Comment containing an enclosed expression :)\n\n\n(: { \"comment\" } :)\n<result/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <result/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K-XQueryComment-1'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-1                               :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A test whose essence is: `(3(: comment inbetween :)- 1) eq 2`. :)\n(:*******************************************************:)\n(3(: comment inbetween :)- 1) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-2'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-2                               :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A test whose essence is: `1 (: a (: nested :) comment :) eq 1`. :)\n(:*******************************************************:)\n1 (: a (: nested :) comment :) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-3'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-3                               :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A test whose essence is: `1 (: comment (: inside :) comment :) eq 1`. :)\n(:*******************************************************:)\n1 (: comment (: inside :) comment :) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-4'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-4                               :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: Comparison of two string literals, whose content reminds of comments. :)\n(:*******************************************************:)\n\"reminds of a comment :)\" eq\n          \"reminds of a comment :)\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-5'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-5                               :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A test whose essence is: `5 instance (: strange place for a comment :) of item()`. :)\n(:*******************************************************:)\n5 instance (: strange place for a comment :) of item()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-6'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-6                               :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A test whose essence is: `1 (: simple comment :) eq 1`. :)\n(:*******************************************************:)\n1 (: simple comment :) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-7'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-7                               :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A test whose essence is: `1 (: comment (: inside :) NEW LINE comment :) eq 1`. :)\n(:*******************************************************:)\n1 (: comment (: inside :)\n            NEW LINE comment :) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-8'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-8                               :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A test whose essence is: `(: \"recursive comments must be balanced, this one is not :)\" :)`. :)\n(:*******************************************************:)\n(: \"recursive comments must be \n   balanced, this one is not :)\" :)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-XQueryComment-9'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-9                               :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: An empty comment inbetween the 'eq' operator and a number literal. :)\n(:*******************************************************:)\n1 eq (::)1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-10'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-10                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: An empty comment at the very beginning of an expression. :)\n(:*******************************************************:)\n(::) 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-11'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-11                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: An empty comment after a function's paranteses. :)\n(:*******************************************************:)\ntrue()(::)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-12'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-12                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A for loop with a comment inbetween.         :)\n(:*******************************************************:)\nfor (: set up loop :) $i in 3 return $i eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-13'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-13                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A test whose essence is: `if((: comment inbetween :)) then 1 else 1`. :)\n(:*******************************************************:)\nif((: comment inbetween :)) then 1 else 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-XQueryComment-14'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-14                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A syntactically invalid comment that never ends. :)\n(:*******************************************************:)\n1(: this comment does not end:",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-XQueryComment-15'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-15                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A comment inside a comment that isn't terminated. :)\n(:*******************************************************:)\n1(: content (: this comment does not end :)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-XQueryComment-16'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-16                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A comment inside a comment that does not start properly. :)\n(:*******************************************************:)\n1(: content this comment does not start properly :) :)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-XQueryComment-17'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-17                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: Colons and paranteses appearing freely in comment content. :)\n(:*******************************************************:)\n1(: ((( : )) ))ladl:  :(): ()()(dahsi ()()( dad: ) :) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-18'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-18                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: Three comments appearing serially inside a comment. :)\n(:*******************************************************:)\n1(: (:one comment:) content (:another comment:) content (:a third:):)\n            eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-19'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-19                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A test stressing many nested comments.       :)\n(:*******************************************************:)\n1(:(:(:(:(:(:(:(::):):):):):):):) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-XQueryComment-20'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K-XQueryComment-20                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:22+01:00                       :)\n(: Purpose: A syntactically invalid comment that doesn't properly start. :)\n(:*******************************************************:)\n: :) 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-XQueryComment-1'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K2-XQueryComment-1                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:21+01:00                       :)\n(: Purpose: An invalid comment after a name test.        :)\n(:*******************************************************:)\nlet $i := <e>\n                                            <b/>\n                                            <b/>\n                                            <b/>\n                                        </e>\n                              return $i/b(:  ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-XQueryComment-2'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K2-XQueryComment-2                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:21+01:00                       :)\n(: Purpose: An invalid comment after a name test(#2).    :)\n(:*******************************************************:)\nlet $i := <e>\n                                            <b/>\n                                            <b/>\n                                            <b/>\n                                        </e>\n                              return $i/b(: some : content (:some content  ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-XQueryComment-3'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K2-XQueryComment-3                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:21+01:00                       :)\n(: Purpose: Have a computed comment constructor as a last step. :)\n(:*******************************************************:)\nlet $i := <e>\n                                            <b/>\n                                            <b/>\n                                            <b/>\n                                        </e>\n                                        return $i/b/comment(: some : content (:some content:):){\"content\"}  ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <!--content--><!--content--><!--content-->\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--content--><!--content--><!--content-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--content--><!--content--><!--content-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-XQueryComment-4'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K2-XQueryComment-4                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:21+01:00                       :)\n(: Purpose: Have a direct comment constructor as a last step. :)\n(:*******************************************************:)\nlet $i := <e>\n                                            <b/>\n                                            <b/>\n                                            <b/>\n                                        </e>\n                                        return $i/(: some : content (:some content:):)<!--content-->  ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <!--content-->\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--content-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--content-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-XQueryComment-5'(_Config) ->
   Qry = "(:*******************************************************:)\n(: Test: K2-XQueryComment-5                              :)\n(: Written by: Frans Englich                             :)\n(: Date: 2007-11-22T11:31:21+01:00                       :)\n(: Purpose: Have a direct comment constructor as a last step(#2). :)\n(:*******************************************************:)\nlet $i := <e>\n                                            <b/>\n                                            <b/>\n                                            <b/>\n                                        </e>\n                                        return $i/b/(: some : content (:some content:):)<!--content-->  ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <!--content--><!--content--><!--content-->\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!--content--><!--content--><!--content-->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!--content--><!--content--><!--content-->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
