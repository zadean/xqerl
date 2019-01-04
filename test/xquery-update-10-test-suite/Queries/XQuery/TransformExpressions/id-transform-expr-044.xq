(: Name: id-transform-expr-044 :)
(: Description: Copy clause changes the nilled property of the new element node. :)

declare default element namespace "http://ns.example.com/books2";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context/BOOKLIST[1]/BOOKS[1]/ITEM[1]
modify ()
return empty(data($var1/LANGUAGE[1]))
