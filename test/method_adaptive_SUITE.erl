-module('method_adaptive_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Serialization-adaptive-01'/1]).
-export(['Serialization-adaptive-02'/1]).
-export(['Serialization-adaptive-03'/1]).
-export(['Serialization-adaptive-04'/1]).
-export(['Serialization-adaptive-05'/1]).
-export(['Serialization-adaptive-06'/1]).
-export(['Serialization-adaptive-07'/1]).
-export(['Serialization-adaptive-08'/1]).
-export(['Serialization-adaptive-09'/1]).
-export(['Serialization-adaptive-10'/1]).
-export(['Serialization-adaptive-11'/1]).
-export(['Serialization-adaptive-12'/1]).
-export(['Serialization-adaptive-13'/1]).
-export(['Serialization-adaptive-14'/1]).
-export(['Serialization-adaptive-15'/1]).
-export(['Serialization-adaptive-16'/1]).
-export(['Serialization-adaptive-17'/1]).
-export(['Serialization-adaptive-18'/1]).
-export(['Serialization-adaptive-19'/1]).
-export(['Serialization-adaptive-20'/1]).
-export(['Serialization-adaptive-21'/1]).
-export(['Serialization-adaptive-22'/1]).
-export(['Serialization-adaptive-23'/1]).
-export(['Serialization-adaptive-24'/1]).
-export(['Serialization-adaptive-25'/1]).
-export(['Serialization-adaptive-26'/1]).
-export(['Serialization-adaptive-27'/1]).
-export(['Serialization-adaptive-28'/1]).
-export(['Serialization-adaptive-29'/1]).
-export(['Serialization-adaptive-30'/1]).
-export(['Serialization-adaptive-31'/1]).
-export(['Serialization-adaptive-32'/1]).
-export(['Serialization-adaptive-33'/1]).
-export(['Serialization-adaptive-34'/1]).
-export(['Serialization-adaptive-35'/1]).
-export(['Serialization-adaptive-36'/1]).
-export(['Serialization-adaptive-37'/1]).
-export(['Serialization-adaptive-38'/1]).
-export(['Serialization-adaptive-39'/1]).
-export(['Serialization-adaptive-40'/1]).
-export(['Serialization-adaptive-41'/1]).
-export(['Serialization-adaptive-42'/1]).
-export(['Serialization-adaptive-43'/1]).
-export(['Serialization-adaptive-44'/1]).
-export(['Serialization-adaptive-45'/1]).
-export(['Serialization-adaptive-46'/1]).
-export(['Serialization-adaptive-47'/1]).
-export(['Serialization-adaptive-48'/1]).
-export(['Serialization-adaptive-49'/1]).
-export(['Serialization-adaptive-50'/1]).
-export(['Serialization-adaptive-51'/1]).
-export(['Serialization-adaptive-52'/1]).
-export(['Serialization-adaptive-53'/1]).
-export(['Serialization-adaptive-54'/1]).
-export(['Serialization-adaptive-55'/1]).
-export(['Serialization-adaptive-56'/1]).
-export(['Serialization-adaptive-57'/1]).
-export(['Serialization-adaptive-58'/1]).
-export(['Serialization-adaptive-59'/1]).
-export(['Serialization-adaptive-60'/1]).
-export(['Serialization-adaptive-61'/1]).
-export(['Serialization-adaptive-62'/1]).
-export(['Serialization-adaptive-63'/1]).
-export(['Serialization-adaptive-64'/1]).
-export(['Serialization-adaptive-65'/1]).
-export(['Serialization-adaptive-66'/1]).
-export(['Serialization-adaptive-67'/1]).
-export(['Serialization-adaptive-68'/1]).
-export(['Serialization-adaptive-69'/1]).
-export(['Serialization-adaptive-70'/1]).
-export(['Serialization-adaptive-71'/1]).
-export(['Serialization-adaptive-72'/1]).
-export(['Serialization-adaptive-73'/1]).
-export(['Serialization-adaptive-74'/1]).
-export(['Serialization-adaptive-75'/1]).
-export(['Serialization-adaptive-76'/1]).
-export(['Serialization-adaptive-77'/1]).
-export(['Serialization-adaptive-78'/1]).
-export(['Serialization-adaptive-79'/1]).
-export(['Serialization-adaptive-80'/1]).
-export(['Serialization-adaptive-81'/1]).
-export(['Serialization-adaptive-82'/1]).
-export(['Serialization-adaptive-83'/1]).
-export(['Serialization-adaptive-84'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Serialization-adaptive-01',
   'Serialization-adaptive-02',
   'Serialization-adaptive-03',
   'Serialization-adaptive-04',
   'Serialization-adaptive-05',
   'Serialization-adaptive-06',
   'Serialization-adaptive-07',
   'Serialization-adaptive-08',
   'Serialization-adaptive-09',
   'Serialization-adaptive-10',
   'Serialization-adaptive-11',
   'Serialization-adaptive-12',
   'Serialization-adaptive-13',
   'Serialization-adaptive-14',
   'Serialization-adaptive-15',
   'Serialization-adaptive-16',
   'Serialization-adaptive-17',
   'Serialization-adaptive-18',
   'Serialization-adaptive-19',
   'Serialization-adaptive-20',
   'Serialization-adaptive-21',
   'Serialization-adaptive-22',
   'Serialization-adaptive-23',
   'Serialization-adaptive-24',
   'Serialization-adaptive-25',
   'Serialization-adaptive-26',
   'Serialization-adaptive-27',
   'Serialization-adaptive-28',
   'Serialization-adaptive-29',
   'Serialization-adaptive-30',
   'Serialization-adaptive-31',
   'Serialization-adaptive-32',
   'Serialization-adaptive-33',
   'Serialization-adaptive-34',
   'Serialization-adaptive-35',
   'Serialization-adaptive-36',
   'Serialization-adaptive-37',
   'Serialization-adaptive-38',
   'Serialization-adaptive-39',
   'Serialization-adaptive-40',
   'Serialization-adaptive-41',
   'Serialization-adaptive-42',
   'Serialization-adaptive-43',
   'Serialization-adaptive-44',
   'Serialization-adaptive-45',
   'Serialization-adaptive-46',
   'Serialization-adaptive-47',
   'Serialization-adaptive-48',
   'Serialization-adaptive-49',
   'Serialization-adaptive-50',
   'Serialization-adaptive-51',
   'Serialization-adaptive-52',
   'Serialization-adaptive-53',
   'Serialization-adaptive-54',
   'Serialization-adaptive-55',
   'Serialization-adaptive-56',
   'Serialization-adaptive-57',
   'Serialization-adaptive-58',
   'Serialization-adaptive-59',
   'Serialization-adaptive-60',
   'Serialization-adaptive-61',
   'Serialization-adaptive-62',
   'Serialization-adaptive-63',
   'Serialization-adaptive-64',
   'Serialization-adaptive-65',
   'Serialization-adaptive-66',
   'Serialization-adaptive-67',
   'Serialization-adaptive-68',
   'Serialization-adaptive-69',
   'Serialization-adaptive-70',
   'Serialization-adaptive-71',
   'Serialization-adaptive-72',
   'Serialization-adaptive-73',
   'Serialization-adaptive-74',
   'Serialization-adaptive-75',
   'Serialization-adaptive-76',
   'Serialization-adaptive-77',
   'Serialization-adaptive-78',
   'Serialization-adaptive-79',
   'Serialization-adaptive-80',
   'Serialization-adaptive-81',
   'Serialization-adaptive-82',
   'Serialization-adaptive-83',
   'Serialization-adaptive-84'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'Serialization-adaptive-01'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        [ ] 

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\\[\\]$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-02'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        map { } 

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^map\\{\\}$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-03'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        ()

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-04'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        5

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^5$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-05'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        \"simple string\"

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"simple string\"$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-06'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        document { element test {\"content\"}}

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^&lt;test&gt;content&lt;/test&gt;$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-07'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        element test {\"content\"}

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^&lt;test&gt;content&lt;/test&gt;$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-08'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        <test>content</test>/text()

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^content$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-09'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        <!--comment-->

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^&lt;!--comment--&gt;$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-10'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        <?target instruction ?>

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^&lt;\\?target instruction \\?&gt;$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-11'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        attribute att-name { \"att-value\" }

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^att-name\\s*=\\s*['\"]att-value['\"]$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-12'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        fn:exists#1

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^fn:exists#1$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-13'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        function($a) { $a }

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\\(anonymous-function\\)#1$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-14'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        (1,2,3)

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">1\\r?\\n2\\r?\\n3</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-15'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        declare option output:item-separator \"-\";
        
        (1,2,3)

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">1-2-3</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-16'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [1, true(), not(true()), (), \"string\"]

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\\[1,true\\(\\),false\\(\\),\\(\\),\"string\"\\]$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-17'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [(1,2,3),(4,5,6)]

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\\[\\(1,2,3\\),\\(4,5,6\\)\\]$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-18'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        declare option output:item-separator \"-\";
        
        [(1,2,3),(4,5,6)]

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\\[\\(1,2,3\\),\\(4,5,6\\)\\]$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-19'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
  
        map { \"one\" : 1, xs:QName(\"one\") : 1 }  

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">map\\{\"one\":1,Q\\{\\}one:1\\}</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">map\\{Q\\{\\}one:1,\"one\":1\\}</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-20'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [<element>content</element>, attribute att-name { \"att-value\" }]

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\\[[(]?&lt;element&gt;content&lt;/element&gt;[)]?,[(]?att-name=\"att-value\"[)]?\\]$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-21'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";

        map { \"key\": attribute att-name { \"att-value\" }}

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^map\\{\"key\":att-name=\"att-value\"\\}$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-22'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [ xs:float(\"INF\"), xs:double(\"-INF\") ]

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\\[xs:float\\(\"INF\"\\),-INF\\]$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-23'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        map { \"infinity\": xs:float(\"INF\") }

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">map\\{\"infinity\":xs:float\\(\"INF\"\\)\\}</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-24'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [ xs:float(\"NaN\") ]

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">\\[xs:float\\(\"NaN\"\\)\\]</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-25'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        map { \"not-a-number\": xs:double(\"NaN\") }

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^map\\{\"not-a-number\":NaN\\}$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-26'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [fn:exists#1, function($a) { $a }]

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\\[fn:exists#1,\\(anonymous-function\\)#1\\]$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-27'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        [fn:exists#1, 1, <element>content</element>, (), function($a) { $a }, map { \"infinity\":xs:double(\"INF\") }, \"json-string\"]

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\\[[(]?fn:exists#1[)]?,[(]?1[)]?,[(]?&lt;element&gt;content&lt;/element&gt;[)]?,\\(\\),[(]?\\(anonymous-function\\)#1[)]?,[(]?map\\{\"infinity\":INF[)]?\\},[(]?\"json-string\"[)]?\\]$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-28'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        ()

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-29'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        declare option output:item-separator \" \";
        
        1 to 5

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">1 2 3 4 5</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-30'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        declare option output:item-separator \" \";
        
        \"the quick\", \"brown fox\"

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"the quick\" \"brown fox\"$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-31'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        map{ \"2015\":1, 2015:2, xs:gYear('2015'):3 }

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">\"2015\":1</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">2015:2</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">xs:gYear\\(\"2015\"\\):3</serialization-matches>", Res])]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-32'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        map{ \"O'Neil says \"\"no\"\"\": 1 }

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">map\\{\"O'Neil says \"\"no\"\"\":1\\}</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">map\\{'O''Neil says \"no\"':1\\}</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-33'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        
        map{ 1:\"O'Neil says \"\"no\"\"\" }

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">map\\{1:\"O'Neil says \"\"no\"\"\"\\}</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">map\\{1:'O''Neil says \"no\"'\\}</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-34'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        declare option output:item-separator \"~\";
        
        map{ \"a\":(\"quotes (\"\")\", \"apos (')\") }

      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^map\\{\"a\":\\(\"quotes \\(\"\"\\)\",\"apos \\('\\)\"\\)\\}$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-35'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:untypedAtomic(\"untypedAtomic\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">\"untypedAtomic\"</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-36'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:dateTime('1999-05-31T13:20:00-05:00')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:dateTime\\(\"1999-05-31T13:20:00-05:00\"\\)$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-37'(_Config) ->
   {skip,"XSD 1.1"}.
'Serialization-adaptive-38'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:date(\"1999-05-31\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:date\\(\"1999-05-31\"\\)</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-39'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:time(\"12:00:00\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:time\\(\"12:00:00\"\\)</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-40'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:duration(\"P1Y2M3DT10H30M23S\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:duration\\(\"P1Y2M3DT10H30M23S\"\\)$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-41'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:yearMonthDuration(\"P1Y2M\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:duration\\(\"P1Y2M\"\\)$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-42'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:dayTimeDuration(\"P3DT10H30M\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:duration\\(\"P3DT10H30M\"\\)</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-43'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:float(\"1e0\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:float\\(\"1\"\\)$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-44'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:double(1e0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">1\\.0e0</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-45'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:decimal(1.2)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">1.2</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-46'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:integer(1)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">1</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-47'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:nonPositiveInteger(\"0\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">0</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-48'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:negativeInteger(-1)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">-1</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-49'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:long(0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">0</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-50'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:int(0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">0</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-51'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:short(0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">0</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-52'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:byte(0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">0</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-53'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:nonNegativeInteger(0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">0</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-54'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:unsignedLong(0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">0</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-55'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:unsignedInt(0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">0</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-56'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:unsignedShort(0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">0</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-57'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:unsignedByte(0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">0</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-58'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:positiveInteger(1)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">1</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-59'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:gYearMonth(\"2000-01\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:gYearMonth\\(\"2000-01\"\\)</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-60'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:gYear(\"2000\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:gYear\\(\"2000\"\\)</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-61'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:gMonthDay(\"--01-01\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:gMonthDay\\(\"--01-01\"\\)</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-62'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:gDay(\"---01\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:gDay\\(\"---01\"\\)</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-63'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:gMonth(\"--01\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:gMonth\\(\"--01\"\\)</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-64'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:string(\"en\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'en'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"en\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-65'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:normalizedString(\"en\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'en'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"en\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-66'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:token(\"en\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'en'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"en\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-67'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:language(\"en\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'en'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"en\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-68'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:NMTOKEN(\"en\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'en'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"en\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-69'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:Name(\"en\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'en'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"en\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-70'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:NCName(\"en\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'en'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"en\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-71'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:ID(\"en\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'en'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"en\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-72'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:IDREF(\"en\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'en'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"en\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-73'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:ENTITY(\"en\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'en'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"en\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-74'(_Config) ->
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:boolean(true())
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^true\\(\\)$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-75'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:base64Binary(\"01001010\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:base64Binary\\(\"01001010\"\\)$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-76'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:hexBinary(\"D74D35D35D35\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^xs:hexBinary\\(\"D74D35D35D35\"\\)$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-77'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
	xs:anyURI(\"http://www.example.org/\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"http://www.example.org/\"$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-78'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:QName(\"xs:integer\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^Q\\{http://www.w3.org/2001/XMLSchema\\}integer$</serialization-matches>", Res]), 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-79'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        \"'\"
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"'\"$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^''''$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-80'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        '\"'
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'\"'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"\"\"\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-81'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:untypedAtomic(\"'\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"'\"$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^''''$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-82'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:untypedAtomic('\"')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'\"'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"\"\"\"$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-83'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:anyURI(\"'\")
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"'\"$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^''''$</serialization-matches>", Res])]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Serialization-adaptive-84'(_Config) ->
   Qry = "
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"adaptive\";
        xs:anyURI('\"')
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^'\"'$</serialization-matches>", Res]),
   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">^\"\"\"\"$</serialization-matches>", Res]),
   case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
