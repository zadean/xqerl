(: Name: stf-insert-into-04 :)
(: Description: insert-into: ST of TargetExpr is document() but ST of SourceExpr involves attribute(). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $source := $input-context/works/employee[1]/@nonexistent,
    $target := $input-context
return
    insert node $source into $target
