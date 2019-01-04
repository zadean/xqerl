(: Name: stf-replace-node-07 :)
(: Description: replace-node: ST of TargetExpr is attribute(), but ST of replacement expr is element() :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $replacement := element status {'active'}
for $target in $input-context/works/employee/@nonexistent
return
    replace node $target with $replacement
