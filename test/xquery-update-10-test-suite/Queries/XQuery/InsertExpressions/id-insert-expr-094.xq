(: Name: id-insert-expr-094 :)
(: Description: Insert an attribute that doesn't conflict with an element in the dedault namespace. :)

declare namespace books="http://ns.example.com/books";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute ITEMS {count($input-context/books:BOOKLIST/books:BOOKS/books:ITEM)}
       into $input-context/books:BOOKLIST/books:BOOKS
