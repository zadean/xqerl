(: Name: valskip-del-005 :)
(: Description: deleting a comment node does not remove type from ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


delete nodes $books//comment()