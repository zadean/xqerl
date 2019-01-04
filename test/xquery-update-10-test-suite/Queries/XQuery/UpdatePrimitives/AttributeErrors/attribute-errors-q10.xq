(: Name: attribute-errors-q10 :)
(: Description: Replace of attribute with multiple attributes, one of which clashes with an existing attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace node $input-context/works/employee[1]/@name with (attribute {"otherName"} {"some value"}, attribute {"gender"} {"non-specific"})
