<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:param name="debug" select="false()"/>

    <xsl:template match="/">
        <xsl:if test="$debug">
            <xsl:message>STARTED</xsl:message>
        </xsl:if>
        <body>
            <xsl:copy-of select="works"/>
        </body>
    </xsl:template>

</xsl:stylesheet>