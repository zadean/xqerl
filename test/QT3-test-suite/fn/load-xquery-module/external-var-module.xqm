xquery version "3.1";

module namespace evm = "http://www.w3.org/fots/fn/load-xquery-module/external-var/module";

declare variable $evm:var1 as xs:string external;

declare function evm:get-var1() as xs:string {
    $evm:var1
};