-module('app_FunctxFn_SUITE').

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
-export(['functx-fn-tokenize-1a'/1]).
-export(['functx-fn-tokenize-1b'/1]).
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
        {group, group_20}
    ].

groups() ->
    [
        {group_0, [parallel], [
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
            'functx-fn-avg-3'
        ]},
        {group_1, [parallel], [
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
            'functx-fn-ceiling-all'
        ]},
        {group_2, [parallel], [
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
            'functx-fn-contains-3'
        ]},
        {group_3, [parallel], [
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
            'functx-fn-days-from-duration-3'
        ]},
        {group_4, [parallel], [
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
            'functx-fn-empty-5'
        ]},
        {group_5, [parallel], [
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
            'functx-fn-floor-2'
        ]},
        {group_6, [parallel], [
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
            'functx-fn-index-of-7'
        ]},
        {group_7, [parallel], [
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
            'functx-fn-local-name-3'
        ]},
        {group_8, [parallel], [
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
            'functx-fn-matches-17'
        ]},
        {group_9, [parallel], [
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
            'functx-fn-months-from-duration-2'
        ]},
        {group_10, [parallel], [
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
            'functx-fn-namespace-uri-all'
        ]},
        {group_11, [parallel], [
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
            'functx-fn-normalize-unicode-all'
        ]},
        {group_12, [parallel], [
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
            'functx-fn-prefix-from-QName-2'
        ]},
        {group_13, [parallel], [
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
            'functx-fn-replace-11'
        ]},
        {group_14, [parallel], [
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
            'functx-fn-root-1'
        ]},
        {group_15, [parallel], [
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
            'functx-fn-starts-with-3'
        ]},
        {group_16, [parallel], [
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
            'functx-fn-string-1'
        ]},
        {group_17, [parallel], [
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
            'functx-fn-substring-before-7'
        ]},
        {group_18, [parallel], [
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
            'functx-fn-timezone-from-dateTime-1'
        ]},
        {group_19, [parallel], [
            'functx-fn-timezone-from-dateTime-2',
            'functx-fn-timezone-from-dateTime-all',
            'functx-fn-timezone-from-time-1',
            'functx-fn-timezone-from-time-2',
            'functx-fn-timezone-from-time-3',
            'functx-fn-timezone-from-time-4',
            'functx-fn-timezone-from-time-all',
            'functx-fn-tokenize-1',
            'functx-fn-tokenize-1a',
            'functx-fn-tokenize-1b',
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
            'functx-fn-translate-2'
        ]},
        {group_20, [parallel], [
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
            'functx-fn-zero-or-one-all'
        ]}
    ].

