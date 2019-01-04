(: Name: valskip-ins-012 :)
(: Description: with no validation, but construction mode strip, inserted attributes lose their type :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)

insert node $books//ITEM[1]/DIMENSIONS/@UNIT into $books//ITEM[1]/PRICE