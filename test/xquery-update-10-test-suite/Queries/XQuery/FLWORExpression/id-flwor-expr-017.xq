(: Name: id-flwor-expr-017 :)
(: Description: Evaluation of a transform expression use with FLWOR expression where let clause is a transform expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/employees[1]/employee[1]
let $var1 := copy $newVar := $var 
 modify delete node $newVar/salary[1]
 return $newVar
return $var1
