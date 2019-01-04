(: Name: id-other-expr-05 :)
(: Description: Evaluates usage of an updating expression (transform) in initializing expression for variable declaration. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare variable $x := $input-context/works[1]/employee[1];
declare variable $y as element() := copy $newVar := $x modify delete node $newVar/hours[1] return $newVar;

$y