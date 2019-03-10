<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:param name='v'/>
    <xsl:template match='/'>
        <v><xsl:value-of select='$v'/></v>
    </xsl:template>
</xsl:stylesheet>