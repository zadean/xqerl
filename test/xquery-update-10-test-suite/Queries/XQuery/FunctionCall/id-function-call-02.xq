(: Name: id-function-call-02 :)
(: Description: Evaluation of a delete expression used with function declaration. :)
(: the function call contains an "updating" (delete) expression :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare function 
   local:insertFunction($e as xs:anyAtomicType) 
   {
   let $e1 := $e
   return
     $e1
   };
   
let $arg1 := $input-context/employees[1]/employee[1]
return
  local:insertFunction(delete node $arg1/salary[1])