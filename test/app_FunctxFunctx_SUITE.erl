-module('app_FunctxFunctx_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['functx-functx-add-attributes-1'/1]).
-export(['functx-functx-add-attributes-2'/1]).
-export(['functx-functx-add-attributes-3'/1]).
-export(['functx-functx-add-attributes-4'/1]).
-export(['functx-functx-add-attributes-5'/1]).
-export(['functx-functx-add-attributes-all'/1]).
-export(['functx-functx-add-months-1'/1]).
-export(['functx-functx-add-months-2'/1]).
-export(['functx-functx-add-months-3'/1]).
-export(['functx-functx-add-months-all'/1]).
-export(['functx-functx-add-or-update-attributes-1'/1]).
-export(['functx-functx-add-or-update-attributes-2'/1]).
-export(['functx-functx-add-or-update-attributes-3'/1]).
-export(['functx-functx-add-or-update-attributes-4'/1]).
-export(['functx-functx-add-or-update-attributes-5'/1]).
-export(['functx-functx-add-or-update-attributes-all'/1]).
-export(['functx-functx-all-whitespace-1'/1]).
-export(['functx-functx-all-whitespace-2'/1]).
-export(['functx-functx-all-whitespace-3'/1]).
-export(['functx-functx-all-whitespace-4'/1]).
-export(['functx-functx-all-whitespace-5'/1]).
-export(['functx-functx-all-whitespace-6'/1]).
-export(['functx-functx-all-whitespace-all'/1]).
-export(['functx-functx-are-distinct-values-1'/1]).
-export(['functx-functx-are-distinct-values-2'/1]).
-export(['functx-functx-are-distinct-values-3'/1]).
-export(['functx-functx-are-distinct-values-all'/1]).
-export(['functx-functx-atomic-type-1'/1]).
-export(['functx-functx-atomic-type-2'/1]).
-export(['functx-functx-atomic-type-3'/1]).
-export(['functx-functx-atomic-type-4'/1]).
-export(['functx-functx-atomic-type-all'/1]).
-export(['functx-functx-avg-empty-is-zero-1'/1]).
-export(['functx-functx-between-exclusive-1'/1]).
-export(['functx-functx-between-exclusive-2'/1]).
-export(['functx-functx-between-exclusive-3'/1]).
-export(['functx-functx-between-exclusive-4'/1]).
-export(['functx-functx-between-exclusive-5'/1]).
-export(['functx-functx-between-exclusive-all'/1]).
-export(['functx-functx-between-inclusive-1'/1]).
-export(['functx-functx-between-inclusive-2'/1]).
-export(['functx-functx-between-inclusive-3'/1]).
-export(['functx-functx-between-inclusive-4'/1]).
-export(['functx-functx-between-inclusive-5'/1]).
-export(['functx-functx-between-inclusive-all'/1]).
-export(['functx-functx-camel-case-to-words-1'/1]).
-export(['functx-functx-camel-case-to-words-2'/1]).
-export(['functx-functx-camel-case-to-words-all'/1]).
-export(['functx-functx-capitalize-first-1'/1]).
-export(['functx-functx-capitalize-first-2'/1]).
-export(['functx-functx-capitalize-first-3'/1]).
-export(['functx-functx-capitalize-first-all'/1]).
-export(['functx-functx-change-element-names-deep-1'/1]).
-export(['functx-functx-change-element-names-deep-2'/1]).
-export(['functx-functx-change-element-names-deep-3'/1]).
-export(['functx-functx-change-element-names-deep-all'/1]).
-export(['functx-functx-change-element-ns-deep-1'/1]).
-export(['functx-functx-change-element-ns-deep-2'/1]).
-export(['functx-functx-change-element-ns-deep-all'/1]).
-export(['functx-functx-change-element-ns-1'/1]).
-export(['functx-functx-change-element-ns-2'/1]).
-export(['functx-functx-change-element-ns-all'/1]).
-export(['functx-functx-chars-1'/1]).
-export(['functx-functx-chars-2'/1]).
-export(['functx-functx-chars-all'/1]).
-export(['functx-functx-contains-any-of-1'/1]).
-export(['functx-functx-contains-any-of-2'/1]).
-export(['functx-functx-contains-any-of-all'/1]).
-export(['functx-functx-contains-case-insensitive-1'/1]).
-export(['functx-functx-contains-case-insensitive-2'/1]).
-export(['functx-functx-contains-case-insensitive-all'/1]).
-export(['functx-functx-contains-word-1'/1]).
-export(['functx-functx-contains-word-2'/1]).
-export(['functx-functx-contains-word-3'/1]).
-export(['functx-functx-contains-word-4'/1]).
-export(['functx-functx-contains-word-5'/1]).
-export(['functx-functx-contains-word-all'/1]).
-export(['functx-functx-copy-attributes-1'/1]).
-export(['functx-functx-copy-attributes-2'/1]).
-export(['functx-functx-copy-attributes-3'/1]).
-export(['functx-functx-copy-attributes-all'/1]).
-export(['functx-functx-date-1'/1]).
-export(['functx-functx-date-2'/1]).
-export(['functx-functx-date-all'/1]).
-export(['functx-functx-dateTime-1'/1]).
-export(['functx-functx-dateTime-2'/1]).
-export(['functx-functx-dateTime-all'/1]).
-export(['functx-functx-day-in-year-1'/1]).
-export(['functx-functx-day-in-year-2'/1]).
-export(['functx-functx-day-in-year-3'/1]).
-export(['functx-functx-day-in-year-all'/1]).
-export(['functx-functx-day-of-week-abbrev-en-1'/1]).
-export(['functx-functx-day-of-week-abbrev-en-2'/1]).
-export(['functx-functx-day-of-week-abbrev-en-all'/1]).
-export(['functx-functx-day-of-week-name-en-1'/1]).
-export(['functx-functx-day-of-week-name-en-2'/1]).
-export(['functx-functx-day-of-week-name-en-all'/1]).
-export(['functx-functx-day-of-week-1'/1]).
-export(['functx-functx-day-of-week-2'/1]).
-export(['functx-functx-day-of-week-3'/1]).
-export(['functx-functx-day-of-week-all'/1]).
-export(['functx-functx-days-in-month-1'/1]).
-export(['functx-functx-days-in-month-2'/1]).
-export(['functx-functx-days-in-month-3'/1]).
-export(['functx-functx-days-in-month-all'/1]).
-export(['functx-functx-dayTimeDuration-1'/1]).
-export(['functx-functx-dayTimeDuration-2'/1]).
-export(['functx-functx-dayTimeDuration-3'/1]).
-export(['functx-functx-dayTimeDuration-4'/1]).
-export(['functx-functx-dayTimeDuration-5'/1]).
-export(['functx-functx-dayTimeDuration-all'/1]).
-export(['functx-functx-ddmmyyyy-to-date-1'/1]).
-export(['functx-functx-ddmmyyyy-to-date-2'/1]).
-export(['functx-functx-ddmmyyyy-to-date-3'/1]).
-export(['functx-functx-ddmmyyyy-to-date-all'/1]).
-export(['functx-functx-depth-of-node-1'/1]).
-export(['functx-functx-depth-of-node-2'/1]).
-export(['functx-functx-depth-of-node-3'/1]).
-export(['functx-functx-depth-of-node-all'/1]).
-export(['functx-functx-distinct-attribute-names-1'/1]).
-export(['functx-functx-distinct-deep-1'/1]).
-export(['functx-functx-distinct-deep-2'/1]).
-export(['functx-functx-distinct-deep-3'/1]).
-export(['functx-functx-distinct-deep-all'/1]).
-export(['functx-functx-distinct-element-names-1'/1]).
-export(['functx-functx-distinct-element-names-2'/1]).
-export(['functx-functx-distinct-element-names-all'/1]).
-export(['functx-functx-distinct-element-paths-1'/1]).
-export(['functx-functx-distinct-element-paths-2'/1]).
-export(['functx-functx-distinct-element-paths-all'/1]).
-export(['functx-functx-distinct-nodes-1'/1]).
-export(['functx-functx-distinct-nodes-2'/1]).
-export(['functx-functx-distinct-nodes-all'/1]).
-export(['functx-functx-duration-from-timezone-1'/1]).
-export(['functx-functx-duration-from-timezone-2'/1]).
-export(['functx-functx-duration-from-timezone-3'/1]).
-export(['functx-functx-duration-from-timezone-all'/1]).
-export(['functx-functx-dynamic-path-1'/1]).
-export(['functx-functx-dynamic-path-2'/1]).
-export(['functx-functx-dynamic-path-3'/1]).
-export(['functx-functx-dynamic-path-4'/1]).
-export(['functx-functx-dynamic-path-all'/1]).
-export(['functx-functx-escape-for-regex-1'/1]).
-export(['functx-functx-escape-for-regex-2'/1]).
-export(['functx-functx-escape-for-regex-all'/1]).
-export(['functx-functx-exclusive-or-1'/1]).
-export(['functx-functx-exclusive-or-2'/1]).
-export(['functx-functx-exclusive-or-3'/1]).
-export(['functx-functx-exclusive-or-all'/1]).
-export(['functx-functx-first-day-of-month-1'/1]).
-export(['functx-functx-first-day-of-month-2'/1]).
-export(['functx-functx-first-day-of-month-3'/1]).
-export(['functx-functx-first-day-of-month-all'/1]).
-export(['functx-functx-first-day-of-year-1'/1]).
-export(['functx-functx-first-day-of-year-2'/1]).
-export(['functx-functx-first-day-of-year-3'/1]).
-export(['functx-functx-first-day-of-year-all'/1]).
-export(['functx-functx-first-node-1'/1]).
-export(['functx-functx-first-node-2'/1]).
-export(['functx-functx-first-node-all'/1]).
-export(['functx-functx-follows-not-descendant-1'/1]).
-export(['functx-functx-follows-not-descendant-2'/1]).
-export(['functx-functx-follows-not-descendant-3'/1]).
-export(['functx-functx-follows-not-descendant-all'/1]).
-export(['functx-functx-format-as-title-en-1'/1]).
-export(['functx-functx-fragment-from-uri-1'/1]).
-export(['functx-functx-fragment-from-uri-2'/1]).
-export(['functx-functx-fragment-from-uri-all'/1]).
-export(['functx-functx-get-matches-and-non-matches-1'/1]).
-export(['functx-functx-get-matches-and-non-matches-2'/1]).
-export(['functx-functx-get-matches-and-non-matches-3'/1]).
-export(['functx-functx-get-matches-and-non-matches-all'/1]).
-export(['functx-functx-get-matches-1'/1]).
-export(['functx-functx-get-matches-2'/1]).
-export(['functx-functx-get-matches-3'/1]).
-export(['functx-functx-get-matches-all'/1]).
-export(['functx-functx-has-element-only-content-1'/1]).
-export(['functx-functx-has-element-only-content-2'/1]).
-export(['functx-functx-has-element-only-content-3'/1]).
-export(['functx-functx-has-element-only-content-4'/1]).
-export(['functx-functx-has-element-only-content-5'/1]).
-export(['functx-functx-has-element-only-content-6'/1]).
-export(['functx-functx-has-element-only-content-7'/1]).
-export(['functx-functx-has-element-only-content-8'/1]).
-export(['functx-functx-has-element-only-content-9'/1]).
-export(['functx-functx-has-element-only-content-all'/1]).
-export(['functx-functx-has-empty-content-1'/1]).
-export(['functx-functx-has-empty-content-2'/1]).
-export(['functx-functx-has-empty-content-3'/1]).
-export(['functx-functx-has-empty-content-4'/1]).
-export(['functx-functx-has-empty-content-5'/1]).
-export(['functx-functx-has-empty-content-6'/1]).
-export(['functx-functx-has-empty-content-7'/1]).
-export(['functx-functx-has-empty-content-all'/1]).
-export(['functx-functx-has-mixed-content-1'/1]).
-export(['functx-functx-has-mixed-content-2'/1]).
-export(['functx-functx-has-mixed-content-3'/1]).
-export(['functx-functx-has-mixed-content-4'/1]).
-export(['functx-functx-has-mixed-content-5'/1]).
-export(['functx-functx-has-mixed-content-6'/1]).
-export(['functx-functx-has-mixed-content-7'/1]).
-export(['functx-functx-has-mixed-content-all'/1]).
-export(['functx-functx-has-simple-content-1'/1]).
-export(['functx-functx-has-simple-content-2'/1]).
-export(['functx-functx-has-simple-content-3'/1]).
-export(['functx-functx-has-simple-content-4'/1]).
-export(['functx-functx-has-simple-content-5'/1]).
-export(['functx-functx-has-simple-content-6'/1]).
-export(['functx-functx-has-simple-content-all'/1]).
-export(['functx-functx-id-from-element-1'/1]).
-export(['functx-functx-id-untyped-1'/1]).
-export(['functx-functx-id-untyped-2'/1]).
-export(['functx-functx-id-untyped-3'/1]).
-export(['functx-functx-id-untyped-all'/1]).
-export(['functx-functx-if-absent-1'/1]).
-export(['functx-functx-if-absent-2'/1]).
-export(['functx-functx-if-absent-3'/1]).
-export(['functx-functx-if-absent-all'/1]).
-export(['functx-functx-if-empty-1'/1]).
-export(['functx-functx-if-empty-2'/1]).
-export(['functx-functx-if-empty-3'/1]).
-export(['functx-functx-if-empty-4'/1]).
-export(['functx-functx-if-empty-5'/1]).
-export(['functx-functx-if-empty-6'/1]).
-export(['functx-functx-if-empty-all'/1]).
-export(['functx-functx-index-of-deep-equal-node-1'/1]).
-export(['functx-functx-index-of-deep-equal-node-2'/1]).
-export(['functx-functx-index-of-deep-equal-node-3'/1]).
-export(['functx-functx-index-of-deep-equal-node-all'/1]).
-export(['functx-functx-index-of-match-first-1'/1]).
-export(['functx-functx-index-of-match-first-2'/1]).
-export(['functx-functx-index-of-match-first-3'/1]).
-export(['functx-functx-index-of-match-first-4'/1]).
-export(['functx-functx-index-of-match-first-5'/1]).
-export(['functx-functx-index-of-match-first-all'/1]).
-export(['functx-functx-index-of-node-1'/1]).
-export(['functx-functx-index-of-node-2'/1]).
-export(['functx-functx-index-of-node-3'/1]).
-export(['functx-functx-index-of-node-all'/1]).
-export(['functx-functx-index-of-string-first-1'/1]).
-export(['functx-functx-index-of-string-first-2'/1]).
-export(['functx-functx-index-of-string-first-3'/1]).
-export(['functx-functx-index-of-string-first-all'/1]).
-export(['functx-functx-index-of-string-last-1'/1]).
-export(['functx-functx-index-of-string-last-2'/1]).
-export(['functx-functx-index-of-string-last-3'/1]).
-export(['functx-functx-index-of-string-last-all'/1]).
-export(['functx-functx-index-of-string-1'/1]).
-export(['functx-functx-index-of-string-2'/1]).
-export(['functx-functx-index-of-string-3'/1]).
-export(['functx-functx-index-of-string-all'/1]).
-export(['functx-functx-insert-string-1'/1]).
-export(['functx-functx-insert-string-2'/1]).
-export(['functx-functx-insert-string-3'/1]).
-export(['functx-functx-insert-string-4'/1]).
-export(['functx-functx-insert-string-all'/1]).
-export(['functx-functx-is-a-number-1'/1]).
-export(['functx-functx-is-a-number-2'/1]).
-export(['functx-functx-is-a-number-3'/1]).
-export(['functx-functx-is-a-number-4'/1]).
-export(['functx-functx-is-a-number-5'/1]).
-export(['functx-functx-is-a-number-6'/1]).
-export(['functx-functx-is-a-number-7'/1]).
-export(['functx-functx-is-a-number-8'/1]).
-export(['functx-functx-is-a-number-all'/1]).
-export(['functx-functx-is-absolute-uri-1'/1]).
-export(['functx-functx-is-absolute-uri-2'/1]).
-export(['functx-functx-is-absolute-uri-3'/1]).
-export(['functx-functx-is-absolute-uri-4'/1]).
-export(['functx-functx-is-absolute-uri-5'/1]).
-export(['functx-functx-is-absolute-uri-all'/1]).
-export(['functx-functx-is-ancestor-1'/1]).
-export(['functx-functx-is-ancestor-2'/1]).
-export(['functx-functx-is-ancestor-3'/1]).
-export(['functx-functx-is-ancestor-4'/1]).
-export(['functx-functx-is-ancestor-all'/1]).
-export(['functx-functx-is-descendant-1'/1]).
-export(['functx-functx-is-descendant-2'/1]).
-export(['functx-functx-is-descendant-3'/1]).
-export(['functx-functx-is-descendant-4'/1]).
-export(['functx-functx-is-descendant-all'/1]).
-export(['functx-functx-is-leap-year-1'/1]).
-export(['functx-functx-is-leap-year-2'/1]).
-export(['functx-functx-is-leap-year-3'/1]).
-export(['functx-functx-is-leap-year-all'/1]).
-export(['functx-functx-is-node-among-descendants-deep-equal-1'/1]).
-export(['functx-functx-is-node-among-descendants-deep-equal-2'/1]).
-export(['functx-functx-is-node-among-descendants-deep-equal-3'/1]).
-export(['functx-functx-is-node-among-descendants-deep-equal-4'/1]).
-export(['functx-functx-is-node-among-descendants-deep-equal-all'/1]).
-export(['functx-functx-is-node-among-descendants-1'/1]).
-export(['functx-functx-is-node-among-descendants-2'/1]).
-export(['functx-functx-is-node-among-descendants-3'/1]).
-export(['functx-functx-is-node-among-descendants-4'/1]).
-export(['functx-functx-is-node-among-descendants-all'/1]).
-export(['functx-functx-is-node-in-sequence-deep-equal-1'/1]).
-export(['functx-functx-is-node-in-sequence-deep-equal-2'/1]).
-export(['functx-functx-is-node-in-sequence-deep-equal-3'/1]).
-export(['functx-functx-is-node-in-sequence-deep-equal-all'/1]).
-export(['functx-functx-is-node-in-sequence-1'/1]).
-export(['functx-functx-is-node-in-sequence-2'/1]).
-export(['functx-functx-is-node-in-sequence-3'/1]).
-export(['functx-functx-is-node-in-sequence-all'/1]).
-export(['functx-functx-is-value-in-sequence-1'/1]).
-export(['functx-functx-is-value-in-sequence-2'/1]).
-export(['functx-functx-is-value-in-sequence-3'/1]).
-export(['functx-functx-is-value-in-sequence-all'/1]).
-export(['functx-functx-last-day-of-month-1'/1]).
-export(['functx-functx-last-day-of-month-2'/1]).
-export(['functx-functx-last-day-of-month-3'/1]).
-export(['functx-functx-last-day-of-month-all'/1]).
-export(['functx-functx-last-day-of-year-1'/1]).
-export(['functx-functx-last-day-of-year-2'/1]).
-export(['functx-functx-last-day-of-year-3'/1]).
-export(['functx-functx-last-day-of-year-all'/1]).
-export(['functx-functx-last-node-1'/1]).
-export(['functx-functx-last-node-2'/1]).
-export(['functx-functx-last-node-all'/1]).
-export(['functx-functx-leaf-elements-1'/1]).
-export(['functx-functx-leaf-elements-2'/1]).
-export(['functx-functx-leaf-elements-all'/1]).
-export(['functx-functx-left-trim-1'/1]).
-export(['functx-functx-left-trim-2'/1]).
-export(['functx-functx-left-trim-3'/1]).
-export(['functx-functx-left-trim-all'/1]).
-export(['functx-functx-line-count-1'/1]).
-export(['functx-functx-line-count-2'/1]).
-export(['functx-functx-line-count-all'/1]).
-export(['functx-functx-lines-1'/1]).
-export(['functx-functx-lines-2'/1]).
-export(['functx-functx-lines-all'/1]).
-export(['functx-functx-max-depth-1'/1]).
-export(['functx-functx-max-depth-2'/1]).
-export(['functx-functx-max-depth-all'/1]).
-export(['functx-functx-max-determine-type-1'/1]).
-export(['functx-functx-max-determine-type-2'/1]).
-export(['functx-functx-max-determine-type-3'/1]).
-export(['functx-functx-max-determine-type-all'/1]).
-export(['functx-functx-max-line-length-1'/1]).
-export(['functx-functx-max-line-length-2'/1]).
-export(['functx-functx-max-line-length-all'/1]).
-export(['functx-functx-max-node-1'/1]).
-export(['functx-functx-max-string-1'/1]).
-export(['functx-functx-max-string-2'/1]).
-export(['functx-functx-max-string-all'/1]).
-export(['functx-functx-min-determine-type-1'/1]).
-export(['functx-functx-min-determine-type-2'/1]).
-export(['functx-functx-min-determine-type-3'/1]).
-export(['functx-functx-min-determine-type-all'/1]).
-export(['functx-functx-min-node-1'/1]).
-export(['functx-functx-min-non-empty-string-1'/1]).
-export(['functx-functx-min-string-1'/1]).
-export(['functx-functx-min-string-2'/1]).
-export(['functx-functx-min-string-all'/1]).
-export(['functx-functx-mmddyyyy-to-date-1'/1]).
-export(['functx-functx-mmddyyyy-to-date-2'/1]).
-export(['functx-functx-mmddyyyy-to-date-3'/1]).
-export(['functx-functx-mmddyyyy-to-date-all'/1]).
-export(['functx-functx-month-abbrev-en-1'/1]).
-export(['functx-functx-month-abbrev-en-2'/1]).
-export(['functx-functx-month-abbrev-en-3'/1]).
-export(['functx-functx-month-abbrev-en-all'/1]).
-export(['functx-functx-month-name-en-1'/1]).
-export(['functx-functx-month-name-en-2'/1]).
-export(['functx-functx-month-name-en-3'/1]).
-export(['functx-functx-month-name-en-all'/1]).
-export(['functx-functx-name-test-1'/1]).
-export(['functx-functx-name-test-2'/1]).
-export(['functx-functx-name-test-3'/1]).
-export(['functx-functx-name-test-4'/1]).
-export(['functx-functx-name-test-5'/1]).
-export(['functx-functx-name-test-all'/1]).
-export(['functx-functx-namespaces-in-use-1'/1]).
-export(['functx-functx-next-day-1'/1]).
-export(['functx-functx-next-day-2'/1]).
-export(['functx-functx-next-day-all'/1]).
-export(['functx-functx-node-kind-1'/1]).
-export(['functx-functx-node-kind-2'/1]).
-export(['functx-functx-node-kind-3'/1]).
-export(['functx-functx-node-kind-4'/1]).
-export(['functx-functx-node-kind-5'/1]).
-export(['functx-functx-node-kind-6'/1]).
-export(['functx-functx-node-kind-all'/1]).
-export(['functx-functx-non-distinct-values-1'/1]).
-export(['functx-functx-non-distinct-values-2'/1]).
-export(['functx-functx-non-distinct-values-3'/1]).
-export(['functx-functx-non-distinct-values-all'/1]).
-export(['functx-functx-number-of-matches-1'/1]).
-export(['functx-functx-number-of-matches-2'/1]).
-export(['functx-functx-number-of-matches-3'/1]).
-export(['functx-functx-number-of-matches-all'/1]).
-export(['functx-functx-ordinal-number-en-1'/1]).
-export(['functx-functx-ordinal-number-en-2'/1]).
-export(['functx-functx-ordinal-number-en-all'/1]).
-export(['functx-functx-pad-integer-to-length-1'/1]).
-export(['functx-functx-pad-integer-to-length-2'/1]).
-export(['functx-functx-pad-integer-to-length-3'/1]).
-export(['functx-functx-pad-integer-to-length-all'/1]).
-export(['functx-functx-pad-string-to-length-1'/1]).
-export(['functx-functx-pad-string-to-length-2'/1]).
-export(['functx-functx-pad-string-to-length-3'/1]).
-export(['functx-functx-pad-string-to-length-all'/1]).
-export(['functx-functx-path-to-node-with-pos-1'/1]).
-export(['functx-functx-path-to-node-with-pos-2'/1]).
-export(['functx-functx-path-to-node-with-pos-all'/1]).
-export(['functx-functx-path-to-node-1'/1]).
-export(['functx-functx-path-to-node-2'/1]).
-export(['functx-functx-path-to-node-all'/1]).
-export(['functx-functx-precedes-not-ancestor-1'/1]).
-export(['functx-functx-precedes-not-ancestor-2'/1]).
-export(['functx-functx-precedes-not-ancestor-3'/1]).
-export(['functx-functx-precedes-not-ancestor-all'/1]).
-export(['functx-functx-previous-day-1'/1]).
-export(['functx-functx-previous-day-2'/1]).
-export(['functx-functx-previous-day-all'/1]).
-export(['functx-functx-remove-attributes-deep-1'/1]).
-export(['functx-functx-remove-attributes-deep-2'/1]).
-export(['functx-functx-remove-attributes-deep-3'/1]).
-export(['functx-functx-remove-attributes-deep-all'/1]).
-export(['functx-functx-remove-attributes-1'/1]).
-export(['functx-functx-remove-attributes-2'/1]).
-export(['functx-functx-remove-attributes-3'/1]).
-export(['functx-functx-remove-attributes-4'/1]).
-export(['functx-functx-remove-attributes-all'/1]).
-export(['functx-functx-remove-elements-deep-1'/1]).
-export(['functx-functx-remove-elements-deep-2'/1]).
-export(['functx-functx-remove-elements-deep-3'/1]).
-export(['functx-functx-remove-elements-deep-4'/1]).
-export(['functx-functx-remove-elements-deep-all'/1]).
-export(['functx-functx-remove-elements-not-contents-1'/1]).
-export(['functx-functx-remove-elements-not-contents-2'/1]).
-export(['functx-functx-remove-elements-not-contents-3'/1]).
-export(['functx-functx-remove-elements-not-contents-4'/1]).
-export(['functx-functx-remove-elements-not-contents-all'/1]).
-export(['functx-functx-remove-elements-1'/1]).
-export(['functx-functx-remove-elements-2'/1]).
-export(['functx-functx-remove-elements-3'/1]).
-export(['functx-functx-remove-elements-all'/1]).
-export(['functx-functx-repeat-string-1'/1]).
-export(['functx-functx-repeat-string-2'/1]).
-export(['functx-functx-repeat-string-all'/1]).
-export(['functx-functx-replace-beginning-1'/1]).
-export(['functx-functx-replace-beginning-2'/1]).
-export(['functx-functx-replace-beginning-3'/1]).
-export(['functx-functx-replace-beginning-4'/1]).
-export(['functx-functx-replace-beginning-all'/1]).
-export(['functx-functx-replace-element-values-1'/1]).
-export(['functx-functx-replace-element-values-2'/1]).
-export(['functx-functx-replace-element-values-all'/1]).
-export(['functx-functx-replace-first-1'/1]).
-export(['functx-functx-replace-first-2'/1]).
-export(['functx-functx-replace-first-3'/1]).
-export(['functx-functx-replace-first-4'/1]).
-export(['functx-functx-replace-first-5'/1]).
-export(['functx-functx-replace-first-all'/1]).
-export(['functx-functx-replace-multi-1'/1]).
-export(['functx-functx-reverse-string-1'/1]).
-export(['functx-functx-reverse-string-2'/1]).
-export(['functx-functx-reverse-string-all'/1]).
-export(['functx-functx-right-trim-1'/1]).
-export(['functx-functx-right-trim-2'/1]).
-export(['functx-functx-right-trim-3'/1]).
-export(['functx-functx-right-trim-all'/1]).
-export(['functx-functx-scheme-from-uri-1'/1]).
-export(['functx-functx-scheme-from-uri-2'/1]).
-export(['functx-functx-scheme-from-uri-3'/1]).
-export(['functx-functx-scheme-from-uri-4'/1]).
-export(['functx-functx-scheme-from-uri-5'/1]).
-export(['functx-functx-scheme-from-uri-all'/1]).
-export(['functx-functx-sequence-deep-equal-1'/1]).
-export(['functx-functx-sequence-deep-equal-2'/1]).
-export(['functx-functx-sequence-deep-equal-3'/1]).
-export(['functx-functx-sequence-deep-equal-all'/1]).
-export(['functx-functx-sequence-node-equal-any-order-1'/1]).
-export(['functx-functx-sequence-node-equal-any-order-2'/1]).
-export(['functx-functx-sequence-node-equal-any-order-3'/1]).
-export(['functx-functx-sequence-node-equal-any-order-all'/1]).
-export(['functx-functx-sequence-node-equal-1'/1]).
-export(['functx-functx-sequence-node-equal-2'/1]).
-export(['functx-functx-sequence-node-equal-3'/1]).
-export(['functx-functx-sequence-node-equal-all'/1]).
-export(['functx-functx-sequence-type-1'/1]).
-export(['functx-functx-sequence-type-2'/1]).
-export(['functx-functx-sequence-type-3'/1]).
-export(['functx-functx-sequence-type-4'/1]).
-export(['functx-functx-sequence-type-5'/1]).
-export(['functx-functx-sequence-type-6'/1]).
-export(['functx-functx-sequence-type-7'/1]).
-export(['functx-functx-sequence-type-8'/1]).
-export(['functx-functx-sequence-type-9'/1]).
-export(['functx-functx-sequence-type-10'/1]).
-export(['functx-functx-sequence-type-11'/1]).
-export(['functx-functx-sequence-type-all'/1]).
-export(['functx-functx-siblings-same-name-1'/1]).
-export(['functx-functx-siblings-same-name-2'/1]).
-export(['functx-functx-siblings-same-name-all'/1]).
-export(['functx-functx-siblings-1'/1]).
-export(['functx-functx-siblings-2'/1]).
-export(['functx-functx-siblings-all'/1]).
-export(['functx-functx-sort-as-numeric-1'/1]).
-export(['functx-functx-sort-as-numeric-2'/1]).
-export(['functx-functx-sort-as-numeric-all'/1]).
-export(['functx-functx-sort-case-insensitive-1'/1]).
-export(['functx-functx-sort-case-insensitive-2'/1]).
-export(['functx-functx-sort-case-insensitive-all'/1]).
-export(['functx-functx-sort-document-order-1'/1]).
-export(['functx-functx-sort-1'/1]).
-export(['functx-functx-sort-2'/1]).
-export(['functx-functx-sort-all'/1]).
-export(['functx-functx-substring-after-if-contains-1'/1]).
-export(['functx-functx-substring-after-if-contains-2'/1]).
-export(['functx-functx-substring-after-if-contains-all'/1]).
-export(['functx-functx-substring-after-last-match-1'/1]).
-export(['functx-functx-substring-after-last-match-2'/1]).
-export(['functx-functx-substring-after-last-match-3'/1]).
-export(['functx-functx-substring-after-last-match-all'/1]).
-export(['functx-functx-substring-after-last-1'/1]).
-export(['functx-functx-substring-after-last-2'/1]).
-export(['functx-functx-substring-after-last-3'/1]).
-export(['functx-functx-substring-after-last-all'/1]).
-export(['functx-functx-substring-after-match-1'/1]).
-export(['functx-functx-substring-after-match-2'/1]).
-export(['functx-functx-substring-after-match-3'/1]).
-export(['functx-functx-substring-after-match-all'/1]).
-export(['functx-functx-substring-before-if-contains-1'/1]).
-export(['functx-functx-substring-before-if-contains-2'/1]).
-export(['functx-functx-substring-before-if-contains-all'/1]).
-export(['functx-functx-substring-before-last-match-1'/1]).
-export(['functx-functx-substring-before-last-match-2'/1]).
-export(['functx-functx-substring-before-last-match-3'/1]).
-export(['functx-functx-substring-before-last-match-all'/1]).
-export(['functx-functx-substring-before-last-1'/1]).
-export(['functx-functx-substring-before-last-2'/1]).
-export(['functx-functx-substring-before-last-3'/1]).
-export(['functx-functx-substring-before-last-all'/1]).
-export(['functx-functx-substring-before-match-1'/1]).
-export(['functx-functx-substring-before-match-2'/1]).
-export(['functx-functx-substring-before-match-3'/1]).
-export(['functx-functx-substring-before-match-all'/1]).
-export(['functx-functx-time-1'/1]).
-export(['functx-functx-time-2'/1]).
-export(['functx-functx-time-all'/1]).
-export(['functx-functx-timezone-from-duration-1'/1]).
-export(['functx-functx-timezone-from-duration-2'/1]).
-export(['functx-functx-timezone-from-duration-3'/1]).
-export(['functx-functx-timezone-from-duration-all'/1]).
-export(['functx-functx-total-days-from-duration-1'/1]).
-export(['functx-functx-total-days-from-duration-2'/1]).
-export(['functx-functx-total-days-from-duration-3'/1]).
-export(['functx-functx-total-days-from-duration-4'/1]).
-export(['functx-functx-total-days-from-duration-all'/1]).
-export(['functx-functx-total-hours-from-duration-1'/1]).
-export(['functx-functx-total-hours-from-duration-2'/1]).
-export(['functx-functx-total-hours-from-duration-3'/1]).
-export(['functx-functx-total-hours-from-duration-4'/1]).
-export(['functx-functx-total-hours-from-duration-5'/1]).
-export(['functx-functx-total-hours-from-duration-all'/1]).
-export(['functx-functx-total-minutes-from-duration-1'/1]).
-export(['functx-functx-total-minutes-from-duration-2'/1]).
-export(['functx-functx-total-minutes-from-duration-3'/1]).
-export(['functx-functx-total-minutes-from-duration-4'/1]).
-export(['functx-functx-total-minutes-from-duration-all'/1]).
-export(['functx-functx-total-months-from-duration-1'/1]).
-export(['functx-functx-total-months-from-duration-2'/1]).
-export(['functx-functx-total-months-from-duration-3'/1]).
-export(['functx-functx-total-months-from-duration-all'/1]).
-export(['functx-functx-total-seconds-from-duration-1'/1]).
-export(['functx-functx-total-seconds-from-duration-2'/1]).
-export(['functx-functx-total-seconds-from-duration-3'/1]).
-export(['functx-functx-total-seconds-from-duration-4'/1]).
-export(['functx-functx-total-seconds-from-duration-all'/1]).
-export(['functx-functx-total-years-from-duration-1'/1]).
-export(['functx-functx-total-years-from-duration-2'/1]).
-export(['functx-functx-total-years-from-duration-3'/1]).
-export(['functx-functx-total-years-from-duration-all'/1]).
-export(['functx-functx-trim-1'/1]).
-export(['functx-functx-trim-2'/1]).
-export(['functx-functx-trim-3'/1]).
-export(['functx-functx-trim-all'/1]).
-export(['functx-functx-update-attributes-1'/1]).
-export(['functx-functx-update-attributes-2'/1]).
-export(['functx-functx-update-attributes-3'/1]).
-export(['functx-functx-update-attributes-4'/1]).
-export(['functx-functx-update-attributes-all'/1]).
-export(['functx-functx-value-except-1'/1]).
-export(['functx-functx-value-except-2'/1]).
-export(['functx-functx-value-except-3'/1]).
-export(['functx-functx-value-except-4'/1]).
-export(['functx-functx-value-except-all'/1]).
-export(['functx-functx-value-intersect-1'/1]).
-export(['functx-functx-value-intersect-2'/1]).
-export(['functx-functx-value-intersect-3'/1]).
-export(['functx-functx-value-intersect-4'/1]).
-export(['functx-functx-value-intersect-all'/1]).
-export(['functx-functx-value-union-1'/1]).
-export(['functx-functx-value-union-2'/1]).
-export(['functx-functx-value-union-3'/1]).
-export(['functx-functx-value-union-4'/1]).
-export(['functx-functx-value-union-all'/1]).
-export(['functx-functx-word-count-1'/1]).
-export(['functx-functx-word-count-2'/1]).
-export(['functx-functx-word-count-3'/1]).
-export(['functx-functx-word-count-all'/1]).
-export(['functx-functx-words-to-camel-case-1'/1]).
-export(['functx-functx-words-to-camel-case-2'/1]).
-export(['functx-functx-words-to-camel-case-all'/1]).
-export(['functx-functx-wrap-values-in-elements-1'/1]).
-export(['functx-functx-wrap-values-in-elements-2'/1]).
-export(['functx-functx-wrap-values-in-elements-3'/1]).
-export(['functx-functx-wrap-values-in-elements-4'/1]).
-export(['functx-functx-wrap-values-in-elements-all'/1]).
-export(['functx-functx-yearMonthDuration-1'/1]).
-export(['functx-functx-yearMonthDuration-2'/1]).
-export(['functx-functx-yearMonthDuration-3'/1]).
-export(['functx-functx-yearMonthDuration-4'/1]).
-export(['functx-functx-yearMonthDuration-5'/1]).
-export(['functx-functx-yearMonthDuration-6'/1]).
-export(['functx-functx-yearMonthDuration-7'/1]).
-export(['functx-functx-yearMonthDuration-all'/1]).
-export(['functx-functx-yyyyddmm-to-date-1'/1]).
-export(['functx-functx-yyyyddmm-to-date-2'/1]).
-export(['functx-functx-yyyyddmm-to-date-3'/1]).
-export(['functx-functx-yyyyddmm-to-date-all'/1]).
-export(['functx-functx-yyyymmdd-to-date-1'/1]).
-export(['functx-functx-yyyymmdd-to-date-2'/1]).
-export(['functx-functx-yyyymmdd-to-date-3'/1]).
-export(['functx-functx-yyyymmdd-to-date-all'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'functx-functx-add-attributes-1',
   'functx-functx-add-attributes-2',
   'functx-functx-add-attributes-3',
   'functx-functx-add-attributes-4',
   'functx-functx-add-attributes-5',
   'functx-functx-add-attributes-all',
   'functx-functx-add-months-1',
   'functx-functx-add-months-2',
   'functx-functx-add-months-3',
   'functx-functx-add-months-all',
   'functx-functx-add-or-update-attributes-1',
   'functx-functx-add-or-update-attributes-2',
   'functx-functx-add-or-update-attributes-3',
   'functx-functx-add-or-update-attributes-4',
   'functx-functx-add-or-update-attributes-5',
   'functx-functx-add-or-update-attributes-all',
   'functx-functx-all-whitespace-1',
   'functx-functx-all-whitespace-2',
   'functx-functx-all-whitespace-3',
   'functx-functx-all-whitespace-4',
   'functx-functx-all-whitespace-5',
   'functx-functx-all-whitespace-6',
   'functx-functx-all-whitespace-all',
   'functx-functx-are-distinct-values-1',
   'functx-functx-are-distinct-values-2',
   'functx-functx-are-distinct-values-3',
   'functx-functx-are-distinct-values-all',
   'functx-functx-atomic-type-1',
   'functx-functx-atomic-type-2',
   'functx-functx-atomic-type-3',
   'functx-functx-atomic-type-4',
   'functx-functx-atomic-type-all',
   'functx-functx-avg-empty-is-zero-1',
   'functx-functx-between-exclusive-1',
   'functx-functx-between-exclusive-2',
   'functx-functx-between-exclusive-3',
   'functx-functx-between-exclusive-4',
   'functx-functx-between-exclusive-5',
   'functx-functx-between-exclusive-all',
   'functx-functx-between-inclusive-1',
   'functx-functx-between-inclusive-2',
   'functx-functx-between-inclusive-3',
   'functx-functx-between-inclusive-4',
   'functx-functx-between-inclusive-5',
   'functx-functx-between-inclusive-all',
   'functx-functx-camel-case-to-words-1',
   'functx-functx-camel-case-to-words-2',
   'functx-functx-camel-case-to-words-all',
   'functx-functx-capitalize-first-1',
   'functx-functx-capitalize-first-2',
   'functx-functx-capitalize-first-3',
   'functx-functx-capitalize-first-all',
   'functx-functx-change-element-names-deep-1',
   'functx-functx-change-element-names-deep-2',
   'functx-functx-change-element-names-deep-3',
   'functx-functx-change-element-names-deep-all',
   'functx-functx-change-element-ns-deep-1',
   'functx-functx-change-element-ns-deep-2',
   'functx-functx-change-element-ns-deep-all',
   'functx-functx-change-element-ns-1',
   'functx-functx-change-element-ns-2',
   'functx-functx-change-element-ns-all',
   'functx-functx-chars-1',
   'functx-functx-chars-2',
   'functx-functx-chars-all',
   'functx-functx-contains-any-of-1',
   'functx-functx-contains-any-of-2',
   'functx-functx-contains-any-of-all',
   'functx-functx-contains-case-insensitive-1',
   'functx-functx-contains-case-insensitive-2',
   'functx-functx-contains-case-insensitive-all',
   'functx-functx-contains-word-1',
   'functx-functx-contains-word-2',
   'functx-functx-contains-word-3',
   'functx-functx-contains-word-4',
   'functx-functx-contains-word-5',
   'functx-functx-contains-word-all',
   'functx-functx-copy-attributes-1',
   'functx-functx-copy-attributes-2',
   'functx-functx-copy-attributes-3',
   'functx-functx-copy-attributes-all',
   'functx-functx-date-1',
   'functx-functx-date-2',
   'functx-functx-date-all',
   'functx-functx-dateTime-1',
   'functx-functx-dateTime-2',
   'functx-functx-dateTime-all',
   'functx-functx-day-in-year-1',
   'functx-functx-day-in-year-2',
   'functx-functx-day-in-year-3',
   'functx-functx-day-in-year-all',
   'functx-functx-day-of-week-abbrev-en-1',
   'functx-functx-day-of-week-abbrev-en-2',
   'functx-functx-day-of-week-abbrev-en-all',
   'functx-functx-day-of-week-name-en-1',
   'functx-functx-day-of-week-name-en-2',
   'functx-functx-day-of-week-name-en-all',
   'functx-functx-day-of-week-1',
   'functx-functx-day-of-week-2',
   'functx-functx-day-of-week-3',
   'functx-functx-day-of-week-all',
   'functx-functx-days-in-month-1',
   'functx-functx-days-in-month-2',
   'functx-functx-days-in-month-3',
   'functx-functx-days-in-month-all',
   'functx-functx-dayTimeDuration-1',
   'functx-functx-dayTimeDuration-2',
   'functx-functx-dayTimeDuration-3',
   'functx-functx-dayTimeDuration-4',
   'functx-functx-dayTimeDuration-5',
   'functx-functx-dayTimeDuration-all',
   'functx-functx-ddmmyyyy-to-date-1',
   'functx-functx-ddmmyyyy-to-date-2',
   'functx-functx-ddmmyyyy-to-date-3',
   'functx-functx-ddmmyyyy-to-date-all',
   'functx-functx-depth-of-node-1',
   'functx-functx-depth-of-node-2',
   'functx-functx-depth-of-node-3',
   'functx-functx-depth-of-node-all',
   'functx-functx-distinct-attribute-names-1',
   'functx-functx-distinct-deep-1',
   'functx-functx-distinct-deep-2',
   'functx-functx-distinct-deep-3',
   'functx-functx-distinct-deep-all',
   'functx-functx-distinct-element-names-1',
   'functx-functx-distinct-element-names-2',
   'functx-functx-distinct-element-names-all',
   'functx-functx-distinct-element-paths-1',
   'functx-functx-distinct-element-paths-2',
   'functx-functx-distinct-element-paths-all',
   'functx-functx-distinct-nodes-1',
   'functx-functx-distinct-nodes-2',
   'functx-functx-distinct-nodes-all',
   'functx-functx-duration-from-timezone-1',
   'functx-functx-duration-from-timezone-2',
   'functx-functx-duration-from-timezone-3',
   'functx-functx-duration-from-timezone-all',
   'functx-functx-dynamic-path-1',
   'functx-functx-dynamic-path-2',
   'functx-functx-dynamic-path-3',
   'functx-functx-dynamic-path-4',
   'functx-functx-dynamic-path-all',
   'functx-functx-escape-for-regex-1',
   'functx-functx-escape-for-regex-2',
   'functx-functx-escape-for-regex-all',
   'functx-functx-exclusive-or-1',
   'functx-functx-exclusive-or-2',
   'functx-functx-exclusive-or-3',
   'functx-functx-exclusive-or-all',
   'functx-functx-first-day-of-month-1',
   'functx-functx-first-day-of-month-2',
   'functx-functx-first-day-of-month-3',
   'functx-functx-first-day-of-month-all',
   'functx-functx-first-day-of-year-1',
   'functx-functx-first-day-of-year-2',
   'functx-functx-first-day-of-year-3',
   'functx-functx-first-day-of-year-all',
   'functx-functx-first-node-1',
   'functx-functx-first-node-2',
   'functx-functx-first-node-all',
   'functx-functx-follows-not-descendant-1',
   'functx-functx-follows-not-descendant-2',
   'functx-functx-follows-not-descendant-3',
   'functx-functx-follows-not-descendant-all',
   'functx-functx-format-as-title-en-1',
   'functx-functx-fragment-from-uri-1',
   'functx-functx-fragment-from-uri-2',
   'functx-functx-fragment-from-uri-all',
   'functx-functx-get-matches-and-non-matches-1',
   'functx-functx-get-matches-and-non-matches-2',
   'functx-functx-get-matches-and-non-matches-3',
   'functx-functx-get-matches-and-non-matches-all',
   'functx-functx-get-matches-1',
   'functx-functx-get-matches-2',
   'functx-functx-get-matches-3',
   'functx-functx-get-matches-all',
   'functx-functx-has-element-only-content-1',
   'functx-functx-has-element-only-content-2',
   'functx-functx-has-element-only-content-3',
   'functx-functx-has-element-only-content-4',
   'functx-functx-has-element-only-content-5',
   'functx-functx-has-element-only-content-6',
   'functx-functx-has-element-only-content-7',
   'functx-functx-has-element-only-content-8',
   'functx-functx-has-element-only-content-9',
   'functx-functx-has-element-only-content-all',
   'functx-functx-has-empty-content-1',
   'functx-functx-has-empty-content-2',
   'functx-functx-has-empty-content-3',
   'functx-functx-has-empty-content-4',
   'functx-functx-has-empty-content-5',
   'functx-functx-has-empty-content-6',
   'functx-functx-has-empty-content-7',
   'functx-functx-has-empty-content-all',
   'functx-functx-has-mixed-content-1',
   'functx-functx-has-mixed-content-2',
   'functx-functx-has-mixed-content-3',
   'functx-functx-has-mixed-content-4',
   'functx-functx-has-mixed-content-5',
   'functx-functx-has-mixed-content-6',
   'functx-functx-has-mixed-content-7',
   'functx-functx-has-mixed-content-all',
   'functx-functx-has-simple-content-1',
   'functx-functx-has-simple-content-2',
   'functx-functx-has-simple-content-3',
   'functx-functx-has-simple-content-4',
   'functx-functx-has-simple-content-5',
   'functx-functx-has-simple-content-6',
   'functx-functx-has-simple-content-all',
   'functx-functx-id-from-element-1',
   'functx-functx-id-untyped-1',
   'functx-functx-id-untyped-2',
   'functx-functx-id-untyped-3',
   'functx-functx-id-untyped-all',
   'functx-functx-if-absent-1',
   'functx-functx-if-absent-2',
   'functx-functx-if-absent-3',
   'functx-functx-if-absent-all',
   'functx-functx-if-empty-1',
   'functx-functx-if-empty-2',
   'functx-functx-if-empty-3',
   'functx-functx-if-empty-4',
   'functx-functx-if-empty-5',
   'functx-functx-if-empty-6',
   'functx-functx-if-empty-all',
   'functx-functx-index-of-deep-equal-node-1',
   'functx-functx-index-of-deep-equal-node-2',
   'functx-functx-index-of-deep-equal-node-3',
   'functx-functx-index-of-deep-equal-node-all',
   'functx-functx-index-of-match-first-1',
   'functx-functx-index-of-match-first-2',
   'functx-functx-index-of-match-first-3',
   'functx-functx-index-of-match-first-4',
   'functx-functx-index-of-match-first-5',
   'functx-functx-index-of-match-first-all',
   'functx-functx-index-of-node-1',
   'functx-functx-index-of-node-2',
   'functx-functx-index-of-node-3',
   'functx-functx-index-of-node-all',
   'functx-functx-index-of-string-first-1',
   'functx-functx-index-of-string-first-2',
   'functx-functx-index-of-string-first-3',
   'functx-functx-index-of-string-first-all',
   'functx-functx-index-of-string-last-1',
   'functx-functx-index-of-string-last-2',
   'functx-functx-index-of-string-last-3',
   'functx-functx-index-of-string-last-all',
   'functx-functx-index-of-string-1',
   'functx-functx-index-of-string-2',
   'functx-functx-index-of-string-3',
   'functx-functx-index-of-string-all',
   'functx-functx-insert-string-1',
   'functx-functx-insert-string-2',
   'functx-functx-insert-string-3',
   'functx-functx-insert-string-4',
   'functx-functx-insert-string-all',
   'functx-functx-is-a-number-1',
   'functx-functx-is-a-number-2',
   'functx-functx-is-a-number-3',
   'functx-functx-is-a-number-4',
   'functx-functx-is-a-number-5',
   'functx-functx-is-a-number-6',
   'functx-functx-is-a-number-7',
   'functx-functx-is-a-number-8',
   'functx-functx-is-a-number-all',
   'functx-functx-is-absolute-uri-1',
   'functx-functx-is-absolute-uri-2',
   'functx-functx-is-absolute-uri-3',
   'functx-functx-is-absolute-uri-4',
   'functx-functx-is-absolute-uri-5',
   'functx-functx-is-absolute-uri-all',
   'functx-functx-is-ancestor-1',
   'functx-functx-is-ancestor-2',
   'functx-functx-is-ancestor-3',
   'functx-functx-is-ancestor-4',
   'functx-functx-is-ancestor-all',
   'functx-functx-is-descendant-1',
   'functx-functx-is-descendant-2',
   'functx-functx-is-descendant-3',
   'functx-functx-is-descendant-4',
   'functx-functx-is-descendant-all',
   'functx-functx-is-leap-year-1',
   'functx-functx-is-leap-year-2',
   'functx-functx-is-leap-year-3',
   'functx-functx-is-leap-year-all',
   'functx-functx-is-node-among-descendants-deep-equal-1',
   'functx-functx-is-node-among-descendants-deep-equal-2',
   'functx-functx-is-node-among-descendants-deep-equal-3',
   'functx-functx-is-node-among-descendants-deep-equal-4',
   'functx-functx-is-node-among-descendants-deep-equal-all',
   'functx-functx-is-node-among-descendants-1',
   'functx-functx-is-node-among-descendants-2',
   'functx-functx-is-node-among-descendants-3',
   'functx-functx-is-node-among-descendants-4',
   'functx-functx-is-node-among-descendants-all',
   'functx-functx-is-node-in-sequence-deep-equal-1',
   'functx-functx-is-node-in-sequence-deep-equal-2',
   'functx-functx-is-node-in-sequence-deep-equal-3',
   'functx-functx-is-node-in-sequence-deep-equal-all',
   'functx-functx-is-node-in-sequence-1',
   'functx-functx-is-node-in-sequence-2',
   'functx-functx-is-node-in-sequence-3',
   'functx-functx-is-node-in-sequence-all',
   'functx-functx-is-value-in-sequence-1',
   'functx-functx-is-value-in-sequence-2',
   'functx-functx-is-value-in-sequence-3',
   'functx-functx-is-value-in-sequence-all',
   'functx-functx-last-day-of-month-1',
   'functx-functx-last-day-of-month-2',
   'functx-functx-last-day-of-month-3',
   'functx-functx-last-day-of-month-all',
   'functx-functx-last-day-of-year-1',
   'functx-functx-last-day-of-year-2',
   'functx-functx-last-day-of-year-3',
   'functx-functx-last-day-of-year-all',
   'functx-functx-last-node-1',
   'functx-functx-last-node-2',
   'functx-functx-last-node-all',
   'functx-functx-leaf-elements-1',
   'functx-functx-leaf-elements-2',
   'functx-functx-leaf-elements-all',
   'functx-functx-left-trim-1',
   'functx-functx-left-trim-2',
   'functx-functx-left-trim-3',
   'functx-functx-left-trim-all',
   'functx-functx-line-count-1',
   'functx-functx-line-count-2',
   'functx-functx-line-count-all',
   'functx-functx-lines-1',
   'functx-functx-lines-2',
   'functx-functx-lines-all',
   'functx-functx-max-depth-1',
   'functx-functx-max-depth-2',
   'functx-functx-max-depth-all',
   'functx-functx-max-determine-type-1',
   'functx-functx-max-determine-type-2',
   'functx-functx-max-determine-type-3',
   'functx-functx-max-determine-type-all',
   'functx-functx-max-line-length-1',
   'functx-functx-max-line-length-2',
   'functx-functx-max-line-length-all',
   'functx-functx-max-node-1',
   'functx-functx-max-string-1',
   'functx-functx-max-string-2',
   'functx-functx-max-string-all',
   'functx-functx-min-determine-type-1',
   'functx-functx-min-determine-type-2',
   'functx-functx-min-determine-type-3',
   'functx-functx-min-determine-type-all',
   'functx-functx-min-node-1',
   'functx-functx-min-non-empty-string-1',
   'functx-functx-min-string-1',
   'functx-functx-min-string-2',
   'functx-functx-min-string-all',
   'functx-functx-mmddyyyy-to-date-1',
   'functx-functx-mmddyyyy-to-date-2',
   'functx-functx-mmddyyyy-to-date-3',
   'functx-functx-mmddyyyy-to-date-all',
   'functx-functx-month-abbrev-en-1',
   'functx-functx-month-abbrev-en-2',
   'functx-functx-month-abbrev-en-3',
   'functx-functx-month-abbrev-en-all',
   'functx-functx-month-name-en-1',
   'functx-functx-month-name-en-2',
   'functx-functx-month-name-en-3',
   'functx-functx-month-name-en-all',
   'functx-functx-name-test-1',
   'functx-functx-name-test-2',
   'functx-functx-name-test-3',
   'functx-functx-name-test-4',
   'functx-functx-name-test-5',
   'functx-functx-name-test-all',
   'functx-functx-namespaces-in-use-1',
   'functx-functx-next-day-1',
   'functx-functx-next-day-2',
   'functx-functx-next-day-all',
   'functx-functx-node-kind-1',
   'functx-functx-node-kind-2',
   'functx-functx-node-kind-3',
   'functx-functx-node-kind-4',
   'functx-functx-node-kind-5',
   'functx-functx-node-kind-6',
   'functx-functx-node-kind-all',
   'functx-functx-non-distinct-values-1',
   'functx-functx-non-distinct-values-2',
   'functx-functx-non-distinct-values-3',
   'functx-functx-non-distinct-values-all',
   'functx-functx-number-of-matches-1',
   'functx-functx-number-of-matches-2',
   'functx-functx-number-of-matches-3',
   'functx-functx-number-of-matches-all',
   'functx-functx-ordinal-number-en-1',
   'functx-functx-ordinal-number-en-2',
   'functx-functx-ordinal-number-en-all',
   'functx-functx-pad-integer-to-length-1',
   'functx-functx-pad-integer-to-length-2',
   'functx-functx-pad-integer-to-length-3',
   'functx-functx-pad-integer-to-length-all',
   'functx-functx-pad-string-to-length-1',
   'functx-functx-pad-string-to-length-2',
   'functx-functx-pad-string-to-length-3',
   'functx-functx-pad-string-to-length-all',
   'functx-functx-path-to-node-with-pos-1',
   'functx-functx-path-to-node-with-pos-2',
   'functx-functx-path-to-node-with-pos-all',
   'functx-functx-path-to-node-1',
   'functx-functx-path-to-node-2',
   'functx-functx-path-to-node-all',
   'functx-functx-precedes-not-ancestor-1',
   'functx-functx-precedes-not-ancestor-2',
   'functx-functx-precedes-not-ancestor-3',
   'functx-functx-precedes-not-ancestor-all',
   'functx-functx-previous-day-1',
   'functx-functx-previous-day-2',
   'functx-functx-previous-day-all',
   'functx-functx-remove-attributes-deep-1',
   'functx-functx-remove-attributes-deep-2',
   'functx-functx-remove-attributes-deep-3',
   'functx-functx-remove-attributes-deep-all',
   'functx-functx-remove-attributes-1',
   'functx-functx-remove-attributes-2',
   'functx-functx-remove-attributes-3',
   'functx-functx-remove-attributes-4',
   'functx-functx-remove-attributes-all',
   'functx-functx-remove-elements-deep-1',
   'functx-functx-remove-elements-deep-2',
   'functx-functx-remove-elements-deep-3',
   'functx-functx-remove-elements-deep-4',
   'functx-functx-remove-elements-deep-all',
   'functx-functx-remove-elements-not-contents-1',
   'functx-functx-remove-elements-not-contents-2',
   'functx-functx-remove-elements-not-contents-3',
   'functx-functx-remove-elements-not-contents-4',
   'functx-functx-remove-elements-not-contents-all',
   'functx-functx-remove-elements-1',
   'functx-functx-remove-elements-2',
   'functx-functx-remove-elements-3',
   'functx-functx-remove-elements-all',
   'functx-functx-repeat-string-1',
   'functx-functx-repeat-string-2',
   'functx-functx-repeat-string-all',
   'functx-functx-replace-beginning-1',
   'functx-functx-replace-beginning-2',
   'functx-functx-replace-beginning-3',
   'functx-functx-replace-beginning-4',
   'functx-functx-replace-beginning-all',
   'functx-functx-replace-element-values-1',
   'functx-functx-replace-element-values-2',
   'functx-functx-replace-element-values-all',
   'functx-functx-replace-first-1',
   'functx-functx-replace-first-2',
   'functx-functx-replace-first-3',
   'functx-functx-replace-first-4',
   'functx-functx-replace-first-5',
   'functx-functx-replace-first-all',
   'functx-functx-replace-multi-1',
   'functx-functx-reverse-string-1',
   'functx-functx-reverse-string-2',
   'functx-functx-reverse-string-all',
   'functx-functx-right-trim-1',
   'functx-functx-right-trim-2',
   'functx-functx-right-trim-3',
   'functx-functx-right-trim-all',
   'functx-functx-scheme-from-uri-1',
   'functx-functx-scheme-from-uri-2',
   'functx-functx-scheme-from-uri-3',
   'functx-functx-scheme-from-uri-4',
   'functx-functx-scheme-from-uri-5',
   'functx-functx-scheme-from-uri-all',
   'functx-functx-sequence-deep-equal-1',
   'functx-functx-sequence-deep-equal-2',
   'functx-functx-sequence-deep-equal-3',
   'functx-functx-sequence-deep-equal-all',
   'functx-functx-sequence-node-equal-any-order-1',
   'functx-functx-sequence-node-equal-any-order-2',
   'functx-functx-sequence-node-equal-any-order-3',
   'functx-functx-sequence-node-equal-any-order-all',
   'functx-functx-sequence-node-equal-1',
   'functx-functx-sequence-node-equal-2',
   'functx-functx-sequence-node-equal-3',
   'functx-functx-sequence-node-equal-all',
   'functx-functx-sequence-type-1',
   'functx-functx-sequence-type-2',
   'functx-functx-sequence-type-3',
   'functx-functx-sequence-type-4',
   'functx-functx-sequence-type-5',
   'functx-functx-sequence-type-6',
   'functx-functx-sequence-type-7',
   'functx-functx-sequence-type-8',
   'functx-functx-sequence-type-9',
   'functx-functx-sequence-type-10',
   'functx-functx-sequence-type-11',
   'functx-functx-sequence-type-all',
   'functx-functx-siblings-same-name-1',
   'functx-functx-siblings-same-name-2',
   'functx-functx-siblings-same-name-all',
   'functx-functx-siblings-1',
   'functx-functx-siblings-2',
   'functx-functx-siblings-all',
   'functx-functx-sort-as-numeric-1',
   'functx-functx-sort-as-numeric-2',
   'functx-functx-sort-as-numeric-all',
   'functx-functx-sort-case-insensitive-1',
   'functx-functx-sort-case-insensitive-2',
   'functx-functx-sort-case-insensitive-all',
   'functx-functx-sort-document-order-1',
   'functx-functx-sort-1',
   'functx-functx-sort-2',
   'functx-functx-sort-all',
   'functx-functx-substring-after-if-contains-1',
   'functx-functx-substring-after-if-contains-2',
   'functx-functx-substring-after-if-contains-all',
   'functx-functx-substring-after-last-match-1',
   'functx-functx-substring-after-last-match-2',
   'functx-functx-substring-after-last-match-3',
   'functx-functx-substring-after-last-match-all',
   'functx-functx-substring-after-last-1',
   'functx-functx-substring-after-last-2',
   'functx-functx-substring-after-last-3',
   'functx-functx-substring-after-last-all',
   'functx-functx-substring-after-match-1',
   'functx-functx-substring-after-match-2',
   'functx-functx-substring-after-match-3',
   'functx-functx-substring-after-match-all',
   'functx-functx-substring-before-if-contains-1',
   'functx-functx-substring-before-if-contains-2',
   'functx-functx-substring-before-if-contains-all',
   'functx-functx-substring-before-last-match-1',
   'functx-functx-substring-before-last-match-2',
   'functx-functx-substring-before-last-match-3',
   'functx-functx-substring-before-last-match-all',
   'functx-functx-substring-before-last-1',
   'functx-functx-substring-before-last-2',
   'functx-functx-substring-before-last-3',
   'functx-functx-substring-before-last-all',
   'functx-functx-substring-before-match-1',
   'functx-functx-substring-before-match-2',
   'functx-functx-substring-before-match-3',
   'functx-functx-substring-before-match-all',
   'functx-functx-time-1',
   'functx-functx-time-2',
   'functx-functx-time-all',
   'functx-functx-timezone-from-duration-1',
   'functx-functx-timezone-from-duration-2',
   'functx-functx-timezone-from-duration-3',
   'functx-functx-timezone-from-duration-all',
   'functx-functx-total-days-from-duration-1',
   'functx-functx-total-days-from-duration-2',
   'functx-functx-total-days-from-duration-3',
   'functx-functx-total-days-from-duration-4',
   'functx-functx-total-days-from-duration-all',
   'functx-functx-total-hours-from-duration-1',
   'functx-functx-total-hours-from-duration-2',
   'functx-functx-total-hours-from-duration-3',
   'functx-functx-total-hours-from-duration-4',
   'functx-functx-total-hours-from-duration-5',
   'functx-functx-total-hours-from-duration-all',
   'functx-functx-total-minutes-from-duration-1',
   'functx-functx-total-minutes-from-duration-2',
   'functx-functx-total-minutes-from-duration-3',
   'functx-functx-total-minutes-from-duration-4',
   'functx-functx-total-minutes-from-duration-all',
   'functx-functx-total-months-from-duration-1',
   'functx-functx-total-months-from-duration-2',
   'functx-functx-total-months-from-duration-3',
   'functx-functx-total-months-from-duration-all',
   'functx-functx-total-seconds-from-duration-1',
   'functx-functx-total-seconds-from-duration-2',
   'functx-functx-total-seconds-from-duration-3',
   'functx-functx-total-seconds-from-duration-4',
   'functx-functx-total-seconds-from-duration-all',
   'functx-functx-total-years-from-duration-1',
   'functx-functx-total-years-from-duration-2',
   'functx-functx-total-years-from-duration-3',
   'functx-functx-total-years-from-duration-all',
   'functx-functx-trim-1',
   'functx-functx-trim-2',
   'functx-functx-trim-3',
   'functx-functx-trim-all',
   'functx-functx-update-attributes-1',
   'functx-functx-update-attributes-2',
   'functx-functx-update-attributes-3',
   'functx-functx-update-attributes-4',
   'functx-functx-update-attributes-all',
   'functx-functx-value-except-1',
   'functx-functx-value-except-2',
   'functx-functx-value-except-3',
   'functx-functx-value-except-4',
   'functx-functx-value-except-all',
   'functx-functx-value-intersect-1',
   'functx-functx-value-intersect-2',
   'functx-functx-value-intersect-3',
   'functx-functx-value-intersect-4',
   'functx-functx-value-intersect-all',
   'functx-functx-value-union-1',
   'functx-functx-value-union-2',
   'functx-functx-value-union-3',
   'functx-functx-value-union-4',
   'functx-functx-value-union-all',
   'functx-functx-word-count-1',
   'functx-functx-word-count-2',
   'functx-functx-word-count-3',
   'functx-functx-word-count-all',
   'functx-functx-words-to-camel-case-1',
   'functx-functx-words-to-camel-case-2',
   'functx-functx-words-to-camel-case-all',
   'functx-functx-wrap-values-in-elements-1',
   'functx-functx-wrap-values-in-elements-2',
   'functx-functx-wrap-values-in-elements-3',
   'functx-functx-wrap-values-in-elements-4',
   'functx-functx-wrap-values-in-elements-all',
   'functx-functx-yearMonthDuration-1',
   'functx-functx-yearMonthDuration-2',
   'functx-functx-yearMonthDuration-3',
   'functx-functx-yearMonthDuration-4',
   'functx-functx-yearMonthDuration-5',
   'functx-functx-yearMonthDuration-6',
   'functx-functx-yearMonthDuration-7',
   'functx-functx-yearMonthDuration-all',
   'functx-functx-yyyyddmm-to-date-1',
   'functx-functx-yyyyddmm-to-date-2',
   'functx-functx-yyyyddmm-to-date-3',
   'functx-functx-yyyyddmm-to-date-all',
   'functx-functx-yyyymmdd-to-date-1',
   'functx-functx-yyyymmdd-to-date-2',
   'functx-functx-yyyymmdd-to-date-3',
   'functx-functx-yyyymmdd-to-date-all'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('functx_book') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/FunctxFn/functx_book.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/FunctxFunctx.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'functx-functx-add-attributes-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
            declare namespace new = \"http://new\";
            (:~ 
               : Adds attributes to XML elements : 
               : @author Priscilla Walmsley, Datypic 
               : @version 1.0 
               : @see http://www.xqueryfunctions.com/xq/functx_add-attributes.html 
               : @param $elements the element(s) to which you wish to add the attribute 
               : @param $attrNames the name(s) of the attribute(s) to add 
               : @param $attrValues the value(s) of the attribute(s) to add :)
            declare function functx:add-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { 
               for $element in $elements return element { node-name($element)} { 
                  for $attrName at $seq in $attrNames return                     
                    if ($element/@*[node-name(.) = $attrName]) then () else attribute {$attrName} {$attrValues[$seq]}, $element/@*, $element/node() } 
            } ;
            let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> 
            return (functx:add-attributes( $in-xml/a, xs:QName('att1'), 1))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a att1=\"1\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-attributes-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://new\";
         (:~ 
            : Adds attributes to XML elements : 
            : @author Priscilla Walmsley, Datypic 
            : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-attributes.html 
            : @param $elements the element(s) to which you wish to add the attribute 
            : @param $attrNames the name(s) of the attribute(s) to add 
            : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:add-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { 
            for $element in $elements 
            return element { node-name($element)} { 
               for $attrName at $seq in $attrNames 
               return if ($element/@*[node-name(.) = $attrName]) then () else attribute {$attrName} {$attrValues[$seq]}, $element/@*, $element/node() } 
         } ;
         let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> 
         return (functx:add-attributes( $in-xml/a, (xs:QName('att1'),xs:QName('att2')), (1,2)))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a att1=\"1\" att2=\"2\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-attributes-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://new\";
         (:~ 
            : Adds attributes to XML elements : 
            : @author Priscilla Walmsley, Datypic 
            : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-attributes.html 
            : @param $elements the element(s) to which you wish to add the attribute 
            : @param $attrNames the name(s) of the attribute(s) to add 
            : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:add-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { 
            for $element in $elements 
            return element { node-name($element)} { 
               for $attrName at $seq in $attrNames 
               return if ($element/@*[node-name(.) = $attrName]) then () else attribute {$attrName} {$attrValues[$seq]}, $element/@*, $element/node() } 
         } ;
         let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> 
         return (functx:add-attributes( $in-xml/b, (xs:QName('att1'),xs:QName('att2')), (1,2)))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b att2=\"2\" att1=\"x\">x</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-attributes-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://new\";
                    (:~ : Adds attributes to XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-attributes.html : @param $elements the element(s) to which you wish to add the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:add-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { 
            for $element in $elements return element { node-name($element)} { 
               for $attrName at $seq in $attrNames 
               return if ($element/@*[node-name(.) = $attrName]) then () else attribute {$attrName} {$attrValues[$seq]}, $element/@*, $element/node() } 
         } ;
         let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> 
         return (functx:add-attributes( $in-xml/a, xs:QName('new:att1'), 1))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns:new=\"http://new\" new:att1=\"1\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-attributes-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://new\";
                    (:~ : Adds attributes to XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-attributes.html : @param $elements the element(s) to which you wish to add the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:add-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { 
            for $element in $elements 
            return element { node-name($element)} { 
               for $attrName at $seq in $attrNames 
               return if ($element/@*[node-name(.) = $attrName]) then () else attribute {$attrName} {$attrValues[$seq]}, $element/@*, $element/node() } 
            } ;
         let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> 
         return (functx:add-attributes( $in-xml/a, QName('http://new','new:att1'), 1))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns:new=\"http://new\" new:att1=\"1\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-attributes-all'(_Config) ->
   Qry = "
         declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://new\";
         (:~ 
            : Adds attributes to XML elements : 
            : @author Priscilla Walmsley, Datypic 
            : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-attributes.html 
            : @param $elements the element(s) to which you wish to add the attribute 
            : @param $attrNames the name(s) of the attribute(s) to add 
            : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:add-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { 
            for $element in $elements 
            return element { node-name($element)} { 
               for $attrName at $seq in $attrNames 
               return if ($element/@*[node-name(.) = $attrName]) then () else attribute {$attrName} {$attrValues[$seq]}, $element/@*, $element/node() } 
         } ;
         let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> 
         return (functx:add-attributes( $in-xml/a, xs:QName('att1'), 1), 
                  functx:add-attributes( $in-xml/a, (xs:QName('att1'),xs:QName('att2')), (1,2)), 
                  functx:add-attributes( $in-xml/b, (xs:QName('att1'),xs:QName('att2')), (1,2)), 
                  functx:add-attributes( $in-xml/a, xs:QName('new:att1'), 1), 
                  functx:add-attributes( $in-xml/a, QName('http://new','new:att1'), 1))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a att1=\"1\">x</a><a att1=\"1\" att2=\"2\">x</a><b att2=\"2\" att1=\"x\">x</b><a xmlns:new=\"http://new\" new:att1=\"1\">x</a><a xmlns:new=\"http://new\" new:att1=\"1\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-months-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Adds months to a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-months.html : @param $date the date : @param $months the number of months to add :)
         declare function functx:add-months ( $date as xs:anyAtomicType? , $months as xs:integer ) as xs:date? { xs:date($date) + functx:yearMonthDuration(0,$months) } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:add-months(xs:date('2004-01-23'),1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-02-23") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-months-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Adds months to a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-months.html : @param $date the date : @param $months the number of months to add :)
         declare function functx:add-months ( $date as xs:anyAtomicType? , $months as xs:integer ) as xs:date? { xs:date($date) + functx:yearMonthDuration(0,$months) } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:add-months( xs:dateTime('2005-12-31T12:00:13'),2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2006-02-28") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-months-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Adds months to a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-months.html : @param $date the date : @param $months the number of months to add :)
         declare function functx:add-months ( $date as xs:anyAtomicType? , $months as xs:integer ) as xs:date? { xs:date($date) + functx:yearMonthDuration(0,$months) } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:add-months('2005-12-31',-3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2005-09-30") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-months-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Adds months to a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-months.html : @param $date the date : @param $months the number of months to add :)
         declare function functx:add-months ( $date as xs:anyAtomicType? , $months as xs:integer ) as xs:date? { xs:date($date) + functx:yearMonthDuration(0,$months) } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:add-months(xs:date('2004-01-23'),1), functx:add-months( xs:dateTime('2005-12-31T12:00:13'),2), functx:add-months('2005-12-31',-3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-02-23 2006-02-28 2005-09-30") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-or-update-attributes-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://new\";
                    (:~ : Adds attributes to XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-or-update-attributes.html : @param $elements the element(s) to which you wish to add the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:add-or-update-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { for $element in $elements return element { node-name($element)} { for $attrName at $seq in $attrNames return attribute {$attrName} {$attrValues[$seq]}, $element/@*[not(node-name(.) = $attrNames)], $element/node() } } ;
                    let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> return (functx:add-or-update-attributes( $in-xml/a, xs:QName('att1'), 1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a att1=\"1\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-or-update-attributes-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://new\";
                    (:~ : Adds attributes to XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-or-update-attributes.html : @param $elements the element(s) to which you wish to add the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:add-or-update-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { for $element in $elements return element { node-name($element)} { for $attrName at $seq in $attrNames return attribute {$attrName} {$attrValues[$seq]}, $element/@*[not(node-name(.) = $attrNames)], $element/node() } } ;
                    let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> return (functx:add-or-update-attributes( $in-xml/a, (xs:QName('att1'),xs:QName('att2')), (1,2)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a att1=\"1\" att2=\"2\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-or-update-attributes-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://new\";
                    (:~ : Adds attributes to XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-or-update-attributes.html : @param $elements the element(s) to which you wish to add the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:add-or-update-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { for $element in $elements return element { node-name($element)} { for $attrName at $seq in $attrNames return attribute {$attrName} {$attrValues[$seq]}, $element/@*[not(node-name(.) = $attrNames)], $element/node() } } ;
                    let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> return (functx:add-or-update-attributes( $in-xml/b, (xs:QName('att1'),xs:QName('att2')), (1,2)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b att1=\"1\" att2=\"2\">x</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-or-update-attributes-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://new\";
                    (:~ : Adds attributes to XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-or-update-attributes.html : @param $elements the element(s) to which you wish to add the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:add-or-update-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { for $element in $elements return element { node-name($element)} { for $attrName at $seq in $attrNames return attribute {$attrName} {$attrValues[$seq]}, $element/@*[not(node-name(.) = $attrNames)], $element/node() } } ;
                    let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> return (functx:add-or-update-attributes( $in-xml/a, xs:QName('new:att1'), 1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns:new=\"http://new\" new:att1=\"1\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-or-update-attributes-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://new\";
                    (:~ : Adds attributes to XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-or-update-attributes.html : @param $elements the element(s) to which you wish to add the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:add-or-update-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { for $element in $elements return element { node-name($element)} { for $attrName at $seq in $attrNames return attribute {$attrName} {$attrValues[$seq]}, $element/@*[not(node-name(.) = $attrNames)], $element/node() } } ;
                    let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> return (functx:add-or-update-attributes( $in-xml/a, QName('http://new','new:att1'), 1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns:new=\"http://new\" new:att1=\"1\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-add-or-update-attributes-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://new\";
                    (:~ : Adds attributes to XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_add-or-update-attributes.html : @param $elements the element(s) to which you wish to add the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:add-or-update-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { for $element in $elements return element { node-name($element)} { for $attrName at $seq in $attrNames return attribute {$attrName} {$attrValues[$seq]}, $element/@*[not(node-name(.) = $attrNames)], $element/node() } } ;
                    let $in-xml := <in-xml> <a>x</a> <b att1=\"x\">x</b> </in-xml> return (functx:add-or-update-attributes( $in-xml/a, xs:QName('att1'), 1), functx:add-or-update-attributes( $in-xml/a, (xs:QName('att1'),xs:QName('att2')), (1,2)), functx:add-or-update-attributes( $in-xml/b, (xs:QName('att1'),xs:QName('att2')), (1,2)), functx:add-or-update-attributes( $in-xml/a, xs:QName('new:att1'), 1), functx:add-or-update-attributes( $in-xml/a, QName('http://new','new:att1'), 1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a att1=\"1\">x</a><a att1=\"1\" att2=\"2\">x</a><b att1=\"1\" att2=\"2\">x</b><a xmlns:new=\"http://new\" new:att1=\"1\">x</a><a xmlns:new=\"http://new\" new:att1=\"1\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-all-whitespace-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is all whitespace or a zero-length string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_all-whitespace.html : @param $arg the string (or node) to test :)
         declare function functx:all-whitespace ( $arg as xs:string? ) as xs:boolean { normalize-space($arg) = '' } ;
                    let $in-xml := <in-xml> <a> </a> <b>x </b> <c> <x>x</x> </c> </in-xml> return (functx:all-whitespace(' '))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-all-whitespace-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is all whitespace or a zero-length string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_all-whitespace.html : @param $arg the string (or node) to test :)
         declare function functx:all-whitespace ( $arg as xs:string? ) as xs:boolean { normalize-space($arg) = '' } ;
                    let $in-xml := <in-xml> <a> </a> <b>x </b> <c> <x>x</x> </c> </in-xml> return (functx:all-whitespace(' x '))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-all-whitespace-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is all whitespace or a zero-length string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_all-whitespace.html : @param $arg the string (or node) to test :)
         declare function functx:all-whitespace ( $arg as xs:string? ) as xs:boolean { normalize-space($arg) = '' } ;
                    let $in-xml := <in-xml> <a> </a> <b>x </b> <c> <x>x</x> </c> </in-xml> return (functx:all-whitespace($in-xml/a))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-all-whitespace-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is all whitespace or a zero-length string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_all-whitespace.html : @param $arg the string (or node) to test :)
         declare function functx:all-whitespace ( $arg as xs:string? ) as xs:boolean { normalize-space($arg) = '' } ;
                    let $in-xml := <in-xml> <a> </a> <b>x </b> <c> <x>x</x> </c> </in-xml> return (functx:all-whitespace($in-xml/b))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-all-whitespace-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is all whitespace or a zero-length string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_all-whitespace.html : @param $arg the string (or node) to test :)
         declare function functx:all-whitespace ( $arg as xs:string? ) as xs:boolean { normalize-space($arg) = '' } ;
                    let $in-xml := <in-xml> <a> </a> <b>x </b> <c> <x>x</x> </c> </in-xml> return (functx:all-whitespace($in-xml/c))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-all-whitespace-6'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is all whitespace or a zero-length string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_all-whitespace.html : @param $arg the string (or node) to test :)
         declare function functx:all-whitespace ( $arg as xs:string? ) as xs:boolean { normalize-space($arg) = '' } ;
                    let $in-xml := <in-xml> <a> </a> <b>x </b> <c> <x>x</x> </c> </in-xml> return (functx:all-whitespace($in-xml/c/text()[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-all-whitespace-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is all whitespace or a zero-length string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_all-whitespace.html : @param $arg the string (or node) to test :)
         declare function functx:all-whitespace ( $arg as xs:string? ) as xs:boolean { normalize-space($arg) = '' } ;
                    let $in-xml := <in-xml> <a> </a> <b>x </b> <c> <x>x</x> </c> </in-xml> return (functx:all-whitespace(' '), functx:all-whitespace(' x '), functx:all-whitespace($in-xml/a), functx:all-whitespace($in-xml/b), functx:all-whitespace($in-xml/c), functx:all-whitespace($in-xml/c/text()[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false true false false true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-are-distinct-values-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether all the values in a sequence are distinct : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_are-distinct-values.html : @param $seq the sequence of values :)
         declare function functx:are-distinct-values ( $seq as xs:anyAtomicType* ) as xs:boolean { count(distinct-values($seq)) = count($seq) } ;
                    (functx:are-distinct-values( (1,2,1,3)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-are-distinct-values-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether all the values in a sequence are distinct : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_are-distinct-values.html : @param $seq the sequence of values :)
         declare function functx:are-distinct-values ( $seq as xs:anyAtomicType* ) as xs:boolean { count(distinct-values($seq)) = count($seq) } ;
                    (functx:are-distinct-values( (1,2,1,3,2.0)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-are-distinct-values-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether all the values in a sequence are distinct : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_are-distinct-values.html : @param $seq the sequence of values :)
         declare function functx:are-distinct-values ( $seq as xs:anyAtomicType* ) as xs:boolean { count(distinct-values($seq)) = count($seq) } ;
                    (functx:are-distinct-values( (1,2,3) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-are-distinct-values-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether all the values in a sequence are distinct : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_are-distinct-values.html : @param $seq the sequence of values :)
         declare function functx:are-distinct-values ( $seq as xs:anyAtomicType* ) as xs:boolean { count(distinct-values($seq)) = count($seq) } ;
                    (functx:are-distinct-values( (1,2,1,3)), functx:are-distinct-values( (1,2,1,3,2.0)), functx:are-distinct-values( (1,2,3) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false false true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-atomic-type-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (functx:atomic-type(2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xs:integer") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-atomic-type-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (functx:atomic-type('abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xs:string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-atomic-type-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (functx:atomic-type(xs:date('2005-12-15')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xs:date") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-atomic-type-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (functx:atomic-type( (2,'abc',xs:date('2005-12-15'))))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xs:integer xs:string xs:date") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-atomic-type-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (functx:atomic-type(2), functx:atomic-type('abc'), functx:atomic-type(xs:date('2005-12-15')), functx:atomic-type( (2,'abc',xs:date('2005-12-15'))))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xs:integer xs:string xs:date xs:integer xs:string xs:date") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-avg-empty-is-zero-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The average, counting \"empty\" values as zero : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_avg-empty-is-zero.html : @param $values the values to be averaged : @param $allNodes the sequence of all nodes to find the average over :)
         declare function functx:avg-empty-is-zero ( $values as xs:anyAtomicType* , $allNodes as node()* ) as xs:double { if (empty($allNodes)) then 0 else sum($values[string(.) != '']) div count($allNodes) } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"69.99\"/> <price value=\"49.99\" discount=\"\"/> </prices> return (functx:avg-empty-is-zero( $in-xml//price/@discount, $in-xml//price))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-exclusive-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-exclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-exclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value > $minValue and $value < $maxValue } ;
                    (functx:between-exclusive(55, 1, 1000))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-exclusive-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-exclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-exclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value > $minValue and $value < $maxValue } ;
                    (functx:between-exclusive(1, 1, 1000))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-exclusive-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-exclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-exclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value > $minValue and $value < $maxValue } ;
                    (functx:between-exclusive(1200, 1, 1000))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-exclusive-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-exclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-exclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value > $minValue and $value < $maxValue } ;
                    (functx:between-exclusive('b', 'a', 'c'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-exclusive-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-exclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-exclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value > $minValue and $value < $maxValue } ;
                    (functx:between-exclusive(xs:date('2004-10-31'), xs:date('2004-10-15'), xs:date('2004-11-01')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-exclusive-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-exclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-exclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value > $minValue and $value < $maxValue } ;
                    (functx:between-exclusive(55, 1, 1000), functx:between-exclusive(1, 1, 1000), functx:between-exclusive(1200, 1, 1000), functx:between-exclusive('b', 'a', 'c'), functx:between-exclusive(xs:date('2004-10-31'), xs:date('2004-10-15'), xs:date('2004-11-01')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false false true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-inclusive-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values, or equal to one of them : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-inclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-inclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value >= $minValue and $value <= $maxValue } ;
                    (functx:between-inclusive(55, 1, 1000))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-inclusive-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values, or equal to one of them : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-inclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-inclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value >= $minValue and $value <= $maxValue } ;
                    (functx:between-inclusive(1, 1, 1000))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-inclusive-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values, or equal to one of them : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-inclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-inclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value >= $minValue and $value <= $maxValue } ;
                    (functx:between-inclusive(1200, 1, 1000))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-inclusive-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values, or equal to one of them : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-inclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-inclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value >= $minValue and $value <= $maxValue } ;
                    (functx:between-inclusive('b', 'b', 'd'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-inclusive-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values, or equal to one of them : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-inclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-inclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value >= $minValue and $value <= $maxValue } ;
                    (functx:between-inclusive(xs:date('2004-10-31'), xs:date('2004-10-15'), xs:date('2004-11-01')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-between-inclusive-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is between two provided values, or equal to one of them : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_between-inclusive.html : @param $value the value to be tested : @param $minValue the minimum value : @param $maxValue the maximum value :)
         declare function functx:between-inclusive ( $value as xs:anyAtomicType? , $minValue as xs:anyAtomicType , $maxValue as xs:anyAtomicType ) as xs:boolean { $value >= $minValue and $value <= $maxValue } ;
                    (functx:between-inclusive(55, 1, 1000), functx:between-inclusive(1, 1, 1000), functx:between-inclusive(1200, 1, 1000), functx:between-inclusive('b', 'b', 'd'), functx:between-inclusive(xs:date('2004-10-31'), xs:date('2004-10-15'), xs:date('2004-11-01')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true false true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-camel-case-to-words-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Turns a camelCase string into space-separated words : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_camel-case-to-words.html : @param $arg the string to modify : @param $delim the delimiter for the words (e.g. a space) :)
         declare function functx:camel-case-to-words ( $arg as xs:string? , $delim as xs:string ) as xs:string { concat(substring($arg,1,1), replace(substring($arg,2),'(\\p{Lu})', concat($delim, '$1'))) } ;
                    (functx:camel-case-to-words( 'thisIsACamelCaseTerm',' '))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "this Is A Camel Case Term") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-camel-case-to-words-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Turns a camelCase string into space-separated words : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_camel-case-to-words.html : @param $arg the string to modify : @param $delim the delimiter for the words (e.g. a space) :)
         declare function functx:camel-case-to-words ( $arg as xs:string? , $delim as xs:string ) as xs:string { concat(substring($arg,1,1), replace(substring($arg,2),'(\\p{Lu})', concat($delim, '$1'))) } ;
                    (functx:camel-case-to-words( 'thisIsACamelCaseTerm',','))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "this,Is,A,Camel,Case,Term") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-camel-case-to-words-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Turns a camelCase string into space-separated words : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_camel-case-to-words.html : @param $arg the string to modify : @param $delim the delimiter for the words (e.g. a space) :)
         declare function functx:camel-case-to-words ( $arg as xs:string? , $delim as xs:string ) as xs:string { concat(substring($arg,1,1), replace(substring($arg,2),'(\\p{Lu})', concat($delim, '$1'))) } ;
                    (functx:camel-case-to-words( 'thisIsACamelCaseTerm',' '), functx:camel-case-to-words( 'thisIsACamelCaseTerm',','))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "this Is A Camel Case Term this,Is,A,Camel,Case,Term") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-capitalize-first-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Capitalizes the first character of a string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_capitalize-first.html : @param $arg the word or phrase to capitalize :)
         declare function functx:capitalize-first ( $arg as xs:string? ) as xs:string? { concat(upper-case(substring($arg,1,1)), substring($arg,2)) } ;
                    (functx:capitalize-first('hello'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Hello") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-capitalize-first-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Capitalizes the first character of a string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_capitalize-first.html : @param $arg the word or phrase to capitalize :)
         declare function functx:capitalize-first ( $arg as xs:string? ) as xs:string? { concat(upper-case(substring($arg,1,1)), substring($arg,2)) } ;
                    (functx:capitalize-first('hello world'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-capitalize-first-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Capitalizes the first character of a string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_capitalize-first.html : @param $arg the word or phrase to capitalize :)
         declare function functx:capitalize-first ( $arg as xs:string? ) as xs:string? { concat(upper-case(substring($arg,1,1)), substring($arg,2)) } ;
                    (functx:capitalize-first('Hello world'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-capitalize-first-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Capitalizes the first character of a string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_capitalize-first.html : @param $arg the word or phrase to capitalize :)
         declare function functx:capitalize-first ( $arg as xs:string? ) as xs:string? { concat(upper-case(substring($arg,1,1)), substring($arg,2)) } ;
                    (functx:capitalize-first('hello'), functx:capitalize-first('hello world'), functx:capitalize-first('Hello world'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Hello Hello world Hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-change-element-names-deep-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace dty = \"http://datypic.com\";
                    (:~ : Changes the names of elements in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_change-element-names-deep.html : @param $nodes the element(s) to change : @param $oldNames the sequence of names to change from : @param $newNames the sequence of names to change to :)
         declare function functx:change-element-names-deep ( $nodes as node()* , $oldNames as xs:QName* , $newNames as xs:QName* ) as node()* { if (count($oldNames) != count($newNames)) then error(xs:QName('functx:Different_number_of_names')) else for $node in $nodes return if ($node instance of element()) then element {functx:if-empty ($newNames[index-of($oldNames, node-name($node))], node-name($node)) } {$node/@*, functx:change-element-names-deep($node/node(), $oldNames, $newNames)} else if ($node instance of document-node()) then functx:change-element-names-deep($node/node(), $oldNames, $newNames) else $node } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    let $in-xml-1 := <in-xml> <a> <b>b</b> <c>c</c> </a> </in-xml> return let $in-xml-2 := <in-xml xmlns:dty=\"http://datypic.com\"> <a> <dty:b>b</dty:b> <c>c</c> </a> </in-xml> return (functx:change-element-names-deep( $in-xml-1, xs:QName('b'), xs:QName('y')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a><y>b</y><c>c</c></a></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-change-element-names-deep-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace dty = \"http://datypic.com\";
                    (:~ : Changes the names of elements in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_change-element-names-deep.html : @param $nodes the element(s) to change : @param $oldNames the sequence of names to change from : @param $newNames the sequence of names to change to :)
         declare function functx:change-element-names-deep ( $nodes as node()* , $oldNames as xs:QName* , $newNames as xs:QName* ) as node()* { if (count($oldNames) != count($newNames)) then error(xs:QName('functx:Different_number_of_names')) else for $node in $nodes return if ($node instance of element()) then element {functx:if-empty ($newNames[index-of($oldNames, node-name($node))], node-name($node)) } {$node/@*, functx:change-element-names-deep($node/node(), $oldNames, $newNames)} else if ($node instance of document-node()) then functx:change-element-names-deep($node/node(), $oldNames, $newNames) else $node } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    let $in-xml-1 := <in-xml> <a> <b>b</b> <c>c</c> </a> </in-xml> return let $in-xml-2 := <in-xml xmlns:dty=\"http://datypic.com\"> <a> <dty:b>b</dty:b> <c>c</c> </a> </in-xml> return (functx:change-element-names-deep( $in-xml-1, (xs:QName('a'), xs:QName('b'),xs:QName('c')), (xs:QName('x'), xs:QName('y'),xs:QName('z'))))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><x><y>b</y><z>c</z></x></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-change-element-names-deep-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace dty = \"http://datypic.com\";
                    (:~ : Changes the names of elements in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_change-element-names-deep.html : @param $nodes the element(s) to change : @param $oldNames the sequence of names to change from : @param $newNames the sequence of names to change to :)
         declare function functx:change-element-names-deep ( $nodes as node()* , $oldNames as xs:QName* , $newNames as xs:QName* ) as node()* { if (count($oldNames) != count($newNames)) then error(xs:QName('functx:Different_number_of_names')) else for $node in $nodes return if ($node instance of element()) then element {functx:if-empty ($newNames[index-of($oldNames, node-name($node))], node-name($node)) } {$node/@*, functx:change-element-names-deep($node/node(), $oldNames, $newNames)} else if ($node instance of document-node()) then functx:change-element-names-deep($node/node(), $oldNames, $newNames) else $node } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    let $in-xml-1 := <in-xml> <a> <b>b</b> <c>c</c> </a> </in-xml> return let $in-xml-2 := <in-xml xmlns:dty=\"http://datypic.com\"> <a> <dty:b>b</dty:b> <c>c</c> </a> </in-xml> return (functx:change-element-names-deep( $in-xml-2, (xs:QName('dty:b'),xs:QName('c')), (xs:QName('q'), QName('http://new','new:c'))))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a><q>b</q><new:c xmlns:new=\"http://new\">c</new:c></a></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-change-element-names-deep-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace dty = \"http://datypic.com\";
                    (:~ : Changes the names of elements in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_change-element-names-deep.html : @param $nodes the element(s) to change : @param $oldNames the sequence of names to change from : @param $newNames the sequence of names to change to :)
         declare function functx:change-element-names-deep ( $nodes as node()* , $oldNames as xs:QName* , $newNames as xs:QName* ) as node()* { if (count($oldNames) != count($newNames)) then error(xs:QName('functx:Different_number_of_names')) else for $node in $nodes return if ($node instance of element()) then element {functx:if-empty ($newNames[index-of($oldNames, node-name($node))], node-name($node)) } {$node/@*, functx:change-element-names-deep($node/node(), $oldNames, $newNames)} else if ($node instance of document-node()) then functx:change-element-names-deep($node/node(), $oldNames, $newNames) else $node } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    let $in-xml-1 := <in-xml> <a> <b>b</b> <c>c</c> </a> </in-xml> return let $in-xml-2 := <in-xml xmlns:dty=\"http://datypic.com\"> <a> <dty:b>b</dty:b> <c>c</c> </a> </in-xml> return (functx:change-element-names-deep( $in-xml-1, xs:QName('b'), xs:QName('y')), functx:change-element-names-deep( $in-xml-1, (xs:QName('a'), xs:QName('b'),xs:QName('c')), (xs:QName('x'), xs:QName('y'),xs:QName('z'))), functx:change-element-names-deep( $in-xml-2, (xs:QName('dty:b'),xs:QName('c')), (xs:QName('q'), QName('http://new','new:c'))))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a><y>b</y><c>c</c></a></in-xml><in-xml><x><y>b</y><z>c</z></x></in-xml><in-xml><a><q>b</q><new:c xmlns:new=\"http://new\">c</new:c></a></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-change-element-ns-deep-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Changes the namespace of XML elements and its descendants : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_change-element-ns-deep.html : @param $nodes the nodes to change : @param $newns the new namespace : @param $prefix the prefix to use for the new namespace :)
         declare function functx:change-element-ns-deep ( $nodes as node()* , $newns as xs:string , $prefix as xs:string ) as node()* { for $node in $nodes return if ($node instance of element()) then (element {QName ($newns, concat($prefix, if ($prefix = '') then '' else ':', local-name($node)))} {$node/@*, functx:change-element-ns-deep($node/node(), $newns, $prefix)}) else if ($node instance of document-node()) then functx:change-element-ns-deep($node/node(), $newns, $prefix) else $node } ;
                    let $in-xml := <bar:a xmlns:bar=\"http://bar\"> <bar:b>557</bar:b> <bar:c>xyz</bar:c> </bar:a> return (functx:change-element-ns-deep( $in-xml, 'http://foo',''))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns=\"http://foo\"><b>557</b><c>xyz</c></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-change-element-ns-deep-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Changes the namespace of XML elements and its descendants : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_change-element-ns-deep.html : @param $nodes the nodes to change : @param $newns the new namespace : @param $prefix the prefix to use for the new namespace :)
         declare function functx:change-element-ns-deep ( $nodes as node()* , $newns as xs:string , $prefix as xs:string ) as node()* { for $node in $nodes return if ($node instance of element()) then (element {QName ($newns, concat($prefix, if ($prefix = '') then '' else ':', local-name($node)))} {$node/@*, functx:change-element-ns-deep($node/node(), $newns, $prefix)}) else if ($node instance of document-node()) then functx:change-element-ns-deep($node/node(), $newns, $prefix) else $node } ;
                    let $in-xml := <bar:a xmlns:bar=\"http://bar\"> <bar:b>557</bar:b> <bar:c>xyz</bar:c> </bar:a> return (functx:change-element-ns-deep( $in-xml, 'http://foo','foo'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:a xmlns:foo=\"http://foo\"><foo:b>557</foo:b><foo:c>xyz</foo:c></foo:a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-change-element-ns-deep-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Changes the namespace of XML elements and its descendants : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_change-element-ns-deep.html : @param $nodes the nodes to change : @param $newns the new namespace : @param $prefix the prefix to use for the new namespace :)
         declare function functx:change-element-ns-deep ( $nodes as node()* , $newns as xs:string , $prefix as xs:string ) as node()* { for $node in $nodes return if ($node instance of element()) then (element {QName ($newns, concat($prefix, if ($prefix = '') then '' else ':', local-name($node)))} {$node/@*, functx:change-element-ns-deep($node/node(), $newns, $prefix)}) else if ($node instance of document-node()) then functx:change-element-ns-deep($node/node(), $newns, $prefix) else $node } ;
                    let $in-xml := <bar:a xmlns:bar=\"http://bar\"> <bar:b>557</bar:b> <bar:c>xyz</bar:c> </bar:a> return (functx:change-element-ns-deep( $in-xml, 'http://foo',''), functx:change-element-ns-deep( $in-xml, 'http://foo','foo'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns=\"http://foo\"><b>557</b><c>xyz</c></a><foo:a xmlns:foo=\"http://foo\"><foo:b>557</foo:b><foo:c>xyz</foo:c></foo:a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-change-element-ns-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Changes the namespace of XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_change-element-ns.html : @param $elements the elements to change : @param $newns the new namespace : @param $prefix the prefix to use for the new namespace :)
         declare function functx:change-element-ns ( $elements as element()* , $newns as xs:string , $prefix as xs:string ) as element()? { for $element in $elements return element {QName ($newns, concat($prefix, if ($prefix = '') then '' else ':', local-name($element)))} {$element/@*, $element/node()} } ;
                    let $in-xml := <bar:a xmlns:bar=\"http://bar\"> <bar:b>557</bar:b> <bar:c>xyz</bar:c> </bar:a> return (functx:change-element-ns( $in-xml, 'http://foo',''))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns=\"http://foo\"><bar:b xmlns:bar=\"http://bar\">557</bar:b><bar:c xmlns:bar=\"http://bar\">xyz</bar:c></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-change-element-ns-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Changes the namespace of XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_change-element-ns.html : @param $elements the elements to change : @param $newns the new namespace : @param $prefix the prefix to use for the new namespace :)
         declare function functx:change-element-ns ( $elements as element()* , $newns as xs:string , $prefix as xs:string ) as element()? { for $element in $elements return element {QName ($newns, concat($prefix, if ($prefix = '') then '' else ':', local-name($element)))} {$element/@*, $element/node()} } ;
                    let $in-xml := <bar:a xmlns:bar=\"http://bar\"> <bar:b>557</bar:b> <bar:c>xyz</bar:c> </bar:a> return (functx:change-element-ns( $in-xml, 'http://foo','foo'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:a xmlns:foo=\"http://foo\"><bar:b xmlns:bar=\"http://bar\">557</bar:b><bar:c xmlns:bar=\"http://bar\">xyz</bar:c></foo:a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-change-element-ns-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Changes the namespace of XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_change-element-ns.html : @param $elements the elements to change : @param $newns the new namespace : @param $prefix the prefix to use for the new namespace :)
         declare function functx:change-element-ns ( $elements as element()* , $newns as xs:string , $prefix as xs:string ) as element()? { for $element in $elements return element {QName ($newns, concat($prefix, if ($prefix = '') then '' else ':', local-name($element)))} {$element/@*, $element/node()} } ;
                    let $in-xml := <bar:a xmlns:bar=\"http://bar\"> <bar:b>557</bar:b> <bar:c>xyz</bar:c> </bar:a> return (functx:change-element-ns( $in-xml, 'http://foo',''), functx:change-element-ns( $in-xml, 'http://foo','foo'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns=\"http://foo\"><bar:b xmlns:bar=\"http://bar\">557</bar:b><bar:c xmlns:bar=\"http://bar\">xyz</bar:c></a><foo:a xmlns:foo=\"http://foo\"><bar:b xmlns:bar=\"http://bar\">557</bar:b><bar:c xmlns:bar=\"http://bar\">xyz</bar:c></foo:a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-chars-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string to a sequence of characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_chars.html : @param $arg the string to split :)
         declare function functx:chars ( $arg as xs:string? ) as xs:string* { for $ch in string-to-codepoints($arg) return codepoints-to-string($ch) } ;
                    (functx:chars('abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a b c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-chars-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string to a sequence of characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_chars.html : @param $arg the string to split :)
         declare function functx:chars ( $arg as xs:string? ) as xs:string* { for $ch in string-to-codepoints($arg) return codepoints-to-string($ch) } ;
                    (functx:chars('a b c'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a   b   c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-chars-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string to a sequence of characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_chars.html : @param $arg the string to split :)
         declare function functx:chars ( $arg as xs:string? ) as xs:string* { for $ch in string-to-codepoints($arg) return codepoints-to-string($ch) } ;
                    (functx:chars('abc'), functx:chars('a b c'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a b c a   b   c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-any-of-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a string contains any of a sequence of strings : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-any-of.html : @param $arg the string to test : @param $searchStrings the strings to look for :)
         declare function functx:contains-any-of ( $arg as xs:string? , $searchStrings as xs:string* ) as xs:boolean { some $searchString in $searchStrings satisfies contains($arg,$searchString) } ;
                    (functx:contains-any-of('abc',('bc','xy')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-any-of-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a string contains any of a sequence of strings : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-any-of.html : @param $arg the string to test : @param $searchStrings the strings to look for :)
         declare function functx:contains-any-of ( $arg as xs:string? , $searchStrings as xs:string* ) as xs:boolean { some $searchString in $searchStrings satisfies contains($arg,$searchString) } ;
                    (functx:contains-any-of('abc',('de','xy')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-any-of-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a string contains any of a sequence of strings : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-any-of.html : @param $arg the string to test : @param $searchStrings the strings to look for :)
         declare function functx:contains-any-of ( $arg as xs:string? , $searchStrings as xs:string* ) as xs:boolean { some $searchString in $searchStrings satisfies contains($arg,$searchString) } ;
                    (functx:contains-any-of('abc',('bc','xy')), functx:contains-any-of('abc',('de','xy')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-case-insensitive-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one string contains another, without regard to case : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-case-insensitive.html : @param $arg the string to search : @param $substring the substring to find :)
         declare function functx:contains-case-insensitive ( $arg as xs:string? , $substring as xs:string ) as xs:boolean? { contains(upper-case($arg), upper-case($substring)) } ;
                    (functx:contains-case-insensitive( 'abcdef', 'def'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-case-insensitive-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one string contains another, without regard to case : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-case-insensitive.html : @param $arg the string to search : @param $substring the substring to find :)
         declare function functx:contains-case-insensitive ( $arg as xs:string? , $substring as xs:string ) as xs:boolean? { contains(upper-case($arg), upper-case($substring)) } ;
                    (functx:contains-case-insensitive( 'abcdEF', 'def'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-case-insensitive-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one string contains another, without regard to case : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-case-insensitive.html : @param $arg the string to search : @param $substring the substring to find :)
         declare function functx:contains-case-insensitive ( $arg as xs:string? , $substring as xs:string ) as xs:boolean? { contains(upper-case($arg), upper-case($substring)) } ;
                    (functx:contains-case-insensitive( 'abcdef', 'def'), functx:contains-case-insensitive( 'abcdEF', 'def'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-word-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one string contains another, as a separate word : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-word.html : @param $arg the string to search : @param $word the word to find :)
         declare function functx:contains-word ( $arg as xs:string? , $word as xs:string ) as xs:boolean { matches(upper-case($arg), concat('^(.*\\W)?', upper-case(functx:escape-for-regex($word)), '(\\W.*)?$')) } ;
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (functx:contains-word('abc def ghi', 'def'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-word-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one string contains another, as a separate word : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-word.html : @param $arg the string to search : @param $word the word to find :)
         declare function functx:contains-word ( $arg as xs:string? , $word as xs:string ) as xs:boolean { matches(upper-case($arg), concat('^(.*\\W)?', upper-case(functx:escape-for-regex($word)), '(\\W.*)?$')) } ;
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (functx:contains-word('abc.def\\ghi', 'def'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-word-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one string contains another, as a separate word : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-word.html : @param $arg the string to search : @param $word the word to find :)
         declare function functx:contains-word ( $arg as xs:string? , $word as xs:string ) as xs:boolean { matches(upper-case($arg), concat('^(.*\\W)?', upper-case(functx:escape-for-regex($word)), '(\\W.*)?$')) } ;
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (functx:contains-word('abc def ghi', 'abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-word-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one string contains another, as a separate word : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-word.html : @param $arg the string to search : @param $word the word to find :)
         declare function functx:contains-word ( $arg as xs:string? , $word as xs:string ) as xs:boolean { matches(upper-case($arg), concat('^(.*\\W)?', upper-case(functx:escape-for-regex($word)), '(\\W.*)?$')) } ;
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (functx:contains-word('abc', 'abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-word-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one string contains another, as a separate word : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-word.html : @param $arg the string to search : @param $word the word to find :)
         declare function functx:contains-word ( $arg as xs:string? , $word as xs:string ) as xs:boolean { matches(upper-case($arg), concat('^(.*\\W)?', upper-case(functx:escape-for-regex($word)), '(\\W.*)?$')) } ;
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (functx:contains-word('abcdef', 'abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-contains-word-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one string contains another, as a separate word : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_contains-word.html : @param $arg the string to search : @param $word the word to find :)
         declare function functx:contains-word ( $arg as xs:string? , $word as xs:string ) as xs:boolean { matches(upper-case($arg), concat('^(.*\\W)?', upper-case(functx:escape-for-regex($word)), '(\\W.*)?$')) } ;
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (functx:contains-word('abc def ghi', 'def'), functx:contains-word('abc.def\\ghi', 'def'), functx:contains-word('abc def ghi', 'abc'), functx:contains-word('abc', 'abc'), functx:contains-word('abcdef', 'abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true true true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-copy-attributes-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Copies attributes from one element to another : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_copy-attributes.html : @param $copyTo the element to copy attributes to : @param $copyFrom the element to copy attributes from :)
         declare function functx:copy-attributes ( $copyTo as element() , $copyFrom as element() ) as element() { element { node-name($copyTo)} { $copyTo/@*[not(node-name(.) = $copyFrom/@*/node-name(.))], $copyFrom/@*, $copyTo/node() } } ;
                    let $in-xml := <in-xml> <a>123</a>> <b x=\"1\" y=\"2\">456</b> <c x=\"9\">123</c> <d z=\"5\">123</d> </in-xml> return (functx:copy-attributes( $in-xml/a, $in-xml/b))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a y=\"2\" x=\"1\">123</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-copy-attributes-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Copies attributes from one element to another : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_copy-attributes.html : @param $copyTo the element to copy attributes to : @param $copyFrom the element to copy attributes from :)
         declare function functx:copy-attributes ( $copyTo as element() , $copyFrom as element() ) as element() { element { node-name($copyTo)} { $copyTo/@*[not(node-name(.) = $copyFrom/@*/node-name(.))], $copyFrom/@*, $copyTo/node() } } ;
                    let $in-xml := <in-xml> <a>123</a>> <b x=\"1\" y=\"2\">456</b> <c x=\"9\">123</c> <d z=\"5\">123</d> </in-xml> return (functx:copy-attributes( $in-xml/b, $in-xml/c))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b y=\"2\" x=\"9\">456</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-copy-attributes-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Copies attributes from one element to another : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_copy-attributes.html : @param $copyTo the element to copy attributes to : @param $copyFrom the element to copy attributes from :)
         declare function functx:copy-attributes ( $copyTo as element() , $copyFrom as element() ) as element() { element { node-name($copyTo)} { $copyTo/@*[not(node-name(.) = $copyFrom/@*/node-name(.))], $copyFrom/@*, $copyTo/node() } } ;
                    let $in-xml := <in-xml> <a>123</a>> <b x=\"1\" y=\"2\">456</b> <c x=\"9\">123</c> <d z=\"5\">123</d> </in-xml> return (functx:copy-attributes( $in-xml/d, $in-xml/c))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<d z=\"5\" x=\"9\">123</d>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-copy-attributes-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Copies attributes from one element to another : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_copy-attributes.html : @param $copyTo the element to copy attributes to : @param $copyFrom the element to copy attributes from :)
         declare function functx:copy-attributes ( $copyTo as element() , $copyFrom as element() ) as element() { element { node-name($copyTo)} { $copyTo/@*[not(node-name(.) = $copyFrom/@*/node-name(.))], $copyFrom/@*, $copyTo/node() } } ;
                    let $in-xml := <in-xml> <a>123</a>> <b x=\"1\" y=\"2\">456</b> <c x=\"9\">123</c> <d z=\"5\">123</d> </in-xml> return (functx:copy-attributes( $in-xml/a, $in-xml/b), functx:copy-attributes( $in-xml/b, $in-xml/c), functx:copy-attributes( $in-xml/d, $in-xml/c))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a y=\"2\" x=\"1\">123</a><b y=\"2\" x=\"9\">456</b><d z=\"5\" x=\"9\">123</d>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-date-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:date(2006,6,12))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2006-06-12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-date-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:date('2006','06','12'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2006-06-12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-date-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:date(2006,6,12), functx:date('2006','06','12'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2006-06-12 2006-06-12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dateTime-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date/time from individual components : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_datetime.html : @param $year the year : @param $month the month : @param $day the day : @param $hour the hour : @param $minute the minute : @param $second the second :)
         declare function functx:dateTime ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType , $hour as xs:anyAtomicType , $minute as xs:anyAtomicType , $second as xs:anyAtomicType ) as xs:dateTime { xs:dateTime( concat(functx:date($year,$month,$day),'T', functx:time($hour,$minute,$second))) } ;
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (:~ : Construct a time from an hour, minute and second : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_time.html : @param $hour the hour : @param $minute the minute : @param $second the second :)
         declare function functx:time ( $hour as xs:anyAtomicType , $minute as xs:anyAtomicType , $second as xs:anyAtomicType ) as xs:time { xs:time( concat( functx:pad-integer-to-length(xs:integer($hour),2),':', functx:pad-integer-to-length(xs:integer($minute),2),':', functx:pad-integer-to-length(xs:integer($second),2))) } ;
                    (functx:dateTime(2006,6,12,20,6,12))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2006-06-12T20:06:12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dateTime-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date/time from individual components : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_datetime.html : @param $year the year : @param $month the month : @param $day the day : @param $hour the hour : @param $minute the minute : @param $second the second :)
         declare function functx:dateTime ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType , $hour as xs:anyAtomicType , $minute as xs:anyAtomicType , $second as xs:anyAtomicType ) as xs:dateTime { xs:dateTime( concat(functx:date($year,$month,$day),'T', functx:time($hour,$minute,$second))) } ;
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (:~ : Construct a time from an hour, minute and second : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_time.html : @param $hour the hour : @param $minute the minute : @param $second the second :)
         declare function functx:time ( $hour as xs:anyAtomicType , $minute as xs:anyAtomicType , $second as xs:anyAtomicType ) as xs:time { xs:time( concat( functx:pad-integer-to-length(xs:integer($hour),2),':', functx:pad-integer-to-length(xs:integer($minute),2),':', functx:pad-integer-to-length(xs:integer($second),2))) } ;
                    (functx:dateTime('2006','6','12','20','6','12'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2006-06-12T20:06:12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dateTime-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date/time from individual components : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_datetime.html : @param $year the year : @param $month the month : @param $day the day : @param $hour the hour : @param $minute the minute : @param $second the second :)
         declare function functx:dateTime ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType , $hour as xs:anyAtomicType , $minute as xs:anyAtomicType , $second as xs:anyAtomicType ) as xs:dateTime { xs:dateTime( concat(functx:date($year,$month,$day),'T', functx:time($hour,$minute,$second))) } ;
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (:~ : Construct a time from an hour, minute and second : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_time.html : @param $hour the hour : @param $minute the minute : @param $second the second :)
         declare function functx:time ( $hour as xs:anyAtomicType , $minute as xs:anyAtomicType , $second as xs:anyAtomicType ) as xs:time { xs:time( concat( functx:pad-integer-to-length(xs:integer($hour),2),':', functx:pad-integer-to-length(xs:integer($minute),2),':', functx:pad-integer-to-length(xs:integer($second),2))) } ;
                    (functx:dateTime(2006,6,12,20,6,12), functx:dateTime('2006','6','12','20','6','12'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2006-06-12T20:06:12 2006-06-12T20:06:12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-in-year-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The day of the year (a number between 1 and 366) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-in-year.html : @param $date the date :)
         declare function functx:day-in-year ( $date as xs:anyAtomicType? ) as xs:integer? { days-from-duration( xs:date($date) - functx:first-day-of-year($date)) + 1 } ;
                    (:~ : The first day of the year of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-year.html : @param $date the date :)
         declare function functx:first-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 1, 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:day-in-year(xs:date('2004-01-01')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-in-year-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The day of the year (a number between 1 and 366) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-in-year.html : @param $date the date :)
         declare function functx:day-in-year ( $date as xs:anyAtomicType? ) as xs:integer? { days-from-duration( xs:date($date) - functx:first-day-of-year($date)) + 1 } ;
                    (:~ : The first day of the year of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-year.html : @param $date the date :)
         declare function functx:first-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 1, 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:day-in-year( xs:dateTime('2004-02-01T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"32") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-in-year-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The day of the year (a number between 1 and 366) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-in-year.html : @param $date the date :)
         declare function functx:day-in-year ( $date as xs:anyAtomicType? ) as xs:integer? { days-from-duration( xs:date($date) - functx:first-day-of-year($date)) + 1 } ;
                    (:~ : The first day of the year of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-year.html : @param $date the date :)
         declare function functx:first-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 1, 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:day-in-year('2004-02-05'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"36") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-in-year-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The day of the year (a number between 1 and 366) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-in-year.html : @param $date the date :)
         declare function functx:day-in-year ( $date as xs:anyAtomicType? ) as xs:integer? { days-from-duration( xs:date($date) - functx:first-day-of-year($date)) + 1 } ;
                    (:~ : The first day of the year of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-year.html : @param $date the date :)
         declare function functx:first-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 1, 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:day-in-year(xs:date('2004-01-01')), functx:day-in-year( xs:dateTime('2004-02-01T12:00:13')), functx:day-in-year('2004-02-05'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 32 36") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-of-week-abbrev-en-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The abbreviated day of the week, from a date, in English : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week-abbrev-en.html : @param $date the date :)
         declare function functx:day-of-week-abbrev-en ( $date as xs:anyAtomicType? ) as xs:string? { ('Sun', 'Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat') [functx:day-of-week($date) + 1] } ;
                    (:~ : The day of the week, from a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week.html : @param $date the date :)
         declare function functx:day-of-week ( $date as xs:anyAtomicType? ) as xs:integer? { if (empty($date)) then () else xs:integer((xs:date($date) - xs:date('1901-01-06')) div xs:dayTimeDuration('P1D')) mod 7 } ;
                    (functx:day-of-week-abbrev-en( xs:date('2004-11-04')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Thurs") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-of-week-abbrev-en-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The abbreviated day of the week, from a date, in English : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week-abbrev-en.html : @param $date the date :)
         declare function functx:day-of-week-abbrev-en ( $date as xs:anyAtomicType? ) as xs:string? { ('Sun', 'Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat') [functx:day-of-week($date) + 1] } ;
                    (:~ : The day of the week, from a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week.html : @param $date the date :)
         declare function functx:day-of-week ( $date as xs:anyAtomicType? ) as xs:integer? { if (empty($date)) then () else xs:integer((xs:date($date) - xs:date('1901-01-06')) div xs:dayTimeDuration('P1D')) mod 7 } ;
                    (functx:day-of-week-abbrev-en('2004-11-04'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Thurs") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-of-week-abbrev-en-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The abbreviated day of the week, from a date, in English : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week-abbrev-en.html : @param $date the date :)
         declare function functx:day-of-week-abbrev-en ( $date as xs:anyAtomicType? ) as xs:string? { ('Sun', 'Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat') [functx:day-of-week($date) + 1] } ;
                    (:~ : The day of the week, from a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week.html : @param $date the date :)
         declare function functx:day-of-week ( $date as xs:anyAtomicType? ) as xs:integer? { if (empty($date)) then () else xs:integer((xs:date($date) - xs:date('1901-01-06')) div xs:dayTimeDuration('P1D')) mod 7 } ;
                    (functx:day-of-week-abbrev-en( xs:date('2004-11-04')), functx:day-of-week-abbrev-en('2004-11-04'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Thurs Thurs") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-of-week-name-en-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The name of the day of the week, from a date, in English : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week-name-en.html : @param $date the date :)
         declare function functx:day-of-week-name-en ( $date as xs:anyAtomicType? ) as xs:string? { ('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday') [functx:day-of-week($date) + 1] } ;
                    (:~ : The day of the week, from a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week.html : @param $date the date :)
         declare function functx:day-of-week ( $date as xs:anyAtomicType? ) as xs:integer? { if (empty($date)) then () else xs:integer((xs:date($date) - xs:date('1901-01-06')) div xs:dayTimeDuration('P1D')) mod 7 } ;
                    (functx:day-of-week-name-en( xs:date('2004-11-04')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Thursday") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-of-week-name-en-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The name of the day of the week, from a date, in English : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week-name-en.html : @param $date the date :)
         declare function functx:day-of-week-name-en ( $date as xs:anyAtomicType? ) as xs:string? { ('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday') [functx:day-of-week($date) + 1] } ;
                    (:~ : The day of the week, from a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week.html : @param $date the date :)
         declare function functx:day-of-week ( $date as xs:anyAtomicType? ) as xs:integer? { if (empty($date)) then () else xs:integer((xs:date($date) - xs:date('1901-01-06')) div xs:dayTimeDuration('P1D')) mod 7 } ;
                    (functx:day-of-week-name-en('2004-11-04'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Thursday") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-of-week-name-en-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The name of the day of the week, from a date, in English : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week-name-en.html : @param $date the date :)
         declare function functx:day-of-week-name-en ( $date as xs:anyAtomicType? ) as xs:string? { ('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday') [functx:day-of-week($date) + 1] } ;
                    (:~ : The day of the week, from a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week.html : @param $date the date :)
         declare function functx:day-of-week ( $date as xs:anyAtomicType? ) as xs:integer? { if (empty($date)) then () else xs:integer((xs:date($date) - xs:date('1901-01-06')) div xs:dayTimeDuration('P1D')) mod 7 } ;
                    (functx:day-of-week-name-en( xs:date('2004-11-04')), functx:day-of-week-name-en('2004-11-04'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Thursday Thursday") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-of-week-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The day of the week, from a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week.html : @param $date the date :)
         declare function functx:day-of-week ( $date as xs:anyAtomicType? ) as xs:integer? { if (empty($date)) then () else xs:integer((xs:date($date) - xs:date('1901-01-06')) div xs:dayTimeDuration('P1D')) mod 7 } ;
                    (functx:day-of-week( xs:date('2004-11-04')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-of-week-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The day of the week, from a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week.html : @param $date the date :)
         declare function functx:day-of-week ( $date as xs:anyAtomicType? ) as xs:integer? { if (empty($date)) then () else xs:integer((xs:date($date) - xs:date('1901-01-06')) div xs:dayTimeDuration('P1D')) mod 7 } ;
                    (functx:day-of-week( xs:dateTime('2004-11-04T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-of-week-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The day of the week, from a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week.html : @param $date the date :)
         declare function functx:day-of-week ( $date as xs:anyAtomicType? ) as xs:integer? { if (empty($date)) then () else xs:integer((xs:date($date) - xs:date('1901-01-06')) div xs:dayTimeDuration('P1D')) mod 7 } ;
                    (functx:day-of-week('2004-11-04'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-day-of-week-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The day of the week, from a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_day-of-week.html : @param $date the date :)
         declare function functx:day-of-week ( $date as xs:anyAtomicType? ) as xs:integer? { if (empty($date)) then () else xs:integer((xs:date($date) - xs:date('1901-01-06')) div xs:dayTimeDuration('P1D')) mod 7 } ;
                    (functx:day-of-week( xs:date('2004-11-04')), functx:day-of-week( xs:dateTime('2004-11-04T12:00:13')), functx:day-of-week('2004-11-04'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4 4 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-days-in-month-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (functx:days-in-month(xs:date('2004-01-23')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"31") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-days-in-month-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (functx:days-in-month( xs:dateTime('2004-02-15T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"29") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-days-in-month-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (functx:days-in-month('2005-02-15'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"28") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-days-in-month-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (functx:days-in-month(xs:date('2004-01-23')), functx:days-in-month( xs:dateTime('2004-02-15T12:00:13')), functx:days-in-month('2005-02-15'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "31 29 28") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dayTimeDuration-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a dayTimeDuration from a number of days, hours, etc. : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_daytimeduration.html : @param $days the number of days : @param $hours the number of hours : @param $minutes the number of minutes : @param $seconds the number of seconds :)
         declare function functx:dayTimeDuration ( $days as xs:decimal? , $hours as xs:decimal? , $minutes as xs:decimal? , $seconds as xs:decimal? ) as xs:dayTimeDuration { (xs:dayTimeDuration('P1D') * functx:if-empty($days,0)) + (xs:dayTimeDuration('PT1H') * functx:if-empty($hours,0)) + (xs:dayTimeDuration('PT1M') * functx:if-empty($minutes,0)) + (xs:dayTimeDuration('PT1S') * functx:if-empty($seconds,0)) } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (functx:dayTimeDuration(1,6,0,0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1DT6H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dayTimeDuration-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a dayTimeDuration from a number of days, hours, etc. : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_daytimeduration.html : @param $days the number of days : @param $hours the number of hours : @param $minutes the number of minutes : @param $seconds the number of seconds :)
         declare function functx:dayTimeDuration ( $days as xs:decimal? , $hours as xs:decimal? , $minutes as xs:decimal? , $seconds as xs:decimal? ) as xs:dayTimeDuration { (xs:dayTimeDuration('P1D') * functx:if-empty($days,0)) + (xs:dayTimeDuration('PT1H') * functx:if-empty($hours,0)) + (xs:dayTimeDuration('PT1M') * functx:if-empty($minutes,0)) + (xs:dayTimeDuration('PT1S') * functx:if-empty($seconds,0)) } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (functx:dayTimeDuration(2.5,0,0,0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2DT12H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dayTimeDuration-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a dayTimeDuration from a number of days, hours, etc. : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_daytimeduration.html : @param $days the number of days : @param $hours the number of hours : @param $minutes the number of minutes : @param $seconds the number of seconds :)
         declare function functx:dayTimeDuration ( $days as xs:decimal? , $hours as xs:decimal? , $minutes as xs:decimal? , $seconds as xs:decimal? ) as xs:dayTimeDuration { (xs:dayTimeDuration('P1D') * functx:if-empty($days,0)) + (xs:dayTimeDuration('PT1H') * functx:if-empty($hours,0)) + (xs:dayTimeDuration('PT1M') * functx:if-empty($minutes,0)) + (xs:dayTimeDuration('PT1S') * functx:if-empty($seconds,0)) } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (functx:dayTimeDuration(1,(),3,5.6))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1DT3M5.6S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dayTimeDuration-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a dayTimeDuration from a number of days, hours, etc. : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_daytimeduration.html : @param $days the number of days : @param $hours the number of hours : @param $minutes the number of minutes : @param $seconds the number of seconds :)
         declare function functx:dayTimeDuration ( $days as xs:decimal? , $hours as xs:decimal? , $minutes as xs:decimal? , $seconds as xs:decimal? ) as xs:dayTimeDuration { (xs:dayTimeDuration('P1D') * functx:if-empty($days,0)) + (xs:dayTimeDuration('PT1H') * functx:if-empty($hours,0)) + (xs:dayTimeDuration('PT1M') * functx:if-empty($minutes,0)) + (xs:dayTimeDuration('PT1S') * functx:if-empty($seconds,0)) } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (functx:dayTimeDuration(0,0,5,0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT5M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dayTimeDuration-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a dayTimeDuration from a number of days, hours, etc. : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_daytimeduration.html : @param $days the number of days : @param $hours the number of hours : @param $minutes the number of minutes : @param $seconds the number of seconds :)
         declare function functx:dayTimeDuration ( $days as xs:decimal? , $hours as xs:decimal? , $minutes as xs:decimal? , $seconds as xs:decimal? ) as xs:dayTimeDuration { (xs:dayTimeDuration('P1D') * functx:if-empty($days,0)) + (xs:dayTimeDuration('PT1H') * functx:if-empty($hours,0)) + (xs:dayTimeDuration('PT1M') * functx:if-empty($minutes,0)) + (xs:dayTimeDuration('PT1S') * functx:if-empty($seconds,0)) } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (functx:dayTimeDuration(0,0,0,0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dayTimeDuration-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a dayTimeDuration from a number of days, hours, etc. : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_daytimeduration.html : @param $days the number of days : @param $hours the number of hours : @param $minutes the number of minutes : @param $seconds the number of seconds :)
         declare function functx:dayTimeDuration ( $days as xs:decimal? , $hours as xs:decimal? , $minutes as xs:decimal? , $seconds as xs:decimal? ) as xs:dayTimeDuration { (xs:dayTimeDuration('P1D') * functx:if-empty($days,0)) + (xs:dayTimeDuration('PT1H') * functx:if-empty($hours,0)) + (xs:dayTimeDuration('PT1M') * functx:if-empty($minutes,0)) + (xs:dayTimeDuration('PT1S') * functx:if-empty($seconds,0)) } ;
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (functx:dayTimeDuration(1,6,0,0), functx:dayTimeDuration(2.5,0,0,0), functx:dayTimeDuration(1,(),3,5.6), functx:dayTimeDuration(0,0,5,0), functx:dayTimeDuration(0,0,0,0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1DT6H P2DT12H P1DT3M5.6S PT5M PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-ddmmyyyy-to-date-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format DDMMYYYY (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_ddmmyyyy-to-date.html : @param $dateString the DDMMYYYY string :)
         declare function functx:ddmmyyyy-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$', '$3-$2-$1')) } ;
                    (functx:ddmmyyyy-to-date('15-12-2004'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-ddmmyyyy-to-date-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format DDMMYYYY (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_ddmmyyyy-to-date.html : @param $dateString the DDMMYYYY string :)
         declare function functx:ddmmyyyy-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$', '$3-$2-$1')) } ;
                    (functx:ddmmyyyy-to-date('15122004'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-ddmmyyyy-to-date-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format DDMMYYYY (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_ddmmyyyy-to-date.html : @param $dateString the DDMMYYYY string :)
         declare function functx:ddmmyyyy-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$', '$3-$2-$1')) } ;
                    (functx:ddmmyyyy-to-date('15/12/2004'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-ddmmyyyy-to-date-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format DDMMYYYY (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_ddmmyyyy-to-date.html : @param $dateString the DDMMYYYY string :)
         declare function functx:ddmmyyyy-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$', '$3-$2-$1')) } ;
                    (functx:ddmmyyyy-to-date('15-12-2004'), functx:ddmmyyyy-to-date('15122004'), functx:ddmmyyyy-to-date('15/12/2004'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15 2004-12-15 2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-depth-of-node-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The depth (level) of a node in an XML tree : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_depth-of-node.html : @param $node the node to check :)
         declare function functx:depth-of-node ( $node as node()? ) as xs:integer { count($node/ancestor-or-self::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:depth-of-node($in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-depth-of-node-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The depth (level) of a node in an XML tree : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_depth-of-node.html : @param $node the node to check :)
         declare function functx:depth-of-node ( $node as node()? ) as xs:integer { count($node/ancestor-or-self::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:depth-of-node($in-xml/author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-depth-of-node-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The depth (level) of a node in an XML tree : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_depth-of-node.html : @param $node the node to check :)
         declare function functx:depth-of-node ( $node as node()? ) as xs:integer { count($node/ancestor-or-self::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:depth-of-node( $in-xml/author[1]/fName/text()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-depth-of-node-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The depth (level) of a node in an XML tree : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_depth-of-node.html : @param $node the node to check :)
         declare function functx:depth-of-node ( $node as node()? ) as xs:integer { count($node/ancestor-or-self::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:depth-of-node($in-xml), functx:depth-of-node($in-xml/author[1]), functx:depth-of-node( $in-xml/author[1]/fName/text()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-attribute-names-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The distinct names of all attributes in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-attribute-names.html : @param $nodes the root to start from :)
         declare function functx:distinct-attribute-names ( $nodes as node()* ) as xs:string* { distinct-values($nodes//@*/name(.)) } ;
                    let $in-xml := <authors a1=\"xyz\"> <author a2=\"abc\"> <fName a3=\"def\">Kate</fName> <lName>Jones</lName> </author> <author> <fName a3=\"def\">John</fName> <lName>Doe</lName> </author> </authors> return (functx:distinct-attribute-names($in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a1 a2 a3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-deep-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML nodes with distinct values, taking into account attributes and descendants : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-deep.html : @param $nodes the sequence of nodes to test :)
         declare function functx:distinct-deep ( $nodes as node()* ) as node()* { for $seq in (1 to count($nodes)) return $nodes[$seq][not(functx:is-node-in-sequence-deep-equal( .,$nodes[position() < $seq]))] } ;
                    (:~ : Whether an XML node is in a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>Kate</fName> <lName>Doe</lName> </author> </authors> return (functx:distinct-deep($in-xml//author))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<author><fName>Kate</fName><lName>Jones</lName></author><author><fName>Kate</fName><lName>Doe</lName></author>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-deep-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML nodes with distinct values, taking into account attributes and descendants : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-deep.html : @param $nodes the sequence of nodes to test :)
         declare function functx:distinct-deep ( $nodes as node()* ) as node()* { for $seq in (1 to count($nodes)) return $nodes[$seq][not(functx:is-node-in-sequence-deep-equal( .,$nodes[position() < $seq]))] } ;
                    (:~ : Whether an XML node is in a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>Kate</fName> <lName>Doe</lName> </author> </authors> return (functx:distinct-deep($in-xml//lName))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<lName>Jones</lName><lName>Doe</lName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-deep-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML nodes with distinct values, taking into account attributes and descendants : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-deep.html : @param $nodes the sequence of nodes to test :)
         declare function functx:distinct-deep ( $nodes as node()* ) as node()* { for $seq in (1 to count($nodes)) return $nodes[$seq][not(functx:is-node-in-sequence-deep-equal( .,$nodes[position() < $seq]))] } ;
                    (:~ : Whether an XML node is in a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>Kate</fName> <lName>Doe</lName> </author> </authors> return (functx:distinct-deep($in-xml//fName))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fName>Kate</fName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-deep-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML nodes with distinct values, taking into account attributes and descendants : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-deep.html : @param $nodes the sequence of nodes to test :)
         declare function functx:distinct-deep ( $nodes as node()* ) as node()* { for $seq in (1 to count($nodes)) return $nodes[$seq][not(functx:is-node-in-sequence-deep-equal( .,$nodes[position() < $seq]))] } ;
                    (:~ : Whether an XML node is in a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>Kate</fName> <lName>Doe</lName> </author> </authors> return (functx:distinct-deep($in-xml//author), functx:distinct-deep($in-xml//lName), functx:distinct-deep($in-xml//fName))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<author><fName>Kate</fName><lName>Jones</lName></author><author><fName>Kate</fName><lName>Doe</lName></author><lName>Jones</lName><lName>Doe</lName><fName>Kate</fName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-element-names-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The distinct names of all elements in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-element-names.html : @param $nodes the root(s) to start from :)
         declare function functx:distinct-element-names ( $nodes as node()* ) as xs:string* { distinct-values($nodes/descendant-or-self::*/name(.)) } ;
                    (:~ : A path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node.html : @param $nodes the node sequence :)
         declare function functx:path-to-node ( $nodes as node()* ) as xs:string* { $nodes/string-join(ancestor-or-self::*/name(.), '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:distinct-element-names($in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "authors author fName lName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-element-names-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The distinct names of all elements in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-element-names.html : @param $nodes the root(s) to start from :)
         declare function functx:distinct-element-names ( $nodes as node()* ) as xs:string* { distinct-values($nodes/descendant-or-self::*/name(.)) } ;
                    (:~ : A path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node.html : @param $nodes the node sequence :)
         declare function functx:path-to-node ( $nodes as node()* ) as xs:string* { $nodes/string-join(ancestor-or-self::*/name(.), '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:distinct-element-names( $in-xml/author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "author fName lName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-element-names-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The distinct names of all elements in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-element-names.html : @param $nodes the root(s) to start from :)
         declare function functx:distinct-element-names ( $nodes as node()* ) as xs:string* { distinct-values($nodes/descendant-or-self::*/name(.)) } ;
                    (:~ : A path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node.html : @param $nodes the node sequence :)
         declare function functx:path-to-node ( $nodes as node()* ) as xs:string* { $nodes/string-join(ancestor-or-self::*/name(.), '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:distinct-element-names($in-xml), functx:distinct-element-names( $in-xml/author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "authors author fName lName author fName lName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-element-paths-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The distinct paths of all descendant elements in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-element-paths.html : @param $nodes the root(s) to start from :)
         declare function functx:distinct-element-paths ( $nodes as node()* ) as xs:string* { distinct-values(functx:path-to-node($nodes/descendant-or-self::*)) } ;
                    (:~ : A path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node.html : @param $nodes the node sequence :)
         declare function functx:path-to-node ( $nodes as node()* ) as xs:string* { $nodes/string-join(ancestor-or-self::*/name(.), '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:distinct-element-paths( $in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "authors authors/author authors/author/fName authors/author/lName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-element-paths-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The distinct paths of all descendant elements in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-element-paths.html : @param $nodes the root(s) to start from :)
         declare function functx:distinct-element-paths ( $nodes as node()* ) as xs:string* { distinct-values(functx:path-to-node($nodes/descendant-or-self::*)) } ;
                    (:~ : A path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node.html : @param $nodes the node sequence :)
         declare function functx:path-to-node ( $nodes as node()* ) as xs:string* { $nodes/string-join(ancestor-or-self::*/name(.), '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:distinct-element-paths( $in-xml/author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "authors/author authors/author/fName authors/author/lName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-element-paths-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The distinct paths of all descendant elements in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-element-paths.html : @param $nodes the root(s) to start from :)
         declare function functx:distinct-element-paths ( $nodes as node()* ) as xs:string* { distinct-values(functx:path-to-node($nodes/descendant-or-self::*)) } ;
                    (:~ : A path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node.html : @param $nodes the node sequence :)
         declare function functx:path-to-node ( $nodes as node()* ) as xs:string* { $nodes/string-join(ancestor-or-self::*/name(.), '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:distinct-element-paths( $in-xml), functx:distinct-element-paths( $in-xml/author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "authors authors/author authors/author/fName authors/author/lName authors/author authors/author/fName authors/author/lName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-nodes-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The distinct XML nodes in a sequence (by node identity) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-nodes.html : @param $nodes the node sequence :)
         declare function functx:distinct-nodes ( $nodes as node()* ) as node()* { for $seq in (1 to count($nodes)) return $nodes[$seq][not(functx:is-node-in-sequence( .,$nodes[position() < $seq]))] } ;
                    (:~ : Whether an XML node is in a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies $nodeInSeq is $node } ;
                    let $in-xml :=  <test> <child>1</child> <child>2</child> <child>3</child> <child>3</child> </test> return (functx:distinct-nodes( ($in-xml/child, $in-xml/*) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<child>1</child><child>2</child><child>3</child><child>3</child>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-nodes-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The distinct XML nodes in a sequence (by node identity) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-nodes.html : @param $nodes the node sequence :)
         declare function functx:distinct-nodes ( $nodes as node()* ) as node()* { for $seq in (1 to count($nodes)) return $nodes[$seq][not(functx:is-node-in-sequence( .,$nodes[position() < $seq]))] } ;
                    (:~ : Whether an XML node is in a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies $nodeInSeq is $node } ;
                    let $in-xml :=  <test> <child>1</child> <child>2</child> <child>3</child> <child>3</child> </test> return (functx:distinct-nodes( ($in-xml/child[3], $in-xml/*) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<child>3</child><child>1</child><child>2</child><child>3</child>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-distinct-nodes-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The distinct XML nodes in a sequence (by node identity) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_distinct-nodes.html : @param $nodes the node sequence :)
         declare function functx:distinct-nodes ( $nodes as node()* ) as node()* { for $seq in (1 to count($nodes)) return $nodes[$seq][not(functx:is-node-in-sequence( .,$nodes[position() < $seq]))] } ;
                    (:~ : Whether an XML node is in a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies $nodeInSeq is $node } ;
                    let $in-xml :=  <test> <child>1</child> <child>2</child> <child>3</child> <child>3</child> </test> return (functx:distinct-nodes( ($in-xml/child, $in-xml/*) ), functx:distinct-nodes( ($in-xml/child[3], $in-xml/*) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<child>1</child><child>2</child><child>3</child><child>3</child><child>3</child><child>1</child><child>2</child><child>3</child>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-duration-from-timezone-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a timezone like \"-05:00\" or \"Z\" into xs:dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_duration-from-timezone.html : @param $timezone the time zone, in (+|-)HH:MM format :)
         declare function functx:duration-from-timezone ( $timezone as xs:string ) as xs:dayTimeDuration { xs:dayTimeDuration( if (not(matches($timezone,'Z|[\\+\\-]\\d{2}:\\d{2}'))) then error(xs:QName('functx:Invalid_Timezone_Value')) else if ($timezone = 'Z') then 'PT0S' else replace($timezone,'\\+?(\\d{2}):\\d{2}','PT$1H') ) } ;
                    (functx:duration-from-timezone('Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-duration-from-timezone-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a timezone like \"-05:00\" or \"Z\" into xs:dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_duration-from-timezone.html : @param $timezone the time zone, in (+|-)HH:MM format :)
         declare function functx:duration-from-timezone ( $timezone as xs:string ) as xs:dayTimeDuration { xs:dayTimeDuration( if (not(matches($timezone,'Z|[\\+\\-]\\d{2}:\\d{2}'))) then error(xs:QName('functx:Invalid_Timezone_Value')) else if ($timezone = 'Z') then 'PT0S' else replace($timezone,'\\+?(\\d{2}):\\d{2}','PT$1H') ) } ;
                    (functx:duration-from-timezone('-05:00'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-PT5H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-duration-from-timezone-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a timezone like \"-05:00\" or \"Z\" into xs:dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_duration-from-timezone.html : @param $timezone the time zone, in (+|-)HH:MM format :)
         declare function functx:duration-from-timezone ( $timezone as xs:string ) as xs:dayTimeDuration { xs:dayTimeDuration( if (not(matches($timezone,'Z|[\\+\\-]\\d{2}:\\d{2}'))) then error(xs:QName('functx:Invalid_Timezone_Value')) else if ($timezone = 'Z') then 'PT0S' else replace($timezone,'\\+?(\\d{2}):\\d{2}','PT$1H') ) } ;
                    (functx:duration-from-timezone('+09:00'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT9H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-duration-from-timezone-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a timezone like \"-05:00\" or \"Z\" into xs:dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_duration-from-timezone.html : @param $timezone the time zone, in (+|-)HH:MM format :)
         declare function functx:duration-from-timezone ( $timezone as xs:string ) as xs:dayTimeDuration { xs:dayTimeDuration( if (not(matches($timezone,'Z|[\\+\\-]\\d{2}:\\d{2}'))) then error(xs:QName('functx:Invalid_Timezone_Value')) else if ($timezone = 'Z') then 'PT0S' else replace($timezone,'\\+?(\\d{2}):\\d{2}','PT$1H') ) } ;
                    (functx:duration-from-timezone('Z'), functx:duration-from-timezone('-05:00'), functx:duration-from-timezone('+09:00'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S -PT5H PT9H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dynamic-path-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Dynamically evaluates a simple XPath path : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_dynamic-path.html : @param $parent the root to start from : @param $path the path expression :)
         declare function functx:dynamic-path ( $parent as node() , $path as xs:string ) as item()* { let $nextStep := functx:substring-before-if-contains($path,'/') let $restOfSteps := substring-after($path,'/') for $child in ($parent/*[functx:name-test(name(),$nextStep)], $parent/@*[functx:name-test(name(), substring-after($nextStep,'@'))]) return if ($restOfSteps) then functx:dynamic-path($child, $restOfSteps) else $child } ;
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    (:~ : Performs substring-before, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-before($arg,$delim) else $arg } ;
                    let $in-xml := <authors> <author test=\"abc\"> <first>Kate</first> <last>Jones</last> </author> <author> <first>John</first> <a:last xmlns:a=\"http://a\">Doe</a:last> </author> </authors> return (functx:dynamic-path( $in-xml,'author/first'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<first>Kate</first><first>John</first>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dynamic-path-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Dynamically evaluates a simple XPath path : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_dynamic-path.html : @param $parent the root to start from : @param $path the path expression :)
         declare function functx:dynamic-path ( $parent as node() , $path as xs:string ) as item()* { let $nextStep := functx:substring-before-if-contains($path,'/') let $restOfSteps := substring-after($path,'/') for $child in ($parent/*[functx:name-test(name(),$nextStep)], $parent/@*[functx:name-test(name(), substring-after($nextStep,'@'))]) return if ($restOfSteps) then functx:dynamic-path($child, $restOfSteps) else $child } ;
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    (:~ : Performs substring-before, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-before($arg,$delim) else $arg } ;
                    let $in-xml := <authors> <author test=\"abc\"> <first>Kate</first> <last>Jones</last> </author> <author> <first>John</first> <a:last xmlns:a=\"http://a\">Doe</a:last> </author> </authors> return (name(functx:dynamic-path( $in-xml,'author/@test')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "test") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dynamic-path-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Dynamically evaluates a simple XPath path : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_dynamic-path.html : @param $parent the root to start from : @param $path the path expression :)
         declare function functx:dynamic-path ( $parent as node() , $path as xs:string ) as item()* { let $nextStep := functx:substring-before-if-contains($path,'/') let $restOfSteps := substring-after($path,'/') for $child in ($parent/*[functx:name-test(name(),$nextStep)], $parent/@*[functx:name-test(name(), substring-after($nextStep,'@'))]) return if ($restOfSteps) then functx:dynamic-path($child, $restOfSteps) else $child } ;
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    (:~ : Performs substring-before, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-before($arg,$delim) else $arg } ;
                    let $in-xml := <authors> <author test=\"abc\"> <first>Kate</first> <last>Jones</last> </author> <author> <first>John</first> <a:last xmlns:a=\"http://a\">Doe</a:last> </author> </authors> return (functx:dynamic-path( $in-xml,'author'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<author test=\"abc\"><first>Kate</first><last>Jones</last></author><author><first>John</first><a:last xmlns:a=\"http://a\">Doe</a:last></author>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dynamic-path-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Dynamically evaluates a simple XPath path : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_dynamic-path.html : @param $parent the root to start from : @param $path the path expression :)
         declare function functx:dynamic-path ( $parent as node() , $path as xs:string ) as item()* { let $nextStep := functx:substring-before-if-contains($path,'/') let $restOfSteps := substring-after($path,'/') for $child in ($parent/*[functx:name-test(name(),$nextStep)], $parent/@*[functx:name-test(name(), substring-after($nextStep,'@'))]) return if ($restOfSteps) then functx:dynamic-path($child, $restOfSteps) else $child } ;
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    (:~ : Performs substring-before, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-before($arg,$delim) else $arg } ;
                    let $in-xml := <authors> <author test=\"abc\"> <first>Kate</first> <last>Jones</last> </author> <author> <first>John</first> <a:last xmlns:a=\"http://a\">Doe</a:last> </author> </authors> return (functx:dynamic-path( $in-xml,'author/a:last'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a:last xmlns:a=\"http://a\">Doe</a:last>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-dynamic-path-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Dynamically evaluates a simple XPath path : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_dynamic-path.html : @param $parent the root to start from : @param $path the path expression :)
         declare function functx:dynamic-path ( $parent as node() , $path as xs:string ) as item()* { 
            let $nextStep := functx:substring-before-if-contains($path,'/') 
            let $restOfSteps := substring-after($path,'/') 
            for $child in ($parent/*[functx:name-test(name(),$nextStep)], $parent/@*[functx:name-test(name(), substring-after($nextStep,'@'))]) 
            return if ($restOfSteps) then functx:dynamic-path($child, $restOfSteps) else $child 
         } ;
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { 
            $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (
               for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] 
               return substring-before($name,':*')) 
         } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { 
            if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg 
         } ;
                    (:~ : Performs substring-before, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { 
            if (contains($arg,$delim)) then substring-before($arg,$delim) else $arg 
         } ;
         let $in-xml := <authors> <author test=\"abc\"> <first>Kate</first> <last>Jones</last> </author> <author> <first>John</first> <a:last xmlns:a=\"http://a\">Doe</a:last> </author> </authors> 
         return document{(functx:dynamic-path( $in-xml,'author/first'), 
                 name(functx:dynamic-path( $in-xml,'author/@test')), 
                 functx:dynamic-path( $in-xml,'author'), 
                 functx:dynamic-path( $in-xml,'author/a:last'))}
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<first>Kate</first><first>John</first>test<author test=\"abc\"><first>Kate</first><last>Jones</last></author><author><first>John</first><a:last xmlns:a=\"http://a\">Doe</a:last></author><a:last xmlns:a=\"http://a\">Doe</a:last>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-escape-for-regex-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (functx:escape-for-regex('5.55'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5\\.55") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-escape-for-regex-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (functx:escape-for-regex('[abc]'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "\\[abc\\]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-escape-for-regex-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (functx:escape-for-regex('5.55'), functx:escape-for-regex('[abc]'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5\\.55 \\[abc\\]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-exclusive-or-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one (and only one) of two boolean values is true : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_exclusive-or.html : @param $arg1 the first boolean value : @param $arg2 the second boolean value :)
         declare function functx:exclusive-or ( $arg1 as xs:boolean? , $arg2 as xs:boolean? ) as xs:boolean? { $arg1 != $arg2 } ;
                    (functx:exclusive-or(true(),false()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-exclusive-or-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one (and only one) of two boolean values is true : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_exclusive-or.html : @param $arg1 the first boolean value : @param $arg2 the second boolean value :)
         declare function functx:exclusive-or ( $arg1 as xs:boolean? , $arg2 as xs:boolean? ) as xs:boolean? { $arg1 != $arg2 } ;
                    (functx:exclusive-or(true(),true()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-exclusive-or-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one (and only one) of two boolean values is true : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_exclusive-or.html : @param $arg1 the first boolean value : @param $arg2 the second boolean value :)
         declare function functx:exclusive-or ( $arg1 as xs:boolean? , $arg2 as xs:boolean? ) as xs:boolean? { $arg1 != $arg2 } ;
                    (functx:exclusive-or(4 >
                    3,1 >
                    2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-exclusive-or-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether one (and only one) of two boolean values is true : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_exclusive-or.html : @param $arg1 the first boolean value : @param $arg2 the second boolean value :)
         declare function functx:exclusive-or ( $arg1 as xs:boolean? , $arg2 as xs:boolean? ) as xs:boolean? { $arg1 != $arg2 } ;
                    (functx:exclusive-or(true(),false()), functx:exclusive-or(true(),true()), functx:exclusive-or(4 >
                    3,1 >
                    2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-first-day-of-month-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The first day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-month.html : @param $date the date :)
         declare function functx:first-day-of-month ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), month-from-date(xs:date($date)), 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:first-day-of-month( xs:date('2004-01-23')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-01") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-first-day-of-month-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The first day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-month.html : @param $date the date :)
         declare function functx:first-day-of-month ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), month-from-date(xs:date($date)), 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:first-day-of-month( xs:dateTime('2004-01-23T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-01") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-first-day-of-month-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The first day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-month.html : @param $date the date :)
         declare function functx:first-day-of-month ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), month-from-date(xs:date($date)), 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:first-day-of-month('2004-03-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-03-01") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-first-day-of-month-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The first day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-month.html : @param $date the date :)
         declare function functx:first-day-of-month ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), month-from-date(xs:date($date)), 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:first-day-of-month( xs:date('2004-01-23')), functx:first-day-of-month( xs:dateTime('2004-01-23T12:00:13')), functx:first-day-of-month('2004-03-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-01 2004-01-01 2004-03-01") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-first-day-of-year-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The first day of the year of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-year.html : @param $date the date :)
         declare function functx:first-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 1, 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:first-day-of-year(xs:date('2004-01-23')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-01") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-first-day-of-year-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The first day of the year of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-year.html : @param $date the date :)
         declare function functx:first-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 1, 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:first-day-of-year( xs:dateTime('2004-01-23T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-01") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-first-day-of-year-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The first day of the year of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-year.html : @param $date the date :)
         declare function functx:first-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 1, 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:first-day-of-year('2004-03-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-01") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-first-day-of-year-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : The first day of the year of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-day-of-year.html : @param $date the date :)
         declare function functx:first-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 1, 1) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:first-day-of-year(xs:date('2004-01-23')), functx:first-day-of-year( xs:dateTime('2004-01-23T12:00:13')), functx:first-day-of-year('2004-03-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-01 2004-01-01 2004-01-01") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-first-node-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node in a sequence that appears first in document order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-node.html : @param $nodes the sequence of nodes :)
         declare function functx:first-node ( $nodes as node()* ) as node()? { ($nodes/.)[1] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:first-node($in-xml//fName))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fName>Kate</fName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-first-node-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node in a sequence that appears first in document order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-node.html : @param $nodes the sequence of nodes :)
         declare function functx:first-node ( $nodes as node()* ) as node()? { ($nodes/.)[1] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:first-node( ($in-xml//lName, $in-xml//fName) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fName>Kate</fName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-first-node-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node in a sequence that appears first in document order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_first-node.html : @param $nodes the sequence of nodes :)
         declare function functx:first-node ( $nodes as node()* ) as node()? { ($nodes/.)[1] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:first-node($in-xml//fName), functx:first-node( ($in-xml//lName, $in-xml//fName) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fName>Kate</fName><fName>Kate</fName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-follows-not-descendant-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node follows another without being its descendant : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_follows-not-descendant.html : @param $a the first node : @param $b the second node :)
         declare function functx:follows-not-descendant ( $a as node()? , $b as node()? ) as xs:boolean { $a >> $b and empty($b intersect $a/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:follows-not-descendant( $in-xml//author[2],$in-xml//author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-follows-not-descendant-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node follows another without being its descendant : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_follows-not-descendant.html : @param $a the first node : @param $b the second node :)
         declare function functx:follows-not-descendant ( $a as node()? , $b as node()? ) as xs:boolean { $a >> $b and empty($b intersect $a/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:follows-not-descendant( $in-xml//author[1]/fName, $in-xml//author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-follows-not-descendant-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node follows another without being its descendant : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_follows-not-descendant.html : @param $a the first node : @param $b the second node :)
         declare function functx:follows-not-descendant ( $a as node()? , $b as node()? ) as xs:boolean { $a >> $b and empty($b intersect $a/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:follows-not-descendant( $in-xml//author[1],$in-xml//author[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-follows-not-descendant-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node follows another without being its descendant : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_follows-not-descendant.html : @param $a the first node : @param $b the second node :)
         declare function functx:follows-not-descendant ( $a as node()? , $b as node()? ) as xs:boolean { $a >> $b and empty($b intersect $a/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:follows-not-descendant( $in-xml//author[2],$in-xml//author[1]), functx:follows-not-descendant( $in-xml//author[1]/fName, $in-xml//author[1]), functx:follows-not-descendant( $in-xml//author[1],$in-xml//author[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-format-as-title-en-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Moves title words like \"the\" and \"a\" to the end of strings : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_format-as-title-en.html : @param $titles the titles to format :)
         declare function functx:format-as-title-en ( $titles as xs:string* ) as xs:string* { let $wordsToMoveToEnd := ('A', 'An', 'The') for $title in $titles let $firstWord := functx:substring-before-match($title,'\\W') return if ($firstWord = $wordsToMoveToEnd) then replace($title,'(.*?)\\W(.*)', '$2, $1') else $title } ;
                    (:~ : The substring before the first text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-before-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { tokenize($arg,$regex)[1] } ;
                    (functx:format-as-title-en( ('A Midsummer Night''s Dream', 'The Merchant of Venice', 'Hamlet')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Midsummer Night's Dream, A Merchant of Venice, The Hamlet") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-fragment-from-uri-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns the fragment from a URI : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_fragment-from-uri.html : @param $uri the URI :)
         declare function functx:fragment-from-uri ( $uri as xs:string? ) as xs:string? { substring-after($uri,'#') } ;
                    (functx:fragment-from-uri( 'http://datypic.com/index.htm#abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-fragment-from-uri-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns the fragment from a URI : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_fragment-from-uri.html : @param $uri the URI :)
         declare function functx:fragment-from-uri ( $uri as xs:string? ) as xs:string? { substring-after($uri,'#') } ;
                    (functx:fragment-from-uri( 'http://datypic.com/index.htm'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-fragment-from-uri-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns the fragment from a URI : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_fragment-from-uri.html : @param $uri the URI :)
         declare function functx:fragment-from-uri ( $uri as xs:string? ) as xs:string? { substring-after($uri,'#') } ;
                    (functx:fragment-from-uri( 'http://datypic.com/index.htm#abc'), functx:fragment-from-uri( 'http://datypic.com/index.htm'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-get-matches-and-non-matches-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Splits a string into matching and non-matching regions : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches-and-non-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches-and-non-matches ( $string as xs:string? , $regex as xs:string ) as element()* { let $iomf := functx:index-of-match-first($string, $regex) return if (empty($iomf)) then <non-match>{$string}</non-match> else if ($iomf > 1) then (<non-match>{substring($string,1,$iomf - 1)}</non-match>, functx:get-matches-and-non-matches( substring($string,$iomf),$regex)) else let $length := string-length($string) - string-length(functx:replace-first($string, $regex,'')) return (<match>{substring($string,1,$length)}</match>, if (string-length($string) > $length) then functx:get-matches-and-non-matches( substring($string,$length + 1),$regex) else ()) } ;
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:get-matches-and-non-matches( 'abc123def', '\\d+'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<non-match>abc</non-match><match>123</match><non-match>def</non-match>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-get-matches-and-non-matches-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Splits a string into matching and non-matching regions : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches-and-non-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches-and-non-matches ( $string as xs:string? , $regex as xs:string ) as element()* { let $iomf := functx:index-of-match-first($string, $regex) return if (empty($iomf)) then <non-match>{$string}</non-match> else if ($iomf > 1) then (<non-match>{substring($string,1,$iomf - 1)}</non-match>, functx:get-matches-and-non-matches( substring($string,$iomf),$regex)) else let $length := string-length($string) - string-length(functx:replace-first($string, $regex,'')) return (<match>{substring($string,1,$length)}</match>, if (string-length($string) > $length) then functx:get-matches-and-non-matches( substring($string,$length + 1),$regex) else ()) } ;
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:get-matches-and-non-matches( 'abc123def', '\\d'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<non-match>abc</non-match><match>1</match><match>2</match><match>3</match><non-match>def</non-match>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-get-matches-and-non-matches-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Splits a string into matching and non-matching regions : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches-and-non-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches-and-non-matches ( $string as xs:string? , $regex as xs:string ) as element()* { let $iomf := functx:index-of-match-first($string, $regex) return if (empty($iomf)) then <non-match>{$string}</non-match> else if ($iomf > 1) then (<non-match>{substring($string,1,$iomf - 1)}</non-match>, functx:get-matches-and-non-matches( substring($string,$iomf),$regex)) else let $length := string-length($string) - string-length(functx:replace-first($string, $regex,'')) return (<match>{substring($string,1,$length)}</match>, if (string-length($string) > $length) then functx:get-matches-and-non-matches( substring($string,$length + 1),$regex) else ()) } ;
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:get-matches-and-non-matches( 'abc123def', '[a-z]{2}'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<match>ab</match><non-match>c123</non-match><match>de</match><non-match>f</non-match>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-get-matches-and-non-matches-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Splits a string into matching and non-matching regions : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches-and-non-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches-and-non-matches ( $string as xs:string? , $regex as xs:string ) as element()* { let $iomf := functx:index-of-match-first($string, $regex) return if (empty($iomf)) then <non-match>{$string}</non-match> else if ($iomf > 1) then (<non-match>{substring($string,1,$iomf - 1)}</non-match>, functx:get-matches-and-non-matches( substring($string,$iomf),$regex)) else let $length := string-length($string) - string-length(functx:replace-first($string, $regex,'')) return (<match>{substring($string,1,$length)}</match>, if (string-length($string) > $length) then functx:get-matches-and-non-matches( substring($string,$length + 1),$regex) else ()) } ;
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:get-matches-and-non-matches( 'abc123def', '\\d+'), functx:get-matches-and-non-matches( 'abc123def', '\\d'), functx:get-matches-and-non-matches( 'abc123def', '[a-z]{2}'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<non-match>abc</non-match><match>123</match><non-match>def</non-match><non-match>abc</non-match><match>1</match><match>2</match><match>3</match><non-match>def</non-match><match>ab</match><non-match>c123</non-match><match>de</match><non-match>f</non-match>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-get-matches-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Splits a string into matching and non-matching regions : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches-and-non-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches-and-non-matches ( $string as xs:string? , $regex as xs:string ) as element()* { let $iomf := functx:index-of-match-first($string, $regex) return if (empty($iomf)) then <non-match>{$string}</non-match> else if ($iomf > 1) then (<non-match>{substring($string,1,$iomf - 1)}</non-match>, functx:get-matches-and-non-matches( substring($string,$iomf),$regex)) else let $length := string-length($string) - string-length(functx:replace-first($string, $regex,'')) return (<match>{substring($string,1,$length)}</match>, if (string-length($string) > $length) then functx:get-matches-and-non-matches( substring($string,$length + 1),$regex) else ()) } ;
                    (:~ : Return the matching regions of a string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches ( $string as xs:string? , $regex as xs:string ) as xs:string* { functx:get-matches-and-non-matches($string,$regex)/ string(self::match) } ;
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:get-matches( 'abc123def', '\\d+'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " 123 ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-get-matches-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Splits a string into matching and non-matching regions : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches-and-non-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches-and-non-matches ( $string as xs:string? , $regex as xs:string ) as element()* { let $iomf := functx:index-of-match-first($string, $regex) return if (empty($iomf)) then <non-match>{$string}</non-match> else if ($iomf > 1) then (<non-match>{substring($string,1,$iomf - 1)}</non-match>, functx:get-matches-and-non-matches( substring($string,$iomf),$regex)) else let $length := string-length($string) - string-length(functx:replace-first($string, $regex,'')) return (<match>{substring($string,1,$length)}</match>, if (string-length($string) > $length) then functx:get-matches-and-non-matches( substring($string,$length + 1),$regex) else ()) } ;
                    (:~ : Return the matching regions of a string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches ( $string as xs:string? , $regex as xs:string ) as xs:string* { functx:get-matches-and-non-matches($string,$regex)/ string(self::match) } ;
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:get-matches( 'abc123def', '\\d'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " 1 2 3 ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-get-matches-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Splits a string into matching and non-matching regions : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches-and-non-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches-and-non-matches ( $string as xs:string? , $regex as xs:string ) as element()* { let $iomf := functx:index-of-match-first($string, $regex) return if (empty($iomf)) then <non-match>{$string}</non-match> else if ($iomf > 1) then (<non-match>{substring($string,1,$iomf - 1)}</non-match>, functx:get-matches-and-non-matches( substring($string,$iomf),$regex)) else let $length := string-length($string) - string-length(functx:replace-first($string, $regex,'')) return (<match>{substring($string,1,$length)}</match>, if (string-length($string) > $length) then functx:get-matches-and-non-matches( substring($string,$length + 1),$regex) else ()) } ;
                    (:~ : Return the matching regions of a string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches ( $string as xs:string? , $regex as xs:string ) as xs:string* { functx:get-matches-and-non-matches($string,$regex)/ string(self::match) } ;
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:get-matches( 'abc123def', '[a-z]{2}'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ab  de ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-get-matches-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Splits a string into matching and non-matching regions : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches-and-non-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches-and-non-matches ( $string as xs:string? , $regex as xs:string ) as element()* { let $iomf := functx:index-of-match-first($string, $regex) return if (empty($iomf)) then <non-match>{$string}</non-match> else if ($iomf > 1) then (<non-match>{substring($string,1,$iomf - 1)}</non-match>, functx:get-matches-and-non-matches( substring($string,$iomf),$regex)) else let $length := string-length($string) - string-length(functx:replace-first($string, $regex,'')) return (<match>{substring($string,1,$length)}</match>, if (string-length($string) > $length) then functx:get-matches-and-non-matches( substring($string,$length + 1),$regex) else ()) } ;
                    (:~ : Return the matching regions of a string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_get-matches.html : @param $string the string to split : @param $regex the pattern :)
         declare function functx:get-matches ( $string as xs:string? , $regex as xs:string ) as xs:string* { functx:get-matches-and-non-matches($string,$regex)/ string(self::match) } ;
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:get-matches( 'abc123def', '\\d+'), functx:get-matches( 'abc123def', '\\d'), functx:get-matches( 'abc123def', '[a-z]{2}'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " 123   1 2 3  ab  de ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-element-only-content-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has element-only content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-element-only-content.html : @param $element the XML element to test :)
         declare function functx:has-element-only-content ( $element as element() ) as xs:boolean { not($element/text()[normalize-space(.) != '']) and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> <h><x>xml</x><y>xml</y></h> <i> <x>xml</x> <y>xml</y> </i> </in-xml> return (functx:has-element-only-content($in-xml/a))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-element-only-content-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has element-only content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-element-only-content.html : @param $element the XML element to test :)
         declare function functx:has-element-only-content ( $element as element() ) as xs:boolean { not($element/text()[normalize-space(.) != '']) and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> <h><x>xml</x><y>xml</y></h> <i> <x>xml</x> <y>xml</y> </i> </in-xml> return (functx:has-element-only-content($in-xml/b))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-element-only-content-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has element-only content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-element-only-content.html : @param $element the XML element to test :)
         declare function functx:has-element-only-content ( $element as element() ) as xs:boolean { not($element/text()[normalize-space(.) != '']) and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> <h><x>xml</x><y>xml</y></h> <i> <x>xml</x> <y>xml</y> </i> </in-xml> return (functx:has-element-only-content($in-xml/c))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-element-only-content-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has element-only content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-element-only-content.html : @param $element the XML element to test :)
         declare function functx:has-element-only-content ( $element as element() ) as xs:boolean { not($element/text()[normalize-space(.) != '']) and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> <h><x>xml</x><y>xml</y></h> <i> <x>xml</x> <y>xml</y> </i> </in-xml> return (functx:has-element-only-content($in-xml/d))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-element-only-content-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has element-only content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-element-only-content.html : @param $element the XML element to test :)
         declare function functx:has-element-only-content ( $element as element() ) as xs:boolean { not($element/text()[normalize-space(.) != '']) and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> <h><x>xml</x><y>xml</y></h> <i> <x>xml</x> <y>xml</y> </i> </in-xml> return (functx:has-element-only-content($in-xml/e))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-element-only-content-6'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has element-only content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-element-only-content.html : @param $element the XML element to test :)
         declare function functx:has-element-only-content ( $element as element() ) as xs:boolean { not($element/text()[normalize-space(.) != '']) and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> <h><x>xml</x><y>xml</y></h> <i> <x>xml</x> <y>xml</y> </i> </in-xml> return (functx:has-element-only-content($in-xml/f))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-element-only-content-7'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has element-only content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-element-only-content.html : @param $element the XML element to test :)
         declare function functx:has-element-only-content ( $element as element() ) as xs:boolean { not($element/text()[normalize-space(.) != '']) and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> <h><x>xml</x><y>xml</y></h> <i> <x>xml</x> <y>xml</y> </i> </in-xml> return (functx:has-element-only-content($in-xml/g))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-element-only-content-8'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has element-only content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-element-only-content.html : @param $element the XML element to test :)
         declare function functx:has-element-only-content ( $element as element() ) as xs:boolean { not($element/text()[normalize-space(.) != '']) and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> <h><x>xml</x><y>xml</y></h> <i> <x>xml</x> <y>xml</y> </i> </in-xml> return (functx:has-element-only-content($in-xml/h))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-element-only-content-9'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has element-only content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-element-only-content.html : @param $element the XML element to test :)
         declare function functx:has-element-only-content ( $element as element() ) as xs:boolean { not($element/text()[normalize-space(.) != '']) and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> <h><x>xml</x><y>xml</y></h> <i> <x>xml</x> <y>xml</y> </i> </in-xml> return (functx:has-element-only-content($in-xml/i))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-element-only-content-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has element-only content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-element-only-content.html : @param $element the XML element to test :)
         declare function functx:has-element-only-content ( $element as element() ) as xs:boolean { not($element/text()[normalize-space(.) != '']) and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> <h><x>xml</x><y>xml</y></h> <i> <x>xml</x> <y>xml</y> </i> </in-xml> return (functx:has-element-only-content($in-xml/a), functx:has-element-only-content($in-xml/b), functx:has-element-only-content($in-xml/c), functx:has-element-only-content($in-xml/d), functx:has-element-only-content($in-xml/e), functx:has-element-only-content($in-xml/f), functx:has-element-only-content($in-xml/g), functx:has-element-only-content($in-xml/h), functx:has-element-only-content($in-xml/i))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false false false false true false true true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-empty-content-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has empty content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-empty-content.html : @param $element the XML element to test :)
         declare function functx:has-empty-content ( $element as element() ) as xs:boolean { not($element/node()) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-empty-content($in-xml/a))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-empty-content-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has empty content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-empty-content.html : @param $element the XML element to test :)
         declare function functx:has-empty-content ( $element as element() ) as xs:boolean { not($element/node()) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-empty-content($in-xml/b))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-empty-content-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has empty content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-empty-content.html : @param $element the XML element to test :)
         declare function functx:has-empty-content ( $element as element() ) as xs:boolean { not($element/node()) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-empty-content($in-xml/c))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-empty-content-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has empty content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-empty-content.html : @param $element the XML element to test :)
         declare function functx:has-empty-content ( $element as element() ) as xs:boolean { not($element/node()) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-empty-content($in-xml/d))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-empty-content-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has empty content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-empty-content.html : @param $element the XML element to test :)
         declare function functx:has-empty-content ( $element as element() ) as xs:boolean { not($element/node()) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-empty-content($in-xml/e))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-empty-content-6'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has empty content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-empty-content.html : @param $element the XML element to test :)
         declare function functx:has-empty-content ( $element as element() ) as xs:boolean { not($element/node()) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-empty-content($in-xml/f))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-empty-content-7'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has empty content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-empty-content.html : @param $element the XML element to test :)
         declare function functx:has-empty-content ( $element as element() ) as xs:boolean { not($element/node()) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-empty-content($in-xml/g))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-empty-content-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has empty content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-empty-content.html : @param $element the XML element to test :)
         declare function functx:has-empty-content ( $element as element() ) as xs:boolean { not($element/node()) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-empty-content($in-xml/a), functx:has-empty-content($in-xml/b), functx:has-empty-content($in-xml/c), functx:has-empty-content($in-xml/d), functx:has-empty-content($in-xml/e), functx:has-empty-content($in-xml/f), functx:has-empty-content($in-xml/g))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true true false false false false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-mixed-content-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has mixed content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-mixed-content.html : @param $element the XML element to test :)
         declare function functx:has-mixed-content ( $element as element() ) as xs:boolean { $element/text()[normalize-space(.) != ''] and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-mixed-content($in-xml/a))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-mixed-content-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has mixed content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-mixed-content.html : @param $element the XML element to test :)
         declare function functx:has-mixed-content ( $element as element() ) as xs:boolean { $element/text()[normalize-space(.) != ''] and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-mixed-content($in-xml/b))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-mixed-content-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has mixed content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-mixed-content.html : @param $element the XML element to test :)
         declare function functx:has-mixed-content ( $element as element() ) as xs:boolean { $element/text()[normalize-space(.) != ''] and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-mixed-content($in-xml/c))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-mixed-content-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has mixed content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-mixed-content.html : @param $element the XML element to test :)
         declare function functx:has-mixed-content ( $element as element() ) as xs:boolean { $element/text()[normalize-space(.) != ''] and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-mixed-content($in-xml/d))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-mixed-content-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has mixed content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-mixed-content.html : @param $element the XML element to test :)
         declare function functx:has-mixed-content ( $element as element() ) as xs:boolean { $element/text()[normalize-space(.) != ''] and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-mixed-content($in-xml/e))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-mixed-content-6'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has mixed content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-mixed-content.html : @param $element the XML element to test :)
         declare function functx:has-mixed-content ( $element as element() ) as xs:boolean { $element/text()[normalize-space(.) != ''] and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-mixed-content($in-xml/f))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-mixed-content-7'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has mixed content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-mixed-content.html : @param $element the XML element to test :)
         declare function functx:has-mixed-content ( $element as element() ) as xs:boolean { $element/text()[normalize-space(.) != ''] and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-mixed-content($in-xml/g))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-mixed-content-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has mixed content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-mixed-content.html : @param $element the XML element to test :)
         declare function functx:has-mixed-content ( $element as element() ) as xs:boolean { $element/text()[normalize-space(.) != ''] and $element/* } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> <g> <x>xml</x> </g> </in-xml> return (functx:has-mixed-content($in-xml/a), functx:has-mixed-content($in-xml/b), functx:has-mixed-content($in-xml/c), functx:has-mixed-content($in-xml/d), functx:has-mixed-content($in-xml/e), functx:has-mixed-content($in-xml/f), functx:has-mixed-content($in-xml/g))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false false false false false true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-simple-content-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has simple content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-simple-content.html : @param $element the XML element to test :)
         declare function functx:has-simple-content ( $element as element() ) as xs:boolean { $element/text() and not($element/*) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> </in-xml> return (functx:has-simple-content($in-xml/a))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-simple-content-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has simple content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-simple-content.html : @param $element the XML element to test :)
         declare function functx:has-simple-content ( $element as element() ) as xs:boolean { $element/text() and not($element/*) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> </in-xml> return (functx:has-simple-content($in-xml/b))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-simple-content-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has simple content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-simple-content.html : @param $element the XML element to test :)
         declare function functx:has-simple-content ( $element as element() ) as xs:boolean { $element/text() and not($element/*) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> </in-xml> return (functx:has-simple-content($in-xml/c))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-simple-content-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has simple content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-simple-content.html : @param $element the XML element to test :)
         declare function functx:has-simple-content ( $element as element() ) as xs:boolean { $element/text() and not($element/*) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> </in-xml> return (functx:has-simple-content($in-xml/d))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-simple-content-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has simple content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-simple-content.html : @param $element the XML element to test :)
         declare function functx:has-simple-content ( $element as element() ) as xs:boolean { $element/text() and not($element/*) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> </in-xml> return (functx:has-simple-content($in-xml/e))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-simple-content-6'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has simple content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-simple-content.html : @param $element the XML element to test :)
         declare function functx:has-simple-content ( $element as element() ) as xs:boolean { $element/text() and not($element/*) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> </in-xml> return (functx:has-simple-content($in-xml/f))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-has-simple-content-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an element has simple content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_has-simple-content.html : @param $element the XML element to test :)
         declare function functx:has-simple-content ( $element as element() ) as xs:boolean { $element/text() and not($element/*) } ;
                    let $in-xml := <in-xml> <a></a> <b/> <c> </c> <d>xml</d> <e><x>xml</x></e> <f>mixed <x>xml</x></f> </in-xml> return (functx:has-simple-content($in-xml/a), functx:has-simple-content($in-xml/b), functx:has-simple-content($in-xml/c), functx:has-simple-content($in-xml/d), functx:has-simple-content($in-xml/e), functx:has-simple-content($in-xml/f))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false false false true false false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-id-from-element-1'(_Config) ->
   Qry = "
         declare namespace functx = \"http://www.example.com/\";
         declare function functx:id-from-element ( $element as element()? ) as xs:string? { data(($element/@*[id(.) is ..])[1]) } ;
         let $book := (/) return (functx:id-from-element($book/book/section[1]))",
   Env = xqerl_test:handle_environment(environment('functx_book')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "preface") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-id-untyped-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Gets XML element(s) that have an attribute with a particular value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_id-untyped.html : @param $node the root node(s) to start from : @param $id the \"id\" to find :)
         declare function functx:id-untyped ( $node as node()* , $id as xs:anyAtomicType ) as element()* { $node//*[@* = $id] } ;
                    let $in-xml := <in-xml> <a id=\"A001\">abc</a> <b foo=\"A001\">def</b> <c id=\"B001\">ghi</c> </in-xml> return (functx:id-untyped($in-xml,'B001'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<c id=\"B001\">ghi</c>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-id-untyped-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Gets XML element(s) that have an attribute with a particular value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_id-untyped.html : @param $node the root node(s) to start from : @param $id the \"id\" to find :)
         declare function functx:id-untyped ( $node as node()* , $id as xs:anyAtomicType ) as element()* { $node//*[@* = $id] } ;
                    let $in-xml := <in-xml> <a id=\"A001\">abc</a> <b foo=\"A001\">def</b> <c id=\"B001\">ghi</c> </in-xml> return (functx:id-untyped($in-xml,'A001'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a id=\"A001\">abc</a><b foo=\"A001\">def</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-id-untyped-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Gets XML element(s) that have an attribute with a particular value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_id-untyped.html : @param $node the root node(s) to start from : @param $id the \"id\" to find :)
         declare function functx:id-untyped ( $node as node()* , $id as xs:anyAtomicType ) as element()* { $node//*[@* = $id] } ;
                    let $in-xml := <in-xml> <a id=\"A001\">abc</a> <b foo=\"A001\">def</b> <c id=\"B001\">ghi</c> </in-xml> return (functx:id-untyped($in-xml,'C001'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-id-untyped-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Gets XML element(s) that have an attribute with a particular value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_id-untyped.html : @param $node the root node(s) to start from : @param $id the \"id\" to find :)
         declare function functx:id-untyped ( $node as node()* , $id as xs:anyAtomicType ) as element()* { $node//*[@* = $id] } ;
                    let $in-xml := <in-xml> <a id=\"A001\">abc</a> <b foo=\"A001\">def</b> <c id=\"B001\">ghi</c> </in-xml> return (functx:id-untyped($in-xml,'B001'), functx:id-untyped($in-xml,'A001'), functx:id-untyped($in-xml,'C001'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<c id=\"B001\">ghi</c><a id=\"A001\">abc</a><b foo=\"A001\">def</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-if-absent-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not empty, otherwise the second argument : : @author W3C XML Query WG : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-absent.html : @param $arg the item(s) that may be absent : @param $value the item(s) to use if the item is absent :)
         declare function functx:if-absent ( $arg as item()* , $value as item()* ) as item()* { if (exists($arg)) then $arg else $value } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"69.99\"/> <price value=\"49.99\" discount=\"\"/> </prices> return (data(functx:if-absent( $in-xml//price[1]/@discount, 0)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10.00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-if-absent-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not empty, otherwise the second argument : : @author W3C XML Query WG : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-absent.html : @param $arg the item(s) that may be absent : @param $value the item(s) to use if the item is absent :)
         declare function functx:if-absent ( $arg as item()* , $value as item()* ) as item()* { if (exists($arg)) then $arg else $value } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"69.99\"/> <price value=\"49.99\" discount=\"\"/> </prices> return (data(functx:if-absent( $in-xml//price[3]/@discount, 0)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-if-absent-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not empty, otherwise the second argument : : @author W3C XML Query WG : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-absent.html : @param $arg the item(s) that may be absent : @param $value the item(s) to use if the item is absent :)
         declare function functx:if-absent ( $arg as item()* , $value as item()* ) as item()* { if (exists($arg)) then $arg else $value } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"69.99\"/> <price value=\"49.99\" discount=\"\"/> </prices> return (data(functx:if-absent( $in-xml//price[4]/@discount, 0)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-if-absent-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not empty, otherwise the second argument : : @author W3C XML Query WG : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-absent.html : @param $arg the item(s) that may be absent : @param $value the item(s) to use if the item is absent :)
         declare function functx:if-absent ( $arg as item()* , $value as item()* ) as item()* { if (exists($arg)) then $arg else $value } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"69.99\"/> <price value=\"49.99\" discount=\"\"/> </prices> return (data(functx:if-absent( $in-xml//price[1]/@discount, 0)), data(functx:if-absent( $in-xml//price[3]/@discount, 0)), data(functx:if-absent( $in-xml//price[4]/@discount, 0)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10.00 0 ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-if-empty-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    let $in-xml := <prices> <price discount=\"10.00\">29.99</price> <price discount=\"6.00\">39.99</price> <price></price> <price discount=\"\">49.99</price> </prices> return (functx:if-empty($in-xml//price[1], 0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "29.99") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-if-empty-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    let $in-xml := <prices> <price discount=\"10.00\">29.99</price> <price discount=\"6.00\">39.99</price> <price></price> <price discount=\"\">49.99</price> </prices> return (functx:if-empty($in-xml//price[3], 0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-if-empty-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    let $in-xml := <prices> <price discount=\"10.00\">29.99</price> <price discount=\"6.00\">39.99</price> <price></price> <price discount=\"\">49.99</price> </prices> return (functx:if-empty($in-xml//price[99], 0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-if-empty-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    let $in-xml := <prices> <price discount=\"10.00\">29.99</price> <price discount=\"6.00\">39.99</price> <price></price> <price discount=\"\">49.99</price> </prices> return (functx:if-empty($in-xml//price[1]/@discount, 0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10.00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-if-empty-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    let $in-xml := <prices> <price discount=\"10.00\">29.99</price> <price discount=\"6.00\">39.99</price> <price></price> <price discount=\"\">49.99</price> </prices> return (functx:if-empty($in-xml//price[3]/@discount, 0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-if-empty-6'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    let $in-xml := <prices> <price discount=\"10.00\">29.99</price> <price discount=\"6.00\">39.99</price> <price></price> <price discount=\"\">49.99</price> </prices> return (functx:if-empty($in-xml//price[4]/@discount, 0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-if-empty-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    let $in-xml := <prices> <price discount=\"10.00\">29.99</price> <price discount=\"6.00\">39.99</price> <price></price> <price discount=\"\">49.99</price> </prices> return (functx:if-empty($in-xml//price[1], 0), functx:if-empty($in-xml//price[3], 0), functx:if-empty($in-xml//price[99], 0), functx:if-empty($in-xml//price[1]/@discount, 0), functx:if-empty($in-xml//price[3]/@discount, 0), functx:if-empty($in-xml//price[4]/@discount, 0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "29.99 0 0 10.00 0 0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-deep-equal-node-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position of a node in a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-deep-equal-node.html : @param $nodes the node sequence : @param $nodeToFind the node to find in the sequence :)
         declare function functx:index-of-deep-equal-node ( $nodes as node()* , $nodeToFind as node() ) as xs:integer* { for $seq in (1 to count($nodes)) return $seq[deep-equal($nodes[$seq],$nodeToFind)] } ;
                    let $in-xml := <authors> <author> <fName/> <lName>Smith</lName> </author> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return let $anotherAuthor := <author> <fName>John</fName> <lName>Smith</lName> </author> return (functx:index-of-deep-equal-node( $in-xml/author,$anAuthor))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-deep-equal-node-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position of a node in a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-deep-equal-node.html : @param $nodes the node sequence : @param $nodeToFind the node to find in the sequence :)
         declare function functx:index-of-deep-equal-node ( $nodes as node()* , $nodeToFind as node() ) as xs:integer* { for $seq in (1 to count($nodes)) return $seq[deep-equal($nodes[$seq],$nodeToFind)] } ;
                    let $in-xml := <authors> <author> <fName/> <lName>Smith</lName> </author> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return let $anotherAuthor := <author> <fName>John</fName> <lName>Smith</lName> </author> return (functx:index-of-deep-equal-node( $in-xml/author,$anotherAuthor))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-deep-equal-node-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position of a node in a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-deep-equal-node.html : @param $nodes the node sequence : @param $nodeToFind the node to find in the sequence :)
         declare function functx:index-of-deep-equal-node ( $nodes as node()* , $nodeToFind as node() ) as xs:integer* { for $seq in (1 to count($nodes)) return $seq[deep-equal($nodes[$seq],$nodeToFind)] } ;
                    let $in-xml := <authors> <author> <fName/> <lName>Smith</lName> </author> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return let $anotherAuthor := <author> <fName>John</fName> <lName>Smith</lName> </author> return (functx:index-of-deep-equal-node( $in-xml/author/lName,$anAuthor/lName))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-deep-equal-node-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position of a node in a sequence, based on contents and attributes :
                        : @author Priscilla Walmsley, Datypic
                        : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-deep-equal-node.html
                        : @param $nodes the node sequence : @param $nodeToFind the node to find in the sequence :)
                        
         declare function functx:index-of-deep-equal-node ( $nodes as node()* , $nodeToFind as node() ) as xs:integer* { 
            for $seq in (1 to count($nodes)) 
            return $seq[deep-equal($nodes[$seq],$nodeToFind)] 
         } ;
         let $in-xml := <authors> <author> <fName/> <lName>Smith</lName> </author> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> 
         return 
             let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> 
             return 
                 let $anotherAuthor := <author> <fName>John</fName> <lName>Smith</lName> </author> 
                 return (functx:index-of-deep-equal-node( $in-xml/author,$anAuthor), 
                         functx:index-of-deep-equal-node( $in-xml/author,$anotherAuthor), 
                         functx:index-of-deep-equal-node( $in-xml/author/lName,$anAuthor/lName))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-match-first-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (functx:index-of-match-first( 'abcdabcdabcd','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-match-first-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (functx:index-of-match-first( 'abcdabcdabcd','bcd'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-match-first-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (functx:index-of-match-first('a1234','\\d'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-match-first-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (functx:index-of-match-first('abc abc','\\s'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-match-first-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (functx:index-of-match-first('abc abc','z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-match-first-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first position of a matching substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-match-first.html : @param $arg the string : @param $pattern the pattern to match :)
         declare function functx:index-of-match-first ( $arg as xs:string? , $pattern as xs:string ) as xs:integer? { if (matches($arg,$pattern)) then string-length(tokenize($arg, $pattern)[1]) + 1 else () } ;
                    (functx:index-of-match-first( 'abcdabcdabcd','abc'), functx:index-of-match-first( 'abcdabcdabcd','bcd'), functx:index-of-match-first('a1234','\\d'), functx:index-of-match-first('abc abc','\\s'), functx:index-of-match-first('abc abc','z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 2 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-node-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position of a node in a sequence, based on node identity : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-node.html : @param $nodes the node sequence : @param $nodeToFind the node to find in the sequence :)
         declare function functx:index-of-node ( $nodes as node()* , $nodeToFind as node() ) as xs:integer* { for $seq in (1 to count($nodes)) return $seq[$nodes[$seq] is $nodeToFind] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:index-of-node( $in-xml/author,$in-xml/author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-node-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position of a node in a sequence, based on node identity : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-node.html : @param $nodes the node sequence : @param $nodeToFind the node to find in the sequence :)
         declare function functx:index-of-node ( $nodes as node()* , $nodeToFind as node() ) as xs:integer* { for $seq in (1 to count($nodes)) return $seq[$nodes[$seq] is $nodeToFind] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:index-of-node( $in-xml/author,$in-xml/author[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-node-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position of a node in a sequence, based on node identity : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-node.html : @param $nodes the node sequence : @param $nodeToFind the node to find in the sequence :)
         declare function functx:index-of-node ( $nodes as node()* , $nodeToFind as node() ) as xs:integer* { for $seq in (1 to count($nodes)) return $seq[$nodes[$seq] is $nodeToFind] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:index-of-node( $in-xml/author, $in-xml/author[lName='Doe']))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-node-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position of a node in a sequence, based on node identity : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-node.html : @param $nodes the node sequence : @param $nodeToFind the node to find in the sequence :)
         declare function functx:index-of-node ( $nodes as node()* , $nodeToFind as node() ) as xs:integer* { for $seq in (1 to count($nodes)) return $seq[$nodes[$seq] is $nodeToFind] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:index-of-node( $in-xml/author,$in-xml/author[1]), functx:index-of-node( $in-xml/author,$in-xml/author[2]), functx:index-of-node( $in-xml/author, $in-xml/author[lName='Doe']))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-first-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first position of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string-first.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string-first ( $arg as xs:string? , $substring as xs:string ) as xs:integer? { if (contains($arg, $substring)) then string-length(substring-before($arg, $substring))+1 else () } ;
                    (functx:index-of-string-first( 'abcdabcdabcd','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-first-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first position of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string-first.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string-first ( $arg as xs:string? , $substring as xs:string ) as xs:integer? { if (contains($arg, $substring)) then string-length(substring-before($arg, $substring))+1 else () } ;
                    (functx:index-of-string-first( 'abcd','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-first-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first position of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string-first.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string-first ( $arg as xs:string? , $substring as xs:string ) as xs:integer? { if (contains($arg, $substring)) then string-length(substring-before($arg, $substring))+1 else () } ;
                    (functx:index-of-string-first( 'xxx','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-first-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first position of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string-first.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string-first ( $arg as xs:string? , $substring as xs:string ) as xs:integer? { if (contains($arg, $substring)) then string-length(substring-before($arg, $substring))+1 else () } ;
                    (functx:index-of-string-first( 'abcdabcdabcd','abc'), functx:index-of-string-first( 'abcd','abc'), functx:index-of-string-first( 'xxx','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-last-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The last position of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string-last.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string-last ( $arg as xs:string? , $substring as xs:string ) as xs:integer? { functx:index-of-string($arg, $substring)[last()] } ;
                    (:~ : The position(s) of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string ( $arg as xs:string? , $substring as xs:string ) as xs:integer* { if (contains($arg, $substring)) then (string-length(substring-before($arg, $substring))+1, for $other in functx:index-of-string(substring-after($arg, $substring), $substring) return $other + string-length(substring-before($arg, $substring)) + string-length($substring)) else () } ;
                    (functx:index-of-string-last( 'abcdabcdabcd','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"9") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-last-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The last position of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string-last.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string-last ( $arg as xs:string? , $substring as xs:string ) as xs:integer? { functx:index-of-string($arg, $substring)[last()] } ;
                    (:~ : The position(s) of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string ( $arg as xs:string? , $substring as xs:string ) as xs:integer* { if (contains($arg, $substring)) then (string-length(substring-before($arg, $substring))+1, for $other in functx:index-of-string(substring-after($arg, $substring), $substring) return $other + string-length(substring-before($arg, $substring)) + string-length($substring)) else () } ;
                    (functx:index-of-string-last( 'abcd','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-last-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The last position of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string-last.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string-last ( $arg as xs:string? , $substring as xs:string ) as xs:integer? { functx:index-of-string($arg, $substring)[last()] } ;
                    (:~ : The position(s) of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string ( $arg as xs:string? , $substring as xs:string ) as xs:integer* { if (contains($arg, $substring)) then (string-length(substring-before($arg, $substring))+1, for $other in functx:index-of-string(substring-after($arg, $substring), $substring) return $other + string-length(substring-before($arg, $substring)) + string-length($substring)) else () } ;
                    (functx:index-of-string-last( 'xxx','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-last-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The last position of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string-last.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string-last ( $arg as xs:string? , $substring as xs:string ) as xs:integer? { functx:index-of-string($arg, $substring)[last()] } ;
                    (:~ : The position(s) of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string ( $arg as xs:string? , $substring as xs:string ) as xs:integer* { if (contains($arg, $substring)) then (string-length(substring-before($arg, $substring))+1, for $other in functx:index-of-string(substring-after($arg, $substring), $substring) return $other + string-length(substring-before($arg, $substring)) + string-length($substring)) else () } ;
                    (functx:index-of-string-last( 'abcdabcdabcd','abc'), functx:index-of-string-last( 'abcd','abc'), functx:index-of-string-last( 'xxx','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position(s) of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string ( $arg as xs:string? , $substring as xs:string ) as xs:integer* { if (contains($arg, $substring)) then (string-length(substring-before($arg, $substring))+1, for $other in functx:index-of-string(substring-after($arg, $substring), $substring) return $other + string-length(substring-before($arg, $substring)) + string-length($substring)) else () } ;
                    (functx:index-of-string('abcdabcdabcd','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 5 9") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position(s) of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string ( $arg as xs:string? , $substring as xs:string ) as xs:integer* { if (contains($arg, $substring)) then (string-length(substring-before($arg, $substring))+1, for $other in functx:index-of-string(substring-after($arg, $substring), $substring) return $other + string-length(substring-before($arg, $substring)) + string-length($substring)) else () } ;
                    (functx:index-of-string('abcd','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position(s) of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string ( $arg as xs:string? , $substring as xs:string ) as xs:integer* { if (contains($arg, $substring)) then (string-length(substring-before($arg, $substring))+1, for $other in functx:index-of-string(substring-after($arg, $substring), $substring) return $other + string-length(substring-before($arg, $substring)) + string-length($substring)) else () } ;
                    (functx:index-of-string('xxx','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-index-of-string-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position(s) of a substring : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-string.html : @param $arg the string : @param $substring the substring to find :)
         declare function functx:index-of-string ( $arg as xs:string? , $substring as xs:string ) as xs:integer* { if (contains($arg, $substring)) then (string-length(substring-before($arg, $substring))+1, for $other in functx:index-of-string(substring-after($arg, $substring), $substring) return $other + string-length(substring-before($arg, $substring)) + string-length($substring)) else () } ;
                    (functx:index-of-string('abcdabcdabcd','abc'), functx:index-of-string('abcd','abc'), functx:index-of-string('xxx','abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 5 9 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-insert-string-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Inserts a string at a specified position : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_insert-string.html : @param $originalString the original string to insert into : @param $stringToInsert the string to insert : @param $pos the position :)
         declare function functx:insert-string ( $originalString as xs:string? , $stringToInsert as xs:string? , $pos as xs:integer ) as xs:string { concat(substring($originalString,1,$pos - 1), $stringToInsert, substring($originalString,$pos)) } ;
                    (functx:insert-string('xyz','def',2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xdefyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-insert-string-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Inserts a string at a specified position : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_insert-string.html : @param $originalString the original string to insert into : @param $stringToInsert the string to insert : @param $pos the position :)
         declare function functx:insert-string ( $originalString as xs:string? , $stringToInsert as xs:string? , $pos as xs:integer ) as xs:string { concat(substring($originalString,1,$pos - 1), $stringToInsert, substring($originalString,$pos)) } ;
                    (functx:insert-string('xyz','def',5))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xyzdef") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-insert-string-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Inserts a string at a specified position : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_insert-string.html : @param $originalString the original string to insert into : @param $stringToInsert the string to insert : @param $pos the position :)
         declare function functx:insert-string ( $originalString as xs:string? , $stringToInsert as xs:string? , $pos as xs:integer ) as xs:string { concat(substring($originalString,1,$pos - 1), $stringToInsert, substring($originalString,$pos)) } ;
                    (functx:insert-string('xyz','',2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-insert-string-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Inserts a string at a specified position : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_insert-string.html : @param $originalString the original string to insert into : @param $stringToInsert the string to insert : @param $pos the position :)
         declare function functx:insert-string ( $originalString as xs:string? , $stringToInsert as xs:string? , $pos as xs:integer ) as xs:string { concat(substring($originalString,1,$pos - 1), $stringToInsert, substring($originalString,$pos)) } ;
                    (functx:insert-string('','def',2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-insert-string-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Inserts a string at a specified position : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_insert-string.html : @param $originalString the original string to insert into : @param $stringToInsert the string to insert : @param $pos the position :)
         declare function functx:insert-string ( $originalString as xs:string? , $stringToInsert as xs:string? , $pos as xs:integer ) as xs:string { concat(substring($originalString,1,$pos - 1), $stringToInsert, substring($originalString,$pos)) } ;
                    (functx:insert-string('xyz','def',2), functx:insert-string('xyz','def',5), functx:insert-string('xyz','',2), functx:insert-string('','def',2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xdefyz xyzdef xyz def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-a-number-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is numeric : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-a-number.html : @param $value the value to test :)
         declare function functx:is-a-number ( $value as xs:anyAtomicType? ) as xs:boolean { string(number($value)) != 'NaN' } ;
                    let $in-xml := <in-xml> <a>123</a> <b>abc</b> </in-xml> return (functx:is-a-number('123'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-a-number-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is numeric : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-a-number.html : @param $value the value to test :)
         declare function functx:is-a-number ( $value as xs:anyAtomicType? ) as xs:boolean { string(number($value)) != 'NaN' } ;
                    let $in-xml := <in-xml> <a>123</a> <b>abc</b> </in-xml> return (functx:is-a-number(123))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-a-number-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is numeric : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-a-number.html : @param $value the value to test :)
         declare function functx:is-a-number ( $value as xs:anyAtomicType? ) as xs:boolean { string(number($value)) != 'NaN' } ;
                    let $in-xml := <in-xml> <a>123</a> <b>abc</b> </in-xml> return (functx:is-a-number(' 123 '))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-a-number-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is numeric : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-a-number.html : @param $value the value to test :)
         declare function functx:is-a-number ( $value as xs:anyAtomicType? ) as xs:boolean { string(number($value)) != 'NaN' } ;
                    let $in-xml := <in-xml> <a>123</a> <b>abc</b> </in-xml> return (functx:is-a-number(''))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-a-number-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is numeric : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-a-number.html : @param $value the value to test :)
         declare function functx:is-a-number ( $value as xs:anyAtomicType? ) as xs:boolean { string(number($value)) != 'NaN' } ;
                    let $in-xml := <in-xml> <a>123</a> <b>abc</b> </in-xml> return (functx:is-a-number('123abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-a-number-6'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is numeric : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-a-number.html : @param $value the value to test :)
         declare function functx:is-a-number ( $value as xs:anyAtomicType? ) as xs:boolean { string(number($value)) != 'NaN' } ;
                    let $in-xml := <in-xml> <a>123</a> <b>abc</b> </in-xml> return (functx:is-a-number('NaN'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-a-number-7'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is numeric : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-a-number.html : @param $value the value to test :)
         declare function functx:is-a-number ( $value as xs:anyAtomicType? ) as xs:boolean { string(number($value)) != 'NaN' } ;
                    let $in-xml := <in-xml> <a>123</a> <b>abc</b> </in-xml> return (functx:is-a-number($in-xml/a))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-a-number-8'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is numeric : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-a-number.html : @param $value the value to test :)
         declare function functx:is-a-number ( $value as xs:anyAtomicType? ) as xs:boolean { string(number($value)) != 'NaN' } ;
                    let $in-xml := <in-xml> <a>123</a> <b>abc</b> </in-xml> return (functx:is-a-number($in-xml/b))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-a-number-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a value is numeric : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-a-number.html : @param $value the value to test :)
         declare function functx:is-a-number ( $value as xs:anyAtomicType? ) as xs:boolean { string(number($value)) != 'NaN' } ;
                    let $in-xml := <in-xml> <a>123</a> <b>abc</b> </in-xml> return (functx:is-a-number('123'), functx:is-a-number(123), functx:is-a-number(' 123 '), functx:is-a-number(''), functx:is-a-number('123abc'), functx:is-a-number('NaN'), functx:is-a-number($in-xml/a), functx:is-a-number($in-xml/b))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true true false false false true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-absolute-uri-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a URI is absolute : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-absolute-uri.html : @param $uri the URI to test :)
         declare function functx:is-absolute-uri ( $uri as xs:string? ) as xs:boolean { matches($uri,'^[a-z]+:') } ;
                    (functx:is-absolute-uri( 'http://www.datypic.com'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-absolute-uri-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a URI is absolute : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-absolute-uri.html : @param $uri the URI to test :)
         declare function functx:is-absolute-uri ( $uri as xs:string? ) as xs:boolean { matches($uri,'^[a-z]+:') } ;
                    (functx:is-absolute-uri( 'ftp://ftp.datypic.com'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-absolute-uri-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a URI is absolute : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-absolute-uri.html : @param $uri the URI to test :)
         declare function functx:is-absolute-uri ( $uri as xs:string? ) as xs:boolean { matches($uri,'^[a-z]+:') } ;
                    (functx:is-absolute-uri('ftp.datypic.com'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-absolute-uri-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a URI is absolute : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-absolute-uri.html : @param $uri the URI to test :)
         declare function functx:is-absolute-uri ( $uri as xs:string? ) as xs:boolean { matches($uri,'^[a-z]+:') } ;
                    (functx:is-absolute-uri('www.datypic.com'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-absolute-uri-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a URI is absolute : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-absolute-uri.html : @param $uri the URI to test :)
         declare function functx:is-absolute-uri ( $uri as xs:string? ) as xs:boolean { matches($uri,'^[a-z]+:') } ;
                    (functx:is-absolute-uri('prod.html'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-absolute-uri-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a URI is absolute : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-absolute-uri.html : @param $uri the URI to test :)
         declare function functx:is-absolute-uri ( $uri as xs:string? ) as xs:boolean { matches($uri,'^[a-z]+:') } ;
                    (functx:is-absolute-uri( 'http://www.datypic.com'), functx:is-absolute-uri( 'ftp://ftp.datypic.com'), functx:is-absolute-uri('ftp.datypic.com'), functx:is-absolute-uri('www.datypic.com'), functx:is-absolute-uri('prod.html'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true false false false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-ancestor-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is an ancestor of another node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-ancestor.html : @param $node1 the first node : @param $node2 the second node :)
         declare function functx:is-ancestor ( $node1 as node() , $node2 as node() ) as xs:boolean { exists($node1 intersect $node2/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:is-ancestor( $in-xml//author[1], $in-xml//author[1]/fName))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-ancestor-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is an ancestor of another node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-ancestor.html : @param $node1 the first node : @param $node2 the second node :)
         declare function functx:is-ancestor ( $node1 as node() , $node2 as node() ) as xs:boolean { exists($node1 intersect $node2/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:is-ancestor( $in-xml//author[1]/fName, $in-xml//author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-ancestor-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is an ancestor of another node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-ancestor.html : @param $node1 the first node : @param $node2 the second node :)
         declare function functx:is-ancestor ( $node1 as node() , $node2 as node() ) as xs:boolean { exists($node1 intersect $node2/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:is-ancestor( $in-xml//author[1]/fName, $in-xml//author[1]/fName/text()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-ancestor-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is an ancestor of another node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-ancestor.html : @param $node1 the first node : @param $node2 the second node :)
         declare function functx:is-ancestor ( $node1 as node() , $node2 as node() ) as xs:boolean { exists($node1 intersect $node2/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:is-ancestor( $in-xml//author[1], $in-xml//author[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-ancestor-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is an ancestor of another node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-ancestor.html : @param $node1 the first node : @param $node2 the second node :)
         declare function functx:is-ancestor ( $node1 as node() , $node2 as node() ) as xs:boolean { exists($node1 intersect $node2/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:is-ancestor( $in-xml//author[1], $in-xml//author[1]/fName), functx:is-ancestor( $in-xml//author[1]/fName, $in-xml//author[1]), functx:is-ancestor( $in-xml//author[1]/fName, $in-xml//author[1]/fName/text()), functx:is-ancestor( $in-xml//author[1], $in-xml//author[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-descendant-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is a descendant of another node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-descendant.html : @param $node1 the first node : @param $node2 the second node :)
         declare function functx:is-descendant ( $node1 as node() , $node2 as node() ) as xs:boolean { boolean($node2 intersect $node1/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:is-descendant( $in-xml//author[1]/fName, $in-xml//author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-descendant-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is a descendant of another node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-descendant.html : @param $node1 the first node : @param $node2 the second node :)
         declare function functx:is-descendant ( $node1 as node() , $node2 as node() ) as xs:boolean { boolean($node2 intersect $node1/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:is-descendant( $in-xml//author[1], $in-xml//author[1]/fName))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-descendant-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is a descendant of another node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-descendant.html : @param $node1 the first node : @param $node2 the second node :)
         declare function functx:is-descendant ( $node1 as node() , $node2 as node() ) as xs:boolean { boolean($node2 intersect $node1/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:is-descendant( $in-xml//author[1]/fName/text(), $in-xml//author[1]/fName))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-descendant-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is a descendant of another node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-descendant.html : @param $node1 the first node : @param $node2 the second node :)
         declare function functx:is-descendant ( $node1 as node() , $node2 as node() ) as xs:boolean { boolean($node2 intersect $node1/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:is-descendant( $in-xml//author[1], $in-xml//author[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-descendant-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is a descendant of another node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-descendant.html : @param $node1 the first node : @param $node2 the second node :)
         declare function functx:is-descendant ( $node1 as node() , $node2 as node() ) as xs:boolean { boolean($node2 intersect $node1/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:is-descendant( $in-xml//author[1]/fName, $in-xml//author[1]), functx:is-descendant( $in-xml//author[1], $in-xml//author[1]/fName), functx:is-descendant( $in-xml//author[1]/fName/text(), $in-xml//author[1]/fName), functx:is-descendant( $in-xml//author[1], $in-xml//author[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-leap-year-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (functx:is-leap-year(xs:date('2004-01-23')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-leap-year-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (functx:is-leap-year(2004))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-leap-year-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (functx:is-leap-year('2005-02-15'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-leap-year-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (functx:is-leap-year(xs:date('2004-01-23')), functx:is-leap-year(2004), functx:is-leap-year('2005-02-15'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-among-descendants-deep-equal-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is among the descendants of a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-among-descendants-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-among-descendants-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq/descendant-or-self::*/(.|@*) satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>John</fName> <lName>Doe</lName> </author> return let $anotherAuthor := <author> <lName>Doe</lName> <fName>John</fName> </author> return (functx:is-node-among-descendants-deep-equal( $in-xml/author[1],$in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-among-descendants-deep-equal-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is among the descendants of a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-among-descendants-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-among-descendants-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq/descendant-or-self::*/(.|@*) satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>John</fName> <lName>Doe</lName> </author> return let $anotherAuthor := <author> <lName>Doe</lName> <fName>John</fName> </author> return (functx:is-node-among-descendants-deep-equal( $anAuthor,$in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-among-descendants-deep-equal-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is among the descendants of a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-among-descendants-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-among-descendants-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq/descendant-or-self::*/(.|@*) satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>John</fName> <lName>Doe</lName> </author> return let $anotherAuthor := <author> <lName>Doe</lName> <fName>John</fName> </author> return (functx:is-node-among-descendants-deep-equal( $anotherAuthor,$in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-among-descendants-deep-equal-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is among the descendants of a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-among-descendants-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-among-descendants-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq/descendant-or-self::*/(.|@*) satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>John</fName> <lName>Doe</lName> </author> return let $anotherAuthor := <author> <lName>Doe</lName> <fName>John</fName> </author> return (functx:is-node-among-descendants-deep-equal( $anAuthor,$in-xml/author))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-among-descendants-deep-equal-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is among the descendants of a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-among-descendants-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-among-descendants-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq/descendant-or-self::*/(.|@*) satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>John</fName> <lName>Doe</lName> </author> return let $anotherAuthor := <author> <lName>Doe</lName> <fName>John</fName> </author> return (functx:is-node-among-descendants-deep-equal( $in-xml/author[1],$in-xml), functx:is-node-among-descendants-deep-equal( $anAuthor,$in-xml), functx:is-node-among-descendants-deep-equal( $anotherAuthor,$in-xml), functx:is-node-among-descendants-deep-equal( $anAuthor,$in-xml/author))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true false true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-among-descendants-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is among the descendants of a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-among-descendants.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-among-descendants ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq/descendant-or-self::*/(.|@*) satisfies $nodeInSeq is $node } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"49.99\" discount=\"\"/> </prices> return let $aPrice := <price value=\"49.99\" discount=\"\"/> return (functx:is-node-among-descendants( $in-xml/price[1],$in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-among-descendants-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is among the descendants of a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-among-descendants.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-among-descendants ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq/descendant-or-self::*/(.|@*) satisfies $nodeInSeq is $node } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"49.99\" discount=\"\"/> </prices> return let $aPrice := <price value=\"49.99\" discount=\"\"/> return (functx:is-node-among-descendants( $in-xml,$in-xml/price[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-among-descendants-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is among the descendants of a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-among-descendants.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-among-descendants ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq/descendant-or-self::*/(.|@*) satisfies $nodeInSeq is $node } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"49.99\" discount=\"\"/> </prices> return let $aPrice := <price value=\"49.99\" discount=\"\"/> return (functx:is-node-among-descendants( $in-xml,$in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-among-descendants-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is among the descendants of a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-among-descendants.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-among-descendants ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq/descendant-or-self::*/(.|@*) satisfies $nodeInSeq is $node } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"49.99\" discount=\"\"/> </prices> return let $aPrice := <price value=\"49.99\" discount=\"\"/> return (functx:is-node-among-descendants( $aPrice,$in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-among-descendants-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is among the descendants of a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-among-descendants.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-among-descendants ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq/descendant-or-self::*/(.|@*) satisfies $nodeInSeq is $node } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"49.99\" discount=\"\"/> </prices> return let $aPrice := <price value=\"49.99\" discount=\"\"/> return (functx:is-node-among-descendants( $in-xml/price[1],$in-xml), functx:is-node-among-descendants( $in-xml,$in-xml/price[1]), functx:is-node-among-descendants( $in-xml,$in-xml), functx:is-node-among-descendants( $aPrice,$in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-in-sequence-deep-equal-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is in a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>John</fName> <lName>Doe</lName> </author> return (functx:is-node-in-sequence-deep-equal( $in-xml/author[1],$in-xml/author))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-in-sequence-deep-equal-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is in a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>John</fName> <lName>Doe</lName> </author> return (functx:is-node-in-sequence-deep-equal( $anAuthor,$in-xml/author))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-in-sequence-deep-equal-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is in a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>John</fName> <lName>Doe</lName> </author> return (functx:is-node-in-sequence-deep-equal( $in-xml/author[1],$in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-in-sequence-deep-equal-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is in a sequence, based on contents and attributes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence-deep-equal.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence-deep-equal ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies deep-equal($nodeInSeq,$node) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>John</fName> <lName>Doe</lName> </author> return (functx:is-node-in-sequence-deep-equal( $in-xml/author[1],$in-xml/author), functx:is-node-in-sequence-deep-equal( $anAuthor,$in-xml/author), functx:is-node-in-sequence-deep-equal( $in-xml/author[1],$in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-in-sequence-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is in a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies $nodeInSeq is $node } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"49.99\" discount=\"\"/> </prices> return let $aPrice := <price value=\"49.99\" discount=\"\"/> return (functx:is-node-in-sequence( $in-xml/price[1],$in-xml/price))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-in-sequence-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is in a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies $nodeInSeq is $node } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"49.99\" discount=\"\"/> </prices> return let $aPrice := <price value=\"49.99\" discount=\"\"/> return (functx:is-node-in-sequence( $in-xml/price[1],$in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-in-sequence-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is in a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies $nodeInSeq is $node } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"49.99\" discount=\"\"/> </prices> return let $aPrice := <price value=\"49.99\" discount=\"\"/> return (functx:is-node-in-sequence( $aPrice,$in-xml/price))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-node-in-sequence-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node is in a sequence, based on node identity : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-node-in-sequence.html : @param $node the node to test : @param $seq the sequence of nodes to search :)
         declare function functx:is-node-in-sequence ( $node as node()? , $seq as node()* ) as xs:boolean { some $nodeInSeq in $seq satisfies $nodeInSeq is $node } ;
                    let $in-xml := <prices> <price value=\"29.99\" discount=\"10.00\"/> <price value=\"39.99\" discount=\"6.00\"/> <price value=\"49.99\" discount=\"\"/> </prices> return let $aPrice := <price value=\"49.99\" discount=\"\"/> return (functx:is-node-in-sequence( $in-xml/price[1],$in-xml/price), functx:is-node-in-sequence( $in-xml/price[1],$in-xml), functx:is-node-in-sequence( $aPrice,$in-xml/price))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-value-in-sequence-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an atomic value appears in a sequence : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-value-in-sequence.html : @param $value the atomic value to test : @param $seq the sequence of values to search :)
         declare function functx:is-value-in-sequence ( $value as xs:anyAtomicType? , $seq as xs:anyAtomicType* ) as xs:boolean { $value = $seq } ;
                    (functx:is-value-in-sequence(1,(1,2,3)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-value-in-sequence-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an atomic value appears in a sequence : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-value-in-sequence.html : @param $value the atomic value to test : @param $seq the sequence of values to search :)
         declare function functx:is-value-in-sequence ( $value as xs:anyAtomicType? , $seq as xs:anyAtomicType* ) as xs:boolean { $value = $seq } ;
                    (functx:is-value-in-sequence(5,(1,2,3)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-value-in-sequence-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an atomic value appears in a sequence : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-value-in-sequence.html : @param $value the atomic value to test : @param $seq the sequence of values to search :)
         declare function functx:is-value-in-sequence ( $value as xs:anyAtomicType? , $seq as xs:anyAtomicType* ) as xs:boolean { $value = $seq } ;
                    (functx:is-value-in-sequence(1.0,(1,2,3)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-is-value-in-sequence-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an atomic value appears in a sequence : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-value-in-sequence.html : @param $value the atomic value to test : @param $seq the sequence of values to search :)
         declare function functx:is-value-in-sequence ( $value as xs:anyAtomicType? , $seq as xs:anyAtomicType* ) as xs:boolean { $value = $seq } ;
                    (functx:is-value-in-sequence(1,(1,2,3)), functx:is-value-in-sequence(5,(1,2,3)), functx:is-value-in-sequence(1.0,(1,2,3)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-last-day-of-month-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (:~ : The last day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_last-day-of-month.html : @param $date the date :)
         declare function functx:last-day-of-month ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), month-from-date(xs:date($date)), functx:days-in-month($date)) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:last-day-of-month(xs:date('2004-01-23')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-last-day-of-month-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (:~ : The last day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_last-day-of-month.html : @param $date the date :)
         declare function functx:last-day-of-month ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), month-from-date(xs:date($date)), functx:days-in-month($date)) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:last-day-of-month( xs:dateTime('2004-09-23T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-09-30") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-last-day-of-month-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (:~ : The last day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_last-day-of-month.html : @param $date the date :)
         declare function functx:last-day-of-month ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), month-from-date(xs:date($date)), functx:days-in-month($date)) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:last-day-of-month('2004-03-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-03-31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-last-day-of-month-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (:~ : The last day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_last-day-of-month.html : @param $date the date :)
         declare function functx:last-day-of-month ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), month-from-date(xs:date($date)), functx:days-in-month($date)) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:last-day-of-month(xs:date('2004-01-23')), functx:last-day-of-month( xs:dateTime('2004-09-23T12:00:13')), functx:last-day-of-month('2004-03-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-31 2004-09-30 2004-03-31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-last-day-of-year-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (:~ : The last day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_last-day-of-year.html : @param $date the date :)
         declare function functx:last-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 12, 31) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:last-day-of-year(xs:date('2004-01-23')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-last-day-of-year-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (:~ : The last day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_last-day-of-year.html : @param $date the date :)
         declare function functx:last-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 12, 31) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:last-day-of-year( xs:dateTime('2004-12-23T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-last-day-of-year-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (:~ : The last day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_last-day-of-year.html : @param $date the date :)
         declare function functx:last-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 12, 31) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:last-day-of-year('2004-03-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-last-day-of-year-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Construct a date from a year, month and day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_date.html : @param $year the year : @param $month the month : @param $day the day :)
         declare function functx:date ( $year as xs:anyAtomicType , $month as xs:anyAtomicType , $day as xs:anyAtomicType ) as xs:date { xs:date( concat( functx:pad-integer-to-length(xs:integer($year),4),'-', functx:pad-integer-to-length(xs:integer($month),2),'-', functx:pad-integer-to-length(xs:integer($day),2))) } ;
                    (:~ : Number of days in the month : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_days-in-month.html : @param $date the date :)
         declare function functx:days-in-month ( $date as xs:anyAtomicType? ) as xs:integer? { if (month-from-date(xs:date($date)) = 2 and functx:is-leap-year($date)) then 29 else (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) [month-from-date(xs:date($date))] } ;
                    (:~ : Whether a date falls in a leap year : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_is-leap-year.html : @param $date the date or year :)
         declare function functx:is-leap-year ( $date as xs:anyAtomicType? ) as xs:boolean { for $year in xs:integer(substring(string($date),1,4)) return ($year mod 4 = 0 and $year mod 100 != 0) or $year mod 400 = 0 } ;
                    (:~ : The last day of the month of a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_last-day-of-year.html : @param $date the date :)
         declare function functx:last-day-of-year ( $date as xs:anyAtomicType? ) as xs:date? { functx:date(year-from-date(xs:date($date)), 12, 31) } ;
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:last-day-of-year(xs:date('2004-01-23')), functx:last-day-of-year( xs:dateTime('2004-12-23T12:00:13')), functx:last-day-of-year('2004-03-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-31 2004-12-31 2004-12-31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-last-node-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node in a sequence that is last in document order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_last-node.html : @param $nodes the sequence of nodes :)
         declare function functx:last-node ( $nodes as node()* ) as node()? { ($nodes/.)[last()] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:last-node($in-xml//fName))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fName>John</fName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-last-node-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node in a sequence that is last in document order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_last-node.html : @param $nodes the sequence of nodes :)
         declare function functx:last-node ( $nodes as node()* ) as node()? { ($nodes/.)[last()] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:last-node( ($in-xml//lName, $in-xml//fName) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<lName>Doe</lName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-last-node-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node in a sequence that is last in document order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_last-node.html : @param $nodes the sequence of nodes :)
         declare function functx:last-node ( $nodes as node()* ) as node()? { ($nodes/.)[last()] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:last-node($in-xml//fName), functx:last-node( ($in-xml//lName, $in-xml//fName) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fName>John</fName><lName>Doe</lName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-leaf-elements-1'(_Config) ->
   Qry = "
      	declare namespace functx = \"http://www.example.com/\";
      	declare function functx:leaf-elements ( $root as node()? ) as element()* { $root/descendant-or-self::*[not(*)] } ;
        let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> 
                                 <author> <fName>John</fName> <lName>Doe</lName> </author> 
                       </authors> 
        return (functx:leaf-elements($in-xml))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fName>Kate</fName><lName>Jones</lName><fName>John</fName><lName>Doe</lName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-leaf-elements-2'(_Config) ->
   Qry = "
      	declare namespace functx = \"http://www.example.com/\";
        declare function functx:leaf-elements ( $root as node()? ) as element()* { $root/descendant-or-self::*[not(*)] } ;
        let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> 
                                 <author> <fName>John</fName> <lName>Doe</lName> </author> 
                       </authors> 
        return (functx:leaf-elements($in-xml/author[1]))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fName>Kate</fName><lName>Jones</lName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-leaf-elements-all'(_Config) ->
   Qry = "
      	declare namespace functx = \"http://www.example.com/\";
        declare function functx:leaf-elements ( $root as node()? ) as element()* { $root/descendant-or-self::*[not(*)] } ;
        let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> 
                                 <author> <fName>John</fName> <lName>Doe</lName> </author> 
                       </authors> 
        return (functx:leaf-elements($in-xml), functx:leaf-elements($in-xml/author[1]))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fName>Kate</fName><lName>Jones</lName><fName>John</fName><lName>Doe</lName><fName>Kate</fName><lName>Jones</lName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-left-trim-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Trims leading whitespace : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_left-trim.html : @param $arg the string to trim :)
         declare function functx:left-trim ( $arg as xs:string? ) as xs:string { replace($arg,'^\\s+','') } ;
                    (functx:left-trim(' xyz'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-left-trim-2'(_Config) ->
   Qry = "
         declare namespace functx = \"http://www.example.com/\";
         declare function functx:left-trim ( $arg as xs:string? ) as xs:string { replace($arg,'^\\s+','') } ;
         (functx:left-trim(' xyz    x'))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xyz    x") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-left-trim-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Trims leading whitespace : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_left-trim.html : @param $arg the string to trim :)
         declare function functx:left-trim ( $arg as xs:string? ) as xs:string { replace($arg,'^\\s+','') } ;
                    (functx:left-trim('xyz'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-left-trim-all'(_Config) ->
   Qry = "
         declare namespace functx = \"http://www.example.com/\";
         declare function functx:left-trim ( $arg as xs:string? ) as xs:string { replace($arg,'^\\s+','') } ;
                    (functx:left-trim(' xyz'), functx:left-trim(' xyz    x'), functx:left-trim('xyz'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xyz xyz    x xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-line-count-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The number of lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_line-count.html : @param $arg the string to test :)
         declare function functx:line-count ( $arg as xs:string? ) as xs:integer { count(functx:lines($arg)) } ;
                    (:~ : Split a string into separate lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_lines.html : @param $arg the string to split :)
         declare function functx:lines ( $arg as xs:string? ) as xs:string* { tokenize($arg, '(\\r\\n?|\\n\\r?)') } ;
                    let $lines := 'a value on many lines' return (functx:line-count('a value'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-line-count-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The number of lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_line-count.html : @param $arg the string to test :)
         declare function functx:line-count ( $arg as xs:string? ) as xs:integer { count(functx:lines($arg)) } ;
                    (:~ : Split a string into separate lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_lines.html : @param $arg the string to split :)
         declare function functx:lines ( $arg as xs:string? ) as xs:string* { tokenize($arg, '(\\r\\n?|\\n\\r?)') } ;
         let $lines := 'a 
            value 
            on 
            many 
            lines' return (functx:line-count($lines))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-line-count-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The number of lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_line-count.html : @param $arg the string to test :)
         declare function functx:line-count ( $arg as xs:string? ) as xs:integer { count(functx:lines($arg)) } ;
                    (:~ : Split a string into separate lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_lines.html : @param $arg the string to split :)
         declare function functx:lines ( $arg as xs:string? ) as xs:string* { tokenize($arg, '(\\r\\n?|\\n\\r?)') } ;
         let $lines := 'a 
                    value 
                    on 
                    many 
                    lines' 
         return (functx:line-count('a value'), functx:line-count($lines))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-lines-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Split a string into separate lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_lines.html : @param $arg the string to split :)
         declare function functx:lines ( $arg as xs:string? ) as xs:string* { tokenize($arg, '(\\r\\n?|\\n\\r?)') } ;
                    let $in-xml := <in-xml>a value on many lines</in-xml> return (functx:lines('a value'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a value") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-lines-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Split a string into separate lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_lines.html : @param $arg the string to split :)
         declare function functx:lines ( $arg as xs:string? ) as xs:string* { tokenize($arg, '(\\r\\n?|\\n\\r?)') } ;
                    let $in-xml := <in-xml>a value on many lines</in-xml> return (functx:lines($in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a value on many lines") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-lines-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Split a string into separate lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_lines.html : @param $arg the string to split :)
         declare function functx:lines ( $arg as xs:string? ) as xs:string* { tokenize($arg, '(\\r\\n?|\\n\\r?)') } ;
                    let $in-xml := <in-xml>a value on many lines</in-xml> return (functx:lines('a value'), functx:lines($in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a value a value on many lines") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-depth-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The maximum depth of elements in an XML tree : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-depth.html : @param $root the root to start from :)
         declare function functx:max-depth ( $root as node()? ) as xs:integer? { if ($root/*) then max($root/*/functx:max-depth(.)) + 1 else 1 } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:max-depth($in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-depth-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The maximum depth of elements in an XML tree : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-depth.html : @param $root the root to start from :)
         declare function functx:max-depth ( $root as node()? ) as xs:integer? { if ($root/*) then max($root/*/functx:max-depth(.)) + 1 else 1 } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:max-depth($in-xml/author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-depth-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The maximum depth of elements in an XML tree : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-depth.html : @param $root the root to start from :)
         declare function functx:max-depth ( $root as node()? ) as xs:integer? { if ($root/*) then max($root/*/functx:max-depth(.)) + 1 else 1 } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:max-depth($in-xml), functx:max-depth($in-xml/author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-determine-type-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The maximum value in a sequence, figuring out its type (numeric or string) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-determine-type.html : @param $seq the sequence of values to test :)
         declare function functx:max-determine-type ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType? { if (every $value in $seq satisfies ($value castable as xs:double)) then max(for $value in $seq return xs:double($value)) else max(for $value in $seq return xs:string($value)) } ;
                    let $in-xml := <values> <nums> <num>12</num> <num>23</num> <num>115</num> <num>12.5</num> </nums> <strings> <string>def</string> <string>abc</string> </strings> </values> return (functx:max-determine-type($in-xml//num))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"115") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-determine-type-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The maximum value in a sequence, figuring out its type (numeric or string) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-determine-type.html : @param $seq the sequence of values to test :)
         declare function functx:max-determine-type ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType? { if (every $value in $seq satisfies ($value castable as xs:double)) then max(for $value in $seq return xs:double($value)) else max(for $value in $seq return xs:string($value)) } ;
                    let $in-xml := <values> <nums> <num>12</num> <num>23</num> <num>115</num> <num>12.5</num> </nums> <strings> <string>def</string> <string>abc</string> </strings> </values> return (functx:max-determine-type($in-xml//string))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-determine-type-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The maximum value in a sequence, figuring out its type (numeric or string) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-determine-type.html : @param $seq the sequence of values to test :)
         declare function functx:max-determine-type ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType? { if (every $value in $seq satisfies ($value castable as xs:double)) then max(for $value in $seq return xs:double($value)) else max(for $value in $seq return xs:string($value)) } ;
                    let $in-xml := <values> <nums> <num>12</num> <num>23</num> <num>115</num> <num>12.5</num> </nums> <strings> <string>def</string> <string>abc</string> </strings> </values> return (functx:max-determine-type( $in-xml//(num|string)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-determine-type-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The maximum value in a sequence, figuring out its type (numeric or string) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-determine-type.html : @param $seq the sequence of values to test :)
         declare function functx:max-determine-type ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType? { if (every $value in $seq satisfies ($value castable as xs:double)) then max(for $value in $seq return xs:double($value)) else max(for $value in $seq return xs:string($value)) } ;
                    let $in-xml := <values> <nums> <num>12</num> <num>23</num> <num>115</num> <num>12.5</num> </nums> <strings> <string>def</string> <string>abc</string> </strings> </values> return (functx:max-determine-type($in-xml//num), functx:max-determine-type($in-xml//string), functx:max-determine-type( $in-xml//(num|string)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "115 def def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-line-length-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Split a string into separate lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_lines.html : @param $arg the string to split :)
         declare function functx:lines ( $arg as xs:string? ) as xs:string* { tokenize($arg, '(\\r\\n?|\\n\\r?)') } ;
                    (:~ : The maximum line length : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-line-length.html : @param $arg the string to test :)
         declare function functx:max-line-length ( $arg as xs:string? ) as xs:integer? { max( for $line in functx:lines($arg) return string-length($line)) } ;
                    let $lines := 'a value on several lines' return (functx:max-line-length('a value'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"7") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-line-length-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Split a string into separate lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_lines.html : @param $arg the string to split :)
         declare function functx:lines ( $arg as xs:string? ) as xs:string* { tokenize($arg, '(\\r\\n?|\\n\\r?)') } ;
                    (:~ : The maximum line length : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-line-length.html : @param $arg the string to test :)
         declare function functx:max-line-length ( $arg as xs:string? ) as xs:integer? { max( for $line in functx:lines($arg) return string-length($line)) } ;
 let $lines := 'a 
     value 
     on 
     several
     lines' 
         return (functx:max-line-length($lines))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-line-length-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Split a string into separate lines : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_lines.html : @param $arg the string to split :)
         declare function functx:lines ( $arg as xs:string? ) as xs:string* { tokenize($arg, '(\\r\\n?|\\n\\r?)') } ;
                    (:~ : The maximum line length : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-line-length.html : @param $arg the string to test :)
         declare function functx:max-line-length ( $arg as xs:string? ) as xs:integer? { max( for $line in functx:lines($arg) return string-length($line)) } ;
let $lines := 'a 
     value 
     on 
     several
     lines' 
         return (functx:max-line-length('a value'), functx:max-line-length($lines))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "7 12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-node-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node whose typed value is the maximum : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-node.html : @param $nodes the sequence of nodes to test :)
         declare function functx:max-node ( $nodes as node()* ) as node()* { $nodes[. = max($nodes)] } ;
                    let $in-xml := <values> <int>1</int> <int>23</int> <int>115</int> </values> return (functx:max-node($in-xml//int))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<int>115</int>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-string-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The maximum of a sequence of values, treating them like strings : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-string.html : @param $strings the sequence of values :)
         declare function functx:max-string ( $strings as xs:anyAtomicType* ) as xs:string? { max(for $string in $strings return string($string)) } ;
                    let $in-xml := <in-xml> <x>a</x> <y>c</y> <z>b</z> </in-xml> return (functx:max-string( $in-xml/* ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-string-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The maximum of a sequence of values, treating them like strings : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-string.html : @param $strings the sequence of values :)
         declare function functx:max-string ( $strings as xs:anyAtomicType* ) as xs:string? { max(for $string in $strings return string($string)) } ;
                    let $in-xml := <in-xml> <x>a</x> <y>c</y> <z>b</z> </in-xml> return (functx:max-string( (100,25,3) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-max-string-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The maximum of a sequence of values, treating them like strings : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_max-string.html : @param $strings the sequence of values :)
         declare function functx:max-string ( $strings as xs:anyAtomicType* ) as xs:string? { max(for $string in $strings return string($string)) } ;
                    let $in-xml := <in-xml> <x>a</x> <y>c</y> <z>b</z> </in-xml> return (functx:max-string( $in-xml/* ), functx:max-string( (100,25,3) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "c 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-min-determine-type-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The minimum value in a sequence, figuring out its type (numeric or string) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_min-determine-type.html : @param $seq the sequence of values to test :)
         declare function functx:min-determine-type ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType? { if (every $value in $seq satisfies ($value castable as xs:double)) then min(for $value in $seq return xs:double($value)) else min(for $value in $seq return xs:string($value)) } ;
                    let $in-xml := <values> <nums> <num>12</num> <num>23</num> <num>115</num> <num>12.5</num> </nums> <strings> <str>def</str> <str>abc</str> </strings> </values> return (functx:min-determine-type($in-xml//num))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-min-determine-type-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The minimum value in a sequence, figuring out its type (numeric or string) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_min-determine-type.html : @param $seq the sequence of values to test :)
         declare function functx:min-determine-type ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType? { if (every $value in $seq satisfies ($value castable as xs:double)) then min(for $value in $seq return xs:double($value)) else min(for $value in $seq return xs:string($value)) } ;
                    let $in-xml := <values> <nums> <num>12</num> <num>23</num> <num>115</num> <num>12.5</num> </nums> <strings> <str>def</str> <str>abc</str> </strings> </values> return (functx:min-determine-type($in-xml//str))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-min-determine-type-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The minimum value in a sequence, figuring out its type (numeric or string) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_min-determine-type.html : @param $seq the sequence of values to test :)
         declare function functx:min-determine-type ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType? { if (every $value in $seq satisfies ($value castable as xs:double)) then min(for $value in $seq return xs:double($value)) else min(for $value in $seq return xs:string($value)) } ;
                    let $in-xml := <values> <nums> <num>12</num> <num>23</num> <num>115</num> <num>12.5</num> </nums> <strings> <str>def</str> <str>abc</str> </strings> </values> return (functx:min-determine-type($in-xml//(num|str)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "115") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-min-determine-type-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The minimum value in a sequence, figuring out its type (numeric or string) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_min-determine-type.html : @param $seq the sequence of values to test :)
         declare function functx:min-determine-type ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType? { if (every $value in $seq satisfies ($value castable as xs:double)) then min(for $value in $seq return xs:double($value)) else min(for $value in $seq return xs:string($value)) } ;
                    let $in-xml := <values> <nums> <num>12</num> <num>23</num> <num>115</num> <num>12.5</num> </nums> <strings> <str>def</str> <str>abc</str> </strings> </values> return (functx:min-determine-type($in-xml//num), functx:min-determine-type($in-xml//str), functx:min-determine-type($in-xml//(num|str)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12 abc 115") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-min-node-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node whose typed value is the minimum : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_min-node.html : @param $nodes the sequence of nodes to test :)
         declare function functx:min-node ( $nodes as node()* ) as node()* { $nodes[. = min($nodes)] } ;
                    let $in-xml := <values> <int>1</int> <int>23</int> <int>115</int> </values> return (functx:min-node($in-xml//int))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<int>1</int>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-min-non-empty-string-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The minimum of a sequence of strings, ignoring \"empty\" values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_min-non-empty-string.html : @param $strings the sequence of strings to search :)
         declare function functx:min-non-empty-string ( $strings as xs:string* ) as xs:string? { min($strings[. != '']) } ;
                    let $in-xml := <authors> <author> <fName/> <lName>Smith</lName> </author> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:min-non-empty-string( $in-xml//fName ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "John") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-min-string-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The minimum of a sequence of values, treating them like strings : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_min-string.html : @param $strings the sequence of strings :)
         declare function functx:min-string ( $strings as xs:anyAtomicType* ) as xs:string? { min(for $string in $strings return string($string)) } ;
                    let $in-xml := <in-xml> <x>a</x> <y>c</y> <z>b</z> </in-xml> return (functx:min-string( $in-xml/* ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-min-string-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The minimum of a sequence of values, treating them like strings : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_min-string.html : @param $strings the sequence of strings :)
         declare function functx:min-string ( $strings as xs:anyAtomicType* ) as xs:string? { min(for $string in $strings return string($string)) } ;
                    let $in-xml := <in-xml> <x>a</x> <y>c</y> <z>b</z> </in-xml> return (functx:min-string( (100,25,3) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-min-string-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The minimum of a sequence of values, treating them like strings : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_min-string.html : @param $strings the sequence of strings :)
         declare function functx:min-string ( $strings as xs:anyAtomicType* ) as xs:string? { min(for $string in $strings return string($string)) } ;
                    let $in-xml := <in-xml> <x>a</x> <y>c</y> <z>b</z> </in-xml> return (functx:min-string( $in-xml/* ), functx:min-string( (100,25,3) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a 100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-mmddyyyy-to-date-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format MMDDYYYY (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_mmddyyyy-to-date.html : @param $dateString the MMDDYYYY string :)
         declare function functx:mmddyyyy-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$', '$3-$1-$2')) } ;
                    (functx:mmddyyyy-to-date('12-15-2004'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-mmddyyyy-to-date-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format MMDDYYYY (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_mmddyyyy-to-date.html : @param $dateString the MMDDYYYY string :)
         declare function functx:mmddyyyy-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$', '$3-$1-$2')) } ;
                    (functx:mmddyyyy-to-date('12152004'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-mmddyyyy-to-date-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format MMDDYYYY (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_mmddyyyy-to-date.html : @param $dateString the MMDDYYYY string :)
         declare function functx:mmddyyyy-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$', '$3-$1-$2')) } ;
                    (functx:mmddyyyy-to-date('12/15/2004'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-mmddyyyy-to-date-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format MMDDYYYY (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_mmddyyyy-to-date.html : @param $dateString the MMDDYYYY string :)
         declare function functx:mmddyyyy-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{2})\\D*(\\d{2})\\D*(\\d{4})\\D*$', '$3-$1-$2')) } ;
                    (functx:mmddyyyy-to-date('12-15-2004'), functx:mmddyyyy-to-date('12152004'), functx:mmddyyyy-to-date('12/15/2004'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15 2004-12-15 2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-month-abbrev-en-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The month of a date as an abbreviated word (Jan, Feb, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_month-abbrev-en.html : @param $date the date :)
         declare function functx:month-abbrev-en ( $date as xs:anyAtomicType? ) as xs:string? { ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec') [month-from-date(xs:date($date))] } ;
                    (functx:month-abbrev-en(xs:date('2004-01-23')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jan") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-month-abbrev-en-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The month of a date as an abbreviated word (Jan, Feb, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_month-abbrev-en.html : @param $date the date :)
         declare function functx:month-abbrev-en ( $date as xs:anyAtomicType? ) as xs:string? { ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec') [month-from-date(xs:date($date))] } ;
                    (functx:month-abbrev-en( xs:dateTime('2004-01-23T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jan") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-month-abbrev-en-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The month of a date as an abbreviated word (Jan, Feb, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_month-abbrev-en.html : @param $date the date :)
         declare function functx:month-abbrev-en ( $date as xs:anyAtomicType? ) as xs:string? { ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec') [month-from-date(xs:date($date))] } ;
                    (functx:month-abbrev-en('2004-01-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jan") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-month-abbrev-en-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The month of a date as an abbreviated word (Jan, Feb, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_month-abbrev-en.html : @param $date the date :)
         declare function functx:month-abbrev-en ( $date as xs:anyAtomicType? ) as xs:string? { ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec') [month-from-date(xs:date($date))] } ;
                    (functx:month-abbrev-en(xs:date('2004-01-23')), functx:month-abbrev-en( xs:dateTime('2004-01-23T12:00:13')), functx:month-abbrev-en('2004-01-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jan Jan Jan") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-month-name-en-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The month of a date as a word (January, February, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_month-name-en.html : @param $date the date :)
         declare function functx:month-name-en ( $date as xs:anyAtomicType? ) as xs:string? { ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December') [month-from-date(xs:date($date))] } ;
                    (functx:month-name-en(xs:date('2004-01-23')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "January") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-month-name-en-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The month of a date as a word (January, February, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_month-name-en.html : @param $date the date :)
         declare function functx:month-name-en ( $date as xs:anyAtomicType? ) as xs:string? { ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December') [month-from-date(xs:date($date))] } ;
                    (functx:month-name-en( xs:dateTime('2004-01-23T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "January") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-month-name-en-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The month of a date as a word (January, February, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_month-name-en.html : @param $date the date :)
         declare function functx:month-name-en ( $date as xs:anyAtomicType? ) as xs:string? { ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December') [month-from-date(xs:date($date))] } ;
                    (functx:month-name-en('2004-01-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "January") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-month-name-en-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The month of a date as a word (January, February, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_month-name-en.html : @param $date the date :)
         declare function functx:month-name-en ( $date as xs:anyAtomicType? ) as xs:string? { ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December') [month-from-date(xs:date($date))] } ;
                    (functx:month-name-en(xs:date('2004-01-23')), functx:month-name-en( xs:dateTime('2004-01-23T12:00:13')), functx:month-name-en('2004-01-23'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "January January January") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-name-test-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml := <pre:a xmlns:pre=\"http://ns.example.com/ns1\">abc</pre:a> return (functx:name-test(name($in-xml),('*')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-name-test-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml := <pre:a xmlns:pre=\"http://ns.example.com/ns1\">abc</pre:a> return (functx:name-test(name($in-xml),('pre:*')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-name-test-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml := <pre:a xmlns:pre=\"http://ns.example.com/ns1\">abc</pre:a> return (functx:name-test(name($in-xml),('*:a')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-name-test-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml := <pre:a xmlns:pre=\"http://ns.example.com/ns1\">abc</pre:a> return (functx:name-test( name($in-xml),('pre:a','pre:b')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-name-test-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml := <pre:a xmlns:pre=\"http://ns.example.com/ns1\">abc</pre:a> return (functx:name-test( name($in-xml),('a','b','c')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-name-test-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml := <pre:a xmlns:pre=\"http://ns/example.com/ns1\">abc</pre:a> return (functx:name-test(name($in-xml),('*')), functx:name-test(name($in-xml),('pre:*')), functx:name-test(name($in-xml),('*:a')), functx:name-test( name($in-xml),('pre:a','pre:b')), functx:name-test( name($in-xml),('a','b','c')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true true true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-namespaces-in-use-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : A list of namespaces used in element/attribute names in an XML fragment : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_namespaces-in-use.html : @param $root the root node to start from :)
         declare function functx:namespaces-in-use ( $root as node()? ) as xs:anyURI* { distinct-values( $root/descendant-or-self::*/(.|@*)/namespace-uri(.)) } ;
                    let $in-xml := <authors xmlns=\"http://ns.example.com/abc\" xmlns:d=\"http://ns.example.com/def\"> <author xmlns=\"http://ns.example.com/ghi\"> <fName xmlns:x=\"http://ns.example.com/xyz\" x:attr=\"123\">Kate</fName> <lName>Jones</lName> </author> </authors> return (functx:namespaces-in-use($in-xml))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://ns.example.com/abc http://ns.example.com/ghi http://ns.example.com/xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-next-day-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The next day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_next-day.html : @param $date the date :)
         declare function functx:next-day ( $date as xs:anyAtomicType? ) as xs:date? { xs:date($date) + xs:dayTimeDuration('P1D') } ;
                    (functx:next-day(xs:date('2004-01-23')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-24") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-next-day-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The next day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_next-day.html : @param $date the date :)
         declare function functx:next-day ( $date as xs:anyAtomicType? ) as xs:date? { xs:date($date) + xs:dayTimeDuration('P1D') } ;
                    (functx:next-day( xs:dateTime('2005-12-31T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2006-01-01") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-next-day-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The next day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_next-day.html : @param $date the date :)
         declare function functx:next-day ( $date as xs:anyAtomicType? ) as xs:date? { xs:date($date) + xs:dayTimeDuration('P1D') } ;
                    (functx:next-day(xs:date('2004-01-23')), functx:next-day( xs:dateTime('2005-12-31T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-24 2006-01-01") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-node-kind-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    let $in-xml := <in-xml> <!-- this is in-xml --> <?test see?> <a z=\"2\">xyz</a> </in-xml> return (functx:node-kind($in-xml/a))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "element") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-node-kind-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    let $in-xml := <in-xml> <!-- this is in-xml --> <?test see?> <a z=\"2\">xyz</a> </in-xml> return (functx:node-kind($in-xml/a/@z))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "attribute") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-node-kind-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    let $in-xml := <in-xml> <!-- this is in-xml --> <?test see?> <a z=\"2\">xyz</a> </in-xml> return (functx:node-kind($in-xml/comment()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "comment") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-node-kind-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    let $in-xml := <in-xml> <!-- this is in-xml --> <?test see?> <a z=\"2\">xyz</a> </in-xml> return (functx:node-kind( $in-xml/processing-instruction()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "processing-instruction") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-node-kind-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    let $in-xml := <in-xml> <!-- this is in-xml --> <?test see?> <a z=\"2\">xyz</a> </in-xml> return (functx:node-kind($in-xml/a/text()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "text") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-node-kind-6'(_Config) ->
   Qry = "
         declare namespace functx = \"http://www.example.com/\";
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
         let $in-xml := <in-xml> <!-- this is in-xml --> <?test see?> <a z=\"2\">xyz</a> </in-xml> 
         return (functx:node-kind(/))
      ",
   Env = xqerl_test:handle_environment(environment('functx_book')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "document-node") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-node-kind-all'(_Config) ->
   Qry = "
      	declare namespace functx = \"http://www.example.com/\";                    
                    (:~ : The XML node kind (element, attribute, text, etc.) : 
                        : @author Priscilla Walmsley, Datypic : @version 1.0
                        : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html
                        : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { 
         	for $node in $nodes return 
         		if ($node instance of element()) then 'element' 
         		else if ($node instance of attribute()) then 'attribute' 
         		else if ($node instance of text()) then 'text' 
         		else if ($node instance of document-node()) then 'document-node' 
         		else if ($node instance of comment()) then 'comment' 
         		else if ($node instance of processing-instruction()) then 'processing-instruction' 
         		else 'unknown' } ;
         let $in-xml := <in-xml> <!-- this is in-xml --> <?test see?> <a z=\"2\">xyz</a> </in-xml> 
         return (functx:node-kind($in-xml/a), 
                    functx:node-kind($in-xml/a/@z), 
                    functx:node-kind($in-xml/comment()), 
                    functx:node-kind( $in-xml/processing-instruction()), 
                    functx:node-kind($in-xml/a/text()), 
                    functx:node-kind(/))",
   Env = xqerl_test:handle_environment(environment('functx_book')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "element attribute comment processing-instruction text document-node") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-non-distinct-values-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns any values that appear more than once in a sequence : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_non-distinct-values.html : @param $seq the sequence of values :)
         declare function functx:non-distinct-values ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType* { for $val in distinct-values($seq) return $val[count($seq[. = $val]) >
                    1] } ;
                    (functx:non-distinct-values( (1,2,1,3)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-non-distinct-values-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns any values that appear more than once in a sequence : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_non-distinct-values.html : @param $seq the sequence of values :)
         declare function functx:non-distinct-values ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType* { for $val in distinct-values($seq) return $val[count($seq[. = $val]) >
                    1] } ;
                    (functx:non-distinct-values( (1,2,1,3,2.0)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-non-distinct-values-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns any values that appear more than once in a sequence : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_non-distinct-values.html : @param $seq the sequence of values :)
         declare function functx:non-distinct-values ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType* { for $val in distinct-values($seq) return $val[count($seq[. = $val]) >
                    1] } ;
                    (functx:non-distinct-values( (1,2,3) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-non-distinct-values-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns any values that appear more than once in a sequence : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_non-distinct-values.html : @param $seq the sequence of values :)
         declare function functx:non-distinct-values ( $seq as xs:anyAtomicType* ) as xs:anyAtomicType* { for $val in distinct-values($seq) return $val[count($seq[. = $val]) >
                    1] } ;
                    (functx:non-distinct-values( (1,2,1,3)), functx:non-distinct-values( (1,2,1,3,2.0)), functx:non-distinct-values( (1,2,3) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-number-of-matches-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The number of regions that match a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_number-of-matches.html : @param $arg the string to test : @param $pattern the regular expression :)
         declare function functx:number-of-matches ( $arg as xs:string? , $pattern as xs:string ) as xs:integer { count(tokenize($arg,$pattern)) - 1 } ;
                    (functx:number-of-matches('abcabc','ab'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-number-of-matches-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The number of regions that match a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_number-of-matches.html : @param $arg the string to test : @param $pattern the regular expression :)
         declare function functx:number-of-matches ( $arg as xs:string? , $pattern as xs:string ) as xs:integer { count(tokenize($arg,$pattern)) - 1 } ;
                    (functx:number-of-matches('12345','\\d'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-number-of-matches-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The number of regions that match a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_number-of-matches.html : @param $arg the string to test : @param $pattern the regular expression :)
         declare function functx:number-of-matches ( $arg as xs:string? , $pattern as xs:string ) as xs:integer { count(tokenize($arg,$pattern)) - 1 } ;
                    (functx:number-of-matches('aaaaaa','aaa'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-number-of-matches-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The number of regions that match a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_number-of-matches.html : @param $arg the string to test : @param $pattern the regular expression :)
         declare function functx:number-of-matches ( $arg as xs:string? , $pattern as xs:string ) as xs:integer { count(tokenize($arg,$pattern)) - 1 } ;
                    (functx:number-of-matches('abcabc','ab'), functx:number-of-matches('12345','\\d'), functx:number-of-matches('aaaaaa','aaa'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 5 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-ordinal-number-en-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Reformats a number as an ordinal number, e.g. 1st, 2nd, 3rd. : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_ordinal-number-en.html : @param $num the number :)
         declare function functx:ordinal-number-en ( $num as xs:integer? ) as xs:string { concat(xs:string($num), if (matches(xs:string($num),'[04-9]$|1[1-3]$')) then 'th' else if (ends-with(xs:string($num),'1')) then 'st' else if (ends-with(xs:string($num),'2')) then 'nd' else if (ends-with(xs:string($num),'3')) then 'rd' else '') } ;
                    (functx:ordinal-number-en(1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1st") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-ordinal-number-en-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Reformats a number as an ordinal number, e.g. 1st, 2nd, 3rd. : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_ordinal-number-en.html : @param $num the number :)
         declare function functx:ordinal-number-en ( $num as xs:integer? ) as xs:string { concat(xs:string($num), if (matches(xs:string($num),'[04-9]$|1[1-3]$')) then 'th' else if (ends-with(xs:string($num),'1')) then 'st' else if (ends-with(xs:string($num),'2')) then 'nd' else if (ends-with(xs:string($num),'3')) then 'rd' else '') } ;
                    (functx:ordinal-number-en(12))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12th") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-ordinal-number-en-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Reformats a number as an ordinal number, e.g. 1st, 2nd, 3rd. : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_ordinal-number-en.html : @param $num the number :)
         declare function functx:ordinal-number-en ( $num as xs:integer? ) as xs:string { concat(xs:string($num), if (matches(xs:string($num),'[04-9]$|1[1-3]$')) then 'th' else if (ends-with(xs:string($num),'1')) then 'st' else if (ends-with(xs:string($num),'2')) then 'nd' else if (ends-with(xs:string($num),'3')) then 'rd' else '') } ;
                    (functx:ordinal-number-en(1), functx:ordinal-number-en(12))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1st 12th") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-pad-integer-to-length-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:pad-integer-to-length(12, 6))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "000012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-pad-integer-to-length-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:pad-integer-to-length(1, 6))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "000001") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-pad-integer-to-length-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:pad-integer-to-length(12, 2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-pad-integer-to-length-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:pad-integer-to-length(12, 6), functx:pad-integer-to-length(1, 6), functx:pad-integer-to-length(12, 2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "000012 000001 12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-pad-string-to-length-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Pads a string to a desired length : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-string-to-length.html : @param $stringToPad the string to pad : @param $padChar the character(s) to use as padding : @param $length the desired length :)
         declare function functx:pad-string-to-length ( $stringToPad as xs:string? , $padChar as xs:string , $length as xs:integer ) as xs:string { substring( string-join ( ($stringToPad, for $i in (1 to $length) return $padChar) ,'') ,1,$length) } ;
                    (functx:pad-string-to-length('abc', '*', 6))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc***") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-pad-string-to-length-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Pads a string to a desired length : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-string-to-length.html : @param $stringToPad the string to pad : @param $padChar the character(s) to use as padding : @param $length the desired length :)
         declare function functx:pad-string-to-length ( $stringToPad as xs:string? , $padChar as xs:string , $length as xs:integer ) as xs:string { substring( string-join ( ($stringToPad, for $i in (1 to $length) return $padChar) ,'') ,1,$length) } ;
                    (functx:pad-string-to-length('abcdef', '*', 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-pad-string-to-length-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Pads a string to a desired length : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-string-to-length.html : @param $stringToPad the string to pad : @param $padChar the character(s) to use as padding : @param $length the desired length :)
         declare function functx:pad-string-to-length ( $stringToPad as xs:string? , $padChar as xs:string , $length as xs:integer ) as xs:string { substring( string-join ( ($stringToPad, for $i in (1 to $length) return $padChar) ,'') ,1,$length) } ;
                    (functx:pad-string-to-length('', '*', 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "****") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-pad-string-to-length-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Pads a string to a desired length : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-string-to-length.html : @param $stringToPad the string to pad : @param $padChar the character(s) to use as padding : @param $length the desired length :)
         declare function functx:pad-string-to-length ( $stringToPad as xs:string? , $padChar as xs:string , $length as xs:integer ) as xs:string { substring( string-join ( ($stringToPad, for $i in (1 to $length) return $padChar) ,'') ,1,$length) } ;
                    (functx:pad-string-to-length('abc', '*', 6), functx:pad-string-to-length('abcdef', '*', 4), functx:pad-string-to-length('', '*', 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc*** abcd ****") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-path-to-node-with-pos-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position of a node in a sequence, based on node identity : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-node.html : @param $nodes the node sequence : @param $nodeToFind the node to find in the sequence :)
         declare function functx:index-of-node ( $nodes as node()* , $nodeToFind as node() ) as xs:integer* { for $seq in (1 to count($nodes)) return $seq[$nodes[$seq] is $nodeToFind] } ;
                    (:~ : A unique path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node-with-pos.html : @param $node the node sequence :)
         declare function functx:path-to-node-with-pos ( $node as node()? ) as xs:string { string-join( for $ancestor in $node/ancestor-or-self::* let $sibsOfSameName := $ancestor/../*[name() = name($ancestor)] return concat(name($ancestor), if (count($sibsOfSameName) <= 1) then '' else concat( '[',functx:index-of-node($sibsOfSameName,$ancestor),']')) , '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:path-to-node-with-pos( $in-xml//lName[. = 'Doe']))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "authors/author[2]/lName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-path-to-node-with-pos-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position of a node in a sequence, based on node identity : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-node.html : @param $nodes the node sequence : @param $nodeToFind the node to find in the sequence :)
         declare function functx:index-of-node ( $nodes as node()* , $nodeToFind as node() ) as xs:integer* { for $seq in (1 to count($nodes)) return $seq[$nodes[$seq] is $nodeToFind] } ;
                    (:~ : A unique path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node-with-pos.html : @param $node the node sequence :)
         declare function functx:path-to-node-with-pos ( $node as node()? ) as xs:string { string-join( for $ancestor in $node/ancestor-or-self::* let $sibsOfSameName := $ancestor/../*[name() = name($ancestor)] return concat(name($ancestor), if (count($sibsOfSameName) <= 1) then '' else concat( '[',functx:index-of-node($sibsOfSameName,$ancestor),']')) , '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:path-to-node-with-pos($in-xml/*[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "authors/author[1]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-path-to-node-with-pos-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The position of a node in a sequence, based on node identity : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_index-of-node.html : @param $nodes the node sequence : @param $nodeToFind the node to find in the sequence :)
         declare function functx:index-of-node ( $nodes as node()* , $nodeToFind as node() ) as xs:integer* { for $seq in (1 to count($nodes)) return $seq[$nodes[$seq] is $nodeToFind] } ;
                    (:~ : A unique path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node-with-pos.html : @param $node the node sequence :)
         declare function functx:path-to-node-with-pos ( $node as node()? ) as xs:string { string-join( for $ancestor in $node/ancestor-or-self::* let $sibsOfSameName := $ancestor/../*[name() = name($ancestor)] return concat(name($ancestor), if (count($sibsOfSameName) <= 1) then '' else concat( '[',functx:index-of-node($sibsOfSameName,$ancestor),']')) , '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:path-to-node-with-pos( $in-xml//lName[. = 'Doe']), functx:path-to-node-with-pos($in-xml/*[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "authors/author[2]/lName authors/author[1]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-path-to-node-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : A path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node.html : @param $nodes the node sequence :)
         declare function functx:path-to-node ( $nodes as node()* ) as xs:string* { $nodes/string-join(ancestor-or-self::*/name(.), '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:path-to-node($in-xml//lName[. = 'Doe']))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "authors/author/lName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-path-to-node-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : A path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node.html : @param $nodes the node sequence :)
         declare function functx:path-to-node ( $nodes as node()* ) as xs:string* { $nodes/string-join(ancestor-or-self::*/name(.), '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:path-to-node($in-xml/*[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "authors/author") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-path-to-node-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : A path to an XML node (or sequence of nodes) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_path-to-node.html : @param $nodes the node sequence :)
         declare function functx:path-to-node ( $nodes as node()* ) as xs:string* { $nodes/string-join(ancestor-or-self::*/name(.), '/') } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:path-to-node($in-xml//lName[. = 'Doe']), functx:path-to-node($in-xml/*[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "authors/author/lName authors/author") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-precedes-not-ancestor-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node precedes another without being its ancestor : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_precedes-not-ancestor.html : @param $a the first node : @param $b the second node :)
         declare function functx:precedes-not-ancestor ( $a as node()? , $b as node()? ) as xs:boolean { $a << $b and empty($a intersect $b/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:precedes-not-ancestor( $in-xml//author[1],$in-xml//author[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-precedes-not-ancestor-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node precedes another without being its ancestor : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_precedes-not-ancestor.html : @param $a the first node : @param $b the second node :)
         declare function functx:precedes-not-ancestor ( $a as node()? , $b as node()? ) as xs:boolean { $a << $b and empty($a intersect $b/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:precedes-not-ancestor( $in-xml//author[1], $in-xml//author[1]/fName))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-precedes-not-ancestor-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node precedes another without being its ancestor : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_precedes-not-ancestor.html : @param $a the first node : @param $b the second node :)
         declare function functx:precedes-not-ancestor ( $a as node()? , $b as node()? ) as xs:boolean { $a << $b and empty($a intersect $b/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:precedes-not-ancestor( $in-xml//author[2],$in-xml//author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-precedes-not-ancestor-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether an XML node precedes another without being its ancestor : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_precedes-not-ancestor.html : @param $a the first node : @param $b the second node :)
         declare function functx:precedes-not-ancestor ( $a as node()? , $b as node()? ) as xs:boolean { $a << $b and empty($a intersect $b/ancestor::node()) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:precedes-not-ancestor( $in-xml//author[1],$in-xml//author[2]), functx:precedes-not-ancestor( $in-xml//author[1], $in-xml//author[1]/fName), functx:precedes-not-ancestor( $in-xml//author[2],$in-xml//author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-previous-day-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The previous day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_previous-day.html : @param $date the date :)
         declare function functx:previous-day ( $date as xs:anyAtomicType? ) as xs:date? { xs:date($date) - xs:dayTimeDuration('P1D') } ;
                    (functx:previous-day(xs:date('2004-01-23')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-22") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-previous-day-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The previous day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_previous-day.html : @param $date the date :)
         declare function functx:previous-day ( $date as xs:anyAtomicType? ) as xs:date? { xs:date($date) - xs:dayTimeDuration('P1D') } ;
                    (functx:previous-day( xs:dateTime('2005-01-01T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-previous-day-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The previous day : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_previous-day.html : @param $date the date :)
         declare function functx:previous-day ( $date as xs:anyAtomicType? ) as xs:date? { xs:date($date) - xs:dayTimeDuration('P1D') } ;
                    (functx:previous-day(xs:date('2004-01-23')), functx:previous-day( xs:dateTime('2005-01-01T12:00:13')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-01-22 2004-12-31") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-attributes-deep-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes attributes from an XML fragment, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-attributes-deep.html : @param $nodes the root(s) to start from : @param $names the names of the attributes to remove, or * for all attributes :)
         declare function functx:remove-attributes-deep ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then element { node-name($node)} { $node/@*[not(functx:name-test(name(),$names))], functx:remove-attributes-deep($node/node(), $names)} else if ($node instance of document-node()) then functx:remove-attributes-deep($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <a attr1=\"123\" attr2=\"456\"> <b attr1=\"xzy\">abc</b> </a> return let $in-xml-2 := <a xmlns:a=\"http://a\" a:attr1=\"123\" attr1=\"456\"> <b a:attr1=\"ghi\" attr1=\"xzy\">abc</b> </a> return (functx:remove-attributes-deep( $in-xml-1, ('attr1','attr2')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a><b>abc</b></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-attributes-deep-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes attributes from an XML fragment, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-attributes-deep.html : @param $nodes the root(s) to start from : @param $names the names of the attributes to remove, or * for all attributes :)
         declare function functx:remove-attributes-deep ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then element { node-name($node)} { $node/@*[not(functx:name-test(name(),$names))], functx:remove-attributes-deep($node/node(), $names)} else if ($node instance of document-node()) then functx:remove-attributes-deep($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <a attr1=\"123\" attr2=\"456\"> <b attr1=\"xzy\">abc</b> </a> return let $in-xml-2 := <a xmlns:a=\"http://a\" a:attr1=\"123\" attr1=\"456\"> <b a:attr1=\"ghi\" attr1=\"xzy\">abc</b> </a> return (functx:remove-attributes-deep( $in-xml-1, ('attr1','attr3')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a attr2=\"456\"><b>abc</b></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-attributes-deep-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes attributes from an XML fragment, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-attributes-deep.html : @param $nodes the root(s) to start from : @param $names the names of the attributes to remove, or * for all attributes :)
         declare function functx:remove-attributes-deep ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then element { node-name($node)} { $node/@*[not(functx:name-test(name(),$names))], functx:remove-attributes-deep($node/node(), $names)} else if ($node instance of document-node()) then functx:remove-attributes-deep($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <a attr1=\"123\" attr2=\"456\"> <b attr1=\"xzy\">abc</b> </a> return let $in-xml-2 := <a xmlns:a=\"http://a\" a:attr1=\"123\" attr1=\"456\"> <b a:attr1=\"ghi\" attr1=\"xzy\">abc</b> </a> return (functx:remove-attributes-deep( $in-xml-2, 'a:attr1'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a attr1=\"456\"><b attr1=\"xzy\">abc</b></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-attributes-deep-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes attributes from an XML fragment, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-attributes-deep.html : @param $nodes the root(s) to start from : @param $names the names of the attributes to remove, or * for all attributes :)
         declare function functx:remove-attributes-deep ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then element { node-name($node)} { $node/@*[not(functx:name-test(name(),$names))], functx:remove-attributes-deep($node/node(), $names)} else if ($node instance of document-node()) then functx:remove-attributes-deep($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <a attr1=\"123\" attr2=\"456\"> <b attr1=\"xzy\">abc</b> </a> return let $in-xml-2 := <a xmlns:a=\"http://a\" a:attr1=\"123\" attr1=\"456\"> <b a:attr1=\"ghi\" attr1=\"xzy\">abc</b> </a> return (functx:remove-attributes-deep( $in-xml-1, ('attr1','attr2')), functx:remove-attributes-deep( $in-xml-1, ('attr1','attr3')), functx:remove-attributes-deep( $in-xml-2, 'a:attr1'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a><b>abc</b></a><a attr2=\"456\"><b>abc</b></a><a attr1=\"456\"><b attr1=\"xzy\">abc</b></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-attributes-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes attributes from an XML element, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-attributes.html : @param $elements the element(s) from which to remove the attributes : @param $names the names of the attributes to remove, or * for all attributes :)
         declare function functx:remove-attributes ( $elements as element()* , $names as xs:string* ) as element() { for $element in $elements return element {node-name($element)} {$element/@*[not(functx:name-test(name(),$names))], $element/node() } } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <a attr1=\"123\" attr2=\"456\">abc</a> return let $in-xml-2 := <a xmlns:a=\"http://a\" a:attr1=\"123\" attr1=\"456\">abc</a> return (functx:remove-attributes( $in-xml-1, ('attr1','attr2')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-attributes-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes attributes from an XML element, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-attributes.html : @param $elements the element(s) from which to remove the attributes : @param $names the names of the attributes to remove, or * for all attributes :)
         declare function functx:remove-attributes ( $elements as element()* , $names as xs:string* ) as element() { for $element in $elements return element {node-name($element)} {$element/@*[not(functx:name-test(name(),$names))], $element/node() } } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <a attr1=\"123\" attr2=\"456\">abc</a> return let $in-xml-2 := <a xmlns:a=\"http://a\" a:attr1=\"123\" attr1=\"456\">abc</a> return (functx:remove-attributes( $in-xml-1, ('attr1','attr3')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a attr2=\"456\">abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-attributes-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes attributes from an XML element, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-attributes.html : @param $elements the element(s) from which to remove the attributes : @param $names the names of the attributes to remove, or * for all attributes :)
         declare function functx:remove-attributes ( $elements as element()* , $names as xs:string* ) as element() { for $element in $elements return element {node-name($element)} {$element/@*[not(functx:name-test(name(),$names))], $element/node() } } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <a attr1=\"123\" attr2=\"456\">abc</a> return let $in-xml-2 := <a xmlns:a=\"http://a\" a:attr1=\"123\" attr1=\"456\">abc</a> return (functx:remove-attributes($in-xml-1, '*'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-attributes-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes attributes from an XML element, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-attributes.html : @param $elements the element(s) from which to remove the attributes : @param $names the names of the attributes to remove, or * for all attributes :)
         declare function functx:remove-attributes ( $elements as element()* , $names as xs:string* ) as element() { for $element in $elements return element {node-name($element)} {$element/@*[not(functx:name-test(name(),$names))], $element/node() } } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <a attr1=\"123\" attr2=\"456\">abc</a> return let $in-xml-2 := <a xmlns:a=\"http://a\" a:attr1=\"123\" attr1=\"456\">abc</a> return (functx:remove-attributes( $in-xml-2, ('a:attr1')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a attr1=\"456\">abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-attributes-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes attributes from an XML element, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-attributes.html : @param $elements the element(s) from which to remove the attributes : @param $names the names of the attributes to remove, or * for all attributes :)
         declare function functx:remove-attributes ( $elements as element()* , $names as xs:string* ) as element() { for $element in $elements return element {node-name($element)} {$element/@*[not(functx:name-test(name(),$names))], $element/node() } } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <a attr1=\"123\" attr2=\"456\">abc</a> return let $in-xml-2 := <a xmlns:a=\"http://a\" a:attr1=\"123\" attr1=\"456\">abc</a> return (functx:remove-attributes( $in-xml-1, ('attr1','attr2')), functx:remove-attributes( $in-xml-1, ('attr1','attr3')), functx:remove-attributes($in-xml-1, '*'), functx:remove-attributes( $in-xml-2, ('a:attr1')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>abc</a><a attr2=\"456\">abc</a><a>abc</a><a attr1=\"456\">abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-deep-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes descendant elements from an XML node, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements-deep.html : @param $nodes root(s) to start from : @param $names the names of the elements to remove :)
         declare function functx:remove-elements-deep ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then if (functx:name-test(name($node),$names)) then () else element { node-name($node)} { $node/@*, functx:remove-elements-deep($node/node(), $names)} else if ($node instance of document-node()) then functx:remove-elements-deep($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a> <x:b>b1</x:b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return (functx:remove-elements-deep( $in-xml-1, 'b'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a><c>c1</c></a><c>Mixed </c></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-deep-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes descendant elements from an XML node, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements-deep.html : @param $nodes root(s) to start from : @param $names the names of the elements to remove :)
         declare function functx:remove-elements-deep ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then if (functx:name-test(name($node),$names)) then () else element { node-name($node)} { $node/@*, functx:remove-elements-deep($node/node(), $names)} else if ($node instance of document-node()) then functx:remove-elements-deep($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a> <x:b>b1</x:b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return (functx:remove-elements-deep( $in-xml-1, 'a'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><c>Mixed <b>content</b></c></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-deep-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes descendant elements from an XML node, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements-deep.html : @param $nodes root(s) to start from : @param $names the names of the elements to remove :)
         declare function functx:remove-elements-deep ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then if (functx:name-test(name($node),$names)) then () else element { node-name($node)} { $node/@*, functx:remove-elements-deep($node/node(), $names)} else if ($node instance of document-node()) then functx:remove-elements-deep($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a> <x:b>b1</x:b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return (functx:remove-elements-deep( $in-xml-1, ('b','c')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a/></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-deep-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes descendant elements from an XML node, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements-deep.html : @param $nodes root(s) to start from : @param $names the names of the elements to remove :)
         declare function functx:remove-elements-deep ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then if (functx:name-test(name($node),$names)) then () else element { node-name($node)} { $node/@*, functx:remove-elements-deep($node/node(), $names)} else if ($node instance of document-node()) then functx:remove-elements-deep($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a> <x:b>b1</x:b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return (functx:remove-elements-deep( $in-xml-2, 'x:b'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a><c>c1</c></a><c>Mixed <b>content</b></c></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-deep-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes descendant elements from an XML node, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements-deep.html : @param $nodes root(s) to start from : @param $names the names of the elements to remove :)
         declare function functx:remove-elements-deep ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then if (functx:name-test(name($node),$names)) then () else element { node-name($node)} { $node/@*, functx:remove-elements-deep($node/node(), $names)} else if ($node instance of document-node()) then functx:remove-elements-deep($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a> <x:b>b1</x:b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return (functx:remove-elements-deep( $in-xml-1, 'b'), functx:remove-elements-deep( $in-xml-1, 'a'), functx:remove-elements-deep( $in-xml-1, ('b','c')), functx:remove-elements-deep( $in-xml-2, 'x:b'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a><c>c1</c></a><c>Mixed </c></in-xml><in-xml><c>Mixed <b>content</b></c></in-xml><in-xml><a/></in-xml><in-xml><a><c>c1</c></a><c>Mixed <b>content</b></c></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-not-contents-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes descendant XML elements but keeps their content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements-not-contents.html : @param $nodes the root(s) to start from : @param $names the names of the elements to remove :)
         declare function functx:remove-elements-not-contents ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then if (functx:name-test(name($node),$names)) then functx:remove-elements-not-contents($node/node(), $names) else element {node-name($node)} {$node/@*, functx:remove-elements-not-contents($node/node(),$names)} else if ($node instance of document-node()) then functx:remove-elements-not-contents($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <x:b>content</x:b></c> </in-xml> return (functx:remove-elements-not-contents( $in-xml-1, 'b'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a>b1<c>c1</c></a><c>Mixed content</c></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-not-contents-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes descendant XML elements but keeps their content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements-not-contents.html : @param $nodes the root(s) to start from : @param $names the names of the elements to remove :)
         declare function functx:remove-elements-not-contents ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then if (functx:name-test(name($node),$names)) then functx:remove-elements-not-contents($node/node(), $names) else element {node-name($node)} {$node/@*, functx:remove-elements-not-contents($node/node(),$names)} else if ($node instance of document-node()) then functx:remove-elements-not-contents($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <x:b>content</x:b></c> </in-xml> return (functx:remove-elements-not-contents( $in-xml-1, ('b','c')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a>b1c1</a>Mixed content</in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-not-contents-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes descendant XML elements but keeps their content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements-not-contents.html : @param $nodes the root(s) to start from : @param $names the names of the elements to remove :)
         declare function functx:remove-elements-not-contents ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then if (functx:name-test(name($node),$names)) then functx:remove-elements-not-contents($node/node(), $names) else element {node-name($node)} {$node/@*, functx:remove-elements-not-contents($node/node(),$names)} else if ($node instance of document-node()) then functx:remove-elements-not-contents($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <x:b>content</x:b></c> </in-xml> return (functx:remove-elements-not-contents( $in-xml-1, 'a'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><b>b1</b><c>c1</c><c>Mixed <b>content</b></c></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-not-contents-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes descendant XML elements but keeps their content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements-not-contents.html : @param $nodes the root(s) to start from : @param $names the names of the elements to remove :)
         declare function functx:remove-elements-not-contents ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then if (functx:name-test(name($node),$names)) then functx:remove-elements-not-contents($node/node(), $names) else element {node-name($node)} {$node/@*, functx:remove-elements-not-contents($node/node(),$names)} else if ($node instance of document-node()) then functx:remove-elements-not-contents($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <x:b>content</x:b></c> </in-xml> return (functx:remove-elements-not-contents( $in-xml-2, 'x:b'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a><b>b1</b><c>c1</c></a><c>Mixed content</c></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-not-contents-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes descendant XML elements but keeps their content : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements-not-contents.html : @param $nodes the root(s) to start from : @param $names the names of the elements to remove :)
         declare function functx:remove-elements-not-contents ( $nodes as node()* , $names as xs:string* ) as node()* { for $node in $nodes return if ($node instance of element()) then if (functx:name-test(name($node),$names)) then functx:remove-elements-not-contents($node/node(), $names) else element {node-name($node)} {$node/@*, functx:remove-elements-not-contents($node/node(),$names)} else if ($node instance of document-node()) then functx:remove-elements-not-contents($node/node(), $names) else $node } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a> <b>b1</b> <c>c1</c> </a> <c>Mixed <x:b>content</x:b></c> </in-xml> return (functx:remove-elements-not-contents( $in-xml-1, 'b'), functx:remove-elements-not-contents( $in-xml-1, ('b','c')), functx:remove-elements-not-contents( $in-xml-1, 'a'), functx:remove-elements-not-contents( $in-xml-2, 'x:b'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a>b1<c>c1</c></a><c>Mixed content</c></in-xml><in-xml><a>b1c1</a>Mixed content</in-xml><in-xml><b>b1</b><c>c1</c><c>Mixed <b>content</b></c></in-xml><in-xml><a><b>b1</b><c>c1</c></a><c>Mixed content</c></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes child elements from an XML node, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements.html : @param $elements the element(s) from which you wish to remove the children : @param $names the names of the child elements to remove :)
         declare function functx:remove-elements ( $elements as element()* , $names as xs:string* ) as element()* { for $element in $elements return element {node-name($element)} {$element/@*, $element/node()[not(functx:name-test(name(),$names))] } } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a>123</a> <a>456</a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a>123</a> <x:a>456</x:a> <c>Mixed <x:a>content</x:a></c> </in-xml> return (functx:remove-elements( $in-xml-1, 'c'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a>123</a><a>456</a></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes child elements from an XML node, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements.html : @param $elements the element(s) from which you wish to remove the children : @param $names the names of the child elements to remove :)
         declare function functx:remove-elements ( $elements as element()* , $names as xs:string* ) as element()* { for $element in $elements return element {node-name($element)} {$element/@*, $element/node()[not(functx:name-test(name(),$names))] } } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a>123</a> <a>456</a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a>123</a> <x:a>456</x:a> <c>Mixed <x:a>content</x:a></c> </in-xml> return (functx:remove-elements( $in-xml-1, ('a','b')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><c>Mixed <b>content</b></c></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes child elements from an XML node, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements.html : @param $elements the element(s) from which you wish to remove the children : @param $names the names of the child elements to remove :)
         declare function functx:remove-elements ( $elements as element()* , $names as xs:string* ) as element()* { for $element in $elements return element {node-name($element)} {$element/@*, $element/node()[not(functx:name-test(name(),$names))] } } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a>123</a> <a>456</a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a>123</a> <x:a>456</x:a> <c>Mixed <x:a>content</x:a></c> </in-xml> return (functx:remove-elements( $in-xml-2, 'x:a'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a xmlns:x=\"http://x\">123</a><c xmlns:x=\"http://x\">Mixed <x:a>content</x:a></c></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-remove-elements-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether a name matches a list of names or name wildcards : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_name-test.html : @param $testname the name to test : @param $names the list of names or name wildcards :)
         declare function functx:name-test ( $testname as xs:string? , $names as xs:string* ) as xs:boolean { $testname = $names or $names = '*' or functx:substring-after-if-contains($testname,':') = (for $name in $names return substring-after($name,'*:')) or substring-before($testname,':') = (for $name in $names[contains(.,':*')] return substring-before($name,':*')) } ;
                    (:~ : Removes child elements from an XML node, based on name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_remove-elements.html : @param $elements the element(s) from which you wish to remove the children : @param $names the names of the child elements to remove :)
         declare function functx:remove-elements ( $elements as element()* , $names as xs:string* ) as element()* { for $element in $elements return element {node-name($element)} {$element/@*, $element/node()[not(functx:name-test(name(),$names))] } } ;
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    let $in-xml-1 := <in-xml> <a>123</a> <a>456</a> <c>Mixed <b>content</b></c> </in-xml> return let $in-xml-2 := <in-xml xmlns:x=\"http://x\"> <a>123</a> <x:a>456</x:a> <c>Mixed <x:a>content</x:a></c> </in-xml> return (functx:remove-elements( $in-xml-1, 'c'), functx:remove-elements( $in-xml-1, ('a','b')), functx:remove-elements( $in-xml-2, 'x:a'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<in-xml><a>123</a><a>456</a></in-xml><in-xml><c>Mixed <b>content</b></c></in-xml><in-xml><a xmlns:x=\"http://x\">123</a><c xmlns:x=\"http://x\">Mixed <x:a>content</x:a></c></in-xml>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-repeat-string-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:repeat-string('*', 6))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "******") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-repeat-string-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:repeat-string('abc', 3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcabcabc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-repeat-string-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (functx:repeat-string('*', 6), functx:repeat-string('abc', 3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "****** abcabcabc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-beginning-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Replaces the beginning of a string, up to a matched pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-beginning.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace up to : @param $replacement the replacement string :)
         declare function functx:replace-beginning ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('^.*?', $pattern), $replacement) } ;
                    (functx:replace-beginning('abc-def', '-', 'xxx'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xxxdef") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-beginning-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Replaces the beginning of a string, up to a matched pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-beginning.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace up to : @param $replacement the replacement string :)
         declare function functx:replace-beginning ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('^.*?', $pattern), $replacement) } ;
                    (functx:replace-beginning('abc-def', '-', ''))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-beginning-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Replaces the beginning of a string, up to a matched pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-beginning.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace up to : @param $replacement the replacement string :)
         declare function functx:replace-beginning ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('^.*?', $pattern), $replacement) } ;
                    (functx:replace-beginning( '---abc', '[a-z]', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xbc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-beginning-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Replaces the beginning of a string, up to a matched pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-beginning.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace up to : @param $replacement the replacement string :)
         declare function functx:replace-beginning ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('^.*?', $pattern), $replacement) } ;
                    (functx:replace-beginning( '2004-12-05', '-', '2005-'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2005-12-05") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-beginning-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Replaces the beginning of a string, up to a matched pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-beginning.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace up to : @param $replacement the replacement string :)
         declare function functx:replace-beginning ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('^.*?', $pattern), $replacement) } ;
                    (functx:replace-beginning('abc-def', '-', 'xxx'), functx:replace-beginning('abc-def', '-', ''), functx:replace-beginning( '---abc', '[a-z]', 'x'), functx:replace-beginning( '2004-12-05', '-', '2005-'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xxxdef def xbc 2005-12-05") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-element-values-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Updates the content of one or more elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-element-values.html : @param $elements the elements whose content you wish to replace : @param $values the replacement values :)
         declare function functx:replace-element-values ( $elements as element()* , $values as xs:anyAtomicType* ) as element()* { for $element at $seq in $elements return element { node-name($element)} { $element/@*, $values[$seq] } } ;
                    let $in-xml := <in-xml> <price num=\"1\">12</price> <price num=\"2\">20</price> <price num=\"3\">5</price> </in-xml> return (functx:replace-element-values( $in-xml/price, for $p in $in-xml/price return $p * 2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<price num=\"1\">24</price><price num=\"2\">40</price><price num=\"3\">10</price>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-element-values-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Updates the content of one or more elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-element-values.html : @param $elements the elements whose content you wish to replace : @param $values the replacement values :)
         declare function functx:replace-element-values ( $elements as element()* , $values as xs:anyAtomicType* ) as element()* { for $element at $seq in $elements return element { node-name($element)} { $element/@*, $values[$seq] } } ;
                    let $in-xml := <in-xml> <price num=\"1\">12</price> <price num=\"2\">20</price> <price num=\"3\">5</price> </in-xml> return (for $p in $in-xml/price return functx:replace-element-values( $p,concat($p,'.0')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<price num=\"1\">12.0</price><price num=\"2\">20.0</price><price num=\"3\">5.0</price>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-element-values-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Updates the content of one or more elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-element-values.html : @param $elements the elements whose content you wish to replace : @param $values the replacement values :)
         declare function functx:replace-element-values ( $elements as element()* , $values as xs:anyAtomicType* ) as element()* { for $element at $seq in $elements return element { node-name($element)} { $element/@*, $values[$seq] } } ;
                    let $in-xml := <in-xml> <price num=\"1\">12</price> <price num=\"2\">20</price> <price num=\"3\">5</price> </in-xml> return (functx:replace-element-values( $in-xml/price, for $p in $in-xml/price return $p * 2), for $p in $in-xml/price return functx:replace-element-values( $p,concat($p,'.0')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<price num=\"1\">24</price><price num=\"2\">40</price><price num=\"3\">10</price><price num=\"1\">12.0</price><price num=\"2\">20.0</price><price num=\"3\">5.0</price>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-first-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:replace-first('abcabcabc', 'ab', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xcabcabc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-first-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:replace-first('elementary', 'e.*e', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xntary") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-first-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:replace-first( 'elementary', 'e.*?e', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xmentary") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-first-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:replace-first('9999-9999', '\\d+', 'X'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "X-9999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-first-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:replace-first('9999-9999', '\\d{3}', 'X'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "X9-9999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-first-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Replaces the first match of a pattern : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-first.html : @param $arg the entire string to change : @param $pattern the pattern of characters to replace : @param $replacement the replacement string :)
         declare function functx:replace-first ( $arg as xs:string? , $pattern as xs:string , $replacement as xs:string ) as xs:string { replace($arg, concat('(^.*?)', $pattern), concat('$1',$replacement)) } ;
                    (functx:replace-first('abcabcabc', 'ab', 'x'), functx:replace-first('elementary', 'e.*e', 'x'), functx:replace-first( 'elementary', 'e.*?e', 'x'), functx:replace-first('9999-9999', '\\d+', 'X'), functx:replace-first('9999-9999', '\\d{3}', 'X'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xcabcabc xntary xmentary X-9999 X9-9999") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-replace-multi-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not empty, otherwise the second argument : : @author W3C XML Query WG : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-absent.html : @param $arg the item(s) that may be absent : @param $value the item(s) to use if the item is absent :)
         declare function functx:if-absent
           ( $arg as item()* , $value as item()* ) as item()* {
           if (exists($arg)) then $arg else $value } ;
                    (:~ : Performs multiple replacements, using pairs of replace parameters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_replace-multi.html : @param $arg the string to manipulate : @param $changeFrom the sequence of strings or patterns to change from : @param $changeTo the sequence of strings to change to :)
         declare function functx:replace-multi ( $arg as xs:string? , $changeFrom as xs:string* , $changeTo as xs:string* ) as xs:string? {
           if (count($changeFrom) > 0)
           then functx:replace-multi( replace($arg, $changeFrom[1], functx:if-absent($changeTo[1],'')), $changeFrom[position() > 1], $changeTo[position() > 1])
           else $arg
         } ;
         let $fr := ('[a-c]', 'def', '\\d+')
         return let $to := ('x', 'y', '0')
         return (functx:replace-multi('abcdef123',$fr,$to))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xxxy0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-reverse-string-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Reverses the order of characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_reverse-string.html : @param $arg the string to reverse :)
         declare function functx:reverse-string ( $arg as xs:string? ) as xs:string { codepoints-to-string(reverse(string-to-codepoints($arg))) } ;
                    (functx:reverse-string('abc'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "cba") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-reverse-string-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Reverses the order of characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_reverse-string.html : @param $arg the string to reverse :)
         declare function functx:reverse-string ( $arg as xs:string? ) as xs:string { codepoints-to-string(reverse(string-to-codepoints($arg))) } ;
                    (functx:reverse-string('a'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-reverse-string-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Reverses the order of characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_reverse-string.html : @param $arg the string to reverse :)
         declare function functx:reverse-string ( $arg as xs:string? ) as xs:string { codepoints-to-string(reverse(string-to-codepoints($arg))) } ;
                    (functx:reverse-string('abc'), functx:reverse-string('a'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "cba a") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-right-trim-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Trims trailing whitespace : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_right-trim.html : @param $arg the string to trim :)
         declare function functx:right-trim ( $arg as xs:string? ) as xs:string { replace($arg,'\\s+$','') } ;
                    (functx:right-trim('xyz '))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-right-trim-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Trims trailing whitespace : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_right-trim.html : @param $arg the string to trim :)
         declare function functx:right-trim ( $arg as xs:string? ) as xs:string { replace($arg,'\\s+$','') } ;
         (functx:right-trim(' x   xyz '))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " x   xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-right-trim-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Trims trailing whitespace : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_right-trim.html : @param $arg the string to trim :)
         declare function functx:right-trim ( $arg as xs:string? ) as xs:string { replace($arg,'\\s+$','') } ;
                    (functx:right-trim('xyz'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-right-trim-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Trims trailing whitespace : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_right-trim.html : @param $arg the string to trim :)
         declare function functx:right-trim ( $arg as xs:string? ) as xs:string { replace($arg,'\\s+$','') } ;
                    (functx:right-trim('xyz '), functx:right-trim(' x   xyz '), functx:right-trim('xyz'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"xyz\", \" x   xyz\", \"xyz\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-scheme-from-uri-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns the scheme from a URI : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_scheme-from-uri.html : @param $uri the URI :)
         declare function functx:scheme-from-uri ( $uri as xs:string? ) as xs:string? { substring-before($uri,':') } ;
                    (functx:scheme-from-uri( 'http://www.datypic.com'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-scheme-from-uri-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns the scheme from a URI : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_scheme-from-uri.html : @param $uri the URI :)
         declare function functx:scheme-from-uri ( $uri as xs:string? ) as xs:string? { substring-before($uri,':') } ;
                    (functx:scheme-from-uri( 'ftp://ftp.datypic.com'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ftp") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-scheme-from-uri-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns the scheme from a URI : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_scheme-from-uri.html : @param $uri the URI :)
         declare function functx:scheme-from-uri ( $uri as xs:string? ) as xs:string? { substring-before($uri,':') } ;
                    (functx:scheme-from-uri('ftp.datypic.com'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-scheme-from-uri-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns the scheme from a URI : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_scheme-from-uri.html : @param $uri the URI :)
         declare function functx:scheme-from-uri ( $uri as xs:string? ) as xs:string? { substring-before($uri,':') } ;
                    (functx:scheme-from-uri('www.datypic.com'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-scheme-from-uri-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns the scheme from a URI : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_scheme-from-uri.html : @param $uri the URI :)
         declare function functx:scheme-from-uri ( $uri as xs:string? ) as xs:string? { substring-before($uri,':') } ;
                    (functx:scheme-from-uri('prod.html'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-scheme-from-uri-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Returns the scheme from a URI : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_scheme-from-uri.html : @param $uri the URI :)
         declare function functx:scheme-from-uri ( $uri as xs:string? ) as xs:string? { substring-before($uri,':') } ;
                    (functx:scheme-from-uri( 'http://www.datypic.com'), functx:scheme-from-uri( 'ftp://ftp.datypic.com'), functx:scheme-from-uri('ftp.datypic.com'), functx:scheme-from-uri('www.datypic.com'), functx:scheme-from-uri('prod.html'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http ftp   ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-deep-equal-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences have the same XML node content and/or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-deep-equal.html : @param $seq1 the first sequence : @param $seq2 the second sequence :)
         declare function functx:sequence-deep-equal ( $seq1 as item()* , $seq2 as item()* ) as xs:boolean { every $i in 1 to max((count($seq1),count($seq2))) satisfies deep-equal($seq1[$i],$seq2[$i]) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-deep-equal( $in-xml/author/*, $in-xml/*/*))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-deep-equal-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences have the same XML node content and/or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-deep-equal.html : @param $seq1 the first sequence : @param $seq2 the second sequence :)
         declare function functx:sequence-deep-equal ( $seq1 as item()* , $seq2 as item()* ) as xs:boolean { every $i in 1 to max((count($seq1),count($seq2))) satisfies deep-equal($seq1[$i],$seq2[$i]) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-deep-equal( $in-xml/author[1], $anAuthor))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-deep-equal-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences have the same XML node content and/or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-deep-equal.html : @param $seq1 the first sequence : @param $seq2 the second sequence :)
         declare function functx:sequence-deep-equal ( $seq1 as item()* , $seq2 as item()* ) as xs:boolean { every $i in 1 to max((count($seq1),count($seq2))) satisfies deep-equal($seq1[$i],$seq2[$i]) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-deep-equal( (1,2,3), (1.0,2.0,3.0)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-deep-equal-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences have the same XML node content and/or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-deep-equal.html : @param $seq1 the first sequence : @param $seq2 the second sequence :)
         declare function functx:sequence-deep-equal ( $seq1 as item()* , $seq2 as item()* ) as xs:boolean { every $i in 1 to max((count($seq1),count($seq2))) satisfies deep-equal($seq1[$i],$seq2[$i]) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-deep-equal( $in-xml/author/*, $in-xml/*/*), functx:sequence-deep-equal( $in-xml/author[1], $anAuthor), functx:sequence-deep-equal( (1,2,3), (1.0,2.0,3.0)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-node-equal-any-order-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences contain the same XML nodes, regardless of order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-node-equal-any-order.html : @param $seq1 the first sequence of nodes : @param $seq2 the second sequence of nodes :)
         declare function functx:sequence-node-equal-any-order ( $seq1 as node()* , $seq2 as node()* ) as xs:boolean { not( ($seq1 except $seq2, $seq2 except $seq1)) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-node-equal-any-order( $in-xml/author, $in-xml/*))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-node-equal-any-order-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences contain the same XML nodes, regardless of order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-node-equal-any-order.html : @param $seq1 the first sequence of nodes : @param $seq2 the second sequence of nodes :)
         declare function functx:sequence-node-equal-any-order ( $seq1 as node()* , $seq2 as node()* ) as xs:boolean { not( ($seq1 except $seq2, $seq2 except $seq1)) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-node-equal-any-order( $in-xml/author, ($in-xml/author[2],$in-xml/author[1])))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-node-equal-any-order-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences contain the same XML nodes, regardless of order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-node-equal-any-order.html : @param $seq1 the first sequence of nodes : @param $seq2 the second sequence of nodes :)
         declare function functx:sequence-node-equal-any-order ( $seq1 as node()* , $seq2 as node()* ) as xs:boolean { not( ($seq1 except $seq2, $seq2 except $seq1)) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-node-equal-any-order( $in-xml/author[1],$anAuthor))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-node-equal-any-order-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences contain the same XML nodes, regardless of order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-node-equal-any-order.html : @param $seq1 the first sequence of nodes : @param $seq2 the second sequence of nodes :)
         declare function functx:sequence-node-equal-any-order ( $seq1 as node()* , $seq2 as node()* ) as xs:boolean { not( ($seq1 except $seq2, $seq2 except $seq1)) } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-node-equal-any-order( $in-xml/author, $in-xml/*), functx:sequence-node-equal-any-order( $in-xml/author, ($in-xml/author[2],$in-xml/author[1])), functx:sequence-node-equal-any-order( $in-xml/author[1],$anAuthor))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-node-equal-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences contain the same XML nodes, in the same order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-node-equal.html : @param $seq1 the first sequence of nodes : @param $seq2 the second sequence of nodes :)
         declare function functx:sequence-node-equal ( $seq1 as node()* , $seq2 as node()* ) as xs:boolean { every $i in 1 to max((count($seq1),count($seq2))) satisfies $seq1[$i] is $seq2[$i] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-node-equal( $in-xml/author/*, $in-xml/*/*))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-node-equal-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences contain the same XML nodes, in the same order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-node-equal.html : @param $seq1 the first sequence of nodes : @param $seq2 the second sequence of nodes :)
         declare function functx:sequence-node-equal ( $seq1 as node()* , $seq2 as node()* ) as xs:boolean { every $i in 1 to max((count($seq1),count($seq2))) satisfies $seq1[$i] is $seq2[$i] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-node-equal( $in-xml/author, ($in-xml/author[2],$in-xml/author[1])))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-node-equal-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences contain the same XML nodes, in the same order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-node-equal.html : @param $seq1 the first sequence of nodes : @param $seq2 the second sequence of nodes :)
         declare function functx:sequence-node-equal ( $seq1 as node()* , $seq2 as node()* ) as xs:boolean { every $i in 1 to max((count($seq1),count($seq2))) satisfies $seq1[$i] is $seq2[$i] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-node-equal( $in-xml/author[1],$anAuthor))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-node-equal-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Whether two sequences contain the same XML nodes, in the same order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-node-equal.html : @param $seq1 the first sequence of nodes : @param $seq2 the second sequence of nodes :)
         declare function functx:sequence-node-equal ( $seq1 as node()* , $seq2 as node()* ) as xs:boolean { every $i in 1 to max((count($seq1),count($seq2))) satisfies $seq1[$i] is $seq2[$i] } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return let $anAuthor := <author> <fName>Kate</fName> <lName>Jones</lName> </author> return (functx:sequence-node-equal( $in-xml/author/*, $in-xml/*/*), functx:sequence-node-equal( $in-xml/author, ($in-xml/author[2],$in-xml/author[1])), functx:sequence-node-equal( $in-xml/author[1],$anAuthor))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type(2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xs:integer") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type(('abc','def')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xs:string+") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type(('abc',2)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xs:anyAtomicType+") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type( () ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "empty-sequence()") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type($in-xml/*[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "element()") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-6'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type($in-xml/*))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "element()+") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-7'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type($in-xml/*/@*))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "attribute()+") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-8'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type($in-xml/*/text()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "text()+") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-9'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type($in-xml/comment()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "comment()") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-10'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type($in-xml/node()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "node()+") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-11'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type(($in-xml/*,'2')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "item()+") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sequence-type-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The built-in type of an atomic value : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_atomic-type.html : @param $values the value(s) whose type you want to determine :)
         declare function functx:atomic-type ( $values as xs:anyAtomicType* ) as xs:string* { for $val in $values return (if ($val instance of xs:untypedAtomic) then 'xs:untypedAtomic' else if ($val instance of xs:anyURI) then 'xs:anyURI' else if ($val instance of xs:ENTITY) then 'xs:ENTITY' else if ($val instance of xs:ID) then 'xs:ID' else if ($val instance of xs:NMTOKEN) then 'xs:NMTOKEN' else if ($val instance of xs:language) then 'xs:language' else if ($val instance of xs:NCName) then 'xs:NCName' else if ($val instance of xs:Name) then 'xs:Name' else if ($val instance of xs:token) then 'xs:token' else if ($val instance of xs:normalizedString) then 'xs:normalizedString' else if ($val instance of xs:string) then 'xs:string' else if ($val instance of xs:QName) then 'xs:QName' else if ($val instance of xs:boolean) then 'xs:boolean' else if ($val instance of xs:base64Binary) then 'xs:base64Binary' else if ($val instance of xs:hexBinary) then 'xs:hexBinary' else if ($val instance of xs:byte) then 'xs:byte' else if ($val instance of xs:short) then 'xs:short' else if ($val instance of xs:int) then 'xs:int' else if ($val instance of xs:long) then 'xs:long' else if ($val instance of xs:unsignedByte) then 'xs:unsignedByte' else if ($val instance of xs:unsignedShort) then 'xs:unsignedShort' else if ($val instance of xs:unsignedInt) then 'xs:unsignedInt' else if ($val instance of xs:unsignedLong) then 'xs:unsignedLong' else if ($val instance of xs:positiveInteger) then 'xs:positiveInteger' else if ($val instance of xs:nonNegativeInteger) then 'xs:nonNegativeInteger' else if ($val instance of xs:negativeInteger) then 'xs:negativeInteger' else if ($val instance of xs:nonPositiveInteger) then 'xs:nonPositiveInteger' else if ($val instance of xs:integer) then 'xs:integer' else if ($val instance of xs:decimal) then 'xs:decimal' else if ($val instance of xs:float) then 'xs:float' else if ($val instance of xs:double) then 'xs:double' else if ($val instance of xs:date) then 'xs:date' else if ($val instance of xs:time) then 'xs:time' else if ($val instance of xs:dateTime) then 'xs:dateTime' else if ($val instance of xs:dayTimeDuration) then 'xs:dayTimeDuration' else if ($val instance of xs:yearMonthDuration) then 'xs:yearMonthDuration' else if ($val instance of xs:duration) then 'xs:duration' else if ($val instance of xs:gMonth) then 'xs:gMonth' else if ($val instance of xs:gYear) then 'xs:gYear' else if ($val instance of xs:gYearMonth) then 'xs:gYearMonth' else if ($val instance of xs:gDay) then 'xs:gDay' else if ($val instance of xs:gMonthDay) then 'xs:gMonthDay' else 'unknown') } ;
                    (:~ : The XML node kind (element, attribute, text, etc.) : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_node-kind.html : @param $nodes the node(s) whose kind you want to determine :)
         declare function functx:node-kind ( $nodes as node()* ) as xs:string* { for $node in $nodes return if ($node instance of element()) then 'element' else if ($node instance of attribute()) then 'attribute' else if ($node instance of text()) then 'text' else if ($node instance of document-node()) then 'document-node' else if ($node instance of comment()) then 'comment' else if ($node instance of processing-instruction()) then 'processing-instruction' else 'unknown' } ;
                    (:~ : The sequence type that represents a sequence of nodes or values : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sequence-type.html : @param $items the items whose sequence type you want to determine :)
         declare function functx:sequence-type ( $items as item()* ) as xs:string { concat( if (empty($items)) then 'empty-sequence()' else if (every $val in $items satisfies $val instance of xs:anyAtomicType) then if (count(distinct-values(functx:atomic-type($items))) > 1) then 'xs:anyAtomicType' else functx:atomic-type($items[1]) else if (some $val in $items satisfies $val instance of xs:anyAtomicType) then 'item()' else if (count(distinct-values(functx:node-kind($items))) > 1) then 'node()' else concat(functx:node-kind($items[1]),'()') , if (count($items) > 1) then '+' else '') } ;
                    let $in-xml := <in-xml> <a att1=\"y\">x</a> <b att1=\"x\">x</b> <!-- comment --> </in-xml> return (functx:sequence-type(2), functx:sequence-type(('abc','def')), functx:sequence-type(('abc',2)), functx:sequence-type( () ), functx:sequence-type($in-xml/*[1]), functx:sequence-type($in-xml/*), functx:sequence-type($in-xml/*/@*), functx:sequence-type($in-xml/*/text()), functx:sequence-type($in-xml/comment()), functx:sequence-type($in-xml/node()), functx:sequence-type(($in-xml/*,'2')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xs:integer xs:string+ xs:anyAtomicType+ empty-sequence() element() element()+ attribute()+ text()+ comment() node()+ item()+") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-siblings-same-name-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The siblings of an XML element that have the same name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_siblings-same-name.html : @param $element the node :)
         declare function functx:siblings-same-name ( $element as element()? ) as element()* { $element/../*[node-name(.) = node-name($element)] except $element } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <fName>Jane</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:siblings-same-name( $in-xml/author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<author><fName>John</fName><lName>Doe</lName></author>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-siblings-same-name-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The siblings of an XML element that have the same name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_siblings-same-name.html : @param $element the node :)
         declare function functx:siblings-same-name ( $element as element()? ) as element()* { $element/../*[node-name(.) = node-name($element)] except $element } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <fName>Jane</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:siblings-same-name( $in-xml/author[1]/fName[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fName>Kate</fName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-siblings-same-name-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The siblings of an XML element that have the same name : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_siblings-same-name.html : @param $element the node :)
         declare function functx:siblings-same-name ( $element as element()? ) as element()* { $element/../*[node-name(.) = node-name($element)] except $element } ;
                    let $in-xml := <authors> <author> <fName>Kate</fName> <fName>Jane</fName> <lName>Jones</lName> </author> <author> <fName>John</fName> <lName>Doe</lName> </author> </authors> return (functx:siblings-same-name( $in-xml/author[1]), functx:siblings-same-name( $in-xml/author[1]/fName[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<author><fName>John</fName><lName>Doe</lName></author><fName>Kate</fName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-siblings-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The siblings of an XML node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_siblings.html : @param $node the node :)
         declare function functx:siblings ( $node as node()? ) as node()* { $node/../node() except $node } ;
                    let $in-xml := <authors a1='xyz'> <author a2='abc'> <fName a3='def'>Kate</fName> <fName a3='def'>Jane</fName> <lName>Jones</lName> </author> <author> <fName a3='def'>John</fName> <lName>Doe</lName> </author> </authors> return (functx:siblings( $in-xml/author[1]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<author><fName a3=\"def\">John</fName><lName>Doe</lName></author>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-siblings-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The siblings of an XML node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_siblings.html : @param $node the node :)
         declare function functx:siblings ( $node as node()? ) as node()* { $node/../node() except $node } ;
                    let $in-xml := <authors a1='xyz'> <author a2='abc'> <fName a3='def'>Kate</fName> <fName a3='def'>Jane</fName> <lName>Jones</lName> </author> <author> <fName a3='def'>John</fName> <lName>Doe</lName> </author> </authors> return (functx:siblings( $in-xml/author[1]/fName[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fName a3=\"def\">Kate</fName><lName>Jones</lName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-siblings-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The siblings of an XML node : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_siblings.html : @param $node the node :)
         declare function functx:siblings ( $node as node()? ) as node()* { $node/../node() except $node } ;
                    let $in-xml := <authors a1='xyz'> <author a2='abc'> <fName a3='def'>Kate</fName> <fName a3='def'>Jane</fName> <lName>Jones</lName> </author> <author> <fName a3='def'>John</fName> <lName>Doe</lName> </author> </authors> return (functx:siblings( $in-xml/author[1]), functx:siblings( $in-xml/author[1]/fName[2]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<author><fName a3=\"def\">John</fName><lName>Doe</lName></author><fName a3=\"def\">Kate</fName><lName>Jones</lName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sort-as-numeric-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Sorts a sequence of numeric values or nodes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sort-as-numeric.html : @param $seq the sequence to sort :)
         declare function functx:sort-as-numeric ( $seq as item()* ) as item()* { for $item in $seq order by number($item) return $item } ;
                    let $in-xml := <in-xml> <f>1</f> <f>35</f> <e>4</e> </in-xml> return (functx:sort-as-numeric(('1','100','99')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 99 100") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sort-as-numeric-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Sorts a sequence of numeric values or nodes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sort-as-numeric.html : @param $seq the sequence to sort :)
         declare function functx:sort-as-numeric ( $seq as item()* ) as item()* { for $item in $seq order by number($item) return $item } ;
                    let $in-xml := <in-xml> <f>1</f> <f>35</f> <e>4</e> </in-xml> return (functx:sort-as-numeric($in-xml/*))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<f>1</f><e>4</e><f>35</f>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sort-as-numeric-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Sorts a sequence of numeric values or nodes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sort-as-numeric.html : @param $seq the sequence to sort :)
         declare function functx:sort-as-numeric ( $seq as item()* ) as item()* { for $item in $seq order by number($item) return $item } ;
         let $in-xml := <in-xml> <f>1</f> <f>35</f> <e>4</e> </in-xml> 
         return document{(functx:sort-as-numeric(('1','100','99')), functx:sort-as-numeric($in-xml/*))}
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"1 99 100<f>1</f><e>4</e><f>35</f>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sort-case-insensitive-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Sorts a sequence of values or nodes regardless of capitalization : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sort-case-insensitive.html : @param $seq the sequence to sort :)
         declare function functx:sort-case-insensitive ( $seq as item()* ) as item()* { for $item in $seq order by upper-case(string($item)) return $item } ;
                    let $in-xml := <in-xml> <f>a</f> <f>c</f> <e>B</e> </in-xml> return (functx:sort-case-insensitive(('a','c','B')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a B c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sort-case-insensitive-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Sorts a sequence of values or nodes regardless of capitalization : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sort-case-insensitive.html : @param $seq the sequence to sort :)
         declare function functx:sort-case-insensitive ( $seq as item()* ) as item()* { for $item in $seq order by upper-case(string($item)) return $item } ;
                    let $in-xml := <in-xml> <f>a</f> <f>c</f> <e>B</e> </in-xml> return (functx:sort-case-insensitive($in-xml/*))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<f>a</f><e>B</e><f>c</f>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sort-case-insensitive-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Sorts a sequence of values or nodes regardless of capitalization : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sort-case-insensitive.html : @param $seq the sequence to sort :)
         declare function functx:sort-case-insensitive ( $seq as item()* ) as item()* { 
            for $item in $seq order by upper-case(string($item)) return $item 
         } ;
         let $in-xml := <in-xml> <f>a</f> <f>c</f> <e>B</e> </in-xml> 
         return document{(functx:sort-case-insensitive(('a','c','B')), functx:sort-case-insensitive($in-xml/*))}
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"a B c<f>a</f><e>B</e><f>c</f>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sort-document-order-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Sorts a sequence of nodes in document order : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sort-document-order.html : @param $seq the sequence to sort :)
         declare function functx:sort-document-order ( $seq as node()* ) as node()* { $seq/. } ;
                    let $in-xml := <in-xml> <a>123</a> <b>456</b> <c>789</c> </in-xml> return (functx:sort-document-order( ($in-xml/c,$in-xml/a)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>123</a><c>789</c>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sort-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Sorts a sequence of values or nodes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sort.html : @param $seq the sequence to sort :)
         declare function functx:sort ( $seq as item()* ) as item()* { for $item in $seq order by $item return $item } ;
                    let $in-xml := <in-xml> <f>c</f> <f>a</f> <e>b</e> </in-xml> return (functx:sort(('c','a','b')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a b c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sort-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Sorts a sequence of values or nodes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sort.html : @param $seq the sequence to sort :)
         declare function functx:sort ( $seq as item()* ) as item()* { for $item in $seq order by $item return $item } ;
                    let $in-xml := <in-xml> <f>c</f> <f>a</f> <e>b</e> </in-xml> return (functx:sort($in-xml/*))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<f>a</f><e>b</e><f>c</f>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-sort-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Sorts a sequence of values or nodes : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_sort.html : @param $seq the sequence to sort :)
         declare function functx:sort ( $seq as item()* ) as item()* { 
            for $item in $seq order by $item return $item 
         };
         let $in-xml := <in-xml> <f>c</f> <f>a</f> <e>b</e> </in-xml> 
         return document{(functx:sort(('c','a','b')), functx:sort($in-xml/*))}
       ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"a b c<f>a</f><e>b</e><f>c</f>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-if-contains-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    (functx:substring-after-if-contains('abcd','b'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "cd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-if-contains-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    (functx:substring-after-if-contains('abcd','x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-if-contains-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Performs substring-after, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-after($arg,$delim) else $arg } ;
                    (functx:substring-after-if-contains('abcd','b'), functx:substring-after-if-contains('abcd','x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "cd abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-last-match-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring after the last text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-last-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-after-last-match ( $arg as xs:string? , $regex as xs:string ) as xs:string { replace($arg,concat('^.*',$regex),'') } ;
                    (functx:substring-after-last-match( 'abc-def-ghi', '[ad]'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ef-ghi") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-last-match-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring after the last text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-last-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-after-last-match ( $arg as xs:string? , $regex as xs:string ) as xs:string { replace($arg,concat('^.*',$regex),'') } ;
                    (functx:substring-after-last-match( 'abcd-abcd', 'bc?'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "d") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-last-match-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring after the last text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-last-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-after-last-match ( $arg as xs:string? , $regex as xs:string ) as xs:string { replace($arg,concat('^.*',$regex),'') } ;
                    (functx:substring-after-last-match( 'abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcd-abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-last-match-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring after the last text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-last-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-after-last-match ( $arg as xs:string? , $regex as xs:string ) as xs:string { replace($arg,concat('^.*',$regex),'') } ;
                    (functx:substring-after-last-match( 'abc-def-ghi', '[ad]'), functx:substring-after-last-match( 'abcd-abcd', 'bc?'), functx:substring-after-last-match( 'abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ef-ghi d abcd-abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-last-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (:~ : The substring after the last occurrence of a delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-last.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-last ( $arg as xs:string? , $delim as xs:string ) as xs:string { replace ($arg,concat('^.*',functx:escape-for-regex($delim)),'') } ;
                    (functx:substring-after-last('abc-def-ghi', '-'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ghi") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-last-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (:~ : The substring after the last occurrence of a delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-last.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-last ( $arg as xs:string? , $delim as xs:string ) as xs:string { replace ($arg,concat('^.*',functx:escape-for-regex($delim)),'') } ;
                    (functx:substring-after-last('abcd-abcd', 'ab'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "cd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-last-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (:~ : The substring after the last occurrence of a delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-last.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-last ( $arg as xs:string? , $delim as xs:string ) as xs:string { replace ($arg,concat('^.*',functx:escape-for-regex($delim)),'') } ;
                    (functx:substring-after-last('abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcd-abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-last-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (:~ : The substring after the last occurrence of a delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-last.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-after-last ( $arg as xs:string? , $delim as xs:string ) as xs:string { replace ($arg,concat('^.*',functx:escape-for-regex($delim)),'') } ;
                    (functx:substring-after-last('abc-def-ghi', '-'), functx:substring-after-last('abcd-abcd', 'ab'), functx:substring-after-last('abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ghi cd abcd-abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-match-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring after the first text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-after-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { replace($arg,concat('^.*?',$regex),'') } ;
                    (functx:substring-after-match( 'abc-def-ghi', '[ce]'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-def-ghi") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-match-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring after the first text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-after-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { replace($arg,concat('^.*?',$regex),'') } ;
                    (functx:substring-after-match( 'abcd-abcd', 'ab?'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "cd-abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-match-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring after the first text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-after-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { replace($arg,concat('^.*?',$regex),'') } ;
                    (functx:substring-after-match( 'abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcd-abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-after-match-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring after the first text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-after-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-after-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { replace($arg,concat('^.*?',$regex),'') } ;
                    (functx:substring-after-match( 'abc-def-ghi', '[ce]'), functx:substring-after-match( 'abcd-abcd', 'ab?'), functx:substring-after-match( 'abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-def-ghi cd-abcd abcd-abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-if-contains-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Performs substring-before, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-before($arg,$delim) else $arg } ;
                    (functx:substring-before-if-contains('abcd','c'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ab") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-if-contains-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Performs substring-before, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-before($arg,$delim) else $arg } ;
                    (functx:substring-before-if-contains('abcd','x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-if-contains-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Performs substring-before, returning the entire string if it does not contain the delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-if-contains.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-if-contains ( $arg as xs:string? , $delim as xs:string ) as xs:string? { if (contains($arg,$delim)) then substring-before($arg,$delim) else $arg } ;
                    (functx:substring-before-if-contains('abcd','c'), functx:substring-before-if-contains('abcd','x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ab abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-last-match-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring before the last text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-last-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-before-last-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { replace($arg,concat('^(.*)',$regex,'.*'),'$1') } ;
                    (functx:substring-before-last-match( 'abc-def-ghi', '[ce]'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc-d") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-last-match-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring before the last text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-last-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-before-last-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { replace($arg,concat('^(.*)',$regex,'.*'),'$1') } ;
                    (functx:substring-before-last-match( 'abcd-abcd', 'ab?'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcd-") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-last-match-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring before the last text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-last-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-before-last-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { replace($arg,concat('^(.*)',$regex,'.*'),'$1') } ;
                    (functx:substring-before-last-match( 'abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcd-abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-last-match-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring before the last text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-last-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-before-last-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { replace($arg,concat('^(.*)',$regex,'.*'),'$1') } ;
                    (functx:substring-before-last-match( 'abc-def-ghi', '[ce]'), functx:substring-before-last-match( 'abcd-abcd', 'ab?'), functx:substring-before-last-match( 'abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc-d abcd- abcd-abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-last-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (:~ : The substring before the last occurrence of a delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-last.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-last ( $arg as xs:string? , $delim as xs:string ) as xs:string { if (matches($arg, functx:escape-for-regex($delim))) then replace($arg, concat('^(.*)', functx:escape-for-regex($delim),'.*'), '$1') else '' } ;
                    (functx:substring-before-last( 'abc-def-ghi', '-'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc-def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-last-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (:~ : The substring before the last occurrence of a delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-last.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-last ( $arg as xs:string? , $delim as xs:string ) as xs:string { if (matches($arg, functx:escape-for-regex($delim))) then replace($arg, concat('^(.*)', functx:escape-for-regex($delim),'.*'), '$1') else '' } ;
                    (functx:substring-before-last('abcd-abcd', 'ab'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcd-") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-last-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (:~ : The substring before the last occurrence of a delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-last.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-last ( $arg as xs:string? , $delim as xs:string ) as xs:string { if (matches($arg, functx:escape-for-regex($delim))) then replace($arg, concat('^(.*)', functx:escape-for-regex($delim),'.*'), '$1') else '' } ;
                    (functx:substring-before-last('abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-last-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Escapes regex special characters : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_escape-for-regex.html : @param $arg the string to escape :)
         declare function functx:escape-for-regex ( $arg as xs:string? ) as xs:string { replace($arg, '(\\.|\\[|\\]|\\\\|\\||\\-|\\^|\\$|\\?|\\*|\\+|\\{|\\}|\\(|\\))','\\\\$1') } ;
                    (:~ : The substring before the last occurrence of a delimiter : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-last.html : @param $arg the string to substring : @param $delim the delimiter :)
         declare function functx:substring-before-last ( $arg as xs:string? , $delim as xs:string ) as xs:string { if (matches($arg, functx:escape-for-regex($delim))) then replace($arg, concat('^(.*)', functx:escape-for-regex($delim),'.*'), '$1') else '' } ;
                    (functx:substring-before-last( 'abc-def-ghi', '-'), functx:substring-before-last('abcd-abcd', 'ab'), functx:substring-before-last('abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc-def abcd- ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-match-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring before the first text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-before-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { tokenize($arg,$regex)[1] } ;
                    (functx:substring-before-match( 'abc-def-ghi', '[dg]'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc-") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-match-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring before the first text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-before-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { tokenize($arg,$regex)[1] } ;
                    (functx:substring-before-match( 'abcd-abcd', 'bc?'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-match-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring before the first text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-before-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { tokenize($arg,$regex)[1] } ;
                    (functx:substring-before-match( 'abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcd-abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-substring-before-match-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The substring before the first text that matches a regex : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_substring-before-match.html : @param $arg the string to substring : @param $regex the regular expression :)
         declare function functx:substring-before-match ( $arg as xs:string? , $regex as xs:string ) as xs:string? { tokenize($arg,$regex)[1] } ;
                    (functx:substring-before-match( 'abc-def-ghi', '[dg]'), functx:substring-before-match( 'abcd-abcd', 'bc?'), functx:substring-before-match( 'abcd-abcd', 'x'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc- a abcd-abcd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-time-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (:~ : Construct a time from an hour, minute and second : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_time.html : @param $hour the hour : @param $minute the minute : @param $second the second :)
         declare function functx:time ( $hour as xs:anyAtomicType , $minute as xs:anyAtomicType , $second as xs:anyAtomicType ) as xs:time { xs:time( concat( functx:pad-integer-to-length(xs:integer($hour),2),':', functx:pad-integer-to-length(xs:integer($minute),2),':', functx:pad-integer-to-length(xs:integer($second),2))) } ;
                    (functx:time(20,6,12))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "20:06:12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-time-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (:~ : Construct a time from an hour, minute and second : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_time.html : @param $hour the hour : @param $minute the minute : @param $second the second :)
         declare function functx:time ( $hour as xs:anyAtomicType , $minute as xs:anyAtomicType , $second as xs:anyAtomicType ) as xs:time { xs:time( concat( functx:pad-integer-to-length(xs:integer($hour),2),':', functx:pad-integer-to-length(xs:integer($minute),2),':', functx:pad-integer-to-length(xs:integer($second),2))) } ;
                    (functx:time('20','6','12'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "20:06:12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-time-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Pads an integer to a desired length by adding leading zeros : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_pad-integer-to-length.html : @param $integerToPad the integer to pad : @param $length the desired length :)
         declare function functx:pad-integer-to-length ( $integerToPad as xs:anyAtomicType? , $length as xs:integer ) as xs:string { if ($length < string-length(string($integerToPad))) then error(xs:QName('functx:Integer_Longer_Than_Length')) else concat (functx:repeat-string( '0',$length - string-length(string($integerToPad))), string($integerToPad)) } ;
                    (:~ : Repeats a string a given number of times : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_repeat-string.html : @param $stringToRepeat the string to repeat : @param $count the desired number of copies :)
         declare function functx:repeat-string ( $stringToRepeat as xs:string? , $count as xs:integer ) as xs:string { string-join((for $i in 1 to $count return $stringToRepeat), '') } ;
                    (:~ : Construct a time from an hour, minute and second : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_time.html : @param $hour the hour : @param $minute the minute : @param $second the second :)
         declare function functx:time ( $hour as xs:anyAtomicType , $minute as xs:anyAtomicType , $second as xs:anyAtomicType ) as xs:time { xs:time( concat( functx:pad-integer-to-length(xs:integer($hour),2),':', functx:pad-integer-to-length(xs:integer($minute),2),':', functx:pad-integer-to-length(xs:integer($second),2))) } ;
                    (functx:time(20,6,12), functx:time('20','6','12'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "20:06:12 20:06:12") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-timezone-from-duration-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts an xs:dayTimeDuration into a timezone like \"-05:00\" or \"Z\" : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_timezone-from-duration.html : @param $duration the duration :)
         declare function functx:timezone-from-duration ( $duration as xs:dayTimeDuration ) as xs:string { if (string($duration) = ('PT0S','-PT0S')) then 'Z' else if (matches(string($duration),'-PT[1-9]H')) then replace(string($duration),'PT([1-9])H','0$1:00') else if (matches(string($duration),'PT[1-9]H')) then replace(string($duration),'PT([1-9])H','+0$1:00') else if (matches(string($duration),'-PT1[0-4]H')) then replace(string($duration),'PT(1[0-4])H','$1:00') else if (matches(string($duration),'PT1[0-4]H')) then replace(string($duration),'PT(1[0-4])H','+$1:00') else error(xs:QName('functx:Invalid_Duration_Value')) } ;
                    (functx:timezone-from-duration( xs:dayTimeDuration('PT0S')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-timezone-from-duration-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts an xs:dayTimeDuration into a timezone like \"-05:00\" or \"Z\" : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_timezone-from-duration.html : @param $duration the duration :)
         declare function functx:timezone-from-duration ( $duration as xs:dayTimeDuration ) as xs:string { if (string($duration) = ('PT0S','-PT0S')) then 'Z' else if (matches(string($duration),'-PT[1-9]H')) then replace(string($duration),'PT([1-9])H','0$1:00') else if (matches(string($duration),'PT[1-9]H')) then replace(string($duration),'PT([1-9])H','+0$1:00') else if (matches(string($duration),'-PT1[0-4]H')) then replace(string($duration),'PT(1[0-4])H','$1:00') else if (matches(string($duration),'PT1[0-4]H')) then replace(string($duration),'PT(1[0-4])H','+$1:00') else error(xs:QName('functx:Invalid_Duration_Value')) } ;
                    (functx:timezone-from-duration( xs:dayTimeDuration('-PT5H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-05:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-timezone-from-duration-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts an xs:dayTimeDuration into a timezone like \"-05:00\" or \"Z\" : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_timezone-from-duration.html : @param $duration the duration :)
         declare function functx:timezone-from-duration ( $duration as xs:dayTimeDuration ) as xs:string { if (string($duration) = ('PT0S','-PT0S')) then 'Z' else if (matches(string($duration),'-PT[1-9]H')) then replace(string($duration),'PT([1-9])H','0$1:00') else if (matches(string($duration),'PT[1-9]H')) then replace(string($duration),'PT([1-9])H','+0$1:00') else if (matches(string($duration),'-PT1[0-4]H')) then replace(string($duration),'PT(1[0-4])H','$1:00') else if (matches(string($duration),'PT1[0-4]H')) then replace(string($duration),'PT(1[0-4])H','+$1:00') else error(xs:QName('functx:Invalid_Duration_Value')) } ;
                    (functx:timezone-from-duration( xs:dayTimeDuration('PT9H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "+09:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-timezone-from-duration-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts an xs:dayTimeDuration into a timezone like \"-05:00\" or \"Z\" : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_timezone-from-duration.html : @param $duration the duration :)
         declare function functx:timezone-from-duration ( $duration as xs:dayTimeDuration ) as xs:string { if (string($duration) = ('PT0S','-PT0S')) then 'Z' else if (matches(string($duration),'-PT[1-9]H')) then replace(string($duration),'PT([1-9])H','0$1:00') else if (matches(string($duration),'PT[1-9]H')) then replace(string($duration),'PT([1-9])H','+0$1:00') else if (matches(string($duration),'-PT1[0-4]H')) then replace(string($duration),'PT(1[0-4])H','$1:00') else if (matches(string($duration),'PT1[0-4]H')) then replace(string($duration),'PT(1[0-4])H','+$1:00') else error(xs:QName('functx:Invalid_Duration_Value')) } ;
                    (functx:timezone-from-duration( xs:dayTimeDuration('PT0S')), functx:timezone-from-duration( xs:dayTimeDuration('-PT5H')), functx:timezone-from-duration( xs:dayTimeDuration('PT9H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Z -05:00 +09:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-days-from-duration-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of days in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-days-from-duration.html : @param $duration the duration :)
         declare function functx:total-days-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('P1D') } ;
                    (functx:total-days-from-duration( xs:dayTimeDuration('PT24H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-days-from-duration-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of days in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-days-from-duration.html : @param $duration the duration :)
         declare function functx:total-days-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('P1D') } ;
                    (functx:total-days-from-duration( xs:dayTimeDuration('P1D')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-days-from-duration-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of days in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-days-from-duration.html : @param $duration the duration :)
         declare function functx:total-days-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('P1D') } ;
                    (functx:total-days-from-duration( xs:dayTimeDuration('PT36H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-days-from-duration-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of days in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-days-from-duration.html : @param $duration the duration :)
         declare function functx:total-days-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('P1D') } ;
                    (functx:total-days-from-duration( xs:dayTimeDuration('PT48H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-days-from-duration-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of days in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-days-from-duration.html : @param $duration the duration :)
         declare function functx:total-days-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('P1D') } ;
                    (functx:total-days-from-duration( xs:dayTimeDuration('PT24H')), functx:total-days-from-duration( xs:dayTimeDuration('P1D')), functx:total-days-from-duration( xs:dayTimeDuration('PT36H')), functx:total-days-from-duration( xs:dayTimeDuration('PT48H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1 1.5 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-hours-from-duration-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of hours in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-hours-from-duration.html : @param $duration the duration :)
         declare function functx:total-hours-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1H') } ;
                    (functx:total-hours-from-duration( xs:dayTimeDuration('PT26H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"26") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-hours-from-duration-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of hours in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-hours-from-duration.html : @param $duration the duration :)
         declare function functx:total-hours-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1H') } ;
                    (functx:total-hours-from-duration( xs:dayTimeDuration('PT1H30M')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-hours-from-duration-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of hours in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-hours-from-duration.html : @param $duration the duration :)
         declare function functx:total-hours-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1H') } ;
                    (functx:total-hours-from-duration( xs:dayTimeDuration('-PT3H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-hours-from-duration-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of hours in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-hours-from-duration.html : @param $duration the duration :)
         declare function functx:total-hours-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1H') } ;
                    (functx:total-hours-from-duration( xs:dayTimeDuration('P1D')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"24") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-hours-from-duration-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of hours in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-hours-from-duration.html : @param $duration the duration :)
         declare function functx:total-hours-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1H') } ;
                    (functx:total-hours-from-duration( xs:dayTimeDuration('P1DT2H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"26") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-hours-from-duration-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of hours in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-hours-from-duration.html : @param $duration the duration :)
         declare function functx:total-hours-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1H') } ;
                    (functx:total-hours-from-duration( xs:dayTimeDuration('PT26H')), functx:total-hours-from-duration( xs:dayTimeDuration('PT1H30M')), functx:total-hours-from-duration( xs:dayTimeDuration('-PT3H')), functx:total-hours-from-duration( xs:dayTimeDuration('P1D')), functx:total-hours-from-duration( xs:dayTimeDuration('P1DT2H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "26 1.5 -3 24 26") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-minutes-from-duration-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of minutes in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-minutes-from-duration.html : @param $duration the duration :)
         declare function functx:total-minutes-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1M') } ;
                    (functx:total-minutes-from-duration( xs:dayTimeDuration('PT90M')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"90") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-minutes-from-duration-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of minutes in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-minutes-from-duration.html : @param $duration the duration :)
         declare function functx:total-minutes-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1M') } ;
                    (functx:total-minutes-from-duration( xs:dayTimeDuration('PT1H90M')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"150") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-minutes-from-duration-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of minutes in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-minutes-from-duration.html : @param $duration the duration :)
         declare function functx:total-minutes-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1M') } ;
                    (functx:total-minutes-from-duration( xs:dayTimeDuration('PT3H')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"180") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-minutes-from-duration-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of minutes in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-minutes-from-duration.html : @param $duration the duration :)
         declare function functx:total-minutes-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1M') } ;
                    (functx:total-minutes-from-duration( xs:dayTimeDuration('PT1M30S')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-minutes-from-duration-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of minutes in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-minutes-from-duration.html : @param $duration the duration :)
         declare function functx:total-minutes-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1M') } ;
                    (functx:total-minutes-from-duration( xs:dayTimeDuration('PT90M')), functx:total-minutes-from-duration( xs:dayTimeDuration('PT1H90M')), functx:total-minutes-from-duration( xs:dayTimeDuration('PT3H')), functx:total-minutes-from-duration( xs:dayTimeDuration('PT1M30S')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "90 150 180 1.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-months-from-duration-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of months in a yearMonthDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-months-from-duration.html : @param $duration the duration :)
         declare function functx:total-months-from-duration ( $duration as xs:yearMonthDuration? ) as xs:decimal? { $duration div xs:yearMonthDuration('P1M') } ;
                    (functx:total-months-from-duration( xs:yearMonthDuration('P18M')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"18") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-months-from-duration-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of months in a yearMonthDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-months-from-duration.html : @param $duration the duration :)
         declare function functx:total-months-from-duration ( $duration as xs:yearMonthDuration? ) as xs:decimal? { $duration div xs:yearMonthDuration('P1M') } ;
                    (functx:total-months-from-duration( xs:yearMonthDuration('P1Y')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-months-from-duration-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of months in a yearMonthDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-months-from-duration.html : @param $duration the duration :)
         declare function functx:total-months-from-duration ( $duration as xs:yearMonthDuration? ) as xs:decimal? { $duration div xs:yearMonthDuration('P1M') } ;
                    (functx:total-months-from-duration( xs:yearMonthDuration('P1Y6M')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"18") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-months-from-duration-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of months in a yearMonthDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-months-from-duration.html : @param $duration the duration :)
         declare function functx:total-months-from-duration ( $duration as xs:yearMonthDuration? ) as xs:decimal? { $duration div xs:yearMonthDuration('P1M') } ;
                    (functx:total-months-from-duration( xs:yearMonthDuration('P18M')), functx:total-months-from-duration( xs:yearMonthDuration('P1Y')), functx:total-months-from-duration( xs:yearMonthDuration('P1Y6M')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "18 12 18") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-seconds-from-duration-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of seconds in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-seconds-from-duration.html : @param $duration the duration :)
         declare function functx:total-seconds-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1S') } ;
                    (functx:total-seconds-from-duration( xs:dayTimeDuration('PT90S')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"90") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-seconds-from-duration-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of seconds in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-seconds-from-duration.html : @param $duration the duration :)
         declare function functx:total-seconds-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1S') } ;
                    (functx:total-seconds-from-duration( xs:dayTimeDuration('PT90.5S')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "90.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-seconds-from-duration-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of seconds in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-seconds-from-duration.html : @param $duration the duration :)
         declare function functx:total-seconds-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1S') } ;
                    (functx:total-seconds-from-duration( xs:dayTimeDuration('PT1M30S')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"90") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-seconds-from-duration-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of seconds in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-seconds-from-duration.html : @param $duration the duration :)
         declare function functx:total-seconds-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1S') } ;
                    (functx:total-seconds-from-duration( xs:dayTimeDuration('PT3M')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"180") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-seconds-from-duration-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of seconds in a dayTimeDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-seconds-from-duration.html : @param $duration the duration :)
         declare function functx:total-seconds-from-duration ( $duration as xs:dayTimeDuration? ) as xs:decimal? { $duration div xs:dayTimeDuration('PT1S') } ;
                    (functx:total-seconds-from-duration( xs:dayTimeDuration('PT90S')), functx:total-seconds-from-duration( xs:dayTimeDuration('PT90.5S')), functx:total-seconds-from-duration( xs:dayTimeDuration('PT1M30S')), functx:total-seconds-from-duration( xs:dayTimeDuration('PT3M')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "90 90.5 90 180") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-years-from-duration-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of years in a yearMonthDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-years-from-duration.html : @param $duration the duration :)
         declare function functx:total-years-from-duration ( $duration as xs:yearMonthDuration? ) as xs:decimal? { $duration div xs:yearMonthDuration('P1Y') } ;
                    (functx:total-years-from-duration( xs:yearMonthDuration('P18M')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-years-from-duration-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of years in a yearMonthDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-years-from-duration.html : @param $duration the duration :)
         declare function functx:total-years-from-duration ( $duration as xs:yearMonthDuration? ) as xs:decimal? { $duration div xs:yearMonthDuration('P1Y') } ;
                    (functx:total-years-from-duration( xs:yearMonthDuration('P1Y')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-years-from-duration-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of years in a yearMonthDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-years-from-duration.html : @param $duration the duration :)
         declare function functx:total-years-from-duration ( $duration as xs:yearMonthDuration? ) as xs:decimal? { $duration div xs:yearMonthDuration('P1Y') } ;
                    (functx:total-years-from-duration( xs:yearMonthDuration('P1Y6M')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-total-years-from-duration-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The total number of years in a yearMonthDuration : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_total-years-from-duration.html : @param $duration the duration :)
         declare function functx:total-years-from-duration ( $duration as xs:yearMonthDuration? ) as xs:decimal? { $duration div xs:yearMonthDuration('P1Y') } ;
                    (functx:total-years-from-duration( xs:yearMonthDuration('P18M')), functx:total-years-from-duration( xs:yearMonthDuration('P1Y')), functx:total-years-from-duration( xs:yearMonthDuration('P1Y6M')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.5 1 1.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-trim-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Trims leading and trailing whitespace : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_trim.html : @param $arg the string to trim :)
         declare function functx:trim ( $arg as xs:string? ) as xs:string { replace(replace($arg,'\\s+$',''),'^\\s+','') } ;
                    (functx:trim(' xyz '))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-trim-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Trims leading and trailing whitespace : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_trim.html : @param $arg the string to trim :)
         declare function functx:trim ( $arg as xs:string? ) as xs:string { replace(replace($arg,'\\s+$',''),'^\\s+','') } ;
                    (functx:trim(' xyz'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-trim-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Trims leading and trailing whitespace : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_trim.html : @param $arg the string to trim :)
         declare function functx:trim ( $arg as xs:string? ) as xs:string { replace(replace($arg,'\\s+$',''),'^\\s+','') } ;
                    (functx:trim('x   xyz '))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "x   xyz") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-trim-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Trims leading and trailing whitespace : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_trim.html : @param $arg the string to trim :)
         declare function functx:trim ( $arg as xs:string? ) as xs:string { replace(replace($arg,'\\s+$',''),'^\\s+','') } ;
                    (functx:trim(' xyz '), functx:trim(' xyz'), functx:trim('x   xyz '))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"xyz\", \"xyz\",  \"x   xyz\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-update-attributes-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Updates the attribute value of an XML element : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_update-attributes.html : @param $elements the element(s) for which you wish to update the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:update-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { for $element in $elements return element { node-name($element)} { for $attrName at $seq in $attrNames return if ($element/@*[node-name(.) = $attrName]) then attribute {$attrName} {$attrValues[$seq]} else (), $element/@*[not(node-name(.) = $attrNames)], $element/node() } } ;
                    let $in-xml := <in-xml xmlns:new='http://new'> <a att1='def'>x</a> <b>x</b> <c new:att1='def'>x</c> </in-xml> return (functx:update-attributes( $in-xml/a, xs:QName('att1'), 123))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a att1=\"123\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-update-attributes-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Updates the attribute value of an XML element : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_update-attributes.html : @param $elements the element(s) for which you wish to update the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:update-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { for $element in $elements return element { node-name($element)} { for $attrName at $seq in $attrNames return if ($element/@*[node-name(.) = $attrName]) then attribute {$attrName} {$attrValues[$seq]} else (), $element/@*[not(node-name(.) = $attrNames)], $element/node() } } ;
                    let $in-xml := <in-xml xmlns:new='http://new'> <a att1='def'>x</a> <b>x</b> <c new:att1='def'>x</c> </in-xml> return (functx:update-attributes( $in-xml/a, (xs:QName('att1'),xs:QName('att2')), (1,2)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a att1=\"1\">x</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-update-attributes-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Updates the attribute value of an XML element : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_update-attributes.html : @param $elements the element(s) for which you wish to update the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:update-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { for $element in $elements return element { node-name($element)} { for $attrName at $seq in $attrNames return if ($element/@*[node-name(.) = $attrName]) then attribute {$attrName} {$attrValues[$seq]} else (), $element/@*[not(node-name(.) = $attrNames)], $element/node() } } ;
                    let $in-xml := <in-xml xmlns:new='http://new'> <a att1='def'>x</a> <b>x</b> <c new:att1='def'>x</c> </in-xml> return (functx:update-attributes( $in-xml/b, xs:QName('att1'), 123))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b>x</b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-update-attributes-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Updates the attribute value of an XML element : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_update-attributes.html : @param $elements the element(s) for which you wish to update the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:update-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { for $element in $elements return element { node-name($element)} { for $attrName at $seq in $attrNames return if ($element/@*[node-name(.) = $attrName]) then attribute {$attrName} {$attrValues[$seq]} else (), $element/@*[not(node-name(.) = $attrNames)], $element/node() } } ;
                    let $in-xml := <in-xml xmlns:new='http://new'> <a att1='def'>x</a> <b>x</b> <c new:att1='def'>x</c> </in-xml> return (functx:update-attributes( $in-xml/c, QName('http://new','prefix:att1'), 123))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<c xmlns:prefix=\"http://new\" prefix:att1=\"123\">x</c>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-update-attributes-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Updates the attribute value of an XML element : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_update-attributes.html : @param $elements the element(s) for which you wish to update the attribute : @param $attrNames the name(s) of the attribute(s) to add : @param $attrValues the value(s) of the attribute(s) to add :)
         declare function functx:update-attributes ( $elements as element()* , $attrNames as xs:QName* , $attrValues as xs:anyAtomicType* ) as element()? { for $element in $elements return element { node-name($element)} { for $attrName at $seq in $attrNames return if ($element/@*[node-name(.) = $attrName]) then attribute {$attrName} {$attrValues[$seq]} else (), $element/@*[not(node-name(.) = $attrNames)], $element/node() } } ;
                    let $in-xml := <in-xml xmlns:new='http://new'> <a att1='def'>x</a> <b>x</b> <c new:att1='def'>x</c> </in-xml> return (functx:update-attributes( $in-xml/a, xs:QName('att1'), 123), functx:update-attributes( $in-xml/a, (xs:QName('att1'),xs:QName('att2')), (1,2)), functx:update-attributes( $in-xml/b, xs:QName('att1'), 123), functx:update-attributes( $in-xml/c, QName('http://new','prefix:att1'), 123))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a att1=\"123\">x</a><a att1=\"1\">x</a><b>x</b><c xmlns:prefix=\"http://new\" prefix:att1=\"123\">x</c>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-except-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The values in one sequence that aren't in another sequence : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-except.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-except ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values($arg1[not(.=$arg2)]) } ;
                    (functx:value-except((1,2,3),(3,4,5)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-except-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The values in one sequence that aren't in another sequence : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-except.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-except ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values($arg1[not(.=$arg2)]) } ;
                    (functx:value-except((1,1,2,3),(2,3)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-except-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The values in one sequence that aren't in another sequence : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-except.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-except ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values($arg1[not(.=$arg2)]) } ;
                    (functx:value-except((1,2),(3,4)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-except-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The values in one sequence that aren't in another sequence : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-except.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-except ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values($arg1[not(.=$arg2)]) } ;
                    (functx:value-except((1,2,2,3),()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-except-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The values in one sequence that aren't in another sequence : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-except.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-except ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values($arg1[not(.=$arg2)]) } ;
                    (functx:value-except((1,2,3),(3,4,5)), functx:value-except((1,1,2,3),(2,3)), functx:value-except((1,2),(3,4)), functx:value-except((1,2,2,3),()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 1 1 2 1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-intersect-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The intersection of two sequences of values : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-intersect.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-intersect ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values($arg1[.=$arg2]) } ;
                    (functx:value-intersect((1,2),(2,3)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-intersect-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The intersection of two sequences of values : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-intersect.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-intersect ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values($arg1[.=$arg2]) } ;
                    (functx:value-intersect((1,2,3),(2,3,4)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-intersect-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The intersection of two sequences of values : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-intersect.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-intersect ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values($arg1[.=$arg2]) } ;
                    (functx:value-intersect((1,2,2,3),(2,3)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-intersect-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The intersection of two sequences of values : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-intersect.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-intersect ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values($arg1[.=$arg2]) } ;
                    (functx:value-intersect((1,2,2,3),()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-intersect-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The intersection of two sequences of values : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-intersect.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-intersect ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values($arg1[.=$arg2]) } ;
                    (functx:value-intersect((1,2),(2,3)), functx:value-intersect((1,2,3),(2,3,4)), functx:value-intersect((1,2,2,3),(2,3)), functx:value-intersect((1,2,2,3),()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 2 3 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-union-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The union of two sequences of values : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-union.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-union ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values(($arg1, $arg2)) } ;
                    (functx:value-union((1,2),(3,4)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-union-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The union of two sequences of values : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-union.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-union ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values(($arg1, $arg2)) } ;
                    (functx:value-union((1,2,3),(2,3,4)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-union-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The union of two sequences of values : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-union.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-union ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values(($arg1, $arg2)) } ;
                    (functx:value-union((1,2,2,3),(3,4)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-union-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The union of two sequences of values : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-union.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-union ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values(($arg1, $arg2)) } ;
                    (functx:value-union((1,2,2,3),()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-value-union-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The union of two sequences of values : : @author W3C XML Query Working Group : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_value-union.html : @param $arg1 the first sequence : @param $arg2 the second sequence :)
         declare function functx:value-union ( $arg1 as xs:anyAtomicType* , $arg2 as xs:anyAtomicType* ) as xs:anyAtomicType* { distinct-values(($arg1, $arg2)) } ;
                    (functx:value-union((1,2),(3,4)), functx:value-union((1,2,3),(2,3,4)), functx:value-union((1,2,2,3),(3,4)), functx:value-union((1,2,2,3),()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 1 2 3 4 1 2 3 4 1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-word-count-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The number of words : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_word-count.html : @param $arg the string to measure :)
         declare function functx:word-count ( $arg as xs:string? ) as xs:integer { count(tokenize($arg, '\\W+')[. != '']) } ;
                    (functx:word-count('hello there world'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-word-count-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The number of words : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_word-count.html : @param $arg the string to measure :)
         declare function functx:word-count ( $arg as xs:string? ) as xs:integer { count(tokenize($arg, '\\W+')[. != '']) } ;
                    (functx:word-count(' hello world '))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-word-count-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The number of words : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_word-count.html : @param $arg the string to measure :)
         declare function functx:word-count ( $arg as xs:string? ) as xs:integer { count(tokenize($arg, '\\W+')[. != '']) } ;
                    (functx:word-count('a.b.c'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-word-count-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The number of words : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_word-count.html : @param $arg the string to measure :)
         declare function functx:word-count ( $arg as xs:string? ) as xs:integer { count(tokenize($arg, '\\W+')[. != '']) } ;
                    (functx:word-count('hello there world'), functx:word-count(' hello world '), functx:word-count('a.b.c'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-words-to-camel-case-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Capitalizes the first character of a string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_capitalize-first.html : @param $arg the word or phrase to capitalize :)
         declare function functx:capitalize-first ( $arg as xs:string? ) as xs:string? { concat(upper-case(substring($arg,1,1)), substring($arg,2)) } ;
                    (:~ : Turns a string of words into camelCase : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_words-to-camel-case.html : @param $arg the string to modify :)
         declare function functx:words-to-camel-case ( $arg as xs:string? ) as xs:string { string-join((tokenize($arg,'\\s+')[1], for $word in tokenize($arg,'\\s+')[position() >
                    1] return functx:capitalize-first($word)) ,'') } ;
                    (functx:words-to-camel-case('this Is A Term'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "thisIsATerm") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-words-to-camel-case-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Capitalizes the first character of a string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_capitalize-first.html : @param $arg the word or phrase to capitalize :)
         declare function functx:capitalize-first ( $arg as xs:string? ) as xs:string? { concat(upper-case(substring($arg,1,1)), substring($arg,2)) } ;
                    (:~ : Turns a string of words into camelCase : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_words-to-camel-case.html : @param $arg the string to modify :)
         declare function functx:words-to-camel-case ( $arg as xs:string? ) as xs:string { string-join((tokenize($arg,'\\s+')[1], for $word in tokenize($arg,'\\s+')[position() >
                    1] return functx:capitalize-first($word)) ,'') } ;
                    (functx:words-to-camel-case( 'This is a term'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ThisIsATerm") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-words-to-camel-case-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Capitalizes the first character of a string : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_capitalize-first.html : @param $arg the word or phrase to capitalize :)
         declare function functx:capitalize-first ( $arg as xs:string? ) as xs:string? { concat(upper-case(substring($arg,1,1)), substring($arg,2)) } ;
                    (:~ : Turns a string of words into camelCase : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_words-to-camel-case.html : @param $arg the string to modify :)
         declare function functx:words-to-camel-case ( $arg as xs:string? ) as xs:string { string-join((tokenize($arg,'\\s+')[1], for $word in tokenize($arg,'\\s+')[position() >
                    1] return functx:capitalize-first($word)) ,'') } ;
                    (functx:words-to-camel-case('this Is A Term'), functx:words-to-camel-case( 'This is a term'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "thisIsATerm ThisIsATerm") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-wrap-values-in-elements-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://newns\";
                    (:~ : Wraps a sequence of atomic values in XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_wrap-values-in-elements.html : @param $values the values to wrap in elements : @param $elementName the name of the elements to construct :)
         declare function functx:wrap-values-in-elements ( $values as xs:anyAtomicType* , $elementName as xs:QName ) as element()* { for $value in $values return element {$elementName} {$value} } ;
                    (functx:wrap-values-in-elements( (1,2,3), xs:QName('num')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<num>1</num><num>2</num><num>3</num>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-wrap-values-in-elements-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://newns\";
                    (:~ : Wraps a sequence of atomic values in XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_wrap-values-in-elements.html : @param $values the values to wrap in elements : @param $elementName the name of the elements to construct :)
         declare function functx:wrap-values-in-elements ( $values as xs:anyAtomicType* , $elementName as xs:QName ) as element()* { for $value in $values return element {$elementName} {$value} } ;
                    (functx:wrap-values-in-elements( (1,2,3), xs:QName('new:num')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new:num xmlns:new=\"http://newns\">1</new:num><new:num xmlns:new=\"http://newns\">2</new:num><new:num xmlns:new=\"http://newns\">3</new:num>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-wrap-values-in-elements-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://newns\";
                    (:~ : Wraps a sequence of atomic values in XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_wrap-values-in-elements.html : @param $values the values to wrap in elements : @param $elementName the name of the elements to construct :)
         declare function functx:wrap-values-in-elements ( $values as xs:anyAtomicType* , $elementName as xs:QName ) as element()* { for $value in $values return element {$elementName} {$value} } ;
                    (functx:wrap-values-in-elements( (1,2,3), QName('http://newns','num')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<num xmlns=\"http://newns\">1</num><num xmlns=\"http://newns\">2</num><num xmlns=\"http://newns\">3</num>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-wrap-values-in-elements-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://newns\";
                    (:~ : Wraps a sequence of atomic values in XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_wrap-values-in-elements.html : @param $values the values to wrap in elements : @param $elementName the name of the elements to construct :)
         declare function functx:wrap-values-in-elements ( $values as xs:anyAtomicType* , $elementName as xs:QName ) as element()* { for $value in $values return element {$elementName} {$value} } ;
                    (functx:wrap-values-in-elements( (1,2,3), QName('http://newns','new:num')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<new:num xmlns:new=\"http://newns\">1</new:num><new:num xmlns:new=\"http://newns\">2</new:num><new:num xmlns:new=\"http://newns\">3</new:num>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-wrap-values-in-elements-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
         declare namespace new = \"http://newns\";
                    (:~ : Wraps a sequence of atomic values in XML elements : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_wrap-values-in-elements.html : @param $values the values to wrap in elements : @param $elementName the name of the elements to construct :)
         declare function functx:wrap-values-in-elements ( $values as xs:anyAtomicType* , $elementName as xs:QName ) as element()* { for $value in $values return element {$elementName} {$value} } ;
                    (functx:wrap-values-in-elements( (1,2,3), xs:QName('num')), functx:wrap-values-in-elements( (1,2,3), xs:QName('new:num')), functx:wrap-values-in-elements( (1,2,3), QName('http://newns','num')), functx:wrap-values-in-elements( (1,2,3), QName('http://newns','new:num')))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<num>1</num><num>2</num><num>3</num><new:num xmlns:new=\"http://newns\">1</new:num><new:num xmlns:new=\"http://newns\">2</new:num><new:num xmlns:new=\"http://newns\">3</new:num><num xmlns=\"http://newns\">1</num><num xmlns=\"http://newns\">2</num><num xmlns=\"http://newns\">3</num><new:num xmlns:new=\"http://newns\">1</new:num><new:num xmlns:new=\"http://newns\">2</new:num><new:num xmlns:new=\"http://newns\">3</new:num>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yearMonthDuration-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:yearMonthDuration(1,6))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1Y6M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yearMonthDuration-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:yearMonthDuration(1.5,0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1Y6M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yearMonthDuration-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:yearMonthDuration(1,()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1Y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yearMonthDuration-4'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:yearMonthDuration(1,0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1Y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yearMonthDuration-5'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:yearMonthDuration(-1,-3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P1Y3M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yearMonthDuration-6'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:yearMonthDuration(-1,3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P9M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yearMonthDuration-7'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:yearMonthDuration(0,0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yearMonthDuration-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : The first argument if it is not blank, otherwise the second argument : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_if-empty.html : @param $arg the node that may be empty : @param $value the item(s) to use if the node is empty :)
         declare function functx:if-empty ( $arg as item()? , $value as item()* ) as item()* { if (string($arg) != '') then data($arg) else $value } ;
                    (:~ : Construct a yearMonthDuration from a number of years and months : : @author Priscilla Walmsley, Datypic : @version 1.0 : @see http://www.xqueryfunctions.com/xq/functx_yearmonthduration.html : @param $years the number of years : @param $months the number of months :)
         declare function functx:yearMonthDuration ( $years as xs:decimal? , $months as xs:integer? ) as xs:yearMonthDuration { (xs:yearMonthDuration('P1M') * functx:if-empty($months,0)) + (xs:yearMonthDuration('P1Y') * functx:if-empty($years,0)) } ;
                    (functx:yearMonthDuration(1,6), functx:yearMonthDuration(1.5,0), functx:yearMonthDuration(1,()), functx:yearMonthDuration(1,0), functx:yearMonthDuration(-1,-3), functx:yearMonthDuration(-1,3), functx:yearMonthDuration(0,0))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1Y6M P1Y6M P1Y P1Y -P1Y3M -P9M P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yyyyddmm-to-date-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format YYYYDDMM (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_yyyyddmm-to-date.html : @param $dateString the YYYYDDMM string :)
         declare function functx:yyyyddmm-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$', '$1-$3-$2')) } ;
                    (functx:yyyyddmm-to-date('2004-15-12'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yyyyddmm-to-date-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format YYYYDDMM (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_yyyyddmm-to-date.html : @param $dateString the YYYYDDMM string :)
         declare function functx:yyyyddmm-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$', '$1-$3-$2')) } ;
                    (functx:yyyyddmm-to-date('20041512'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yyyyddmm-to-date-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format YYYYDDMM (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_yyyyddmm-to-date.html : @param $dateString the YYYYDDMM string :)
         declare function functx:yyyyddmm-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$', '$1-$3-$2')) } ;
                    (functx:yyyyddmm-to-date('2004/15/12'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yyyyddmm-to-date-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format YYYYDDMM (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_yyyyddmm-to-date.html : @param $dateString the YYYYDDMM string :)
         declare function functx:yyyyddmm-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$', '$1-$3-$2')) } ;
                    (functx:yyyyddmm-to-date('2004-15-12'), functx:yyyyddmm-to-date('20041512'), functx:yyyyddmm-to-date('2004/15/12'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15 2004-12-15 2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yyyymmdd-to-date-1'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format YYYYMMDD (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_yyyymmdd-to-date.html : @param $dateString the YYYYMMDD string :)
         declare function functx:yyyymmdd-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$', '$1-$2-$3')) } ;
                    (functx:yyyymmdd-to-date('2004-12-15'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yyyymmdd-to-date-2'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format YYYYMMDD (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_yyyymmdd-to-date.html : @param $dateString the YYYYMMDD string :)
         declare function functx:yyyymmdd-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$', '$1-$2-$3')) } ;
                    (functx:yyyymmdd-to-date('20041215'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yyyymmdd-to-date-3'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format YYYYMMDD (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_yyyymmdd-to-date.html : @param $dateString the YYYYMMDD string :)
         declare function functx:yyyymmdd-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$', '$1-$2-$3')) } ;
                    (functx:yyyymmdd-to-date('2004/12/15'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'functx-functx-yyyymmdd-to-date-all'(_Config) ->
   Qry = "declare namespace functx = \"http://www.example.com/\";
                    (:~ : Converts a string with format YYYYMMDD (with any delimiters) to a date : : @author Priscilla Walmsley, Datypic : @version 1.1 : @see http://www.xqueryfunctions.com/xq/functx_yyyymmdd-to-date.html : @param $dateString the YYYYMMDD string :)
         declare function functx:yyyymmdd-to-date ( $dateString as xs:string? ) as xs:date? { if (empty($dateString)) then () else if (not(matches($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$'))) then error(xs:QName('functx:Invalid_Date_Format')) else xs:date(replace($dateString, '^\\D*(\\d{4})\\D*(\\d{2})\\D*(\\d{2})\\D*$', '$1-$2-$3')) } ;
                    (functx:yyyymmdd-to-date('2004-12-15'), functx:yyyymmdd-to-date('20041215'), functx:yyyymmdd-to-date('2004/12/15'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2004-12-15 2004-12-15 2004-12-15") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
