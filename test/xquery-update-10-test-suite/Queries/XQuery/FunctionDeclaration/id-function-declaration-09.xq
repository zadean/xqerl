(: Name: id-function-declaration-09 :)
(: Description: Evaluation of a replace expression used with function declaration. :)
(: Function is declared not "updating" an not external and enclosed expression :)
(: is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare function 
   local:replaceFunction($e as element()) 
   {
   let $e1 := $e    
   return
     replace value of node $e1/employee[1]/salary[1] with $e1/employee[2]/salary[1]
   };
   
let $arg1 := $input-context/employees[1]
return
  local:replaceFunction($arg1)