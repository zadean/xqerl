-module('app_spec_examples_SUITE').

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
    __BaseDir = filename:join(TD, "app"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
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
        {group, group_13},
        {group, group_14},
        {group, group_15},
        {group, group_16},
        {group, group_17},
        {group, group_18},
        {group, group_19},
        {group, group_20},
        {group, group_21},
        {group, group_22},
        {group, group_23},
        {group, group_24},
        {group, group_25},
        {group, group_26}
    ].

groups() ->
    [
        {group_0, [parallel], [
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
            'fo-test-fn-round-002'
        ]},
        {group_1, [parallel], [
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
            'fo-test-fn-format-number-009'
        ]},
        {group_2, [parallel], [
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
            'fo-test-math-log-005'
        ]},
        {group_3, [parallel], [
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
            'fo-test-math-pow-002'
        ]},
        {group_4, [parallel], [
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
            'fo-test-math-pow-026'
        ]},
        {group_5, [parallel], [
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
            'fo-test-math-cos-006'
        ]},
        {group_6, [parallel], [
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
            'fo-test-math-acos-001'
        ]},
        {group_7, [parallel], [
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
            'fo-test-math-atan2-008'
        ]},
        {group_8, [parallel], [
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
            'fo-test-fn-string-join-002'
        ]},
        {group_9, [parallel], [
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
            'fo-test-fn-translate-002'
        ]},
        {group_10, [parallel], [
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
            'fo-test-fn-ends-with-001'
        ]},
        {group_11, [parallel], [
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
            'fo-test-fn-matches-003'
        ]},
        {group_12, [parallel], [
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
            'fo-test-fn-contains-token-002'
        ]},
        {group_13, [parallel], [
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
            'fo-test-fn-minutes-from-duration-001'
        ]},
        {group_14, [parallel], [
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
            'fo-test-fn-seconds-from-dateTime-001'
        ]},
        {group_15, [parallel], [
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
            'fo-test-fn-adjust-dateTime-to-timezone-004'
        ]},
        {group_16, [parallel], [
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
            'fo-test-fn-namespace-uri-for-prefix-003'
        ]},
        {group_17, [parallel], [
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
            'fo-test-fn-exists-001'
        ]},
        {group_18, [parallel], [
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
            'fo-test-fn-tail-005'
        ]},
        {group_19, [parallel], [
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
            'fo-test-fn-avg-003'
        ]},
        {group_20, [parallel], [
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
            'fo-test-fn-element-with-id-001'
        ]},
        {group_21, [parallel], [
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
            'fo-test-fn-fold-left-007'
        ]},
        {group_22, [parallel], [
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
            'fo-test-map-get-002'
        ]},
        {group_23, [parallel], [
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
            'fo-test-fn-parse-json-001'
        ]},
        {group_24, [parallel], [
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
            'fo-test-array-subarray-001'
        ]},
        {group_25, [parallel], [
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
            'fo-test-array-for-each-001'
        ]},
        {group_26, [parallel], [
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
            'fo-test-array-flatten-003'
        ]}
    ].

