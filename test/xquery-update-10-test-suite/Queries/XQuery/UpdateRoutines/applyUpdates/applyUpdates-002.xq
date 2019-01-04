(: Name: applyUpdates-002 :)
(: Description: Apply insertInto then delete. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   delete node $var/hours/text(),
   insert node comment { "Testing" } into $var/hours
   )
