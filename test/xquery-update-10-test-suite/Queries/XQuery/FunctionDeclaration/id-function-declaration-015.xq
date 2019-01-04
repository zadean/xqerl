(: Name: id-function-declaration-015 :)
(: Description: Invalid use of an updating expression within an updating function. :)
(: Function is declared "updating" and enclosed expression is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare updating function 
   local:insertFunction($e as element()) 
   {
   let $e1 := delete nodes $e/*/*
   return
     insert node <hours>21</hours> as last into $e
   };
   
let $arg1 := $input-context/works[1]/employee[1]
return
  local:insertFunction($arg1)