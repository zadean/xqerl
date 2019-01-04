(: Name: valstrict-ren-001 :)
(: Description: renaming an element is bad news if the new name is not allowed :)

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


rename node ($books//AUTHOR)[1] as "WRITER"