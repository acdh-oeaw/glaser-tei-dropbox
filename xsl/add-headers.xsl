<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="tei" version="2.0">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"></xsl:output>
    <xsl:variable name="id">
        <xsl:value-of select=".//tei:titleStmt/tei:title[@type='alt']/text()"/>
    </xsl:variable>
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
            <persName ref="http://viaf.org/viaf/251032539">
                <forename>Peter</forename>
                <surname>Andorfer</surname>
            </persName>
            <resp>Transformation to Epidoc</resp>
        </respStmt>
    </xsl:template>
    
    <xsl:template match="tei:msDesc">
        <msDesc>
            <msIdentifier>
                <settlement>
                    <placeName ref="http://www.geonames.org/2761367/wien.html">Wien</placeName>
                </settlement>
                <institution ref="http://viaf.org/viaf/262822701">ÖAW BASIS</institution>
                <repository>ÖAW Basis</repository>
                <collection>Glaser Collection</collection>
                <idno type="invNo">
                    <xsl:value-of select="$id"/>
                </idno>
            </msIdentifier>
        </msDesc>
    </xsl:template>

    <xsl:template match="tei:profileDesc"></xsl:template>
    <xsl:template match="tei:revisionDesc"></xsl:template>
    
    <xsl:template match="tei:publicationStmt">
        <publicationStmt>
            <authority>
                <orgName ref="http://viaf.org/viaf/262822701">ÖAW BASIS</orgName>
            </authority>
            <availability>
                <licence target="https://creativecommons.org/licenses/by-sa/4.0/">CC-BY-4.0</licence>
            </availability>
            <idno type="idRecord">AT-OeAW-BA-3-27-A-GL1003</idno>
        </publicationStmt>
    </xsl:template>
</xsl:stylesheet>
