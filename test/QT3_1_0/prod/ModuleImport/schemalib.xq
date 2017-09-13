module namespace schemalib="http://www.xqsharp.com/test/schemalib/";

import schema namespace cd="http://www.cbcl.co.uk/XQueryTest/complexData";

declare function schemalib:getShortStrings($node as node()) as cd:shortString*
{
data($node//node()[empty(.//element())])[. instance of cd:shortString]
};
