xquery version "3.1";

module namespace local = "http://www.w3.org/fots/fn/load-xquery-module/import-schema/module";

(:declare construction strip; :)
import schema default element namespace "http://www.w3.org/XQueryTest/abf";
(:declare default element namespace "http://www.w3.org/XQueryTest/abf";:)

declare function local:validate($c) {
validate strict { 
<abf> {$c} </abf> 
}
};

declare function local:validate-ok() {
validate strict { 
<abf><a/><b/><f/></abf> 
}
};

declare function local:abf($c) {
<abf> {$c} </abf> 
};

