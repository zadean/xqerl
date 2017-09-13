-module('prod_StepExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['K2-Steps-1'/1]).
-export(['K2-Steps-2'/1]).
-export(['K2-Steps-3'/1]).
-export(['K2-Steps-4'/1]).
-export(['K2-Steps-5'/1]).
-export(['K2-Steps-6'/1]).
-export(['K2-Steps-7'/1]).
-export(['K2-Steps-8'/1]).
-export(['K2-Steps-9'/1]).
-export(['K2-Steps-10'/1]).
-export(['K2-Steps-11'/1]).
-export(['K2-Steps-12'/1]).
-export(['K2-Steps-13'/1]).
-export(['K2-Steps-14'/1]).
-export(['K2-Steps-15'/1]).
-export(['K2-Steps-16'/1]).
-export(['K2-Steps-17'/1]).
-export(['K2-Steps-18'/1]).
-export(['K2-Steps-19'/1]).
-export(['K2-Steps-20'/1]).
-export(['K2-Steps-21'/1]).
-export(['K2-Steps-22'/1]).
-export(['K2-Steps-23'/1]).
-export(['K2-Steps-24'/1]).
-export(['K2-Steps-25'/1]).
-export(['K2-Steps-26'/1]).
-export(['K2-Steps-27'/1]).
-export(['K2-Steps-28'/1]).
-export(['K2-Steps-29'/1]).
-export(['K2-Steps-30'/1]).
-export(['K2-Steps-31'/1]).
-export(['K2-Steps-32'/1]).
-export(['K2-Steps-33'/1]).
-export(['K2-Steps-34'/1]).
-export(['K2-Steps-35'/1]).
-export(['Steps-leading-lone-slash-1'/1]).
-export(['Steps-leading-lone-slash-1a'/1]).
-export(['Steps-leading-lone-slash-2'/1]).
-export(['Steps-leading-lone-slash-2a'/1]).
-export(['Steps-leading-lone-slash-3'/1]).
-export(['Steps-leading-lone-slash-3a'/1]).
-export(['Steps-leading-lone-slash-4'/1]).
-export(['Steps-leading-lone-slash-5'/1]).
-export(['Steps-leading-lone-slash-5a'/1]).
-export(['Steps-leading-lone-slash-6'/1]).
-export(['Steps-leading-lone-slash-7'/1]).
-export(['Steps-leading-lone-slash-7a'/1]).
-export(['Steps-leading-lone-slash-8'/1]).
-export(['Steps-leading-lone-slash-8a'/1]).
-export(['Steps-leading-lone-slash-9'/1]).
-export(['Steps-leading-lone-slash-10'/1]).
-export(['Steps-leading-lone-slash-11'/1]).
-export(['Steps-leading-lone-slash-12'/1]).
-export(['Steps-leading-lone-slash-13'/1]).
-export(['Steps-leading-lone-slash-14'/1]).
-export(['Steps-leading-lone-slash-15'/1]).
-export(['Steps-leading-lone-slash-16'/1]).
-export(['Steps-leading-lone-slash-17'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'K2-Steps-1',
   'K2-Steps-2',
   'K2-Steps-3',
   'K2-Steps-4',
   'K2-Steps-5',
   'K2-Steps-6',
   'K2-Steps-7',
   'K2-Steps-8',
   'K2-Steps-9',
   'K2-Steps-10',
   'K2-Steps-11',
   'K2-Steps-12',
   'K2-Steps-13',
   'K2-Steps-14',
   'K2-Steps-15',
   'K2-Steps-16',
   'K2-Steps-17',
   'K2-Steps-18',
   'K2-Steps-19',
   'K2-Steps-20',
   'K2-Steps-21',
   'K2-Steps-22',
   'K2-Steps-23',
   'K2-Steps-24',
   'K2-Steps-25',
   'K2-Steps-26',
   'K2-Steps-27',
   'K2-Steps-28',
   'K2-Steps-29',
   'K2-Steps-30',
   'K2-Steps-31',
   'K2-Steps-32',
   'K2-Steps-33',
   'K2-Steps-34',
   'K2-Steps-35',
   'Steps-leading-lone-slash-1',
   'Steps-leading-lone-slash-1a',
   'Steps-leading-lone-slash-2',
   'Steps-leading-lone-slash-2a',
   'Steps-leading-lone-slash-3',
   'Steps-leading-lone-slash-3a',
   'Steps-leading-lone-slash-4',
   'Steps-leading-lone-slash-5',
   'Steps-leading-lone-slash-5a',
   'Steps-leading-lone-slash-6',
   'Steps-leading-lone-slash-7',
   'Steps-leading-lone-slash-7a',
   'Steps-leading-lone-slash-8',
   'Steps-leading-lone-slash-8a',
   'Steps-leading-lone-slash-9',
   'Steps-leading-lone-slash-10',
   'Steps-leading-lone-slash-11',
   'Steps-leading-lone-slash-12',
   'Steps-leading-lone-slash-13',
   'Steps-leading-lone-slash-14',
   'Steps-leading-lone-slash-15',
   'Steps-leading-lone-slash-16',
   'Steps-leading-lone-slash-17'].
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
'K2-Steps-1'(_Config) ->
   Qry = "declare function local:myFunc() { e[1] }; local:myFunc()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-Steps-2'(_Config) ->
   Qry = "declare function local:myFunc() { e[928] }; local:myFunc()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-Steps-3'(_Config) ->
   Qry = "declare function local:myFunc() { e[true()] }; local:myFunc()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-Steps-4'(_Config) ->
   Qry = "declare function local:myFunc() { e[last()] }; local:myFunc()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-Steps-5'(_Config) ->
   Qry = "empty(<a/>/a)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-Steps-6'(_Config) ->
   Qry = "<a/>/.",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-7'(_Config) ->
   Qry = "count((<a/>, <!--comment-->)/3)",
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
'K2-Steps-8'(_Config) ->
   Qry = "(/)/(//)/foo",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-Steps-9'(_Config) ->
   Qry = "child::local:b(:ada",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-Steps-10'(_Config) ->
   Qry = "declare variable $myVar := <e>text</e>; $myVar/text()/(<e/>, (), 1, <e/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0018" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0018'}) end.
'K2-Steps-11'(_Config) ->
   Qry = "///",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-Steps-12'(_Config) ->
   Qry = "declare variable $e := ()/.; declare variable $b := <b/>/.; $e, <b/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            <b/>
            
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P1 -> "deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<b/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-Steps-13'(_Config) ->
   Qry = "empty(<e/>/(for $i in e return $i))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-Steps-14'(_Config) ->
   Qry = "<r> { let $i := <e> <a/> <b/> </e> let $b := ($i/b, $i/a, $i/b, $i/a) return ()/$b } </r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            <r/>
            
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P1 -> "deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<r/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-Steps-15'(_Config) ->
   Qry = "<r> { let $i := <e> <a/> <b/> </e> let $b := ($i/b, $i/a, $i/b, $i/a) return <e/>/$b } </r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <r><a/><b/></r>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r><a/><b/></r>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r><a/><b/></r>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-16'(_Config) ->
   Qry = "<r> { let $i := <e> <a/> <b/> </e> let $b := ($i/b, $i/a, $i/b, $i/a) return <e/>/./$b } </r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <r><a/><b/></r>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r><a/><b/></r>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r><a/><b/></r>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-17'(_Config) ->
   Qry = "<r> { let $i := <e> <a/> <b/> </e> let $b := ($i/b, $i/a, $i/b, $i/a) return $b/. } </r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <r><a/><b/></r>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r><a/><b/></r>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r><a/><b/></r>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-18'(_Config) ->
   Qry = "<e> <a/> </e>/*/(., .)/.",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-19'(_Config) ->
   Qry = "<e> <a/> </e>/(., .)/.",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e><a/></e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e><a/></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e><a/></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-20'(_Config) ->
   Qry = "<e> <a/> <b/> </e>/((b, a)/., (.), (*, *))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e><a/><b/></e><a/><b/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e><a/><b/></e><a/><b/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e><a/><b/></e><a/><b/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-21'(_Config) ->
   Qry = "declare variable $root := <a> <b e=\"B\"/> <c e=\"B\"/> </a>; declare function local:function($arg) { $root[\"B\" eq $arg/@e] }; $root/local:function(c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a><b e=\"B\"/><c e=\"B\"/></a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a><b e=\"B\"/><c e=\"B\"/></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a><b e=\"B\"/><c e=\"B\"/></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-22'(_Config) ->
   Qry = "declare variable $root := <a> <b e=\"B\"/> <c e=\"B\"/> </a>; declare function local:function($arg) { $root[exactly-one($arg/@e)] }; $root/local:function(c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a><b e=\"B\"/><c e=\"B\"/></a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a><b e=\"B\"/><c e=\"B\"/></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a><b e=\"B\"/><c e=\"B\"/></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-23'(_Config) ->
   Qry = "declare variable $root := <a><c e=\"\"/></a>; declare function local:function($arg) { $root[$arg/@e] }; $root/local:function(c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a><c e=\"\"/></a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a><c e=\"\"/></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a><c e=\"\"/></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-24'(_Config) ->
   Qry = "declare variable $root := <root> <b d=\"\"/> <c> <c d=\"\"/> <c/> </c> </root>; declare function local:function($object) { $root/b[@d = $object/@d] }; $root/c/c/local:function(.)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <b d=\"\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b d=\"\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b d=\"\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-25'(_Config) ->
   Qry = "
        declare variable $root := <root> <b d=\"\"/> <c> <c d=\"\"/> <c/> </c> </root>; 
        declare function local:function($object) { $root/b[@d = $object/@d] }; 
        $root//local:function(c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <b d=\"\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b d=\"\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b d=\"\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-26'(_Config) ->
   Qry = "declare variable $root := <root> <b d=\"\"/> <c> <c d=\"\"/> <c/> </c> </root>; declare function local:function($object) { $root/b[$object/@d] }; $root//local:function(c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <b d=\"\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b d=\"\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b d=\"\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-27'(_Config) ->
   Qry = "declare variable $root := <root> <b d=\"\"/> <c> <c d=\"\"/> <c/> </c> </root>; declare function local:function($object) { $root[$object/@d] }; $root//local:function(c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <root><b d=\"\"/><c><c d=\"\"/><c/></c></root>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<root><b d=\"\"/><c><c d=\"\"/><c/></c></root>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<root><b d=\"\"/><c><c d=\"\"/><c/></c></root>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-28'(_Config) ->
   Qry = "declare variable $root := <root> <b d=\"\"/> <c d=\"\"/> </root>; declare function local:function($object) { $root[$object/@d] }; $root//local:function(c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <root><b d=\"\"/><c d=\"\"/></root>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<root><b d=\"\"/><c d=\"\"/></root>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<root><b d=\"\"/><c d=\"\"/></root>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-29'(_Config) ->
   Qry = "declare variable $root := <root> <c d=\"\"/> </root>; declare function local:function($object) { $root[$object/@d] }; $root//local:function(c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <root><c d=\"\"/></root>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<root><c d=\"\"/></root>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<root><c d=\"\"/></root>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-30'(_Config) ->
   Qry = "declare variable $root := <root> <c d=\"\"/> </root>; declare function local:function($object) { $root[$object] }; $root//local:function(c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <root><c d=\"\"/></root>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<root><c d=\"\"/></root>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<root><c d=\"\"/></root>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-31'(_Config) ->
   Qry = "declare variable $root := <root><c/></root>; declare function local:function($arg) { $root[$arg] }; $root//local:function(.)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <root><c/></root>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<root><c/></root>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<root><c/></root>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-32'(_Config) ->
   Qry = "declare variable $root := <root/>; declare function local:function($arg, $count as xs:integer) { $arg, $root, if($count eq 2) then $root else local:function($arg, $count + 1) }; $root/local:function(., 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <root/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<root/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<root/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-33'(_Config) ->
   Qry = "declare variable $root := ( <b d=\"\"/>, <c> <c d=\"\"/> </c> ); declare function local:function($object) { $root[@d eq $object/@d] }; $root/local:function(c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <b d=\"\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b d=\"\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b d=\"\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-34'(_Config) ->
   Qry = "declare variable $root := ( <b d=\"\"/>, <c d=\"\"> <c d=\"\"/> </c> ); declare function local:function($object) { $root[@d eq $object/@d] }; $root/local:function(c)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <b d=\"\"/><c d=\"\"><c d=\"\"/></c>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b d=\"\"/><c d=\"\"><c d=\"\"/></c>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b d=\"\"/><c d=\"\"><c d=\"\"/></c>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Steps-35'(_Config) ->
   Qry = "<e/>[1]/text{string-join(., \" \")}, 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            2
            string($result[1]) eq \"\"
            $result[2] eq 1
         
      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"string($result[1]) eq \"\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result[2] eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_seq2:size(Res) == 2 of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'Steps-leading-lone-slash-1'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/*5]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Steps-leading-lone-slash-1a'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[(/)*5]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Steps-leading-lone-slash-2'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/<a]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Steps-leading-lone-slash-2a'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[(/)<a]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Steps-leading-lone-slash-3'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/<5]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Steps-leading-lone-slash-3a'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[(/)<5]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Steps-leading-lone-slash-4'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/</b]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Steps-leading-lone-slash-5'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/<a div 3]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Steps-leading-lone-slash-5a'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[(/)<a div 3]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Steps-leading-lone-slash-6'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/if ($doclevel) then / else /*]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Steps-leading-lone-slash-7'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; declare variable $a := document {<a>123</a>}; $var[/ is $a]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Steps-leading-lone-slash-7a'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; declare variable $a := document {<a>123</a>}; $var[(/) is $a]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Steps-leading-lone-slash-8'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/ instance of document-node(element(x))]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Steps-leading-lone-slash-8a'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[(/) instance of document-node(element(x))]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Steps-leading-lone-slash-9'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; let $doc := / return $doc/*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'Steps-leading-lone-slash-10'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/*]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>123</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>123</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>123</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Steps-leading-lone-slash-11'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/<a/>]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>123</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>123</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>123</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Steps-leading-lone-slash-12'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/<a div=\"3\"/>]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>123</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>123</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>123</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Steps-leading-lone-slash-13'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/unordered{a}]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>123</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>123</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>123</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Steps-leading-lone-slash-14'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/max(a)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Steps-leading-lone-slash-15'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; $var[/-5]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Steps-leading-lone-slash-16'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; declare variable $a := document {<a>123</a>}; $var[/=$a]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>123</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>123</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>123</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Steps-leading-lone-slash-17'(_Config) ->
   Qry = "declare variable $var := document {<a>123</a>}; declare variable $a := document {<a>123</a>}; $var[5*/]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
