-module('prod_SchemaImport_SUITE').

-include_lib("common_test/include/ct.hrl").

-export([
    all/0,
    groups/0,
    suite/0
]).

-export([
    init_per_suite/1,
    init_per_group/2,
    end_per_group/2,
    end_per_suite/1
]).

-export(['schema-import-1'/1]).
-export(['schema-import-2'/1]).
-export(['schema-import-3'/1]).
-export(['schema-import-4'/1]).
-export(['schema-import-5'/1]).
-export(['schema-import-6'/1]).
-export(['schema-import-7'/1]).
-export(['schema-import-8'/1]).
-export(['schema-import-9'/1]).
-export(['schema-import-10'/1]).
-export(['schema-import-11'/1]).
-export(['schema-import-12'/1]).
-export(['schema-import-13'/1]).
-export(['schema-import-14'/1]).
-export(['schema-import-15'/1]).
-export(['schema-import-16'/1]).
-export(['schema-import-17'/1]).
-export(['schema-import-18'/1]).
-export(['schema-import-19'/1]).
-export(['schema-import-20'/1]).
-export(['schema-import-21'/1]).
-export(['schema-import-22'/1]).
-export(['schema-import-23'/1]).
-export(['schema-import-25'/1]).
-export(['schema-import-26'/1]).
-export(['schema-import-27'/1]).
-export(['schema-import-28'/1]).
-export(['schema-import-29'/1]).
-export(['schema-import-30'/1]).
-export(['modules-schema-context'/1]).
-export(['schema-import-31'/1]).
-export(['qischema001'/1]).
-export(['qischema002'/1]).
-export(['qischema003'/1]).
-export(['qischema004'/1]).
-export(['qischema005'/1]).
-export(['qischema006'/1]).
-export(['qischema007'/1]).
-export(['qischema008'/1]).
-export(['qischema009'/1]).
-export(['qischema010'/1]).
-export(['qischema011'/1]).
-export(['qischema012'/1]).
-export(['qischema016'/1]).
-export(['qischema030'/1]).
-export(['qischema031'/1]).
-export(['qischema032'/1]).
-export(['qischema032a'/1]).
-export(['qischema032b'/1]).
-export(['qischema032c'/1]).
-export(['qischema040'/1]).
-export(['qischema040a'/1]).
-export(['qischema041'/1]).
-export(['qischema042'/1]).
-export(['qischema043'/1]).
-export(['qischema044'/1]).
-export(['qischema061'/1]).
-export(['qischema062'/1]).
-export(['qischema063'/1]).
-export(['qischema063q02-err'/1]).
-export(['qischema064'/1]).
-export(['qischema065'/1]).
-export(['qischema070'/1]).
-export(['qischema072-01'/1]).
-export(['qischema072-02'/1]).
-export(['qischema072-03'/1]).
-export(['qischema072-04'/1]).
-export(['qischema072-05'/1]).
-export(['qischema072-06'/1]).
-export(['qischema080'/1]).
-export(['qischema083'/1]).
-export(['qischema265'/1]).
-export(['qischema266'/1]).
-export(['qischema90007'/1]).
-export(['qischema90008'/1]).
-export(['qischema90031-err'/1]).
-export(['qischema90041-err'/1]).
-export(['qischema90042-err'/1]).
-export(['qischema90051-err'/1]).
-export(['qischema90061-err'/1]).
-export(['qischema90071-err'/1]).
-export(['qischema90081-err'/1]).
-export(['qischema90082-err'/1]).
-export(['qischema90101-err'/1]).
-export(['qischema90102-err'/1]).
-export(['qischema90131-err'/1]).
-export(['qischema90151-err'/1]).
-export(['qischema90171-err'/1]).
-export(['qischema90172-err'/1]).
-export(['qischema90401-err'/1]).
-export(['qischema90431-err'/1]).
-export(['qischema90431-no-err'/1]).
-export(['qischema90611-err'/1]).
-export(['qischema90612-err'/1]).
-export(['qischema90613-err'/1]).
-export(['qischema90614-err'/1]).
-export(['qischema90621-err'/1]).
-export(['qischema90631-err'/1]).
-export(['qischema90701-err'/1]).
-export(['qischema90702-err'/1]).
-export(['qischema90703-err'/1]).
-export(['substitution-001'/1]).
-export(['substitution-002'/1]).
-export(['substitution-003'/1]).
-export(['substitution-004'/1]).
-export(['substitution-005'/1]).
-export(['substitution-006'/1]).
-export(['substitution-007'/1]).
-export(['substitution-008'/1]).
-export(['substitution-009'/1]).
-export(['substitution-010'/1]).
-export(['substitution-011'/1]).
-export(['substitution-020'/1]).
-export(['substitution-021'/1]).
-export(['substitution-022'/1]).
-export(['substitution-023'/1]).
-export(['substitution-024'/1]).
-export(['substitution-025'/1]).
-export(['substitution-030'/1]).
-export(['substitution-031'/1]).
-export(['substitution-032'/1]).
-export(['cbcl-schema-element-1'/1]).
-export(['cbcl-schema-element-2'/1]).
-export(['cbcl-schema-element-3'/1]).
-export(['cbcl-schema-element-4'/1]).
-export(['cbcl-schema-element-5'/1]).
-export(['cbcl-schema-element-6'/1]).
-export(['cbcl-schema-element-7'/1]).
-export(['cbcl-schema-element-8'/1]).
-export(['cbcl-schema-element-9'/1]).
-export(['cbcl-validated-schema-element-1'/1]).
-export(['cbcl-validated-schema-element-2'/1]).
-export(['cbcl-validated-schema-element-3'/1]).
-export(['cbcl-validated-schema-element-4'/1]).
-export(['cbcl-schema-attribute-1'/1]).
-export(['cbcl-schema-attribute-2'/1]).
-export(['cbcl-default-attribute-1'/1]).
-export(['cbcl-default-attribute-2'/1]).
-export(['cbcl-fixed-attribute-1'/1]).
-export(['cbcl-fixed-attribute-2'/1]).

