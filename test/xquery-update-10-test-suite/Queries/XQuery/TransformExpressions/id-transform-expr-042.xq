(: Name: id-transform-expr-042 :)
(: Description: Copy clause creates a new element node. :)

declare default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context/BOOKLIST[1]/BOOKS[1]
modify ()
return ($var1 is $input-context/BOOKLIST[1]/BOOKS[1])
