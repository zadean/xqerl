(: Name: vallax-ren-002 :)
(: Description: renaming an attribute is bad news if the new name is not allowed :)

declare construction strip;
declare revalidation lax;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


rename node ($books//ITEM)[1]/@CAT as "cat"