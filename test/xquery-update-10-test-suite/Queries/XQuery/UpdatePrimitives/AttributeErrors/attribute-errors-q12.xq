(: Name: attribute-errors-q12 :)
(: Description: Multiple replace of attributes with attributes of the same name. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace node $input-context/works/employee[1]/@name with attribute {"otherName"} {"some value"},
replace node $input-context/works/employee[@name="Jane Doe 1"]/@gender with attribute {"otherName"} {"another value"}
