(: Name: valskip-repnode-004-test :)
(: Description: replacing an ID attribute with construction=strip drops the ID :)

declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out>{id("P", $books), id("P2", $books)}</out>        