<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:bin="http://expath.org/ns/binary"
    exclude-result-prefixes="xs bin"    
    version="2.0">
    
    <!-- If needed: xpath-default-namespace="http://www.unicode.org/ns/2003/ucd/1.0" -->
    
    <xsl:output method="xml" indent="yes"/>
    
    <!-- This stylesheet can be applied to the file ucd.all.flat.xml in the Unicode database to
        generate the <Cn> element that is used in test fn-normalize-unicode-11, to adapt the
        test to a different Unicode version. The stylesheet requires use of the EXPath binary
        module -->
    
    <xsl:template match="/">
        <Cn>
            <xsl:for-each select="ucd/repertoire/reserved">
                <range from="{bin:from-hex((@cp, @first-cp)[1])}" to="{bin:from-hex((@cp, @last-cp)[1])}"/>
            </xsl:for-each>
        </Cn>
    </xsl:template>
    
    <xsl:function name="bin:from-hex" as="xs:integer">
        <xsl:param name="in" as="xs:string"/>
        <xsl:variable name="v" as="xs:base64Binary" select="bin:hex($in)"/>
        <xsl:sequence select="bin:unpack-unsigned-integer($v, 0, bin:length($v))"/>
    </xsl:function>
    
</xsl:stylesheet>