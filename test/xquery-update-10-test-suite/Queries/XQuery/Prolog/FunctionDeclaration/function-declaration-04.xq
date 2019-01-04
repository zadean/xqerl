(: Name: function-declaration-04 :)
(: Description: Function declaration, updating, with vacuous expression. :)

(: insert-start :)
declare variable $employees external;
(: insert-end :)

declare updating function local:test ($emp)
   { () };

local:test($employees/employees/*[1])
