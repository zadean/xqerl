(: Name: valskip-repnode-003-test :)
(: Description: replace attribute retains type of attribute with construction preserve :)

import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out>
  <a>{$books/BOOKLIST instance of schema-element(BOOKLIST)}</a>
  <b>{$books/BOOKLIST/BOOKS instance of schema-element(BOOKS)}</b>
  <c>{$books/BOOKLIST/BOOKS/ITEM[1] instance of schema-element(ITEM)}</c> 
  <d>{$books/BOOKLIST/BOOKS/ITEM[1]/DIMENSIONS instance of element(DIMENSIONS, dimensionsType)}</d> 
  <e>{$books/BOOKLIST/BOOKS/ITEM[1]/DIMENSIONS/@UNIT instance of attribute(*, lengthUnitType)}</e>  
  <f>{$books/BOOKLIST/BOOKS/ITEM[2] instance of schema-element(ITEM)}</f>
</out>        