<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    exclude-result-prefixes="xs f xqts xd"
    xmlns:xqts="http://www.w3.org/2005/02/query-test-XQTSCatalog"
    xmlns="http://www.w3.org/2010/09/qt-fots-catalog"
    xmlns:f="http://local/functions"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" 
    version="3.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Sep 28, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> Michael Kay</xd:p>
            <xd:p>Converts a set of XQTS tests into a set of FOTS tests. Input document is a single
            test-group entity from the XQTS catalog</xd:p>
        </xd:desc>
    </xd:doc>
    
    <!-- the name of the test set to be created, e.g. a function name or syntax production name -->
    <xsl:param name="function" as="xs:string"/>
    
    <!--default assertion to be used -->
    <xsl:param name="assertion" as="xs:string" select="'assert-string-value'"/>
    
    <!-- default prefix -->
    <xsl:param name="prefix" as="xs:string" select="'op'"/>
    <xsl:variable name="kind" as="xs:string"
        select="if ($prefix eq 'fn' or $prefix eq 'map' or $prefix eq 'math') then 'function'
                else if ($prefix eq 'op') then 'operator'
                else if ($prefix eq 'prod') then 'production'
                else if ($prefix eq 'topic') then 'topic'
                else if ($prefix eq 'uc') then 'use-case'
                else ''"/>
    
    <!--<xsl:output method="xml" indent="yes" saxon:next-in-chain="tidy.xsl" xmlns:saxon="http://saxon.sf.net/"/>-->
    
    <xsl:variable name="main-catalog" select="doc(resolve-uri('../XQTSCatalog.xml', base-uri(.)))"/>
    
    <xsl:template match="xqts:test-group">
        <test-set name="{$prefix}-{$function}">
            <description>
                <xsl:value-of select="GroupInfo/(title, description)"/>
                <xsl:text/>Tests for the <xsl:value-of select="$function, $kind"/><xsl:text/>
            </description>
            <xsl:choose>
                <xsl:when test="$kind='function' or $kind='operator'">
                   <link type="spec" document="http://www.w3.org/TR/xpath-functions-30/" idref="func-{$function}"/>
                </xsl:when>
                <xsl:when test="$kind='prod'">
                   <link type="spec" document="http://www.w3.org/TR/xquery-30/" idref="doc-xquery30-{$function}"/> 
                </xsl:when>
                <xsl:otherwise>
                    <!-- TODO: LINK TO BE COMPLETED BY HAND -->
                    <link type="spec" document="http://www.w3.org/TR/xquery-30/" idref="doc-xquery30-{$function}"/> 
                </xsl:otherwise>                    
            </xsl:choose>
            <xsl:for-each select="((//xqts:spec-citation)[1])">
                <link type="spec" document="{@spec}" section-number="{@section-number}" idref="{@section-pointer}"/>
            </xsl:for-each> 
            <xsl:for-each-group select="//xqts:module" group-by="@namespace">
                <environment name="{.}">
                    <module uri="{@namespace}" file="ModuleImport/{.}.xq"/>
                </environment>
            </xsl:for-each-group>
            <xsl:try>
              <xsl:apply-templates select="xqts:test-case"/>
              <xsl:catch/>
            </xsl:try>  
        </test-set>
    </xsl:template>
    
    <xsl:template match="xqts:test-case">
        <xsl:variable name="querytext" select="unparsed-text(resolve-uri(concat('Queries/XQuery/', @FilePath, xqts:query/@name, '.xq'), base-uri(.)))"/>
        <xsl:variable name="rawquery" select="normalize-space(replace($querytext, '\(:.*?:\)', ''))"/>
        <!--<xsl:variable name="rawquery" select="$querytext"/>  for XQueryComment tests only -->
        <xsl:variable name="comments" select="f:comments($querytext)"/>
        <test-case name="{@name}">
            <description><xsl:value-of select="concat(description, '&#xa;', $comments)"/></description>
            <created by="{@Creator}" on="{xqts:query/@date}"/>
            <xsl:if test="exists(xqts:spec-citation) and not(deep-equal(xqts-spec-citation, (//xqts-spec-citation)[1]))">
               <link type="spec" document="{@spec}" section-number="{@section-number}" idref="{@section-pointer}"/> 
            </xsl:if>
            <xsl:if test="xqts:module or not(xqts:input-file = 'emptydoc')">
              <environment ref="{xqts:module, xqts:input-file[not(. = 'emptydoc')]}"/>
            </xsl:if>
            <xsl:if test="xqts:input-query">
                <environment>
                    <xsl:for-each select="xqts:input-query">
                        <xsl:variable name="querytext" select="unparsed-text(resolve-uri(concat('Queries/XQuery/', ../@FilePath, @name, '.xq'), base-uri(.)))"/>
                        <param name="{@variable}" select="{normalize-space($querytext)}" declared="yes"/>
                    </xsl:for-each>
                </environment> 
            </xsl:if>
            <xsl:if test="xqts:input-URI">
                <environment>
                    <xsl:for-each select="xqts:input-URI">
                        <xsl:variable name="apos">'</xsl:variable>
                        <xsl:variable name="sourcename" select="string(.)"/>
                        <param name="{@variable}" as="xs:string" select="'../docs/{substring-after($main-catalog//xqts:source[@ID=$sourcename]/@FileName, '/')}'"/>
                    </xsl:for-each>
                </environment>
            </xsl:if>
            <xsl:if test="contains($rawquery, '&lt;')">
                <dependency type="spec" value="XQ10+"/>
            </xsl:if>  
            <test><xsl:value-of select="$rawquery"/></test>
            <result>
                <xsl:choose>
                    <xsl:when test="count(xqts:output-file | xqts:expected-error) gt 1">
                        <any-of>
                            <xsl:apply-templates select="xqts:output-file, xqts:expected-error"/> 
                        </any-of>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="xqts:output-file, xqts:expected-error"/>  
                    </xsl:otherwise>
                </xsl:choose>                    
            </result>
        </test-case>
    </xsl:template>
    
    <xsl:template match="xqts:output-file">
        <xsl:variable name="results" select="unparsed-text(resolve-uri(concat('ExpectedTestResults/', ../@FilePath, .), base-uri(.)))"/>
        <xsl:choose>
            <xsl:when test="$results = 'true'">
                <assert-true/>
            </xsl:when>
            <xsl:when test="$results = 'false'">
                <assert-false/>
            </xsl:when>
            <xsl:when test="contains($results, '&lt;')">
                <assert-xml>
                    <xsl:value-of select="$results"/>
                </assert-xml>
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="{$assertion}" namespace="http://www.w3.org/2010/09/qt-fots-catalog">
                    <xsl:value-of select="$results"/>
                </xsl:element>  
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="xqts:expected-error">
        <error code="{.}"/>       
    </xsl:template>
    
    <xsl:function name="f:comments" as="xs:string">
        <xsl:param name="query" as="xs:string"/>
        <xsl:sequence select="
            if (contains($query, '(:'))
            then concat(substring-before(substring-after($query, '(:'), ':)'), '&#xa;', f:comments(substring-after($query, ':)')))
            else ''"/>
    </xsl:function>
    
    <!-- Entry point for converting the functx tests -->
    <!-- Assumes Saxon implementation of collection URIs and Saxon filestore layout -->
    
    <xsl:template name="functx">
        <xsl:variable name="collection" select="collection('file:///e:/xqts/2006/xquery-test-suite/TestSuiteStagingArea/cat/?select=functx-fn*.xml')"/>
        <xsl:message select="count($collection)"/>
        <test-set name="{$prefix}-{$function}">
            <description>
                Tests derived from the functx library
            </description>
            <xsl:apply-templates select="$collection//xqts:test-case"/>
        </test-set>
    </xsl:template>
    
    <!-- Entry point for converting the CBCL tests -->
    
    <xsl:template name="cbcl">
      <xsl:variable name="cat" select="doc('file:///Users/mike/Downloads/cbcl-xqts/XQTSCatalog.xml')"/>
      <xsl:for-each select="$cat//xqts:test-group[not(.//xqts-test-group)]">
        <xsl:result-document href="qt3/{@name}.xml" indent="yes">
          <xsl:apply-templates select="."/>
        </xsl:result-document>
      </xsl:for-each>
    </xsl:template>  
        
    
</xsl:stylesheet>
