(: Name: valskip-del-003-test :)
(: Description: deleting an xml:id attribute affects result of id() :)

import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out>
  <jff>{$books/id('jff001')}</jff>
</out>        