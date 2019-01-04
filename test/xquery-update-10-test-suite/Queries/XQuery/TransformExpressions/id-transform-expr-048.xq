(: Name: id-transform-expr-048 :)
(: Description: Copy clause changes the is-idrefs property of a new attribute node. :)

declare default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context
modify ()
return empty(idref("P", $var1/BOOKLIST[1]/BOOKS[1]))
