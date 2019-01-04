(: Name: valskip-ins-011 :)
(: Description: with no validation, but construction mode preserve, inserted attributes retain their type :)

declare construction preserve;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)

insert node $books//ITEM[1]/DIMENSIONS/@UNIT into $books//ITEM[1]/PRICE