(: Name: id-flwor-expr-018 :)
(: Description: Evaluation of a transform expression use with FLWOR expression where "for" clause is a transform expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[1]
for $var1 in (copy $newVar := $var 
 modify delete node $newVar/salary[1]
 return $newVar)
return $var1
