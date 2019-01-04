(: Name: vallax-repnode-001 :)
(: Description: replace element fails if the new node is invalid :)

declare construction strip;
declare revalidation lax;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


replace node ($books//AUTHOR)[1] with <WRITER>Jasper Fforde</WRITER>