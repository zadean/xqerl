(: Name: id-insert-expr-089 :)
(: Description: Insert an attribute before a comment that does not have an element parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute test { "123" } before $input-context/comment()[1]
