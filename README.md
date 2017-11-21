# finalize TEIs

As of now (2017-11-21) this repo serves as workspace for finalizing the TEI documents created by Anton (see section *back up repo*).

## workflow

Documents stored in `toProcess` (former `done` folder) will be transformed with XSLT(s) stored in `xsl` to 

* validate against Epidoc-Schema (stored in `schema`)
* get meaningful TEI-Headers



# back up repo

this is a repo to back up the encoding work done by Anton Kungl (this is supposed to be a temporary solution until we have a stable eXist-db based workflow)

## workflow

1. Peter kopiert valide Dokumente in `imported`
2. Anton verschiebt die Datei, die er bearbeiten will von `imported` nach `editions`
3. Anton bearbeitet Dateien im Ordner `editions`
4. Wenn die von Anton bearbeitete Datei als *fertig* erachtet wird, verschiebt Anton diese Date von `editions` zu `done`
5. Peter importiert regelmäßig die Datein im `done` Ordner in eXist-db (collection `done`)
6. Von dort aus kann sie von Christophs glaser-app weiter bearbeitet werden

## backup

Peter commited/pushed regelmäßig zu Git-Repo
