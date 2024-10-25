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
                <xsl:choose>
                  <xsl:if test="price &lt;= 10">
                    <span style="color:red;">&#128994;</span>
                  </xsl:when>
                  <xsl:otherwise>
                    <span style="color:green;">&#128308;</span>
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

