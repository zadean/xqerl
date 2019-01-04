(: Name: valskip-ren-001 :)
(: Description: renaming an element removes type from self and ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


rename node ($books//AUTHOR)[1] as "WRITER"