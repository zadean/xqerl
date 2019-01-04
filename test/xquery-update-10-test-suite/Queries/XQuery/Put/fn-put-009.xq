(: Name: fn-put-009 :)
(: Description: Check that fn:put is an updating function. :)

(: insert-start :)
declare variable $input-context external;
declare variable $input-URI external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node <retiring/> as last into $var,
   fn:put(document { <test/> }, $input-URI)
   )
