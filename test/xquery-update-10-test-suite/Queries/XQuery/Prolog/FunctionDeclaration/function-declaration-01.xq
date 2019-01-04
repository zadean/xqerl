(: Name: function-declaration-01 :)
(: Description: Function declaration, non-updating, with updating expression. :)

(: insert-start :)
declare variable $employees external;
(: insert-end :)

declare function local:test ($emp)
   { replace value of node $emp/salary with 200000 };

local:test($employees/employees/*[1])
