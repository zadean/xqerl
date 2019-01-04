(: Name: valstrict-ins-003 :)
(: Description: inserting a disallowed element is bad news; detected by revalidation defined
   in prolog of library module :)
   
module namespace m1 = "http://www.w3.org/xqupd/tests/ns/valtrans-ins-003";   

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

declare function m1:update($books as document-node(schema-element(BOOKLIST))) {

	let $book1 := ($books/BOOKLIST/BOOKS/ITEM)[1]
	return 
	  copy $book1copy := $book1
	  modify insert node <garbage>rubbish</garbage> as first into $book1copy
	  return $book1copy
  
}  ;
  
      