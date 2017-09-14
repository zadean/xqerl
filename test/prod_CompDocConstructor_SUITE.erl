-module('prod_CompDocConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-docnode-adjtext-1'/1]).
-export(['Constr-docnode-adjtext-2'/1]).
-export(['Constr-docnode-adjtext-3'/1]).
-export(['Constr-docnode-nested-1'/1]).
-export(['Constr-docnode-nested-2'/1]).
-export(['Constr-docnode-nested-3'/1]).
-export(['Constr-docnode-nested-4'/1]).
-export(['Constr-docnode-enclexpr-1'/1]).
-export(['Constr-docnode-enclexpr-2'/1]).
-export(['Constr-docnode-enclexpr-3'/1]).
-export(['Constr-docnode-enclexpr-4'/1]).
-export(['Constr-docnode-nodeid-1'/1]).
-export(['Constr-docnode-nodeid-3'/1]).
-export(['Constr-docnode-nodeid-4'/1]).
-export(['Constr-docnode-nodeid-5'/1]).
-export(['Constr-docnode-constrmod-1'/1]).
-export(['Constr-docnode-constrmod-2'/1]).
-export(['Constr-docnode-constrmod-3'/1]).
-export(['Constr-docnode-constrmod-4'/1]).
-export(['Constr-docnode-doc-1'/1]).
-export(['Constr-docnode-parent-1'/1]).
-export(['Constr-docnode-string-1'/1]).
-export(['Constr-docnode-data-1'/1]).
-export(['Constr-docnode-attr-1'/1]).
-export(['Constr-docnode-attr-2'/1]).
-export(['Constr-docnode-attr-3'/1]).
-export(['K2-ConDocNode-1'/1]).
-export(['K2-ConDocNode-2'/1]).
-export(['K2-ConDocNode-3'/1]).
-export(['K2-ConDocNode-4'/1]).
-export(['K2-ConDocNode-5'/1]).
-export(['K2-ConDocNode-6'/1]).
-export(['K2-ConDocNode-7'/1]).
-export(['K2-ConDocNode-8'/1]).
-export(['K2-ConDocNode-9'/1]).
-export(['K2-ConDocNode-10'/1]).
-export(['K2-ConDocNode-11'/1]).
-export(['K2-ConDocNode-12'/1]).
-export(['K2-ConDocNode-13'/1]).
-export(['K2-ConDocNode-14'/1]).
-export(['K2-ConDocNode-15'/1]).
-export(['K2-ConDocNode-16'/1]).
-export(['K2-ConDocNode-17'/1]).
-export(['K2-ConDocNode-18'/1]).
-export(['K2-ConDocNode-19'/1]).
-export(['K2-ConDocNode-20'/1]).
-export(['K2-ConDocNode-21'/1]).
-export(['K2-ConDocNode-22'/1]).
-export(['K2-ConDocNode-23'/1]).
-export(['K2-ConDocNode-24'/1]).
-export(['K2-ConDocNode-25'/1]).
-export(['K2-ConDocNode-26'/1]).
-export(['K2-ConDocNode-27'/1]).
-export(['K2-ConDocNode-28'/1]).
-export(['K2-ConDocNode-29'/1]).
-export(['K2-ConDocNode-30'/1]).
-export(['K2-ConDocNode-31'/1]).
-export(['K2-ConDocNode-32'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Constr-docnode-adjtext-1',
   'Constr-docnode-adjtext-2',
   'Constr-docnode-adjtext-3',
   'Constr-docnode-nested-1',
   'Constr-docnode-nested-2',
   'Constr-docnode-nested-3',
   'Constr-docnode-nested-4',
   'Constr-docnode-enclexpr-1',
   'Constr-docnode-enclexpr-2',
   'Constr-docnode-enclexpr-3',
   'Constr-docnode-enclexpr-4',
   'Constr-docnode-nodeid-1',
   'Constr-docnode-nodeid-3',
   'Constr-docnode-nodeid-4',
   'Constr-docnode-nodeid-5',
   'Constr-docnode-constrmod-1',
   'Constr-docnode-constrmod-2',
   'Constr-docnode-constrmod-3',
   'Constr-docnode-constrmod-4',
   'Constr-docnode-doc-1',
   'Constr-docnode-parent-1',
   'Constr-docnode-string-1',
   'Constr-docnode-data-1',
   'Constr-docnode-attr-1',
   'Constr-docnode-attr-2',
   'Constr-docnode-attr-3',
   'K2-ConDocNode-1',
   'K2-ConDocNode-2',
   'K2-ConDocNode-3',
   'K2-ConDocNode-4',
   'K2-ConDocNode-5',
   'K2-ConDocNode-6',
   'K2-ConDocNode-7',
   'K2-ConDocNode-8',
   'K2-ConDocNode-9',
   'K2-ConDocNode-10',
   'K2-ConDocNode-11',
   'K2-ConDocNode-12',
   'K2-ConDocNode-13',
   'K2-ConDocNode-14',
   'K2-ConDocNode-15',
   'K2-ConDocNode-16',
   'K2-ConDocNode-17',
   'K2-ConDocNode-18',
   'K2-ConDocNode-19',
   'K2-ConDocNode-20',
   'K2-ConDocNode-21',
   'K2-ConDocNode-22',
   'K2-ConDocNode-23',
   'K2-ConDocNode-24',
   'K2-ConDocNode-25',
   'K2-ConDocNode-26',
   'K2-ConDocNode-27',
   'K2-ConDocNode-28',
   'K2-ConDocNode-29',
   'K2-ConDocNode-30',
   'K2-ConDocNode-31',
   'K2-ConDocNode-32'].
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
];
environment('DupNode') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/CompAttrConstructor/DupNode.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('TreeEmpty') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/AxisStep/TreeEmpty.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Constr-docnode-adjtext-1'(_Config) ->
   Qry = "count((document {1, 'string', 1,2e3})/text())",
   Qry1 = Qry,
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
'Constr-docnode-adjtext-2'(_Config) ->
   Qry = "count((document {1, //text(), 'string'})/text())",
   Env = xqerl_test:handle_environment(environment('DupNode')),
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
'Constr-docnode-adjtext-3'(_Config) ->
   Qry = "count((document {1, 2, <a/>, 3, 4, <b/>, 5, 6})/text())",
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
'Constr-docnode-nested-1'(_Config) ->
   Qry = "document {1, document {2, document {document {()}, document {3}}, 4}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1234
      ",
   case xqerl_types:string_value(Res) of
             "1234" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-docnode-nested-2'(_Config) ->
   Qry = "document {/root}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-docnode-nested-3'(_Config) ->
   Qry = "count(document {1, document{2}, document { document {()}, document {3}}, 4}/text())",
   Qry1 = Qry,
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
'Constr-docnode-nested-4'(_Config) ->
   Qry = "count(document {\"\", document{\"\"}, document { document {()}, document {\"\"}}, \"\"}/text())",
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
'Constr-docnode-enclexpr-1'(_Config) ->
   Qry = "document {()}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-docnode-enclexpr-2'(_Config) ->
   Qry = "document {1,'a',3.5,4e2}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 a 3.5 400
      ",
   case xqerl_types:string_value(Res) of
             "1 a 3.5 400" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-docnode-enclexpr-3'(_Config) ->
   Qry = "document {1,//a,2,3,//comment(),4,5,//processing-instruction(),6,7,//text(),8}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Constr-docnode-enclexpr-4'(_Config) ->
   Qry = "document {1, '', 2}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1  2
      ",
   case xqerl_types:string_value(Res) of
             "1  2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-docnode-nodeid-1'(_Config) ->
   Qry = "for $x in <a/>, $y in document {$x} return exactly-one($y/a) is $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-docnode-nodeid-3'(_Config) ->
   Qry = "for $x in <!--comment-->, $y in document {$x} return exactly-one($y/comment()) is $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-docnode-nodeid-4'(_Config) ->
   Qry = "for $x in <?pi content?>, $y in document {$x} return exactly-one($y/processing-instruction()) is $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-docnode-nodeid-5'(_Config) ->
   Qry = "for $x in <a>text</a>, $y in document {$x/text()} return exactly-one($y/text()) is exactly-one($x/text())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'Constr-docnode-constrmod-1'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-docnode-constrmod-2'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-docnode-constrmod-3'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-docnode-constrmod-4'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-docnode-doc-1'(_Config) ->
   Qry = "document {., .}",
   Env = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            <root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root>
            
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P1 -> "deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Constr-docnode-parent-1'(_Config) ->
   Qry = "count((document {()})/..)",
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
'Constr-docnode-string-1'(_Config) ->
   Qry = "fn:string(document {'a', element a {}, 'b'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ab
      ",
   case xqerl_types:string_value(Res) of
             "ab" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-docnode-data-1'(_Config) ->
   Qry = "fn:data(document {'a', element a {}, 'b'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ab
      ",
   case xqerl_types:string_value(Res) of
             "ab" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'Constr-docnode-attr-1'(_Config) ->
   Qry = "document {//@mark}",
   Env = xqerl_test:handle_environment(environment('TreeEmpty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-docnode-attr-2'(_Config) ->
   Qry = "document {<a/>, //@mark}",
   Env = xqerl_test:handle_environment(environment('TreeEmpty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'Constr-docnode-attr-3'(_Config) ->
   Qry = "document {<a/>, //@mark, <b/>}",
   Env = xqerl_test:handle_environment(environment('TreeEmpty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ConDocNode-1'(_Config) ->
   Qry = "document-node{\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ConDocNode-2'(_Config) ->
   Qry = "document{\"content\"};",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ConDocNode-3'(_Config) ->
   Qry = "document{\"some text\", <e/>, attribute name {\"content\"}}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ConDocNode-4'(_Config) ->
   Qry = "document{<e/>, attribute name {\"content\"}, \"some text\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ConDocNode-5'(_Config) ->
   Qry = "document{attribute name {\"content\"}, <e/>, \"some text\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ConDocNode-6'(_Config) ->
   Qry = "string(document{\"some text\", <e/>, attribute name {\"content\"}})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ConDocNode-7'(_Config) ->
   Qry = "string(document{<e/>, attribute name {\"content\"}, \"some text\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ConDocNode-8'(_Config) ->
   Qry = "string(document{attribute name {\"content\"}, <e/>, \"some text\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ConDocNode-9'(_Config) ->
   Qry = "document{<a/>, <b/>, <c/>}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/><b/><c/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/><b/><c/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/><b/><c/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ConDocNode-10'(_Config) ->
   Qry = "document{<a/>, <b/>, <c/>}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/><b/><c/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/><b/><c/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/><b/><c/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ConDocNode-11'(_Config) ->
   Qry = "<a>{data(document{<a/>, <b/>, <c/>})}</a>",
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
'K2-ConDocNode-12'(_Config) ->
   Qry = "<a>{string(document{<a/>, <b/>, <c/>})}</a>",
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
'K2-ConDocNode-13'(_Config) ->
   Qry = "<a>{string(document{<a/>, <b/>, <c/>})}</a>",
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
'K2-ConDocNode-14'(_Config) ->
   Qry = "string(document{\"abc\"})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abc
      ",
   case xqerl_types:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-ConDocNode-15'(_Config) ->
   Qry = "data(document {\"content\"}) instance of xs:untypedAtomic",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ConDocNode-16'(_Config) ->
   Qry = "document {\"content\"} is document{\"content\"}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ConDocNode-17'(_Config) ->
   Qry = "string(document{\"string\", <e>more<a>even more</a><b attr=\"thisIsIgnored\"/><![CDATA[ButNotThis]]><?target butThisIs?> content</e>})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         stringmoreeven moreButNotThis content
      ",
   case xqerl_types:string_value(Res) of
             "stringmoreeven moreButNotThis content" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-ConDocNode-18'(_Config) ->
   Qry = "string(document{ text {\"data\"}, processing-instruction name {\"data\"}, processing-instruction name {\"data\"}, text {\"data\"}, processing-instruction name {\"data\"}, processing-instruction name1 {\"data\"}, comment {\"content\"}, comment {\"content\"}, text {\"data\"}, processing-instruction name2 {\"data\"}, comment {\"content\"}, text {\"data\"} })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         datadatadatadata
      ",
   case xqerl_types:string_value(Res) of
             "datadatadatadata" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-ConDocNode-19'(_Config) ->
   Qry = "count(document{document{document{document{()}}}}/child::node())",
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
'K2-ConDocNode-20'(_Config) ->
   Qry = "1, document{document{document{document{()}}}}/child::node(), 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 1
      ",
   case xqerl_types:string_value(Res) of
             "1 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-ConDocNode-21'(_Config) ->
   Qry = "document{document{document{document{<e/>}}}}/child::node()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ConDocNode-22'(_Config) ->
   Qry = "document{document{document{document{<e/>, document{()}, <e>{document{()}}</e>}}}}//child::node()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e/><e/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e/><e/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e/><e/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ConDocNode-23'(_Config) ->
   Qry = "string(document{ text {\"data\"}, text {\"data\"}, text {\"data\"}, text {\"data\"} })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         datadatadatadata
      ",
   case xqerl_types:string_value(Res) of
             "datadatadatadata" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-ConDocNode-24'(_Config) ->
   Qry = "count(document{ text {\"data\"}, text {\"data\"}, <e/>, text {\"data\"}, text {\"data\"} }/child::node())",
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
'K2-ConDocNode-25'(_Config) ->
   Qry = "count(document{ text {\"data\"}, text {\"data\"}, text {\"data\"}, text {\"data\"} }/child::node())",
   Qry1 = Qry,
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
'K2-ConDocNode-26'(_Config) ->
   Qry = "<doo> { document { attribute name {\"content\"} } } </doo>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ConDocNode-27'(_Config) ->
   Qry = "<doo> { document { <e/>, attribute name {\"content\"} } } </doo>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ConDocNode-28'(_Config) ->
   Qry = "<doo> { document { <e> <b/> <b/> <b/> <c> <d/> </c> </e>, attribute name {\"content\"} } } </doo>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ConDocNode-29'(_Config) ->
   Qry = "<doo> { document { <e> { <?target data?>, attribute name {\"content\"} } </e> } } </doo>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0024" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0024'}) end.
'K2-ConDocNode-30'(_Config) ->
   Qry = "count(<a>{document {text{'a'}}}b</a>/node())",
   Qry1 = Qry,
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
'K2-ConDocNode-31'(_Config) ->
   Qry = "string(document {1, document {2, document {document {()}, 3, document {4}}, 5}, 6})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         123456
      ",
   case xqerl_types:string_value(Res) of
             "123456" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-ConDocNode-32'(_Config) ->
   Qry = "document {1, document {2, document {document {()}, 3, document {4}}, 5}, 6}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         123456
      ",
   case xqerl_types:string_value(Res) of
             "123456" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
