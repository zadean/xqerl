(: Name: id-rename-expr-014 :)
(: Description: Evaluation of a rename expression where the target expression is a complex expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var[hours[xs:integer(9-3) idiv 6]] as "hours1"