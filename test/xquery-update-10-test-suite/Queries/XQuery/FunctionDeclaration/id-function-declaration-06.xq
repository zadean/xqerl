(: Name: id-function-declaration-06 :)
(: Description: Evaluation of a delete expression used with function declaration. :)
(: Function is declared not "updating" an not external and enclosed expression :)
(: is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare updating function 
   local:insertFunction($e as element()) 
   {
   let $e1 := $e
   return
     delete node $e/hours[1]
   };
   
let $arg1 := $input-context/works[1]/employee[2]
return
  local:insertFunction($arg1)