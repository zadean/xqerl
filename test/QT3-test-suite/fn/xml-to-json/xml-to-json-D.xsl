<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:j="http://www.w3.org/2005/xpath-functions"
    exclude-result-prefixes="xs j"
    version="3.0">
    
    
    <xsl:output method="xml" indent="no"/>
    
    <!-- Valid (but edge case) inputs to xml-to-json -->
    
    <xsl:template name="t001">
        <xsl:variable name="in"><j:string xml:space="preserve">a</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t002">
        <xsl:variable name="in"><j:string xsi:type="xs:string" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">a</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t003">
        <xsl:variable name="in"><j:string escaped="1">\"</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t004">
        <xsl:variable name="in"><j:string escaped="&#x9;1&#xd; ">\\</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t005">
        <xsl:variable name="in"><j:string escaped=" true ">\uD834\uDD1E</j:string></xsl:variable>
        <t c="{string-to-codepoints(xml-to-json($in))}"><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t006">
        <xsl:variable name="in"><j:string escaped="0">\"</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t007">
        <xsl:variable name="in"><j:string escaped="&#x9;0&#xd; ">\\</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t008">
        <xsl:variable name="in"><j:string escaped=" false ">\uD834\uDD1E</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t009">
        <xsl:variable name="in" xml:space="preserve"><j:string>  </j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t010">
        <xsl:variable name="in"><j:string escaped="1">-"-</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t011">
        <xsl:variable name="in"><j:string escaped="1">-&#xa;-</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t012">
        <xsl:variable name="in"><j:string escaped="1">-&#xd;-</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t013">
        <xsl:variable name="in"><j:string escaped="1">-&#x9;-</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t014">
        <xsl:variable name="in"><j:string escaped="1">-&#127;-</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
   <!-- <xsl:template name="t015">
        <!-\- backspace -\->
        <xsl:variable name="in"><j:string escaped="1">-<xsl:value-of select="codepoints-to-string(8)"/>-</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>-->
    
    <xsl:template name="t016">
        <xsl:variable name="in"><j:string escaped="1">-&#144;-</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <!--<xsl:template name="t017">
        <!-\- bell -\->
        <xsl:variable name="in"><j:string escaped="1">-<xsl:value-of select="codepoints-to-string(7)"/>-</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t018">
        <!-\- form feed -\->
        <xsl:variable name="in"><j:string escaped="1">-<xsl:value-of select="codepoints-to-string(12)"/>-</j:string></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>-->
    
    <xsl:template name="t101">
        <xsl:variable name="in"><j:boolean> 0 <!--false--></j:boolean></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t102">
        <xsl:variable name="in"><j:boolean> 1 <?true?></j:boolean></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t103">
        <xsl:variable name="in"><j:boolean> false &#x9;</j:boolean></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t104">
        <xsl:variable name="in"><j:boolean> true &#xd;</j:boolean></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t201">
        <xsl:variable name="in"><j:number> 007 &#xd;</j:number></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t202">
        <xsl:variable name="in"><j:number> -0e0 &#xa;</j:number></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t203">
        <xsl:variable name="in"><j:number> 1E6 </j:number></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t204">
        <xsl:variable name="in"><j:number> -1E-6 </j:number></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t205">
        <xsl:variable name="in"><j:number> .001 </j:number></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t206">
        <xsl:variable name="in"><j:number> 23. </j:number></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t301">
        <xsl:variable name="in"><j:null/></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t302">
        <xsl:variable name="in"><null xmlns="http://www.w3.org/2005/xpath-functions"/></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t303">
        <xsl:variable name="in"><j:null><!--content--></j:null></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t401">
        <xsl:variable name="in"><j:array/></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t402">
        <xsl:variable name="in"><j:array>  </j:array></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t403">
        <xsl:variable name="in"><j:array><!--comment--></j:array></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t404">
        <xsl:variable name="in"><j:array>  <j:null/>  </j:array></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t405">
        <xsl:variable name="in"><j:array><j:string>(</j:string>  <j:null/><j:null/>  <j:string>)</j:string></j:array></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t406">
        <xsl:variable name="in"><j:array xml:space="preserve">  <j:string>(</j:string>  <j:null/><j:null/>  <j:string>)</j:string>  </j:array></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t407">
        <xsl:variable name="in"><j:array xmlns:extra="http://another.namespace.com/"><j:null/></j:array></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t501">
        <xsl:variable name="in"><j:map><j:string key="1">1</j:string><j:string key="\u0031" escaped-key="true">1</j:string></j:map></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t502">
        <xsl:variable name="in"><j:map><j:string key="\n" escaped-key="true">1</j:string><j:string key="\u000a" escaped-key="true">2</j:string></j:map></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t503">
        <xsl:variable name="in"><j:map><j:string key="\u000A" escaped-key="true">1</j:string><j:string key="\u000a" escaped-key="true">2</j:string></j:map></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t504">
        <xsl:variable name="in"><j:map><j:string key='\"' escaped-key="true">1</j:string></j:map></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t505">
        <xsl:variable name="in"><j:map><j:string key='\\' escaped-key="&#x9;1&#xd; ">1</j:string></j:map></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t506">
        <xsl:variable name="in"><j:map><j:string key='\uD834\uDD1E' escaped-key=" true ">1</j:string></j:map></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t507">
        <xsl:variable name="in"><j:map><j:string key='\"' escaped-key=" true ">1</j:string><j:string key='\"' escaped-key=" false ">0</j:string></j:map></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t508">
        <xsl:variable name="in"><j:map><j:string key='A'>1</j:string>  <j:string key='B' xml:space="preserve">  </j:string></j:map></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t509">
        <xsl:variable name="in"><j:map><j:string key='-&#xa;-'>1</j:string></j:map></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t510">
        <xsl:variable name="in"><j:map><j:string key='-&#xd;-'>1</j:string></j:map></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    <xsl:template name="t511">
        <xsl:variable name="in"><j:map><j:string key='-&#x9;-'>1</j:string></j:map></xsl:variable>
        <t><xsl:sequence select="xml-to-json($in)"/></t>
    </xsl:template>
    
    

    
</xsl:stylesheet>