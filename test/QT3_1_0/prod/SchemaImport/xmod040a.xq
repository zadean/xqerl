xquery version "1.0";
(: test use of import module together with import schema :)
module namespace hat = "http://www.w3.org/XQueryTest/hats";
import schema "http://www.w3.org/XQueryTest/hats";

declare function hat:purchase ($x as hat:hatsize) as hat:date2003 {
<yr> { ('2003-06-30' cast as hat:date2003) }</yr>
};

declare function hat:trick ($x as xs:integer) as xs:integer {
  $x + 3
};