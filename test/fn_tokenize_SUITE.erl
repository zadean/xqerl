-module('fn_tokenize_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-tokenize-1'/1]).
-export(['fn-tokenize-2'/1]).
-export(['fn-tokenize-3'/1]).
-export(['fn-tokenize-4'/1]).
-export(['fn-tokenize-5'/1]).
-export(['fn-tokenize-6'/1]).
-export(['fn-tokenize-7'/1]).
-export(['fn-tokenize-8'/1]).
-export(['fn-tokenize-9'/1]).
-export(['fn-tokenize-10'/1]).
-export(['fn-tokenize-11'/1]).
-export(['fn-tokenize-12'/1]).
-export(['fn-tokenize-13'/1]).
-export(['fn-tokenize-14'/1]).
-export(['fn-tokenize-15'/1]).
-export(['fn-tokenize-16'/1]).
-export(['fn-tokenize-17'/1]).
-export(['fn-tokenize-18'/1]).
-export(['fn-tokenize-19'/1]).
-export(['fn-tokenize-20'/1]).
-export(['fn-tokenize-21'/1]).
-export(['fn-tokenize-22'/1]).
-export(['fn-tokenize-23'/1]).
-export(['fn-tokenize-24'/1]).
-export(['fn-tokenize-25'/1]).
-export(['fn-tokenize-26'/1]).
-export(['fn-tokenize-27'/1]).
-export(['fn-tokenize-28'/1]).
-export(['fn-tokenize-29'/1]).
-export(['fn-tokenize-30'/1]).
-export(['fn-tokenize-31'/1]).
-export(['fn-tokenize-32'/1]).
-export(['fn-tokenize-33'/1]).
-export(['fn-tokenize-34'/1]).
-export(['fn-tokenize-35'/1]).
-export(['fn-tokenize-36'/1]).
-export(['fn-tokenize-37'/1]).
-export(['fn-tokenize-38'/1]).
-export(['K-TokenizeFunc-1'/1]).
-export(['K-TokenizeFunc-2'/1]).
-export(['K-TokenizeFunc-3'/1]).
-export(['K-TokenizeFunc-4'/1]).
-export(['K-TokenizeFunc-5'/1]).
-export(['K2-TokenizeFunc-1'/1]).
-export(['K2-TokenizeFunc-2'/1]).
-export(['K2-TokenizeFunc-3'/1]).
-export(['K2-TokenizeFunc-4'/1]).
-export(['K2-TokenizeFunc-5'/1]).
-export(['K2-TokenizeFunc-6'/1]).
-export(['K2-TokenizeFunc-7'/1]).
-export(['cbcl-fn-tokenize-001'/1]).
-export(['cbcl-fn-tokenize-002'/1]).
-export(['cbcl-fn-tokenize-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-tokenize-1',
   'fn-tokenize-2',
   'fn-tokenize-3',
   'fn-tokenize-4',
   'fn-tokenize-5',
   'fn-tokenize-6',
   'fn-tokenize-7',
   'fn-tokenize-8',
   'fn-tokenize-9',
   'fn-tokenize-10',
   'fn-tokenize-11',
   'fn-tokenize-12',
   'fn-tokenize-13',
   'fn-tokenize-14',
   'fn-tokenize-15',
   'fn-tokenize-16',
   'fn-tokenize-17',
   'fn-tokenize-18',
   'fn-tokenize-19',
   'fn-tokenize-20',
   'fn-tokenize-21',
   'fn-tokenize-22',
   'fn-tokenize-23',
   'fn-tokenize-24',
   'fn-tokenize-25',
   'fn-tokenize-26',
   'fn-tokenize-27',
   'fn-tokenize-28',
   'fn-tokenize-29',
   'fn-tokenize-30',
   'fn-tokenize-31',
   'fn-tokenize-32',
   'fn-tokenize-33',
   'fn-tokenize-34',
   'fn-tokenize-35',
   'fn-tokenize-36',
   'fn-tokenize-37',
   'fn-tokenize-38',
   'K-TokenizeFunc-1',
   'K-TokenizeFunc-2',
   'K-TokenizeFunc-3',
   'K-TokenizeFunc-4',
   'K-TokenizeFunc-5',
   'K2-TokenizeFunc-1',
   'K2-TokenizeFunc-2',
   'K2-TokenizeFunc-3',
   'K2-TokenizeFunc-4',
   'K2-TokenizeFunc-5',
   'K2-TokenizeFunc-6',
   'K2-TokenizeFunc-7',
   'cbcl-fn-tokenize-001',
   'cbcl-fn-tokenize-002',
   'cbcl-fn-tokenize-003'].
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
'fn-tokenize-1'(_Config) ->
   Qry = "fn:tokenize(\"abba\", \".?\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0003'}) end.
'fn-tokenize-2'(_Config) ->
   Qry = "fn:tokenize(\"The cat sat on the mat\", \"\\s+\", \"t\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0001'}) end.
'fn-tokenize-3'(_Config) ->
   Qry = "fn:tokenize(\"The cat sat on the mat\", \"\\s+\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         The cat sat on the mat
      ",
   case xqerl_types:string_value(Res) of
             "The cat sat on the mat" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-tokenize-4'(_Config) ->
   Qry = "fn:tokenize(\"1, 15, 24, 50\", \",\\s*\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 15 24 50
      ",
   case xqerl_types:string_value(Res) of
             "1 15 24 50" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-tokenize-5'(_Config) ->
   Qry = "fn:tokenize(\"Some unparsed <br> HTML <BR> text\", \"\\s*<br>\\s*\", \"i\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"Some unparsed\", \"HTML\", \"text\"
      ",
 Tst = xqerl:run("\"Some unparsed\", \"HTML\", \"text\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-6'(_Config) ->
   Qry = "fn:tokenize(\"Some unparsed <br> HTML <BR> text\", \"\\s*<br>\\s*\", \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"Some unparsed\", \"HTML <BR> text\"
      ",
 Tst = xqerl:run("\"Some unparsed\", \"HTML <BR> text\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-7'(_Config) ->
   Qry = "fn:count(fn:tokenize((), \"\\s+\"))",
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
'fn-tokenize-8'(_Config) ->
   Qry = "fn:count(fn:tokenize(\"\", \"\\s+\"))",
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
'fn-tokenize-9'(_Config) ->
   Qry = "string-join(fn:tokenize(\"abracadabra\", \"(ab)|(a)\"), '#')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         #r#c#d#r#
      ",
   case xqerl_types:string_value(Res) of
             "#r#c#d#r#" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-tokenize-10'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra\", \"ww\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abracadabra
      ",
   case xqerl_types:string_value(Res) of
             "abracadabra" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-tokenize-11'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra\", \"^a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"\", \"bracadabra\"
      ",
 Tst = xqerl:run("\"\", \"bracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-12'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra^abracadabra\", \"\\^\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-13'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra?abracadabra\", \"\\?\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-14'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra*abracadabra\", \"\\*\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-15'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra+abracadabra\", \"\\+\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-16'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra{abracadabra\", \"\\{\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-17'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra}abracadabra\", \"\\}\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-18'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra(abracadabra\", \"\\(\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-19'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra)abracadabra\", \"\\)\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-20'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra[abracadabra\", \"\\[\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-21'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra]abracadabra\", \"\\]\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-22'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra-abracadabra\", \"\\-\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-23'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra.abracadabra\", \"\\.\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-24'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra|abracadabra\", \"\\|\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-25'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra\\abracadabra\", \"\\\\\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-26'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra	abracadabra\", \"\\t\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-27'(_Config) ->
   Qry = "fn:tokenize(\"abracadabra
abracadabra\", \"\\n\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabra\", \"abracadabra\"
      ",
 Tst = xqerl:run("\"abracadabra\", \"abracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-28'(_Config) ->
   Qry = "fn:tokenize(\"abracadabraabracadabra\", \"aa{1}\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabr\", \"bracadabra\"
      ",
 Tst = xqerl:run("\"abracadabr\", \"bracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-29'(_Config) ->
   Qry = "fn:tokenize(\"abracadabraabracadabraabracadabra\", \"aa{1,}\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabr\", \"bracadabr\", \"bracadabra\"
      ",
 Tst = xqerl:run("\"abracadabr\", \"bracadabr\", \"bracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-30'(_Config) ->
   Qry = "fn:tokenize(\"abracadabraabracadabraabracadabra\", \"aa{1,2}\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abracadabr\", \"bracadabr\", \"bracadabra\"
      ",
 Tst = xqerl:run("\"abracadabr\", \"bracadabr\", \"bracadabra\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-31'(_Config) ->
   Qry = "fn:tokenize(\"abc.def.gh.ijk\", \".\", \"q\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"abc\", \"def\", \"gh\", \"ijk\"
      ",
 Tst = xqerl:run("\"abc\", \"def\", \"gh\", \"ijk\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-32'(_Config) ->
   Qry = "fn:tokenize(\"A.BRA.CADA.BRA\", \"a.\", \"qi\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"\", \"BR\", \"CAD\", \"BRA\"
      ",
 Tst = xqerl:run("\"\", \"BR\", \"CAD\", \"BRA\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-33'(_Config) ->
   Qry = "fn:tokenize(\"ABRACADABRA\", \"A(?:B)\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"\", \"RACAD\", \"RA\"
      ",
 Tst = xqerl:run("\"\", \"RACAD\", \"RA\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-34'(_Config) ->
   Qry = "fn:tokenize(concat('Mary', codepoints-to-string(13), 'Jones'), 'y.J')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    concat('Mary', codepoints-to-string(13), 'Jones')
      ",
 Tst = xqerl:run("concat('Mary', codepoints-to-string(13), 'Jones')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-35'(_Config) ->
   Qry = "fn:tokenize(concat('Mary', codepoints-to-string(13), 'Jones'), 'y.J', 's')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    \"Mar\", \"ones\"
      ",
 Tst = xqerl:run("\"Mar\", \"ones\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-tokenize-36'(_Config) ->
   Qry = "fn:tokenize(concat('Mary', codepoints-to-string(10), 'Jones'), '^', 'm')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0003'}) end.
'fn-tokenize-37'(_Config) ->
   Qry = "fn:tokenize(concat('Mary', codepoints-to-string(10), 'Jones'), '$', 'm')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0003'}) end.
'fn-tokenize-38'(_Config) ->
   Qry = "fn:tokenize(concat('Mary', codepoints-to-string(10), 'Jones'), '^[\\s]*$', 'm')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
	    
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0003'}) end.
'K-TokenizeFunc-1'(_Config) ->
   Qry = "tokenize(\"input\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-TokenizeFunc-2'(_Config) ->
   Qry = "tokenize(\"input\", ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-TokenizeFunc-3'(_Config) ->
   Qry = "tokenize(\"input\", \"pattern\", \" \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0001'}) end.
'K-TokenizeFunc-4'(_Config) ->
   Qry = "tokenize(\"input\", \"pattern\", \"X\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0001'}) end.
'K-TokenizeFunc-5'(_Config) ->
   Qry = "tokenize(\"input\", \"pattern\", \"\", ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-TokenizeFunc-1'(_Config) ->
   Qry = "fn:tokenize((\"abracadabra\", current-time())[1] treat as xs:string, \"(ab)|(a)\")[last()] eq \"\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-TokenizeFunc-2'(_Config) ->
   Qry = "empty(fn:tokenize((\"abracadabra\", current-time())[1] treat as xs:string, \"(ab)|(a)\")[last() + 1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-TokenizeFunc-3'(_Config) ->
   Qry = "fn:tokenize((\"abracadabra\", current-time())[1] treat as xs:string, \"(ab)|(a)\")[last() - 1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         r
      ",
   case xqerl_types:string_value(Res) of
             "r" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-TokenizeFunc-4'(_Config) ->
   Qry = "fn:tokenize((\"abracadabra\", current-time())[1] treat as xs:string, \"(ab)|(a)\")[last() - 3]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         c
      ",
   case xqerl_types:string_value(Res) of
             "c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-TokenizeFunc-5'(_Config) ->
   Qry = "deep-equal(fn:tokenize(\"The cat sat on the mat\", \"\\s+\"), (\"The\", \"cat\", \"sat\", \"on\", \"the\", \"mat\")), count(fn:tokenize(\"The cat sat on the mat\", \"\\s+\")), count(fn:tokenize(\" The cat sat on the mat \", \"\\s+\")), fn:tokenize(\"The cat sat on the mat\", \"\\s+\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true 6 8 The cat sat on the mat
      ",
   case xqerl_types:string_value(Res) of
             "true 6 8 The cat sat on the mat" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-TokenizeFunc-6'(_Config) ->
   Qry = "replace('APXterms6', '\\w{3}\\d*([^TKR0-9]+).*$', '$1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         terms
      ",
   case xqerl_types:string_value(Res) of
             "terms" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-TokenizeFunc-7'(_Config) ->
   Qry = "count(tokenize(\"a b\", \" \")), count(tokenize(\"a b\", \"\\s\")), string-join(tokenize(\"a b\", \" \"), '|'), string-join(tokenize(\"a b\", \"\\s\"), '|'), tokenize(\"a b\", \" \"), tokenize(\"a b\", \"\\s\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 2 a|b a|b a b a b
      ",
   case xqerl_types:string_value(Res) of
             "2 2 a|b a|b a b a b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-fn-tokenize-001'(_Config) ->
   Qry = "
      for $x in xs:string(zero-or-one((1 to 10)[. mod 2 = -1])) return tokenize($x,',')
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-fn-tokenize-002'(_Config) ->
   Qry = "
      tokenize(string-join(for $x in (1 to 10)[. mod 2 = 0] return string($x),','),'[')
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORX0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORX0002'}) end.
'cbcl-fn-tokenize-003'(_Config) ->
   Qry = "
      tokenize(string-join(for $x in (1 to 10)[. mod 2 < 0] return string($x),','),',')
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_types:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
