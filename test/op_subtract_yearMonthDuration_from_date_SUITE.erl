-module('op_subtract_yearMonthDuration_from_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-subtract-yearMonthDuration-from-date2args-1'/1]).
-export(['op-subtract-yearMonthDuration-from-date2args-2'/1]).
-export(['op-subtract-yearMonthDuration-from-date2args-3'/1]).
-export(['op-subtract-yearMonthDuration-from-date2args-4'/1]).
-export(['op-subtract-yearMonthDuration-from-date2args-5'/1]).
-export(['op-subtract-yearMonthDuration-from-date-1'/1]).
-export(['op-subtract-yearMonthDuration-from-date-2'/1]).
-export(['op-subtract-yearMonthDuration-from-date-3'/1]).
-export(['op-subtract-yearMonthDuration-from-date-4'/1]).
-export(['op-subtract-yearMonthDuration-from-date-5'/1]).
-export(['op-subtract-yearMonthDuration-from-date-6'/1]).
-export(['op-subtract-yearMonthDuration-from-date-7'/1]).
-export(['op-subtract-yearMonthDuration-from-date-8'/1]).
-export(['op-subtract-yearMonthDuration-from-date-9'/1]).
-export(['op-subtract-yearMonthDuration-from-date-10'/1]).
-export(['op-subtract-yearMonthDuration-from-date-12'/1]).
-export(['op-subtract-yearMonthDuration-from-date-13'/1]).
-export(['op-subtract-yearMonthDuration-from-date-14'/1]).
-export(['op-subtract-yearMonthDuration-from-date-15'/1]).
-export(['op-subtract-yearMonthDuration-from-date-16'/1]).
-export(['op-subtract-yearMonthDuration-from-date-17'/1]).
-export(['op-subtract-yearMonthDuration-from-date-18'/1]).
-export(['K-DateSubtractYMD-1'/1]).
-export(['cbcl-subtract-yearMonthDuration-from-date-001'/1]).
-export(['cbcl-subtract-yearMonthDuration-from-date-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-subtract-yearMonthDuration-from-date2args-1',
   'op-subtract-yearMonthDuration-from-date2args-2',
   'op-subtract-yearMonthDuration-from-date2args-3',
   'op-subtract-yearMonthDuration-from-date2args-4',
   'op-subtract-yearMonthDuration-from-date2args-5',
   'op-subtract-yearMonthDuration-from-date-1',
   'op-subtract-yearMonthDuration-from-date-2',
   'op-subtract-yearMonthDuration-from-date-3',
   'op-subtract-yearMonthDuration-from-date-4',
   'op-subtract-yearMonthDuration-from-date-5',
   'op-subtract-yearMonthDuration-from-date-6',
   'op-subtract-yearMonthDuration-from-date-7',
   'op-subtract-yearMonthDuration-from-date-8',
   'op-subtract-yearMonthDuration-from-date-9',
   'op-subtract-yearMonthDuration-from-date-10',
   'op-subtract-yearMonthDuration-from-date-12',
   'op-subtract-yearMonthDuration-from-date-13',
   'op-subtract-yearMonthDuration-from-date-14',
   'op-subtract-yearMonthDuration-from-date-15',
   'op-subtract-yearMonthDuration-from-date-16',
   'op-subtract-yearMonthDuration-from-date-17',
   'op-subtract-yearMonthDuration-from-date-18',
   'K-DateSubtractYMD-1',
   'cbcl-subtract-yearMonthDuration-from-date-001',
   'cbcl-subtract-yearMonthDuration-from-date-002'].
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
'op-subtract-yearMonthDuration-from-date2args-1'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") - xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1970-01-01Z
      ",
   case xqerl_test:string_value(Res) of
             "1970-01-01Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDuration-from-date2args-2'(_Config) ->
   Qry = "xs:date(\"1983-11-17Z\") - xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1983-11-17Z
      ",
   case xqerl_test:string_value(Res) of
             "1983-11-17Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDuration-from-date2args-3'(_Config) ->
   Qry = "xs:date(\"2030-12-31Z\") - xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2030-12-31Z
      ",
   case xqerl_test:string_value(Res) of
             "2030-12-31Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDuration-from-date2args-4'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") - xs:yearMonthDuration(\"P1000Y6M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0969-07-01Z
      ",
   case xqerl_test:string_value(Res) of
             "0969-07-01Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDuration-from-date2args-5'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") - xs:yearMonthDuration(\"P2030Y12M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -0062-01-01Z
            -0061-01-01Z
         
      ",
 case (xqerl_test:string_value(Res) == "-0062-01-01Z") orelse (xqerl_test:string_value(Res) == "-0061-01-01Z") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-subtract-yearMonthDuration-from-date-1'(_Config) ->
   Qry = "xs:date(\"2000-10-30\") - xs:yearMonthDuration(\"P1Y2M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1999-08-30
      ",
   case xqerl_test:string_value(Res) of
             "1999-08-30" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDuration-from-date-2'(_Config) ->
   Qry = "xs:date(\"2000-02-29Z\") - xs:yearMonthDuration(\"P1Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1999-02-28Z
      ",
   case xqerl_test:string_value(Res) of
             "1999-02-28Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDuration-from-date-3'(_Config) ->
   Qry = "xs:date(\"2000-10-31-05:00\") - xs:yearMonthDuration(\"P1Y1M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1999-09-30-05:00
      ",
   case xqerl_test:string_value(Res) of
             "1999-09-30-05:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDuration-from-date-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:date(\"1998-09-12Z\") - xs:yearMonthDuration(\"P20Y03M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDuration-from-date-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:date(\"1962-03-12Z\") - xs:yearMonthDuration(\"P10Y01M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDuration-from-date-6'(_Config) ->
   Qry = "fn:number(xs:date(\"1988-01-28Z\") - xs:yearMonthDuration(\"P09Y02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDuration-from-date-7'(_Config) ->
   Qry = "fn:string(xs:date(\"1989-07-05Z\") - xs:yearMonthDuration(\"P08Y04M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1981-03-05Z
      ",
   case xqerl_test:string_value(Res) of
             "1981-03-05Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDuration-from-date-8'(_Config) ->
   Qry = "(xs:date(\"0001-01-01Z\") - xs:yearMonthDuration(\"-P20Y07M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0021-08-01Z
      ",
   case xqerl_test:string_value(Res) of
             "0021-08-01Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDuration-from-date-9'(_Config) ->
   Qry = "fn:string((xs:date(\"1993-12-09Z\") - xs:yearMonthDuration(\"P03Y03M\"))) and fn:string((xs:date(\"1993-12-09Z\") - xs:yearMonthDuration(\"P03Y03M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDuration-from-date-10'(_Config) ->
   Qry = "fn:string((xs:date(\"1985-07-05Z\") - xs:yearMonthDuration(\"P02Y02M\"))) or fn:string((xs:date(\"1985-07-05Z\") - xs:yearMonthDuration(\"P02Y02M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDuration-from-date-12'(_Config) ->
   Qry = "fn:string((xs:date(\"1980-03-02Z\") - xs:yearMonthDuration(\"P05Y05M\"))) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDuration-from-date-13'(_Config) ->
   Qry = "(xs:date(\"1980-05-05Z\") - xs:yearMonthDuration(\"P23Y11M\")) eq xs:date(\"1980-05-05Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDuration-from-date-14'(_Config) ->
   Qry = "(xs:date(\"1979-12-12Z\") - xs:yearMonthDuration(\"P08Y08M\")) ne xs:date(\"1979-12-12Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDuration-from-date-15'(_Config) ->
   Qry = "(xs:date(\"1978-12-12Z\") - xs:yearMonthDuration(\"P17Y12M\")) le xs:date(\"1978-12-12Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDuration-from-date-16'(_Config) ->
   Qry = "(xs:date(\"1977-12-12Z\") - xs:yearMonthDuration(\"P18Y02M\")) ge xs:date(\"1977-12-12Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDuration-from-date-17'(_Config) ->
   Qry = "fn:string(xs:date(\"2000-12-12Z\") - xs:yearMonthDuration(\"P18Y11M\")) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDuration-from-date-18'(_Config) ->
   Qry = "fn:string((xs:date(\"1999-10-23Z\") - xs:yearMonthDuration(\"P19Y12M\"))) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateSubtractYMD-1'(_Config) ->
   Qry = "xs:date(\"1999-08-12\") - xs:yearMonthDuration(\"P3Y7M\") eq xs:date(\"1996-01-12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-subtract-yearMonthDuration-from-date-001'(_Config) ->
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) 
      	}; 
      	local:date(2008, 05, 12) - xs:dayTimeDuration(\"P0D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2008-05-12
      ",
   case xqerl_test:string_value(Res) of
             "2008-05-12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subtract-yearMonthDuration-from-date-002'(_Config) ->
   Qry = "
      	declare function local:two-digit($number as xs:integer) { 
      		let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string 
      	}; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { 
      		let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) 
      	}; 
      	local:date(-25252734927766554, 05, 12) - xs:yearMonthDuration(\"-P3214267297Y\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            -25252731713499257-05-12
         
      ",
 case (xqerl_test:string_value(Res) == "-25252731713499257-05-12") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
