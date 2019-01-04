(: Name: id-function-call-05 :)
(: Description: Evaluation of a transform expression used with function declaration. :)
(: the function call contains an "updating" (transform) expression :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare function 
   local:transformFunction($e as xs:anyAtomicType) 
   {
   let $e1 := $e
   return
     $e1
   };
   
let $arg1 := $input-context/employees[1]/employee[1]
return
  concat('"', local:transformFunction(copy $newVar := $arg1 modify delete node $newVar/salary[1] return $newVar), '"')