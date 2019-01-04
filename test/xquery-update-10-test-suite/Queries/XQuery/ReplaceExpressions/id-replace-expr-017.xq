(: Name: id-replace-expr-017 :)
(: Description: Evaluation of a replace expression where expression following the "with" is an updating expression :)
(: and usage of "value of" keyword. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/employees[1]/employee[1]
let $var2 := <salaries><salary>114500</salary></salaries>
return replace value of node $var1/salary[1] with (rename node $var2/salary[1] as "salary1")