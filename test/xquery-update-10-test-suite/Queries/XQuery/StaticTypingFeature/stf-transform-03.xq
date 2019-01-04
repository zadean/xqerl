(: Name: stf-transform-03 :)
(: Description: transform: ST of source expression is an atomic type. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $employee in $input-context/works/employee[@nonexistent]
return
    copy $name := $employee/@name/fn:string()
    modify ()
    return $name
