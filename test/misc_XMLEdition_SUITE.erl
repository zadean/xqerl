-module('misc_XMLEdition_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['XML10-3ed-Mixed-content'/1]).
-export(['XML10-4ed-Excluded-char-1'/1]).
-export(['XML10-4ed-Excluded-char-1-new'/1]).
-export(['XML10-4ed-Excluded-char-2'/1]).
-export(['XML10-5ed-Included-char-1'/1]).
-export(['XML10-5ed-Included-char-1-new'/1]).
-export(['XML11-1ed-Included-char-1'/1]).
-export(['XML11-1ed-Included-char-1-new'/1]).
-export(['line-ending-Q001'/1]).
-export(['line-ending-Q002'/1]).
-export(['line-ending-Q003'/1]).
-export(['line-ending-Q004'/1]).
-export(['line-ending-Q005'/1]).
-export(['line-ending-Q006'/1]).
-export(['line-ending-Q007'/1]).
-export(['line-ending-Q008'/1]).
-export(['line-ending-Q009'/1]).
-export(['line-ending-P002'/1]).
-export(['XML11-c0-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'XML10-3ed-Mixed-content',
   'XML10-4ed-Excluded-char-1',
   'XML10-4ed-Excluded-char-1-new',
   'XML10-4ed-Excluded-char-2',
   'XML10-5ed-Included-char-1',
   'XML10-5ed-Included-char-1-new',
   'XML11-1ed-Included-char-1',
   'XML11-1ed-Included-char-1-new',
   'line-ending-Q001',
   'line-ending-Q002',
   'line-ending-Q003',
   'line-ending-Q004',
   'line-ending-Q005',
   'line-ending-Q006',
   'line-ending-Q007',
   'line-ending-Q008',
   'line-ending-Q009',
   'line-ending-P002',
   'XML11-c0-001'].
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
'XML10-3ed-Mixed-content'(_Config) ->
   Qry = "<foo> a <![CDATA[cdata section]]> in mixed content. a <!-- comment --> in mixed content. a <?processing instruction?> in mixed content. </foo>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        <foo> a cdata section in mixed content. a <!-- comment --> in mixed content. a <?processing instruction?> in mixed content. </foo>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<foo> a cdata section in mixed content. a <!-- comment --> in mixed content. a <?processing instruction?> in mixed content. </foo>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<foo> a cdata section in mixed content. a <!-- comment --> in mixed content. a <?processing instruction?> in mixed content. </foo>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'XML10-4ed-Excluded-char-1'(_Config) ->
   Qry = [120,113,117,101,114,121,32,118,101,114,115,105,111,110,32,34,49,46,48,34,32,101,110,99,111,100,105,110,103,32,34,117,116,102,45,56,34,59,32,60,895,110,111,100,101,47,62],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'XML10-4ed-Excluded-char-1-new'(_Config) ->
   Qry = [120,113,117,101,114,121,32,118,101,114,115,105,111,110,32,34,49,46,48,34,32,101,110,99,111,100,105,110,103,32,34,117,116,102,45,56,34,59,32,60,895,110,111,100,101,47,62],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,9,10,9,32,32,60,895,110,111,100,101,47,62,10,9,32,32,60,895,110,111,100,101,47,62,10,9,10,32,32,32,32,32,32],
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ [60,895,110,111,100,101,47,62]++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (   ct:fail([[60,115,101,114,105,97,108,105,122,97,116,105,111,110,45,109,97,116,99,104,101,115,32,120,109,108,110,115,61,34,104,116,116,112,58,47,47,119,119,119,46,119,51,46,111,114,103,47,50,48,49,48,47,48,57,47,113,116,45,102,111,116,115,45,99,97,116,97,108,111,103,34,62,38,108,116,59,895,110,111,100,101,47,38,103,116,59,60,47,115,101,114,105,97,108,105,122,97,116,105,111,110,45,109,97,116,99,104,101,115,62], Res])) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'XML10-4ed-Excluded-char-2'(_Config) ->
   Qry = [40,58,32,78,97,109,101,58,32,69,120,99,108,117,100,101,100,45,99,104,97,114,45,50,32,58,41,10,40,58,32,87,114,105,116,116,101,110,32,98,121,58,32,78,105,99,111,108,97,101,32,66,114,105,110,122,97,32,58,41,10,40,58,32,68,101,115,99,114,105,112,116,105,111,110,58,32,84,104,101,32,99,104,97,114,97,99,116,101,114,32,35,120,48,49,48,48,32,105,115,32,101,120,99,108,117,100,101,100,32,102,114,111,109,32,116,104,101,32,115,116,97,114,116,32,111,102,32,97,32,78,97,109,101,32,58,41,10,40,58,32,32,32,32,32,32,32,32,32,32,32,32,32,32,105,110,32,88,77,76,32,49,46,48,32,52,116,104,32,101,100,105,116,105,111,110,32,97,110,100,32,111,108,100,101,114,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,58,41,10,10,120,113,117,101,114,121,32,118,101,114,115,105,111,110,32,34,49,46,48,34,32,101,110,99,111,100,105,110,103,32,34,117,116,102,45,56,34,59,10,10,60,65533,65533,110,111,100,101,47,62,10],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'XML10-5ed-Included-char-1'(_Config) ->
   Qry = "<foo></foo>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <foo>&#x7f;</foo>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<foo>&#x7f;</foo>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<foo>&#x7f;</foo>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'XML10-5ed-Included-char-1-new'(_Config) ->
   {skip,"XML 1.1"}.
'XML11-1ed-Included-char-1'(_Config) ->
   Qry = [60,101,103,103,383,47,62],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'XML11-1ed-Included-char-1-new'(_Config) ->
   Qry = [60,101,103,103,383,47,62],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,9,10,32,32,32,32,32,32,32,32,32,32,32,32,60,101,103,103,383,47,62,10,32,32,32,32,32,32,32,32,32,32,32,32,60,101,103,103,383,47,62,10,9,10,32,32,32,32,32,32],
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ [60,101,103,103,383,47,62]++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (   ct:fail([[60,115,101,114,105,97,108,105,122,97,116,105,111,110,45,109,97,116,99,104,101,115,32,120,109,108,110,115,61,34,104,116,116,112,58,47,47,119,119,119,46,119,51,46,111,114,103,47,50,48,49,48,47,48,57,47,113,116,45,102,111,116,115,45,99,97,116,97,108,111,103,34,62,38,108,116,59,101,103,103,383,47,38,103,116,59,60,47,115,101,114,105,97,108,105,122,97,116,105,111,110,45,109,97,116,99,104,101,115,62], Res])) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'line-ending-Q001'(_Config) ->
   Qry = "deep-equal(string-to-codepoints('
