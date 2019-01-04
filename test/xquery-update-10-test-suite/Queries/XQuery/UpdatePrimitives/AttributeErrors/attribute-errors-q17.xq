(: Name: attribute-errors-q17 :)
(: Description: Insert of duplicate attributes in a deleted sub-tree. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node (attribute {"gender"} {"male"}) into $input-context/works/employee[1],
delete node $input-context/works/employee[1]
