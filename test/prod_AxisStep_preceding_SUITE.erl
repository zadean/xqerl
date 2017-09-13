-module('prod_AxisStep_preceding_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['preceding-1'/1]).
-export(['preceding-2'/1]).
-export(['preceding-3'/1]).
-export(['preceding-4'/1]).
-export(['preceding-5'/1]).
-export(['preceding-6'/1]).
-export(['preceding-7'/1]).
-export(['preceding-8'/1]).
-export(['preceding-9'/1]).
-export(['preceding-10'/1]).
-export(['preceding-11'/1]).
-export(['preceding-12'/1]).
-export(['preceding-13'/1]).
-export(['preceding-14'/1]).
-export(['preceding-15'/1]).
-export(['preceding-16'/1]).
-export(['preceding-17'/1]).
-export(['preceding-18'/1]).
-export(['preceding-19'/1]).
-export(['preceding-20'/1]).
-export(['preceding-21'/1]).
-export(['preceding-22'/1]).
-export(['preceding-23'/1]).
-export(['K2-precedingAxis-1'/1]).
-export(['K2-precedingAxis-2'/1]).
-export(['K2-precedingAxis-3'/1]).
-export(['K2-precedingAxis-4'/1]).
-export(['K2-precedingAxis-5'/1]).
-export(['K2-precedingAxis-6'/1]).
-export(['K2-precedingAxis-7'/1]).
-export(['K2-precedingAxis-8'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'preceding-1',
   'preceding-2',
   'preceding-3',
   'preceding-4',
   'preceding-5',
   'preceding-6',
   'preceding-7',
   'preceding-8',
   'preceding-9',
   'preceding-10',
   'preceding-11',
   'preceding-12',
   'preceding-13',
   'preceding-14',
   'preceding-15',
   'preceding-16',
   'preceding-17',
   'preceding-18',
   'preceding-19',
   'preceding-20',
   'preceding-21',
   'preceding-22',
   'preceding-23',
   'K2-precedingAxis-1',
   'K2-precedingAxis-2',
   'K2-precedingAxis-3',
   'K2-precedingAxis-4',
   'K2-precedingAxis-5',
   'K2-precedingAxis-6',
   'K2-precedingAxis-7',
   'K2-precedingAxis-8'].
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
'preceding-1'(_Config) ->
   Qry = "(200)/preceding::*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0019" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0019'}) end.
'preceding-2'(_Config) ->
   Qry = "fn:count(/works/employee[1]/preceding::noSuchNode)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'preceding-3'(_Config) ->
   Qry = "exactly-one(/works/employee[2]/preceding::employee) is exactly-one(/works/employee[1])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-4'(_Config) ->
   Qry = "exactly-one(/works[1]/employee[2]/preceding::employee) is exactly-one(/works[1]/employee[2])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-5'(_Config) ->
   Qry = "exactly-one(/works[1]/employee[2]/preceding::employee) << exactly-one(/works[1]/employee[2])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-6'(_Config) ->
   Qry = "exactly-one(/works[1]/employee[2]/preceding::employee) << exactly-one(/works[1]/employee[2]/preceding::employee)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-7'(_Config) ->
   Qry = "exactly-one(/works[1]/employee[2]/preceding::employee) << exactly-one(/works[1])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-8'(_Config) ->
   Qry = "exactly-one(/works[1]/employee[13]) >> exactly-one(/works[1]/employee[12]/overtime[1]/day[2]/preceding::day)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-9'(_Config) ->
   Qry = "exactly-one(/works[1]/employee[2]/preceding::employee) >> exactly-one(/works[1]/employee[2]/preceding::employee)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-10'(_Config) ->
   Qry = "exactly-one(/works[1]/employee[13]) >> exactly-one(/works[1]/employee[2]/preceding::employee)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-11'(_Config) ->
   Qry = "(/works/employee[12]/*/day[2]/preceding::day) | (/works/employee[12]/*/day[2]/preceding::day)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <day>Monday</day>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<day>Monday</day>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<day>Monday</day>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'preceding-12'(_Config) ->
   Qry = "(/works/employee[12]/*/day[2]/preceding::day) | (/works/employee[12]/*/day[2])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <day>Monday</day><day>Tuesday</day>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<day>Monday</day><day>Tuesday</day>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<day>Monday</day><day>Tuesday</day>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'preceding-13'(_Config) ->
   Qry = "(/works[1]/employee[12]/overtime[1]/day[2]/preceding::day) intersect (/works[1]/employee[12]/overtime[1]/day[2]/preceding::day)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <day>Monday</day>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<day>Monday</day>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<day>Monday</day>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'preceding-14'(_Config) ->
   Qry = "fn:count((/works[1]/employee[12]/preceding::employee) except (/works[1]/employee[12]/preceding::employee))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'preceding-15'(_Config) ->
   Qry = "(/works[1]/employee[12]/overtime/day) except (/works[1]/employee[12]/overtime/day[2]/preceding::day)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <day>Tuesday</day>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<day>Tuesday</day>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<day>Tuesday</day>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'preceding-16'(_Config) ->
   Qry = "(/works[1]/employee[12]/preceding::employee) and fn:true()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-17'(_Config) ->
   Qry = "(/works[1]/employee[12]/preceding::employee) and fn:false()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-18'(_Config) ->
   Qry = "(/works[1]/employee[12]/preceding::employee) or fn:true()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-19'(_Config) ->
   Qry = "(/works[1]/employee[12]/preceding::employee) or fn:false()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-20'(_Config) ->
   Qry = "fn:deep-equal(/works[1]/employee[12]/preceding::employee,/works[1]/employee[12]/preceding::employee)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'preceding-21'(_Config) ->
   Qry = "let $var := <anElement>Some Content</anElement> return fn:count($var/preceding::*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'preceding-22'(_Config) ->
   Qry = "<result> { (//node())[last()]/preceding::node() } </result>",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/AxisStep.preceding/SmallTree.xml",".",""}]},
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
   Exp = "
         <result>
    <section1 noValue=\"\">
        text1
        <?target1 data1?>
        <?target2 data2?>
        <?target3 data3?>
    </section1>
        text1
        <?target1 data1?>
        <?target2 data2?>
        <?target3 data3?>
    
    <section2 attr1=\"1\" attr2=\"2\"/>
    <!-- comment1 -->
    <section3/>
    <!-- comment2 -->
    <!-- comment3 -->
    <noChildren/>
    <oneTextChild>theTextChild2</oneTextChild>theTextChild2</result>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result>
    <section1 noValue=\"\">
        text1
        <?target1 data1?>
        <?target2 data2?>
        <?target3 data3?>
    </section1>
        text1
        <?target1 data1?>
        <?target2 data2?>
        <?target3 data3?>
    
    <section2 attr1=\"1\" attr2=\"2\"/>
    <!-- comment1 -->
    <section3/>
    <!-- comment2 -->
    <!-- comment3 -->
    <noChildren/>
    <oneTextChild>theTextChild2</oneTextChild>theTextChild2</result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result>
    <section1 noValue=\"\">
        text1
        <?target1 data1?>
        <?target2 data2?>
        <?target3 data3?>
    </section1>
        text1
        <?target1 data1?>
        <?target2 data2?>
        <?target3 data3?>
    
    <section2 attr1=\"1\" attr2=\"2\"/>
    <!-- comment1 -->
    <section3/>
    <!-- comment2 -->
    <!-- comment3 -->
    <noChildren/>
    <oneTextChild>theTextChild2</oneTextChild>theTextChild2</result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'preceding-23'(_Config) ->
   Qry = "<result> { (//node())[last()]/preceding::node(), empty((//node())[last()]/preceding::node()) } </result>",
   Env = xqerl_test:handle_environment([{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/prod/AxisStep.preceding/AttributesAndElements.xml",".",""}]},
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
   Exp = "
         <result>true</result>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<result>true</result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<result>true</result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-precedingAxis-1'(_Config) ->
   Qry = "declare variable $i := <root> <child/> <child/> <child> <child2> <child3> <leaf/> </child3> </child2> </child> </root>; empty(root($i)/preceding::node())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-precedingAxis-2'(_Config) ->
   Qry = "declare variable $i := <root> <child> <child2> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; empty(root($i)//leaf/preceding::node())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-precedingAxis-3'(_Config) ->
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; root($i)//leaf/preceding::node()[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <preceding1/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<preceding1/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<preceding1/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-precedingAxis-4'(_Config) ->
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; root($i)//leaf/(preceding::node())[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <preceding2/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<preceding2/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<preceding2/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-precedingAxis-5'(_Config) ->
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; root($i)//leaf/(preceding::node())[last()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <preceding1/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<preceding1/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<preceding1/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-precedingAxis-6'(_Config) ->
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; root($i)//leaf/preceding::node()[last()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <preceding2/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<preceding2/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<preceding2/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-precedingAxis-7'(_Config) ->
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; count(root($i)//leaf/preceding::node())",
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
'K2-precedingAxis-8'(_Config) ->
   Qry = "declare variable $i := <root> <child> <preceding2/> <child2> <preceding1/> <child3> <leaf/> </child3> <following/> </child2> <following/> </child> <following/> </root>; root($i)//count(preceding::*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0 0 0 1 1 2 2 4 6 8
      ",
   case xqerl_types:string_value(Res) of
             "0 0 0 1 1 2 2 4 6 8" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
