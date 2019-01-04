(: Name: id-rename-expr-020 :)
(: Description: Evaluation of a rename expression where the new name expression is a comment node.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]/salary[1]
return 
  rename node $var as <!-- A comment Node -->