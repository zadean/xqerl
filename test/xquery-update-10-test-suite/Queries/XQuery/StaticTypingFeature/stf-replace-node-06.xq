(: Name: stf-replace-node-06 :)
(: Description: replace-node: ST of TargetExpr is attribute()?, but ST of replacement expr is too vague. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $target := $input-context/works[1]/employee[1]/@name,
    $replacement as node()* := attribute name {'Jane X Doe'}
return
    replace node $target with $replacement
