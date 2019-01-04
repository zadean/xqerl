(: Name: namespace-errors-q15 :)
(: Description: Rename of element and insert of attribute with implicit namespace binding that clashes. :)

declare namespace nara = "http://www.anr.fr/nara";
declare namespace univ = "http://www.education.gouv.fr";
declare namespace coop = "http://www.gouv.fr/univ-industry-coop/";
declare namespace agro = "http://www.agroplus.com";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

rename node $input-context//nara:researcher[@name="Fred"] as fn:QName("http://www.example.com/test", "newns:researcher"),
insert node attribute { fn:QName("http://www.example.com", "newns:name") } {"Hugo"} into $input-context//nara:researcher[1]
