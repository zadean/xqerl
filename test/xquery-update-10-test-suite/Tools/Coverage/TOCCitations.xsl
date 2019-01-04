<?xml version="1.0"?> 
<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xhtml="http://www.w3.org/1999/xhtml"
   version="1.0">
   <xsl:output
      method="xml"
      indent="yes"
      />
   
   <xsl:strip-space elements="*"/>
   
   <xsl:param name="now" select="''" />
   <xsl:param name="spec" select="''" />
   
   <!-- Generate the w3 template -->
   
   <xsl:template match="/">
      
      <citations>
         <xsl:apply-templates select="//xhtml:h1|//xhtml:h2|//xhtml:h3|//xhtml:h4|//xhtml:h5|//xhtml:h6|//h1|//h2|//h3|//h4|//h5|//h6"/>
      </citations>
      
   </xsl:template>
   
   
   
   <!-- Test Suite Summary -->
   
   <xsl:template match='xhtml:h1|xhtml:h2|xhtml:h3|xhtml:h4|xhtml:h5|xhtml:h6|h1|h2|h3|h4|h5|h6'>
      <xsl:variable name="title" select="normalize-space(text())"/>
      <citation>
         <xsl:attribute name='spec'><xsl:value-of select="$spec"/></xsl:attribute>
         <xsl:attribute name="name"><xsl:value-of select="*/@name"/></xsl:attribute>
         <xsl:attribute name="id"><xsl:value-of select="*/@id"/></xsl:attribute>
         <xsl:attribute name="sectionNumber">
            <xsl:value-of select="substring-before($title, ' ')"/>
         </xsl:attribute>
         <xsl:attribute name="sectionTitle">
            <xsl:value-of select="substring-after($title, ' ')"/>
         </xsl:attribute>
         
      </citation>
   </xsl:template>
   
   
   
</xsl:stylesheet>
