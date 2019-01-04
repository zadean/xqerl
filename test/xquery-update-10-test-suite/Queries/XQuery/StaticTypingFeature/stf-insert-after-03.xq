(: Name: stf-insert-after-03 :)
(: Description: insert-after: ST of TargetExpr is attribute(). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $source := attribute type {'PT'}
for $target in $input-context/works/employee/@nonexistent
return
    insert node $source after $target
