(: Name: id-rename-expr-024 :)
(: Description: Rename an element using a sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var as ("", "element", "")
