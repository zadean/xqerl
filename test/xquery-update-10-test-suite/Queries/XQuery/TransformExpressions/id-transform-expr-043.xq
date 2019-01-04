(: Name: id-transform-expr-043 :)
(: Description: Copy clause changes the type of the new element node. :)

declare default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context/BOOKLIST[1]/BOOKS[1]/ITEM[1]
modify ()
return ($var1 instance of element(*, xs:untyped),
        $var1/TITLE[1] instance of element(*, xs:untyped))
