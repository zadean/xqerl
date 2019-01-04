(: Name: id-flwor-expr-020 :)
(: Description: Evaluation of a transform expression use with FLWOR expression where the "order by" clause is a transform expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
order by (copy $newVar := $var 
 modify delete node $newVar/salary[1]
 return $newVar) descending
return $var
