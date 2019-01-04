(: Name: id-flwor-expr-012 :)
(: Description: Evaluation of a replace expression used with FLWOR expression where the "order by" clause is an updating (replace) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
let $var2 := <salaries><salary>150000</salary></salaries>
order by (replace value of node $var/salary[1] with $var2/salary[1]) ascending
return 
  "This Test Should Fail"