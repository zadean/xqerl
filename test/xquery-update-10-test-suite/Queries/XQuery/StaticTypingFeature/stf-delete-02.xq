(: Name: stf-delete-02 :)
(: Description: delete: ST of TargetExpr is atomic type. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $target in $input-context/works/employee/@nonexistent/fn:string()
return
    delete node $target
