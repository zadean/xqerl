-module('prod_GeneralComp_eq_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['generalexpression1'/1]).
-export(['generalexpression2'/1]).
-export(['generalexpression3'/1]).
-export(['generalexpression4'/1]).
-export(['generalexpression5'/1]).
-export(['generalexpression6'/1]).
-export(['generalexpression7'/1]).
-export(['generalexpression8'/1]).
-export(['generalexpression9'/1]).
-export(['generalexpression10'/1]).
-export(['generalexpression11'/1]).
-export(['generalexpression12'/1]).
-export(['generalexpression13'/1]).
-export(['generalexpression14'/1]).
-export(['generalexpression15'/1]).
-export(['generalexpression16'/1]).
-export(['generalexpression17'/1]).
-export(['generalexpression18'/1]).
-export(['generalexpression19'/1]).
-export(['generalexpression20'/1]).
-export(['generalexpression21'/1]).
-export(['generalexpression22'/1]).
-export(['generalexpression23'/1]).
-export(['generalexpression24'/1]).
-export(['generalexpression25'/1]).
-export(['generalexpression26'/1]).
-export(['generalexpression27'/1]).
-export(['generalexpression28'/1]).
-export(['generalexpression29'/1]).
-export(['generalexpression30'/1]).
-export(['generalexpression31'/1]).
-export(['generalexpression32'/1]).
-export(['generalexpression33'/1]).
-export(['generalexpression34'/1]).
-export(['generalexpression35'/1]).
-export(['generalexpression36'/1]).
-export(['generalexpression37'/1]).
-export(['generalexpression38'/1]).
-export(['generalexpression39'/1]).
-export(['generalexpression40'/1]).
-export(['generalexpression41'/1]).
-export(['generalexpression42'/1]).
-export(['generalexpression43'/1]).
-export(['generalexpression44'/1]).
-export(['generalexpression45'/1]).
-export(['generalexpression46'/1]).
-export(['generalexpression47'/1]).
-export(['generalexpression48'/1]).
-export(['generalexpression49'/1]).
-export(['generalexpression50'/1]).
-export(['generalexpression51'/1]).
-export(['generalexpression52'/1]).
-export(['generalexpression53'/1]).
-export(['generalexpression54'/1]).
-export(['generalexpression55'/1]).
-export(['generalexpression56'/1]).
-export(['generalexpression57'/1]).
-export(['generalexpression58'/1]).
-export(['generalexpression59'/1]).
-export(['generalexpression60'/1]).
-export(['generalexpression61'/1]).
-export(['generalexpression62'/1]).
-export(['generalexpression63'/1]).
-export(['generalexpression64'/1]).
-export(['generalexpression65'/1]).
-export(['generalexpression66'/1]).
-export(['generalexpression67'/1]).
-export(['generalexpression68'/1]).
-export(['generalexpression69'/1]).
-export(['generalexpression70'/1]).
-export(['generalexpression71'/1]).
-export(['generalexpression72'/1]).
-export(['generalexpression73'/1]).
-export(['generalexpression74'/1]).
-export(['generalexpression75'/1]).
-export(['generalexpression76'/1]).
-export(['generalexpression77'/1]).
-export(['generalexpression78'/1]).
-export(['generalexpression79'/1]).
-export(['generalexpression80'/1]).
-export(['generalexpression81'/1]).
-export(['generalexpression82'/1]).
-export(['generalexpression83'/1]).
-export(['generalexpression84'/1]).
-export(['generalexpression85'/1]).
-export(['generalexpression86'/1]).
-export(['generalexpression87'/1]).
-export(['generalexpression88'/1]).
-export(['generalexpression89'/1]).
-export(['generalexpression90'/1]).
-export(['generalexpression91'/1]).
-export(['generalexpression92'/1]).
-export(['generalexpression93'/1]).
-export(['generalexpression94'/1]).
-export(['generalexpression95'/1]).
-export(['generalexpression96'/1]).
-export(['generalexpression97'/1]).
-export(['generalexpression98'/1]).
-export(['generalexpression99'/1]).
-export(['K-GenCompEq-1'/1]).
-export(['K-GenCompEq-2'/1]).
-export(['K-GenCompEq-3'/1]).
-export(['K-GenCompEq-4'/1]).
-export(['K-GenCompEq-5'/1]).
-export(['K-GenCompEq-6'/1]).
-export(['K-GenCompEq-7'/1]).
-export(['K-GenCompEq-8'/1]).
-export(['K-GenCompEq-9'/1]).
-export(['K-GenCompEq-10'/1]).
-export(['K-GenCompEq-11'/1]).
-export(['K-GenCompEq-12'/1]).
-export(['K-GenCompEq-13'/1]).
-export(['K-GenCompEq-14'/1]).
-export(['K-GenCompEq-15'/1]).
-export(['K-GenCompEq-16'/1]).
-export(['K-GenCompEq-17'/1]).
-export(['K-GenCompEq-18'/1]).
-export(['K-GenCompEq-19'/1]).
-export(['K-GenCompEq-20'/1]).
-export(['K-GenCompEq-21'/1]).
-export(['K-GenCompEq-22'/1]).
-export(['K-GenCompEq-23'/1]).
-export(['K-GenCompEq-24'/1]).
-export(['K-GenCompEq-25'/1]).
-export(['K-GenCompEq-26'/1]).
-export(['K-GenCompEq-27'/1]).
-export(['K-GenCompEq-28'/1]).
-export(['K-GenCompEq-29'/1]).
-export(['K-GenCompEq-30'/1]).
-export(['K-GenCompEq-31'/1]).
-export(['K-GenCompEq-32'/1]).
-export(['K-GenCompEq-33'/1]).
-export(['K-GenCompEq-34'/1]).
-export(['K-GenCompEq-35'/1]).
-export(['K-GenCompEq-36'/1]).
-export(['K-GenCompEq-37'/1]).
-export(['K-GenCompEq-38'/1]).
-export(['K-GenCompEq-39'/1]).
-export(['K-GenCompEq-40'/1]).
-export(['K-GenCompEq-41'/1]).
-export(['K-GenCompEq-42'/1]).
-export(['K-GenCompEq-43'/1]).
-export(['K-GenCompEq-44'/1]).
-export(['K-GenCompEq-45'/1]).
-export(['K-GenCompEq-46'/1]).
-export(['K-GenCompEq-47'/1]).
-export(['K-GenCompEq-48'/1]).
-export(['K-GenCompEq-49'/1]).
-export(['K-GenCompEq-50'/1]).
-export(['K-GenCompEq-51'/1]).
-export(['K-GenCompEq-52'/1]).
-export(['K-GenCompEq-53'/1]).
-export(['K-GenCompEq-54'/1]).
-export(['K-GenCompEq-55'/1]).
-export(['K-GenCompEq-56'/1]).
-export(['K-GenCompEq-57'/1]).
-export(['K-GenCompEq-58'/1]).
-export(['K-GenCompEq-59'/1]).
-export(['K2-GenCompEq-1'/1]).
-export(['K2-GenCompEq-2'/1]).
-export(['K2-GenCompEq-3'/1]).
-export(['K2-GenCompEq-4'/1]).
-export(['K2-GenCompEq-5'/1]).
-export(['K2-GenCompEq-6'/1]).
-export(['K2-GenCompEq-7'/1]).
-export(['K2-GenCompEq-8'/1]).
-export(['GenCompEq-1'/1]).
-export(['GenCompEq-2'/1]).
-export(['GenCompEq-3'/1]).
-export(['GenCompEq-4'/1]).
-export(['GenCompEq-5'/1]).
-export(['GenCompEq-6'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'generalexpression1',
   'generalexpression2',
   'generalexpression3',
   'generalexpression4',
   'generalexpression5',
   'generalexpression6',
   'generalexpression7',
   'generalexpression8',
   'generalexpression9',
   'generalexpression10',
   'generalexpression11',
   'generalexpression12',
   'generalexpression13',
   'generalexpression14',
   'generalexpression15',
   'generalexpression16',
   'generalexpression17',
   'generalexpression18',
   'generalexpression19',
   'generalexpression20',
   'generalexpression21',
   'generalexpression22',
   'generalexpression23',
   'generalexpression24',
   'generalexpression25',
   'generalexpression26',
   'generalexpression27',
   'generalexpression28',
   'generalexpression29',
   'generalexpression30',
   'generalexpression31',
   'generalexpression32',
   'generalexpression33',
   'generalexpression34',
   'generalexpression35',
   'generalexpression36',
   'generalexpression37',
   'generalexpression38',
   'generalexpression39',
   'generalexpression40',
   'generalexpression41',
   'generalexpression42',
   'generalexpression43',
   'generalexpression44',
   'generalexpression45',
   'generalexpression46',
   'generalexpression47',
   'generalexpression48',
   'generalexpression49',
   'generalexpression50',
   'generalexpression51',
   'generalexpression52',
   'generalexpression53',
   'generalexpression54',
   'generalexpression55',
   'generalexpression56',
   'generalexpression57',
   'generalexpression58',
   'generalexpression59',
   'generalexpression60',
   'generalexpression61',
   'generalexpression62',
   'generalexpression63',
   'generalexpression64',
   'generalexpression65',
   'generalexpression66',
   'generalexpression67',
   'generalexpression68',
   'generalexpression69',
   'generalexpression70',
   'generalexpression71',
   'generalexpression72',
   'generalexpression73',
   'generalexpression74',
   'generalexpression75',
   'generalexpression76',
   'generalexpression77',
   'generalexpression78',
   'generalexpression79',
   'generalexpression80',
   'generalexpression81',
   'generalexpression82',
   'generalexpression83',
   'generalexpression84',
   'generalexpression85',
   'generalexpression86',
   'generalexpression87',
   'generalexpression88',
   'generalexpression89',
   'generalexpression90',
   'generalexpression91',
   'generalexpression92',
   'generalexpression93',
   'generalexpression94',
   'generalexpression95',
   'generalexpression96',
   'generalexpression97',
   'generalexpression98',
   'generalexpression99',
   'K-GenCompEq-1',
   'K-GenCompEq-2',
   'K-GenCompEq-3',
   'K-GenCompEq-4',
   'K-GenCompEq-5',
   'K-GenCompEq-6',
   'K-GenCompEq-7',
   'K-GenCompEq-8',
   'K-GenCompEq-9',
   'K-GenCompEq-10',
   'K-GenCompEq-11',
   'K-GenCompEq-12',
   'K-GenCompEq-13',
   'K-GenCompEq-14',
   'K-GenCompEq-15',
   'K-GenCompEq-16',
   'K-GenCompEq-17',
   'K-GenCompEq-18',
   'K-GenCompEq-19',
   'K-GenCompEq-20',
   'K-GenCompEq-21',
   'K-GenCompEq-22',
   'K-GenCompEq-23',
   'K-GenCompEq-24',
   'K-GenCompEq-25',
   'K-GenCompEq-26',
   'K-GenCompEq-27',
   'K-GenCompEq-28',
   'K-GenCompEq-29',
   'K-GenCompEq-30',
   'K-GenCompEq-31',
   'K-GenCompEq-32',
   'K-GenCompEq-33',
   'K-GenCompEq-34',
   'K-GenCompEq-35',
   'K-GenCompEq-36',
   'K-GenCompEq-37',
   'K-GenCompEq-38',
   'K-GenCompEq-39',
   'K-GenCompEq-40',
   'K-GenCompEq-41',
   'K-GenCompEq-42',
   'K-GenCompEq-43',
   'K-GenCompEq-44',
   'K-GenCompEq-45',
   'K-GenCompEq-46',
   'K-GenCompEq-47',
   'K-GenCompEq-48',
   'K-GenCompEq-49',
   'K-GenCompEq-50',
   'K-GenCompEq-51',
   'K-GenCompEq-52',
   'K-GenCompEq-53',
   'K-GenCompEq-54',
   'K-GenCompEq-55',
   'K-GenCompEq-56',
   'K-GenCompEq-57',
   'K-GenCompEq-58',
   'K-GenCompEq-59',
   'K2-GenCompEq-1',
   'K2-GenCompEq-2',
   'K2-GenCompEq-3',
   'K2-GenCompEq-4',
   'K2-GenCompEq-5',
   'K2-GenCompEq-6',
   'K2-GenCompEq-7',
   'K2-GenCompEq-8',
   'GenCompEq-1',
   'GenCompEq-2',
   'GenCompEq-3',
   'GenCompEq-4',
   'GenCompEq-5',
   'GenCompEq-6'].
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
'generalexpression1'(_Config) ->
   Qry = "() = ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression2'(_Config) ->
   Qry = "() = 10000",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression3'(_Config) ->
   Qry = "() = (50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression4'(_Config) ->
   Qry = "() = (10000,50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression5'(_Config) ->
   Qry = "() = <a>10000</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression6'(_Config) ->
   Qry = "() = (<a>10000</a>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression7'(_Config) ->
   Qry = "() = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression8'(_Config) ->
   Qry = "() = (/works/employee[1]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression9'(_Config) ->
   Qry = "() = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression10'(_Config) ->
   Qry = "() = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression11'(_Config) ->
   Qry = "10000 = ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression12'(_Config) ->
   Qry = "10000 = ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression13'(_Config) ->
   Qry = "10000 = (10000,50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression14'(_Config) ->
   Qry = "10000 = <a>10000</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression15'(_Config) ->
   Qry = "10000 = (<a>10000</a>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression16'(_Config) ->
   Qry = "10000 = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression17'(_Config) ->
   Qry = "10000 = (/works/employee[1]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression18'(_Config) ->
   Qry = "10000 = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression19'(_Config) ->
   Qry = "10000 = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression20'(_Config) ->
   Qry = "(50000) = ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression21'(_Config) ->
   Qry = "(50000) = 10000",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression22'(_Config) ->
   Qry = "(50000) = (50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression23'(_Config) ->
   Qry = "(50000) = (10000,50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression24'(_Config) ->
   Qry = "(50000) = <a>10000</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression25'(_Config) ->
   Qry = "(50000) = (<a>10000</a>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression26'(_Config) ->
   Qry = "(50000) = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression27'(_Config) ->
   Qry = "(50000) = (/works/employee[1]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression28'(_Config) ->
   Qry = "(50000) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression29'(_Config) ->
   Qry = "(50000) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression30'(_Config) ->
   Qry = "(10000,50000) = ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression31'(_Config) ->
   Qry = "(10000,50000) = 10000",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression32'(_Config) ->
   Qry = "(10000,50000) = (50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression33'(_Config) ->
   Qry = "(10000,50000) = (10000,50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression34'(_Config) ->
   Qry = "(10000,50000) = <a>10000</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression35'(_Config) ->
   Qry = "(10000,50000) = (<a>10000</a>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression36'(_Config) ->
   Qry = "(10000,50000) = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression37'(_Config) ->
   Qry = "(10000,50000) = (/works/employee[1]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression38'(_Config) ->
   Qry = "(10000,50000) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression39'(_Config) ->
   Qry = "(10000,50000) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression40'(_Config) ->
   Qry = "<a>10000</a> = ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression41'(_Config) ->
   Qry = "<a>10000</a> = 10000",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression42'(_Config) ->
   Qry = "<a>10000</a> = (50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression43'(_Config) ->
   Qry = "<a>10000</a> = (10000,50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression44'(_Config) ->
   Qry = "<a>10000</a> = <a>10000</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression45'(_Config) ->
   Qry = "<a>10000</a> = (<a>10000</a>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression46'(_Config) ->
   Qry = "<a>10000</a> = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression47'(_Config) ->
   Qry = "<a>10000</a> = (/works/employee[1]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression48'(_Config) ->
   Qry = "<a>10000</a> = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression49'(_Config) ->
   Qry = "<a>10000</a> = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression50'(_Config) ->
   Qry = "(<a>10000</a>) = ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression51'(_Config) ->
   Qry = "(<a>10000</a>) = 10000",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression52'(_Config) ->
   Qry = "(<a>10000</a>) = (50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression53'(_Config) ->
   Qry = "(<a>10000</a>) = (10000,50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression54'(_Config) ->
   Qry = "(<a>10000</a>) = <a>10000</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression55'(_Config) ->
   Qry = "(<a>10000</a>) = (<a>10000</a>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression56'(_Config) ->
   Qry = "(<a>10000</a>) = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression57'(_Config) ->
   Qry = "(<a>10000</a>) = (/works/employee[1]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression58'(_Config) ->
   Qry = "(<a>10000</a>) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression59'(_Config) ->
   Qry = "(<a>10000</a>) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression60'(_Config) ->
   Qry = "(<a>10000</a>,<b>50000</b>) = ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression61'(_Config) ->
   Qry = "(<a>10000</a>,<b>50000</b>) = 10000",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression62'(_Config) ->
   Qry = "(<a>10000</a>,<b>50000</b>) = (50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression63'(_Config) ->
   Qry = "(<a>10000</a>,<b>50000</b>) = (10000,50000)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression64'(_Config) ->
   Qry = "(<a>10000</a>,<b>50000</b>) = <a>10000</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression65'(_Config) ->
   Qry = "(<a>10000</a>,<b>50000</b>) = (<a>10000</a>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression66'(_Config) ->
   Qry = "(<a>10000</a>,<b>50000</b>) = (<a>10000</a>,<b>50000</b>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression67'(_Config) ->
   Qry = "(<a>10000</a>,<b>50000</b>) = (/works/employee[1]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression68'(_Config) ->
   Qry = "(<a>10000</a>,<b>50000</b>) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression69'(_Config) ->
   Qry = "(<a>10000</a>,<b>50000</b>) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression70'(_Config) ->
   Qry = "(/works/employee[1]/hours[1]) = ()",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression71'(_Config) ->
   Qry = "(/works/employee[1]/hours[1]) = 10000",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression72'(_Config) ->
   Qry = "(/works/employee[1]/hours[1]) = (50000)",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression73'(_Config) ->
   Qry = "(/works/employee[1]/hours[1]) = (10000,50000)",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression74'(_Config) ->
   Qry = "(/works/employee[1]/hours[1]) = <a>10000</a>",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression75'(_Config) ->
   Qry = "(/works/employee[1]/hours[1]) = (<a>10000</a>)",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression76'(_Config) ->
   Qry = "(/works/employee[1]/hours[1]) = (<a>10000</a>,<b>50000</b>)",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression77'(_Config) ->
   Qry = "(/works/employee[1]/hours[1]) = (/works/employee[1]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression78'(_Config) ->
   Qry = "(/works/employee[1]/hours[1]) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression79'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1]) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression80'(_Config) ->
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = ()",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression81'(_Config) ->
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = 10000",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression82'(_Config) ->
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (50000)",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression83'(_Config) ->
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (10000,50000)",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression84'(_Config) ->
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = <a>10000</a>",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression85'(_Config) ->
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (<a>10000</a>)",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression86'(_Config) ->
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (<a>10000</a>,<b>50000</b>)",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression87'(_Config) ->
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (/works/employee[1]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression88'(_Config) ->
   Qry = "(/works/employee[1]/hours[1],/works/employee[6]/hours[1]) = (/works/employee[1]/hours[1],/works/employee[6]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression89'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1]) = \n         ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression90'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = ()",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression91'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = 10000",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression92'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = (50000)",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression93'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = (10000,50000)",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression94'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = <a>10000</a>",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression95'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = (<a>10000</a>)",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression96'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = (<a>10000</a>,<b>50000</b>)",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression97'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) =\n         ($works/works/employee[1]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression98'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = ($works/works/employee[1]/hours[1],$works/works/employee[6]/hours[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generalexpression99'(_Config) ->
   Qry = "($works/works/employee[1]/hours[1],$staff/staff/employee[6]/hours[1]) = ($works/works/employee[1]/hours[1],$staff/staff/employee[6]/grade[1])",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-1'(_Config) ->
   Qry = "not(() = ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-2'(_Config) ->
   Qry = "not((() = ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-3'(_Config) ->
   Qry = "not((() = 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-4'(_Config) ->
   Qry = "not(1 = ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-5'(_Config) ->
   Qry = "1 == 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-GenCompEq-6'(_Config) ->
   Qry = "(1, 2) = (2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-7'(_Config) ->
   Qry = "(2, 3) = (3, 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-8'(_Config) ->
   Qry = "not((1, 2) = (3, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-9'(_Config) ->
   Qry = "(xs:untypedAtomic(\"1\"), xs:untypedAtomic(\"2\")) = (xs:untypedAtomic(\"2.0\"), 2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-GenCompEq-10'(_Config) ->
   Qry = "not((xs:untypedAtomic(\"1\"), xs:untypedAtomic(\"2\")) = (xs:untypedAtomic(\"2.0\"), 3.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-GenCompEq-11'(_Config) ->
   Qry = "xs:untypedAtomic(\"1\") = 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-12'(_Config) ->
   Qry = "not(xs:untypedAtomic(\"2\") = 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-13'(_Config) ->
   Qry = "xs:untypedAtomic(\"1\") = 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-14'(_Config) ->
   Qry = "1 = xs:untypedAtomic(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-15'(_Config) ->
   Qry = "1 = xs:untypedAtomic(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-16'(_Config) ->
   Qry = "error() = 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-GenCompEq-17'(_Config) ->
   Qry = "(error(), 3) = 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-GenCompEq-18'(_Config) ->
   Qry = "3 = error()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-GenCompEq-19'(_Config) ->
   Qry = "3 = (error(), 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-GenCompEq-20'(_Config) ->
   Qry = "count(remove(remove((current-time(), 1), 1), 1)) = 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-21'(_Config) ->
   Qry = "not(0 = count((1, 2, timezone-from-time(current-time()))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-22'(_Config) ->
   Qry = "0 != count((1, 2, timezone-from-time(current-time())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-23'(_Config) ->
   Qry = "(xs:anyURI(\"example.com/\"), 1, QName(\"example.com\", \"ncname\"), false(), xs:hexBinary(\"FF\")) = (xs:anyURI(\"example.com/NOT\"), 0, QName(\"example.com\", \"p:ncname\"), true(), xs:hexBinary(\"EF\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-GenCompEq-24'(_Config) ->
   Qry = "\"a string\" = \"a string\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-25'(_Config) ->
   Qry = "xs:untypedAtomic(\"a string\") = \"a string\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-26'(_Config) ->
   Qry = "\"a string\" = xs:untypedAtomic(\"a string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-27'(_Config) ->
   Qry = "not(xs:untypedAtomic(\"a string\") = \"a stringDIFF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-28'(_Config) ->
   Qry = "not(\"a string\" = xs:untypedAtomic(\"a stringDIFF\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-29'(_Config) ->
   Qry = "not(\"a string\" = \"a stringDIFF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-30'(_Config) ->
   Qry = "remove((6, \"a string\"), 1) = 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-GenCompEq-31'(_Config) ->
   Qry = "6 = remove((\"a string\", 6), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-GenCompEq-32'(_Config) ->
   Qry = "remove((6, \"a string\"), 2) = xs:untypedAtomic(\"6\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-GenCompEq-33'(_Config) ->
   Qry = "xs:untypedAtomic(\"6\") = remove((\"a string\", 6), 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-GenCompEq-34'(_Config) ->
   Qry = "(remove((xs:untypedAtomic(\"6\"), \"a string\"), 2)) = 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-GenCompEq-35'(_Config) ->
   Qry = "6 = (remove((\"a string\", xs:untypedAtomic(\"6\")), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-GenCompEq-36'(_Config) ->
   Qry = "1 = 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-37'(_Config) ->
   Qry = "(1, 2, 3) = 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-38'(_Config) ->
   Qry = "(1, 2, 3) = 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-39'(_Config) ->
   Qry = "(1, 2, 3) = 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-40'(_Config) ->
   Qry = "2 = (1, 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-41'(_Config) ->
   Qry = "1 = (1, 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-42'(_Config) ->
   Qry = "3 = (1, 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-43'(_Config) ->
   Qry = "xs:untypedAtomic(\"false\") = false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-44'(_Config) ->
   Qry = "false() = xs:untypedAtomic(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-45'(_Config) ->
   Qry = "not(xs:untypedAtomic(\"true\") = false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-46'(_Config) ->
   Qry = "(true() = xs:untypedAtomic(\"true\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-GenCompEq-47'(_Config) ->
   Qry = "\"1\" = 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-GenCompEq-48'(_Config) ->
   Qry = "1 = \"1\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-GenCompEq-49'(_Config) ->
   Qry = "false() = 5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-GenCompEq-50'(_Config) ->
   Qry = "5 = false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-GenCompEq-51'(_Config) ->
   Qry = "xs:untypedAtomic(\"three\") = 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'K-GenCompEq-52'(_Config) ->
   Qry = "xs:string(\"false\") = false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-GenCompEq-53'(_Config) ->
   Qry = "false() = xs:string(\"false\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-GenCompEq-54'(_Config) ->
   Qry = "xs:untypedAtomic(\"falseERR\") = false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'K-GenCompEq-55'(_Config) ->
   Qry = "(xs:untypedAtomic(\"1\"), xs:anyURI(\"example.com\")) = (xs:untypedAtomic(\"2.0\"), 3.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-GenCompEq-56'(_Config) ->
   Qry = "false() = xs:untypedAtomic(\"falseERR\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'K-GenCompEq-57'(_Config) ->
   Qry = "3 = xs:untypedAtomic(\"three\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'K-GenCompEq-58'(_Config) ->
   Qry = "xs:anyURI(\"example.com/\") = false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-GenCompEq-59'(_Config) ->
   Qry = "false() = xs:anyURI(\"example.com/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-GenCompEq-1'(_Config) ->
   Qry = "declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; (lower-case($vA) = lower-case($vB))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-GenCompEq-2'(_Config) ->
   Qry = "declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; (upper-case($vA) = upper-case($vB))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-GenCompEq-3'(_Config) ->
   Qry = "declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; declare variable $vB as xs:string := (\"no match\", current-time(), string(<e>content</e>))[1] treat as xs:string; (lower-case($vA) = lower-case($vB))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-GenCompEq-4'(_Config) ->
   Qry = "declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; declare variable $vB as xs:string := (\"no match\", current-time(), string(<e>content</e>))[1] treat as xs:string; (upper-case($vA) = upper-case($vB))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-GenCompEq-5'(_Config) ->
   Qry = "declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; (upper-case($vA) = lower-case($vB))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-GenCompEq-6'(_Config) ->
   Qry = "declare variable $vA as xs:string := (\"B STRING\", current-time(), string(<e>content</e>))[1] treat as xs:string; declare variable $vB as xs:string := (\"b string\", current-time(), string(<e>content</e>))[1] treat as xs:string; (lower-case($vA) = upper-case($vB))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-GenCompEq-7'(_Config) ->
   Qry = "let $x := codepoints-to-string(12) return ($x = $x)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-GenCompEq-8'(_Config) ->
   Qry = "empty(for $b in <e/> where $b/@id=\"person0\" return ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'GenCompEq-1'(_Config) ->
   Qry = "xs:untypedAtomic(\"a string\") = xs:untypedAtomic(\"a stringDIFF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'GenCompEq-2'(_Config) ->
   Qry = "xs:untypedAtomic(\"1\") = xs:NCName(\"string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'GenCompEq-3'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT08H34M12.143S\") = xs:untypedAtomic(\"P3DT08H34M12.143S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'GenCompEq-4'(_Config) ->
   Qry = "xs:untypedAtomic(\"0\") = xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'GenCompEq-5'(_Config) ->
   Qry = "xs:untypedAtomic(\"P1999Y10M\") = xs:yearMonthDuration(\"P1999Y10M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'GenCompEq-6'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1999Y\") = xs:untypedAtomic(\"1999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
