-module('op_add_dayTimeDuration_to_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-add-dayTimeDuration-to-date2args-1'/1]).
-export(['op-add-dayTimeDuration-to-date2args-2'/1]).
-export(['op-add-dayTimeDuration-to-date2args-3'/1]).
-export(['op-add-dayTimeDuration-to-date2args-4'/1]).
-export(['op-add-dayTimeDuration-to-date2args-5'/1]).
-export(['op-add-dayTimeDuration-to-date-1'/1]).
-export(['op-add-dayTimeDuration-to-datealt-2'/1]).
-export(['op-add-dayTimeDuration-to-date-3'/1]).
-export(['op-add-dayTimeDuration-to-date-4'/1]).
-export(['op-add-dayTimeDuration-to-date-5'/1]).
-export(['op-add-dayTimeDuration-to-date-6'/1]).
-export(['op-add-dayTimeDuration-to-date-7'/1]).
-export(['op-add-dayTimeDuration-to-date-8'/1]).
-export(['op-add-dayTimeDuration-to-date-9'/1]).
-export(['op-add-dayTimeDuration-to-date-10'/1]).
-export(['op-add-dayTimeDuration-to-date-12'/1]).
-export(['op-add-dayTimeDuration-to-date-13'/1]).
-export(['op-add-dayTimeDuration-to-date-14'/1]).
-export(['op-add-dayTimeDuration-to-date-15'/1]).
-export(['op-add-dayTimeDuration-to-date-16'/1]).
-export(['K-DateAddDTD-1'/1]).
-export(['K-DateAddDTD-2'/1]).
-export(['cbcl-add-dayTimeDuration-to-date-001'/1]).
-export(['cbcl-add-dayTimeDuration-to-date-002'/1]).
-export(['cbcl-add-dayTimeDuration-to-date-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-add-dayTimeDuration-to-date2args-1',
   'op-add-dayTimeDuration-to-date2args-2',
   'op-add-dayTimeDuration-to-date2args-3',
   'op-add-dayTimeDuration-to-date2args-4',
   'op-add-dayTimeDuration-to-date2args-5',
   'op-add-dayTimeDuration-to-date-1',
   'op-add-dayTimeDuration-to-datealt-2',
   'op-add-dayTimeDuration-to-date-3',
   'op-add-dayTimeDuration-to-date-4',
   'op-add-dayTimeDuration-to-date-5',
   'op-add-dayTimeDuration-to-date-6',
   'op-add-dayTimeDuration-to-date-7',
   'op-add-dayTimeDuration-to-date-8',
   'op-add-dayTimeDuration-to-date-9',
   'op-add-dayTimeDuration-to-date-10',
   'op-add-dayTimeDuration-to-date-12',
   'op-add-dayTimeDuration-to-date-13',
   'op-add-dayTimeDuration-to-date-14',
   'op-add-dayTimeDuration-to-date-15',
   'op-add-dayTimeDuration-to-date-16',
   'K-DateAddDTD-1',
   'K-DateAddDTD-2',
   'cbcl-add-dayTimeDuration-to-date-001',
   'cbcl-add-dayTimeDuration-to-date-002',
   'cbcl-add-dayTimeDuration-to-date-003'].
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
'op-add-dayTimeDuration-to-date2args-1'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1970-01-01Z
      ",
   case xqerl_types:string_value(Res) of
             "1970-01-01Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-date2args-2'(_Config) ->
   Qry = "xs:date(\"1983-11-17Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1983-11-17Z
      ",
   case xqerl_types:string_value(Res) of
             "1983-11-17Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-date2args-3'(_Config) ->
   Qry = "xs:date(\"2030-12-31Z\") + xs:dayTimeDuration(\"P0DT0H0M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2030-12-31Z
      ",
   case xqerl_types:string_value(Res) of
             "2030-12-31Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-date2args-4'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") + xs:dayTimeDuration(\"P15DT11H59M59S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1970-01-16Z
      ",
   case xqerl_types:string_value(Res) of
             "1970-01-16Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-date2args-5'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") + xs:dayTimeDuration(\"P31DT23H59M59S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1970-02-01Z
      ",
   case xqerl_types:string_value(Res) of
             "1970-02-01Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-date-1'(_Config) ->
   Qry = "xs:date(\"2004-10-30Z\") + xs:dayTimeDuration(\"P2DT2H30M0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2004-11-01Z
      ",
   case xqerl_types:string_value(Res) of
             "2004-11-01Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-datealt-2'(_Config) ->
   Qry = "fn:string((xs:date(\"2000-12-12Z\") + xs:dayTimeDuration(\"P19DT13H10M\"))) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-date-3'(_Config) ->
   Qry = "fn:string((xs:date(\"1999-10-23Z\") + xs:dayTimeDuration(\"P19DT13H10M\"))) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-date-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:date(\"1998-09-12Z\") + xs:dayTimeDuration(\"P02DT07H01M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-date-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:date(\"1962-03-12Z\") + xs:dayTimeDuration(\"P03DT08H06M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-date-6'(_Config) ->
   Qry = "fn:number(xs:date(\"1988-01-28Z\") + xs:dayTimeDuration(\"P10DT08H01M\"))",
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
'op-add-dayTimeDuration-to-date-7'(_Config) ->
   Qry = "fn:string(xs:date(\"1989-07-05Z\") + xs:dayTimeDuration(\"P01DT09H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1989-07-06Z
      ",
   case xqerl_types:string_value(Res) of
             "1989-07-06Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-dayTimeDuration-to-date-8'(_Config) ->
   Qry = "(xs:date(\"0001-01-01Z\") + xs:dayTimeDuration(\"-P11DT02H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -0001-12-20Z
            0000-12-20Z
         
      ",
 case (xqerl_types:string_value(Res) == "-0001-12-20Z") orelse (xqerl_types:string_value(Res) == "0000-12-20Z") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-add-dayTimeDuration-to-date-9'(_Config) ->
   Qry = "fn:string((xs:date(\"1993-12-09Z\") + xs:dayTimeDuration(\"P03DT01H04M\"))) and fn:string((xs:date(\"1993-12-09Z\") + xs:dayTimeDuration(\"P01DT01H03M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-date-10'(_Config) ->
   Qry = "fn:string((xs:date(\"1985-07-05Z\") + xs:dayTimeDuration(\"P03DT01H04M\"))) or fn:string((xs:date(\"1985-07-05Z\") + xs:dayTimeDuration(\"P01DT01H03M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-date-12'(_Config) ->
   Qry = "fn:string((xs:date(\"1980-03-02Z\") + xs:dayTimeDuration(\"P05DT08H11M\"))) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-date-13'(_Config) ->
   Qry = "(xs:date(\"1980-05-05Z\") + xs:dayTimeDuration(\"P23DT11H11M\")) eq xs:date(\"1980-05-05Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-date-14'(_Config) ->
   Qry = "(xs:date(\"1979-12-12Z\") + xs:dayTimeDuration(\"P08DT08H05M\")) ne xs:date(\"1979-12-12Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-date-15'(_Config) ->
   Qry = "(xs:date(\"1978-12-12Z\") + xs:dayTimeDuration(\"P17DT10H02M\")) le xs:date(\"1978-12-12Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-dayTimeDuration-to-date-16'(_Config) ->
   Qry = "(xs:date(\"1977-12-12Z\") + xs:dayTimeDuration(\"P18DT02H02M\")) ge xs:date(\"1977-12-12Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateAddDTD-1'(_Config) ->
   Qry = "xs:date(\"1999-08-12\") + xs:dayTimeDuration(\"P23DT09H32M59S\") eq xs:date(\"1999-09-04\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateAddDTD-2'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P23DT09H32M59S\") + xs:date(\"1999-08-12\") eq xs:date(\"1999-09-04\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-add-dayTimeDuration-to-date-001'(_Config) ->
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) 
      		return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day) 
      		return xs:date(concat($year, '-', $m, '-', $d)) 
      	}; 
      	local:date(2008, 05, 12) + xs:dayTimeDuration(\"P0D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2008-05-12
      ",
   case xqerl_types:string_value(Res) of
             "2008-05-12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-add-dayTimeDuration-to-date-002'(_Config) ->
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) 
      		return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day) 
      		return xs:date(concat($year, '-', $m, '-', $d)) 
      	}; 
      	xs:dayTimeDuration(\"P0D\") + local:date(2008, 05, 12)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2008-05-12
      ",
   case xqerl_types:string_value(Res) of
             "2008-05-12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-add-dayTimeDuration-to-date-003'(_Config) ->
   Qry = "
      declare function local:two-digit($number as xs:integer) { 
      	let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string 
      }; 
      declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      	let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) 
      }; 
      local:date(25252734927766555, 05, 12) + xs:dayTimeDuration(\"P4267296D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
