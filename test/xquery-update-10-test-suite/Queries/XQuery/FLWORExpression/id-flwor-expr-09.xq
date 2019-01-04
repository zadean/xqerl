(: Name: id-flwor-expr-09 :)
(: Description: Evaluation of a replace expression used with FLWOR expression where let clause is an updating (replace) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var1 := $input-context/employees[1]/employee[2]
let $var2 := <salaries><salary>15000</salary></salaries>
let $var3 := replace value of node $var1/salary[1] with $var2/salary[1]
return 
  "This Test Should Fail"