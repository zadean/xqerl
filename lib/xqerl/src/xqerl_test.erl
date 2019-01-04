%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2019 Zachary N. Dean  All Rights Reserved.
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

-export([assert/2,
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
         assert_serialization_match/3]).

-export([run/1,
         run_suite/1]).

-export([handle_environment/1]).
-export([load_qt3_xml/0]).

-include("xqerl.hrl").

-define(LB(L), list_to_binary(L)).

%% assert functions return either true or {false, Result}

%% assert                 (: run test query with result as variable == true :)
assert(Result, QueryString) ->
   Type = if is_list(Result) ->
                " as item()*";
             is_map(Result) andalso is_map_key(nk, Result) ->
                " as node()";
             is_map(Result) ->
                " as map(*)";
             element(1,Result) == array ->
                " as array(*)";
             true ->
                " as item()*"
          end,
   NewQueryString = "declare variable $result" ++ Type ++ 
                    " external; " ++ QueryString,
   case catch xqerl:run(NewQueryString, #{<<"result">> => Result}) of
      {'EXIT',Res} ->
         ?dbg("false",{false, {Res,Result,QueryString}}),
         {false, {Res,Result,QueryString}};
      #xqError{} = Res ->
         ?dbg("false",{false, {Res,Result,QueryString}}),
         {false, {Res,Result,QueryString}};
      #{nk := _} ->
         true;
      [] ->
         {false,[]};
      Res1 ->
         StrVal = string_value(Res1),
         if StrVal == <<"true">> ->
               true;
            StrVal == <<"false">> ->
               ?dbg("false",{false, {assert,Res1,Result,QueryString}}),
               {false, {assert,Res1,QueryString}};
            StrVal == <<"">> ->
               ?dbg("false",{false, {assert,Res1,Result,QueryString}}),
               {false, {assert,Res1,QueryString}};
            true ->
               true
         end
   end.

%% assert_empty           (: string value of result == [] :)
assert_empty(Result) ->
   StrVal = string_value(Result),
   if StrVal == [];
      StrVal == <<>> ->
         true;
      true ->
         {false, {assert_empty,StrVal}}
   end.
%% assert_type            (: result instance of type :)
assert_type(Result, TypeString) ->
   NewQueryString = "declare variable $result as item()* external; "
                    "($result) instance of " ++ TypeString,
   case catch xqerl:run(NewQueryString, #{<<"result">> => Result}) of
      {'EXIT',Res} ->
         {false, {assert_type,Res}};
      Res1 ->
         StrVal = string_value(Res1),
         if StrVal == <<"true">> ->
               true;
            true ->
               {false, {assert_type,Res1,TypeString}}
         end
   end.
%% assert_xml             (: fn:deep-equal(result, run test query) :)
assert_xml(Result, {file, FileLoc}) ->
   {ok,FileBin} = file:read_file(FileLoc),
   assert_xml(Result, normalize_lines(FileBin, <<>>));
assert_xml(Result, QueryString) when is_list(QueryString) ->
   assert_xml(Result, unicode:characters_to_binary(QueryString));
assert_xml(#xqError{} = Err, QueryString) ->
   {false, {assert_xml,Err,QueryString}};
assert_xml(Result, QueryString0) ->
   QueryString = xqerl_lib:trim(QueryString0),
   ResXml = if is_binary(Result) ->
                  Result;
               true ->
                  xqerl_node:to_xml(Result)
            end,
   if ResXml == QueryString -> % fragments sometimes only work this way
         true;
      true ->
         try
            ResXml2 = xqerl_fn:'parse-xml-fragment'(
                        #{'base-uri' => <<>>}, 
                        #xqAtomicValue{type = 'xs:string', 
                                       value = <<"<x>",ResXml/binary,"</x>">>}),
            %?dbg("ResXml2",ResXml2),
            QueryString2 =
              case catch xqerl_fn:'parse-xml-fragment'(
                             #{'base-uri' => <<>>}, 
                             #xqAtomicValue{type = 'xs:string', 
                                            value = <<"<x>",QueryString/binary,"</x>">>})
                 of
                 {'EXIT',#xqError{}} ->
                    Mod = xqerl_code_server:compile("xqerl_main", unicode:characters_to_list(<<"document{<x>",QueryString/binary,"</x>}">>)),
                    R = Mod:main(#{}),
                    ?dbg("fallback to run",R),
                    R;
                 Other ->
                    Other
              end,
            Res1 = xqerl_node:nodes_equal(ResXml2, QueryString2, codepoint),
            StrVal = string_value(Res1),
            %?dbg("Res1",Res1),
            %?dbg("StrVal",StrVal),
            if StrVal == <<"true">> ->
                  true;
               true ->
                  {false, {assert_xml,ResXml,QueryString}}
            end
         catch 
            _:_:Stack ->
               ?dbg("Stack",Stack),
               {false, {assert_xml,ResXml,QueryString}}
         end
   end.
assert_eq(Result, TypeString) ->
   NewQueryString = "declare variable $result as item()* external; "
                    "$result = " ++ TypeString,
   case catch xqerl:run(NewQueryString, #{<<"result">> => Result}) of
      {'EXIT',Res} ->
         ?dbg("Res",Res),
         {false, Res};
      Res1 ->
         %?dbg("Res1",Res1),
         StrVal = string_value(Res1),
         if StrVal == <<"true">> ->
               true;
            true ->
               %?dbg("Result",Result),
               {false, {assert_eq,Result,TypeString}}
         end
   end.
%% assert_deep_eq         (: fn:deep-equal(result, run test query) :)
assert_deep_eq(Result, QueryString) ->
   NewQueryString = "declare variable $result as item()* external; "
                    "fn:deep-equal($result,(" ++ QueryString ++ "))",
   case catch xqerl:run(NewQueryString, #{<<"result">> => Result}) of
      {'EXIT',Res} ->
         {false, Res};
      Res1 ->
         StrVal = string_value(Res1),
         if StrVal == <<"true">> ->
               true;
            true ->
               {false, {assert_deep_eq,Result,QueryString}}
         end
   end.
%% assert_false           (: string value of result == 'true' :)
assert_false(Result) ->
   StrVal = string_value(Result),
   if StrVal == <<"false">> ->
         true;
      true ->
         {false, {assert_false,Result}}
   end.
%% assert_true            (: string value of result == 'false' :)
assert_true(Result) ->
   StrVal = string_value(Result),
   if StrVal == <<"true">> ->
         true;
      true ->
         {false, {assert_true,Result}}
   end.
%% assert_permutation     (: take_while member(result, run test query) == [] :)
%% the result should be a list of atomic values, the permute list also
assert_permutation(Result, PermuteString) ->
   QueryString = "(" ++ PermuteString ++ ")",
   case catch xqerl:run(QueryString, #{}) of
      {'EXIT',Res} ->
         {false, Res};
      Res1 ->
         Rest = lists:foldl(
                  fun(R,Acc) ->
                        Fnd = [A || A <- Acc, 
                                    (catch xqerl_operators:equal(R, A)) == 
                                      #xqAtomicValue{type = 'xs:boolean',
                                                     value = true} orelse
                                      (xqerl_types:value(A) == nan andalso 
                                       xqerl_types:value(R) == nan)
                              ],
                        case Fnd of
                           [] ->
                              Acc;
                           [H|_] ->
                              Acc -- [H]
                        end
                  end, Res1, ensure_list(Result)),
         if Rest == [] ->
               true;
            true ->
               {false, {assert_permutation,Rest,PermuteString}}
         end
   end.
%% assert_count           (: fn:count(result) == cnt :)
assert_count(Result, TypeString) ->
   Cnt = list_to_integer(TypeString),
   if is_list(Result), length(Result) == Cnt ->
         true;
      Cnt == 1 ->
         true;
      true ->
         {false, {assert_count,Result,TypeString}}
   end.
%% assert_string_value    (: string value of result == Str :)
assert_string_value(Result, String) when is_list(String) ->
   assert_string_value(Result, unicode:characters_to_binary(String));
assert_string_value(Result, String) ->
   StrVal = string_value(Result),
   if StrVal == String ->
         true;
      true ->
         {false, {assert_string_value,StrVal,String}}
   end.

assert_norm_string_value(Result, String) when is_list(String) ->
   assert_norm_string_value(Result, unicode:characters_to_binary(String));
assert_norm_string_value(Result, String) ->
   StrVal = xqerl_lib:normalize_spaces(
              xqerl_lib:normalize_string(
                string_value(Result))),
   if StrVal == String ->
         true;
      true ->
         {false, {assert_norm_string_value,StrVal,String}}
   end.

assert_serialization_match(Result, SchemaRegex, Flags) ->
   %io:format("~p~n",[Result]),
   Norm = if Flags == <<"q">> ->
                {ok,Norm0} = xs_regex:normalize(SchemaRegex),
                Norm0;
             true ->
                SchemaRegex
          end,
   {_, RE} = xs_regex:compile(Norm, Flags),
   case catch re:run(string_value(Result), RE) of
      {match,_} ->
         true;
      _ ->
         {false, {assert_serialization_match,Result,SchemaRegex}}      
   end.
   
%% assert_error
assert_error(Result, ErrorCode) when is_list(ErrorCode) ->
   assert_error(Result, list_to_binary(ErrorCode));
assert_error(Result, ErrorCode) ->
   case Result of 
      #xqError{name = 
                 #xqAtomicValue{value = 
                                  #qname{namespace = ErrNs, 
                                         local_name = Err}}} ->
         if Err == ErrorCode;
            ErrorCode == <<"*">> ->
               true;
            true ->
               case <<"Q{}",Err/binary>> == ErrorCode andalso ErrNs == 'no-namespace'
                  orelse <<"Q{",ErrNs/binary,"}",Err/binary>> == ErrorCode 
               of
                  true ->
                     true;
                  _ ->
                     {false,{Err,ErrorCode}}
               end
         end;
      _ ->
         %StrVal = string_value(Result),
         {false, {assert_error,Result,ErrorCode}}
   end.

% normalize end-of-line characters 
normalize_lines(<<13,10,T/binary>>, Acc) ->
   normalize_lines(T, <<Acc/binary,10>>);
normalize_lines(<<13,T/binary>>, Acc) ->
   normalize_lines(T, <<Acc/binary,10>>);
normalize_lines(<<H,T/binary>>, Acc) ->
   normalize_lines(T, <<Acc/binary,H>>);
normalize_lines(<<>>, Acc) -> Acc.


string_value(List) when is_list(List) andalso not is_integer(hd(List)) ->
   NewList = lists:map(fun(I) ->
                             xqerl_seq3:singleton(I)
                       end, List),
   Seq = xqerl_seq3:from_list(NewList),
   xqerl_types:string_value(Seq);
string_value(Seq) when is_binary(Seq) ->
   Seq;
string_value(Seq) ->
   xqerl_types:string_value(Seq).

run_suite(Suite) ->
   LibDir = code:lib_dir(xqerl),
   TestDir = filename:absname_join(LibDir, "../../test"),
   LogDir = filename:join(TestDir, "logs"),
   %_ = delete_all_docs(),
   ct:run_test([{suite, Suite},
                {dir, TestDir},
                {logdir, LogDir},
                {logopts,[no_src]}]).

ensure_list(L) when is_list(L) -> L;
ensure_list(L) -> [L].   

run(all) ->
   run(prod),
   run(app),
   run(misc),
   run(fn),
   run(fn2),
   run(map),
   run(op),
   run(array),
   run(math);
run(app) ->
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
   run_suite(app_spec_examples_SUITE);
run(math) ->
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
   run_suite(math_tan_SUITE);
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
   run_suite(fn_matches_SUITE);
run(fn2) ->
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
   run_suite(fn_string_to_codepoints_SUITE),
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

get_value(Key, List) ->
   proplists:get_value(Key, List).
get_value(Key, List, Default) ->
   proplists:get_value(Key, List, Default).


handle_environment([]) -> {"",#{}};
handle_environment(List) ->
   TestDir = application:get_env(
               xqerl, 
               test_dir, 
               filename:join(code:lib_dir(xqerl),"test")),
   _ = file:set_cwd([TestDir]),
   Sources     = get_value(sources, List) ,
   _Schemas    = get_value(schemas, List) ,
   Collections = get_value(collections, List) ,
   BaseUri     = get_value('static-base-uri', List) ,
   Params      = get_value(params, List) ,
   Vars        = get_value(vars, List,[]) ,
   ContextItem = get_value('context-item', List,[]) ,
   Namespaces  = get_value(namespaces, List) ,
   Resources   = get_value(resources, List) ,
   Modules     = get_value(modules, List) ,
   DecFormats  = get_value('decimal-formats', List, []) ,
   DeCollation = get_value('default-collation', List, undefined) ,
   
   Uniq = integer_to_binary(erlang:unique_integer()),
   DefaultCollection = <<"http://example.org/default",Uniq/binary>>,
   
   Map00 = #{default_collection => 
                    #xqAtomicValue{type = 'xs:string',
                                   value = DefaultCollection}},
   Map1 = if DeCollation == undefined ->
                Map00;
             true ->
                Map00#{'default-collation' => ?LB(DeCollation)}
          end,
   _ = lists:foreach(
                  fun({_MediaType,File,Uri}) ->
                        %?dbg("MediaType",{MediaType,Uri}),
                        case xqldb_dml:exists_resource(Uri) of
                           true ->
                              ok;
                           false ->
                              {ok,Bin} = file:read_file(File),
                              xqldb_dml:insert_resource(Uri, Bin)
                        end;
                     ({File,Uri}) -> 
                        case xqldb_dml:exists_resource(Uri) of
                           true ->
                              ok;
                           false ->
                              {ok,Bin} = file:read_file(File),
                              xqldb_dml:insert_resource(Uri, Bin)
                        end
                  end, Resources),
   _ = lists:foreach(
         fun({Uri0,CList}) ->
               CollectionUri = case ?LB(Uri0) of
                                  <<>> ->
                                     DefaultCollection;
                                  Other ->
                                     Other
                               end,
               _ = xqldb_dml:delete_collection(CollectionUri),
               case CList of
                  [{query,Base,Q}] ->
                     Opts = 
                       #{'base-uri' => 
                           #xqAtomicValue{type = 'xs:anyURI',
                                          value = ?LB(xqldb_lib:filename_to_uri(Base++"/dummy.xq"))}},
                     QVals = case xqerl:run(Q,Opts) of
                                L when is_list(L) -> L;
                                L -> [L]
                             end,
                     BaseNames = [integer_to_binary(I + 1000) || 
                                    I <- lists:seq(1, length(QVals))],
                     Zipped = lists:zip(BaseNames, QVals),
                     [begin
                         ItemUri = xqldb_uri:join(CollectionUri, BaseName),
                         xqldb_dml:insert_item(ItemUri, Item)
                      end
                      || {BaseName, Item} <- Zipped],
                     ok;
                  _ ->
                     _ = [
                          begin
                              F = xqldb_lib:filename_to_uri(?LB(FileName0)),
                              {_,BaseName} = xqldb_uri:split_uri(F),
                              DocUri = xqldb_uri:join(CollectionUri, BaseName),
                              case xqldb_dml:exists_doc(DocUri) of
                                 true ->
                                    ok;
                                 false ->
                                    xqldb_dml:insert_doc(DocUri, FileName0)
                              end
                           end || {src,FileName0} <- CList],
                     ok
               end
         end, Collections),
   {Sources1,EMap} = 
     lists:mapfoldl(
       fun({File0,Role,Uri0},Map) ->
            FileUri = unicode:characters_to_binary(xqldb_uri:filename_to_uri(File0)),
            Uri2 = if Uri0 == [] ->
                         FileUri;
                      Uri0 == File0 ->
                         FileUri;
                      true ->
                         unicode:characters_to_binary(Uri0)
                   end,
            case xqldb_dml:exists_doc(Uri2) of
               true -> ok;
               false ->
                  catch xqldb_dml:insert_doc(Uri2, File0)
            end,
            %?dbg("File0",File0),
            %?dbg("Uri2 ",Uri2),
            %?dbg("Role",Role),
            if Role == "." ->
                  
                  Doc = xqldb_dml:select_doc(Uri2),
                  {"",Map#{'context-item' => {Doc,1}}};
               Role == "" ->
                  {"",Map};
               true ->
                  {"declare variable " ++ Role ++ 
                    " := Q{http://www.w3.org/2005/xpath-functions}doc('" ++
                   unicode:characters_to_list(Uri2) ++ "');\n", 
                   Map}
            end
      end, Map1,Sources),
   Schemas1 = "",
%%    Schemas1 = lists:map(fun({File,Uri}) ->
%%                               "import schema default element namespace '" ++
%%                                 Uri ++ "' at '" ++ File ++ "';\n"
%%              end, Schemas),
   if Modules =/= [] ->
         xqerl_code_server:unload(all);
      true -> ok
   end,
   ModulesP = [{File,unicode:characters_to_binary("Q{"++Uri++"}")} || 
               {File,Uri} <- Modules],
   _ = lists:foreach(fun({File,_Uri}) ->
                           catch xqerl_code_server:compile(File,[],ModulesP)
             end, Modules),
   
   DecFormats1 = lists:map(
                   fun({"",Values}) ->
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
   
   % these can be complex queries, so compile/run instead of just exec
   Params1 = lists:foldl(fun({Name,"",Value},Map) ->
                               Mod = xqerl_code_server:compile("param", Value),
                               Out = Map#{?LB(Name) => Mod:main(#{})},
                               code:purge(Mod), code:delete(Mod), code:purge(Mod),
                               Out;
                          ({Name,As,Value},Map) ->
                             Mod = xqerl_code_server:compile("param", Value++" cast as "++As),
                             Out = Map#{?LB(Name) => Mod:main(#{})},
                             code:purge(Mod), code:delete(Mod), code:purge(Mod),
                             Out                             
                       end, EMap, Params),
   Namespaces1 = lists:foldl(fun({Uri,Prefix}, Map) ->
                                   Ns = maps:get(namespaces, Map, []),
                                   NewNs = lists:keystore(?LB(Prefix), 1, Ns, 
                                                          {?LB(Prefix),?LB(Uri)}),
                                   Map#{namespaces => NewNs}
                           end, Params1, Namespaces),
   ContextItem1 = lists:foldl(fun("",Map) ->
                                    Map;
                                 (C,Map) ->
                                    R = xqerl:run(C),
                                    Map#{'context-item' => {R,1}}
                              end, Namespaces1, ContextItem),
   BaseUri1 = case BaseUri of
                 [{[]}] -> % undefined
                    ContextItem1#{'base-uri' => #xqAtomicValue{type = 'xs:anyURI', value = <<"#UNDEFINED">>}};
                 [{Buv}] ->
                    ContextItem1#{'base-uri' => #xqAtomicValue{type = 'xs:anyURI', value = ?LB(Buv)}};
                 [] ->
                    ContextItem1
              end,
   %?dbg("BaseUri1",BaseUri1),
   Namespaces2 = lists:map(
                   fun({Uri,""}) ->
                         "declare default element namespace '" ++
                           Uri ++ "';\n";
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
   {Sources1++Schemas1++DecFormats1++Namespaces2++Vars1, BaseUri1}.

load_qt3_xml() ->
   TestDir = filename:join(
               filename:dirname(
                 filename:dirname(code:lib_dir(xqerl))),"test/QT3-test-suite"),
   Catalog = filename:join(TestDir, "catalog.xml"),
   Tests = [filename:join(TestDir, F) || F <- qt3_files()],
   _ = [maybe_insert_file(N) || N <- [Catalog|Tests] ],
   ok.

maybe_insert_file(Filename) ->
   Uri = xqldb_uri:filename_to_uri(unicode:characters_to_binary(Filename)),
   case xqldb_dml:exists_doc(Uri) of
      true -> ok;
      false ->
         catch xqldb_dml:insert_doc(Uri, Filename)
   end.

qt3_files() ->
  ["fn/abs.xml",
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
   "app/fo-spec-examples.xml"].
