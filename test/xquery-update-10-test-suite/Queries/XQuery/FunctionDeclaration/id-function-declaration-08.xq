(: Name: id-function-declaration-08 :)
(: Description: Evaluation of a replace expression used with function declaration. :)
(: Function is declared "updating" and enclosed expression is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare updating function 
   local:replaceFunction($e as element()) 
   {
   let $e1 := $e   
   return
     replace value of node $e1/hours[1] with $e1/hours[2]
   };
   
let $arg1 := $input-context/works[1]/employee[2]
return
  local:replaceFunction($arg1)