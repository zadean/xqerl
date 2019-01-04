(: Name: id-replace-expr-018 :)
(: Description: Evaluation of a replace expression where the target expression is an updating expression and usage of the "value of" keyword. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/employees[1]/employee[1]
let $var2 := <salaries><salary>111300</salary></salaries>
return replace value of node (rename node $var1/salary[1] as "salary1") with $var2/salary[1]