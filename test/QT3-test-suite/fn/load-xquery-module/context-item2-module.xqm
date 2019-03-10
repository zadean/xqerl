xquery version "3.1";

module namespace cim = "http://www.w3.org/fots/fn/load-xquery-module/context-item/module";

declare context item as node() external;

declare variable $cim:context := .;

declare function cim:get-context-child() as node()* {
    $cim:context/child::node()
};
