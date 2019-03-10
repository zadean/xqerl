xquery version "3.1";

module namespace local = "http://www.w3.org/fots/fn/load-xquery-module/functions/module";

declare boundary-space preserve;

declare function local:func($str as xs:string) {
    <a>  {$str}  </a>
};
