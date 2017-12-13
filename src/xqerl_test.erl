-module(xqerl_test).

-export([assert/2]).
-export([assert_empty/1]).
-export([assert_type/2]).
-export([assert_xml/2]).
-export([assert_eq/2]).
-export([assert_deep_eq/2]).
-export([assert_false/1]).
-export([assert_true/1]).
-export([assert_count/2]).
-export([assert_permutation/2]).
-export([assert_string_value/2]).
-export([assert_norm_string_value/2]).
-export([assert_error/2]).

-export([size/1]).
-export([string_value/1]).
-export([run/1]).
-export([run/2]).
-export([run_suite/1]).
-export([handle_environment/1]).

-include("xqerl.hrl").


%% assert functions return either true or {false, Result}

%% assert                 (: run test query with result as variable == true :)
assert(Result, QueryString) ->
   Type = if is_list(Result) ->
                " as item()*";
             is_map(Result) ->
                " as map(*)";
             element(1,Result) == array ->
                " as array(*)";
             true ->
                " as item()"
          end,
   NewQueryString = "declare variable $result" ++ Type ++ " external; " ++ QueryString,
   %?dbg("NewQueryString",NewQueryString),
   %?dbg("Result",Result),
   case catch xqerl:run(NewQueryString, #{"result" => Result}) of
      {'EXIT',Res} ->
         {false, Res};
      #xqError{} = Res ->
         {false, Res};
      Res1 ->
         StrVal = string_value(Res1),
         if StrVal == "true" ->
               true;
            StrVal == "false" ->
               {false, {assert,Res1,QueryString}};
            StrVal == "" ->
               {false, {assert,Res1,QueryString}};
            true ->
               true
         end
   end.

%% assert_empty           (: string value of result == [] :)
assert_empty(Result) ->
   StrVal = string_value(Result),
   if StrVal == [] ->
         true;
      true ->
         {false, {assert_empty,StrVal}}
   end.
%% assert_type            (: result instance of type :)
assert_type(Result, TypeString) ->
   NewQueryString = "declare variable $result as item()* external; ($result) instance of " ++ TypeString,
   case catch xqerl:run(NewQueryString, #{"result" => Result}) of
      {'EXIT',Res} ->
         {false, {assert_type,Res}};
      Res1 ->
         StrVal = string_value(Res1),
         if StrVal == "true" ->
               true;
            true ->
               {false, {assert_type,Res1,TypeString}}
         end
   end.
%% assert_xml             (: fn:deep-equal(result, run test query) :)
assert_xml(Result, {file, FileLoc}) ->
   _ = xqerl_doc:read_http(FileLoc),
   try
      NewQueryString = "declare variable $result external; " ++ "fn:deep-equal($result , fn:doc('" ++ FileLoc ++ "')/* )",
      Res1 = xqerl:run(NewQueryString, #{"result" => Result}),
      StrVal = string_value(Res1),
      if StrVal == "true" ->
            true;
         true ->
            {false, {assert_xml,Res1}}
      end
   catch 
      _:_ ->
         {false, {assert_xml,FileLoc}}
   end;
assert_xml(Result, QueryString) ->
   ResXml = xqerl_node:to_xml(Result),
   case catch xqerl_lib:decode_string(ResXml) == xqerl_lib:decode_string(QueryString) of
      true ->
         true;
      _ ->
         try
            NewQueryString = "fn:deep-equal(<x>" ++ ResXml ++ "</x> ,<x>" ++ QueryString ++ "</x>)",
            Res1 = xqerl:run(NewQueryString, #{}),
            StrVal = string_value(Res1),
            if StrVal == "true" ->
                  true;
               true ->
                  {false, {assert_xml,ResXml,QueryString}}
            end
         catch 
            _:_ ->
               {false, {assert_xml,ResXml,QueryString}}
         end
   end.
%% assert_eq              (: '=' operator :)
assert_eq(Result, TypeString) ->
   NewQueryString = "declare variable $result as item() external; $result = " ++ TypeString,
   case catch xqerl:run(NewQueryString, #{"result" => Result}) of
      {'EXIT',Res} ->
         {false, Res};
      Res1 ->
         StrVal = string_value(Res1),
         if StrVal == "true" ->
               true;
            true ->
               %?dbg("Res1",Res1),
               %?dbg("NewQueryString",NewQueryString),
               ?dbg("Result",Result),
               {false, {assert_eq,Res1,TypeString}}
         end
   end.
%% assert_deep_eq         (: fn:deep-equal(result, run test query) :)
assert_deep_eq(Result, QueryString) ->
   NewQueryString = "declare variable $result as item() external; fn:deep-equal($result,(" ++ QueryString ++ "))",
   case catch xqerl:run(NewQueryString, #{"result" => Result}) of
      {'EXIT',Res} ->
         {false, Res};
      Res1 ->
         StrVal = string_value(Res1),
         if StrVal == "true" ->
               true;
            true ->
               {false, {assert_deep_eq,Res1,QueryString}}
         end
   end.
%% assert_false           (: string value of result == 'true' :)
assert_false(Result) ->
   StrVal = string_value(Result),
   if StrVal == "false" ->
         true;
      true ->
         {false, {assert_false,Result}}
   end.
%% assert_true            (: string value of result == 'false' :)
assert_true(Result) ->
   StrVal = string_value(Result),
   if StrVal == "true" ->
         true;
      true ->
         {false, {assert_true,Result}}
   end.
%% assert_permutation     (: take_while memeber(result, run test query) == [] :)
%% the result should be a list of atomic values, the permute list also
assert_permutation(Result, PermuteString) ->
   QueryString = "(" ++ PermuteString ++ ")",
   case catch xqerl:run(QueryString, #{}) of
      {'EXIT',Res} ->
         {false, Res};
      Res1 ->
         Res2 = lists:map(fun(I) ->
                                {xqerl_types:value(I)}
                          end, Res1),
         Res3 = lists:map(fun(I) ->
                                {xqerl_types:value(I)}
                          end, Result),
         ?dbg("{Res2,Res3}",{Res2,Res3}),
         Rest1 = lists:foldl(fun({I},L) ->
                                  lists:keydelete(I, 1, L)
                            end, Res2, Res3),
         Rest2 = lists:foldl(fun({I},L) ->
                                  lists:keydelete(I, 1, L)
                            end, Res3, Res2),
         Rest = Rest1 ++ Rest2,
         if Rest == [] ->
               true;
            true ->
               {false, {assert_permutation,Rest,PermuteString}}
         end
   end.
%% assert_count           (: fn:count(result) == cnt :)
assert_count(Result, TypeString) ->
   %NewQueryString = "declare variable $result as item() external; fn:count($result) eq " ++ TypeString,
   %case catch xqerl:run(NewQueryString, #{"result" => Result}) of
   %   {'EXIT',Res} ->
   %      {false, Res};
   %   Res1 ->
   %      StrVal = string_value(Res1),
   Cnt = list_to_integer(TypeString),
         if is_list(Result), length(Result) == Cnt ->
               true;
            Cnt == 1 ->
               true;
            true ->
               {false, {assert_count,Result,TypeString}}
   %      end
   end.
%% assert_string_value    (: string value of result == Str :)
assert_string_value(Result, String) ->
   StrVal = string_value(Result),
   if StrVal == String ->
         true;
      true ->
         {false, {assert_string_value,StrVal,String}}
   end.
assert_norm_string_value(Result, String) ->
   StrVal = string:trim(xqerl_lib:shrink_spaces(string_value(Result))),
   if StrVal == String ->
         true;
      true ->
         {false, {assert_string_value,StrVal,String}}
   end.
%% assert_error
assert_error(Result, ErrorCode) ->
   case Result of 
      #xqError{name = #xqAtomicValue{value = #qname{namespace = ErrNs, local_name = Err}}} ->
         if Err == ErrorCode;
            ErrorCode == "*" ->
               true;
            true ->
               case "Q{}"++Err == ErrorCode andalso ErrNs == 'no-namespace' of
                  true ->
                     true;
                  _ ->
                     {false,{Err,ErrorCode}}
               end
         end;
      _ ->
         StrVal = string_value(Result),
         {false, {assert_error,StrVal,ErrorCode}}
   end.

size(A) ->
   ?seq:size(A).

string_value(List) when is_list(List) andalso not is_integer(hd(List)) ->
   NewList = lists:map(fun(I) ->
                             %xqerl_types:string_value(I)
                             ?seq:singleton(I)
                       end, List),
   Seq = ?seq:from_list(NewList),
   xqerl_types:string_value(Seq);
   %lists:concat([hd(NewList)|[" "++ Av || Av <- tl(NewList), Av =/= [] ] ]);
string_value(Seq) ->
   xqerl_types:string_value(Seq).

run_suite(Suite) ->
   ok = application:ensure_started(xqerl_ds),
   ct:run_test([{suite, Suite},{dir, "../test"},{logdir, "../test/logs"}])
.

run(all) ->
   run(prod),
   run(misc),
   run(op),
   run(fn),
   run(fn2),
   run(map),
   run(array);
run(misc) ->
   run_suite(misc_CombinedErrorCodes_SUITE),
   run_suite(misc_AnnexE_SUITE),
   run_suite(misc_AppendixA4_SUITE),
   run_suite(misc_ErrorsAndOptimization_SUITE),
   run_suite(misc_HigherOrderFunctions_SUITE),
   run_suite(misc_StaticContext_SUITE),
   run_suite(misc_Surrogates_SUITE),
   run_suite(misc_UCACollation_SUITE),
   run_suite(misc_XMLEdition_SUITE),
   run_suite(method_adaptive_SUITE),
   run_suite(method_html_SUITE),
   run_suite(method_json_SUITE),
   run_suite(method_text_SUITE),
   run_suite(method_xhtml_SUITE),
   run_suite(method_xml_SUITE),
   run_suite(app_CatalogCheck_SUITE),
   run_suite(app_Demos_SUITE),
   run_suite(app_FunctxFn_SUITE),
   run_suite(app_FunctxFunctx_SUITE),
   run_suite(app_UseCaseCompoundValues_SUITE),
   run_suite(app_UseCaseJSON_SUITE),
   run_suite(app_UseCaseNLP_SUITE),
   run_suite(app_UseCaseNS_SUITE),
   run_suite(app_UseCasePARTS_SUITE),
   run_suite(app_UseCaseR_SUITE),
   run_suite(app_UseCaseR31_SUITE),
   run_suite(app_UseCaseSEQ_SUITE),
   run_suite(app_UseCaseSGML_SUITE),
   run_suite(app_UseCaseSTRING_SUITE),
   run_suite(app_UseCaseTREE_SUITE),
   run_suite(app_UseCaseXMP_SUITE),
   run_suite(app_Walmsley_SUITE),
   run_suite(app_XMark_SUITE),
   run_suite(app_spec_examples_SUITE),
   run_suite(math_acos_SUITE),
   run_suite(math_asin_SUITE),
   run_suite(math_atan_SUITE),
   run_suite(math_atan2_SUITE),
   run_suite(math_cos_SUITE),
   run_suite(math_exp_SUITE),
   run_suite(math_exp10_SUITE),
   run_suite(math_log_SUITE),
   run_suite(math_log10_SUITE),
   run_suite(math_pi_SUITE),
   run_suite(math_pow_SUITE),
   run_suite(math_sin_SUITE),
   run_suite(math_sqrt_SUITE),
   run_suite(math_tan_SUITE),
   run_suite(xs_anyURI_SUITE),
   run_suite(xs_base64Binary_SUITE),
   run_suite(xs_dateTimeStamp_SUITE),
   run_suite(xs_double_SUITE),
   run_suite(xs_error_SUITE),
   run_suite(xs_float_SUITE),
   run_suite(xs_hexBinary_SUITE),
   run_suite(xs_normalizedString_SUITE),
   run_suite(xs_numeric_SUITE),
   run_suite(xs_token_SUITE);
run(prod) ->
   run_suite(prod_AllowingEmpty_SUITE),
   run_suite(prod_Annotation_SUITE),
   run_suite(prod_ArrayTest_SUITE),
   run_suite(prod_ArrowPostfix_SUITE),
   run_suite(prod_AxisStep_SUITE),
   run_suite(prod_AxisStep_abbr_SUITE),
   run_suite(prod_AxisStep_ancestor_SUITE),
   run_suite(prod_AxisStep_ancestor_or_self_SUITE),
   run_suite(prod_AxisStep_following_SUITE),
   run_suite(prod_AxisStep_following_sibling_SUITE),
   run_suite(prod_AxisStep_preceding_SUITE),
   run_suite(prod_AxisStep_preceding_sibling_SUITE),
   run_suite(prod_AxisStep_static_typing_SUITE),
   run_suite(prod_AxisStep_unabbr_SUITE),
   run_suite(prod_BaseURIDecl_SUITE),
   run_suite(prod_BoundarySpaceDecl_SUITE),
   run_suite(prod_CastableExpr_SUITE),
   run_suite(prod_CastExpr_SUITE),
   run_suite(prod_CastExpr_derived_SUITE),
   run_suite(prod_CastExpr_schema_SUITE),
   run_suite(prod_Comment_SUITE),
   run_suite(prod_CompAttrConstructor_SUITE),
   run_suite(prod_CompDocConstructor_SUITE),
   run_suite(prod_CompCommentConstructor_SUITE),
   run_suite(prod_CompElemConstructor_SUITE),
   run_suite(prod_CompNamespaceConstructor_SUITE),
   run_suite(prod_CompPIConstructor_SUITE),
   run_suite(prod_CompTextConstructor_SUITE),
   run_suite(prod_ConstructionDecl_SUITE),
   run_suite(prod_ConstructionDecl_schema_SUITE),
   run_suite(prod_ContextItemDecl_SUITE),
   run_suite(prod_ContextItemExpr_SUITE),
   run_suite(prod_CopyNamespacesDecl_SUITE),
   run_suite(prod_CountClause_SUITE),
   run_suite(prod_CurlyArrayConstructor_SUITE),
   run_suite(prod_DecimalFormatDecl_SUITE),
   run_suite(prod_DefaultCollationDecl_SUITE),
   run_suite(prod_DefaultNamespaceDecl_SUITE),
   run_suite(prod_DirAttributeList_SUITE),
   run_suite(prod_DirectConstructor_SUITE),
   run_suite(prod_DirElemConstructor_SUITE),
   run_suite(prod_DirElemContent_SUITE),
   run_suite(prod_DirElemContent_namespace_SUITE),
   run_suite(prod_DirElemContent_whitespace_SUITE),
   run_suite(prod_EmptyOrderDecl_SUITE),
   run_suite(prod_EQName_SUITE),
   run_suite(prod_ExtensionExpr_SUITE),
   run_suite(prod_FLWORExpr_SUITE),
   run_suite(prod_FLWORExpr_static_typing_SUITE),
   run_suite(prod_ForClause_SUITE),
   run_suite(prod_FunctionCall_SUITE),
   run_suite(prod_FunctionDecl_SUITE),
   run_suite(prod_GeneralComp_eq_SUITE),
   run_suite(prod_GeneralComp_ge_SUITE),
   run_suite(prod_GeneralComp_gt_SUITE),
   run_suite(prod_GeneralComp_le_SUITE),
   run_suite(prod_GeneralComp_lt_SUITE),
   run_suite(prod_GeneralComp_ne_SUITE),
   run_suite(prod_GroupByClause_SUITE),
   run_suite(prod_IfExpr_SUITE),
   run_suite(prod_InlineFunctionExpr_SUITE),
   run_suite(prod_InstanceofExpr_SUITE),
   run_suite(prod_LetClause_SUITE),
   run_suite(prod_Literal_SUITE),
   run_suite(prod_Lookup_SUITE),
   run_suite(prod_MapConstructor_SUITE),
   run_suite(prod_MapTest_SUITE),
   run_suite(prod_ModuleImport_SUITE),
   run_suite(prod_NamedFunctionRef_SUITE),
   run_suite(prod_NamespaceDecl_SUITE),
   run_suite(prod_NameTest_SUITE),
   run_suite(prod_NodeTest_SUITE),
   run_suite(prod_OptionDecl_SUITE),
   run_suite(prod_OptionDecl_serialization_SUITE),
   run_suite(prod_OrExpr_SUITE),
   run_suite(prod_OrderByClause_SUITE),
   run_suite(prod_OrderingModeDecl_SUITE),
   run_suite(prod_PathExpr_SUITE),
   run_suite(prod_ParenthesizedExpr_SUITE),
   run_suite(prod_PositionalVar_SUITE),
   run_suite(prod_Predicate_SUITE),
   run_suite(prod_QuantifiedExpr_SUITE),
   run_suite(prod_ReturnClause_SUITE),
   run_suite(prod_SchemaImport_SUITE),
   run_suite(prod_SequenceType_SUITE),
   run_suite(prod_SquareArrayConstructor_SUITE),
   run_suite(prod_StepExpr_SUITE),
   run_suite(prod_StringConstructor_SUITE),
   run_suite(prod_SwitchExpr_SUITE),
   run_suite(prod_TreatExpr_SUITE),
   run_suite(prod_TryCatchExpr_SUITE),
   run_suite(prod_TypeswitchExpr_SUITE),
   run_suite(prod_UnorderedExpr_SUITE),
   run_suite(prod_UnaryLookup_SUITE),
   run_suite(prod_ValidateExpr_SUITE),
   run_suite(prod_ValueComp_SUITE),
   run_suite(prod_VarDecl_SUITE),
   run_suite(prod_VarDecl_external_SUITE),
   run_suite(prod_VarDefaultValue_SUITE),
   run_suite(prod_VersionDecl_SUITE),
   run_suite(prod_WhereClause_SUITE),
   run_suite(prod_WindowClause_SUITE);
run(fn) ->
   run_suite(fn_abs_SUITE),
   run_suite(fn_adjust_date_to_timezone_SUITE),
   run_suite(fn_adjust_dateTime_to_timezone_SUITE),
   run_suite(fn_adjust_time_to_timezone_SUITE),
   run_suite(fn_analyze_string_SUITE),
   run_suite(fn_apply_SUITE),
   run_suite(fn_available_environment_variables_SUITE),
   run_suite(fn_avg_SUITE),
   run_suite(fn_base_uri_SUITE),
   run_suite(fn_boolean_SUITE),
   run_suite(fn_ceiling_SUITE),
   run_suite(fn_codepoint_equal_SUITE),
   run_suite(fn_codepoints_to_string_SUITE),
   run_suite(fn_collation_key_SUITE),
   run_suite(fn_collection_SUITE),
   run_suite(fn_compare_SUITE),
   run_suite(fn_concat_SUITE),
   run_suite(fn_contains_SUITE),
   run_suite(fn_contains_token_SUITE),
   run_suite(fn_count_SUITE),
   run_suite(fn_current_date_SUITE),
   run_suite(fn_current_dateTime_SUITE),
   run_suite(fn_current_time_SUITE),
   run_suite(fn_data_SUITE),
   run_suite(fn_dateTime_SUITE),
   run_suite(fn_day_from_date_SUITE),
   run_suite(fn_day_from_dateTime_SUITE),
   run_suite(fn_days_from_duration_SUITE),
   run_suite(fn_deep_equal_SUITE),
   run_suite(fn_default_collation_SUITE),
   run_suite(fn_default_language_SUITE),
   run_suite(fn_distinct_values_SUITE),
   run_suite(fn_doc_SUITE),
   run_suite(fn_doc_available_SUITE),
   run_suite(fn_document_uri_SUITE),
   run_suite(fn_element_with_id_SUITE),
   run_suite(fn_empty_SUITE),
   run_suite(fn_encode_for_uri_SUITE),
   run_suite(fn_ends_with_SUITE),
   run_suite(fn_environment_variable_SUITE),
   run_suite(fn_error_SUITE),
   run_suite(fn_escape_html_uri_SUITE),
   run_suite(fn_exactly_one_SUITE),
   run_suite(fn_exists_SUITE),
   run_suite(fn_false_SUITE),
   run_suite(fn_filter_SUITE),
   run_suite(fn_floor_SUITE),
   run_suite(fn_fold_left_SUITE),
   run_suite(fn_fold_right_SUITE),
   run_suite(fn_for_each_SUITE),
   run_suite(fn_for_each_pair_SUITE),
   run_suite(fn_format_date_SUITE),
   run_suite(fn_format_dateTime_SUITE),
   run_suite(fn_format_integer_SUITE),
   run_suite(fn_format_number_SUITE),
   run_suite(fn_format_time_SUITE),
   run_suite(fn_function_lookup_SUITE),
   run_suite(fn_function_arity_SUITE),
   run_suite(fn_function_name_SUITE),
   run_suite(fn_generate_id_SUITE),
   run_suite(fn_has_children_SUITE),
   run_suite(fn_head_SUITE),
   run_suite(fn_hours_from_dateTime_SUITE),
   run_suite(fn_hours_from_duration_SUITE),
   run_suite(fn_hours_from_time_SUITE),
   run_suite(fn_id_SUITE),
   run_suite(fn_idref_SUITE),
   run_suite(fn_implicit_timezone_SUITE),
   run_suite(fn_innermost_SUITE),
   run_suite(fn_index_of_SUITE),
   run_suite(fn_insert_before_SUITE),
   run_suite(fn_in_scope_prefixes_SUITE),
   run_suite(fn_iri_to_uri_SUITE),
   run_suite(fn_json_doc_SUITE),
   run_suite(fn_json_to_xml_SUITE),
   run_suite(fn_lang_SUITE),
   run_suite(fn_last_SUITE),
   run_suite(fn_load_xquery_module_SUITE),
   run_suite(fn_local_name_SUITE),
   run_suite(fn_local_name_from_QName_SUITE),
   run_suite(fn_lower_case_SUITE),
   run_suite(fn_max_SUITE),
   run_suite(fn_matches_SUITE),
   run_suite(fn_matches_re_SUITE),
   run_suite(fn_min_SUITE),
   run_suite(fn_minutes_from_dateTime_SUITE),
   run_suite(fn_minutes_from_duration_SUITE),
   run_suite(fn_minutes_from_time_SUITE),
   run_suite(fn_month_from_date_SUITE),
   run_suite(fn_months_from_duration_SUITE),
   run_suite(fn_month_from_dateTime_SUITE),
   run_suite(fn_name_SUITE),
   run_suite(fn_namespace_uri_SUITE),
   run_suite(fn_namespace_uri_for_prefix_SUITE),
   run_suite(fn_namespace_uri_from_QName_SUITE),
   run_suite(fn_nilled_SUITE),
   run_suite(fn_node_name_SUITE),
   run_suite(fn_normalize_space_SUITE),
   run_suite(fn_normalize_unicode_SUITE),
   run_suite(fn_not_SUITE),
   run_suite(fn_number_SUITE),
   run_suite(fn_one_or_more_SUITE),
   run_suite(fn_outermost_SUITE),
   run_suite(fn_parse_ietf_date_SUITE),
   run_suite(fn_parse_json_SUITE),
   run_suite(fn_parse_xml_SUITE),
   run_suite(fn_parse_xml_fragment_SUITE),
   run_suite(fn_path_SUITE),
   run_suite(fn_position_SUITE),
   run_suite(fn_prefix_from_QName_SUITE),
   run_suite(fn_QName_SUITE),
   run_suite(fn_random_number_generator_SUITE),
   run_suite(fn_remove_SUITE),
   run_suite(fn_replace_SUITE),
   run_suite(fn_resolve_QName_SUITE),
   run_suite(fn_resolve_uri_SUITE),
   run_suite(fn_reverse_SUITE),
   run_suite(fn_root_SUITE),
   run_suite(fn_round_SUITE),
   run_suite(fn_round_half_to_even_SUITE),
   run_suite(fn_seconds_from_dateTime_SUITE),
   run_suite(fn_seconds_from_duration_SUITE),
   run_suite(fn_seconds_from_time_SUITE),
   run_suite(fn_serialize_SUITE),
   run_suite(fn_sort_SUITE),
   run_suite(fn_starts_with_SUITE),
   run_suite(fn_static_base_uri_SUITE),
   run_suite(fn_string_SUITE),
   run_suite(fn_string_join_SUITE),
   run_suite(fn_string_length_SUITE),
   run_suite(fn_string_to_codepoints_SUITE);
run(fn2) ->
   run_suite(fn_subsequence_SUITE),
   run_suite(fn_substring_SUITE),
   run_suite(fn_substring_after_SUITE),
   run_suite(fn_substring_before_SUITE),
   run_suite(fn_sum_SUITE),
   run_suite(fn_tail_SUITE),
   run_suite(fn_timezone_from_date_SUITE),
   run_suite(fn_timezone_from_dateTime_SUITE),
   run_suite(fn_timezone_from_time_SUITE),
   run_suite(fn_tokenize_SUITE),
   run_suite(fn_trace_SUITE),
   run_suite(fn_transform_SUITE),
   run_suite(fn_translate_SUITE),
   run_suite(fn_true_SUITE),
   run_suite(fn_unordered_SUITE),
   run_suite(fn_unparsed_text_SUITE),
   run_suite(fn_unparsed_text_available_SUITE),
   run_suite(fn_unparsed_text_lines_SUITE),
   run_suite(fn_upper_case_SUITE),
   run_suite(fn_uri_collection_SUITE),
   run_suite(fn_xml_to_json_SUITE),
   run_suite(fn_year_from_date_SUITE),
   run_suite(fn_years_from_duration_SUITE),
   run_suite(fn_year_from_dateTime_SUITE),
   run_suite(fn_zero_or_one_SUITE);

run(map) ->
   run_suite(map_merge_SUITE),
   run_suite(map_contains_SUITE),
   run_suite(map_find_SUITE),
   run_suite(map_get_SUITE),
   run_suite(map_entry_SUITE),
   run_suite(map_size_SUITE),
   run_suite(map_keys_SUITE),
   run_suite(map_put_SUITE),
   run_suite(map_remove_SUITE),
   run_suite(map_for_each_SUITE);

run(array) ->
   run_suite(array_append_SUITE),
   run_suite(array_filter_SUITE),
   run_suite(array_flatten_SUITE),
   run_suite(array_fold_left_SUITE),
   run_suite(array_fold_right_SUITE),
   run_suite(array_for_each_SUITE),
   run_suite(array_for_each_pair_SUITE),
   run_suite(array_get_SUITE),
   run_suite(array_head_SUITE),
   run_suite(array_insert_before_SUITE),
   run_suite(array_join_SUITE),
   run_suite(array_put_SUITE),
   run_suite(array_remove_SUITE),
   run_suite(array_reverse_SUITE),
   run_suite(array_size_SUITE),
   run_suite(array_sort_SUITE),
   run_suite(array_subarray_SUITE),
   run_suite(array_tail_SUITE);

run(op) ->
   run_suite(op_add_dayTimeDurations_SUITE),
   run_suite(op_add_dayTimeDuration_to_date_SUITE),
   run_suite(op_add_dayTimeDuration_to_dateTime_SUITE),
   run_suite(op_add_dayTimeDuration_to_time_SUITE),
   run_suite(op_add_yearMonthDurations_SUITE),
   run_suite(op_add_yearMonthDuration_to_date_SUITE),
   run_suite(op_add_yearMonthDuration_to_dateTime_SUITE),
   run_suite(op_anyURI_equal_SUITE),
   run_suite(op_anyURI_greater_than_SUITE),
   run_suite(op_anyURI_less_than_SUITE),
   run_suite(op_bang_SUITE),
   run_suite(op_base64Binary_equal_SUITE),
   run_suite(op_base64Binary_less_than_SUITE),
   run_suite(op_base64Binary_greater_than_SUITE),
   run_suite(op_boolean_equal_SUITE),
   run_suite(op_boolean_greater_than_SUITE),
   run_suite(op_boolean_less_than_SUITE),
   run_suite(op_concat_SUITE),
   run_suite(op_concatenate_SUITE),
   run_suite(op_date_equal_SUITE),
   run_suite(op_date_greater_than_SUITE),
   run_suite(op_date_less_than_SUITE),
   run_suite(op_dateTime_equal_SUITE),
   run_suite(op_dateTime_greater_than_SUITE),
   run_suite(op_dateTime_less_than_SUITE),
   run_suite(op_dayTimeDuration_greater_than_SUITE),
   run_suite(op_dayTimeDuration_less_than_SUITE),
   run_suite(op_divide_dayTimeDuration_SUITE),
   run_suite(op_divide_dayTimeDuration_by_dayTimeDuration_SUITE),
   run_suite(op_divide_yearMonthDuration_SUITE),
   run_suite(op_divide_yearMonthDuration_by_yearMonthDuration_SUITE),
   run_suite(op_duration_equal_SUITE),
   run_suite(op_except_SUITE),
   run_suite(op_gDay_equal_SUITE),
   run_suite(op_gMonth_equal_SUITE),
   run_suite(op_gMonthDay_equal_SUITE),
   run_suite(op_gYear_equal_SUITE),
   run_suite(op_gYearMonth_equal_SUITE),
   run_suite(op_hexBinary_equal_SUITE),
   run_suite(op_hexBinary_greater_than_SUITE),
   run_suite(op_hexBinary_less_than_SUITE),
   run_suite(op_intersect_SUITE),
   run_suite(op_is_same_node_SUITE),
   run_suite(op_multiply_dayTimeDuration_SUITE),
   run_suite(op_multiply_yearMonthDuration_SUITE),
   run_suite(op_node_after_SUITE),
   run_suite(op_node_before_SUITE),
   run_suite(op_NOTATION_equal_SUITE),
   run_suite(op_numeric_add_SUITE),
   run_suite(op_numeric_equal_SUITE),
   run_suite(op_numeric_divide_SUITE),
   run_suite(op_numeric_greater_than_SUITE),
   run_suite(op_numeric_integer_divide_SUITE),
   run_suite(op_numeric_less_than_SUITE),
   run_suite(op_numeric_mod_SUITE),
   run_suite(op_numeric_multiply_SUITE),
   run_suite(op_numeric_subtract_SUITE),
   run_suite(op_numeric_unary_minus_SUITE),
   run_suite(op_numeric_unary_plus_SUITE),
   run_suite(op_QName_equal_SUITE),
   run_suite(op_string_equal_SUITE),
   run_suite(op_string_greater_than_SUITE),
   run_suite(op_string_less_than_SUITE),
   run_suite(op_subtract_dates_SUITE),
   run_suite(op_subtract_dateTimes_SUITE),
   run_suite(op_subtract_dayTimeDuration_from_date_SUITE),
   run_suite(op_subtract_dayTimeDuration_from_dateTime_SUITE),
   run_suite(op_subtract_dayTimeDuration_from_time_SUITE),
   run_suite(op_subtract_dayTimeDurations_SUITE),
   run_suite(op_subtract_times_SUITE),
   run_suite(op_subtract_yearMonthDuration_from_date_SUITE),
   run_suite(op_subtract_yearMonthDuration_from_dateTime_SUITE),
   run_suite(op_subtract_yearMonthDurations_SUITE),
   run_suite(op_time_equal_SUITE),
   run_suite(op_time_greater_than_SUITE),
   run_suite(op_time_less_than_SUITE),
   run_suite(op_to_SUITE),
   run_suite(op_union_SUITE),
   run_suite(op_yearMonthDuration_greater_than_SUITE),
   run_suite(op_yearMonthDuration_less_than_SUITE),
   run_suite(op_same_key_SUITE);


run(Str) ->
   io:format("~p~n",[Str]),
   xqerl:run(Str).

run(Str, Options) ->
   io:format("~p~n",[Str]),
   xqerl:run(Str, Options).


handle_environment(List) ->
   Sources = proplists:get_value(sources, List) ,
   Schemas = proplists:get_value(schemas, List) ,
   Collections = proplists:get_value(collections, List) ,
   BaseUri = proplists:get_value('static-base-uri', List) ,
   Params = proplists:get_value(params, List) ,
   Vars = proplists:get_value(vars, List,[]) ,
   ContextItem = proplists:get_value('context-item', List,[]) ,
   Namespaces = proplists:get_value(namespaces, List) ,
   Resources = proplists:get_value(resources, List) ,
   Modules = proplists:get_value(modules, List) ,
   DecFormats = proplists:get_value('decimal-formats', List, []) ,

%% EmptyMap = #{namespaces => FinalState#state.known_ns,
%%              variables => [],
%%              var_tuple => [],
%%              iter => [],
%%              iter_loop => [],
%%              ctx_var => 'Ctx0',
%%              parameters => [],
%%              known_fx_sigs => FinalState#state.known_fx_sigs,
%%              'boundary-space' => FinalState#state.boundary_space,
%%              'construction-mode' => FinalState#state.construction_mode,
%%              'default-collation' => FinalState#state.default_collation,
%%              'base-uri' => ?atomic('xs:anyURI', FinalState#state.base_uri),
%%              'ordering-mode' => FinalState#state.order_mode,
%%              'empty-seq-order' => FinalState#state.empty_order,
%%              'copy-namespaces' => FinalState#state.copy_ns_mode,
%%              body => Mod#xqModule{prolog = ContextItem ++ VarFunPart, % just for now
%%                                   body = S1}
   _ = lists:foreach(
                  fun({File,Uri}) ->
                        case xqerl_ds:exists_res(Uri) of
                           true ->
                              ok;
                           _ ->
                              _ = xqerl_doc:read_text(File,Uri)
                        end
                  end, Resources),
   _ = lists:foreach(
         fun({Uri,CList}) ->
               All = lists:flatmap(
                 fun({src,FileName}) ->
                       case xqerl_ds:exists_doc(Uri) of
                          true ->
                             Doc1 = xqerl_doc:retrieve_doc(FileName),
                             Doc2 = #xqNode{doc = Doc1, node = xqerl_xdm:root(Doc1)},
                             [Doc2];
                          _ ->
                             _ = xqerl_doc:read_http(FileName),
                             Doc1 = xqerl_doc:retrieve_doc(FileName),
                             Doc2 = #xqNode{doc = Doc1, node = xqerl_xdm:root(Doc1)},
                             [Doc2]
                       end;
                    ({query,Qry}) ->
                       case xqerl:run(Qry) of
                          L when is_list(L) ->
                             L;
                          L ->
                             [L]
                       end
                 end, CList),
               %?dbg("All",All),
               if Uri == "" ->
                     xqerl_collection:put(default, All);
                  true ->
                     xqerl_collection:put(Uri, All)
               end
         end, Collections),
   {Sources1,EMap} = lists:mapfoldl(fun({File,Role,Uri},Map) ->
                              Uri2 = if Uri == [] ->
                                           File;
                                        true ->
                                           Uri
                                     end,
                              case xqerl_ds:exists_doc(Uri2) of
                                 true ->
                                    ok;
                                 _ ->
                                    try
                                    _ = xqerl_doc:read_http(File, Uri2)
                                    catch _:_ ->
                                             ok
                                    end,
                                    ok
                              end,                                    
                              if Role == "." ->
                                    R = xqerl:run("Q{http://www.w3.org/2005/xpath-functions}doc('"++Uri2++"')"),
                                    {"",Map#{context_item => R}};
                                 Role == "" ->
                                    {"",Map};
                                 true ->
                                    {"declare variable "++Role++" := Q{http://www.w3.org/2005/xpath-functions}doc('"++Uri2++"');\n",Map}
                              end
                        end, #{},Sources),
   Schemas1 = lists:map(fun({File,Uri}) ->
                              "import schema default element namespace '"++Uri++"' at '"++File++"';\n"
             end, Schemas),
   _ = lists:foreach(fun({File,_Uri}) ->
                           catch xqerl_module:compile(File)%,
                           %xqerl_module:load(Uri)
             end, Modules),
%%    _ = lists:foreach(fun({Uri,Docs}) ->
%%                            lists:foreach(fun(File) ->
%%                                                xqerl_doc:read_http(File)
%%                                          end, Docs),
%%                            xqerl_context:add_available_collection(Uri,Docs)
%%                      end, Collections),
   
   DecFormats1 = lists:map(fun({"",Values}) ->
                                 "declare default decimal-format \n" ++
                                 lists:flatmap(fun({K,V}) ->
                                                 " " ++ atom_to_list(K) ++ "='" ++
                                                   V ++ "' \n"
                                           end, Values) ++
                                   ";";
                              ({Name,Values}) ->
                                 "declare decimal-format " ++ Name ++ " \n" ++
                                 lists:flatmap(fun({K,V}) ->
                                                 " " ++ atom_to_list(K) ++ "='" ++
                                                   V ++ "' \n"
                                           end, Values) ++
                                   ";"
                           end, DecFormats),
   
   BaseUri1 = lists:map(fun({Value}) ->
                              "declare base-uri '"++Value++"';\n"
                        end, BaseUri),
   Params1 = lists:foldl(fun({Name,"",Value},Map) ->
                               Map#{Name => xqerl:run(Value)};
                          ({Name,As,Value},Map) ->
                             Map#{Name => xqerl:run(Value++" cast as "++As)}                             
                       end, EMap, Params),
   Namespaces1 = lists:foldl(fun({Uri,Prefix}, Map) ->
                                   Ns = maps:get(namespaces, Map, []),
                                   NewNs = lists:keystore(Prefix, 1, Ns, {Prefix,Uri}),
                                   Map#{namespaces => NewNs}
                           end, Params1, Namespaces),
   ContextItem1 = lists:foldl(fun("",Map) ->
                                    Map;
                                 (C,Map) ->
                                    R = xqerl:run(C),
                                    Map#{context_item => R}
                              end, Namespaces1, ContextItem),
   Namespaces2 = lists:map(fun({Uri,""}) ->
                                   "declare default element namespace '"++Uri++"';\n";
                              % block statically known 
                              ({"http://www.w3.org/2005/xpath-functions/math","math"}) -> "";
                              ({"http://www.w3.org/2005/xpath-functions/array","array"}) -> "";
                              ({"http://www.w3.org/2005/xpath-functions/map","map"}) -> "";
                              ({Uri,Prefix}) ->
                                 "declare namespace "++Prefix++" = '"++Uri++"';\n"
                           end, Namespaces),
   Vars1   = lists:map(fun({Name,"",Value}) ->
                             "declare variable $"++Name++" := "++Value++";\n";
                          ({Name,As,Value}) ->
                             "declare variable $"++Name++" as "++As++" := "++Value++";\n"
                       end, Vars),
   {BaseUri1++Sources1++Schemas1++DecFormats1++Namespaces2++Vars1, ContextItem1}.



