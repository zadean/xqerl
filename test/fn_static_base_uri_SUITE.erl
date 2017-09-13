-module('fn_static_base_uri_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-static-base-1'/1]).
-export(['fn-static-base-2'/1]).
-export(['fn-static-base-3'/1]).
-export(['fn-static-base-4'/1]).
-export(['fn-static-base-5'/1]).
-export(['fn-static-base-6'/1]).
-export(['fn-static-base-7'/1]).
-export(['fn-static-base-8'/1]).
-export(['fn-static-base-9'/1]).
-export(['fn-static-base-10'/1]).
-export(['fn-static-base-11'/1]).
-export(['fn-static-base-12'/1]).
-export(['fn-static-base-13'/1]).
-export(['fn-static-base-14'/1]).
-export(['fn-static-base-15'/1]).
-export(['K-StaticBaseURIFunc-1'/1]).
-export(['K-StaticBaseURIFunc-2'/1]).
-export(['K-StaticBaseURIFunc-3'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-static-base-1',
   'fn-static-base-2',
   'fn-static-base-3',
   'fn-static-base-4',
   'fn-static-base-5',
   'fn-static-base-6',
   'fn-static-base-7',
   'fn-static-base-8',
   'fn-static-base-9',
   'fn-static-base-10',
   'fn-static-base-11',
   'fn-static-base-12',
   'fn-static-base-13',
   'fn-static-base-14',
   'fn-static-base-15',
   'K-StaticBaseURIFunc-1',
   'K-StaticBaseURIFunc-2',
   'K-StaticBaseURIFunc-3'].
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
'fn-static-base-1'(_Config) ->
   Qry = "fn:static-base-uri(\"A argument\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-static-base-2'(_Config) ->
   Qry = "declare base-uri \"ftp://ftp.is.co.za/rfc/somefile.txt\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ftp://ftp.is.co.za/rfc/somefile.txt
      ",
   case xqerl_types:string_value(Res) of
             "ftp://ftp.is.co.za/rfc/somefile.txt" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-3'(_Config) ->
   Qry = "declare base-uri \"mailto:John.Doe@example.com\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         mailto:John.Doe@example.com
      ",
   case xqerl_types:string_value(Res) of
             "mailto:John.Doe@example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-4'(_Config) ->
   Qry = "declare base-uri \"news:comp.infosystems.www.servers.unix\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         news:comp.infosystems.www.servers.unix
      ",
   case xqerl_types:string_value(Res) of
             "news:comp.infosystems.www.servers.unix" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-5'(_Config) ->
   Qry = "declare base-uri \"telnet://192.0.2.16:80/\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         telnet://192.0.2.16:80/
      ",
   case xqerl_types:string_value(Res) of
             "telnet://192.0.2.16:80/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-6'(_Config) ->
   Qry = "declare base-uri \"tel:+1-816-555-1212\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         tel:+1-816-555-1212
      ",
   case xqerl_types:string_value(Res) of
             "tel:+1-816-555-1212" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-7'(_Config) ->
   Qry = "declare base-uri \"urn:oasis:names:specification:docbook:dtd:xml:4.1.2\"; fn:string(fn:static-base-uri())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         urn:oasis:names:specification:docbook:dtd:xml:4.1.2
      ",
   case xqerl_types:string_value(Res) of
             "urn:oasis:names:specification:docbook:dtd:xml:4.1.2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-8'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; fn:upper-case(fn:string(fn:static-base-uri()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         HTTP://WWW.EXAMPLE.COM
      ",
   case xqerl_types:string_value(Res) of
             "HTTP://WWW.EXAMPLE.COM" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-9'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; fn:lower-case(fn:string(fn:static-base-uri()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-10'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; fn:concat(fn:string(fn:static-base-uri()),\"another string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.comanother string
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.comanother string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-11'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; fn:string-join((fn:string(fn:static-base-uri()),\"another string\"),\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.comanother string
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.comanother string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-12'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; fn:string-length(fn:string(fn:static-base-uri()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         22
      ",
   case xqerl_types:string_value(Res) of
             "22" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-13'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; fn:substring-before(fn:string(fn:static-base-uri()),\":\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http
      ",
   case xqerl_types:string_value(Res) of
             "http" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-14'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; fn:substring-after(fn:string(fn:static-base-uri()),\":\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         //www.example.com
      ",
   case xqerl_types:string_value(Res) of
             "//www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-static-base-15'(_Config) ->
   Qry = "static-base-uri()",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"http://www.example.com"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.com
      ",
   case xqerl_types:string_value(Res) of
             "http://www.example.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K-StaticBaseURIFunc-1'(_Config) ->
   Qry = "static-base-uri(.)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-StaticBaseURIFunc-2'(_Config) ->
   Qry = "static-base-uri(1, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-StaticBaseURIFunc-3'(_Config) ->
   Qry = "if(static-base-uri()) then true() else true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
