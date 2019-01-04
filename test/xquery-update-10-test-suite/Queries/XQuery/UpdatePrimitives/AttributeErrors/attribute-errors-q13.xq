(: Name: attribute-errors-q13 :)
(: Description: Multiple replace of attributes with muliple attributes, some of which have the same name. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace node $input-context/works/employee[1]/@name with (attribute {"otherName"} {"some value"}, attribute {"name"} {"Blodwyn Jones"}),
replace node $input-context/works/employee[@name="Jane Doe 1"]/@gender with (attribute {"sparkly"} {"yes"}, attribute {"otherName"} {"another value"})
