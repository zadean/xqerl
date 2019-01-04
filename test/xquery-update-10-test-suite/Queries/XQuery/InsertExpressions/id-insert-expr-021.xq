(: Name: id-insert-expr-021 :)
(: Description: Evaluation of simple insert expression that uses "after" clause only to insert a sequence :)
(: of element nodes into a element from an xml source. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]/hours[1]
return 
 insert node (<hours>15</hours>,<hours>20</hours>) after $var