(: Name: id-function-declaration-02 :)
(: Description: Evaluation of insert expression used with function declaration. :)
(: Function is declared not "updating" an not external and enclosed expression :)
(: is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare function 
   local:insertFunction($e as element()) 
   {
   let $e1 := $e
   return
     insert node <hour>20</hour> into $e1
   };
   
let $arg1 := $input-context/employees[1]/employee[1]
return
  local:insertFunction($arg1)