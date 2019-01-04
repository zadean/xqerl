(: Name: valskip-repnode-001 :)
(: Description: replace element removes type from ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


replace node ($books//AUTHOR)[1] with <WRITER>Jasper Fforde</WRITER>