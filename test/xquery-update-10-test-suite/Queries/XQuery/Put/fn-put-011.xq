(: Name: fn-put-011 :)
(: Description: Check that fn:put does not become effective until after completion of the snapshot. :)

(: insert-start :)
declare variable $input-context external;
declare variable $input-URI external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   fn:put(document { <test/> }, $input-URI),
   insert node fn:doc($input-URI)/test[1] as last into $var
   )
