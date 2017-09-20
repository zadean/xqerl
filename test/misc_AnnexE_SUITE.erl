-module('misc_AnnexE_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['annex-1'/1]).
-export(['annex-2'/1]).
-export(['annex-3'/1]).
-export(['annex-4'/1]).
-export(['annex-5'/1]).
-export(['annex-6'/1]).
-export(['annex-7'/1]).
-export(['annex-8'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'annex-1',
   'annex-2',
   'annex-3',
   'annex-4',
   'annex-5',
   'annex-6',
   'annex-7',
   'annex-8'].
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
'annex-1'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:if-empty ( $node as node()?, $value as xs:anyAtomicType) as xs:anyAtomicType* { if ($node and $node/child::node()) then fn:data($node) else $value }; let $arg1 := <element1>some data</element1> let $arg2 as xs:anyAtomicType := 1 return eg:if-empty($arg1,$arg2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         some data
      ",
   case xqerl_test:string_value(Res) of
             "some data" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'annex-2'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:if-absent ( $node as node()?, $value as xs:anyAtomicType) as xs:anyAtomicType* { if ($node) then fn:data($node) else $value }; let $arg1 := <element1>some data</element1> let $arg2 as xs:anyAtomicType := 1 return eg:if-absent($arg1,$arg2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         some data
      ",
   case xqerl_test:string_value(Res) of
             "some data" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'annex-3'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:value-union ( $arg1 as xs:anyAtomicType*, $arg2 as xs:anyAtomicType*) as xs:anyAtomicType* { fn:distinct-values(($arg1, $arg2)) }; let $arg1 as xs:anyAtomicType := 1 let $arg2 as xs:anyAtomicType := 2 return eg:value-union($arg1,$arg2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2
      ",
   case xqerl_test:string_value(Res) of
             "1 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'annex-4'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:value-intersect ( $arg1 as xs:anyAtomicType*, $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { fn:distinct-values($arg1[.=$arg2]) }; let $arg1 as xs:anyAtomicType := 1 let $arg2 as xs:anyAtomicType := 1 return eg:value-intersect($arg1,$arg2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'annex-5'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:value-except ( $arg1 as xs:anyAtomicType*, $arg2 as xs:anyAtomicType*) as xs:anyAtomicType* { fn:distinct-values($arg1[not(.=$arg2)]) }; let $arg1 as xs:anyAtomicType := 1 let $arg2 as xs:anyAtomicType := 2 return eg:value-except($arg1,$arg2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'annex-6'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:index-of-node($sequence as node()*, $srch as node()) as xs:integer* { for $n at $i in $sequence where ($n is $srch) return $i }; let $arg1 := (<element1>some data 1</element1>,<element2>some data 2</element2>) let $arg2 := $arg1[2] return eg:index-of-node($arg1, exactly-one($arg2))",
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
'annex-7'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:string-pad ( $padString as xs:string?, $padCount as xs:integer) as xs:string { fn:string-join((for $i in 1 to $padCount return $padString), \"\") }; let $arg1 as xs:string := \"A String\" let $arg2 as xs:integer := 3 return eg:string-pad($arg1,$arg2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         A StringA StringA String
      ",
   case xqerl_test:string_value(Res) of
             "A StringA StringA String" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'annex-8'(_Config) ->
   Qry = "declare namespace eg = \"http://example.org\"; declare function eg:distinct-nodes-stable ($arg as node()*) as node()* { for $a at $apos in $arg let $before_a := fn:subsequence($arg, 1, $apos - 1) where every $ba in $before_a satisfies not($ba is $a) return $a }; let $arg1 := (<element1>some data 1</element1>,<element2>some data 2</element2>) return eg:distinct-nodes-stable($arg1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <element1>some data 1</element1><element2>some data 2</element2>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<element1>some data 1</element1><element2>some data 2</element2>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<element1>some data 1</element1><element2>some data 2</element2>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
