(: Name: id-insert-expr-022 :)
(: Description: Evaluation of simple insert expression that uses "into" clause only to insert a sequence :)
(: of elements into an XML data source :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return 
  insert node (<hours>15</hours>,<hours>20</hours>) into $var