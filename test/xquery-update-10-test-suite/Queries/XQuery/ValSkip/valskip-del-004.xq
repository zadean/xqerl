(: Name: valskip-del-004 :)
(: Description: deleting a text node removes type from ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


delete node ($books//AUTHOR)[1]/text()