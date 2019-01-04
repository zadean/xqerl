(: Name: applyUpdates-011-test :)
(: Description: Evaluation query for applyUpdates-011 :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

count($input-context/works[1]/employee[2]/text())
