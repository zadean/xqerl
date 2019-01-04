(: Name: id-rename-expr-027 :)
(: Description: Rename an element using an invalid QName. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var as "example:empl"
