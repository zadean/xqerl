(: Name: id-insert-expr-046 :)
(: Description: Evaluation of insert expression, where the after clause is used and the result is a document node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context
return 
insert node <hours>10</hours> after $var