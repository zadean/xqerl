(: Name: id-transform-expr-047 :)
(: Description: Copy clause changes the id property of a new attribute node. :)

declare default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context
modify ()
return empty(id("MMP", $var1/BOOKLIST[1]/CATEGORIES[1]))
