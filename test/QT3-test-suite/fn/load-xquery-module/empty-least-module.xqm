xquery version "3.1";

module namespace local = "http://www.w3.org/fots/fn/load-xquery-module/functions/module";

declare default order empty least;

declare function local:func($seq as item()*) {
    for $i in 1 to 5
    let $x := subsequence($seq, $i, 1)
    order by $x
    return count($x)
};
