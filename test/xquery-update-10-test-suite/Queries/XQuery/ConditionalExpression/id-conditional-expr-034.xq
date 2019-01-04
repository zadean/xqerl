(: Name: id-conditional-expr-034 :)
(: Description: Evaluates a conditional expression, where the if brach contains a delete expression and the else branch contains transform expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return
if (fn:true()) then
    delete node $var
else
 copy $newVar := $var modify delete node $newVar/salary[1] return $newVar