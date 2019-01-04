(: Name: id-function-call-01 :)
(: Description: Evaluation of insert expression used with function declaration. :)
(: the function call contains an "updating" expression :)

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
  local:insertFunction(insert node <salary>45000</salary> into $arg1)