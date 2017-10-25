%% @author Zack
%% @doc @todo Add description to xqerl_try.
-module(xqerl_try).
-include("xqerl.hrl").



%-export([d/0]).


-export([main/1]).

-variables([]).

-functions([{{qname, "http://www.w3.org/2005/xquery-local-functions", "local",
         "f"},
        {xqSeqType,
         {xqFunTest, function, [], undefined,
          [{xqSeqType, {xqKindTest, namespace, undefined, undefined, undefined}, one}],
          {xqSeqType, element, one}},
         one},
        [], {'fx$^4', 2}, 1,
        [{xqSeqType, {xqKindTest, namespace, undefined, undefined, undefined}, one}]}]).

-export([]).

init() ->
    xqerl_context:init(),
    #{'base-uri' => {xqAtomicValue, 'xs:anyURI', "c:/git/zadean/xqerl/lib"},
      'construction-mode' => preserve,
      'copy-namespaces' => {'no-preserve', 'no-inherit'},
      'default-collation' =>
     "http://www.w3.org/2005/xpath-functions/collation/codepoint",
      known_collations =>
     ["http://www.w3.org/2005/xpath-functions/collation/codepoint"],
      named_functions =>
     [{{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "append"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, append, 3}, 2,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "filter"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, filter, 3}, 2,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType,
         {xqFunTest, function, [], undefined, [{xqSeqType, item, zero_or_many}],
          {xqSeqType, 'xs:boolean', one}},
         one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "flatten"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_array, flatten, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "fold-left"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_array, 'fold-left', 4}, 3,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, item, zero_or_many},
        {xqSeqType,
         {xqFunTest, function, [], undefined,
          [{xqSeqType, item, zero_or_many}, {xqSeqType, item, zero_or_many}],
          {xqSeqType, item, zero_or_many}},
         one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "fold-right"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_array, 'fold-right', 4}, 3,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, item, zero_or_many},
        {xqSeqType,
         {xqFunTest, function, [], undefined,
          [{xqSeqType, item, zero_or_many}, {xqSeqType, item, zero_or_many}],
          {xqSeqType, item, zero_or_many}},
         one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "for-each"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, 'for-each', 3}, 2,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType,
         {xqFunTest, function, [], undefined, [{xqSeqType, item, zero_or_many}],
          {xqSeqType, item, zero_or_many}},
         one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array",
        "for-each-pair"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, 'for-each-pair', 4}, 3,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType,
         {xqFunTest, function, [], undefined,
          [{xqSeqType, item, zero_or_many}, {xqSeqType, item, zero_or_many}],
          {xqSeqType, item, zero_or_many}},
         one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "get"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_array, get, 3}, 2,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, 'xs:integer', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "head"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_array, head, 2}, 1,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array",
        "insert-before"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, 'insert-before', 4}, 3,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, 'xs:integer', one}, {xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "join"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, join, 2}, 1,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "put"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, put, 4}, 3,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, 'xs:integer', one}, {xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "remove"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, remove, 3}, 2,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, 'xs:integer', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "reverse"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, reverse, 2}, 1,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "size"},
       {xqSeqType, 'xs:integer', one}, [], {xqerl_array, size, 2}, 1,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "sort"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, sort, 2}, 1,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "sort"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, sort, 3}, 2,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "sort"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, sort, 4}, 3,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType,
         {xqFunTest, function, [], undefined, [{xqSeqType, item, zero_or_many}],
          {xqSeqType, 'xs:anyAtomicType', zero_or_many}},
         one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "subarray"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, subarray, 3}, 2,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, 'xs:integer', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "subarray"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, subarray, 4}, 3,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one},
        {xqSeqType, 'xs:integer', one}, {xqSeqType, 'xs:integer', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/array", "array", "tail"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_array, tail, 2}, 1,
       [{xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "contains"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_map, contains, 3}, 2,
       [{xqSeqType, {xqFunTest, map, [], undefined, any, any}, one},
        {xqSeqType, 'xs:anyAtomicType', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "entry"},
       {xqSeqType, {xqFunTest, map, [], undefined, any, any}, one}, [],
       {xqerl_map, entry, 3}, 2,
       [{xqSeqType, 'xs:anyAtomicType', one}, {xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "find"},
       {xqSeqType, {xqFunTest, array, [], undefined, any, any}, one}, [],
       {xqerl_map, find, 3}, 2,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, 'xs:anyAtomicType', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "for-each"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_map, 'for-each', 3}, 2,
       [{xqSeqType, {xqFunTest, map, [], undefined, any, any}, one},
        {xqSeqType,
         {xqFunTest, function, [], undefined,
          [{xqSeqType, 'xs:anyAtomicType', one}, {xqSeqType, item, zero_or_many}],
          {xqSeqType, item, zero_or_many}},
         one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "get"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_map, get, 3}, 2,
       [{xqSeqType, {xqFunTest, map, [], undefined, any, any}, one},
        {xqSeqType, 'xs:anyAtomicType', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "keys"},
       {xqSeqType, 'xs:anyAtomicType', zero_or_many}, [], {xqerl_map, keys, 2}, 1,
       [{xqSeqType, {xqFunTest, map, [], undefined, any, any}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "merge"},
       {xqSeqType, {xqFunTest, map, [], undefined, any, any}, one}, [],
       {xqerl_map, merge, 2}, 1,
       [{xqSeqType, {xqFunTest, map, [], undefined, any, any}, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "merge"},
       {xqSeqType, {xqFunTest, map, [], undefined, any, any}, one}, [],
       {xqerl_map, merge, 3}, 2,
       [{xqSeqType, {xqFunTest, map, [], undefined, any, any}, zero_or_many},
        {xqSeqType, {xqFunTest, map, [], undefined, any, any}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "put"},
       {xqSeqType, {xqFunTest, map, [], undefined, any, any}, one}, [],
       {xqerl_map, put, 4}, 3,
       [{xqSeqType, {xqFunTest, map, [], undefined, any, any}, one},
        {xqSeqType, 'xs:anyAtomicType', one}, {xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "remove"},
       {xqSeqType, {xqFunTest, map, [], undefined, any, any}, one}, [],
       {xqerl_map, remove, 3}, 2,
       [{xqSeqType, {xqFunTest, map, [], undefined, any, any}, one},
        {xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "size"},
       {xqSeqType, 'xs:integer', one}, [], {xqerl_map, size, 2}, 1,
       [{xqSeqType, {xqFunTest, map, [], undefined, any, any}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "acos"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, acos, 2}, 1,
       [{xqSeqType, 'xs:double', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "asin"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, asin, 2}, 1,
       [{xqSeqType, 'xs:double', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "atan"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, atan, 2}, 1,
       [{xqSeqType, 'xs:double', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "atan2"},
       {xqSeqType, 'xs:double', one}, [], {xqerl_math, atan2, 3}, 2,
       [{xqSeqType, 'xs:double', one}, {xqSeqType, 'xs:double', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "cos"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, cos, 2}, 1,
       [{xqSeqType, 'xs:double', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "exp"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, exp, 2}, 1,
       [{xqSeqType, 'xs:double', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "exp10"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, exp10, 2}, 1,
       [{xqSeqType, 'xs:double', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "log"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, log, 2}, 1,
       [{xqSeqType, 'xs:double', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "log10"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, log10, 2}, 1,
       [{xqSeqType, 'xs:double', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "pi"},
       {xqSeqType, 'xs:double', one}, [], {xqerl_math, pi, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "pow"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, pow, 3}, 2,
       [{xqSeqType, 'xs:double', zero_or_one}, {xqSeqType, 'xs:numeric', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "sin"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, sin, 2}, 1,
       [{xqSeqType, 'xs:double', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "sqrt"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, sqrt, 2}, 1,
       [{xqSeqType, 'xs:double', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions/math", "math", "tan"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_math, tan, 2}, 1,
       [{xqSeqType, 'xs:double', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "unsignedInt"},
       {xqSeqType, 'xs:unsignedInt', zero_or_one}, [], {xqerl_xs, xs_unsignedInt, 2},
       1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "string"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_xs, xs_string, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "boolean"},
       {xqSeqType, 'xs:boolean', zero_or_one}, [], {xqerl_xs, xs_boolean, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "decimal"},
       {xqSeqType, 'xs:decimal', zero_or_one}, [], {xqerl_xs, xs_decimal, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "float"},
       {xqSeqType, 'xs:float', zero_or_one}, [], {xqerl_xs, xs_float, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "double"},
       {xqSeqType, 'xs:double', zero_or_one}, [], {xqerl_xs, xs_double, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "duration"},
       {xqSeqType, 'xs:duration', zero_or_one}, [], {xqerl_xs, xs_duration, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "dateTime"},
       {xqSeqType, 'xs:dateTime', zero_or_one}, [], {xqerl_xs, xs_dateTime, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "time"},
       {xqSeqType, 'xs:time', zero_or_one}, [], {xqerl_xs, xs_time, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "date"},
       {xqSeqType, 'xs:date', zero_or_one}, [], {xqerl_xs, xs_date, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "gYearMonth"},
       {xqSeqType, 'xs:gYearMonth', zero_or_one}, [], {xqerl_xs, xs_gYearMonth, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "gYear"},
       {xqSeqType, 'xs:gYear', zero_or_one}, [], {xqerl_xs, xs_gYear, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "gMonthDay"},
       {xqSeqType, 'xs:gMonthDay', zero_or_one}, [], {xqerl_xs, xs_gMonthDay, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "gDay"},
       {xqSeqType, 'xs:gDay', zero_or_one}, [], {xqerl_xs, xs_gDay, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "gMonth"},
       {xqSeqType, 'xs:gMonth', zero_or_one}, [], {xqerl_xs, xs_gMonth, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "hexBinary"},
       {xqSeqType, 'xs:hexBinary', zero_or_one}, [], {xqerl_xs, xs_hexBinary, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "base64Binary"},
       {xqSeqType, 'xs:base64Binary', zero_or_one}, [], {xqerl_xs, xs_base64Binary, 2},
       1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "anyURI"},
       {xqSeqType, 'xs:anyURI', zero_or_one}, [], {xqerl_xs, xs_anyURI, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "QName"},
       {xqSeqType, 'xs:QName', zero_or_one}, [], {xqerl_xs, xs_QName, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "normalizedString"},
       {xqSeqType, 'xs:normalizedString', zero_or_one}, [],
       {xqerl_xs, xs_normalizedString, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "token"},
       {xqSeqType, 'xs:token', zero_or_one}, [], {xqerl_xs, xs_token, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "language"},
       {xqSeqType, 'xs:language', zero_or_one}, [], {xqerl_xs, xs_language, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "NMTOKEN"},
       {xqSeqType, 'xs:NMTOKEN', zero_or_one}, [], {xqerl_xs, xs_NMTOKEN, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "Name"},
       {xqSeqType, 'xs:Name', zero_or_one}, [], {xqerl_xs, xs_Name, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "NCName"},
       {xqSeqType, 'xs:NCName', zero_or_one}, [], {xqerl_xs, xs_NCName, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "ID"},
       {xqSeqType, 'xs:ID', zero_or_one}, [], {xqerl_xs, xs_ID, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "IDREF"},
       {xqSeqType, 'xs:IDREF', zero_or_one}, [], {xqerl_xs, xs_IDREF, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "ENTITY"},
       {xqSeqType, 'xs:ENTITY', zero_or_one}, [], {xqerl_xs, xs_ENTITY, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "integer"},
       {xqSeqType, 'xs:integer', zero_or_one}, [], {xqerl_xs, xs_integer, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "nonPositiveInteger"},
       {xqSeqType, 'xs:nonPositiveInteger', zero_or_one}, [],
       {xqerl_xs, xs_nonPositiveInteger, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "negativeInteger"},
       {xqSeqType, 'xs:negativeInteger', zero_or_one}, [],
       {xqerl_xs, xs_negativeInteger, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "long"},
       {xqSeqType, 'xs:long', zero_or_one}, [], {xqerl_xs, xs_long, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "int"},
       {xqSeqType, 'xs:int', zero_or_one}, [], {xqerl_xs, xs_int, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "short"},
       {xqSeqType, 'xs:short', zero_or_one}, [], {xqerl_xs, xs_short, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "byte"},
       {xqSeqType, 'xs:byte', zero_or_one}, [], {xqerl_xs, xs_byte, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "nonNegativeInteger"},
       {xqSeqType, 'xs:nonNegativeInteger', zero_or_one}, [],
       {xqerl_xs, xs_nonNegativeInteger, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "unsignedLong"},
       {xqSeqType, 'xs:unsignedLong', zero_or_one}, [], {xqerl_xs, xs_unsignedLong, 2},
       1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "unsignedShort"},
       {xqSeqType, 'xs:unsignedShort', zero_or_one}, [],
       {xqerl_xs, xs_unsignedShort, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "unsignedByte"},
       {xqSeqType, 'xs:unsignedByte', zero_or_one}, [], {xqerl_xs, xs_unsignedByte, 2},
       1, [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "positiveInteger"},
       {xqSeqType, 'xs:positiveInteger', zero_or_one}, [],
       {xqerl_xs, xs_positiveInteger, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "yearMonthDuration"},
       {xqSeqType, 'xs:yearMonthDuration', zero_or_one}, [],
       {xqerl_xs, xs_yearMonthDuration, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "dayTimeDuration"},
       {xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
       {xqerl_xs, xs_dayTimeDuration, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "untypedAtomic"},
       {xqSeqType, 'xs:untypedAtomic', zero_or_one}, [],
       {xqerl_xs, xs_untypedAtomic, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "dateTimeStamp"},
       {xqSeqType, 'xs:dateTimeStamp', zero_or_one}, [],
       {xqerl_xs, xs_dateTimeStamp, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "NMTOKENS"},
       {xqSeqType, 'xs:NMTOKENS', zero_or_one}, [], {xqerl_xs, xs_NMTOKENS, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "ENTITIES"},
       {xqSeqType, 'xs:ENTITIES', zero_or_one}, [], {xqerl_xs, xs_ENTITIES, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "IDREFS"},
       {xqSeqType, 'xs:IDREFS', zero_or_one}, [], {xqerl_xs, xs_IDREFS, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2001/XMLSchema", "xs", "error"},
       {xqSeqType, 'xs:error', zero_or_one}, [], {xqerl_xs, xs_error, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "abs"},
       {xqSeqType, 'xs:numeric', zero_or_one}, [], {xqerl_fn, abs, 2}, 1,
       [{xqSeqType, 'xs:numeric', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "adjust-dateTime-to-timezone"},
       {xqSeqType, 'xs:dateTime', zero_or_one}, [],
       {xqerl_fn, 'adjust-dateTime-to-timezone', 2}, 1,
       [{xqSeqType, 'xs:dateTime', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "adjust-dateTime-to-timezone"},
       {xqSeqType, 'xs:dateTime', zero_or_one}, [],
       {xqerl_fn, 'adjust-dateTime-to-timezone', 3}, 2,
       [{xqSeqType, 'xs:dateTime', zero_or_one},
        {xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "adjust-date-to-timezone"},
       {xqSeqType, 'xs:date', zero_or_one}, [],
       {xqerl_fn, 'adjust-date-to-timezone', 2}, 1,
       [{xqSeqType, 'xs:date', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "adjust-date-to-timezone"},
       {xqSeqType, 'xs:date', zero_or_one}, [],
       {xqerl_fn, 'adjust-date-to-timezone', 3}, 2,
       [{xqSeqType, 'xs:date', zero_or_one},
        {xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "adjust-time-to-timezone"},
       {xqSeqType, 'xs:time', zero_or_one}, [],
       {xqerl_fn, 'adjust-time-to-timezone', 2}, 1,
       [{xqSeqType, 'xs:time', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "adjust-time-to-timezone"},
       {xqSeqType, 'xs:time', zero_or_one}, [],
       {xqerl_fn, 'adjust-time-to-timezone', 3}, 2,
       [{xqSeqType, 'xs:time', zero_or_one},
        {xqSeqType, 'xs:dayTimeDuration', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "analyze-string"},
       {xqSeqType, {xqKindTest, element, undefined, undefined, undefined}, one}, [],
       {xqerl_fn, 'analyze-string', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "analyze-string"},
       {xqSeqType, {xqKindTest, element, undefined, undefined, undefined}, one}, [],
       {xqerl_fn, 'analyze-string', 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "apply"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, apply, 3}, 2,
       [{xqSeqType, {xqFunTest, function, [], undefined, any, any}, one},
        {xqSeqType, {is_array, '*'}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "available-environment-variables"},
       {xqSeqType, 'xs:string', zero_or_many}, [],
       {xqerl_fn, 'available-environment-variables', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "avg"},
       {xqSeqType, 'xs:anyAtomicType', zero_or_one}, [], {xqerl_fn, avg, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "base-uri"},
       {xqSeqType, 'xs:anyURI', zero_or_one}, [], {xqerl_fn, 'base-uri', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "base-uri"},
       {xqSeqType, 'xs:anyURI', zero_or_one}, [], {xqerl_fn, 'base-uri', 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "boolean"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, boolean, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "ceiling"},
       {xqSeqType, 'xs:numeric', zero_or_one}, [], {xqerl_fn, ceiling, 2}, 1,
       [{xqSeqType, 'xs:numeric', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "codepoint-equal"},
       {xqSeqType, 'xs:boolean', zero_or_one}, [], {xqerl_fn, 'codepoint-equal', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "codepoints-to-string"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'codepoints-to-string', 2}, 1,
       [{xqSeqType, 'xs:integer', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "collation-key"},
       {xqSeqType, 'xs:base64Binary', one}, [], {xqerl_fn, 'collation-key', 2}, 1,
       [{xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "collation-key"},
       {xqSeqType, 'xs:base64Binary', one}, [], {xqerl_fn, 'collation-key', 3}, 2,
       [{xqSeqType, 'xs:string', one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "collection"},
       {xqSeqType, item, one}, [], {xqerl_fn, collection, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "collection"},
       {xqSeqType, item, one}, [], {xqerl_fn, collection, 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "compare"},
       {xqSeqType, 'xs:integer', zero_or_one}, [], {xqerl_fn, compare, 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "compare"},
       {xqSeqType, 'xs:integer', zero_or_one}, [], {xqerl_fn, compare, 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "concat"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, concat, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "contains"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, contains, 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "contains"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, contains, 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "contains-token"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'contains-token', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_many}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "contains-token"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'contains-token', 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_many}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "count"},
       {xqSeqType, 'xs:integer', one}, [], {xqerl_fn, count, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "current-date"},
       {xqSeqType, 'xs:date', one}, [], {xqerl_fn, 'current-date', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "current-dateTime"},
       {xqSeqType, 'xs:dateTime', one}, [], {xqerl_fn, 'current-dateTime', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "current-time"},
       {xqSeqType, 'xs:time', one}, [], {xqerl_fn, 'current-time', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "data"},
       {xqSeqType, 'xs:anyAtomicType', zero_or_many}, [], {xqerl_fn, data, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "data"},
       {xqSeqType, 'xs:anyAtomicType', zero_or_many}, [], {xqerl_fn, data, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "dateTime"},
       {xqSeqType, 'xs:dateTime', zero_or_one}, [], {xqerl_fn, dateTime, 3}, 2,
       [{xqSeqType, 'xs:date', zero_or_one}, {xqSeqType, 'xs:time', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "day-from-date"},
       {xqSeqType, 'xs:integer', zero_or_one}, [], {xqerl_fn, 'day-from-date', 2}, 1,
       [{xqSeqType, 'xs:date', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "day-from-dateTime"},
       {xqSeqType, 'xs:integer', zero_or_one}, [], {xqerl_fn, 'day-from-dateTime', 2},
       1, [{xqSeqType, 'xs:dateTime', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "days-from-duration"},
       {xqSeqType, 'xs:integer', zero_or_one}, [], {xqerl_fn, 'days-from-duration', 2},
       1, [{xqSeqType, 'xs:duration', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "deep-equal"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'deep-equal', 3}, 2,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "deep-equal"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'deep-equal', 4}, 3,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, item, zero_or_many},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "default-collation"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'default-collation', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "default-language"},
       {xqSeqType, 'xs:language', one}, [], {xqerl_fn, 'default-language', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "distinct-values"},
       {xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
       {xqerl_fn, 'distinct-values', 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "distinct-values"},
       {xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
       {xqerl_fn, 'distinct-values', 3}, 2,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "doc"},
       {xqSeqType, {xqKindTest, 'document-node', undefined, undefined, undefined},
        zero_or_one},
       [], {xqerl_fn, doc, 2}, 1, [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "doc-available"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'doc-available', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "document-uri"},
       {xqSeqType, 'xs:anyURI', zero_or_one}, [], {xqerl_fn, 'document-uri', 1}, 0,
       []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "document-uri"},
       {xqSeqType, 'xs:anyURI', zero_or_one}, [], {xqerl_fn, 'document-uri', 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "element-with-id"},
       {xqSeqType, {xqKindTest, element, undefined, undefined, undefined},
        zero_or_many},
       [], {xqerl_fn, 'element-with-id', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "element-with-id"},
       {xqSeqType, {xqKindTest, element, undefined, undefined, undefined},
        zero_or_many},
       [], {xqerl_fn, 'element-with-id', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_many},
        {xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "empty"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, empty, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "encode-for-uri"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'encode-for-uri', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "ends-with"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'ends-with', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "ends-with"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'ends-with', 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "environment-variable"},
       {xqSeqType, 'xs:string', zero_or_one}, [],
       {xqerl_fn, 'environment-variable', 2}, 1, [{xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "error"},
       {xqSeqType, 'empty-sequence', none}, [], {xqerl_fn, error, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "error"},
       {xqSeqType, 'empty-sequence', none}, [], {xqerl_fn, error, 2}, 1,
       [{xqSeqType, 'xs:QName', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "error"},
       {xqSeqType, 'empty-sequence', none}, [], {xqerl_fn, error, 3}, 2,
       [{xqSeqType, 'xs:QName', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "error"},
       {xqSeqType, 'empty-sequence', none}, [], {xqerl_fn, error, 4}, 3,
       [{xqSeqType, 'xs:QName', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "escape-html-uri"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'escape-html-uri', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "exactly-one"},
       {xqSeqType, item, one}, [], {xqerl_fn, 'exactly-one', 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "exists"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, exists, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "false"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, false, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "filter"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, filter, 3}, 2,
       [{xqSeqType, item, zero_or_many},
        {xqSeqType,
         {xqFunTest, function, [],
          {qname, "http://www.w3.org/2005/xpath-functions", "fn", "filter"},
          [{xqSeqType, item, one}], {xqSeqType, 'xs:boolean', one}},
         one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "floor"},
       {xqSeqType, 'xs:numeric', zero_or_one}, [], {xqerl_fn, floor, 2}, 1,
       [{xqSeqType, 'xs:numeric', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "fold-left"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, 'fold-left', 4}, 3,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, item, zero_or_many},
        {xqSeqType,
         {xqFunTest, function, [],
          {qname, "http://www.w3.org/2005/xpath-functions", "fn", "fold-left"},
          [{xqSeqType, item, zero_or_many}, {xqSeqType, item, one}],
          {xqSeqType, item, zero_or_many}},
         one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "fold-right"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, 'fold-right', 4}, 3,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, item, zero_or_many},
        {xqSeqType,
         {xqFunTest, function, [],
          {qname, "http://www.w3.org/2005/xpath-functions", "fn", "fold-right"},
          [{xqSeqType, item, zero_or_many}, {xqSeqType, item, one}],
          {xqSeqType, item, zero_or_many}},
         one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "for-each"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, 'for-each', 3}, 2,
       [{xqSeqType, item, zero_or_many},
        {xqSeqType,
         {xqFunTest, function, [],
          {qname, "http://www.w3.org/2005/xpath-functions", "fn", "for-each"},
          [{xqSeqType, item, one}], {xqSeqType, item, zero_or_many}},
         zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "for-each-pair"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, 'for-each-pair', 4}, 3,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, item, zero_or_many},
        {xqSeqType,
         {xqFunTest, function, [],
          {qname, "http://www.w3.org/2005/xpath-functions", "fn", "for-each-pair"},
          [{xqSeqType, item, one}, {xqSeqType, item, one}],
          {xqSeqType, item, zero_or_many}},
         zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "format-date"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, 'format-date', 3}, 2,
       [{xqSeqType, 'xs:date', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "format-date"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, 'format-date', 6}, 5,
       [{xqSeqType, 'xs:date', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "format-dateTime"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, 'format-dateTime', 3}, 2,
       [{xqSeqType, 'xs:dateTime', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "format-dateTime"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, 'format-dateTime', 6}, 5,
       [{xqSeqType, 'xs:dateTime', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "format-integer"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'format-integer', 3}, 2,
       [{xqSeqType, 'xs:integer', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "format-integer"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'format-integer', 4}, 3,
       [{xqSeqType, 'xs:integer', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "format-number"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'format-number', 3}, 2,
       [{xqSeqType, 'xs:numeric', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "format-number"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'format-number', 4}, 3,
       [{xqSeqType, 'xs:numeric', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "format-time"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, 'format-time', 3}, 2,
       [{xqSeqType, 'xs:time', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "format-time"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, 'format-time', 6}, 5,
       [{xqSeqType, 'xs:time', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "function-arity"},
       {xqSeqType, 'xs:integer', one}, [], {xqerl_fn, 'function-arity', 2}, 1,
       [{xqSeqType, {xqFunTest, function, [], undefined, any, any}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "function-lookup"},
       {xqSeqType, {xqFunTest, function, [], undefined, any, any}, zero_or_one}, [],
       {xqerl_fn, 'function-lookup', 3}, 2,
       [{xqSeqType, 'xs:QName', one}, {xqSeqType, 'xs:integer', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "function-name"},
       {xqSeqType, 'xs:QName', zero_or_one}, [], {xqerl_fn, 'function-name', 2}, 1,
       [{xqSeqType, {xqFunTest, function, [], undefined, any, any}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "generate-id"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'generate-id', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "generate-id"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'generate-id', 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "has-children"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'has-children', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "has-children"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'has-children', 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "head"},
       {xqSeqType, item, zero_or_one}, [], {xqerl_fn, head, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "hours-from-dateTime"},
       {xqSeqType, 'xs:integer', zero_or_one}, [],
       {xqerl_fn, 'hours-from-dateTime', 2}, 1,
       [{xqSeqType, 'xs:dateTime', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "hours-from-duration"},
       {xqSeqType, 'xs:integer', zero_or_one}, [],
       {xqerl_fn, 'hours-from-duration', 2}, 1,
       [{xqSeqType, 'xs:duration', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "hours-from-time"},
       {xqSeqType, 'xs:integer', zero_or_one}, [], {xqerl_fn, 'hours-from-time', 2}, 1,
       [{xqSeqType, 'xs:time', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "id"},
       {xqSeqType, {xqKindTest, element, undefined, undefined, undefined},
        zero_or_many},
       [], {xqerl_fn, id, 2}, 1, [{xqSeqType, 'xs:string', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "id"},
       {xqSeqType, {xqKindTest, element, undefined, undefined, undefined},
        zero_or_many},
       [], {xqerl_fn, id, 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_many},
        {xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "idref"},
       {xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, zero_or_many},
       [], {xqerl_fn, idref, 2}, 1, [{xqSeqType, 'xs:string', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "idref"},
       {xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, zero_or_many},
       [], {xqerl_fn, idref, 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_many},
        {xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "implicit-timezone"},
       {xqSeqType, 'xs:dayTimeDuration', one}, [], {xqerl_fn, 'implicit-timezone', 1},
       0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "index-of"},
       {xqSeqType, 'xs:integer', zero_or_many}, [], {xqerl_fn, 'index-of', 3}, 2,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many},
        {xqSeqType, 'xs:anyAtomicType', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "index-of"},
       {xqSeqType, 'xs:integer', zero_or_many}, [], {xqerl_fn, 'index-of', 4}, 3,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many},
        {xqSeqType, 'xs:anyAtomicType', one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "innermost"},
       {xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, zero_or_many},
       [], {xqerl_fn, innermost, 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "in-scope-prefixes"},
       {xqSeqType, 'xs:string', zero_or_many}, [], {xqerl_fn, 'in-scope-prefixes', 2},
       1, [{xqSeqType, {xqKindTest, element, undefined, undefined, undefined}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "insert-before"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, 'insert-before', 4}, 3,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, 'xs:integer', one},
        {xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "iri-to-uri"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'iri-to-uri', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "json-doc"},
       {xqSeqType, item, zero_or_one}, [], {xqerl_fn, 'json-doc', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "json-doc"},
       {xqSeqType, item, zero_or_one}, [], {xqerl_fn, 'json-doc', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, {is_map, '*'}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "json-to-xml"},
       {xqSeqType, {xqKindTest, 'document-node', undefined, undefined, undefined},
        one},
       [], {xqerl_fn, 'json-to-xml', 2}, 1, [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "json-to-xml"},
       {xqSeqType, {xqKindTest, 'document-node', undefined, undefined, undefined},
        one},
       [], {xqerl_fn, 'json-to-xml', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, {is_map, '*'}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "lang"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, lang, 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "lang"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, lang, 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "last"},
       {xqSeqType, 'xs:integer', one}, [], {xqerl_fn, last, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "load-xquery-module"},
       {xqSeqType, {is_map, '*'}, one}, [], {xqerl_fn, 'load-xquery-module', 2}, 1,
       [{xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "load-xquery-module"},
       {xqSeqType, {is_map, '*'}, one}, [], {xqerl_fn, 'load-xquery-module', 3}, 2,
       [{xqSeqType, 'xs:string', one}, {xqSeqType, {is_map, '*'}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "local-name"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'local-name', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "local-name"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'local-name', 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "local-name-from-QName"},
       {xqSeqType, 'xs:NCName', zero_or_one}, [],
       {xqerl_fn, 'local-name-from-QName', 2}, 1,
       [{xqSeqType, 'xs:QName', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "lower-case"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'lower-case', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "matches"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, matches, 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "matches"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, matches, 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "max"},
       {xqSeqType, 'xs:anyAtomicType', zero_or_one}, [], {xqerl_fn, max, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "max"},
       {xqSeqType, 'xs:anyAtomicType', zero_or_one}, [], {xqerl_fn, max, 3}, 2,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "min"},
       {xqSeqType, 'xs:anyAtomicType', zero_or_one}, [], {xqerl_fn, min, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "min"},
       {xqSeqType, 'xs:anyAtomicType', zero_or_one}, [], {xqerl_fn, min, 3}, 2,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "minutes-from-dateTime"},
       {xqSeqType, 'xs:integer', zero_or_one}, [],
       {xqerl_fn, 'minutes-from-dateTime', 2}, 1,
       [{xqSeqType, 'xs:dateTime', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "minutes-from-duration"},
       {xqSeqType, 'xs:integer', zero_or_one}, [],
       {xqerl_fn, 'minutes-from-duration', 2}, 1,
       [{xqSeqType, 'xs:duration', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "minutes-from-time"},
       {xqSeqType, 'xs:integer', zero_or_one}, [], {xqerl_fn, 'minutes-from-time', 2},
       1, [{xqSeqType, 'xs:time', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "month-from-date"},
       {xqSeqType, 'xs:integer', zero_or_one}, [], {xqerl_fn, 'month-from-date', 2}, 1,
       [{xqSeqType, 'xs:date', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "month-from-dateTime"},
       {xqSeqType, 'xs:integer', zero_or_one}, [],
       {xqerl_fn, 'month-from-dateTime', 2}, 1,
       [{xqSeqType, 'xs:dateTime', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "months-from-duration"},
       {xqSeqType, 'xs:integer', zero_or_one}, [],
       {xqerl_fn, 'months-from-duration', 2}, 1,
       [{xqSeqType, 'xs:duration', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "name"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, name, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "name"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, name, 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "namespace-uri"},
       {xqSeqType, 'xs:anyURI', one}, [], {xqerl_fn, 'namespace-uri', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "namespace-uri"},
       {xqSeqType, 'xs:anyURI', one}, [], {xqerl_fn, 'namespace-uri', 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "namespace-uri-for-prefix"},
       {xqSeqType, 'xs:anyURI', zero_or_one}, [],
       {xqerl_fn, 'namespace-uri-for-prefix', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, {xqKindTest, element, undefined, undefined, undefined}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "namespace-uri-from-QName"},
       {xqSeqType, 'xs:anyURI', zero_or_one}, [],
       {xqerl_fn, 'namespace-uri-from-QName', 2}, 1,
       [{xqSeqType, 'xs:QName', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "nilled"},
       {xqSeqType, 'xs:boolean', zero_or_one}, [], {xqerl_fn, nilled, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "nilled"},
       {xqSeqType, 'xs:boolean', zero_or_one}, [], {xqerl_fn, nilled, 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "node-name"},
       {xqSeqType, 'xs:QName', zero_or_one}, [], {xqerl_fn, 'node-name', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "node-name"},
       {xqSeqType, 'xs:QName', zero_or_one}, [], {xqerl_fn, 'node-name', 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "normalize-space"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'normalize-space', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "normalize-space"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'normalize-space', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "normalize-unicode"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'normalize-unicode', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "normalize-unicode"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'normalize-unicode', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "not"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'not', 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "number"},
       {xqSeqType, 'xs:double', one}, [], {xqerl_fn, number, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "number"},
       {xqSeqType, 'xs:double', one}, [], {xqerl_fn, number, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "one-or-more"},
       {xqSeqType, item, one_or_many}, [], {xqerl_fn, 'one-or-more', 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "outermost"},
       {xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, zero_or_many},
       [], {xqerl_fn, outermost, 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "parse-ietf-date"},
       {xqSeqType, 'xs:dateTime', zero_or_one}, [], {xqerl_fn, 'parse-ietf-date', 2},
       1, [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "parse-json"},
       {xqSeqType, item, zero_or_one}, [], {xqerl_fn, 'parse-json', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "parse-json"},
       {xqSeqType, item, zero_or_one}, [], {xqerl_fn, 'parse-json', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, {is_map, '*'}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "parse-xml"},
       {xqSeqType,
        {is_document, {xqKindTest, element, undefined, undefined, undefined}}, one},
       [], {xqerl_fn, 'parse-xml', 2}, 1, [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "parse-xml-fragment"},
       {xqSeqType, {xqKindTest, 'document-node', undefined, undefined, undefined},
        zero_or_one},
       [], {xqerl_fn, 'parse-xml-fragment', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "path"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, path, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "path"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, path, 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "position"},
       {xqSeqType, 'xs:integer', one}, [], {xqerl_fn, position, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "prefix-from-QName"},
       {xqSeqType, 'xs:NCName', zero_or_one}, [], {xqerl_fn, 'prefix-from-QName', 2},
       1, [{xqSeqType, 'xs:QName', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "QName"},
       {xqSeqType, 'xs:QName', one}, [], {xqerl_fn, 'QName', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "random-number-generator"},
       {xqSeqType, {is_map, {'map-type', 'xs:string', {xqSeqType, item, one}}}, one},
       [], {xqerl_fn, 'random-number-generator', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "random-number-generator"},
       {xqSeqType, {is_map, {'map-type', 'xs:string', {xqSeqType, item, one}}}, one},
       [], {xqerl_fn, 'random-number-generator', 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "remove"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, remove, 3}, 2,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, 'xs:integer', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "replace"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, replace, 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "replace"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, replace, 5}, 4,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "resolve-QName"},
       {xqSeqType, 'xs:QName', zero_or_one}, [], {xqerl_fn, 'resolve-QName', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, {xqKindTest, element, undefined, undefined, undefined}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "resolve-uri"},
       {xqSeqType, 'xs:anyURI', zero_or_one}, [], {xqerl_fn, 'resolve-uri', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "resolve-uri"},
       {xqSeqType, 'xs:anyURI', zero_or_one}, [], {xqerl_fn, 'resolve-uri', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "reverse"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, reverse, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "root"},
       {xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, one}, [],
       {xqerl_fn, root, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "root"},
       {xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, zero_or_one},
       [], {xqerl_fn, root, 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "round"},
       {xqSeqType, 'xs:numeric', zero_or_one}, [], {xqerl_fn, round, 2}, 1,
       [{xqSeqType, 'xs:numeric', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "round"},
       {xqSeqType, 'xs:numeric', zero_or_one}, [], {xqerl_fn, round, 3}, 2,
       [{xqSeqType, 'xs:numeric', zero_or_one}, {xqSeqType, 'xs:integer', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "round-half-to-even"},
       {xqSeqType, 'xs:numeric', zero_or_one}, [], {xqerl_fn, 'round-half-to-even', 2},
       1, [{xqSeqType, 'xs:numeric', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "round-half-to-even"},
       {xqSeqType, 'xs:numeric', zero_or_one}, [], {xqerl_fn, 'round-half-to-even', 3},
       2, [{xqSeqType, 'xs:numeric', zero_or_one}, {xqSeqType, 'xs:integer', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "seconds-from-dateTime"},
       {xqSeqType, 'xs:decimal', zero_or_one}, [],
       {xqerl_fn, 'seconds-from-dateTime', 2}, 1,
       [{xqSeqType, 'xs:dateTime', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "seconds-from-duration"},
       {xqSeqType, 'xs:decimal', zero_or_one}, [],
       {xqerl_fn, 'seconds-from-duration', 2}, 1,
       [{xqSeqType, 'xs:duration', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "seconds-from-time"},
       {xqSeqType, 'xs:decimal', zero_or_one}, [], {xqerl_fn, 'seconds-from-time', 2},
       1, [{xqSeqType, 'xs:time', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "serialize"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, serialize, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "serialize"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, serialize, 3}, 2,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, item, zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "sort"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, sort, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "sort"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, sort, 3}, 2,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "sort"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, sort, 4}, 3,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType,
         {is_function, {annotations, undefined},
          {{xqSeqType, 'xs:anyAtomicType', zero_or_many},
      {parameters, [{xqSeqType, item, one}]}}},
         one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "starts-with"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'starts-with', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "starts-with"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'starts-with', 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "static-base-uri"},
       {xqSeqType, 'xs:anyURI', zero_or_one}, [], {xqerl_fn, 'static-base-uri', 1}, 0,
       []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "string"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, string, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "string"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, string, 2}, 1,
       [{xqSeqType, item, zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "string-join"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'string-join', 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "string-join"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'string-join', 3}, 2,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "string-length"},
       {xqSeqType, 'xs:integer', one}, [], {xqerl_fn, 'string-length', 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "string-length"},
       {xqSeqType, 'xs:integer', one}, [], {xqerl_fn, 'string-length', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "string-to-codepoints"},
       {xqSeqType, 'xs:integer', zero_or_many}, [],
       {xqerl_fn, 'string-to-codepoints', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "subsequence"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, subsequence, 3}, 2,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, 'xs:double', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "subsequence"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, subsequence, 4}, 3,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, 'xs:double', one},
        {xqSeqType, 'xs:double', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "substring"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, substring, 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:double', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "substring"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, substring, 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:double', one},
        {xqSeqType, 'xs:double', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "substring-after"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'substring-after', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "substring-after"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'substring-after', 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "substring-before"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'substring-before', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "substring-before"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'substring-before', 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', zero_or_one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "sum"},
       {xqSeqType, 'xs:anyAtomicType', one}, [], {xqerl_fn, sum, 2}, 1,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "sum"},
       {xqSeqType, 'xs:anyAtomicType', zero_or_one}, [], {xqerl_fn, sum, 3}, 2,
       [{xqSeqType, 'xs:anyAtomicType', zero_or_many},
        {xqSeqType, 'xs:anyAtomicType', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "tail"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, tail, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "timezone-from-date"},
       {xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
       {xqerl_fn, 'timezone-from-date', 2}, 1, [{xqSeqType, 'xs:date', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "timezone-from-dateTime"},
       {xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
       {xqerl_fn, 'timezone-from-dateTime', 2}, 1,
       [{xqSeqType, 'xs:dateTime', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "timezone-from-time"},
       {xqSeqType, 'xs:dayTimeDuration', zero_or_one}, [],
       {xqerl_fn, 'timezone-from-time', 2}, 1, [{xqSeqType, 'xs:time', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "tokenize"},
       {xqSeqType, 'xs:string', zero_or_many}, [], {xqerl_fn, tokenize, 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "tokenize"},
       {xqSeqType, 'xs:string', zero_or_many}, [], {xqerl_fn, tokenize, 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "tokenize"},
       {xqSeqType, 'xs:string', zero_or_many}, [], {xqerl_fn, tokenize, 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "trace"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, trace, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "trace"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, trace, 3}, 2,
       [{xqSeqType, item, zero_or_many}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "transform"},
       {xqSeqType, {is_map, '*'}, one}, [], {xqerl_fn, transform, 2}, 1,
       [{xqSeqType, {is_map, '*'}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "translate"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, translate, 4}, 3,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one},
        {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "true"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, true, 1}, 0, []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "unordered"},
       {xqSeqType, item, zero_or_many}, [], {xqerl_fn, unordered, 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "unparsed-text"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, 'unparsed-text', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "unparsed-text"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, 'unparsed-text', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "unparsed-text-available"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'unparsed-text-available', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn",
        "unparsed-text-available"},
       {xqSeqType, 'xs:boolean', one}, [], {xqerl_fn, 'unparsed-text-available', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "unparsed-text-lines"},
       {xqSeqType, 'xs:string', zero_or_many}, [],
       {xqerl_fn, 'unparsed-text-lines', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "unparsed-text-lines"},
       {xqSeqType, 'xs:string', zero_or_many}, [],
       {xqerl_fn, 'unparsed-text-lines', 3}, 2,
       [{xqSeqType, 'xs:string', zero_or_one}, {xqSeqType, 'xs:string', one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "upper-case"},
       {xqSeqType, 'xs:string', one}, [], {xqerl_fn, 'upper-case', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "uri-collection"},
       {xqSeqType, 'xs:anyURI', zero_or_many}, [], {xqerl_fn, 'uri-collection', 1}, 0,
       []},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "uri-collection"},
       {xqSeqType, 'xs:anyURI', zero_or_many}, [], {xqerl_fn, 'uri-collection', 2}, 1,
       [{xqSeqType, 'xs:string', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "xml-to-json"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, 'xml-to-json', 2}, 1,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined},
         zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "xml-to-json"},
       {xqSeqType, 'xs:string', zero_or_one}, [], {xqerl_fn, 'xml-to-json', 3}, 2,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, zero_or_one},
        {xqSeqType, {is_map, '*'}, one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "year-from-date"},
       {xqSeqType, 'xs:integer', zero_or_one}, [], {xqerl_fn, 'year-from-date', 2}, 1,
       [{xqSeqType, 'xs:date', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "year-from-dateTime"},
       {xqSeqType, 'xs:integer', zero_or_one}, [], {xqerl_fn, 'year-from-dateTime', 2},
       1, [{xqSeqType, 'xs:dateTime', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "years-from-duration"},
       {xqSeqType, 'xs:integer', zero_or_one}, [],
       {xqerl_fn, 'years-from-duration', 2}, 1,
       [{xqSeqType, 'xs:duration', zero_or_one}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "zero-or-one"},
       {xqSeqType, item, zero_or_one}, [], {xqerl_fn, 'zero-or-one', 2}, 1,
       [{xqSeqType, item, zero_or_many}]},
      {{qname, "http://www.w3.org/2005/xpath-functions", "fn", "put"},
       {xqSeqType, 'empty-sequence', one},
       [{annotation, {{qname, "http://www.w3.org/2012/xquery", [], "updating"}, []}}],
       {xqerl_fn, put, 3}, 2,
       [{xqSeqType, {xqKindTest, node, undefined, undefined, undefined}, one},
        {xqSeqType, 'xs:string', one}]}],
      namespaces =>
     [{xqNamespace, 'no-namespace', []},
      {xqNamespace, "http://www.w3.org/2005/xquery-local-functions", "local"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions", "fn"},
      {xqNamespace, "http://www.w3.org/2001/XMLSchema-instance", "xsi"},
      {xqNamespace, "http://www.w3.org/XML/1998/namespace", "xml"},
      {xqNamespace, "http://www.w3.org/2001/XMLSchema", "xs"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions/math", "math"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions/map", "map"},
      {xqNamespace, "http://www.w3.org/2005/xpath-functions/array", "array"},
      {xqNamespace, "http://www.w3.org/2005/xqt-errors", "err"}]}.

'var$^5'(Ctx0) ->
    xqerl_operators:subtract({xqAtomicValue, 'xs:integer', 8},
              xqerl_xs:xs_integer(Ctx0,
                   xqerl_fn:substring(Ctx0, erlang:get('var$^1'),
                            xqerl_types:cast_as_seq({xqAtomicValue, 'xs:integer', 2},
                                     {xqSeqType, 'xs:double', one}),
                            xqerl_types:cast_as_seq({xqAtomicValue, 'xs:integer', 1},
                                     {xqSeqType, 'xs:double', one})))).

'var$^4'(Ctx0) ->
    xqerl_xs:xs_integer(Ctx0,
         xqerl_fn:translate(Ctx0,
                  xqerl_fn:substring(Ctx0, erlang:get('var$^1'),
                           xqerl_types:cast_as_seq({xqAtomicValue, 'xs:integer', 1},
                                    {xqSeqType, 'xs:double', one}),
                           xqerl_types:cast_as_seq({xqAtomicValue, 'xs:integer', 1},
                                    {xqSeqType, 'xs:double', one})),
                  {xqAtomicValue, 'xs:string', "abcdefgh"},
                  {xqAtomicValue, 'xs:string', "01234567"})).

'var$^3'(Ctx0) -> xqerl_xs:xs_integer(Ctx0, erlang:get('var$^2')).

'var$^2'(Ctx0) -> {xqAtomicValue, 'xs:string', "64"}.

'var$^1'(Ctx0) -> {xqAtomicValue, 'xs:string', "a1"}.

'fx$^57'(Ctx0, Param__var_52) ->
    Ctx__1 = xqerl_context:set_empty_context_item(Ctx0),
    xqerl_node:new_fragment(Ctx__1,
             {xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "html"},
              undefined, [], [], [{xqNamespace, 'no-namespace', []}], undefined, 'xs:anyType',
              [], undefined,
              [{xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "head"},
                undefined, [], [], [{xqNamespace, 'no-namespace', []}], undefined, 'xs:anyType',
                [], undefined,
                {xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "title"},
            undefined, [], [], [{xqNamespace, 'no-namespace', []}], undefined, 'xs:anyType',
            [], undefined,
            {xqTextNode, undefined, undefined, false, undefined,
             {xqAtomicValue, 'xs:string', "Knight's tour"}}}},
               {xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "body"},
                undefined, [], [], [{xqNamespace, 'no-namespace', []}], undefined, 'xs:anyType',
                [], undefined,
                {xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "div"},
            undefined, [],
            {xqAttributeNode, undefined, {qname, 'no-namespace', [], "align"}, undefined,
             undefined, undefined, undefined, [{xqAtomicValue, 'xs:string', "center"}]},
            [{xqNamespace, 'no-namespace', []}], undefined, 'xs:anyType', [], undefined,
            [{xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "h1"},
              undefined, [], [], [{xqNamespace, 'no-namespace', []}], undefined, 'xs:anyType',
              [], undefined,
              [{xqTextNode, undefined, undefined, false, undefined,
                {xqAtomicValue, 'xs:string', "Knight's tour starting at "}},
               [erlang:get('var$^1')]]},
             {xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "table"},
              undefined, [],
              [{xqAttributeNode, undefined, {qname, 'no-namespace', [], "cellpadding"},
                undefined, undefined, undefined, undefined,
                [{xqAtomicValue, 'xs:string', "4"}]},
               {xqAttributeNode, undefined, {qname, 'no-namespace', [], "border"}, undefined,
                undefined, undefined, undefined, [{xqAtomicValue, 'xs:string', "1"}]}],
              [{xqNamespace, 'no-namespace', []}], undefined, 'xs:anyType', [], undefined,
              [begin
                 VarTup__1 = fun () ->
                      fun IterLoop__1(_, [], Local__1) -> Local__1;
                          IterLoop__1(Local__2, [XQ__var_53 | Local__3], Local__1) ->
                         IterLoop__1(Local__2 + 1, Local__3,
                                xqerl_flwor:stream_append({XQ__var_53}, Local__1));
                          IterLoop__1(Local__2, XQ__var_53, Local__1) ->
                         IterLoop__1(Local__2 + 1, [],
                                xqerl_flwor:stream_append({XQ__var_53}, Local__1))
                      end(1,
                          xqerl_seq3:range({xqAtomicValue, 'xs:integer', 0},
                                 {xqAtomicValue, 'xs:integer', 7}),
                          xqerl_flwor:stream_new())
                   end(),
                 Local__14 = fun IterLoop__5(Iter__9) ->
                      case xqerl_flwor:stream_next(Iter__9) of
                        none -> [];
                        {_, {XQ__var_53}, Iter__10} ->
                            [{xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "tr"},
                         undefined, [], [], [{xqNamespace, 'no-namespace', []}], undefined,
                         'xs:anyType', [], undefined,
                         [begin
                            VarTup__2 = fun () ->
                                 fun IterLoop__2(_, [], Local__5) -> Local__5;
                                     IterLoop__2(Local__6, [XQ__var_54 | Local__7],
                                       Local__5) ->
                                    IterLoop__2(Local__6 + 1, Local__7,
                                           begin
                                             XQ__var_55 =
                                            xqerl_seq3:ensure_zero_or_more(case
                                                         xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                                                            xqerl_operators:general_compare('=',
                                                                                        xqerl_operators:modulo(xqerl_operators:add(XQ__var_53,
                                                                                                     XQ__var_54),
                                                                                                {xqAtomicValue,
                                                                                                 'xs:integer',
                                                                                                 2}),
                                                                                        {xqAtomicValue,
                                                                                    'xs:integer',
                                                                                    1})))
                                                           of
                                                         {xqAtomicValue,
                                                          'xs:boolean',
                                                          true} ->
                                                             {xqAtomicValue,
                                                         'xs:string',
                                                         "xffff44"};
                                                         _ ->
                                                             {xqAtomicValue,
                                                         'xs:string',
                                                         "white"}
                                                       end),
                                             xqerl_flwor:stream_append({XQ__var_53,
                                                    XQ__var_54,
                                                    XQ__var_55},
                                                   Local__5)
                                           end);
                                     IterLoop__2(Local__6, XQ__var_54, Local__5) ->
                                    IterLoop__2(Local__6 + 1, [],
                                           begin
                                             XQ__var_55 =
                                            xqerl_seq3:ensure_zero_or_more(case
                                                         xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                                                            xqerl_operators:general_compare('=',
                                                                                        xqerl_operators:modulo(xqerl_operators:add(XQ__var_53,
                                                                                                     XQ__var_54),
                                                                                                {xqAtomicValue,
                                                                                                 'xs:integer',
                                                                                                 2}),
                                                                                        {xqAtomicValue,
                                                                                    'xs:integer',
                                                                                    1})))
                                                           of
                                                         {xqAtomicValue,
                                                          'xs:boolean',
                                                          true} ->
                                                             {xqAtomicValue,
                                                         'xs:string',
                                                         "xffff44"};
                                                         _ ->
                                                             {xqAtomicValue,
                                                         'xs:string',
                                                         "white"}
                                                       end),
                                             xqerl_flwor:stream_append({XQ__var_53,
                                                    XQ__var_54,
                                                    XQ__var_55},
                                                   Local__5)
                                           end)
                                 end(1,
                                     xqerl_seq3:range({xqAtomicValue, 'xs:integer',
                                             0},
                                            {xqAtomicValue, 'xs:integer',
                                             7}),
                                     xqerl_flwor:stream_new())
                              end(),
                            Local__13 = fun IterLoop__4(Iter__7) ->
                                 case xqerl_flwor:stream_next(Iter__7) of
                                   none -> [];
                                   {_, {XQ__var_53, XQ__var_54, XQ__var_55},
                                    Iter__8} ->
                                       [{xqElementNode, undefined, undefined,
                                    {qname, 'no-namespace', [], "td"},
                                    undefined, [],
                                    [{xqAttributeNode, undefined,
                                      {qname, 'no-namespace', [], "width"},
                                      undefined, undefined, undefined,
                                      undefined,
                                      [{xqAtomicValue, 'xs:string', "22"}]},
                                     {xqAttributeNode, undefined,
                                      {qname, 'no-namespace', [], "bgcolor"},
                                      undefined, undefined, undefined,
                                      undefined, [[XQ__var_55]]},
                                     {xqAttributeNode, undefined,
                                      {qname, 'no-namespace', [], "align"},
                                      undefined, undefined, undefined,
                                      undefined,
                                      [{xqAtomicValue, 'xs:string',
                                        "center"}]}],
                                    [{xqNamespace, 'no-namespace', []}],
                                    undefined, 'xs:anyType', [], undefined,
                                    [begin
                                       VarTup__3 = fun () ->
                                                 begin
                                              XQ__var_56 = begin
                                                   Local__11 =
                                                       Param__var_52,
                                                   xqerl_seq3:position_filter(Ctx__1,
                                                               fun
                                                                 (Ctx__1) ->
                                                                xqerl_operators:add(xqerl_operators:add(xqerl_operators:multiply(XQ__var_53,
                                                                                         {xqAtomicValue,
                                                                                          'xs:integer',
                                                                                          8}),
                                                                               XQ__var_54),
                                                                          {xqAtomicValue,
                                                                           'xs:integer',
                                                                           1})
                                                               end,
                                                               Local__11)
                                                      end,
                                              xqerl_flwor:stream_append({XQ__var_53,
                                                          XQ__var_54,
                                                          XQ__var_55,
                                                          XQ__var_56},
                                                         xqerl_flwor:stream_new())
                                                 end
                                              end(),
                                       Local__12 = fun IterLoop__3(Iter__5) ->
                                                 case
                                              xqerl_flwor:stream_next(Iter__5)
                                                of
                                              none -> [];
                                              {_,
                                               {XQ__var_53,
                                                XQ__var_54,
                                                XQ__var_55,
                                                XQ__var_56},
                                               Iter__6} ->
                                                  [case
                                                xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                                                   xqerl_fn:boolean(Ctx__1,
                                                                          xqerl_operators:eff_bool_val(xqerl_operators:general_compare('!=',
                                                                                               erlang:get('var$^3'),
                                                                                               {xqAtomicValue,
                                                                                                'xs:integer',
                                                                                                64}))
                                                                            andalso
                                                                            xqerl_operators:eff_bool_val(xqerl_operators:general_compare('=',
                                                                                                 XQ__var_56,
                                                                                                 erlang:get('var$^3'))))))
                                                  of
                                                {xqAtomicValue,
                                                 'xs:boolean',
                                                 true} ->
                                                    {xqElementNode,
                                                     undefined,
                                                     undefined,
                                                     {qname,
                                                      'no-namespace',
                                                      [],
                                                      "b"},
                                                     undefined,
                                                     [], [],
                                                     [{xqNamespace,
                                                       'no-namespace',
                                                       []}],
                                                     undefined,
                                                     'xs:anyType',
                                                     [],
                                                     undefined,
                                                     [XQ__var_56]};
                                                _ ->
                                                    case
                                                      xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                                                    xqerl_operators:general_compare('=',
                                                                                XQ__var_56,
                                                                                {xqAtomicValue,
                                                                                 'xs:integer',
                                                                                 0})))
                                                   of
                                                      {xqAtomicValue,
                                                       'xs:boolean',
                                                       true} ->
                                                     {xqAtomicValue,
                                                      'xs:string',
                                                      "�"};
                                                      _ ->
                                                     XQ__var_56
                                                    end
                                                   end
                                                   | IterLoop__3(Iter__6)]
                                                 end
                                              end(xqerl_flwor:stream_iter(VarTup__3)),
                                       xqerl_seq3:flatten(Local__12)
                                     end]}
                                        | IterLoop__4(Iter__8)]
                                 end
                              end(xqerl_flwor:stream_iter(VarTup__2)),
                            xqerl_seq3:flatten(Local__13)
                          end]}
                        | IterLoop__5(Iter__10)]
                      end
                   end(xqerl_flwor:stream_iter(VarTup__1)),
                 xqerl_seq3:flatten(Local__14)
               end]},
             {xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "p"},
              undefined, [], [], [{xqNamespace, 'no-namespace', []}], undefined, 'xs:anyType',
              [], undefined,
              [case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                  xqerl_operators:general_compare('!=',
                                              erlang:get('var$^3'),
                                              {xqAtomicValue,
                                               'xs:integer', 64})))
                   of
                 {xqAtomicValue, 'xs:boolean', true} ->
                {xqElementNode, undefined, undefined, {qname, 'no-namespace', [], "a"},
                 undefined, [],
                 {xqAttributeNode, undefined, {qname, 'no-namespace', [], "href"}, undefined,
                  undefined, undefined, undefined,
                  [{xqAtomicValue, 'xs:string', "Tour?start="}, [erlang:get('var$^1')],
                   {xqAtomicValue, 'xs:string', "&end="},
                   [xqerl_operators:add(erlang:get('var$^3'), {xqAtomicValue, 'xs:integer', 1})]]},
                 [{xqNamespace, 'no-namespace', []}], undefined, 'xs:anyType', [], undefined,
                 {xqTextNode, undefined, undefined, false, undefined,
                  {xqAtomicValue, 'xs:string', "Step"}}};
                 _ -> xqerl_seq3:empty()
               end]}]}}]}).

'fx$^51'(Ctx0, Param__var_47, Param__var_48) ->
    Ctx__1 = xqerl_context:set_empty_context_item(Ctx0),
    begin
      VarTup__4 = fun () ->
           begin
             XQ__var_49 = xqerl_seq3:ensure_one(xqerl_operators:idivide(Param__var_48,
                                     {xqAtomicValue, 'xs:integer', 8})),
             begin
               XQ__var_50 = xqerl_seq3:ensure_one(xqerl_operators:modulo(Param__var_48,
                                 {xqAtomicValue, 'xs:integer', 8})),
               xqerl_flwor:stream_append({XQ__var_49, XQ__var_50}, xqerl_flwor:stream_new())
             end
           end
        end(),
      Local__25 = fun IterLoop__6(Iter__15) ->
           case xqerl_flwor:stream_next(Iter__15) of
             none -> [];
             {_, {XQ__var_49, XQ__var_50}, Iter__16} ->
            [xqerl_seq3:flatten([case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                          xqerl_fn:boolean(Ctx__1,
                                                 xqerl_operators:eff_bool_val(xqerl_operators:general_compare('>',
                                                                      XQ__var_49,
                                                                      {xqAtomicValue,
                                                                       'xs:integer',
                                                                       1}))
                                              andalso
                                              xqerl_operators:eff_bool_val(xqerl_fn:boolean(Ctx__1,
                                                                   xqerl_operators:eff_bool_val(xqerl_operators:general_compare('>',
                                                                                        XQ__var_50,
                                                                                        {xqAtomicValue,
                                                                                         'xs:integer',
                                                                                         0}))
                                                                andalso
                                                                xqerl_operators:eff_bool_val(xqerl_operators:general_compare('=',
                                                                                          begin
                                                                                       Local__17 =
                                                                                           Param__var_47,
                                                                                       xqerl_seq3:position_filter(Ctx__1,
                                                                                                   fun
                                                                                                     (Ctx__1) ->
                                                                                                    xqerl_operators:add(xqerl_operators:subtract(Param__var_48,
                                                                                                                        {xqAtomicValue,
                                                                                                                         'xs:integer',
                                                                                                                         17}),
                                                                                                              {xqAtomicValue,
                                                                                                               'xs:integer',
                                                                                                               1})
                                                                                                   end,
                                                                                                   Local__17)
                                                                                          end,
                                                                                          {xqAtomicValue,
                                                                                           'xs:integer',
                                                                                           0})))))))
                      of
                         {xqAtomicValue, 'xs:boolean', true} ->
                        xqerl_operators:subtract(Param__var_48, {xqAtomicValue, 'xs:integer', 17});
                         _ -> xqerl_seq3:empty()
                       end,
                       case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                          xqerl_fn:boolean(Ctx__1,
                                                 xqerl_operators:eff_bool_val(xqerl_operators:general_compare('>',
                                                                      XQ__var_49,
                                                                      {xqAtomicValue,
                                                                       'xs:integer',
                                                                       1}))
                                              andalso
                                              xqerl_operators:eff_bool_val(xqerl_fn:boolean(Ctx__1,
                                                                   xqerl_operators:eff_bool_val(xqerl_operators:general_compare('<',
                                                                                        XQ__var_50,
                                                                                        {xqAtomicValue,
                                                                                         'xs:integer',
                                                                                         7}))
                                                                andalso
                                                                xqerl_operators:eff_bool_val(xqerl_operators:general_compare('=',
                                                                                          begin
                                                                                       Local__18 =
                                                                                           Param__var_47,
                                                                                       xqerl_seq3:position_filter(Ctx__1,
                                                                                                   fun
                                                                                                     (Ctx__2) ->
                                                                                                    xqerl_operators:add(xqerl_operators:subtract(Param__var_48,
                                                                                                                        {xqAtomicValue,
                                                                                                                         'xs:integer',
                                                                                                                         15}),
                                                                                                              {xqAtomicValue,
                                                                                                               'xs:integer',
                                                                                                               1})
                                                                                                   end,
                                                                                                   Local__18)
                                                                                          end,
                                                                                          {xqAtomicValue,
                                                                                           'xs:integer',
                                                                                           0})))))))
                      of
                         {xqAtomicValue, 'xs:boolean', true} ->
                        xqerl_operators:subtract(Param__var_48, {xqAtomicValue, 'xs:integer', 15});
                         _ -> xqerl_seq3:empty()
                       end,
                       case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                          xqerl_fn:boolean(Ctx__1,
                                                 xqerl_operators:eff_bool_val(xqerl_operators:general_compare('>',
                                                                      XQ__var_49,
                                                                      {xqAtomicValue,
                                                                       'xs:integer',
                                                                       0}))
                                              andalso
                                              xqerl_operators:eff_bool_val(xqerl_fn:boolean(Ctx__1,
                                                                   xqerl_operators:eff_bool_val(xqerl_operators:general_compare('>',
                                                                                        XQ__var_50,
                                                                                        {xqAtomicValue,
                                                                                         'xs:integer',
                                                                                         1}))
                                                                andalso
                                                                xqerl_operators:eff_bool_val(xqerl_operators:general_compare('=',
                                                                                          begin
                                                                                       Local__19 =
                                                                                           Param__var_47,
                                                                                       xqerl_seq3:position_filter(Ctx__1,
                                                                                                   fun
                                                                                                     (Ctx__3) ->
                                                                                                    xqerl_operators:add(xqerl_operators:subtract(Param__var_48,
                                                                                                                        {xqAtomicValue,
                                                                                                                         'xs:integer',
                                                                                                                         10}),
                                                                                                              {xqAtomicValue,
                                                                                                               'xs:integer',
                                                                                                               1})
                                                                                                   end,
                                                                                                   Local__19)
                                                                                          end,
                                                                                          {xqAtomicValue,
                                                                                           'xs:integer',
                                                                                           0})))))))
                      of
                         {xqAtomicValue, 'xs:boolean', true} ->
                        xqerl_operators:subtract(Param__var_48, {xqAtomicValue, 'xs:integer', 10});
                         _ -> xqerl_seq3:empty()
                       end,
                       case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                          xqerl_fn:boolean(Ctx__1,
                                                 xqerl_operators:eff_bool_val(xqerl_operators:general_compare('>',
                                                                      XQ__var_49,
                                                                      {xqAtomicValue,
                                                                       'xs:integer',
                                                                       0}))
                                              andalso
                                              xqerl_operators:eff_bool_val(xqerl_fn:boolean(Ctx__1,
                                                                   xqerl_operators:eff_bool_val(xqerl_operators:general_compare('<',
                                                                                        XQ__var_50,
                                                                                        {xqAtomicValue,
                                                                                         'xs:integer',
                                                                                         6}))
                                                                andalso
                                                                xqerl_operators:eff_bool_val(xqerl_operators:general_compare('=',
                                                                                          begin
                                                                                       Local__20 =
                                                                                           Param__var_47,
                                                                                       xqerl_seq3:position_filter(Ctx__1,
                                                                                                   fun
                                                                                                     (Ctx__4) ->
                                                                                                    xqerl_operators:add(xqerl_operators:subtract(Param__var_48,
                                                                                                                        {xqAtomicValue,
                                                                                                                         'xs:integer',
                                                                                                                         6}),
                                                                                                              {xqAtomicValue,
                                                                                                               'xs:integer',
                                                                                                               1})
                                                                                                   end,
                                                                                                   Local__20)
                                                                                          end,
                                                                                          {xqAtomicValue,
                                                                                           'xs:integer',
                                                                                           0})))))))
                      of
                         {xqAtomicValue, 'xs:boolean', true} ->
                        xqerl_operators:subtract(Param__var_48, {xqAtomicValue, 'xs:integer', 6});
                         _ -> xqerl_seq3:empty()
                       end,
                       case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                          xqerl_fn:boolean(Ctx__1,
                                                 xqerl_operators:eff_bool_val(xqerl_operators:general_compare('<',
                                                                      XQ__var_49,
                                                                      {xqAtomicValue,
                                                                       'xs:integer',
                                                                       6}))
                                              andalso
                                              xqerl_operators:eff_bool_val(xqerl_fn:boolean(Ctx__1,
                                                                   xqerl_operators:eff_bool_val(xqerl_operators:general_compare('>',
                                                                                        XQ__var_50,
                                                                                        {xqAtomicValue,
                                                                                         'xs:integer',
                                                                                         0}))
                                                                andalso
                                                                xqerl_operators:eff_bool_val(xqerl_operators:general_compare('=',
                                                                                          begin
                                                                                       Local__21 =
                                                                                           Param__var_47,
                                                                                       xqerl_seq3:position_filter(Ctx__1,
                                                                                                   fun
                                                                                                     (Ctx__5) ->
                                                                                                    xqerl_operators:add(xqerl_operators:add(Param__var_48,
                                                                                                                   {xqAtomicValue,
                                                                                                                    'xs:integer',
                                                                                                                    15}),
                                                                                                              {xqAtomicValue,
                                                                                                               'xs:integer',
                                                                                                               1})
                                                                                                   end,
                                                                                                   Local__21)
                                                                                          end,
                                                                                          {xqAtomicValue,
                                                                                           'xs:integer',
                                                                                           0})))))))
                      of
                         {xqAtomicValue, 'xs:boolean', true} ->
                        xqerl_operators:add(Param__var_48, {xqAtomicValue, 'xs:integer', 15});
                         _ -> xqerl_seq3:empty()
                       end,
                       case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                          xqerl_fn:boolean(Ctx__1,
                                                 xqerl_operators:eff_bool_val(xqerl_operators:general_compare('<',
                                                                      XQ__var_49,
                                                                      {xqAtomicValue,
                                                                       'xs:integer',
                                                                       6}))
                                              andalso
                                              xqerl_operators:eff_bool_val(xqerl_fn:boolean(Ctx__1,
                                                                   xqerl_operators:eff_bool_val(xqerl_operators:general_compare('<',
                                                                                        XQ__var_50,
                                                                                        {xqAtomicValue,
                                                                                         'xs:integer',
                                                                                         7}))
                                                                andalso
                                                                xqerl_operators:eff_bool_val(xqerl_operators:general_compare('=',
                                                                                          begin
                                                                                       Local__22 =
                                                                                           Param__var_47,
                                                                                       xqerl_seq3:position_filter(Ctx__1,
                                                                                                   fun
                                                                                                     (Ctx__6) ->
                                                                                                    xqerl_operators:add(xqerl_operators:add(Param__var_48,
                                                                                                                   {xqAtomicValue,
                                                                                                                    'xs:integer',
                                                                                                                    17}),
                                                                                                              {xqAtomicValue,
                                                                                                               'xs:integer',
                                                                                                               1})
                                                                                                   end,
                                                                                                   Local__22)
                                                                                          end,
                                                                                          {xqAtomicValue,
                                                                                           'xs:integer',
                                                                                           0})))))))
                      of
                         {xqAtomicValue, 'xs:boolean', true} ->
                        xqerl_operators:add(Param__var_48, {xqAtomicValue, 'xs:integer', 17});
                         _ -> xqerl_seq3:empty()
                       end,
                       case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                          xqerl_fn:boolean(Ctx__1,
                                                 xqerl_operators:eff_bool_val(xqerl_operators:general_compare('<',
                                                                      XQ__var_49,
                                                                      {xqAtomicValue,
                                                                       'xs:integer',
                                                                       7}))
                                              andalso
                                              xqerl_operators:eff_bool_val(xqerl_fn:boolean(Ctx__1,
                                                                   xqerl_operators:eff_bool_val(xqerl_operators:general_compare('>',
                                                                                        XQ__var_50,
                                                                                        {xqAtomicValue,
                                                                                         'xs:integer',
                                                                                         1}))
                                                                andalso
                                                                xqerl_operators:eff_bool_val(xqerl_operators:general_compare('=',
                                                                                          begin
                                                                                       Local__23 =
                                                                                           Param__var_47,
                                                                                       xqerl_seq3:position_filter(Ctx__1,
                                                                                                   fun
                                                                                                     (Ctx__7) ->
                                                                                                    xqerl_operators:add(xqerl_operators:add(Param__var_48,
                                                                                                                   {xqAtomicValue,
                                                                                                                    'xs:integer',
                                                                                                                    6}),
                                                                                                              {xqAtomicValue,
                                                                                                               'xs:integer',
                                                                                                               1})
                                                                                                   end,
                                                                                                   Local__23)
                                                                                          end,
                                                                                          {xqAtomicValue,
                                                                                           'xs:integer',
                                                                                           0})))))))
                      of
                         {xqAtomicValue, 'xs:boolean', true} ->
                        xqerl_operators:add(Param__var_48, {xqAtomicValue, 'xs:integer', 6});
                         _ -> xqerl_seq3:empty()
                       end,
                       case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                          xqerl_fn:boolean(Ctx__1,
                                                 xqerl_operators:eff_bool_val(xqerl_operators:general_compare('<',
                                                                      XQ__var_49,
                                                                      {xqAtomicValue,
                                                                       'xs:integer',
                                                                       7}))
                                              andalso
                                              xqerl_operators:eff_bool_val(xqerl_fn:boolean(Ctx__1,
                                                                   xqerl_operators:eff_bool_val(xqerl_operators:general_compare('<',
                                                                                        XQ__var_50,
                                                                                        {xqAtomicValue,
                                                                                         'xs:integer',
                                                                                         6}))
                                                                andalso
                                                                xqerl_operators:eff_bool_val(xqerl_operators:general_compare('=',
                                                                                          begin
                                                                                       Local__24 =
                                                                                           Param__var_47,
                                                                                       xqerl_seq3:position_filter(Ctx__1,
                                                                                                   fun
                                                                                                     (Ctx__8) ->
                                                                                                    xqerl_operators:add(xqerl_operators:add(Param__var_48,
                                                                                                                   {xqAtomicValue,
                                                                                                                    'xs:integer',
                                                                                                                    10}),
                                                                                                              {xqAtomicValue,
                                                                                                               'xs:integer',
                                                                                                               1})
                                                                                                   end,
                                                                                                   Local__24)
                                                                                          end,
                                                                                          {xqAtomicValue,
                                                                                           'xs:integer',
                                                                                           0})))))))
                      of
                         {xqAtomicValue, 'xs:boolean', true} ->
                        xqerl_operators:add(Param__var_48, {xqAtomicValue, 'xs:integer', 10});
                         _ -> xqerl_seq3:empty()
                       end])
             | IterLoop__6(Iter__16)]
           end
        end(xqerl_flwor:stream_iter(VarTup__4)),
      xqerl_seq3:flatten(Local__25)
    end.

'fx$^46'(Ctx0, Param__var_35, Param__var_36, Param__var_37, Param__var_38) ->
    Ctx__1 = xqerl_context:set_empty_context_item(Ctx0),
    begin
      VarTup__5 = fun () ->
           begin
             XQ__var_39 = xqerl_seq3:ensure_one(begin
                         Local__34 = Param__var_36,
                         xqerl_seq3:position_filter(Ctx__1,
                                     fun (Ctx__2) -> {xqAtomicValue, 'xs:integer', 1}
                                     end,
                                     Local__34)
                            end),
             begin
               XQ__var_40 = begin
                    Local__33 = Param__var_36,
                    xqerl_seq3:filter(Ctx__1,
                            fun (Ctx__1) ->
                               xqerl_operators:general_compare('>', xqerl_fn:position(Ctx__1),
                                           {xqAtomicValue, 'xs:integer', 1})
                            end,
                            Local__33)
                  end,
               begin
            XQ__var_41 = 'fx$^15'(Ctx__1, {xqAtomicValue, 'xs:integer', 99}, Param__var_35,
                        XQ__var_39),
            begin
              XQ__var_42 = 'fx$^51'(Ctx__1, XQ__var_41, XQ__var_39),
              begin
                XQ__var_43 = xqerl_fn:count(Ctx__1, XQ__var_42),
                begin
                  XQ__var_44 = xqerl_seq3:ensure_one(xqerl_fn:min(Ctx__1,
                                    xqerl_seq3:flatten([XQ__var_43, Param__var_37]))),
                  begin
               XQ__var_45 = xqerl_seq3:ensure_one(case
                                xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                              xqerl_operators:general_compare('<',
                                                          XQ__var_43,
                                                          Param__var_37)))
                                  of
                                {xqAtomicValue, 'xs:boolean', true} -> XQ__var_39;
                                _ -> Param__var_38
                              end),
               xqerl_flwor:stream_append({XQ__var_39, XQ__var_40, XQ__var_41, XQ__var_42,
                           XQ__var_43, XQ__var_44, XQ__var_45},
                          xqerl_flwor:stream_new())
                  end
                end
              end
            end
               end
             end
           end
        end(),
      Local__35 = fun IterLoop__7(Iter__31) ->
           case xqerl_flwor:stream_next(Iter__31) of
             none -> [];
             {_,
              {XQ__var_39, XQ__var_40, XQ__var_41, XQ__var_42, XQ__var_43, XQ__var_44,
               XQ__var_45},
              Iter__32} ->
            [case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                xqerl_operators:general_compare('!=',
                                            xqerl_fn:count(Ctx__1,
                                                 XQ__var_40),
                                            {xqAtomicValue,
                                             'xs:integer', 0})))
                 of
               {xqAtomicValue, 'xs:boolean', true} ->
                   'fx$^46'(Ctx__1, Param__var_35, XQ__var_40, XQ__var_44, XQ__var_45);
               _ -> XQ__var_45
             end
             | IterLoop__7(Iter__32)]
           end
        end(xqerl_flwor:stream_iter(VarTup__5)),
      xqerl_seq3:flatten(Local__35)
    end.

'fx$^34'(Ctx0, Param__var_26, Param__var_27, Param__var_28, Param__var_29) ->
    Ctx__1 = xqerl_context:set_empty_context_item(Ctx0),
    begin
      VarTup__6 = fun () ->
           begin
             XQ__var_30 = 'fx$^46'(Ctx__1, Param__var_27, Param__var_29,
                    {xqAtomicValue, 'xs:integer', 9}, {xqAtomicValue, 'xs:integer', 999}),
             begin
               XQ__var_31 = begin
                    Local__40 = Param__var_29,
                    xqerl_seq3:filter(Ctx__1,
                            fun (Ctx__1) ->
                               xqerl_operators:general_compare('!=',
                                           xqerl_context:get_context_item(Ctx__1),
                                           XQ__var_30)
                            end,
                            Local__40)
                  end,
               begin
            XQ__var_32 = 'fx$^15'(Ctx__1, Param__var_26, Param__var_27, XQ__var_30),
            begin
              XQ__var_33 = xqerl_seq3:ensure_zero_or_more(case
                              xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                                 xqerl_operators:general_compare('<',
                                                             Param__var_26,
                                                             erlang:get('var$^3'))))
                                of
                              {xqAtomicValue, 'xs:boolean', true} ->
                                  'fx$^20'(Ctx__1,
                                      xqerl_operators:add(Param__var_26,
                                           {xqAtomicValue,
                                            'xs:integer', 1}),
                                      XQ__var_32, XQ__var_30);
                              _ -> XQ__var_32
                                 end),
              xqerl_flwor:stream_append({XQ__var_30, XQ__var_31, XQ__var_32, XQ__var_33},
                         xqerl_flwor:stream_new())
            end
               end
             end
           end
        end(),
      Local__41 = fun IterLoop__8(Iter__41) ->
           case xqerl_flwor:stream_next(Iter__41) of
             none -> [];
             {_, {XQ__var_30, XQ__var_31, XQ__var_32, XQ__var_33}, Iter__42} ->
            [case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                {xqAtomicValue, 'xs:boolean', false}))
                 of
               {xqAtomicValue, 'xs:boolean', true} ->
                   'fx$^25'(Ctx__1, Param__var_26, Param__var_27, Param__var_28, XQ__var_31);
               _ -> XQ__var_33
             end
             | IterLoop__8(Iter__42)]
           end
        end(xqerl_flwor:stream_iter(VarTup__6)),
      xqerl_seq3:flatten(Local__41)
    end.

'fx$^25'(Ctx0, Param__var_21, Param__var_22, Param__var_23, Param__var_24) ->
    Ctx__1 = xqerl_context:set_empty_context_item(Ctx0),
    case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                       xqerl_operators:general_compare('!=', xqerl_fn:count(Ctx__1, Param__var_24),
                                   {xqAtomicValue, 'xs:integer', 0})))
   of
      {xqAtomicValue, 'xs:boolean', true} ->
     'fx$^34'(Ctx__1, Param__var_21, Param__var_22, Param__var_23, Param__var_24);
      _ -> xqerl_seq3:empty()
    end.

'fx$^20'(Ctx0, Param__var_16, Param__var_17, Param__var_18) ->
    Ctx__1 = xqerl_context:set_empty_context_item(Ctx0),
    begin
      VarTup__7 = fun () ->
           begin
             XQ__var_19 = 'fx$^51'(Ctx__1, Param__var_17, Param__var_18),
             xqerl_flwor:stream_append({XQ__var_19}, xqerl_flwor:stream_new())
           end
        end(),
      Local__43 = fun IterLoop__9(Iter__45) ->
           case xqerl_flwor:stream_next(Iter__45) of
             none -> [];
             {_, {XQ__var_19}, Iter__46} ->
            ['fx$^25'(Ctx__1, Param__var_16, Param__var_17, Param__var_18, XQ__var_19)
             | IterLoop__9(Iter__46)]
           end
        end(xqerl_flwor:stream_iter(VarTup__7)),
      xqerl_seq3:flatten(Local__43)
    end.

'fx$^15'(Ctx0, Param__var_11, Param__var_12, Param__var_13) ->
    Ctx__1 = xqerl_context:set_empty_context_item(Ctx0),
    begin
      VarTup__8 = fun () ->
           fun IterLoop__10(_, [], Local__44) -> Local__44;
               IterLoop__10(Local__45, [XQ__var_14 | Local__46], Local__44) ->
              IterLoop__10(Local__45 + 1, Local__46,
                      xqerl_flwor:stream_append({XQ__var_14}, Local__44));
               IterLoop__10(Local__45, XQ__var_14, Local__44) ->
              IterLoop__10(Local__45 + 1, [],
                      xqerl_flwor:stream_append({XQ__var_14}, Local__44))
           end(1,
               xqerl_seq3:range({xqAtomicValue, 'xs:integer', 1},
                      {xqAtomicValue, 'xs:integer', 64}),
               xqerl_flwor:stream_new())
        end(),
      Local__49 = fun IterLoop__11(Iter__47) ->
           case xqerl_flwor:stream_next(Iter__47) of
             none -> [];
             {_, {XQ__var_14}, Iter__48} ->
            [case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                                xqerl_operators:general_compare('=', XQ__var_14,
                                            xqerl_operators:add(Param__var_13,
                                                      {xqAtomicValue,
                                                       'xs:integer',
                                                       1}))))
                 of
               {xqAtomicValue, 'xs:boolean', true} -> Param__var_11;
               _ ->
                   begin
                Local__48 = Param__var_12,
                xqerl_seq3:position_filter(Ctx__1, fun (Ctx__1) -> XQ__var_14 end, Local__48)
                   end
             end
             | IterLoop__11(Iter__48)]
           end
        end(xqerl_flwor:stream_iter(VarTup__8)),
      xqerl_seq3:flatten(Local__49)
    end.

'fx$^10'(Ctx0) ->
    Ctx__1 = xqerl_context:set_empty_context_item(Ctx0),
    case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                       xqerl_fn:boolean(Ctx__1,
                              xqerl_operators:eff_bool_val(xqerl_fn:'not'(Ctx__1,
                                            xqerl_operators:general_compare('=',
                                                        xqerl_fn:'string-length'(Ctx__1,
                                                                  erlang:get('var$^1')),
                                                        {xqAtomicValue,
                                                         'xs:integer',
                                                         2})))
                           orelse
                           xqerl_operators:eff_bool_val(xqerl_fn:boolean(Ctx__1,
                                                xqerl_operators:eff_bool_val(xqerl_fn:'not'(Ctx__1,
                                                              xqerl_operators:general_compare('=',
                                                                          xqerl_fn:translate(Ctx__1,
                                                                                   xqerl_fn:substring(Ctx__1,
                                                                                       erlang:get('var$^1'),
                                                                                       xqerl_types:cast_as_seq({xqAtomicValue,
                                                                                                 'xs:integer',
                                                                                                 1},
                                                                                                {xqSeqType,
                                                                                                 'xs:double',
                                                                                                 one}),
                                                                                       xqerl_types:cast_as_seq({xqAtomicValue,
                                                                                                 'xs:integer',
                                                                                                 1},
                                                                                                {xqSeqType,
                                                                                                 'xs:double',
                                                                                                 one})),
                                                                                   {xqAtomicValue,
                                                                                    'xs:string',
                                                                                    "abcdefgh"},
                                                                                   {xqAtomicValue,
                                                                                    'xs:string',
                                                                                    "aaaaaaaa"}),
                                                                          {xqAtomicValue,
                                                                           'xs:string',
                                                                           "a"})))
                                             orelse
                                             xqerl_operators:eff_bool_val(xqerl_fn:'not'(Ctx__1,
                                                                xqerl_operators:general_compare('=',
                                                                            xqerl_fn:translate(Ctx__1,
                                                                                     xqerl_fn:substring(Ctx__1,
                                                                                         erlang:get('var$^1'),
                                                                                         xqerl_types:cast_as_seq({xqAtomicValue,
                                                                                                   'xs:integer',
                                                                                                   2},
                                                                                                  {xqSeqType,
                                                                                                   'xs:double',
                                                                                                   one}),
                                                                                         xqerl_types:cast_as_seq({xqAtomicValue,
                                                                                                   'xs:integer',
                                                                                                   1},
                                                                                                  {xqSeqType,
                                                                                                   'xs:double',
                                                                                                   one})),
                                                                                     {xqAtomicValue,
                                                                                 'xs:string',
                                                                                 "12345678"},
                                                                                     {xqAtomicValue,
                                                                                 'xs:string',
                                                                                 "11111111"}),
                                                                            {xqAtomicValue,
                                                                             'xs:string',
                                                                             "1"}))))))))
   of
      {xqAtomicValue, 'xs:boolean', true} ->
     xqerl_fn:error(Ctx__1, xqerl_seq3:empty(),
          {xqAtomicValue, 'xs:string', "Invalid start parameter: try say 'a1' or 'g6'"});
      _ ->
     case xqerl_seq3:singleton_value(xqerl_fn:boolean(Ctx__1,
                        xqerl_fn:'not'(Ctx__1,
                             xqerl_operators:general_compare('=', erlang:get('var$^3'),
                                         xqerl_seq3:range({xqAtomicValue,
                                                 'xs:integer',
                                                 1},
                                                {xqAtomicValue,
                                                 'xs:integer',
                                                 64})))))
         of
       {xqAtomicValue, 'xs:boolean', true} ->
      xqerl_fn:error(Ctx__1, xqerl_seq3:empty(),
                {xqAtomicValue, 'xs:string',
            "Invalid end parameter: must be in range 1 to 64"});
       _ ->
      begin
        VarTup__10 = fun () ->
                   begin
                XQ__var_7 = xqerl_seq3:ensure_zero_or_more(begin
                                    VarTup__9 = fun () ->
                                         fun IterLoop__12(_, [],
                                                Local__53) ->
                                            Local__53;
                                             IterLoop__12(Local__54,
                                                [XQ__var_6
                                                 | Local__55],
                                                Local__53) ->
                                            IterLoop__12(Local__54 +
                                                 1,
                                                    Local__55,
                                                    xqerl_flwor:stream_append({XQ__var_6},
                                                          Local__53));
                                             IterLoop__12(Local__54,
                                                XQ__var_6,
                                                Local__53) ->
                                            IterLoop__12(Local__54 +
                                                 1,
                                                    [],
                                                    xqerl_flwor:stream_append({XQ__var_6},
                                                          Local__53))
                                         end(1,
                                             xqerl_seq3:range({xqAtomicValue,
                                                'xs:integer',
                                                1},
                                                    {xqAtomicValue,
                                                'xs:integer',
                                                64}),
                                             xqerl_flwor:stream_new())
                                      end(),
                                    Local__57 = fun IterLoop__13(Iter__55) ->
                                         case
                                           xqerl_flwor:stream_next(Iter__55)
                                             of
                                           none -> [];
                                           {_, {XQ__var_6}, Iter__56} ->
                                          [{xqAtomicValue,
                                            'xs:integer', 0}
                                           | IterLoop__13(Iter__56)]
                                         end
                                      end(xqerl_flwor:stream_iter(VarTup__9)),
                                    xqerl_seq3:flatten(Local__57)
                                  end),
                begin
                  XQ__var_8 = 'fx$^15'(Ctx__1, {xqAtomicValue, 'xs:integer', 1}, XQ__var_7,
                        xqerl_operators:add(xqerl_operators:multiply(erlang:get('var$^5'),
                                            {xqAtomicValue, 'xs:integer',
                                             8}),
                                  erlang:get('var$^4'))),
                  begin
                    XQ__var_9 = 'fx$^20'(Ctx__1, {xqAtomicValue, 'xs:integer', 2}, XQ__var_8,
                          xqerl_operators:add(xqerl_operators:multiply(erlang:get('var$^5'),
                                              {xqAtomicValue, 'xs:integer',
                                          8}),
                                    erlang:get('var$^4'))),
                    xqerl_flwor:stream_append({XQ__var_7, XQ__var_8, XQ__var_9},
                               xqerl_flwor:stream_new())
                  end
                end
                   end
                end(),
        Local__58 = fun IterLoop__14(Iter__57) ->
                  case xqerl_flwor:stream_next(Iter__57) of
               none -> [];
               {_, {XQ__var_7, XQ__var_8, XQ__var_9}, Iter__58} ->
                   ['fx$^57'(Ctx__1, XQ__var_9) | IterLoop__14(Iter__58)]
                  end
               end(xqerl_flwor:stream_iter(VarTup__10)),
        xqerl_seq3:flatten(Local__58)
      end
     end
    end.

main(Options) ->
    Ctx0 = maps:merge(init(), Options),
    Ctx = begin
       Local__59 = maps:get(context_item, Options, []),
       xqerl_context:set_context_item(Ctx0, Local__59, 1,
                  {xqAtomicValue, 'xs:integer', xqerl_seq3:size(Local__59)})
     end,
    erlang:put('var$^1', 'var$^1'(Ctx)),
    erlang:put('var$^2', 'var$^2'(Ctx)),
    erlang:put('var$^3', 'var$^3'(Ctx)),
    erlang:put('var$^4', 'var$^4'(Ctx)),
    erlang:put('var$^5', 'var$^5'(Ctx)),
    xqerl_types:return_value('fx$^10'(Ctx)).