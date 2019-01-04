(: Name: id-rename-expr-023 :)
(: Description: Rename an element using a sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var as ("this", "is", "an", "element")
