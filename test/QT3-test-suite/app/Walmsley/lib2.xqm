xquery version "3.1";
module namespace prod = "http://datypic.com/prod";
declare context item as element(catalog) external;
declare variable $prod:label as xs:string external;
declare variable $prod:prods as element(product)* := product;
declare function prod:countProds ($prods as element(product)*) as xs:string
  {concat($prod:label, ': ', count($prods))};
declare function prod:countProds ($prods as element(product)*, 
                                  $dept as xs:string) as xs:string
  {concat($prod:label, ': ', count($prods[@dept = $dept]))};