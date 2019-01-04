(: Name: id-function-declaration-016 :)
(: Description: Invalid use of a non-updating expression within an updating function. :)
(: Function is declared "updating" and enclosed expression is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare updating function 
   local:insertFunction($e as element()) 
   {
   if (current-date() gt xs:date('1900-01-01'))
   then
     insert node <hours>21</hours> as last into $e
   else
     'exit'
   };
   
let $arg1 := $input-context/works[1]/employee[1]
return
  local:insertFunction($arg1)