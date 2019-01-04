(: Name: valskip-repnode-005-test :)
(: Description: replacing an ID attribute with construction=preserve drops the old ID and creates a new one :)

declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out><old>{id("P", $books)}</old><new>{id("P2", $books)}</new></out>        