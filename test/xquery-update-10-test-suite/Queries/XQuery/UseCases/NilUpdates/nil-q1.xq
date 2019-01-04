(: Test - nil-q1 :)
(: Description - Update Use Case nill Q1:)

(: insert-start :)
declare variable $employees external;
(: insert-end :)

(:state-1-start :)

for $e in $employees//employee
where $e/@mgr = true()
return
     copy $emp := $e
      modify (
          replace value of node $emp/salary with "" ,
          insert node (attribute xsi:nil {"true"}) 
             into $emp/salary
          )
      return $emp
      
(:state-1-end :)  