
module namespace mod4="http://www.w3.org/TestModules/libmodule4";
import schema namespace u = "http://www.w3.org/XQueryTest/unionListDefined";
declare context item as u:decimal-or-string external;
declare variable $mod4:v := .;