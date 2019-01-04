(: Name: id-function-call-06 :)
(: Description: Evaluates a function call than contains two parameters, one updating (rename) and an integer. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare function 
   local:renameFunction($e as xs:anyAtomicType, $b as xs:integer) as item()*
   {
   let $e1 := $e
   return
     $e1
   };
   
let $arg1 := $input-context/employees[1]/employee[1]
return
  local:renameFunction(rename node $arg1/salary[1] as "salary-1", xs:integer(1))