(: Name: attribute-errors-q3 :)
(: Description: Insert of multiple attributes with the same name. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node (attribute {"sameName"} {"some value"}, attribute {"sameName"} {"another value"}) into $input-context/works/employee[1]
