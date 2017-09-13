<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs f xqts xd"
    xmlns:xqts="http://www.w3.org/2005/02/query-test-XQTSCatalog"
    xmlns="http://www.w3.org/2010/09/qt-fots-catalog"
    xmlns:f="http://local/functions"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> 13 December, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> Michael Kay</xd:p>
            <xd:p>Converts a set of XSLTS tests into a set of FOTS tests. Input document is a single
            test-group entity from the XSLTS catalog, with a wrapper element added by hand to make it a well-formed
            document. This stylesheet merely creates a first-cut, the result typically needs a considerable
            amount of post-editing. Take care to respect IP/licensing restrictions that apply to some of the
            XSLTS tests.</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:param name="function" as="xs:string"/>
    <xsl:param name="testdir" select="'file:///e:/xslt20-test/TestSuiteStagingArea/'"/>
    
    <xsl:output method="xml" indent="yes" encoding="iso-646"/>
    
    <xsl:template match="/*">
        <test-set name="fn-{$function}">
            <description>
                <xsl:value-of select="GroupInfo/(title, description)"/>
            </description>
            <link type="spec" document="http://www.w3.org/TR/xpath-functions-11/" idref="func-{$function}"/>
            <dependencies/>
            <xsl:apply-templates select="testcase"/>
        </test-set>
    </xsl:template>
    
    <xsl:template match="testcase">
        <!--<xsl:message select="resolve-uri(input/stylesheet/@file, concat($testdir, 'TestInputs/'))"/>-->
        <xsl:variable name="stylesheet" select="doc(resolve-uri(input/stylesheet/@file, concat($testdir, 'TestInputs/')))"/>
        <xsl:variable name="comments" select="$stylesheet//comment()"/>
        <test-case name="{name}">
            <description>
                <xsl:variable name="rawdesc" select="concat(description, '&#xa;', string-join($comments, '&#xa;'))"/>
                <xsl:variable name="lines" select="tokenize($rawdesc, '\n\s*')"/>
                <xsl:for-each select="$lines[starts-with(., 'Creator:') or starts-with(., 'Purpose:')]">
                    <xsl:value-of select="concat('&#xa;        ', .)"/>
                </xsl:for-each>
            </description>
            <created by="{creator}" on="{format-date(current-date(), '[Y0001]-[M01]-[D01]')}"/>
            <xsl:comment>SOURCE: <xsl:value-of select="input/source-document/@file"/></xsl:comment>
            <xsl:text>&#xa;      </xsl:text>
            <environment>
                <xsl:apply-templates select="$stylesheet//*:decimal-format"/>
            </environment>
            <xsl:apply-templates select="discretionary-items"/>
            <test>
                <xsl:value-of select="$stylesheet//@select[contains(., $function)]" separator=",&#xa;"/>
            </test>
            <test><xsl:copy-of select="$stylesheet"/></test>
            <result>
                <xsl:choose>
                    <xsl:when test="output/result-document">
                        <assert-string-value>
                            <xsl:value-of select="doc(resolve-uri(output/result-document/@file, concat($testdir, 'ExpectedTestResults/')))"/> 
                        </assert-string-value>
                    </xsl:when>
                    <xsl:otherwise>
                        <error code="{output/error/@error-id}"/>  
                    </xsl:otherwise>
                </xsl:choose>                    
            </result>
        </test-case>
    </xsl:template>
    
    <xsl:template match="discretionary-items">
            <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="discretionary-feature">
        <dependency type="{@name}" value="{@behaviour}"/>
    </xsl:template>
    
    <xsl:template match="*:decimal-format">
        <decimal-format>
            <xsl:copy-of select="@*"/>
        </decimal-format>
    </xsl:template>
            
    

</xsl:stylesheet>
