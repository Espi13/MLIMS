<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/CATALOG">
      <html>
         <head>
            <meta charset="utf-8"/>  
            <title>Ejemplo XSLT</title>      
            <link rel="stylesheet" type="text/css" href="cd_catalogo-xml.css"></link>
         </head>  
          <body>
            <h1>Ejemplo XSLT</h1>
            <table>
            <tr>
                <th>Artista</th>
                <th>Título</th>
                <th>Precio</th>
            </tr>
              <!--<xsl:for-each select="CD[PRICE&gt;='9']"> Mostrar aquellos que tienen precio mayor a 9-->
              <xsl:for-each select="CD">
              <xsl:sort select="PRICE" data-type="number" order="descending"/> <!--Ordenar por precio-->
                  <tr>
                    <td><xsl:value-of select="ARTIST"/></td>
                    <td><xsl:value-of select="TITLE"/></td>
                    <xsl:choose>
                      <xsl:when test="PRICE&gt;10">
                      <td class="caro"><xsl:value-of select="PRICE"/></td>
                      </xsl:when>
                      <xsl:when test="PRICE&lt;8">
                      <td class="barato"><xsl:value-of select="PRICE"/></td>
                      </xsl:when>
                      <xsl:otherwise>
                      <td><xsl:value-of select="PRICE"/> </td>
                      <td><xsl:value-of select="PRICE/@divisa"/></td>
                      </xsl:otherwise>
                    </xsl:choose>
                   </tr>
              </xsl:for-each>
          </table>
        </body>
      </html>
  </xsl:template>
</xsl:stylesheet>