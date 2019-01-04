(: Name: attribute-errors-q7 :)
(: Description: Multiple inserts of attributes, one of which already exists. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute {"sameName"} {"some value"} into $input-context/works/employee[1],
insert node attribute {"name"} {"Mavis Gertrude Smith"} into $input-context/works/employee[@gender="female"][1],
insert node attribute {"sameName"} {"another value"} into $input-context//employee[@name="Jane Doe 1"]
