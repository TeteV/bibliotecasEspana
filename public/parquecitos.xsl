<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:x="https://www.tito.com"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:xd="https://www.tito.com">
    
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:for-each select="list/item">
            <p>
                <xsl:value-of select="NOMBRE"/>
            </p>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
<!--

-->