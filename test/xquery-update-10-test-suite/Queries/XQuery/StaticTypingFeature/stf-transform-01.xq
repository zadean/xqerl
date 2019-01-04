(: Name: stf-transform-01 :)
(: Description: transform: ST of source expression has cardinality greater than one. :)

(: insert-start :)
declare variable $input-context as document-node(element(*, xs:untyped)) external;
(: insert-end :)

copy $employee := $input-context/works/employee[@name='Jane Doe 1']
modify delete node $employee/hours
return $employee
