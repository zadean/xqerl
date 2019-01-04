(: Name: applyUpdates-010 :)
(: Description: Apply multiple operations to the same node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   delete node $var/hours,
   replace value of node $var/hours with "50",
   insert node <employeeOfTheWeek>true</employeeOfTheWeek> before $var/hours/text(),
   insert node comment { "punctual" } into $var/hours,
   insert node attribute overtime { "false" } into $var/hours
   )
