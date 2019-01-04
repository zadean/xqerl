(: Name: stf-rename-03 :)
(: Description: rename: ST of TargetExpr is comment. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $target in $input-context/works/employee[1]/comment()
return
    rename node $target as "foo"
