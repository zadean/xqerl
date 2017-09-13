-module('fn_trace_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-trace-1'/1]).
-export(['fn-trace-2'/1]).
-export(['fn-trace-3'/1]).
-export(['fn-trace-4'/1]).
-export(['fn-trace-5'/1]).
-export(['fn-trace-6'/1]).
-export(['fn-trace-7'/1]).
-export(['fn-trace-8'/1]).
-export(['fn-trace-9'/1]).
-export(['fn-trace-10'/1]).
-export(['fn-trace-11'/1]).
-export(['fn-trace-12'/1]).
-export(['fn-trace-13'/1]).
-export(['fn-trace-14'/1]).
-export(['fn-trace-15'/1]).
-export(['fn-trace-16'/1]).
-export(['fn-trace-17'/1]).
-export(['fn-trace-18'/1]).
-export(['fn-trace-19'/1]).
-export(['fn-trace-20'/1]).
-export(['fn-trace-21'/1]).
-export(['K-TraceFunc-1'/1]).
-export(['K-TraceFunc-2'/1]).
-export(['K-TraceFunc-3'/1]).
-export(['K-TraceFunc-4'/1]).
-export(['K-TraceFunc-5'/1]).
-export(['K-TraceFunc-6'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-trace-1',
   'fn-trace-2',
   'fn-trace-3',
   'fn-trace-4',
   'fn-trace-5',
   'fn-trace-6',
   'fn-trace-7',
   'fn-trace-8',
   'fn-trace-9',
   'fn-trace-10',
   'fn-trace-11',
   'fn-trace-12',
   'fn-trace-13',
   'fn-trace-14',
   'fn-trace-15',
   'fn-trace-16',
   'fn-trace-17',
   'fn-trace-18',
   'fn-trace-19',
   'fn-trace-20',
   'fn-trace-21',
   'K-TraceFunc-1',
   'K-TraceFunc-2',
   'K-TraceFunc-3',
   'K-TraceFunc-4',
   'K-TraceFunc-5',
   'K-TraceFunc-6'].
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
'fn-trace-1'(_Config) ->
   Qry = "fn:trace()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-trace-2'(_Config) ->
   Qry = "
         let $var := xs:integer(\"123\") 
         return fn:trace($var,\"The Value of $var is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         123
      ",
   case xqerl_types:string_value(Res) of
             "123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-3'(_Config) ->
   Qry = "for $var in (1,2,3,4,5) return fn:trace($var + 1,\"The Value of $var + 1 is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 3 4 5 6
      ",
   case xqerl_types:string_value(Res) of
             "2 3 4 5 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-4'(_Config) ->
   Qry = "for $var in (2,3,4,5) return fn:trace($var - 1,\"The Value of $var - 1 is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-5'(_Config) ->
   Qry = "for $var in (2,3,4,5) return fn:trace($var * 2 ,\"The Value of $var * 2 is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4 6 8 10
      ",
   case xqerl_types:string_value(Res) of
             "4 6 8 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-6'(_Config) ->
   Qry = "for $var in (2,4,6,8) return fn:trace($var div 2 ,\"The Value of $var div 2 is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-7'(_Config) ->
   Qry = "for $var in (2,4,6,8) return fn:trace($var idiv 2 ,\"The Value of $var idiv 2 is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-8'(_Config) ->
   Qry = "for $var in (2,4,6,8) return fn:trace($var mod 2 ,\"The Value of $var mod 2 is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0 0 0 0
      ",
   case xqerl_types:string_value(Res) of
             "0 0 0 0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-9'(_Config) ->
   Qry = "for $var1 in (2,4,6,8), $var2 in (3 + $var1) - (4 * $var1) 
        return fn:trace($var1 + $var2 ,\"The Value of $var 1 + $var2 is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1 -5 -9 -13
      ",
   case xqerl_types:string_value(Res) of
             "-1 -5 -9 -13" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-10'(_Config) ->
   Qry = "for $var in (\"aa\",\"bb\",\"cc\",\"dd\",\"ee\") return fn:trace(fn:concat($var,$var) ,\"The Value of concat($var,$var) is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         aaaa bbbb cccc dddd eeee
      ",
   case xqerl_types:string_value(Res) of
             "aaaa bbbb cccc dddd eeee" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-11'(_Config) ->
   Qry = "for $var in (/works//hours) return fn:trace(($var div 2) ,\"The Value of hours div/2 is: \")",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         20 35 10 40 10 20 10 15 6 20 40 10 10 10 20 40
      ",
   case xqerl_types:string_value(Res) of
             "20 35 10 40 10 20 10 15 6 20 40 10 10 10 20 40" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-12'(_Config) ->
   Qry = "fn:trace((for $var in (/works//hours) return $var + $var) ,\"The Value of the given expression is: \")",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         80 140 40 160 40 80 40 60 24 80 160 40 40 40 80 160
      ",
   case xqerl_types:string_value(Res) of
             "80 140 40 160 40 80 40 60 24 80 160 40 40 40 80 160" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-13'(_Config) ->
   Qry = "fn:trace((fn:avg((1,3,3,4,5)) * 2) ,\"The Value of 'fn:avg((1,3,3,4,5)) * 2' is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6.4
      ",
   case xqerl_types:string_value(Res) of
             "6.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-14'(_Config) ->
   Qry = "fn:trace((for $var in (1.1,2.2,3.3,4.4,5.5) return xs:integer($var)) ,\"The Value of 'for $var in (1.1,2.2,3.3,4.4,5.5) return xs:float($var)' is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4 5
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-15'(_Config) ->
   Qry = "fn:trace((fn:trace((2+2),\"The value of '2 + 2' is:\" )) ,\"The Value of 'fn:trace(2+2)' is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4
      ",
   case xqerl_types:string_value(Res) of
             "4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-16'(_Config) ->
   Qry = "fn:trace((fn:count((1,2,-3,-4,5)) * 2) ,\"The Value of 'fn:count(1,2,-3,-4,5)) * 2' is: \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10
      ",
   case xqerl_types:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-17'(_Config) ->
   Qry = "fn:trace((for $var in (fn:true(),fn:false(),fn:true()) return $var and fn:true()) ,\"The value of 'for $var in (fn:true(),fn:false(),fn:true() return $var and fn:true()' is:\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true false true
      ",
   case xqerl_types:string_value(Res) of
             "true false true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-18'(_Config) ->
   Qry = "fn:trace((for $var in (fn:true(),fn:false(),fn:true()) return $var or fn:true()) ,\"The value of 'for $var in (fn:true(),fn:false(),fn:true() return $var or fn:true()' is:\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true true
      ",
   case xqerl_types:string_value(Res) of
             "true true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-trace-19'(_Config) ->
   Qry = "fn:count(fn:trace(() ,\"The value of the empty sequence is:\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            
         
      ",
 case (xqerl_types:string_value(Res) == "0") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-trace-20'(_Config) ->
   Qry = "fn:count(fn:trace(\"\" ,\"The value of the zero length string is:\"))",
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
'fn-trace-21'(_Config) ->
   Qry = "fn:trace((for $var in (fn:upper-case(\"a\"),fn:lower-case(\"B\")) return (fn:lower-case($var),fn:upper-case($var))) ,\"The value of the complex expression on the other argument is:\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a A b B
      ",
   case xqerl_types:string_value(Res) of
             "a A b B" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K-TraceFunc-1'(_Config) ->
   Qry = "trace()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-TraceFunc-2'(_Config) ->
   Qry = "trace(.)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K-TraceFunc-3'(_Config) ->
   Qry = "trace(., \"message\", \"wrong parameter\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-TraceFunc-4'(_Config) ->
   Qry = "trace(\"a string\", \"trace message\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a string
      ",
   case xqerl_types:string_value(Res) of
             "a string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K-TraceFunc-5'(_Config) ->
   Qry = "empty(trace((), \"trace message\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-TraceFunc-6'(_Config) ->
   Qry = "empty(trace(error(), \"trace message\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
