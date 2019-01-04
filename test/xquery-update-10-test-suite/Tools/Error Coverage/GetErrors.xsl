<?xml version="1.0"?> 
<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xhtml="http://www.w3.org/1999/xhtml"
   version="1.0">
   
   <xsl:output
      method="xml"
      indent="no"
      />
   
   <xsl:template match="/">      
      <errors>
         <xsl:choose>
            <xsl:when test="//xhtml:a[@id='xhtml-output']">
               <xsl:apply-templates select="//xhtml:a[@id='xhtml-output']/preceding::xhtml:a[starts-with(., 'err:')]" />
               <xsl:apply-templates select="//xhtml:a[@id='xhtml-output']/preceding::xhtml:dt[starts-with(., 'err:')]" />            
            </xsl:when>
            <xsl:otherwise>
               <xsl:apply-templates select="//xhtml:a[starts-with(., 'err:')][not(../following-sibling::xhtml:dd/xhtml:p[.='(Not currently used.)'])]" />
               <xsl:apply-templates select="//xhtml:dt[starts-with(., 'err:')][not(following-sibling::xhtml:dd/xhtml:p[.='(Not currently used.)'])]" />
            </xsl:otherwise>
         </xsl:choose>
         
         <!-- F&O defines FOER0000 as resulting from fn:error() -->
         
         <xsl:if test="//xhtml:title[.='XQuery 1.0 and XPath 2.0 Functions and Operators']">
            <error>FOER0000</error>
         </xsl:if>
         
      </errors>
      
   </xsl:template>
   
   
   <xsl:template match="xhtml:a">
      <!-- eliminate hits in element div class="back" -->
      
      <xsl:if test="not(./ancestor::xhtml:div[@class='back'])">      
         <error><xsl:value-of select="substring(., 5)"/></error>
      </xsl:if>
   </xsl:template>
   
   <xsl:template match="xhtml:dt">      
      <!-- eliminate hits in element div class="back" -->
      
      <xsl:if test="not(./ancestor::xhtml:div[@class='back'])">      
         <error><xsl:value-of select="substring(., 5, 8)"/></error>
      </xsl:if>
   </xsl:template>
   
   
   
</xsl:stylesheet>
