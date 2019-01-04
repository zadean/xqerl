(: Name: id-function-declaration-014 :)
(: Description: Evaluation of a function declaration declared as updating, :)
(: and a return type is specified. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare updating function 
   local:transformFunction($e as element()) as element() 
   {
   let $e1 := $e
   return
     copy $newVar := $e1 modify delete node $newVar/salary[1] return $newVar
   };
   
let $arg1 := $input-context/employees[1]/employee[1]
return
  local:transformFunction($arg1)