(: Name: valskip-ren-005 :)
(: Description: renaming a PI node does not remove type from ancestors :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


for $p in $books//processing-instruction(pi)
return rename node $p as "theta"