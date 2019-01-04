(: Name: id-insert-expr-080-test :)
(: Description: Query to verify id-insert-expr-080 :)

declare namespace b="http://ns.example.com/id-insert-expr-093";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

<overtime>{$input-context/works[1]/employee[@name="John Doe 12"]/overtime/@b:newAtt/string(.)}</overtime>