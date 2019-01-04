(: Name: id-insert-expr-088 :)
(: Description: Insert an attribute before an element that does not have an element parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute test { "123" } after $input-context/far-north[1]
