(: Name: fn-put-007 :)
(: Description: Bad URI as argument to fn:put. :)

fn:put(document { <test/> }, "http:\\invalid&gt;URI\someURI")
