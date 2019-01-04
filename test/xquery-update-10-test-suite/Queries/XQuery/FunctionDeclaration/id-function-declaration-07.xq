(: Name: id-function-declaration-07 :)
(: Description: Evaluation of a delete expression used with function declaration. :)
(: Function is declared "updating" and enclosed expression is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare function 
   local:insertFunction($e as element()) 
   {
   let $e1 := $e
   return
     delete node $e/salary[1]
   };
   
let $arg1 := $input-context/employees[1]/employee[1]
return
  local:insertFunction($arg1)