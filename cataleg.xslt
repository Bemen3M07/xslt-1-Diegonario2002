<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="#ff0000">
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
      <th style="text-align:left">Country</th>
        <th style="text-align:left">Price Indicator</th> <!-- Nova columna per al punt de color -->
    </tr>
    <xsl:for-each select="catalog/cd">
     <xsl:sort select="artist"/>
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
<td><xsl:value-of select="country"/></td>
<td>
                <!-- Comprova si el preu és superior a 10 euros -->
                <xsl:choose>
                  <xsl:when test="price &gt; 10">
                    <!-- Punt vermell -->
                    <span style="color:red;">●</span>
                  </xsl:when>
                  <xsl:otherwise>
                    <!-- Punt verd -->
                    <span style="color:green;">●</span>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

