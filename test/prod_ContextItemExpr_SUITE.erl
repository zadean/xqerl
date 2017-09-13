-module('prod_ContextItemExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['externalcontextitem-1'/1]).
-export(['externalcontextitem-2'/1]).
-export(['externalcontextitem-3'/1]).
-export(['externalcontextitem-4'/1]).
-export(['externalcontextitem-5'/1]).
-export(['externalcontextitem-6'/1]).
-export(['externalcontextitem-7'/1]).
-export(['externalcontextitem-8'/1]).
-export(['externalcontextitem-9'/1]).
-export(['externalcontextitem-10'/1]).
-export(['externalcontextitem-11'/1]).
-export(['externalcontextitem-12'/1]).
-export(['externalcontextitem-13'/1]).
-export(['externalcontextitem-14'/1]).
-export(['externalcontextitem-15'/1]).
-export(['externalcontextitem-16'/1]).
-export(['externalcontextitem-17'/1]).
-export(['externalcontextitem-18'/1]).
-export(['externalcontextitem-19'/1]).
-export(['externalcontextitem-20'/1]).
-export(['externalcontextitem-21'/1]).
-export(['externalcontextitem-22'/1]).
-export(['externalcontextitem-23'/1]).
-export(['externalcontextitem-24'/1]).
-export(['internalcontextitem-1'/1]).
-export(['internalcontextitem-2'/1]).
-export(['internalcontextitem-3'/1]).
-export(['internalcontextitem-4'/1]).
-export(['internalcontextitem-5'/1]).
-export(['internalcontextitem-6'/1]).
-export(['internalcontextitem-7'/1]).
-export(['internalcontextitem-8'/1]).
-export(['internalcontextitem-9'/1]).
-export(['internalcontextitem-10'/1]).
-export(['internalcontextitem-11'/1]).
-export(['internalcontextitem-12'/1]).
-export(['internalcontextitem-13'/1]).
-export(['internalcontextitem-14'/1]).
-export(['internalcontextitem-15'/1]).
-export(['internalcontextitem-16'/1]).
-export(['internalcontextitem-17'/1]).
-export(['internalcontextitem-18'/1]).
-export(['internalcontextitem-19'/1]).
-export(['internalcontextitem-20'/1]).
-export(['internalcontextitem-21'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'externalcontextitem-1',
   'externalcontextitem-2',
   'externalcontextitem-3',
   'externalcontextitem-4',
   'externalcontextitem-5',
   'externalcontextitem-6',
   'externalcontextitem-7',
   'externalcontextitem-8',
   'externalcontextitem-9',
   'externalcontextitem-10',
   'externalcontextitem-11',
   'externalcontextitem-12',
   'externalcontextitem-13',
   'externalcontextitem-14',
   'externalcontextitem-15',
   'externalcontextitem-16',
   'externalcontextitem-17',
   'externalcontextitem-18',
   'externalcontextitem-19',
   'externalcontextitem-20',
   'externalcontextitem-21',
   'externalcontextitem-22',
   'externalcontextitem-23',
   'externalcontextitem-24',
   'internalcontextitem-1',
   'internalcontextitem-2',
   'internalcontextitem-3',
   'internalcontextitem-4',
   'internalcontextitem-5',
   'internalcontextitem-6',
   'internalcontextitem-7',
   'internalcontextitem-8',
   'internalcontextitem-9',
   'internalcontextitem-10',
   'internalcontextitem-11',
   'internalcontextitem-12',
   'internalcontextitem-13',
   'internalcontextitem-14',
   'internalcontextitem-15',
   'internalcontextitem-16',
   'internalcontextitem-17',
   'internalcontextitem-18',
   'internalcontextitem-19',
   'internalcontextitem-20',
   'internalcontextitem-21'].
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
'externalcontextitem-1'(_Config) ->
   Qry = "
        declare namespace eg = \"http://example.org\"; 
        declare function eg:noContextFunction() { name }; 
        eg:noContextFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'externalcontextitem-2'(_Config) ->
   Qry = "for $var in /works/employee[1] return $var/xs:string(exactly-one(empnum))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         E1
      ",
   case xqerl_types:string_value(Res) of
             "E1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'externalcontextitem-3'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/xs:integer(exactly-one(hours))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         40
      ",
 Tst = xqerl:run("40"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-4'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/xs:decimal(exactly-one(hours))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         40
      ",
 Tst = xqerl:run("40"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-5'(_Config) ->
   Qry = "for $var in /works/employee[1] return $var/xs:float(exactly-one(hours))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         40
      ",
 Tst = xqerl:run("40"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-6'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/xs:double(exactly-one(hours))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         40
      ",
 Tst = xqerl:run("40"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-7'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/xs:boolean(exactly-one(hours) - 39)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'externalcontextitem-8'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/fn:not(xs:boolean(exactly-one(hours) - 39))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'externalcontextitem-9'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/fn:sum((hours,hours))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         80
      ",
 Tst = xqerl:run("80"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-10'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/(exactly-one(hours) + exactly-one(hours))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         80
      ",
 Tst = xqerl:run("80"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-11'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/(exactly-one(hours) - exactly-one(hours))",
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
'externalcontextitem-12'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/(exactly-one(hours) * exactly-one(hours))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1600
      ",
 Tst = xqerl:run("1600"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-13'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/(exactly-one(hours) mod exactly-one(hours))",
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
'externalcontextitem-14'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/(exactly-one(hours) div exactly-one(hours))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-15'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/(exactly-one(hours) idiv exactly-one(hours))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-16'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/(xs:boolean(exactly-one(hours) - 39) and xs:boolean(exactly-one(hours) - 39))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'externalcontextitem-17'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/(xs:boolean(exactly-one(hours) - 39) or xs:boolean(exactly-one(hours) - 39))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'externalcontextitem-18'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/fn:string-length(exactly-one(hours))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'externalcontextitem-19'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/fn:avg((hours,hours,hours))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         40
      ",
 Tst = xqerl:run("40"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-20'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/fn:min((hours,hours,22))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         22
      ",
 Tst = xqerl:run("22"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-21'(_Config) ->
   Qry = "for $var in (/works/employee[1]) return $var/fn:max((hours,exactly-one(hours) + 1,22))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         41
      ",
 Tst = xqerl:run("41"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'externalcontextitem-22'(_Config) ->
   Qry = "./works/employee[1]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'externalcontextitem-23'(_Config) ->
   Qry = "./works/employee[1]",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'externalcontextitem-24'(_Config) ->
   Qry = "works/employee[1]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"Jane Doe 1\" gender=\"female\">
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'internalcontextitem-1'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:noContextFunction() { . }; eg:noContextFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'internalcontextitem-2'(_Config) ->
   Qry = "(\"A\",\"B\",\"C\")[xs:string(.)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         A B C
      ",
   case xqerl_types:string_value(Res) of
             "A B C" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-3'(_Config) ->
   Qry = "(1,2,3)[xs:integer(.)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-4'(_Config) ->
   Qry = "(1,2,3)[xs:decimal(.)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-5'(_Config) ->
   Qry = "(1,2,3)[xs:float(.)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-6'(_Config) ->
   Qry = "(1,2,3)[xs:double(.)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-7'(_Config) ->
   Qry = "(fn:true(),fn:false(),fn:true())[xs:boolean(.)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true
      ",
   case xqerl_types:string_value(Res) of
             "true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-8'(_Config) ->
   Qry = "(fn:false(),fn:true(),fn:false())[fn:not(xs:boolean(.))]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         false false
      ",
   case xqerl_types:string_value(Res) of
             "false false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-9'(_Config) ->
   Qry = "fn:count(((),(),())[xs:string(.)])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            
         
      ",
 case ( begin Tst1 = xqerl:run("0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'internalcontextitem-10'(_Config) ->
   Qry = "(1,2,3)[(. + .) gt 1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-11'(_Config) ->
   Qry = "(3,4,5)[(xs:integer(5) - xs:integer(.)) gt 1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'internalcontextitem-12'(_Config) ->
   Qry = "(3,4,5)[(xs:integer(.) * xs:integer(.)) gt 2]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3 4 5
      ",
   case xqerl_types:string_value(Res) of
             "3 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-13'(_Config) ->
   Qry = "(6,10,14)[(xs:integer(.) mod xs:integer(3)) gt 1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         14
      ",
 Tst = xqerl:run("14"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'internalcontextitem-14'(_Config) ->
   Qry = "(6,10,14)[(xs:integer(.) div xs:integer(3)) gt 2]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10 14
      ",
   case xqerl_types:string_value(Res) of
             "10 14" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-15'(_Config) ->
   Qry = "(6,10,14)[(xs:integer(.) idiv xs:integer(3)) gt 2]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10 14
      ",
   case xqerl_types:string_value(Res) of
             "10 14" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-16'(_Config) ->
   Qry = "(fn:true(),fn:false(),fn:true())[xs:boolean(.) and xs:boolean(.)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true
      ",
   case xqerl_types:string_value(Res) of
             "true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-17'(_Config) ->
   Qry = "(fn:true(),fn:false(),fn:true())[xs:boolean(.) or xs:boolean(.)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true
      ",
   case xqerl_types:string_value(Res) of
             "true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-18'(_Config) ->
   Qry = "(\"ABC\", \"DEF\",\"A\")[fn:string-length(.) gt 2]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ABC DEF
      ",
   case xqerl_types:string_value(Res) of
             "ABC DEF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-19'(_Config) ->
   Qry = "(1,2,3)[fn:avg((.,2,3)) gt 2]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 3
      ",
   case xqerl_types:string_value(Res) of
             "2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-20'(_Config) ->
   Qry = "(1,2,3)[fn:min((.,2)) eq 2]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 3
      ",
   case xqerl_types:string_value(Res) of
             "2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'internalcontextitem-21'(_Config) ->
   Qry = "(1,2,3)[fn:min((.,3)) eq 3]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
