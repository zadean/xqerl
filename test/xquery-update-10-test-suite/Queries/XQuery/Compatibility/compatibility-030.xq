(: Name: compatibility-030 :)
(: Description: Replace value of and insert operate on the same element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node comment {"this employee is on leave"} into $var,
   replace value of node $var with "on leave"
   )
