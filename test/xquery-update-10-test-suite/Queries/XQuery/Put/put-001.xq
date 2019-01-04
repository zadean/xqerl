(: put-001.xq :)
(: simple test of fn:put function :)

(: insert-start :)
declare variable $input-URI external;
(: insert-end :)

put(<a><b c="{day-from-date(current-date())}"/></a>, $input-URI)