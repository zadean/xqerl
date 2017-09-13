<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns="http://www.w3.org/2010/09/qt-fots-catalog"
 xpath-default-namespace="http://www.w3.org/2010/09/qt-fots-catalog">

<xsl:output cdata-section-elements="test"/>

<xsl:template match="*">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates/>
  </xsl:copy>
</xsl:template>

<xsl:template match="environment[@ref]">
  <xsl:variable name="this" select="."/>
  <xsl:for-each select="tokenize(@ref, ' ')">
    <xsl:copy-of select="$this/root()//environment[@name=current()]/module"/>
  </xsl:for-each>
</xsl:template>

</xsl:stylesheet>

