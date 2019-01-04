(: Name: stf-insert-into-03 :)
(: Description: insert-into: ST of TargetExpr is attribute(). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $source := <status>active</status>
for $target in $input-context/works/employee/@nonexistent
return
    insert node $source into $target
