---
topic: Beschreibung 
---

## {{page-title}}

Das KDS-Erweiterungsmodul Dokument ermöglicht eine strukturierte Erfassung von Referenzen und Metadaten zu Dokumenten jeglicher Art für beliebige Zwecke. Dokumente sind hier beliebige Binärobjekte – auch Bilder oder Videos.

Die vorliegende Spezifikation des Informationsmodells ist an der FHIR-Kernspezifikation [R4-Document Reference](https://www.hl7.org/fhir/R4/documentreference.html#resource) orientiert. Darüber hinaus sind die bestehenden Profile der [KBV/MIO](https://simplifier.net/base1x0/kbv_pr_base_documentreference) und von [ISiK](https://simplifier.net/guide/isik-dokumentenaustausch-v3/ImplementationGuide-markdown-Datenobjekte-DocumentReference?version=current) bei der Modellierung, für eine vollumfängliche Kompatibilität, berücksichtigt worden. 

Personenbezogene Dokumente werden immer einer Person (Modul Person) zugeordnet. De-Identifizierte Dokumente sind entsprechend markiert (Element Sicherheitsstufe). Die datenhaltende Stelle ist hier verantwortlich, nur auf entsprechende anonymisierte bzw. pseudonymisierte Varianten andere Module zu verweisen. Wo immer möglich wird ein Fallzusammenhang (Modul Fall) definiert – nach Möglichkeit auf die relevanteste Ebene des Fall Stufenmodells.   

Wir empfehlen den auch in ISIK verwendeten KDL-Standard für die präzise Typbeschreibung sowie die IHE XDS Category für die gröbere Dokumentkategorie zu verwenden. IHE XDS Typ und -Category können eindeutig aus der KDL hergeleitet werden. Weitere Codierungen wie Hauscodes, SNOMED oder LOINC sind optional möglich. 

Im Hinblick auf Dokumentenverarbeitungsprozesse, z.B. Format-Wandlungen, Anonymisierung und NLP-Annotationen, bekommt die Relation zu anderen Dokumenten (Modul Dokument) eine besondere Bedeutung zu, um Verarbeitungsketten abzubilden. 

Das Informationsmodell trennt Angaben zu der Referenz selbst und den Metadaten der referenzierten Dokumente. Auf den Körper des Dokuments wird über eine lokal zu interpretierende URL verwiesen. Grundsätzlich kann der Dokumentkörper des referenzierten Dokuments jedoch auch als Attachment in der Referenz integriert werden. 

# To do: Grafik evtl. einfügen Standardübersicht/Kompatibilität