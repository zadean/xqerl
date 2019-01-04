(: Name: stf-replace-value-of-node-02 :)
(: Description: replace-value-of-node: ST of TargetExpr is too vague. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $target as node()? := $input-context/works[1]/employee[1]/hours[1]
return
    replace value of node $target with "30"
