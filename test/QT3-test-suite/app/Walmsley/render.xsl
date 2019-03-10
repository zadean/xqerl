<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
   <xsl:template match="catalog">
          <p>There are <xsl:value-of select="count(product)"/> products in the catalog.</p>
   </xsl:template>
</xsl:stylesheet>
