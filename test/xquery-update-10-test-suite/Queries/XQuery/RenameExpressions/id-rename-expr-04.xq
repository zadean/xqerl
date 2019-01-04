(: Name: id-rename-expr-04 :)
(: Description: Evaluation of a rename expression that renames an element from an XML file.:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]/employee[1]
return 
  rename node $var/empnum[1] as "newempnum"