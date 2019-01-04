(: Name: variable-declaration-01 :)
(: Description: Variable declaration with an updating expression rhs. :)

(: insert-start :)
declare variable $employees external;
(: insert-end :)

declare variable $upd := insert node <employee/> into $employees/employees;

$upd
