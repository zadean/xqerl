(: Name: attribute-errors-q9 :)
(: Description: Replace of attribute with one that clashes with an existing attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace node $input-context/works/employee[1]/@name with attribute { "gender" } { "non-specific" }
