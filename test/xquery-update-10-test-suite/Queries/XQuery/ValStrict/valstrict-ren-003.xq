(: Name: valstrict-ren-003 :)
(: Description: renaming an element is OK if the new name is in the substitution group :)

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


for $e in $books//ITEM
  return rename node $e as "SUBITEM"