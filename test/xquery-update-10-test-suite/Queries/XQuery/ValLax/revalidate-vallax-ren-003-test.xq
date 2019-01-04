(: Name: vallax-ren-003-test :)
(: Description: renaming an element is OK if the new name is in the substitution group :)

declare revalidation lax;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out count="{count($books/BOOKLIST/BOOKS/SUBITEM)}" name="{local-name($books/BOOKLIST/BOOKS/*[1])}" uri="{namespace-uri($books/BOOKLIST/BOOKS/*[1])}">
  <a>{$books/BOOKLIST instance of schema-element(BOOKLIST)}</a>
  <b>{$books/BOOKLIST/BOOKS instance of schema-element(BOOKS)}</b>
  <c>{$books/BOOKLIST/BOOKS/SUBITEM[1] instance of schema-element(ITEM)}</c> 
  <d>{$books/BOOKLIST/BOOKS/SUBITEM[1]/PRICE instance of element(*, xs:decimal)}</d>
</out>        