(: Name: stf-rename-04 :)
(: Description: rename: ST of NewNameExpr is duration. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $target in $input-context/works/employee/@nonexistent
return
    rename node $target as xs:duration('P1M')
