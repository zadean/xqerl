<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="/">
        <xsl:for-each select="//section[1]">
            <xsl:result-document method="xhtml" href="section{position()}.html">
                <html>
                    <head>
                        <title>Section <xsl:value-of select="position()"/></title>
                    </head>
                    <body>
                        <h1>Header for section <xsl:value-of select="position()"/></h1>
                        <p>The content of <xsl:value-of select="."/>.</p>
                        <xsl:if test="position() ne last()">
                            <p><a href="section{position()+1}.html">Next section</a></p>
                        </xsl:if>
                        <xsl:if test="position() eq last()">     
                            <p><a href="section1.html">First section</a></p>
                        </xsl:if>                        
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
