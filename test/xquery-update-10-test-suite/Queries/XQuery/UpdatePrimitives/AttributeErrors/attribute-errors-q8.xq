(: Name: attribute-errors-q8 :)
(: Description: Replace of attribute with one that has the same name (succeeds). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace node $input-context/works/employee[1]/@name with attribute { "name" } { "Earl Hickey" }
