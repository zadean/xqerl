xquery version "3.1";

(: This query generates a set of test cases that test the individual (good or bad) JSON files
   in directory test_parsing. It relies on fn:uri-collection being able to read the directory
   contents. 
   
   Michael Kay
   1 August 2018
 :)


<test-set xmlns="http://www.w3.org/2010/09/qt-fots-catalog" name="misc-JsonTestSuite">
   <description>Tests from the JSONTestSuite (http://github.com/nst/JSONTestSuite)</description>
   <link type="spec" document="http://www.w3.org/TR/xpath-functions-30/"
         idref="func-surrogates"/>
   <link type="spec" document="FuncOps" section-number="7.1" idref="string-types"/>
   
  {for $uri in uri-collection('test_parsing')
   let $name := tokenize($uri, '/')[last()] => substring-before('.json')
   return

   <test-case name="{$name}">
      <description>JSONTestSuite test case {$name}</description>
      <created by="Michael Kay, Saxonica" on="{current-date()}"/>
      <dependency type="spec" value="XQ31+"/>
      <test>json-doc('JSONTestSuite/test_parsing/{$name}.json')</test>
      <result>{
         if ($name => starts-with('y')) then
             <assert>count($result) lt 2</assert>
         else if ($name => starts-with('n')) then
             <error code="FOJS0001"/>
         else
             <any-of><assert>true()</assert><error code="FOJS0001"/><error code="FOUT1200"/></any-of>
      }</result>
   </test-case>
  }
</test-set>