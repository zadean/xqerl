(: Name: id-conditional-expr-033 :)
(: Description: Evaluates a conditional expression, where both branches are updating expressions (delete).  Both delete the same node (only one is selected). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
if (fn:true()) then
   delete node $var/hours[1]
else
   delete node $var/hours[1]