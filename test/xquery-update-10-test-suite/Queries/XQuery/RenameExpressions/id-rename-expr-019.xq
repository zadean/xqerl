(: Name: id-rename-expr-019 :)
(: Description: Evaluation of a rename expression where the target expression is a comment node.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[4]/comment()
return 
  rename node $var as "comment1"