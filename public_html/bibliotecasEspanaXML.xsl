<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:x="https://www.tito.com"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:xd="https://www.tito.com">
    
    <xsl:output method="xml"/>
    <xsl:template match="/">
        <list>
        <xsl:for-each select="x:list/x:item">
            <item>
            <INSTITUCION>
                <xsl:value-of select="x:INSTITUCION"/>
            </INSTITUCION>
            <DIRECCION>
                <xsl:value-of select="x:DIRECCION"/>
            </DIRECCION>
            <LOCALIDAD>
                <xsl:value-of select="x:LOCALIDAD"/>
            </LOCALIDAD>
            <PAIS>
                <xsl:value-of select="x:PAIS"/>
            </PAIS>
            </item>
        </xsl:for-each>
        </list>
    </xsl:template>
</xsl:stylesheet>
<!--

-->