(: Name: attribute-errors-q11 :)
(: Description: Replace of attribute with multiple attributes, one of which has the same name as the one replaced (succeeds). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace node $input-context/works/employee[1]/@name with (attribute {"name"} {"Fred Bloggs"}, attribute {"otherName"} {"some value"})
