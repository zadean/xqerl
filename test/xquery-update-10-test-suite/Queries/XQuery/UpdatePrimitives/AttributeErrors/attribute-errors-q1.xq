(: Name: attribute-errors-q1 :)
(: Description: Insert of attribute that already exists. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute { "name" } { "Mavis Gertrude Smith" } into $input-context/works/employee[1]
