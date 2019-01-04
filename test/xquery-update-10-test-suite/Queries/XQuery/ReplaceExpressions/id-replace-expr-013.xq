(: Name: id-replace-expr-013 :)
(: Description: Evaluation of a replace expression where the target expression results in more than one node.. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/employees[1]/employee[1]
let $var2 := <salaries><salary>10</salary></salaries>
return replace node $var1/child::* with $var2/salary[1]