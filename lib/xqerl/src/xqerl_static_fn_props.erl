%% @author Zack
%% @doc @todo Add description to xqerl_static_fn_props.


-module(xqerl_static_fn_props).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([get_props/2]).
-export([merge_props/2]).

-define(FN, <<"http://www.w3.org/2005/xpath-functions">>).
-define(AR, <<"http://www.w3.org/2005/xpath-functions/array">>).
-define(MP, <<"http://www.w3.org/2005/xpath-functions/map">>).
-define(MT, <<"http://www.w3.org/2005/xpath-functions/math">>).
-define(FL, <<"http://expath.org/ns/file">>).
-define(HT, <<"http://expath.org/ns/http-client">>).

%% map returned as 
%%    #{deterministic      => Deterministic,
%%      context_dependent  => ContextDependent,
%%      focus_dependent    => FocusDependent,
%%      higher_order       => HigherOrder,
%%      static_properties  => StaticProperties,
%%      dynamic_properties => DynamicProperties}.
get_props(#qname{namespace = ?AR,local_name = <<"append">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"filter">>}, 2) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"flatten">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"fold-left">>}, 3) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"fold-right">>}, 3) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"for-each">>}, 2) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"for-each-pair">>}, 3) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"get">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"head">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"insert-before">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"join">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"put">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"remove">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"reverse">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"size">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"sort">>}, 1) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?AR,local_name = <<"sort">>}, 2) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?AR,local_name = <<"sort">>}, 3) -> 
  props(true, false, false, true, [known_collations], []);
get_props(#qname{namespace = ?AR,local_name = <<"subarray">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"subarray">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?AR,local_name = <<"tail">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"abs">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"adjust-dateTime-to-timezone">>}, 1) -> 
  props(true, true, false, false, [], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"adjust-dateTime-to-timezone">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"adjust-date-to-timezone">>}, 1) -> 
  props(true, true, false, false, [], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"adjust-date-to-timezone">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"adjust-time-to-timezone">>}, 1) -> 
  props(true, true, false, false, [], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"adjust-time-to-timezone">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"analyze-string">>}, 2) -> 
  props(false, false, false, false, [base_uri,known_namespaces], []);
get_props(#qname{namespace = ?FN,local_name = <<"analyze-string">>}, 3) -> 
  props(false, false, false, false, [base_uri,known_namespaces], []);
get_props(#qname{namespace = ?FN,local_name = <<"apply">>}, 2) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"available-environment-variables">>}, 0) -> 
  props(true, true, false, false, [], [environment_variables]);
get_props(#qname{namespace = ?FN,local_name = <<"avg">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"base-uri">>}, 0) -> 
  props(true, true, true, false, [base_uri], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"base-uri">>}, 1) -> 
  props(true, false, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"boolean">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"ceiling">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"codepoint-equal">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"codepoints-to-string">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"collation-key">>}, 1) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?FN,local_name = <<"collation-key">>}, 2) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?FN,local_name = <<"collection">>}, 0) -> 
  props(true, true, false, false, [base_uri], [available_collections]);
get_props(#qname{namespace = ?FN,local_name = <<"collection">>}, 1) -> 
  props(true, true, false, false, [base_uri], [available_collections]);
get_props(#qname{namespace = ?FN,local_name = <<"compare">>}, 2) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?FN,local_name = <<"compare">>}, 3) -> 
  props(true, true, false, false, [known_collations,base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"concat">>}, _) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"contains">>}, 2) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?FN,local_name = <<"contains">>}, 3) -> 
  props(true, true, false, false, [known_collations,base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"contains-token">>}, 2) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?FN,local_name = <<"contains-token">>}, 3) -> 
  props(true, true, false, false, [known_collations,base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"count">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"current-date">>}, 0) -> 
  props(true, true, false, false, [], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"current-dateTime">>}, 0) -> 
  props(true, true, false, false, [], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"current-time">>}, 0) -> 
  props(true, true, false, false, [], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"data">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"data">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"dateTime">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"day-from-date">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"day-from-dateTime">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"days-from-duration">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"deep-equal">>}, 2) -> 
  props(true, true, false, false, [known_collations], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"deep-equal">>}, 3) -> 
  props(true, true, false, false, [known_collations,base_uri], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"default-collation">>}, 0) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?FN,local_name = <<"default-language">>}, 0) -> 
  props(true, true, false, false, [default_language], []);
