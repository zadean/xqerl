-module('fn_path_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['path001'/1]).
-export(['path002'/1]).
-export(['path003'/1]).
-export(['path004'/1]).
-export(['path005'/1]).
-export(['path006'/1]).
-export(['path007'/1]).
-export(['path008'/1]).
-export(['path009'/1]).
-export(['path010'/1]).
-export(['path011'/1]).
-export(['path012'/1]).
-export(['path013'/1]).
-export(['path014'/1]).
-export(['path015'/1]).
-export(['path016'/1]).
-export(['path017'/1]).
-export(['path018'/1]).
-export(['path019'/1]).
-export(['path020'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/fn/id/copy.xq") catch _:_ -> ok end,Config.
all() -> [
   'path001',
   'path002',
   'path003',
   'path004',
   'path005',
   'path006',
   'path007',
   'path008',
   'path009',
   'path010',
   'path011',
   'path012',
   'path013',
   'path014',
   'path015',
   'path016',
   'path017',
   'path018',
   'path019',
   'path020'].
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
environment('pathdata') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/path/pathdata.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'path001'(_Config) ->
   Qry = "fn:path(())",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'path002'(_Config) ->
   Qry = "fn:path(/*)",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            /Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path003'(_Config) ->
   Qry = "fn:path((//*:all-of)[1])",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            /Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}result[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}all-of[1]
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}result[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}all-of[1]" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path004'(_Config) ->
   Qry = "fn:path(//*[@name=\"fn-absintg1args-1\"])",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            /Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[4]
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[4]" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path005'(_Config) ->
   Qry = "fn:path((//@idref)[1])",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            /Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}link[1]/@idref
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}link[1]/@idref" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path006'(_Config) ->
   Qry = "fn:path((//*:source)[3]/@xml:id)",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            /Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}environment[3]/Q{http://www.w3.org/2010/09/qt-fots-catalog}source[1]/@Q{http://www.w3.org/XML/1998/namespace}id
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}environment[3]/Q{http://www.w3.org/2010/09/qt-fots-catalog}source[1]/@Q{http://www.w3.org/XML/1998/namespace}id" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path007'(_Config) ->
   Qry = "fn:path((//comment())[2])",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            /Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[2]/Q{http://www.w3.org/2010/09/qt-fots-catalog}description[1]/comment()[1]
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[2]/Q{http://www.w3.org/2010/09/qt-fots-catalog}description[1]/comment()[1]" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path008'(_Config) ->
   Qry = "fn:path(//text()[.='2147483647'][1])",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            /Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[3]/Q{http://www.w3.org/2010/09/qt-fots-catalog}result[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}all-of[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}assert-eq[1]/text()[1]
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[3]/Q{http://www.w3.org/2010/09/qt-fots-catalog}result[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}all-of[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}assert-eq[1]/text()[1]" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path009'(_Config) ->
   Qry = "fn:path(//processing-instruction()[1])",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            /processing-instruction(xml-stylesheet)[1]
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "/processing-instruction(xml-stylesheet)[1]" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path010'(_Config) ->
   Qry = "fn:path(//p)",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            /Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{}p[1]
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{}p[1]" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path011'(_Config) ->
   {skip,"XP30+"}.
'path012'(_Config) ->
   {skip,"XP30+"}.
'path013'(_Config) ->
   {skip,"XP30+"}.
'path014'(_Config) ->
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        fn:path(copy:copy((//employee)[1])/pnum)
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Q{http://www.w3.org/2005/xpath-functions}root()/Q{}pnum[1]
      ",
   case xqerl_test:string_value(Res) of
             "Q{http://www.w3.org/2005/xpath-functions}root()/Q{}pnum[1]" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'path015'(_Config) ->
   Qry = "fn:path(/)",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            /
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "/" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path016'(_Config) ->
   Qry = "fn:path(attribute name {\"fred\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            Q{http://www.w3.org/2005/xpath-functions}root()
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "Q{http://www.w3.org/2005/xpath-functions}root()" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path017'(_Config) ->
   Qry = "fn:path(text{\"fred\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            Q{http://www.w3.org/2005/xpath-functions}root()
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "Q{http://www.w3.org/2005/xpath-functions}root()" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path018'(_Config) ->
   Qry = "fn:path(<a b=\"c\"/>/@b)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            Q{http://www.w3.org/2005/xpath-functions}root()/@b
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "Q{http://www.w3.org/2005/xpath-functions}root()/@b" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path019'(_Config) ->
   Qry = "fn:path(<a><b/><b/></a>/(b[2]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            Q{http://www.w3.org/2005/xpath-functions}root()/Q{}b[2]
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "Q{http://www.w3.org/2005/xpath-functions}root()/Q{}b[2]" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'path020'(_Config) ->
   Qry = "(//*:all-of)[1] ! fn:path()",
   Env = xqerl_test:handle_environment(environment('pathdata')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            /Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}result[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}all-of[1]
            xs:string
         
      ",
 case xqerl_test:string_value(Res) == "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}result[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}all-of[1]" andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
