<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Prueba XSLT</title>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"/>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"/>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"/>
            </head>
            <body>
                 <div class="container">                   
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Institucion</th>
                                <th>Direccion</th>
                                <th>Localidad</th>
                                <th>Pais</th>
                            </tr>
                        </thead>
                        <tbody> 
                            <xsl:for-each select="/list/item">
                                <tr>     
                                    <td>
                                        <xsl:value-of select="INSTITUCION"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="DIRECCION"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="LOCALIDAD"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="PAIS"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>                        
             </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
<!--

-->