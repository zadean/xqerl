(: Name: id-replace-expr-032 :)
(: Description: Replace the value of a element node with a sequence. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return replace node $var/hours[1] with (<hours>10</hours>, comment { "even more hours" },<hours>20</hours>)
