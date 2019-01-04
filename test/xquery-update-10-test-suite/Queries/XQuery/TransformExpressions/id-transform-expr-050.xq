(: Name: id-transform-expr-050 :)
(: Description: Copy clause changes the type of an xml:id attribute node, but not the is-id property. :)

declare default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context
modify ()
return (
       $var1/BOOKLIST[1]/BOOKS[1]/ITEM[last()]/@xml:id instance of attribute(*, xs:untypedAtomic),
       empty(id("jff01", $var1/BOOKLIST[1]/BOOKS[1]/ITEM[last()]))
       )
