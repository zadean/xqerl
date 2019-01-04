(: Name: id-function-call-03 :)
(: Description: Evaluation of a delete expression used with function declaration. :)
(: the function call contains an "updating" (replace) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare function 
   local:replaceFunction($e as xs:anyAtomicType) 
   {
     let $e1 := $e   
     return $e
   };
   
let $arg1 :=$input-context/employees[1]
return
  local:replaceFunction(replace node $arg1/employee[1]/salary[1] with $arg1/employee[2]/salary[1])