(: Name: valskip-repnode-002 :)
(: Description: replace attribute removes type from ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


replace node ($books//@UNIT)[1] with attribute {"units"} {"furlongs"}