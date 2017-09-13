<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs in xd"
    xmlns:in="http://www.w3.org/2005/05/xslt20-test-catalog"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" version="2.0"
    xmlns="http://www.w3.org/2010/09/qt-fots-catalog">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Jul 4, 2011</xd:p>
            <xd:p><xd:b>Author:</xd:b> Michael Kay</xd:p>
            <xd:p>This is a one-off stylesheet to convert the "regexsyntax" tests from the
            XSLT test suite into a set of FOTS tests.</xd:p>
            <xd:p>Input: regexsyntax.entity from XSLTS</xd:p>
            <xd:p>Output: a set of tests that can be merged into fn-matches.xml in FOTS</xd:p>
            <xd:p>v2 2011-11-09: Some of the test strings are very long; v2 of the stylesheet breaks these up.</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:output encoding="us-ascii"/>
    
    <xsl:template match="/">
        <test-set name="fn-matches.re">
            <description>Test regular expression syntax in the fn:matches() function.
            These tests are created from the XSLT test suite, which in turn are derived
            from the Microsoft regular expression tests submitted to W3C as part of the
            XML Schema test suite, with expected results added based on actual Saxon results.</description>
            <link type="spec" document="http://www.w3.org/TR/xpath-functions-30/"
                idref="func-matches"/>
            <xsl:apply-templates select="//in:testcase"/>
        </test-set>
    </xsl:template>
    <xsl:template match="in:testcase">
        <test-case name="{in:name}">
            <description>Test regex syntax</description>
            <created by="Michael Kay" on="{format-date(current-date(), '[Y0001]-[M01]-[D01]')}"/>
            <test>
                <xsl:choose>
                    <xsl:when test="exists(.//in:error)">
                        <xsl:text>matches('qwerty','</xsl:text>
                        <xsl:value-of select=".//in:param[@qname='regex']"/>
                        <xsl:text>')</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:variable name="apos">'</xsl:variable>
                        <xsl:variable name="apos2">''</xsl:variable>
                        <xsl:variable name="matches" select="in:ranges(.//in:param[@qname='match'], (.//in:param[@qname='delimiter'], ',')[1])"/>
                        <xsl:variable name="nonmatches" select="in:ranges(.//in:param[@qname='nonmatch'], (.//in:param[@qname='delimiter'], ',')[1])"/>
                        <xsl:text>(for $range in tokenize('</xsl:text>
                        <xsl:value-of select="$matches"/>
                        <xsl:text>')&#xa;let $s := xs:integer(substring-before($range, '-'))</xsl:text>
                        <xsl:text>&#xa;let $e := xs:integer(substring-after($range, '-'))</xsl:text>
                        <xsl:text>&#xa;for $c in ($s to $e)/codepoints-to-string(.)</xsl:text>
                        <xsl:text>&#xa;where not(matches($c, '^(</xsl:text>
                        <xsl:value-of select="replace(.//in:param[@qname='regex'], $apos, $apos2)"/>
                        <xsl:text>)$')) return $c), </xsl:text>
                        
                        <xsl:text>(for $range in tokenize('</xsl:text>
                        <xsl:value-of select="$nonmatches"/>
                        <xsl:text>')&#xa;let $s := xs:integer(substring-before($range, '-'))</xsl:text>
                        <xsl:text>&#xa;let $e := xs:integer(substring-after($range, '-'))</xsl:text>
                        <xsl:text>&#xa;for $c in ($s to $e)/codepoints-to-string(.)</xsl:text>
                        <xsl:text>&#xa;where (matches($c, '^(</xsl:text>
                        <xsl:value-of select="replace(.//in:param[@qname='regex'], $apos, $apos2)"/>
                        <xsl:text>)$')) return $c) </xsl:text>
          
                    </xsl:otherwise>
                </xsl:choose>
                
            </test>
            <result>
                <xsl:choose>
                    <xsl:when test="exists(.//in:error)">
                        <error code="{.//in:error/@error-id}"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <assert-empty/>
                    </xsl:otherwise>
                </xsl:choose>
            </result>
        </test-case>
    </xsl:template>
    
    <xsl:function name="in:ranges" as="xs:string">
        <xsl:param name="in" as="xs:string"/>
        <xsl:param name="delim" as="xs:string"/>
        <xsl:variable name="codes" 
            select="for $t in tokenize($in, $delim) return string-to-codepoints($t)" 
            as="xs:integer*"/>
        <xsl:value-of>
            <xsl:for-each-group select="$codes" group-adjacent=". - position()">
                <xsl:value-of select="., '-', current-group()[last()], ';'" separator=""/>          
            </xsl:for-each-group>
        </xsl:value-of>
    </xsl:function>
</xsl:stylesheet>