environment('functx_order', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "FunctxFn/functx_order.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('functx_catalog', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "FunctxFn/functx_catalog.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('functx_cats', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "FunctxFn/functx_cats.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('functx_prices', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "FunctxFn/functx_prices.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'functx-fn-abs-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(abs(3.5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-abs-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3.5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-abs-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(abs(-4))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-abs-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-abs-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(abs(xs:float('-INF')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-abs-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "INF") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-abs-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(abs(3.5), abs(-4), abs(xs:float('-INF')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-abs-all.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3.5 4 INF") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-date-to-timezone-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(adjust-date-to-timezone( xs:date('2006-02-15'), xs:dayTimeDuration('-PT8H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-date-to-timezone-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2006-02-15-08:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-date-to-timezone-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(adjust-date-to-timezone( xs:date('2006-02-15-03:00'), xs:dayTimeDuration('-PT8H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-date-to-timezone-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2006-02-14-08:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-date-to-timezone-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(adjust-date-to-timezone( xs:date('2006-02-15'), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-date-to-timezone-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2006-02-15") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-date-to-timezone-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(adjust-date-to-timezone( xs:date('2006-02-15-03:00'), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-date-to-timezone-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2006-02-15") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-date-to-timezone-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(adjust-date-to-timezone( xs:date('2006-02-15'), xs:dayTimeDuration('-PT8H')), adjust-date-to-timezone( xs:date('2006-02-15-03:00'), xs:dayTimeDuration('-PT8H')), adjust-date-to-timezone( xs:date('2006-02-15'), ()), adjust-date-to-timezone( xs:date('2006-02-15-03:00'), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-date-to-timezone-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "2006-02-15-08:00 2006-02-14-08:00 2006-02-15 2006-02-15"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-dateTime-to-timezone-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00'), xs:dayTimeDuration('-PT7H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-dateTime-to-timezone-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2006-02-15T17:00:00-07:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-dateTime-to-timezone-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00-03:00'), xs:dayTimeDuration('-PT7H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-dateTime-to-timezone-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2006-02-15T13:00:00-07:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-dateTime-to-timezone-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00'), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-dateTime-to-timezone-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2006-02-15T17:00:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-dateTime-to-timezone-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00-03:00'), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-dateTime-to-timezone-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2006-02-15T17:00:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-dateTime-to-timezone-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T01:00:00-03:00'), xs:dayTimeDuration('-PT7H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-dateTime-to-timezone-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2006-02-14T21:00:00-07:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-dateTime-to-timezone-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00'), xs:dayTimeDuration('-PT7H')), adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00-03:00'), xs:dayTimeDuration('-PT7H')), adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00'), ()), adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T17:00:00-03:00'), ()), adjust-dateTime-to-timezone( xs:dateTime('2006-02-15T01:00:00-03:00'), xs:dayTimeDuration('-PT7H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-dateTime-to-timezone-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "2006-02-15T17:00:00-07:00 2006-02-15T13:00:00-07:00 2006-02-15T17:00:00 2006-02-15T17:00:00 2006-02-14T21:00:00-07:00"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-time-to-timezone-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(adjust-time-to-timezone( xs:time('17:00:00'), xs:dayTimeDuration('-PT7H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-time-to-timezone-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "17:00:00-07:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-time-to-timezone-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(adjust-time-to-timezone( xs:time('17:00:00-03:00'), xs:dayTimeDuration('-PT7H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-time-to-timezone-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "13:00:00-07:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-time-to-timezone-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(adjust-time-to-timezone( xs:time('17:00:00'), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-time-to-timezone-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "17:00:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-time-to-timezone-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(adjust-time-to-timezone( xs:time('17:00:00-03:00'), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-time-to-timezone-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "17:00:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-adjust-time-to-timezone-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(adjust-time-to-timezone( xs:time('17:00:00'), xs:dayTimeDuration('-PT7H')), adjust-time-to-timezone( xs:time('17:00:00-03:00'), xs:dayTimeDuration('-PT7H')), adjust-time-to-timezone( xs:time('17:00:00'), ()), adjust-time-to-timezone( xs:time('17:00:00-03:00'), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-adjust-time-to-timezone-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(Res, "17:00:00-07:00 13:00:00-07:00 17:00:00 17:00:00")
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-avg-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(avg( (1, 2, 3, 4, 5) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-avg-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-avg-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(avg( (1, 2, 3, (), 4, 5) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-avg-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-avg-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(avg( (xs:yearMonthDuration('P4M'), xs:yearMonthDuration('P6M') ) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-avg-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P5M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-avg-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (avg($ordDoc//item/@quantity))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-avg-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1.1666666666666667") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-avg-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (avg( () ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-avg-5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-avg-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $ordDoc := (/) return (avg( (1, 2, 3, 4, 5) ), avg( (1, 2, 3, (), 4, 5) ), avg( (xs:yearMonthDuration('P4M'), xs:yearMonthDuration('P6M') ) ), avg($ordDoc//item/@quantity), avg( () ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-avg-all.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(Res, "3, 3, xs:yearMonthDuration('P5M'), 1.1666666666666667")
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-base-uri-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $cats := (/) return (base-uri($cats//catalog[1]))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_cats', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-base-uri-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.org/ACC/") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-base-uri-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $cats := (/) return (base-uri($cats//catalog[2]/product))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_cats', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-base-uri-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.org/WMN/") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-base-uri-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $cats := (/) return (base-uri($cats//catalog[2]/product/@href))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_cats', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-base-uri-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.org/WMN/") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-base-uri-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $cats := (/) return (base-uri($cats//catalog[1]), base-uri($cats//catalog[2]/product), base-uri($cats//catalog[2]/product/@href))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_cats', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-base-uri-all.xq"),
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
            xqerl_test:assert_string_value(
                Res,
                "http://example.org/ACC/ http://example.org/WMN/ http://example.org/WMN/"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-boolean-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (boolean( () ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-boolean-1.xq"),
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

'functx-fn-boolean-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (boolean(''))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-boolean-2.xq"),
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

'functx-fn-boolean-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (boolean(0))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-boolean-3.xq"),
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

'functx-fn-boolean-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (boolean('0'))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-boolean-4.xq"),
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

'functx-fn-boolean-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (boolean('false'))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-boolean-5.xq"),
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

'functx-fn-boolean-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (boolean(xs:float('NaN')))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-boolean-6.xq"),
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

'functx-fn-boolean-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (boolean($ordDoc/order[1]))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-boolean-7.xq"),
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

'functx-fn-boolean-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (boolean($ordDoc/noSuchChild))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-boolean-8.xq"),
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

'functx-fn-boolean-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (boolean(<a>false</a>))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-boolean-9.xq"),
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

'functx-fn-boolean-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $ordDoc := (/) return (boolean( () ), boolean(''), boolean(0), boolean('0'), boolean('false'), boolean(xs:float('NaN')), boolean($ordDoc/order[1]), boolean($ordDoc/noSuchChild), boolean(<a>false</a>))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-boolean-all.xq"),
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
            xqerl_test:assert_string_value(Res, "false false false true true false true false true")
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-ceiling-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ceiling(5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ceiling-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-ceiling-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ceiling(5.1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ceiling-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-ceiling-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ceiling(5.5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ceiling-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-ceiling-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ceiling(-5.5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ceiling-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-ceiling-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ceiling(-5.51))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ceiling-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-ceiling-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ceiling( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ceiling-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-ceiling-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ceiling(5), ceiling(5.1), ceiling(5.5), ceiling(-5.5), ceiling(-5.51), ceiling( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ceiling-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "5 6 6 -5 -5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-codepoint-equal-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(codepoint-equal('abc', 'abc'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-codepoint-equal-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-codepoint-equal-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(codepoint-equal('abc', 'ab c'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-codepoint-equal-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-codepoint-equal-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(codepoint-equal('abc', ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-codepoint-equal-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-codepoint-equal-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(codepoint-equal('abc', 'abc'), codepoint-equal('abc', 'ab c'), codepoint-equal('abc', ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-codepoint-equal-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-codepoints-to-string-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(codepoints-to-string((97, 32, 98, 32, 99)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-codepoints-to-string-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-codepoints-to-string-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(codepoints-to-string(97))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-codepoints-to-string-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-codepoints-to-string-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(codepoints-to-string(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-codepoints-to-string-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-codepoints-to-string-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(codepoints-to-string((97, 32, 98, 32, 99)), codepoints-to-string(97), codepoints-to-string(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-codepoints-to-string-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c a ") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-compare-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(compare('a', 'b'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-compare-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-compare-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(compare('a', 'a'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-compare-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-compare-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(compare('b', 'a'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-compare-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-compare-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(compare('ab', 'abc'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-compare-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-compare-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(compare('a', 'B'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-compare-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-compare-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(compare(upper-case('a'), upper-case('B')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-compare-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-compare-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(compare('a', ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-compare-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-compare-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(compare('a', 'b'), compare('a', 'a'), compare('b', 'a'), compare('ab', 'abc'), compare('a', 'B'), compare(upper-case('a'), upper-case('B')), compare('a', ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-compare-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1 0 1 -1 1 -1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-concat-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(concat('a', 'b'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-concat-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ab") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-concat-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(concat('a', 'b', 'c'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-concat-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abc") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-concat-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(concat('a', (), 'b', '', 'c'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-concat-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abc") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-concat-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(concat('a', <x>b</x>, 'c'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-concat-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abc") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-concat-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(concat('a', 'b'), concat('a', 'b', 'c'), concat('a', (), 'b', '', 'c'), concat('a', <x>b</x>, 'c'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-concat-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ab abc abc abc") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-contains-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(contains('query', 'e'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-contains-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-contains-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(contains('query', 'ery'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-contains-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-contains-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(contains('query', 'query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-contains-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-contains-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(contains('query', 'x'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-contains-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-contains-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(contains('query', ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-contains-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-contains-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(contains('query', ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-contains-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-contains-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(contains( (), 'q'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-contains-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-contains-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(contains('query', 'e'), contains('query', 'ery'), contains('query', 'query'), contains('query', 'x'), contains('query', ''), contains('query', ()), contains( (), 'q'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-contains-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true true true false true true false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-count-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (count( (1, 2, 3) ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-count-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-count-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (count($ordDoc//item))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-count-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-count-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (count( distinct-values($ordDoc//item/@num)))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-count-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-count-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (count( (1, 2, 3, () ) ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-count-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-count-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (count( () ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-count-5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-count-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $ordDoc := (/) return (count( (1, 2, 3) ), count($ordDoc//item), count( distinct-values($ordDoc//item/@num)), count( (1, 2, 3, () ) ), count( () ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-count-all.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3 6 4 3 0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-data-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $cat := (/) return (data($cat//product[1]/number))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_catalog', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-data-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "557") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-data-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $cat := (/) return (data($cat//number))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_catalog', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-data-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "557 563 443 784") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-data-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $cat := (/) return (data($cat//product[1]/@dept))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_catalog', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-data-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "WMN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-data-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $cat := (/) return (data($cat//product[1]/colorChoices))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_catalog', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-data-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "navy black") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-data-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $cat := (/) return (data($cat//product[1]))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_catalog', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-data-5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_norm_string_value(Res, "557 Fleece Pullover navy black") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-data-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $cat := (/) return (data($cat//product[4]/desc))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_catalog', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-data-6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Our favorite shirt!") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-data-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $cat := (/) return (data($cat//product[1]/number), data($cat//number), data($cat//product[1]/@dept), data($cat//product[1]/colorChoices), data($cat//product[1]), data($cat//product[4]/desc))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_catalog', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-data-all.xq"),
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
            xqerl_test:assert_norm_string_value(
                Res,
                "557 557 563 443 784 WMN navy black 557 Fleece Pullover navy black Our favorite shirt!"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-dateTime-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(dateTime(xs:date('2006-08-15'), xs:time('12:30:45-05:00')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-dateTime-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2006-08-15T12:30:45-05:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-day-from-date-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(day-from-date(xs:date('2006-08-15')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-day-from-date-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "15") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-day-from-dateTime-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(day-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-day-from-dateTime-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "15") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-days-from-duration-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(days-from-duration( xs:dayTimeDuration('P5D')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-days-from-duration-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-days-from-duration-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(days-from-duration( xs:dayTimeDuration('-PT24H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-days-from-duration-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-days-from-duration-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(days-from-duration( xs:dayTimeDuration('PT23H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-days-from-duration-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-days-from-duration-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(days-from-duration( xs:dayTimeDuration('P1DT36H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-days-from-duration-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-days-from-duration-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(days-from-duration( xs:dayTimeDuration('PT1440M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-days-from-duration-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-days-from-duration-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(days-from-duration( xs:dayTimeDuration('P5D')), days-from-duration( xs:dayTimeDuration('-PT24H')), days-from-duration( xs:dayTimeDuration('PT23H')), days-from-duration( xs:dayTimeDuration('P1DT36H')), days-from-duration( xs:dayTimeDuration('PT1440M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-days-from-duration-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "5 -1 0 2 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-deep-equal-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( 1, 1 ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-deep-equal-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-deep-equal-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( (1, 1), (1, 1) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-deep-equal-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-deep-equal-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( (1, 2), (1.0, 2.0) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-deep-equal-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-deep-equal-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( (1, 2), (2, 1) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-deep-equal-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-deep-equal-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( $prod1, $prod2 ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-deep-equal-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-deep-equal-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( $prod1/number, $prod2/number ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-deep-equal-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-deep-equal-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $prod1 := <product dept='MEN' id='P123'> <number>784</number> </product> return let $prod2 := <product id='P123' dept='MEN'><!--comment--> <number>784</number> </product> return (deep-equal( 1, 1 ), deep-equal( (1, 1), (1, 1) ), deep-equal( (1, 2), (1.0, 2.0) ), deep-equal( (1, 2), (2, 1) ), deep-equal( $prod1, $prod2 ), deep-equal( $prod1/number, $prod2/number ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-deep-equal-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true true true false true true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-default-collation-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(default-collation())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-default-collation-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "http://www.w3.org/2005/xpath-functions/collation/codepoint"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-distinct-values-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( ('a', 'b', 'a') ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-distinct-values-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-distinct-values-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( (1, 2, 3) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-distinct-values-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 3") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-distinct-values-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( ('a', 2, 3) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-distinct-values-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a 2 3") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-distinct-values-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( (xs:integer('1'), xs:decimal('1.0'), xs:float('1.0E0') ) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-distinct-values-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-distinct-values-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values($in-xml/*))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-distinct-values-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3 5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-distinct-values-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-distinct-values-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-distinct-values-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a>3</a> <b>5</b> <b>3</b> </in-xml> return (distinct-values( ('a', 'b', 'a') ), distinct-values( (1, 2, 3) ), distinct-values( ('a', 2, 3) ), distinct-values( (xs:integer('1'), xs:decimal('1.0'), xs:float('1.0E0') ) ), distinct-values($in-xml/*), distinct-values( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-distinct-values-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b 1 2 3 a 2 3 1 3 5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-doc-available-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(doc-available( document-uri(/) ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-doc-available-1.xq"),
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

'functx-fn-empty-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty( ('a', 'b', 'c') ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-empty-1.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-empty-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-empty-2.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-empty-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty(0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-empty-3.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-empty-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty($in-xml/a))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-empty-4.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-empty-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty($in-xml/b))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-empty-5.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-empty-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty($in-xml/c))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-empty-6.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-empty-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty($in-xml/foo))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-empty-7.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-empty-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a></a> <b/> <c>xyz</c> </in-xml> return (empty( ('a', 'b', 'c') ), empty( () ), empty(0), empty($in-xml/a), empty($in-xml/b), empty($in-xml/c), empty($in-xml/foo))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-empty-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "false true false false false false true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-encode-for-uri-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(encode-for-uri( 'Sales % Numbers.pdf'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-encode-for-uri-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Sales%20%25%20Numbers.pdf") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-encode-for-uri-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(encode-for-uri( 'http://datypic.com/a%20URI#frag'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-encode-for-uri-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http%3A%2F%2Fdatypic.com%2Fa%2520URI%23frag") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-encode-for-uri-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(encode-for-uri( 'Sales % Numbers.pdf'), encode-for-uri( 'http://datypic.com/a%20URI#frag'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-encode-for-uri-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "Sales%20%25%20Numbers.pdf http%3A%2F%2Fdatypic.com%2Fa%2520URI%23frag"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-ends-with-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ends-with('query', 'y'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ends-with-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-ends-with-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ends-with('query', 'query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ends-with-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-ends-with-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ends-with('query', ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ends-with-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-ends-with-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ends-with('query ', 'y'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ends-with-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-ends-with-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(ends-with('', 'y'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ends-with-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-ends-with-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(ends-with('query', 'y'), ends-with('query', 'query'), ends-with('query', ''), ends-with('query ', 'y'), ends-with('', 'y'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-ends-with-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true true true false false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-escape-html-uri-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(escape-html-uri( 'http://datypic.com/a%20URI#frag'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-escape-html-uri-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/a%20URI#frag") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-escape-html-uri-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(escape-html-uri('http://datypic.com'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-escape-html-uri-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-escape-html-uri-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(escape-html-uri( 'http://datypic.com/a%20URI#frag'), escape-html-uri('http://datypic.com'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-escape-html-uri-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "http://datypic.com/a%20URI#frag http://datypic.com"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-exactly-one-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(exactly-one('a'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-exactly-one-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-exists-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(exists( ('a', 'b', 'c') ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-exists-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-exists-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(exists( '' ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-exists-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-exists-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(exists( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-exists-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-exists-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(exists( false() ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-exists-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-exists-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(exists( ('a', 'b', 'c') ), exists( '' ), exists( () ), exists( false() ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-exists-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true true false true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-false-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(false())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-false-1.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-floor-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(floor(5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-floor-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-floor-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(floor(5.1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-floor-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-floor-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(floor(5.7))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-floor-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-floor-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(floor(-5.1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-floor-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-floor-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(floor(-5.7))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-floor-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-floor-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(floor( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-floor-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-floor-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(floor(5), floor(5.1), floor(5.7), floor(-5.1), floor(-5.7), floor( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-floor-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "5 5 5 -6 -6") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-dateTime-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(hours-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-dateTime-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "10") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-dateTime-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(hours-from-dateTime( xs:dateTime('2006-08-15T10:30:23-05:00')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-dateTime-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "10") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-dateTime-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(hours-from-dateTime( xs:dateTime('2006-08-15T10:30:23')), hours-from-dateTime( xs:dateTime('2006-08-15T10:30:23-05:00')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-dateTime-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "10 10") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-duration-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(hours-from-duration( xs:dayTimeDuration('P1DT5H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-duration-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-duration-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(hours-from-duration( xs:dayTimeDuration('-PT36H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-duration-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-12") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-duration-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(hours-from-duration( xs:dayTimeDuration('PT1H90M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-duration-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-duration-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(hours-from-duration( xs:dayTimeDuration('PT2H59M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-duration-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-duration-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(hours-from-duration( xs:dayTimeDuration('PT3600S')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-duration-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-duration-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(hours-from-duration( xs:dayTimeDuration('P1DT5H')), hours-from-duration( xs:dayTimeDuration('-PT36H')), hours-from-duration( xs:dayTimeDuration('PT1H90M')), hours-from-duration( xs:dayTimeDuration('PT2H59M')), hours-from-duration( xs:dayTimeDuration('PT3600S')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-duration-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "5 -12 2 2 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-time-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(hours-from-time( xs:time('10:30:23')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-time-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "10") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-time-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(hours-from-time( xs:time('10:30:23-05:00')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-time-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "10") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-hours-from-time-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(hours-from-time( xs:time('10:30:23')), hours-from-time( xs:time('10:30:23-05:00')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-hours-from-time-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "10 10") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-index-of-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(index-of( ('a', 'b', 'c'), 'a'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-index-of-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-index-of-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(index-of( ('a', 'b', 'c'), 'd'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-index-of-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-index-of-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(index-of( (4, 5, 6, 4), 4))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-index-of-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-index-of-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(index-of( (4, 5, 6, 4), 04.0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-index-of-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-index-of-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(index-of( ('a', 5, 6), 'a'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-index-of-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-index-of-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(index-of( (), 'a'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-index-of-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-index-of-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(index-of( (<a>1</a>, <b>1</b>), <c>1</c> ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-index-of-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-index-of-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(index-of( ('a', 'b', 'c'), 'a'), index-of( ('a', 'b', 'c'), 'd'), index-of( (4, 5, 6, 4), 4), index-of( (4, 5, 6, 4), 04.0), index-of( ('a', 5, 6), 'a'), index-of( (), 'a'), index-of( (<a>1</a>, <b>1</b>), <c>1</c> ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-index-of-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 1 4 1 4 1 1 2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-insert-before-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(insert-before( ('a', 'b', 'c'), 1, ('x', 'y')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-insert-before-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "x y a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-insert-before-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(insert-before( ('a', 'b', 'c'), 2, ('x', 'y')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-insert-before-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a x y b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-insert-before-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(insert-before( ('a', 'b', 'c'), 10, ('x', 'y')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-insert-before-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c x y") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-insert-before-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(insert-before( ('a', 'b', 'c'), 0, ('x', 'y')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-insert-before-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "x y a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-insert-before-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(insert-before( ('a', 'b', 'c'), 2, ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-insert-before-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-insert-before-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(insert-before( (), 3, ('a', 'b', 'c') ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-insert-before-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-insert-before-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(insert-before( ('a', 'b', 'c'), 1, ('x', 'y')), insert-before( ('a', 'b', 'c'), 2, ('x', 'y')), insert-before( ('a', 'b', 'c'), 10, ('x', 'y')), insert-before( ('a', 'b', 'c'), 0, ('x', 'y')), insert-before( ('a', 'b', 'c'), 2, ()), insert-before( (), 3, ('a', 'b', 'c') ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-insert-before-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "x y a b c a x y b c a b c x y x y a b c a b c a b c"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-iri-to-uri-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(iri-to-uri( 'http://datypic.com/Sales Numbers.pdf'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-iri-to-uri-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/Sales%20Numbers.pdf") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-lang-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc[lang('en')])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-lang-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<desc xml:lang=\"en-US\"><line>A line of text.</line></desc>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-lang-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc[lang('en-US')])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-lang-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<desc xml:lang=\"en-US\"><line>A line of text.</line></desc>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-lang-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc[lang('fr')])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-lang-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-lang-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc/line[lang('en')])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-lang-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<line>A line of text.</line>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-lang-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml[lang('en-US')])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-lang-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-lang-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc[lang('FR')])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-lang-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-lang-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <desclist xml:lang=\"en\"> <desc xml:lang=\"en-US\"> <line>A line of text.</line> </desc> <desc xml:lang=\"fr\"> <line>Une ligne de texte.</line> </desc> </desclist> return ($in-xml// desc[lang('en')], $in-xml// desc[lang('en-US')], $in-xml// desc[lang('fr')], $in-xml// desc/line[lang('en')], $in-xml[lang('en-US')], $in-xml// desc[lang('FR')])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-lang-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<desc xml:lang=\"en-US\"><line>A line of text.</line></desc><desc xml:lang=\"en-US\"><line>A line of text.</line></desc><desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc><line>A line of text.</line><desc xml:lang=\"fr\"><line>Une ligne de texte.</line></desc>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-last-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/ catalog/product[last()])",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_catalog', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-last-1.xq"), Qry1),
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
                "<product dept=\"MEN\">\n"
                "  <number>784</number>\n"
                "  <name language=\"en\">Cotton Dress Shirt</name>\n"
                "  <colorChoices>white gray</colorChoices>\n"
                "  <desc>Our <i>favorite</i> shirt!</desc>\n"
                " </product>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-local-name-from-QName-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(local-name-from-QName( QName('http://datypic.com/prod', 'number')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-local-name-from-QName-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "number") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-local-name-from-QName-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(local-name-from-QName(QName ('', 'number')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-local-name-from-QName-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "number") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-local-name-from-QName-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(local-name-from-QName( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-local-name-from-QName-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-local-name-from-QName-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(local-name-from-QName( QName('http://datypic.com/prod', 'number')), local-name-from-QName(QName ('', 'number')), local-name-from-QName( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-local-name-from-QName-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "number number") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-local-name-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-local-name-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "noNamespace") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-local-name-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml//pre:prefixed))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-local-name-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "prefixed") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-local-name-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml//unpre:unprefixed))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-local-name-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "unprefixed") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-local-name-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml//@pre:prefAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-local-name-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "prefAttr") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-local-name-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml//@noNSAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-local-name-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "noNSAttr") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-local-name-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (local-name($in-xml), local-name($in-xml//pre:prefixed), local-name($in-xml//unpre:unprefixed), local-name($in-xml//@pre:prefAttr), local-name($in-xml//@noNSAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-local-name-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(Res, "noNamespace prefixed unprefixed prefAttr noNSAttr")
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-lower-case-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(lower-case('QUERY'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-lower-case-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-lower-case-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(lower-case('Query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-lower-case-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-lower-case-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(lower-case('QUERY123'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-lower-case-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query123") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-lower-case-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(lower-case('QUERY'), lower-case('Query'), lower-case('QUERY123'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-lower-case-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query query query123") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-matches-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', 'q'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', 'ue'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', '^qu'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', 'qu$'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', '[ux]'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', 'q.*'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street Traverse City, MI 49684' return (matches('query', '[a-z]{5}'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $address := '123 Main Street Traverse City, MI 49684' return (matches((), 'q' ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street\n"
        "Traverse City, MI 49684' return (matches($address, 'Street.*City'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street Traverse City, MI 49684' return (matches($address, 'Street.*City', 's'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street\n"
        "Traverse City, MI 49684' return (matches($address, 'Street$'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street\n"
        "Traverse City, MI 49684' return (matches($address, 'Street$', 'm'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-12.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street\n"
        "Traverse City, MI 49684' return (matches($address, 'street'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-13.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street\n"
        "Traverse City, MI 49684' return (matches($address, 'street', 'i'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-14.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street\n"
        "Traverse City, MI 49684' return (matches($address, 'Main Street'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street\n"
        "Traverse City, MI 49684' return (matches($address, 'Main Street', 'x'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street\n"
        "Traverse City, MI 49684' return (matches($address, 'Main \\s Street', 'x'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-17.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $address := '123 Main Street\n"
        "Traverse City, MI 49684' return (matches($address, 'street$', 'im'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-18.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-matches-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $address := '123 Main Street\n"
        "Traverse City, MI 49684' \n"
        "        return (matches('query', 'q'), matches('query', 'ue'), matches('query', '^qu'), \n"
        "            matches('query', 'qu$'), matches('query', '[ux]'), matches('query', 'q.*'), \n"
        "            matches('query', '[a-z]{5}'), matches((), 'q' ), matches($address, 'Street.*City'), \n"
        "            matches($address, 'Street.*City', 's'), matches($address, 'Street$'), \n"
        "            matches($address, 'Street$', 'm'), matches($address, 'street'), \n"
        "            matches($address, 'street', 'i'), matches($address, 'Main Street'), \n"
        "            matches($address, 'Main Street', 'x'), matches($address, 'Main \\s Street', 'x'), \n"
        "            matches($address, 'street$', 'im'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-matches-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "true true true false true true true false false true false true false true true false true true"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-max-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (max( (2, 1, 5, 4, 3) ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-max-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-max-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (max( ('a', 'b', 'c') ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-max-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-max-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (max( 2 ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-max-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-max-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (max($ordDoc//item/string(@dept)))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-max-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "WMN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-max-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $ordDoc := (/) return (max( (2, 1, 5, 4, 3) ), max( ('a', 'b', 'c') ), max( 2 ), max($ordDoc//item/string(@dept)))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-max-all.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "5 c 2 WMN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-min-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (min( (2.0, 1, 3.5, 4) ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-min-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-min-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (min( ('a', 'b', 'c') ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-min-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-min-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (min($ordDoc//item//string(@color)))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-min-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-min-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (min($ordDoc//item/@color/string(.)))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-min-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "beige") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-min-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $ordDoc := (/) return (min( (2.0, 1, 3.5, 4) ), min( ('a', 'b', 'c') ), min($ordDoc//item//string(@color)), min($ordDoc//item/@color/string(.)))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-min-all.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 a  beige") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-minutes-from-dateTime-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(minutes-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-minutes-from-dateTime-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "30") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-minutes-from-duration-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(minutes-from-duration( xs:dayTimeDuration('PT30M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-minutes-from-duration-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "30") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-minutes-from-duration-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(minutes-from-duration( xs:dayTimeDuration('-PT90M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-minutes-from-duration-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-30") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-minutes-from-duration-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(minutes-from-duration( xs:dayTimeDuration('PT1M90S')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-minutes-from-duration-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-minutes-from-duration-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(minutes-from-duration( xs:dayTimeDuration('PT3H')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-minutes-from-duration-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-minutes-from-duration-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(minutes-from-duration( xs:dayTimeDuration('PT60M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-minutes-from-duration-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-minutes-from-duration-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(minutes-from-duration( xs:dayTimeDuration('PT30M')), minutes-from-duration( xs:dayTimeDuration('-PT90M')), minutes-from-duration( xs:dayTimeDuration('PT1M90S')), minutes-from-duration( xs:dayTimeDuration('PT3H')), minutes-from-duration( xs:dayTimeDuration('PT60M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-minutes-from-duration-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "30 -30 2 0 0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-minutes-from-time-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(minutes-from-time(xs:time('10:30:23')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-minutes-from-time-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "30") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-month-from-date-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(month-from-date(xs:date('2006-08-15')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-month-from-date-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-month-from-dateTime-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(month-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-month-from-dateTime-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-months-from-duration-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(months-from-duration( xs:yearMonthDuration('P3M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-months-from-duration-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-months-from-duration-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(months-from-duration( xs:yearMonthDuration('-P18M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-months-from-duration-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-months-from-duration-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(months-from-duration( xs:yearMonthDuration('P1Y')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-months-from-duration-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-months-from-duration-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(months-from-duration( xs:yearMonthDuration('P12M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-months-from-duration-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-months-from-duration-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(months-from-duration( xs:yearMonthDuration('P3M')), months-from-duration( xs:yearMonthDuration('-P18M')), months-from-duration( xs:yearMonthDuration('P1Y')), months-from-duration( xs:yearMonthDuration('P12M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-months-from-duration-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3 -6 0 0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-name-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-name-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "noNamespace") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-name-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml//pre2:prefixed))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-name-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "pre:prefixed") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-name-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml//unpre2:unprefixed))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-name-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "unprefixed") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-name-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml//@pre2:prefAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-name-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "pre:prefAttr") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-name-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml//@noNSAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-name-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "noNSAttr") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-name-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (name($in-xml), name($in-xml//pre2:prefixed), name($in-xml//unpre2:unprefixed), name($in-xml//@pre2:prefAttr), name($in-xml//@noNSAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-name-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "noNamespace pre:prefixed unprefixed pre:prefAttr noNSAttr"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-for-prefix-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri-for-prefix( '', $in-xml))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-for-prefix-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-for-prefix-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri-for-prefix( 'pre',$in-xml//pre:prefixed))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-for-prefix-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/pre") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-for-prefix-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri-for-prefix( '',$in-xml//unpre:unprefixed))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-for-prefix-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/unpre") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-for-prefix-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri-for-prefix( 'pre',$in-xml//unpre:unprefixed))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-for-prefix-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/pre") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-for-prefix-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := \n"
        "         <noNamespace> \n"
        "            <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> \n"
        "                <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> \n"
        "            </pre:prefixed> \n"
        "        </noNamespace> \n"
        "        return (namespace-uri-for-prefix('', $in-xml),\n"
        "                namespace-uri-for-prefix('pre',$in-xml//pre:prefixed),\n"
        "                namespace-uri-for-prefix('',$in-xml//unpre:unprefixed),\n"
        "                namespace-uri-for-prefix('pre',$in-xml//unpre:unprefixed))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-for-prefix-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "http://datypic.com/pre http://datypic.com/unpre http://datypic.com/pre"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-from-QName-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(namespace-uri-from-QName( QName ('http://datypic.com/pre', 'prefixed')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-from-QName-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/pre") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-from-QName-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(namespace-uri-from-QName( QName ('', 'unprefixed')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-from-QName-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-from-QName-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(namespace-uri-from-QName( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-from-QName-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-from-QName-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(namespace-uri-from-QName( QName ('http://datypic.com/pre', 'prefixed')), namespace-uri-from-QName( QName ('', 'unprefixed')), namespace-uri-from-QName( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-from-QName-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/pre ") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml//pre:prefixed))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/pre") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml//unpre:unprefixed))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/unpre") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml//@pre:prefAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/pre") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml//@noNSAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-namespace-uri-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (namespace-uri($in-xml), namespace-uri($in-xml//pre:prefixed), namespace-uri($in-xml//unpre:unprefixed), namespace-uri($in-xml//@pre:prefAttr), namespace-uri($in-xml//@noNSAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-namespace-uri-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                " http://datypic.com/pre http://datypic.com/unpre http://datypic.com/pre "
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-nilled-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <root xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"> <child>12</child> <child xsi:nil=\"true\"></child> <child></child> <child/> <child xsi:nil=\"false\"></child> </root> return (nilled($in-xml//child[1]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-nilled-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-nilled-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <root xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"> <child>12</child> <child xsi:nil=\"true\"></child> <child></child> <child/> <child xsi:nil=\"false\"></child> </root> return (nilled($in-xml//child[3]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-nilled-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-nilled-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <root xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"> <child>12</child> <child xsi:nil=\"true\"></child> <child></child> <child/> <child xsi:nil=\"false\"></child> </root> return (nilled($in-xml//child[4]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-nilled-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-nilled-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <root xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"> <child>12</child> <child xsi:nil=\"true\"></child> <child></child> <child/> <child xsi:nil=\"false\"></child> </root> return (nilled($in-xml//child[5]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-nilled-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-nilled-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <root xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"> <child>12</child> <child xsi:nil=\"true\"></child> <child></child> <child/> <child xsi:nil=\"false\"></child> </root> return (nilled($in-xml//child[1]), nilled($in-xml//child[3]), nilled($in-xml//child[4]), nilled($in-xml//child[5]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-nilled-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "false false false false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-node-name-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-node-name-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "noNamespace") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-node-name-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml/pre2:prefixed))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-node-name-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "pre:prefixed") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-node-name-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml//unpre2:unprefixed))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-node-name-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "unprefixed") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-node-name-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml//@pre2:prefAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-node-name-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "pre:prefAttr") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-node-name-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml//@noNSAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-node-name-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "noNSAttr") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-node-name-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre2 = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (node-name($in-xml), node-name($in-xml/pre2:prefixed), node-name($in-xml//unpre2:unprefixed), node-name($in-xml//@pre2:prefAttr), node-name($in-xml//@noNSAttr))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-node-name-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "noNamespace pre:prefixed unprefixed pre:prefAttr noNSAttr"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-space-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-space('query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-space-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-space-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-space(' query '))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-space-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-space-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-space('xml query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-space-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "xml query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-space-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-space('xml query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-space-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "xml query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-space-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-space('xml query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-space-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "xml query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-space-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-space(''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-space-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-space-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-space(' '))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-space-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-space-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-space(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-space-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-space-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-space( <element> query </element>))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-space-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-space-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(normalize-space('query'), normalize-space(' query '), normalize-space('xml query'), normalize-space('xml query'), normalize-space('xml query'), normalize-space(''), normalize-space(' '), normalize-space(()), normalize-space( <element> query </element>))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-space-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "query query xml query xml query xml query    query"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-unicode-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-unicode('query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-unicode-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-unicode-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-unicode('query', ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-unicode-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-normalize-unicode-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(normalize-unicode('query'), normalize-unicode('query', ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-normalize-unicode-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-not-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(not(32 >\n"
        "         20))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-not-1.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-not-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(not((/) //product))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_catalog', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-not-2.xq"), Qry1),
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

'functx-fn-not-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(not(true()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-not-3.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-not-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(not(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-not-4.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-not-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(not(''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-not-5.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-not-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(not(0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-not-6.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-not-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(not(<e>false</e>))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-not-7.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-not-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(not(32 > 20), not((/) //product), not(true()), not(()), not(''), not(0), not(<e>false</e>))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_catalog', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-not-all.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "false false false true true true false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-number-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $priceDoc := (/) return (number( $priceDoc//prod[1]/price))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_prices', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-number-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "29.99") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-number-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $priceDoc := (/) return (number( $priceDoc//prod[1]/@currency))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_prices', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-number-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "NaN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-number-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $priceDoc := (/) return (number('29.99'))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_prices', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-number-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "29.99") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-number-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $priceDoc := (/) return (number('ABC'))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_prices', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-number-4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "NaN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-number-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $priceDoc := (/) return (number( () ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_prices', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-number-5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "NaN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-number-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $priceDoc := (/) return ($priceDoc// prod/price[number() >\n"
        "         35])",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_prices', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-number-6.xq"),
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
                "<price currency=\"USD\">69.99</price><price currency=\"USD\">39.99</price>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-number-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $priceDoc := (/) \n"
        "         return (number( $priceDoc//prod[1]/price), number( $priceDoc//prod[1]/@currency), \n"
        "                          number('29.99'), number('ABC'), number( () ), \n"
        "                          $priceDoc// prod/price[number() > 35])",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_prices', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-number-all.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert(Res, "$result[1] eq 29.99") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[2] ne $result[2] (:NaN:)") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[3] eq 29.99") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[4] ne $result[4] (:NaN:)") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[5] ne $result[5] (:NaN:)") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result[6][self::price][@currency='USD'][.='69.99']"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result[7][self::price][@currency='USD'][.='39.99']"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-one-or-more-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(one-or-more('a'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-one-or-more-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-one-or-more-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(one-or-more( ('a', 'b') ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-one-or-more-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-one-or-more-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(one-or-more('a'), one-or-more( ('a', 'b') ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-one-or-more-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a a b") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-position-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a>1</a> <c>2</c> <a>3</a> <a>4</a> <a>5</a> </in-xml> return ($in-xml/*[position() > 2])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-position-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a>3</a><a>4</a><a>5</a>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-position-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a>1</a> <c>2</c> <a>3</a> <a>4</a> <a>5</a> </in-xml> return ($in-xml/a[position() > 2])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-position-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a>4</a><a>5</a>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-position-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a>1</a> <c>2</c> <a>3</a> <a>4</a> <a>5</a> </in-xml> return ($in-xml/a[position() = 3])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-position-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a>4</a>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-position-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml := <in-xml> <a>1</a> <c>2</c> <a>3</a> <a>4</a> <a>5</a> </in-xml> return ($in-xml/*[position() > 2], $in-xml/a[position() > 2], $in-xml/a[position() = 3])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-position-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a>3</a><a>4</a><a>5</a><a>4</a><a>5</a><a>4</a>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-prefix-from-QName-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-prefix-from-QName-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-prefix-from-QName-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml//pre2:prefixed)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-prefix-from-QName-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "pre") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-prefix-from-QName-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml//unpre:unprefixed)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-prefix-from-QName-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-prefix-from-QName-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml//@pre2:prefAttr)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-prefix-from-QName-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "pre") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-prefix-from-QName-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml//@noNSAttr)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-prefix-from-QName-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-prefix-from-QName-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name(<pre2:new>xyz</pre2:new>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-prefix-from-QName-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "pre2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-prefix-from-QName-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace pre2 = \"http://datypic.com/pre\";\n"
        "         declare namespace unpre = \"http://datypic.com/unpre\";\n"
        "         let $in-xml := <noNamespace> <pre:prefixed xmlns=\"http://datypic.com/unpre\" xmlns:pre=\"http://datypic.com/pre\"> <unprefixed pre:prefAttr=\"a\" noNSAttr=\"b\">123</unprefixed> </pre:prefixed> </noNamespace> return (prefix-from-QName( node-name($in-xml)), prefix-from-QName( node-name($in-xml//pre2:prefixed)), prefix-from-QName( node-name($in-xml//unpre:unprefixed)), prefix-from-QName( node-name($in-xml//@pre2:prefAttr)), prefix-from-QName( node-name($in-xml//@noNSAttr)), prefix-from-QName( node-name(<pre2:new>xyz</pre2:new>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-prefix-from-QName-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "pre pre pre2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-QName-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(QName('http://datypic.com/prod','product'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-QName-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "product") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-QName-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(QName('http://datypic.com/prod', 'pre:product'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-QName-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "pre:product") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-QName-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(QName('', 'product'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-QName-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "product") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-QName-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(QName('http://datypic.com/prod','product'), QName('http://datypic.com/prod', 'pre:product'), QName('', 'product'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-QName-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "product pre:product product") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-remove-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(remove( ('a', 'b', 'c'), 2) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-remove-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-remove-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(remove( ('a', 'b', 'c'), 10))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-remove-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-remove-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(remove( ('a', 'b', 'c'), 0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-remove-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-remove-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(remove( ('a', 'b', 'c'), 2) , remove( ('a', 'b', 'c'), 10), remove( ('a', 'b', 'c'), 0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-remove-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a c a b c a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('query', 'r', 'as'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "queasy") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('query', 'qu', 'quack'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "quackery") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('query', '[ry]', 'l'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "quell") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('query', '[ry]+', 'l'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "quel") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('query', 'z', 'a'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('query', 'query', ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace( (), 'r', 'as'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('Chapter', '(Chap)|(Chapter)', 'x'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "xter") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('reluctant', 'r.*t', 'X'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "X") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('reluctant', 'r.*?t', 'X'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Xant") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('aaah', 'a{2,3}', 'X'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Xh") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('aaah', 'a{2,3}?', 'X'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-12.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Xah") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('aaaah', 'a{2,3}', 'X'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-13.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Xah") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('aaaah', 'a{2,3}?', 'X'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-14.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "XXh") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('Chap 2...Chap 3...Chap 4...', 'Chap (\\d)', 'Sec $1.0'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Sec 2.0...Sec 3.0...Sec 4.0...") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('abc123', '([a-z])', '$1x'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "axbxcx123") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('2315551212', '(\\d{3})(\\d{3})(\\d{4})', '($1) $2-$3'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-17.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "(231) 555-1212") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('2006-10-18', '\\d{2}(\\d{2})-(\\d{2})-(\\d{2})', '$2/$3/$1'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-18.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "10/18/06") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(replace('25', '(\\d+)', '\\$$1.00'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-19.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "$25.00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-replace-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(replace('query', 'r', 'as'), replace('query', 'qu', 'quack'), replace('query', '[ry]', 'l'), replace('query', '[ry]+', 'l'), replace('query', 'z', 'a'), replace('query', 'query', ''), replace( (), 'r', 'as'), replace('Chapter', '(Chap)|(Chapter)', 'x'), replace('reluctant', 'r.*t', 'X'), replace('reluctant', 'r.*?t', 'X'), replace('aaah', 'a{2,3}', 'X'), replace('aaah', 'a{2,3}?', 'X'), replace('aaaah', 'a{2,3}', 'X'), replace('aaaah', 'a{2,3}?', 'X'), replace('Chap 2...Chap 3...Chap 4...', 'Chap (\\d)', 'Sec $1.0'), replace('abc123', '([a-z])', '$1x'), replace('2315551212', '(\\d{3})(\\d{3})(\\d{4})', '($1) $2-$3'), replace('2006-10-18', '\\d{2}(\\d{2})-(\\d{2})-(\\d{2})', '$2/$3/$1'), replace('25', '(\\d+)', '\\$$1.00'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-replace-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "queasy quackery quell quel query   xter X Xant Xh Xah Xah XXh Sec 2.0...Sec 3.0...Sec 4.0... axbxcx123 (231) 555-1212 10/18/06 $25.00"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-resolve-QName-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace ord = \"http://datypic.com/ord\";\n"
        "         declare namespace dty = \"http://datypic.com\";\n"
        "         declare namespace dty2 = \"http://datypic.com/ns2\";\n"
        "         let $root := <root> <order xmlns:ord=\"http://datypic.com/ord\" xmlns=\"http://datypic.com\"> <!-- ... --> </order> </root> return (resolve-QName('myName', $root))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-resolve-QName-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "myName") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-resolve-QName-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace ord = \"http://datypic.com/ord\";\n"
        "         declare namespace dty = \"http://datypic.com\";\n"
        "         declare namespace dty2 = \"http://datypic.com/ns2\";\n"
        "         let $root := <root> <order xmlns:ord=\"http://datypic.com/ord\" xmlns=\"http://datypic.com\"> <!-- ... --> </order> </root> return (resolve-QName('myName', $root/dty:order))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-resolve-QName-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "myName") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-resolve-QName-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace ord = \"http://datypic.com/ord\";\n"
        "         declare namespace dty = \"http://datypic.com\";\n"
        "         declare namespace dty2 = \"http://datypic.com/ns2\";\n"
        "         let $root := <root> <order xmlns:ord=\"http://datypic.com/ord\" xmlns=\"http://datypic.com\"> <!-- ... --> </order> </root> return (resolve-QName( 'ord:myName', $root/dty:order))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-resolve-QName-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ord:myName") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-resolve-QName-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace ord = \"http://datypic.com/ord\";\n"
        "         declare namespace dty = \"http://datypic.com\";\n"
        "         declare namespace dty2 = \"http://datypic.com/ns2\";\n"
        "         let $root := <root> <order xmlns:ord=\"http://datypic.com/ord\" xmlns=\"http://datypic.com\"> <!-- ... --> </order> </root> return (resolve-QName('myName', $root), resolve-QName('myName', $root/dty:order), resolve-QName( 'ord:myName', $root/dty:order))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-resolve-QName-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "myName myName ord:myName") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-resolve-uri-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(resolve-uri('prod', 'http://datypic.com/'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-resolve-uri-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/prod") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-resolve-uri-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(resolve-uri('prod2', 'http://datypic.com/prod1'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-resolve-uri-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://datypic.com/prod2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-resolve-uri-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(resolve-uri( 'http://example.org','http://datypic.com'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-resolve-uri-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.org") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-resolve-uri-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(resolve-uri( 'http://datypic.com', '../base'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-resolve-uri-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_string_value(Res, "http://datypic.com") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FORG0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FORG0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-resolve-uri-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(resolve-uri( '', 'http://datypic.com'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-resolve-uri-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_string_value(Res, "http://datypic.com") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "http://datypic.com/") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-resolve-uri-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(resolve-uri('prod', 'http://datypic.com/'), resolve-uri('prod2', 'http://datypic.com/prod1'), resolve-uri( 'http://example.org','http://datypic.com'), resolve-uri( 'http://datypic.com', '../base'), resolve-uri( '', 'http://datypic.com'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-resolve-uri-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert(Res, "$result[1] eq \"http://datypic.com/prod\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[2] eq \"http://datypic.com/prod2\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[3] eq \"http://example.org\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[4] eq \"http://datypic.com\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result[5] = (\"http://datypic.com\", \"http://datypic.com/\")"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-reverse-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(reverse( (1, 2, 3, 4, 5) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-reverse-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "5 4 3 2 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-reverse-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(reverse( (6, 2, 4) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-reverse-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "4 2 6") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-reverse-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(reverse( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-reverse-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-reverse-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(reverse( (1, 2, 3, 4, 5) ), reverse( (6, 2, 4) ), reverse( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-reverse-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "5 4 3 2 1 4 2 6") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-root-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $in-xml := <a><x>123</x></a> return (root( (/) //item[1]))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-root-1.xq"), Qry1),
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
                "<order num=\"00299432\" date=\"2006-09-15\" cust=\"0221A\">\n"
                "  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"beige\"/>\n"
                "  <item dept=\"ACC\" num=\"563\" quantity=\"1\"/>\n"
                "  <item dept=\"ACC\" num=\"443\" quantity=\"2\"/>\n"
                "  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/white\"/>\n"
                "  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/red\"/>\n"
                "  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"sage\"/>\n"
                "</order>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-root-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $in-xml := <a><x>123</x></a> return (root($in-xml/x))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-root-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a><x>123</x></a>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-root-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $in-xml := <a><x>123</x></a> \n"
        "         return document{(root( (/) //item[1]), root($in-xml/x))}\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-root-all.xq"),
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
                "<order num=\"00299432\" date=\"2006-09-15\" cust=\"0221A\">\n"
                "  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"beige\"/>\n"
                "  <item dept=\"ACC\" num=\"563\" quantity=\"1\"/>\n"
                "  <item dept=\"ACC\" num=\"443\" quantity=\"2\"/>\n"
                "  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/white\"/>\n"
                "  <item dept=\"MEN\" num=\"784\" quantity=\"1\" color=\"blue/red\"/>\n"
                "  <item dept=\"WMN\" num=\"557\" quantity=\"1\" color=\"sage\"/>\n"
                "</order><a><x>123</x></a>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-half-to-even-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(round-half-to-even(5.5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-round-half-to-even-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-half-to-even-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(round-half-to-even(6.5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-round-half-to-even-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-half-to-even-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(round-half-to-even(9372.253, 2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-round-half-to-even-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "9372.25") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-half-to-even-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(round-half-to-even(9372.253, 0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-round-half-to-even-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "9372") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-half-to-even-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(round-half-to-even(9372.253, -3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-round-half-to-even-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "9000") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-half-to-even-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(round-half-to-even(5.5), round-half-to-even(6.5), round-half-to-even(9372.253, 2), round-half-to-even(9372.253, 0), round-half-to-even(9372.253, -3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-round-half-to-even-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "6 6 9372.25 9372 9000") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(round(5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-round-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(round(5.1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-round-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(round(5.5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-round-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(round(-5.5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-round-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(round(-5.51))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-round-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-round-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(round(5), round(5.1), round(5.5), round(-5.5), round(-5.51))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-round-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "5 5 6 -5 -6") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-seconds-from-dateTime-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(seconds-from-dateTime( xs:dateTime('2006-08-15T10:30:23.5')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-seconds-from-dateTime-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "23.5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-seconds-from-duration-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(seconds-from-duration( xs:dayTimeDuration('PT30.5S')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-seconds-from-duration-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "30.5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-seconds-from-duration-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(seconds-from-duration( xs:dayTimeDuration('-PT90.5S')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-seconds-from-duration-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-30.5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-seconds-from-duration-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(seconds-from-duration( xs:dayTimeDuration('PT1M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-seconds-from-duration-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-seconds-from-duration-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(seconds-from-duration( xs:dayTimeDuration('PT60S')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-seconds-from-duration-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-seconds-from-duration-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(seconds-from-duration( xs:dayTimeDuration('PT30.5S')), seconds-from-duration( xs:dayTimeDuration('-PT90.5S')), seconds-from-duration( xs:dayTimeDuration('PT1M')), seconds-from-duration( xs:dayTimeDuration('PT60S')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-seconds-from-duration-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "30.5 -30.5 0 0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-seconds-from-time-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(seconds-from-time(xs:time('10:30:23.5')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-seconds-from-time-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "23.5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-starts-with-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(starts-with('query', 'que'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-starts-with-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-starts-with-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(starts-with('query', 'query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-starts-with-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-starts-with-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(starts-with('query', 'u'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-starts-with-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-starts-with-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(starts-with('query', ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-starts-with-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-starts-with-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(starts-with('', 'query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-starts-with-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-starts-with-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(starts-with('', ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-starts-with-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-starts-with-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(starts-with('query', ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-starts-with-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-starts-with-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(starts-with(' query', 'q'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-starts-with-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'functx-fn-starts-with-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(starts-with('query', 'que'), starts-with('query', 'query'), starts-with('query', 'u'), starts-with('query', ''), starts-with('', 'query'), starts-with('', ''), starts-with('query', ()), starts-with(' query', 'q'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-starts-with-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true true false true false true true false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-join-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-join( ('a', 'b', 'c'), ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-join-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abc") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-join-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-join( ('a', 'b', 'c'), '/*'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-join-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a/*b/*c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-join-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-join( ('a', '', 'c'), '/*'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-join-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a/*/*c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-join-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-join( 'a', '/*'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-join-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-join-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-join((), '/*'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-join-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-join-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(string-join( ('a', 'b', 'c'), ''), string-join( ('a', 'b', 'c'), '/*'), string-join( ('a', '', 'c'), '/*'), string-join( 'a', '/*'), string-join((), '/*'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-join-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abc a/*b/*c a/*/*c a ") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-length-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-length('query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-length-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-length-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(string-length(' \n"
        "query\n"
        " '))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-length-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "9") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-length-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-length(normalize-space(' query ')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-length-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-length-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-length('xml query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-length-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "9") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-length-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-length(''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-length-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-length-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-length(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-length-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-length-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(string-length('query'), string-length(' \n"
        "query \n"
        " '), string-length(normalize-space('  \n"
        "query \n"
        " ')), string-length('xml query'), string-length(''), string-length(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-length-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "5 10 5 9 0 0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-to-codepoints-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-to-codepoints('abc'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-to-codepoints-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "97 98 99") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-to-codepoints-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-to-codepoints('a'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-to-codepoints-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "97") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-to-codepoints-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-to-codepoints(''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-to-codepoints-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-to-codepoints-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(string-to-codepoints('abc'), string-to-codepoints('a'), string-to-codepoints(''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-to-codepoints-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "97 98 99 97") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml-2 := <product dept=\"MEN\"> <number>784</number> <name language=\"en\">Cotton Dress Shirt</name> <colorChoices>white gray</colorChoices> <desc>Our <i>favorite</i> shirt!</desc> </product> return (string($in-xml-2/number))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "784") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml-2 := <product dept=\"MEN\"> <number>784</number> <name language=\"en\">Cotton Dress Shirt</name> <colorChoices>white gray</colorChoices> <desc>Our <i>favorite</i> shirt!</desc> </product> return (string($in-xml-2/desc))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Our favorite shirt!") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml-2 := <product dept=\"MEN\"> <number>784</number> <name language=\"en\">Cotton Dress Shirt</name> <colorChoices>white gray</colorChoices> <desc>Our <i>favorite</i> shirt!</desc> </product> return (string($in-xml-2/@dept))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "MEN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-string-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $in-xml-2 := <product dept=\"MEN\"> <number>784</number> <name language=\"en\">Cotton Dress Shirt</name> <colorChoices>white gray</colorChoices> <desc>Our <i>favorite</i> shirt!</desc> </product> return (string($in-xml-2/number), string($in-xml-2/desc), string($in-xml-2/@dept))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-string-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "784 Our favorite shirt! MEN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-subsequence-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(subsequence( ('a', 'b', 'c', 'd', 'e'), 3) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-subsequence-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "c d e") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-subsequence-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(subsequence( ('a', 'b', 'c', 'd', 'e'), 3, 2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-subsequence-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "c d") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-subsequence-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(subsequence( ('a', 'b', 'c', 'd', 'e'), 3, 10))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-subsequence-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "c d e") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-subsequence-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(subsequence( ('a', 'b', 'c', 'd', 'e'), 10))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-subsequence-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-subsequence-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(subsequence( ('a', 'b', 'c', 'd', 'e'), -2, 5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-subsequence-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-subsequence-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(subsequence( (), 3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-subsequence-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-subsequence-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(subsequence( ('a', 'b', 'c', 'd', 'e'), 3) , subsequence( ('a', 'b', 'c', 'd', 'e'), 3, 2), subsequence( ('a', 'b', 'c', 'd', 'e'), 3, 10), subsequence( ('a', 'b', 'c', 'd', 'e'), 10), subsequence( ('a', 'b', 'c', 'd', 'e'), -2, 5), subsequence( (), 3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-subsequence-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "c d e c d c d e a b") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-after-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-after('query', 'u'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-after-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ery") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-after-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-after('queryquery', 'ue'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-after-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ryquery") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-after-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-after('query', 'y'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-after-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-after-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-after('query', 'x'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-after-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-after-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-after('query', ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-after-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-after-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-after('', 'x'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-after-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-after-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(substring-after('query', 'u'), substring-after('queryquery', 'ue'), substring-after('query', 'y'), substring-after('query', 'x'), substring-after('query', ''), substring-after('', 'x'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-after-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ery ryquery   query ") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-before-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-before('query', 'r'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-before-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "que") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-before-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-before('query', 'ery'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-before-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "qu") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-before-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-before('queryquery', 'ery'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-before-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "qu") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-before-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-before('query', 'query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-before-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-before-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-before('query', 'x'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-before-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-before-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-before('query', ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-before-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-before-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring-before('query', ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-before-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-before-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(substring-before('query', 'r'), substring-before('query', 'ery'), substring-before('queryquery', 'ery'), substring-before('query', 'query'), substring-before('query', 'x'), substring-before('query', ''), substring-before('query', ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-before-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "que qu qu    ") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring('query', 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring('query', 3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ery") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring('query', 1, 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "q") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring('query', 2, 3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "uer") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring('query', 2, 850))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "uery") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring('query', 6, 2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring('query', -2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring('query', -2, 5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "qu") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring('query', 1, 0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring('', 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(substring((), 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-substring-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(substring('query', 1), substring('query', 3), substring('query', 1, 1), substring('query', 2, 3), substring('query', 2, 850), substring('query', 6, 2), substring('query', -2), substring('query', -2, 5), substring('query', 1, 0), substring('', 1), substring((), 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-substring-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "query ery q uer uery  query qu   ") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-sum-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (sum( (1, 2, 3) ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-sum-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-sum-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (sum($ordDoc//item/@quantity))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-sum-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "7") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-sum-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $ordDoc := (/) return (sum( (xs:yearMonthDuration('P1Y2M'), xs:yearMonthDuration('P2Y3M')) ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-sum-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P3Y5M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-sum-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (sum( (1, 2, 3, () ) ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-sum-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-sum-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (sum( () ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-sum-5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-sum-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $ordDoc := (/) return (sum( (), () ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-sum-6.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-sum-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $ordDoc := (/) return (sum( (1, 2, 3) ), sum($ordDoc//item/@quantity), sum( (xs:yearMonthDuration('P1Y2M'), xs:yearMonthDuration('P2Y3M')) ), sum( (1, 2, 3, () ) ), sum( () ), sum( (), () ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('functx_order', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-sum-all.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "6 7 P3Y5M 6 0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-timezone-from-date-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(timezone-from-date( xs:date('2006-08-15-05:00')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-timezone-from-date-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-PT5H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-timezone-from-date-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(timezone-from-date( xs:date('2006-08-15')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-timezone-from-date-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-timezone-from-date-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(timezone-from-date( xs:date('2006-08-15-05:00')), timezone-from-date( xs:date('2006-08-15')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-timezone-from-date-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-PT5H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-timezone-from-dateTime-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(timezone-from-dateTime( xs:dateTime('2006-08-15T10:30:23-05:00')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-timezone-from-dateTime-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-PT5H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-timezone-from-dateTime-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(timezone-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-timezone-from-dateTime-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-timezone-from-dateTime-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(timezone-from-dateTime( xs:dateTime('2006-08-15T10:30:23-05:00')), timezone-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-timezone-from-dateTime-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-PT5H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-timezone-from-time-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(timezone-from-time( xs:time('09:54:00-05:00')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-timezone-from-time-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-PT5H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-timezone-from-time-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(timezone-from-time( xs:time('09:54:00+05:00')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-timezone-from-time-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT5H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-timezone-from-time-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(timezone-from-time( xs:time('09:54:00Z')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-timezone-from-time-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT0S") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-timezone-from-time-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(timezone-from-time( xs:time('09:54:00')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-timezone-from-time-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-timezone-from-time-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(timezone-from-time( xs:time('09:54:00-05:00')), timezone-from-time( xs:time('09:54:00+05:00')), timezone-from-time( xs:time('09:54:00Z')), timezone-from-time( xs:time('09:54:00')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-timezone-from-time-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-PT5H PT5H PT0S") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( 'a b c', '\\s'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-1a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( ' a b c '))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-1a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-1b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( 'a b c'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-1b.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-join(tokenize( 'a    b c', '\\s'), '|')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a||||b|c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( 'a b c', '\\s+'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( ' b c', '\\s'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, " b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( 'a,b,c', ','))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( 'a,b,,c', ','))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b  c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( 'a, b, c', '[,\\s]+'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a b c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( '2006-12-25T12:15:00', '[\\-T:]'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2006 12 25 12 15 00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( 'Hello, there.', '\\W+'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Hello there ") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( (), '\\s+'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( 'abc', '\\s'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abc") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(tokenize( 'a,xb,xc', ',|,x'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-12.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a xb xc") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-tokenize-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(tokenize( 'a b c', '\\s'), tokenize( 'a b c', '\\s'), tokenize( 'a b c', '\\s+'), tokenize( ' b c', '\\s'), tokenize( 'a,b,c', ','), tokenize( 'a,b,,c', ','), tokenize( 'a, b, c', '[,\\s]+'), tokenize( '2006-12-25T12:15:00', '[\\-T:]'), tokenize( 'Hello, there.', '\\W+'), tokenize( (), '\\s+'), tokenize( 'abc', '\\s'), tokenize( 'a,xb,xc', ',|,x'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-tokenize-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "a b c a b c a b c  b c a b c a b  c a b c 2006 12 25 12 15 00 Hello there  abc a xb xc"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-translate-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(translate('1999/01/02', '/', '-'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-translate-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-01-02") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-translate-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(translate('xml query', 'qlmx', 'QLMX'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-translate-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "XML Query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-translate-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(translate('xml query', 'qlmx ', 'Q'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-translate-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-translate-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(translate('xml query', 'qlmx ', ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-translate-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "uery") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-translate-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(translate('xml query', 'abcd', 'ABCD'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-translate-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "xml query") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-translate-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(translate('', 'qlmx ', 'Q'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-translate-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-translate-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(translate((), 'qlmx ', 'Q'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-translate-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-translate-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(translate('1999/01/02', '/', '-'), translate('xml query', 'qlmx', 'QLMX'), translate('xml query', 'qlmx ', 'Q'), translate('xml query', 'qlmx ', ''), translate('xml query', 'abcd', 'ABCD'), translate('', 'qlmx ', 'Q'), translate((), 'qlmx ', 'Q'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-translate-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-01-02 XML Query Query uery xml query  ") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-true-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "functx-fn-true-1.xq"), Qry1),
            xqerl:run(Mod)
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

'functx-fn-upper-case-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(upper-case('query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-upper-case-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "QUERY") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-upper-case-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(upper-case('QUERY'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-upper-case-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "QUERY") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-upper-case-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(upper-case('Query'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-upper-case-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "QUERY") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-upper-case-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(upper-case('query-123'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-upper-case-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "QUERY-123") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-upper-case-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(upper-case('query'), upper-case('QUERY'), upper-case('Query'), upper-case('query-123'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-upper-case-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "QUERY QUERY QUERY QUERY-123") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-year-from-date-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(year-from-date(xs:date('2006-08-15')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-year-from-date-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2006") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-year-from-dateTime-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(year-from-dateTime( xs:dateTime('2006-08-15T10:30:23')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-year-from-dateTime-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2006") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-years-from-duration-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(years-from-duration( xs:yearMonthDuration('P3Y')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-years-from-duration-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-years-from-duration-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(years-from-duration( xs:yearMonthDuration('P3Y11M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-years-from-duration-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-years-from-duration-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(years-from-duration( xs:yearMonthDuration('-P18M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-years-from-duration-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-years-from-duration-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(years-from-duration( xs:yearMonthDuration('P1Y18M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-years-from-duration-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-years-from-duration-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(years-from-duration( xs:yearMonthDuration('P12M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-years-from-duration-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-years-from-duration-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(years-from-duration( xs:yearMonthDuration('P3Y')), years-from-duration( xs:yearMonthDuration('P3Y11M')), years-from-duration( xs:yearMonthDuration('-P18M')), years-from-duration( xs:yearMonthDuration('P1Y18M')), years-from-duration( xs:yearMonthDuration('P12M')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-years-from-duration-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3 3 -1 2 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-zero-or-one-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(zero-or-one( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-zero-or-one-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-zero-or-one-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(zero-or-one('a'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-zero-or-one-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'functx-fn-zero-or-one-all'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(zero-or-one( () ), zero-or-one('a'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "functx-fn-zero-or-one-all.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
