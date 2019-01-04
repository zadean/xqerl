(: Name: valskip-ins-012-test :)
(: Description: with no validation, but construction mode strip, inserted attributes lose their type :)

declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out>
  <a>{$books/BOOKLIST instance of schema-element(BOOKLIST)}</a>
  <b>{$books/BOOKLIST/BOOKS instance of schema-element(BOOKS)}</b>
  <c>{$books/BOOKLIST/BOOKS/ITEM[1] instance of schema-element(ITEM)}</c> 
  <d>{$books/BOOKLIST/BOOKS/ITEM[1]/PRICE instance of element(*, xs:decimal)}</d>  
  <e>{$books/BOOKLIST/BOOKS/ITEM[1]/PRICE/@UNIT instance of attribute(*, lengthUnitType)}</e>  
</out>        