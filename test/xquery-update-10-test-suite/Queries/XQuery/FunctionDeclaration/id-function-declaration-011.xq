(: Name: id-function-declaration-011 :)
(: Description: Evaluation of a rename expression used with function declaration. :)
(: Function is declared not "updating" an not external and enclosed expression :)
(: is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare function 
   local:renameFunction($e as element()) 
   {
   let $e1 := $e    
   return
     rename node $e1/salary[1] as "salary-1"
   };
   
let $arg1 := $input-context/employees[1]/employee[3]
return
  local:renameFunction($arg1)