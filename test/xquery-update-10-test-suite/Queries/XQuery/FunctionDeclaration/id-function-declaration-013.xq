(: Name: id-function-declaration-013 :)
(: Description: Evaluation of a transform expression used with function declaration. :)
(: Function is declared not "updating" an not external and enclosed expression :)
(: is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare function 
   local:transformFunction($e as element()) 
   {
     copy $newVar := $e modify delete node $newVar/employee[4] return $newVar
   };
   
let $arg1 := $input-context/employees[1]
return
  local:transformFunction($arg1)