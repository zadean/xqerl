(: Name: valskip-ins-004 :)
(: Description: insert as first into (of element node) removes type from ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node <by/> as first into ($books//AUTHOR)[1]