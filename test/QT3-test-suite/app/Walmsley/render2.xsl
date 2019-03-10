<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="label"/>              
  <xsl:param name="msg"/>              
  <xsl:template match="catalog">
    <p>
      <xsl:value-of select="$label"/>
      <xsl:text>: </xsl:text>
      <xsl:value-of select="$msg"/>
      <xsl:text>. There are </xsl:text>
      <xsl:value-of select="count(product)"/>
      <xsl:text> products.</xsl:text>
    </p>
  </xsl:template>
</xsl:stylesheet>