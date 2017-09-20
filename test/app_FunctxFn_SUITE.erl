-module('app_FunctxFn_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['functx-fn-abs-1'/1]).
-export(['functx-fn-abs-2'/1]).
-export(['functx-fn-abs-3'/1]).
-export(['functx-fn-abs-all'/1]).
-export(['functx-fn-adjust-date-to-timezone-1'/1]).
-export(['functx-fn-adjust-date-to-timezone-2'/1]).
-export(['functx-fn-adjust-date-to-timezone-3'/1]).
-export(['functx-fn-adjust-date-to-timezone-4'/1]).
-export(['functx-fn-adjust-date-to-timezone-all'/1]).
-export(['functx-fn-adjust-dateTime-to-timezone-1'/1]).
-export(['functx-fn-adjust-dateTime-to-timezone-2'/1]).
-export(['functx-fn-adjust-dateTime-to-timezone-3'/1]).
-export(['functx-fn-adjust-dateTime-to-timezone-4'/1]).
-export(['functx-fn-adjust-dateTime-to-timezone-5'/1]).
-export(['functx-fn-adjust-dateTime-to-timezone-all'/1]).
-export(['functx-fn-adjust-time-to-timezone-1'/1]).
-export(['functx-fn-adjust-time-to-timezone-2'/1]).
-export(['functx-fn-adjust-time-to-timezone-3'/1]).
-export(['functx-fn-adjust-time-to-timezone-4'/1]).
-export(['functx-fn-adjust-time-to-timezone-all'/1]).
-export(['functx-fn-avg-1'/1]).
-export(['functx-fn-avg-2'/1]).
-export(['functx-fn-avg-3'/1]).
-export(['functx-fn-avg-4'/1]).
-export(['functx-fn-avg-5'/1]).
-export(['functx-fn-avg-all'/1]).
-export(['functx-fn-base-uri-1'/1]).
-export(['functx-fn-base-uri-2'/1]).
-export(['functx-fn-base-uri-3'/1]).
-export(['functx-fn-base-uri-all'/1]).
-export(['functx-fn-boolean-1'/1]).
-export(['functx-fn-boolean-2'/1]).
-export(['functx-fn-boolean-3'/1]).
-export(['functx-fn-boolean-4'/1]).
-export(['functx-fn-boolean-5'/1]).
-export(['functx-fn-boolean-6'/1]).
-export(['functx-fn-boolean-7'/1]).
-export(['functx-fn-boolean-8'/1]).
-export(['functx-fn-boolean-9'/1]).
-export(['functx-fn-boolean-all'/1]).
-export(['functx-fn-ceiling-1'/1]).
-export(['functx-fn-ceiling-2'/1]).
-export(['functx-fn-ceiling-3'/1]).
-export(['functx-fn-ceiling-4'/1]).
-export(['functx-fn-ceiling-5'/1]).
-export(['functx-fn-ceiling-6'/1]).
-export(['functx-fn-ceiling-all'/1]).
-export(['functx-fn-codepoint-equal-1'/1]).
-export(['functx-fn-codepoint-equal-2'/1]).
-export(['functx-fn-codepoint-equal-3'/1]).
-export(['functx-fn-codepoint-equal-all'/1]).
-export(['functx-fn-codepoints-to-string-1'/1]).
-export(['functx-fn-codepoints-to-string-2'/1]).
-export(['functx-fn-codepoints-to-string-3'/1]).
-export(['functx-fn-codepoints-to-string-all'/1]).
-export(['functx-fn-compare-1'/1]).
-export(['functx-fn-compare-2'/1]).
-export(['functx-fn-compare-3'/1]).
-export(['functx-fn-compare-4'/1]).
-export(['functx-fn-compare-5'/1]).
-export(['functx-fn-compare-6'/1]).
-export(['functx-fn-compare-7'/1]).
-export(['functx-fn-compare-all'/1]).
-export(['functx-fn-concat-1'/1]).
-export(['functx-fn-concat-2'/1]).
-export(['functx-fn-concat-3'/1]).
-export(['functx-fn-concat-4'/1]).
-export(['functx-fn-concat-all'/1]).
-export(['functx-fn-contains-1'/1]).
-export(['functx-fn-contains-2'/1]).
-export(['functx-fn-contains-3'/1]).
-export(['functx-fn-contains-4'/1]).
-export(['functx-fn-contains-5'/1]).
-export(['functx-fn-contains-6'/1]).
-export(['functx-fn-contains-7'/1]).
-export(['functx-fn-contains-all'/1]).
-export(['functx-fn-count-1'/1]).
-export(['functx-fn-count-2'/1]).
-export(['functx-fn-count-3'/1]).
-export(['functx-fn-count-4'/1]).
-export(['functx-fn-count-5'/1]).
-export(['functx-fn-count-all'/1]).
-export(['functx-fn-data-1'/1]).
-export(['functx-fn-data-2'/1]).
-export(['functx-fn-data-3'/1]).
-export(['functx-fn-data-4'/1]).
-export(['functx-fn-data-5'/1]).
-export(['functx-fn-data-6'/1]).
-export(['functx-fn-data-all'/1]).
-export(['functx-fn-dateTime-1'/1]).
-export(['functx-fn-day-from-date-1'/1]).
-export(['functx-fn-day-from-dateTime-1'/1]).
-export(['functx-fn-days-from-duration-1'/1]).
-export(['functx-fn-days-from-duration-2'/1]).
-export(['functx-fn-days-from-duration-3'/1]).
-export(['functx-fn-days-from-duration-4'/1]).
-export(['functx-fn-days-from-duration-5'/1]).
-export(['functx-fn-days-from-duration-all'/1]).
-export(['functx-fn-deep-equal-1'/1]).
-export(['functx-fn-deep-equal-2'/1]).
-export(['functx-fn-deep-equal-3'/1]).
-export(['functx-fn-deep-equal-4'/1]).
-export(['functx-fn-deep-equal-5'/1]).
-export(['functx-fn-deep-equal-6'/1]).
-export(['functx-fn-deep-equal-all'/1]).
-export(['functx-fn-default-collation-1'/1]).
-export(['functx-fn-distinct-values-1'/1]).
-export(['functx-fn-distinct-values-2'/1]).
-export(['functx-fn-distinct-values-3'/1]).
-export(['functx-fn-distinct-values-4'/1]).
-export(['functx-fn-distinct-values-5'/1]).
-export(['functx-fn-distinct-values-6'/1]).
-export(['functx-fn-distinct-values-all'/1]).
-export(['functx-fn-doc-available-1'/1]).
-export(['functx-fn-empty-1'/1]).
-export(['functx-fn-empty-2'/1]).
-export(['functx-fn-empty-3'/1]).
-export(['functx-fn-empty-4'/1]).
-export(['functx-fn-empty-5'/1]).
-export(['functx-fn-empty-6'/1]).
-export(['functx-fn-empty-7'/1]).
-export(['functx-fn-empty-all'/1]).
-export(['functx-fn-encode-for-uri-1'/1]).
-export(['functx-fn-encode-for-uri-2'/1]).
-export(['functx-fn-encode-for-uri-all'/1]).
-export(['functx-fn-ends-with-1'/1]).
-export(['functx-fn-ends-with-2'/1]).
-export(['functx-fn-ends-with-3'/1]).
-export(['functx-fn-ends-with-4'/1]).
-export(['functx-fn-ends-with-5'/1]).
-export(['functx-fn-ends-with-all'/1]).
-export(['functx-fn-escape-html-uri-1'/1]).
-export(['functx-fn-escape-html-uri-2'/1]).
-export(['functx-fn-escape-html-uri-all'/1]).
-export(['functx-fn-exactly-one-1'/1]).
-export(['functx-fn-exists-1'/1]).
-export(['functx-fn-exists-2'/1]).
-export(['functx-fn-exists-3'/1]).
-export(['functx-fn-exists-4'/1]).
-export(['functx-fn-exists-all'/1]).
-export(['functx-fn-false-1'/1]).
-export(['functx-fn-floor-1'/1]).
-export(['functx-fn-floor-2'/1]).
-export(['functx-fn-floor-3'/1]).
-export(['functx-fn-floor-4'/1]).
-export(['functx-fn-floor-5'/1]).
-export(['functx-fn-floor-6'/1]).
-export(['functx-fn-floor-all'/1]).
-export(['functx-fn-hours-from-dateTime-1'/1]).
-export(['functx-fn-hours-from-dateTime-2'/1]).
-export(['functx-fn-hours-from-dateTime-all'/1]).
-export(['functx-fn-hours-from-duration-1'/1]).
-export(['functx-fn-hours-from-duration-2'/1]).
-export(['functx-fn-hours-from-duration-3'/1]).
-export(['functx-fn-hours-from-duration-4'/1]).
-export(['functx-fn-hours-from-duration-5'/1]).
-export(['functx-fn-hours-from-duration-all'/1]).
-export(['functx-fn-hours-from-time-1'/1]).
-export(['functx-fn-hours-from-time-2'/1]).
-export(['functx-fn-hours-from-time-all'/1]).
-export(['functx-fn-index-of-1'/1]).
-export(['functx-fn-index-of-2'/1]).
-export(['functx-fn-index-of-3'/1]).
-export(['functx-fn-index-of-4'/1]).
-export(['functx-fn-index-of-5'/1]).
-export(['functx-fn-index-of-6'/1]).
-export(['functx-fn-index-of-7'/1]).
-export(['functx-fn-index-of-all'/1]).
-export(['functx-fn-insert-before-1'/1]).
-export(['functx-fn-insert-before-2'/1]).
-export(['functx-fn-insert-before-3'/1]).
-export(['functx-fn-insert-before-4'/1]).
-export(['functx-fn-insert-before-5'/1]).
-export(['functx-fn-insert-before-6'/1]).
-export(['functx-fn-insert-before-all'/1]).
-export(['functx-fn-iri-to-uri-1'/1]).
-export(['functx-fn-lang-1'/1]).
-export(['functx-fn-lang-2'/1]).
-export(['functx-fn-lang-3'/1]).
-export(['functx-fn-lang-4'/1]).
-export(['functx-fn-lang-5'/1]).
-export(['functx-fn-lang-6'/1]).
-export(['functx-fn-lang-all'/1]).
-export(['functx-fn-last-1'/1]).
-export(['functx-fn-local-name-from-QName-1'/1]).
-export(['functx-fn-local-name-from-QName-2'/1]).
-export(['functx-fn-local-name-from-QName-3'/1]).
-export(['functx-fn-local-name-from-QName-all'/1]).
-export(['functx-fn-local-name-1'/1]).
-export(['functx-fn-local-name-2'/1]).
-export(['functx-fn-local-name-3'/1]).
-export(['functx-fn-local-name-4'/1]).
-export(['functx-fn-local-name-5'/1]).
-export(['functx-fn-local-name-all'/1]).
-export(['functx-fn-lower-case-1'/1]).
-export(['functx-fn-lower-case-2'/1]).
-export(['functx-fn-lower-case-3'/1]).
-export(['functx-fn-lower-case-all'/1]).
-export(['functx-fn-matches-1'/1]).
-export(['functx-fn-matches-2'/1]).
-export(['functx-fn-matches-3'/1]).
-export(['functx-fn-matches-4'/1]).
-export(['functx-fn-matches-5'/1]).
-export(['functx-fn-matches-6'/1]).
-export(['functx-fn-matches-7'/1]).
-export(['functx-fn-matches-8'/1]).
-export(['functx-fn-matches-9'/1]).
-export(['functx-fn-matches-10'/1]).
-export(['functx-fn-matches-11'/1]).
-export(['functx-fn-matches-12'/1]).
-export(['functx-fn-matches-13'/1]).
-export(['functx-fn-matches-14'/1]).
-export(['functx-fn-matches-15'/1]).
-export(['functx-fn-matches-16'/1]).
-export(['functx-fn-matches-17'/1]).
-export(['functx-fn-matches-18'/1]).
-export(['functx-fn-matches-all'/1]).
-export(['functx-fn-max-1'/1]).
-export(['functx-fn-max-2'/1]).
-export(['functx-fn-max-3'/1]).
-export(['functx-fn-max-4'/1]).
-export(['functx-fn-max-all'/1]).
-export(['functx-fn-min-1'/1]).
-export(['functx-fn-min-2'/1]).
-export(['functx-fn-min-3'/1]).
-export(['functx-fn-min-4'/1]).
-export(['functx-fn-min-all'/1]).
-export(['functx-fn-minutes-from-dateTime-1'/1]).
-export(['functx-fn-minutes-from-duration-1'/1]).
-export(['functx-fn-minutes-from-duration-2'/1]).
-export(['functx-fn-minutes-from-duration-3'/1]).
-export(['functx-fn-minutes-from-duration-4'/1]).
-export(['functx-fn-minutes-from-duration-5'/1]).
-export(['functx-fn-minutes-from-duration-all'/1]).
-export(['functx-fn-minutes-from-time-1'/1]).
-export(['functx-fn-month-from-date-1'/1]).
-export(['functx-fn-month-from-dateTime-1'/1]).
-export(['functx-fn-months-from-duration-1'/1]).
-export(['functx-fn-months-from-duration-2'/1]).
-export(['functx-fn-months-from-duration-3'/1]).
-export(['functx-fn-months-from-duration-4'/1]).
-export(['functx-fn-months-from-duration-all'/1]).
-export(['functx-fn-name-1'/1]).
-export(['functx-fn-name-2'/1]).
-export(['functx-fn-name-3'/1]).
-export(['functx-fn-name-4'/1]).
-export(['functx-fn-name-5'/1]).
-export(['functx-fn-name-all'/1]).
-export(['functx-fn-namespace-uri-for-prefix-1'/1]).
-export(['functx-fn-namespace-uri-for-prefix-2'/1]).
-export(['functx-fn-namespace-uri-for-prefix-3'/1]).
-export(['functx-fn-namespace-uri-for-prefix-4'/1]).
-export(['functx-fn-namespace-uri-for-prefix-all'/1]).
-export(['functx-fn-namespace-uri-from-QName-1'/1]).
-export(['functx-fn-namespace-uri-from-QName-2'/1]).
-export(['functx-fn-namespace-uri-from-QName-3'/1]).
-export(['functx-fn-namespace-uri-from-QName-all'/1]).
-export(['functx-fn-namespace-uri-1'/1]).
-export(['functx-fn-namespace-uri-2'/1]).
-export(['functx-fn-namespace-uri-3'/1]).
-export(['functx-fn-namespace-uri-4'/1]).
-export(['functx-fn-namespace-uri-5'/1]).
-export(['functx-fn-namespace-uri-all'/1]).
-export(['functx-fn-nilled-1'/1]).
-export(['functx-fn-nilled-2'/1]).
-export(['functx-fn-nilled-3'/1]).
-export(['functx-fn-nilled-4'/1]).
-export(['functx-fn-nilled-all'/1]).
-export(['functx-fn-node-name-1'/1]).
-export(['functx-fn-node-name-2'/1]).
-export(['functx-fn-node-name-3'/1]).
-export(['functx-fn-node-name-4'/1]).
-export(['functx-fn-node-name-5'/1]).
-export(['functx-fn-node-name-all'/1]).
-export(['functx-fn-normalize-space-1'/1]).
-export(['functx-fn-normalize-space-2'/1]).
-export(['functx-fn-normalize-space-3'/1]).
-export(['functx-fn-normalize-space-4'/1]).
-export(['functx-fn-normalize-space-5'/1]).
-export(['functx-fn-normalize-space-6'/1]).
-export(['functx-fn-normalize-space-7'/1]).
-export(['functx-fn-normalize-space-8'/1]).
-export(['functx-fn-normalize-space-9'/1]).
-export(['functx-fn-normalize-space-all'/1]).
-export(['functx-fn-normalize-unicode-1'/1]).
-export(['functx-fn-normalize-unicode-2'/1]).
-export(['functx-fn-normalize-unicode-all'/1]).
-export(['functx-fn-not-1'/1]).
-export(['functx-fn-not-2'/1]).
-export(['functx-fn-not-3'/1]).
-export(['functx-fn-not-4'/1]).
-export(['functx-fn-not-5'/1]).
-export(['functx-fn-not-6'/1]).
-export(['functx-fn-not-7'/1]).
-export(['functx-fn-not-all'/1]).
-export(['functx-fn-number-1'/1]).
-export(['functx-fn-number-2'/1]).
-export(['functx-fn-number-3'/1]).
-export(['functx-fn-number-4'/1]).
-export(['functx-fn-number-5'/1]).
-export(['functx-fn-number-6'/1]).
-export(['functx-fn-number-all'/1]).
-export(['functx-fn-one-or-more-1'/1]).
-export(['functx-fn-one-or-more-2'/1]).
-export(['functx-fn-one-or-more-all'/1]).
-export(['functx-fn-position-1'/1]).
-export(['functx-fn-position-2'/1]).
-export(['functx-fn-position-3'/1]).
-export(['functx-fn-position-all'/1]).
-export(['functx-fn-prefix-from-QName-1'/1]).
-export(['functx-fn-prefix-from-QName-2'/1]).
-export(['functx-fn-prefix-from-QName-3'/1]).
-export(['functx-fn-prefix-from-QName-4'/1]).
-export(['functx-fn-prefix-from-QName-5'/1]).
-export(['functx-fn-prefix-from-QName-6'/1]).
-export(['functx-fn-prefix-from-QName-all'/1]).
-export(['functx-fn-QName-1'/1]).
-export(['functx-fn-QName-2'/1]).
-export(['functx-fn-QName-3'/1]).
-export(['functx-fn-QName-all'/1]).
-export(['functx-fn-remove-1'/1]).
-export(['functx-fn-remove-2'/1]).
-export(['functx-fn-remove-3'/1]).
-export(['functx-fn-remove-all'/1]).
-export(['functx-fn-replace-1'/1]).
-export(['functx-fn-replace-2'/1]).
-export(['functx-fn-replace-3'/1]).
-export(['functx-fn-replace-4'/1]).
-export(['functx-fn-replace-5'/1]).
-export(['functx-fn-replace-6'/1]).
-export(['functx-fn-replace-7'/1]).
-export(['functx-fn-replace-8'/1]).
-export(['functx-fn-replace-9'/1]).
-export(['functx-fn-replace-10'/1]).
-export(['functx-fn-replace-11'/1]).
-export(['functx-fn-replace-12'/1]).
-export(['functx-fn-replace-13'/1]).
-export(['functx-fn-replace-14'/1]).
-export(['functx-fn-replace-15'/1]).
-export(['functx-fn-replace-16'/1]).
-export(['functx-fn-replace-17'/1]).
-export(['functx-fn-replace-18'/1]).
-export(['functx-fn-replace-19'/1]).
-export(['functx-fn-replace-all'/1]).
-export(['functx-fn-resolve-QName-1'/1]).
-export(['functx-fn-resolve-QName-2'/1]).
-export(['functx-fn-resolve-QName-3'/1]).
-export(['functx-fn-resolve-QName-all'/1]).
-export(['functx-fn-resolve-uri-1'/1]).
-export(['functx-fn-resolve-uri-2'/1]).
-export(['functx-fn-resolve-uri-3'/1]).
-export(['functx-fn-resolve-uri-4'/1]).
-export(['functx-fn-resolve-uri-5'/1]).
-export(['functx-fn-resolve-uri-all'/1]).
-export(['functx-fn-reverse-1'/1]).
-export(['functx-fn-reverse-2'/1]).
-export(['functx-fn-reverse-3'/1]).
-export(['functx-fn-reverse-all'/1]).
-export(['functx-fn-root-1'/1]).
-export(['functx-fn-root-2'/1]).
-export(['functx-fn-root-all'/1]).
-export(['functx-fn-round-half-to-even-1'/1]).
-export(['functx-fn-round-half-to-even-2'/1]).
-export(['functx-fn-round-half-to-even-3'/1]).
-export(['functx-fn-round-half-to-even-4'/1]).
-export(['functx-fn-round-half-to-even-5'/1]).
-export(['functx-fn-round-half-to-even-all'/1]).
-export(['functx-fn-round-1'/1]).
-export(['functx-fn-round-2'/1]).
-export(['functx-fn-round-3'/1]).
-export(['functx-fn-round-4'/1]).
-export(['functx-fn-round-5'/1]).
-export(['functx-fn-round-all'/1]).
-export(['functx-fn-seconds-from-dateTime-1'/1]).
-export(['functx-fn-seconds-from-duration-1'/1]).
-export(['functx-fn-seconds-from-duration-2'/1]).
-export(['functx-fn-seconds-from-duration-3'/1]).
-export(['functx-fn-seconds-from-duration-4'/1]).
-export(['functx-fn-seconds-from-duration-all'/1]).
-export(['functx-fn-seconds-from-time-1'/1]).
-export(['functx-fn-starts-with-1'/1]).
-export(['functx-fn-starts-with-2'/1]).
-export(['functx-fn-starts-with-3'/1]).
-export(['functx-fn-starts-with-4'/1]).
-export(['functx-fn-starts-with-5'/1]).
-export(['functx-fn-starts-with-6'/1]).
-export(['functx-fn-starts-with-7'/1]).
-export(['functx-fn-starts-with-8'/1]).
-export(['functx-fn-starts-with-all'/1]).
-export(['functx-fn-string-join-1'/1]).
-export(['functx-fn-string-join-2'/1]).
-export(['functx-fn-string-join-3'/1]).
-export(['functx-fn-string-join-4'/1]).
-export(['functx-fn-string-join-5'/1]).
-export(['functx-fn-string-join-all'/1]).
-export(['functx-fn-string-length-1'/1]).
-export(['functx-fn-string-length-2'/1]).
-export(['functx-fn-string-length-3'/1]).
-export(['functx-fn-string-length-4'/1]).
-export(['functx-fn-string-length-5'/1]).
-export(['functx-fn-string-length-6'/1]).
-export(['functx-fn-string-length-all'/1]).
-export(['functx-fn-string-to-codepoints-1'/1]).
-export(['functx-fn-string-to-codepoints-2'/1]).
-export(['functx-fn-string-to-codepoints-3'/1]).
-export(['functx-fn-string-to-codepoints-all'/1]).
-export(['functx-fn-string-1'/1]).
-export(['functx-fn-string-2'/1]).
-export(['functx-fn-string-3'/1]).
-export(['functx-fn-string-all'/1]).
-export(['functx-fn-subsequence-1'/1]).
-export(['functx-fn-subsequence-2'/1]).
-export(['functx-fn-subsequence-3'/1]).
-export(['functx-fn-subsequence-4'/1]).
-export(['functx-fn-subsequence-5'/1]).
-export(['functx-fn-subsequence-6'/1]).
-export(['functx-fn-subsequence-all'/1]).
-export(['functx-fn-substring-after-1'/1]).
-export(['functx-fn-substring-after-2'/1]).
-export(['functx-fn-substring-after-3'/1]).
-export(['functx-fn-substring-after-4'/1]).
-export(['functx-fn-substring-after-5'/1]).
-export(['functx-fn-substring-after-6'/1]).
-export(['functx-fn-substring-after-all'/1]).
-export(['functx-fn-substring-before-1'/1]).
-export(['functx-fn-substring-before-2'/1]).
-export(['functx-fn-substring-before-3'/1]).
-export(['functx-fn-substring-before-4'/1]).
-export(['functx-fn-substring-before-5'/1]).
-export(['functx-fn-substring-before-6'/1]).
-export(['functx-fn-substring-before-7'/1]).
-export(['functx-fn-substring-before-all'/1]).
-export(['functx-fn-substring-1'/1]).
-export(['functx-fn-substring-2'/1]).
-export(['functx-fn-substring-3'/1]).
-export(['functx-fn-substring-4'/1]).
-export(['functx-fn-substring-5'/1]).
-export(['functx-fn-substring-6'/1]).
-export(['functx-fn-substring-7'/1]).
-export(['functx-fn-substring-8'/1]).
-export(['functx-fn-substring-9'/1]).
-export(['functx-fn-substring-10'/1]).
-export(['functx-fn-substring-11'/1]).
-export(['functx-fn-substring-all'/1]).
-export(['functx-fn-sum-1'/1]).
-export(['functx-fn-sum-2'/1]).
-export(['functx-fn-sum-3'/1]).
-export(['functx-fn-sum-4'/1]).
-export(['functx-fn-sum-5'/1]).
-export(['functx-fn-sum-6'/1]).
-export(['functx-fn-sum-all'/1]).
-export(['functx-fn-timezone-from-date-1'/1]).
-export(['functx-fn-timezone-from-date-2'/1]).
-export(['functx-fn-timezone-from-date-all'/1]).
-export(['functx-fn-timezone-from-dateTime-1'/1]).
-export(['functx-fn-timezone-from-dateTime-2'/1]).
-export(['functx-fn-timezone-from-dateTime-all'/1]).
-export(['functx-fn-timezone-from-time-1'/1]).
-export(['functx-fn-timezone-from-time-2'/1]).
-export(['functx-fn-timezone-from-time-3'/1]).
-export(['functx-fn-timezone-from-time-4'/1]).
-export(['functx-fn-timezone-from-time-all'/1]).
-export(['functx-fn-tokenize-1'/1]).
-export(['functx-fn-tokenize-2'/1]).
-export(['functx-fn-tokenize-3'/1]).
-export(['functx-fn-tokenize-4'/1]).
-export(['functx-fn-tokenize-5'/1]).
-export(['functx-fn-tokenize-6'/1]).
-export(['functx-fn-tokenize-7'/1]).
-export(['functx-fn-tokenize-8'/1]).
-export(['functx-fn-tokenize-9'/1]).
-export(['functx-fn-tokenize-10'/1]).
-export(['functx-fn-tokenize-11'/1]).
-export(['functx-fn-tokenize-12'/1]).
-export(['functx-fn-tokenize-all'/1]).
-export(['functx-fn-translate-1'/1]).
-export(['functx-fn-translate-2'/1]).
-export(['functx-fn-translate-3'/1]).
-export(['functx-fn-translate-4'/1]).
-export(['functx-fn-translate-5'/1]).
-export(['functx-fn-translate-6'/1]).
-export(['functx-fn-translate-7'/1]).
-export(['functx-fn-translate-all'/1]).
-export(['functx-fn-true-1'/1]).
-export(['functx-fn-upper-case-1'/1]).
-export(['functx-fn-upper-case-2'/1]).
-export(['functx-fn-upper-case-3'/1]).
-export(['functx-fn-upper-case-4'/1]).
-export(['functx-fn-upper-case-all'/1]).
-export(['functx-fn-year-from-date-1'/1]).
-export(['functx-fn-year-from-dateTime-1'/1]).
-export(['functx-fn-years-from-duration-1'/1]).
-export(['functx-fn-years-from-duration-2'/1]).
-export(['functx-fn-years-from-duration-3'/1]).
-export(['functx-fn-years-from-duration-4'/1]).
-export(['functx-fn-years-from-duration-5'/1]).
-export(['functx-fn-years-from-duration-all'/1]).
-export(['functx-fn-zero-or-one-1'/1]).
-export(['functx-fn-zero-or-one-2'/1]).
-export(['functx-fn-zero-or-one-all'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'functx-fn-abs-1',
   'functx-fn-abs-2',
   'functx-fn-abs-3',
   'functx-fn-abs-all',
   'functx-fn-adjust-date-to-timezone-1',
   'functx-fn-adjust-date-to-timezone-2',
   'functx-fn-adjust-date-to-timezone-3',
   'functx-fn-adjust-date-to-timezone-4',
   'functx-fn-adjust-date-to-timezone-all',
   'functx-fn-adjust-dateTime-to-timezone-1',
   'functx-fn-adjust-dateTime-to-timezone-2',
   'functx-fn-adjust-dateTime-to-timezone-3',
   'functx-fn-adjust-dateTime-to-timezone-4',
   'functx-fn-adjust-dateTime-to-timezone-5',
   'functx-fn-adjust-dateTime-to-timezone-all',
   'functx-fn-adjust-time-to-timezone-1',
   'functx-fn-adjust-time-to-timezone-2',
   'functx-fn-adjust-time-to-timezone-3',
   'functx-fn-adjust-time-to-timezone-4',
   'functx-fn-adjust-time-to-timezone-all',
   'functx-fn-avg-1',
   'functx-fn-avg-2',
   'functx-fn-avg-3',
   'functx-fn-avg-4',
   'functx-fn-avg-5',
   'functx-fn-avg-all',
   'functx-fn-base-uri-1',
   'functx-fn-base-uri-2',
   'functx-fn-base-uri-3',
   'functx-fn-base-uri-all',
   'functx-fn-boolean-1',
   'functx-fn-boolean-2',
   'functx-fn-boolean-3',
   'functx-fn-boolean-4',
   'functx-fn-boolean-5',
   'functx-fn-boolean-6',
   'functx-fn-boolean-7',
   'functx-fn-boolean-8',
   'functx-fn-boolean-9',
   'functx-fn-boolean-all',
   'functx-fn-ceiling-1',
   'functx-fn-ceiling-2',
   'functx-fn-ceiling-3',
   'functx-fn-ceiling-4',
   'functx-fn-ceiling-5',
   'functx-fn-ceiling-6',
   'functx-fn-ceiling-all',
   'functx-fn-codepoint-equal-1',
   'functx-fn-codepoint-equal-2',
   'functx-fn-codepoint-equal-3',
   'functx-fn-codepoint-equal-all',
   'functx-fn-codepoints-to-string-1',
   'functx-fn-codepoints-to-string-2',
   'functx-fn-codepoints-to-string-3',
   'functx-fn-codepoints-to-string-all',
   'functx-fn-compare-1',
   'functx-fn-compare-2',
   'functx-fn-compare-3',
   'functx-fn-compare-4',
   'functx-fn-compare-5',
   'functx-fn-compare-6',
   'functx-fn-compare-7',
   'functx-fn-compare-all',
   'functx-fn-concat-1',
   'functx-fn-concat-2',
   'functx-fn-concat-3',
   'functx-fn-concat-4',
   'functx-fn-concat-all',
   'functx-fn-contains-1',
   'functx-fn-contains-2',
   'functx-fn-contains-3',
   'functx-fn-contains-4',
   'functx-fn-contains-5',
   'functx-fn-contains-6',
   'functx-fn-contains-7',
   'functx-fn-contains-all',
   'functx-fn-count-1',
   'functx-fn-count-2',
   'functx-fn-count-3',
   'functx-fn-count-4',
   'functx-fn-count-5',
   'functx-fn-count-all',
   'functx-fn-data-1',
   'functx-fn-data-2',
   'functx-fn-data-3',
   'functx-fn-data-4',
   'functx-fn-data-5',
   'functx-fn-data-6',
   'functx-fn-data-all',
   'functx-fn-dateTime-1',
   'functx-fn-day-from-date-1',
   'functx-fn-day-from-dateTime-1',
   'functx-fn-days-from-duration-1',
   'functx-fn-days-from-duration-2',
   'functx-fn-days-from-duration-3',
   'functx-fn-days-from-duration-4',
   'functx-fn-days-from-duration-5',
   'functx-fn-days-from-duration-all',
   'functx-fn-deep-equal-1',
   'functx-fn-deep-equal-2',
   'functx-fn-deep-equal-3',
   'functx-fn-deep-equal-4',
   'functx-fn-deep-equal-5',
   'functx-fn-deep-equal-6',
   'functx-fn-deep-equal-all',
   'functx-fn-default-collation-1',
   'functx-fn-distinct-values-1',
   'functx-fn-distinct-values-2',
   'functx-fn-distinct-values-3',
   'functx-fn-distinct-values-4',
   'functx-fn-distinct-values-5',
   'functx-fn-distinct-values-6',
   'functx-fn-distinct-values-all',
   'functx-fn-doc-available-1',
   'functx-fn-empty-1',
   'functx-fn-empty-2',
   'functx-fn-empty-3',
   'functx-fn-empty-4',
   'functx-fn-empty-5',
   'functx-fn-empty-6',
   'functx-fn-empty-7',
   'functx-fn-empty-all',
   'functx-fn-encode-for-uri-1',
   'functx-fn-encode-for-uri-2',
   'functx-fn-encode-for-uri-all',
   'functx-fn-ends-with-1',
   'functx-fn-ends-with-2',
   'functx-fn-ends-with-3',
   'functx-fn-ends-with-4',
   'functx-fn-ends-with-5',
   'functx-fn-ends-with-all',
   'functx-fn-escape-html-uri-1',
   'functx-fn-escape-html-uri-2',
   'functx-fn-escape-html-uri-all',
   'functx-fn-exactly-one-1',
   'functx-fn-exists-1',
   'functx-fn-exists-2',
   'functx-fn-exists-3',
   'functx-fn-exists-4',
   'functx-fn-exists-all',
   'functx-fn-false-1',
   'functx-fn-floor-1',
   'functx-fn-floor-2',
   'functx-fn-floor-3',
   'functx-fn-floor-4',
   'functx-fn-floor-5',
   'functx-fn-floor-6',
   'functx-fn-floor-all',
   'functx-fn-hours-from-dateTime-1',
   'functx-fn-hours-from-dateTime-2',
   'functx-fn-hours-from-dateTime-all',
   'functx-fn-hours-from-duration-1',
   'functx-fn-hours-from-duration-2',
   'functx-fn-hours-from-duration-3',
   'functx-fn-hours-from-duration-4',
   'functx-fn-hours-from-duration-5',
   'functx-fn-hours-from-duration-all',
   'functx-fn-hours-from-time-1',
   'functx-fn-hours-from-time-2',
   'functx-fn-hours-from-time-all',
   'functx-fn-index-of-1',
   'functx-fn-index-of-2',
   'functx-fn-index-of-3',
   'functx-fn-index-of-4',
   'functx-fn-index-of-5',
   'functx-fn-index-of-6',
   'functx-fn-index-of-7',
   'functx-fn-index-of-all',
   'functx-fn-insert-before-1',
   'functx-fn-insert-before-2',
   'functx-fn-insert-before-3',
   'functx-fn-insert-before-4',
   'functx-fn-insert-before-5',
   'functx-fn-insert-before-6',
   'functx-fn-insert-before-all',
   'functx-fn-iri-to-uri-1',
   'functx-fn-lang-1',
   'functx-fn-lang-2',
   'functx-fn-lang-3',
   'functx-fn-lang-4',
   'functx-fn-lang-5',
   'functx-fn-lang-6',
   'functx-fn-lang-all',
   'functx-fn-last-1',
   'functx-fn-local-name-from-QName-1',
   'functx-fn-local-name-from-QName-2',
   'functx-fn-local-name-from-QName-3',
   'functx-fn-local-name-from-QName-all',
   'functx-fn-local-name-1',
   'functx-fn-local-name-2',
   'functx-fn-local-name-3',
   'functx-fn-local-name-4',
   'functx-fn-local-name-5',
   'functx-fn-local-name-all',
   'functx-fn-lower-case-1',
   'functx-fn-lower-case-2',
   'functx-fn-lower-case-3',
   'functx-fn-lower-case-all',
   'functx-fn-matches-1',
   'functx-fn-matches-2',
   'functx-fn-matches-3',
   'functx-fn-matches-4',
   'functx-fn-matches-5',
   'functx-fn-matches-6',
   'functx-fn-matches-7',
   'functx-fn-matches-8',
   'functx-fn-matches-9',
   'functx-fn-matches-10',
   'functx-fn-matches-11',
   'functx-fn-matches-12',
   'functx-fn-matches-13',
   'functx-fn-matches-14',
   'functx-fn-matches-15',
   'functx-fn-matches-16',
   'functx-fn-matches-17',
   'functx-fn-matches-18',
   'functx-fn-matches-all',
   'functx-fn-max-1',
   'functx-fn-max-2',
   'functx-fn-max-3',
   'functx-fn-max-4',
   'functx-fn-max-all',
   'functx-fn-min-1',
   'functx-fn-min-2',
   'functx-fn-min-3',
   'functx-fn-min-4',
   'functx-fn-min-all',
   'functx-fn-minutes-from-dateTime-1',
   'functx-fn-minutes-from-duration-1',
   'functx-fn-minutes-from-duration-2',
   'functx-fn-minutes-from-duration-3',
   'functx-fn-minutes-from-duration-4',
   'functx-fn-minutes-from-duration-5',
   'functx-fn-minutes-from-duration-all',
   'functx-fn-minutes-from-time-1',
   'functx-fn-month-from-date-1',
   'functx-fn-month-from-dateTime-1',
   'functx-fn-months-from-duration-1',
   'functx-fn-months-from-duration-2',
   'functx-fn-months-from-duration-3',
   'functx-fn-months-from-duration-4',
   'functx-fn-months-from-duration-all',
   'functx-fn-name-1',
   'functx-fn-name-2',
   'functx-fn-name-3',
   'functx-fn-name-4',
   'functx-fn-name-5',
   'functx-fn-name-all',
   'functx-fn-namespace-uri-for-prefix-1',
   'functx-fn-namespace-uri-for-prefix-2',
   'functx-fn-namespace-uri-for-prefix-3',
   'functx-fn-namespace-uri-for-prefix-4',
   'functx-fn-namespace-uri-for-prefix-all',
   'functx-fn-namespace-uri-from-QName-1',
   'functx-fn-namespace-uri-from-QName-2',
   'functx-fn-namespace-uri-from-QName-3',
   'functx-fn-namespace-uri-from-QName-all',
   'functx-fn-namespace-uri-1',
   'functx-fn-namespace-uri-2',
   'functx-fn-namespace-uri-3',
   'functx-fn-namespace-uri-4',
   'functx-fn-namespace-uri-5',
   'functx-fn-namespace-uri-all',
   'functx-fn-nilled-1',
   'functx-fn-nilled-2',
   'functx-fn-nilled-3',
   'functx-fn-nilled-4',
   'functx-fn-nilled-all',
   'functx-fn-node-name-1',
   'functx-fn-node-name-2',
   'functx-fn-node-name-3',
   'functx-fn-node-name-4',
   'functx-fn-node-name-5',
   'functx-fn-node-name-all',
   'functx-fn-normalize-space-1',
   'functx-fn-normalize-space-2',
   'functx-fn-normalize-space-3',
   'functx-fn-normalize-space-4',
   'functx-fn-normalize-space-5',
   'functx-fn-normalize-space-6',
   'functx-fn-normalize-space-7',
   'functx-fn-normalize-space-8',
   'functx-fn-normalize-space-9',
   'functx-fn-normalize-space-all',
   'functx-fn-normalize-unicode-1',
   'functx-fn-normalize-unicode-2',
   'functx-fn-normalize-unicode-all',
   'functx-fn-not-1',
   'functx-fn-not-2',
   'functx-fn-not-3',
   'functx-fn-not-4',
   'functx-fn-not-5',
   'functx-fn-not-6',
   'functx-fn-not-7',
   'functx-fn-not-all',
   'functx-fn-number-1',
   'functx-fn-number-2',
   'functx-fn-number-3',
   'functx-fn-number-4',
   'functx-fn-number-5',
   'functx-fn-number-6',
   'functx-fn-number-all',
   'functx-fn-one-or-more-1',
   'functx-fn-one-or-more-2',
   'functx-fn-one-or-more-all',
   'functx-fn-position-1',
   'functx-fn-position-2',
   'functx-fn-position-3',
   'functx-fn-position-all',
   'functx-fn-prefix-from-QName-1',
   'functx-fn-prefix-from-QName-2',
   'functx-fn-prefix-from-QName-3',
   'functx-fn-prefix-from-QName-4',
   'functx-fn-prefix-from-QName-5',
   'functx-fn-prefix-from-QName-6',
   'functx-fn-prefix-from-QName-all',
   'functx-fn-QName-1',
   'functx-fn-QName-2',
   'functx-fn-QName-3',
   'functx-fn-QName-all',
   'functx-fn-remove-1',
   'functx-fn-remove-2',
   'functx-fn-remove-3',
   'functx-fn-remove-all',
   'functx-fn-replace-1',
   'functx-fn-replace-2',
   'functx-fn-replace-3',
   'functx-fn-replace-4',
   'functx-fn-replace-5',
   'functx-fn-replace-6',
   'functx-fn-replace-7',
   'functx-fn-replace-8',
   'functx-fn-replace-9',
   'functx-fn-replace-10',
   'functx-fn-replace-11',
   'functx-fn-replace-12',
   'functx-fn-replace-13',
   'functx-fn-replace-14',
   'functx-fn-replace-15',
   'functx-fn-replace-16',
   'functx-fn-replace-17',
   'functx-fn-replace-18',
   'functx-fn-replace-19',
   'functx-fn-replace-all',
   'functx-fn-resolve-QName-1',
   'functx-fn-resolve-QName-2',
   'functx-fn-resolve-QName-3',
   'functx-fn-resolve-QName-all',
   'functx-fn-resolve-uri-1',
   'functx-fn-resolve-uri-2',
   'functx-fn-resolve-uri-3',
   'functx-fn-resolve-uri-4',
   'functx-fn-resolve-uri-5',
   'functx-fn-resolve-uri-all',
   'functx-fn-reverse-1',
   'functx-fn-reverse-2',
   'functx-fn-reverse-3',
   'functx-fn-reverse-all',
   'functx-fn-root-1',
   'functx-fn-root-2',
   'functx-fn-root-all',
   'functx-fn-round-half-to-even-1',
   'functx-fn-round-half-to-even-2',
   'functx-fn-round-half-to-even-3',
   'functx-fn-round-half-to-even-4',
   'functx-fn-round-half-to-even-5',
   'functx-fn-round-half-to-even-all',
   'functx-fn-round-1',
   'functx-fn-round-2',
   'functx-fn-round-3',
   'functx-fn-round-4',
   'functx-fn-round-5',
   'functx-fn-round-all',
   'functx-fn-seconds-from-dateTime-1',
   'functx-fn-seconds-from-duration-1',
   'functx-fn-seconds-from-duration-2',
   'functx-fn-seconds-from-duration-3',
   'functx-fn-seconds-from-duration-4',
   'functx-fn-seconds-from-duration-all',
   'functx-fn-seconds-from-time-1',
   'functx-fn-starts-with-1',
   'functx-fn-starts-with-2',
   'functx-fn-starts-with-3',
   'functx-fn-starts-with-4',
   'functx-fn-starts-with-5',
   'functx-fn-starts-with-6',
   'functx-fn-starts-with-7',
   'functx-fn-starts-with-8',
   'functx-fn-starts-with-all',
   'functx-fn-string-join-1',
   'functx-fn-string-join-2',
   'functx-fn-string-join-3',
   'functx-fn-string-join-4',
   'functx-fn-string-join-5',
   'functx-fn-string-join-all',
   'functx-fn-string-length-1',
   'functx-fn-string-length-2',
   'functx-fn-string-length-3',
   'functx-fn-string-length-4',
   'functx-fn-string-length-5',
   'functx-fn-string-length-6',
   'functx-fn-string-length-all',
   'functx-fn-string-to-codepoints-1',
   'functx-fn-string-to-codepoints-2',
   'functx-fn-string-to-codepoints-3',
   'functx-fn-string-to-codepoints-all',
   'functx-fn-string-1',
   'functx-fn-string-2',
   'functx-fn-string-3',
   'functx-fn-string-all',
   'functx-fn-subsequence-1',
   'functx-fn-subsequence-2',
   'functx-fn-subsequence-3',
   'functx-fn-subsequence-4',
   'functx-fn-subsequence-5',
   'functx-fn-subsequence-6',
   'functx-fn-subsequence-all',
   'functx-fn-substring-after-1',
   'functx-fn-substring-after-2',
   'functx-fn-substring-after-3',
   'functx-fn-substring-after-4',
   'functx-fn-substring-after-5',
   'functx-fn-substring-after-6',
   'functx-fn-substring-after-all',
   'functx-fn-substring-before-1',
   'functx-fn-substring-before-2',
   'functx-fn-substring-before-3',
   'functx-fn-substring-before-4',
   'functx-fn-substring-before-5',
   'functx-fn-substring-before-6',
   'functx-fn-substring-before-7',
   'functx-fn-substring-before-all',
   'functx-fn-substring-1',
   'functx-fn-substring-2',
   'functx-fn-substring-3',
   'functx-fn-substring-4',
   'functx-fn-substring-5',
   'functx-fn-substring-6',
   'functx-fn-substring-7',
   'functx-fn-substring-8',
   'functx-fn-substring-9',
   'functx-fn-substring-10',
   'functx-fn-substring-11',
   'functx-fn-substring-all',
   'functx-fn-sum-1',
   'functx-fn-sum-2',
   'functx-fn-sum-3',
   'functx-fn-sum-4',
   'functx-fn-sum-5',
   'functx-fn-sum-6',
   'functx-fn-sum-all',
   'functx-fn-timezone-from-date-1',
   'functx-fn-timezone-from-date-2',
   'functx-fn-timezone-from-date-all',
   'functx-fn-timezone-from-dateTime-1',
   'functx-fn-timezone-from-dateTime-2',
   'functx-fn-timezone-from-dateTime-all',
   'functx-fn-timezone-from-time-1',
   'functx-fn-timezone-from-time-2',
   'functx-fn-timezone-from-time-3',
   'functx-fn-timezone-from-time-4',
   'functx-fn-timezone-from-time-all',
   'functx-fn-tokenize-1',
   'functx-fn-tokenize-2',
   'functx-fn-tokenize-3',
   'functx-fn-tokenize-4',
   'functx-fn-tokenize-5',
   'functx-fn-tokenize-6',
   'functx-fn-tokenize-7',
   'functx-fn-tokenize-8',
   'functx-fn-tokenize-9',
   'functx-fn-tokenize-10',
   'functx-fn-tokenize-11',
   'functx-fn-tokenize-12',
   'functx-fn-tokenize-all',
   'functx-fn-translate-1',
   'functx-fn-translate-2',
   'functx-fn-translate-3',
   'functx-fn-translate-4',
   'functx-fn-translate-5',
   'functx-fn-translate-6',
   'functx-fn-translate-7',
   'functx-fn-translate-all',
   'functx-fn-true-1',
   'functx-fn-upper-case-1',
   'functx-fn-upper-case-2',
   'functx-fn-upper-case-3',
   'functx-fn-upper-case-4',
   'functx-fn-upper-case-all',
   'functx-fn-year-from-date-1',
   'functx-fn-year-from-dateTime-1',
   'functx-fn-years-from-duration-1',
   'functx-fn-years-from-duration-2',
   'functx-fn-years-from-duration-3',
   'functx-fn-years-from-duration-4',
   'functx-fn-years-from-duration-5',
   'functx-fn-years-from-duration-all',
   'functx-fn-zero-or-one-1',
   'functx-fn-zero-or-one-2',
   'functx-fn-zero-or-one-all'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('functx_order') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/app/FunctxFn/functx_order.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('functx_catalog') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/app/FunctxFn/functx_catalog.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('functx_cats') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/app/FunctxFn/functx_cats.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('functx_prices') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/app/FunctxFn/functx_prices.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'functx-fn-abs-1'(_Config) ->
   Qry = "(abs(3.5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3.5
      ",
   case xqerl_test:string_value(Res) of
             "3.5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-abs-2'(_Config) ->
   Qry = "(abs(-4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4
      ",
 Tst = xqerl:run("4"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-abs-3'(_Config) ->
   Qry = "(abs(xs:float('-INF')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         INF
      ",
   case xqerl_test:string_value(Res) of
             "INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-abs-all'(_Config) ->
   Qry = "(abs(3.5), abs(-4), abs(xs:float('-INF')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3.5 4 INF
      ",
   case xqerl_test:string_value(Res) of
             "3.5 4 INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-date-to-timezone-1'(_Config) ->
   Qry = "(adjust-date-to-timezone( xs:date('2006-02-15'), xs:dayTimeDuration('-PT8H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-02-15-08:00
      ",
   case xqerl_test:string_value(Res) of
             "2006-02-15-08:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-date-to-timezone-2'(_Config) ->
   Qry = "(adjust-date-to-timezone( xs:date('2006-02-15-03:00'), xs:dayTimeDuration('-PT8H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-02-14-08:00
      ",
   case xqerl_test:string_value(Res) of
             "2006-02-14-08:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-date-to-timezone-3'(_Config) ->
   Qry = "(adjust-date-to-timezone( xs:date('2006-02-15'), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-02-15
      ",
   case xqerl_test:string_value(Res) of
             "2006-02-15" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-date-to-timezone-4'(_Config) ->
   Qry = "(adjust-date-to-timezone( xs:date('2006-02-15-03:00'), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-02-15
      ",
   case xqerl_test:string_value(Res) of
             "2006-02-15" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-date-to-timezone-all'(_Config) ->
   Qry = "(adjust-date-to-timezone( xs:date('2006-02-15'), xs:dayTimeDuration('-PT8H')), adjust-date-to-timezone( xs:date('2006-02-15-03:00'), xs:dayTimeDuration('-PT8H')), adjust-date-to-timezone( xs:date('2006-02-15'), ()), adjust-date-to-timezone( xs:date('2006-02-15-03:00'), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-02-15-08:00 2006-02-14-08:00 2006-02-15 2006-02-15
      ",
   case xqerl_test:string_value(Res) of
             "2006-02-15-08:00 2006-02-14-08:00 2006-02-15 2006-02-15" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-dateTime-to-timezone-1'(_Config) ->
   Qry = "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00'), xs:dayTimeDuration('-PT7H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-02-15T17:00:00-07:00
      ",
   case xqerl_test:string_value(Res) of
             "2006-02-15T17:00:00-07:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-dateTime-to-timezone-2'(_Config) ->
   Qry = "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00-03:00'), xs:dayTimeDuration('-PT7H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-02-15T13:00:00-07:00
      ",
   case xqerl_test:string_value(Res) of
             "2006-02-15T13:00:00-07:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-dateTime-to-timezone-3'(_Config) ->
   Qry = "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00'), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-02-15T17:00:00
      ",
   case xqerl_test:string_value(Res) of
             "2006-02-15T17:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-dateTime-to-timezone-4'(_Config) ->
   Qry = "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00-03:00'), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-02-15T17:00:00
      ",
   case xqerl_test:string_value(Res) of
             "2006-02-15T17:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-dateTime-to-timezone-5'(_Config) ->
   Qry = "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T01:00:00-03:00'), xs:dayTimeDuration('-PT7H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-02-14T21:00:00-07:00
      ",
   case xqerl_test:string_value(Res) of
             "2006-02-14T21:00:00-07:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-dateTime-to-timezone-all'(_Config) ->
   Qry = "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00'), xs:dayTimeDuration('-PT7H')), adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00-03:00'), xs:dayTimeDuration('-PT7H')), adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00'), ()), adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00-03:00'), ()), adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T01:00:00-03:00'), xs:dayTimeDuration('-PT7H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-02-15T17:00:00-07:00 2006-02-15T13:00:00-07:00 2006-02-15T17:00:00 2006-02-15T17:00:00 2006-02-14T21:00:00-07:00
      ",
   case xqerl_test:string_value(Res) of
             "2006-02-15T17:00:00-07:00 2006-02-15T13:00:00-07:00 2006-02-15T17:00:00 2006-02-15T17:00:00 2006-02-14T21:00:00-07:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-time-to-timezone-1'(_Config) ->
   Qry = "(adjust-time-to-timezone( xs:time('17:00:00'), xs:dayTimeDuration('-PT7H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         17:00:00-07:00
      ",
   case xqerl_test:string_value(Res) of
             "17:00:00-07:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-time-to-timezone-2'(_Config) ->
   Qry = "(adjust-time-to-timezone( xs:time('17:00:00-03:00'), xs:dayTimeDuration('-PT7H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         13:00:00-07:00
      ",
   case xqerl_test:string_value(Res) of
             "13:00:00-07:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-time-to-timezone-3'(_Config) ->
   Qry = "(adjust-time-to-timezone( xs:time('17:00:00'), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         17:00:00
      ",
   case xqerl_test:string_value(Res) of
             "17:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-time-to-timezone-4'(_Config) ->
   Qry = "(adjust-time-to-timezone( xs:time('17:00:00-03:00'), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         17:00:00
      ",
   case xqerl_test:string_value(Res) of
             "17:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-adjust-time-to-timezone-all'(_Config) ->
   Qry = "(adjust-time-to-timezone( xs:time('17:00:00'), xs:dayTimeDuration('-PT7H')), adjust-time-to-timezone( xs:time('17:00:00-03:00'), xs:dayTimeDuration('-PT7H')), adjust-time-to-timezone( xs:time('17:00:00'), ()), adjust-time-to-timezone( xs:time('17:00:00-03:00'), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         17:00:00-07:00 13:00:00-07:00 17:00:00 17:00:00
      ",
   case xqerl_test:string_value(Res) of
             "17:00:00-07:00 13:00:00-07:00 17:00:00 17:00:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-avg-1'(_Config) ->
   Qry = "(avg( (1, 2, 3, 4, 5) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-avg-2'(_Config) ->
   Qry = "(avg( (1, 2, 3, (), 4, 5) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-avg-3'(_Config) ->
   Qry = "(avg( (xs:yearMonthDuration('P4M'), xs:yearMonthDuration('P6M') ) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P5M
      ",
   case xqerl_test:string_value(Res) of
             "P5M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-avg-4'(_Config) ->
   Qry = "let $ordDoc := (/) return (avg($ordDoc//item/@quantity))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.1666666666666667
      ",
 Tst = xqerl:run("1.1666666666666667"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-avg-5'(_Config) ->
   Qry = "let $ordDoc := (/) return (avg( () ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-avg-all'(_Config) ->
   Qry = "let $ordDoc := (/) return (avg( (1, 2, 3, 4, 5) ), avg( (1, 2, 3, (), 4, 5) ), avg( (xs:yearMonthDuration('P4M'), xs:yearMonthDuration('P6M') ) ), avg($ordDoc//item/@quantity), avg( () ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3, 3, xs:yearMonthDuration('P5M'), 1.1666666666666667
      ",
 Tst = xqerl:run("3, 3, xs:yearMonthDuration('P5M'), 1.1666666666666667"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-base-uri-1'(_Config) ->
   Qry = "let $cats := (/) return (base-uri($cats//catalog[1]))",
   Env = xqerl_test:handle_environment(environment('functx_cats')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org/ACC/
      ",
   case xqerl_test:string_value(Res) of
             "http://example.org/ACC/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-base-uri-2'(_Config) ->
   Qry = "let $cats := (/) return (base-uri($cats//catalog[2]/product))",
   Env = xqerl_test:handle_environment(environment('functx_cats')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org/WMN/
      ",
   case xqerl_test:string_value(Res) of
             "http://example.org/WMN/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-base-uri-3'(_Config) ->
   Qry = "let $cats := (/) return (base-uri($cats//catalog[2]/product/@href))",
   Env = xqerl_test:handle_environment(environment('functx_cats')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org/WMN/
      ",
   case xqerl_test:string_value(Res) of
             "http://example.org/WMN/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-base-uri-all'(_Config) ->
   Qry = "let $cats := (/) return (base-uri($cats//catalog[1]), base-uri($cats//catalog[2]/product), base-uri($cats//catalog[2]/product/@href))",
   Env = xqerl_test:handle_environment(environment('functx_cats')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org/ACC/ http://example.org/WMN/ http://example.org/WMN/
      ",
   case xqerl_test:string_value(Res) of
             "http://example.org/ACC/ http://example.org/WMN/ http://example.org/WMN/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-boolean-1'(_Config) ->
   Qry = "let $ordDoc := (/) return (boolean( () ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-boolean-2'(_Config) ->
   Qry = "let $ordDoc := (/) return (boolean(''))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-boolean-3'(_Config) ->
   Qry = "let $ordDoc := (/) return (boolean(0))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-boolean-4'(_Config) ->
   Qry = "let $ordDoc := (/) return (boolean('0'))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-boolean-5'(_Config) ->
   Qry = "let $ordDoc := (/) return (boolean('false'))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-boolean-6'(_Config) ->
   Qry = "let $ordDoc := (/) return (boolean(xs:float('NaN')))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-boolean-7'(_Config) ->
   Qry = "let $ordDoc := (/) return (boolean($ordDoc/order[1]))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-boolean-8'(_Config) ->
   Qry = "let $ordDoc := (/) return (boolean($ordDoc/noSuchChild))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-boolean-9'(_Config) ->
   Qry = "let $ordDoc := (/) return (boolean(<a>false</a>))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-boolean-all'(_Config) ->
   Qry = "let $ordDoc := (/) return (boolean( () ), boolean(''), boolean(0), boolean('0'), boolean('false'), boolean(xs:float('NaN')), boolean($ordDoc/order[1]), boolean($ordDoc/noSuchChild), boolean(<a>false</a>))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         false false false true true false true false true
      ",
   case xqerl_test:string_value(Res) of
             "false false false true true false true false true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-ceiling-1'(_Config) ->
   Qry = "(ceiling(5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-ceiling-2'(_Config) ->
   Qry = "(ceiling(5.1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6
      ",
 Tst = xqerl:run("6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-ceiling-3'(_Config) ->
   Qry = "(ceiling(5.5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6
      ",
 Tst = xqerl:run("6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-ceiling-4'(_Config) ->
   Qry = "(ceiling(-5.5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -5
      ",
 Tst = xqerl:run("-5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-ceiling-5'(_Config) ->
   Qry = "(ceiling(-5.51))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -5
      ",
 Tst = xqerl:run("-5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-ceiling-6'(_Config) ->
   Qry = "(ceiling( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-ceiling-all'(_Config) ->
   Qry = "(ceiling(5), ceiling(5.1), ceiling(5.5), ceiling(-5.5), ceiling(-5.51), ceiling( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5 6 6 -5 -5
      ",
   case xqerl_test:string_value(Res) of
             "5 6 6 -5 -5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-codepoint-equal-1'(_Config) ->
   Qry = "(codepoint-equal('abc', 'abc'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-codepoint-equal-2'(_Config) ->
   Qry = "(codepoint-equal('abc', 'ab c'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-codepoint-equal-3'(_Config) ->
   Qry = "(codepoint-equal('abc', ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-codepoint-equal-all'(_Config) ->
   Qry = "(codepoint-equal('abc', 'abc'), codepoint-equal('abc', 'ab c'), codepoint-equal('abc', ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true false
      ",
   case xqerl_test:string_value(Res) of
             "true false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-codepoints-to-string-1'(_Config) ->
   Qry = "(codepoints-to-string((97, 32, 98, 32, 99)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c
      ",
   case xqerl_test:string_value(Res) of
             "a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-codepoints-to-string-2'(_Config) ->
   Qry = "(codepoints-to-string(97))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a
      ",
   case xqerl_test:string_value(Res) of
             "a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-codepoints-to-string-3'(_Config) ->
   Qry = "(codepoints-to-string(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-codepoints-to-string-all'(_Config) ->
   Qry = "(codepoints-to-string((97, 32, 98, 32, 99)), codepoints-to-string(97), codepoints-to-string(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c a 
      ",
   case xqerl_test:string_value(Res) of
             "a b c a " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-compare-1'(_Config) ->
   Qry = "(compare('a', 'b'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-compare-2'(_Config) ->
   Qry = "(compare('a', 'a'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-compare-3'(_Config) ->
   Qry = "(compare('b', 'a'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-compare-4'(_Config) ->
   Qry = "(compare('ab', 'abc'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-compare-5'(_Config) ->
   Qry = "(compare('a', 'B'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-compare-6'(_Config) ->
   Qry = "(compare(upper-case('a'), upper-case('B')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-compare-7'(_Config) ->
   Qry = "(compare('a', ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-compare-all'(_Config) ->
   Qry = "(compare('a', 'b'), compare('a', 'a'), compare('b', 'a'), compare('ab', 'abc'), compare('a', 'B'), compare(upper-case('a'), upper-case('B')), compare('a', ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1 0 1 -1 1 -1
      ",
   case xqerl_test:string_value(Res) of
             "-1 0 1 -1 1 -1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-concat-1'(_Config) ->
   Qry = "(concat('a', 'b'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ab
      ",
   case xqerl_test:string_value(Res) of
             "ab" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-concat-2'(_Config) ->
   Qry = "(concat('a', 'b', 'c'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abc
      ",
   case xqerl_test:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-concat-3'(_Config) ->
   Qry = "(concat('a', (), 'b', '', 'c'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abc
      ",
   case xqerl_test:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-concat-4'(_Config) ->
   Qry = "(concat('a', <x>b</x>, 'c'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abc
      ",
   case xqerl_test:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-concat-all'(_Config) ->
   Qry = "(concat('a', 'b'), concat('a', 'b', 'c'), concat('a', (), 'b', '', 'c'), concat('a', <x>b</x>, 'c'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ab abc abc abc
      ",
   case xqerl_test:string_value(Res) of
             "ab abc abc abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-contains-1'(_Config) ->
   Qry = "(contains('query', 'e'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-contains-2'(_Config) ->
   Qry = "(contains('query', 'ery'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-contains-3'(_Config) ->
   Qry = "(contains('query', 'query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-contains-4'(_Config) ->
   Qry = "(contains('query', 'x'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-contains-5'(_Config) ->
   Qry = "(contains('query', ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-contains-6'(_Config) ->
   Qry = "(contains('query', ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-contains-7'(_Config) ->
   Qry = "(contains( (), 'q'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-contains-all'(_Config) ->
   Qry = "(contains('query', 'e'), contains('query', 'ery'), contains('query', 'query'), contains('query', 'x'), contains('query', ''), contains('query', ()), contains( (), 'q'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true true false true true false
      ",
   case xqerl_test:string_value(Res) of
             "true true true false true true false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-count-1'(_Config) ->
   Qry = "let $ordDoc := (/) return (count( (1, 2, 3) ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-count-2'(_Config) ->
   Qry = "let $ordDoc := (/) return (count($ordDoc//item))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6
      ",
 Tst = xqerl:run("6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-count-3'(_Config) ->
   Qry = "let $ordDoc := (/) return (count( distinct-values($ordDoc//item/@num)))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4
      ",
 Tst = xqerl:run("4"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-count-4'(_Config) ->
   Qry = "let $ordDoc := (/) return (count( (1, 2, 3, () ) ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-count-5'(_Config) ->
   Qry = "let $ordDoc := (/) return (count( () ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-count-all'(_Config) ->
   Qry = "let $ordDoc := (/) return (count( (1, 2, 3) ), count($ordDoc//item), count( distinct-values($ordDoc//item/@num)), count( (1, 2, 3, () ) ), count( () ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3 6 4 3 0
      ",
   case xqerl_test:string_value(Res) of
             "3 6 4 3 0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-data-1'(_Config) ->
   Qry = "let $cat := (/) return (data($cat//product[1]/number))",
   Env = xqerl_test:handle_environment(environment('functx_catalog')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         557
      ",
   case xqerl_test:string_value(Res) of
             "557" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-data-2'(_Config) ->
   Qry = "let $cat := (/) return (data($cat//number))",
   Env = xqerl_test:handle_environment(environment('functx_catalog')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         557 563 443 784
      ",
   case xqerl_test:string_value(Res) of
             "557 563 443 784" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-data-3'(_Config) ->
   Qry = "let $cat := (/) return (data($cat//product[1]/@dept))",
   Env = xqerl_test:handle_environment(environment('functx_catalog')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         WMN
      ",
   case xqerl_test:string_value(Res) of
             "WMN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-data-4'(_Config) ->
   Qry = "let $cat := (/) return (data($cat//product[1]/colorChoices))",
   Env = xqerl_test:handle_environment(environment('functx_catalog')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         navy black
      ",
   case xqerl_test:string_value(Res) of
             "navy black" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-data-5'(_Config) ->
   Qry = "let $cat := (/) return (data($cat//product[1]))",
   Env = xqerl_test:handle_environment(environment('functx_catalog')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         557Fleece Pullovernavy black
         
      ",
   case string:trim(xqerl_test:string_value(Res)) of
             "557Fleece Pullovernavy black" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'functx-fn-data-6'(_Config) ->
   Qry = "let $cat := (/) return (data($cat//product[4]/desc))",
   Env = xqerl_test:handle_environment(environment('functx_catalog')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Our favorite shirt!
      ",
   case xqerl_test:string_value(Res) of
             "Our favorite shirt!" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-data-all'(_Config) ->
   Qry = "let $cat := (/) return (data($cat//product[1]/number), data($cat//number), data($cat//product[1]/@dept), data($cat//product[1]/colorChoices), data($cat//product[1]), data($cat//product[4]/desc))",
   Env = xqerl_test:handle_environment(environment('functx_catalog')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         557 557 563 443 784 WMN navy black 557 Fleece Pullover navy black Our favorite shirt!
      ",
   case string:trim(xqerl_test:string_value(Res)) of
             "557 557 563 443 784 WMN navy black 557 Fleece Pullover navy black Our favorite shirt!" -> {comment, "assert-string-value"};
             _ -> ct:fail({Res,Exp}) end.
'functx-fn-dateTime-1'(_Config) ->
   Qry = "(dateTime(xs:date('2006-08-15'), xs:time('12:30:45-05:00')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006-08-15T12:30:45-05:00
      ",
   case xqerl_test:string_value(Res) of
             "2006-08-15T12:30:45-05:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-day-from-date-1'(_Config) ->
   Qry = "(day-from-date(xs:date('2006-08-15')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         15
      ",
 Tst = xqerl:run("15"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-day-from-dateTime-1'(_Config) ->
   Qry = "(day-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         15
      ",
 Tst = xqerl:run("15"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-days-from-duration-1'(_Config) ->
   Qry = "(days-from-duration( xs:dayTimeDuration('P5D')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-days-from-duration-2'(_Config) ->
   Qry = "(days-from-duration( xs:dayTimeDuration('-PT24H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-days-from-duration-3'(_Config) ->
   Qry = "(days-from-duration( xs:dayTimeDuration('PT23H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-days-from-duration-4'(_Config) ->
   Qry = "(days-from-duration( xs:dayTimeDuration('P1DT36H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-days-from-duration-5'(_Config) ->
   Qry = "(days-from-duration( xs:dayTimeDuration('PT1440M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-days-from-duration-all'(_Config) ->
   Qry = "(days-from-duration( xs:dayTimeDuration('P5D')), days-from-duration( xs:dayTimeDuration('-PT24H')), days-from-duration( xs:dayTimeDuration('PT23H')), days-from-duration( xs:dayTimeDuration('P1DT36H')), days-from-duration( xs:dayTimeDuration('PT1440M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5 -1 0 2 1
      ",
   case xqerl_test:string_value(Res) of
             "5 -1 0 2 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-deep-equal-1'(_Config) ->
   Qry = "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( 1, 1 ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-deep-equal-2'(_Config) ->
   Qry = "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( (1, 1), (1, 1) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-deep-equal-3'(_Config) ->
   Qry = "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( (1, 2), (1.0, 2.0) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-deep-equal-4'(_Config) ->
   Qry = "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( (1, 2), (2, 1) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-deep-equal-5'(_Config) ->
   Qry = "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( $prod1, $prod2 ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-deep-equal-6'(_Config) ->
   Qry = "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( $prod1/number, $prod2/number ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-deep-equal-all'(_Config) ->
   Qry = "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( 1, 1 ), deep-equal( (1, 1), (1, 1) ), deep-equal( (1, 2), (1.0, 2.0) ), deep-equal( (1, 2), (2, 1) ), deep-equal( $prod1, $prod2 ), deep-equal( $prod1/number, $prod2/number ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true true false true true
      ",
   case xqerl_test:string_value(Res) of
             "true true true false true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-default-collation-1'(_Config) ->
   Qry = "(default-collation())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.w3.org/2005/xpath-functions/collation/codepoint
      ",
   case xqerl_test:string_value(Res) of
             "http://www.w3.org/2005/xpath-functions/collation/codepoint" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-distinct-values-1'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( ('a', 'b', 'a') ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b
      ",
   case xqerl_test:string_value(Res) of
             "a b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-distinct-values-2'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( (1, 2, 3) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-distinct-values-3'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( ('a', 2, 3) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a 2 3
      ",
   case xqerl_test:string_value(Res) of
             "a 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-distinct-values-4'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( (xs:integer('1'), xs:decimal('1.0'), xs:float('1.0E0') ) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-distinct-values-5'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values($in-xml/*))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3 5
      ",
   case xqerl_test:string_value(Res) of
             "3 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-distinct-values-6'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-distinct-values-all'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( ('a', 'b', 'a') ), distinct-values( (1, 2, 3) ), distinct-values( ('a', 2, 3) ), distinct-values( (xs:integer('1'), xs:decimal('1.0'), xs:float('1.0E0') ) ), distinct-values($in-xml/*), distinct-values( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b 1 2 3 a 2 3 1 3 5
      ",
   case xqerl_test:string_value(Res) of
             "a b 1 2 3 a 2 3 1 3 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-doc-available-1'(_Config) ->
   Qry = "(doc-available( document-uri(/) ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-empty-1'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty( ('a', 'b', 'c') ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-empty-2'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-empty-3'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty(0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-empty-4'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty($in-xml/a))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-empty-5'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty($in-xml/b))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-empty-6'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty($in-xml/c))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-empty-7'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty($in-xml/foo))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-empty-all'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty( ('a', 'b', 'c') ), empty( () ), empty(0), empty($in-xml/a), empty($in-xml/b), empty($in-xml/c), empty($in-xml/foo))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         false true false false false false true
      ",
   case xqerl_test:string_value(Res) of
             "false true false false false false true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-encode-for-uri-1'(_Config) ->
   Qry = "(encode-for-uri( 'Sales % Numbers.pdf'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Sales%20%25%20Numbers.pdf
      ",
   case xqerl_test:string_value(Res) of
             "Sales%20%25%20Numbers.pdf" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-encode-for-uri-2'(_Config) ->
   Qry = "(encode-for-uri( 'http://datypic.com/a%20URI#frag'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http%3A%2F%2Fdatypic.com%2Fa%2520URI%23frag
      ",
   case xqerl_test:string_value(Res) of
             "http%3A%2F%2Fdatypic.com%2Fa%2520URI%23frag" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-encode-for-uri-all'(_Config) ->
   Qry = "(encode-for-uri( 'Sales % Numbers.pdf'), encode-for-uri( 'http://datypic.com/a%20URI#frag'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Sales%20%25%20Numbers.pdf http%3A%2F%2Fdatypic.com%2Fa%2520URI%23frag
      ",
   case xqerl_test:string_value(Res) of
             "Sales%20%25%20Numbers.pdf http%3A%2F%2Fdatypic.com%2Fa%2520URI%23frag" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-ends-with-1'(_Config) ->
   Qry = "(ends-with('query', 'y'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-ends-with-2'(_Config) ->
   Qry = "(ends-with('query', 'query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-ends-with-3'(_Config) ->
   Qry = "(ends-with('query', ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-ends-with-4'(_Config) ->
   Qry = "(ends-with('query ', 'y'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-ends-with-5'(_Config) ->
   Qry = "(ends-with('', 'y'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-ends-with-all'(_Config) ->
   Qry = "(ends-with('query', 'y'), ends-with('query', 'query'), ends-with('query', ''), ends-with('query ', 'y'), ends-with('', 'y'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true true false false
      ",
   case xqerl_test:string_value(Res) of
             "true true true false false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-escape-html-uri-1'(_Config) ->
   Qry = "(escape-html-uri( 'http://datypic.com/a%20URI#frag'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/a%20URI#frag
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/a%20URI#frag" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-escape-html-uri-2'(_Config) ->
   Qry = "(escape-html-uri('http://datypic.com'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-escape-html-uri-all'(_Config) ->
   Qry = "(escape-html-uri( 'http://datypic.com/a%20URI#frag'), escape-html-uri('http://datypic.com'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/a%20URI#frag http://datypic.com
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/a%20URI#frag http://datypic.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-exactly-one-1'(_Config) ->
   Qry = "(exactly-one('a'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a
      ",
   case xqerl_test:string_value(Res) of
             "a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-exists-1'(_Config) ->
   Qry = "(exists( ('a', 'b', 'c') ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-exists-2'(_Config) ->
   Qry = "(exists( '' ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-exists-3'(_Config) ->
   Qry = "(exists( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-exists-4'(_Config) ->
   Qry = "(exists( false() ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-exists-all'(_Config) ->
   Qry = "(exists( ('a', 'b', 'c') ), exists( '' ), exists( () ), exists( false() ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true false true
      ",
   case xqerl_test:string_value(Res) of
             "true true false true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-false-1'(_Config) ->
   Qry = "(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-floor-1'(_Config) ->
   Qry = "(floor(5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-floor-2'(_Config) ->
   Qry = "(floor(5.1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-floor-3'(_Config) ->
   Qry = "(floor(5.7))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-floor-4'(_Config) ->
   Qry = "(floor(-5.1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -6
      ",
 Tst = xqerl:run("-6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-floor-5'(_Config) ->
   Qry = "(floor(-5.7))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -6
      ",
 Tst = xqerl:run("-6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-floor-6'(_Config) ->
   Qry = "(floor( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-floor-all'(_Config) ->
   Qry = "(floor(5), floor(5.1), floor(5.7), floor(-5.1), floor(-5.7), floor( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5 5 5 -6 -6
      ",
   case xqerl_test:string_value(Res) of
             "5 5 5 -6 -6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-hours-from-dateTime-1'(_Config) ->
   Qry = "(hours-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-hours-from-dateTime-2'(_Config) ->
   Qry = "(hours-from-dateTime( xs:dateTime('2006-08-15T10:30:23-05:00')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-hours-from-dateTime-all'(_Config) ->
   Qry = "(hours-from-dateTime( xs:dateTime('2006-08-15T10:30:23')), hours-from-dateTime( xs:dateTime('2006-08-15T10:30:23-05:00')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10 10
      ",
   case xqerl_test:string_value(Res) of
             "10 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-hours-from-duration-1'(_Config) ->
   Qry = "(hours-from-duration( xs:dayTimeDuration('P1DT5H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-hours-from-duration-2'(_Config) ->
   Qry = "(hours-from-duration( xs:dayTimeDuration('-PT36H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -12
      ",
 Tst = xqerl:run("-12"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-hours-from-duration-3'(_Config) ->
   Qry = "(hours-from-duration( xs:dayTimeDuration('PT1H90M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-hours-from-duration-4'(_Config) ->
   Qry = "(hours-from-duration( xs:dayTimeDuration('PT2H59M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-hours-from-duration-5'(_Config) ->
   Qry = "(hours-from-duration( xs:dayTimeDuration('PT3600S')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-hours-from-duration-all'(_Config) ->
   Qry = "(hours-from-duration( xs:dayTimeDuration('P1DT5H')), hours-from-duration( xs:dayTimeDuration('-PT36H')), hours-from-duration( xs:dayTimeDuration('PT1H90M')), hours-from-duration( xs:dayTimeDuration('PT2H59M')), hours-from-duration( xs:dayTimeDuration('PT3600S')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5 -12 2 2 1
      ",
   case xqerl_test:string_value(Res) of
             "5 -12 2 2 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-hours-from-time-1'(_Config) ->
   Qry = "(hours-from-time( xs:time('10:30:23')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-hours-from-time-2'(_Config) ->
   Qry = "(hours-from-time( xs:time('10:30:23-05:00')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-hours-from-time-all'(_Config) ->
   Qry = "(hours-from-time( xs:time('10:30:23')), hours-from-time( xs:time('10:30:23-05:00')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10 10
      ",
   case xqerl_test:string_value(Res) of
             "10 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-index-of-1'(_Config) ->
   Qry = "(index-of( ('a', 'b', 'c'), 'a'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-index-of-2'(_Config) ->
   Qry = "(index-of( ('a', 'b', 'c'), 'd'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-index-of-3'(_Config) ->
   Qry = "(index-of( (4, 5, 6, 4), 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 4
      ",
   case xqerl_test:string_value(Res) of
             "1 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-index-of-4'(_Config) ->
   Qry = "(index-of( (4, 5, 6, 4), 04.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 4
      ",
   case xqerl_test:string_value(Res) of
             "1 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-index-of-5'(_Config) ->
   Qry = "(index-of( ('a', 5, 6), 'a'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-index-of-6'(_Config) ->
   Qry = "(index-of( (), 'a'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-index-of-7'(_Config) ->
   Qry = "(index-of( (<a>1</a>, <b>1</b>), <c>1</c> ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2
      ",
   case xqerl_test:string_value(Res) of
             "1 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-index-of-all'(_Config) ->
   Qry = "(index-of( ('a', 'b', 'c'), 'a'), index-of( ('a', 'b', 'c'), 'd'), index-of( (4, 5, 6, 4), 4), index-of( (4, 5, 6, 4), 04.0), index-of( ('a', 5, 6), 'a'), index-of( (), 'a'), index-of( (<a>1</a>, <b>1</b>), <c>1</c> ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 1 4 1 4 1 1 2
      ",
   case xqerl_test:string_value(Res) of
             "1 1 4 1 4 1 1 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-insert-before-1'(_Config) ->
   Qry = "(insert-before( ('a', 'b', 'c'), 1, ('x', 'y')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         x y a b c
      ",
   case xqerl_test:string_value(Res) of
             "x y a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-insert-before-2'(_Config) ->
   Qry = "(insert-before( ('a', 'b', 'c'), 2, ('x', 'y')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a x y b c
      ",
   case xqerl_test:string_value(Res) of
             "a x y b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-insert-before-3'(_Config) ->
   Qry = "(insert-before( ('a', 'b', 'c'), 10, ('x', 'y')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c x y
      ",
   case xqerl_test:string_value(Res) of
             "a b c x y" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-insert-before-4'(_Config) ->
   Qry = "(insert-before( ('a', 'b', 'c'), 0, ('x', 'y')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         x y a b c
      ",
   case xqerl_test:string_value(Res) of
             "x y a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-insert-before-5'(_Config) ->
   Qry = "(insert-before( ('a', 'b', 'c'), 2, ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c
      ",
   case xqerl_test:string_value(Res) of
             "a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-insert-before-6'(_Config) ->
   Qry = "(insert-before( (), 3, ('a', 'b', 'c') ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c
      ",
   case xqerl_test:string_value(Res) of
             "a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-insert-before-all'(_Config) ->
   Qry = "(insert-before( ('a', 'b', 'c'), 1, ('x', 'y')), insert-before( ('a', 'b', 'c'), 2, ('x', 'y')), insert-before( ('a', 'b', 'c'), 10, ('x', 'y')), insert-before( ('a', 'b', 'c'), 0, ('x', 'y')), insert-before( ('a', 'b', 'c'), 2, ()), insert-before( (), 3, ('a', 'b', 'c') ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         x y a b c a x y b c a b c x y x y a b c a b c a b c
      ",
   case xqerl_test:string_value(Res) of
             "x y a b c a x y b c a b c x y x y a b c a b c a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-iri-to-uri-1'(_Config) ->
   Qry = "(iri-to-uri( 'http://datypic.com/Sales Numbers.pdf'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/Sales%20Numbers.pdf
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/Sales%20Numbers.pdf" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-lang-1'(_Config) ->
   Qry = "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc[lang('en')])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <desc xml:lang=\"en-US\"><line>A line of text.</line></desc>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<desc xml:lang=\"en-US\"><line>A line of text.</line></desc>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<desc xml:lang=\"en-US\"><line>A line of text.</line></desc>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-lang-2'(_Config) ->
   Qry = "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc[lang('en-US')])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <desc xml:lang=\"en-US\"><line>A line of text.</line></desc>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<desc xml:lang=\"en-US\"><line>A line of text.</line></desc>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<desc xml:lang=\"en-US\"><line>A line of text.</line></desc>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-lang-3'(_Config) ->
   Qry = "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc[lang('fr')])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-lang-4'(_Config) ->
   Qry = "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc/line[lang('en')])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <line>A line of text.</line>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<line>A line of text.</line>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<line>A line of text.</line>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-lang-5'(_Config) ->
   Qry = "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml[lang('en-US')])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-lang-6'(_Config) ->
   Qry = "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc[lang('FR')])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-lang-all'(_Config) ->
   Qry = "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc[lang('en')], $in-xml// desc[lang('en-US')], $in-xml// desc[lang('fr')], $in-xml// desc/line[lang('en')], $in-xml[lang('en-US')], $in-xml// desc[lang('FR')])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <desc xml:lang=\"en-US\"><line>A line of text.</line></desc><desc xml:lang=\"en-US\"><line>A line of text.</line></desc><desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc><line>A line of text.</line><desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<desc xml:lang=\"en-US\"><line>A line of text.</line></desc><desc xml:lang=\"en-US\"><line>A line of text.</line></desc><desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc><line>A line of text.</line><desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<desc xml:lang=\"en-US\"><line>A line of text.</line></desc><desc xml:lang=\"en-US\"><line>A line of text.</line></desc><desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc><line>A line of text.</line><desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-last-1'(_Config) ->
   Qry = "(/ catalog/product[last()])",
   Env = xqerl_test:handle_environment(environment('functx_catalog')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <product dept=\"MEN\">
  <number>784</number>
  <name language=\"en\">Cotton Dress Shirt</name>
  <colorChoices>white gray</colorChoices>
  <desc>Our <i>favorite</i> shirt!</desc>
 </product>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<product dept=\"MEN\">
  <number>784</number>
  <name language=\"en\">Cotton Dress Shirt</name>
  <colorChoices>white gray</colorChoices>
  <desc>Our <i>favorite</i> shirt!</desc>
 </product>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<product dept=\"MEN\">
  <number>784</number>
  <name language=\"en\">Cotton Dress Shirt</name>
  <colorChoices>white gray</colorChoices>
  <desc>Our <i>favorite</i> shirt!</desc>
 </product>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-local-name-from-QName-1'(_Config) ->
   Qry = "(local-name-from-QName( QName('http://datypic.com/prod', 'number')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         number
      ",
   case xqerl_test:string_value(Res) of
             "number" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-local-name-from-QName-2'(_Config) ->
   Qry = "(local-name-from-QName(QName ('', 'number')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         number
      ",
   case xqerl_test:string_value(Res) of
             "number" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-local-name-from-QName-3'(_Config) ->
   Qry = "(local-name-from-QName( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-local-name-from-QName-all'(_Config) ->
   Qry = "(local-name-from-QName( QName('http://datypic.com/prod', 'number')), local-name-from-QName(QName ('', 'number')), local-name-from-QName( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         number number
      ",
   case xqerl_test:string_value(Res) of
             "number number" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-local-name-1'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         noNamespace
      ",
   case xqerl_test:string_value(Res) of
             "noNamespace" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-local-name-2'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml//pre:prefixed))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         prefixed
      ",
   case xqerl_test:string_value(Res) of
             "prefixed" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-local-name-3'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml//unpre:unprefixed))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         unprefixed
      ",
   case xqerl_test:string_value(Res) of
             "unprefixed" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-local-name-4'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml//@pre:prefAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         prefAttr
      ",
   case xqerl_test:string_value(Res) of
             "prefAttr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-local-name-5'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml//@noNSAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         noNSAttr
      ",
   case xqerl_test:string_value(Res) of
             "noNSAttr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-local-name-all'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml), local-name($in-xml//pre:prefixed), local-name($in-xml//unpre:unprefixed), local-name($in-xml//@pre:prefAttr), local-name($in-xml//@noNSAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         noNamespace prefixed unprefixed prefAttr noNSAttr
      ",
   case xqerl_test:string_value(Res) of
             "noNamespace prefixed unprefixed prefAttr noNSAttr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-lower-case-1'(_Config) ->
   Qry = "(lower-case('QUERY'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query
      ",
   case xqerl_test:string_value(Res) of
             "query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-lower-case-2'(_Config) ->
   Qry = "(lower-case('Query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query
      ",
   case xqerl_test:string_value(Res) of
             "query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-lower-case-3'(_Config) ->
   Qry = "(lower-case('QUERY123'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query123
      ",
   case xqerl_test:string_value(Res) of
             "query123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-lower-case-all'(_Config) ->
   Qry = "(lower-case('QUERY'), lower-case('Query'), lower-case('QUERY123'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query query query123
      ",
   case xqerl_test:string_value(Res) of
             "query query query123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-matches-1'(_Config) ->
   Qry = "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', 'q'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-2'(_Config) ->
   Qry = "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', 'ue'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-3'(_Config) ->
   Qry = "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', '^qu'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-4'(_Config) ->
   Qry = "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', 'qu$'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-5'(_Config) ->
   Qry = "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', '[ux]'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-6'(_Config) ->
   Qry = "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', 'q.*'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-7'(_Config) ->
   Qry = "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', '[a-z]{5}'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-8'(_Config) ->
   Qry = "let $address := '123 Main Street Traverse City, MI 49684' return (matches((), 'q' ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-9'(_Config) ->
   Qry = "let $address := '123 Main Street
Traverse City, MI 49684' return (matches($address, 'Street.*City'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-10'(_Config) ->
   Qry = "let $address := '123 Main Street Traverse City, MI 49684' return (matches($address, 'Street.*City', 's'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-11'(_Config) ->
   Qry = "let $address := '123 Main Street
Traverse City, MI 49684' return (matches($address, 'Street$'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-12'(_Config) ->
   Qry = "let $address := '123 Main Street
Traverse City, MI 49684' return (matches($address, 'Street$', 'm'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-13'(_Config) ->
   Qry = "let $address := '123 Main Street
Traverse City, MI 49684' return (matches($address, 'street'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-14'(_Config) ->
   Qry = "let $address := '123 Main Street
Traverse City, MI 49684' return (matches($address, 'street', 'i'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-15'(_Config) ->
   Qry = "let $address := '123 Main Street
Traverse City, MI 49684' return (matches($address, 'Main Street'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-16'(_Config) ->
   Qry = "let $address := '123 Main Street
Traverse City, MI 49684' return (matches($address, 'Main Street', 'x'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-17'(_Config) ->
   Qry = "let $address := '123 Main Street
Traverse City, MI 49684' return (matches($address, 'Main \\s Street', 'x'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-18'(_Config) ->
   Qry = "let $address := '123 Main Street
Traverse City, MI 49684' return (matches($address, 'street$', 'im'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-matches-all'(_Config) ->
   Qry = "
        let $address := '123 Main Street
Traverse City, MI 49684' 
        return (matches('query', 'q'), matches('query', 'ue'), matches('query', '^qu'), 
            matches('query', 'qu$'), matches('query', '[ux]'), matches('query', 'q.*'), 
            matches('query', '[a-z]{5}'), matches((), 'q' ), matches($address, 'Street.*City'), 
            matches($address, 'Street.*City', 's'), matches($address, 'Street$'), 
            matches($address, 'Street$', 'm'), matches($address, 'street'), 
            matches($address, 'street', 'i'), matches($address, 'Main Street'), 
            matches($address, 'Main Street', 'x'), matches($address, 'Main \\s Street', 'x'), 
            matches($address, 'street$', 'im'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true true false true true true false false true false true false true true false true true
      ",
   case xqerl_test:string_value(Res) of
             "true true true false true true true false false true false true false true true false true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-max-1'(_Config) ->
   Qry = "let $ordDoc := (/) return (max( (2, 1, 5, 4, 3) ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-max-2'(_Config) ->
   Qry = "let $ordDoc := (/) return (max( ('a', 'b', 'c') ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         c
      ",
   case xqerl_test:string_value(Res) of
             "c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-max-3'(_Config) ->
   Qry = "let $ordDoc := (/) return (max( 2 ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-max-4'(_Config) ->
   Qry = "let $ordDoc := (/) return (max($ordDoc//item/string(@dept)))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         WMN
      ",
   case xqerl_test:string_value(Res) of
             "WMN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-max-all'(_Config) ->
   Qry = "let $ordDoc := (/) return (max( (2, 1, 5, 4, 3) ), max( ('a', 'b', 'c') ), max( 2 ), max($ordDoc//item/string(@dept)))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5 c 2 WMN
      ",
   case xqerl_test:string_value(Res) of
             "5 c 2 WMN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-min-1'(_Config) ->
   Qry = "let $ordDoc := (/) return (min( (2.0, 1, 3.5, 4) ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-min-2'(_Config) ->
   Qry = "let $ordDoc := (/) return (min( ('a', 'b', 'c') ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a
      ",
   case xqerl_test:string_value(Res) of
             "a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-min-3'(_Config) ->
   Qry = "let $ordDoc := (/) return (min($ordDoc//item//string(@color)))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-min-4'(_Config) ->
   Qry = "let $ordDoc := (/) return (min($ordDoc//item/@color/string(.)))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         beige
      ",
   case xqerl_test:string_value(Res) of
             "beige" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-min-all'(_Config) ->
   Qry = "let $ordDoc := (/) return (min( (2.0, 1, 3.5, 4) ), min( ('a', 'b', 'c') ), min($ordDoc//item//string(@color)), min($ordDoc//item/@color/string(.)))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 a  beige
      ",
   case xqerl_test:string_value(Res) of
             "1 a  beige" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-minutes-from-dateTime-1'(_Config) ->
   Qry = "(minutes-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         30
      ",
 Tst = xqerl:run("30"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-minutes-from-duration-1'(_Config) ->
   Qry = "(minutes-from-duration( xs:dayTimeDuration('PT30M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         30
      ",
 Tst = xqerl:run("30"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-minutes-from-duration-2'(_Config) ->
   Qry = "(minutes-from-duration( xs:dayTimeDuration('-PT90M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -30
      ",
 Tst = xqerl:run("-30"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-minutes-from-duration-3'(_Config) ->
   Qry = "(minutes-from-duration( xs:dayTimeDuration('PT1M90S')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-minutes-from-duration-4'(_Config) ->
   Qry = "(minutes-from-duration( xs:dayTimeDuration('PT3H')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-minutes-from-duration-5'(_Config) ->
   Qry = "(minutes-from-duration( xs:dayTimeDuration('PT60M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-minutes-from-duration-all'(_Config) ->
   Qry = "(minutes-from-duration( xs:dayTimeDuration('PT30M')), minutes-from-duration( xs:dayTimeDuration('-PT90M')), minutes-from-duration( xs:dayTimeDuration('PT1M90S')), minutes-from-duration( xs:dayTimeDuration('PT3H')), minutes-from-duration( xs:dayTimeDuration('PT60M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         30 -30 2 0 0
      ",
   case xqerl_test:string_value(Res) of
             "30 -30 2 0 0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-minutes-from-time-1'(_Config) ->
   Qry = "(minutes-from-time(xs:time('10:30:23')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         30
      ",
 Tst = xqerl:run("30"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-month-from-date-1'(_Config) ->
   Qry = "(month-from-date(xs:date('2006-08-15')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         8
      ",
 Tst = xqerl:run("8"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-month-from-dateTime-1'(_Config) ->
   Qry = "(month-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         8
      ",
 Tst = xqerl:run("8"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-months-from-duration-1'(_Config) ->
   Qry = "(months-from-duration( xs:yearMonthDuration('P3M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-months-from-duration-2'(_Config) ->
   Qry = "(months-from-duration( xs:yearMonthDuration('-P18M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -6
      ",
 Tst = xqerl:run("-6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-months-from-duration-3'(_Config) ->
   Qry = "(months-from-duration( xs:yearMonthDuration('P1Y')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-months-from-duration-4'(_Config) ->
   Qry = "(months-from-duration( xs:yearMonthDuration('P12M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-months-from-duration-all'(_Config) ->
   Qry = "(months-from-duration( xs:yearMonthDuration('P3M')), months-from-duration( xs:yearMonthDuration('-P18M')), months-from-duration( xs:yearMonthDuration('P1Y')), months-from-duration( xs:yearMonthDuration('P12M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3 -6 0 0
      ",
   case xqerl_test:string_value(Res) of
             "3 -6 0 0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-name-1'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         noNamespace
      ",
   case xqerl_test:string_value(Res) of
             "noNamespace" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-name-2'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml//pre2:prefixed))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         pre:prefixed
      ",
   case xqerl_test:string_value(Res) of
             "pre:prefixed" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-name-3'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml//unpre2:unprefixed))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         unprefixed
      ",
   case xqerl_test:string_value(Res) of
             "unprefixed" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-name-4'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml//@pre2:prefAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         pre:prefAttr
      ",
   case xqerl_test:string_value(Res) of
             "pre:prefAttr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-name-5'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml//@noNSAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         noNSAttr
      ",
   case xqerl_test:string_value(Res) of
             "noNSAttr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-name-all'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml), name($in-xml//pre2:prefixed), name($in-xml//unpre2:unprefixed), name($in-xml//@pre2:prefAttr), name($in-xml//@noNSAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         noNamespace pre:prefixed unprefixed pre:prefAttr noNSAttr
      ",
   case xqerl_test:string_value(Res) of
             "noNamespace pre:prefixed unprefixed pre:prefAttr noNSAttr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-for-prefix-1'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri-for-prefix( '', $in-xml))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-for-prefix-2'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri-for-prefix( 'pre',$in-xml//pre:prefixed))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/pre
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/pre" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-for-prefix-3'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri-for-prefix( '',$in-xml//unpre:unprefixed))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/unpre
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/unpre" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-for-prefix-4'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri-for-prefix( 'pre',$in-xml//unpre:unprefixed))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/pre
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/pre" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-for-prefix-all'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := 
         <noNamespace> 
            <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> 
                <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> 
            </pre:prefixed> 
        </noNamespace> 
        return (namespace-uri-for-prefix('', $in-xml),
                namespace-uri-for-prefix('pre',$in-xml//pre:prefixed),
                namespace-uri-for-prefix('',$in-xml//unpre:unprefixed),
                namespace-uri-for-prefix('pre',$in-xml//unpre:unprefixed))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/pre http://datypic.com/unpre http://datypic.com/pre
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/pre http://datypic.com/unpre http://datypic.com/pre" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-from-QName-1'(_Config) ->
   Qry = "(namespace-uri-from-QName( QName ('http://datypic.com/pre', 'prefixed')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/pre
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/pre" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-from-QName-2'(_Config) ->
   Qry = "(namespace-uri-from-QName( QName ('', 'unprefixed')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-from-QName-3'(_Config) ->
   Qry = "(namespace-uri-from-QName( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-from-QName-all'(_Config) ->
   Qry = "(namespace-uri-from-QName( QName ('http://datypic.com/pre', 'prefixed')), namespace-uri-from-QName( QName ('', 'unprefixed')), namespace-uri-from-QName( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/pre 
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/pre " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-1'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-2'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml//pre:prefixed))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/pre
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/pre" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-3'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml//unpre:unprefixed))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/unpre
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/unpre" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-4'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml//@pre:prefAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/pre
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/pre" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-5'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml//@noNSAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-namespace-uri-all'(_Config) ->
   Qry = "declare namespace pre = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml), namespace-uri($in-xml//pre:prefixed), namespace-uri($in-xml//unpre:unprefixed), namespace-uri($in-xml//@pre:prefAttr), namespace-uri($in-xml//@noNSAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          http://datypic.com/pre http://datypic.com/unpre http://datypic.com/pre 
      ",
   case xqerl_test:string_value(Res) of
             " http://datypic.com/pre http://datypic.com/unpre http://datypic.com/pre " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-nilled-1'(_Config) ->
   Qry = "let $in-xml := <root xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"> <child>12</child> <child xsi:nil=\"true\"></child> <child></child> <child/> <child xsi:nil=\"false\"></child> </root> return (nilled($in-xml//child[1]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-nilled-2'(_Config) ->
   Qry = "let $in-xml := <root xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"> <child>12</child> <child xsi:nil=\"true\"></child> <child></child> <child/> <child xsi:nil=\"false\"></child> </root> return (nilled($in-xml//child[3]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-nilled-3'(_Config) ->
   Qry = "let $in-xml := <root xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"> <child>12</child> <child xsi:nil=\"true\"></child> <child></child> <child/> <child xsi:nil=\"false\"></child> </root> return (nilled($in-xml//child[4]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-nilled-4'(_Config) ->
   Qry = "let $in-xml := <root xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"> <child>12</child> <child xsi:nil=\"true\"></child> <child></child> <child/> <child xsi:nil=\"false\"></child> </root> return (nilled($in-xml//child[5]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-nilled-all'(_Config) ->
   Qry = "let $in-xml := <root xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"> <child>12</child> <child xsi:nil=\"true\"></child> <child></child> <child/> <child xsi:nil=\"false\"></child> </root> return (nilled($in-xml//child[1]), nilled($in-xml//child[3]), nilled($in-xml//child[4]), nilled($in-xml//child[5]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         false false false false
      ",
   case xqerl_test:string_value(Res) of
             "false false false false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-node-name-1'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         noNamespace
      ",
   case xqerl_test:string_value(Res) of
             "noNamespace" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-node-name-2'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml/pre2:prefixed))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         pre:prefixed
      ",
   case xqerl_test:string_value(Res) of
             "pre:prefixed" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-node-name-3'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml//unpre2:unprefixed))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         unprefixed
      ",
   case xqerl_test:string_value(Res) of
             "unprefixed" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-node-name-4'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml//@pre2:prefAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         pre:prefAttr
      ",
   case xqerl_test:string_value(Res) of
             "pre:prefAttr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-node-name-5'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml//@noNSAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         noNSAttr
      ",
   case xqerl_test:string_value(Res) of
             "noNSAttr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-node-name-all'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre2 = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml), node-name($in-xml/pre2:prefixed), node-name($in-xml//unpre2:unprefixed), node-name($in-xml//@pre2:prefAttr), node-name($in-xml//@noNSAttr))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         noNamespace pre:prefixed unprefixed pre:prefAttr noNSAttr
      ",
   case xqerl_test:string_value(Res) of
             "noNamespace pre:prefixed unprefixed pre:prefAttr noNSAttr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-space-1'(_Config) ->
   Qry = "(normalize-space('query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query
      ",
   case xqerl_test:string_value(Res) of
             "query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-space-2'(_Config) ->
   Qry = "(normalize-space(' query '))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query
      ",
   case xqerl_test:string_value(Res) of
             "query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-space-3'(_Config) ->
   Qry = "(normalize-space('xml query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xml query
      ",
   case xqerl_test:string_value(Res) of
             "xml query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-space-4'(_Config) ->
   Qry = "(normalize-space('xml query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xml query
      ",
   case xqerl_test:string_value(Res) of
             "xml query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-space-5'(_Config) ->
   Qry = "(normalize-space('xml query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xml query
      ",
   case xqerl_test:string_value(Res) of
             "xml query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-space-6'(_Config) ->
   Qry = "(normalize-space(''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-space-7'(_Config) ->
   Qry = "(normalize-space(' '))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-space-8'(_Config) ->
   Qry = "(normalize-space(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-space-9'(_Config) ->
   Qry = "(normalize-space( <element> query </element>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query
      ",
   case xqerl_test:string_value(Res) of
             "query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-space-all'(_Config) ->
   Qry = "(normalize-space('query'), normalize-space(' query '), normalize-space('xml query'), normalize-space('xml query'), normalize-space('xml query'), normalize-space(''), normalize-space(' '), normalize-space(()), normalize-space( <element> query </element>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query query xml query xml query xml query    query
      ",
   case xqerl_test:string_value(Res) of
             "query query xml query xml query xml query    query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-unicode-1'(_Config) ->
   Qry = "(normalize-unicode('query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query
      ",
   case xqerl_test:string_value(Res) of
             "query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-unicode-2'(_Config) ->
   Qry = "(normalize-unicode('query', ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query
      ",
   case xqerl_test:string_value(Res) of
             "query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-normalize-unicode-all'(_Config) ->
   Qry = "(normalize-unicode('query'), normalize-unicode('query', ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query query
      ",
   case xqerl_test:string_value(Res) of
             "query query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-not-1'(_Config) ->
   Qry = "(not(32 >
         20))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-not-2'(_Config) ->
   Qry = "(not((/) //product))",
   Env = xqerl_test:handle_environment(environment('functx_catalog')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-not-3'(_Config) ->
   Qry = "(not(true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-not-4'(_Config) ->
   Qry = "(not(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-not-5'(_Config) ->
   Qry = "(not(''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-not-6'(_Config) ->
   Qry = "(not(0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-not-7'(_Config) ->
   Qry = "(not(<e>false</e>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-not-all'(_Config) ->
   Qry = "(not(32 > 20), not((/) //product), not(true()), not(()), not(''), not(0), not(<e>false</e>))",
   Env = xqerl_test:handle_environment(environment('functx_catalog')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         false false false true true true false
      ",
   case xqerl_test:string_value(Res) of
             "false false false true true true false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-number-1'(_Config) ->
   Qry = "let $priceDoc := (/) return (number( $priceDoc//prod[1]/price))",
   Env = xqerl_test:handle_environment(environment('functx_prices')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         29.99
      ",
   case xqerl_test:string_value(Res) of
             "29.99" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-number-2'(_Config) ->
   Qry = "let $priceDoc := (/) return (number( $priceDoc//prod[1]/@currency))",
   Env = xqerl_test:handle_environment(environment('functx_prices')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-number-3'(_Config) ->
   Qry = "let $priceDoc := (/) return (number('29.99'))",
   Env = xqerl_test:handle_environment(environment('functx_prices')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         29.99
      ",
   case xqerl_test:string_value(Res) of
             "29.99" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-number-4'(_Config) ->
   Qry = "let $priceDoc := (/) return (number('ABC'))",
   Env = xqerl_test:handle_environment(environment('functx_prices')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-number-5'(_Config) ->
   Qry = "let $priceDoc := (/) return (number( () ))",
   Env = xqerl_test:handle_environment(environment('functx_prices')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-number-6'(_Config) ->
   Qry = "let $priceDoc := (/) return ($priceDoc// prod/price[number() >
         35])",
   Env = xqerl_test:handle_environment(environment('functx_prices')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <price currency=\"USD\">69.99</price><price currency=\"USD\">39.99</price>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<price currency=\"USD\">69.99</price><price currency=\"USD\">39.99</price>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<price currency=\"USD\">69.99</price><price currency=\"USD\">39.99</price>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-number-all'(_Config) ->
   Qry = "let $priceDoc := (/) return (number( $priceDoc//prod[1]/price), number( $priceDoc//prod[1]/@currency), number('29.99'), number('ABC'), number( () ), $priceDoc// prod/price[number() >
         35])",
   Env = xqerl_test:handle_environment(environment('functx_prices')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         29.99 NaN 29.99 NaN NaN<price currency=\"USD\">69.99</price><price currency=\"USD\">39.99</price>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"29.99 NaN 29.99 NaN NaN<price currency=\"USD\">69.99</price><price currency=\"USD\">39.99</price>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "29.99 NaN 29.99 NaN NaN<price currency=\"USD\">69.99</price><price currency=\"USD\">39.99</price>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-one-or-more-1'(_Config) ->
   Qry = "(one-or-more('a'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a
      ",
   case xqerl_test:string_value(Res) of
             "a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-one-or-more-2'(_Config) ->
   Qry = "(one-or-more( ('a', 'b') ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b
      ",
   case xqerl_test:string_value(Res) of
             "a b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-one-or-more-all'(_Config) ->
   Qry = "(one-or-more('a'), one-or-more( ('a', 'b') ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a a b
      ",
   case xqerl_test:string_value(Res) of
             "a a b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-position-1'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a>1</a> <c>2</c> <a>3</a> <a>4</a> <a>5</a> </in-xml> return ($in-xml/*[position() > 2])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>3</a><a>4</a><a>5</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>3</a><a>4</a><a>5</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>3</a><a>4</a><a>5</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-position-2'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a>1</a> <c>2</c> <a>3</a> <a>4</a> <a>5</a> </in-xml> return ($in-xml/a[position() > 2])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>4</a><a>5</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>4</a><a>5</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>4</a><a>5</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-position-3'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a>1</a> <c>2</c> <a>3</a> <a>4</a> <a>5</a> </in-xml> return ($in-xml/a[position() = 3])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>4</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>4</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>4</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-position-all'(_Config) ->
   Qry = "let $in-xml := <in-xml> <a>1</a> <c>2</c> <a>3</a> <a>4</a> <a>5</a> </in-xml> return ($in-xml/*[position() > 2], $in-xml/a[position() > 2], $in-xml/a[position() = 3])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a>3</a><a>4</a><a>5</a><a>4</a><a>5</a><a>4</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a>3</a><a>4</a><a>5</a><a>4</a><a>5</a><a>4</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a>3</a><a>4</a><a>5</a><a>4</a><a>5</a><a>4</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-prefix-from-QName-1'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-prefix-from-QName-2'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml//pre2:prefixed)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         pre
      ",
   case xqerl_test:string_value(Res) of
             "pre" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-prefix-from-QName-3'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml//unpre:unprefixed)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-prefix-from-QName-4'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml//@pre2:prefAttr)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         pre
      ",
   case xqerl_test:string_value(Res) of
             "pre" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-prefix-from-QName-5'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml//@noNSAttr)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-prefix-from-QName-6'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name(<pre2:new>xyz</pre2:new>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         pre2
      ",
   case xqerl_test:string_value(Res) of
             "pre2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-prefix-from-QName-all'(_Config) ->
   Qry = "declare namespace pre2 = \"http://datypic.com/pre\";
         declare namespace unpre = \"http://datypic.com/unpre\";
         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml)), prefix-from-QName( node-name($in-xml//pre2:prefixed)), prefix-from-QName( node-name($in-xml//unpre:unprefixed)), prefix-from-QName( node-name($in-xml//@pre2:prefAttr)), prefix-from-QName( node-name($in-xml//@noNSAttr)), prefix-from-QName( node-name(<pre2:new>xyz</pre2:new>)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         pre pre pre2
      ",
   case xqerl_test:string_value(Res) of
             "pre pre pre2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-QName-1'(_Config) ->
   Qry = "(QName('http://datypic.com/prod','product'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         product
      ",
   case xqerl_test:string_value(Res) of
             "product" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-QName-2'(_Config) ->
   Qry = "(QName('http://datypic.com/prod', 'pre:product'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         pre:product
      ",
   case xqerl_test:string_value(Res) of
             "pre:product" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-QName-3'(_Config) ->
   Qry = "(QName('', 'product'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         product
      ",
   case xqerl_test:string_value(Res) of
             "product" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-QName-all'(_Config) ->
   Qry = "(QName('http://datypic.com/prod','product'), QName('http://datypic.com/prod', 'pre:product'), QName('', 'product'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         product pre:product product
      ",
   case xqerl_test:string_value(Res) of
             "product pre:product product" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-remove-1'(_Config) ->
   Qry = "(remove( ('a', 'b', 'c'), 2) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a c
      ",
   case xqerl_test:string_value(Res) of
             "a c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-remove-2'(_Config) ->
   Qry = "(remove( ('a', 'b', 'c'), 10))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c
      ",
   case xqerl_test:string_value(Res) of
             "a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-remove-3'(_Config) ->
   Qry = "(remove( ('a', 'b', 'c'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c
      ",
   case xqerl_test:string_value(Res) of
             "a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-remove-all'(_Config) ->
   Qry = "(remove( ('a', 'b', 'c'), 2) , remove( ('a', 'b', 'c'), 10), remove( ('a', 'b', 'c'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a c a b c a b c
      ",
   case xqerl_test:string_value(Res) of
             "a c a b c a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-1'(_Config) ->
   Qry = "(replace('query', 'r', 'as'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         queasy
      ",
   case xqerl_test:string_value(Res) of
             "queasy" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-2'(_Config) ->
   Qry = "(replace('query', 'qu', 'quack'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         quackery
      ",
   case xqerl_test:string_value(Res) of
             "quackery" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-3'(_Config) ->
   Qry = "(replace('query', '[ry]', 'l'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         quell
      ",
   case xqerl_test:string_value(Res) of
             "quell" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-4'(_Config) ->
   Qry = "(replace('query', '[ry]+', 'l'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         quel
      ",
   case xqerl_test:string_value(Res) of
             "quel" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-5'(_Config) ->
   Qry = "(replace('query', 'z', 'a'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query
      ",
   case xqerl_test:string_value(Res) of
             "query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-6'(_Config) ->
   Qry = "(replace('query', 'query', ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-7'(_Config) ->
   Qry = "(replace( (), 'r', 'as'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-8'(_Config) ->
   Qry = "(replace('Chapter', '(Chap)|(Chapter)', 'x'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xter
      ",
   case xqerl_test:string_value(Res) of
             "xter" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-9'(_Config) ->
   Qry = "(replace('reluctant', 'r.*t', 'X'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         X
      ",
   case xqerl_test:string_value(Res) of
             "X" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-10'(_Config) ->
   Qry = "(replace('reluctant', 'r.*?t', 'X'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Xant
      ",
   case xqerl_test:string_value(Res) of
             "Xant" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-11'(_Config) ->
   Qry = "(replace('aaah', 'a{2,3}', 'X'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Xh
      ",
   case xqerl_test:string_value(Res) of
             "Xh" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-12'(_Config) ->
   Qry = "(replace('aaah', 'a{2,3}?', 'X'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Xah
      ",
   case xqerl_test:string_value(Res) of
             "Xah" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-13'(_Config) ->
   Qry = "(replace('aaaah', 'a{2,3}', 'X'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Xah
      ",
   case xqerl_test:string_value(Res) of
             "Xah" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-14'(_Config) ->
   Qry = "(replace('aaaah', 'a{2,3}?', 'X'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         XXh
      ",
   case xqerl_test:string_value(Res) of
             "XXh" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-15'(_Config) ->
   Qry = "(replace('Chap 2...Chap 3...Chap 4...', 'Chap (\\d)', 'Sec $1.0'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Sec 2.0...Sec 3.0...Sec 4.0...
      ",
   case xqerl_test:string_value(Res) of
             "Sec 2.0...Sec 3.0...Sec 4.0..." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-16'(_Config) ->
   Qry = "(replace('abc123', '([a-z])', '$1x'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         axbxcx123
      ",
   case xqerl_test:string_value(Res) of
             "axbxcx123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-17'(_Config) ->
   Qry = "(replace('2315551212', '(\\d{3})(\\d{3})(\\d{4})', '($1) $2-$3'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         (231) 555-1212
      ",
   case xqerl_test:string_value(Res) of
             "(231) 555-1212" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-18'(_Config) ->
   Qry = "(replace('2006-10-18', '\\d{2}(\\d{2})-(\\d{2})-(\\d{2})', '$2/$3/$1'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10/18/06
      ",
   case xqerl_test:string_value(Res) of
             "10/18/06" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-19'(_Config) ->
   Qry = "(replace('25', '(\\d+)', '\\$$1.00'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         $25.00
      ",
   case xqerl_test:string_value(Res) of
             "$25.00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-replace-all'(_Config) ->
   Qry = "(replace('query', 'r', 'as'), replace('query', 'qu', 'quack'), replace('query', '[ry]', 'l'), replace('query', '[ry]+', 'l'), replace('query', 'z', 'a'), replace('query', 'query', ''), replace( (), 'r', 'as'), replace('Chapter', '(Chap)|(Chapter)', 'x'), replace('reluctant', 'r.*t', 'X'), replace('reluctant', 'r.*?t', 'X'), replace('aaah', 'a{2,3}', 'X'), replace('aaah', 'a{2,3}?', 'X'), replace('aaaah', 'a{2,3}', 'X'), replace('aaaah', 'a{2,3}?', 'X'), replace('Chap 2...Chap 3...Chap 4...', 'Chap (\\d)', 'Sec $1.0'), replace('abc123', '([a-z])', '$1x'), replace('2315551212', '(\\d{3})(\\d{3})(\\d{4})', '($1) $2-$3'), replace('2006-10-18', '\\d{2}(\\d{2})-(\\d{2})-(\\d{2})', '$2/$3/$1'), replace('25', '(\\d+)', '\\$$1.00'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         queasy quackery quell quel query   xter X Xant Xh Xah Xah XXh Sec 2.0...Sec 3.0...Sec 4.0... axbxcx123 (231) 555-1212 10/18/06 $25.00
      ",
   case xqerl_test:string_value(Res) of
             "queasy quackery quell quel query   xter X Xant Xh Xah Xah XXh Sec 2.0...Sec 3.0...Sec 4.0... axbxcx123 (231) 555-1212 10/18/06 $25.00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-resolve-QName-1'(_Config) ->
   Qry = "declare namespace ord = \"http://datypic.com/ord\";
         declare namespace dty = \"http://datypic.com\";
         declare namespace dty2 = \"http://datypic.com/ns2\";
         let $root := <root> <order xmlns:ord=\"http://datypic.com/ord\" xmlns=\"http://datypic.com\"> <!-- ... --> </order> </root> return (resolve-QName('myName', $root))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         myName
      ",
   case xqerl_test:string_value(Res) of
             "myName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-resolve-QName-2'(_Config) ->
   Qry = "declare namespace ord = \"http://datypic.com/ord\";
         declare namespace dty = \"http://datypic.com\";
         declare namespace dty2 = \"http://datypic.com/ns2\";
         let $root := <root> <order xmlns:ord=\"http://datypic.com/ord\" xmlns=\"http://datypic.com\"> <!-- ... --> </order> </root> return (resolve-QName('myName', $root/dty:order))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         myName
      ",
   case xqerl_test:string_value(Res) of
             "myName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-resolve-QName-3'(_Config) ->
   Qry = "declare namespace ord = \"http://datypic.com/ord\";
         declare namespace dty = \"http://datypic.com\";
         declare namespace dty2 = \"http://datypic.com/ns2\";
         let $root := <root> <order xmlns:ord=\"http://datypic.com/ord\" xmlns=\"http://datypic.com\"> <!-- ... --> </order> </root> return (resolve-QName( 'ord:myName', $root/dty:order))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ord:myName
      ",
   case xqerl_test:string_value(Res) of
             "ord:myName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-resolve-QName-all'(_Config) ->
   Qry = "declare namespace ord = \"http://datypic.com/ord\";
         declare namespace dty = \"http://datypic.com\";
         declare namespace dty2 = \"http://datypic.com/ns2\";
         let $root := <root> <order xmlns:ord=\"http://datypic.com/ord\" xmlns=\"http://datypic.com\"> <!-- ... --> </order> </root> return (resolve-QName('myName', $root), resolve-QName('myName', $root/dty:order), resolve-QName( 'ord:myName', $root/dty:order))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         myName myName ord:myName
      ",
   case xqerl_test:string_value(Res) of
             "myName myName ord:myName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-resolve-uri-1'(_Config) ->
   Qry = "(resolve-uri('prod', 'http://datypic.com/'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/prod
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/prod" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-resolve-uri-2'(_Config) ->
   Qry = "(resolve-uri('prod2', 'http://datypic.com/prod1'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/prod2
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/prod2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-resolve-uri-3'(_Config) ->
   Qry = "(resolve-uri( 'http://example.org','http://datypic.com'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.org
      ",
   case xqerl_test:string_value(Res) of
             "http://example.org" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-resolve-uri-4'(_Config) ->
   Qry = "(resolve-uri( 'http://datypic.com', '../base'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
         http://datypic.com
         
        
      ",
 case (xqerl_test:string_value(Res) == "http://datypic.com") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'functx-fn-resolve-uri-5'(_Config) ->
   Qry = "(resolve-uri( '', 'http://datypic.com'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-resolve-uri-all'(_Config) ->
   Qry = "(resolve-uri('prod', 'http://datypic.com/'), resolve-uri('prod2', 'http://datypic.com/prod1'), resolve-uri( 'http://example.org','http://datypic.com'), resolve-uri( 'http://datypic.com', '../base'), resolve-uri( '', 'http://datypic.com'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://datypic.com/prod http://datypic.com/prod2 http://example.org http://datypic.com http://datypic.com
      ",
   case xqerl_test:string_value(Res) of
             "http://datypic.com/prod http://datypic.com/prod2 http://example.org http://datypic.com http://datypic.com" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-reverse-1'(_Config) ->
   Qry = "(reverse( (1, 2, 3, 4, 5) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5 4 3 2 1
      ",
   case xqerl_test:string_value(Res) of
             "5 4 3 2 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-reverse-2'(_Config) ->
   Qry = "(reverse( (6, 2, 4) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4 2 6
      ",
   case xqerl_test:string_value(Res) of
             "4 2 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-reverse-3'(_Config) ->
   Qry = "(reverse( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-reverse-all'(_Config) ->
   Qry = "(reverse( (1, 2, 3, 4, 5) ), reverse( (6, 2, 4) ), reverse( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5 4 3 2 1 4 2 6
      ",
   case xqerl_test:string_value(Res) of
             "5 4 3 2 1 4 2 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-root-1'(_Config) ->
   Qry = "let $in-xml := <a><x>123</x></a> return (root( (/) //item[1]))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <order num=\"00299432\" date=\"2006-09-15\" cust=\"0221A\">
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"beige\"/>
  <item dept=\"ACC\" num=\"563\" quantity=\"1\"/>
  <item dept=\"ACC\" num=\"443\" quantity=\"2\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/white\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/red\"/>
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"sage\"/>
</order>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<order num=\"00299432\" date=\"2006-09-15\" cust=\"0221A\">
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"beige\"/>
  <item dept=\"ACC\" num=\"563\" quantity=\"1\"/>
  <item dept=\"ACC\" num=\"443\" quantity=\"2\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/white\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/red\"/>
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"sage\"/>
</order>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<order num=\"00299432\" date=\"2006-09-15\" cust=\"0221A\">
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"beige\"/>
  <item dept=\"ACC\" num=\"563\" quantity=\"1\"/>
  <item dept=\"ACC\" num=\"443\" quantity=\"2\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/white\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/red\"/>
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"sage\"/>
</order>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-root-2'(_Config) ->
   Qry = "let $in-xml := <a><x>123</x></a> return (root($in-xml/x))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a><x>123</x></a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a><x>123</x></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a><x>123</x></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-root-all'(_Config) ->
   Qry = "let $in-xml := <a><x>123</x></a> return (root( (/) //item[1]), root($in-xml/x))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <order num=\"00299432\" date=\"2006-09-15\" cust=\"0221A\">
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"beige\"/>
  <item dept=\"ACC\" num=\"563\" quantity=\"1\"/>
  <item dept=\"ACC\" num=\"443\" quantity=\"2\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/white\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/red\"/>
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"sage\"/>
</order><a><x>123</x></a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<order num=\"00299432\" date=\"2006-09-15\" cust=\"0221A\">
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"beige\"/>
  <item dept=\"ACC\" num=\"563\" quantity=\"1\"/>
  <item dept=\"ACC\" num=\"443\" quantity=\"2\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/white\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/red\"/>
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"sage\"/>
</order><a><x>123</x></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<order num=\"00299432\" date=\"2006-09-15\" cust=\"0221A\">
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"beige\"/>
  <item dept=\"ACC\" num=\"563\" quantity=\"1\"/>
  <item dept=\"ACC\" num=\"443\" quantity=\"2\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/white\"/>
  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/red\"/>
  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"sage\"/>
</order><a><x>123</x></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'functx-fn-round-half-to-even-1'(_Config) ->
   Qry = "(round-half-to-even(5.5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6
      ",
 Tst = xqerl:run("6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-round-half-to-even-2'(_Config) ->
   Qry = "(round-half-to-even(6.5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6
      ",
 Tst = xqerl:run("6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-round-half-to-even-3'(_Config) ->
   Qry = "(round-half-to-even(9372.253, 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9372.25
      ",
   case xqerl_test:string_value(Res) of
             "9372.25" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-round-half-to-even-4'(_Config) ->
   Qry = "(round-half-to-even(9372.253, 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9372
      ",
 Tst = xqerl:run("9372"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-round-half-to-even-5'(_Config) ->
   Qry = "(round-half-to-even(9372.253, -3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9000
      ",
 Tst = xqerl:run("9000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-round-half-to-even-all'(_Config) ->
   Qry = "(round-half-to-even(5.5), round-half-to-even(6.5), round-half-to-even(9372.253, 2), round-half-to-even(9372.253, 0), round-half-to-even(9372.253, -3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6 6 9372.25 9372 9000
      ",
   case xqerl_test:string_value(Res) of
             "6 6 9372.25 9372 9000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-round-1'(_Config) ->
   Qry = "(round(5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-round-2'(_Config) ->
   Qry = "(round(5.1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-round-3'(_Config) ->
   Qry = "(round(5.5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6
      ",
 Tst = xqerl:run("6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-round-4'(_Config) ->
   Qry = "(round(-5.5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -5
      ",
 Tst = xqerl:run("-5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-round-5'(_Config) ->
   Qry = "(round(-5.51))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -6
      ",
 Tst = xqerl:run("-6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-round-all'(_Config) ->
   Qry = "(round(5), round(5.1), round(5.5), round(-5.5), round(-5.51))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5 5 6 -5 -6
      ",
   case xqerl_test:string_value(Res) of
             "5 5 6 -5 -6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-seconds-from-dateTime-1'(_Config) ->
   Qry = "(seconds-from-dateTime( xs:dateTime('2006-08-15T10:30:23.5')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         23.5
      ",
   case xqerl_test:string_value(Res) of
             "23.5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-seconds-from-duration-1'(_Config) ->
   Qry = "(seconds-from-duration( xs:dayTimeDuration('PT30.5S')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         30.5
      ",
   case xqerl_test:string_value(Res) of
             "30.5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-seconds-from-duration-2'(_Config) ->
   Qry = "(seconds-from-duration( xs:dayTimeDuration('-PT90.5S')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -30.5
      ",
   case xqerl_test:string_value(Res) of
             "-30.5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-seconds-from-duration-3'(_Config) ->
   Qry = "(seconds-from-duration( xs:dayTimeDuration('PT1M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-seconds-from-duration-4'(_Config) ->
   Qry = "(seconds-from-duration( xs:dayTimeDuration('PT60S')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-seconds-from-duration-all'(_Config) ->
   Qry = "(seconds-from-duration( xs:dayTimeDuration('PT30.5S')), seconds-from-duration( xs:dayTimeDuration('-PT90.5S')), seconds-from-duration( xs:dayTimeDuration('PT1M')), seconds-from-duration( xs:dayTimeDuration('PT60S')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         30.5 -30.5 0 0
      ",
   case xqerl_test:string_value(Res) of
             "30.5 -30.5 0 0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-seconds-from-time-1'(_Config) ->
   Qry = "(seconds-from-time(xs:time('10:30:23.5')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         23.5
      ",
   case xqerl_test:string_value(Res) of
             "23.5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-starts-with-1'(_Config) ->
   Qry = "(starts-with('query', 'que'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-starts-with-2'(_Config) ->
   Qry = "(starts-with('query', 'query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-starts-with-3'(_Config) ->
   Qry = "(starts-with('query', 'u'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-starts-with-4'(_Config) ->
   Qry = "(starts-with('query', ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-starts-with-5'(_Config) ->
   Qry = "(starts-with('', 'query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-starts-with-6'(_Config) ->
   Qry = "(starts-with('', ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-starts-with-7'(_Config) ->
   Qry = "(starts-with('query', ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-starts-with-8'(_Config) ->
   Qry = "(starts-with(' query', 'q'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-starts-with-all'(_Config) ->
   Qry = "(starts-with('query', 'que'), starts-with('query', 'query'), starts-with('query', 'u'), starts-with('query', ''), starts-with('', 'query'), starts-with('', ''), starts-with('query', ()), starts-with(' query', 'q'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true false true false true true false
      ",
   case xqerl_test:string_value(Res) of
             "true true false true false true true false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-join-1'(_Config) ->
   Qry = "(string-join( ('a', 'b', 'c'), ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abc
      ",
   case xqerl_test:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-join-2'(_Config) ->
   Qry = "(string-join( ('a', 'b', 'c'), '/*'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a/*b/*c
      ",
   case xqerl_test:string_value(Res) of
             "a/*b/*c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-join-3'(_Config) ->
   Qry = "(string-join( ('a', '', 'c'), '/*'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a/*/*c
      ",
   case xqerl_test:string_value(Res) of
             "a/*/*c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-join-4'(_Config) ->
   Qry = "(string-join( 'a', '/*'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a
      ",
   case xqerl_test:string_value(Res) of
             "a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-join-5'(_Config) ->
   Qry = "(string-join((), '/*'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-join-all'(_Config) ->
   Qry = "(string-join( ('a', 'b', 'c'), ''), string-join( ('a', 'b', 'c'), '/*'), string-join( ('a', '', 'c'), '/*'), string-join( 'a', '/*'), string-join((), '/*'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abc a/*b/*c a/*/*c a 
      ",
   case xqerl_test:string_value(Res) of
             "abc a/*b/*c a/*/*c a " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-length-1'(_Config) ->
   Qry = "(string-length('query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-string-length-2'(_Config) ->
   Qry = "(string-length(' 
query
 '))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9
      ",
 Tst = xqerl:run("9"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-string-length-3'(_Config) ->
   Qry = "(string-length(normalize-space(' query ')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-string-length-4'(_Config) ->
   Qry = "(string-length('xml query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9
      ",
 Tst = xqerl:run("9"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-string-length-5'(_Config) ->
   Qry = "(string-length(''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-string-length-6'(_Config) ->
   Qry = "(string-length(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-string-length-all'(_Config) ->
   Qry = "(string-length('query'), string-length(' 
query 
 '), string-length(normalize-space('  
query 
 ')), string-length('xml query'), string-length(''), string-length(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5 10 5 9 0 0
      ",
   case xqerl_test:string_value(Res) of
             "5 10 5 9 0 0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-to-codepoints-1'(_Config) ->
   Qry = "(string-to-codepoints('abc'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         97 98 99
      ",
   case xqerl_test:string_value(Res) of
             "97 98 99" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-to-codepoints-2'(_Config) ->
   Qry = "(string-to-codepoints('a'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         97
      ",
 Tst = xqerl:run("97"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-string-to-codepoints-3'(_Config) ->
   Qry = "(string-to-codepoints(''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-to-codepoints-all'(_Config) ->
   Qry = "(string-to-codepoints('abc'), string-to-codepoints('a'), string-to-codepoints(''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         97 98 99 97
      ",
   case xqerl_test:string_value(Res) of
             "97 98 99 97" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-1'(_Config) ->
   Qry = "let $in-xml-2 := <product dept=\"MEN\"> <number>784</number> <name language=\"en\">Cotton Dress Shirt</name> <colorChoices>white gray</colorChoices> <desc>Our <i>favorite</i> shirt!</desc> </product> return (string($in-xml-2/number))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         784
      ",
   case xqerl_test:string_value(Res) of
             "784" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-2'(_Config) ->
   Qry = "let $in-xml-2 := <product dept=\"MEN\"> <number>784</number> <name language=\"en\">Cotton Dress Shirt</name> <colorChoices>white gray</colorChoices> <desc>Our <i>favorite</i> shirt!</desc> </product> return (string($in-xml-2/desc))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Our favorite shirt!
      ",
   case xqerl_test:string_value(Res) of
             "Our favorite shirt!" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-3'(_Config) ->
   Qry = "let $in-xml-2 := <product dept=\"MEN\"> <number>784</number> <name language=\"en\">Cotton Dress Shirt</name> <colorChoices>white gray</colorChoices> <desc>Our <i>favorite</i> shirt!</desc> </product> return (string($in-xml-2/@dept))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         MEN
      ",
   case xqerl_test:string_value(Res) of
             "MEN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-string-all'(_Config) ->
   Qry = "let $in-xml-2 := <product dept=\"MEN\"> <number>784</number> <name language=\"en\">Cotton Dress Shirt</name> <colorChoices>white gray</colorChoices> <desc>Our <i>favorite</i> shirt!</desc> </product> return (string($in-xml-2/number), string($in-xml-2/desc), string($in-xml-2/@dept))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         784 Our favorite shirt! MEN
      ",
   case xqerl_test:string_value(Res) of
             "784 Our favorite shirt! MEN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-subsequence-1'(_Config) ->
   Qry = "(subsequence( ('a', 'b', 'c', 'd', 'e'), 3) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         c d e
      ",
   case xqerl_test:string_value(Res) of
             "c d e" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-subsequence-2'(_Config) ->
   Qry = "(subsequence( ('a', 'b', 'c', 'd', 'e'), 3, 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         c d
      ",
   case xqerl_test:string_value(Res) of
             "c d" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-subsequence-3'(_Config) ->
   Qry = "(subsequence( ('a', 'b', 'c', 'd', 'e'), 3, 10))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         c d e
      ",
   case xqerl_test:string_value(Res) of
             "c d e" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-subsequence-4'(_Config) ->
   Qry = "(subsequence( ('a', 'b', 'c', 'd', 'e'), 10))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-subsequence-5'(_Config) ->
   Qry = "(subsequence( ('a', 'b', 'c', 'd', 'e'), -2, 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b
      ",
   case xqerl_test:string_value(Res) of
             "a b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-subsequence-6'(_Config) ->
   Qry = "(subsequence( (), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-subsequence-all'(_Config) ->
   Qry = "(subsequence( ('a', 'b', 'c', 'd', 'e'), 3) , subsequence( ('a', 'b', 'c', 'd', 'e'), 3, 2), subsequence( ('a', 'b', 'c', 'd', 'e'), 3, 10), subsequence( ('a', 'b', 'c', 'd', 'e'), 10), subsequence( ('a', 'b', 'c', 'd', 'e'), -2, 5), subsequence( (), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         c d e c d c d e a b
      ",
   case xqerl_test:string_value(Res) of
             "c d e c d c d e a b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-after-1'(_Config) ->
   Qry = "(substring-after('query', 'u'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ery
      ",
   case xqerl_test:string_value(Res) of
             "ery" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-after-2'(_Config) ->
   Qry = "(substring-after('queryquery', 'ue'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ryquery
      ",
   case xqerl_test:string_value(Res) of
             "ryquery" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-after-3'(_Config) ->
   Qry = "(substring-after('query', 'y'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-after-4'(_Config) ->
   Qry = "(substring-after('query', 'x'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-after-5'(_Config) ->
   Qry = "(substring-after('query', ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query
      ",
   case xqerl_test:string_value(Res) of
             "query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-after-6'(_Config) ->
   Qry = "(substring-after('', 'x'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-after-all'(_Config) ->
   Qry = "(substring-after('query', 'u'), substring-after('queryquery', 'ue'), substring-after('query', 'y'), substring-after('query', 'x'), substring-after('query', ''), substring-after('', 'x'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ery ryquery   query 
      ",
   case xqerl_test:string_value(Res) of
             "ery ryquery   query " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-before-1'(_Config) ->
   Qry = "(substring-before('query', 'r'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         que
      ",
   case xqerl_test:string_value(Res) of
             "que" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-before-2'(_Config) ->
   Qry = "(substring-before('query', 'ery'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         qu
      ",
   case xqerl_test:string_value(Res) of
             "qu" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-before-3'(_Config) ->
   Qry = "(substring-before('queryquery', 'ery'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         qu
      ",
   case xqerl_test:string_value(Res) of
             "qu" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-before-4'(_Config) ->
   Qry = "(substring-before('query', 'query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-before-5'(_Config) ->
   Qry = "(substring-before('query', 'x'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-before-6'(_Config) ->
   Qry = "(substring-before('query', ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-before-7'(_Config) ->
   Qry = "(substring-before('query', ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-before-all'(_Config) ->
   Qry = "(substring-before('query', 'r'), substring-before('query', 'ery'), substring-before('queryquery', 'ery'), substring-before('query', 'query'), substring-before('query', 'x'), substring-before('query', ''), substring-before('query', ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         que qu qu    
      ",
   case xqerl_test:string_value(Res) of
             "que qu qu    " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-1'(_Config) ->
   Qry = "(substring('query', 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query
      ",
   case xqerl_test:string_value(Res) of
             "query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-2'(_Config) ->
   Qry = "(substring('query', 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         ery
      ",
   case xqerl_test:string_value(Res) of
             "ery" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-3'(_Config) ->
   Qry = "(substring('query', 1, 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         q
      ",
   case xqerl_test:string_value(Res) of
             "q" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-4'(_Config) ->
   Qry = "(substring('query', 2, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         uer
      ",
   case xqerl_test:string_value(Res) of
             "uer" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-5'(_Config) ->
   Qry = "(substring('query', 2, 850))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         uery
      ",
   case xqerl_test:string_value(Res) of
             "uery" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-6'(_Config) ->
   Qry = "(substring('query', 6, 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-7'(_Config) ->
   Qry = "(substring('query', -2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query
      ",
   case xqerl_test:string_value(Res) of
             "query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-8'(_Config) ->
   Qry = "(substring('query', -2, 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         qu
      ",
   case xqerl_test:string_value(Res) of
             "qu" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-9'(_Config) ->
   Qry = "(substring('query', 1, 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-10'(_Config) ->
   Qry = "(substring('', 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-11'(_Config) ->
   Qry = "(substring((), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-substring-all'(_Config) ->
   Qry = "(substring('query', 1), substring('query', 3), substring('query', 1, 1), substring('query', 2, 3), substring('query', 2, 850), substring('query', 6, 2), substring('query', -2), substring('query', -2, 5), substring('query', 1, 0), substring('', 1), substring((), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         query ery q uer uery  query qu   
      ",
   case xqerl_test:string_value(Res) of
             "query ery q uer uery  query qu   " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-sum-1'(_Config) ->
   Qry = "let $ordDoc := (/) return (sum( (1, 2, 3) ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6
      ",
 Tst = xqerl:run("6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-sum-2'(_Config) ->
   Qry = "let $ordDoc := (/) return (sum($ordDoc//item/@quantity))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         7
      ",
 Tst = xqerl:run("7"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-sum-3'(_Config) ->
   Qry = "let $ordDoc := (/) return (sum( (xs:yearMonthDuration('P1Y2M'), xs:yearMonthDuration('P2Y3M')) ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P3Y5M
      ",
   case xqerl_test:string_value(Res) of
             "P3Y5M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-sum-4'(_Config) ->
   Qry = "let $ordDoc := (/) return (sum( (1, 2, 3, () ) ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6
      ",
 Tst = xqerl:run("6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-sum-5'(_Config) ->
   Qry = "let $ordDoc := (/) return (sum( () ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-sum-6'(_Config) ->
   Qry = "let $ordDoc := (/) return (sum( (), () ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-sum-all'(_Config) ->
   Qry = "let $ordDoc := (/) return (sum( (1, 2, 3) ), sum($ordDoc//item/@quantity), sum( (xs:yearMonthDuration('P1Y2M'), xs:yearMonthDuration('P2Y3M')) ), sum( (1, 2, 3, () ) ), sum( () ), sum( (), () ))",
   Env = xqerl_test:handle_environment(environment('functx_order')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6 7 P3Y5M 6 0
      ",
   case xqerl_test:string_value(Res) of
             "6 7 P3Y5M 6 0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-timezone-from-date-1'(_Config) ->
   Qry = "(timezone-from-date( xs:date('2006-08-15-05:00')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT5H
      ",
   case xqerl_test:string_value(Res) of
             "-PT5H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-timezone-from-date-2'(_Config) ->
   Qry = "(timezone-from-date( xs:date('2006-08-15')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-timezone-from-date-all'(_Config) ->
   Qry = "(timezone-from-date( xs:date('2006-08-15-05:00')), timezone-from-date( xs:date('2006-08-15')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT5H
      ",
   case xqerl_test:string_value(Res) of
             "-PT5H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-timezone-from-dateTime-1'(_Config) ->
   Qry = "(timezone-from-dateTime( xs:dateTime('2006-08-15T10:30:23-05:00')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT5H
      ",
   case xqerl_test:string_value(Res) of
             "-PT5H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-timezone-from-dateTime-2'(_Config) ->
   Qry = "(timezone-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-timezone-from-dateTime-all'(_Config) ->
   Qry = "(timezone-from-dateTime( xs:dateTime('2006-08-15T10:30:23-05:00')), timezone-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT5H
      ",
   case xqerl_test:string_value(Res) of
             "-PT5H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-timezone-from-time-1'(_Config) ->
   Qry = "(timezone-from-time( xs:time('09:54:00-05:00')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT5H
      ",
   case xqerl_test:string_value(Res) of
             "-PT5H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-timezone-from-time-2'(_Config) ->
   Qry = "(timezone-from-time( xs:time('09:54:00+05:00')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PT5H
      ",
   case xqerl_test:string_value(Res) of
             "PT5H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-timezone-from-time-3'(_Config) ->
   Qry = "(timezone-from-time( xs:time('09:54:00Z')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PT0S
      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-timezone-from-time-4'(_Config) ->
   Qry = "(timezone-from-time( xs:time('09:54:00')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-timezone-from-time-all'(_Config) ->
   Qry = "(timezone-from-time( xs:time('09:54:00-05:00')), timezone-from-time( xs:time('09:54:00+05:00')), timezone-from-time( xs:time('09:54:00Z')), timezone-from-time( xs:time('09:54:00')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -PT5H PT5H PT0S
      ",
   case xqerl_test:string_value(Res) of
             "-PT5H PT5H PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-1'(_Config) ->
   Qry = "(tokenize( 'a b c', '\\s'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c
      ",
   case xqerl_test:string_value(Res) of
             "a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-2'(_Config) ->
   Qry = "string-join(tokenize( 'a    b c', '\\s'), '|')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a||||b|c
      ",
   case xqerl_test:string_value(Res) of
             "a||||b|c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-3'(_Config) ->
   Qry = "(tokenize( 'a b c', '\\s+'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c
      ",
   case xqerl_test:string_value(Res) of
             "a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-4'(_Config) ->
   Qry = "(tokenize( ' b c', '\\s'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          b c
      ",
   case xqerl_test:string_value(Res) of
             " b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-5'(_Config) ->
   Qry = "(tokenize( 'a,b,c', ','))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c
      ",
   case xqerl_test:string_value(Res) of
             "a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-6'(_Config) ->
   Qry = "(tokenize( 'a,b,,c', ','))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b  c
      ",
   case xqerl_test:string_value(Res) of
             "a b  c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-7'(_Config) ->
   Qry = "(tokenize( 'a, b, c', '[,\\s]+'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c
      ",
   case xqerl_test:string_value(Res) of
             "a b c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-8'(_Config) ->
   Qry = "(tokenize( '2006-12-25T12:15:00', '[\\-T:]'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006 12 25 12 15 00
      ",
   case xqerl_test:string_value(Res) of
             "2006 12 25 12 15 00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-9'(_Config) ->
   Qry = "(tokenize( 'Hello, there.', '\\W+'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Hello there 
      ",
   case xqerl_test:string_value(Res) of
             "Hello there " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-10'(_Config) ->
   Qry = "(tokenize( (), '\\s+'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-11'(_Config) ->
   Qry = "(tokenize( 'abc', '\\s'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abc
      ",
   case xqerl_test:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-12'(_Config) ->
   Qry = "(tokenize( 'a,xb,xc', ',|,x'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a xb xc
      ",
   case xqerl_test:string_value(Res) of
             "a xb xc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-tokenize-all'(_Config) ->
   Qry = "(tokenize( 'a b c', '\\s'), tokenize( 'a b c', '\\s'), tokenize( 'a b c', '\\s+'), tokenize( ' b c', '\\s'), tokenize( 'a,b,c', ','), tokenize( 'a,b,,c', ','), tokenize( 'a, b, c', '[,\\s]+'), tokenize( '2006-12-25T12:15:00', '[\\-T:]'), tokenize( 'Hello, there.', '\\W+'), tokenize( (), '\\s+'), tokenize( 'abc', '\\s'), tokenize( 'a,xb,xc', ',|,x'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c a b c a b c  b c a b c a b  c a b c 2006 12 25 12 15 00 Hello there  abc a xb xc
      ",
   case xqerl_test:string_value(Res) of
             "a b c a b c a b c  b c a b c a b  c a b c 2006 12 25 12 15 00 Hello there  abc a xb xc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-translate-1'(_Config) ->
   Qry = "(translate('1999/01/02', '/', '-'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1999-01-02
      ",
   case xqerl_test:string_value(Res) of
             "1999-01-02" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-translate-2'(_Config) ->
   Qry = "(translate('xml query', 'qlmx', 'QLMX'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         XML Query
      ",
   case xqerl_test:string_value(Res) of
             "XML Query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-translate-3'(_Config) ->
   Qry = "(translate('xml query', 'qlmx ', 'Q'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Query
      ",
   case xqerl_test:string_value(Res) of
             "Query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-translate-4'(_Config) ->
   Qry = "(translate('xml query', 'qlmx ', ''))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         uery
      ",
   case xqerl_test:string_value(Res) of
             "uery" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-translate-5'(_Config) ->
   Qry = "(translate('xml query', 'abcd', 'ABCD'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xml query
      ",
   case xqerl_test:string_value(Res) of
             "xml query" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-translate-6'(_Config) ->
   Qry = "(translate('', 'qlmx ', 'Q'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-translate-7'(_Config) ->
   Qry = "(translate((), 'qlmx ', 'Q'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-translate-all'(_Config) ->
   Qry = "(translate('1999/01/02', '/', '-'), translate('xml query', 'qlmx', 'QLMX'), translate('xml query', 'qlmx ', 'Q'), translate('xml query', 'qlmx ', ''), translate('xml query', 'abcd', 'ABCD'), translate('', 'qlmx ', 'Q'), translate((), 'qlmx ', 'Q'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1999-01-02 XML Query Query uery xml query  
      ",
   case xqerl_test:string_value(Res) of
             "1999-01-02 XML Query Query uery xml query  " -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-true-1'(_Config) ->
   Qry = "(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'functx-fn-upper-case-1'(_Config) ->
   Qry = "(upper-case('query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         QUERY
      ",
   case xqerl_test:string_value(Res) of
             "QUERY" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-upper-case-2'(_Config) ->
   Qry = "(upper-case('QUERY'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         QUERY
      ",
   case xqerl_test:string_value(Res) of
             "QUERY" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-upper-case-3'(_Config) ->
   Qry = "(upper-case('Query'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         QUERY
      ",
   case xqerl_test:string_value(Res) of
             "QUERY" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-upper-case-4'(_Config) ->
   Qry = "(upper-case('query-123'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         QUERY-123
      ",
   case xqerl_test:string_value(Res) of
             "QUERY-123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-upper-case-all'(_Config) ->
   Qry = "(upper-case('query'), upper-case('QUERY'), upper-case('Query'), upper-case('query-123'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         QUERY QUERY QUERY QUERY-123
      ",
   case xqerl_test:string_value(Res) of
             "QUERY QUERY QUERY QUERY-123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-year-from-date-1'(_Config) ->
   Qry = "(year-from-date(xs:date('2006-08-15')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006
      ",
 Tst = xqerl:run("2006"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-year-from-dateTime-1'(_Config) ->
   Qry = "(year-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2006
      ",
 Tst = xqerl:run("2006"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-years-from-duration-1'(_Config) ->
   Qry = "(years-from-duration( xs:yearMonthDuration('P3Y')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-years-from-duration-2'(_Config) ->
   Qry = "(years-from-duration( xs:yearMonthDuration('P3Y11M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-years-from-duration-3'(_Config) ->
   Qry = "(years-from-duration( xs:yearMonthDuration('-P18M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-years-from-duration-4'(_Config) ->
   Qry = "(years-from-duration( xs:yearMonthDuration('P1Y18M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-years-from-duration-5'(_Config) ->
   Qry = "(years-from-duration( xs:yearMonthDuration('P12M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'functx-fn-years-from-duration-all'(_Config) ->
   Qry = "(years-from-duration( xs:yearMonthDuration('P3Y')), years-from-duration( xs:yearMonthDuration('P3Y11M')), years-from-duration( xs:yearMonthDuration('-P18M')), years-from-duration( xs:yearMonthDuration('P1Y18M')), years-from-duration( xs:yearMonthDuration('P12M')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3 3 -1 2 1
      ",
   case xqerl_test:string_value(Res) of
             "3 3 -1 2 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-zero-or-one-1'(_Config) ->
   Qry = "(zero-or-one( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_test:string_value(Res) of
             "" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-zero-or-one-2'(_Config) ->
   Qry = "(zero-or-one('a'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a
      ",
   case xqerl_test:string_value(Res) of
             "a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'functx-fn-zero-or-one-all'(_Config) ->
   Qry = "(zero-or-one( () ), zero-or-one('a'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a
      ",
   case xqerl_test:string_value(Res) of
             "a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
