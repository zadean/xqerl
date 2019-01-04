(: Name: valskip-ins-013 :)
(: Description: with no validation, but construction mode preserve, adding an IDREF attribute affects result of idref() :)

declare construction preserve;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)

(: evaluate idref() in case index is built lazily :)
insert node attribute iii {count($books/idref('P'))} into $books/BOOKLIST,
insert node $books//ITEM[1]/@CAT into $books//ITEM[1]/PRICE