(: Name: valstrict-ins-001 :)
(: Description: inserting a disallowed element is bad news :)

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)

let $book1 := ($books/BOOKLIST/BOOKS/ITEM)[1]
return 
  copy $book1copy := $book1
  modify insert node <garbage>rubbish</garbage> as first into $book1copy
  return $book1copy
      