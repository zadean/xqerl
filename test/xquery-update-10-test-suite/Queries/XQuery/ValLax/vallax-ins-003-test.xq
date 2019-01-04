(: Name: vallax-ins-003-test :)
(: Description: Adding a second author to a book is fine (especially if it's Thursday Next...) :)

import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out>
  <a>{$books/BOOKLIST instance of schema-element(BOOKLIST)}</a>
  <b>{$books/BOOKLIST/BOOKS instance of schema-element(BOOKS)}</b>
  <c>{$books/BOOKLIST/BOOKS/ITEM[1] instance of schema-element(ITEM)}</c> 
  <d>{$books/BOOKLIST/BOOKS/ITEM[1]/PRICE instance of element(*, xs:decimal)}</d>
  <e>{$books/BOOKLIST/BOOKS/ITEM[2]/PRICE instance of element(*, xs:decimal)}</e>  
</out>        