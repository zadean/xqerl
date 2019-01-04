(: Name: id-function-call-04 :)
(: Description: Evaluation of a rename expression used with function declaration. :)
(: the function call contains an "updating" (rename) expression :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare function 
   local:renameFunction($e as xs:anyAtomicType) 
   {
   let $e1 := $e
   return
     $e1
   };
   
let $arg1 := $input-context/employees[1]/employee[1]
  return local:renameFunction(rename node $arg1/salary[1] as "salary-1")