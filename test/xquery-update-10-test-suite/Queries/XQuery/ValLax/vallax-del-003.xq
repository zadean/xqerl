(: Name: vallax-del-003 :)
(: Description: deleting a mandatory attribute is bad news :)

declare construction strip;
declare revalidation lax;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


delete node ($books//ITEM[1]/@CAT)[1]