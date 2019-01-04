(: Name: stf-replace-node-05 :)
(: Description: replace-node: ST of TargetExpr is element(), but ST of replacement expr is attribute() :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $target in $input-context/works/employee[@nonexistent]
let $replacement := attribute type {'PT'}
return
    replace node $target with $replacement
