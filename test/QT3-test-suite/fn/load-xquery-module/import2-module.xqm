xquery version "3.1";

module namespace imp = "http://www.w3.org/fots/fn/load-xquery-module/import/module";

import module namespace mid = "http://www.w3.org/fots/fn/load-xquery-module/middle/module"; 

declare variable $imp:var1 as xs:string := $mid:var1;