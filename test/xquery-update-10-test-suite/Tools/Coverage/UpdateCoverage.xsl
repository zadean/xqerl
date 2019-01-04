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
   <xsl:param name="specName" select="''" />
   <xsl:param name="catalogName" select="''" />
   <xsl:variable name="green" select='"lime"'/>
   <xsl:variable name="max" select='200'/>
   <xsl:variable name="threshhold" select='20'/>
   <xsl:variable name="catalog" select='document($catalogName)'/>
   <xsl:variable name="title" select='"XQuery Update Test Suite Coverage Summary"'/>
   
   <xsl:key name='test' match='//xqts:test-case/xqts:spec-citation' use='@section-pointer'/>
   
   <!-- Generate the w3 template -->
   
   <xsl:template match="/">
      <html xmlns="http://www.w3.org/1999/xhtml">
         <head>
            <title><xsl:value-of select="$title"/></title>            
         </head>
         
         
         <body>
            
            <!-- Display Implementations -->
            
            <center>
               <h1><xsl:value-of select="$title"/></h1>
            </center>
            
            <p>
               <xsl:value-of select='concat("Threshhold: ", $threshhold)'/>
            </p>
            
            <table width="100%">
               <tr>
                  <td></td>
                  <td></td>
                  <td>
                     <table width="100%">
                        <tr>
                           <td align='left'>0</td>
                           <td align='right'>
                              <xsl:value-of select='$max'/>
                           </td>
                        </tr>
                        <tr bgcolor='grey'>
                           <td colspan='2' height='2'/>
                        </tr>
                     </table>
                  </td>
               </tr>
               <xsl:apply-templates select='citations/*
                  [@sectionNumber != "" and @sectionTitle != "Examples"]'/>
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
   
   <xsl:template match='citation'>
      <xsl:variable name='citationId' select='@id'/>
      <xsl:variable name='sectionNumber' select='@sectionNumber'/>
      <xsl:variable name='sectionTitle' select='@sectionTitle'/>
      <xsl:for-each select='$catalog'>
         <xsl:variable
            name='citations'
            select='count(key("test",$citationId)[@spec=$specName]/..)'/>
         <tr>
            <td width="30%">
               <xsl:value-of select='concat($sectionNumber, " ", $sectionTitle)'/>
            </td>
            <td width="5%" valign='top'>
               <xsl:value-of
                  select='$citations'
                  />
            </td>
            <td width="65%">
               <xsl:if test='$citations &gt; 0'>
                  <table>
                     <xsl:attribute name='width'>
                        <xsl:value-of
                           select='concat((100 * $citations) div $max, "%")'
                           />
                     </xsl:attribute>
                     <tr>
                        <xsl:attribute name='bgcolor'>
                           <xsl:choose>
                              <xsl:when test='$citations &gt;= $threshhold'>
                                 <xsl:text>green</xsl:text>
                              </xsl:when>
                              <xsl:otherwise>
                                 <xsl:text>red</xsl:text>
                              </xsl:otherwise>
                           </xsl:choose>
                        </xsl:attribute>
                        <td height='5'></td>
                     </tr>
                  </table>
               </xsl:if>
            </td>
            <td width="5%" valign="top">
               <xsl:if test='$citations &gt;= $max'>
                  <span style='color:green'><b>+++</b></span>
               </xsl:if>
            </td>
         </tr>
      </xsl:for-each>
      
   </xsl:template>
   
</xsl:stylesheet>
