(: Name: namespace-errors-q10 :)
(: Description: Insert and replace of attributes with implicit namespace binding that clashes. :)

declare namespace nara = "http://www.anr.fr/nara";
declare namespace univ = "http://www.education.gouv.fr";
declare namespace coop = "http://www.gouv.fr/univ-industry-coop/";
declare namespace agro = "http://www.agroplus.com";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert node attribute { fn:QName("http://www.example.com", "newns:name") } { "Mavis Gertrude Smith" } into $input-context/grant/univ:lab,
replace node $input-context/grant/*:lab[2]/@name with attribute { fn:QName("http://www.example.com/test", "newns:sparkle") } { "not really" }
