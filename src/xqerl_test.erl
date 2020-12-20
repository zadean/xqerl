%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------
-module(xqerl_test).

%-include_lib("common_test/include/ct.hrl").

-export([
    assert/2,
    assert_empty/1,
    assert_type/2,
    assert_xml/2,
    assert_eq/2,
    assert_deep_eq/2,
    assert_false/1,
    assert_true/1,
    assert_count/2,
    assert_permutation/2,
    assert_error/2,
    assert_string_value/2,
    assert_norm_string_value/2,
    assert_serialization_match/3,
    assert_serialization_error/2
]).

-export([
    run/1,
    run_suite/2
]).

-export([
    handle_environment/1,
    combined_error/2
]).

-export([load_qt3_xml/0]).

-include("xqerl.hrl").

-define(LB(L), unicode:characters_to_binary(L)).

%% assert functions return either true or {false, Result}

result_type_string(Result) when is_list(Result) ->
    " as item()*";
result_type_string(Result) when is_map(Result) andalso is_map_key(nk, Result) ->
    " as node()";
result_type_string(Result) when is_map(Result) ->
    " as map(*)";
result_type_string(Result) when element(1, Result) == array ->
    " as array(*)";
result_type_string(_) ->
    " as item()*".

%% assert                 (: run test query with result as variable == true :)
assert(Result, QueryString) ->
    Type = result_type_string(Result),
    NewQueryString =
        "declare variable $result" ++
            Type ++
            " external; " ++ QueryString,
    case catch xqerl:run(NewQueryString, #{<<"result">> => Result}) of
        {'EXIT', Res} ->
            ?dbg("false", {false, {Res, Result, QueryString}}),
            {false, {Res, Result, QueryString}};
        #xqError{} = Res ->
            ?dbg("false", {false, {Res, Result, QueryString}}),
            {false, {Res, Result, QueryString}};
        Res1 ->
            case xqerl_operators:eff_bool_val(Res1) of
                true ->
                    true;
                false ->
                    ?dbg("false", {false, {assert, Res1, Result, QueryString}}),
                    {false, {assert, Res1, QueryString}}
            end
    end.

%% assert_empty           (: string value of result == [] :)
assert_empty(Result) ->
    case string_value(Result) of
        [] -> true;
        <<>> -> true;
        StrVal -> {false, {assert_empty, StrVal}}
    end.

%% assert_type            (: result instance of type :)
assert_type(Result, TypeString) ->
    NewQueryString =
        "declare variable $result as item()* external; "
        "($result) instance of " ++ TypeString,
    case catch xqerl:run(NewQueryString, #{<<"result">> => Result}) of
        {'EXIT', Res} ->
            {false, {assert_type, Res}};
        Res1 ->
            case string_value(Res1) of
                <<"true">> -> true;
                _ -> {false, {assert_type, Res1, TypeString}}
            end
    end.

%% assert_xml             (: fn:deep-equal(result, run test query) :)
assert_xml(Result, {file, FileLoc}) ->
    {ok, FileBin} = file:read_file(FileLoc),
    assert_xml(Result, normalize_lines(FileBin, <<>>));
assert_xml(Result, {doc_file, FileLoc}) ->
    {ok, FileBin} = file:read_file(FileLoc),
    Norm = normalize_lines(FileBin, <<>>),
    Doc = xqerl_mod_fn:'parse-xml'(#{'base-uri' => <<>>}, Norm),
    Norm1 = xqerl_node:to_xml(Doc),
    assert_xml(Result, Norm1);
assert_xml(Result, QueryString) when is_list(QueryString) ->
    assert_xml(Result, ?LB(QueryString));
assert_xml(#xqError{} = Err, QueryString) ->
    {false, {assert_xml, Err, QueryString}};
assert_xml(Result, QueryString0) when is_binary(Result) ->
    QueryString = xqerl_lib:trim(QueryString0),
    % fragments sometimes only work this way
    case Result == QueryString of
        true -> true;
        false -> assert_xml_1(Result, QueryString)
    end;
assert_xml(Result, QueryString0) ->
    assert_xml(xqerl_node:to_xml(Result), QueryString0).

assert_xml_1(Result, QueryString) ->
    try
        ResXml2 = xqerl_mod_fn:'parse-xml-fragment'(
            #{'base-uri' => <<>>},
            Result
        ),
        QueryString2 =
            case
                catch xqerl_mod_fn:'parse-xml-fragment'(
                    #{'base-uri' => <<>>},
                    QueryString
                )
            of
                {'EXIT', #xqError{}} ->
                    xqerl:run(
                        unicode:characters_to_list(
                            <<"document{ ", QueryString/binary, " }">>
                        )
                    );
                Other ->
                    Other
            end,
        case xqerl_node:nodes_equal(ResXml2, QueryString2, codepoint) of
            true -> true;
            false -> {false, {assert_xml, Result, QueryString}}
        end
    catch
        _:_:Stack ->
            ?dbg("Stack", Stack),
            {false, {assert_xml, Result, QueryString}}
    end.

assert_eq(Result, TypeString) ->
    NewQueryString =
        "declare variable $result as item()* external; "
        "$result = " ++ TypeString,
    case catch xqerl:run(NewQueryString, #{<<"result">> => Result}) of
        {'EXIT', Res} ->
            ?dbg("Res", Res),
            {false, Res};
        Res1 ->
            case string_value(Res1) of
                <<"true">> -> true;
                _ -> {false, {assert_eq, Result, TypeString}}
            end
    end.

%% assert_deep_eq         (: fn:deep-equal(result, run test query) :)
assert_deep_eq(Result, QueryString) ->
    NewQueryString =
        "declare variable $result as item()* external; "
        "fn:deep-equal($result,(" ++ QueryString ++ "))",
    case catch xqerl:run(NewQueryString, #{<<"result">> => Result}) of
        {'EXIT', Res} ->
            {false, Res};
        Res1 ->
            case string_value(Res1) of
                <<"true">> -> true;
                _ -> {false, {assert_deep_eq, Result, QueryString}}
            end
    end.

%% assert_false           (: string value of result == 'true' :)
assert_false(false) -> true;
assert_false(Result) -> {false, {assert_false, Result}}.

%% assert_true            (: string value of result == 'false' :)
assert_true(true) -> true;
assert_true(Result) -> {false, {assert_true, Result}}.

%% assert_permutation     (: take_while member(result, run test query) == [] :)
%% the result should be a list of atomic values, the permute list also
assert_permutation(Result, PermuteString) ->
    QueryString = "(" ++ PermuteString ++ ")",
    case catch xqerl:run(QueryString, #{}) of
        {'EXIT', Res} ->
            {false, Res};
        Res1 ->
            case assert_permutation_1(ensure_list(Result), Res1, []) of
                true -> true;
                false -> {false, {assert_permutation, Res1, PermuteString, Result}}
            end
    end.

assert_permutation_1([], [], []) ->
    true;
assert_permutation_1(_, [], _) ->
    false;
assert_permutation_1([R1 | T1] = List1, [R2 | T2], Acc2) ->
    case permute_equal(R1, R2) of
        true -> assert_permutation_1(T1, T2 ++ Acc2, []);
        false -> assert_permutation_1(List1, T2, [R2 | Acc2])
    end.

permute_equal(R1, R2) ->
    case catch xqerl_operators:equal(R1, R2) of
        true -> true;
        _ -> xqerl_types:value(R1) == nan andalso xqerl_types:value(R2) == nan
    end.

%% assert_count           (: fn:count(result) == cnt :)
assert_count(Result, TypeString) ->
    case list_to_integer(TypeString) of
        Cnt when is_list(Result), length(Result) == Cnt -> true;
        1 -> true;
        true -> {false, {assert_count, Result, TypeString}}
    end.

%% assert_string_value    (: string value of result == Str :)
assert_string_value(Result, String) when is_list(String) ->
    assert_string_value(Result, ?LB(String));
assert_string_value(Result, String) ->
    case string_value(Result) of
        String -> true;
        StrVal -> {false, {assert_string_value, StrVal, String}}
    end.

assert_norm_string_value(Result, String) when is_list(String) ->
    assert_norm_string_value(Result, ?LB(String));
assert_norm_string_value(Result, String) ->
    StrVal = xqerl_lib:normalize_spaces(
        xqerl_lib:normalize_string(
            string_value(Result)
        )
    ),
    case StrVal of
        String -> true;
        _ -> {false, {assert_norm_string_value, StrVal, String}}
    end.

assert_serialization_match(#xqError{} = Err, _, _) ->
    {false, Err};
assert_serialization_match(Result, SchemaRegex, Flags) when is_binary(Result) ->
    {ok, NormResult} = xs_regex:normalize(string_value(Result)),
    {ok, Norm} = xs_regex:normalize(SchemaRegex),
    {_, RE} = xs_regex:compile(Norm, Flags),
    case catch re:run(NormResult, RE) of
        {match, _} ->
            true;
        _ ->
            ?dbg("Result,SchemaRegex", {NormResult, Norm}),
            {false, {assert_serialization_match, NormResult, SchemaRegex}}
    end;
assert_serialization_match(Item, SchemaRegex, Flags) ->
    Ser = xqerl_serialize:serialize(Item, #{}),
    assert_serialization_match(Ser, SchemaRegex, Flags).

%% assert_error
assert_error(Result, ErrorCode) when is_list(ErrorCode) ->
    assert_error(Result, list_to_binary(ErrorCode));
assert_error(
    #xqError{name = #xqAtomicValue{value = #qname{local_name = Err}}},
    ErrorCode
) when Err == ErrorCode; ErrorCode == <<"*">> ->
    true;
assert_error(
    #xqError{name = #xqAtomicValue{value = #qname{namespace = ErrNs, local_name = Err}}},
    ErrorCode
) ->
    case error_name_match(ErrorCode, ErrNs, Err) of
        true ->
            true;
        _ ->
            {true, Err}
    end;
assert_error(Result, ErrorCode) ->
    {false, {assert_error, Result, ErrorCode}}.

assert_serialization_error(Result, ErrorCode) when is_list(ErrorCode) ->
    assert_serialization_error(Result, list_to_binary(ErrorCode));
assert_serialization_error(
    #xqError{name = #xqAtomicValue{value = #qname{local_name = Err}}},
    ErrorCode
) when Err == ErrorCode; ErrorCode == <<"*">> ->
    true;
assert_serialization_error(
    #xqError{name = #xqAtomicValue{value = #qname{namespace = ErrNs, local_name = Err}}},
    ErrorCode
) ->
    case error_name_match(ErrorCode, ErrNs, Err) of
        true ->
            true;
        _ ->
            {false, {Err, ErrorCode}}
    end;
assert_serialization_error(Result, ErrorCode) ->
    case catch xqerl_serialize:serialize(Result, #{}) of
        #xqError{} = Err ->
            assert_serialization_error(Err, ErrorCode);
        Result1 ->
            {false, {assert_serialization_error, Result1, ErrorCode}}
    end.

error_name_match(ErrorCode, <<>>, Err) ->
    <<"Q{}", Err/binary>> == ErrorCode;
error_name_match(ErrorCode, ErrNs, Err) ->
    <<"Q{", ErrNs/binary, "}", Err/binary>> == ErrorCode.

% normalize end-of-line characters
normalize_lines(<<13, 10, T/binary>>, Acc) ->
    normalize_lines(T, <<Acc/binary, 10>>);
normalize_lines(<<13, T/binary>>, Acc) ->
    normalize_lines(T, <<Acc/binary, 10>>);
normalize_lines(<<H, T/binary>>, Acc) ->
    normalize_lines(T, <<Acc/binary, H>>);
normalize_lines(<<>>, Acc) ->
    Acc.

string_value(List) when is_list(List) ->
    Seq = xqerl_seq3:flatten(List),
    xqerl_types:string_value(Seq);
string_value(Seq) when is_binary(Seq) ->
    Seq;
string_value(Seq) ->
    xqerl_types:string_value(Seq).

run_suite(Suite, SubDir) ->
    LibDir = code:lib_dir(xqerl),
    TestDir = filename:absname_join(LibDir, "test"),
    TestSubDir = filename:join(TestDir, SubDir),
    LogDir = filename:join(TestDir, "logs"),
    %_ = delete_all_docs(),
    ct:run_test([
        {suite, Suite},
        {dir, TestSubDir},
        {logdir, LogDir},
        {logopts, [no_src]}
    ]).

run_suites(SubDir, Suites) ->
    run_suite(Suites, SubDir).

ensure_list(L) when is_list(L) -> L;
ensure_list(L) -> [L].

run(all) ->
    run(prod),
    run(app),
    run(misc),
    run(ser),
    run(xs),
    run(fn),
    run(map),
    run(op),
    run(array),
    run(math),
    run(expath),
    run(restxq),
    run(xquts);
run(app) ->
    run_suites("app", [
        app_CatalogCheck_SUITE,
        app_Demos_SUITE,
        app_FunctxFn_SUITE,
        app_FunctxFunctx_SUITE,
        app_UseCaseCompoundValues_SUITE,
        app_UseCaseJSON_SUITE,
        app_UseCaseNLP_SUITE,
        app_UseCaseNS_SUITE,
        app_UseCasePARTS_SUITE,
        app_UseCaseR_SUITE,
        app_UseCaseR31_SUITE,
        app_UseCaseSEQ_SUITE,
        app_UseCaseSGML_SUITE,
        app_UseCaseSTRING_SUITE,
        app_UseCaseTREE_SUITE,
        app_UseCaseXMP_SUITE,
        app_Walmsley_SUITE,
        app_XMark_SUITE,
        app_spec_examples_SUITE
    ]);
run(math) ->
    run_suites("math", [
        math_acos_SUITE,
        math_asin_SUITE,
        math_atan_SUITE,
        math_atan2_SUITE,
        math_cos_SUITE,
        math_exp_SUITE,
        math_exp10_SUITE,
        math_log_SUITE,
        math_log10_SUITE,
        math_pi_SUITE,
        math_pow_SUITE,
        math_sin_SUITE,
        math_sqrt_SUITE,
        math_tan_SUITE
    ]);
run(misc) ->
    run_suites("misc", [
        misc_CombinedErrorCodes_SUITE,
        misc_AnnexE_SUITE,
        misc_AppendixA4_SUITE,
        misc_ErrorsAndOptimization_SUITE,
        misc_HigherOrderFunctions_SUITE,
        misc_JsonTestSuite_SUITE,
        misc_StaticContext_SUITE,
        misc_Surrogates_SUITE,
        misc_UCACollation_SUITE,
        misc_XMLEdition_SUITE
    ]);
run(ser) ->
    run_suites("ser", [
        method_adaptive_SUITE,
        method_html_SUITE,
        method_json_SUITE,
        method_text_SUITE,
        method_xhtml_SUITE,
        method_xml_SUITE
    ]);
run(xs) ->
    run_suites("xs", [
        xs_anyURI_SUITE,
        xs_base64Binary_SUITE,
        xs_dateTimeStamp_SUITE,
        xs_double_SUITE,
        xs_error_SUITE,
        xs_float_SUITE,
        xs_hexBinary_SUITE,
        xs_normalizedString_SUITE,
        xs_numeric_SUITE,
        xs_token_SUITE
    ]);
run(prod) ->
    run_suites("prod", [
        prod_AllowingEmpty_SUITE,
        prod_Annotation_SUITE,
        prod_ArrayTest_SUITE,
        prod_ArrowPostfix_SUITE,
        prod_AxisStep_SUITE,
        prod_AxisStep_abbr_SUITE,
        prod_AxisStep_ancestor_SUITE,
        prod_AxisStep_ancestor_or_self_SUITE,
        prod_AxisStep_following_SUITE,
        prod_AxisStep_following_sibling_SUITE,
        prod_AxisStep_preceding_SUITE,
        prod_AxisStep_preceding_sibling_SUITE,
        prod_AxisStep_static_typing_SUITE,
        prod_AxisStep_unabbr_SUITE,
        prod_BaseURIDecl_SUITE,
        prod_BoundarySpaceDecl_SUITE,
        prod_CastableExpr_SUITE,
        prod_CastExpr_SUITE,
        prod_CastExpr_derived_SUITE,
        prod_CastExpr_schema_SUITE,
        prod_Comment_SUITE,
        prod_CompAttrConstructor_SUITE,
        prod_CompDocConstructor_SUITE,
        prod_CompCommentConstructor_SUITE,
        prod_CompElemConstructor_SUITE,
        prod_CompNamespaceConstructor_SUITE,
        prod_CompPIConstructor_SUITE,
        prod_CompTextConstructor_SUITE,
        prod_ConstructionDecl_SUITE,
        prod_ConstructionDecl_schema_SUITE,
        prod_ContextItemDecl_SUITE,
        prod_ContextItemExpr_SUITE,
        prod_CopyNamespacesDecl_SUITE,
        prod_CountClause_SUITE,
        prod_CurlyArrayConstructor_SUITE,
        prod_DecimalFormatDecl_SUITE,
        prod_DefaultCollationDecl_SUITE,
        prod_DefaultNamespaceDecl_SUITE,
        prod_DirAttributeList_SUITE,
        prod_DirectConstructor_SUITE,
        prod_DirElemConstructor_SUITE,
        prod_DirElemContent_SUITE,
        prod_DirElemContent_namespace_SUITE,
        prod_DirElemContent_whitespace_SUITE,
        prod_EmptyOrderDecl_SUITE,
        prod_EQName_SUITE,
        prod_ExtensionExpr_SUITE,
        prod_FLWORExpr_SUITE,
        prod_FLWORExpr_static_typing_SUITE,
        prod_ForClause_SUITE,
        prod_FunctionCall_SUITE,
        prod_FunctionDecl_SUITE,
        prod_GeneralComp_eq_SUITE,
        prod_GeneralComp_ge_SUITE,
        prod_GeneralComp_gt_SUITE,
        prod_GeneralComp_le_SUITE,
        prod_GeneralComp_lt_SUITE,
        prod_GeneralComp_ne_SUITE,
        prod_GroupByClause_SUITE,
        prod_IfExpr_SUITE,
        prod_InlineFunctionExpr_SUITE,
        prod_InstanceofExpr_SUITE,
        prod_LetClause_SUITE,
        prod_Literal_SUITE,
        prod_Lookup_SUITE,
        prod_MapConstructor_SUITE,
        prod_MapTest_SUITE,
        prod_ModuleImport_SUITE,
        prod_NamedFunctionRef_SUITE,
        prod_NamespaceDecl_SUITE,
        prod_NameTest_SUITE,
        prod_NodeTest_SUITE,
        prod_OptionDecl_SUITE,
        prod_OptionDecl_serialization_SUITE,
        prod_OrExpr_SUITE,
        prod_OrderByClause_SUITE,
        prod_OrderingModeDecl_SUITE,
        prod_PathExpr_SUITE,
        prod_ParenthesizedExpr_SUITE,
        prod_PositionalVar_SUITE,
        prod_Predicate_SUITE,
        prod_QuantifiedExpr_SUITE,
        prod_ReturnClause_SUITE,
        prod_SchemaImport_SUITE,
        prod_SequenceType_SUITE,
        prod_SquareArrayConstructor_SUITE,
        prod_StepExpr_SUITE,
        prod_StringConstructor_SUITE,
        prod_SwitchExpr_SUITE,
        prod_TreatExpr_SUITE,
        prod_TryCatchExpr_SUITE,
        prod_TypeswitchExpr_SUITE,
        prod_UnorderedExpr_SUITE,
        prod_UnaryLookup_SUITE,
        prod_ValidateExpr_SUITE,
        prod_ValueComp_SUITE,
        prod_VarDecl_SUITE,
        prod_VarDecl_external_SUITE,
        prod_VarDefaultValue_SUITE,
        prod_VersionDecl_SUITE,
        prod_WhereClause_SUITE,
        prod_WindowClause_SUITE
    ]);
run(fn) ->
    run_suites("fn", [
        fn_abs_SUITE,
        fn_adjust_date_to_timezone_SUITE,
        fn_adjust_dateTime_to_timezone_SUITE,
        fn_adjust_time_to_timezone_SUITE,
        fn_analyze_string_SUITE,
        fn_apply_SUITE,
        fn_available_environment_variables_SUITE,
        fn_avg_SUITE,
        fn_base_uri_SUITE,
        fn_boolean_SUITE,
        fn_ceiling_SUITE,
        fn_codepoint_equal_SUITE,
        fn_codepoints_to_string_SUITE,
        fn_collation_key_SUITE,
        fn_collection_SUITE,
        fn_compare_SUITE,
        fn_concat_SUITE,
        fn_contains_SUITE,
        fn_contains_token_SUITE,
        fn_count_SUITE,
        fn_current_date_SUITE,
        fn_current_dateTime_SUITE,
        fn_current_time_SUITE,
        fn_data_SUITE,
        fn_dateTime_SUITE,
        fn_day_from_date_SUITE,
        fn_day_from_dateTime_SUITE,
        fn_days_from_duration_SUITE,
        fn_deep_equal_SUITE,
        fn_default_collation_SUITE,
        fn_default_language_SUITE,
        fn_distinct_values_SUITE,
        fn_doc_SUITE,
        fn_doc_available_SUITE,
        fn_document_uri_SUITE,
        fn_element_with_id_SUITE,
        fn_empty_SUITE,
        fn_encode_for_uri_SUITE,
        fn_ends_with_SUITE,
        fn_environment_variable_SUITE,
        fn_error_SUITE,
        fn_escape_html_uri_SUITE,
        fn_exactly_one_SUITE,
        fn_exists_SUITE,
        fn_false_SUITE,
        fn_filter_SUITE,
        fn_floor_SUITE,
        fn_fold_left_SUITE,
        fn_fold_right_SUITE,
        fn_for_each_SUITE,
        fn_for_each_pair_SUITE,
        fn_format_date_SUITE,
        fn_format_dateTime_SUITE,
        fn_format_integer_SUITE,
        fn_format_number_SUITE,
        fn_format_time_SUITE,
        fn_function_lookup_SUITE,
        fn_function_arity_SUITE,
        fn_function_name_SUITE,
        fn_generate_id_SUITE,
        fn_has_children_SUITE,
        fn_head_SUITE,
        fn_hours_from_dateTime_SUITE,
        fn_hours_from_duration_SUITE,
        fn_hours_from_time_SUITE,
        fn_id_SUITE,
        fn_idref_SUITE,
        fn_implicit_timezone_SUITE,
        fn_innermost_SUITE,
        fn_index_of_SUITE,
        fn_insert_before_SUITE,
        fn_in_scope_prefixes_SUITE,
        fn_iri_to_uri_SUITE,
        fn_json_doc_SUITE,
        fn_json_to_xml_SUITE,
        fn_lang_SUITE,
        fn_last_SUITE,
        fn_load_xquery_module_SUITE,
        fn_local_name_SUITE,
        fn_local_name_from_QName_SUITE,
        fn_lower_case_SUITE,
        fn_max_SUITE,
        fn_matches_SUITE,
        fn_matches_re_SUITE,
        fn_min_SUITE,
        fn_minutes_from_dateTime_SUITE,
        fn_minutes_from_duration_SUITE,
        fn_minutes_from_time_SUITE,
        fn_month_from_date_SUITE,
        fn_months_from_duration_SUITE,
        fn_month_from_dateTime_SUITE,
        fn_name_SUITE,
        fn_namespace_uri_SUITE,
        fn_namespace_uri_for_prefix_SUITE,
        fn_namespace_uri_from_QName_SUITE,
        fn_nilled_SUITE,
        fn_node_name_SUITE,
        fn_normalize_space_SUITE,
        fn_normalize_unicode_SUITE,
        fn_not_SUITE,
        fn_number_SUITE,
        fn_one_or_more_SUITE,
        fn_outermost_SUITE,
        fn_parse_ietf_date_SUITE,
        fn_parse_json_SUITE,
        fn_parse_xml_SUITE,
        fn_parse_xml_fragment_SUITE,
        fn_path_SUITE,
        fn_position_SUITE,
        fn_prefix_from_QName_SUITE,
        fn_QName_SUITE,
        fn_random_number_generator_SUITE,
        fn_remove_SUITE,
        fn_replace_SUITE,
        fn_resolve_QName_SUITE,
        fn_resolve_uri_SUITE,
        fn_reverse_SUITE,
        fn_root_SUITE,
        fn_round_SUITE,
        fn_round_half_to_even_SUITE,
        fn_seconds_from_dateTime_SUITE,
        fn_seconds_from_duration_SUITE,
        fn_seconds_from_time_SUITE,
        fn_serialize_SUITE,
        fn_sort_SUITE,
        fn_starts_with_SUITE,
        fn_static_base_uri_SUITE,
        fn_string_SUITE,
        fn_string_join_SUITE,
        fn_string_length_SUITE,
        fn_string_to_codepoints_SUITE,
        fn_subsequence_SUITE,
        fn_substring_SUITE,
        fn_substring_after_SUITE,
        fn_substring_before_SUITE,
        fn_sum_SUITE,
        fn_tail_SUITE,
        fn_timezone_from_date_SUITE,
        fn_timezone_from_dateTime_SUITE,
        fn_timezone_from_time_SUITE,
        fn_tokenize_SUITE,
        fn_trace_SUITE,
        fn_transform_SUITE,
        fn_translate_SUITE,
        fn_true_SUITE,
        fn_unordered_SUITE,
        fn_unparsed_text_SUITE,
        fn_unparsed_text_available_SUITE,
        fn_unparsed_text_lines_SUITE,
        fn_upper_case_SUITE,
        fn_uri_collection_SUITE,
        fn_xml_to_json_SUITE,
        fn_year_from_date_SUITE,
        fn_years_from_duration_SUITE,
        fn_year_from_dateTime_SUITE,
        fn_zero_or_one_SUITE
    ]);
run(map) ->
    run_suites("map", [
        map_merge_SUITE,
        map_contains_SUITE,
        map_find_SUITE,
        map_get_SUITE,
        map_entry_SUITE,
        map_size_SUITE,
        map_keys_SUITE,
        map_put_SUITE,
        map_remove_SUITE,
        map_for_each_SUITE
    ]);
run(array) ->
    run_suites("array", [
        array_append_SUITE,
        array_filter_SUITE,
        array_flatten_SUITE,
        array_fold_left_SUITE,
        array_fold_right_SUITE,
        array_for_each_SUITE,
        array_for_each_pair_SUITE,
        array_get_SUITE,
        array_head_SUITE,
        array_insert_before_SUITE,
        array_join_SUITE,
        array_put_SUITE,
        array_remove_SUITE,
        array_reverse_SUITE,
        array_size_SUITE,
        array_sort_SUITE,
        array_subarray_SUITE,
        array_tail_SUITE
    ]);
run(op) ->
    run_suites("op", [
        op_add_dayTimeDurations_SUITE,
        op_add_dayTimeDuration_to_date_SUITE,
        op_add_dayTimeDuration_to_dateTime_SUITE,
        op_add_dayTimeDuration_to_time_SUITE,
        op_add_yearMonthDurations_SUITE,
        op_add_yearMonthDuration_to_date_SUITE,
        op_add_yearMonthDuration_to_dateTime_SUITE,
        op_anyURI_equal_SUITE,
        op_anyURI_greater_than_SUITE,
        op_anyURI_less_than_SUITE,
        op_bang_SUITE,
        op_base64Binary_equal_SUITE,
        op_base64Binary_less_than_SUITE,
        op_base64Binary_greater_than_SUITE,
        op_boolean_equal_SUITE,
        op_boolean_greater_than_SUITE,
        op_boolean_less_than_SUITE,
        op_concat_SUITE,
        op_concatenate_SUITE,
        op_date_equal_SUITE,
        op_date_greater_than_SUITE,
        op_date_less_than_SUITE,
        op_dateTime_equal_SUITE,
        op_dateTime_greater_than_SUITE,
        op_dateTime_less_than_SUITE,
        op_dayTimeDuration_greater_than_SUITE,
        op_dayTimeDuration_less_than_SUITE,
        op_divide_dayTimeDuration_SUITE,
        op_divide_dayTimeDuration_by_dayTimeDuration_SUITE,
        op_divide_yearMonthDuration_SUITE,
        op_divide_yearMonthDuration_by_yearMonthDuration_SUITE,
        op_duration_equal_SUITE,
        op_except_SUITE,
        op_gDay_equal_SUITE,
        op_gMonth_equal_SUITE,
        op_gMonthDay_equal_SUITE,
        op_gYear_equal_SUITE,
        op_gYearMonth_equal_SUITE,
        op_hexBinary_equal_SUITE,
        op_hexBinary_greater_than_SUITE,
        op_hexBinary_less_than_SUITE,
        op_intersect_SUITE,
        op_is_same_node_SUITE,
        op_multiply_dayTimeDuration_SUITE,
        op_multiply_yearMonthDuration_SUITE,
        op_node_after_SUITE,
        op_node_before_SUITE,
        op_NOTATION_equal_SUITE,
        op_numeric_add_SUITE,
        op_numeric_equal_SUITE,
        op_numeric_divide_SUITE,
        op_numeric_greater_than_SUITE,
        op_numeric_integer_divide_SUITE,
        op_numeric_less_than_SUITE,
        op_numeric_mod_SUITE,
        op_numeric_multiply_SUITE,
        op_numeric_subtract_SUITE,
        op_numeric_unary_minus_SUITE,
        op_numeric_unary_plus_SUITE,
        op_QName_equal_SUITE,
        op_string_equal_SUITE,
        op_string_greater_than_SUITE,
        op_string_less_than_SUITE,
        op_subtract_dates_SUITE,
        op_subtract_dateTimes_SUITE,
        op_subtract_dayTimeDuration_from_date_SUITE,
        op_subtract_dayTimeDuration_from_dateTime_SUITE,
        op_subtract_dayTimeDuration_from_time_SUITE,
        op_subtract_dayTimeDurations_SUITE,
        op_subtract_times_SUITE,
        op_subtract_yearMonthDuration_from_date_SUITE,
        op_subtract_yearMonthDuration_from_dateTime_SUITE,
        op_subtract_yearMonthDurations_SUITE,
        op_time_equal_SUITE,
        op_time_greater_than_SUITE,
        op_time_less_than_SUITE,
        op_to_SUITE,
        op_union_SUITE,
        op_yearMonthDuration_greater_than_SUITE,
        op_yearMonthDuration_less_than_SUITE,
        op_same_key_SUITE
    ]);
run(restxq) ->
    run_suites("restxq", [
        restxq_SUITE
    ]);
run(expath) ->
    run_suites("expath", [
        expath_binary2_SUITE,
        expath_binary_SUITE,
        expath_file_SUITE
    ]);
run(xquts) ->
    run_suites("xquts", [
        xquts_SUITE
    ]);
run(Str) ->
    io:format("~p~n", [Str]),
    xqerl:run(Str).

get_value(Key, List) ->
    proplists:get_value(Key, List).

get_value(Key, List, Default) ->
    proplists:get_value(Key, List, Default).

-define(ERR_NAME(A, B), #xqError{
    name = #xqAtomicValue{value = #qname{namespace = A, local_name = B}}
}).

-define(ERR_LOC(E), ((E#xqError.name)#xqAtomicValue.value)#qname.local_name).

%% ensure that errors from imported libraries are reported in the tests.
combined_error(Err, LibReturns) ->
    Sort = fun(?ERR_NAME(AN, AL), ?ERR_NAME(BN, BL)) ->
        {AN, AL} == {BN, BL}
    end,
    LibErrors = lists:usort(Sort, [
        E
        || %,
           #xqError{} = E <- LibReturns
           %?ERR_LOC(E) =/= <<"XQST0059">> % mod not found
    ]),
    ?dbg("LibErrors", LibErrors),
    case LibErrors of
        [H | _] ->
            %when ?ERR_LOC(Err) == <<"XQST0059">> ->
            H;
        _ ->
            Err
    end.

handle_environment([]) ->
    {"", #{}};
handle_environment(List) ->
    TestDir = application:get_env(
        xqerl,
        test_dir,
        filename:join(code:lib_dir(xqerl), "test")
    ),
    _ = file:set_cwd([TestDir]),
    Sources = get_value(sources, List),
    Schemas = get_value(schemas, List, []),
    Collections = get_value(collections, List),
    BaseUri = get_value('static-base-uri', List),
    Params = get_value(params, List),
    Vars = get_value(vars, List, []),
    ContextItem = get_value('context-item', List, []),
    Namespaces = get_value(namespaces, List),
    Resources = get_value(resources, List),
    Modules = get_value(modules, List),
    DecFormats = get_value('decimal-formats', List, []),
    DeCollation = get_value('default-collation', List, undefined),

    Uniq = integer_to_binary(erlang:unique_integer()),
    DefaultCollection = <<"http://example.org/default", Uniq/binary>>,

    Map00 = #{default_collection => DefaultCollection},
    Map1 =
        case DeCollation of
            undefined -> Map00;
            _ -> Map00#{'default-collation' => ?LB(DeCollation)}
        end,
    _ = lists:foreach(fun environment_resource/1, Resources),
    _ = lists:foreach(fun(I) -> environment_collections(I, DefaultCollection) end, Collections),
    {Sources1, EMap} = lists:mapfoldl(fun environment_docs/2, Map1, Sources),
    Schemas1 = lists:flatmap(fun environment_schema/1, Schemas),
    _ =
        case Modules of
            [] -> ok;
            _ -> xqerl_code_server:unload(all)
        end,
    ModulesP = [
        {File, ?LB(Uri)}
        || {File, Uri} <- Modules
    ],
    _ = lists:foreach(
        fun({File, _Uri}) ->
            catch xqerl_code_server:compile(File, [], ModulesP)
        end,
        Modules
    ),

    DecFormats1 = lists:map(fun environment_dec_format/1, DecFormats),

    % these can be complex queries, so compile/run instead of just exec
    Params1 = lists:foldl(fun environment_params/2, EMap, Params),
    Namespaces1 = lists:foldl(fun environment_namespace/2, Params1, Namespaces),
    ContextItem1 = lists:foldl(fun environment_context_item/2, Namespaces1, ContextItem),
    BaseUri1 = environment_base_uri(BaseUri, ContextItem1),
    Namespaces2 = lists:map(fun environment_namespace_1/1, Namespaces),
    Vars1 = lists:map(fun environment_variable/1, Vars),
    {Sources1 ++ Schemas1 ++ DecFormats1 ++ Namespaces2 ++ Vars1, BaseUri1}.

environment_resource({_MediaType, File, Uri0}) -> environment_resource_1(File, Uri0);
environment_resource({File, Uri0}) -> environment_resource_1(File, Uri0).

environment_resource_1(File, Uri0) ->
    Uri = ?LB(Uri0),
    case xqldb_dml:exists_resource(Uri) of
        true ->
            ok;
        false ->
            {ok, Bin} = file:read_file(File),
            xqldb_dml:insert_resource(Uri, Bin)
    end.

environment_collections({Uri0, CList}, DefaultCollection) ->
    CollectionUri =
        case ?LB(Uri0) of
            <<>> ->
                DefaultCollection;
            Other ->
                Other
        end,

    % collection test cannot be done in parallel
    _ = xqldb_dml:delete_collection(CollectionUri),

    case CList of
        [{query, Base, Q}] ->
            Opts = #{
                'base-uri' => #xqAtomicValue{
                    type = 'xs:anyURI',
                    value = ?LB(xqldb_lib:filename_to_uri(Base ++ "/dummy.xq"))
                }
            },
            Items =
                case xqerl:run(Q, Opts) of
                    L when is_list(L) -> L;
                    L -> [L]
                end,
            ItemUri = xqldb_uri:join(CollectionUri, "stuff"),
            xqldb_dml:insert_item(ItemUri, Items),
            ok;
        _ ->
            _ = [
                begin
                    F = xqldb_lib:filename_to_uri(?LB(FileName0)),
                    {_, BaseName} = xqldb_uri:split_uri(F),
                    DocUri = xqldb_uri:join(CollectionUri, BaseName),
                    catch xqldb_dml:insert_doc(DocUri, FileName0)
                end
                || {src, FileName0} <- CList
            ],
            ok
    end.

environment_schema(_) -> "".

% environment_schema({File,Uri}) -> "import schema default element namespace '" ++ Uri ++ "' at '" ++ File ++ "';\n".

environment_docs({File0, Role, Uri0}, Map) ->
    FileUri = ?LB(xqldb_uri:filename_to_uri(File0)),
    Uri2 =
        case Uri0 of
            [] -> FileUri;
            File0 -> FileUri;
            _ -> ?LB(Uri0)
        end,
    _ = (catch xqldb_dml:insert_doc(Uri2, File0)),
    case Role of
        "." ->
            Doc = xqldb_dml:select_doc(Uri2),
            {"", Map#{'context-item' => {Doc, 1}}};
        "" ->
            {"", Map};
        _ ->
            {"declare variable " ++
                    Role ++
                    " := Q{http://www.w3.org/2005/xpath-functions}doc('" ++
                    unicode:characters_to_list(Uri2) ++ "');\n",
                Map}
    end.

environment_dec_format({"", Values}) ->
    "declare default decimal-format \n" ++
        lists:flatmap(fun environment_dec_format_vals/1, Values) ++
        ";";
environment_dec_format({Name, Values}) ->
    "declare decimal-format " ++
        Name ++
        " \n" ++
        lists:flatmap(fun environment_dec_format_vals/1, Values) ++
        ";".

environment_dec_format_vals({K, V}) ->
    " " ++ atom_to_list(K) ++ "='" ++ V ++ "' \n".

environment_params({Name, "", Value}, Map) ->
    Val = xqerl:run(Value),
    Map#{?LB(Name) => Val};
environment_params({Name, As, Value}, Map) ->
    Val = xqerl:run(Value ++ " cast as " ++ As),
    Map#{?LB(Name) => Val}.

environment_namespace({Uri, Prefix}, Map) ->
    Ns = maps:get(namespaces, Map, []),
    NewNs = lists:keystore(
        ?LB(Prefix),
        1,
        Ns,
        {?LB(Prefix), ?LB(Uri)}
    ),
    Map#{namespaces => NewNs}.

environment_context_item("", Map) ->
    Map;
environment_context_item(C, Map) ->
    R = xqerl:run(C),
    Map#{'context-item' => {R, 1}}.

environment_base_uri([{[]}], ContextItem) ->
    % undefined
    ContextItem#{
        'base-uri' => #xqAtomicValue{type = 'xs:anyURI', value = <<"#UNDEFINED">>}
    };
environment_base_uri([{Buv}], ContextItem) ->
    ContextItem#{'base-uri' => #xqAtomicValue{type = 'xs:anyURI', value = ?LB(Buv)}};
environment_base_uri([], ContextItem) ->
    ContextItem.

environment_namespace_1({Uri, ""}) ->
    "declare default element namespace '" ++ Uri ++ "';\n";
% block statically known
environment_namespace_1({"http://www.w3.org/2005/xpath-functions/math", "math"}) ->
    "";
environment_namespace_1({"http://www.w3.org/2005/xpath-functions/array", "array"}) ->
    "";
environment_namespace_1({"http://www.w3.org/2005/xpath-functions/map", "map"}) ->
    "";
environment_namespace_1({Uri, Prefix}) ->
    "declare namespace " ++ Prefix ++ " = '" ++ Uri ++ "';\n".

environment_variable({Name, "", Value}) ->
    "declare variable $" ++ Name ++ " := " ++ Value ++ ";\n";
environment_variable({Name, As, Value}) ->
    "declare variable $" ++ Name ++ " as " ++ As ++ " := " ++ Value ++ ";\n".

load_qt3_xml() ->
    TestDir = filename:join(
        filename:dirname(
            filename:dirname(
                filename:dirname(code:lib_dir(xqerl))
            )
        ),
        "qt3tests"
    ),
    Catalog = filename:join(TestDir, "catalog.xml"),
    Tests = [filename:join(TestDir, F) || F <- qt3_files()],
    _ = [maybe_insert_file(N) || N <- [Catalog | Tests]],
    ok.

maybe_insert_file(Filename) ->
    Uri = xqldb_uri:filename_to_uri(?LB(Filename)),
    catch xqldb_dml:insert_doc(Uri, Filename).

qt3_files() ->
    [
        "fn/abs.xml",
        "fn/adjust-date-to-timezone.xml",
        "fn/adjust-dateTime-to-timezone.xml",
        "fn/adjust-time-to-timezone.xml",
        "fn/analyze-string.xml",
        "fn/apply.xml",
        "fn/available-environment-variables.xml",
        "fn/avg.xml",
        "fn/base-uri.xml",
        "fn/boolean.xml",
        "fn/ceiling.xml",
        "fn/codepoint-equal.xml",
        "fn/codepoints-to-string.xml",
        "fn/collation-key.xml",
        "fn/collection.xml",
        "fn/compare.xml",
        "fn/concat.xml",
        "fn/contains.xml",
        "fn/contains-token.xml",
        "fn/count.xml",
        "fn/current-date.xml",
        "fn/current-dateTime.xml",
        "fn/current-time.xml",
        "fn/data.xml",
        "fn/dateTime.xml",
        "fn/day-from-date.xml",
        "fn/day-from-dateTime.xml",
        "fn/days-from-duration.xml",
        "fn/deep-equal.xml",
        "fn/default-collation.xml",
        "fn/default-language.xml",
        "fn/distinct-values.xml",
        "fn/doc.xml",
        "fn/doc-available.xml",
        "fn/document-uri.xml",
        "fn/element-with-id.xml",
        "fn/empty.xml",
        "fn/encode-for-uri.xml",
        "fn/ends-with.xml",
        "fn/environment-variable.xml",
        "fn/error.xml",
        "fn/escape-html-uri.xml",
        "fn/exactly-one.xml",
        "fn/exists.xml",
        "fn/false.xml",
        "fn/filter.xml",
        "fn/floor.xml",
        "fn/fold-left.xml",
        "fn/fold-right.xml",
        "fn/for-each.xml",
        "fn/for-each-pair.xml",
        "fn/format-date.xml",
        "fn/format-dateTime.xml",
        "fn/format-integer.xml",
        "fn/format-number.xml",
        "fn/format-time.xml",
        "fn/function-lookup.xml",
        "fn/function-arity.xml",
        "fn/function-name.xml",
        "fn/generate-id.xml",
        "fn/has-children.xml",
        "fn/head.xml",
        "fn/hours-from-dateTime.xml",
        "fn/hours-from-duration.xml",
        "fn/hours-from-time.xml",
        "fn/id.xml",
        "fn/idref.xml",
        "fn/implicit-timezone.xml",
        "fn/innermost.xml",
        "fn/index-of.xml",
        "fn/insert-before.xml",
        "fn/in-scope-prefixes.xml",
        "fn/iri-to-uri.xml",
        "fn/json-doc.xml",
        "fn/json-to-xml.xml",
        "fn/lang.xml",
        "fn/last.xml",
        "fn/load-xquery-module.xml",
        "fn/local-name.xml",
        "fn/local-name-from-QName.xml",
        "fn/lower-case.xml",
        "fn/max.xml",
        "fn/matches.xml",
        "fn/matches.re.xml",
        "fn/min.xml",
        "fn/minutes-from-dateTime.xml",
        "fn/minutes-from-duration.xml",
        "fn/minutes-from-time.xml",
        "fn/month-from-date.xml",
        "fn/months-from-duration.xml",
        "fn/month-from-dateTime.xml",
        "fn/name.xml",
        "fn/namespace-uri.xml",
        "fn/namespace-uri-for-prefix.xml",
        "fn/namespace-uri-from-QName.xml",
        "fn/nilled.xml",
        "fn/node-name.xml",
        "fn/normalize-space.xml",
        "fn/normalize-unicode.xml",
        "fn/not.xml",
        "fn/number.xml",
        "fn/one-or-more.xml",
        "fn/outermost.xml",
        "fn/parse-ietf-date.xml",
        "fn/parse-json.xml",
        "fn/parse-xml.xml",
        "fn/parse-xml-fragment.xml",
        "fn/path.xml",
        "fn/position.xml",
        "fn/prefix-from-QName.xml",
        "fn/QName.xml",
        "fn/random-number-generator.xml",
        "fn/remove.xml",
        "fn/replace.xml",
        "fn/resolve-QName.xml",
        "fn/resolve-uri.xml",
        "fn/reverse.xml",
        "fn/root.xml",
        "fn/round.xml",
        "fn/round-half-to-even.xml",
        "fn/seconds-from-dateTime.xml",
        "fn/seconds-from-duration.xml",
        "fn/seconds-from-time.xml",
        "fn/serialize.xml",
        "fn/sort.xml",
        "fn/starts-with.xml",
        "fn/static-base-uri.xml",
        "fn/string.xml",
        "fn/string-join.xml",
        "fn/string-length.xml",
        "fn/string-to-codepoints.xml",
        "fn/subsequence.xml",
        "fn/substring.xml",
        "fn/substring-after.xml",
        "fn/substring-before.xml",
        "fn/sum.xml",
        "fn/tail.xml",
        "fn/timezone-from-date.xml",
        "fn/timezone-from-dateTime.xml",
        "fn/timezone-from-time.xml",
        "fn/tokenize.xml",
        "fn/trace.xml",
        "fn/transform.xml",
        "fn/translate.xml",
        "fn/true.xml",
        "fn/unordered.xml",
        "fn/unparsed-text.xml",
        "fn/unparsed-text-available.xml",
        "fn/unparsed-text-lines.xml",
        "fn/upper-case.xml",
        "fn/uri-collection.xml",
        "fn/xml-to-json.xml",
        "fn/year-from-date.xml",
        "fn/years-from-duration.xml",
        "fn/year-from-dateTime.xml",
        "fn/zero-or-one.xml",
        "math/math-acos.xml",
        "math/math-asin.xml",
        "math/math-atan.xml",
        "math/math-atan2.xml",
        "math/math-cos.xml",
        "math/math-exp.xml",
        "math/math-exp10.xml",
        "math/math-log.xml",
        "math/math-log10.xml",
        "math/math-pi.xml",
        "math/math-pow.xml",
        "math/math-sin.xml",
        "math/math-sqrt.xml",
        "math/math-tan.xml",
        "map/merge.xml",
        "map/contains.xml",
        "map/find.xml",
        "map/get.xml",
        "map/entry.xml",
        "map/size.xml",
        "map/keys.xml",
        "map/put.xml",
        "map/remove.xml",
        "map/for-each.xml",
        "array/append.xml",
        "array/filter.xml",
        "array/flatten.xml",
        "array/fold-left.xml",
        "array/fold-right.xml",
        "array/for-each.xml",
        "array/for-each-pair.xml",
        "array/get.xml",
        "array/head.xml",
        "array/insert-before.xml",
        "array/join.xml",
        "array/put.xml",
        "array/remove.xml",
        "array/reverse.xml",
        "array/size.xml",
        "array/sort.xml",
        "array/subarray.xml",
        "array/tail.xml",
        "xs/anyURI.xml",
        "xs/base64Binary.xml",
        "xs/dateTimeStamp.xml",
        "xs/double.xml",
        "xs/error.xml",
        "xs/float.xml",
        "xs/hexBinary.xml",
        "xs/normalizedString.xml",
        "xs/numeric.xml",
        "xs/token.xml",
        "op/add-dayTimeDurations.xml",
        "op/add-dayTimeDuration-to-date.xml",
        "op/add-dayTimeDuration-to-dateTime.xml",
        "op/add-dayTimeDuration-to-time.xml",
        "op/add-yearMonthDurations.xml",
        "op/add-yearMonthDuration-to-date.xml",
        "op/add-yearMonthDuration-to-dateTime.xml",
        "op/anyURI-equal.xml",
        "op/anyURI-greater-than.xml",
        "op/anyURI-less-than.xml",
        "op/bang.xml",
        "op/base64Binary-equal.xml",
        "op/base64Binary-less-than.xml",
        "op/base64Binary-greater-than.xml",
        "op/boolean-equal.xml",
        "op/boolean-greater-than.xml",
        "op/boolean-less-than.xml",
        "op/concat.xml",
        "op/concatenate.xml",
        "op/date-equal.xml",
        "op/date-greater-than.xml",
        "op/date-less-than.xml",
        "op/dateTime-equal.xml",
        "op/dateTime-greater-than.xml",
        "op/dateTime-less-than.xml",
        "op/dayTimeDuration-greater-than.xml",
        "op/dayTimeDuration-less-than.xml",
        "op/divide-dayTimeDuration.xml",
        "op/divide-dayTimeDuration-by-dayTimeDuration.xml",
        "op/divide-yearMonthDuration.xml",
        "op/divide-yearMonthDuration-by-yearMonthDuration.xml",
        "op/duration-equal.xml",
        "op/except.xml",
        "op/gDay-equal.xml",
        "op/gMonth-equal.xml",
        "op/gMonthDay-equal.xml",
        "op/gYear-equal.xml",
        "op/gYearMonth-equal.xml",
        "op/hexBinary-equal.xml",
        "op/hexBinary-greater-than.xml",
        "op/hexBinary-less-than.xml",
        "op/intersect.xml",
        "op/is-same-node.xml",
        "op/multiply-dayTimeDuration.xml",
        "op/multiply-yearMonthDuration.xml",
        "op/node-after.xml",
        "op/node-before.xml",
        "op/NOTATION-equal.xml",
        "op/numeric-add.xml",
        "op/numeric-equal.xml",
        "op/numeric-divide.xml",
        "op/numeric-greater-than.xml",
        "op/numeric-integer-divide.xml",
        "op/numeric-less-than.xml",
        "op/numeric-mod.xml",
        "op/numeric-multiply.xml",
        "op/numeric-subtract.xml",
        "op/numeric-unary-minus.xml",
        "op/numeric-unary-plus.xml",
        "op/QName-equal.xml",
        "op/string-equal.xml",
        "op/string-greater-than.xml",
        "op/string-less-than.xml",
        "op/subtract-dates.xml",
        "op/subtract-dateTimes.xml",
        "op/subtract-dayTimeDuration-from-date.xml",
        "op/subtract-dayTimeDuration-from-dateTime.xml",
        "op/subtract-dayTimeDuration-from-time.xml",
        "op/subtract-dayTimeDurations.xml",
        "op/subtract-times.xml",
        "op/subtract-yearMonthDuration-from-date.xml",
        "op/subtract-yearMonthDuration-from-dateTime.xml",
        "op/subtract-yearMonthDurations.xml",
        "op/time-equal.xml",
        "op/time-greater-than.xml",
        "op/time-less-than.xml",
        "op/to.xml",
        "op/union.xml",
        "op/yearMonthDuration-greater-than.xml",
        "op/yearMonthDuration-less-than.xml",
        "op/same-key.xml",
        "prod/AllowingEmpty.xml",
        "prod/Annotation.xml",
        "prod/ArrayTest.xml",
        "prod/ArrowPostfix.xml",
        "prod/AxisStep.xml",
        "prod/AxisStep.abbr.xml",
        "prod/AxisStep.ancestor.xml",
        "prod/AxisStep.ancestor-or-self.xml",
        "prod/AxisStep.following.xml",
        "prod/AxisStep.following-sibling.xml",
        "prod/AxisStep.preceding.xml",
        "prod/AxisStep.preceding-sibling.xml",
        "prod/AxisStep.static-typing.xml",
        "prod/AxisStep.unabbr.xml",
        "prod/BaseURIDecl.xml",
        "prod/BoundarySpaceDecl.xml",
        "prod/CastableExpr.xml",
        "prod/CastExpr.xml",
        "prod/CastExpr.derived.xml",
        "prod/CastExpr.schema.xml",
        "prod/Comment.xml",
        "prod/CompAttrConstructor.xml",
        "prod/CompDocConstructor.xml",
        "prod/CompCommentConstructor.xml",
        "prod/CompElemConstructor.xml",
        "prod/CompNamespaceConstructor.xml",
        "prod/CompPIConstructor.xml",
        "prod/CompTextConstructor.xml",
        "prod/ConstructionDecl.xml",
        "prod/ConstructionDecl.schema.xml",
        "prod/ContextItemDecl.xml",
        "prod/ContextItemExpr.xml",
        "prod/CopyNamespacesDecl.xml",
        "prod/CountClause.xml",
        "prod/CurlyArrayConstructor.xml",
        "prod/DecimalFormatDecl.xml",
        "prod/DefaultCollationDecl.xml",
        "prod/DefaultNamespaceDecl.xml",
        "prod/DirAttributeList.xml",
        "prod/DirectConstructor.xml",
        "prod/DirElemConstructor.xml",
        "prod/DirElemContent.xml",
        "prod/DirElemContent.namespace.xml",
        "prod/DirElemContent.whitespace.xml",
        "prod/EmptyOrderDecl.xml",
        "prod/EQName.xml",
        "prod/ExtensionExpr.xml",
        "prod/FLWORExpr.xml",
        "prod/FLWORExpr.static-typing.xml",
        "prod/ForClause.xml",
        "prod/FunctionCall.xml",
        "prod/FunctionDecl.xml",
        "prod/GeneralComp.eq.xml",
        "prod/GeneralComp.ge.xml",
        "prod/GeneralComp.gt.xml",
        "prod/GeneralComp.le.xml",
        "prod/GeneralComp.lt.xml",
        "prod/GeneralComp.ne.xml",
        "prod/GroupByClause.xml",
        "prod/IfExpr.xml",
        "prod/InlineFunctionExpr.xml",
        "prod/InstanceofExpr.xml",
        "prod/LetClause.xml",
        "prod/Literal.xml",
        "prod/Lookup.xml",
        "prod/MapConstructor.xml",
        "prod/MapTest.xml",
        "prod/ModuleImport.xml",
        "prod/NamedFunctionRef.xml",
        "prod/NamespaceDecl.xml",
        "prod/NameTest.xml",
        "prod/NodeTest.xml",
        "prod/OptionDecl.xml",
        "prod/OptionDecl.serialization.xml",
        "prod/OrExpr.xml",
        "prod/OrderByClause.xml",
        "prod/OrderingModeDecl.xml",
        "prod/PathExpr.xml",
        "prod/ParenthesizedExpr.xml",
        "prod/PositionalVar.xml",
        "prod/Predicate.xml",
        "prod/QuantifiedExpr.xml",
        "prod/ReturnClause.xml",
        "prod/SchemaImport.xml",
        "prod/SequenceType.xml",
        "prod/SquareArrayConstructor.xml",
        "prod/StepExpr.xml",
        "prod/StringConstructor.xml",
        "prod/SwitchExpr.xml",
        "prod/TreatExpr.xml",
        "prod/TryCatchExpr.xml",
        "prod/TypeswitchExpr.xml",
        "prod/UnorderedExpr.xml",
        "prod/UnaryLookup.xml",
        "prod/ValidateExpr.xml",
        "prod/ValueComp.xml",
        "prod/VarDecl.xml",
        "prod/VarDecl.external.xml",
        "prod/VarDefaultValue.xml",
        "prod/VersionDecl.xml",
        "prod/WhereClause.xml",
        "prod/WindowClause.xml",
        "misc/CombinedErrorCodes.xml",
        "misc/AnnexE.xml",
        "misc/AppendixA4.xml",
        "misc/ErrorsAndOptimization.xml",
        "misc/HigherOrderFunctions.xml",
        "misc/JsonTestSuite.xml",
        "misc/StaticContext.xml",
        "misc/Surrogates.xml",
        "misc/UCACollation.xml",
        "misc/XMLEdition.xml",
        "ser/method-adaptive.xml",
        "ser/method-html.xml",
        "ser/method-json.xml",
        "ser/method-text.xml",
        "ser/method-xhtml.xml",
        "ser/method-xml.xml",
        "app/CatalogCheck.xml",
        "app/Demos.xml",
        "app/FunctxFn.xml",
        "app/FunctxFunctx.xml",
        "app/UseCaseCompoundValues.xml",
        "app/UseCaseJSON.xml",
        "app/UseCaseNLP.xml",
        "app/UseCaseNS.xml",
        "app/UseCasePARTS.xml",
        "app/UseCaseR.xml",
        "app/UseCaseR31.xml",
        "app/UseCaseSEQ.xml",
        "app/UseCaseSGML.xml",
        "app/UseCaseSTRING.xml",
        "app/UseCaseTREE.xml",
        "app/UseCaseXMP.xml",
        "app/Walmsley.xml",
        "app/XMark.xml",
        "app/fo-spec-examples.xml"
    ].