environment('global', __BaseDir) ->
    [
        {'decimal-formats', [
            {"ch", [
                {'decimal-separator', "·"},
                {'grouping-separator', "ʹ"}
            ]},
            {"fortran", [{'exponent-separator', "E"}]}
        ]},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [
            {"http://www.w3.org/2005/xpath-functions/math", "math"},
            {"http://www.w3.org/2005/xpath-functions/map", "map"},
            {"http://www.w3.org/2005/xpath-functions/array", "array"}
        ]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'fo-test-fn-string-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        string(23)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"23\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        string(false())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"false\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        string(\"Paris\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"Paris\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        string((1, 2, 3))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        string([[1, 2], [3, 4]])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOTY0014") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOTY0014 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        string(abs#1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOTY0014") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOTY0014 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $para := \n"
        "          \n"
        "<para>In a hole in the ground there lived a <term author=\"Tolkien\">hobbit</term>.</para>\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        string($para)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"In a hole in the ground there lived a hobbit.\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-data-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        data(123)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-data-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "123") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-data-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        data((123, 456))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-data-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "123, 456") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-data-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        data([[1,2],[3,4]])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-data-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1, 2, 3, 4") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-data-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $para := \n"
        "          \n"
        "<para>In a hole in the ground there lived a <term author=\"Tolkien\">hobbit</term>.</para>\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        data($para)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-data-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "xs:untypedAtomic(\"In a hole in the ground there lived a hobbit.\")"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-data-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $para := \n"
        "          \n"
        "<para>In a hole in the ground there lived a <term author=\"Tolkien\">hobbit</term>.</para>\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        data($para/term/@author)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-data-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:untypedAtomic(\"Tolkien\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-data-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        data(abs#1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-data-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOTY0013") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOTY0013 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-error-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:error()\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-error-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOER0000") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOER0000 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-error-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:error(fn:QName('http://www.example.com/HR', 'myerr:toohighsal'),\n"
        "                  'Does not apply because salary is too high')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-error-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "*") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: * " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-abs-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:abs(10.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-abs-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "10.5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-abs-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:abs(-10.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-abs-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "10.5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-ceiling-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:ceiling(10.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-ceiling-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "11") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-ceiling-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:ceiling(-10.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-ceiling-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-10") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-floor-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:floor(10.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-floor-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "10") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-floor-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:floor(-10.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-floor-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-11") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round(2.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3.0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round(2.4999)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2.0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round(-2.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-2.0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round(1.125, 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.13") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round(8452, -2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "8500") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round(3.1415e0, 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3.14e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-half-to-even-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round-half-to-even(0.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-half-to-even-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-half-to-even-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round-half-to-even(1.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-half-to-even-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2.0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-half-to-even-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round-half-to-even(2.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-half-to-even-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2.0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-half-to-even-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round-half-to-even(3.567812e+3, 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-half-to-even-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3567.81e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-half-to-even-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round-half-to-even(4.7564e-3, 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-half-to-even-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-round-half-to-even-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:round-half-to-even(35612.25, -2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-round-half-to-even-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "35600") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-integer-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-integer(123, '0000')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-integer-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"0123\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-integer-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-integer(21, '1;o', 'en')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-integer-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"21st\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-integer-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-integer(7, 'a')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-integer-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"g\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-integer-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-integer(57, 'I')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-integer-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"LVII\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-integer-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-integer(1234, '#;##0;')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-integer-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"1;234\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-number-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-number(12345.6, '#,###.00')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-number-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"12,345.60\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-number-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-number(12345678.9, '9,999.99')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-number-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"12,345,678.90\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-number-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-number(123.9, '9999')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-number-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"0124\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-number-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-number(0.14, '01%')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-number-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"14%\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-number-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-number(-6, '000')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-number-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"-006\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-number-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-number(1234.5678, '#ʹ##0·00',\n"
        "                  'ch')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-number-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"1ʹ234·57\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-number-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-number(1234.5678, '00.000E0', 'fortran')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-number-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"12.346E2\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-number-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-number(0.234, '0.0E0', 'fortran')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-number-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"2.3E-1\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-number-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-number(0.234, '#.00E0', 'fortran')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-number-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"0.23E0\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-format-number-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        format-number(0.234, '.00E0', 'fortran')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-format-number-010.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\".23E0\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pi-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        2*math:pi()\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pi-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "6.283185307179586e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp(0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp(1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 2.7182818284590455e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp(2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "7.38905609893065e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp(-1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.36787944117144233e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp(math:pi())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "23.140692632779267e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp(xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp(xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp(xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp10-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp10(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp10-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp10-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp10(0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp10-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp10-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp10(1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp10-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp10-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp10(0.5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp10-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3.1622776601683795e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp10-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp10(-1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp10-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e-1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp10-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp10(xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp10-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp10-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp10(xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp10-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-exp10-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:exp10(xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-exp10-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log(0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('-INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log(math:exp(1))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log(1.0e-3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-6.907755278982137e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log(2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.6931471805599453e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log(-1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log(xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log(xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log(xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log10-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log10(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log10-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log10-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log10(0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log10-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('-INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log10-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log10(1.0e3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log10-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log10-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log10(1.0e-3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log10-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-3.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log10-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log10(2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log10-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.3010299956639812e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log10-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log10(-1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log10-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log10-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log10(xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log10-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log10-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log10(xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log10-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-log10-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:log10(xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-log10-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sqrt-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sqrt(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sqrt-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sqrt-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sqrt(0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sqrt-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sqrt-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sqrt(-0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sqrt-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sqrt-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sqrt(1.0e6)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sqrt-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sqrt-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sqrt(2.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sqrt-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.4142135623730951e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sqrt-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sqrt(-2.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sqrt-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sqrt-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sqrt(xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sqrt-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sqrt-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sqrt(xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sqrt-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sqrt-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sqrt(xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sqrt-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow((), 93.7)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(2, 3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "8.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-2, 3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-8.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(2, -3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.125e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-2, -3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-0.125e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(2, 0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(0, 0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(xs:double('INF'), 0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(xs:double('NaN'), 0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-math:pi(), 0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-010.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(0e0, 3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-011.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(0e0, 4)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-012.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-0e0, 3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-013.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(0, 4)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-014.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(0e0, -3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-015.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(0e0, -4)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-016.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-0e0, -3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-017.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('-INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(0, -4)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-018.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(16, 0.5e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-019.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "4.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(16, 0.25e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-020.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(0e0, -3.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-021.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-0e0, -3.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-022.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('-INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(0e0, -3.1e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-023.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-0e0, -3.1e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-024.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('INF')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(0e0, 3.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-025.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-0e0, 3.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-026.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(0e0, 3.1e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-027.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-0e0, 3.1e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-028.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-1, xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-029.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-1, xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-030.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(1, xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-031.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(1, xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-032.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(1, xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-033.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-034'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-2.5e0, 2.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-034.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "6.25e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-pow-035'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:pow(-2.5e0, 2.00000001e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-pow-035.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sin-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sin(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sin-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sin-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sin(0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sin-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sin-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sin(-0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sin-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sin-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sin(math:pi() div 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sin-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 1.0e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sin-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sin(-math:pi() div 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sin-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - -1.0e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sin-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sin(math:pi())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sin-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 0.0e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sin-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sin(xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sin-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sin-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sin(xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sin-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-sin-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:sin(xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-sin-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-cos-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:cos(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-cos-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-cos-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:cos(0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-cos-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-cos-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:cos(-0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-cos-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-cos-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:cos(math:pi() div 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-cos-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 0.0e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-cos-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:cos(-math:pi() div 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-cos-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 0.0e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-cos-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:cos(math:pi())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-cos-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - -1.0e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-cos-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:cos(xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-cos-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-cos-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:cos(xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-cos-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-cos-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:cos(xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-cos-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-tan-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:tan(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-tan-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-tan-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:tan(0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-tan-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-tan-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:tan(-0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-tan-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-tan-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:tan(math:pi() div 4)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-tan-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 1.0e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-tan-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:tan(-math:pi() div 4)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-tan-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - -1.0e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-tan-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        1 div math:tan(math:pi() div 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-tan-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 0.0e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-tan-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        1 div math:tan(-math:pi() div 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-tan-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - -0.0e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-tan-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:tan(math:pi())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-tan-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 0.0e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-tan-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:tan(xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-tan-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-tan-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:tan(xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-tan-010.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-tan-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:tan(xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-tan-011.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-asin-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:asin(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-asin-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-asin-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:asin(0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-asin-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-asin-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:asin(-0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-asin-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-asin-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:asin(1.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-asin-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 1.5707963267948966e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-asin-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:asin(-1.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-asin-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - -1.5707963267948966e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-asin-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:asin(2.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-asin-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-asin-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:asin(xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-asin-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-asin-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:asin(xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-asin-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-asin-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:asin(xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-asin-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-acos-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:acos(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-acos-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-acos-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:acos(0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-acos-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 1.5707963267948966e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-acos-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:acos(-0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-acos-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 1.5707963267948966e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-acos-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:acos(1.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-acos-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-acos-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:acos(-1.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-acos-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 3.141592653589793e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-acos-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:acos(2.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-acos-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-acos-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:acos(xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-acos-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-acos-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:acos(xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-acos-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-acos-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:acos(xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-acos-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan(0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan(-0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan(1.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 0.7853981633974483e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan(-1.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - -0.7853981633974483e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan(xs:double('NaN'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan(xs:double('INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - 1.5707963267948966e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan(xs:double('-INF'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "abs($result - -1.5707963267948966e0) lt 1e-5") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan2-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan2(+0.0e0, 0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan2-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan2-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan2(-0.0e0, 0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan2-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan2-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan2(+0.0e0, -0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan2-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3.141592653589793e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan2-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan2(-0.0e0, -0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan2-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-3.141592653589793e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan2-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan2(-1, 0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan2-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-1.5707963267948966e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan2-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan2(+1, 0.0e0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan2-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1.5707963267948966e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan2-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan2(-0.0e0, -1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan2-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-3.141592653589793e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan2-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan2(+0.0e0, -1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan2-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3.141592653589793e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan2-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan2(-0.0e0, +1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan2-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-math-atan2-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        math:atan2(+0.0e0, +1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-math-atan2-010.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "+0.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-codepoints-to-string-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:codepoints-to-string((66, 65, 67, 72))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-codepoints-to-string-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"BACH\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-codepoints-to-string-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:codepoints-to-string((2309, 2358, 2378, 2325))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-codepoints-to-string-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"अशॊक\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-codepoints-to-string-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:codepoints-to-string(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-codepoints-to-string-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-codepoints-to-string-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:codepoints-to-string(0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-codepoints-to-string-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCH0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCH0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-to-codepoints-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:string-to-codepoints(\"Thérèse\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-to-codepoints-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(84, 104, 233, 114, 232, 115, 101)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-compare-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:compare('abc', 'abc')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-compare-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-compare-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:compare('Strasse', 'Straße')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'default-collation', "http://www.w3.org/2013/collation/UCA?lang=de;strength=primary"},
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, [
            {"http://www.w3.org/2005/xpath-functions/math", "math"},
            {"http://www.w3.org/2005/xpath-functions/map", "map"},
            {"http://www.w3.org/2005/xpath-functions/array", "array"}
        ]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-compare-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-compare-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:compare('Strasse', 'Straße',\n"
        "                  'http://www.w3.org/2013/collation/UCA?lang=de;strength=primary')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-compare-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-compare-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:compare('Strassen', 'Straße')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'default-collation', "http://www.w3.org/2013/collation/UCA?lang=de"},
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, [
            {"http://www.w3.org/2005/xpath-functions/math", "math"},
            {"http://www.w3.org/2005/xpath-functions/map", "map"},
            {"http://www.w3.org/2005/xpath-functions/array", "array"}
        ]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-compare-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-codepoint-equal-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:codepoint-equal(\"abcd\", \"abcd\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-codepoint-equal-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-codepoint-equal-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:codepoint-equal(\"abcd\", \"abcd \")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-codepoint-equal-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-codepoint-equal-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:codepoint-equal(\"\", \"\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-codepoint-equal-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-codepoint-equal-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:codepoint-equal(\"\", ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-codepoint-equal-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-codepoint-equal-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:codepoint-equal((), ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-codepoint-equal-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-concat-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:concat('un', 'grateful')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-concat-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"ungrateful\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-concat-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:concat('Thy ', (), 'old ', \"groans\", \"\", ' ring',\n"
        "                  ' yet', ' in', ' my', ' ancient',' ears.')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-concat-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"Thy old groans ring yet in my ancient ears.\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-concat-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:concat('Ciao!',())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-concat-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"Ciao!\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-concat-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:concat('Ingratitude, ', 'thou ', 'marble-hearted', ' fiend!')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-concat-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"Ingratitude, thou marble-hearted fiend!\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-concat-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:concat(01, 02, 03, 04, true())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-concat-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"1234true\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-concat-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        10 || '/' || 6\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-concat-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"10/6\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-join-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:string-join(1 to 9)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-join-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"123456789\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-join-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:string-join(('Now', 'is', 'the', 'time', '...'),\n"
        "                  ' ')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-join-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"Now is the time ...\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-join-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:string-join(('Blow, ', 'blow, ', 'thou ', 'winter ', 'wind!'),\n"
        "                  '')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-join-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"Blow, blow, thou winter wind!\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-join-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:string-join((), 'separator')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-join-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-join-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:string-join(1 to 5, ', ')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-join-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"1, 2, 3, 4, 5\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-join-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $doc := \n"
        "          <doc>\n"
        "  <chap>\n"
        "    <section xml:id=\"xyz\"/>\n"
        "  </chap>\n"
        "</doc>\n"
        "           return \n"
        "\n"
        "        \n"
        "        $doc//@xml:id ! fn:string-join((node-name(), '=\"', ., '\"'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-join-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'xml:id=\"xyz\"'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-join-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $doc := \n"
        "          <doc>\n"
        "  <chap>\n"
        "    <section xml:id=\"xyz\"/>\n"
        "  </chap>\n"
        "</doc>\n"
        "           return \n"
        "\n"
        "        \n"
        "        $doc//section ! fn:string-join(ancestor-or-self::*/name(), '/')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-join-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"doc/chap/section\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring(\"motor car\", 6)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\" car\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring(\"metadata\", 4, 3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"ada\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring(\"12345\", 1.5, 2.6)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"234\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring(\"12345\", 0, 3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"12\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring(\"12345\", 5, -3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring(\"12345\", -3, 5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"1\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring(\"12345\", 0 div 0E0, 3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring(\"12345\", 1, 0 div 0E0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring((), 1, 3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring(\"12345\", -42, 1 div 0E0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-010.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"12345\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring(\"12345\", -1 div 0E0, 1 div 0E0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-011.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-length-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:string-length(\"Harp not on that string, madam; that is past.\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-length-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "45") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-string-length-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:string-length(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-string-length-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-normalize-space-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:normalize-space(\" The    wealthy curled darlings\n"
        "                                        of    our    nation. \")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-normalize-space-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"The wealthy curled darlings of our nation.\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-normalize-space-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:normalize-space(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-normalize-space-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-upper-case-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:upper-case(\"abCd0\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-upper-case-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"ABCD0\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-lower-case-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:lower-case(\"ABc!D\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-lower-case-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"abc!d\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-translate-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:translate(\"bar\",\"abc\",\"ABC\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-translate-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"BAr\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-translate-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:translate(\"--aaa--\",\"abc-\",\"ABC\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-translate-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"AAA\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-translate-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:translate(\"abcdabc\", \"abc\", \"AB\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-translate-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"ABdAB\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-encode-for-uri-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:encode-for-uri(\"http://www.example.com/00/Weather/CA/Los%20Angeles#ocean\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-encode-for-uri-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "\"http%3A%2F%2Fwww.example.com%2F00%2FWeather%2FCA%2FLos%2520Angeles%23ocean\""
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-encode-for-uri-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        concat(\"http://www.example.com/\",\n"
        "                  encode-for-uri(\"~bébé\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-encode-for-uri-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"http://www.example.com/~b%C3%A9b%C3%A9\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-encode-for-uri-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        concat(\"http://www.example.com/\", encode-for-uri(\"100% organic\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-encode-for-uri-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"http://www.example.com/100%25%20organic\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-iri-to-uri-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:iri-to-uri\n"
        "                  (\"http://www.example.com/00/Weather/CA/Los%20Angeles#ocean\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-iri-to-uri-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "\"http://www.example.com/00/Weather/CA/Los%20Angeles#ocean\""
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-iri-to-uri-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:iri-to-uri (\"http://www.example.com/~bébé\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-iri-to-uri-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"http://www.example.com/~b%C3%A9b%C3%A9\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-escape-html-uri-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:escape-html-uri(\"http://www.example.com/00/Weather/CA/Los Angeles#ocean\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-escape-html-uri-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "\"http://www.example.com/00/Weather/CA/Los Angeles#ocean\""
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-escape-html-uri-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:escape-html-uri(\"javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~bébé');\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-escape-html-uri-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "\"javascript:if (navigator.browserLanguage == 'fr') window.open('http://www.example.com/~b%C3%A9b%C3%A9');\""
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-contains-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:contains ( \"tattoo\", \"t\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-contains-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-contains-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:contains ( \"tattoo\", \"ttt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-contains-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-contains-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:contains ( \"\", ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-contains-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-contains-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:contains ( \"abcdefghi\", \"-d-e-f-\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-contains-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-contains-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:contains ( \"a*b*c*d*e*f*g*h*i*\", \"d-ef-\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-contains-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-contains-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:contains ( \"abcd***e---f*--*ghi\", \"def\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-contains-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-contains-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:contains ( (), \"--***-*---\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-contains-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-starts-with-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:starts-with(\"tattoo\", \"tat\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-starts-with-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-starts-with-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:starts-with ( \"tattoo\", \"att\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-starts-with-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-starts-with-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:starts-with ((), ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-starts-with-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-starts-with-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:starts-with ( \"abcdefghi\", \"-a-b-c-\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-starts-with-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-starts-with-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:starts-with ( \"a*b*c*d*e*f*g*h*i*\", \"a-bc-\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-starts-with-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-starts-with-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:starts-with ( \"abcd***e---f*--*ghi\", \"abcdef\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-starts-with-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-starts-with-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:starts-with ( (), \"--***-*---\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-starts-with-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-starts-with-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:starts-with ( \"-abcdefghi\", \"-abc\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-starts-with-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-ends-with-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:ends-with ( \"tattoo\", \"tattoo\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-ends-with-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-ends-with-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:ends-with ( \"tattoo\", \"atto\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-ends-with-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-ends-with-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:ends-with ((), ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-ends-with-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-ends-with-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:ends-with ( \"abcdefghi\", \"-g-h-i-\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-ends-with-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-ends-with-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:ends-with ( \"abcd***e---f*--*ghi\", \"defghi\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-ends-with-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-ends-with-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:ends-with ( \"abcd***e---f*--*ghi\", \"defghi\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-ends-with-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-ends-with-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:ends-with ( (), \"--***-*---\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-ends-with-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-ends-with-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:ends-with ( \"abcdefghi\", \"ghi-\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-ends-with-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-before-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-before ( \"tattoo\", \"attoo\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-before-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"t\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-before-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-before ( \"tattoo\", \"tatto\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-before-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-before-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-before ((), ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-before-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-before-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-before ( \"abcdefghi\", \"--d-e-\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-before-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"abc\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-before-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-before ( \"abc--d-e-fghi\", \"--d-e-\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-before-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"abc--\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-before-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-before ( \"a*b*c*d*e*f*g*h*i*\", \"***cde\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-before-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"a*b*\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-before-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-before ( \"Eureka!\", \"--***-*---\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-before-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-after-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-after(\"tattoo\", \"tat\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-after-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"too\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-after-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-after(\"tattoo\", \"tattoo\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-after-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-after-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-after((), ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-after-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-after-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         fn:substring-after(\"abcdefghi\", \"--d-e-\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-after-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"fghi\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-after-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-after(\"abc--d-e-fghi\", \"--d-e-\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-after-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"-fghi\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-after-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-after ( \"a*b*c*d*e*f*g*h*i*\", \"***cde***\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-after-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"*f*g*h*i*\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-substring-after-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:substring-after ( \"Eureka!\", \"--***-*---\",\n"
        "                  \"http://www.w3.org/2013/collation/UCA?lang=en;alternate=blanked;strength=primary\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-substring-after-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"Eureka!\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-matches-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:matches(\"abracadabra\", \"bra\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-matches-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-matches-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:matches(\"abracadabra\", \"^a.*a$\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-matches-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-matches-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:matches(\"abracadabra\", \"^bra\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-matches-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-matches-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $poem := \n"
        "          \n"
        "<poem author=\"Wilhelm Busch\">\n"
        "Kaum hat dies der Hahn gesehen,\n"
        "Fängt er auch schon an zu krähen:\n"
        "Kikeriki! Kikikerikih!!\n"
        "Tak, tak, tak! - da kommen sie.\n"
        "</poem>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:matches($poem, \"Kaum.*krähen\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-matches-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-matches-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $poem := \n"
        "          \n"
        "<poem author=\"Wilhelm Busch\">\n"
        "Kaum hat dies der Hahn gesehen,\n"
        "Fängt er auch schon an zu krähen:\n"
        "Kikeriki! Kikikerikih!!\n"
        "Tak, tak, tak! - da kommen sie.\n"
        "</poem>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:matches($poem, \"Kaum.*krähen\", \"s\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-matches-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-matches-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $poem := \n"
        "          \n"
        "<poem author=\"Wilhelm Busch\">\n"
        "Kaum hat dies der Hahn gesehen,\n"
        "Fängt er auch schon an zu krähen:\n"
        "Kikeriki! Kikikerikih!!\n"
        "Tak, tak, tak! - da kommen sie.\n"
        "</poem>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:matches($poem, \"^Kaum.*gesehen,$\", \"m\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-matches-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-matches-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $poem := \n"
        "          \n"
        "<poem author=\"Wilhelm Busch\">\n"
        "Kaum hat dies der Hahn gesehen,\n"
        "Fängt er auch schon an zu krähen:\n"
        "Kikeriki! Kikikerikih!!\n"
        "Tak, tak, tak! - da kommen sie.\n"
        "</poem>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:matches($poem, \"^Kaum.*gesehen,$\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-matches-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-matches-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $poem := \n"
        "          \n"
        "<poem author=\"Wilhelm Busch\">\n"
        "Kaum hat dies der Hahn gesehen,\n"
        "Fängt er auch schon an zu krähen:\n"
        "Kikeriki! Kikikerikih!!\n"
        "Tak, tak, tak! - da kommen sie.\n"
        "</poem>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:matches($poem, \"kiki\", \"i\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-matches-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-replace-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:replace(\"abracadabra\", \"bra\", \"*\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-replace-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"a*cada*\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-replace-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:replace(\"abracadabra\", \"a.*a\", \"*\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-replace-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"*\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-replace-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:replace(\"abracadabra\", \"a.*?a\", \"*\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-replace-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"*c*bra\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-replace-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:replace(\"abracadabra\", \"a\", \"\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-replace-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"brcdbr\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-replace-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:replace(\"abracadabra\", \"a(.)\", \"a$1$1\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-replace-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"abbraccaddabbra\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-replace-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:replace(\"AAAA\", \"A+\", \"b\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-replace-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"b\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-replace-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:replace(\"AAAA\", \"A+?\", \"b\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-replace-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"bbbb\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-replace-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:replace(\"darted\", \"^(.*?)d(.*)$\", \"$1c$2\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-replace-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"carted\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-tokenize-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:tokenize(\" red green blue \")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-tokenize-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"red\", \"green\", \"blue\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-tokenize-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:tokenize(\"The cat sat on the mat\", \"\\s+\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-tokenize-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(Res, "(\"The\", \"cat\", \"sat\", \"on\", \"the\", \"mat\")")
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-tokenize-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:tokenize(\" red green blue \", \"\\s+\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-tokenize-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"\", \"red\", \"green\", \"blue\", \"\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-tokenize-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:tokenize(\"1, 15, 24, 50\", \",\\s*\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-tokenize-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"1\", \"15\", \"24\", \"50\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-tokenize-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:tokenize(\"1,15,,24,50,\", \",\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-tokenize-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"1\", \"15\", \"\", \"24\", \"50\", \"\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-tokenize-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:tokenize(\"Some unparsed <br> HTML <BR> text\",\n"
        "                  \"\\s*<br>\\s*\", \"i\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-tokenize-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"Some unparsed\", \"HTML\", \"text\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-analyze-string-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:analyze-string(\"The cat sat on the mat.\", \"\\w+\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-analyze-string-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<analyze-string-result xmlns=\"http://www.w3.org/2005/xpath-functions\"><match>The</match><non-match> </non-match><match>cat</match><non-match> </non-match><match>sat</match><non-match> </non-match><match>on</match><non-match> </non-match><match>the</match><non-match> </non-match><match>mat</match><non-match>.</non-match></analyze-string-result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-analyze-string-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:analyze-string(\"2008-12-03\",\n"
        "                  \"^(\\d+)\\-(\\d+)\\-(\\d+)$\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-analyze-string-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<analyze-string-result xmlns=\"http://www.w3.org/2005/xpath-functions\"><match><group nr=\"1\">2008</group>-<group nr=\"2\">12</group>-<group nr=\"3\">03</group></match></analyze-string-result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-analyze-string-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:analyze-string(\"A1,C15,,D24, X50,\",\n"
        "                  \"([A-Z])([0-9]+)\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-analyze-string-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<analyze-string-result xmlns=\"http://www.w3.org/2005/xpath-functions\"><match><group nr=\"1\">A</group><group nr=\"2\">1</group></match><non-match>,</non-match><match><group nr=\"1\">C</group><group nr=\"2\">15</group></match><non-match>,,</non-match><match><group nr=\"1\">D</group><group nr=\"2\">24</group></match><non-match>, </non-match><match><group nr=\"1\">X</group><group nr=\"2\">50</group></match><non-match>,</non-match></analyze-string-result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-contains-token-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:contains-token(\"red green blue \", \"red\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-contains-token-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-contains-token-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:contains-token((\"red\", \"green\", \"blue\"), \" red \")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-contains-token-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-contains-token-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:contains-token(\"red, green, blue\", \"red\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-contains-token-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-contains-token-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:contains-token(\"red green blue\", \"RED\", \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-contains-token-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-true-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:true()\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-true-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:boolean(1)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-false-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:false()\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-false-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:boolean(0)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-boolean-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:boolean($abc[1])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-boolean-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-boolean-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:boolean($abc[0])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-boolean-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-boolean-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:boolean($abc[3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-boolean-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-not-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:not(fn:true())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-not-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-not-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:not(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-not-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-not-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:not(\"false\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-not-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-years-from-duration-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:years-from-duration(xs:yearMonthDuration(\"P20Y15M\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-years-from-duration-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "21") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-years-from-duration-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:years-from-duration(xs:yearMonthDuration(\"-P15M\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-years-from-duration-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-years-from-duration-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:years-from-duration(xs:dayTimeDuration(\"-P2DT15H\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-years-from-duration-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-months-from-duration-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:months-from-duration(xs:yearMonthDuration(\"P20Y15M\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-months-from-duration-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-months-from-duration-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:months-from-duration(xs:yearMonthDuration(\"-P20Y18M\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-months-from-duration-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-6") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-months-from-duration-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:months-from-duration(xs:dayTimeDuration(\"-P2DT15H0M0S\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-months-from-duration-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-days-from-duration-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:days-from-duration(xs:dayTimeDuration(\"P3DT10H\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-days-from-duration-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-days-from-duration-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:days-from-duration(xs:dayTimeDuration(\"P3DT55H\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-days-from-duration-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-days-from-duration-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:days-from-duration(xs:yearMonthDuration(\"P3Y5M\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-days-from-duration-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-duration-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-duration(xs:dayTimeDuration(\"P3DT10H\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-duration-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "10") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-duration-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-duration(xs:dayTimeDuration(\"P3DT12H32M12S\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-duration-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "12") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-duration-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-duration(xs:dayTimeDuration(\"PT123H\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-duration-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-duration-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-duration(xs:dayTimeDuration(\"-P3DT10H\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-duration-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-10") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-minutes-from-duration-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:minutes-from-duration(xs:dayTimeDuration(\"P3DT10H\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-minutes-from-duration-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-minutes-from-duration-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:minutes-from-duration(xs:dayTimeDuration(\"-P5DT12H30M\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-minutes-from-duration-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-30") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-seconds-from-duration-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:seconds-from-duration(xs:dayTimeDuration(\"P3DT10H12.5S\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-seconds-from-duration-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "12.5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-seconds-from-duration-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:seconds-from-duration(xs:dayTimeDuration(\"-PT256S\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-seconds-from-duration-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-16.0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-dateTime-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:dateTime(xs:date(\"1999-12-31\"),\n"
        "                  xs:time(\"12:00:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-dateTime-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime(\"1999-12-31T12:00:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-dateTime-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:dateTime(xs:date(\"1999-12-31\"),\n"
        "                  xs:time(\"24:00:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-dateTime-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime(\"1999-12-31T00:00:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-year-from-dateTime-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:year-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-year-from-dateTime-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1999") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-year-from-dateTime-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:year-from-dateTime(xs:dateTime(\"1999-05-31T21:30:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-year-from-dateTime-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1999") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-year-from-dateTime-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:year-from-dateTime(xs:dateTime(\"1999-12-31T19:20:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-year-from-dateTime-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1999") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-year-from-dateTime-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:year-from-dateTime(xs:dateTime(\"1999-12-31T24:00:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-year-from-dateTime-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2000") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-year-from-dateTime-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:year-from-dateTime(xs:dateTime(\"-0002-06-06T00:00:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-year-from-dateTime-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-2") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-month-from-dateTime-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:month-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-month-from-dateTime-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-month-from-dateTime-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:month-from-dateTime(xs:dateTime(\"1999-12-31T19:20:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-month-from-dateTime-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "12") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-month-from-dateTime-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:month-from-dateTime(fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T19:20:00-05:00\"),\n"
        "                  xs:dayTimeDuration(\"PT0S\")))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-month-from-dateTime-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-day-from-dateTime-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:day-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-day-from-dateTime-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "31") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-day-from-dateTime-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:day-from-dateTime(xs:dateTime(\"1999-12-31T20:00:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-day-from-dateTime-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "31") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-day-from-dateTime-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:day-from-dateTime(fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T19:20:00-05:00\"),\n"
        "                  xs:dayTimeDuration(\"PT0S\")))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-day-from-dateTime-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-dateTime-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-dateTime(xs:dateTime(\"1999-05-31T08:20:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-dateTime-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "8") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-dateTime-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-dateTime(xs:dateTime(\"1999-12-31T21:20:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-dateTime-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "21") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-dateTime-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-dateTime(fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T21:20:00-05:00\"),\n"
        "                  xs:dayTimeDuration(\"PT0S\")))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-dateTime-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-dateTime-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-dateTime(xs:dateTime(\"1999-12-31T12:00:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-dateTime-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "12") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-dateTime-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-dateTime(xs:dateTime(\"1999-12-31T24:00:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-dateTime-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-minutes-from-dateTime-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:minutes-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-minutes-from-dateTime-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "20") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-minutes-from-dateTime-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:minutes-from-dateTime(xs:dateTime(\"1999-05-31T13:30:00+05:30\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-minutes-from-dateTime-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "30") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-seconds-from-dateTime-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:seconds-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-seconds-from-dateTime-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-timezone-from-dateTime-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:timezone-from-dateTime(xs:dateTime(\"1999-05-31T13:20:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-timezone-from-dateTime-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dayTimeDuration(\"-PT5H\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-timezone-from-dateTime-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:timezone-from-dateTime(xs:dateTime(\"2000-06-12T13:20:00Z\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-timezone-from-dateTime-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dayTimeDuration(\"PT0S\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-timezone-from-dateTime-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:timezone-from-dateTime(xs:dateTime(\"2004-08-27T00:00:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-timezone-from-dateTime-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-year-from-date-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:year-from-date(xs:date(\"1999-05-31\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-year-from-date-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1999") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-year-from-date-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:year-from-date(xs:date(\"2000-01-01+05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-year-from-date-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2000") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-year-from-date-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:year-from-date(xs:date(\"-0002-06-01\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-year-from-date-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "-2") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-month-from-date-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:month-from-date(xs:date(\"1999-05-31-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-month-from-date-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-month-from-date-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:month-from-date(xs:date(\"2000-01-01+05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-month-from-date-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-day-from-date-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:day-from-date(xs:date(\"1999-05-31-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-day-from-date-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "31") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-day-from-date-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:day-from-date(xs:date(\"2000-01-01+05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-day-from-date-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-timezone-from-date-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:timezone-from-date(xs:date(\"1999-05-31-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-timezone-from-date-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dayTimeDuration(\"-PT5H\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-timezone-from-date-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:timezone-from-date(xs:date(\"2000-06-12Z\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-timezone-from-date-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dayTimeDuration(\"PT0S\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-time-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-time(xs:time(\"11:23:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-time-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "11") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-time-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-time(xs:time(\"21:23:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-time-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "21") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-time-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-time(xs:time(\"01:23:00+05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-time-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-time-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-time(fn:adjust-time-to-timezone(xs:time(\"01:23:00+05:00\"),\n"
        "                  xs:dayTimeDuration(\"PT0S\")))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-time-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "20") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-hours-from-time-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:hours-from-time(xs:time(\"24:00:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-hours-from-time-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-minutes-from-time-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:minutes-from-time(xs:time(\"13:00:00Z\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-minutes-from-time-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-seconds-from-time-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:seconds-from-time(xs:time(\"13:20:10.5\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-seconds-from-time-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "10.5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-timezone-from-time-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:timezone-from-time(xs:time(\"13:20:00-05:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-timezone-from-time-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dayTimeDuration(\"-PT5H\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-timezone-from-time-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:timezone-from-time(xs:time(\"13:20:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-timezone-from-time-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-dateTime-to-timezone-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00-07:00'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-dateTime-to-timezone-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime('2002-03-07T12:00:00-05:00')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-dateTime-to-timezone-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00'),\n"
        "                  $tz-10)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-dateTime-to-timezone-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime('2002-03-07T10:00:00-10:00')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-dateTime-to-timezone-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00-07:00'),\n"
        "                  $tz-10)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-dateTime-to-timezone-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime('2002-03-07T07:00:00-10:00')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-dateTime-to-timezone-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00-07:00'),\n"
        "                  xs:dayTimeDuration(\"PT10H\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-dateTime-to-timezone-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime('2002-03-08T03:00:00+10:00')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-dateTime-to-timezone-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T00:00:00+01:00'),\n"
        "                  xs:dayTimeDuration(\"-PT8H\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-dateTime-to-timezone-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime('2002-03-06T15:00:00-08:00')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-dateTime-to-timezone-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00'),\n"
        "                  ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-dateTime-to-timezone-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime('2002-03-07T10:00:00')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-dateTime-to-timezone-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:adjust-dateTime-to-timezone(xs:dateTime('2002-03-07T10:00:00-07:00'),\n"
        "                  ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-dateTime-to-timezone-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime('2002-03-07T10:00:00')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-date-to-timezone-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:adjust-date-to-timezone(xs:date(\"2002-03-07\"),\n"
        "                  $tz-10)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-date-to-timezone-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:date(\"2002-03-07-10:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-date-to-timezone-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"),\n"
        "                  $tz-10)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-date-to-timezone-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:date(\"2002-03-06-10:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-date-to-timezone-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:adjust-date-to-timezone(xs:date(\"2002-03-07\"),\n"
        "                  ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-date-to-timezone-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:date(\"2002-03-07\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-date-to-timezone-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"),\n"
        "                  ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-date-to-timezone-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:date(\"2002-03-07\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-time-to-timezone-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-time-to-timezone-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:time(\"12:00:00-05:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-time-to-timezone-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:adjust-time-to-timezone(xs:time(\"10:00:00\"),\n"
        "                  $tz-10)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-time-to-timezone-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:time(\"10:00:00-10:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-time-to-timezone-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $tz-10 := xs:dayTimeDuration(\"-PT10H\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"),\n"
        "                  $tz-10)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-time-to-timezone-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:time(\"07:00:00-10:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-time-to-timezone-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:adjust-time-to-timezone(xs:time(\"10:00:00\"), ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-time-to-timezone-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:time(\"10:00:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-time-to-timezone-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"),\n"
        "                  ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-time-to-timezone-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:time(\"10:00:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-adjust-time-to-timezone-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:adjust-time-to-timezone(xs:time(\"10:00:00-07:00\"),\n"
        "                  xs:dayTimeDuration(\"PT10H\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-adjust-time-to-timezone-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:time(\"03:00:00+10:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-ietf-date-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:parse-ietf-date(\"Wed, 06 Jun 1994 07:29:35 GMT\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-ietf-date-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime(\"1994-06-06T07:29:35Z\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-ietf-date-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:parse-ietf-date(\"Wed, 6 Jun 94 07:29:35 GMT\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-ietf-date-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime(\"1994-06-06T07:29:35Z\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-ietf-date-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:parse-ietf-date(\"Wed Jun 06 11:54:45 EST 2013\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-ietf-date-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime(\"2013-06-06T11:54:45-05:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-ietf-date-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:parse-ietf-date(\"Sunday, 06-Nov-94 08:49:37 GMT\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-ietf-date-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime(\"1994-11-06T08:49:37Z\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-ietf-date-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:parse-ietf-date(\"Wed, 6 Jun 94 07:29:35 +0500\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-ietf-date-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:dateTime(\"1994-06-06T07:29:35+05:00\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-local-name-from-QName-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:local-name-from-QName(fn:QName(\"http://www.example.com/example\",\n"
        "                  \"person\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-local-name-from-QName-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"person\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-namespace-uri-from-QName-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:namespace-uri-from-QName(fn:QName(\"http://www.example.com/example\",\n"
        "                  \"person\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-namespace-uri-from-QName-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:anyURI(\"http://www.example.com/example\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-namespace-uri-for-prefix-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $e := \n"
        "          \n"
        "<z:a xmlns=\"http://example.org/one\" xmlns:z=\"http://example.org/two\">\n"
        "  <b xmlns=\"\"/>\n"
        "</z:a>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:namespace-uri-for-prefix(\"z\", $e)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-namespace-uri-for-prefix-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"http://example.org/two\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-namespace-uri-for-prefix-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $e := \n"
        "          \n"
        "<z:a xmlns=\"http://example.org/one\" xmlns:z=\"http://example.org/two\">\n"
        "  <b xmlns=\"\"/>\n"
        "</z:a>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:namespace-uri-for-prefix(\"\", $e)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-namespace-uri-for-prefix-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"http://example.org/one\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-namespace-uri-for-prefix-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $e := \n"
        "          \n"
        "<z:a xmlns=\"http://example.org/one\" xmlns:z=\"http://example.org/two\">\n"
        "  <b xmlns=\"\"/>\n"
        "</z:a>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:namespace-uri-for-prefix((), $e)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-namespace-uri-for-prefix-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"http://example.org/one\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-namespace-uri-for-prefix-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $e := \n"
        "          \n"
        "<z:a xmlns=\"http://example.org/one\" xmlns:z=\"http://example.org/two\">\n"
        "  <b xmlns=\"\"/>\n"
        "</z:a>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:namespace-uri-for-prefix(\"xml\", $e)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-namespace-uri-for-prefix-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"http://www.w3.org/XML/1998/namespace\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-namespace-uri-for-prefix-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $e := \n"
        "          \n"
        "<z:a xmlns=\"http://example.org/one\" xmlns:z=\"http://example.org/two\">\n"
        "  <b xmlns=\"\"/>\n"
        "</z:a>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:namespace-uri-for-prefix(\"xml\", $e)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-namespace-uri-for-prefix-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"http://www.w3.org/XML/1998/namespace\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-number-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $po := \n"
        "          <PurchaseOrder> <line-item>\n"
        "         <description>Large widget</description> <price>8.95</price>\n"
        "         <quantity>5.0</quantity> </line-item> <line-item>\n"
        "         <description>Small widget</description> <price>3.99</price>\n"
        "         <quantity>2.0</quantity> </line-item> <line-item>\n"
        "         <description>Tiny widget</description> <price>1.49</price>a\n"
        "         <quantity>805</quantity> </line-item>\n"
        "         </PurchaseOrder>\n"
        "           return \n"
        "\n"
        "        \n"
        "          let $item1 := $po/line-item[1]\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:number($item1/quantity)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-number-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "5.0e0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-number-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $po := \n"
        "          <PurchaseOrder> <line-item>\n"
        "         <description>Large widget</description> <price>8.95</price>\n"
        "         <quantity>5.0</quantity> </line-item> <line-item>\n"
        "         <description>Small widget</description> <price>3.99</price>\n"
        "         <quantity>2.0</quantity> </line-item> <line-item>\n"
        "         <description>Tiny widget</description> <price>1.49</price>a\n"
        "         <quantity>805</quantity> </line-item>\n"
        "         </PurchaseOrder>\n"
        "           return \n"
        "\n"
        "        \n"
        "          let $item2 := $po/line-item[2]\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:number($item2/description)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-number-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-path-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $e := \n"
        "          \n"
        "document {            \n"
        "<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">\n"
        "Freude, schöner Götterfunken,<br/>\n"
        "Tochter aus Elysium,<br/>\n"
        "Wir betreten feuertrunken,<br/>\n"
        "Himmlische, dein Heiligtum.</p>}\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:path($e)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-path-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'/'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-path-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $e := \n"
        "          \n"
        "document {            \n"
        "<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">\n"
        "Freude, schöner Götterfunken,<br/>\n"
        "Tochter aus Elysium,<br/>\n"
        "Wir betreten feuertrunken,<br/>\n"
        "Himmlische, dein Heiligtum.</p>}\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:path($e/*:p)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-path-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'/Q{http://example.com/one}p[1]'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-path-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $e := \n"
        "          \n"
        "document {            \n"
        "<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">\n"
        "Freude, schöner Götterfunken,<br/>\n"
        "Tochter aus Elysium,<br/>\n"
        "Wir betreten feuertrunken,<br/>\n"
        "Himmlische, dein Heiligtum.</p>}\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:path($e/*:p/@xml:lang)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-path-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "'/Q{http://example.com/one}p[1]/@Q{http://www.w3.org/XML/1998/namespace}lang'"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-path-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $e := \n"
        "          \n"
        "document {            \n"
        "<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">\n"
        "Freude, schöner Götterfunken,<br/>\n"
        "Tochter aus Elysium,<br/>\n"
        "Wir betreten feuertrunken,<br/>\n"
        "Himmlische, dein Heiligtum.</p>}\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:path($e/*:p/@author)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-path-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'/Q{http://example.com/one}p[1]/@author'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-path-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $e := \n"
        "          \n"
        "document {            \n"
        "<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">\n"
        "Freude, schöner Götterfunken,<br/>\n"
        "Tochter aus Elysium,<br/>\n"
        "Wir betreten feuertrunken,<br/>\n"
        "Himmlische, dein Heiligtum.</p>}\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:path($e/*:p/*:br[2])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-path-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "'/Q{http://example.com/one}p[1]/Q{http://example.com/one}br[2]'"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-path-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $e := \n"
        "          \n"
        "document {            \n"
        "<p xmlns=\"http://example.com/one\" xml:lang=\"de\" author=\"Friedrich von Schiller\">\n"
        "Freude, schöner Götterfunken,<br/>\n"
        "Tochter aus Elysium,<br/>\n"
        "Wir betreten feuertrunken,<br/>\n"
        "Himmlische, dein Heiligtum.</p>}\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:path($e//text()[starts-with(normalize-space(),\n"
        "                  'Tochter')])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-path-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'/Q{http://example.com/one}p[1]/text()[2]'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-path-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $emp := \n"
        "          \n"
        "            <employee xml:id=\"ID21256\">\n"
        "               <empnr>E21256</empnr>\n"
        "               <first>John</first>\n"
        "               <last>Brown</last>\n"
        "            </employee>\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:path($emp)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-path-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'Q{http://www.w3.org/2005/xpath-functions}root()'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-path-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $emp := \n"
        "          \n"
        "            <employee xml:id=\"ID21256\">\n"
        "               <empnr>E21256</empnr>\n"
        "               <first>John</first>\n"
        "               <last>Brown</last>\n"
        "            </employee>\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:path($emp/@xml:id)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-path-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "'Q{http://www.w3.org/2005/xpath-functions}root()/@Q{http://www.w3.org/XML/1998/namespace}id'"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-path-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $emp := \n"
        "          \n"
        "            <employee xml:id=\"ID21256\">\n"
        "               <empnr>E21256</empnr>\n"
        "               <first>John</first>\n"
        "               <last>Brown</last>\n"
        "            </employee>\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:path($emp/empnr)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-path-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "'Q{http://www.w3.org/2005/xpath-functions}root()/Q{}empnr[1]'"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-index-of-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:index-of((10, 20, 30, 40), 35)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-index-of-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-index-of-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:index-of((10, 20, 30, 30, 20, 10), 20)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-index-of-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(2, 5)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-index-of-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:index-of((\"a\", \"sport\", \"and\", \"a\", \"pastime\"),\n"
        "                  \"a\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-index-of-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(1, 4)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-index-of-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:index-of(current-date(), 23)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-index-of-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-index-of-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:index-of([1, [5, 6], [6, 7]], 6)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-index-of-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(3, 4)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-empty-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:empty((1,2,3)[10])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-empty-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-empty-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:empty(fn:remove((\"hello\", \"world\"), 1))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-empty-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-empty-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:empty([])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-empty-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-empty-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:empty(map{})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-empty-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-empty-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:empty(\"\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-empty-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-exists-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:exists(fn:remove((\"hello\"), 1))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-exists-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-exists-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:exists(fn:remove((\"hello\", \"world\"), 1))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-exists-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-exists-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:exists([])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-exists-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-exists-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:exists(map{})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-exists-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-exists-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:exists(\"\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-exists-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-distinct-values-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:distinct-values((1, 2.0, 3, 2))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-distinct-values-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "(1, 3, 2.0)") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-distinct-values-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:distinct-values((xs:untypedAtomic(\"cherry\"),\n"
        "                  xs:untypedAtomic(\"plum\"), xs:untypedAtomic(\"plum\")))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-distinct-values-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_permutation(
                Res,
                "(xs:untypedAtomic(\"cherry\"),\n"
                "                  xs:untypedAtomic(\"plum\"))"
            )
        of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-insert-before-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"c\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:insert-before($abc, 0, \"z\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-insert-before-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"z\", \"a\", \"b\", \"c\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-insert-before-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"c\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:insert-before($abc, 1, \"z\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-insert-before-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"z\", \"a\", \"b\", \"c\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-insert-before-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"c\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:insert-before($abc, 2, \"z\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-insert-before-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"a\", \"z\", \"b\", \"c\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-insert-before-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"c\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:insert-before($abc, 3, \"z\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-insert-before-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"a\", \"b\", \"z\", \"c\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-insert-before-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"c\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:insert-before($abc, 4, \"z\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-insert-before-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"a\", \"b\", \"c\", \"z\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-remove-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"c\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:remove($abc, 0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-remove-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"a\", \"b\", \"c\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-remove-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"c\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:remove($abc, 1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-remove-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"b\", \"c\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-remove-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"c\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:remove($abc, 6)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-remove-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"a\", \"b\", \"c\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-remove-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"c\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:remove((), 3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-remove-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-head-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:head(1 to 5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-head-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-head-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:head((\"a\", \"b\", \"c\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-head-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"a\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-head-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:head(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-head-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-head-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:head([1,2,3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-head-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[1,2,3]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-tail-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:tail(1 to 5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-tail-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(2, 3, 4, 5)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-tail-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:tail((\"a\", \"b\", \"c\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-tail-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"b\", \"c\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-tail-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:tail(\"a\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-tail-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-tail-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:tail(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-tail-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-tail-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:tail([1,2,3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-tail-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-reverse-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $abc := (\"a\", \"b\", \"c\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:reverse($abc)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-reverse-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"c\", \"b\", \"a\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-reverse-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:reverse((\"hello\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-reverse-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"hello\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-reverse-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:reverse(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-reverse-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-reverse-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:reverse([1,2,3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-reverse-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[1,2,3]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-reverse-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:reverse(([1,2,3],[4,5,6]))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-reverse-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "([4,5,6],[1,2,3])") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-subsequence-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $seq := (\"item1\", \"item2\", \"item3\", \"item4\", \"item5\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:subsequence($seq, 4)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-subsequence-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"item4\", \"item5\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-subsequence-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $seq := (\"item1\", \"item2\", \"item3\", \"item4\", \"item5\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:subsequence($seq, 3, 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-subsequence-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"item3\", \"item4\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-unordered-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:unordered((1, 2, 3, 4, 5))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-unordered-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "(1, 2, 3, 4, 5)") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-deep-equal-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $at := \n"
        "          <attendees> <name last='Parker'\n"
        "            first='Peter'/> <name last='Barker' first='Bob'/> <name last='Parker'\n"
        "            first='Peter'/> </attendees>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:deep-equal($at, $at/*)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-deep-equal-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-deep-equal-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $at := \n"
        "          <attendees> <name last='Parker'\n"
        "            first='Peter'/> <name last='Barker' first='Bob'/> <name last='Parker'\n"
        "            first='Peter'/> </attendees>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:deep-equal($at/name[1], $at/name[2])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-deep-equal-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-deep-equal-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $at := \n"
        "          <attendees> <name last='Parker'\n"
        "            first='Peter'/> <name last='Barker' first='Bob'/> <name last='Parker'\n"
        "            first='Peter'/> </attendees>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:deep-equal($at/name[1], $at/name[3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-deep-equal-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-deep-equal-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $at := \n"
        "          <attendees> <name last='Parker'\n"
        "            first='Peter'/> <name last='Barker' first='Bob'/> <name last='Parker'\n"
        "            first='Peter'/> </attendees>\n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:deep-equal($at/name[1], 'Peter Parker')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-deep-equal-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-deep-equal-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal(map{1:'a', 2:'b'}, map{2:'b', 1:'a'})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-deep-equal-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-deep-equal-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal([1, 2, 3], [1, 2, 3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-deep-equal-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-deep-equal-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal((1, 2, 3), [1, 2, 3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-deep-equal-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-count-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $po := \n"
        "          <PurchaseOrder> <line-item>\n"
        "         <description>Large widget</description> <price>8.95</price>\n"
        "         <quantity>5.0</quantity> </line-item> <line-item>\n"
        "         <description>Small widget</description> <price>3.99</price>\n"
        "         <quantity>2.0</quantity> </line-item> <line-item>\n"
        "         <description>Tiny widget</description> <price>1.49</price>a\n"
        "         <quantity>805</quantity> </line-item>\n"
        "         </PurchaseOrder>\n"
        "           return \n"
        "\n"
        "        \n"
        "          let $item1 := $po/line-item[1]\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "          let $item2 := $po/line-item[2]\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "          let $seq1 := ($item1, $item2)\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:count($seq1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-count-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-count-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $seq3 := ()\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:count($seq3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-count-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-count-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $seq2 := (98.5, 98.3, 98.9)\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:count($seq2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-count-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-count-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $seq2 := (98.5, 98.3, 98.9)\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:count($seq2[. > 100])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-count-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-count-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:count([])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-count-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-count-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:count([1,2,3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-count-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-avg-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $seq3 := (3, 4, 5)\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:avg($seq3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-avg-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "4.0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-avg-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $d1 := xs:yearMonthDuration(\"P20Y\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "          let $d2 := xs:yearMonthDuration(\"P10M\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:avg(($d1, $d2))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-avg-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:yearMonthDuration(\"P10Y5M\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-avg-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:avg(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-avg-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-avg-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:avg((xs:float('INF'), xs:float('-INF')))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-avg-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:float('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-avg-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $seq3 := (3, 4, 5)\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:avg(($seq3, xs:float('NaN')))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-avg-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:float('NaN')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-max-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:max((3,4,5))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-max-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-max-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:max([3,4,5])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-max-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-max-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:max((xs:integer(5), xs:float(5.0), xs:double(0)))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-max-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double(5.0e0)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-max-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:max((fn:current-date(), xs:date(\"2100-01-01\")))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-max-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:date(\"2100-01-01\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-max-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:max((\"a\", \"b\", \"c\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-max-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"c\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-min-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:min((3,4,5))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-min-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-min-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:min([3,4,5])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-min-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-min-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:min((xs:integer(5), xs:float(5), xs:double(10)))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-min-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:double(5.0e0)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-min-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:min((fn:current-date(), xs:date(\"1900-01-01\")))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-min-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:date(\"1900-01-01\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-min-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:min((\"a\", \"b\", \"c\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-min-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"a\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-sum-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $d1 := xs:yearMonthDuration(\"P20Y\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "          let $d2 := xs:yearMonthDuration(\"P10M\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:sum(($d1, $d2))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-sum-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:yearMonthDuration(\"P20Y10M\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-sum-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $d1 := xs:yearMonthDuration(\"P20Y\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "          let $d2 := xs:yearMonthDuration(\"P10M\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "          let $seq1 := ($d1, $d2)\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:sum($seq1[. lt xs:yearMonthDuration('P3M')],\n"
        "                  xs:yearMonthDuration('P0M'))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-sum-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:yearMonthDuration(\"P0M\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-sum-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $seq3 := (3, 4, 5)\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:sum($seq3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-sum-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "12") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-sum-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:sum(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-sum-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-sum-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:sum((),())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-sum-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-sum-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:sum((1 to 100)[. lt 0], 0) \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-sum-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-sum-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $d1 := xs:yearMonthDuration(\"P20Y\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "          let $d2 := xs:yearMonthDuration(\"P10M\")\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:sum(($d1, $d2), \"ein Augenblick\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-sum-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "xs:yearMonthDuration(\"P20Y10M\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-sum-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:sum([1, 2, 3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-sum-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "6") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-sum-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:sum([[1, 2], [3, 4]])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-sum-009.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "10") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-id-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fo-test-fn-id-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fo-test-fn-element-with-id-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fo-test-fn-element-with-id-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fo-test-fn-idref-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fo-test-fn-idref-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'fo-test-fn-serialize-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $params := \n"
        "          \n"
        "<output:serialization-parameters \n"
        "        xmlns:output=\"http://www.w3.org/2010/xslt-xquery-serialization\">\n"
        "  <output:omit-xml-declaration value=\"yes\"/>\n"
        "</output:serialization-parameters>\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "          let $data := \n"
        "          \n"
        "<a b=\"3\"/>\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:serialize($data, $params)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-serialize-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'<a b=\"3\"/>'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-serialize-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $data := \n"
        "          \n"
        "<a b=\"3\"/>\n"
        "         \n"
        "           return \n"
        "\n"
        "        \n"
        "        fn:serialize($data, map{\"method\":\"xml\", \"omit-xml-declaration\":true()})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-serialize-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'<a b=\"3\"/>'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-last-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        (1 to 20)[fn:last() - 1]\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-last-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "19") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-function-lookup-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:function-lookup(xs:QName('fn:substring'), 2)('abcd',\n"
        "                  2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-function-lookup-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'bcd'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-function-name-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:function-name(fn:substring#2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-function-name-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "fn:QName(\"http://www.w3.org/2005/xpath-functions\",\n"
                "                  \"fn:substring\")"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-function-name-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:function-name(function($node){count($node/*)})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-function-name-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-function-arity-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:function-arity(fn:substring#2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-function-arity-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-function-arity-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:function-arity(function($node){name($node)})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-function-arity-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-function-arity-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $initial := fn:substring(?, 1, 1) return\n"
        "                  fn:function-arity($initial)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-function-arity-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-for-each-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:for-each(1 to 5, function($a) { $a * $a })\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-for-each-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(1, 4, 9, 16, 25)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-for-each-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:for-each((\"john\", \"jane\"),\n"
        "                  fn:string-to-codepoints#1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-for-each-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(106, 111, 104, 110, 106, 97, 110, 101)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-for-each-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:for-each((\"23\", \"29\"), xs:int#1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-for-each-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(23, 29)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-filter-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:filter(1 to 10, function($a) {$a mod 2 = 0})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-filter-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(2, 4, 6, 8, 10)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-filter-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:filter((), fn:lang(\"en\", ?))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-filter-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-fold-left-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:fold-left(1 to 5, 0, function($a, $b) { $a + $b\n"
        "                  })\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-fold-left-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "15") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-fold-left-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:fold-left((2,3,5,7), 1, function($a, $b) { $a * $b\n"
        "                  })\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-fold-left-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "210") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-fold-left-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:fold-left((true(), false(), false()), false(), function($a, $b) {\n"
        "                  $a or $b })\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-fold-left-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-fold-left-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:fold-left((true(), false(), false()), false(), function($a, $b) {\n"
        "                  $a and $b })\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-fold-left-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-fold-left-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:fold-left(1 to 5, (), function($a, $b) {($b,\n"
        "                  $a)})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-fold-left-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(5,4,3,2,1)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-fold-left-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:fold-left(1 to 5, \"\", fn:concat(?, \".\", ?))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-fold-left-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\".1.2.3.4.5\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-fold-left-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:fold-left(1 to 5, \"$zero\", fn:concat(\"$f(\", ?, \", \", ?, \")\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-fold-left-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"$f($f($f($f($f($zero, 1), 2), 3), 4), 5)\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-fold-left-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:fold-left(1 to 5, map{}, function($map, $n) {map:put($map, $n, $n*2)})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-fold-left-008.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{1:2, 2:4, 3:6, 4:8, 5:10}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-fold-right-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:fold-right(1 to 5, 0, function($a, $b) { $a + $b\n"
        "                  })\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-fold-right-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "15") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-fold-right-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:fold-right(1 to 5, \"\", fn:concat(?, \".\", ?))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-fold-right-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"1.2.3.4.5.\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-fold-right-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:fold-right(1 to 5, \"$zero\", concat(\"$f(\", ?, \", \", ?,\n"
        "                  \")\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-fold-right-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"$f(1, $f(2, $f(3, $f(4, $f(5, $zero)))))\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-for-each-pair-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:for-each-pair((\"a\", \"b\", \"c\"), (\"x\", \"y\", \"z\"),\n"
        "                  concat#2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-for-each-pair-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(\"ax\", \"by\", \"cz\")") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-for-each-pair-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:for-each-pair(1 to 5, 1 to 5, function($a, $b){10*$a + $b})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-for-each-pair-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(11, 22, 33, 44, 55)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-for-each-pair-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $s := 1 to 8 return fn:for-each-pair($s, tail($s), function($a, $b){$a*$b})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-for-each-pair-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(2, 6, 12, 20, 30, 42, 56)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-sort-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:sort((1, 4, 6, 5, 3))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-sort-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(1, 3, 4, 5, 6)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-sort-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:sort((1, -2, 5, 10, -10, 10, 8), (), fn:abs#1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-sort-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(1, -2, 5, 8, 10, -10, 10)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-apply-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:apply(fn:concat#3, [\"a\", \"b\", \"c\"])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-apply-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"abc\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-merge-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:merge(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-merge-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-merge-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:merge((map:entry(0, \"no\"), map:entry(1, \"yes\")))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-merge-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{0:\"no\", 1:\"yes\"}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-merge-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:merge(($week, map{7:\"Unbekannt\"}))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-merge-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",\n"
                "                  5:\"Freitag\", 6:\"Samstag\", 7:\"Unbekannt\"}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-merge-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:merge(($week, map{6:\"Sonnabend\"}), map{\"duplicates\":\"use-last\"})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-merge-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",\n"
                "                  5:\"Freitag\", 6:\"Sonnabend\"}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-merge-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:merge(($week, map{6:\"Sonnabend\"}), map{\"duplicates\":\"use-first\"})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-merge-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",\n"
                "                  5:\"Freitag\", 6:\"Samstag\"}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-merge-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:merge(($week, map{6:\"Sonnabend\"}), map{\"duplicates\":\"combine\"})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-merge-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",\n"
                "                  5:\"Freitag\", 6:(\"Samstag\", \"Sonnabend\")}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-keys-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:keys(map{1:\"yes\", 2:\"no\"})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-keys-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "(1,2)") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-contains-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:contains($week, 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-contains-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-contains-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:contains($week, 9)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-contains-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-contains-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:contains(map{}, \"xyz\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-contains-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-contains-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:contains(map{\"xyz\":23}, \"xyz\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-contains-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-contains-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:contains(map{\"abc\":23, \"xyz\":()}, \"xyz\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-contains-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-get-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:get($week, 4)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-get-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"Donnerstag\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-get-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "     3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:get($week, 9)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-get-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-get-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:get(map:entry(7,()), 7)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-get-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-find-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $responses := [map{0:'no', 1:'yes'}, map{0:'non', 1:'oui'}, \n"
        "                  map{0:'nein', 1:('ja', 'doch')}]\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:find($responses, 0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-find-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "['no', 'non', 'nein']") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-find-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $responses := [map{0:'no', 1:'yes'}, map{0:'non', 1:'oui'}, \n"
        "                  map{0:'nein', 1:('ja', 'doch')}]\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:find($responses, 1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-find-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "['yes', 'oui', ('ja', 'doch')]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-find-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $responses := [map{0:'no', 1:'yes'}, map{0:'non', 1:'oui'}, \n"
        "                  map{0:'nein', 1:('ja', 'doch')}]\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:find($responses, 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-find-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-find-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $inventory := map{\"name\":\"car\", \"id\":\"QZ123\", \n"
        "      \"parts\": [map{\"name\":\"engine\", \"id\":\"YW678\", \"parts\":[]}]}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:find($inventory, \"parts\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-find-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "[[map{\"name\":\"engine\", \"id\":\"YW678\", \"parts\":[]}], []]"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-put-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:put($week, 6, \"Sonnabend\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-put-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",\n"
                "                  5:\"Freitag\", 6:\"Sonnabend\"}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-put-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:put($week, -1, \"Unbekannt\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-put-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",\n"
                "                  5:\"Freitag\", 6:\"Samstag\", -1:\"Unbekannt\"}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-entry-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:entry(\"M\", \"Monday\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-entry-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{\"M\":\"Monday\"}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-remove-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:remove($week, 4)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-remove-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 5:\"Freitag\",\n"
                "                  6:\"Samstag\"}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-remove-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:remove($week, 23)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-remove-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\",\n"
                "                  5:\"Freitag\", 6:\"Samstag\"}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-remove-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:remove($week, (0, 6 to 7))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-remove-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map{1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\"}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-remove-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $week := map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\",\n"
        "       3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\", 6:\"Samstag\"}\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:remove($week, ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-remove-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map{0:\"Sonntag\", 1:\"Montag\", 2:\"Dienstag\", 3:\"Mittwoch\", 4:\"Donnerstag\", 5:\"Freitag\",\n"
                "                  6:\"Samstag\"}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-for-each-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:for-each(map{1:\"yes\", 2:\"no\"}, function($k,\n"
        "                  $v){$k})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-for-each-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "(1,2)") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-for-each-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        distinct-values(map:for-each(map{1:\"yes\", 2:\"no\"}, function($k,\n"
        "                  $v){$v}))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-for-each-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "(\"yes\", \"no\")") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-for-each-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:merge(map:for-each(map{\"a\":1, \"b\":2}, function($k,\n"
        "                  $v){map:entry($k, $v+1)}))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-for-each-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{\"a\":2, \"b\":3}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-size-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:size(map{})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-size-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-map-size-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        map:size(map{\"true\":1, \"false\":0})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-map-size-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-collation-key-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $C := 'http://www.w3.org/2013/collation/UCA?strength=primary'\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        map:merge((map{collation-key(\"A\", $C):1}, map{collation-key(\"a\",\n"
        "                  $C):2}), map{\"duplicates\":\"use-last\"})(collation-key(\"A\", $C))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-collation-key-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-collation-key-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $C := 'http://www.w3.org/2013/collation/UCA?strength=primary'\n"
        "          \n"
        "           return \n"
        "\n"
        "        \n"
        "        let $M := map{collation-key(\"A\", $C):1, collation-key(\"B\", $C):2}\n"
        "                  return $M(collation-key(\"a\", $C))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-collation-key-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-json-to-xml-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        json-to-xml('{\"x\": 1, \"y\": [3,4,5]}')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-json-to-xml-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><number key=\"x\">1</number><array key=\"y\"><number>3</number><number>4</number><number>5</number></array></map>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-json-to-xml-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        json-to-xml('\"abcd\"', map{'liberal': false()})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-json-to-xml-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<string xmlns=\"http://www.w3.org/2005/xpath-functions\">abcd</string>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-json-to-xml-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        json-to-xml('{\"x\": \"\\\\\", \"y\": \"\\u0025\"}')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-json-to-xml-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><string key=\"x\">\\</string><string key=\"y\">%</string></map>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-json-to-xml-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        json-to-xml('{\"x\": \"\\\\\", \"y\": \"\\u0025\"}', map{'escape':\n"
        "                  true()})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-json-to-xml-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><string escaped=\"true\" key=\"x\">\\\\</string><string key=\"y\">%</string></map>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-json-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        parse-json('{\"x\":1, \"y\":[3,4,5]}')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-json-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{\"x\":1e0,\"y\":[3e0,4e0,5e0]}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-json-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        parse-json('\"abcd\"')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-json-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"abcd\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-json-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        parse-json('{\"x\":\"\\\\\", \"y\":\"\\u0025\"}')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-json-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{\"x\":\"\\\",\"y\":\"%\"}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-json-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        parse-json('{\"x\":\"\\\\\", \"y\":\"\\u0025\"}', map{'escape':true()})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-json-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{\"x\":\"\\\\\",\"y\":\"%\"}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-json-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        parse-json('{\"x\":\"\\\\\", \"y\":\"\\u0000\"}')\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-json-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(Res, "map{\"x\":\"\\\",\"y\":codepoints-to-string(65533)}")
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-json-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        parse-json('{\"x\":\"\\\\\", \"y\":\"\\u0000\"}', map{'escape':true()})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-json-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{\"x\":\"\\\\\",\"y\":\"\\u0000\"}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-fn-parse-json-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        parse-json('{\"x\":\"\\\\\", \"y\":\"\\u0000\"}', map{'fallback':function($s){'['||$s||']'}})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-fn-parse-json-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{\"x\":\"\\\",\"y\":\"[\\u0000]\"}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-size-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:size([\"a\", \"b\", \"c\"])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-size-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-size-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:size([\"a\", [\"b\", \"c\"]])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-size-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-size-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:size([ ])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-size-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-size-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:size([[ ]])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-size-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-get-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        [\"a\", \"b\", \"c\"] => array:get(2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-get-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"b\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-get-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        [\"a\", [\"b\", \"c\"]] => array:get(2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-get-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"b\", \"c\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-put-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:put([\"a\", \"b\", \"c\"], 2, \"d\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-put-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"d\", \"c\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-put-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:put([\"a\", \"b\", \"c\"], 2, (\"d\", \"e\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-put-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", (\"d\", \"e\"), \"c\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-put-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:put([\"a\"], 1, [\"d\", \"e\"])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-put-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[[\"d\", \"e\"]]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-append-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:append([\"a\", \"b\", \"c\"], \"d\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-append-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"b\", \"c\", \"d\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-append-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:append([\"a\", \"b\", \"c\"], (\"d\", \"e\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-append-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"b\", \"c\", (\"d\", \"e\")]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-append-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:append([\"a\", \"b\", \"c\"], [\"d\", \"e\"])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-append-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"b\", \"c\", [\"d\", \"e\"]]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-join-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:join(())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-join-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[ ]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-join-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:join([1, 2, 3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-join-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[1, 2, 3]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-join-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:join(([\"a\", \"b\"], [\"c\", \"d\"]))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-join-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"b\", \"c\", \"d\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-join-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:join(([\"a\", \"b\"], [\"c\", \"d\"], [ ]))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-join-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"b\", \"c\", \"d\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-join-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:join(([\"a\", \"b\"], [\"c\", \"d\"], [[\"e\", \"f\"]]))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-join-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"b\", \"c\", \"d\", [\"e\", \"f\"]]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-subarray-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:subarray([\"a\", \"b\", \"c\", \"d\"], 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-subarray-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"b\", \"c\", \"d\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-subarray-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:subarray([\"a\", \"b\", \"c\", \"d\"], 5)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-subarray-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[ ]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-subarray-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:subarray([\"a\", \"b\", \"c\", \"d\"], 2, 0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-subarray-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[ ]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-subarray-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:subarray([\"a\", \"b\", \"c\", \"d\"], 2, 1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-subarray-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"b\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-subarray-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:subarray([\"a\", \"b\", \"c\", \"d\"], 2, 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-subarray-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"b\", \"c\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-subarray-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:subarray([\"a\", \"b\", \"c\", \"d\"], 5, 0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-subarray-006.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[ ]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-subarray-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:subarray([ ], 1, 0)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-subarray-007.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[ ]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-remove-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:remove([\"a\", \"b\", \"c\", \"d\"], 1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-remove-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"b\", \"c\", \"d\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-remove-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:remove([\"a\", \"b\", \"c\", \"d\"], 2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-remove-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"c\", \"d\" ]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-remove-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:remove([\"a\"], 1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-remove-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[ ]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-remove-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:remove([\"a\", \"b\", \"c\", \"d\"], 1 to 3)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-remove-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"d\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-remove-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:remove([\"a\", \"b\", \"c\", \"d\"], ())\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-remove-005.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"b\", \"c\", \"d\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-insert-before-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:insert-before([\"a\", \"b\", \"c\", \"d\"], 3, (\"x\", \"y\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-insert-before-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"b\", (\"x\", \"y\"), \"c\", \"d\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-insert-before-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:insert-before([\"a\", \"b\", \"c\", \"d\"], 5, (\"x\", \"y\"))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-insert-before-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"b\", \"c\", \"d\", (\"x\", \"y\")]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-insert-before-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:insert-before([\"a\", \"b\", \"c\", \"d\"], 3, [\"x\", \"y\"])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-insert-before-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"b\", [\"x\", \"y\"], \"c\", \"d\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-head-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:head([5, 6, 7, 8])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-head-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "5") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-head-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:head([[\"a\", \"b\"], [\"c\", \"d\"]])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-head-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"a\", \"b\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-head-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:head([(\"a\", \"b\"), (\"c\", \"d\")])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-head-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"a\", \"b\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-tail-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:tail([5, 6, 7, 8])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-tail-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[6, 7, 8]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-tail-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:tail([5])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-tail-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[ ]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-reverse-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:reverse([\"a\", \"b\", \"c\", \"d\"])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-reverse-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"d\", \"c\", \"b\", \"a\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-reverse-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:reverse([(\"a\", \"b\"), (\"c\", \"d\")])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-reverse-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[(\"c\", \"d\"), (\"a\", \"b\")]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-reverse-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:reverse([(1 to 5)])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-reverse-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[(1, 2, 3, 4, 5)]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-reverse-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:reverse([])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-reverse-004.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-for-each-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:for-each([\"A\", \"B\", 1, 2], function($z) {$z instance of xs:integer})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-for-each-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[false(), false(), true(), true()]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-for-each-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:for-each([\"the cat\", \"sat\", \"on the mat\"], fn:tokenize#1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-for-each-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "[(\"the\", \"cat\"), \"sat\", (\"on\", \"the\", \"mat\")]"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-filter-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:filter([\"A\", \"B\", 1, 2], function($x) {$x instance of xs:integer})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-filter-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[1, 2]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-filter-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:filter([\"the cat\", \"sat\", \"on the mat\"], function($s){fn:count(fn:tokenize($s)) gt 1})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-filter-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"the cat\", \"on the mat\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-filter-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:filter([\"A\", \"B\", \"\", 0, 1], boolean#1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-filter-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"A\", \"B\", 1]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-fold-left-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:fold-left([true(), true(), false()], true(), function($x, $y){$x and $y})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-fold-left-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-fold-left-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:fold-left([true(), true(), false()], false(), function($x, $y){$x or $y})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-fold-left-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-fold-left-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:fold-left([1,2,3], [], function($x, $y){[$x, $y]})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-fold-left-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[[[[], 1], 2], 3]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-fold-right-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:fold-right([true(), true(), false()], true(), function($x, $y){$x and $y})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-fold-right-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-fold-right-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:fold-right([true(), true(), false()], false(), function($x, $y){$x or $y})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-fold-right-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-fold-right-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:fold-right([1,2,3], [], function($x, $y){[$x, $y]})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-fold-right-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[1, [2, [3, []]]]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-for-each-pair-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:for-each-pair([\"A\", \"B\", \"C\"], [1, 2, 3], function($x, $y) { array {$x, $y}})\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-for-each-pair-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[[\"A\", 1], [\"B\", 2], [\"C\", 3]]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-for-each-pair-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $A := [\"A\", \"B\", \"C\", \"D\"] return array:for-each-pair($A, array:tail($A), concat#2)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-for-each-pair-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[\"AB\", \"BC\", \"CD\"]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-sort-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:sort([1, 4, 6, 5, 3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-sort-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[1, 3, 4, 5, 6]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-sort-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:sort([1, -2, 5, 10, -10, 10, 8], (), fn:abs#1)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-sort-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[1, -2, 5, 8, 10, -10, 10]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-sort-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:sort([(1,0), (1,1), (0,1), (0,0)])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-sort-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[(0,0), (0,1), (1,0), (1,1)]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-flatten-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:flatten([1, 4, 6, 5, 3])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-flatten-001.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(1, 4, 6, 5, 3)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-flatten-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:flatten(([1, 2, 5], [[10, 11], 12], [], 13))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-flatten-002.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(1, 2, 5, 10, 11, 12, 13)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fo-test-array-flatten-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array:flatten([(1,0), (1,1), (0,1), (0,0)])\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('global', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fo-test-array-flatten-003.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(1, 0, 1, 1, 0, 1, 0, 0)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