'), (10))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'line-ending-Q002'(_Config) ->
   Qry = "deep-equal(string-to-codepoints('\n'), (10))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'line-ending-Q003'(_Config) ->
   Qry = "deep-equal(string-to-codepoints(' \n 
'), (10, 32, 10, 32, 10, 10))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'line-ending-Q004'(_Config) ->
   {skip,"XML 1.1"}.
'line-ending-Q005'(_Config) ->
   {skip,"XML 1.1"}.
'line-ending-Q006'(_Config) ->
   {skip,"XML 1.1"}.
'line-ending-Q007'(_Config) ->
   Qry = "deep-equal(string-to-codepoints(''), (10, 133))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'line-ending-Q008'(_Config) ->
   Qry = "deep-equal(string-to-codepoints('  '), (32, 133, 32))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'line-ending-Q009'(_Config) ->
   Qry = [100,101,101,112,45,101,113,117,97,108,40,115,116,114,105,110,103,45,116,111,45,99,111,100,101,112,111,105,110,116,115,40,39,32,8232,32,39,41,44,32,40,51,50,44,32,56,50,51,50,44,32,51,50,41,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'line-ending-P002'(_Config) ->
   {skip,"XP20+"}.
'XML11-c0-001'(_Config) ->
   {skip,"XML 1.1"}.
