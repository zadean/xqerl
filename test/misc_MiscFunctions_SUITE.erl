-module('misc_MiscFunctions_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-id-5'/1]).
-export(['fn-id-6'/1]).
-export(['fn-id-7'/1]).
-export(['fn-id-8'/1]).
-export(['fn-id-9'/1]).
-export(['fn-id-10'/1]).
-export(['fn-id-11'/1]).
-export(['fn-id-12'/1]).
-export(['fn-id-13'/1]).
-export(['fn-id-14'/1]).
-export(['fn-id-15'/1]).
-export(['fn-id-16'/1]).
-export(['fn-id-17'/1]).
-export(['fn-id-18'/1]).
-export(['fn-id-19'/1]).
-export(['fn-id-20'/1]).
-export(['fn-id-21'/1]).
-export(['fn-id-23'/1]).
-export(['fn-idref-5'/1]).
-export(['fn-idref-6'/1]).
-export(['fn-idref-7'/1]).
-export(['fn-idref-8'/1]).
-export(['fn-idref-9'/1]).
-export(['fn-idref-10'/1]).
-export(['fn-idref-11'/1]).
-export(['fn-idref-12'/1]).
-export(['fn-idref-13'/1]).
-export(['fn-idref-14'/1]).
-export(['fn-idref-15'/1]).
-export(['fn-idref-16'/1]).
-export(['fn-idref-17'/1]).
-export(['fn-idref-18'/1]).
-export(['fn-idref-19'/1]).
-export(['fn-idref-20'/1]).
-export(['fn-idref-21'/1]).
-export(['fn-idref-23'/1]).
-export(['fn-idref-30'/1]).
-export(['fn-idref-31'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-id-5',
   'fn-id-6',
   'fn-id-7',
   'fn-id-8',
   'fn-id-9',
   'fn-id-10',
   'fn-id-11',
   'fn-id-12',
   'fn-id-13',
   'fn-id-14',
   'fn-id-15',
   'fn-id-16',
   'fn-id-17',
   'fn-id-18',
   'fn-id-19',
   'fn-id-20',
   'fn-id-21',
   'fn-id-23',
   'fn-idref-5',
   'fn-idref-6',
   'fn-idref-7',
   'fn-idref-8',
   'fn-idref-9',
   'fn-idref-10',
   'fn-idref-11',
   'fn-idref-12',
   'fn-idref-13',
   'fn-idref-14',
   'fn-idref-15',
   'fn-idref-16',
   'fn-idref-17',
   'fn-idref-18',
   'fn-idref-19',
   'fn-idref-20',
   'fn-idref-21',
   'fn-idref-23',
   'fn-idref-30',
   'fn-idref-31'].
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
environment('id-idref') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/id/id.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/id/id.xsd","http://www.w3.org/XQueryTest/ididrefs"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('id-idref3') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/id/id2.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/id/id.xsd","http://www.w3.org/XQueryTest/ididrefs"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-id-5'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-6'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-7'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-8'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-9'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-10'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-11'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-12'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-13'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-14'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-15'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-16'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-17'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-18'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-19'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-20'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-21'(_Config) ->
   {skip,"Validation Environment"}.
'fn-id-23'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-5'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-6'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-7'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-8'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-9'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-10'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-11'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-12'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-13'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-14'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-15'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-16'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-17'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-18'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-19'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-20'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-21'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-23'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-30'(_Config) ->
   {skip,"Validation Environment"}.
'fn-idref-31'(_Config) ->
   {skip,"Validation Environment"}.
