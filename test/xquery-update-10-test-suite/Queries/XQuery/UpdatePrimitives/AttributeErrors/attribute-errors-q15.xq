(: Name: attribute-errors-q15 :)
(: Description: Insert and replace of attributes which have the same name. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute {"otherName"} {"some value"} into $input-context/works/employee[1],
replace node $input-context/works/employee[@name="Jane Doe 1"]/@gender with attribute {"otherName"} {"another value"}
