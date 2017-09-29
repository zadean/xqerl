-module('prod_DecimalFormatDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['decimal-format-01'/1]).
-export(['decimal-format-02'/1]).
-export(['decimal-format-03'/1]).
-export(['decimal-format-04'/1]).
-export(['decimal-format-05'/1]).
-export(['decimal-format-06'/1]).
-export(['decimal-format-07'/1]).
-export(['decimal-format-09'/1]).
-export(['decimal-format-11'/1]).
-export(['decimal-format-12'/1]).
-export(['decimal-format-13'/1]).
-export(['decimal-format-14'/1]).
-export(['decimal-format-15'/1]).
-export(['decimal-format-16'/1]).
-export(['decimal-format-17'/1]).
-export(['decimal-format-18'/1]).
-export(['decimal-format-19'/1]).
-export(['decimal-format-20'/1]).
-export(['decimal-format-21'/1]).
-export(['decimal-format-901err'/1]).
-export(['decimal-format-902err'/1]).
-export(['decimal-format-903err'/1]).
-export(['decimal-format-904err'/1]).
-export(['decimal-format-905err'/1]).
-export(['decimal-format-906err'/1]).
-export(['decimal-format-907err'/1]).
-export(['decimal-format-908err'/1]).
-export(['decimal-format-909err'/1]).
-export(['decimal-format-910err'/1]).
-export(['decimal-format-911err'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/DecimalFormatDecl/dfd-module-001.xq") catch _:_ -> ok end,Config.
all() -> [
   'decimal-format-01',
   'decimal-format-02',
   'decimal-format-03',
   'decimal-format-04',
   'decimal-format-05',
   'decimal-format-06',
   'decimal-format-07',
   'decimal-format-09',
   'decimal-format-11',
   'decimal-format-12',
   'decimal-format-13',
   'decimal-format-14',
   'decimal-format-15',
   'decimal-format-16',
   'decimal-format-17',
   'decimal-format-18',
   'decimal-format-19',
   'decimal-format-20',
   'decimal-format-21',
   'decimal-format-901err',
   'decimal-format-902err',
   'decimal-format-903err',
   'decimal-format-904err',
   'decimal-format-905err',
   'decimal-format-906err',
   'decimal-format-907err',
   'decimal-format-908err',
   'decimal-format-909err',
   'decimal-format-910err',
   'decimal-format-911err'].
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
'decimal-format-01'(_Config) ->
   Qry = "
        declare default decimal-format zero-digit=\"0\" grouping-separator=\",\" decimal-separator=\".\";
      	format-number(2392.14*36.58,'000,000.000000')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         087,504.481200
      ",
   case xqerl_test:string_value(Res) of
             "087,504.481200" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-02'(_Config) ->
   Qry = "
        declare default decimal-format digit=\"#\" grouping-separator=\",\" decimal-separator=\".\";
      	format-number(12792.14*96.58,'##,###,000.000###')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1,235,464.8812
      ",
   case xqerl_test:string_value(Res) of
             "1,235,464.8812" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-03'(_Config) ->
   Qry = "
        declare default decimal-format minus-sign=\"-\" grouping-separator=\",\" decimal-separator=\".\";
      	format-number(2792.14*(-36.58),'000,000.000###')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -102,136.4812
      ",
   case xqerl_test:string_value(Res) of
             "-102,136.4812" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-04'(_Config) ->
   Qry = "
        declare default decimal-format minus-sign=\"-\" pattern-separator=\";\" grouping-separator=\",\" decimal-separator=\".\";
      	format-number(2392.14*(-36.58),'000,000.000###;###,###.000###')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         87,504.4812
      ",
   case xqerl_test:string_value(Res) of
             "87,504.4812" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-05'(_Config) ->
   Qry = "
        declare decimal-format local:df minus-sign=\"-\" percent=\"%\" decimal-separator=\".\";
      	format-number(0.4857,'###.###%', 'local:df')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         48.57%
      ",
   case xqerl_test:string_value(Res) of
             "48.57%" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-06'(_Config) ->
   Qry = "
        declare decimal-format local:df minus-sign=\"-\" per-mille=\"‰\" decimal-separator=\".\";
      	format-number(0.4857,'###.###‰')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         485.7‰
      ",
   case xqerl_test:string_value(Res) of
             "485.7‰" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-07'(_Config) ->
   Qry = "
        declare decimal-format local:df minus-sign=\"-\" currency-symbol=\"¤\" decimal-separator=\".\";
      	format-number(95.4857,'¤###.####', \"local:df\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'decimal-format-09'(_Config) ->
   Qry = "
         declare default decimal-format decimal-separator=\"|\" grouping-separator=\".\"; 
         format-number(931.4857,'000.000|###')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         000.931|486
      ",
   case xqerl_test:string_value(Res) of
             "000.931|486" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-11'(_Config) ->
   Qry = "
        declare default decimal-format digit=\"!\" pattern-separator=\"\\\";
        format-number(26931.4,'+!!!,!!!.!!!\\-!!,!!!.!!!')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         +26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "+26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-12'(_Config) ->
   Qry = "
        declare default decimal-format digit=\"!\" pattern-separator=\"\\\";
        format-number(-26931.4,'+!!,!!!.!!!\\-!!!,!!!.!!!')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "-26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-13'(_Config) ->
   Qry = "
        declare default decimal-format digit=\"!\" pattern-separator=\"\\\";
        format-number(-26931.4,'!!!,!!!.!!!')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "-26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-14'(_Config) ->
   Qry = "
        declare decimal-format local:df2 infinity=\"off-the-scale\";
        format-number(1 div 0e0,'###############################', 'local:df2')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         off-the-scale
      ",
   case xqerl_test:string_value(Res) of
             "off-the-scale" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-15'(_Config) ->
   Qry = "
        declare decimal-format local:df2 NaN=\"non-numeric\";
        format-number(number('none'), '#############', 'local:df2')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         non-numeric
      ",
   case xqerl_test:string_value(Res) of
             "non-numeric" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-16'(_Config) ->
   Qry = "
        declare default decimal-format  per-mille=\"m\";
        format-number(0.4857,'###.###m')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         485.7m
      ",
   case xqerl_test:string_value(Res) of
             "485.7m" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-17'(_Config) ->
   Qry = "
        declare default decimal-format  minus-sign=\"_\";
        format-number(-26931.4,'+###,###.###;-###,###.###')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "-26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-18'(_Config) ->
   Qry = "
        declare default decimal-format minus-sign=\"_\";
        format-number(-26931.4,'###,###.###')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         _26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "_26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-19'(_Config) ->
   Qry = "
        declare decimal-format myminus minus-sign=\"_\"; 
        concat(format-number(-26931.4,'###,###.###','myminus'), '/',
        format-number(-42857.1,'###,###.###'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         _26,931.4/-42,857.1
      ",
   case xqerl_test:string_value(Res) of
             "_26,931.4/-42,857.1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-20'(_Config) ->
   Qry = "
        declare namespace foo=\"http://foo.ns\";
        declare decimal-format foo:decimal1  decimal-separator=\"!\" grouping-separator=\"*\";
        declare decimal-format decimal1  decimal-separator=\"*\" grouping-separator=\"!\";
        format-number(1234.567,'#*###*###!###','foo:decimal1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1*234!567
      ",
   case xqerl_test:string_value(Res) of
             "1*234!567" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-21'(_Config) ->
   Qry = "
        import module namespace m=\"http://www.w3.org/TestModules/dfd-module-001\";
        declare decimal-format df001 grouping-separator=\"!\";
        format-number(123456.789,'#!###!###.###','df001')||'-'||m:do()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         123!456.789-123'456.789
      ",
   case xqerl_test:string_value(Res) of
             "123!456.789-123'456.789" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'decimal-format-901err'(_Config) ->
   Qry = "
        declare default decimal-format decimal-separator=\"!\" grouping-separator=\"!\";
        format-number(931.4857,'###!###!###')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0098" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0098'}) end.
'decimal-format-902err'(_Config) ->
   Qry = "
        declare default decimal-format digit='$';
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODF1310" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODF1310'}) end.
'decimal-format-903err'(_Config) ->
   Qry = "
        declare default decimal-format digit='$';
        declare default decimal-format minus-sign='_';
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0111" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0111'}) end.
'decimal-format-904err'(_Config) ->
   Qry = "
        declare namespace a=\"http://a.com/\";
        declare namespace b=\"http://a.com/\";
        declare decimal-format a:one digit='$';
        declare decimal-format two digit='$';
        declare decimal-format three digit='$';
        declare decimal-format four digit='$';
        declare decimal-format five digit='$';
        declare decimal-format b:one minus-sign=\"_\";
        declare default decimal-format minus-sign='_';
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0111" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0111'}) end.
'decimal-format-905err'(_Config) ->
   Qry = "
        declare decimal-format q decimal-separator=\".\" grouping-separator=\",\";
        format-number(931.4857,'fred.ginger', 'q')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODF1310" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODF1310'}) end.
'decimal-format-906err'(_Config) ->
   Qry = "format-number(931.45, '000.##0', 'foo:bar')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODF1280" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODF1280'}) end.
'decimal-format-907err'(_Config) ->
   Qry = "
        declare namespace a=\"http://a.com/\";
        declare namespace b=\"http://a.com/\";
        declare decimal-format a:one digit='$' zero-digit=\"0\" minus-sign=\"_\" digit=\"#\";
        format-number(931.4857,'000.$$0', 'a:one')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0114" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0114'}) end.
'decimal-format-908err'(_Config) ->
   Qry = "
        declare default decimal-format digit=\"one\";
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0097" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0097'}) end.
'decimal-format-909err'(_Config) ->
   Qry = "
        declare default decimal-format zero-digit=\"1\";
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0097" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0097'}) end.
'decimal-format-910err'(_Config) ->
   Qry = "
        declare default decimal-format zero-digit=\"a\";
        format-number(931.4857,'aaa.$$a')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0097" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0097'}) end.
'decimal-format-911err'(_Config) ->
   Qry = "
        declare default decimal-format minus-sign=\"--\";
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0097" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0097'}) end.
