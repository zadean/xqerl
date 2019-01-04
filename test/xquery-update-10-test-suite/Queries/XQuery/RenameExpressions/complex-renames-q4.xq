(: Name: complex-renames-q4 :)
(: Description: Rename one of the elements called "south-east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

rename node ($input-context//south-east)[1] as "se"
