xquery version "3.1";

module namespace local = "http://www.w3.org/fots/fn/load-xquery-module/import-schema/module";

import schema namespace hat = "http://www.w3.org/XQueryTest/hats"; 
        
declare function local:hatsize($number) {
<a> { $number cast as hat:hatsize }</a>
};

