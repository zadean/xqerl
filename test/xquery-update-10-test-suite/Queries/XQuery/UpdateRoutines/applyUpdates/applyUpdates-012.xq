(: Name: applyUpdates-012 :)
(: Description: Delete the content of a text node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   replace value of node $var/hours/text() with ""
