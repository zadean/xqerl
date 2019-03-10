xquery version "3.1";

module namespace dem = "http://www.w3.org/fots/fn/load-xquery-module/dynamic-error/module";

declare variable $dem:cause-dynamic-error :=   map {
    xs:date("2015-02-01") : "no timezone date",
    xs:date("2015-02-01+01:00") : "timezone date",
    xs:dateTime("2015-02-01T12:28:00.000") : "no timezone time",
    xs:dateTime("2015-02-01T12:28:00.000+01:00") : "timezone time",
    "a" : 10 div (if (current-date() lt xs:date('1900-01-01')) then 1 else 0)
};

declare function dem:placeholder() {
    <placeholder/>
};