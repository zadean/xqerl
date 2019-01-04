(: Name: attribute-errors-q4 :)
(: Description: Insert of multiple attributes, some with the same name. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node (attribute {"sameName"} {"some value"}, attribute {"anotherName"} {()}, attribute {"sameName"} {"another value"}) into $input-context/works/employee[1]
