(: Name: id-transform-expr-046 :)
(: Description: Copy clause changes the id property of the new element node. :)

declare default element namespace "http://ns.example.com/books2";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context
modify ()
return empty(id("MMP", $var1/BOOKLIST[1]/CATEGORIES[1]))
