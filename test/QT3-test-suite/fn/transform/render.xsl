<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <body>
            <xsl:copy-of select="works"/>
        </body>
    </xsl:template>

</xsl:stylesheet>