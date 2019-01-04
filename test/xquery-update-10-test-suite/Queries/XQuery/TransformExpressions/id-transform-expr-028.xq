(: Name: id-transform-expr-028 :)
(: Description: Evaluates a transform expression, which inserts a node to insure :)
(: the original data is not modified. :)

(:insert-start:)
declare variable $input-context external;
(:insert-end:)

let $var := $input-context/works[1]/employee[1]
return
	copy $newVar := $var
	modify insert node <id>0001</id> as first into $newVar
	return $newVar
