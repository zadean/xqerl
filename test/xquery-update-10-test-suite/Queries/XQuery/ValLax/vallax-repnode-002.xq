(: Name: vallax-repnode-002 :)
(: Description: replace attribute fails if the new node is invalid :)

declare construction strip;
declare revalidation lax;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


replace node ($books//ITEM)[1]/@CAT with <A cat="mmc"/>/@cat