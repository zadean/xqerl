(: Name: id-function-declaration-012 :)
(: Description: Evaluation of a transform expression used with function declaration. :)
(: Function is declared "updating" and enclosed expression is an updating expression.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare updating function 
   local:transformFunction($e as element()) 
   {
   let $e1 := $e
   return
     copy $newVar := $e1 modify delete node $newVar/hours[1] return $newVar
   };
   
let $arg1 := $input-context/works[1]/employee[2]
return
  local:transformFunction($arg1)