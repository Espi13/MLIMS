<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/CATALOG">
    <html>
        <head>
            <meta charset="utf-8"/>
            <title>Ejemplo XSLT</title>
            <link rel="stylesheet" type="text/css" href="cd_catalogo.css"></link>
        </head>
        <body>
            <h1> Ejemplo XSLT</h1>
            <table>
            <caption>Coleccion de <xsl:value-of select="@propietario" /></caption>
            <tr>
              <th> Titulo</th>
              <th> Artista</th>
              <th> Precio</th>
              <th>Año</th>
            </tr>
            <xsl:for-each select="CD">
            <tr>
              <td>
                <a href="{WEB}"><xsl:value-of select="TITLE"/></a>
              </td>
              <td>
                  <xsl:value-of select="ARTIST"/>
                  <xsl:value-of select="ARTIST/@pais"/>
              </td>
              
              <xsl:choose>
                <xsl:when test=" PRICE &gt;10">
                  <td class="caro"> <xsl:value-of select ="PRICE"/></td>
                </xsl:when>
                <xsl:when test=" PRICE &lt; 8">
                  <td class="barato"> <xsl:value-of select ="PRICE"/></td>
                </xsl:when>
              <xsl:otherwise>
                <td> <xsl:value-of select="PRICE"/></td>
              </xsl:otherwise>
              </xsl:choose>
              <td><xsl:value-of select="YEAR" /></td>
              </tr>
              </xsl:for-each>
            </table>
        </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
