(: Name: stf-replace-node-01 :)
(: Description: replace-node: ST of TargetExpr has cardinality greater than one. :)

(: insert-start :)
declare variable $input-context as document-node(element(*, xs:untyped)) external;
(: insert-end :)

let $target := $input-context/works/employee[@name='Jane Doe 1']
return
    replace node $target with <employee name='John Q Public'/>
