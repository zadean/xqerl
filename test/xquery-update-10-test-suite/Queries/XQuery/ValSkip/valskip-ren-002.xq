(: Name: valskip-ren-002 :)
(: Description: renaming an attribute removes type from self and ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


for $n in $books//@UNIT
return rename node $n as "units"