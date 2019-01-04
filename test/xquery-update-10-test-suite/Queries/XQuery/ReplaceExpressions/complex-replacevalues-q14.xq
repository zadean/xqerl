(: Name: complex-replacevalues-q14 :)
(: Description: Replace the value of the "far-west" element with a string containing markup. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace value of node $input-context//far-west with "<notANode>value</notANode>"
