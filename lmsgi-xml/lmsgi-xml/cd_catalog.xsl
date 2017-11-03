<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:template match="/CATALOG">
  <html>
<head>
<meta charset = "utf-8"/>
<title>Ejemplo XSLT</title>
<link rel="stylesheet" type="text/css" href="cd_catalog2.css"/>
</head>
  <body>
    <h1>Ejemplo XSLT</h1>
    <table>
    <caption>Coleccion de <xsl:value-of select="@propietario"/></caption>
    <tr>
    <th>WEB</th>
  <th>Titulo</th>  
  <th>Artista</th>  
  <th>Precio</th> 
   <th>YEAR</th> 
   
    </tr>
    <xsl:for-each select="CD">
    <!-- <xsl:for-each select="CD[PRICE&gt; 9]">-->
    <!-- <xsl:for-each select="CD[ARTIST = 'Bob Dylan']">-->
    <!--<xsl:sort select= "ARTIST" order ="descending"/>-->
    <!--<xsl:sort select= "PRICE" data-type="number" order ="descending"/>-->
    <xsl:sort select= "YEAR" order="descending"/>
    <xsl:sort select= "ARTIST"/>
    
    <tr>
    <td><a href="{WEB}"><xsl:value-of select="WEB"/></a> </td>
     <td> <a href="{WEB}"><xsl:value-of select="TITLE"/></a></td>
      <td><xsl:value-of select="ARTIST"/>&#160;<xsl:value-of select="ARTIST/@pais"/></td>
      
      <xsl:choose>
            
            <xsl:when test="PRICE&gt;10">
            <td class="caro"><xsl:value-of select="PRICE"/></td>
            </xsl:when>
            <xsl:when test="PRICE&lt; 9">
            <td class="barato"><xsl:value-of select="PRICE"/></td>
            </xsl:when>
            <xsl:otherwise>
            <td><xsl:value-of select="PRICE"/>, <xsl:value-of select="PRICE/@divisa"/></td>
            
            </xsl:otherwise>
    </xsl:choose>
    <td><xsl:value-of select="YEAR"/></td>
    </tr>
    </xsl:for-each>
    </table>
    
  </body>
</html>
  </xsl:template>
</xsl:stylesheet>
