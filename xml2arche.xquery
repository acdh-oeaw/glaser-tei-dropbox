xquery version "3.0";
declare namespace tei = "http://www.tei-c.org/ns/1.0";

let $baseID := 'https://id.acdh.oeaw.ac.at/'
let $RDF := 
<rdf:RDF
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:acdh="https://vocabs.acdh.oeaw.ac.at/#"
    xmlns:acdhi="https://id.acdh.oeaw.ac.at/"
    xml:base="https://id.acdh.oeaw.ac.at/">
    
    {
        for $x in collection("file:/C:/Users/pandorfer/Dropbox/glaser-tei/editions-local/final/")//tei:TEI
        let $adlibID := "https://id.acdh.oeaw.ac.at/adlib"||$x//tei:title[2]/text()||"TEI"
        let $parentCol := "https://id.acdh.oeaw.ac.at/adlib"||$x//tei:title[2]/text()
        let $title := $x//tei:title[1]/text()
        return
            <acdh:Resource rdf:about="{$adlibID}">
                <acdh:hasTitle>{$title}</acdh:hasTitle>
                <acdh:isPartOf rdf:resource="{$parentCol}"/>
                <acdh:hasCurator>
                    <acdh:Person rdf:about="https://id.acdh.oeaw.ac.at/rruzicka"/>
                </acdh:hasCurator>
                <acdh:hasCreator>
                    <acdh:Person rdf:about="http://d-nb.info/gnd/107360859X"/>
                </acdh:hasCreator>
                <acdh:hasCurator>
                    <acdh:Person rdf:about="https://id.acdh.oeaw.ac.at/dsebaseproject/kraler-tanja"/>
                </acdh:hasCurator>
                <acdh:hasContributor>
                    <acdh:Person rdf:about="http://viaf.org/viaf/251032539/"/>
                </acdh:hasContributor>
            </acdh:Resource>
    }
</rdf:RDF>
    
return
    $RDF