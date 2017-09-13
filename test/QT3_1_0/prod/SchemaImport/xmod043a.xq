xquery version "1.0";
(: test use of import module together with import schema :)
module namespace hat = "http://www.fpml.org/2005/FpML-4-2";
import schema "http://www.fpml.org/2005/FpML-4-2" at "mini-fpml.xsd";


declare variable $hat:docvar as element(*, hat:Document)? := ();
declare variable $hat:twelve := 12;
