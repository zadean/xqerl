xquery version "3.1";

module namespace local = "http://www.w3.org/fots/fn/load-xquery-module/decimal-format/module";

declare decimal-format local:de decimal-separator = "," grouping-separator = "."; 

declare variable $local:locale external := "local:de";

declare function local:func($i) {
   format-number($i, "#.###,##", $local:locale)
};

