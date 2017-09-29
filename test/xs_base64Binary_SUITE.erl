-module('xs_base64Binary_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['base64-001'/1]).
-export(['base64-002'/1]).
-export(['base64-003'/1]).
-export(['base64-004'/1]).
-export(['base64-005'/1]).
-export(['base64-006'/1]).
-export(['base64-007'/1]).
-export(['base64-008'/1]).
-export(['base64-009'/1]).
-export(['base64-010'/1]).
-export(['base64-011'/1]).
-export(['base64-012'/1]).
-export(['base64-013'/1]).
-export(['base64-014'/1]).
-export(['base64-101'/1]).
-export(['base64-102'/1]).
-export(['base64-103'/1]).
-export(['base64-104'/1]).
-export(['base64-105'/1]).
-export(['base64-106'/1]).
-export(['base64-107'/1]).
-export(['base64-108'/1]).
-export(['base64-109'/1]).
-export(['base64-110'/1]).
-export(['base64-111'/1]).
-export(['base64-112'/1]).
-export(['base64-113'/1]).
-export(['base64-114'/1]).
-export(['base64-115'/1]).
-export(['base64-901'/1]).
-export(['base64-902'/1]).
-export(['base64-903'/1]).
-export(['base64-904'/1]).
-export(['base64-905'/1]).
-export(['base64-906'/1]).
-export(['base64-907'/1]).
-export(['cbcl-base64binary-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'base64-001',
   'base64-002',
   'base64-003',
   'base64-004',
   'base64-005',
   'base64-006',
   'base64-007',
   'base64-008',
   'base64-009',
   'base64-010',
   'base64-011',
   'base64-012',
   'base64-013',
   'base64-014',
   'base64-101',
   'base64-102',
   'base64-103',
   'base64-104',
   'base64-105',
   'base64-106',
   'base64-107',
   'base64-108',
   'base64-109',
   'base64-110',
   'base64-111',
   'base64-112',
   'base64-113',
   'base64-114',
   'base64-115',
   'base64-901',
   'base64-902',
   'base64-903',
   'base64-904',
   'base64-905',
   'base64-906',
   'base64-907',
   'cbcl-base64binary-001'].
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
'base64-001'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-002'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AA==
      ",
   case xqerl_test:string_value(Res) of
             "AA==" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-003'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"01\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AQ==
      ",
   case xqerl_test:string_value(Res) of
             "AQ==" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-004'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"ff\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         /w==
      ",
   case xqerl_test:string_value(Res) of
             "/w==" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-005'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"0000\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AAA=
      ",
   case xqerl_test:string_value(Res) of
             "AAA=" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-006'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"00ff\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AP8=
      ",
   case xqerl_test:string_value(Res) of
             "AP8=" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-007'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"80c0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         gMA=
      ",
   case xqerl_test:string_value(Res) of
             "gMA=" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-008'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"aabbcc\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         qrvM
      ",
   case xqerl_test:string_value(Res) of
             "qrvM" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-009'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"010203\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AQID
      ",
   case xqerl_test:string_value(Res) of
             "AQID" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-010'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"01020304\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AQIDBA==
      ",
   case xqerl_test:string_value(Res) of
             "AQIDBA==" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-011'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"0102030405\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AQIDBAU=
      ",
   case xqerl_test:string_value(Res) of
             "AQIDBAU=" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-012'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"010203040506\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AQIDBAUG
      ",
   case xqerl_test:string_value(Res) of
             "AQIDBAUG" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-013'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"01020304050607\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AQIDBAUGBw==
      ",
   case xqerl_test:string_value(Res) of
             "AQIDBAUGBw==" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-014'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"0102030405060708090A0B0C0D0E0F10111213131415161718191A1B1C1D1F202122232425262728292A2B2C2D2E2F\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AQIDBAUGBwgJCgsMDQ4PEBESExMUFRYXGBkaGxwdHyAhIiMkJSYnKCkqKywtLi8=
      ",
   case xqerl_test:string_value(Res) of
             "AQIDBAUGBwgJCgsMDQ4PEBESExMUFRYXGBkaGxwdHyAhIiMkJSYnKCkqKywtLi8=" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-101'(_Config) ->
   Qry = "xs:base64Binary(\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-102'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"AA==\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         00
      ",
   case xqerl_test:string_value(Res) of
             "00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-103'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"AQ==\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         01
      ",
   case xqerl_test:string_value(Res) of
             "01" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-104'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"/w==\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         FF
      ",
   case xqerl_test:string_value(Res) of
             "FF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-105'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"AAA=\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0000
      ",
   case xqerl_test:string_value(Res) of
             "0000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-106'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"AP8=\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         00FF
      ",
   case xqerl_test:string_value(Res) of
             "00FF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-107'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"gMA=\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         80C0
      ",
   case xqerl_test:string_value(Res) of
             "80C0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-108'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"qrvM\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         AABBCC
      ",
   case xqerl_test:string_value(Res) of
             "AABBCC" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-109'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"AQID\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         010203
      ",
   case xqerl_test:string_value(Res) of
             "010203" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-110'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"AQIDBA==\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         01020304
      ",
   case xqerl_test:string_value(Res) of
             "01020304" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-111'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"AQIDBAU=\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0102030405
      ",
   case xqerl_test:string_value(Res) of
             "0102030405" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-112'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"AQIDBAUG\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         010203040506
      ",
   case xqerl_test:string_value(Res) of
             "010203040506" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-113'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"AQIDBAUGBw==\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         01020304050607
      ",
   case xqerl_test:string_value(Res) of
             "01020304050607" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-114'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"AQIDBAUGBwgJCgsMDQ4PEBESExMUFRYXGBkaGxwdHyAhIiMkJSYnKCkqKywtLi8=\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0102030405060708090A0B0C0D0E0F10111213131415161718191A1B1C1D1F202122232425262728292A2B2C2D2E2F
      ",
   case xqerl_test:string_value(Res) of
             "0102030405060708090A0B0C0D0E0F10111213131415161718191A1B1C1D1F202122232425262728292A2B2C2D2E2F" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-115'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\" AQIDBAUG BwgJCgsM DQ4PEBES ExMUFRYX 
 GBkaGxwdH yAhIiMkJ SYnKCkqK y w t L i 8 = \"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0102030405060708090A0B0C0D0E0F10111213131415161718191A1B1C1D1F202122232425262728292A2B2C2D2E2F
      ",
   case xqerl_test:string_value(Res) of
             "0102030405060708090A0B0C0D0E0F10111213131415161718191A1B1C1D1F202122232425262728292A2B2C2D2E2F" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'base64-901'(_Config) ->
   Qry = "xs:base64Binary(\"AQI\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'base64-902'(_Config) ->
   Qry = "xs:base64Binary(\"AQ=I\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'base64-903'(_Config) ->
   Qry = "xs:base64Binary(\"=AQI\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'base64-904'(_Config) ->
   Qry = "xs:base64Binary(\"qrvM====\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'base64-905'(_Config) ->
   Qry = "xs:base64Binary(\"gMA-\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'base64-906'(_Config) ->
   Qry = "xs:base64Binary(\"AP9=\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'base64-907'(_Config) ->
   Qry = "xs:base64Binary(\"Ay==\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'cbcl-base64binary-001'(_Config) ->
   Qry = "count(xs:base64Binary(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
