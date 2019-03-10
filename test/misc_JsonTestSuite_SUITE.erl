-module('misc_JsonTestSuite_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['y_array_empty-string'/1]).
-export(['n_number_minus_sign_with_trailing_garbage'/1]).
-export(['n_object_with_single_string'/1]).
-export(['i_number_too_big_pos_int'/1]).
-export(['y_string_null_escape'/1]).
-export(['i_string_overlong_sequence_6_bytes'/1]).
-export(['y_array_null'/1]).
-export(['n_object_missing_value'/1]).
-export(['i_string_incomplete_surrogates_escape_valid'/1]).
-export(['n_structure_open_object_close_array'/1]).
-export(['i_number_real_pos_overflow'/1]).
-export(['i_string_lone_utf8_continuation_byte'/1]).
-export(['n_number_-2.'/1]).
-export(['n_structure_unclosed_array'/1]).
-export(['n_string_escape_x'/1]).
-export(['i_string_UTF-16LE_with_BOM'/1]).
-export(['n_number_invalid-utf-8-in-bigger-int'/1]).
-export(['n_number_invalid-utf-8-in-exponent'/1]).
-export(['y_string_1_2_3_bytes_UTF-8_sequences'/1]).
-export(['n_single_space'/1]).
-export(['y_number_real_exponent'/1]).
-export(['i_number_real_neg_overflow'/1]).
-export(['y_object'/1]).
-export(['i_string_iso_latin_1'/1]).
-export(['n_object_unquoted_key'/1]).
-export(['n_array_a_invalid_utf8'/1]).
-export(['y_number_minus_zero'/1]).
-export(['n_object_several_trailing_commas'/1]).
-export(['y_number_double_close_to_zero'/1]).
-export(['n_structure_single_eacute'/1]).
-export(['n_structure_open_object_comma'/1]).
-export(['y_string_allowed_escapes'/1]).
-export(['n_array_just_minus'/1]).
-export(['y_array_empty'/1]).
-export(['n_structure_open_object_open_array'/1]).
-export(['n_string_invalid_unicode_escape'/1]).
-export(['n_number_9.e+'/1]).
-export(['n_string_incomplete_escape'/1]).
-export(['y_structure_string_empty'/1]).
-export(['y_object_empty'/1]).
-export(['y_string_pi'/1]).
-export(['n_structure_unclosed_array_unfinished_false'/1]).
-export(['y_string_escaped_noncharacter'/1]).
-export(['n_number_with_leading_zero'/1]).
-export(['y_number_int_with_exp'/1]).
-export(['n_number_1.0e+'/1]).
-export(['n_number_-NaN'/1]).
-export(['n_string_unescaped_tab'/1]).
-export(['n_structure_ascii-unicode-identifier'/1]).
-export(['n_string_incomplete_surrogate'/1]).
-export(['n_array_items_separated_by_semicolon'/1]).
-export(['i_string_invalid_surrogate'/1]).
-export(['n_number_infinity'/1]).
-export(['n_structure_comma_instead_of_closing_brace'/1]).
-export(['y_object_duplicated_key_and_value'/1]).
-export(['n_string_with_trailing_garbage'/1]).
-export(['n_number_0.1.2'/1]).
-export(['y_string_last_surrogates_1_and_2'/1]).
-export(['y_string_accepted_surrogate_pair'/1]).
-export(['i_string_1st_valid_surrogate_2nd_invalid'/1]).
-export(['y_structure_lonely_false'/1]).
-export(['n_structure_uescaped_LF_before_string'/1]).
-export(['y_number_real_capital_e_pos_exp'/1]).
-export(['n_number_Inf'/1]).
-export(['n_array_incomplete'/1]).
-export(['i_object_key_lone_2nd_surrogate'/1]).
-export(['i_string_utf16BE_no_BOM'/1]).
-export(['y_string_unicode'/1]).
-export(['n_string_accentuated_char_no_quotes'/1]).
-export(['y_structure_true_in_array'/1]).
-export(['n_number_.2e-3'/1]).
-export(['n_structure_open_array_comma'/1]).
-export(['y_string_unicode_U+1FFFE_nonchar'/1]).
-export(['y_string_backslash_and_u_escaped_zero'/1]).
-export(['y_string_three-byte-utf-8'/1]).
-export(['y_string_backslash_doublequotes'/1]).
-export(['n_array_missing_value'/1]).
-export(['n_object_trailing_comma'/1]).
-export(['n_object_two_commas_in_a_row'/1]).
-export(['n_structure_no_data'/1]).
-export(['n_structure_single_star'/1]).
-export(['y_string_uescaped_newline'/1]).
-export(['n_number_invalid-negative-real'/1]).
-export(['n_structure_lone-invalid-utf-8'/1]).
-export(['n_array_incomplete_invalid_value'/1]).
-export(['n_number_0e'/1]).
-export(['n_number_invalid-utf-8-in-int'/1]).
-export(['n_string_invalid_utf8_after_escape'/1]).
-export(['n_array_number_and_comma'/1]).
-export(['n_structure_unclosed_object'/1]).
-export(['n_number_starting_with_dot'/1]).
-export(['y_number_after_space'/1]).
-export(['n_structure_whitespace_formfeed'/1]).
-export(['n_number_2.e3'/1]).
-export(['y_number_negative_one'/1]).
-export(['n_object_key_with_single_quotes'/1]).
-export(['n_number_U+FF11_fullwidth_digit_one'/1]).
-export(['y_structure_lonely_int'/1]).
-export(['n_structure_unclosed_array_partial_null'/1]).
-export(['i_number_huge_exp'/1]).
-export(['n_structure_object_with_trailing_garbage'/1]).
-export(['i_string_UTF8_surrogate_U+D800'/1]).
-export(['y_structure_lonely_negative_real'/1]).
-export(['n_object_non_string_key'/1]).
-export(['n_number_1.0e-'/1]).
-export(['n_number_++'/1]).
-export(['y_string_unicode_escaped_double_quote'/1]).
-export(['n_object_garbage_at_end'/1]).
-export(['y_number_real_capital_e'/1]).
-export(['y_string_double_escape_a'/1]).
-export(['n_number_-01'/1]).
-export(['y_number_real_fraction_exponent'/1]).
-export(['n_array_number_and_several_commas'/1]).
-export(['y_string_comments'/1]).
-export(['n_structure_UTF8_BOM_no_data'/1]).
-export(['n_string_single_doublequote'/1]).
-export(['i_number_too_big_neg_int'/1]).
-export(['y_structure_lonely_null'/1]).
-export(['y_string_space'/1]).
-export(['n_object_lone_continuation_byte_in_key_and_trailing_comma'/1]).
-export(['y_string_uEscape'/1]).
-export(['y_array_with_1_and_newline'/1]).
-export(['n_structure_end_array'/1]).
-export(['n_string_unicode_CapitalU'/1]).
-export(['n_array_extra_comma'/1]).
-export(['n_number_with_alpha_char'/1]).
-export(['n_string_backslash_00'/1]).
-export(['i_string_1st_surrogate_but_2nd_missing'/1]).
-export(['n_structure_whitespace_U+2060_word_joiner'/1]).
-export(['n_structure_capitalized_True'/1]).
-export(['n_array_star_inside'/1]).
-export(['n_object_trailing_comment_slash_open'/1]).
-export(['n_array_1_true_without_comma'/1]).
-export(['y_number_0e+1'/1]).
-export(['y_object_with_newlines'/1]).
-export(['n_number_with_alpha'/1]).
-export(['n_structure_open_array_apostrophe'/1]).
-export(['n_structure_object_unclosed_no_value'/1]).
-export(['n_number_0_capital_E'/1]).
-export(['y_number_real_capital_e_neg_exp'/1]).
-export(['n_incomplete_true'/1]).
-export(['n_array_double_extra_comma'/1]).
-export(['y_structure_lonely_string'/1]).
-export(['n_number_+Inf'/1]).
-export(['n_number_hex_2_digits'/1]).
-export(['n_structure_close_unopened_array'/1]).
-export(['n_object_comma_instead_of_colon'/1]).
-export(['n_structure_open_object_string_with_apostrophes'/1]).
-export(['y_number_negative_int'/1]).
-export(['i_string_inverted_surrogates_U+1D11E'/1]).
-export(['n_structure_object_with_comment'/1]).
-export(['n_string_incomplete_surrogate_escape_invalid'/1]).
-export(['i_string_utf16LE_no_BOM'/1]).
-export(['i_string_overlong_sequence_6_bytes_null'/1]).
-export(['n_object_trailing_comment_open'/1]).
-export(['y_array_ending_with_newline'/1]).
-export(['n_array_colon_instead_of_comma'/1]).
-export(['n_object_trailing_comment_slash_open_incomplete'/1]).
-export(['y_number_simple_real'/1]).
-export(['n_number_2.e+3'/1]).
-export(['n_array_unclosed_with_object_inside'/1]).
-export(['n_structure_array_trailing_garbage'/1]).
-export(['i_string_truncated-utf-8'/1]).
-export(['y_string_unicode_U+200B_ZERO_WIDTH_SPACE'/1]).
-export(['n_structure_double_array'/1]).
-export(['y_string_u+2028_line_sep'/1]).
-export(['n_number_neg_int_starting_with_zero'/1]).
-export(['n_array_newlines_unclosed'/1]).
-export(['y_structure_lonely_true'/1]).
-export(['n_object_missing_colon'/1]).
-export(['y_string_two-byte-utf-8'/1]).
-export(['y_string_unicodeEscapedBackslash'/1]).
-export(['i_string_overlong_sequence_2_bytes'/1]).
-export(['n_object_missing_semicolon'/1]).
-export(['y_object_simple'/1]).
-export(['y_string_unicode_U+2064_invisible_plus'/1]).
-export(['n_number_minus_space_1'/1]).
-export(['n_string_unescaped_crtl_char'/1]).
-export(['y_string_escaped_control_character'/1]).
-export(['y_string_simple_ascii'/1]).
-export(['y_string_unicode_U+10FFFE_nonchar'/1]).
-export(['n_structure_open_object'/1]).
-export(['y_string_utf8'/1]).
-export(['n_string_escaped_ctrl_char_tab'/1]).
-export(['i_number_double_huge_neg_exp'/1]).
-export(['n_number_invalid+-'/1]).
-export(['n_structure_100000_opening_arrays'/1]).
-export(['n_string_leading_uescaped_thinspace'/1]).
-export(['n_number_0.3e'/1]).
-export(['n_structure_lone-open-bracket'/1]).
-export(['y_string_unescaped_char_delete'/1]).
-export(['n_structure_object_followed_by_closing_object'/1]).
-export(['n_number_0e+'/1]).
-export(['n_structure_unicode-identifier'/1]).
-export(['n_number_1eE2'/1]).
-export(['y_object_extreme_numbers'/1]).
-export(['n_number_+1'/1]).
-export(['y_object_long_strings'/1]).
-export(['n_incomplete_null'/1]).
-export(['y_number_negative_zero'/1]).
-export(['n_multidigit_number_then_00'/1]).
-export(['n_string_1_surrogate_then_escape_u'/1]).
-export(['y_array_with_leading_space'/1]).
-export(['n_array_double_comma'/1]).
-export(['y_structure_trailing_newline'/1]).
-export(['n_array_invalid_utf8'/1]).
-export(['n_object_repeated_null_null'/1]).
-export(['n_object_bad_value'/1]).
-export(['i_number_pos_double_huge_exp'/1]).
-export(['y_string_surrogates_U+1D11E_MUSICAL_SYMBOL_G_CLEF'/1]).
-export(['n_number_2.e-3'/1]).
-export(['y_object_string_unicode'/1]).
-export(['n_string_no_quotes_with_bad_escape'/1]).
-export(['n_number_neg_with_garbage_at_end'/1]).
-export(['n_string_1_surrogate_then_escape_u1'/1]).
-export(['n_array_spaces_vertical_tab_formfeed'/1]).
-export(['n_structure_open_array_object'/1]).
-export(['n_structure_open_object_open_string'/1]).
-export(['n_object_non_string_key_but_huge_number_instead'/1]).
-export(['i_number_real_underflow'/1]).
-export(['n_object_single_quote'/1]).
-export(['n_number_0.3e+'/1]).
-export(['n_number_real_garbage_after_e'/1]).
-export(['n_string_escaped_backslash_bad'/1]).
-export(['y_number_0e1'/1]).
-export(['y_number_real_pos_exponent'/1]).
-export(['y_string_double_escape_n'/1]).
-export(['y_array_arraysWithSpaces'/1]).
-export(['y_array_heterogeneous'/1]).
-export(['y_string_with_del_character'/1]).
-export(['n_object_with_trailing_garbage'/1]).
-export(['y_array_with_several_null'/1]).
-export(['y_number_simple_int'/1]).
-export(['n_number_expression'/1]).
-export(['n_structure_open_array_string'/1]).
-export(['n_object_missing_key'/1]).
-export(['n_string_1_surrogate_then_escape_u1x'/1]).
-export(['n_structure_trailing_%23'/1]).
-export(['n_structure_array_with_extra_array_close'/1]).
-export(['y_object_empty_key'/1]).
-export(['y_string_nonCharacterInUTF-8_U+FFFF'/1]).
-export(['i_number_very_big_negative_int'/1]).
-export(['i_string_invalid_lonely_surrogate'/1]).
-export(['y_object_escaped_null_in_key'/1]).
-export(['n_structure_angle_bracket_.'/1]).
-export(['y_string_accepted_surrogate_pairs'/1]).
-export(['i_structure_500_nested_arrays'/1]).
-export(['y_number_real_neg_exp'/1]).
-export(['y_structure_whitespace_array'/1]).
-export(['y_string_in_array_with_leading_space'/1]).
-export(['y_string_nonCharacterInUTF-8_U+10FFFF'/1]).
-export(['n_object_bracket_key'/1]).
-export(['i_number_neg_int_huge_exp'/1]).
-export(['n_number_NaN'/1]).
-export(['n_string_single_string_no_double_quotes'/1]).
-export(['n_number_neg_real_without_int_part'/1]).
-export(['n_string_unescaped_newline'/1]).
-export(['y_array_with_trailing_space'/1]).
-export(['i_string_not_in_unicode_range'/1]).
-export(['n_string_single_quote'/1]).
-export(['n_number_1_000'/1]).
-export(['y_object_duplicated_key'/1]).
-export(['n_string_incomplete_escaped_character'/1]).
-export(['n_object_no-colon'/1]).
-export(['y_string_one-byte-utf-8'/1]).
-export(['y_string_unicode_2'/1]).
-export(['n_object_trailing_comment'/1]).
-export(['y_string_unicode_U+FDD0_nonchar'/1]).
-export(['n_incomplete_false'/1]).
-export(['n_structure_null-byte-outside-string'/1]).
-export(['i_structure_UTF-8_BOM_empty_object'/1]).
-export(['y_string_nbsp_uescaped'/1]).
-export(['n_number_.-1'/1]).
-export(['n_structure_number_with_trailing_garbage'/1]).
-export(['n_number_real_without_fractional_part'/1]).
-export(['i_string_invalid_utf-8'/1]).
-export(['i_string_incomplete_surrogate_pair'/1]).
-export(['n_string_invalid_backslash_esc'/1]).
-export(['n_number_minus_infinity'/1]).
-export(['n_array_unclosed'/1]).
-export(['i_string_incomplete_surrogate_and_escape_valid'/1]).
-export(['y_array_false'/1]).
-export(['n_number_real_with_invalid_utf8_after_e'/1]).
-export(['y_string_unicode_U+FFFE_nonchar'/1]).
-export(['n_structure_open_open'/1]).
-export(['n_number_1.0e'/1]).
-export(['n_array_unclosed_trailing_comma'/1]).
-export(['n_array_comma_and_number'/1]).
-export(['n_string_1_surrogate_then_escape'/1]).
-export(['n_structure_unclosed_array_unfinished_true'/1]).
-export(['n_string_escaped_emoji'/1]).
-export(['n_array_comma_after_close'/1]).
-export(['y_string_reservedCharacterInUTF-8_U+1BFFF'/1]).
-export(['n_structure_U+2060_word_joined'/1]).
-export(['n_number_0.e1'/1]).
-export(['n_array_unclosed_with_new_lines'/1]).
-export(['n_structure_angle_bracket_null'/1]).
-export(['n_object_emoji'/1]).
-export(['n_object_unterminated-value'/1]).
-export(['n_structure_array_with_unclosed_string'/1]).
-export(['y_string_u+2029_par_sep'/1]).
-export(['n_object_double_colon'/1]).
-export(['y_object_basic'/1]).
-export(['i_string_lone_second_surrogate'/1]).
-export(['n_structure_open_array_open_string'/1]).
-export(['n_array_extra_close'/1]).
-export(['i_string_UTF-8_invalid_sequence'/1]).
-export(['n_array_inner_array_no_comma'/1]).
-export(['n_string_start_escape_unclosed'/1]).
-export(['n_string_invalid-utf-8-in-escape'/1]).
-export(['n_structure_open_array_open_object'/1]).
-export(['n_number_hex_1_digit'/1]).
-export(['n_structure_incomplete_UTF8_BOM'/1]).
-export(['y_string_in_array'/1]).
-export(['n_number_-1.0.'/1]).
-export(['n_number_0_capital_E+'/1]).
-export(['y_number'/1]).
-export(['n_array_just_comma'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "misc"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}, 
   {group, group_3}, 
   {group, group_4}, 
   {group, group_5}, 
   {group, group_6}, 
   {group, group_7}, 
   {group, group_8}, 
   {group, group_9}, 
   {group, group_10}, 
   {group, group_11}, 
   {group, group_12}, 
   {group, group_13}
   ].
groups() -> [
   {group_0, [parallel], [
    'y_array_empty-string', 
    'n_number_minus_sign_with_trailing_garbage', 
    'n_object_with_single_string', 
    'i_number_too_big_pos_int', 
    'y_string_null_escape', 
    'i_string_overlong_sequence_6_bytes', 
    'y_array_null', 
    'n_object_missing_value', 
    'i_string_incomplete_surrogates_escape_valid', 
    'n_structure_open_object_close_array', 
    'i_number_real_pos_overflow', 
    'i_string_lone_utf8_continuation_byte', 
    'n_number_-2.', 
    'n_structure_unclosed_array', 
    'n_string_escape_x', 
    'i_string_UTF-16LE_with_BOM', 
    'n_number_invalid-utf-8-in-bigger-int', 
    'n_number_invalid-utf-8-in-exponent', 
    'y_string_1_2_3_bytes_UTF-8_sequences', 
    'n_single_space', 
    'y_number_real_exponent', 
    'i_number_real_neg_overflow', 
    'y_object']}, 
   {group_1, [parallel], [
    'i_string_iso_latin_1', 
    'n_object_unquoted_key', 
    'n_array_a_invalid_utf8', 
    'y_number_minus_zero', 
    'n_object_several_trailing_commas', 
    'y_number_double_close_to_zero', 
    'n_structure_single_eacute', 
    'n_structure_open_object_comma', 
    'y_string_allowed_escapes', 
    'n_array_just_minus', 
    'y_array_empty', 
    'n_structure_open_object_open_array', 
    'n_string_invalid_unicode_escape', 
    'n_number_9.e+', 
    'n_string_incomplete_escape', 
    'y_structure_string_empty', 
    'y_object_empty', 
    'y_string_pi', 
    'n_structure_unclosed_array_unfinished_false', 
    'y_string_escaped_noncharacter', 
    'n_number_with_leading_zero', 
    'y_number_int_with_exp', 
    'n_number_1.0e+', 
    'n_number_-NaN']}, 
   {group_2, [parallel], [
    'n_string_unescaped_tab', 
    'n_structure_ascii-unicode-identifier', 
    'n_string_incomplete_surrogate', 
    'n_array_items_separated_by_semicolon', 
    'i_string_invalid_surrogate', 
    'n_number_infinity', 
    'n_structure_comma_instead_of_closing_brace', 
    'y_object_duplicated_key_and_value', 
    'n_string_with_trailing_garbage', 
    'n_number_0.1.2', 
    'y_string_last_surrogates_1_and_2', 
    'y_string_accepted_surrogate_pair', 
    'i_string_1st_valid_surrogate_2nd_invalid', 
    'y_structure_lonely_false', 
    'n_structure_uescaped_LF_before_string', 
    'y_number_real_capital_e_pos_exp', 
    'n_number_Inf', 
    'n_array_incomplete', 
    'i_object_key_lone_2nd_surrogate', 
    'i_string_utf16BE_no_BOM', 
    'y_string_unicode', 
    'n_string_accentuated_char_no_quotes', 
    'y_structure_true_in_array', 
    'n_number_.2e-3']}, 
   {group_3, [parallel], [
    'n_structure_open_array_comma', 
    'y_string_unicode_U+1FFFE_nonchar', 
    'y_string_backslash_and_u_escaped_zero', 
    'y_string_three-byte-utf-8', 
    'y_string_backslash_doublequotes', 
    'n_array_missing_value', 
    'n_object_trailing_comma', 
    'n_object_two_commas_in_a_row', 
    'n_structure_no_data', 
    'n_structure_single_star', 
    'y_string_uescaped_newline', 
    'n_number_invalid-negative-real', 
    'n_structure_lone-invalid-utf-8', 
    'n_array_incomplete_invalid_value', 
    'n_number_0e', 
    'n_number_invalid-utf-8-in-int', 
    'n_string_invalid_utf8_after_escape', 
    'n_array_number_and_comma', 
    'n_structure_unclosed_object', 
    'n_number_starting_with_dot', 
    'y_number_after_space', 
    'n_structure_whitespace_formfeed', 
    'n_number_2.e3', 
    'y_number_negative_one']}, 
   {group_4, [parallel], [
    'n_object_key_with_single_quotes', 
    'n_number_U+FF11_fullwidth_digit_one', 
    'y_structure_lonely_int', 
    'n_structure_unclosed_array_partial_null', 
    'i_number_huge_exp', 
    'n_structure_object_with_trailing_garbage', 
    'i_string_UTF8_surrogate_U+D800', 
    'y_structure_lonely_negative_real', 
    'n_object_non_string_key', 
    'n_number_1.0e-', 
    'n_number_++', 
    'y_string_unicode_escaped_double_quote', 
    'n_object_garbage_at_end', 
    'y_number_real_capital_e', 
    'y_string_double_escape_a', 
    'n_number_-01', 
    'y_number_real_fraction_exponent', 
    'n_array_number_and_several_commas', 
    'y_string_comments', 
    'n_structure_UTF8_BOM_no_data', 
    'n_string_single_doublequote', 
    'i_number_too_big_neg_int', 
    'y_structure_lonely_null', 
    'y_string_space']}, 
   {group_5, [parallel], [
    'n_object_lone_continuation_byte_in_key_and_trailing_comma', 
    'y_string_uEscape', 
    'y_array_with_1_and_newline', 
    'n_structure_end_array', 
    'n_string_unicode_CapitalU', 
    'n_array_extra_comma', 
    'n_number_with_alpha_char', 
    'n_string_backslash_00', 
    'i_string_1st_surrogate_but_2nd_missing', 
    'n_structure_whitespace_U+2060_word_joiner', 
    'n_structure_capitalized_True', 
    'n_array_star_inside', 
    'n_object_trailing_comment_slash_open', 
    'n_array_1_true_without_comma', 
    'y_number_0e+1', 
    'y_object_with_newlines', 
    'n_number_with_alpha', 
    'n_structure_open_array_apostrophe', 
    'n_structure_object_unclosed_no_value', 
    'n_number_0_capital_E', 
    'y_number_real_capital_e_neg_exp', 
    'n_incomplete_true', 
    'n_array_double_extra_comma', 
    'y_structure_lonely_string']}, 
   {group_6, [parallel], [
    'n_number_+Inf', 
    'n_number_hex_2_digits', 
    'n_structure_close_unopened_array', 
    'n_object_comma_instead_of_colon', 
    'n_structure_open_object_string_with_apostrophes', 
    'y_number_negative_int', 
    'i_string_inverted_surrogates_U+1D11E', 
    'n_structure_object_with_comment', 
    'n_string_incomplete_surrogate_escape_invalid', 
    'i_string_utf16LE_no_BOM', 
    'i_string_overlong_sequence_6_bytes_null', 
    'n_object_trailing_comment_open', 
    'y_array_ending_with_newline', 
    'n_array_colon_instead_of_comma', 
    'n_object_trailing_comment_slash_open_incomplete', 
    'y_number_simple_real', 
    'n_number_2.e+3', 
    'n_array_unclosed_with_object_inside', 
    'n_structure_array_trailing_garbage', 
    'i_string_truncated-utf-8', 
    'y_string_unicode_U+200B_ZERO_WIDTH_SPACE', 
    'n_structure_double_array', 
    'y_string_u+2028_line_sep', 
    'n_number_neg_int_starting_with_zero']}, 
   {group_7, [parallel], [
    'n_array_newlines_unclosed', 
    'y_structure_lonely_true', 
    'n_object_missing_colon', 
    'y_string_two-byte-utf-8', 
    'y_string_unicodeEscapedBackslash', 
    'i_string_overlong_sequence_2_bytes', 
    'n_object_missing_semicolon', 
    'y_object_simple', 
    'y_string_unicode_U+2064_invisible_plus', 
    'n_number_minus_space_1', 
    'n_string_unescaped_crtl_char', 
    'y_string_escaped_control_character', 
    'y_string_simple_ascii', 
    'y_string_unicode_U+10FFFE_nonchar', 
    'n_structure_open_object', 
    'y_string_utf8', 
    'n_string_escaped_ctrl_char_tab', 
    'i_number_double_huge_neg_exp', 
    'n_number_invalid+-', 
    'n_structure_100000_opening_arrays', 
    'n_string_leading_uescaped_thinspace', 
    'n_number_0.3e', 
    'n_structure_lone-open-bracket', 
    'y_string_unescaped_char_delete']}, 
   {group_8, [parallel], [
    'n_structure_object_followed_by_closing_object', 
    'n_number_0e+', 
    'n_structure_unicode-identifier', 
    'n_number_1eE2', 
    'y_object_extreme_numbers', 
    'n_number_+1', 
    'y_object_long_strings', 
    'n_incomplete_null', 
    'y_number_negative_zero', 
    'n_multidigit_number_then_00', 
    'n_string_1_surrogate_then_escape_u', 
    'y_array_with_leading_space', 
    'n_array_double_comma', 
    'y_structure_trailing_newline', 
    'n_array_invalid_utf8', 
    'n_object_repeated_null_null', 
    'n_object_bad_value', 
    'i_number_pos_double_huge_exp', 
    'y_string_surrogates_U+1D11E_MUSICAL_SYMBOL_G_CLEF', 
    'n_number_2.e-3', 
    'y_object_string_unicode', 
    'n_string_no_quotes_with_bad_escape', 
    'n_number_neg_with_garbage_at_end', 
    'n_string_1_surrogate_then_escape_u1']}, 
   {group_9, [parallel], [
    'n_array_spaces_vertical_tab_formfeed', 
    'n_structure_open_array_object', 
    'n_structure_open_object_open_string', 
    'n_object_non_string_key_but_huge_number_instead', 
    'i_number_real_underflow', 
    'n_object_single_quote', 
    'n_number_0.3e+', 
    'n_number_real_garbage_after_e', 
    'n_string_escaped_backslash_bad', 
    'y_number_0e1', 
    'y_number_real_pos_exponent', 
    'y_string_double_escape_n', 
    'y_array_arraysWithSpaces', 
    'y_array_heterogeneous', 
    'y_string_with_del_character', 
    'n_object_with_trailing_garbage', 
    'y_array_with_several_null', 
    'y_number_simple_int', 
    'n_number_expression', 
    'n_structure_open_array_string', 
    'n_object_missing_key', 
    'n_string_1_surrogate_then_escape_u1x', 
    'n_structure_trailing_%23', 
    'n_structure_array_with_extra_array_close']}, 
   {group_10, [parallel], [
    'y_object_empty_key', 
    'y_string_nonCharacterInUTF-8_U+FFFF', 
    'i_number_very_big_negative_int', 
    'i_string_invalid_lonely_surrogate', 
    'y_object_escaped_null_in_key', 
    'n_structure_angle_bracket_.', 
    'y_string_accepted_surrogate_pairs', 
    'i_structure_500_nested_arrays', 
    'y_number_real_neg_exp', 
    'y_structure_whitespace_array', 
    'y_string_in_array_with_leading_space', 
    'y_string_nonCharacterInUTF-8_U+10FFFF', 
    'n_object_bracket_key', 
    'i_number_neg_int_huge_exp', 
    'n_number_NaN', 
    'n_string_single_string_no_double_quotes', 
    'n_number_neg_real_without_int_part', 
    'n_string_unescaped_newline', 
    'y_array_with_trailing_space', 
    'i_string_not_in_unicode_range', 
    'n_string_single_quote', 
    'n_number_1_000', 
    'y_object_duplicated_key', 
    'n_string_incomplete_escaped_character']}, 
   {group_11, [parallel], [
    'n_object_no-colon', 
    'y_string_one-byte-utf-8', 
    'y_string_unicode_2', 
    'n_object_trailing_comment', 
    'y_string_unicode_U+FDD0_nonchar', 
    'n_incomplete_false', 
    'n_structure_null-byte-outside-string', 
    'i_structure_UTF-8_BOM_empty_object', 
    'y_string_nbsp_uescaped', 
    'n_number_.-1', 
    'n_structure_number_with_trailing_garbage', 
    'n_number_real_without_fractional_part', 
    'i_string_invalid_utf-8', 
    'i_string_incomplete_surrogate_pair', 
    'n_string_invalid_backslash_esc', 
    'n_number_minus_infinity', 
    'n_array_unclosed', 
    'i_string_incomplete_surrogate_and_escape_valid', 
    'y_array_false', 
    'n_number_real_with_invalid_utf8_after_e', 
    'y_string_unicode_U+FFFE_nonchar', 
    'n_structure_open_open', 
    'n_number_1.0e', 
    'n_array_unclosed_trailing_comma']}, 
   {group_12, [parallel], [
    'n_array_comma_and_number', 
    'n_string_1_surrogate_then_escape', 
    'n_structure_unclosed_array_unfinished_true', 
    'n_string_escaped_emoji', 
    'n_array_comma_after_close', 
    'y_string_reservedCharacterInUTF-8_U+1BFFF', 
    'n_structure_U+2060_word_joined', 
    'n_number_0.e1', 
    'n_array_unclosed_with_new_lines', 
    'n_structure_angle_bracket_null', 
    'n_object_emoji', 
    'n_object_unterminated-value', 
    'n_structure_array_with_unclosed_string', 
    'y_string_u+2029_par_sep', 
    'n_object_double_colon', 
    'y_object_basic', 
    'i_string_lone_second_surrogate', 
    'n_structure_open_array_open_string', 
    'n_array_extra_close', 
    'i_string_UTF-8_invalid_sequence', 
    'n_array_inner_array_no_comma', 
    'n_string_start_escape_unclosed', 
    'n_string_invalid-utf-8-in-escape', 
    'n_structure_open_array_open_object']}, 
   {group_13, [parallel], [
    'n_number_hex_1_digit', 
    'n_structure_incomplete_UTF8_BOM', 
    'y_string_in_array', 
    'n_number_-1.0.', 
    'n_number_0_capital_E+', 
    'y_number', 
    'n_array_just_comma']}].

'y_array_empty-string'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_array_empty-string.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_array_empty-string.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_minus_sign_with_trailing_garbage'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_minus_sign_with_trailing_garbage.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_minus_sign_with_trailing_garbage.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_with_single_string'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_with_single_string.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_with_single_string.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_number_too_big_pos_int'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_number_too_big_pos_int.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_number_too_big_pos_int.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_null_escape'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_null_escape.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_null_escape.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_overlong_sequence_6_bytes'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_overlong_sequence_6_bytes.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_overlong_sequence_6_bytes.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_array_null'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_array_null.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_array_null.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_missing_value'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_missing_value.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_missing_value.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_incomplete_surrogates_escape_valid'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_incomplete_surrogates_escape_valid.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_incomplete_surrogates_escape_valid.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_object_close_array'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_object_close_array.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_object_close_array.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_number_real_pos_overflow'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_number_real_pos_overflow.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_number_real_pos_overflow.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_lone_utf8_continuation_byte'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_lone_utf8_continuation_byte.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_lone_utf8_continuation_byte.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_-2.'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_-2..json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_-2..xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_unclosed_array'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_unclosed_array.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_unclosed_array.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_escape_x'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_escape_x.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_escape_x.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_UTF-16LE_with_BOM'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_UTF-16LE_with_BOM.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_UTF-16LE_with_BOM.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_invalid-utf-8-in-bigger-int'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_invalid-utf-8-in-bigger-int.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_invalid-utf-8-in-bigger-int.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_invalid-utf-8-in-exponent'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_invalid-utf-8-in-exponent.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_invalid-utf-8-in-exponent.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_1_2_3_bytes_UTF-8_sequences'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_1_2_3_bytes_UTF-8_sequences.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_1_2_3_bytes_UTF-8_sequences.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_single_space'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_single_space.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_single_space.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_real_exponent'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_real_exponent.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_real_exponent.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_number_real_neg_overflow'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_number_real_neg_overflow.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_number_real_neg_overflow.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_iso_latin_1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_iso_latin_1.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_iso_latin_1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_unquoted_key'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_unquoted_key.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_unquoted_key.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_a_invalid_utf8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_a_invalid_utf8.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_a_invalid_utf8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_minus_zero'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_minus_zero.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_minus_zero.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_several_trailing_commas'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_several_trailing_commas.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_several_trailing_commas.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_double_close_to_zero'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_double_close_to_zero.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_double_close_to_zero.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_single_eacute'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_single_eacute.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_single_eacute.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_object_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_object_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_object_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_allowed_escapes'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_allowed_escapes.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_allowed_escapes.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_just_minus'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_just_minus.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_just_minus.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_array_empty'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_array_empty.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_array_empty.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_object_open_array'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_object_open_array.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_object_open_array.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_invalid_unicode_escape'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_invalid_unicode_escape.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_invalid_unicode_escape.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_9.e+'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_9.e+.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_9.e+.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_incomplete_escape'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_incomplete_escape.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_incomplete_escape.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_structure_string_empty'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_structure_string_empty.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_structure_string_empty.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object_empty'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object_empty.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object_empty.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_pi'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_pi.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_pi.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_unclosed_array_unfinished_false'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_unclosed_array_unfinished_false.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_unclosed_array_unfinished_false.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_escaped_noncharacter'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_escaped_noncharacter.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_escaped_noncharacter.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_with_leading_zero'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_with_leading_zero.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_with_leading_zero.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_int_with_exp'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_int_with_exp.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_int_with_exp.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_1.0e+'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_1.0e+.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_1.0e+.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_-NaN'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_-NaN.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_-NaN.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_unescaped_tab'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_unescaped_tab.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_unescaped_tab.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_ascii-unicode-identifier'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_ascii-unicode-identifier.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_ascii-unicode-identifier.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_incomplete_surrogate'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_incomplete_surrogate.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_incomplete_surrogate.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_items_separated_by_semicolon'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_items_separated_by_semicolon.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_items_separated_by_semicolon.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_invalid_surrogate'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_invalid_surrogate.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_invalid_surrogate.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_infinity'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_infinity.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_infinity.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_comma_instead_of_closing_brace'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_comma_instead_of_closing_brace.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_comma_instead_of_closing_brace.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object_duplicated_key_and_value'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object_duplicated_key_and_value.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object_duplicated_key_and_value.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_with_trailing_garbage'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_with_trailing_garbage.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_with_trailing_garbage.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_0.1.2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_0.1.2.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_0.1.2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_last_surrogates_1_and_2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_last_surrogates_1_and_2.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_last_surrogates_1_and_2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_accepted_surrogate_pair'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_accepted_surrogate_pair.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_accepted_surrogate_pair.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_1st_valid_surrogate_2nd_invalid'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_1st_valid_surrogate_2nd_invalid.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_1st_valid_surrogate_2nd_invalid.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_structure_lonely_false'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_structure_lonely_false.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_structure_lonely_false.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_uescaped_LF_before_string'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_uescaped_LF_before_string.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_uescaped_LF_before_string.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_real_capital_e_pos_exp'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_real_capital_e_pos_exp.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_real_capital_e_pos_exp.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_Inf'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_Inf.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_Inf.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_incomplete'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_incomplete.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_incomplete.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_object_key_lone_2nd_surrogate'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_object_key_lone_2nd_surrogate.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_object_key_lone_2nd_surrogate.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_utf16BE_no_BOM'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_utf16BE_no_BOM.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_utf16BE_no_BOM.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_unicode'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_unicode.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_unicode.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_accentuated_char_no_quotes'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_accentuated_char_no_quotes.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_accentuated_char_no_quotes.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_structure_true_in_array'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_structure_true_in_array.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_structure_true_in_array.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_.2e-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_.2e-3.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_.2e-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_array_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_array_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_array_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_unicode_U+1FFFE_nonchar'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_unicode_U+1FFFE_nonchar.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_unicode_U+1FFFE_nonchar.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_backslash_and_u_escaped_zero'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_backslash_and_u_escaped_zero.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_backslash_and_u_escaped_zero.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_three-byte-utf-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_three-byte-utf-8.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_three-byte-utf-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_backslash_doublequotes'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_backslash_doublequotes.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_backslash_doublequotes.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_missing_value'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_missing_value.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_missing_value.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_trailing_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_trailing_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_trailing_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_two_commas_in_a_row'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_two_commas_in_a_row.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_two_commas_in_a_row.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_no_data'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_no_data.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_no_data.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_single_star'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_single_star.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_single_star.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_uescaped_newline'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_uescaped_newline.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_uescaped_newline.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_invalid-negative-real'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_invalid-negative-real.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_invalid-negative-real.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_lone-invalid-utf-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_lone-invalid-utf-8.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_lone-invalid-utf-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_incomplete_invalid_value'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_incomplete_invalid_value.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_incomplete_invalid_value.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_0e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_0e.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_0e.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_invalid-utf-8-in-int'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_invalid-utf-8-in-int.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_invalid-utf-8-in-int.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_invalid_utf8_after_escape'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_invalid_utf8_after_escape.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_invalid_utf8_after_escape.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_number_and_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_number_and_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_number_and_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_unclosed_object'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_unclosed_object.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_unclosed_object.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_starting_with_dot'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_starting_with_dot.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_starting_with_dot.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_after_space'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_after_space.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_after_space.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_whitespace_formfeed'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_whitespace_formfeed.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_whitespace_formfeed.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_2.e3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_2.e3.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_2.e3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_negative_one'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_negative_one.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_negative_one.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_key_with_single_quotes'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_key_with_single_quotes.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_key_with_single_quotes.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_U+FF11_fullwidth_digit_one'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_U+FF11_fullwidth_digit_one.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_U+FF11_fullwidth_digit_one.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_structure_lonely_int'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_structure_lonely_int.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_structure_lonely_int.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_unclosed_array_partial_null'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_unclosed_array_partial_null.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_unclosed_array_partial_null.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_number_huge_exp'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_number_huge_exp.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_number_huge_exp.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_object_with_trailing_garbage'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_object_with_trailing_garbage.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_object_with_trailing_garbage.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_UTF8_surrogate_U+D800'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_UTF8_surrogate_U+D800.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_UTF8_surrogate_U+D800.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_structure_lonely_negative_real'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_structure_lonely_negative_real.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_structure_lonely_negative_real.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_non_string_key'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_non_string_key.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_non_string_key.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_1.0e-'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_1.0e-.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_1.0e-.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_++'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_++.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_++.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_unicode_escaped_double_quote'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_unicode_escaped_double_quote.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_unicode_escaped_double_quote.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_garbage_at_end'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_garbage_at_end.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_garbage_at_end.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_real_capital_e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_real_capital_e.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_real_capital_e.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_double_escape_a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_double_escape_a.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_double_escape_a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_-01'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_-01.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_-01.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_real_fraction_exponent'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_real_fraction_exponent.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_real_fraction_exponent.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_number_and_several_commas'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_number_and_several_commas.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_number_and_several_commas.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_comments'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_comments.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_comments.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_UTF8_BOM_no_data'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_UTF8_BOM_no_data.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_UTF8_BOM_no_data.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_single_doublequote'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_single_doublequote.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_single_doublequote.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_number_too_big_neg_int'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_number_too_big_neg_int.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_number_too_big_neg_int.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_structure_lonely_null'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_structure_lonely_null.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_structure_lonely_null.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_space'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_space.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_space.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_lone_continuation_byte_in_key_and_trailing_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_lone_continuation_byte_in_key_and_trailing_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_lone_continuation_byte_in_key_and_trailing_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_uEscape'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_uEscape.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_uEscape.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_array_with_1_and_newline'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_array_with_1_and_newline.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_array_with_1_and_newline.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_end_array'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_end_array.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_end_array.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_unicode_CapitalU'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_unicode_CapitalU.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_unicode_CapitalU.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_extra_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_extra_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_extra_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_with_alpha_char'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_with_alpha_char.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_with_alpha_char.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_backslash_00'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_backslash_00.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_backslash_00.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_1st_surrogate_but_2nd_missing'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_1st_surrogate_but_2nd_missing.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_1st_surrogate_but_2nd_missing.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_whitespace_U+2060_word_joiner'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_whitespace_U+2060_word_joiner.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_whitespace_U+2060_word_joiner.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_capitalized_True'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_capitalized_True.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_capitalized_True.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_star_inside'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_star_inside.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_star_inside.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_trailing_comment_slash_open'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_trailing_comment_slash_open.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_trailing_comment_slash_open.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_1_true_without_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_1_true_without_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_1_true_without_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_0e+1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_0e+1.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_0e+1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object_with_newlines'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object_with_newlines.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object_with_newlines.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_with_alpha'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_with_alpha.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_with_alpha.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_array_apostrophe'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_array_apostrophe.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_array_apostrophe.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_object_unclosed_no_value'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_object_unclosed_no_value.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_object_unclosed_no_value.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_0_capital_E'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_0_capital_E.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_0_capital_E.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_real_capital_e_neg_exp'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_real_capital_e_neg_exp.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_real_capital_e_neg_exp.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_incomplete_true'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_incomplete_true.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_incomplete_true.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_double_extra_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_double_extra_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_double_extra_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_structure_lonely_string'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_structure_lonely_string.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_structure_lonely_string.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_+Inf'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_+Inf.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_+Inf.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_hex_2_digits'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_hex_2_digits.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_hex_2_digits.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_close_unopened_array'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_close_unopened_array.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_close_unopened_array.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_comma_instead_of_colon'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_comma_instead_of_colon.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_comma_instead_of_colon.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_object_string_with_apostrophes'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_object_string_with_apostrophes.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_object_string_with_apostrophes.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_negative_int'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_negative_int.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_negative_int.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_inverted_surrogates_U+1D11E'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_inverted_surrogates_U+1D11E.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_inverted_surrogates_U+1D11E.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_object_with_comment'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_object_with_comment.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_object_with_comment.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_incomplete_surrogate_escape_invalid'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_incomplete_surrogate_escape_invalid.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_incomplete_surrogate_escape_invalid.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_utf16LE_no_BOM'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_utf16LE_no_BOM.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_utf16LE_no_BOM.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_overlong_sequence_6_bytes_null'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_overlong_sequence_6_bytes_null.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_overlong_sequence_6_bytes_null.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_trailing_comment_open'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_trailing_comment_open.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_trailing_comment_open.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_array_ending_with_newline'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_array_ending_with_newline.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_array_ending_with_newline.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_colon_instead_of_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_colon_instead_of_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_colon_instead_of_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_trailing_comment_slash_open_incomplete'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_trailing_comment_slash_open_incomplete.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_trailing_comment_slash_open_incomplete.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_simple_real'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_simple_real.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_simple_real.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_2.e+3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_2.e+3.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_2.e+3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_unclosed_with_object_inside'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_unclosed_with_object_inside.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_unclosed_with_object_inside.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_array_trailing_garbage'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_array_trailing_garbage.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_array_trailing_garbage.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_truncated-utf-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_truncated-utf-8.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_truncated-utf-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_unicode_U+200B_ZERO_WIDTH_SPACE'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_unicode_U+200B_ZERO_WIDTH_SPACE.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_unicode_U+200B_ZERO_WIDTH_SPACE.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_double_array'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_double_array.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_double_array.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_u+2028_line_sep'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_u+2028_line_sep.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_u+2028_line_sep.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_neg_int_starting_with_zero'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_neg_int_starting_with_zero.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_neg_int_starting_with_zero.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_newlines_unclosed'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_newlines_unclosed.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_newlines_unclosed.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_structure_lonely_true'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_structure_lonely_true.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_structure_lonely_true.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_missing_colon'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_missing_colon.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_missing_colon.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_two-byte-utf-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_two-byte-utf-8.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_two-byte-utf-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_unicodeEscapedBackslash'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_unicodeEscapedBackslash.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_unicodeEscapedBackslash.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_overlong_sequence_2_bytes'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_overlong_sequence_2_bytes.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_overlong_sequence_2_bytes.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_missing_semicolon'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_missing_semicolon.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_missing_semicolon.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object_simple'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object_simple.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object_simple.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_unicode_U+2064_invisible_plus'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_unicode_U+2064_invisible_plus.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_unicode_U+2064_invisible_plus.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_minus_space_1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_minus_space_1.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_minus_space_1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_unescaped_crtl_char'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_unescaped_crtl_char.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_unescaped_crtl_char.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_escaped_control_character'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_escaped_control_character.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_escaped_control_character.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_simple_ascii'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_simple_ascii.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_simple_ascii.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_unicode_U+10FFFE_nonchar'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_unicode_U+10FFFE_nonchar.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_unicode_U+10FFFE_nonchar.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_object'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_object.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_object.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_utf8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_utf8.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_utf8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_escaped_ctrl_char_tab'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_escaped_ctrl_char_tab.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_escaped_ctrl_char_tab.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_number_double_huge_neg_exp'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_number_double_huge_neg_exp.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_number_double_huge_neg_exp.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_invalid+-'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_invalid+-.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_invalid+-.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_100000_opening_arrays'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_100000_opening_arrays.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_100000_opening_arrays.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_leading_uescaped_thinspace'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_leading_uescaped_thinspace.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_leading_uescaped_thinspace.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_0.3e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_0.3e.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_0.3e.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_lone-open-bracket'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_lone-open-bracket.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_lone-open-bracket.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_unescaped_char_delete'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_unescaped_char_delete.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_unescaped_char_delete.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_object_followed_by_closing_object'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_object_followed_by_closing_object.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_object_followed_by_closing_object.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_0e+'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_0e+.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_0e+.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_unicode-identifier'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_unicode-identifier.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_unicode-identifier.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_1eE2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_1eE2.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_1eE2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object_extreme_numbers'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object_extreme_numbers.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object_extreme_numbers.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_+1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_+1.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_+1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object_long_strings'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object_long_strings.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object_long_strings.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_incomplete_null'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_incomplete_null.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_incomplete_null.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_negative_zero'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_negative_zero.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_negative_zero.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_multidigit_number_then_00'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_multidigit_number_then_00.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_multidigit_number_then_00.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_1_surrogate_then_escape_u'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_1_surrogate_then_escape_u.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_1_surrogate_then_escape_u.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_array_with_leading_space'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_array_with_leading_space.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_array_with_leading_space.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_double_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_double_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_double_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_structure_trailing_newline'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_structure_trailing_newline.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_structure_trailing_newline.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_invalid_utf8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_invalid_utf8.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_invalid_utf8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_repeated_null_null'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_repeated_null_null.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_repeated_null_null.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_bad_value'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_bad_value.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_bad_value.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_number_pos_double_huge_exp'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_number_pos_double_huge_exp.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_number_pos_double_huge_exp.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_surrogates_U+1D11E_MUSICAL_SYMBOL_G_CLEF'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_surrogates_U+1D11E_MUSICAL_SYMBOL_G_CLEF.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_surrogates_U+1D11E_MUSICAL_SYMBOL_G_CLEF.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_2.e-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_2.e-3.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_2.e-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object_string_unicode'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object_string_unicode.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object_string_unicode.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_no_quotes_with_bad_escape'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_no_quotes_with_bad_escape.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_no_quotes_with_bad_escape.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_neg_with_garbage_at_end'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_neg_with_garbage_at_end.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_neg_with_garbage_at_end.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_1_surrogate_then_escape_u1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_1_surrogate_then_escape_u1.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_1_surrogate_then_escape_u1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_spaces_vertical_tab_formfeed'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_spaces_vertical_tab_formfeed.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_spaces_vertical_tab_formfeed.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_array_object'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_array_object.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_array_object.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_object_open_string'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_object_open_string.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_object_open_string.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_non_string_key_but_huge_number_instead'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_non_string_key_but_huge_number_instead.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_non_string_key_but_huge_number_instead.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_number_real_underflow'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_number_real_underflow.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_number_real_underflow.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_single_quote'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_single_quote.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_single_quote.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_0.3e+'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_0.3e+.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_0.3e+.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_real_garbage_after_e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_real_garbage_after_e.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_real_garbage_after_e.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_escaped_backslash_bad'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_escaped_backslash_bad.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_escaped_backslash_bad.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_0e1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_0e1.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_0e1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_real_pos_exponent'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_real_pos_exponent.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_real_pos_exponent.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_double_escape_n'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_double_escape_n.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_double_escape_n.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_array_arraysWithSpaces'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_array_arraysWithSpaces.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_array_arraysWithSpaces.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_array_heterogeneous'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_array_heterogeneous.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_array_heterogeneous.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_with_del_character'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_with_del_character.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_with_del_character.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_with_trailing_garbage'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_with_trailing_garbage.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_with_trailing_garbage.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_array_with_several_null'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_array_with_several_null.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_array_with_several_null.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_simple_int'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_simple_int.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_simple_int.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_expression'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_expression.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_expression.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_array_string'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_array_string.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_array_string.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_missing_key'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_missing_key.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_missing_key.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_1_surrogate_then_escape_u1x'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_1_surrogate_then_escape_u1x.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_1_surrogate_then_escape_u1x.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_trailing_%23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_trailing_%23.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_trailing_%23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_array_with_extra_array_close'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_array_with_extra_array_close.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_array_with_extra_array_close.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object_empty_key'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object_empty_key.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object_empty_key.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_nonCharacterInUTF-8_U+FFFF'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_nonCharacterInUTF-8_U+FFFF.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_nonCharacterInUTF-8_U+FFFF.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_number_very_big_negative_int'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_number_very_big_negative_int.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_number_very_big_negative_int.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_invalid_lonely_surrogate'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_invalid_lonely_surrogate.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_invalid_lonely_surrogate.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object_escaped_null_in_key'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object_escaped_null_in_key.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object_escaped_null_in_key.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_angle_bracket_.'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_angle_bracket_..json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_angle_bracket_..xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_accepted_surrogate_pairs'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_accepted_surrogate_pairs.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_accepted_surrogate_pairs.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_structure_500_nested_arrays'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_structure_500_nested_arrays.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_structure_500_nested_arrays.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number_real_neg_exp'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number_real_neg_exp.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number_real_neg_exp.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_structure_whitespace_array'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_structure_whitespace_array.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_structure_whitespace_array.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_in_array_with_leading_space'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_in_array_with_leading_space.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_in_array_with_leading_space.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_nonCharacterInUTF-8_U+10FFFF'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_nonCharacterInUTF-8_U+10FFFF.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_nonCharacterInUTF-8_U+10FFFF.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_bracket_key'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_bracket_key.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_bracket_key.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_number_neg_int_huge_exp'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_number_neg_int_huge_exp.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_number_neg_int_huge_exp.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_NaN'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_NaN.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_NaN.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_single_string_no_double_quotes'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_single_string_no_double_quotes.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_single_string_no_double_quotes.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_neg_real_without_int_part'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_neg_real_without_int_part.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_neg_real_without_int_part.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_unescaped_newline'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_unescaped_newline.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_unescaped_newline.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_array_with_trailing_space'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_array_with_trailing_space.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_array_with_trailing_space.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_not_in_unicode_range'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_not_in_unicode_range.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_not_in_unicode_range.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_single_quote'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_single_quote.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_single_quote.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_1_000'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_1_000.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_1_000.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object_duplicated_key'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object_duplicated_key.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object_duplicated_key.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_incomplete_escaped_character'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_incomplete_escaped_character.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_incomplete_escaped_character.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_no-colon'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_no-colon.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_no-colon.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_one-byte-utf-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_one-byte-utf-8.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_one-byte-utf-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_unicode_2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_unicode_2.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_unicode_2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_trailing_comment'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_trailing_comment.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_trailing_comment.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_unicode_U+FDD0_nonchar'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_unicode_U+FDD0_nonchar.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_unicode_U+FDD0_nonchar.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_incomplete_false'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_incomplete_false.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_incomplete_false.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_null-byte-outside-string'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_null-byte-outside-string.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_null-byte-outside-string.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_structure_UTF-8_BOM_empty_object'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_structure_UTF-8_BOM_empty_object.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_structure_UTF-8_BOM_empty_object.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_nbsp_uescaped'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_nbsp_uescaped.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_nbsp_uescaped.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_.-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_.-1.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_.-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_number_with_trailing_garbage'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_number_with_trailing_garbage.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_number_with_trailing_garbage.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_real_without_fractional_part'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_real_without_fractional_part.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_real_without_fractional_part.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_invalid_utf-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_invalid_utf-8.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_invalid_utf-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_incomplete_surrogate_pair'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_incomplete_surrogate_pair.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_incomplete_surrogate_pair.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_invalid_backslash_esc'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_invalid_backslash_esc.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_invalid_backslash_esc.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_minus_infinity'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_minus_infinity.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_minus_infinity.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_unclosed'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_unclosed.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_unclosed.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_incomplete_surrogate_and_escape_valid'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_incomplete_surrogate_and_escape_valid.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_incomplete_surrogate_and_escape_valid.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_array_false'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_array_false.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_array_false.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_real_with_invalid_utf8_after_e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_real_with_invalid_utf8_after_e.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_real_with_invalid_utf8_after_e.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_unicode_U+FFFE_nonchar'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_unicode_U+FFFE_nonchar.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_unicode_U+FFFE_nonchar.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_open'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_open.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_open.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_1.0e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_1.0e.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_1.0e.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_unclosed_trailing_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_unclosed_trailing_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_unclosed_trailing_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_comma_and_number'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_comma_and_number.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_comma_and_number.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_1_surrogate_then_escape'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_1_surrogate_then_escape.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_1_surrogate_then_escape.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_unclosed_array_unfinished_true'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_unclosed_array_unfinished_true.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_unclosed_array_unfinished_true.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_escaped_emoji'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_escaped_emoji.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_escaped_emoji.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_comma_after_close'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_comma_after_close.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_comma_after_close.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_reservedCharacterInUTF-8_U+1BFFF'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_reservedCharacterInUTF-8_U+1BFFF.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_reservedCharacterInUTF-8_U+1BFFF.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_U+2060_word_joined'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_U+2060_word_joined.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_U+2060_word_joined.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_0.e1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_0.e1.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_0.e1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_unclosed_with_new_lines'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_unclosed_with_new_lines.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_unclosed_with_new_lines.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_angle_bracket_null'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_angle_bracket_null.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_angle_bracket_null.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_emoji'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_emoji.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_emoji.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_unterminated-value'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_unterminated-value.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_unterminated-value.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_array_with_unclosed_string'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_array_with_unclosed_string.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_array_with_unclosed_string.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_u+2029_par_sep'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_u+2029_par_sep.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_u+2029_par_sep.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_object_double_colon'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_object_double_colon.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_object_double_colon.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_object_basic'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_object_basic.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_object_basic.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_lone_second_surrogate'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_lone_second_surrogate.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_lone_second_surrogate.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_array_open_string'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_array_open_string.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_array_open_string.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_extra_close'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_extra_close.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_extra_close.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'i_string_UTF-8_invalid_sequence'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/i_string_UTF-8_invalid_sequence.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "i_string_UTF-8_invalid_sequence.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"true()") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_inner_array_no_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_inner_array_no_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_inner_array_no_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_start_escape_unclosed'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_start_escape_unclosed.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_start_escape_unclosed.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_string_invalid-utf-8-in-escape'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_string_invalid-utf-8-in-escape.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_string_invalid-utf-8-in-escape.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_open_array_open_object'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_open_array_open_object.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_open_array_open_object.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_hex_1_digit'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_hex_1_digit.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_hex_1_digit.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_structure_incomplete_UTF8_BOM'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_structure_incomplete_UTF8_BOM.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_structure_incomplete_UTF8_BOM.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_string_in_array'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_string_in_array.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_string_in_array.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_-1.0.'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_-1.0..json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_-1.0..xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_number_0_capital_E+'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_number_0_capital_E+.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_number_0_capital_E+.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'y_number'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/y_number.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "y_number.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"count($result) lt 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'n_array_just_comma'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc('JSONTestSuite/test_parsing/n_array_just_comma.json')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "n_array_just_comma.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.