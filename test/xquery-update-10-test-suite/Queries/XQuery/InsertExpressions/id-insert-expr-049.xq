(: Name: id-insert-expr-049 :)
(: Description: Evaluation of insert expression, where two nodes are inserted into the same node using the "as first" clause". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
(insert node <hours>45</hours> as first into $var,insert node <hours>46</hours> as first into $var)