-module('app_spec_examples_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fo-test-fn-string-001'/1]).
-export(['fo-test-fn-string-002'/1]).
-export(['fo-test-fn-string-003'/1]).
-export(['fo-test-fn-string-004'/1]).
-export(['fo-test-fn-string-005'/1]).
-export(['fo-test-fn-string-006'/1]).
-export(['fo-test-fn-string-007'/1]).
-export(['fo-test-fn-data-001'/1]).
-export(['fo-test-fn-data-002'/1]).
-export(['fo-test-fn-data-003'/1]).
-export(['fo-test-fn-data-004'/1]).
-export(['fo-test-fn-data-005'/1]).
-export(['fo-test-fn-data-006'/1]).
-export(['fo-test-fn-error-001'/1]).
-export(['fo-test-fn-error-002'/1]).
-export(['fo-test-fn-abs-001'/1]).
-export(['fo-test-fn-abs-002'/1]).
-export(['fo-test-fn-ceiling-001'/1]).
-export(['fo-test-fn-ceiling-002'/1]).
-export(['fo-test-fn-floor-001'/1]).
-export(['fo-test-fn-floor-002'/1]).
-export(['fo-test-fn-round-001'/1]).
-export(['fo-test-fn-round-002'/1]).
-export(['fo-test-fn-round-003'/1]).
-export(['fo-test-fn-round-004'/1]).
-export(['fo-test-fn-round-005'/1]).
-export(['fo-test-fn-round-006'/1]).
-export(['fo-test-fn-round-half-to-even-001'/1]).
-export(['fo-test-fn-round-half-to-even-002'/1]).
-export(['fo-test-fn-round-half-to-even-003'/1]).
-export(['fo-test-fn-round-half-to-even-004'/1]).
-export(['fo-test-fn-round-half-to-even-005'/1]).
-export(['fo-test-fn-round-half-to-even-006'/1]).
-export(['fo-test-fn-format-integer-001'/1]).
-export(['fo-test-fn-format-integer-002'/1]).
-export(['fo-test-fn-format-integer-003'/1]).
-export(['fo-test-fn-format-integer-004'/1]).
-export(['fo-test-fn-format-integer-005'/1]).
-export(['fo-test-fn-format-number-001'/1]).
-export(['fo-test-fn-format-number-002'/1]).
-export(['fo-test-fn-format-number-003'/1]).
-export(['fo-test-fn-format-number-004'/1]).
-export(['fo-test-fn-format-number-005'/1]).
-export(['fo-test-fn-format-number-006'/1]).
-export(['fo-test-fn-format-number-007'/1]).
-export(['fo-test-fn-format-number-008'/1]).
-export(['fo-test-fn-format-number-009'/1]).
-export(['fo-test-fn-format-number-010'/1]).
-export(['fo-test-math-pi-001'/1]).
-export(['fo-test-math-exp-001'/1]).
-export(['fo-test-math-exp-002'/1]).
-export(['fo-test-math-exp-003'/1]).
-export(['fo-test-math-exp-004'/1]).
-export(['fo-test-math-exp-005'/1]).
-export(['fo-test-math-exp-006'/1]).
-export(['fo-test-math-exp-007'/1]).
-export(['fo-test-math-exp-008'/1]).
-export(['fo-test-math-exp-009'/1]).
-export(['fo-test-math-exp10-001'/1]).
-export(['fo-test-math-exp10-002'/1]).
-export(['fo-test-math-exp10-003'/1]).
-export(['fo-test-math-exp10-004'/1]).
-export(['fo-test-math-exp10-005'/1]).
-export(['fo-test-math-exp10-006'/1]).
-export(['fo-test-math-exp10-007'/1]).
-export(['fo-test-math-exp10-008'/1]).
-export(['fo-test-math-log-001'/1]).
-export(['fo-test-math-log-002'/1]).
-export(['fo-test-math-log-003'/1]).
-export(['fo-test-math-log-004'/1]).
-export(['fo-test-math-log-005'/1]).
-export(['fo-test-math-log-006'/1]).
-export(['fo-test-math-log-007'/1]).
-export(['fo-test-math-log-008'/1]).
-export(['fo-test-math-log-009'/1]).
-export(['fo-test-math-log10-001'/1]).
-export(['fo-test-math-log10-002'/1]).
-export(['fo-test-math-log10-003'/1]).
-export(['fo-test-math-log10-004'/1]).
-export(['fo-test-math-log10-005'/1]).
-export(['fo-test-math-log10-006'/1]).
-export(['fo-test-math-log10-007'/1]).
-export(['fo-test-math-log10-008'/1]).
-export(['fo-test-math-log10-009'/1]).
-export(['fo-test-math-sqrt-001'/1]).
-export(['fo-test-math-sqrt-002'/1]).
-export(['fo-test-math-sqrt-003'/1]).
-export(['fo-test-math-sqrt-004'/1]).
-export(['fo-test-math-sqrt-005'/1]).
-export(['fo-test-math-sqrt-006'/1]).
-export(['fo-test-math-sqrt-007'/1]).
-export(['fo-test-math-sqrt-008'/1]).
-export(['fo-test-math-sqrt-009'/1]).
-export(['fo-test-math-pow-001'/1]).
-export(['fo-test-math-pow-002'/1]).
-export(['fo-test-math-pow-003'/1]).
-export(['fo-test-math-pow-004'/1]).
-export(['fo-test-math-pow-005'/1]).
-export(['fo-test-math-pow-006'/1]).
-export(['fo-test-math-pow-007'/1]).
-export(['fo-test-math-pow-008'/1]).
-export(['fo-test-math-pow-009'/1]).
-export(['fo-test-math-pow-010'/1]).
-export(['fo-test-math-pow-011'/1]).
-export(['fo-test-math-pow-012'/1]).
-export(['fo-test-math-pow-013'/1]).
-export(['fo-test-math-pow-014'/1]).
-export(['fo-test-math-pow-015'/1]).
-export(['fo-test-math-pow-016'/1]).
-export(['fo-test-math-pow-017'/1]).
-export(['fo-test-math-pow-018'/1]).
-export(['fo-test-math-pow-019'/1]).
-export(['fo-test-math-pow-020'/1]).
-export(['fo-test-math-pow-021'/1]).
-export(['fo-test-math-pow-022'/1]).
-export(['fo-test-math-pow-023'/1]).
-export(['fo-test-math-pow-024'/1]).
-export(['fo-test-math-pow-025'/1]).
-export(['fo-test-math-pow-026'/1]).
-export(['fo-test-math-pow-027'/1]).
-export(['fo-test-math-pow-028'/1]).
-export(['fo-test-math-pow-029'/1]).
-export(['fo-test-math-pow-030'/1]).
-export(['fo-test-math-pow-031'/1]).
-export(['fo-test-math-pow-032'/1]).
-export(['fo-test-math-pow-033'/1]).
-export(['fo-test-math-pow-034'/1]).
-export(['fo-test-math-pow-035'/1]).
-export(['fo-test-math-sin-001'/1]).
-export(['fo-test-math-sin-002'/1]).
-export(['fo-test-math-sin-003'/1]).
-export(['fo-test-math-sin-004'/1]).
-export(['fo-test-math-sin-005'/1]).
-export(['fo-test-math-sin-006'/1]).
-export(['fo-test-math-sin-007'/1]).
-export(['fo-test-math-sin-008'/1]).
-export(['fo-test-math-sin-009'/1]).
-export(['fo-test-math-cos-001'/1]).
-export(['fo-test-math-cos-002'/1]).
-export(['fo-test-math-cos-003'/1]).
-export(['fo-test-math-cos-004'/1]).
-export(['fo-test-math-cos-005'/1]).
-export(['fo-test-math-cos-006'/1]).
-export(['fo-test-math-cos-007'/1]).
-export(['fo-test-math-cos-008'/1]).
-export(['fo-test-math-cos-009'/1]).
-export(['fo-test-math-tan-001'/1]).
-export(['fo-test-math-tan-002'/1]).
-export(['fo-test-math-tan-003'/1]).
-export(['fo-test-math-tan-004'/1]).
-export(['fo-test-math-tan-005'/1]).
-export(['fo-test-math-tan-006'/1]).
-export(['fo-test-math-tan-007'/1]).
-export(['fo-test-math-tan-008'/1]).
-export(['fo-test-math-tan-009'/1]).
-export(['fo-test-math-tan-010'/1]).
-export(['fo-test-math-tan-011'/1]).
-export(['fo-test-math-asin-001'/1]).
-export(['fo-test-math-asin-002'/1]).
-export(['fo-test-math-asin-003'/1]).
-export(['fo-test-math-asin-004'/1]).
-export(['fo-test-math-asin-005'/1]).
-export(['fo-test-math-asin-006'/1]).
-export(['fo-test-math-asin-007'/1]).
-export(['fo-test-math-asin-008'/1]).
-export(['fo-test-math-asin-009'/1]).
-export(['fo-test-math-acos-001'/1]).
-export(['fo-test-math-acos-002'/1]).
-export(['fo-test-math-acos-003'/1]).
-export(['fo-test-math-acos-004'/1]).
-export(['fo-test-math-acos-005'/1]).
-export(['fo-test-math-acos-006'/1]).
-export(['fo-test-math-acos-007'/1]).
-export(['fo-test-math-acos-008'/1]).
-export(['fo-test-math-acos-009'/1]).
-export(['fo-test-math-atan-001'/1]).
-export(['fo-test-math-atan-002'/1]).
-export(['fo-test-math-atan-003'/1]).
-export(['fo-test-math-atan-004'/1]).
-export(['fo-test-math-atan-005'/1]).
-export(['fo-test-math-atan-006'/1]).
-export(['fo-test-math-atan-007'/1]).
-export(['fo-test-math-atan-008'/1]).
-export(['fo-test-math-atan2-001'/1]).
-export(['fo-test-math-atan2-002'/1]).
-export(['fo-test-math-atan2-003'/1]).
-export(['fo-test-math-atan2-004'/1]).
-export(['fo-test-math-atan2-005'/1]).
-export(['fo-test-math-atan2-006'/1]).
-export(['fo-test-math-atan2-007'/1]).
-export(['fo-test-math-atan2-008'/1]).
-export(['fo-test-math-atan2-009'/1]).
-export(['fo-test-math-atan2-010'/1]).
-export(['fo-test-fn-codepoints-to-string-001'/1]).
-export(['fo-test-fn-codepoints-to-string-002'/1]).
-export(['fo-test-fn-codepoints-to-string-003'/1]).
-export(['fo-test-fn-codepoints-to-string-004'/1]).
-export(['fo-test-fn-string-to-codepoints-001'/1]).
-export(['fo-test-fn-compare-001'/1]).
-export(['fo-test-fn-compare-002'/1]).
-export(['fo-test-fn-compare-003'/1]).
-export(['fo-test-fn-compare-004'/1]).
-export(['fo-test-fn-codepoint-equal-001'/1]).
-export(['fo-test-fn-codepoint-equal-002'/1]).
-export(['fo-test-fn-codepoint-equal-003'/1]).
-export(['fo-test-fn-codepoint-equal-004'/1]).
-export(['fo-test-fn-codepoint-equal-005'/1]).
-export(['fo-test-fn-concat-001'/1]).
-export(['fo-test-fn-concat-002'/1]).
-export(['fo-test-fn-concat-003'/1]).
-export(['fo-test-fn-concat-004'/1]).
-export(['fo-test-fn-concat-005'/1]).
-export(['fo-test-fn-concat-006'/1]).
-export(['fo-test-fn-string-join-001'/1]).
-export(['fo-test-fn-string-join-002'/1]).
-export(['fo-test-fn-string-join-003'/1]).
-export(['fo-test-fn-string-join-004'/1]).
-export(['fo-test-fn-string-join-005'/1]).
-export(['fo-test-fn-string-join-006'/1]).
-export(['fo-test-fn-string-join-007'/1]).
-export(['fo-test-fn-substring-001'/1]).
-export(['fo-test-fn-substring-002'/1]).
-export(['fo-test-fn-substring-003'/1]).
-export(['fo-test-fn-substring-004'/1]).
-export(['fo-test-fn-substring-005'/1]).
-export(['fo-test-fn-substring-006'/1]).
-export(['fo-test-fn-substring-007'/1]).
-export(['fo-test-fn-substring-008'/1]).
-export(['fo-test-fn-substring-009'/1]).
-export(['fo-test-fn-substring-010'/1]).
-export(['fo-test-fn-substring-011'/1]).
-export(['fo-test-fn-string-length-001'/1]).
-export(['fo-test-fn-string-length-002'/1]).
-export(['fo-test-fn-normalize-space-001'/1]).
-export(['fo-test-fn-normalize-space-002'/1]).
-export(['fo-test-fn-upper-case-001'/1]).
-export(['fo-test-fn-lower-case-001'/1]).
-export(['fo-test-fn-translate-001'/1]).
-export(['fo-test-fn-translate-002'/1]).
-export(['fo-test-fn-translate-003'/1]).
-export(['fo-test-fn-encode-for-uri-001'/1]).
-export(['fo-test-fn-encode-for-uri-002'/1]).
-export(['fo-test-fn-encode-for-uri-003'/1]).
-export(['fo-test-fn-iri-to-uri-001'/1]).
-export(['fo-test-fn-iri-to-uri-002'/1]).
-export(['fo-test-fn-escape-html-uri-001'/1]).
-export(['fo-test-fn-escape-html-uri-002'/1]).
-export(['fo-test-fn-contains-001'/1]).
-export(['fo-test-fn-contains-002'/1]).
-export(['fo-test-fn-contains-003'/1]).
-export(['fo-test-fn-contains-004'/1]).
-export(['fo-test-fn-contains-005'/1]).
-export(['fo-test-fn-contains-006'/1]).
-export(['fo-test-fn-contains-007'/1]).
-export(['fo-test-fn-starts-with-001'/1]).
-export(['fo-test-fn-starts-with-002'/1]).
-export(['fo-test-fn-starts-with-003'/1]).
-export(['fo-test-fn-starts-with-004'/1]).
-export(['fo-test-fn-starts-with-005'/1]).
-export(['fo-test-fn-starts-with-006'/1]).
-export(['fo-test-fn-starts-with-007'/1]).
-export(['fo-test-fn-starts-with-008'/1]).
-export(['fo-test-fn-ends-with-001'/1]).
-export(['fo-test-fn-ends-with-002'/1]).
-export(['fo-test-fn-ends-with-003'/1]).
-export(['fo-test-fn-ends-with-004'/1]).
-export(['fo-test-fn-ends-with-005'/1]).
-export(['fo-test-fn-ends-with-006'/1]).
-export(['fo-test-fn-ends-with-007'/1]).
-export(['fo-test-fn-ends-with-008'/1]).
-export(['fo-test-fn-substring-before-001'/1]).
-export(['fo-test-fn-substring-before-002'/1]).
-export(['fo-test-fn-substring-before-003'/1]).
-export(['fo-test-fn-substring-before-004'/1]).
-export(['fo-test-fn-substring-before-005'/1]).
-export(['fo-test-fn-substring-before-006'/1]).
-export(['fo-test-fn-substring-before-007'/1]).
-export(['fo-test-fn-substring-after-001'/1]).
-export(['fo-test-fn-substring-after-002'/1]).
-export(['fo-test-fn-substring-after-003'/1]).
-export(['fo-test-fn-substring-after-004'/1]).
-export(['fo-test-fn-substring-after-005'/1]).
-export(['fo-test-fn-substring-after-006'/1]).
-export(['fo-test-fn-substring-after-007'/1]).
-export(['fo-test-fn-matches-001'/1]).
-export(['fo-test-fn-matches-002'/1]).
-export(['fo-test-fn-matches-003'/1]).
-export(['fo-test-fn-matches-004'/1]).
-export(['fo-test-fn-matches-005'/1]).
-export(['fo-test-fn-matches-006'/1]).
-export(['fo-test-fn-matches-007'/1]).
-export(['fo-test-fn-matches-008'/1]).
-export(['fo-test-fn-replace-001'/1]).
-export(['fo-test-fn-replace-002'/1]).
-export(['fo-test-fn-replace-003'/1]).
-export(['fo-test-fn-replace-004'/1]).
-export(['fo-test-fn-replace-005'/1]).
-export(['fo-test-fn-replace-006'/1]).
-export(['fo-test-fn-replace-007'/1]).
-export(['fo-test-fn-replace-008'/1]).
-export(['fo-test-fn-tokenize-001'/1]).
-export(['fo-test-fn-tokenize-002'/1]).
-export(['fo-test-fn-tokenize-003'/1]).
-export(['fo-test-fn-tokenize-004'/1]).
-export(['fo-test-fn-tokenize-005'/1]).
-export(['fo-test-fn-tokenize-006'/1]).
-export(['fo-test-fn-analyze-string-001'/1]).
-export(['fo-test-fn-analyze-string-002'/1]).
-export(['fo-test-fn-analyze-string-003'/1]).
-export(['fo-test-fn-contains-token-001'/1]).
-export(['fo-test-fn-contains-token-002'/1]).
-export(['fo-test-fn-contains-token-003'/1]).
-export(['fo-test-fn-contains-token-004'/1]).
-export(['fo-test-fn-true-001'/1]).
-export(['fo-test-fn-false-001'/1]).
-export(['fo-test-fn-boolean-001'/1]).
-export(['fo-test-fn-boolean-002'/1]).
-export(['fo-test-fn-boolean-003'/1]).
-export(['fo-test-fn-not-001'/1]).
-export(['fo-test-fn-not-002'/1]).
-export(['fo-test-fn-not-003'/1]).
-export(['fo-test-fn-years-from-duration-001'/1]).
-export(['fo-test-fn-years-from-duration-002'/1]).
-export(['fo-test-fn-years-from-duration-003'/1]).
-export(['fo-test-fn-months-from-duration-001'/1]).
-export(['fo-test-fn-months-from-duration-002'/1]).
-export(['fo-test-fn-months-from-duration-003'/1]).
-export(['fo-test-fn-days-from-duration-001'/1]).
-export(['fo-test-fn-days-from-duration-002'/1]).
-export(['fo-test-fn-days-from-duration-003'/1]).
-export(['fo-test-fn-hours-from-duration-001'/1]).
-export(['fo-test-fn-hours-from-duration-002'/1]).
-export(['fo-test-fn-hours-from-duration-003'/1]).
-export(['fo-test-fn-hours-from-duration-004'/1]).
-export(['fo-test-fn-minutes-from-duration-001'/1]).
-export(['fo-test-fn-minutes-from-duration-002'/1]).
-export(['fo-test-fn-seconds-from-duration-001'/1]).
-export(['fo-test-fn-seconds-from-duration-002'/1]).
-export(['fo-test-fn-dateTime-001'/1]).
-export(['fo-test-fn-dateTime-002'/1]).
-export(['fo-test-fn-year-from-dateTime-001'/1]).
-export(['fo-test-fn-year-from-dateTime-002'/1]).
-export(['fo-test-fn-year-from-dateTime-003'/1]).
-export(['fo-test-fn-year-from-dateTime-004'/1]).
-export(['fo-test-fn-year-from-dateTime-005'/1]).
-export(['fo-test-fn-month-from-dateTime-001'/1]).
-export(['fo-test-fn-month-from-dateTime-002'/1]).
-export(['fo-test-fn-month-from-dateTime-003'/1]).
-export(['fo-test-fn-day-from-dateTime-001'/1]).
-export(['fo-test-fn-day-from-dateTime-002'/1]).
-export(['fo-test-fn-day-from-dateTime-003'/1]).
-export(['fo-test-fn-hours-from-dateTime-001'/1]).
-export(['fo-test-fn-hours-from-dateTime-002'/1]).
-export(['fo-test-fn-hours-from-dateTime-003'/1]).
-export(['fo-test-fn-hours-from-dateTime-004'/1]).
-export(['fo-test-fn-hours-from-dateTime-005'/1]).
-export(['fo-test-fn-minutes-from-dateTime-001'/1]).
-export(['fo-test-fn-minutes-from-dateTime-002'/1]).
-export(['fo-test-fn-seconds-from-dateTime-001'/1]).
-export(['fo-test-fn-timezone-from-dateTime-001'/1]).
-export(['fo-test-fn-timezone-from-dateTime-002'/1]).
-export(['fo-test-fn-timezone-from-dateTime-003'/1]).
-export(['fo-test-fn-year-from-date-001'/1]).
-export(['fo-test-fn-year-from-date-002'/1]).
-export(['fo-test-fn-year-from-date-003'/1]).
-export(['fo-test-fn-month-from-date-001'/1]).
-export(['fo-test-fn-month-from-date-002'/1]).
-export(['fo-test-fn-day-from-date-001'/1]).
-export(['fo-test-fn-day-from-date-002'/1]).
-export(['fo-test-fn-timezone-from-date-001'/1]).
-export(['fo-test-fn-timezone-from-date-002'/1]).
-export(['fo-test-fn-hours-from-time-001'/1]).
-export(['fo-test-fn-hours-from-time-002'/1]).
-export(['fo-test-fn-hours-from-time-003'/1]).
-export(['fo-test-fn-hours-from-time-004'/1]).
-export(['fo-test-fn-hours-from-time-005'/1]).
-export(['fo-test-fn-minutes-from-time-001'/1]).
-export(['fo-test-fn-seconds-from-time-001'/1]).
-export(['fo-test-fn-timezone-from-time-001'/1]).
-export(['fo-test-fn-timezone-from-time-002'/1]).
-export(['fo-test-fn-adjust-dateTime-to-timezone-002'/1]).
-export(['fo-test-fn-adjust-dateTime-to-timezone-003'/1]).
-export(['fo-test-fn-adjust-dateTime-to-timezone-004'/1]).
-export(['fo-test-fn-adjust-dateTime-to-timezone-005'/1]).
-export(['fo-test-fn-adjust-dateTime-to-timezone-006'/1]).
-export(['fo-test-fn-adjust-dateTime-to-timezone-007'/1]).
-export(['fo-test-fn-adjust-dateTime-to-timezone-008'/1]).
-export(['fo-test-fn-adjust-date-to-timezone-003'/1]).
-export(['fo-test-fn-adjust-date-to-timezone-004'/1]).
-export(['fo-test-fn-adjust-date-to-timezone-005'/1]).
-export(['fo-test-fn-adjust-date-to-timezone-006'/1]).
-export(['fo-test-fn-adjust-time-to-timezone-002'/1]).
-export(['fo-test-fn-adjust-time-to-timezone-003'/1]).
-export(['fo-test-fn-adjust-time-to-timezone-004'/1]).
-export(['fo-test-fn-adjust-time-to-timezone-005'/1]).
-export(['fo-test-fn-adjust-time-to-timezone-006'/1]).
-export(['fo-test-fn-adjust-time-to-timezone-007'/1]).
-export(['fo-test-fn-parse-ietf-date-001'/1]).
-export(['fo-test-fn-parse-ietf-date-002'/1]).
-export(['fo-test-fn-parse-ietf-date-003'/1]).
-export(['fo-test-fn-parse-ietf-date-004'/1]).
-export(['fo-test-fn-parse-ietf-date-005'/1]).
-export(['fo-test-fn-local-name-from-QName-001'/1]).
-export(['fo-test-fn-namespace-uri-from-QName-001'/1]).
-export(['fo-test-fn-namespace-uri-for-prefix-001'/1]).
-export(['fo-test-fn-namespace-uri-for-prefix-002'/1]).
-export(['fo-test-fn-namespace-uri-for-prefix-003'/1]).
-export(['fo-test-fn-namespace-uri-for-prefix-004'/1]).
-export(['fo-test-fn-namespace-uri-for-prefix-005'/1]).
-export(['fo-test-fn-number-001'/1]).
-export(['fo-test-fn-number-002'/1]).
-export(['fo-test-fn-path-001'/1]).
-export(['fo-test-fn-path-002'/1]).
-export(['fo-test-fn-path-003'/1]).
-export(['fo-test-fn-path-004'/1]).
-export(['fo-test-fn-path-005'/1]).
-export(['fo-test-fn-path-006'/1]).
-export(['fo-test-fn-path-007'/1]).
-export(['fo-test-fn-path-008'/1]).
-export(['fo-test-fn-path-009'/1]).
-export(['fo-test-fn-index-of-001'/1]).
-export(['fo-test-fn-index-of-002'/1]).
-export(['fo-test-fn-index-of-003'/1]).
-export(['fo-test-fn-index-of-004'/1]).
-export(['fo-test-fn-index-of-005'/1]).
-export(['fo-test-fn-empty-001'/1]).
-export(['fo-test-fn-empty-002'/1]).
-export(['fo-test-fn-empty-003'/1]).
-export(['fo-test-fn-empty-004'/1]).
-export(['fo-test-fn-empty-005'/1]).
-export(['fo-test-fn-exists-001'/1]).
-export(['fo-test-fn-exists-002'/1]).
-export(['fo-test-fn-exists-003'/1]).
-export(['fo-test-fn-exists-004'/1]).
-export(['fo-test-fn-exists-005'/1]).
-export(['fo-test-fn-distinct-values-001'/1]).
-export(['fo-test-fn-distinct-values-002'/1]).
-export(['fo-test-fn-insert-before-001'/1]).
-export(['fo-test-fn-insert-before-002'/1]).
-export(['fo-test-fn-insert-before-003'/1]).
-export(['fo-test-fn-insert-before-004'/1]).
-export(['fo-test-fn-insert-before-005'/1]).
-export(['fo-test-fn-remove-001'/1]).
-export(['fo-test-fn-remove-002'/1]).
-export(['fo-test-fn-remove-003'/1]).
-export(['fo-test-fn-remove-004'/1]).
-export(['fo-test-fn-head-001'/1]).
-export(['fo-test-fn-head-002'/1]).
-export(['fo-test-fn-head-003'/1]).
-export(['fo-test-fn-head-004'/1]).
-export(['fo-test-fn-tail-001'/1]).
-export(['fo-test-fn-tail-002'/1]).
-export(['fo-test-fn-tail-003'/1]).
-export(['fo-test-fn-tail-004'/1]).
-export(['fo-test-fn-tail-005'/1]).
-export(['fo-test-fn-reverse-001'/1]).
-export(['fo-test-fn-reverse-002'/1]).
-export(['fo-test-fn-reverse-003'/1]).
-export(['fo-test-fn-reverse-004'/1]).
-export(['fo-test-fn-reverse-005'/1]).
-export(['fo-test-fn-subsequence-001'/1]).
-export(['fo-test-fn-subsequence-002'/1]).
-export(['fo-test-fn-unordered-001'/1]).
-export(['fo-test-fn-deep-equal-001'/1]).
-export(['fo-test-fn-deep-equal-002'/1]).
-export(['fo-test-fn-deep-equal-003'/1]).
-export(['fo-test-fn-deep-equal-004'/1]).
-export(['fo-test-fn-deep-equal-005'/1]).
-export(['fo-test-fn-deep-equal-006'/1]).
-export(['fo-test-fn-deep-equal-007'/1]).
-export(['fo-test-fn-count-001'/1]).
-export(['fo-test-fn-count-002'/1]).
-export(['fo-test-fn-count-003'/1]).
-export(['fo-test-fn-count-004'/1]).
-export(['fo-test-fn-count-005'/1]).
-export(['fo-test-fn-count-006'/1]).
-export(['fo-test-fn-avg-001'/1]).
-export(['fo-test-fn-avg-002'/1]).
-export(['fo-test-fn-avg-003'/1]).
-export(['fo-test-fn-avg-004'/1]).
-export(['fo-test-fn-avg-005'/1]).
-export(['fo-test-fn-max-001'/1]).
-export(['fo-test-fn-max-002'/1]).
-export(['fo-test-fn-max-003'/1]).
-export(['fo-test-fn-max-004'/1]).
-export(['fo-test-fn-max-005'/1]).
-export(['fo-test-fn-min-001'/1]).
-export(['fo-test-fn-min-002'/1]).
-export(['fo-test-fn-min-003'/1]).
-export(['fo-test-fn-min-004'/1]).
-export(['fo-test-fn-min-005'/1]).
-export(['fo-test-fn-sum-001'/1]).
-export(['fo-test-fn-sum-002'/1]).
-export(['fo-test-fn-sum-003'/1]).
-export(['fo-test-fn-sum-004'/1]).
-export(['fo-test-fn-sum-005'/1]).
-export(['fo-test-fn-sum-006'/1]).
-export(['fo-test-fn-sum-007'/1]).
-export(['fo-test-fn-sum-008'/1]).
-export(['fo-test-fn-sum-009'/1]).
-export(['fo-test-fn-id-001'/1]).
-export(['fo-test-fn-id-002'/1]).
-export(['fo-test-fn-element-with-id-001'/1]).
-export(['fo-test-fn-element-with-id-002'/1]).
-export(['fo-test-fn-idref-001'/1]).
-export(['fo-test-fn-idref-002'/1]).
-export(['fo-test-fn-serialize-001'/1]).
-export(['fo-test-fn-serialize-002'/1]).
-export(['fo-test-fn-last-001'/1]).
-export(['fo-test-fn-function-lookup-001'/1]).
-export(['fo-test-fn-function-name-001'/1]).
-export(['fo-test-fn-function-name-002'/1]).
-export(['fo-test-fn-function-arity-001'/1]).
-export(['fo-test-fn-function-arity-002'/1]).
-export(['fo-test-fn-function-arity-003'/1]).
-export(['fo-test-fn-for-each-001'/1]).
-export(['fo-test-fn-for-each-002'/1]).
-export(['fo-test-fn-for-each-003'/1]).
-export(['fo-test-fn-filter-001'/1]).
-export(['fo-test-fn-filter-002'/1]).
-export(['fo-test-fn-fold-left-001'/1]).
-export(['fo-test-fn-fold-left-002'/1]).
-export(['fo-test-fn-fold-left-003'/1]).
-export(['fo-test-fn-fold-left-004'/1]).
-export(['fo-test-fn-fold-left-005'/1]).
-export(['fo-test-fn-fold-left-006'/1]).
-export(['fo-test-fn-fold-left-007'/1]).
-export(['fo-test-fn-fold-left-008'/1]).
-export(['fo-test-fn-fold-right-001'/1]).
-export(['fo-test-fn-fold-right-002'/1]).
-export(['fo-test-fn-fold-right-003'/1]).
-export(['fo-test-fn-for-each-pair-001'/1]).
-export(['fo-test-fn-for-each-pair-002'/1]).
-export(['fo-test-fn-for-each-pair-003'/1]).
-export(['fo-test-fn-sort-001'/1]).
-export(['fo-test-fn-sort-002'/1]).
-export(['fo-test-fn-apply-001'/1]).
-export(['fo-test-map-merge-001'/1]).
-export(['fo-test-map-merge-002'/1]).
-export(['fo-test-map-merge-003'/1]).
-export(['fo-test-map-merge-004'/1]).
-export(['fo-test-map-merge-005'/1]).
-export(['fo-test-map-merge-006'/1]).
-export(['fo-test-map-keys-001'/1]).
-export(['fo-test-map-contains-001'/1]).
-export(['fo-test-map-contains-002'/1]).
-export(['fo-test-map-contains-003'/1]).
-export(['fo-test-map-contains-004'/1]).
-export(['fo-test-map-contains-005'/1]).
-export(['fo-test-map-get-001'/1]).
-export(['fo-test-map-get-002'/1]).
-export(['fo-test-map-get-003'/1]).
-export(['fo-test-map-find-001'/1]).
-export(['fo-test-map-find-002'/1]).
-export(['fo-test-map-find-003'/1]).
-export(['fo-test-map-find-004'/1]).
-export(['fo-test-map-put-001'/1]).
-export(['fo-test-map-put-002'/1]).
-export(['fo-test-map-entry-001'/1]).
-export(['fo-test-map-remove-001'/1]).
-export(['fo-test-map-remove-002'/1]).
-export(['fo-test-map-remove-003'/1]).
-export(['fo-test-map-remove-004'/1]).
-export(['fo-test-map-for-each-001'/1]).
-export(['fo-test-map-for-each-002'/1]).
-export(['fo-test-map-for-each-003'/1]).
-export(['fo-test-map-size-001'/1]).
-export(['fo-test-map-size-002'/1]).
-export(['fo-test-fn-collation-key-001'/1]).
-export(['fo-test-fn-collation-key-002'/1]).
-export(['fo-test-fn-json-to-xml-001'/1]).
-export(['fo-test-fn-json-to-xml-002'/1]).
-export(['fo-test-fn-json-to-xml-003'/1]).
-export(['fo-test-fn-json-to-xml-004'/1]).
-export(['fo-test-fn-parse-json-001'/1]).
-export(['fo-test-fn-parse-json-002'/1]).
-export(['fo-test-fn-parse-json-003'/1]).
-export(['fo-test-fn-parse-json-004'/1]).
-export(['fo-test-fn-parse-json-005'/1]).
-export(['fo-test-fn-parse-json-006'/1]).
-export(['fo-test-fn-parse-json-007'/1]).
-export(['fo-test-array-size-001'/1]).
-export(['fo-test-array-size-002'/1]).
-export(['fo-test-array-size-003'/1]).
-export(['fo-test-array-size-004'/1]).
-export(['fo-test-array-get-001'/1]).
-export(['fo-test-array-get-002'/1]).
-export(['fo-test-array-put-001'/1]).
-export(['fo-test-array-put-002'/1]).
-export(['fo-test-array-put-003'/1]).
-export(['fo-test-array-append-001'/1]).
-export(['fo-test-array-append-002'/1]).
-export(['fo-test-array-append-003'/1]).
-export(['fo-test-array-join-001'/1]).
-export(['fo-test-array-join-002'/1]).
-export(['fo-test-array-join-003'/1]).
-export(['fo-test-array-join-004'/1]).
-export(['fo-test-array-join-005'/1]).
-export(['fo-test-array-subarray-001'/1]).
-export(['fo-test-array-subarray-002'/1]).
-export(['fo-test-array-subarray-003'/1]).
-export(['fo-test-array-subarray-004'/1]).
-export(['fo-test-array-subarray-005'/1]).
-export(['fo-test-array-subarray-006'/1]).
-export(['fo-test-array-subarray-007'/1]).
-export(['fo-test-array-remove-001'/1]).
-export(['fo-test-array-remove-002'/1]).
-export(['fo-test-array-remove-003'/1]).
-export(['fo-test-array-remove-004'/1]).
-export(['fo-test-array-remove-005'/1]).
-export(['fo-test-array-insert-before-001'/1]).
-export(['fo-test-array-insert-before-002'/1]).
-export(['fo-test-array-insert-before-003'/1]).
-export(['fo-test-array-head-001'/1]).
-export(['fo-test-array-head-002'/1]).
-export(['fo-test-array-head-003'/1]).
-export(['fo-test-array-tail-001'/1]).
-export(['fo-test-array-tail-002'/1]).
-export(['fo-test-array-reverse-001'/1]).
-export(['fo-test-array-reverse-002'/1]).
-export(['fo-test-array-reverse-003'/1]).
-export(['fo-test-array-reverse-004'/1]).
-export(['fo-test-array-for-each-001'/1]).
-export(['fo-test-array-for-each-002'/1]).
-export(['fo-test-array-filter-001'/1]).
-export(['fo-test-array-filter-002'/1]).
-export(['fo-test-array-filter-003'/1]).
-export(['fo-test-array-fold-left-001'/1]).
-export(['fo-test-array-fold-left-002'/1]).
-export(['fo-test-array-fold-left-003'/1]).
-export(['fo-test-array-fold-right-001'/1]).
-export(['fo-test-array-fold-right-002'/1]).
-export(['fo-test-array-fold-right-003'/1]).
-export(['fo-test-array-for-each-pair-001'/1]).
-export(['fo-test-array-for-each-pair-002'/1]).
-export(['fo-test-array-sort-001'/1]).
-export(['fo-test-array-sort-002'/1]).
-export(['fo-test-array-sort-003'/1]).
-export(['fo-test-array-flatten-001'/1]).
-export(['fo-test-array-flatten-002'/1]).
-export(['fo-test-array-flatten-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fo-test-fn-string-001',
   'fo-test-fn-string-002',
   'fo-test-fn-string-003',
   'fo-test-fn-string-004',
   'fo-test-fn-string-005',
   'fo-test-fn-string-006',
   'fo-test-fn-string-007',
   'fo-test-fn-data-001',
   'fo-test-fn-data-002',
   'fo-test-fn-data-003',
   'fo-test-fn-data-004',
   'fo-test-fn-data-005',
   'fo-test-fn-data-006',
   'fo-test-fn-error-001',
   'fo-test-fn-error-002',
   'fo-test-fn-abs-001',
   'fo-test-fn-abs-002',
   'fo-test-fn-ceiling-001',
   'fo-test-fn-ceiling-002',
   'fo-test-fn-floor-001',
   'fo-test-fn-floor-002',
   'fo-test-fn-round-001',
   'fo-test-fn-round-002',
   'fo-test-fn-round-003',
   'fo-test-fn-round-004',
   'fo-test-fn-round-005',
   'fo-test-fn-round-006',
   'fo-test-fn-round-half-to-even-001',
   'fo-test-fn-round-half-to-even-002',
   'fo-test-fn-round-half-to-even-003',
   'fo-test-fn-round-half-to-even-004',
   'fo-test-fn-round-half-to-even-005',
   'fo-test-fn-round-half-to-even-006',
   'fo-test-fn-format-integer-001',
   'fo-test-fn-format-integer-002',
   'fo-test-fn-format-integer-003',
   'fo-test-fn-format-integer-004',
   'fo-test-fn-format-integer-005',
   'fo-test-fn-format-number-001',
   'fo-test-fn-format-number-002',
   'fo-test-fn-format-number-003',
   'fo-test-fn-format-number-004',
   'fo-test-fn-format-number-005',
   'fo-test-fn-format-number-006',
   'fo-test-fn-format-number-007',
   'fo-test-fn-format-number-008',
   'fo-test-fn-format-number-009',
   'fo-test-fn-format-number-010',
   'fo-test-math-pi-001',
   'fo-test-math-exp-001',
   'fo-test-math-exp-002',
   'fo-test-math-exp-003',
   'fo-test-math-exp-004',
   'fo-test-math-exp-005',
   'fo-test-math-exp-006',
   'fo-test-math-exp-007',
   'fo-test-math-exp-008',
   'fo-test-math-exp-009',
   'fo-test-math-exp10-001',
   'fo-test-math-exp10-002',
   'fo-test-math-exp10-003',
   'fo-test-math-exp10-004',
   'fo-test-math-exp10-005',
   'fo-test-math-exp10-006',
   'fo-test-math-exp10-007',
   'fo-test-math-exp10-008',
   'fo-test-math-log-001',
   'fo-test-math-log-002',
   'fo-test-math-log-003',
   'fo-test-math-log-004',
   'fo-test-math-log-005',
   'fo-test-math-log-006',
   'fo-test-math-log-007',
   'fo-test-math-log-008',
   'fo-test-math-log-009',
   'fo-test-math-log10-001',
   'fo-test-math-log10-002',
   'fo-test-math-log10-003',
   'fo-test-math-log10-004',
   'fo-test-math-log10-005',
   'fo-test-math-log10-006',
   'fo-test-math-log10-007',
   'fo-test-math-log10-008',
   'fo-test-math-log10-009',
   'fo-test-math-sqrt-001',
   'fo-test-math-sqrt-002',
   'fo-test-math-sqrt-003',
   'fo-test-math-sqrt-004',
   'fo-test-math-sqrt-005',
   'fo-test-math-sqrt-006',
   'fo-test-math-sqrt-007',
   'fo-test-math-sqrt-008',
   'fo-test-math-sqrt-009',
   'fo-test-math-pow-001',
   'fo-test-math-pow-002',
   'fo-test-math-pow-003',
   'fo-test-math-pow-004',
   'fo-test-math-pow-005',
   'fo-test-math-pow-006',
   'fo-test-math-pow-007',
   'fo-test-math-pow-008',
   'fo-test-math-pow-009',
   'fo-test-math-pow-010',
   'fo-test-math-pow-011',
   'fo-test-math-pow-012',
   'fo-test-math-pow-013',
   'fo-test-math-pow-014',
   'fo-test-math-pow-015',
   'fo-test-math-pow-016',
   'fo-test-math-pow-017',
   'fo-test-math-pow-018',
   'fo-test-math-pow-019',
   'fo-test-math-pow-020',
   'fo-test-math-pow-021',
   'fo-test-math-pow-022',
   'fo-test-math-pow-023',
   'fo-test-math-pow-024',
   'fo-test-math-pow-025',
   'fo-test-math-pow-026',
   'fo-test-math-pow-027',
   'fo-test-math-pow-028',
   'fo-test-math-pow-029',
   'fo-test-math-pow-030',
   'fo-test-math-pow-031',
   'fo-test-math-pow-032',
   'fo-test-math-pow-033',
   'fo-test-math-pow-034',
   'fo-test-math-pow-035',
   'fo-test-math-sin-001',
   'fo-test-math-sin-002',
   'fo-test-math-sin-003',
   'fo-test-math-sin-004',
   'fo-test-math-sin-005',
   'fo-test-math-sin-006',
   'fo-test-math-sin-007',
   'fo-test-math-sin-008',
   'fo-test-math-sin-009',
   'fo-test-math-cos-001',
   'fo-test-math-cos-002',
   'fo-test-math-cos-003',
   'fo-test-math-cos-004',
   'fo-test-math-cos-005',
   'fo-test-math-cos-006',
   'fo-test-math-cos-007',
   'fo-test-math-cos-008',
   'fo-test-math-cos-009',
   'fo-test-math-tan-001',
   'fo-test-math-tan-002',
   'fo-test-math-tan-003',
   'fo-test-math-tan-004',
   'fo-test-math-tan-005',
   'fo-test-math-tan-006',
   'fo-test-math-tan-007',
   'fo-test-math-tan-008',
   'fo-test-math-tan-009',
   'fo-test-math-tan-010',
   'fo-test-math-tan-011',
   'fo-test-math-asin-001',
   'fo-test-math-asin-002',
   'fo-test-math-asin-003',
   'fo-test-math-asin-004',
   'fo-test-math-asin-005',
   'fo-test-math-asin-006',
   'fo-test-math-asin-007',
   'fo-test-math-asin-008',
   'fo-test-math-asin-009',
   'fo-test-math-acos-001',
   'fo-test-math-acos-002',
   'fo-test-math-acos-003',
   'fo-test-math-acos-004',
   'fo-test-math-acos-005',
   'fo-test-math-acos-006',
   'fo-test-math-acos-007',
   'fo-test-math-acos-008',
   'fo-test-math-acos-009',
   'fo-test-math-atan-001',
   'fo-test-math-atan-002',
   'fo-test-math-atan-003',
   'fo-test-math-atan-004',
   'fo-test-math-atan-005',
   'fo-test-math-atan-006',
   'fo-test-math-atan-007',
   'fo-test-math-atan-008',
   'fo-test-math-atan2-001',
   'fo-test-math-atan2-002',
   'fo-test-math-atan2-003',
   'fo-test-math-atan2-004',
   'fo-test-math-atan2-005',
   'fo-test-math-atan2-006',
   'fo-test-math-atan2-007',
   'fo-test-math-atan2-008',
   'fo-test-math-atan2-009',
   'fo-test-math-atan2-010',
   'fo-test-fn-codepoints-to-string-001',
   'fo-test-fn-codepoints-to-string-002',
   'fo-test-fn-codepoints-to-string-003',
   'fo-test-fn-codepoints-to-string-004',
   'fo-test-fn-string-to-codepoints-001',
   'fo-test-fn-compare-001',
   'fo-test-fn-compare-002',
   'fo-test-fn-compare-003',
   'fo-test-fn-compare-004',
   'fo-test-fn-codepoint-equal-001',
   'fo-test-fn-codepoint-equal-002',
   'fo-test-fn-codepoint-equal-003',
   'fo-test-fn-codepoint-equal-004',
   'fo-test-fn-codepoint-equal-005',
   'fo-test-fn-concat-001',
   'fo-test-fn-concat-002',
   'fo-test-fn-concat-003',
   'fo-test-fn-concat-004',
   'fo-test-fn-concat-005',
   'fo-test-fn-concat-006',
   'fo-test-fn-string-join-001',
   'fo-test-fn-string-join-002',
   'fo-test-fn-string-join-003',
   'fo-test-fn-string-join-004',
   'fo-test-fn-string-join-005',
   'fo-test-fn-string-join-006',
   'fo-test-fn-string-join-007',
   'fo-test-fn-substring-001',
   'fo-test-fn-substring-002',
   'fo-test-fn-substring-003',
   'fo-test-fn-substring-004',
   'fo-test-fn-substring-005',
   'fo-test-fn-substring-006',
   'fo-test-fn-substring-007',
   'fo-test-fn-substring-008',
   'fo-test-fn-substring-009',
   'fo-test-fn-substring-010',
   'fo-test-fn-substring-011',
   'fo-test-fn-string-length-001',
   'fo-test-fn-string-length-002',
   'fo-test-fn-normalize-space-001',
   'fo-test-fn-normalize-space-002',
   'fo-test-fn-upper-case-001',
   'fo-test-fn-lower-case-001',
   'fo-test-fn-translate-001',
   'fo-test-fn-translate-002',
   'fo-test-fn-translate-003',
   'fo-test-fn-encode-for-uri-001',
   'fo-test-fn-encode-for-uri-002',
   'fo-test-fn-encode-for-uri-003',
   'fo-test-fn-iri-to-uri-001',
   'fo-test-fn-iri-to-uri-002',
   'fo-test-fn-escape-html-uri-001',
   'fo-test-fn-escape-html-uri-002',
   'fo-test-fn-contains-001',
   'fo-test-fn-contains-002',
   'fo-test-fn-contains-003',
   'fo-test-fn-contains-004',
   'fo-test-fn-contains-005',
   'fo-test-fn-contains-006',
   'fo-test-fn-contains-007',
   'fo-test-fn-starts-with-001',
   'fo-test-fn-starts-with-002',
   'fo-test-fn-starts-with-003',
   'fo-test-fn-starts-with-004',
   'fo-test-fn-starts-with-005',
   'fo-test-fn-starts-with-006',
   'fo-test-fn-starts-with-007',
   'fo-test-fn-starts-with-008',
   'fo-test-fn-ends-with-001',
   'fo-test-fn-ends-with-002',
   'fo-test-fn-ends-with-003',
   'fo-test-fn-ends-with-004',
   'fo-test-fn-ends-with-005',
   'fo-test-fn-ends-with-006',
   'fo-test-fn-ends-with-007',
   'fo-test-fn-ends-with-008',
   'fo-test-fn-substring-before-001',
   'fo-test-fn-substring-before-002',
   'fo-test-fn-substring-before-003',
   'fo-test-fn-substring-before-004',
   'fo-test-fn-substring-before-005',
   'fo-test-fn-substring-before-006',
   'fo-test-fn-substring-before-007',
   'fo-test-fn-substring-after-001',
   'fo-test-fn-substring-after-002',
   'fo-test-fn-substring-after-003',
   'fo-test-fn-substring-after-004',
   'fo-test-fn-substring-after-005',
   'fo-test-fn-substring-after-006',
   'fo-test-fn-substring-after-007',
   'fo-test-fn-matches-001',
   'fo-test-fn-matches-002',
   'fo-test-fn-matches-003',
   'fo-test-fn-matches-004',
   'fo-test-fn-matches-005',
   'fo-test-fn-matches-006',
   'fo-test-fn-matches-007',
   'fo-test-fn-matches-008',
   'fo-test-fn-replace-001',
   'fo-test-fn-replace-002',
   'fo-test-fn-replace-003',
   'fo-test-fn-replace-004',
   'fo-test-fn-replace-005',
   'fo-test-fn-replace-006',
   'fo-test-fn-replace-007',
   'fo-test-fn-replace-008',
   'fo-test-fn-tokenize-001',
   'fo-test-fn-tokenize-002',
   'fo-test-fn-tokenize-003',
   'fo-test-fn-tokenize-004',
   'fo-test-fn-tokenize-005',
   'fo-test-fn-tokenize-006',
   'fo-test-fn-analyze-string-001',
   'fo-test-fn-analyze-string-002',
   'fo-test-fn-analyze-string-003',
   'fo-test-fn-contains-token-001',
   'fo-test-fn-contains-token-002',
   'fo-test-fn-contains-token-003',
   'fo-test-fn-contains-token-004',
   'fo-test-fn-true-001',
   'fo-test-fn-false-001',
   'fo-test-fn-boolean-001',
   'fo-test-fn-boolean-002',
   'fo-test-fn-boolean-003',
   'fo-test-fn-not-001',
   'fo-test-fn-not-002',
   'fo-test-fn-not-003',
   'fo-test-fn-years-from-duration-001',
   'fo-test-fn-years-from-duration-002',
   'fo-test-fn-years-from-duration-003',
   'fo-test-fn-months-from-duration-001',
   'fo-test-fn-months-from-duration-002',
   'fo-test-fn-months-from-duration-003',
   'fo-test-fn-days-from-duration-001',
   'fo-test-fn-days-from-duration-002',
   'fo-test-fn-days-from-duration-003',
   'fo-test-fn-hours-from-duration-001',
   'fo-test-fn-hours-from-duration-002',
   'fo-test-fn-hours-from-duration-003',
   'fo-test-fn-hours-from-duration-004',
   'fo-test-fn-minutes-from-duration-001',
   'fo-test-fn-minutes-from-duration-002',
   'fo-test-fn-seconds-from-duration-001',
   'fo-test-fn-seconds-from-duration-002',
   'fo-test-fn-dateTime-001',
   'fo-test-fn-dateTime-002',
   'fo-test-fn-year-from-dateTime-001',
   'fo-test-fn-year-from-dateTime-002',
   'fo-test-fn-year-from-dateTime-003',
   'fo-test-fn-year-from-dateTime-004',
   'fo-test-fn-year-from-dateTime-005',
   'fo-test-fn-month-from-dateTime-001',
   'fo-test-fn-month-from-dateTime-002',
   'fo-test-fn-month-from-dateTime-003',
   'fo-test-fn-day-from-dateTime-001',
   'fo-test-fn-day-from-dateTime-002',
   'fo-test-fn-day-from-dateTime-003',
   'fo-test-fn-hours-from-dateTime-001',
   'fo-test-fn-hours-from-dateTime-002',
   'fo-test-fn-hours-from-dateTime-003',
   'fo-test-fn-hours-from-dateTime-004',
   'fo-test-fn-hours-from-dateTime-005',
   'fo-test-fn-minutes-from-dateTime-001',
   'fo-test-fn-minutes-from-dateTime-002',
   'fo-test-fn-seconds-from-dateTime-001',
   'fo-test-fn-timezone-from-dateTime-001',
   'fo-test-fn-timezone-from-dateTime-002',
   'fo-test-fn-timezone-from-dateTime-003',
   'fo-test-fn-year-from-date-001',
   'fo-test-fn-year-from-date-002',
   'fo-test-fn-year-from-date-003',
   'fo-test-fn-month-from-date-001',
   'fo-test-fn-month-from-date-002',
   'fo-test-fn-day-from-date-001',
   'fo-test-fn-day-from-date-002',
   'fo-test-fn-timezone-from-date-001',
   'fo-test-fn-timezone-from-date-002',
   'fo-test-fn-hours-from-time-001',
   'fo-test-fn-hours-from-time-002',
   'fo-test-fn-hours-from-time-003',
   'fo-test-fn-hours-from-time-004',
   'fo-test-fn-hours-from-time-005',
   'fo-test-fn-minutes-from-time-001',
   'fo-test-fn-seconds-from-time-001',
   'fo-test-fn-timezone-from-time-001',
   'fo-test-fn-timezone-from-time-002',
   'fo-test-fn-adjust-dateTime-to-timezone-002',
   'fo-test-fn-adjust-dateTime-to-timezone-003',
   'fo-test-fn-adjust-dateTime-to-timezone-004',
   'fo-test-fn-adjust-dateTime-to-timezone-005',
   'fo-test-fn-adjust-dateTime-to-timezone-006',
   'fo-test-fn-adjust-dateTime-to-timezone-007',
   'fo-test-fn-adjust-dateTime-to-timezone-008',
   'fo-test-fn-adjust-date-to-timezone-003',
   'fo-test-fn-adjust-date-to-timezone-004',
   'fo-test-fn-adjust-date-to-timezone-005',
   'fo-test-fn-adjust-date-to-timezone-006',
   'fo-test-fn-adjust-time-to-timezone-002',
   'fo-test-fn-adjust-time-to-timezone-003',
   'fo-test-fn-adjust-time-to-timezone-004',
   'fo-test-fn-adjust-time-to-timezone-005',
   'fo-test-fn-adjust-time-to-timezone-006',
   'fo-test-fn-adjust-time-to-timezone-007',
   'fo-test-fn-parse-ietf-date-001',
   'fo-test-fn-parse-ietf-date-002',
   'fo-test-fn-parse-ietf-date-003',
   'fo-test-fn-parse-ietf-date-004',
   'fo-test-fn-parse-ietf-date-005',
   'fo-test-fn-local-name-from-QName-001',
   'fo-test-fn-namespace-uri-from-QName-001',
   'fo-test-fn-namespace-uri-for-prefix-001',
   'fo-test-fn-namespace-uri-for-prefix-002',
   'fo-test-fn-namespace-uri-for-prefix-003',
   'fo-test-fn-namespace-uri-for-prefix-004',
   'fo-test-fn-namespace-uri-for-prefix-005',
   'fo-test-fn-number-001',
   'fo-test-fn-number-002',
   'fo-test-fn-path-001',
   'fo-test-fn-path-002',
   'fo-test-fn-path-003',
   'fo-test-fn-path-004',
   'fo-test-fn-path-005',
   'fo-test-fn-path-006',
   'fo-test-fn-path-007',
   'fo-test-fn-path-008',
   'fo-test-fn-path-009',
   'fo-test-fn-index-of-001',
   'fo-test-fn-index-of-002',
   'fo-test-fn-index-of-003',
   'fo-test-fn-index-of-004',
   'fo-test-fn-index-of-005',
   'fo-test-fn-empty-001',
   'fo-test-fn-empty-002',
   'fo-test-fn-empty-003',
   'fo-test-fn-empty-004',
   'fo-test-fn-empty-005',
   'fo-test-fn-exists-001',
   'fo-test-fn-exists-002',
   'fo-test-fn-exists-003',
   'fo-test-fn-exists-004',
   'fo-test-fn-exists-005',
   'fo-test-fn-distinct-values-001',
   'fo-test-fn-distinct-values-002',
   'fo-test-fn-insert-before-001',
   'fo-test-fn-insert-before-002',
   'fo-test-fn-insert-before-003',
   'fo-test-fn-insert-before-004',
   'fo-test-fn-insert-before-005',
   'fo-test-fn-remove-001',
   'fo-test-fn-remove-002',
   'fo-test-fn-remove-003',
   'fo-test-fn-remove-004',
   'fo-test-fn-head-001',
   'fo-test-fn-head-002',
   'fo-test-fn-head-003',
   'fo-test-fn-head-004',
   'fo-test-fn-tail-001',
   'fo-test-fn-tail-002',
   'fo-test-fn-tail-003',
   'fo-test-fn-tail-004',
   'fo-test-fn-tail-005',
   'fo-test-fn-reverse-001',
   'fo-test-fn-reverse-002',
   'fo-test-fn-reverse-003',
   'fo-test-fn-reverse-004',
   'fo-test-fn-reverse-005',
   'fo-test-fn-subsequence-001',
   'fo-test-fn-subsequence-002',
   'fo-test-fn-unordered-001',
   'fo-test-fn-deep-equal-001',
   'fo-test-fn-deep-equal-002',
   'fo-test-fn-deep-equal-003',
   'fo-test-fn-deep-equal-004',
   'fo-test-fn-deep-equal-005',
   'fo-test-fn-deep-equal-006',
   'fo-test-fn-deep-equal-007',
   'fo-test-fn-count-001',
   'fo-test-fn-count-002',
   'fo-test-fn-count-003',
   'fo-test-fn-count-004',
   'fo-test-fn-count-005',
   'fo-test-fn-count-006',
   'fo-test-fn-avg-001',
   'fo-test-fn-avg-002',
   'fo-test-fn-avg-003',
   'fo-test-fn-avg-004',
   'fo-test-fn-avg-005',
   'fo-test-fn-max-001',
   'fo-test-fn-max-002',
   'fo-test-fn-max-003',
   'fo-test-fn-max-004',
   'fo-test-fn-max-005',
   'fo-test-fn-min-001',
   'fo-test-fn-min-002',
   'fo-test-fn-min-003',
   'fo-test-fn-min-004',
   'fo-test-fn-min-005',
   'fo-test-fn-sum-001',
   'fo-test-fn-sum-002',
   'fo-test-fn-sum-003',
   'fo-test-fn-sum-004',
   'fo-test-fn-sum-005',
   'fo-test-fn-sum-006',
   'fo-test-fn-sum-007',
   'fo-test-fn-sum-008',
   'fo-test-fn-sum-009',
   'fo-test-fn-id-001',
   'fo-test-fn-id-002',
   'fo-test-fn-element-with-id-001',
   'fo-test-fn-element-with-id-002',
   'fo-test-fn-idref-001',
   'fo-test-fn-idref-002',
   'fo-test-fn-serialize-001',
   'fo-test-fn-serialize-002',
   'fo-test-fn-last-001',
   'fo-test-fn-function-lookup-001',
   'fo-test-fn-function-name-001',
   'fo-test-fn-function-name-002',
   'fo-test-fn-function-arity-001',
   'fo-test-fn-function-arity-002',
   'fo-test-fn-function-arity-003',
   'fo-test-fn-for-each-001',
   'fo-test-fn-for-each-002',
   'fo-test-fn-for-each-003',
   'fo-test-fn-filter-001',
   'fo-test-fn-filter-002',
   'fo-test-fn-fold-left-001',
   'fo-test-fn-fold-left-002',
   'fo-test-fn-fold-left-003',
   'fo-test-fn-fold-left-004',
   'fo-test-fn-fold-left-005',
   'fo-test-fn-fold-left-006',
   'fo-test-fn-fold-left-007',
   'fo-test-fn-fold-left-008',
   'fo-test-fn-fold-right-001',
   'fo-test-fn-fold-right-002',
   'fo-test-fn-fold-right-003',
   'fo-test-fn-for-each-pair-001',
   'fo-test-fn-for-each-pair-002',
   'fo-test-fn-for-each-pair-003',
   'fo-test-fn-sort-001',
   'fo-test-fn-sort-002',
   'fo-test-fn-apply-001',
   'fo-test-map-merge-001',
   'fo-test-map-merge-002',
   'fo-test-map-merge-003',
   'fo-test-map-merge-004',
   'fo-test-map-merge-005',
   'fo-test-map-merge-006',
   'fo-test-map-keys-001',
   'fo-test-map-contains-001',
   'fo-test-map-contains-002',
   'fo-test-map-contains-003',
   'fo-test-map-contains-004',
   'fo-test-map-contains-005',
   'fo-test-map-get-001',
   'fo-test-map-get-002',
   'fo-test-map-get-003',
   'fo-test-map-find-001',
   'fo-test-map-find-002',
   'fo-test-map-find-003',
   'fo-test-map-find-004',
   'fo-test-map-put-001',
   'fo-test-map-put-002',
   'fo-test-map-entry-001',
   'fo-test-map-remove-001',
   'fo-test-map-remove-002',
   'fo-test-map-remove-003',
   'fo-test-map-remove-004',
   'fo-test-map-for-each-001',
   'fo-test-map-for-each-002',
   'fo-test-map-for-each-003',
   'fo-test-map-size-001',
   'fo-test-map-size-002',
   'fo-test-fn-collation-key-001',
   'fo-test-fn-collation-key-002',
   'fo-test-fn-json-to-xml-001',
   'fo-test-fn-json-to-xml-002',
   'fo-test-fn-json-to-xml-003',
   'fo-test-fn-json-to-xml-004',
   'fo-test-fn-parse-json-001',
   'fo-test-fn-parse-json-002',
   'fo-test-fn-parse-json-003',
   'fo-test-fn-parse-json-004',
   'fo-test-fn-parse-json-005',
   'fo-test-fn-parse-json-006',
   'fo-test-fn-parse-json-007',
   'fo-test-array-size-001',
   'fo-test-array-size-002',
   'fo-test-array-size-003',
   'fo-test-array-size-004',
   'fo-test-array-get-001',
   'fo-test-array-get-002',
   'fo-test-array-put-001',
   'fo-test-array-put-002',
   'fo-test-array-put-003',
   'fo-test-array-append-001',
   'fo-test-array-append-002',
   'fo-test-array-append-003',
   'fo-test-array-join-001',
   'fo-test-array-join-002',
   'fo-test-array-join-003',
   'fo-test-array-join-004',
   'fo-test-array-join-005',
   'fo-test-array-subarray-001',
   'fo-test-array-subarray-002',
   'fo-test-array-subarray-003',
   'fo-test-array-subarray-004',
   'fo-test-array-subarray-005',
   'fo-test-array-subarray-006',
   'fo-test-array-subarray-007',
   'fo-test-array-remove-001',
   'fo-test-array-remove-002',
   'fo-test-array-remove-003',
   'fo-test-array-remove-004',
   'fo-test-array-remove-005',
   'fo-test-array-insert-before-001',
   'fo-test-array-insert-before-002',
   'fo-test-array-insert-before-003',
   'fo-test-array-head-001',
   'fo-test-array-head-002',
   'fo-test-array-head-003',
   'fo-test-array-tail-001',
   'fo-test-array-tail-002',
   'fo-test-array-reverse-001',
   'fo-test-array-reverse-002',
   'fo-test-array-reverse-003',
   'fo-test-array-reverse-004',
   'fo-test-array-for-each-001',
   'fo-test-array-for-each-002',
   'fo-test-array-filter-001',
   'fo-test-array-filter-002',
   'fo-test-array-filter-003',
   'fo-test-array-fold-left-001',
   'fo-test-array-fold-left-002',
   'fo-test-array-fold-left-003',
   'fo-test-array-fold-right-001',
   'fo-test-array-fold-right-002',
   'fo-test-array-fold-right-003',
   'fo-test-array-for-each-pair-001',
   'fo-test-array-for-each-pair-002',
   'fo-test-array-sort-001',
   'fo-test-array-sort-002',
   'fo-test-array-sort-003',
   'fo-test-array-flatten-001',
   'fo-test-array-flatten-002',
   'fo-test-array-flatten-003'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
environment('qname') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('global') ->
[{'decimal-formats', [{"ch",[{'decimal-separator',"·"},
{'grouping-separator',"ʹ"}]},
{"fortran",[{'exponent-separator',"E"}]}]},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/app/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"},
{"http://www.w3.org/2005/xpath-functions/map","map"},
{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
].
'fo-test-fn-string-001'(_Config) ->
   Qry = "
        string(23)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"23\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-002'(_Config) ->
   Qry = "
        string(false())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"false\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-003'(_Config) ->
   Qry = "
        string(\"Paris\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Paris\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-004'(_Config) ->
   Qry = "
        string((1, 2, 3))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-005'(_Config) ->
   Qry = "
        string([[1, 2], [3, 4]])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0014") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-006'(_Config) ->
   Qry = "
        string(abs#1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0014") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-007'(_Config) ->
   Qry = "
          let $para := 
          
<para>In a hole in the ground there lived a <term author=\"Tolkien\">hobbit</term>.</para>
         
           return 

        
        string($para)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"In a hole in the ground there lived a hobbit.\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-data-001'(_Config) ->
   Qry = "
        data(123)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"123") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-data-002'(_Config) ->
   Qry = "
        data((123, 456))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"123, 456") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-data-003'(_Config) ->
   Qry = "
        data([[1,2],[3,4]])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 2, 3, 4") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-data-004'(_Config) ->
   Qry = "
          let $para := 
          
<para>In a hole in the ground there lived a <term author=\"Tolkien\">hobbit</term>.</para>
         
           return 

        
        data($para)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:untypedAtomic(\"In a hole in the ground there lived a hobbit.\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-data-005'(_Config) ->
   Qry = "
          let $para := 
          
<para>In a hole in the ground there lived a <term author=\"Tolkien\">hobbit</term>.</para>
         
           return 

        
        data($para/term/@author)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:untypedAtomic(\"Tolkien\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-data-006'(_Config) ->
   Qry = "
        data(abs#1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0013") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-error-001'(_Config) ->
   Qry = "
        fn:error()
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-error-002'(_Config) ->
   Qry = "
        fn:error(fn:QName('http://www.example.com/HR', 'myerr:toohighsal'),
                  'Does not apply because salary is too high')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"*") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-abs-001'(_Config) ->
   Qry = "
        fn:abs(10.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"10.5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-abs-002'(_Config) ->
   Qry = "
        fn:abs(-10.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"10.5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-ceiling-001'(_Config) ->
   Qry = "
        fn:ceiling(10.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"11") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-ceiling-002'(_Config) ->
   Qry = "
        fn:ceiling(-10.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-10") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-floor-001'(_Config) ->
   Qry = "
        fn:floor(10.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"10") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-floor-002'(_Config) ->
   Qry = "
        fn:floor(-10.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-11") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-001'(_Config) ->
   Qry = "
        fn:round(2.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3.0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-002'(_Config) ->
   Qry = "
        fn:round(2.4999)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2.0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-003'(_Config) ->
   Qry = "
        fn:round(-2.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-2.0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-004'(_Config) ->
   Qry = "
        fn:round(1.125, 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.13") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-005'(_Config) ->
   Qry = "
        fn:round(8452, -2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"8500") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-006'(_Config) ->
   Qry = "
        fn:round(3.1415e0, 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3.14e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-half-to-even-001'(_Config) ->
   Qry = "
        fn:round-half-to-even(0.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-half-to-even-002'(_Config) ->
   Qry = "
        fn:round-half-to-even(1.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2.0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-half-to-even-003'(_Config) ->
   Qry = "
        fn:round-half-to-even(2.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2.0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-half-to-even-004'(_Config) ->
   Qry = "
        fn:round-half-to-even(3.567812e+3, 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3567.81e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-half-to-even-005'(_Config) ->
   Qry = "
        fn:round-half-to-even(4.7564e-3, 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-round-half-to-even-006'(_Config) ->
   Qry = "
        fn:round-half-to-even(35612.25, -2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"35600") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-integer-001'(_Config) ->
   Qry = "
        format-integer(123, '0000')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"0123\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-integer-002'(_Config) ->
   Qry = "
        format-integer(21, '1;o', 'en')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"21st\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-integer-003'(_Config) ->
   Qry = "
        format-integer(7, 'a')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"g\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-integer-004'(_Config) ->
   Qry = "
        format-integer(57, 'I')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"LVII\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-integer-005'(_Config) ->
   Qry = "
        format-integer(1234, '#;##0;')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"1;234\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-number-001'(_Config) ->
   Qry = "
        format-number(12345.6, '#,###.00')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"12,345.60\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-number-002'(_Config) ->
   Qry = "
        format-number(12345678.9, '9,999.99')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"12,345,678.90\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-number-003'(_Config) ->
   Qry = "
        format-number(123.9, '9999')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"0124\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-number-004'(_Config) ->
   Qry = "
        format-number(0.14, '01%')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"14%\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-number-005'(_Config) ->
   Qry = "
        format-number(-6, '000')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"-006\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-number-006'(_Config) ->
   Qry = "
        format-number(1234.5678, '#ʹ##0·00',
                  'ch')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"1ʹ234·57\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-number-007'(_Config) ->
   Qry = "
        format-number(1234.5678, '00.000E0', 'fortran')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"12.346E2\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-number-008'(_Config) ->
   Qry = "
        format-number(0.234, '0.0E0', 'fortran')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"2.3E-1\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-number-009'(_Config) ->
   Qry = "
        format-number(0.234, '#.00E0', 'fortran')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"0.23E0\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-format-number-010'(_Config) ->
   Qry = "
        format-number(0.234, '.00E0', 'fortran')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\".23E0\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pi-001'(_Config) ->
   Qry = "
        2*math:pi()
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"6.283185307179586e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp-001'(_Config) ->
   Qry = "
        math:exp(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp-002'(_Config) ->
   Qry = "
        math:exp(0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp-003'(_Config) ->
   Qry = "
        math:exp(1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 2.7182818284590455e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp-004'(_Config) ->
   Qry = "
        math:exp(2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"7.38905609893065e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp-005'(_Config) ->
   Qry = "
        math:exp(-1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.36787944117144233e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp-006'(_Config) ->
   Qry = "
        math:exp(math:pi())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"23.140692632779267e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp-007'(_Config) ->
   Qry = "
        math:exp(xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp-008'(_Config) ->
   Qry = "
        math:exp(xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp-009'(_Config) ->
   Qry = "
        math:exp(xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp10-001'(_Config) ->
   Qry = "
        math:exp10(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp10-002'(_Config) ->
   Qry = "
        math:exp10(0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp10-003'(_Config) ->
   Qry = "
        math:exp10(1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp10-004'(_Config) ->
   Qry = "
        math:exp10(0.5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3.1622776601683795e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp10-005'(_Config) ->
   Qry = "
        math:exp10(-1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e-1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp10-006'(_Config) ->
   Qry = "
        math:exp10(xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp10-007'(_Config) ->
   Qry = "
        math:exp10(xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-exp10-008'(_Config) ->
   Qry = "
        math:exp10(xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log-001'(_Config) ->
   Qry = "
        math:log(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log-002'(_Config) ->
   Qry = "
        math:log(0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('-INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log-003'(_Config) ->
   Qry = "
        math:log(math:exp(1))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log-004'(_Config) ->
   Qry = "
        math:log(1.0e-3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-6.907755278982137e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log-005'(_Config) ->
   Qry = "
        math:log(2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.6931471805599453e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log-006'(_Config) ->
   Qry = "
        math:log(-1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log-007'(_Config) ->
   Qry = "
        math:log(xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log-008'(_Config) ->
   Qry = "
        math:log(xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log-009'(_Config) ->
   Qry = "
        math:log(xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log10-001'(_Config) ->
   Qry = "
        math:log10(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log10-002'(_Config) ->
   Qry = "
        math:log10(0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('-INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log10-003'(_Config) ->
   Qry = "
        math:log10(1.0e3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log10-004'(_Config) ->
   Qry = "
        math:log10(1.0e-3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-3.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log10-005'(_Config) ->
   Qry = "
        math:log10(2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.3010299956639812e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log10-006'(_Config) ->
   Qry = "
        math:log10(-1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log10-007'(_Config) ->
   Qry = "
        math:log10(xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log10-008'(_Config) ->
   Qry = "
        math:log10(xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-log10-009'(_Config) ->
   Qry = "
        math:log10(xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sqrt-001'(_Config) ->
   Qry = "
        math:sqrt(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sqrt-002'(_Config) ->
   Qry = "
        math:sqrt(0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sqrt-003'(_Config) ->
   Qry = "
        math:sqrt(-0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sqrt-004'(_Config) ->
   Qry = "
        math:sqrt(1.0e6)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sqrt-005'(_Config) ->
   Qry = "
        math:sqrt(2.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.4142135623730951e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sqrt-006'(_Config) ->
   Qry = "
        math:sqrt(-2.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sqrt-007'(_Config) ->
   Qry = "
        math:sqrt(xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sqrt-008'(_Config) ->
   Qry = "
        math:sqrt(xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sqrt-009'(_Config) ->
   Qry = "
        math:sqrt(xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-001'(_Config) ->
   Qry = "
        math:pow((), 93.7)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-002'(_Config) ->
   Qry = "
        math:pow(2, 3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"8.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-003'(_Config) ->
   Qry = "
        math:pow(-2, 3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-8.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-004'(_Config) ->
   Qry = "
        math:pow(2, -3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.125e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-005'(_Config) ->
   Qry = "
        math:pow(-2, -3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-0.125e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-006'(_Config) ->
   Qry = "
        math:pow(2, 0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-007'(_Config) ->
   Qry = "
        math:pow(0, 0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-008'(_Config) ->
   Qry = "
        math:pow(xs:double('INF'), 0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-009'(_Config) ->
   Qry = "
        math:pow(xs:double('NaN'), 0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-010'(_Config) ->
   Qry = "
        math:pow(-math:pi(), 0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-011'(_Config) ->
   Qry = "
        math:pow(0e0, 3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-012'(_Config) ->
   Qry = "
        math:pow(0e0, 4)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-013'(_Config) ->
   Qry = "
        math:pow(-0e0, 3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-014'(_Config) ->
   Qry = "
        math:pow(0, 4)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-015'(_Config) ->
   Qry = "
        math:pow(0e0, -3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-016'(_Config) ->
   Qry = "
        math:pow(0e0, -4)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-017'(_Config) ->
   Qry = "
        math:pow(-0e0, -3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('-INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-018'(_Config) ->
   Qry = "
        math:pow(0, -4)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-019'(_Config) ->
   Qry = "
        math:pow(16, 0.5e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"4.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-020'(_Config) ->
   Qry = "
        math:pow(16, 0.25e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-021'(_Config) ->
   Qry = "
        math:pow(0e0, -3.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-022'(_Config) ->
   Qry = "
        math:pow(-0e0, -3.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('-INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-023'(_Config) ->
   Qry = "
        math:pow(0e0, -3.1e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-024'(_Config) ->
   Qry = "
        math:pow(-0e0, -3.1e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('INF')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-025'(_Config) ->
   Qry = "
        math:pow(0e0, 3.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-026'(_Config) ->
   Qry = "
        math:pow(-0e0, 3.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-027'(_Config) ->
   Qry = "
        math:pow(0e0, 3.1e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-028'(_Config) ->
   Qry = "
        math:pow(-0e0, 3.1e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-029'(_Config) ->
   Qry = "
        math:pow(-1, xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-030'(_Config) ->
   Qry = "
        math:pow(-1, xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-031'(_Config) ->
   Qry = "
        math:pow(1, xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-032'(_Config) ->
   Qry = "
        math:pow(1, xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-033'(_Config) ->
   Qry = "
        math:pow(1, xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-034'(_Config) ->
   Qry = "
        math:pow(-2.5e0, 2.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"6.25e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-pow-035'(_Config) ->
   Qry = "
        math:pow(-2.5e0, 2.00000001e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sin-001'(_Config) ->
   Qry = "
        math:sin(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sin-002'(_Config) ->
   Qry = "
        math:sin(0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sin-003'(_Config) ->
   Qry = "
        math:sin(-0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sin-004'(_Config) ->
   Qry = "
        math:sin(math:pi() div 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 1.0e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sin-005'(_Config) ->
   Qry = "
        math:sin(-math:pi() div 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - -1.0e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sin-006'(_Config) ->
   Qry = "
        math:sin(math:pi())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 0.0e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sin-007'(_Config) ->
   Qry = "
        math:sin(xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sin-008'(_Config) ->
   Qry = "
        math:sin(xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-sin-009'(_Config) ->
   Qry = "
        math:sin(xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-cos-001'(_Config) ->
   Qry = "
        math:cos(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-cos-002'(_Config) ->
   Qry = "
        math:cos(0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-cos-003'(_Config) ->
   Qry = "
        math:cos(-0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-cos-004'(_Config) ->
   Qry = "
        math:cos(math:pi() div 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 0.0e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-cos-005'(_Config) ->
   Qry = "
        math:cos(-math:pi() div 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 0.0e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-cos-006'(_Config) ->
   Qry = "
        math:cos(math:pi())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - -1.0e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-cos-007'(_Config) ->
   Qry = "
        math:cos(xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-cos-008'(_Config) ->
   Qry = "
        math:cos(xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-cos-009'(_Config) ->
   Qry = "
        math:cos(xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-tan-001'(_Config) ->
   Qry = "
        math:tan(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-tan-002'(_Config) ->
   Qry = "
        math:tan(0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-tan-003'(_Config) ->
   Qry = "
        math:tan(-0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-tan-004'(_Config) ->
   Qry = "
        math:tan(math:pi() div 4)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 1.0e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-tan-005'(_Config) ->
   Qry = "
        math:tan(-math:pi() div 4)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - -1.0e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-tan-006'(_Config) ->
   Qry = "
        1 div math:tan(math:pi() div 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 0.0e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-tan-007'(_Config) ->
   Qry = "
        1 div math:tan(-math:pi() div 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - -0.0e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-tan-008'(_Config) ->
   Qry = "
        math:tan(math:pi())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 0.0e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-tan-009'(_Config) ->
   Qry = "
        math:tan(xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-tan-010'(_Config) ->
   Qry = "
        math:tan(xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-tan-011'(_Config) ->
   Qry = "
        math:tan(xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-asin-001'(_Config) ->
   Qry = "
        math:asin(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-asin-002'(_Config) ->
   Qry = "
        math:asin(0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-asin-003'(_Config) ->
   Qry = "
        math:asin(-0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-asin-004'(_Config) ->
   Qry = "
        math:asin(1.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 1.5707963267948966e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-asin-005'(_Config) ->
   Qry = "
        math:asin(-1.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - -1.5707963267948966e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-asin-006'(_Config) ->
   Qry = "
        math:asin(2.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-asin-007'(_Config) ->
   Qry = "
        math:asin(xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-asin-008'(_Config) ->
   Qry = "
        math:asin(xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-asin-009'(_Config) ->
   Qry = "
        math:asin(xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-acos-001'(_Config) ->
   Qry = "
        math:acos(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-acos-002'(_Config) ->
   Qry = "
        math:acos(0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 1.5707963267948966e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-acos-003'(_Config) ->
   Qry = "
        math:acos(-0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 1.5707963267948966e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-acos-004'(_Config) ->
   Qry = "
        math:acos(1.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-acos-005'(_Config) ->
   Qry = "
        math:acos(-1.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 3.141592653589793e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-acos-006'(_Config) ->
   Qry = "
        math:acos(2.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-acos-007'(_Config) ->
   Qry = "
        math:acos(xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-acos-008'(_Config) ->
   Qry = "
        math:acos(xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-acos-009'(_Config) ->
   Qry = "
        math:acos(xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan-001'(_Config) ->
   Qry = "
        math:atan(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan-002'(_Config) ->
   Qry = "
        math:atan(0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan-003'(_Config) ->
   Qry = "
        math:atan(-0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan-004'(_Config) ->
   Qry = "
        math:atan(1.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 0.7853981633974483e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan-005'(_Config) ->
   Qry = "
        math:atan(-1.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - -0.7853981633974483e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan-006'(_Config) ->
   Qry = "
        math:atan(xs:double('NaN'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan-007'(_Config) ->
   Qry = "
        math:atan(xs:double('INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 1.5707963267948966e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan-008'(_Config) ->
   Qry = "
        math:atan(xs:double('-INF'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - -1.5707963267948966e0) lt 1e-5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan2-001'(_Config) ->
   Qry = "
        math:atan2(+0.0e0, 0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan2-002'(_Config) ->
   Qry = "
        math:atan2(-0.0e0, 0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan2-003'(_Config) ->
   Qry = "
        math:atan2(+0.0e0, -0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3.141592653589793e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan2-004'(_Config) ->
   Qry = "
        math:atan2(-0.0e0, -0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-3.141592653589793e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan2-005'(_Config) ->
   Qry = "
        math:atan2(-1, 0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-1.5707963267948966e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan2-006'(_Config) ->
   Qry = "
        math:atan2(+1, 0.0e0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1.5707963267948966e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan2-007'(_Config) ->
   Qry = "
        math:atan2(-0.0e0, -1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-3.141592653589793e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan2-008'(_Config) ->
   Qry = "
        math:atan2(+0.0e0, -1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3.141592653589793e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan2-009'(_Config) ->
   Qry = "
        math:atan2(-0.0e0, +1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-math-atan2-010'(_Config) ->
   Qry = "
        math:atan2(+0.0e0, +1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"+0.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-codepoints-to-string-001'(_Config) ->
   Qry = "
        fn:codepoints-to-string((66, 65, 67, 72))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"BACH\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-codepoints-to-string-002'(_Config) ->
   Qry = "
        fn:codepoints-to-string((2309, 2358, 2378, 2325))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"अशॊक\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-codepoints-to-string-003'(_Config) ->
   Qry = "
        fn:codepoints-to-string(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-codepoints-to-string-004'(_Config) ->
   Qry = "
        fn:codepoints-to-string(0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-to-codepoints-001'(_Config) ->
   Qry = "
        fn:string-to-codepoints(\"Thérèse\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(84, 104, 233, 114, 232, 115, 101)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-compare-001'(_Config) ->
   Qry = "
        fn:compare('abc', 'abc')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-compare-002'(_Config) ->
   Qry = "
        fn:compare('Strasse', 'Straße')
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/app/"}]},
{vars, []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"},
{"http://www.w3.org/2005/xpath-functions/map","map"},
{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-compare-003'(_Config) ->
   Qry = "
        fn:compare('Strasse', 'Straße',
                  'http://www.w3.org/2013/collation/UCA?lang=de;strength=primary')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-compare-004'(_Config) ->
   Qry = "
        fn:compare('Strassen', 'Straße')
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/app/"}]},
{vars, []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"},
{"http://www.w3.org/2005/xpath-functions/map","map"},
{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-codepoint-equal-001'(_Config) ->
   Qry = "
        fn:codepoint-equal(\"abcd\", \"abcd\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-codepoint-equal-002'(_Config) ->
   Qry = "
        fn:codepoint-equal(\"abcd\", \"abcd \")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-codepoint-equal-003'(_Config) ->
   Qry = "
        fn:codepoint-equal(\"\", \"\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-codepoint-equal-004'(_Config) ->
   Qry = "
        fn:codepoint-equal(\"\", ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-codepoint-equal-005'(_Config) ->
   Qry = "
        fn:codepoint-equal((), ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-concat-001'(_Config) ->
   Qry = "
        fn:concat('un', 'grateful')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"ungrateful\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-concat-002'(_Config) ->
   Qry = "
        fn:concat('Thy ', (), 'old ', \"groans\", \"\", ' ring',
                  ' yet', ' in', ' my', ' ancient',' ears.')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Thy old groans ring yet in my ancient ears.\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-concat-003'(_Config) ->
   Qry = "
        fn:concat('Ciao!',())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Ciao!\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-concat-004'(_Config) ->
   Qry = "
        fn:concat('Ingratitude, ', 'thou ', 'marble-hearted', ' fiend!')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Ingratitude, thou marble-hearted fiend!\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-concat-005'(_Config) ->
   Qry = "
        fn:concat(01, 02, 03, 04, true())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"1234true\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-concat-006'(_Config) ->
   Qry = "
        10 || '/' || 6
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"10/6\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-join-001'(_Config) ->
   Qry = "
        fn:string-join(1 to 9)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"123456789\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-join-002'(_Config) ->
   Qry = "
        fn:string-join(('Now', 'is', 'the', 'time', '...'),
                  ' ')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Now is the time ...\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-join-003'(_Config) ->
   Qry = "
        fn:string-join(('Blow, ', 'blow, ', 'thou ', 'winter ', 'wind!'),
                  '')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Blow, blow, thou winter wind!\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-join-004'(_Config) ->
   Qry = "
        fn:string-join((), 'separator')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-join-005'(_Config) ->
   Qry = "
        fn:string-join(1 to 5, ', ')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"1, 2, 3, 4, 5\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-join-006'(_Config) ->
   Qry = "
          let $doc := 
          <doc>
  <chap>
    <section xml:id=\"xyz\"/>
  </chap>
</doc>
           return 

        
        $doc//@xml:id ! fn:string-join((node-name(), '=\"', ., '\"'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'xml:id=\"xyz\"'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-join-007'(_Config) ->
   Qry = "
          let $doc := 
          <doc>
  <chap>
    <section xml:id=\"xyz\"/>
  </chap>
</doc>
           return 

        
        $doc//section ! fn:string-join(ancestor-or-self::*/name(), '/')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"doc/chap/section\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-001'(_Config) ->
   Qry = "
        fn:substring(\"motor car\", 6)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\" car\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-002'(_Config) ->
   Qry = "
        fn:substring(\"metadata\", 4, 3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"ada\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-003'(_Config) ->
   Qry = "
        fn:substring(\"12345\", 1.5, 2.6)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"234\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-004'(_Config) ->
   Qry = "
        fn:substring(\"12345\", 0, 3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"12\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-005'(_Config) ->
   Qry = "
        fn:substring(\"12345\", 5, -3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-006'(_Config) ->
   Qry = "
        fn:substring(\"12345\", -3, 5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"1\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-007'(_Config) ->
   Qry = "
        fn:substring(\"12345\", 0 div 0E0, 3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-008'(_Config) ->
   Qry = "
        fn:substring(\"12345\", 1, 0 div 0E0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-009'(_Config) ->
   Qry = "
        fn:substring((), 1, 3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-010'(_Config) ->
   Qry = "
        fn:substring(\"12345\", -42, 1 div 0E0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"12345\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-011'(_Config) ->
   Qry = "
        fn:substring(\"12345\", -1 div 0E0, 1 div 0E0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-length-001'(_Config) ->
   Qry = "
        fn:string-length(\"Harp not on that string, madam; that is past.\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"45") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-string-length-002'(_Config) ->
   Qry = "
        fn:string-length(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-normalize-space-001'(_Config) ->
   Qry = "
        fn:normalize-space(\" The    wealthy curled darlings
                                        of    our    nation. \")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"The wealthy curled darlings of our nation.\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-normalize-space-002'(_Config) ->
   Qry = "
        fn:normalize-space(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-upper-case-001'(_Config) ->
   Qry = "
        fn:upper-case(\"abCd0\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"ABCD0\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-lower-case-001'(_Config) ->
   Qry = "
        fn:lower-case(\"ABc!D\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc!d\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-translate-001'(_Config) ->
   Qry = "
        fn:translate(\"bar\",\"abc\",\"ABC\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"BAr\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-translate-002'(_Config) ->
   Qry = "
        fn:translate(\"--aaa--\",\"abc-\",\"ABC\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"AAA\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-translate-003'(_Config) ->
   Qry = "
        fn:translate(\"abcdabc\", \"abc\", \"AB\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"ABdAB\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-encode-for-uri-001'(_Config) ->
   Qry = "
        fn:encode-for-uri(\"http://www.example.com/00/Weather/CA/Los%20Angeles#ocean\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http%3A%2F%2Fwww.example.com%2F00%2FWeather%2FCA%2FLos%2520Angeles%23ocean\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-encode-for-uri-002'(_Config) ->
   Qry = "
        concat(\"http://www.example.com/\",
                  encode-for-uri(\"~bébé\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://www.example.com/~b%C3%A9b%C3%A9\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-encode-for-uri-003'(_Config) ->
   Qry = "
        concat(\"http://www.example.com/\", encode-for-uri(\"100% organic\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://www.example.com/100%25%20organic\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-iri-to-uri-001'(_Config) ->
   Qry = "
        fn:iri-to-uri
                  (\"http://www.example.com/00/Weather/CA/Los%20Angeles#ocean\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://www.example.com/00/Weather/CA/Los%20Angeles#ocean\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-iri-to-uri-002'(_Config) ->
   Qry = "
        fn:iri-to-uri (\"http://www.example.com/~bébé\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://www.example.com/~b%C3%A9b%C3%A9\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-escape-html-uri-001'(_Config) ->
   Qry = "
        fn:escape-html-uri(\"http://www.example.com/00/Weather/CA/Los Angeles#ocean\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://www.example.com/00/Weather/CA/Los Angeles#ocean\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-escape-html-uri-002'(_Config) ->
   Qry = "
        fn:escape-html-uri(\"javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~bébé');\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~b%C3%A9b%C3%A9');\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-contains-001'(_Config) ->
   Qry = "
        fn:contains ( \"tattoo\", \"t\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-contains-002'(_Config) ->
   Qry = "
        fn:contains ( \"tattoo\", \"ttt\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-contains-003'(_Config) ->
   Qry = "
        fn:contains ( \"\", ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-contains-004'(_Config) ->
   Qry = "
        fn:contains ( \"abcdefghi\", \"-d-e-f-\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-contains-005'(_Config) ->
   Qry = "
        fn:contains ( \"a*b*c*d*e*f*g*h*i*\", \"d-ef-\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-contains-006'(_Config) ->
   Qry = "
        fn:contains ( \"abcd***e---f*--*ghi\", \"def\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-contains-007'(_Config) ->
   Qry = "
        fn:contains ( (), \"--***-*---\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-starts-with-001'(_Config) ->
   Qry = "
        fn:starts-with(\"tattoo\", \"tat\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-starts-with-002'(_Config) ->
   Qry = "
        fn:starts-with ( \"tattoo\", \"att\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-starts-with-003'(_Config) ->
   Qry = "
        fn:starts-with ((), ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-starts-with-004'(_Config) ->
   Qry = "
        fn:starts-with ( \"abcdefghi\", \"-a-b-c-\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-starts-with-005'(_Config) ->
   Qry = "
        fn:starts-with ( \"a*b*c*d*e*f*g*h*i*\", \"a-bc-\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-starts-with-006'(_Config) ->
   Qry = "
        fn:starts-with ( \"abcd***e---f*--*ghi\", \"abcdef\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-starts-with-007'(_Config) ->
   Qry = "
        fn:starts-with ( (), \"--***-*---\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-starts-with-008'(_Config) ->
   Qry = "
        fn:starts-with ( \"-abcdefghi\", \"-abc\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-ends-with-001'(_Config) ->
   Qry = "
        fn:ends-with ( \"tattoo\", \"tattoo\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-ends-with-002'(_Config) ->
   Qry = "
        fn:ends-with ( \"tattoo\", \"atto\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-ends-with-003'(_Config) ->
   Qry = "
        fn:ends-with ((), ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-ends-with-004'(_Config) ->
   Qry = "
        fn:ends-with ( \"abcdefghi\", \"-g-h-i-\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-ends-with-005'(_Config) ->
   Qry = "
        fn:ends-with ( \"abcd***e---f*--*ghi\", \"defghi\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-ends-with-006'(_Config) ->
   Qry = "
        fn:ends-with ( \"abcd***e---f*--*ghi\", \"defghi\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-ends-with-007'(_Config) ->
   Qry = "
        fn:ends-with ( (), \"--***-*---\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-ends-with-008'(_Config) ->
   Qry = "
        fn:ends-with ( \"abcdefghi\", \"ghi-\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-before-001'(_Config) ->
   Qry = "
        fn:substring-before ( \"tattoo\", \"attoo\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"t\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-before-002'(_Config) ->
   Qry = "
        fn:substring-before ( \"tattoo\", \"tatto\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-before-003'(_Config) ->
   Qry = "
        fn:substring-before ((), ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-before-004'(_Config) ->
   Qry = "
        fn:substring-before ( \"abcdefghi\", \"--d-e-\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-before-005'(_Config) ->
   Qry = "
        fn:substring-before ( \"abc--d-e-fghi\", \"--d-e-\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc--\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-before-006'(_Config) ->
   Qry = "
        fn:substring-before ( \"a*b*c*d*e*f*g*h*i*\", \"***cde\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a*b*\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-before-007'(_Config) ->
   Qry = "
        fn:substring-before ( \"Eureka!\", \"--***-*---\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-after-001'(_Config) ->
   Qry = "
        fn:substring-after(\"tattoo\", \"tat\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"too\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-after-002'(_Config) ->
   Qry = "
        fn:substring-after(\"tattoo\", \"tattoo\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-after-003'(_Config) ->
   Qry = "
        fn:substring-after((), ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-after-004'(_Config) ->
   Qry = "
         fn:substring-after(\"abcdefghi\", \"--d-e-\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"fghi\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-after-005'(_Config) ->
   Qry = "
        fn:substring-after(\"abc--d-e-fghi\", \"--d-e-\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"-fghi\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-after-006'(_Config) ->
   Qry = "
        fn:substring-after ( \"a*b*c*d*e*f*g*h*i*\", \"***cde***\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"*f*g*h*i*\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-substring-after-007'(_Config) ->
   Qry = "
        fn:substring-after ( \"Eureka!\", \"--***-*---\",
                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Eureka!\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-matches-001'(_Config) ->
   Qry = "
        fn:matches(\"abracadabra\", \"bra\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-matches-002'(_Config) ->
   Qry = "
        fn:matches(\"abracadabra\", \"^a.*a$\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-matches-003'(_Config) ->
   Qry = "
        fn:matches(\"abracadabra\", \"^bra\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-matches-004'(_Config) ->
   Qry = "
          let $poem := 
          
<poem author=\"Wilhelm Busch\">
Kaum hat dies der Hahn gesehen,
Fängt er auch schon an zu krähen:
Kikeriki! Kikikerikih!!
Tak, tak, tak! - da kommen sie.
</poem>
           return 

        
        fn:matches($poem, \"Kaum.*krähen\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-matches-005'(_Config) ->
   Qry = "
          let $poem := 
          
<poem author=\"Wilhelm Busch\">
Kaum hat dies der Hahn gesehen,
Fängt er auch schon an zu krähen:
Kikeriki! Kikikerikih!!
Tak, tak, tak! - da kommen sie.
</poem>
           return 

        
        fn:matches($poem, \"Kaum.*krähen\", \"s\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-matches-006'(_Config) ->
   Qry = "
          let $poem := 
          
<poem author=\"Wilhelm Busch\">
Kaum hat dies der Hahn gesehen,
Fängt er auch schon an zu krähen:
Kikeriki! Kikikerikih!!
Tak, tak, tak! - da kommen sie.
</poem>
           return 

        
        fn:matches($poem, \"^Kaum.*gesehen,$\", \"m\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-matches-007'(_Config) ->
   Qry = "
          let $poem := 
          
<poem author=\"Wilhelm Busch\">
Kaum hat dies der Hahn gesehen,
Fängt er auch schon an zu krähen:
Kikeriki! Kikikerikih!!
Tak, tak, tak! - da kommen sie.
</poem>
           return 

        
        fn:matches($poem, \"^Kaum.*gesehen,$\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-matches-008'(_Config) ->
   Qry = "
          let $poem := 
          
<poem author=\"Wilhelm Busch\">
Kaum hat dies der Hahn gesehen,
Fängt er auch schon an zu krähen:
Kikeriki! Kikikerikih!!
Tak, tak, tak! - da kommen sie.
</poem>
           return 

        
        fn:matches($poem, \"kiki\", \"i\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-replace-001'(_Config) ->
   Qry = "
        fn:replace(\"abracadabra\", \"bra\", \"*\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a*cada*\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-replace-002'(_Config) ->
   Qry = "
        fn:replace(\"abracadabra\", \"a.*a\", \"*\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"*\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-replace-003'(_Config) ->
   Qry = "
        fn:replace(\"abracadabra\", \"a.*?a\", \"*\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"*c*bra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-replace-004'(_Config) ->
   Qry = "
        fn:replace(\"abracadabra\", \"a\", \"\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"brcdbr\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-replace-005'(_Config) ->
   Qry = "
        fn:replace(\"abracadabra\", \"a(.)\", \"a$1$1\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abbraccaddabbra\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-replace-006'(_Config) ->
   Qry = "
        fn:replace(\"AAAA\", \"A+\", \"b\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-replace-007'(_Config) ->
   Qry = "
        fn:replace(\"AAAA\", \"A+?\", \"b\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"bbbb\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-replace-008'(_Config) ->
   Qry = "
        fn:replace(\"darted\", \"^(.*?)d(.*)$\", \"$1c$2\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"carted\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-tokenize-001'(_Config) ->
   Qry = "
        fn:tokenize(\" red green blue \")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"red\", \"green\", \"blue\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-tokenize-002'(_Config) ->
   Qry = "
        fn:tokenize(\"The cat sat on the mat\", \"\\s+\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"The\", \"cat\", \"sat\", \"on\", \"the\", \"mat\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-tokenize-003'(_Config) ->
   Qry = "
        fn:tokenize(\" red green blue \", \"\\s+\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"\", \"red\", \"green\", \"blue\", \"\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-tokenize-004'(_Config) ->
   Qry = "
        fn:tokenize(\"1, 15, 24, 50\", \",\\s*\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"1\", \"15\", \"24\", \"50\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-tokenize-005'(_Config) ->
   Qry = "
        fn:tokenize(\"1,15,,24,50,\", \",\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"1\", \"15\", \"\", \"24\", \"50\", \"\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-tokenize-006'(_Config) ->
   Qry = "
        fn:tokenize(\"Some unparsed <br> HTML <BR> text\",
                  \"\\s*<br>\\s*\", \"i\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"Some unparsed\", \"HTML\", \"text\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-analyze-string-001'(_Config) ->
   Qry = "
        fn:analyze-string(\"The cat sat on the mat.\", \"\\w+\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<analyze-string-result xmlns=\"http://www.w3.org/2005/xpath-functions\"><match>The</match><non-match> </non-match><match>cat</match><non-match> </non-match><match>sat</match><non-match> </non-match><match>on</match><non-match> </non-match><match>the</match><non-match> </non-match><match>mat</match><non-match>.</non-match></analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-analyze-string-002'(_Config) ->
   Qry = "
        fn:analyze-string(\"2008-12-03\",
                  \"^(\\d+)\\-(\\d+)\\-(\\d+)$\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<analyze-string-result xmlns=\"http://www.w3.org/2005/xpath-functions\"><match><group nr=\"1\">2008</group>-<group nr=\"2\">12</group>-<group nr=\"3\">03</group></match></analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-analyze-string-003'(_Config) ->
   Qry = "
        fn:analyze-string(\"A1,C15,,D24, X50,\",
                  \"([A-Z])([0-9]+)\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<analyze-string-result xmlns=\"http://www.w3.org/2005/xpath-functions\"><match><group nr=\"1\">A</group><group nr=\"2\">1</group></match><non-match>,</non-match><match><group nr=\"1\">C</group><group nr=\"2\">15</group></match><non-match>,,</non-match><match><group nr=\"1\">D</group><group nr=\"2\">24</group></match><non-match>, </non-match><match><group nr=\"1\">X</group><group nr=\"2\">50</group></match><non-match>,</non-match></analyze-string-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-contains-token-001'(_Config) ->
   Qry = "
        fn:contains-token(\"red green blue \", \"red\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-contains-token-002'(_Config) ->
   Qry = "
        fn:contains-token((\"red\", \"green\", \"blue\"), \" red \")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-contains-token-003'(_Config) ->
   Qry = "
        fn:contains-token(\"red, green, blue\", \"red\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-contains-token-004'(_Config) ->
   Qry = "
        fn:contains-token(\"red green blue\", \"RED\", \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-true-001'(_Config) ->
   Qry = "
        fn:true()
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:boolean(1)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-false-001'(_Config) ->
   Qry = "
        fn:false()
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:boolean(0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-boolean-001'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"\")
          
           return 

        
        fn:boolean($abc[1])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-boolean-002'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"\")
          
           return 

        
        fn:boolean($abc[0])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-boolean-003'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"\")
          
           return 

        
        fn:boolean($abc[3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-not-001'(_Config) ->
   Qry = "
        fn:not(fn:true())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-not-002'(_Config) ->
   Qry = "
        fn:not(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-not-003'(_Config) ->
   Qry = "
        fn:not(\"false\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-years-from-duration-001'(_Config) ->
   Qry = "
        fn:years-from-duration(xs:yearMonthDuration(\"P20Y15M\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"21") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-years-from-duration-002'(_Config) ->
   Qry = "
        fn:years-from-duration(xs:yearMonthDuration(\"-P15M\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-years-from-duration-003'(_Config) ->
   Qry = "
        fn:years-from-duration(xs:dayTimeDuration(\"-P2DT15H\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-months-from-duration-001'(_Config) ->
   Qry = "
        fn:months-from-duration(xs:yearMonthDuration(\"P20Y15M\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-months-from-duration-002'(_Config) ->
   Qry = "
        fn:months-from-duration(xs:yearMonthDuration(\"-P20Y18M\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-6") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-months-from-duration-003'(_Config) ->
   Qry = "
        fn:months-from-duration(xs:dayTimeDuration(\"-P2DT15H0M0S\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-days-from-duration-001'(_Config) ->
   Qry = "
        fn:days-from-duration(xs:dayTimeDuration(\"P3DT10H\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-days-from-duration-002'(_Config) ->
   Qry = "
        fn:days-from-duration(xs:dayTimeDuration(\"P3DT55H\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-days-from-duration-003'(_Config) ->
   Qry = "
        fn:days-from-duration(xs:yearMonthDuration(\"P3Y5M\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-duration-001'(_Config) ->
   Qry = "
        fn:hours-from-duration(xs:dayTimeDuration(\"P3DT10H\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"10") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-duration-002'(_Config) ->
   Qry = "
        fn:hours-from-duration(xs:dayTimeDuration(\"P3DT12H32M12S\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"12") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-duration-003'(_Config) ->
   Qry = "
        fn:hours-from-duration(xs:dayTimeDuration(\"PT123H\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-duration-004'(_Config) ->
   Qry = "
        fn:hours-from-duration(xs:dayTimeDuration(\"-P3DT10H\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-10") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-minutes-from-duration-001'(_Config) ->
   Qry = "
        fn:minutes-from-duration(xs:dayTimeDuration(\"P3DT10H\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-minutes-from-duration-002'(_Config) ->
   Qry = "
        fn:minutes-from-duration(xs:dayTimeDuration(\"-P5DT12H30M\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-30") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-seconds-from-duration-001'(_Config) ->
   Qry = "
        fn:seconds-from-duration(xs:dayTimeDuration(\"P3DT10H12.5S\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"12.5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-seconds-from-duration-002'(_Config) ->
   Qry = "
        fn:seconds-from-duration(xs:dayTimeDuration(\"-PT256S\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-16.0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-dateTime-001'(_Config) ->
   Qry = "
        fn:dateTime(xs:date(\"1999-12-31\"),
                  xs:time(\"12:00:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime(\"1999-12-31T12:00:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-dateTime-002'(_Config) ->
   Qry = "
        fn:dateTime(xs:date(\"1999-12-31\"),
                  xs:time(\"24:00:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime(\"1999-12-31T00:00:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-year-from-dateTime-001'(_Config) ->
   Qry = "
        fn:year-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1999") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-year-from-dateTime-002'(_Config) ->
   Qry = "
        fn:year-from-dateTime(xs:dateTime(\"1999-05-31T21:30:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1999") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-year-from-dateTime-003'(_Config) ->
   Qry = "
        fn:year-from-dateTime(xs:dateTime(\"1999-12-31T19:20:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1999") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-year-from-dateTime-004'(_Config) ->
   Qry = "
        fn:year-from-dateTime(xs:dateTime(\"1999-12-31T24:00:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2000") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-year-from-dateTime-005'(_Config) ->
   Qry = "
        fn:year-from-dateTime(xs:dateTime(\"-0002-06-06T00:00:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-month-from-dateTime-001'(_Config) ->
   Qry = "
        fn:month-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-month-from-dateTime-002'(_Config) ->
   Qry = "
        fn:month-from-dateTime(xs:dateTime(\"1999-12-31T19:20:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"12") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-month-from-dateTime-003'(_Config) ->
   Qry = "
        fn:month-from-dateTime(fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T19:20:00-05:00\"),
                  xs:dayTimeDuration(\"PT0S\")))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-day-from-dateTime-001'(_Config) ->
   Qry = "
        fn:day-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"31") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-day-from-dateTime-002'(_Config) ->
   Qry = "
        fn:day-from-dateTime(xs:dateTime(\"1999-12-31T20:00:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"31") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-day-from-dateTime-003'(_Config) ->
   Qry = "
        fn:day-from-dateTime(fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T19:20:00-05:00\"),
                  xs:dayTimeDuration(\"PT0S\")))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-dateTime-001'(_Config) ->
   Qry = "
        fn:hours-from-dateTime(xs:dateTime(\"1999-05-31T08:20:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"8") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-dateTime-002'(_Config) ->
   Qry = "
        fn:hours-from-dateTime(xs:dateTime(\"1999-12-31T21:20:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"21") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-dateTime-003'(_Config) ->
   Qry = "
        fn:hours-from-dateTime(fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T21:20:00-05:00\"),
                  xs:dayTimeDuration(\"PT0S\")))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-dateTime-004'(_Config) ->
   Qry = "
        fn:hours-from-dateTime(xs:dateTime(\"1999-12-31T12:00:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"12") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-dateTime-005'(_Config) ->
   Qry = "
        fn:hours-from-dateTime(xs:dateTime(\"1999-12-31T24:00:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-minutes-from-dateTime-001'(_Config) ->
   Qry = "
        fn:minutes-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"20") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-minutes-from-dateTime-002'(_Config) ->
   Qry = "
        fn:minutes-from-dateTime(xs:dateTime(\"1999-05-31T13:30:00+05:30\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"30") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-seconds-from-dateTime-001'(_Config) ->
   Qry = "
        fn:seconds-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-timezone-from-dateTime-001'(_Config) ->
   Qry = "
        fn:timezone-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dayTimeDuration(\"-PT5H\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-timezone-from-dateTime-002'(_Config) ->
   Qry = "
        fn:timezone-from-dateTime(xs:dateTime(\"2000-06-12T13:20:00Z\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dayTimeDuration(\"PT0S\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-timezone-from-dateTime-003'(_Config) ->
   Qry = "
        fn:timezone-from-dateTime(xs:dateTime(\"2004-08-27T00:00:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-year-from-date-001'(_Config) ->
   Qry = "
        fn:year-from-date(xs:date(\"1999-05-31\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1999") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-year-from-date-002'(_Config) ->
   Qry = "
        fn:year-from-date(xs:date(\"2000-01-01+05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2000") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-year-from-date-003'(_Config) ->
   Qry = "
        fn:year-from-date(xs:date(\"-0002-06-01\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"-2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-month-from-date-001'(_Config) ->
   Qry = "
        fn:month-from-date(xs:date(\"1999-05-31-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-month-from-date-002'(_Config) ->
   Qry = "
        fn:month-from-date(xs:date(\"2000-01-01+05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-day-from-date-001'(_Config) ->
   Qry = "
        fn:day-from-date(xs:date(\"1999-05-31-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"31") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-day-from-date-002'(_Config) ->
   Qry = "
        fn:day-from-date(xs:date(\"2000-01-01+05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-timezone-from-date-001'(_Config) ->
   Qry = "
        fn:timezone-from-date(xs:date(\"1999-05-31-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dayTimeDuration(\"-PT5H\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-timezone-from-date-002'(_Config) ->
   Qry = "
        fn:timezone-from-date(xs:date(\"2000-06-12Z\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dayTimeDuration(\"PT0S\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-time-001'(_Config) ->
   Qry = "
        fn:hours-from-time(xs:time(\"11:23:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"11") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-time-002'(_Config) ->
   Qry = "
        fn:hours-from-time(xs:time(\"21:23:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"21") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-time-003'(_Config) ->
   Qry = "
        fn:hours-from-time(xs:time(\"01:23:00+05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-time-004'(_Config) ->
   Qry = "
        fn:hours-from-time(fn:adjust-time-to-timezone(xs:time(\"01:23:00+05:00\"),
                  xs:dayTimeDuration(\"PT0S\")))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"20") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-hours-from-time-005'(_Config) ->
   Qry = "
        fn:hours-from-time(xs:time(\"24:00:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-minutes-from-time-001'(_Config) ->
   Qry = "
        fn:minutes-from-time(xs:time(\"13:00:00Z\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-seconds-from-time-001'(_Config) ->
   Qry = "
        fn:seconds-from-time(xs:time(\"13:20:10.5\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"10.5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-timezone-from-time-001'(_Config) ->
   Qry = "
        fn:timezone-from-time(xs:time(\"13:20:00-05:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dayTimeDuration(\"-PT5H\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-timezone-from-time-002'(_Config) ->
   Qry = "
        fn:timezone-from-time(xs:time(\"13:20:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-dateTime-to-timezone-002'(_Config) ->
   Qry = "
          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")
          
           return 

        
        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00-07:00'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime('2002-03-07T12:00:00-05:00')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-dateTime-to-timezone-003'(_Config) ->
   Qry = "
          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")
          
           return 

        
        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00'),
                  $tz-10)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime('2002-03-07T10:00:00-10:00')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-dateTime-to-timezone-004'(_Config) ->
   Qry = "
          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")
          
           return 

        
        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00-07:00'),
                  $tz-10)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime('2002-03-07T07:00:00-10:00')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-dateTime-to-timezone-005'(_Config) ->
   Qry = "
        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00-07:00'),
                  xs:dayTimeDuration(\"PT10H\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime('2002-03-08T03:00:00+10:00')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-dateTime-to-timezone-006'(_Config) ->
   Qry = "
        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T00:00:00+01:00'),
                  xs:dayTimeDuration(\"-PT8H\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime('2002-03-06T15:00:00-08:00')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-dateTime-to-timezone-007'(_Config) ->
   Qry = "
        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00'),
                  ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime('2002-03-07T10:00:00')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-dateTime-to-timezone-008'(_Config) ->
   Qry = "
        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00-07:00'),
                  ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime('2002-03-07T10:00:00')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-date-to-timezone-003'(_Config) ->
   Qry = "
          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")
          
           return 

        
        fn:adjust-date-to-timezone(xs:date(\"2002-03-07\"),
                  $tz-10)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:date(\"2002-03-07-10:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-date-to-timezone-004'(_Config) ->
   Qry = "
          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")
          
           return 

        
        fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"),
                  $tz-10)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:date(\"2002-03-06-10:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-date-to-timezone-005'(_Config) ->
   Qry = "
        fn:adjust-date-to-timezone(xs:date(\"2002-03-07\"),
                  ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:date(\"2002-03-07\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-date-to-timezone-006'(_Config) ->
   Qry = "
        fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"),
                  ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:date(\"2002-03-07\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-time-to-timezone-002'(_Config) ->
   Qry = "
        fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:time(\"12:00:00-05:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-time-to-timezone-003'(_Config) ->
   Qry = "
          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")
          
           return 

        
        fn:adjust-time-to-timezone(xs:time(\"10:00:00\"),
                  $tz-10)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:time(\"10:00:00-10:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-time-to-timezone-004'(_Config) ->
   Qry = "
          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")
          
           return 

        
        fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"),
                  $tz-10)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:time(\"07:00:00-10:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-time-to-timezone-005'(_Config) ->
   Qry = "
        fn:adjust-time-to-timezone(xs:time(\"10:00:00\"), ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:time(\"10:00:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-time-to-timezone-006'(_Config) ->
   Qry = "
        fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"),
                  ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:time(\"10:00:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-adjust-time-to-timezone-007'(_Config) ->
   Qry = "
        fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"),
                  xs:dayTimeDuration(\"PT10H\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:time(\"03:00:00+10:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-ietf-date-001'(_Config) ->
   Qry = "
        fn:parse-ietf-date(\"Wed, 06 Jun 1994 07:29:35 GMT\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime(\"1994-06-06T07:29:35Z\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-ietf-date-002'(_Config) ->
   Qry = "
        fn:parse-ietf-date(\"Wed, 6 Jun 94 07:29:35 GMT\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime(\"1994-06-06T07:29:35Z\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-ietf-date-003'(_Config) ->
   Qry = "
        fn:parse-ietf-date(\"Wed Jun 06 11:54:45 EST 2013\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime(\"2013-06-06T11:54:45-05:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-ietf-date-004'(_Config) ->
   Qry = "
        fn:parse-ietf-date(\"Sunday, 06-Nov-94 08:49:37 GMT\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime(\"1994-11-06T08:49:37Z\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-ietf-date-005'(_Config) ->
   Qry = "
        fn:parse-ietf-date(\"Wed, 6 Jun 94 07:29:35 +0500\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:dateTime(\"1994-06-06T07:29:35+05:00\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-local-name-from-QName-001'(_Config) ->
   Qry = "
        fn:local-name-from-QName(fn:QName(\"http://www.example.com/example\",
                  \"person\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"person\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-namespace-uri-from-QName-001'(_Config) ->
   Qry = "
        fn:namespace-uri-from-QName(fn:QName(\"http://www.example.com/example\",
                  \"person\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:anyURI(\"http://www.example.com/example\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-namespace-uri-for-prefix-001'(_Config) ->
   Qry = "
          let $e := 
          
<z:a xmlns=\"http://example.org/one\" xmlns:z=\"http://example.org/two\">
  <b xmlns=\"\"/>
</z:a>
           return 

        
        fn:namespace-uri-for-prefix(\"z\", $e)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://example.org/two\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-namespace-uri-for-prefix-002'(_Config) ->
   Qry = "
          let $e := 
          
<z:a xmlns=\"http://example.org/one\" xmlns:z=\"http://example.org/two\">
  <b xmlns=\"\"/>
</z:a>
           return 

        
        fn:namespace-uri-for-prefix(\"\", $e)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://example.org/one\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-namespace-uri-for-prefix-003'(_Config) ->
   Qry = "
          let $e := 
          
<z:a xmlns=\"http://example.org/one\" xmlns:z=\"http://example.org/two\">
  <b xmlns=\"\"/>
</z:a>
           return 

        
        fn:namespace-uri-for-prefix((), $e)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://example.org/one\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-namespace-uri-for-prefix-004'(_Config) ->
   Qry = "
          let $e := 
          
<z:a xmlns=\"http://example.org/one\" xmlns:z=\"http://example.org/two\">
  <b xmlns=\"\"/>
</z:a>
           return 

        
        fn:namespace-uri-for-prefix(\"xml\", $e)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://www.w3.org/XML/1998/namespace\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-namespace-uri-for-prefix-005'(_Config) ->
   Qry = "
          let $e := 
          
<z:a xmlns=\"http://example.org/one\" xmlns:z=\"http://example.org/two\">
  <b xmlns=\"\"/>
</z:a>
           return 

        
        fn:namespace-uri-for-prefix(\"xml\", $e)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"http://www.w3.org/XML/1998/namespace\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-number-001'(_Config) ->
   Qry = "
          let $po := 
          <PurchaseOrder> <line-item>
         <description>Large widget</description> <price>8.95</price>
         <quantity>5.0</quantity> </line-item> <line-item>
         <description>Small widget</description> <price>3.99</price>
         <quantity>2.0</quantity> </line-item> <line-item>
         <description>Tiny widget</description> <price>1.49</price>a
         <quantity>805</quantity> </line-item>
         </PurchaseOrder>
           return 

        
          let $item1 := $po/line-item[1]
          
           return 

        
        fn:number($item1/quantity)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5.0e0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-number-002'(_Config) ->
   Qry = "
          let $po := 
          <PurchaseOrder> <line-item>
         <description>Large widget</description> <price>8.95</price>
         <quantity>5.0</quantity> </line-item> <line-item>
         <description>Small widget</description> <price>3.99</price>
         <quantity>2.0</quantity> </line-item> <line-item>
         <description>Tiny widget</description> <price>1.49</price>a
         <quantity>805</quantity> </line-item>
         </PurchaseOrder>
           return 

        
          let $item2 := $po/line-item[2]
          
           return 

        
        fn:number($item2/description)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-path-001'(_Config) ->
   Qry = "
          let $e := 
          
document {            
<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">
Freude, schöner Götterfunken,<br/>
Tochter aus Elysium,<br/>
Wir betreten feuertrunken,<br/>
Himmlische, dein Heiligtum.</p>}
         
           return 

        
        fn:path($e)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'/'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-path-002'(_Config) ->
   Qry = "
          let $e := 
          
document {            
<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">
Freude, schöner Götterfunken,<br/>
Tochter aus Elysium,<br/>
Wir betreten feuertrunken,<br/>
Himmlische, dein Heiligtum.</p>}
         
           return 

        
        fn:path($e/*:p)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'/Q{http://example.com/one}p[1]'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-path-003'(_Config) ->
   Qry = "
          let $e := 
          
document {            
<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">
Freude, schöner Götterfunken,<br/>
Tochter aus Elysium,<br/>
Wir betreten feuertrunken,<br/>
Himmlische, dein Heiligtum.</p>}
         
           return 

        
        fn:path($e/*:p/@xml:lang)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'/Q{http://example.com/one}p[1]/@Q{http://www.w3.org/XML/1998/namespace}lang'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-path-004'(_Config) ->
   Qry = "
          let $e := 
          
document {            
<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">
Freude, schöner Götterfunken,<br/>
Tochter aus Elysium,<br/>
Wir betreten feuertrunken,<br/>
Himmlische, dein Heiligtum.</p>}
         
           return 

        
        fn:path($e/*:p/@author)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'/Q{http://example.com/one}p[1]/@author'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-path-005'(_Config) ->
   Qry = "
          let $e := 
          
document {            
<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">
Freude, schöner Götterfunken,<br/>
Tochter aus Elysium,<br/>
Wir betreten feuertrunken,<br/>
Himmlische, dein Heiligtum.</p>}
         
           return 

        
        fn:path($e/*:p/*:br[2])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'/Q{http://example.com/one}p[1]/Q{http://example.com/one}br[2]'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-path-006'(_Config) ->
   Qry = "
          let $e := 
          
document {            
<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">
Freude, schöner Götterfunken,<br/>
Tochter aus Elysium,<br/>
Wir betreten feuertrunken,<br/>
Himmlische, dein Heiligtum.</p>}
         
           return 

        
        fn:path($e//text()[starts-with(normalize-space(),
                  'Tochter')])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'/Q{http://example.com/one}p[1]/text()[2]'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-path-007'(_Config) ->
   Qry = "
          let $emp := 
          
            <employee xml:id=\"ID21256\">
               <empnr>E21256</empnr>
               <first>John</first>
               <last>Brown</last>
            </employee>
         
           return 

        
        fn:path($emp)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'Q{http://www.w3.org/2005/xpath-functions}root()'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-path-008'(_Config) ->
   Qry = "
          let $emp := 
          
            <employee xml:id=\"ID21256\">
               <empnr>E21256</empnr>
               <first>John</first>
               <last>Brown</last>
            </employee>
         
           return 

        
        fn:path($emp/@xml:id)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'Q{http://www.w3.org/2005/xpath-functions}root()/@Q{http://www.w3.org/XML/1998/namespace}id'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-path-009'(_Config) ->
   Qry = "
          let $emp := 
          
            <employee xml:id=\"ID21256\">
               <empnr>E21256</empnr>
               <first>John</first>
               <last>Brown</last>
            </employee>
         
           return 

        
        fn:path($emp/empnr)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'Q{http://www.w3.org/2005/xpath-functions}root()/Q{}empnr[1]'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-index-of-001'(_Config) ->
   Qry = "
        fn:index-of((10, 20, 30, 40), 35)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-index-of-002'(_Config) ->
   Qry = "
        fn:index-of((10, 20, 30, 30, 20, 10), 20)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(2, 5)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-index-of-003'(_Config) ->
   Qry = "
        fn:index-of((\"a\", \"sport\", \"and\", \"a\", \"pastime\"),
                  \"a\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, 4)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-index-of-004'(_Config) ->
   Qry = "
        fn:index-of(current-date(), 23)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-index-of-005'(_Config) ->
   Qry = "
        fn:index-of([1, [5, 6], [6, 7]], 6)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(3, 4)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-empty-001'(_Config) ->
   Qry = "
        fn:empty((1,2,3)[10])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-empty-002'(_Config) ->
   Qry = "
        fn:empty(fn:remove((\"hello\", \"world\"), 1))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-empty-003'(_Config) ->
   Qry = "
        fn:empty([])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-empty-004'(_Config) ->
   Qry = "
        fn:empty(map{})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-empty-005'(_Config) ->
   Qry = "
        fn:empty(\"\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-exists-001'(_Config) ->
   Qry = "
        fn:exists(fn:remove((\"hello\"), 1))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-exists-002'(_Config) ->
   Qry = "
        fn:exists(fn:remove((\"hello\", \"world\"), 1))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-exists-003'(_Config) ->
   Qry = "
        fn:exists([])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-exists-004'(_Config) ->
   Qry = "
        fn:exists(map{})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-exists-005'(_Config) ->
   Qry = "
        fn:exists(\"\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-distinct-values-001'(_Config) ->
   Qry = "
        fn:distinct-values((1, 2.0, 3, 2))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(1, 3, 2.0)") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-distinct-values-002'(_Config) ->
   Qry = "
        fn:distinct-values((xs:untypedAtomic(\"cherry\"),
                  xs:untypedAtomic(\"plum\"), xs:untypedAtomic(\"plum\")))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(xs:untypedAtomic(\"cherry\"),
                  xs:untypedAtomic(\"plum\"))") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-insert-before-001'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"c\")
          
           return 

        
        fn:insert-before($abc, 0, \"z\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"z\", \"a\", \"b\", \"c\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-insert-before-002'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"c\")
          
           return 

        
        fn:insert-before($abc, 1, \"z\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"z\", \"a\", \"b\", \"c\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-insert-before-003'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"c\")
          
           return 

        
        fn:insert-before($abc, 2, \"z\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"a\", \"z\", \"b\", \"c\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-insert-before-004'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"c\")
          
           return 

        
        fn:insert-before($abc, 3, \"z\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"a\", \"b\", \"z\", \"c\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-insert-before-005'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"c\")
          
           return 

        
        fn:insert-before($abc, 4, \"z\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"a\", \"b\", \"c\", \"z\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-remove-001'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"c\")
          
           return 

        
        fn:remove($abc, 0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"a\", \"b\", \"c\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-remove-002'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"c\")
          
           return 

        
        fn:remove($abc, 1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"b\", \"c\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-remove-003'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"c\")
          
           return 

        
        fn:remove($abc, 6)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"a\", \"b\", \"c\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-remove-004'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"c\")
          
           return 

        
        fn:remove((), 3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-head-001'(_Config) ->
   Qry = "
        fn:head(1 to 5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-head-002'(_Config) ->
   Qry = "
        fn:head((\"a\", \"b\", \"c\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-head-003'(_Config) ->
   Qry = "
        fn:head(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-head-004'(_Config) ->
   Qry = "
        fn:head([1,2,3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1,2,3]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-tail-001'(_Config) ->
   Qry = "
        fn:tail(1 to 5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(2, 3, 4, 5)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-tail-002'(_Config) ->
   Qry = "
        fn:tail((\"a\", \"b\", \"c\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"b\", \"c\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-tail-003'(_Config) ->
   Qry = "
        fn:tail(\"a\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-tail-004'(_Config) ->
   Qry = "
        fn:tail(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-tail-005'(_Config) ->
   Qry = "
        fn:tail([1,2,3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-reverse-001'(_Config) ->
   Qry = "
          let $abc := (\"a\", \"b\", \"c\")
          
           return 

        
        fn:reverse($abc)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"c\", \"b\", \"a\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-reverse-002'(_Config) ->
   Qry = "
        fn:reverse((\"hello\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"hello\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-reverse-003'(_Config) ->
   Qry = "
        fn:reverse(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-reverse-004'(_Config) ->
   Qry = "
        fn:reverse([1,2,3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1,2,3]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-reverse-005'(_Config) ->
   Qry = "
        fn:reverse(([1,2,3],[4,5,6]))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"([4,5,6],[1,2,3])") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-subsequence-001'(_Config) ->
   Qry = "
          let $seq := (\"item1\", \"item2\", \"item3\", \"item4\", \"item5\")
          
           return 

        
        fn:subsequence($seq, 4)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"item4\", \"item5\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-subsequence-002'(_Config) ->
   Qry = "
          let $seq := (\"item1\", \"item2\", \"item3\", \"item4\", \"item5\")
          
           return 

        
        fn:subsequence($seq, 3, 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"item3\", \"item4\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-unordered-001'(_Config) ->
   Qry = "
        fn:unordered((1, 2, 3, 4, 5))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(1, 2, 3, 4, 5)") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-deep-equal-001'(_Config) ->
   Qry = "
          let $at := 
          <attendees> <name last='Parker'
            first='Peter'/> <name last='Barker' first='Bob'/> <name last='Parker'
            first='Peter'/> </attendees>
           return 

        
        fn:deep-equal($at, $at/*)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-deep-equal-002'(_Config) ->
   Qry = "
          let $at := 
          <attendees> <name last='Parker'
            first='Peter'/> <name last='Barker' first='Bob'/> <name last='Parker'
            first='Peter'/> </attendees>
           return 

        
        fn:deep-equal($at/name[1], $at/name[2])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-deep-equal-003'(_Config) ->
   Qry = "
          let $at := 
          <attendees> <name last='Parker'
            first='Peter'/> <name last='Barker' first='Bob'/> <name last='Parker'
            first='Peter'/> </attendees>
           return 

        
        fn:deep-equal($at/name[1], $at/name[3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-deep-equal-004'(_Config) ->
   Qry = "
          let $at := 
          <attendees> <name last='Parker'
            first='Peter'/> <name last='Barker' first='Bob'/> <name last='Parker'
            first='Peter'/> </attendees>
           return 

        
        fn:deep-equal($at/name[1], 'Peter Parker')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-deep-equal-005'(_Config) ->
   Qry = "
        fn:deep-equal(map{1:'a', 2:'b'}, map{2:'b', 1:'a'})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-deep-equal-006'(_Config) ->
   Qry = "
        fn:deep-equal([1, 2, 3], [1, 2, 3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-deep-equal-007'(_Config) ->
   Qry = "
        fn:deep-equal((1, 2, 3), [1, 2, 3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-count-001'(_Config) ->
   Qry = "
          let $po := 
          <PurchaseOrder> <line-item>
         <description>Large widget</description> <price>8.95</price>
         <quantity>5.0</quantity> </line-item> <line-item>
         <description>Small widget</description> <price>3.99</price>
         <quantity>2.0</quantity> </line-item> <line-item>
         <description>Tiny widget</description> <price>1.49</price>a
         <quantity>805</quantity> </line-item>
         </PurchaseOrder>
           return 

        
          let $item1 := $po/line-item[1]
          
           return 

        
          let $item2 := $po/line-item[2]
          
           return 

        
          let $seq1 := ($item1, $item2)
          
           return 

        
        fn:count($seq1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-count-002'(_Config) ->
   Qry = "
          let $seq3 := ()
          
           return 

        
        fn:count($seq3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-count-003'(_Config) ->
   Qry = "
          let $seq2 := (98.5, 98.3, 98.9)
          
           return 

        
        fn:count($seq2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-count-004'(_Config) ->
   Qry = "
          let $seq2 := (98.5, 98.3, 98.9)
          
           return 

        
        fn:count($seq2[. > 100])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-count-005'(_Config) ->
   Qry = "
        fn:count([])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-count-006'(_Config) ->
   Qry = "
        fn:count([1,2,3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-avg-001'(_Config) ->
   Qry = "
          let $seq3 := (3, 4, 5)
          
           return 

        
        fn:avg($seq3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"4.0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-avg-002'(_Config) ->
   Qry = "
          let $d1 := xs:yearMonthDuration(\"P20Y\")
          
           return 

        
          let $d2 := xs:yearMonthDuration(\"P10M\")
          
           return 

        
        fn:avg(($d1, $d2))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:yearMonthDuration(\"P10Y5M\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-avg-003'(_Config) ->
   Qry = "
        fn:avg(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-avg-004'(_Config) ->
   Qry = "
        fn:avg((xs:float('INF'), xs:float('-INF')))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:float('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-avg-005'(_Config) ->
   Qry = "
          let $seq3 := (3, 4, 5)
          
           return 

        
        fn:avg(($seq3, xs:float('NaN')))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:float('NaN')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-max-001'(_Config) ->
   Qry = "
        fn:max((3,4,5))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-max-002'(_Config) ->
   Qry = "
        fn:max([3,4,5])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-max-003'(_Config) ->
   Qry = "
        fn:max((xs:integer(5), xs:float(5.0), xs:double(0)))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double(5.0e0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-max-004'(_Config) ->
   Qry = "
        fn:max((fn:current-date(), xs:date(\"2100-01-01\")))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:date(\"2100-01-01\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-max-005'(_Config) ->
   Qry = "
        fn:max((\"a\", \"b\", \"c\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-min-001'(_Config) ->
   Qry = "
        fn:min((3,4,5))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-min-002'(_Config) ->
   Qry = "
        fn:min([3,4,5])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-min-003'(_Config) ->
   Qry = "
        fn:min((xs:integer(5), xs:float(5), xs:double(10)))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:double(5.0e0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-min-004'(_Config) ->
   Qry = "
        fn:min((fn:current-date(), xs:date(\"1900-01-01\")))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:date(\"1900-01-01\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-min-005'(_Config) ->
   Qry = "
        fn:min((\"a\", \"b\", \"c\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-sum-001'(_Config) ->
   Qry = "
          let $d1 := xs:yearMonthDuration(\"P20Y\")
          
           return 

        
          let $d2 := xs:yearMonthDuration(\"P10M\")
          
           return 

        
        fn:sum(($d1, $d2))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:yearMonthDuration(\"P20Y10M\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-sum-002'(_Config) ->
   Qry = "
          let $d1 := xs:yearMonthDuration(\"P20Y\")
          
           return 

        
          let $d2 := xs:yearMonthDuration(\"P10M\")
          
           return 

        
          let $seq1 := ($d1, $d2)
          
           return 

        
        fn:sum($seq1[. lt xs:yearMonthDuration('P3M')],
                  xs:yearMonthDuration('P0M'))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:yearMonthDuration(\"P0M\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-sum-003'(_Config) ->
   Qry = "
          let $seq3 := (3, 4, 5)
          
           return 

        
        fn:sum($seq3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"12") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-sum-004'(_Config) ->
   Qry = "
        fn:sum(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-sum-005'(_Config) ->
   Qry = "
        fn:sum((),())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-sum-006'(_Config) ->
   Qry = "
        fn:sum((1 to 100)[. lt 0], 0) 
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-sum-007'(_Config) ->
   Qry = "
          let $d1 := xs:yearMonthDuration(\"P20Y\")
          
           return 

        
          let $d2 := xs:yearMonthDuration(\"P10M\")
          
           return 

        
        fn:sum(($d1, $d2), \"ein Augenblick\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"xs:yearMonthDuration(\"P20Y10M\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-sum-008'(_Config) ->
   Qry = "
        fn:sum([1, 2, 3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"6") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-sum-009'(_Config) ->
   Qry = "
        fn:sum([[1, 2], [3, 4]])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"10") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-id-001'(_Config) ->
   Qry = "
          let $emp := 
          
        validate lax{    
          document{
            <employee xml:id=\"ID21256\"
                      xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"  
                      xmlns:xs=\"http://www.w3.org/2001/XMLSchema\">
               <empnr xsi:type=\"xs:ID\">E21256</empnr>
               <first>John</first>
               <last>Brown</last>
            </employee>
          }
        }
         
           return 

        
        $emp/id('ID21256')/name()
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"employee\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-id-002'(_Config) ->
   Qry = "
          let $emp := 
          
        validate lax{    
          document{
            <employee xml:id=\"ID21256\"
                      xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"  
                      xmlns:xs=\"http://www.w3.org/2001/XMLSchema\">
               <empnr xsi:type=\"xs:ID\">E21256</empnr>
               <first>John</first>
               <last>Brown</last>
            </employee>
          }
        }
         
           return 

        
        $emp/id('E21256')/name()
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"empnr\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-element-with-id-001'(_Config) ->
   Qry = "
          let $emp := 
          
         validate lax{    
          document{
            <employee xml:id=\"ID21256\"
                      xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"  
                      xmlns:xs=\"http://www.w3.org/2001/XMLSchema\">
               <empnr xsi:type=\"xs:ID\">E21256</empnr>
               <first>John</first>
               <last>Brown</last>
            </employee>
          }
        }
         
           return 

        
        $emp/fn:element-with-id('ID21256')/name()
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"employee\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-element-with-id-002'(_Config) ->
   Qry = "
          let $emp := 
          
         validate lax{    
          document{
            <employee xml:id=\"ID21256\"
                      xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"  
                      xmlns:xs=\"http://www.w3.org/2001/XMLSchema\">
               <empnr xsi:type=\"xs:ID\">E21256</empnr>
               <first>John</first>
               <last>Brown</last>
            </employee>
          }
        }
         
           return 

        
        $emp/fn:element-with-id('E21256')/name()
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"employee\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-idref-001'(_Config) ->
   Qry = "
          let $emp := 
          
      validate lax {  
        document {    
          <employees xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"  
                     xmlns:xs=\"http://www.w3.org/2001/XMLSchema\">  
            <employee xml:id=\"ID21256\">
               <empnr xsi:type=\"xs:ID\">E21256</empnr>
               <first>Anil</first>
               <last>Singh</last>
               <deputy xsi:type=\"xs:IDREF\">E30561</deputy>
            </employee>
            <employee xml:id=\"ID30561\">
               <empnr xsi:type=\"xs:ID\">E30561</empnr>
               <first>John</first>
               <last>Brown</last>
               <manager xsi:type=\"xs:IDREF\">ID21256</manager>
            </employee>
          </employees>
        }
      }
         
           return 

        
        $emp/(element-with-id('ID21256')/@xml:id => fn:idref())/ancestor::employee/last => string()
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Brown\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-idref-002'(_Config) ->
   Qry = "
          let $emp := 
          
      validate lax {  
        document {    
          <employees xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"  
                     xmlns:xs=\"http://www.w3.org/2001/XMLSchema\">  
            <employee xml:id=\"ID21256\">
               <empnr xsi:type=\"xs:ID\">E21256</empnr>
               <first>Anil</first>
               <last>Singh</last>
               <deputy xsi:type=\"xs:IDREF\">E30561</deputy>
            </employee>
            <employee xml:id=\"ID30561\">
               <empnr xsi:type=\"xs:ID\">E30561</empnr>
               <first>John</first>
               <last>Brown</last>
               <manager xsi:type=\"xs:IDREF\">ID21256</manager>
            </employee>
          </employees>
        }
      }
         
           return 

        
        $emp/(element-with-id('E30561')/empnr => fn:idref())/ancestor::employee/last => string()
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Singh\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-serialize-001'(_Config) ->
   Qry = "
          let $params := 
          
<output:serialization-parameters 
        xmlns:output=\"http://www.w3.org/2010/xslt-xquery-serialization\">
  <output:omit-xml-declaration value=\"yes\"/>
</output:serialization-parameters>
         
           return 

        
          let $data := 
          
<a b=\"3\"/>
         
           return 

        
        fn:serialize($data, $params)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'<a b=\"3\"/>'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-serialize-002'(_Config) ->
   Qry = "
          let $data := 
          
<a b=\"3\"/>
         
           return 

        
        fn:serialize($data, map{\"method\":\"xml\", \"omit-xml-declaration\":true()})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'<a b=\"3\"/>'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-last-001'(_Config) ->
   Qry = "
        (1 to 20)[fn:last() - 1]
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"19") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-function-lookup-001'(_Config) ->
   Qry = "
        fn:function-lookup(xs:QName('fn:substring'), 2)('abcd',
                  2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'bcd'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-function-name-001'(_Config) ->
   Qry = "
        fn:function-name(fn:substring#2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"fn:QName(\"http://www.w3.org/2005/xpath-functions\",
                  \"fn:substring\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-function-name-002'(_Config) ->
   Qry = "
        fn:function-name(function($node){count($node/*)})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-function-arity-001'(_Config) ->
   Qry = "
        fn:function-arity(fn:substring#2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-function-arity-002'(_Config) ->
   Qry = "
        fn:function-arity(function($node){name($node)})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-function-arity-003'(_Config) ->
   Qry = "
        let $initial := fn:substring(?, 1, 1) return
                  fn:function-arity($initial)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-for-each-001'(_Config) ->
   Qry = "
        fn:for-each(1 to 5, function($a) { $a * $a })
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, 4, 9, 16, 25)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-for-each-002'(_Config) ->
   Qry = "
        fn:for-each((\"john\", \"jane\"),
                  fn:string-to-codepoints#1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(106, 111, 104, 110, 106, 97, 110, 101)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-for-each-003'(_Config) ->
   Qry = "
        fn:for-each((\"23\", \"29\"), xs:int#1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(23, 29)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-filter-001'(_Config) ->
   Qry = "
        fn:filter(1 to 10, function($a) {$a mod 2 = 0})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(2, 4, 6, 8, 10)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-filter-002'(_Config) ->
   Qry = "
        fn:filter((), fn:lang(\"en\", ?))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-fold-left-001'(_Config) ->
   Qry = "
        fn:fold-left(1 to 5, 0, function($a, $b) { $a + $b
                  })
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"15") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-fold-left-002'(_Config) ->
   Qry = "
        fn:fold-left((2,3,5,7), 1, function($a, $b) { $a * $b
                  })
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"210") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-fold-left-003'(_Config) ->
   Qry = "
        fn:fold-left((true(), false(), false()), false(), function($a, $b) {
                  $a or $b })
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-fold-left-004'(_Config) ->
   Qry = "
        fn:fold-left((true(), false(), false()), false(), function($a, $b) {
                  $a and $b })
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-fold-left-005'(_Config) ->
   Qry = "
        fn:fold-left(1 to 5, (), function($a, $b) {($b,
                  $a)})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(5,4,3,2,1)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-fold-left-006'(_Config) ->
   Qry = "
        fn:fold-left(1 to 5, \"\", fn:concat(?, \".\", ?))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\".1.2.3.4.5\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-fold-left-007'(_Config) ->
   Qry = "
        fn:fold-left(1 to 5, \"$zero\", fn:concat(\"$f(\", ?, \", \", ?, \")\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"$f($f($f($f($f($zero, 1), 2), 3), 4), 5)\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-fold-left-008'(_Config) ->
   Qry = "
        fn:fold-left(1 to 5, map{}, function($map, $n) {map:put($map, $n, $n*2)})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{1:2, 2:4, 3:6, 4:8, 5:10}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-fold-right-001'(_Config) ->
   Qry = "
        fn:fold-right(1 to 5, 0, function($a, $b) { $a + $b
                  })
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"15") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-fold-right-002'(_Config) ->
   Qry = "
        fn:fold-right(1 to 5, \"\", fn:concat(?, \".\", ?))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"1.2.3.4.5.\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-fold-right-003'(_Config) ->
   Qry = "
        fn:fold-right(1 to 5, \"$zero\", concat(\"$f(\", ?, \", \", ?,
                  \")\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"$f(1, $f(2, $f(3, $f(4, $f(5, $zero)))))\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-for-each-pair-001'(_Config) ->
   Qry = "
        fn:for-each-pair((\"a\", \"b\", \"c\"), (\"x\", \"y\", \"z\"),
                  concat#2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"ax\", \"by\", \"cz\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-for-each-pair-002'(_Config) ->
   Qry = "
        fn:for-each-pair(1 to 5, 1 to 5, function($a, $b){10*$a + $b})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(11, 22, 33, 44, 55)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-for-each-pair-003'(_Config) ->
   Qry = "
        let $s := 1 to 8 return fn:for-each-pair($s, tail($s), function($a, $b){$a*$b})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(2, 6, 12, 20, 30, 42, 56)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-sort-001'(_Config) ->
   Qry = "
        fn:sort((1, 4, 6, 5, 3))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, 3, 4, 5, 6)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-sort-002'(_Config) ->
   Qry = "
        fn:sort((1, -2, 5, 10, -10, 10, 8), (), fn:abs#1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, -2, 5, 8, 10, -10, 10)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-apply-001'(_Config) ->
   Qry = "
        fn:apply(fn:concat#3, [\"a\", \"b\", \"c\"])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-merge-001'(_Config) ->
   Qry = "
        map:merge(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-merge-002'(_Config) ->
   Qry = "
        map:merge((map:entry(0, \"no\"), map:entry(1, \"yes\")))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{0:\"no\", 1:\"yes\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-merge-003'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:merge(($week, map{7:\"Unbekannt\"}))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",
                  5:\"Freitag\", 6:\"Samstag\", 7:\"Unbekannt\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-merge-004'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:merge(($week, map{6:\"Sonnabend\"}), map{\"duplicates\":\"use-last\"})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",
                  5:\"Freitag\", 6:\"Sonnabend\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-merge-005'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:merge(($week, map{6:\"Sonnabend\"}), map{\"duplicates\":\"use-first\"})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",
                  5:\"Freitag\", 6:\"Samstag\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-merge-006'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:merge(($week, map{6:\"Sonnabend\"}), map{\"duplicates\":\"combine\"})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",
                  5:\"Freitag\", 6:(\"Samstag\", \"Sonnabend\")}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-keys-001'(_Config) ->
   Qry = "
        map:keys(map{1:\"yes\", 2:\"no\"})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(1,2)") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-contains-001'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:contains($week, 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-contains-002'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:contains($week, 9)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-contains-003'(_Config) ->
   Qry = "
        map:contains(map{}, \"xyz\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-contains-004'(_Config) ->
   Qry = "
        map:contains(map{\"xyz\":23}, \"xyz\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-contains-005'(_Config) ->
   Qry = "
        map:contains(map{\"abc\":23, \"xyz\":()}, \"xyz\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-get-001'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:get($week, 4)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Donnerstag\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-get-002'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:get($week, 9)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-get-003'(_Config) ->
   Qry = "
        map:get(map:entry(7,()), 7)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"()") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-find-001'(_Config) ->
   Qry = "
          let $responses := [map{0:'no', 1:'yes'}, map{0:'non', 1:'oui'}, 
                  map{0:'nein', 1:('ja', 'doch')}]
          
           return 

        
        map:find($responses, 0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['no', 'non', 'nein']") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-find-002'(_Config) ->
   Qry = "
          let $responses := [map{0:'no', 1:'yes'}, map{0:'non', 1:'oui'}, 
                  map{0:'nein', 1:('ja', 'doch')}]
          
           return 

        
        map:find($responses, 1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"['yes', 'oui', ('ja', 'doch')]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-find-003'(_Config) ->
   Qry = "
          let $responses := [map{0:'no', 1:'yes'}, map{0:'non', 1:'oui'}, 
                  map{0:'nein', 1:('ja', 'doch')}]
          
           return 

        
        map:find($responses, 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-find-004'(_Config) ->
   Qry = "
          let $inventory := map{\"name\":\"car\", \"id\":\"QZ123\", 
      \"parts\": [map{\"name\":\"engine\", \"id\":\"YW678\", \"parts\":[]}]}
          
           return 

        
        map:find($inventory, \"parts\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[[map{\"name\":\"engine\", \"id\":\"YW678\", \"parts\":[]}], []]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-put-001'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:put($week, 6, \"Sonnabend\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",
                  5:\"Freitag\", 6:\"Sonnabend\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-put-002'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:put($week, -1, \"Unbekannt\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",
                  5:\"Freitag\", 6:\"Samstag\", -1:\"Unbekannt\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-entry-001'(_Config) ->
   Qry = "
        map:entry(\"M\", \"Monday\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"M\":\"Monday\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-remove-001'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:remove($week, 4)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 5:\"Freitag\",
                  6:\"Samstag\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-remove-002'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:remove($week, 23)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",
                  5:\"Freitag\", 6:\"Samstag\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-remove-003'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:remove($week, (0, 6 to 7))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-remove-004'(_Config) ->
   Qry = "
          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",
       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}
          
           return 

        
        map:remove($week, ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\",
                  6:\"Samstag\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-for-each-001'(_Config) ->
   Qry = "
        map:for-each(map{1:\"yes\", 2:\"no\"}, function($k,
                  $v){$k})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(1,2)") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-for-each-002'(_Config) ->
   Qry = "
        distinct-values(map:for-each(map{1:\"yes\", 2:\"no\"}, function($k,
                  $v){$v}))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(\"yes\", \"no\")") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-for-each-003'(_Config) ->
   Qry = "
        map:merge(map:for-each(map{\"a\":1, \"b\":2}, function($k,
                  $v){map:entry($k, $v+1)}))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"a\":2, \"b\":3}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-size-001'(_Config) ->
   Qry = "
        map:size(map{})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-map-size-002'(_Config) ->
   Qry = "
        map:size(map{\"true\":1, \"false\":0})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-collation-key-001'(_Config) ->
   Qry = "
          let $C := 'http://www.w3.org/2013/collation/UCA?strength=primary'
          
           return 

        
        map:merge((map{collation-key(\"A\", $C):1}, map{collation-key(\"a\",
                  $C):2}), map{\"duplicates\":\"use-last\"})(collation-key(\"A\", $C))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-collation-key-002'(_Config) ->
   Qry = "
          let $C := 'http://www.w3.org/2013/collation/UCA?strength=primary'
          
           return 

        
        let $M := map{collation-key(\"A\", $C):1, collation-key(\"B\", $C):2}
                  return $M(collation-key(\"a\", $C))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-json-to-xml-001'(_Config) ->
   Qry = "
        json-to-xml('{\"x\": 1, \"y\": [3,4,5]}')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"x\">1</number><array key=\"y\"><number>3</number><number>4</number><number>5</number></array></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-json-to-xml-002'(_Config) ->
   Qry = "
        json-to-xml('\"abcd\"', map{'liberal': false()})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<string xmlns=\"http://www.w3.org/2005/xpath-functions\">abcd</string>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-json-to-xml-003'(_Config) ->
   Qry = "
        json-to-xml('{\"x\": \"\\\\\", \"y\": \"\\u0025\"}')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><string key=\"x\">\\</string><string key=\"y\">%</string></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-json-to-xml-004'(_Config) ->
   Qry = "
        json-to-xml('{\"x\": \"\\\\\", \"y\": \"\\u0025\"}', map{'escape':
                  true()})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><string escaped=\"true\" key=\"x\">\\\\</string><string key=\"y\">%</string></map>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-json-001'(_Config) ->
   Qry = "
        parse-json('{\"x\":1, \"y\":[3,4,5]}')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"x\":1e0,\"y\":[3e0,4e0,5e0]}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-json-002'(_Config) ->
   Qry = "
        parse-json('\"abcd\"')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abcd\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-json-003'(_Config) ->
   Qry = "
        parse-json('{\"x\":\"\\\\\", \"y\":\"\\u0025\"}')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"x\":\"\\\",\"y\":\"%\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-json-004'(_Config) ->
   Qry = "
        parse-json('{\"x\":\"\\\\\", \"y\":\"\\u0025\"}', map{'escape':true()})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"x\":\"\\\\\",\"y\":\"%\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-json-005'(_Config) ->
   Qry = "
        parse-json('{\"x\":\"\\\\\", \"y\":\"\\u0000\"}')
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"x\":\"\\\",\"y\":codepoints-to-string(65533)}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-json-006'(_Config) ->
   Qry = "
        parse-json('{\"x\":\"\\\\\", \"y\":\"\\u0000\"}', map{'escape':true()})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"x\":\"\\\\\",\"y\":\"\\u0000\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-fn-parse-json-007'(_Config) ->
   Qry = "
        parse-json('{\"x\":\"\\\\\", \"y\":\"\\u0000\"}', map{'fallback':function($s){'['||$s||']'}})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map{\"x\":\"\\\",\"y\":\"[\\u0000]\"}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-size-001'(_Config) ->
   Qry = "
        array:size([\"a\", \"b\", \"c\"])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-size-002'(_Config) ->
   Qry = "
        array:size([\"a\", [\"b\", \"c\"]])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-size-003'(_Config) ->
   Qry = "
        array:size([ ])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-size-004'(_Config) ->
   Qry = "
        array:size([[ ]])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-get-001'(_Config) ->
   Qry = "
        [\"a\", \"b\", \"c\"] => array:get(2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-get-002'(_Config) ->
   Qry = "
        [\"a\", [\"b\", \"c\"]] => array:get(2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"b\", \"c\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-put-001'(_Config) ->
   Qry = "
        array:put([\"a\", \"b\", \"c\"], 2, \"d\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"d\", \"c\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-put-002'(_Config) ->
   Qry = "
        array:put([\"a\", \"b\", \"c\"], 2, (\"d\", \"e\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", (\"d\", \"e\"), \"c\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-put-003'(_Config) ->
   Qry = "
        array:put([\"a\"], 1, [\"d\", \"e\"])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[[\"d\", \"e\"]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-append-001'(_Config) ->
   Qry = "
        array:append([\"a\", \"b\", \"c\"], \"d\")
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-append-002'(_Config) ->
   Qry = "
        array:append([\"a\", \"b\", \"c\"], (\"d\", \"e\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", \"c\", (\"d\", \"e\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-append-003'(_Config) ->
   Qry = "
        array:append([\"a\", \"b\", \"c\"], [\"d\", \"e\"])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", \"c\", [\"d\", \"e\"]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-join-001'(_Config) ->
   Qry = "
        array:join(())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-join-002'(_Config) ->
   Qry = "
        array:join([1, 2, 3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1, 2, 3]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-join-003'(_Config) ->
   Qry = "
        array:join(([\"a\", \"b\"], [\"c\", \"d\"]))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-join-004'(_Config) ->
   Qry = "
        array:join(([\"a\", \"b\"], [\"c\", \"d\"], [ ]))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-join-005'(_Config) ->
   Qry = "
        array:join(([\"a\", \"b\"], [\"c\", \"d\"], [[\"e\", \"f\"]]))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", \"c\", \"d\", [\"e\", \"f\"]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-subarray-001'(_Config) ->
   Qry = "
        array:subarray([\"a\", \"b\", \"c\", \"d\"], 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"b\", \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-subarray-002'(_Config) ->
   Qry = "
        array:subarray([\"a\", \"b\", \"c\", \"d\"], 5)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-subarray-003'(_Config) ->
   Qry = "
        array:subarray([\"a\", \"b\", \"c\", \"d\"], 2, 0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-subarray-004'(_Config) ->
   Qry = "
        array:subarray([\"a\", \"b\", \"c\", \"d\"], 2, 1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"b\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-subarray-005'(_Config) ->
   Qry = "
        array:subarray([\"a\", \"b\", \"c\", \"d\"], 2, 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"b\", \"c\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-subarray-006'(_Config) ->
   Qry = "
        array:subarray([\"a\", \"b\", \"c\", \"d\"], 5, 0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-subarray-007'(_Config) ->
   Qry = "
        array:subarray([ ], 1, 0)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-remove-001'(_Config) ->
   Qry = "
        array:remove([\"a\", \"b\", \"c\", \"d\"], 1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"b\", \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-remove-002'(_Config) ->
   Qry = "
        array:remove([\"a\", \"b\", \"c\", \"d\"], 2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"c\", \"d\" ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-remove-003'(_Config) ->
   Qry = "
        array:remove([\"a\"], 1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-remove-004'(_Config) ->
   Qry = "
        array:remove([\"a\", \"b\", \"c\", \"d\"], 1 to 3)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-remove-005'(_Config) ->
   Qry = "
        array:remove([\"a\", \"b\", \"c\", \"d\"], ())
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-insert-before-001'(_Config) ->
   Qry = "
        array:insert-before([\"a\", \"b\", \"c\", \"d\"], 3, (\"x\", \"y\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", (\"x\", \"y\"), \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-insert-before-002'(_Config) ->
   Qry = "
        array:insert-before([\"a\", \"b\", \"c\", \"d\"], 5, (\"x\", \"y\"))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", \"c\", \"d\", (\"x\", \"y\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-insert-before-003'(_Config) ->
   Qry = "
        array:insert-before([\"a\", \"b\", \"c\", \"d\"], 3, [\"x\", \"y\"])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", [\"x\", \"y\"], \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-head-001'(_Config) ->
   Qry = "
        array:head([5, 6, 7, 8])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"5") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-head-002'(_Config) ->
   Qry = "
        array:head([[\"a\", \"b\"], [\"c\", \"d\"]])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-head-003'(_Config) ->
   Qry = "
        array:head([(\"a\", \"b\"), (\"c\", \"d\")])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\", \"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-tail-001'(_Config) ->
   Qry = "
        array:tail([5, 6, 7, 8])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[6, 7, 8]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-tail-002'(_Config) ->
   Qry = "
        array:tail([5])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-reverse-001'(_Config) ->
   Qry = "
        array:reverse([\"a\", \"b\", \"c\", \"d\"])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"d\", \"c\", \"b\", \"a\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-reverse-002'(_Config) ->
   Qry = "
        array:reverse([(\"a\", \"b\"), (\"c\", \"d\")])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[(\"c\", \"d\"), (\"a\", \"b\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-reverse-003'(_Config) ->
   Qry = "
        array:reverse([(1 to 5)])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[(1, 2, 3, 4, 5)]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-reverse-004'(_Config) ->
   Qry = "
        array:reverse([])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-for-each-001'(_Config) ->
   Qry = "
        array:for-each([\"A\", \"B\", 1, 2], function($z) {$z instance of xs:integer})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[false(), false(), true(), true()]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-for-each-002'(_Config) ->
   Qry = "
        array:for-each([\"the cat\", \"sat\", \"on the mat\"], fn:tokenize#1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[(\"the\", \"cat\"), \"sat\", (\"on\", \"the\", \"mat\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-filter-001'(_Config) ->
   Qry = "
        array:filter([\"A\", \"B\", 1, 2], function($x) {$x instance of xs:integer})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1, 2]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-filter-002'(_Config) ->
   Qry = "
        array:filter([\"the cat\", \"sat\", \"on the mat\"], function($s){fn:count(fn:tokenize($s)) gt 1})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"the cat\", \"on the mat\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-filter-003'(_Config) ->
   Qry = "
        array:filter([\"A\", \"B\", \"\", 0, 1], boolean#1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"A\", \"B\", 1]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-fold-left-001'(_Config) ->
   Qry = "
        array:fold-left([true(), true(), false()], true(), function($x, $y){$x and $y})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-fold-left-002'(_Config) ->
   Qry = "
        array:fold-left([true(), true(), false()], false(), function($x, $y){$x or $y})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-fold-left-003'(_Config) ->
   Qry = "
        array:fold-left([1,2,3], [], function($x, $y){[$x, $y]})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[[[[], 1], 2], 3]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-fold-right-001'(_Config) ->
   Qry = "
        array:fold-right([true(), true(), false()], true(), function($x, $y){$x and $y})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-fold-right-002'(_Config) ->
   Qry = "
        array:fold-right([true(), true(), false()], false(), function($x, $y){$x or $y})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-fold-right-003'(_Config) ->
   Qry = "
        array:fold-right([1,2,3], [], function($x, $y){[$x, $y]})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1, [2, [3, []]]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-for-each-pair-001'(_Config) ->
   Qry = "
        array:for-each-pair([\"A\", \"B\", \"C\"], [1, 2, 3], function($x, $y) { array {$x, $y}})
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[[\"A\", 1], [\"B\", 2], [\"C\", 3]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-for-each-pair-002'(_Config) ->
   Qry = "
        let $A := [\"A\", \"B\", \"C\", \"D\"] return array:for-each-pair($A, array:tail($A), concat#2)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"AB\", \"BC\", \"CD\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-sort-001'(_Config) ->
   Qry = "
        array:sort([1, 4, 6, 5, 3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1, 3, 4, 5, 6]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-sort-002'(_Config) ->
   Qry = "
        array:sort([1, -2, 5, 10, -10, 10, 8], (), fn:abs#1)
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1, -2, 5, 8, 10, -10, 10]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-sort-003'(_Config) ->
   Qry = "
        array:sort([(1,0), (1,1), (0,1), (0,0)])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[(0,0), (0,1), (1,0), (1,1)]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-flatten-001'(_Config) ->
   Qry = "
        array:flatten([1, 4, 6, 5, 3])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, 4, 6, 5, 3)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-flatten-002'(_Config) ->
   Qry = "
        array:flatten(([1, 2, 5], [[10, 11], 12], [], 13))
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, 2, 5, 10, 11, 12, 13)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fo-test-array-flatten-003'(_Config) ->
   Qry = "
        array:flatten([(1,0), (1,1), (0,1), (0,0)])
      ",
   {Env,Opts} = xqerl_test:handle_environment(environment('global')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, 0, 1, 1, 0, 1, 0, 0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
