(: Name: valskip-ins-013-test :)
(: Description: with no validation, but construction mode preserve, adding an IDREF attribute affects result of idref() :)

import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out>
  <idrefs>{$books/idref('MMP')/parent::PRICE}</idrefs>
  <a>{$books/BOOKLIST instance of schema-element(BOOKLIST)}</a>
  <b>{$books/BOOKLIST/BOOKS instance of schema-element(BOOKS)}</b>
  <c>{$books/BOOKLIST/BOOKS/ITEM[1] instance of schema-element(ITEM)}</c> 
</out>