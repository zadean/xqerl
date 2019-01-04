(: Name: applyUpdates-001 :)
(: Description: insertInto then delete. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node comment { "Testing" } into $var/hours,
   delete node $var/hours/text()
   )
