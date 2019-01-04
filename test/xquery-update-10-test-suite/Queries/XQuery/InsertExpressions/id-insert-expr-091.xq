(: Name: id-insert-expr-091 :)
(: Description: Insert an attribute before a PI that does not have an element parent. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute test { "123" } before $input-context/processing-instruction()[1]
