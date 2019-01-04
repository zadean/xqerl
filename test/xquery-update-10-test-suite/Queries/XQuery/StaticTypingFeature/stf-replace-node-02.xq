(: Name: stf-replace-node-02 :)
(: Description: replace-node: ST of TargetExpr is too vague. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $target as node()? := $input-context/works[1]/employee[1]
return
    replace node $target with <employee name='John Q Public'/>
