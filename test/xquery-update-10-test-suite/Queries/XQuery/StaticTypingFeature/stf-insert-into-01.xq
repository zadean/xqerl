(: Name: stf-insert-into-01 :)
(: Description: insert-into: ST of TargetExpr has cardinality greater than one. :)

(: insert-start :)
declare variable $input-context as document-node(element(*, xs:untyped)) external;
(: insert-end :)

let $source := <status>active</status>,
    $target := $input-context/works/employee[@name='Jane Doe 1']
return
    insert node $source into $target
