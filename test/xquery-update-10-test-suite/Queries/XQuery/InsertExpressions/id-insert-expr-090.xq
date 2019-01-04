(: Name: id-insert-expr-090 :)
(: Description: Insert an attribute after a comment that does not have an element parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute test { "123" } after $input-context/comment()[1]
