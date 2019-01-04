(: Name: namespace-errors-q16 :)
(: Description: Rename of element with non-prefixed implicit namespace binding that does not clash. :)

declare namespace nara = "http://www.anr.fr/nara";
declare namespace univ = "http://www.education.gouv.fr";
declare namespace coop = "http://www.gouv.fr/univ-industry-coop/";
declare namespace agro = "http://www.agroplus.com";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

rename node $input-context/grant as fn:QName("http://www.example.com/test", "mygrant")
