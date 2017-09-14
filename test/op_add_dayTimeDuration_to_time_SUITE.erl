-module('op_add_dayTimeDuration_to_time_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-add-dayTimeDuration-to-time2args-1'/1]).
-export(['op-add-dayTimeDuration-to-time2args-2'/1]).
-export(['op-add-dayTimeDuration-to-time2args-3'/1]).
-export(['op-add-dayTimeDuration-to-time2args-4'/1]).
-export(['op-add-dayTimeDuration-to-time2args-5'/1]).
-export(['op-add-dayTimeDuration-to-time-1'/1]).
-export(['op-add-dayTimeDuration-to-time-2'/1]).
-export(['op-add-dayTimeDuration-to-time-3'/1]).
-export(['op-add-dayTimeDuration-to-time-4'/1]).
-export(['op-add-dayTimeDuration-to-time-5'/1]).
-export(['op-add-dayTimeDuration-to-time-6'/1]).
-export(['op-add-dayTimeDuration-to-time-7'/1]).
-export(['op-add-dayTimeDuration-to-time-8'/1]).
-export(['op-add-dayTimeDuration-to-time-9'/1]).
-export(['op-add-dayTimeDuration-to-time-10'/1]).
-export(['op-add-dayTimeDuration-to-timealt-12'/1]).
-export(['op-add-dayTimeDuration-to-time-13'/1]).
-export(['op-add-dayTimeDuration-to-time-14'/1]).
-export(['op-add-dayTimeDuration-to-time-15'/1]).
-export(['op-add-dayTimeDuration-to-time-16'/1]).
-export(['op-add-dayTimeDuration-to-time-17'/1]).
-export(['K-TimeAddDTD-1'/1]).
-export(['K-TimeAddDTD-2'/1]).
-export(['K2-TimeAddDTD-1'/1]).
-export(['cbcl-add-dayTimeDuration-to-time-001'/1]).
-export(['cbcl-add-dayTimeDuration-to-time-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-add-dayTimeDuration-to-time2args-1',
   'op-add-dayTimeDuration-to-time2args-2',
   'op-add-dayTimeDuration-to-time2args-3',
   'op-add-dayTimeDuration-to-time2args-4',
   'op-add-dayTimeDuration-to-time2args-5',
   'op-add-dayTimeDuration-to-time-1',
   'op-add-dayTimeDuration-to-time-2',
   'op-add-dayTimeDuration-to-time-3',
   'op-add-dayTimeDuration-to-time-4',
   'op-add-dayTimeDuration-to-time-5',
   'op-add-dayTimeDuration-to-time-6',
   'op-add-dayTimeDuration-to-time-7',
   'op-add-dayTimeDuration-to-time-8',
   'op-add-dayTimeDuration-to-time-9',
   'op-add-dayTimeDuration-to-time-10',
   'op-add-dayTimeDuration-to-timealt-12',
   'op-add-dayTimeDuration-to-time-13',
   'op-add-dayTimeDuration-to-time-14',
   'op-add-dayTimeDuration-to-time-15',
   'op-add-dayTimeDuration-to-time-16',
   'op-add-dayTimeDuration-to-time-17',
   'K-TimeAddDTD-1',
   'K-TimeAddDTD-2',
   'K2-TimeAddDTD-1',
   'cbcl-add-dayTimeDuration-to-time-001',
   'cbcl-add-dayTimeDuration-to-time-002'].
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
'op-add-dayTimeDuration-to-time2args-1'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         00:00:00Z
      ",
   case xqerl_types:string_value(Res) of
             "00:00:00Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-time2args-2'(_Config) ->
   Qry = "xs:time(\"08:03:35Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         08:03:35Z
      ",
   case xqerl_types:string_value(Res) of
             "08:03:35Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-time2args-3'(_Config) ->
   Qry = "xs:time(\"23:59:59Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         23:59:59Z
      ",
   case xqerl_types:string_value(Res) of
             "23:59:59Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-time2args-4'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") + xs:dayTimeDuration(\"P15DT11H59M59S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         11:59:59Z
      ",
   case xqerl_types:string_value(Res) of
             "11:59:59Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-time2args-5'(_Config) ->
   Qry = "xs:time(\"00:00:00Z\") + xs:dayTimeDuration(\"P31DT23H59M59S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         23:59:59Z
      ",
   case xqerl_types:string_value(Res) of
             "23:59:59Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-time-1'(_Config) ->
   Qry = "xs:time(\"11:12:00\") + xs:dayTimeDuration(\"P3DT1H15M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12:27:00
      ",
   case xqerl_types:string_value(Res) of
             "12:27:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-time-2'(_Config) ->
   Qry = "xs:time(\"23:12:00+03:00\") + xs:dayTimeDuration(\"P1DT3H15M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         02:27:00+03:00
      ",
   case xqerl_types:string_value(Res) of
             "02:27:00+03:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-time-3'(_Config) ->
   Qry = "fn:string((xs:time(\"12:12:01Z\") + xs:dayTimeDuration(\"P19DT13H10M\"))) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-time-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:time(\"13:12:00Z\") + xs:dayTimeDuration(\"P02DT07H01M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-time-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:time(\"02:02:02Z\") + xs:dayTimeDuration(\"P03DT08H06M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-time-6'(_Config) ->
   Qry = "fn:number(xs:time(\"01:01:01Z\") + xs:dayTimeDuration(\"P10DT08H01M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-time-7'(_Config) ->
   Qry = "fn:string(xs:time(\"10:02:03Z\") + xs:dayTimeDuration(\"P01DT09H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         19:04:03Z
      ",
   case xqerl_types:string_value(Res) of
             "19:04:03Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-time-8'(_Config) ->
   Qry = "(xs:time(\"08:02:06\") + xs:dayTimeDuration(\"-P11DT02H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         06:00:06
      ",
   case xqerl_types:string_value(Res) of
             "06:00:06" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-time-9'(_Config) ->
   Qry = "fn:string((xs:time(\"10:10:10Z\") + xs:dayTimeDuration(\"P02DT09H02M\"))) and fn:string((xs:time(\"09:02:02Z\") + xs:dayTimeDuration(\"P04DT04H04M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-time-10'(_Config) ->
   Qry = "fn:string((xs:time(\"02:03:01Z\") + xs:dayTimeDuration(\"P03DT01H04M\"))) or fn:string((xs:time(\"02:03:01Z\") + xs:dayTimeDuration(\"P01DT01H03M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-timealt-12'(_Config) ->
   Qry = "fn:string((xs:time(\"02:02:02Z\") + xs:dayTimeDuration(\"P05DT08H11M\"))) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-time-13'(_Config) ->
   Qry = "(xs:time(\"01:03:03Z\") + xs:dayTimeDuration(\"P23DT11H11M\")) eq xs:time(\"04:03:05Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-time-14'(_Config) ->
   Qry = "(xs:time(\"04:04:05Z\") + xs:dayTimeDuration(\"P08DT08H05M\")) ne xs:time(\"05:08:02Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-time-15'(_Config) ->
   Qry = "(xs:time(\"08:09:09Z\") + xs:dayTimeDuration(\"P17DT10H02M\")) le xs:time(\"09:08:10Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-time-16'(_Config) ->
   Qry = "(xs:time(\"09:06:07Z\") + xs:dayTimeDuration(\"P18DT02H02M\")) ge xs:time(\"01:01:01Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-time-17'(_Config) ->
   Qry = "fn:string(xs:time(\"12:07:08Z\") + xs:dayTimeDuration(\"P12DT10H07M\")) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimeAddDTD-1'(_Config) ->
   Qry = "xs:time(\"08:12:32\") + xs:dayTimeDuration(\"P23DT09H32M59S\") eq xs:time(\"17:45:31\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimeAddDTD-2'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P23DT09H32M59S\") + xs:time(\"08:12:32\") eq xs:time(\"17:45:31\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-TimeAddDTD-1'(_Config) ->
   Qry = "xs:time(\"10:10:10\") + xs:time(\"23:10:10\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-add-dayTimeDuration-to-time-001'(_Config) ->
   Qry = "
        declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string };
        declare function local:time($hour as xs:integer, $mins as xs:integer) { let $h := local:two-digit($hour), $m := local:two-digit($mins) return xs:time(concat( $h, ':', $m, ':00')) };
        local:time(12, 59) + xs:dayTimeDuration(\"P0D\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12:59:00
      ",
   case xqerl_types:string_value(Res) of
             "12:59:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-add-dayTimeDuration-to-time-002'(_Config) ->
   Qry = "
        declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string };
        declare function local:time($hour as xs:integer, $mins as xs:integer) { let $h := local:two-digit($hour), $m := local:two-digit($mins) return xs:time(concat( $h, ':', $m, ':00')) };
        xs:dayTimeDuration(\"P0D\") + local:time(12, 59)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12:59:00
      ",
   case xqerl_types:string_value(Res) of
             "12:59:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
