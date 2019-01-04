(: Name: id-rename-expr-025 :)
(: Description: Rename an attribute using a number. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var/@name as 12
