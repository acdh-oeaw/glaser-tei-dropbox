<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml"></xsl:output>
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="tei:respStmt">
        <respStmt>
            <persName ref="https://id.acdh.oeaw.ac.at/rruzicka">
                <forename>Ronald</forename>
                <surname>Ruzicka</surname>
            </persName>
            <resp>Curation</resp>
        </respStmt>
        <respStmt>
            <persName ref="http://viaf.org/viaf/168348279">
                <forename>George</forename>
                <surname>Hatke</surname>
            </persName>
            <resp>Translation</resp>
        </respStmt>
        <respStmt>
            <persName ref="https://id.acdh.oeaw.ac.at/akungl">
                <forename>Anton</forename>
                <surname>Kungl</surname>
            </persName>
            <resp>Encoding</resp>
        </respStmt>
        <respStmt>
            <persName ref="https://id.acdh.oeaw.ac.at/pandorfer">
                <forename>Peter</forename>
                <surname>Andorfer</surname>
            </persName>
            <resp>Transformation to Epidoc</resp>
        </respStmt>
    </xsl:template>
    
    <xsl:template match="tei:msDesc">
        <msDesc>
            <msIdentifier>
                <settlement>Wien</settlement>
                <repository>ÖAW Basis</repository>
                <collection>name of the collection </collection>
                <idno type="invNo">Inventory nummber of the source</idno>
            </msIdentifier>
        </msDesc>
    </xsl:template>

    <!--<xsl:template match="tei:profileDesc"></xsl:template>-->
</xsl:stylesheet>
