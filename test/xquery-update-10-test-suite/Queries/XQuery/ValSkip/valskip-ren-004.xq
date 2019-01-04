(: Name: valskip-ren-004 :)
(: Description: renaming a text node is an error :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


rename node ($books//AUTHOR)[1]/text() as "text"