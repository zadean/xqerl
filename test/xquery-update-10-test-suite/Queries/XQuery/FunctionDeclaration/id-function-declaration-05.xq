(: Name: id-function-declaration-05 :)
(: Description: Evaluation of usage of mathematical expression used with function declaration. :)
(: Function is declared "updating" and not external and enclosed expression :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare updating function 
   local:insertFunction($e as xs:integer) 
   {
   let $e1 := $e
   return
     $e1 + $e     
   };
   
let $arg1 := xs:integer($input-context/employees[1]/salary[1])   
return
  local:insertFunction($arg1)