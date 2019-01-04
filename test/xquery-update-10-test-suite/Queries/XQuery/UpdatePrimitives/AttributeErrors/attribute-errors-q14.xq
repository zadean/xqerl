(: Name: attribute-errors-q14 :)
(: Description: Multiple replace of attributes, where one replacement attribute has the same name as the attribute removed by the other replace (ambiguous). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $in := $input-context/works/employee[1]
modify (
  replace node $in/@name with attribute {"salary"} {"10"},
  replace node $in/@gender with attribute {"name"} {"Blodwyn Jones"}
)
return $in