get_props(#qname{namespace = ?FN,local_name = <<"distinct-values">>}, 1) -> 
  props(false, true, false, false, [known_collations], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"distinct-values">>}, 2) -> 
  props(true, true, false, false, [known_collations,base_uri], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"doc">>}, 1) -> 
  props(true, true, false, false, [base_uri], [available_collections]);
get_props(#qname{namespace = ?FN,local_name = <<"doc-available">>}, 1) -> 
  props(true, true, false, false, [base_uri], [available_collections]);
get_props(#qname{namespace = ?FN,local_name = <<"document-uri">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"document-uri">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"element-with-id">>}, 1) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"element-with-id">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"empty">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"encode-for-uri">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"ends-with">>}, 2) -> 
  props(true, true, false, false, [known_collations,base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"ends-with">>}, 3) -> 
  props(true, true, false, false, [known_collations,base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"environment-variable">>}, 1) -> 
  props(true, true, false, false, [], [environment_variables]);
get_props(#qname{namespace = ?FN,local_name = <<"error">>}, 0) -> 
  props(false, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"error">>}, 1) -> 
  props(false, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"error">>}, 2) -> 
  props(false, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"error">>}, 3) -> 
  props(false, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"escape-html-uri">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"exactly-one">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"exists">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"false">>}, 0) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"filter">>}, 2) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"floor">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"fold-left">>}, 3) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"fold-right">>}, 3) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"for-each">>}, 2) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"for-each-pair">>}, 3) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"format-date">>}, 2) -> 
  props(true, true, false, false, [default_calendar,default_language,default_place], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"format-date">>}, 5) -> 
  props(true, true, false, false, [known_namespaces], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"format-dateTime">>}, 2) -> 
  props(true, true, false, false, [default_calendar,default_language,default_place], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"format-dateTime">>}, 5) -> 
  props(true, true, false, false, [known_namespaces], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"format-integer">>}, 2) -> 
  props(true, true, false, false, [default_language], []);
get_props(#qname{namespace = ?FN,local_name = <<"format-integer">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"format-number">>}, 2) -> 
  props(true, false, false, false, [known_decimal_formats,known_namespaces], []);
get_props(#qname{namespace = ?FN,local_name = <<"format-number">>}, 3) -> 
  props(true, true, false, false, [known_decimal_formats,known_namespaces], []);
get_props(#qname{namespace = ?FN,local_name = <<"format-time">>}, 2) -> 
  props(true, true, false, false, [default_calendar,default_language,default_place], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"format-time">>}, 5) -> 
  props(true, true, false, false, [known_namespaces], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"function-arity">>}, 1) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"function-lookup">>}, 2) -> 
  props(true, true, true, true, [known_decimal_formats,known_namespaces,known_collations,
                                 dynamic_known_functions,base_uri,default_calendar,default_language,default_place], 
                                [available_collections,available_uri_collections,context_item,context_position,
                                 context_size,environment_variables,implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"function-name">>}, 1) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"generate-id">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"generate-id">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"has-children">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"has-children">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"head">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"hours-from-dateTime">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"hours-from-duration">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"hours-from-time">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"id">>}, 1) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"id">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"idref">>}, 1) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"idref">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"implicit-timezone">>}, 0) -> 
  props(true, true, false, false, [], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"index-of">>}, 2) -> 
  props(true, true, false, false, [known_collations], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"index-of">>}, 3) -> 
  props(true, true, false, false, [known_collations,base_uri], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"innermost">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"in-scope-prefixes">>}, 1) -> 
  props(false, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"insert-before">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"iri-to-uri">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"json-doc">>}, 1) -> 
  props(true, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"json-doc">>}, 2) -> 
  props(true, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"json-to-xml">>}, 1) -> 
  props(false, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"json-to-xml">>}, 2) -> 
  props(false, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"lang">>}, 1) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"lang">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"last">>}, 0) -> 
  props(true, true, true, false, [], [context_size,context_item]);
