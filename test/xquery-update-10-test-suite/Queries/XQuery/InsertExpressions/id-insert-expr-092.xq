(: Name: id-insert-expr-092 :)
(: Description: Insert an attribute after a PI that does not have an element parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute test { "123" } after $input-context/processing-instruction()[1]
