<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/grupo">
<html>
<head>
<meta charset="utf-8"/>
<title>Grupo Daw1</title>
  <link rel="stylesheet" type="text/css" href="css/grupos.css"/>
</head>
<body>
<h1>Grupo:<xsl:value-of select="@grupo"/></h1>
<h2>Profesorado</h2>
<table>
<th>Nombre</th>
<th>Asignaturas que imparte</th>
<xsl:for-each select="profesorado/profesor">
<tr>
<td><xsl:value-of select="nombreProfesor"/></td>
<td>
<xsl:for-each select="responsable">
<ul>
 <li><xsl:value-of select="."/></li>
 </ul>
</xsl:for-each>
</td>
</tr>
 </xsl:for-each>
</table>
<h2>Alumnado</h2>
<article id="alumnado">
<xsl:for-each select="clase/alumno">
  <xsl:sort select= "media" data-type="number" order="descending"/>
  <section class="alumno">
  <xsl:choose>
  <xsl:when test='alias ="Carlos"'>
  <img src="fotos/carlos.png" alt=""></img>
</xsl:when>  
<xsl:when test='alias =""'>
<img src="fotos/ana.png" alt=""></img>
</xsl:when>  
<xsl:when test='alias ="Frank"'>
<img src="fotos/frank.png" alt=""></img>
</xsl:when>  
</xsl:choose>
<p><xsl:value-of select="nombre"/></p>
<xsl:if test="alias!=''">
<p>(<xsl:value-of select="alias"/>)</p>
 </xsl:if> 
<xsl:if test='alias=""'>
<br/>
 </xsl:if>
 
<xsl:choose>
  <xsl:when test="media &gt;9">
        <p class="negrita"><xsl:value-of select="media"/> </p>
 </xsl:when>
  <xsl:when test=" media &gt;7">
<p class="cursiva"><xsl:value-of select="media"/></p>
 </xsl:when>
 <xsl:otherwise>
 <p><xsl:value-of select="media"/></p>
 </xsl:otherwise>
</xsl:choose>
<p>
<xsl:for-each select="modulos/modulo">
<xsl:value-of select="."/>,
</xsl:for-each>
</p>
</section>
</xsl:for-each>
</article>
</body>

</html>
  </xsl:template>
</xsl:stylesheet>