(: Name: id-function-declaration-01 :)
(: Description: Evaluation of insert expression used with function declaration. :)
(: Function is declared "updating" and enclosed expression is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare updating function 
   local:insertFunction($e as element()) 
   {
   let $e1 := $e
   return
     insert node <hours>21</hours> as last into $e1
   };
   
let $arg1 := $input-context/works[1]/employee[1]
return
  local:insertFunction($arg1)