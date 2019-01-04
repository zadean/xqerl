(: Name: id-replace-expr-014 :)
(: Description: Evaluation of a replace expression where the target expression results in a single node with no parent property. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/employees[1]/employee[1]
let $var2 := <hours></hours>
return replace node $var2 with $var1/salary[1]