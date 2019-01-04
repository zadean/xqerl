(: Name: id-function-declaration-03 :)
(: Description: Evaluation of insert expression used with function declaration. :)
(: Function is declared "updating" and not external and enclosed expression :)
(: is the empty sequence.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare updating function 
   local:insertFunction($e as element()) 
   {
     ()
   };

let $arg1 := $input-context/works[1]/employee[3]  
return
  local:insertFunction($arg1)