%% get_props(#qname{namespace = ?FN,local_name = <<"load-xquery-module">>}, 1) -> 
%%   props(true, true, false, true, [XSLT], []);
%% get_props(#qname{namespace = ?FN,local_name = <<"load-xquery-module">>}, 2) -> 
%%   props(true, true, false, true, [XSLT], []);
get_props(#qname{namespace = ?FN,local_name = <<"local-name">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"local-name">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"local-name-from-QName">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"lower-case">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"matches">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"matches">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"max">>}, 1) -> 
  props(true, true, false, false, [known_collations], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"max">>}, 2) -> 
  props(true, true, false, false, [known_collations,base_uri], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"min">>}, 1) -> 
  props(true, true, false, false, [known_collations], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"min">>}, 2) -> 
  props(true, true, false, false, [known_collations,base_uri], [implicit_timezone]);
get_props(#qname{namespace = ?FN,local_name = <<"minutes-from-dateTime">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"minutes-from-duration">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"minutes-from-time">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"month-from-date">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"month-from-dateTime">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"months-from-duration">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"name">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"name">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"namespace-uri">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"namespace-uri">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"namespace-uri-for-prefix">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"namespace-uri-from-QName">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"nilled">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"nilled">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"node-name">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"node-name">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"normalize-space">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"normalize-space">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"normalize-unicode">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"normalize-unicode">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"not">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"number">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"number">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"one-or-more">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"outermost">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"parse-ietf-date">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"parse-json">>}, 1) -> 
  props(true, false, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"parse-json">>}, 2) -> 
  props(true, false, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"parse-xml">>}, 1) -> 
  props(false, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"parse-xml-fragment">>}, 1) -> 
  props(false, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"path">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"path">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"position">>}, 0) -> 
  props(true, true, true, false, [], [context_position,context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"prefix-from-QName">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"QName">>}, 2) -> 
  props(true, false, false, false, [known_namespaces], []);
get_props(#qname{namespace = ?FN,local_name = <<"random-number-generator">>}, 0) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"random-number-generator">>}, 1) -> 
  props(true, false, false, true, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"remove">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"replace">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"replace">>}, 4) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"resolve-QName">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"resolve-uri">>}, 1) -> 
  props(true, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"resolve-uri">>}, 2) -> 
  props(true, false, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"reverse">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"root">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"root">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"round">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"round">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"round-half-to-even">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"round-half-to-even">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"seconds-from-dateTime">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"seconds-from-duration">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"seconds-from-time">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"serialize">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"serialize">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"sort">>}, 1) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?FN,local_name = <<"sort">>}, 2) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?FN,local_name = <<"sort">>}, 3) -> 
  props(true, true, false, true, [known_collations], []);
get_props(#qname{namespace = ?FN,local_name = <<"starts-with">>}, 2) -> 
  props(true, true, false, false, [known_collations,base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"starts-with">>}, 3) -> 
  props(true, true, false, false, [known_collations,base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"static-base-uri">>}, 0) -> 
  props(true, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"string">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"string">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"string-join">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"string-join">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"string-length">>}, 0) -> 
  props(true, true, true, false, [], [context_item]);
get_props(#qname{namespace = ?FN,local_name = <<"string-length">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"string-to-codepoints">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"subsequence">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"subsequence">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"substring">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"substring">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"substring-after">>}, 2) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?FN,local_name = <<"substring-after">>}, 3) -> 
  props(true, true, false, false, [known_collations,base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"substring-before">>}, 2) -> 
  props(true, true, false, false, [known_collations], []);
get_props(#qname{namespace = ?FN,local_name = <<"substring-before">>}, 3) -> 
  props(true, true, false, false, [known_collations,base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"sum">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"sum">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"tail">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"timezone-from-date">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"timezone-from-dateTime">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"timezone-from-time">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"tokenize">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"tokenize">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"tokenize">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"trace">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"trace">>}, 2) -> 
  props(true, false, false, false, [], []);
%% get_props(#qname{namespace = ?FN,local_name = <<"transform">>}, 1) -> 
%%   props(false, true, false, false, [XSLT], []);
get_props(#qname{namespace = ?FN,local_name = <<"translate">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"true">>}, 0) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"unordered">>}, 1) -> 
  props(false, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"unparsed-text">>}, 1) -> 
  props(true, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"unparsed-text">>}, 2) -> 
  props(true, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"unparsed-text-available">>}, 1) -> 
  props(true, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"unparsed-text-available">>}, 2) -> 
  props(true, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"unparsed-text-lines">>}, 1) -> 
  props(true, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"unparsed-text-lines">>}, 2) -> 
  props(true, true, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"upper-case">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"uri-collection">>}, 0) -> 
  props(true, true, false, false, [base_uri], [available_uri_collections]);
