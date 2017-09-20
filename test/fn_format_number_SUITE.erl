-module('fn_format_number_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['numberformat01'/1]).
-export(['numberformat02'/1]).
-export(['numberformat03'/1]).
-export(['numberformat04'/1]).
-export(['numberformat05'/1]).
-export(['numberformat06'/1]).
-export(['numberformat07'/1]).
-export(['numberformat08'/1]).
-export(['numberformat09'/1]).
-export(['numberformat11'/1]).
-export(['numberformat12'/1]).
-export(['numberformat13'/1]).
-export(['numberformat14'/1]).
-export(['numberformat15'/1]).
-export(['numberformat16'/1]).
-export(['numberformat17'/1]).
-export(['numberformat18'/1]).
-export(['numberformat19'/1]).
-export(['numberformat20'/1]).
-export(['numberformat26'/1]).
-export(['numberformat27'/1]).
-export(['numberformat28'/1]).
-export(['numberformat29'/1]).
-export(['numberformat30'/1]).
-export(['numberformat31'/1]).
-export(['numberformat32'/1]).
-export(['numberformat34'/1]).
-export(['numberformat35'/1]).
-export(['numberformat36'/1]).
-export(['numberformat37'/1]).
-export(['numberformat38'/1]).
-export(['numberformat39'/1]).
-export(['numberformat40'/1]).
-export(['numberformat41'/1]).
-export(['numberformat42'/1]).
-export(['numberformat60a'/1]).
-export(['numberformat60b'/1]).
-export(['numberformat60c'/1]).
-export(['numberformat60d'/1]).
-export(['numberformat60e'/1]).
-export(['numberformat60f'/1]).
-export(['numberformat60g'/1]).
-export(['numberformat60h'/1]).
-export(['numberformat60i'/1]).
-export(['numberformat60j'/1]).
-export(['numberformat60k'/1]).
-export(['numberformat60l'/1]).
-export(['numberformat60m'/1]).
-export(['numberformat60n'/1]).
-export(['numberformat60o'/1]).
-export(['numberformat60p'/1]).
-export(['numberformat60q'/1]).
-export(['numberformat61'/1]).
-export(['numberformat63'/1]).
-export(['numberformat64'/1]).
-export(['numberformat65'/1]).
-export(['numberformat70'/1]).
-export(['numberformat71'/1]).
-export(['numberformat72'/1]).
-export(['numberformat80'/1]).
-export(['numberformat81'/1]).
-export(['numberformat82'/1]).
-export(['numberformat83'/1]).
-export(['numberformat84'/1]).
-export(['numberformat85'/1]).
-export(['numberformat86'/1]).
-export(['numberformat87'/1]).
-export(['numberformat88'/1]).
-export(['numberformat89'/1]).
-export(['numberformat90'/1]).
-export(['numberformat91'/1]).
-export(['numberformat901err'/1]).
-export(['numberformat902err'/1]).
-export(['numberformat905err'/1]).
-export(['numberformat906InputErr'/1]).
-export(['numberformat907InputErr'/1]).
-export(['numberformatFODF1280'/1]).
-export(['numberformatNaN'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'numberformat01',
   'numberformat02',
   'numberformat03',
   'numberformat04',
   'numberformat05',
   'numberformat06',
   'numberformat07',
   'numberformat08',
   'numberformat09',
   'numberformat11',
   'numberformat12',
   'numberformat13',
   'numberformat14',
   'numberformat15',
   'numberformat16',
   'numberformat17',
   'numberformat18',
   'numberformat19',
   'numberformat20',
   'numberformat26',
   'numberformat27',
   'numberformat28',
   'numberformat29',
   'numberformat30',
   'numberformat31',
   'numberformat32',
   'numberformat34',
   'numberformat35',
   'numberformat36',
   'numberformat37',
   'numberformat38',
   'numberformat39',
   'numberformat40',
   'numberformat41',
   'numberformat42',
   'numberformat60a',
   'numberformat60b',
   'numberformat60c',
   'numberformat60d',
   'numberformat60e',
   'numberformat60f',
   'numberformat60g',
   'numberformat60h',
   'numberformat60i',
   'numberformat60j',
   'numberformat60k',
   'numberformat60l',
   'numberformat60m',
   'numberformat60n',
   'numberformat60o',
   'numberformat60p',
   'numberformat60q',
   'numberformat61',
   'numberformat63',
   'numberformat64',
   'numberformat65',
   'numberformat70',
   'numberformat71',
   'numberformat72',
   'numberformat80',
   'numberformat81',
   'numberformat82',
   'numberformat83',
   'numberformat84',
   'numberformat85',
   'numberformat86',
   'numberformat87',
   'numberformat88',
   'numberformat89',
   'numberformat90',
   'numberformat91',
   'numberformat901err',
   'numberformat902err',
   'numberformat905err',
   'numberformat906InputErr',
   'numberformat907InputErr',
   'numberformatFODF1280',
   'numberformatNaN'].
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
'numberformat01'(_Config) ->
   Qry = "format-number(2392.14*36.58,'000,000.000000')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         087,504.481200
      ",
   case xqerl_test:string_value(Res) of
             "087,504.481200" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat02'(_Config) ->
   Qry = "format-number(12792.14*96.58,'##,###,000.000###')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1,235,464.8812
      ",
   case xqerl_test:string_value(Res) of
             "1,235,464.8812" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat03'(_Config) ->
   Qry = "format-number(2792.14*(-36.58),'000,000.000###')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -102,136.4812
      ",
   case xqerl_test:string_value(Res) of
             "-102,136.4812" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat04'(_Config) ->
   Qry = "format-number(2392.14*(-36.58),'000,000.000###;###,###.000###')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         87,504.4812
      ",
   case xqerl_test:string_value(Res) of
             "87,504.4812" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat05'(_Config) ->
   Qry = "format-number(0.4857,'###.###%')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         48.57%
      ",
   case xqerl_test:string_value(Res) of
             "48.57%" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat06'(_Config) ->
   Qry = [102,111,114,109,97,116,45,110,117,109,98,101,114,40,48,46,52,56,53,55,44,39,35,35,35,46,35,35,35,8240,39,41],
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,52,56,53,46,55,8240,10,32,32,32,32,32,32],
   case xqerl_test:string_value(Res) of
             [52,56,53,46,55,8240] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat07'(_Config) ->
   Qry = "format-number(95.4857,'¤###.####')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ¤95.4857
      ",
   case xqerl_test:string_value(Res) of
             "¤95.4857" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat08'(_Config) ->
   Qry = "format-number(2.14*86.58,'PREFIX##00.000###SUFFIX')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PREFIX185.2812SUFFIX
      ",
   case xqerl_test:string_value(Res) of
             "PREFIX185.2812SUFFIX" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat09'(_Config) ->
   Qry = "format-number(931.4857,'000.000|###')",
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
   Options = [{'result',Res}],
   Exp = "
         000.931|486
      ",
   case xqerl_test:string_value(Res) of
             "000.931|486" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat11'(_Config) ->
   Qry = "format-number(26931.4,'+!!!,!!!.!!!\\-!!,!!!.!!!')",
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
   Options = [{'result',Res}],
   Exp = "
         +26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "+26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat12'(_Config) ->
   Qry = "format-number(-26931.4,'+!!,!!!.!!!\\-!!!,!!!.!!!')",
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
   Options = [{'result',Res}],
   Exp = "
         -26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "-26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat13'(_Config) ->
   Qry = "format-number(-26931.4,'!!!,!!!.!!!')",
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
   Options = [{'result',Res}],
   Exp = "
         -26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "-26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat14'(_Config) ->
   Qry = "format-number(1 div 0e0,'###############################')",
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
   Options = [{'result',Res}],
   Exp = "
         off-the-scale
      ",
   case xqerl_test:string_value(Res) of
             "off-the-scale" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat15'(_Config) ->
   {skip,"xpath-1.0-compatibility"}.
'numberformat16'(_Config) ->
   Qry = "format-number(0.4857,'###.###m')",
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
   Options = [{'result',Res}],
   Exp = "
         485.7m
      ",
   case xqerl_test:string_value(Res) of
             "485.7m" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat17'(_Config) ->
   Qry = "format-number(-26931.4,'+###,###.###;-###,###.###')",
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
   Options = [{'result',Res}],
   Exp = "
         -26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "-26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat18'(_Config) ->
   Qry = "format-number(-26931.4,'###,###.###')",
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
   Options = [{'result',Res}],
   Exp = "
         _26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "_26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat19'(_Config) ->
   Qry = "concat(format-number(-26931.4,'###,###.###','myminus'), '/',
            format-number(-42857.1,'###,###.###'))",
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
   Options = [{'result',Res}],
   Exp = "
         _26,931.4/-42,857.1
      ",
   case xqerl_test:string_value(Res) of
             "_26,931.4/-42,857.1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat20'(_Config) ->
   Qry = "format-number(1234.567,'#*###*###!###','foo:decimal1')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://foo.ns","foo"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1*234!567
      ",
   case xqerl_test:string_value(Res) of
             "1*234!567" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat26'(_Config) ->
   Qry = "format-number(7654321.4857,'### ### ###,#####')",
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
   Options = [{'result',Res}],
   Exp = "
         7 654 321,4857
      ",
   case xqerl_test:string_value(Res) of
             "7 654 321,4857" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat27'(_Config) ->
   Qry = "string-join((format-number(2392.14*36.58,'000,000.000000','myminus'),
                        format-number(2392.14*36.58,'000,000.000000;###,###.000###'),
                        format-number(2392.14*36.58,'000,000.000000;###,###.000###','myminus')), ' ')
      ",
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
   Options = [{'result',Res}],
   Exp = "
         087,504.481200 087,504.481200 087,504.481200
      ",
   case xqerl_test:string_value(Res) of
             "087,504.481200 087,504.481200 087,504.481200" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat28'(_Config) ->
   Qry = "format-number(2392.14*(-36.58),'000,000.000###;-###,###.000###')",
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
   Options = [{'result',Res}],
   Exp = "
         -87,504.4812
      ",
   case xqerl_test:string_value(Res) of
             "-87,504.4812" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat29'(_Config) ->
   Qry = "format-number(-26931.4,'+###,###.###;_###,###.###')",
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
   Options = [{'result',Res}],
   Exp = "
         _26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "_26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat30'(_Config) ->
   Qry = "string-join((
                format-number(-26931.4,'-###,###.###'),
                format-number(-26931.4,'zzz-###,###.###','myminus'),
                format-number(-26931.4,'_###,###.###','myminus')), ' ')",
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
   Options = [{'result',Res}],
   Exp = "
         --26,931.4 _zzz-26,931.4 __26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "--26,931.4 _zzz-26,931.4 __26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat31'(_Config) ->
   Qry = "format-number(-26931.4,'###,###.###;###,###.###')",
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
   Options = [{'result',Res}],
   Exp = "
         26,931.4
      ",
   case xqerl_test:string_value(Res) of
             "26,931.4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat32'(_Config) ->
   Qry = "format-number(0.4857,'###.###c')",
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
   Options = [{'result',Res}],
   Exp = "
         48.57c
      ",
   case xqerl_test:string_value(Res) of
             "48.57c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat34'(_Config) ->
   Qry = [102,111,114,109,97,116,45,110,117,109,98,101,114,40,52,48,51,48,50,48,49,46,48,53,48,54,44,39,35,33,33,33,44,33,33,33,44,1632,1632,1632,46,1632,1632,1632,1632,1632,1632,48,39,41],
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
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,35,1636,44,1632,1635,1632,44,1634,1632,1633,46,1632,1637,1632,1638,1632,1632,48,10,32,32,32,32,32,32],
   case xqerl_test:string_value(Res) of
             [35,1636,44,1632,1635,1632,44,1634,1632,1633,46,1632,1637,1632,1638,1632,1632,48] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat35'(_Config) ->
   Qry = "format-number(987654321,'###,##0,00.00')",
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
   Options = [{'result',Res}],
   Exp = "
         9876,543,21.00
      ",
   case xqerl_test:string_value(Res) of
             "9876,543,21.00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat36'(_Config) ->
   Qry = "format-number(239236.588,'00000.00')",
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
   Options = [{'result',Res}],
   Exp = "
         239236.59
      ",
   case xqerl_test:string_value(Res) of
             "239236.59" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat37'(_Config) ->
   Qry = "format-number(1 div 0e0,'###############################')",
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
   Options = [{'result',Res}],
   Exp = "
         Infinity
      ",
   case xqerl_test:string_value(Res) of
             "Infinity" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat38'(_Config) ->
   {skip,"xpath-1.0-compatibility"}.
