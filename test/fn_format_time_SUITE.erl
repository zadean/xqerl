-module('fn_format_time_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['format-time-002a'/1]).
-export(['format-time-002b'/1]).
-export(['format-time-002c'/1]).
-export(['format-time-002d'/1]).
-export(['format-time-002e'/1]).
-export(['format-time-002f'/1]).
-export(['format-time-002g'/1]).
-export(['format-time-002h'/1]).
-export(['format-time-002i'/1]).
-export(['format-time-002j'/1]).
-export(['format-time-004'/1]).
-export(['format-time-013n'/1]).
-export(['format-time-013p'/1]).
-export(['format-time-013q'/1]).
-export(['format-time-013r'/1]).
-export(['format-time-013s'/1]).
-export(['format-time-013t'/1]).
-export(['format-time-013u'/1]).
-export(['format-time-013v'/1]).
-export(['format-time-014'/1]).
-export(['format-time-015'/1]).
-export(['format-time-016'/1]).
-export(['format-time-017'/1]).
-export(['format-time-018'/1]).
-export(['format-time-809err'/1]).
-export(['format-time-810err'/1]).
-export(['format-time-811err'/1]).
-export(['format-time-812err'/1]).
-export(['format-time-813err'/1]).
-export(['format-time-814err'/1]).
-export(['format-time-815err'/1]).
-export(['format-time-816err'/1]).
-export(['format-time-817err'/1]).
-export(['format-time-inpt-er1'/1]).
-export(['format-time-inpt-er2'/1]).
-export(['format-time-inpt-er3'/1]).
-export(['format-time-1340err'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'format-time-002a',
   'format-time-002b',
   'format-time-002c',
   'format-time-002d',
   'format-time-002e',
   'format-time-002f',
   'format-time-002g',
   'format-time-002h',
   'format-time-002i',
   'format-time-002j',
   'format-time-004',
   'format-time-013n',
   'format-time-013p',
   'format-time-013q',
   'format-time-013r',
   'format-time-013s',
   'format-time-013t',
   'format-time-013u',
   'format-time-013v',
   'format-time-014',
   'format-time-015',
   'format-time-016',
   'format-time-017',
   'format-time-018',
   'format-time-809err',
   'format-time-810err',
   'format-time-811err',
   'format-time-812err',
   'format-time-813err',
   'format-time-814err',
   'format-time-815err',
   'format-time-816err',
   'format-time-817err',
   'format-time-inpt-er1',
   'format-time-inpt-er2',
   'format-time-inpt-er3',
   'format-time-1340err'].
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
'format-time-002a'(_Config) ->
   Qry = "format-time($t,\"[H01]:[m01]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         09:15
      ",
   case xqerl_types:string_value(Res) of
             "09:15" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-002b'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9:15
      ",
   case xqerl_types:string_value(Res) of
             "9:15" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-002c'(_Config) ->
   Qry = "format-time($t,\"[H01]:[m01]:[s01]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         09:15:06
      ",
   case xqerl_types:string_value(Res) of
             "09:15:06" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-002d'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9:15:06
      ",
   case xqerl_types:string_value(Res) of
             "9:15:06" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-002e'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s1]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9:15:6
      ",
   case xqerl_types:string_value(Res) of
             "9:15:6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-002f'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s01]:[f001]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9:15:06:456
      ",
   case xqerl_types:string_value(Res) of
             "9:15:06:456" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-002g'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s].[f,1-1]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9:15:06.5
      ",
   case xqerl_types:string_value(Res) of
             "9:15:06.5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-002h'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s].[f1,1-1]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9:15:06.5
      ",
   case xqerl_types:string_value(Res) of
             "9:15:06.5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-002i'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s].[f01]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9:15:06.46
      ",
   case xqerl_types:string_value(Res) of
             "9:15:06.46" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-002j'(_Config) ->
   Qry = "format-time($t,\"[H]:[m]:[s].[f001]\")",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9:15:06.456
      ",
   case xqerl_types:string_value(Res) of
             "9:15:06.456" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-004'(_Config) ->
   Qry = "
        for $i in 1 to 24 return
        format-time($t + xs:dayTimeDuration('PT1H')*$i, '[h].[m]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
         10.15 11.15 12.15 1.15 2.15 3.15 4.15 5.15 6.15 7.15 8.15 9.15 10.15 11.15 
         12.15 1.15 2.15 3.15 4.15 5.15 6.15 7.15 8.15 9.15
         
      ",
   case xqerl_types:string_value(Res) of
             "10.15 11.15 12.15 1.15 2.15 3.15 4.15 5.15 6.15 7.15 8.15 9.15 10.15 11.15 12.15 1.15 2.15 3.15 4.15 5.15 6.15 7.15 8.15 9.15" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-time-013n'(_Config) ->
   Qry = "format-time($t, '[m,3]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         015
      ",
   case xqerl_types:string_value(Res) of
             "015" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-013p'(_Config) ->
   Qry = "format-time($t, '[f,4-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4560
      ",
   case xqerl_types:string_value(Res) of
             "4560" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-013q'(_Config) ->
   Qry = "format-time($t, '[f,1-4]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         456
      ",
   case xqerl_types:string_value(Res) of
             "456" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-013r'(_Config) ->
   Qry = "format-time($t, '[f,2-5]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         456
      ",
   case xqerl_types:string_value(Res) of
             "456" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-013s'(_Config) ->
   Qry = "format-time($t, '[f,2-2]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         46
      ",
   case xqerl_types:string_value(Res) of
             "46" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-013t'(_Config) ->
   Qry = "format-time($t, '[f,1-*]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         456
      ",
   case xqerl_types:string_value(Res) of
             "456" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-013u'(_Config) ->
   Qry = "format-time($t, '[f,*-2]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         46
      ",
   case xqerl_types:string_value(Res) of
             "46" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-013v'(_Config) ->
   Qry = "format-time($t, '[f,3]')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         456
      ",
   case xqerl_types:string_value(Res) of
             "456" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'format-time-014'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone(
               $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][Z]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             0715-14:00; 0745-13:30; 0815-13:00; 0845-12:30; 0915-12:00; 0945-11:30; 1015-11:00; 1045-10:30; 1115-10:00; 
             1145-09:30; 1215-09:00; 1245-08:30; 0115-08:00; 0145-07:30; 0215-07:00; 0245-06:30; 0315-06:00; 0345-05:30; 
             0415-05:00; 0445-04:30; 0515-04:00; 0545-03:30; 0615-03:00; 0645-02:30; 0715-02:00; 0745-01:30; 0815-01:00; 
             0845-00:30; 0915+00:00; 0945+00:30; 1015+01:00; 1045+01:30; 1115+02:00; 1145+02:30; 1215+03:00; 1245+03:30;
             0115+04:00; 0145+04:30; 0215+05:00; 0245+05:30; 0315+06:00; 0345+06:30; 0415+07:00; 0445+07:30; 0515+08:00; 
             0545+08:30; 0615+09:00; 0645+09:30; 0715+10:00; 0745+10:30; 0815+11:00; 0845+11:30; 0915+12:00; 0945+12:30; 
             1015+13:00; 1045+13:30; 1115+14:00
         
      ",
   case xqerl_types:string_value(Res) of
             "0715-14:00; 0745-13:30; 0815-13:00; 0845-12:30; 0915-12:00; 0945-11:30; 1015-11:00; 1045-10:30; 1115-10:00; 1145-09:30; 1215-09:00; 1245-08:30; 0115-08:00; 0145-07:30; 0215-07:00; 0245-06:30; 0315-06:00; 0345-05:30; 0415-05:00; 0445-04:30; 0515-04:00; 0545-03:30; 0615-03:00; 0645-02:30; 0715-02:00; 0745-01:30; 0815-01:00; 0845-00:30; 0915+00:00; 0945+00:30; 1015+01:00; 1045+01:30; 1115+02:00; 1145+02:30; 1215+03:00; 1245+03:30; 0115+04:00; 0145+04:30; 0215+05:00; 0245+05:30; 0315+06:00; 0345+06:30; 0415+07:00; 0445+07:30; 0515+08:00; 0545+08:30; 0615+09:00; 0645+09:30; 0715+10:00; 0745+10:30; 0815+11:00; 0845+11:30; 0915+12:00; 0945+12:30; 1015+13:00; 1045+13:30; 1115+14:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-time-015'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone(
                        $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30;
            1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30;
            0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30;
            0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00;
            1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00;
            0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00;
            0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30;
            1115GMT+14:00
         
      ",
   case xqerl_types:string_value(Res) of
             "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-time-016'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone(
                        $t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z,6-6]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30;
            1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30;
            0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30;
            0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00;
            1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00;
            0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00;
            0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30;
            1115GMT+14:00
        
      ",
   case xqerl_types:string_value(Res) of
             "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-time-017'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone($t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z,5-6]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30;
            1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30;
            0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30;
            0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00;
            1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00;
            0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00;
            0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30;
            1115GMT+14:00
         
      ",
   case xqerl_types:string_value(Res) of
             "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-time-018'(_Config) ->
   Qry = "string-join(
               for $z in -28 to +28
               return format-time(adjust-time-to-timezone($t, $z*xs:dayTimeDuration('PT30M')), '[h01][m01][z,2-6]'), '; ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"t","xs:time","xs:time('09:15:06.456Z')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
              0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30;
            1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30;
            0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30;
            0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00;
            1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00;
            0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00;
            0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30;
            1115GMT+14:00
         
      ",
   case xqerl_types:string_value(Res) of
             "0715GMT-14:00; 0745GMT-13:30; 0815GMT-13:00; 0845GMT-12:30; 0915GMT-12:00; 0945GMT-11:30; 1015GMT-11:00; 1045GMT-10:30; 1115GMT-10:00; 1145GMT-09:30; 1215GMT-09:00; 1245GMT-08:30; 0115GMT-08:00; 0145GMT-07:30; 0215GMT-07:00; 0245GMT-06:30; 0315GMT-06:00; 0345GMT-05:30; 0415GMT-05:00; 0445GMT-04:30; 0515GMT-04:00; 0545GMT-03:30; 0615GMT-03:00; 0645GMT-02:30; 0715GMT-02:00; 0745GMT-01:30; 0815GMT-01:00; 0845GMT-00:30; 0915GMT+00:00; 0945GMT+00:30; 1015GMT+01:00; 1045GMT+01:30; 1115GMT+02:00; 1145GMT+02:30; 1215GMT+03:00; 1245GMT+03:30; 0115GMT+04:00; 0145GMT+04:30; 0215GMT+05:00; 0245GMT+05:30; 0315GMT+06:00; 0345GMT+06:30; 0415GMT+07:00; 0445GMT+07:30; 0515GMT+08:00; 0545GMT+08:30; 0615GMT+09:00; 0645GMT+09:30; 0715GMT+10:00; 0745GMT+10:30; 0815GMT+11:00; 0845GMT+11:30; 0915GMT+12:00; 0945GMT+12:30; 1015GMT+13:00; 1045GMT+13:30; 1115GMT+14:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'format-time-809err'(_Config) ->
   Qry = "format-time(current-time(), '[Y]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-time-810err'(_Config) ->
   Qry = "format-time(current-time(), '[M]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-time-811err'(_Config) ->
   Qry = "format-time(current-time(), '[d]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-time-812err'(_Config) ->
   Qry = "format-time(current-time(), '[d]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-time-813err'(_Config) ->
   Qry = "format-time(current-time(), '[F]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-time-814err'(_Config) ->
   Qry = "format-time(current-time(), '[W]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-time-815err'(_Config) ->
   Qry = "format-time(current-time(), '[w]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-time-816err'(_Config) ->
   Qry = "format-time(current-time(), '[E]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1350") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1350") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-time-817err'(_Config) ->
   Qry = "format-time(current-time(), '[bla]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1340") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1340") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'format-time-inpt-er1'(_Config) ->
   Qry = "format-time('abc', '[bla]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'format-time-inpt-er2'(_Config) ->
   Qry = "format-time(current-time(), '[bla]', 'en', (), (), 6)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'format-time-inpt-er3'(_Config) ->
   Qry = "format-time(current-time(), '[bla]', 'en', (), (), 6)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'format-time-1340err'(_Config) ->
   Qry = "format-time(current-time(), '[y]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         
         
        
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XTDE1340") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOFD1340") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
