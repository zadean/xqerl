(: Name: XQST0036_lib4 :)
(: Description: Test generating XQST0036 :)
(: Author: Tim Mills :)
(: Date: 2008-05-16 :)
module namespace test = "http://www.example.org/2007/test";

import schema default element namespace "http://www.example.org/2007/schema/XQST0036";
declare default function namespace "http://www.example.org/2007/schema/XQST0036";

declare variable $test:i as schema-element(complex) := validate { <complex real="0" imaginary="1" /> };
