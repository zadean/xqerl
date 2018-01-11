-module('fn_serialize_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['serialize-xml-001'/1]).
-export(['serialize-xml-002'/1]).
-export(['serialize-xml-003'/1]).
-export(['serialize-xml-004'/1]).
-export(['serialize-xml-005'/1]).
-export(['serialize-xml-006'/1]).
-export(['serialize-xml-007'/1]).
-export(['serialize-xml-007a'/1]).
-export(['serialize-xml-008'/1]).
-export(['serialize-xml-009'/1]).
-export(['serialize-xml-010'/1]).
-export(['serialize-xml-011'/1]).
-export(['serialize-xml-012'/1]).
-export(['serialize-xml-013'/1]).
-export(['serialize-xml-014'/1]).
-export(['serialize-xml-015'/1]).
-export(['serialize-xml-016'/1]).
-export(['serialize-xml-017'/1]).
-export(['serialize-xml-018'/1]).
-export(['serialize-xml-019'/1]).
-export(['serialize-xml-020'/1]).
-export(['serialize-xml-021'/1]).
-export(['serialize-xml-022'/1]).
-export(['serialize-xml-023'/1]).
-export(['serialize-xml-024'/1]).
-export(['serialize-xml-025'/1]).
-export(['serialize-xml-026'/1]).
-export(['serialize-xml-027'/1]).
-export(['serialize-xml-028'/1]).
-export(['serialize-xml-029'/1]).
-export(['serialize-xml-030'/1]).
-export(['serialize-xml-031'/1]).
-export(['serialize-xml-032'/1]).
-export(['serialize-xml-033'/1]).
-export(['serialize-xml-034'/1]).
-export(['serialize-xml-035'/1]).
-export(['serialize-xml-036'/1]).
-export(['serialize-xml-101'/1]).
-export(['serialize-xml-102'/1]).
-export(['serialize-xml-103'/1]).
-export(['serialize-xml-104'/1]).
-export(['serialize-xml-105'/1]).
-export(['serialize-xml-106'/1]).
-export(['serialize-xml-106a'/1]).
-export(['serialize-xml-107'/1]).
-export(['serialize-xml-107a'/1]).
-export(['serialize-xml-108'/1]).
-export(['serialize-xml-109'/1]).
-export(['serialize-xml-110'/1]).
-export(['serialize-xml-119'/1]).
-export(['serialize-xml-120'/1]).
-export(['serialize-xml-123'/1]).
-export(['serialize-xml-124'/1]).
-export(['serialize-xml-125'/1]).
-export(['serialize-xml-126'/1]).
-export(['serialize-xml-127'/1]).
-export(['serialize-xml-128'/1]).
-export(['serialize-xml-129'/1]).
-export(['serialize-xml-130'/1]).
-export(['serialize-xml-131'/1]).
-export(['serialize-xml-131a'/1]).
-export(['serialize-xml-132'/1]).
-export(['serialize-xml-133'/1]).
-export(['serialize-xml-134'/1]).
-export(['serialize-xml-135'/1]).
-export(['serialize-xml-136'/1]).
-export(['serialize-xml-137'/1]).
-export(['serialize-xml-138'/1]).
-export(['serialize-xml-139'/1]).
-export(['serialize-xml-140'/1]).
-export(['serialize-xml-141'/1]).
-export(['serialize-xml-142'/1]).
-export(['serialize-json-001'/1]).
-export(['serialize-json-002'/1]).
-export(['serialize-json-003'/1]).
-export(['serialize-json-004'/1]).
-export(['serialize-json-005'/1]).
-export(['serialize-json-006'/1]).
-export(['serialize-json-007'/1]).
-export(['serialize-json-008'/1]).
-export(['serialize-json-009'/1]).
-export(['serialize-json-010'/1]).
-export(['serialize-json-011'/1]).
-export(['serialize-json-101'/1]).
-export(['serialize-json-102'/1]).
-export(['serialize-json-103'/1]).
-export(['serialize-json-104'/1]).
-export(['serialize-json-105'/1]).
-export(['serialize-json-106'/1]).
-export(['serialize-json-107'/1]).
-export(['serialize-json-108'/1]).
-export(['serialize-json-109'/1]).
-export(['serialize-json-110'/1]).
-export(['serialize-json-111'/1]).
-export(['serialize-json-112'/1]).
-export(['serialize-json-113'/1]).
-export(['serialize-json-114'/1]).
-export(['serialize-json-115'/1]).
-export(['serialize-json-116'/1]).
-export(['serialize-json-117'/1]).
-export(['serialize-json-118'/1]).
-export(['serialize-json-119'/1]).
-export(['serialize-json-120'/1]).
-export(['serialize-json-121'/1]).
-export(['serialize-json-122'/1]).
-export(['serialize-json-123'/1]).
-export(['serialize-json-124'/1]).
-export(['serialize-json-125'/1]).
-export(['serialize-json-126'/1]).
-export(['serialize-json-127'/1]).
-export(['serialize-json-128'/1]).
-export(['serialize-json-130'/1]).
-export(['serialize-json-131'/1]).
-export(['serialize-json-132'/1]).
-export(['serialize-json-133'/1]).
-export(['serialize-json-134'/1]).
-export(['serialize-json-135'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'serialize-xml-001',
   'serialize-xml-002',
   'serialize-xml-003',
   'serialize-xml-004',
   'serialize-xml-005',
   'serialize-xml-006',
   'serialize-xml-007',
   'serialize-xml-007a',
   'serialize-xml-008',
   'serialize-xml-009',
   'serialize-xml-010',
   'serialize-xml-011',
   'serialize-xml-012',
   'serialize-xml-013',
   'serialize-xml-014',
   'serialize-xml-015',
   'serialize-xml-016',
   'serialize-xml-017',
   'serialize-xml-018',
   'serialize-xml-019',
   'serialize-xml-020',
   'serialize-xml-021',
   'serialize-xml-022',
   'serialize-xml-023',
   'serialize-xml-024',
   'serialize-xml-025',
   'serialize-xml-026',
   'serialize-xml-027',
   'serialize-xml-028',
   'serialize-xml-029',
   'serialize-xml-030',
   'serialize-xml-031',
   'serialize-xml-032',
   'serialize-xml-033',
   'serialize-xml-034',
   'serialize-xml-035',
   'serialize-xml-036',
   'serialize-xml-101',
   'serialize-xml-102',
   'serialize-xml-103',
   'serialize-xml-104',
   'serialize-xml-105',
   'serialize-xml-106',
   'serialize-xml-106a',
   'serialize-xml-107',
   'serialize-xml-107a',
   'serialize-xml-108',
   'serialize-xml-109',
   'serialize-xml-110',
   'serialize-xml-119',
   'serialize-xml-120',
   'serialize-xml-123',
   'serialize-xml-124',
   'serialize-xml-125',
   'serialize-xml-126',
   'serialize-xml-127',
   'serialize-xml-128',
   'serialize-xml-129',
   'serialize-xml-130',
   'serialize-xml-131',
   'serialize-xml-131a',
   'serialize-xml-132',
   'serialize-xml-133',
   'serialize-xml-134',
   'serialize-xml-135',
   'serialize-xml-136',
   'serialize-xml-137',
   'serialize-xml-138',
   'serialize-xml-139',
   'serialize-xml-140',
   'serialize-xml-141',
   'serialize-xml-142',
   'serialize-json-001',
   'serialize-json-002',
   'serialize-json-003',
   'serialize-json-004',
   'serialize-json-005',
   'serialize-json-006',
   'serialize-json-007',
   'serialize-json-008',
   'serialize-json-009',
   'serialize-json-010',
   'serialize-json-011',
   'serialize-json-101',
   'serialize-json-102',
   'serialize-json-103',
   'serialize-json-104',
   'serialize-json-105',
   'serialize-json-106',
   'serialize-json-107',
   'serialize-json-108',
   'serialize-json-109',
   'serialize-json-110',
   'serialize-json-111',
   'serialize-json-112',
   'serialize-json-113',
   'serialize-json-114',
   'serialize-json-115',
   'serialize-json-116',
   'serialize-json-117',
   'serialize-json-118',
   'serialize-json-119',
   'serialize-json-120',
   'serialize-json-121',
   'serialize-json-122',
   'serialize-json-123',
   'serialize-json-124',
   'serialize-json-125',
   'serialize-json-126',
   'serialize-json-127',
   'serialize-json-128',
   'serialize-json-130',
   'serialize-json-131',
   'serialize-json-132',
   'serialize-json-133',
   'serialize-json-134',
   'serialize-json-135'].
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'serialize-xml-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-007a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-012'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-013'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-014'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-015'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-016'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-017'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-018'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-019'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-020'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-021'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-022'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-023'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-024'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-025'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-026'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-027'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-028'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-029'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-030'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-031'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-032'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-033'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-034'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-035'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'serialize-xml-036'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'serialize-xml-101'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-102'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-103'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-104'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-105'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-106'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-106a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-107'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-107a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-108'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-109'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-110'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-119'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-120'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-123'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-124'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-125'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-126'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-127'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-128'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-129'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-130'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-131'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-131a'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"Validation Environment"}.
'serialize-xml-132'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-133'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-134'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-135'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'serialize-xml-136'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization"}.
'serialize-xml-137'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-138'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-139'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-140'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-141'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-xml-142'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-002'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-003'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-004'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-005'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-006'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-007'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-008'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-009'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-010'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-011'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-101'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-102'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-103'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-104'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-105'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-106'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-107'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-108'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-109'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-110'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-111'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-112'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-113'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-114'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-115'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-116'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-117'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-118'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-119'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-120'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-121'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-122'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-123'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-124'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-125'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-126'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-127'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-128'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-130'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-131'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-132'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-133'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-134'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
'serialize-json-135'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   {skip,"serialization feature"}.
