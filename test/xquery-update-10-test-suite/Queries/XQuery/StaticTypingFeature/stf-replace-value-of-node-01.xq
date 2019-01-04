(: Name: stf-replace-value-of-node-01 :)
(: Description: replace-value-of-node: ST of TargetExpr has cardinality greater than one. :)

(: insert-start :)
declare variable $input-context as document-node(element(*, xs:untyped)) external;
(: insert-end :)

let $target := $input-context/works/employee[@name='Jane Doe 1']/hours
return
    replace value of node $target with "30"
