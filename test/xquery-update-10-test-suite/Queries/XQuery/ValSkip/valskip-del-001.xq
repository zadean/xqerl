(: Name: valskip-del-001 :)
(: Description: deleting an element removes type from ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


delete node ($books//AUTHOR)[1]