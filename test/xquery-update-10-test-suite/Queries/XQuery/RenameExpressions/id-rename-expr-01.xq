(: Name: id-rename-expr-01 :)
(: Description: Evaluation of a rename expression that renames an element from an XML source :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var/hours[1] as "hours1"