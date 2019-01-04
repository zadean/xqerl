(: Name: namespace-errors-q19 :)
(: Description: Replace introduces new attributes with implicit namespace bindings that clash. :)

declare namespace nara = "http://www.anr.fr/nara";
declare namespace univ = "http://www.education.gouv.fr";
declare namespace coop = "http://www.gouv.fr/univ-industry-coop/";
declare namespace agro = "http://www.agroplus.com";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace node $input-context/grant/nara:lab/@name with 
   (
   attribute { fn:QName("http://www.example.com", "newns:orgname") } { "AgroPlus" },
   attribute { fn:QName("http://www.example.com/oops", "newns:orgsymbol") } { "AgP" }
   )
