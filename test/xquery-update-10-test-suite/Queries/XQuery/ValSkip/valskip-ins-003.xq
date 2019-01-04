(: Name: valskip-ins-003 :)
(: Description: insert into removes type from ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node "abc" into ($books//AUTHOR)[1]