'numberformat39'(_Config) ->
   Qry = "format-number(-1 div 0e0,'###############################')",
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
   Options = [{'result',Res}],
   Exp = "
         -Infinity
      ",
   case xqerl_test:string_value(Res) of
             "-Infinity" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat40'(_Config) ->
   Qry = "format-number(-1 div 0e0,'###############################')",
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
   Options = [{'result',Res}],
   Exp = "
         -huge
      ",
   case xqerl_test:string_value(Res) of
             "-huge" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat41'(_Config) ->
   {skip,"xpath-1.0-compatibility"}.
'numberformat42'(_Config) ->
   {skip,"xpath-1.0-compatibility"}.
'numberformat60a'(_Config) ->
   Qry = "format-number(1E25,'#,######')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        10,000000,000000,000000,000000
      ",
   case xqerl_test:string_value(Res) of
             "10,000000,000000,000000,000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60b'(_Config) ->
   Qry = "format-number(1E10,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        10000000000
      ",
   case xqerl_test:string_value(Res) of
             "10000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60c'(_Config) ->
   Qry = "format-number(1E11,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        100000000000
      ",
   case xqerl_test:string_value(Res) of
             "100000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60d'(_Config) ->
   Qry = "format-number(1E12,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        1000000000000
      ",
   case xqerl_test:string_value(Res) of
             "1000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60e'(_Config) ->
   Qry = "format-number(1E13,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        10000000000000
      ",
   case xqerl_test:string_value(Res) of
             "10000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60f'(_Config) ->
   Qry = "format-number(1E14,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        100000000000000
      ",
   case xqerl_test:string_value(Res) of
             "100000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60g'(_Config) ->
   Qry = "format-number(1E15,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        1000000000000000
      ",
   case xqerl_test:string_value(Res) of
             "1000000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60h'(_Config) ->
   Qry = "format-number(1E16,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        10000000000000000
      ",
   case xqerl_test:string_value(Res) of
             "10000000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60i'(_Config) ->
   Qry = "format-number(1E17,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        100000000000000000
      ",
   case xqerl_test:string_value(Res) of
             "100000000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60j'(_Config) ->
   Qry = "format-number(1E18,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        1000000000000000000
      ",
   case xqerl_test:string_value(Res) of
             "1000000000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60k'(_Config) ->
   Qry = "format-number(1E19,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        10000000000000000000
      ",
   case xqerl_test:string_value(Res) of
             "10000000000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60l'(_Config) ->
   Qry = "format-number(1E20,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        100000000000000000000
      ",
   case xqerl_test:string_value(Res) of
             "100000000000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60m'(_Config) ->
   Qry = "format-number(1E25,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        10000000000000000000000000
      ",
   case xqerl_test:string_value(Res) of
             "10000000000000000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60n'(_Config) ->
   Qry = "format-number(1E30,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        1000000000000000000000000000000
      ",
   case xqerl_test:string_value(Res) of
             "1000000000000000000000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60o'(_Config) ->
   Qry = "format-number(1E35,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        100000000000000000000000000000000000
      ",
   case xqerl_test:string_value(Res) of
             "100000000000000000000000000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60p'(_Config) ->
   Qry = "format-number(1E100,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
      ",
   case xqerl_test:string_value(Res) of
             "10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat60q'(_Config) ->
   Qry = "format-number(1E100 div 3,'#####################')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        3333333333333333000000000000000000000000000000000000000000000000000000000000000000000000000000000000
      ",
   case xqerl_test:string_value(Res) of
             "3333333333333333000000000000000000000000000000000000000000000000000000000000000000000000000000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat61'(_Config) ->
   Qry = "format-number((),'###.###')",
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
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat63'(_Config) ->
   Qry = "format-number(000123456789012345678901234567890.123456789012345678900000,     '##0.0####################################################')",
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
   Options = [{'result',Res}],
   Exp = "
        
          123456789012345678901234567890.1234567890123456789
          
          
      ",
 case (xqerl_test:string_value(Res) == "123456789012345678901234567890.1234567890123456789") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'numberformat64'(_Config) ->
   Qry = "format-number(000123456789012345678901234567890123456789012345678900000,     '# #0.0####################################################')",
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
   Options = [{'result',Res}],
   Exp = "
         
           12 34 56 78 90 12 34 56 78 90 12 34 56 78 90 12 34 56 78 90 12 34 56 78 90 00 00.0
           
           
      ",
 case (xqerl_test:string_value(Res) == "12 34 56 78 90 12 34 56 78 90 12 34 56 78 90 12 34 56 78 90 12 34 56 78 90 00 00.0") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'numberformat65'(_Config) ->
   Qry = "concat(format-number(1234e0, '0000.####'), '|',
                    format-number(1234.00, '0000.####'))",
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
   Options = [{'result',Res}],
   Exp = "
         1234|1234
      ",
   case xqerl_test:string_value(Res) of
             "1234|1234" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat70'(_Config) ->
   Qry = [102,111,114,109,97,116,45,110,117,109,98,101,114,40,49,50,51,52,53,54,55,56,57,48,46,49,50,51,52,53,54,44,39,110001,48,48,48,110000,48,48,48,39,41],
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
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,49,110001,50,51,52,110001,53,54,55,110001,56,57,48,110000,49,50,51,10,32,32,32,32,32,32],
   case xqerl_test:string_value(Res) of
             [49,110001,50,51,52,110001,53,54,55,110001,56,57,48,110000,49,50,51] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat71'(_Config) ->
   Qry = [102,111,114,109,97,116,45,110,117,109,98,101,114,40,49,50,51,52,53,54,55,56,57,48,46,49,50,51,52,53,54,44,39,35,35,35,35,35,35,35,35,35,35,66720,46,66720,35,35,35,35,35,39,41],
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
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,66721,66722,66723,66724,66725,66726,66727,66728,66729,66720,46,66721,66722,66723,66724,66725,66726,10,32,32,32,32,32,32],
   case xqerl_test:string_value(Res) of
             [66721,66722,66723,66724,66725,66726,66727,66728,66729,66720,46,66721,66722,66723,66724,66725,66726] -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat72'(_Config) ->
   Qry = "format-number(1234567890.123456,'000.000')",
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
   Options = [{'result',Res}],
   Exp = "
         1234567890.123
      ",
   case xqerl_test:string_value(Res) of
             "1234567890.123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat80'(_Config) ->
   Qry = "format-number(12.34, '##.##')",
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
   Options = [{'result',Res}],
   Exp = "
         12.34
      ",
   case xqerl_test:string_value(Res) of
             "12.34" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat81'(_Config) ->
   Qry = "format-number(12.34, '0.000,00', ' b:test ')",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://a.ns/","a"},
{"http://a.ns/","b"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0.012,34
      ",
   case xqerl_test:string_value(Res) of
             "0.012,34" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat82'(_Config) ->
   Qry = "format-number(12.34, '0.000,00', if (current-date() gt xs:date('1900-01-01')) then 'two' else 'one')",
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
   Options = [{'result',Res}],
   Exp = "
         0.012,34
      ",
   case xqerl_test:string_value(Res) of
             "0.012,34" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat83'(_Config) ->
   Qry = "format-number(12.34, '0.000,00', concat(if (current-date() lt xs:date('1900-01-01')) then ' a' else ' b', ':one '))",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://a.ns/","a"},
{"http://b.ns/","b"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0.012,34
      ",
   case xqerl_test:string_value(Res) of
             "0.012,34" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat84'(_Config) ->
   Qry = "format-number(123456789.34, '#,###.##')",
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
   Options = [{'result',Res}],
   Exp = "
         123,456,789.34
      ",
   case xqerl_test:string_value(Res) of
             "123,456,789.34" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat85'(_Config) ->
   Qry = "string-join((
                format-number(0, '#'),
                format-number(0.0, '#'),
                format-number(0.0e0, '#'),
                format-number(xs:float(0), '#')), '|')
        
      ",
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
   Options = [{'result',Res}],
   Exp = "
         0|0|0|0
      ",
   case xqerl_test:string_value(Res) of
             "0|0|0|0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat86'(_Config) ->
   Qry = "format-number(0.4857,'###.###%', ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         48.57%
      ",
   case xqerl_test:string_value(Res) of
             "48.57%" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat87'(_Config) ->
   Qry = "format-number(12.34, '0.000,00', 'Q{http://a.ns/}test ')",
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
   Options = [{'result',Res}],
   Exp = "
         0.012,34
      ",
   case xqerl_test:string_value(Res) of
             "0.012,34" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat88'(_Config) ->
   Qry = "format-number(12.34, '0.000,00', if (current-date() lt xs:date('1900-01-01')) then () else ' Q{http://a.ns/}test')",
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
   Options = [{'result',Res}],
   Exp = "
         0.012,34
      ",
   case xqerl_test:string_value(Res) of
             "0.012,34" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat89'(_Config) ->
   Qry = "format-number(12.34, '9,999.99')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
      0,012.34
    ",
   case xqerl_test:string_value(Res) of
             "0,012.34" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat90'(_Config) ->
   Qry = "format-number(12.34, '#,##9.99')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
      12.34
    ",
   case xqerl_test:string_value(Res) of
             "12.34" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat91'(_Config) ->
   Qry = "format-number(42, '001')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
      042
    ",
   case xqerl_test:string_value(Res) of
             "042" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'numberformat901err'(_Config) ->
   Qry = "
        declare default decimal-format decimal-separator=\"!\" grouping-separator=\"!\";
        format-number(931.4857,'###!###!###')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0098" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0098'}) end.
'numberformat902err'(_Config) ->
   Qry = "format-number(931.4857,'000.##0')",
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
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODF1310" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODF1310'}) end.
'numberformat905err'(_Config) ->
   Qry = "format-number(931.4857,'fred.ginger', 'q')",
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
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODF1310" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODF1310'}) end.
'numberformat906InputErr'(_Config) ->
   Qry = "format-number('abc','000.##0')",
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
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'numberformat907InputErr'(_Config) ->
   Qry = "format-number(931.45, 931.45)",
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
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'numberformatFODF1280'(_Config) ->
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
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODF1280" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODF1280'}) end.
'numberformatNaN'(_Config) ->
   Qry = "format-number(number(\"abc\"),'#############')",
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
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
