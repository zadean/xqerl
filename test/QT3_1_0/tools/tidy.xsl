<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs in xd"
    xmlns:in="http://www.w3.org/2005/05/xslt20-test-catalog"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" version="2.0"
    xmlns:fots="http://www.w3.org/2010/09/qt-fots-catalog">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Jul 4, 2011</xd:p>
            <xd:p><xd:b>Author:</xd:b> Michael Kay</xd:p>
            <xd:p>This stylesheet is used to tidy up a test set document, for example by putting queries
                and serialization assertions in CDATA sections</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:strip-space elements="*"/>
    
    <xsl:output encoding="us-ascii" indent="yes" saxon:double-space="fots:test-case" xmlns:saxon="http://saxon.sf.net/"/>
    
    <xsl:template match="*">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="@*">
        <xsl:copy/>
    </xsl:template>
    
    <xsl:template match="fots:test">
      <xsl:copy>  
        <xsl:choose>
            <xsl:when test="(contains(., '&lt;') or contains(., '&amp;')) and not(contains(.,']]&gt;'))">
                <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
                <xsl:value-of select="fots:wrap(.)" disable-output-escaping="yes"/>
                <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="fots:wrap(.)"/>
            </xsl:otherwise>
        </xsl:choose>
      </xsl:copy>
    </xsl:template>
    
    <xsl:template match="fots:assert-xml">
      <xsl:copy>  
        <xsl:choose>
            <xsl:when test="(contains(., '&lt;') or contains(., '&amp;')) and not(contains(.,']]&gt;'))">
                <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
                <xsl:value-of select="." disable-output-escaping="yes"/>
                <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
      </xsl:copy>
    </xsl:template>
    
    <xsl:template match="fots:description">
        <xsl:variable name="this" select="."/>
        <xsl:copy>
        <xsl:for-each select="for $t in tokenize(., '&#xa;') return normalize-space($t)">
            <xsl:choose>
                <xsl:when test=".=''"/>
                <xsl:when test=".='insert-start'"/>
                <xsl:when test=".='insert-end'"/>  
                <xsl:when test="matches(., '^\*+$')"/>             
                <xsl:when test="starts-with(., 'Written by:') and contains(., $this/../fots:created/@by)"/>
                <xsl:when test="starts-with(., 'Written By:') and contains(., $this/../fots:created/@by)"/>
                <xsl:when test="starts-with(., 'Author:') and contains(., $this/../fots:created/@by)"/>
                <xsl:when test="starts-with(., 'Date:')"/>
                <xsl:when test="starts-with(., 'Test:') or starts-with(., 'test:')"/>
                <xsl:when test="starts-with(., 'Name:') or starts-with(., 'name :')"/>
                <xsl:when test="starts-with(., 'Purpose:')">
                    <xsl:value-of select="substring(., 9)"/>
                    <xsl:if test="position() ne last()"><xsl:text> </xsl:text></xsl:if>
                </xsl:when>
                <xsl:when test="starts-with(., 'Description:')">
                    <xsl:value-of select="substring(., 13)"/>
                    <xsl:if test="position() ne last()"><xsl:text> </xsl:text></xsl:if>
                </xsl:when>
                <xsl:when test="starts-with(., 'description :')">
                    <xsl:value-of select="substring(., 14)"/>
                    <xsl:if test="position() ne last()"><xsl:text> </xsl:text></xsl:if>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="."/>
                    <xsl:if test="position() ne last()"><xsl:text> </xsl:text></xsl:if>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
        </xsl:copy>
    </xsl:template>
    
    <!--<xsl:template match="fots:assert-string-value[. castable as xs:integer]">
        <xsl:element name="assert-eq" namespace="http://www.w3.org/2010/09/qt-fots-catalog">
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>-->
    
    <xsl:template match="fots:assert-string-value[contains(., '&lt;')]">
        <xsl:element name="assert-serialization" namespace="http://www.w3.org/2010/09/qt-fots-catalog">
                <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
                <xsl:value-of select="." disable-output-escaping="yes"/>
                <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
        </xsl:element>
    </xsl:template>
    
    <xsl:function name="fots:wrap" as="xs:string">
      <xsl:param name="in" as="xs:string"/>
      <xsl:choose>
        <xsl:when test="string-length($in) gt 60 and contains($in, ';')">
          <xsl:sequence select="concat('&#xa;        ', string-join(tokenize($in, ';'), ';&#xa;       '))"/>
        </xsl:when>
        <xsl:when test="string-length($in) gt 60">
          <xsl:sequence select="concat('&#xa;      ', $in, '&#xa;   ')"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$in"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:function>  
    
    <xsl:template match="fots:assert-xml[not(contains(., '&lt;'))]">
        <xsl:element name="assert-string-value" namespace="http://www.w3.org/2010/09/qt-fots-catalog">
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="fots:created">
      <xsl:next-match/>
      <xsl:if test="not(../fots:dependency) and (contains(../fots:test, 'declare function') or matches(../fots:test, '&lt;[\p{L}]'))">
        <xsl:element name="dependency" namespace="http://www.w3.org/2010/09/qt-fots-catalog">
          <xsl:attribute name="type">spec</xsl:attribute>
          <xsl:attribute name="value">XQ10+</xsl:attribute>
        </xsl:element>
      </xsl:if>
    </xsl:template>       
    
    <xsl:template match="fots:created/@on">
        <!-- remove timezone -->
        <xsl:attribute name="on" select="substring(., 1, 10)"/>
    </xsl:template>
    
    <xsl:template match="fots:environment[@ref='']"/>
    
    <xsl:template name="main">
      <xsl:for-each select="collection('file:///Users/mike/qt3?select=*.xml')">
        <xsl:result-document href="qt3-cbcl/{tokenize(document-uri(.), '/')[last()]}">
          <xsl:apply-templates/>
        </xsl:result-document>
     </xsl:for-each>
   </xsl:template>
   
   <xsl:variable name="test" select="
   let $f := function($m as xs:integer, $n as xs:integer) as xs:integer
                         {$m + $n}
           return
               $f(5, ?)(3)"/>
        
 
</xsl:stylesheet>
