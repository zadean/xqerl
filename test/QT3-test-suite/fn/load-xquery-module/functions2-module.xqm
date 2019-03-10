xquery version "3.1";

module namespace vm = "http://www.w3.org/fots/fn/load-xquery-module/functions/module";

declare function vm:func1() {
    "func1"
};

declare function vm:func1($string) {
    "func1"||$string
};

declare function vm:func2() {
    "func2"
};

declare function vm:func2($string as xs:string) {
    $string
};