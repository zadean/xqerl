(: Name: applyUpdates-012-test :)
(: Description: Evaluation query for applyUpdates-012 :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

count($input-context/works[1]/employee[1]/hours/text())
