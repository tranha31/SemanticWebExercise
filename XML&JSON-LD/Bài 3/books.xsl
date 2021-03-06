<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <h2>My Book Collection</h2>
    <table border="1px solid">
        <tr bgcolor="#9acd32">
            <th>Title</th>
            <th>Authors</th>
            <th>Year</th>
            <th>Price</th>
        </tr>
        <xsl:for-each select="bookstore/book">
        <tr>
            <td><xsl:value-of select="title" /></td>
            <td>
                <xsl:for-each select="author">
                    <xsl:value-of select="text()" /><br/>
                </xsl:for-each>
            </td>
            <td><xsl:value-of select="year" /></td>
            <td><xsl:value-of select="price" /></td>
        </tr>
        </xsl:for-each>
    </table>
</xsl:template>
</xsl:stylesheet>