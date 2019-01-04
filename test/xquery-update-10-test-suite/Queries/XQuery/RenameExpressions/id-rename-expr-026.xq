(: Name: id-rename-expr-026 :)
(: Description: Rename an attribute using an invalid NCName. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var/@name as "12"
