(: Name: id-transform-expr-031 :)
(: Description: Evaluates a transform expression, which contains a rename expression to insure :)
(: the original data is not modified. :)

(:insert-start:)
declare variable $input-context external;
(:insert-end:)

let $var := $input-context/works[1]/employee[2]
return
	copy $newVar := $var
	modify rename node $newVar/hours[2] as "newhours"
	return $newVar