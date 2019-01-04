(: Name: valskip-ins-006 :)
(: Description: insert attribute removes type from ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node attribute famous {"yes"} into ($books//AUTHOR)[1]