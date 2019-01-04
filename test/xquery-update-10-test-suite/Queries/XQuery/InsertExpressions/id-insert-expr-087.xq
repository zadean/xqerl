(: Name: id-insert-expr-087 :)
(: Description: Insert an attribute before an element that does not have an element parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute test { "123" } before $input-context/far-north[1]
