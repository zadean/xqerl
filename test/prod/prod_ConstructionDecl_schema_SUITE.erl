-module('prod_ConstructionDecl_schema_SUITE').

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

-export(['Constr-compelem-constrmod-1'/1]).
-export(['Constr-compelem-constrmod-2'/1]).
-export(['Constr-compelem-constrmod-5'/1]).
-export(['Constr-compelem-constrmod-6'/1]).

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
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'Constr-compelem-constrmod-1',
            'Constr-compelem-constrmod-2',
            'Constr-compelem-constrmod-5',
            'Constr-compelem-constrmod-6'
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
    ].

'Constr-compelem-constrmod-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Constr-compelem-constrmod-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Constr-compelem-constrmod-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Constr-compelem-constrmod-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.
