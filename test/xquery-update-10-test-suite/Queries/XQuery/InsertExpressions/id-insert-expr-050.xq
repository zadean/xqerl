(: Name: id-insert-expr-050 :)
(: Description: Evaluation of insert expression, where two nodes are inserted into the same node using the "as last" clause". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
(insert node <hours>45</hours> as last into $var, insert node <hours>46</hours> as last into $var)