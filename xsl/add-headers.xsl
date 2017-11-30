<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="tei" version="2.0">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    
    <xsl:variable name="id">
        <xsl:value-of select=".//tei:titleStmt/tei:title[@type='alt'][2]/text()"/>
    </xsl:variable>
    <xsl:variable name="adlibid">
        <xsl:value-of select=".//tei:titleStmt/tei:title[@type='alt'][1]/text()"/>
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
            <persName ref="http://d-nb.info/gnd/1043833846">
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

    <xsl:template match="tei:revisionDesc"></xsl:template>
    
    <xsl:template match="tei:publicationStmt">
        <publicationStmt>
            <authority>
                <orgName ref="http://viaf.org/viaf/262822701">ÖAW BASIS</orgName>
            </authority>
            <availability>
                <licence target="https://creativecommons.org/licenses/by/4.0/">CC-BY-4.0</licence>
            </availability>
            <idno type="idRecord">AT-OeAW-BA-3-27-A-GL1003</idno>
        </publicationStmt>  
    </xsl:template>
    
    <xsl:template match="tei:profileDesc">
        <encodingDesc>
            <p>The original encoding was done in plain text files following the encoding quidelines of the <orgName>Morgenländische Gesellschaft</orgName>. With a dedicated <rs ref="https://doi.org/10.5281/zenodo.1063930">web application</rs> these plain text files were transformed into XML documents validating (partially) against the Epidoc-Schema and those XML-Documents have been further sematically annotaded.</p>
            <p>In order to avoid well known xml-issues especially in regards of overlapping elements the actual edited/annotated text was multiplied in several anonymos blocks, each block providing specific markup.</p>
        </encodingDesc>    
    </xsl:template>
    
    <xsl:template match="tei:facsimile">
        <facsimile>
            <graphic>
            <xsl:attribute name="url">
                <xsl:value-of select="concat('https://id.acdh.oeaw.ac.at/', $adlibid, 'PNG')"/>
            </xsl:attribute>
                <desc type="copyright">CC-BY-4.0</desc>
            </graphic>
        </facsimile>
    </xsl:template>

    <xsl:template match="tei:div[@type='commentary']"/>
    
    <xsl:template match="tei:div[@type='bibliography']"/>

</xsl:stylesheet>
