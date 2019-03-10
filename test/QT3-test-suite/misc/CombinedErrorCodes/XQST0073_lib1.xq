(: Name: XQST0073_lib1 :)
(: Description: Test generating XQST0073 :)
(: Author: Tim Mills :)
(: Date: 2008-05-16 :)
module namespace foo = "http://www.example.org/foo";
import module namespace bar = "http://www.example.org/bar";

declare function foo:function()
{
  bar:function()
};
