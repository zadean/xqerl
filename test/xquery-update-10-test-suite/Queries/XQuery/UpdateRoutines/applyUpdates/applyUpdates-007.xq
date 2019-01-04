(: Name: applyUpdates-007 :)
(: Description: Apply replaceNode then delete. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   replace node $var/hours with comment { "vacation" },
   delete node $var/hours
   )
