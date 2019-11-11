(: Name: fn-put-010 :)
(: Description: Check that fn:put operates after other update operations. :)

(: insert-start :)
declare variable $input-context external;
declare variable $input-URI external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   fn:put($var, $input-URI),
   insert node <retiring/> as last into $var
   )
