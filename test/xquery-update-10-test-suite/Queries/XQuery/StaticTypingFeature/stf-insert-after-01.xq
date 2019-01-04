(: Name: stf-insert-after-01 :)
(: Description: insert-after: ST of TargetExpr has cardinality greater than one. :)

(: insert-start :)
declare variable $input-context as document-node(element(*, xs:untyped)) external;
(: insert-end :)

let $source := <employee name="John Q Public"/>,
    $target := $input-context/works/employee[@name='Jane Doe 1']
return
    insert node $source after $target
