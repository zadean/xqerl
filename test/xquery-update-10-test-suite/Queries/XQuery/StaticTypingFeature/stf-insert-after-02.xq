(: Name: stf-insert-after-02 :)
(: Description: insert-after: ST of TargetExpr is too vague. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $source := <employee name="John Q Public"/>,
    $target as node()? := $input-context/works[1]/employee[1]
return
    insert node $source after $target
