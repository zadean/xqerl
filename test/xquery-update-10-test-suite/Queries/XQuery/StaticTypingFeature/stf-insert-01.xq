(: Name: stf-insert-01 :)
(: Description: insert: ST of SourceExpr is too vague. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $source as node()* := (<status>on leave</status>, <!-- for 6 months -->),
    $target := $input-context/works[1]/employee[1]
return
    insert nodes $source into $target
