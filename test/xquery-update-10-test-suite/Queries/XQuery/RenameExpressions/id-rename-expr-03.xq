(: Name: id-rename-expr-03 :)
(: Description: Evaluation of a rename expression that renames a Processing Instruction.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]/processing-instruction()
return 
  rename node $var as "name1"