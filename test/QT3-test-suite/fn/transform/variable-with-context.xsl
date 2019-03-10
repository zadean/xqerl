<xsl:stylesheet version='3.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:variable name='v' select="."/>
    <xsl:template match='.'>
        <out root-is-doc="{$v instance of document-node()}" this-is-doc="{. instance of document-node()}">
            <xsl:value-of select='name($v)'/>
        </out>
    </xsl:template>
</xsl:stylesheet>