(: Name: valskip-ren-003-test :)
(: Description: renaming an xml:id attribute affects result of id() :)

declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out>
  <jff>{$books/id('jff001')}</jff>
</out>        