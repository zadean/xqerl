(: Name: function-declaration-03 :)
(: Description: Function declaration, updating, with simple expression. :)

(: insert-start :)
declare variable $employees external;
(: insert-end :)

declare updating function local:test ($emp)
   { 12 };

local:test($employees/employees/*[1])
