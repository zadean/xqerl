(: Name: stf-replace-node-03 :)
(: Description: replace-node: ST of TargetExpr is atomic type. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $target in $input-context/works/employee/@nonexistent/fn:string()
return
    replace node $target with ()
