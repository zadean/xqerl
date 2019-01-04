(: Name: id-transform-expr-029 :)
(: Description: Evaluates a transform expression, which deletes a node to insure :)
(: the original data is not modified. :)

(:insert-start:)
declare variable $input-context external;
(:insert-end:)

let $var := $input-context/works[1]/employee[2]
return
	copy $newVar := $var
	modify delete node $newVar/pnum[1]
	return $newVar