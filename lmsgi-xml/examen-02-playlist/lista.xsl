<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/playlist">
  <html>
<head>
<meta charset="utf-8"/>
<title>PlayList</title>
<style type="text/css">
th,td{
border: 1px solid black;
}
th{
background-color: #00FF22;
}
td.larga{
color: red;
}
td.corta{
color: green;
}
</style>

</head>  
<body>
<h1><xsl:value-of select="title"/>, la lista musical de <xsl:value-of select="creator"/></h1>
<p>  Version de la playlist:<xsl:value-of select="@version"/></p>
<p>Fecha: <xsl:value-of select="date"/></p>

<table>
<tr>
<th>Artista</th>
<th>Canción</th>
<th>Duración</th>
<th>Localización</th>
</tr>

 <xsl:for-each select="trackList/track">
<xsl:sort select="duration" data-type="number" order="descending"/>
 <tr> 
     <td><xsl:value-of select="creator"/></td>
     <td> <xsl:value-of select="title"/></td>
    <xsl:choose>
                <xsl:when test=" duration &gt;300">
                  <td class="larga"> <xsl:value-of select="duration"/></td>
                </xsl:when>
                <xsl:when test=" duration &lt; 100">
                  <td class="corta"> <xsl:value-of select="duration"/></td>
                </xsl:when>
              <xsl:otherwise>
                <td> <xsl:value-of select="duration"/></td>
              </xsl:otherwise>
              </xsl:choose>
     <td><xsl:value-of select="location"/></td>
</tr>
 </xsl:for-each>

</table>

</body>  
  
  
  </html>
  </xsl:template>
</xsl:stylesheet>