suite() -> [{timetrap, {seconds, 180}}].

init_per_group(_, Config) -> Config.

end_per_group(_, _Config) ->
    xqerl_code_server:unload(all).

end_per_suite(_Config) ->
    ct:timetrap({seconds, 60}),
    xqerl_code_server:unload(all).

init_per_suite(Config) ->
    {ok, _} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    TD = filename:join(DD, "QT3-test-suite"),
    __BaseDir = filename:join(TD, "prod"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1},
        {group, group_2},
        {group, group_3},
        {group, group_4},
        {group, group_5}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'schema-import-1',
            'schema-import-2',
            'schema-import-3',
            'schema-import-4',
            'schema-import-5',
            'schema-import-6',
            'schema-import-7',
            'schema-import-8',
            'schema-import-9',
            'schema-import-10',
            'schema-import-11',
            'schema-import-12',
            'schema-import-13',
            'schema-import-14',
            'schema-import-15',
            'schema-import-16',
            'schema-import-17',
            'schema-import-18',
            'schema-import-19',
            'schema-import-20',
            'schema-import-21',
            'schema-import-22',
            'schema-import-23'
        ]},
        {group_1, [parallel], [
            'schema-import-25',
            'schema-import-26',
            'schema-import-27',
            'schema-import-28',
            'schema-import-29',
            'schema-import-30',
            'modules-schema-context',
            'schema-import-31',
            'qischema001',
            'qischema002',
            'qischema003',
            'qischema004',
            'qischema005',
            'qischema006',
            'qischema007',
            'qischema008',
            'qischema009',
            'qischema010',
            'qischema011',
            'qischema012',
            'qischema016',
            'qischema030',
            'qischema031',
            'qischema032'
        ]},
        {group_2, [parallel], [
            'qischema032a',
            'qischema032b',
            'qischema032c',
            'qischema040',
            'qischema040a',
            'qischema041',
            'qischema042',
            'qischema043',
            'qischema044',
            'qischema061',
            'qischema062',
            'qischema063',
            'qischema063q02-err',
            'qischema064',
            'qischema065',
            'qischema070',
            'qischema072-01',
            'qischema072-02',
            'qischema072-03',
            'qischema072-04',
            'qischema072-05',
            'qischema072-06',
            'qischema080',
            'qischema083'
        ]},
        {group_3, [parallel], [
            'qischema265',
            'qischema266',
            'qischema90007',
            'qischema90008',
            'qischema90031-err',
            'qischema90041-err',
            'qischema90042-err',
            'qischema90051-err',
            'qischema90061-err',
            'qischema90071-err',
            'qischema90081-err',
            'qischema90082-err',
            'qischema90101-err',
            'qischema90102-err',
            'qischema90131-err',
            'qischema90151-err',
            'qischema90171-err',
            'qischema90172-err',
            'qischema90401-err',
            'qischema90431-err',
            'qischema90431-no-err',
            'qischema90611-err',
            'qischema90612-err',
            'qischema90613-err'
        ]},
        {group_4, [parallel], [
            'qischema90614-err',
            'qischema90621-err',
            'qischema90631-err',
            'qischema90701-err',
            'qischema90702-err',
            'qischema90703-err',
            'substitution-001',
            'substitution-002',
            'substitution-003',
            'substitution-004',
            'substitution-005',
            'substitution-006',
            'substitution-007',
            'substitution-008',
            'substitution-009',
            'substitution-010',
            'substitution-011',
            'substitution-020',
            'substitution-021',
            'substitution-022',
            'substitution-023',
            'substitution-024',
            'substitution-025',
            'substitution-030'
        ]},
        {group_5, [parallel], [
            'substitution-031',
            'substitution-032',
            'cbcl-schema-element-1',
            'cbcl-schema-element-2',
            'cbcl-schema-element-3',
            'cbcl-schema-element-4',
            'cbcl-schema-element-5',
            'cbcl-schema-element-6',
            'cbcl-schema-element-7',
            'cbcl-schema-element-8',
            'cbcl-schema-element-9',
            'cbcl-validated-schema-element-1',
            'cbcl-validated-schema-element-2',
            'cbcl-validated-schema-element-3',
            'cbcl-validated-schema-element-4',
            'cbcl-schema-attribute-1',
            'cbcl-schema-attribute-2',
            'cbcl-default-attribute-1',
            'cbcl-default-attribute-2',
            'cbcl-fixed-attribute-1',
            'cbcl-fixed-attribute-2'
        ]}
    ].

