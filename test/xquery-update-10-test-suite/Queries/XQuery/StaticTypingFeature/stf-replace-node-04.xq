(: Name: stf-replace-node-04 :)
(: Description: replace-node: ST of TargetExpr is element()?, but ST of replacement expr is too vague. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $target := $input-context/works[1]/employee[1],
    $replacement as node()* := <employee name='John Q Public'/>
return
    replace node $target with $replacement
