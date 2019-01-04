(: Name: namespace-errors-q12 :)
(: Description: Replace and rename of attributes with implicit namespace binding that clashes. :)

declare namespace nara = "http://www.anr.fr/nara";
declare namespace univ = "http://www.education.gouv.fr";
declare namespace coop = "http://www.gouv.fr/univ-industry-coop/";
declare namespace agro = "http://www.agroplus.com";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace node $input-context//nara:researcher[@name="Fred"]/@position with attribute { fn:QName("http://www.example.com/test", "newns:sparkle") } { "not really" },
rename node $input-context//nara:researcher[1]/@rid as fn:QName("http://www.example.com", "newns:name")