environment('atomic', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [
            {filename:join(__BaseDir, "../docs/atomic.xml"), ".",
                "http://www.w3.org/fots/docs/atomic.xml"}
        ]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/XQueryTest", "atomic"}]},
        {schemas, [
            {filename:join(__BaseDir, "../docs/atomic.xsd"), "http://www.w3.org/XQueryTest"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('atomic-xq', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [
            {filename:join(__BaseDir, "../docs/atomic.xml"), ".",
                "http://www.w3.org/fots/docs/atomic.xml"}
        ]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "../docs/atomic.xsd"), "http://www.w3.org/XQueryTest"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('hats', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/hats.xsd"), "http://www.w3.org/XQueryTest/hats"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('abf', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/abf.xsd"), "http://www.w3.org/XQueryTest/abf"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('abf-emptydoc', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/emptydoc.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/abf.xsd"), "http://www.w3.org/XQueryTest/abf"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('mini-fpml', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/mini-fpml.xsd"),
                "http://www.fpml.org/2005/FpML-4-2"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('addresses', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/addresses.xsd"),
                "http://www.w3.org/XQueryTest/addresses"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('money', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/money.xsd"),
                "http://www.w3.org/XQueryTest/money"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('QNameComparisonTest', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/QNameComparisonTest.xsd"),
                "http://www.w3.org/XQueryTest/QNameComparisonTest"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('substitution', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/substitution.xsd"),
                "http://www.w3.org/XQueryTest/substitution"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('substitution11', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/substitution11.xsd"),
                "http://www.w3.org/XQueryTest/substitution11"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('validate', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../fn/nilled/validate.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "../fn/nilled/validate.xsd"),
                "http://www.w3.org/XQueryTest/testcases"}
        ]},
        {resources, []},
        {modules, []}
    ].

'schema-import-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'modules-schema-context'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'schema-import-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema032a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema032b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema032c'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema040'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema040a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema041'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, feature:schema-location-hint"}.

'qischema042'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, feature:schema-location-hint"}.

'qischema043'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema044'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema061'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema062'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema063'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema063q02-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema064'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema065'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema070'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema072-01'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema072-02'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema072-03'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema072-04'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema072-05'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema072-06'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema080'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema083'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, feature:schema-location-hint"}.

'qischema265'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema266'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90031-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90041-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90042-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90051-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90061-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90071-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90081-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90082-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90101-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90102-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90131-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90151-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90171-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90172-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90401-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, spec:XQ10"}.

'qischema90431-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, spec:XQ10"}.

'qischema90431-no-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90611-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90612-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90613-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90614-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90621-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90631-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90701-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90702-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qischema90703-err'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, xsd-version:1.1"}.

'substitution-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, xsd-version:1.1"}.

'substitution-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, xsd-version:1.1"}.

'substitution-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, xsd-version:1.1"}.

'substitution-024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, xsd-version:1.1"}.

'substitution-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, xsd-version:1.1"}.

'substitution-030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'substitution-032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-schema-element-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-schema-element-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-schema-element-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-schema-element-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-schema-element-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-schema-element-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-schema-element-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-schema-element-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-schema-element-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-validated-schema-element-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-validated-schema-element-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-validated-schema-element-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-validated-schema-element-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-schema-attribute-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-schema-attribute-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-default-attribute-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-default-attribute-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-fixed-attribute-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-fixed-attribute-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.
