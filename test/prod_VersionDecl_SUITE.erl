-module('prod_VersionDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['version_declaration-009'/1]).
-export(['version_declaration-020'/1]).
-export(['K2-VersionProlog-3'/1]).
-export(['K2-VersionProlog-3-v3'/1]).
-export(['version_declaration-022-v1'/1]).
-export(['version_declaration-022-v3'/1]).
-export(['version_declaration-023-v1'/1]).
-export(['K-VersionProlog-1'/1]).
-export(['version_declaration-002'/1]).
-export(['version_declaration-001'/1]).
-export(['version_declaration-007'/1]).
-export(['version_declaration-008'/1]).
-export(['version_declaration-021'/1]).
-export(['VersionDecl-v1-processor-and-v3-query'/1]).
-export(['VersionDecl-v3-processor-and-v1-query'/1]).
-export(['version_declaration-010'/1]).
-export(['version_declaration-010-v3'/1]).
-export(['K-VersionProlog-3'/1]).
-export(['K-VersionProlog-3-v3'/1]).
-export(['K-VersionProlog-4'/1]).
-export(['K-VersionProlog-4-v3'/1]).
-export(['K-VersionProlog-2'/1]).
-export(['K-VersionProlog-2-v3'/1]).
-export(['prolog-version-4'/1]).
-export(['prolog-version-4-v3'/1]).
-export(['prolog-version-5'/1]).
-export(['prolog-version-5-v3'/1]).
-export(['prolog-version-6'/1]).
-export(['prolog-version-6-v3'/1]).
-export(['prolog-version-7'/1]).
-export(['prolog-version-7-v3'/1]).
-export(['version_declaration-005'/1]).
-export(['prolog-version-1'/1]).
-export(['prolog-version-1-v3'/1]).
-export(['prolog-version-3'/1]).
-export(['prolog-version-3-v3'/1]).
-export(['K-VersionProlog-5'/1]).
-export(['K-VersionProlog-5-v3'/1]).
-export(['version_declaration-023-v3'/1]).
-export(['K2-VersionProlog-1'/1]).
-export(['K2-VersionProlog-2'/1]).
-export(['K2-VersionProlog-4'/1]).
-export(['K2-VersionProlog-5'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'version_declaration-009',
   'version_declaration-020',
   'K2-VersionProlog-3',
   'K2-VersionProlog-3-v3',
   'version_declaration-022-v1',
   'version_declaration-022-v3',
   'version_declaration-023-v1',
   'K-VersionProlog-1',
   'version_declaration-002',
   'version_declaration-001',
   'version_declaration-007',
   'version_declaration-008',
   'version_declaration-021',
   'VersionDecl-v1-processor-and-v3-query',
   'VersionDecl-v3-processor-and-v1-query',
   'version_declaration-010',
   'version_declaration-010-v3',
   'K-VersionProlog-3',
   'K-VersionProlog-3-v3',
   'K-VersionProlog-4',
   'K-VersionProlog-4-v3',
   'K-VersionProlog-2',
   'K-VersionProlog-2-v3',
   'prolog-version-4',
   'prolog-version-4-v3',
   'prolog-version-5',
   'prolog-version-5-v3',
   'prolog-version-6',
   'prolog-version-6-v3',
   'prolog-version-7',
   'prolog-version-7-v3',
   'version_declaration-005',
   'prolog-version-1',
   'prolog-version-1-v3',
   'prolog-version-3',
   'prolog-version-3-v3',
   'K-VersionProlog-5',
   'K-VersionProlog-5-v3',
   'version_declaration-023-v3',
   'K2-VersionProlog-1',
   'K2-VersionProlog-2',
   'K2-VersionProlog-4',
   'K2-VersionProlog-5'].
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
environment('bib2') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/op/union/bib2.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'version_declaration-009'(_Config) ->
   Qry = "declare boundary-space preserve; xquery version \"1.0\"; 1,2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'version_declaration-020'(_Config) ->
   Qry = "xquery version; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-VersionProlog-3'(_Config) ->
   {skip,"XQ10"}.
'K2-VersionProlog-3-v3'(_Config) ->
   Qry = "xquery version \"3.0\" default; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'version_declaration-022-v1'(_Config) ->
   {skip,"XQ10"}.
'version_declaration-022-v3'(_Config) ->
   Qry = "xquery encoding \"utf-8\" version \"3.0\"; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'version_declaration-023-v1'(_Config) ->
   {skip,"XQ10"}.
'K-VersionProlog-1'(_Config) ->
   Qry = "(:encoding \"UTF-8XX\":)xquery version \"1.0\" encoding \"UTF-8\"; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          
            
            
          
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError') of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'version_declaration-002'(_Config) ->
   Qry = "(:encoding \"utf-8xx\":)xquery version \"1.0\"; <bib/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          
             <bib/>
             
          
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<bib/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError') of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'version_declaration-001'(_Config) ->
   Qry = "xquery version \"1.0\" (:encoding \"utf-8xx\":); 1,2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          
            1 2
            
          
      ",
 case (xqerl_test:string_value(Res) == "1 2") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError') of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'version_declaration-007'(_Config) ->
   Qry = "xquery version '-1.0'; 2 + 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0031" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0031'}) end.
'version_declaration-008'(_Config) ->
   Qry = "xquery version \"abc\"; 1,2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0031" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0031'}) end.
'version_declaration-021'(_Config) ->
   Qry = "xquery version \"2.0\"; 1,2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0031" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0031'}) end.
'VersionDecl-v1-processor-and-v3-query'(_Config) ->
   {skip,"XQ10"}.
'VersionDecl-v3-processor-and-v1-query'(_Config) ->
   Qry = "xquery version \"1.0\"; <bib/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            <bib/>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P2 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<bib/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0031") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'version_declaration-010'(_Config) ->
   {skip,"XQ10"}.
'version_declaration-010-v3'(_Config) ->
   Qry = "xquery version \"3.0\" encoding \"999-UTF-8-*\"; \"ABC\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0087" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0087'}) end.
'K-VersionProlog-3'(_Config) ->
   {skip,"XQ10"}.
'K-VersionProlog-3-v3'(_Config) ->
   Qry = "xquery version \"3.0\" encoding \"UTF-8 \"; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0087" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0087'}) end.
'K-VersionProlog-4'(_Config) ->
   {skip,"XQ10"}.
'K-VersionProlog-4-v3'(_Config) ->
   Qry = "xquery version \"3.0\" encoding \"ISO-8859-1|\"; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0087" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0087'}) end.
'K-VersionProlog-2'(_Config) ->
   {skip,"XQ10"}.
'K-VersionProlog-2-v3'(_Config) ->
   Qry = "xquery version \"3.0\" ; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'prolog-version-4'(_Config) ->
   {skip,"XQ10"}.
'prolog-version-4-v3'(_Config) ->
   Qry = "xquery version \"3.0\"; 1,2",
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
'prolog-version-5'(_Config) ->
   {skip,"XQ10"}.
'prolog-version-5-v3'(_Config) ->
   Qry = "xquery version \"3.0\"; <bib/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          <bib/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<bib/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<bib/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'prolog-version-6'(_Config) ->
   {skip,"XQ10"}.
'prolog-version-6-v3'(_Config) ->
   Qry = "
        xquery version '3.0'; 
        declare boundary-space preserve; 
        declare default order empty greatest; 
        declare namespace ns = \"http://www.example.org/\"; 
        for $b in//book stable order by xs:decimal($b/price[1]) empty greatest 
        return $b/title",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <title>Data on the Web</title><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>The Economics of Technology and Content for Digital TV</title>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<title>Data on the Web</title><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>The Economics of Technology and Content for Digital TV</title>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<title>Data on the Web</title><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>The Economics of Technology and Content for Digital TV</title>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'prolog-version-7'(_Config) ->
   {skip,"XQ10"}.
'prolog-version-7-v3'(_Config) ->
   Qry = "
        xquery version \"3.0\"; 
        declare boundary-space preserve; 
        declare default order empty greatest; 
        declare namespace ns = \"http://www.example.org/\"; 
        for $b in //book stable order by xs:decimal($b/price[1]) empty greatest 
        return $b/title",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <title>Data on the Web</title><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>The Economics of Technology and Content for Digital TV</title>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<title>Data on the Web</title><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>The Economics of Technology and Content for Digital TV</title>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<title>Data on the Web</title><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>The Economics of Technology and Content for Digital TV</title>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'version_declaration-005'(_Config) ->
   {skip,"schemaImport"}.
'prolog-version-1'(_Config) ->
   {skip,"XQ10"}.
'prolog-version-1-v3'(_Config) ->
   Qry = "xquery version \"3.0\" encoding \"utf-8\"; 1,2",
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
'prolog-version-3'(_Config) ->
   {skip,"XQ10"}.
'prolog-version-3-v3'(_Config) ->
   Qry = "xquery version \"3.0\" encoding \"US-ASCII\"; 1,2",
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
'K-VersionProlog-5'(_Config) ->
   {skip,"XQ10"}.
'K-VersionProlog-5-v3'(_Config) ->
   Qry = "
        xquery version \"3.0\" encoding \"ISO-8859-1\"; 
        declare boundary-space preserve; 
        declare default collation \"http://www.w3.org/2005/xpath-functions/collation/codepoint\"; 
        declare base-uri \"http://example.com/\"; 
        declare construction strip; 
        declare ordering ordered; 
        declare default order empty greatest; 
        declare copy-namespaces no-preserve, no-inherit; 
        declare namespace ex = \"http://example.com/a/Namespace\"; 
        declare default element namespace \"http://example.com/\"; 
        declare default function namespace \"http://example.com/\"; 
        declare option fn:x-notRecognized \"option content\"; 
        1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'version_declaration-023-v3'(_Config) ->
   Qry = "xquery encoding \"utf-8\"; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-VersionProlog-1'(_Config) ->
   Qry = "'xquery version \"1.0\" encoding \"UTF-8|#%\";' eq 'xquery version \"1.0\" encoding \"UTF-8|#%\";'",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-VersionProlog-2'(_Config) ->
   Qry = "\"xquery version '1.0' encoding 'UTF-8|#%';\" eq \"xquery version '1.0' encoding 'UTF-8|#%';\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-VersionProlog-4'(_Config) ->
   Qry = "encoding :localName",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-VersionProlog-5'(_Config) ->
   Qry = "xquery gt xquery",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
