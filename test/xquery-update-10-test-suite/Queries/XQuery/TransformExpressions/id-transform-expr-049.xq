(: Name: id-transform-expr-049 :)
(: Description: Copy clause changes the type of a new attribute node. :)

declare default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context/BOOKLIST[1]/BOOKS[1]
modify ()
return ($var1/ITEM[1]/DIMENSIONS[1]/@UNIT instance of attribute(*, xs:untypedAtomic))
