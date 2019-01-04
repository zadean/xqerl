(: Name: function-declaration-02 :)
(: Description: Function declaration, updating, with return type. :)

(: insert-start :)
declare variable $employees external;
(: insert-end :)

declare updating function local:test ($emp) as xs:integer
   { replace value of node $emp/salary with 200000 };

local:test($employees/employees/*[1])
