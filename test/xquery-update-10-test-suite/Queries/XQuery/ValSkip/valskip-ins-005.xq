(: Name: valskip-ins-005 :)
(: Description: insert as last into (of comment node) doesn't remove type from ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node <!-- yes, really --> as last into ($books//AUTHOR)[1]