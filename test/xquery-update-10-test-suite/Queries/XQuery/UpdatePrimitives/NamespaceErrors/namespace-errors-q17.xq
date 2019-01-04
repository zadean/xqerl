(: Name: namespace-errors-q17 :)
(: Description: Insert new attributes with implicit namespace bindings that clash. :)

declare namespace nara = "http://www.anr.fr/nara";
declare namespace univ = "http://www.education.gouv.fr";
declare namespace coop = "http://www.gouv.fr/univ-industry-coop/";
declare namespace agro = "http://www.agroplus.com";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

insert nodes 
   (
   attribute { fn:QName("http://www.example.com", "newns:name") } { "Mavis Gertrude Smith" },
   attribute { fn:QName("http://www.example.com/oops", "newns:nickname") } { "Mavis" }
   )
into $input-context/grant

