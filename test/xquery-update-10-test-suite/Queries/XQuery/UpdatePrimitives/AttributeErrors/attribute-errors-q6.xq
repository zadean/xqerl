(: Name: attribute-errors-q6 :)
(: Description: Multiple inserts of attributes, some with the same name. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute {"sameName"} {"some value"} into $input-context/works/employee[1],
insert node attribute {"anotherName"} {()} into $input-context/works/employee[@gender="female"][1],
insert node attribute {"sameName"} {"another value"} into $input-context//employee[@name="Jane Doe 1"]