get_props(#qname{namespace = ?FN,local_name = <<"uri-collection">>}, 1) -> 
  props(true, true, false, false, [base_uri], [available_uri_collections]);
get_props(#qname{namespace = ?FN,local_name = <<"xml-to-json">>}, 1) -> 
  props(true, false, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"xml-to-json">>}, 2) -> 
  props(true, false, false, false, [base_uri], []);
get_props(#qname{namespace = ?FN,local_name = <<"year-from-date">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"year-from-dateTime">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"years-from-duration">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?FN,local_name = <<"zero-or-one">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MP,local_name = <<"contains">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MP,local_name = <<"entry">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MP,local_name = <<"find">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MP,local_name = <<"for-each">>}, 2) -> 
  props(false, false, false, true, [], []);
get_props(#qname{namespace = ?MP,local_name = <<"get">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MP,local_name = <<"keys">>}, 1) -> 
  props(false, false, false, false, [], []);
get_props(#qname{namespace = ?MP,local_name = <<"merge">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MP,local_name = <<"merge">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MP,local_name = <<"put">>}, 3) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MP,local_name = <<"remove">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MP,local_name = <<"size">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"acos">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"asin">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"atan">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"atan2">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"cos">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"exp">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"exp10">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"log">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"log10">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"pi">>}, 0) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"pow">>}, 2) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"sin">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"sqrt">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(#qname{namespace = ?MT,local_name = <<"tan">>}, 1) -> 
  props(true, false, false, false, [], []);
get_props(_, _) -> 
   props(true, false, false, false, [], []).

merge_props(Props1, Props2) ->
   Deterministic1    = maps:get(deterministic,     Props1),
   ContextDependent1 = maps:get(context_dependent, Props1),
   FocusDependent1   = maps:get(focus_dependent,   Props1),
   HigherOrder1      = maps:get(higher_order,      Props1),
   StaticProperties1 = maps:get(static_properties, Props1),
   DynamicProperties1= maps:get(dynamic_properties,Props1),

   Deterministic2    = maps:get(deterministic,     Props2),
   ContextDependent2 = maps:get(context_dependent, Props2),
   FocusDependent2   = maps:get(focus_dependent,   Props2),
   HigherOrder2      = maps:get(higher_order,      Props2),
   StaticProperties2 = maps:get(static_properties, Props2),
   DynamicProperties2= maps:get(dynamic_properties,Props2),

   #{deterministic      => (Deterministic1 == true) andalso 
                             (Deterministic2 == true),
     context_dependent  => (ContextDependent1 == true) orelse 
                             (ContextDependent2 == true),
     focus_dependent    => (FocusDependent1 == true) orelse 
                             (FocusDependent2 == true),
     higher_order       => (HigherOrder1 == true) orelse 
                             (HigherOrder2 == true),
     static_properties  => lists:umerge([StaticProperties1,
                                         StaticProperties2]),
     dynamic_properties => lists:umerge([DynamicProperties1,
                                         DynamicProperties2])}.


props(Deterministic, ContextDependent, FocusDependent, HigherOrder, 
      StaticProperties, DynamicProperties) ->
   #{deterministic      => Deterministic,
     context_dependent  => ContextDependent,
     focus_dependent    => FocusDependent,
     higher_order       => HigherOrder,
     static_properties  => StaticProperties,
     dynamic_properties => DynamicProperties}.
