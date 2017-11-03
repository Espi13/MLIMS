<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/filmoteca">
    <html>
      <head>
        <meta charset="utf-8"/>
        <title>Examen</title>
        <link rel="stylesheet" type="text/css" href="estilos.css"/>
      </head>
      <body>
        <h1>Colección de películas de<xsl:value-of select="propietario"/></h1>
        
        
        <xsl:for-each select="peliculas/pelicula">
        <h2><xsl:value-of select="@codigo"/>: <xsl:value-of select="titulo"/>
          <xsl:if test="tituloOriginal!=''">
           ,  (<xsl:value-of select="tituloOriginal"/>)
          </xsl:if> 
       </h2>
        
        
        
          <section id="reparto">
          <h3>Reparto</h3>
          <ul>
          <xsl:for-each select="reparto/actor">
           <li><xsl:value-of select="."/></li>
          </xsl:for-each>
          </ul>
          </section>
          <section id="desc">
          Direccion: <xsl:value-of select="director"/><br/>
          Duracion: <xsl:value-of select="duracion"/><br/>
          Cartel: enlace a <a href="carteles/{cartel/@fuente}"><xsl:value-of select="cartel/@fuente"/><br/></a>
          
          <xsl:for-each select="sinopsis/parrafo">
           <p><xsl:value-of select="."/></p>
          </xsl:for-each>
          
          </section>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
