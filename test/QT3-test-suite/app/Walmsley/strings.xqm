module namespace strings = "http://datypic.com/strings";
declare variable $strings:maxStringLength := 32;
declare function strings:trim($arg as xs:string?) as xs:string? {
  replace(replace($arg,'^\s+',''),'\s+$','')
};