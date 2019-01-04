(: Name: id-transform-expr-030 :)
(: Description: Evaluates a transform expression, which contains a replace expression to insure :)
(: the original data is not modified. :)

(:insert-start:)
declare variable $input-context external;
(:insert-end:)

let $var := $input-context/works[1]/employee[1]
return
	copy $newVar := $var
	modify replace value of node $newVar/hours[1] with text{"this value was replaced"}
	return $newVar