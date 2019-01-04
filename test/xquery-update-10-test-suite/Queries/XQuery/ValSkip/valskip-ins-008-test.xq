(: Name: valskip-ins-008-test :)
(: Description: with no validation, adding xml:id has is-ID property but not xs:ID type :)

import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out>
  <a>{$books/BOOKLIST instance of schema-element(BOOKLIST)}</a>
  <b>{$books/BOOKLIST/BOOKS instance of schema-element(BOOKS)}</b>
  <c>{$books/BOOKLIST/BOOKS/ITEM[1] instance of schema-element(ITEM)}</c> 
  <d>{$books/BOOKLIST/BOOKS/ITEM[1]/AUTHOR[1] instance of element(AUTHOR, xs:string)}</d> 
  <d>{$books/BOOKLIST/BOOKS/ITEM[1]/AUTHOR[1]/@xml:id instance of attribute(*, xs:ID)}</d>   
  <e>{$books/BOOKLIST/BOOKS/ITEM[1]/PRICE instance of element(*, xs:decimal)}</e>  
  <f>{$books/BOOKLIST/BOOKS/ITEM[2] instance of schema-element(ITEM)}</f>
  <id>{$books//id("unique")/@xml:id}</id>
</out>        