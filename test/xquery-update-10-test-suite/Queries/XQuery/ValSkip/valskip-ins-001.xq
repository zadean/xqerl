(: Name: valskip-ins-001 :)
(: Description: insert before removes type from ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node <AUTHOR>Jasper Fforde</AUTHOR> before ($books//AUTHOR)[1]