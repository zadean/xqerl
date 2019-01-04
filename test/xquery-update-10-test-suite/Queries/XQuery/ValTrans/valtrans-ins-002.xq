(: Name: valstrict-ins-002 :)
(: Description: inserting a permitted element is fine :)

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)

let $book1 := ($books/BOOKLIST/BOOKS/ITEM)[1]
return 
  copy $book1copy := $book1
  modify insert node <AUTHOR xmlns="http://ns.example.com/books">Thursday Next</AUTHOR> 
                after ($book1copy/AUTHOR)[1] 
  return $book1copy
      