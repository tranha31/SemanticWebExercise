<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <h2>My Curriculum</h2>
    <table border="1px solid">
        <tr bgcolor="#9acd32">
            <th>Name</th>
            <th>English Name</th>
            <th>Credit</th>
            <th>Semester</th>
        </tr>
        <xsl:for-each select="curriculum/course">
        <tr>
            <td><xsl:value-of select="name" /></td>
            <td><xsl:value-of select="english-name" /></td>
            <td><xsl:value-of select="credit" /></td>
            <td><xsl:value-of select="semester" /></td>
        </tr>
        </xsl:for-each>
    </table>
</xsl:template>
</xsl:stylesheet>