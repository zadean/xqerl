<?xml version="1.0"?> 

<!--                                                                         -->
<!-- Generate a report for one or more QT3 result reports                   -->
<!--                                                                         -->
<!-- Author: O'Neil Delpratt                                                -->
<!-- Based upon the XQTS results stylesheet written by  Andrew Eisenberg     -->
<!--                                                                         -->
<!-- History:                                                                -->
<!--                                                                         -->
<!--   2012-08-08    Initial release (OND)                                   -->
<!--   2013-01-13    Revision (MHK)                                          -->
<!--   2013-06-12    Revision - Changes relating to bug issue #21568 (OND)   -->
<!--                                                                         -->


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
   xmlns:t="http://www.w3.org/2010/09/qt-fots-catalog"
   xmlns:r="http://www.w3.org/2012/08/qt-fots-results"
   xmlns:xs="http://www.w3.org/2001/XMLSchema">

   <xsl:output method="html" indent="yes"/>

   <xsl:strip-space elements="*"/>


   <!--                                                                      -->
   <!-- Parameters                                                           -->
   <!--                                                                      -->

   <!-- Place document author at end of report -->
   <xsl:param name="documentAuthor" select="'Michael Kay'"/>

   <!-- Place creation date at end of report -->
   <xsl:param name="creationDate" select="format-date(current-date(), '[D1] [MNn] [Y0001]')"/>

   <!-- Document that contains URLs of result reports -->
   <!-- <results><result>url</result>...</results> -->
   <xsl:param name="resultsDocs" select="collection('../../result-submissions/?select=results*.xml')"/>
   

   <!-- Generate Implementation-defined items, Static Context Properties,   -->
   <!-- and Dynamic Context Properties                                      -->
   <xsl:param name="impdef" select="true()" as="xs:boolean"/>


   <!-- Generate failures only -->
   <xsl:param name="failures" select="false()" as="xs:boolean"/>

   <!-- Generate Test Run section -->
   <xsl:param name="test-run-details" select="true()" as="xs:boolean"/>

   <!-- Add to the report title -->
   <xsl:param name="title-annotation" select="''"/>

   <xsl:variable name="catalog" select="."/>
   <xsl:variable name="changesDoc" select="document('changes.xml', $catalog)"/>
   <xsl:variable name="testSets" select="$catalog//t:test-set/doc(resolve-uri(@file,base-uri(..)))/t:test-set" />
   <xsl:variable name="testCases" select="$testSets/t:test-case"/>


   <!-- Some global variables -->


   <xsl:variable name="includeSummaryColumn" as="xs:boolean" select="count($resultsDocs) gt 1"/>
 
   <xsl:variable name="FOTSversion" select="t:catalog/@version"/>


   <!-- colors -->

   <xsl:variable name="perfectcolor" select="'mediumseagreen'"/>
   <xsl:variable name="passcolor" select="'palegreen'"/>
   <xsl:variable name="failcolor" select="'coral'"/>
   <xsl:variable name="untestedcolor" select="'white'"/>
   <xsl:variable name="backgroundcolor" select="'lightcyan'"/>
   <xsl:variable name="groupcolor" select="'paleturquoise'"/>
   
   <xsl:function name="r:status-color" as="xs:string">
      <xsl:param name="status" as="xs:string?"/>
      <xsl:choose>
         <xsl:when test="empty($status)">salmon</xsl:when>
         <xsl:when test="$status = 'pass'">palegreen</xsl:when>
         <xsl:when test="$status = 'wrongError'">lightgreen</xsl:when>
         <xsl:when test="$status = 'fail'">tomato</xsl:when>
         <xsl:when test="$status = ('n/a', 'tooBig', 'disputed')">white</xsl:when>
         <xsl:when test="$status = 'notRun'">salmon</xsl:when>
         <xsl:otherwise>yellow</xsl:otherwise>
      </xsl:choose>
   </xsl:function>

   <xsl:key name="testCaseByName" match="r:test-case" use="@name"/>
   <xsl:key name="testSetByName" match="r:test-set" use="@name"/>

   <!-- following is obsolete -->
   <xsl:key name="byscenario" match="t:test-case" use="@scenario"/>



   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- /                                                                    -->
   <!--                                                                      -->
   <!-- Generate:                                                            -->
   <!--    1) TOC, if necessary                                              -->
   <!--    2) Each of the sections                                           -->
   <!--    3) Footer, with author and creation date                          -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="/">
      <html xmlns="http://www.w3.org/1999/xhtml">
         <head>
            <title>
               <xsl:text>QT3 Test Suite Result Summary</xsl:text>
               <xsl:if test="$title-annotation != ''">
                  <xsl:text> - </xsl:text>
                  <xsl:value-of select="$title-annotation"/>
               </xsl:if>
            </title>
         </head>


         <body>
            <a name="top"></a>
            <center>
               <h1>
                  <xsl:text>QT3 Test Suite Result Summary</xsl:text>
                  <xsl:if test="$title-annotation != ''">
                     <xsl:text> - </xsl:text>
                     <xsl:value-of select="$title-annotation"/>
                  </xsl:if>
               </h1>
            </center>

            <!-- Generate summary -->

            <p/>
            <blockquote>
               <p> This document contains the results of running the <a
                     href="http://dev.w3.org/2011/QT3-test-suite/">QT3 Test
                     Suite</a> on <xsl:number value="count($resultsDocs)" format="w"/> implementations of XQuery and XPath. </p>

               <p>
                  <xsl:text>The latest version of this test suite is QT3 </xsl:text>
                  <xsl:value-of select="$FOTSversion"/>
                  <xsl:text>. Implementations that have used older versions of the test suite are noted.</xsl:text>
               </p>

               <p> When results are listed as number/number/number, then indicate pass/failed/total.
                  Passed and failed together may not equal total, due to tests
                  not run or not reported. </p>

               <p>The latest version of our files is available at <a
                     href="http://dev.w3.org/cvsweb/2011/QT3-test-suite/"
                     >http://dev.w3.org/cvsweb/2011/QT3-test-suite/</a>. 
                     The "catalog" and "query" links found with each test case are links to this
                     version. 
               </p>

 
            </blockquote>

            <hr/>

            <!-- Generate a list of implementations in this report -->

            <xsl:for-each select="$resultsDocs">
               <xsl:variable name="resultsFilename" select="r:productLink(.)"/>
               <xsl:result-document href="{$resultsFilename}">
                  <html>
                     <head>
                        <title>Test submission for <xsl:value-of select="r:test-suite-result/r:product/concat(@name, ' ', @version)"/></title>
                     </head>
                     <body>
                        <button type="button" onclick="window.location='report.html'">Main Report</button>
                        <h1>Test submission for <xsl:value-of select="r:productLabel(.)"/></h1>
                        <hr/>
                        <!-- <xsl:sort select="./r:FOTS-test-suite-result/r:syntax"/>-->
                        <!-- <xsl:sort select="./r:FOTS-test-suite-result/r:implementation/@name"/>-->
                        <xsl:variable name="product"
                           select="./r:test-suite-result/r:product"/>
                        <xsl:variable name="test-run"
                           select="./r:test-suite-result/r:submission/r:test-run"/>

                        <!-- Skip implementations that wish to be anonymous -->

                        <xsl:if test="not(xs:boolean(r:test-suite-result/r:submission/@anonymous))">
                           <h3>
                              <xsl:value-of select="$product/@name"/> version <xsl:value-of select="$product/@version"/>
                           </h3>
                           <blockquote>
                              <xsl:apply-templates select="$product"/>
                           </blockquote>
                        </xsl:if>
                     </body>
                  </html>
               </xsl:result-document>
            </xsl:for-each>

            <!-- Generate the summarized results -->
           
            <h2><a name="summary"/>Summarized Results:</h2>
            <blockquote>
               <p>Total number of test cases: <xsl:value-of select="count($testCases)"/></p>
               <p>Total number of implementation reports: <xsl:value-of select="count($resultsDocs)"/></p>
               <xsl:apply-templates mode="summary"/>
            </blockquote>
            
            <!-- Generate the detailed results -->
           
            <xsl:apply-templates mode="detail"/>        
            
            <!-- Generate analysis by feature name -->
            
            <blockquote>
               <h2>Results for Optional Features</h2>
               <blockquote>
                  <xsl:call-template name="dependencyList" />
               </blockquote>
                             
               <!-- Generate analysis by new facility name -->
               
               <h2>Results for New 3.0 Facilities</h2>
               <blockquote>
                  <xsl:call-template name="changeList" />
               </blockquote>
            </blockquote>

            <!-- Generate the document footer with author and creation date -->

            <xsl:if test="$documentAuthor != '' or $creationDate != ''">
               <hr/>
               <p align="left">
                  <small>
                     <xsl:if test="$documentAuthor != ''">
                        <xsl:text>Generated by </xsl:text>
                        <xsl:value-of select="$documentAuthor"/>
                     </xsl:if>
                     <xsl:if test="$creationDate != ''">
                        <xsl:text> on </xsl:text>
                        <xsl:value-of select="$creationDate"/>
                     </xsl:if>
                  </small>
               </p>
            </xsl:if>
         </body>

      </html>
      
      
      

   </xsl:template>

   <xsl:template name="legend">
      <table border="0" width="100%">
         <tr>
            <td>
               <table align="right">
                  <tr>
                     <td>Legend:&#xA0;&#xA0;&#xA0;&#xA0;</td>
                     <td>
                        <table frame="border">
                           <tr>
                              <td bgcolor="{$perfectcolor}"
                                 >&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;</td>
                           </tr>
                        </table>
                     </td>
                     <td>passed</td>
                     <td>&#xA0;&#xA0;&#xA0;&#xA0;</td>
                     <td>
                        <table frame="border">
                           <tr>
                              <td bgcolor="{$passcolor}"
                                 >&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;</td>
                           </tr>
                        </table>
                     </td>
                     <td>almost passed<br/>(&#x2265; 98%)</td>
                     <td>&#xA0;&#xA0;&#xA0;&#xA0;</td>
                     <td>
                        <table frame="border">
                           <tr>
                              <td bgcolor="{$failcolor}"
                                 >&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;</td>
                           </tr>
                        </table>
                     </td>
                     <td>failed</td>
                     <td>&#xA0;&#xA0;&#xA0;&#xA0;</td>
                     <td>
                        <table frame="border">
                           <tr>
                              <td bgcolor="{$untestedcolor}"
                                 >&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;</td>
                           </tr>
                        </table>
                     </td>
                     <td>untested</td>
                  </tr>
               </table>
            </td>
         </tr>
      </table>
   </xsl:template>

   <xsl:template name="headings">
      <xsl:param name="testType">Test-sets</xsl:param>
      <xsl:param name="resultsDocsGrouped" select="$resultsDocs" />
      <thead>
         <!-- Generate column heads for XQuery and XQueryX groups -->

         <tr>
            <td/>
            <td colspan="{count($resultsDocsGrouped)}" style="text-align:center">
               <b>Implementations</b>
            </td>
         </tr>
         <tr>

            <th>
               <!--<xsl:value-of select="$testType"/>-->
               <xsl:text>Tests</xsl:text>
            </th>
 
            <!-- Generate a column head for each result report -->

            <xsl:for-each select="$resultsDocsGrouped">
               <xsl:sort select="./r:test-suite-result/r:product/@name"/>
               <xsl:sort select="./r:test-suite-result/r:product/@version"/>
               <xsl:variable name="resultsFilename" select="r:productLink(.)"/>
               <xsl:variable name="productLabel" select="r:productLabel(.)"/>
               <th valign="top">
                  <a href="../{$resultsFilename}"><xsl:value-of select="$productLabel"/></a>
                  <br/>
                  <xsl:value-of select="r:test-suite-result/r:product/@language"/>
                  <xsl:variable name="testRunVersion" select="string(r:test-suite-result/r:submission/r:test-run/@test-suite-version)"/>
                  <xsl:if test="$testRunVersion != $FOTSversion">
                     <br/>
                     <font size="-1">
                        <xsl:choose>
                           <xsl:when test="$testRunVersion = ''">
                              <xsl:text>(unspecified)</xsl:text>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="'(QT3 v', $testRunVersion, ')'" separator=""/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </font>
                  </xsl:if>
               </th>
            </xsl:for-each>
         </tr>
      </thead>

   </xsl:template>
   
   <!-- 
      Generate a link to the page containing details
      for a particular submission
   -->

   <xsl:function name="r:productLink" as="xs:string">
      <xsl:param name="sourceDoc" as="document-node()"/>
      <xsl:choose>
         <xsl:when test="$sourceDoc/r:test-suite-result/r:submission/@anonymous = 'true'">
            <xsl:sequence select="concat('results_anonymous_', generate-id($sourceDoc), '.html')"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:sequence select="$sourceDoc/r:test-suite-result/r:product/concat('results_', @name, '_', @version, '_', generate-id(/), '.html')"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   
   <xsl:function name="r:productLabel" as="xs:string">
      <xsl:param name="sourceDoc" as="document-node()"/>
      <xsl:choose>
         <xsl:when test="$sourceDoc/r:test-suite-result/r:submission/@anonymous = 'true'">
            <xsl:sequence select="'Anonymous'"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:sequence select="$sourceDoc/r:test-suite-result/r:product/concat(@name, ' ', @version)"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>


   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- t:test-suite                                                      -->
   <!--                                                                      -->
   <!-- Generate a table with columns:                                       -->
   <!--    1) Feature - the feature name                                     -->
   <!--    2) a column for each result report, indicating success or failure -->
   <!--    3) a summary for all reports, if more than one                    -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="t:catalog" mode="summary">          
      <xsl:variable name="test-sets" select="t:test-set" />
      
      <h2>Results by Specification</h2>
      <xsl:for-each-group select="$resultsDocs" group-by="r:test-suite-result/r:product/@language">
         <xsl:sort select="current-grouping-key()"/>
         
         <xsl:variable name="specName">
            <xsl:choose>
               <xsl:when test="current-grouping-key() = 'XP20'">XPath 2.0</xsl:when>
               <xsl:when test="current-grouping-key() = 'XP30'">XPath 3.0</xsl:when>
               <xsl:when test="current-grouping-key() = 'XQ10'">XQuery 1.0</xsl:when>
               <xsl:when test="current-grouping-key() = 'XQ30'">XQuery 3.0</xsl:when>
            </xsl:choose>
         </xsl:variable>
         
         <blockquote>
            <p>
               <a href="spec/{current-grouping-key()}.html">
                  <xsl:value-of select="$specName, ' (', count($testCases[r:testCaseAppliesToSpec(., current-grouping-key())]), ' tests)'" separator=""/>
               </a>
            </p>
            <table frame="hsides" rules="groups" border="1" bordercolor="black"
               bgcolor="{$backgroundcolor}" cellpadding="4">
               <thead bgcolor="{$groupcolor}">
                  <tr>
                     <td>Product</td>
                     <td>Version</td>
                     <td>Tests passed</td>
                     <td>Tests failed</td>
                     <td>Tests run</td>
                     <td>% passed</td>
                  </tr>
               </thead>
               <tbody>
                  <xsl:for-each select="$resultsDocs[*/r:product/@language = current-grouping-key()]">
                     <xsl:sort select="*/r:product/@name"/>
                     <xsl:variable name="run" select="count(.//r:test-case[not(@result=('n/a', 'disputed', 'tooBig'))])"/>
                     <xsl:variable name="passes" select="count(.//r:test-case[@result=('pass', 'wrongError')])"/>
                     <xsl:variable name="fails" select="$run - $passes"/>
                     <tr>
                        <td bgcolor="{$groupcolor}"><xsl:value-of select="if (*/r:submission/@anonymous='true') then 'Anonymous' else */r:product/@name"/></td>
                        <td bgcolor="{$groupcolor}"><xsl:value-of select="*/r:product/@version"/></td>
                        <td><xsl:value-of select="$passes"/></td>
                        <td><xsl:value-of select="$fails"/></td>
                        <td><xsl:value-of select="$run"/></td>
                        <td><xsl:value-of select="if ($run=0) then 'N/A' else format-number(($passes div $run)*100, '##0.00')"/></td>
                     </tr>
                  </xsl:for-each>
               </tbody>
            </table>
         </blockquote>
         
         <xsl:result-document href="spec/{current-grouping-key()}.html">           
            <html>
               <head>
                  <title>Summary of results for <xsl:value-of select="$specName"/></title>
               </head>
               <body>
                  <button type="button" onclick="window.location='../report.html'">Main Report</button>
                  
                  <h1>Summary of results for <xsl:value-of select="$specName"/></h1>
                  
                  <xsl:call-template name="legend"/>
                  
                  <table frame="hsides" rules="groups" border="1" bordercolor="black"
                     bgcolor="{$backgroundcolor}" cellpadding="2">
                     <tbody>
                        <colgroup align="left"/>
                        
                        <xsl:if test="$includeSummaryColumn">
                           <colgroup align="left"/>
                           
                           <xsl:call-template name="headings">
                              <xsl:with-param name="resultsDocsGrouped" select="current-group()" />  
                           </xsl:call-template>
                                                     
                           <xsl:apply-templates select="$test-sets">
                              <xsl:with-param name="detail" select="false()"/>
                              <xsl:with-param name="resultsDocsGrouped" select="current-group()" />
                           </xsl:apply-templates>
                        </xsl:if>
                     </tbody>
                  </table>
               </body>
            </html>   
         </xsl:result-document>
      </xsl:for-each-group>            
   </xsl:template>

   <xsl:template match="t:catalog" mode="detail">
        <xsl:for-each select="t:test-set">
            <xsl:result-document href="testSets/{@name}.html">
               <html>
                  <head>
                     <xsl:call-template name="add-script"/>
                  </head>
                  <body>
                     <button type="button" onclick="window.location='../report.html'"
                        >Back to Main Report</button>
                     <xsl:call-template name="legend"/>
                     <table frame="hsides" rules="groups" border="1" bordercolor="black"
                        bgcolor="{$backgroundcolor}" cellpadding="2">

                        <xsl:call-template name="headings">
                           <xsl:with-param name="testType">Test-cases</xsl:with-param>
                        </xsl:call-template>

                        <xsl:apply-templates select=".">
                           <xsl:with-param name="detail" select="true()"/>
                           <xsl:with-param name="resultsDocsGrouped" select="$resultsDocs" />
                        </xsl:apply-templates>
                     </table>
                  </body>
               </html>
            </xsl:result-document>
        </xsl:for-each>
   </xsl:template>

   <xsl:template name="add-script">
      <script language="JavaScript" type="text/javascript">
         function doMenu(item) {
         obj=document.getElementById(item);
         col=document.getElementById("x" + item);
         if (obj.style.display=="none") { obj.style.display="block"; col.innerHTML="[-]"; }
         else { obj.style.display="none"; col.innerHTML="[+]"; } }
      </script>
           
      <script language="JavaScript" type="text/javascript">
          (document.getElementById) ? domNode = true: domNode = false;
          var current = null;
          
          function makeVisible(item) {
               if(current != null) {
                  makeInvisible(current);
              }
              if (domNode) {
                  document.getElementById(item).style.visibility = 'visible';
                  current = item;
                  
              }
          }
          
          function makeInvisible(item) {
              if (domNode) {
                  document.getElementById(item).style.visibility = 'hidden';
                  current = item;
              }
          }
      </script>
   </xsl:template>


   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- t:test-set                                                      -->
   <!--                                                                      -->
   <!-- Generate the test set hierarchy in the left-most column            -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="t:test-set">
      <xsl:param name="detail" as="xs:boolean"/>
      <xsl:param name="resultsDocsGrouped"/>
      <xsl:param name="levels" select="100"/>
      <xsl:param name="grandSummary" select="'false'"/>
      <xsl:variable name="testSetFile" select="document(@file)"/>
      <xsl:variable name="immediate-tests" select="$testSetFile/t:test-set/t:test-case"/>
      <xsl:variable name="testSetName" select="@name"/>
      <xsl:variable name="tests" select="$testSetFile/t:test-set/t:test-case"/>
      <xsl:variable name="rawtotal" select="count($tests)"/>
      <xsl:variable name="title" select="@name"/>
      <xsl:variable name="parseErrors" select="key('byscenario', 'parse-error')"/>
      <xsl:variable name="totalNotPE" select="count($tests[.=$parseErrors])"/>


      <xsl:choose>
         <xsl:when test="t:dependency[@type='spec' and @value='XT30+']">
            <!-- ignore XSLT-only tests -->
         </xsl:when>
         <xsl:when test="(count($immediate-tests) = 0 and $grandSummary='false')">
            <tr bgcolor="{$groupcolor}">
               <td>
                  <xsl:choose>
                     <xsl:when test="$detail">
                        <xsl:value-of select="@name"/>
                     </xsl:when>
                     <xsl:otherwise>
                        <a href="../testSets/{@name}.html">
                           <xsl:value-of select="@name"/>
                        </a>

                     </xsl:otherwise>
                  </xsl:choose>

               </td>

               <xsl:for-each select="$resultsDocsGrouped">
                  <td/>
               </xsl:for-each>

               <xsl:if test="$includeSummaryColumn">
                  <td/>
               </xsl:if>

            </tr>
         </xsl:when>

         <xsl:otherwise>
            <tr>
               <td valign="top">

                  <xsl:choose>
                     <xsl:when test="$detail">
                        <xsl:value-of select="@name"/>
                        <xsl:if test="$testSetFile/t:test-set/@covers"><b>*</b></xsl:if>
                     </xsl:when>
                     <xsl:otherwise>
                        <a href="../testSets/{@name}.html">
                           <xsl:value-of select="@name"/>
                        </a>
                     </xsl:otherwise>
                  </xsl:choose>
               </td>

               <!-- summary for each group -->

               <xsl:for-each select="$resultsDocsGrouped" >
                  <!--<xsl:sort select="./r:FOTS-test-suite-result/r:syntax"/>-->
                  <xsl:sort select="./r:test-suite-result/r:product/@name"/>
                  <xsl:sort select="./r:test-suite-result/r:product/@version"/>
                  <xsl:variable name="spec" select="r:test-suite-result/r:product/@language"/>
                  <xsl:variable name="syntax" select="./r:test-suite-result/r:syntax"/>
                  
                  <xsl:variable name="rawtotali" select="count($tests[r:testCaseAppliesToSpec(., $spec)])" />
                  
                  <td align="center">

                     <xsl:variable name="results" select="key('testSetByName', $testSetName)"
                        as="element(r:test-set)?"/>

                     <xsl:variable name="passed"
                        select="count($results/r:test-case[@result=('pass', 'wrongError')])"/>
                     <xsl:variable name="failed"
                        select="count($results/r:test-case[@result=('fail', 'notRun')])"/>
                     <xsl:variable name="total">
                        <xsl:value-of select="$rawtotali - count($results/r:test-case[@result = ('tooBig', 'disputed')])"/>
                     </xsl:variable>
                     <xsl:message>spec: <xsl:value-of select="$spec" />, Test-set: <xsl:value-of select="$testSetName" />: <xsl:value-of select="$rawtotal" />. notrun: <xsl:value-of select="count($results/r:test-case[@result = ('n/a', 'tooBig', 'disputed')])" /></xsl:message>
                     <xsl:attribute name="bgcolor">
                        <xsl:choose>
                           <xsl:when test="$passed=$total and $passed != 0">
                              <xsl:value-of select="$perfectcolor"/>
                           </xsl:when>
                           <xsl:when test="(100 * $passed) &gt; (98 * $total)">
                              <xsl:value-of select="$passcolor"/>
                           </xsl:when>
                           <xsl:when test="$passed = 0">
                              <xsl:value-of select="$untestedcolor"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="$failcolor"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:attribute>
                     <xsl:choose>
                        <xsl:when test="$grandSummary='true'">
                           <xsl:text>&#xA0;</xsl:text>
                           <xsl:value-of select="$passed"/>
                           <xsl:text>&#xA0;/&#xA0;</xsl:text>
                           <xsl:value-of select="$failed"/>
                           <xsl:text>&#xA0;/&#xA0;</xsl:text>
                           <xsl:value-of select="$total"/>
                           <xsl:text>&#xA0;</xsl:text>
                           <xsl:if test="$title='Minimal Conformance'">
                              <br/>
                              <xsl:value-of
                                 select="concat(round((1000*$passed) div $total) div 10, '%')"/>
                           </xsl:if>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="$passed"/>
                           <xsl:text>/</xsl:text>
                           <xsl:value-of select="$total"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </td>
               </xsl:for-each>

               <xsl:if test="$includeSummaryColumn">
                  <td align="center">
                     <xsl:variable name="totalresults" select="count($resultsDocsGrouped)"/>
                     <xsl:variable name="passresults">
                        <xsl:for-each select="$resultsDocsGrouped">
                           <xsl:variable name="spec" select="r:test-suite-result/r:product/@language"/>
                           <xsl:variable name="rawtotali" select="count($tests[r:testCaseAppliesToSpec(., $spec)])" />
                           <xsl:variable name="results" select="key('testSetByName', $testSetName)"
                              as="element(r:test-set)?"/>
                           <xsl:variable name="syntax"
                              select="./r:test-suite-result/r:syntax"/>
                           <xsl:variable name="total">
                              <xsl:choose>
                                 <xsl:when test="$syntax='XQueryX'">
                                    <xsl:value-of select="$rawtotali - $totalNotPE"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:value-of select="$rawtotali"/>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:variable>
                           <xsl:if
                              test="$total = count($results/r:test-case[@result=('pass', 'wrongError', 'n/a', 'tooBig', 'disputed')]) and $total != 0">
                              <xsl:value-of select="1"/>
                           </xsl:if>
                        </xsl:for-each>
                     </xsl:variable>

                     <xsl:variable name="passed" select="string-length($passresults)"/>
                     <xsl:attribute name="bgcolor">
                        <!--  <xsl:choose>
                           <xsl:when test='($totalresults="1" and $passed="1") or $passed >= 2'>
                              <xsl:value-of select="$perfectcolor"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="$failcolor"/>
                           </xsl:otherwise>
                        </xsl:choose>-->
                     </xsl:attribute>

                     <xsl:value-of select="$passed"/>
                     <xsl:text>/</xsl:text>
                     <xsl:value-of select="$totalresults"/>
                  </td>
               </xsl:if>

            </tr>

         </xsl:otherwise>
      </xsl:choose>

      <!-- Generate detail rows, if requested  -->

      <xsl:if test="$detail">
         <xsl:apply-templates select="$testSetFile//t:test-case">
            <xsl:with-param name="detail" select="true()"/>
         </xsl:apply-templates>
         
      </xsl:if>

      <!-- Generate rows for the test groups that are contained -->
   </xsl:template>
   
   <xsl:template name="dependencyList">
      <xsl:for-each-group select="$testCases" group-by="(.|..)/(t:dependency[@type='feature']/string(@value), t:dependency[not(@type=('spec', 'feature'))]/string(@type))">
         <xsl:sort select="current-grouping-key()"/>
         <xsl:variable name="sequence" select="position()"/>
         <xsl:variable name="primaryKey" select="current-grouping-key()"/>
         <h3><xsl:value-of select="current-grouping-key()"/></h3>
         <xsl:for-each-group select="current-group()" 
                group-by="(.|..)/t:dependency[(@type='feature' and @value=current-grouping-key()) or @type=current-grouping-key()]/concat(@value[not(.=current-grouping-key())], '[', (@satisfied, 'true')[1], ']')">
            
            <xsl:variable name="dependencyKey" select="replace(concat($primaryKey, '=', substring-before(current-grouping-key(), '[')), '=$', '')"/>
            <xsl:variable name="satisfied" select="substring-before(substring-after(current-grouping-key(), '['), ']')"/>
            <blockquote>
               <p>
                  <a href="dependency/{$sequence}p{position()}.html">
                     <xsl:value-of select="$dependencyKey"/>
                  </a>
                  <i><xsl:value-of select="if ($satisfied='true') then ' satisfied ' else ' not satisfied '"/></i>
                  <xsl:value-of select="'(', count(current-group()), ' test', 's'[count(current-group()) gt 1], ')'" separator=""/>
               </p>
               
               <xsl:variable name="minPasses" select="min(for $t in current-group()/@name return count($resultsDocs/key('testCaseByName', $t)[@result=('pass', 'wrongError')]))"/>
               <xsl:if test="$minPasses lt 2">
                  <xsl:variable name="sparseTests" select="for $t in current-group() 
                                                           return (if (count($resultsDocs/key('testCaseByName', $t/@name)[@result=('pass', 'wrongError')]) = $minPasses) then $t else ())"/>
                  <p style="color:red">
                     <xsl:number value="count($sparseTests)" format="Ww"/>
                     <xsl:value-of select="if (count($sparseTests) = 1) then ' test was' else ' tests were'"/>
                     passed by <xsl:value-of select="if ($minPasses = 0) then 'no implementations' else 'only one implementation' "/>
                  </p>
               </xsl:if>
            </blockquote>
            
            <xsl:result-document href="dependency/{$sequence}p{position()}.html">
               <html>
                  <head>
                     <title>Test results for dependency: <xsl:value-of select="$dependencyKey"/></title>
                     <xsl:call-template name="add-script"/>
                  </head>
                  <body>
                     <p>
                        <button type="button" onclick="window.location='../report.html'">Main Report</button>
                        <xsl:text>&#xa0;&#xa0;</xsl:text>
                        <button type="button" onclick="window.location='javascript:javascript:history.go(-1)'">Back</button>
                     </p>
                     <h1><xsl:value-of select="current-grouping-key()"/></h1>
                     <blockquote>Results for tests requiring that dependency <i><xsl:value-of select="replace($dependencyKey, '=', ' = ')"/></i> is 
                        <b><xsl:value-of select="if ($satisfied='true') then '' else 'not'"/></b> satisfied</blockquote>
                                      
                     <table frame="hsides" rules="groups" border="1" bordercolor="black"
                        bgcolor="{$backgroundcolor}" cellpadding="2">
                        <xsl:call-template name="headings">
                           <xsl:with-param name="testType" select="'Test-sets'"/>
                        </xsl:call-template>
                        
                        <tbody>
                           <xsl:choose>
                              <xsl:when test="contains($dependencyKey, '=')">
                                 <xsl:apply-templates select="$testCases[(.|..)/t:dependency[@type = substring-before($dependencyKey, '=') and @value = substring-after($dependencyKey, '=') and ((@satisfied, 'true')[1] = $satisfied)]]"/>
                              </xsl:when>
                              <xsl:otherwise>
                                 <xsl:apply-templates select="$testCases[(.|..)/t:dependency[@type = 'feature' and @value = $dependencyKey and ((@satisfied, 'true')[1] = $satisfied)]]"/>
                              </xsl:otherwise>
                           </xsl:choose>
                        </tbody>
                     </table>
                     
                  </body>
               </html>  
            </xsl:result-document>
            
         </xsl:for-each-group>
      </xsl:for-each-group>    
      
   </xsl:template>
   
   <xsl:template name="changeList">
      <xsl:variable name="changes" select="distinct-values($changesDoc//change/@id)" />
      
      <xsl:for-each select="$changes">
         <xsl:sort select="$changesDoc//change[@id = current()]/translate(., '&quot;', '')" lang="en"/>
         <xsl:variable name="changei" select="." />
         <xsl:variable name="desc" select="$changesDoc//change[@id = current()]/string()"/>
         <xsl:variable name="relevant-test-cases" 
            select="$testSets[tokenize(@covers, ' ') = $changei]/t:test-case |
            $testSets/t:test-case[tokenize(@covers, ' ') = $changei]" />
         <p>
            <a href="new/{.}.html">
               <xsl:value-of select="$desc"/>
            </a>
            <xsl:value-of select="concat(' (', count($relevant-test-cases), ' tests)')"/>
         </p>
         
         <xsl:variable name="minPasses" select="min(for $t in $relevant-test-cases/@name return count($resultsDocs/key('testCaseByName', $t)[@result=('pass', 'wrongError')]))"/>
         <xsl:if test="$minPasses lt 2">
            <xsl:variable name="sparseTests" select="for $t in $relevant-test-cases 
               return (if (count($resultsDocs/key('testCaseByName', $t/@name)[@result=('pass', 'wrongError')]) = $minPasses) then $t else ())"/>
            <blockquote>
               <p style="color:red">
                  <xsl:number value="count($sparseTests)" format="Ww"/>
                  <xsl:value-of select="if (count($sparseTests) = 1) then ' test was' else ' tests were'"/>
                  passed by <xsl:value-of select="if ($minPasses = 0) then 'no implementations' else 'only one implementation' "/>
               </p>
            </blockquote>
         </xsl:if>
         
         <xsl:result-document href="new/{.}.html">
            <html>
               <head>
                  <title>Test results covering change: <xsl:value-of select="$desc"/></title>
                  <xsl:call-template name="add-script"/>
               </head>
               <body>
                  <p>
                  <button type="button" onclick="window.location='../report.html'">Main Report</button>
                  <xsl:text>&#xa0;&#xa0;</xsl:text>
                  <button type="button" onclick="window.location='javascript:javascript:history.go(-1)'">Back</button>
                  </p>   
                  <h1>Test results covering change: <i><xsl:value-of select="$desc"/></i></h1>

                  <p><b>Change id: <xsl:value-of select="." /></b></p>
 
                  <table frame="hsides" rules="groups" border="1" bordercolor="black"
                     bgcolor="{$backgroundcolor}" cellpadding="2">
                     <xsl:call-template name="headings">
                        <xsl:with-param name="testType" select="'Test-sets'"/>
                     </xsl:call-template>
                     <tbody>
                        <xsl:apply-templates select="$relevant-test-cases"/>
                     </tbody>   
                  </table>
 
               </body>
            </html>  
         </xsl:result-document>
      </xsl:for-each>
      
   </xsl:template>


   <!--
     escape()
     Screen out characters that are not permitted in HTML
   -->

   <xsl:function name="r:escape" as="xs:string">
      <xsl:param name="in" as="xs:string"/>
      <xsl:sequence select="replace($in, '[&#x80;-&#x9F;]', '?')"/>
   </xsl:function>

   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- t:test-case                                                       -->
   <!--                                                                      -->
   <!-- Generate the test group hierarchy for the left-most column           -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="t:test-case">
 
      <xsl:variable name="test-name" select="@name"/>
      <xsl:variable name="creator" select="./t:created/@by"/>
      <xsl:variable name="test-casei" select="./t:test"/>
      <!--<xsl:variable name="FilePath" select="@FilePath" />-->

      <xsl:variable name="failedresults">
         <xsl:for-each select="$resultsDocs">
            <xsl:variable name="results" select="key('testCaseByName', $test-name)"/>
            <xsl:if test="count($results[@result='fail']) > 0">
               <xsl:value-of select="1"/>
            </xsl:if>
         </xsl:for-each>
      </xsl:variable>

      <xsl:variable name="failed" select="string-length($failedresults)"/>

      <xsl:if test="not($failures) or $failed > 0">
         <tr>
            <td valign="top">
               <xsl:for-each select="ancestor::t:test-set"
                  >&#xA0;&#xA0;&#xA0;&#xA0;</xsl:for-each>

               <a name="#x{$test-name}">
                  <xsl:value-of select="$test-name"/>
               </a>
               <a href="#x{$test-name}" onmousedown="makeVisible('{$test-name}');"
                  onmouseover="makeVisible('{$test-name}');" id="x{$test-name}">[+]</a>
               
               <font size="-1">
                  <div id="{$test-name}"
                     style="position:absolute; left:20; width:410px; height:10; visibility:hidden">
                     <font face="verdana, arial, helvetica, sans-serif" size="2">
                        <div
                           style="float:left; background-color:white; padding:3px; border:1px solid black">
                           <span
                              style="float:right; background-color:gray; color:white; font-weight:bold; width='20px'; text-align:center; cursor:pointer"
                              onclick="makeInvisible('{$test-name}')">&#160;X&#160;</span>
                           <b><xsl:value-of select="$test-name"/>:</b>
                           <br/>
                           <br/>
                           <xsl:value-of select="r:escape($test-casei)"/>
                        </div>
                     </font>
                  </div>

               </font>

               <!-- generate links to catalog and query -->


               <xsl:if test="$failures">
                  <br>
                     <font size="-1">
                        <xsl:for-each select="ancestor::t:test-set"
                           >&#xA0;&#xA0;&#xA0;&#xA0;</xsl:for-each>
                        <xsl:text>(Created by </xsl:text>
                        <xsl:value-of select="$creator"/>
                        <xsl:text>)</xsl:text>
                     </font>
                  </br>
               </xsl:if>
            </td>


            <xsl:for-each select="$resultsDocs">
               <xsl:sort select="./r:test-suite-result/r:product/@name"/>

               <xsl:variable name="test" select="key('testCaseByName', $test-name)"/>

               <!-- Long text causes horizaontal scrolling                          -->
               <!-- IE solution style="word-break:break-all; word-wrap:break-word;" -->
               <!-- Another solution is to add <wbr> tags inside the text           -->
               <!-- Some suggest  style="overflow-x:hidden;"                        -->

               <td valign="top">
                  <xsl:attribute name="bgcolor" select="r:status-color($test/@result)"/>
                  <xsl:choose>
                     <xsl:when test="$test">
                        <xsl:value-of select="$test/@result"/>
                        <xsl:if test="$test/@comment">
                           <div align="left" width="20">
                              <font size="1">
                                 <p>
                                    <xsl:value-of select="$test/@comment"/>
                                 </p>
                              </font>
                           </div>
                        </xsl:if>

                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:text>no result</xsl:text>
                     </xsl:otherwise>
                  </xsl:choose>
               </td>
            </xsl:for-each>

         </tr>
      </xsl:if>
   </xsl:template>


   <!-- 
     Given a set of test cases, count the number of passes and fails.
     Returns three integers, the number of passes, the number of fails,
     and the total number of tests
   -->
   
   <xsl:function name="r:testCaseStats" as="xs:integer*">
      <xsl:param name="testName" as="xs:string"/>
      <xsl:param name="testCases" as="element(t:test-case)*"/>
      <xsl:variable name="runs" select="$resultsDocs/key('testCaseByName', $testName)"/>
      <xsl:variable name="inapplicable" select="count($runs[@result = ('n/a', 'disputed', 'tooBig')])"/>
      <xsl:sequence select="count($runs[@result = ('pass', 'wrongError')]), count($testCases) - $inapplicable, count($testCases)"/>
   </xsl:function>
   
   <!-- 
     Determine whether a particular test case in the catalog is applicable
     to a given specification
   -->
   
   <xsl:function name="r:testCaseAppliesToSpec" as="xs:boolean">
      <xsl:param name="testCase" as="element(t:test-case)"/>
      <xsl:param name="spec" as="xs:string"/>
      <xsl:variable name="dependency" select="$testCase/((.|..)/t:dependency[@type='spec'])[last()]/@value"/>
      <xsl:sequence select="empty($dependency) or 
                            contains($dependency, $spec) or
                            ($spec = 'XQ30' and contains($dependency, 'XQ10+')) or
                            ($spec = 'XP30' and contains($dependency, 'XP20+'))"/>

   </xsl:function>


   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- r:product                                                 -->
   <!--                                                                      -->
   <!-- Generate rows that provide information about the implementation      -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="r:product">
      <table width="100%">
         <tr>
            <td width="25%" valign="top">Vendor:</td>
            <td width="75%" valign="top">
               <xsl:value-of select="@vendor"/>
            </td>
         </tr>
         <tr>
            <td valign="top">Product:</td>
            <td valign="top">
               <xsl:value-of select="@name"/>
            </td>
         </tr>
         <tr>
            <td valign="top">Version:</td>
            <td valign="top">
               <xsl:value-of select="@version"/>
            </td>
         </tr>
         <tr>
            <td valign="top">Released:</td>
            <td valign="top">
               <xsl:value-of select="@released"/>
            </td>
         </tr>

         <tr>
            <td style="vertical-align:top">
               <b>Dependencies</b>
            </td>
            <td>
               <table>
                  <xsl:for-each select="r:dependency">
                     <xsl:sort select="@satisfied" order="descending"/>
                     <xsl:sort select="@type"/>
                     <tr>
                        <td>name:  <xsl:value-of select="@type"/></td>
                        <td>&#xA0;</td>
                        <td>value: <xsl:value-of select="@value"/></td>
                        <td>&#xA0;</td>
                        <td>satisfied: <xsl:value-of select="@satisfied"/></td>
                     </tr>
                  </xsl:for-each>

               </table>
            </td>
         </tr>



      </table>
   </xsl:template>




   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- r:test-run                                                       -->
   <!--                                                                      -->
   <!-- Generate rows that provide information about the running of the test -->
   <!-- suite.                                                               -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="r:test-run">
      <table width="100%">
         <tr>
            <td width="25%" valign="top">Date:</td>
            <td width="75%" valign="top">
               <xsl:value-of select="@dateRun"/>
            </td>
         </tr>
         <tr>
            <td width="25%" valign="top">Test Suite Version:</td>
            <td width="75%" valign="top">
               <xsl:value-of select="r:test-suite/@version"/>
            </td>
         </tr>
         <!--  <tr>
               <td valign="top">Syntax:</td>
               <td valign="top"><xsl:value-of select="../r:syntax"/></td>
            </tr>-->

         <!-- <xsl:if test='r:transformation'>
               <tr>
                  <td valign="top" colspan="2">
                     Transformation:
                     <blockquote>
                        <xsl:apply-templates select='r:transformation/*'/>
                     </blockquote>
                  </td>
               </tr>         
            </xsl:if>
            <xsl:if test='r:comparison'>
               <tr>
                  <td valign="top" colspan="2">
                     Comparison:
                     <blockquote>
                        <xsl:apply-templates select='r:comparison/*'/>
                     </blockquote>
                  </td>
               </tr>         
            </xsl:if>
            <xsl:if test='r:otherComments'>
               <tr>
                  <td valign="top" colspan="2">
                     Other Comments:
                     <blockquote>
                        <xsl:apply-templates select='r:otherComments/*'/>
                     </blockquote>
                  </td>
               </tr>         
            </xsl:if>-->
      </table>
   </xsl:template>





   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- r:p                                                              -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="r:p">
      <p>
         <xsl:apply-templates/>
      </p>
   </xsl:template>


   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- common HTML tags                                                     -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="p | table | tr | th | td | ol | ul | li | br">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
   </xsl:template>





   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- r:implementation-defined                                         -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="r:implementation-defined">
      <table border="0">
         <xsl:apply-templates/>
      </table>
   </xsl:template>




   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- r:Feature                                                        -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

   <xsl:template match="r:Feature">
      <tr>
         <td width="30%" valign="top">
            <xsl:value-of select="@name"/>
            <xsl:text>:&#xA0;</xsl:text>
         </td>
         <td width="70%" valign="top">
            <xsl:value-of select="@value"/>
         </td>
      </tr>
   </xsl:template>
   
 


</xsl:stylesheet>
