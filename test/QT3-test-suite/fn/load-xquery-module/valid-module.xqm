xquery version "3.1";

module namespace vm = "http://www.w3.org/fots/fn/load-xquery-module/valid/module";

declare variable $vm:var1 := "var1";
declare variable $vm:var2 := "var2";

declare function vm:func1() {
    "func1"
};

declare function vm:func2() {
    "func2"
};