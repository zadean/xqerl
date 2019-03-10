xquery version "3.1";

module namespace mid = "http://www.w3.org/fots/fn/load-xquery-module/middle/module";

import module namespace evm="http://www.w3.org/fots/fn/load-xquery-module/external-vars/module"; 

declare variable $mid:var1 as xs:string := $evm:var1;