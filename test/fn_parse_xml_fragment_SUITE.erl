-module('fn_parse_xml_fragment_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['parse-xml-fragment-001'/1]).
-export(['parse-xml-fragment-002'/1]).
-export(['parse-xml-fragment-003'/1]).
-export(['parse-xml-fragment-004'/1]).
-export(['parse-xml-fragment-005'/1]).
-export(['parse-xml-fragment-006'/1]).
-export(['parse-xml-fragment-007'/1]).
-export(['parse-xml-fragment-008'/1]).
-export(['parse-xml-fragment-009'/1]).
-export(['parse-xml-fragment-010'/1]).
-export(['parse-xml-fragment-011'/1]).
-export(['parse-xml-fragment-012'/1]).
-export(['parse-xml-fragment-013'/1]).
-export(['parse-xml-fragment-014'/1]).
-export(['parse-xml-fragment-015'/1]).
-export(['parse-xml-fragment-016'/1]).
-export(['parse-xml-fragment-017'/1]).
-export(['parse-xml-fragment-018'/1]).
-export(['parse-xml-fragment-019'/1]).
-export(['parse-xml-fragment-020'/1]).
-export(['parse-xml-fragment-021'/1]).
-export(['parse-xml-fragment-022'/1]).
-export(['parse-xml-fragment-023'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'parse-xml-fragment-001',
   'parse-xml-fragment-002',
   'parse-xml-fragment-003',
   'parse-xml-fragment-004',
   'parse-xml-fragment-005',
   'parse-xml-fragment-006',
   'parse-xml-fragment-007',
   'parse-xml-fragment-008',
   'parse-xml-fragment-009',
   'parse-xml-fragment-010',
   'parse-xml-fragment-011',
   'parse-xml-fragment-012',
   'parse-xml-fragment-013',
   'parse-xml-fragment-014',
   'parse-xml-fragment-015',
   'parse-xml-fragment-016',
   'parse-xml-fragment-017',
   'parse-xml-fragment-018',
   'parse-xml-fragment-019',
   'parse-xml-fragment-020',
   'parse-xml-fragment-021',
   'parse-xml-fragment-022',
   'parse-xml-fragment-023'].
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
'parse-xml-fragment-001'(_Config) ->
   Qry = "
        	parse-xml-fragment(unparsed-text(\"../docs/atomic.xml\"))/*
        ",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            element(*,xs:untyped)
        ",
   case xqerl_types:type(Res) of
           'element(*,xs:untyped)' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'parse-xml-fragment-002'(_Config) ->
   Qry = "parse-xml-fragment(unparsed-text(\"../docs/atomic.xml\"),'###/atomic.xml')",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'parse-xml-fragment-003'(_Config) ->
   Qry = "parse-xml-fragment(unparsed-text(\"../docs/atomic.xml\"),'file:/test/fots/../docs/atomic.xml')",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'parse-xml-fragment-004'(_Config) ->
   Qry = "parse-xml-fragment(\"<a>Test123\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0006'}) end.
'parse-xml-fragment-005'(_Config) ->
   Qry = "parse-xml-fragment(\"\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'parse-xml-fragment-006'(_Config) ->
   Qry = "parse-xml-fragment(\"vanessa\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            vanessa
        ",
   case xqerl_types:string_value(Res) of
             "vanessa" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'parse-xml-fragment-007'(_Config) ->
   Qry = "parse-xml-fragment(\"<a/><b/><c/>\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'parse-xml-fragment-008'(_Config) ->
   Qry = "parse-xml-fragment(\"  \")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
              
        ",
   case xqerl_types:string_value(Res) of
             "  " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'parse-xml-fragment-009'(_Config) ->
   Qry = "parse-xml-fragment(\"<a> </a> <b> </b>\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            <a> </a> <b> </b>
        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a> </a> <b> </b>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a> </a> <b> </b>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'parse-xml-fragment-010'(_Config) ->
   Qry = "parse-xml-fragment(\"<a/><!--comment--><?PI?><b/>\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            <a/><!--comment--><?PI?><b/>
        ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/><!--comment--><?PI?><b/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/><!--comment--><?PI?><b/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'parse-xml-fragment-011'(_Config) ->
   Qry = "parse-xml-fragment(codepoints-to-string((38, 108, 116, 59)))",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            <
        ",
   case xqerl_types:string_value(Res) of
             "<" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'parse-xml-fragment-012'(_Config) ->
   Qry = "parse-xml-fragment(codepoints-to-string((38, 35, 51, 56, 59)))",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            &
        ",
   case xqerl_types:string_value(Res) of
             "&" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'parse-xml-fragment-013'(_Config) ->
   Qry = "parse-xml-fragment(\"<?xml version='1.0' encoding='utf-8'?><a/>\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'parse-xml-fragment-014'(_Config) ->
   Qry = "parse-xml-fragment(\"<?xml version='1.0' encoding='utf-8'?>\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'parse-xml-fragment-015'(_Config) ->
   Qry = "parse-xml-fragment(\"<?xml version='1.0' encoding='utf-8'?>abc\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            abc
        ",
   case xqerl_types:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'parse-xml-fragment-016'(_Config) ->
   Qry = "parse-xml-fragment(\"<?xml version='1.0'?><a/>\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0006'}) end.
'parse-xml-fragment-017'(_Config) ->
   Qry = "parse-xml-fragment(\"<?xml version='1.0' encoding='utf-8' standalone='yes'?><a/>\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0006'}) end.
'parse-xml-fragment-018'(_Config) ->
   Qry = "parse-xml-fragment(\"<a>\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0006'}) end.
'parse-xml-fragment-019'(_Config) ->
   Qry = "parse-xml-fragment(\"<p:a/>\")",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0006'}) end.
'parse-xml-fragment-020'(_Config) ->
   Qry = "parse-xml-fragment(\"<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
                                           'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'><html/>\")
        ",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0006'}) end.
'parse-xml-fragment-021'(_Config) ->
   Qry = "string-to-codepoints(parse-xml-fragment(\"a\"||codepoints-to-string((13, 10))||\"b\"))",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            97 10 98
        ",
   case xqerl_types:string_value(Res) of
             "97 10 98" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'parse-xml-fragment-022'(_Config) ->
   Qry = "parse-xml-fragment(\"<a/>\")/..",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'parse-xml-fragment-023'(_Config) ->
   Qry = "parse-xml-fragment(\"<a/>\") instance of document-node()",
   Env = xqerl_test:handle_environment(environment('')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
