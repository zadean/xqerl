(: Name: stf-delete-01 :)
(: Description: delete: ST of TargetExpr is too vague. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $target as item()* := $input-context/works/employee
return
    delete nodes $target
