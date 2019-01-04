<?xml version="1.0"?> 
<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xqts="http://www.w3.org/2005/02/query-test-update"
   version="1.0">
   
   <xsl:output
      method="html"
      indent="no"
      />
   
   <xsl:strip-space elements="*"/>
   
   <xsl:param name="now" select="''" />
   <xsl:param name="errors" select="''" />
   
   <xsl:variable name="green" select='"lime"'/>
   <xsl:variable name="threshhold" select='1'/>
   <xsl:variable name="errorsDoc" select='document($errors)'/>
   
   <xsl:variable name="lower" select='"abcdefghijklmnopqrstuvwxyz"'/>
   <xsl:variable name="upper" select='"ABCDEFGHIJKLMNOPQRSTUVWXYZ"'/>
   
   <xsl:variable name='catalog' select='.'/>
   
   <xsl:key name='errors' match='/errors/error' use='text()'/>
   
   <xsl:key name='catalogErrors' match='//xqts:expected-error[../../@name != "ErrorFunc" or text() = "FOER0000"]' use='text()'/>
   
   <!-- Generate the w3 template -->
   
   <xsl:template match="/">
      
      
      <html xmlns="http://www.w3.org/1999/xhtml">
         <head>
            <title>XQuery Update Facility Test Suite Errors</title>            
         </head>
         
         
         <body>
            
            <h2>Undefined Errors</h2>
            <xsl:variable name='errors'>
               <xsl:apply-templates select='//xqts:expected-error'>
               </xsl:apply-templates>
            </xsl:variable>
            <xsl:choose>
               <xsl:when test='normalize-space($errors) != ""'>
                  <ol>
                     <xsl:copy-of select='$errors'/>
                  </ol>
               </xsl:when>
               <xsl:otherwise>
                  <blockquote>
                     <xsl:text>None.</xsl:text>
                  </blockquote>
               </xsl:otherwise>
            </xsl:choose>
            <p/>
            
            <h2>Conflicting Errors (* and XXXX####)</h2>
            <xsl:variable name='errors'>
               <xsl:apply-templates
                  select='//xqts:test-case[xqts:expected-error = "*" and xqts:expected-error != "*"] '>
               </xsl:apply-templates>
            </xsl:variable>
            <xsl:choose>
               <xsl:when test='normalize-space($errors) != ""'>
                  <ol>
                     <xsl:copy-of select='$errors'/>
                  </ol>
               </xsl:when>
               <xsl:otherwise>
                  <blockquote>
                     <xsl:text>None.</xsl:text>
                  </blockquote>
               </xsl:otherwise>
            </xsl:choose>
            <p/>
            
            <h2>Error Coverage</h2>
            
            <p>Threshold: <xsl:value-of select='$threshhold'/></p>
            <xsl:variable name='allErrors' select='$errorsDoc/errors/error' />
            <table border="1">
               <tr><th>Error</th><th>Test Cases</th></tr>
               <xsl:for-each select='$allErrors'>
                  <xsl:sort select="."/>
                  <xsl:variable name='err' select='text()'/>
                  <xsl:if test='not(./preceding-sibling::*[.=$err])'>
                     <xsl:for-each select='$catalog'>
                        <xsl:variable name='count' select='count(key("catalogErrors",$err))'/>		     
                        <tr>
                           <td><xsl:value-of select="$err"/></td>
                           <td>
                              <xsl:attribute name="bgcolor">
                                 <xsl:choose>
                                    <xsl:when test='$count >= $threshhold'>
                                       <xsl:value-of select="$green"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                       <xsl:text>red</xsl:text>
                                    </xsl:otherwise>
                                 </xsl:choose>
                              </xsl:attribute>
                              <xsl:value-of select="$count"/>
                           </td>
                        </tr>
                     </xsl:for-each>
                  </xsl:if>
               </xsl:for-each>
            </table>
            <p/>
            
            
            <p align="right">
               <small>Generated: andrew.eisenberg@us.ibm.com
                  <br/>
                  <xsl:value-of select="$now"/>
                  <br/>
               </small>
            </p>
            
         </body>
         
      </html>               
      
   </xsl:template>
   
   
   
   <!-- Test Suite Summary -->
   
   <xsl:template match='xqts:expected-error'>
      <xsl:variable name="error" select="text()"/>
      <xsl:variable name="testcase" select="../../@name"/>
      <xsl:variable name="creator" select="../../@Creator"/>
      <xsl:for-each select='$errorsDoc'>
         <xsl:if test='not(key("errors",$error))
                       and $error != "*"
                       and not(starts-with($error, "XP"))
                       and not(starts-with($error, "XQ"))
                       and not(starts-with($error, "FOER"))
                      '>
            <li>
               <xsl:value-of select="$testcase"/>
               <xsl:text>, </xsl:text>
               <xsl:value-of select="$error"/>
               <xsl:text>, </xsl:text>
               <xsl:value-of select="$creator"/>
            </li>
         </xsl:if>
      </xsl:for-each>
   </xsl:template>
   
   
   <xsl:template match='xqts:test-case'>
      <li>
         <xsl:value-of select="@name"/>
         <xsl:text>, </xsl:text>
         <xsl:value-of select="@Creator"/>
      </li>
   </xsl:template>
   
   
</xsl:stylesheet>
