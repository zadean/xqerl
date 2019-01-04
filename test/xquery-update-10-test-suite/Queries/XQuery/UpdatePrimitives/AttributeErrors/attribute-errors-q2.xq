(: Name: attribute-errors-q2 :)
(: Description: Insert of multiple attributes, one of which already exists. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node <tmp otherAttr="some value" name="Mavis Gertrude Smith" andMore="attrs"/>/@* into $input-context/works/employee[1]
