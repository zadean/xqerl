(: Name: valskip-ins-009 :)
(: Description: with no validation, but construction mode preserve, inserted elements retain their type :)

declare construction preserve;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)

insert node $books//ITEM[1] as last into $books//BOOKS