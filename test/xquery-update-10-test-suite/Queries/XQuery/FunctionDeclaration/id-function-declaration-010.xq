(: Name: id-function-declaration-010 :)
(: Description: Evaluation of a rename expression used with function declaration. :)
(: Function is declared "updating" and enclosed expression is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare updating function 
   local:renameFunction($e as element()) 
   {
   let $e1 := $e 
   return
     rename node $e1/hours[1] as "hours-1"
   };
   
let $arg1 := $input-context/works[1]/employee[3]
return
  local:renameFunction($arg1)