(: Name: id-rename-expr-011 :)
(: Description: Evaluation of a rename expression where the newname expression is build dynamically.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var/hours[1] as fn:concat('hou','rs1')