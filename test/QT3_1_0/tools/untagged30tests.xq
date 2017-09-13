xquery version "3.0";
    declare namespace fots = "http://www.w3.org/2010/09/qt-fots-catalog";
    
   (: produce a report of the number of tests specific to 3.0 that are not labelled with a 3.0 feature :) 
        
   <untagged-tests>{     
        let $testfiles := doc('../catalog.xml')//fots:test-set/@file/doc(resolve-uri(., base-uri(..)))
        let $testsets := $testfiles/fots:test-set[not(@covers)]
        let $testcases := $testsets/fots:test-case[not(@covers)]
        for $test in $testcases
        let $dependency := $test/(fots:dependency[@type='spec']/@value, ../fots:dependency[@type='spec']/@value)[1]
        where exists($dependency) and (every $d in tokenize($dependency, ' ') satisfies $d = ('XQ30+', 'XP30+'))
        return <test name="{$test/@name}"/>
  }</untagged-tests>      