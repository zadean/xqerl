(: Name: id-function-declaration-04 :)
(: Description: Evaluation of insert expression used with function declaration. :)
(: Function is declared "updating" and not external and enclosed expression :)
(: is call to fn:error.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


declare updating function 
   local:insertFunction($e as element()) 
   {
    fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
   };
   
let $arg1 := $input-context/works[1]/employee[3]    
return
  local:insertFunction($arg1)