xquery version "3.0";
declare namespace tei = "http://www.tei-c.org/ns/1.0";

let $baseID := 'https://id.acdh.oeaw.ac.at/'
let $RDF := 
<rdf:RDF
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:acdh="https://vocabs.acdh.oeaw.ac.at/schema#"
    xmlns:acdhi="https://id.acdh.oeaw.ac.at/"
    xml:base="https://id.acdh.oeaw.ac.at/">
    
    <acdh:Collection rdf:about="https://id.acdh.oeaw.ac.at/glasersqueezes2015/epidocstuff">
        <acdh:hasTitle>Stylesheets and Schemas for Epidoc-Files</acdh:hasTitle>
        <acdh:isPartOf rdf:resource="https://id.acdh.oeaw.ac.at/glasersqueezes2015"/>
    </acdh:Collection>

    
    <acdh:Resource rdf:about="https://id.acdh.oeaw.ac.at/glasersqueezes2015/epidocstuff/tei-epidoc.rng">
        <acdh:hasTitle>Epidoc Schema</acdh:hasTitle>
        <acdh:hasDescription>Downloaded from http://svn.code.sf.net/p/epidoc/code/trunk/schema/tei-epidoc.rng</acdh:hasDescription>
        <acdh:hasCreatedDate>2017-11-21</acdh:hasCreatedDate>
        <acdh:isPartOf rdf:resource="https://id.acdh.oeaw.ac.at/glasersqueezes2015/epidocstuff"/>
    </acdh:Resource>
    <acdh:Resource rdf:about="https://id.acdh.oeaw.ac.at/glasersqueezes2015/epidocstuff/epidoc2html.xsl">
        <acdh:hasTitle>Epidoc-XML to HTML</acdh:hasTitle>
        <acdh:hasDescription>A Stylesheet to transform epidoc-files to html</acdh:hasDescription>
        <acdh:hasCreatedDate>2017-11-21</acdh:hasCreatedDate>
        <acdh:hasCretor>
            <acdh:Person rdf:about="http://d-nb.info/gnd/1043833846"/>
        </acdh:hasCretor>
        <acdh:isPartOf rdf:resource="https://id.acdh.oeaw.ac.at/glasersqueezes2015/epidocstuff"/>
    </acdh:Resource>
    
    {
        for $x in collection("file:/C:/Users/pandorfer/Dropbox/glaser-tei/editions-local/sample/")//tei:TEI
            let $recID := $x//tei:title[2]/text()
            let $parentCol := "https://id.acdh.oeaw.ac.at/glasersqueezes2015/rec"||$recID
            let $adlibID := "https://id.acdh.oeaw.ac.at/glasersqueezes2015/rec"||$recID||"/adlib"||$recID||".xml"
            let $title := $x//tei:title[1]/text()
            return
                <acdh:Resource rdf:about="{$adlibID}">
                    <acdh:hasTitle>{$title}</acdh:hasTitle>
                    <acdh:isPartOf rdf:resource="{$parentCol}"/>
                    <acdh:hasCurator>
                        <acdh:Person rdf:about="https://id.acdh.oeaw.ac.at/rruzicka"/>
                    </acdh:hasCurator>
                    <acdh:hasCreator>
                        <acdh:Person rdf:about="http://viaf.org/viaf/168348279"/>
                    </acdh:hasCreator>
                    <acdh:hasCurator>
                        <acdh:Person rdf:about="https://id.acdh.oeaw.ac.at/akungl"/>
                    </acdh:hasCurator>
                    <acdh:hasContributor>
                        <acdh:Person rdf:about="http://d-nb.info/gnd/1043833846"/>
                    </acdh:hasContributor>
                    <acdh:hasSchema rdf:resource="https://id.acdh.oeaw.ac.at/glasersqueezes2015/epidocstuff/tei-epidoc.rng"/>
                    <acdh:hasDissService rdf:resource="https://id.acdh.oeaw.ac.at/dissemination/customTEI2HTML"/>
                    <acdh:hasCustomXSL rdf:resource="https://id.acdh.oeaw.ac.at/glasersqueezes2015/epidocstuff/epidoc2html.xsl"/>
                </acdh:Resource>
    }
</rdf:RDF>
    
return
    $RDF