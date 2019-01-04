(: Name: id-replace-expr-029 :)
(: Description: Replace the values of text nodes. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   replace node $var/empnum[1]/text() with "E1000",
   replace node $var/hours[1]/text() with 10
   )