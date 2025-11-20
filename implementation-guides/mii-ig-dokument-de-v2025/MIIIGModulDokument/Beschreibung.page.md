---
topic: Beschreibung 
---

## {{page-title}}

<div style="display: flex; justify-content: center; align-items: center; padding: 2em">
  <img style="min-width: 300px; width: 600px" src="https://web.archive.org/web/20250806152348im_/https://www.medizininformatik-initiative.de/sites/default/files/2025-06/2025-06-12_de_KDS-Abb_1.png" alt="MII-Kerndatensatz Module (Stand: 12.06.2025)" title="MII-Kerndatensatz Module (Stand: 12.06.2025)">
</div>

Mit dem MII KDS-Modul Dokument können Metadaten zu Dokumenten jeglicher Art mit klinischer Relevanz für beliebige Zwecke strukturiert erfasst werden. Dokumente sind in diesem Kontext beliebige Binärobjekte, also beispielsweise auch Bilder oder Videos. 

Das Erweiterungsmodul ermöglicht die Erstellung von Dokumentenreferenzen mit den Optionen Bezüge zu dem Modul Fall und Person herzustellen. Zudem enthält das Modul eine NLP-Extension, welche den Bearbeitungsstatus abbildet (siehe hierfür UML). 

Im Hinblick auf Dokumentenverarbeitungsprozesse, z.B. Format-Wandlungen, Anonymisierung und NLP-Annotationen, bekommt der Relation zu anderen Dokumenten (MII KDS-Modul Dokument) eine besondere Bedeutung zu, um Verarbeitungsketten abzubilden (`relatesTo`). 

Das Informationsmodell trennt Angaben zur Referenz selbst und den Metadaten der referenzierten Dokumente (`content`). Auf den Körper des Dokuments wird über eine lokal zu interpretierende URL (`content.attachment.url`) verwiesen. Grundsätzlich kann der Dokumentkörper des referenzierten Dokuments auch innerhalb der Referenz (`content.attachment.data`) eingebettet werden. 
Das Modul gibt keine Vorgaben zur Semantik dieser Auflösung. 

Der Textkörper kann vielfältige identifizierende Daten und/oder Metadaten (z.B. Namen, Patienten-ID) enthalten kann. Der Datenhalter kann eine erfolgte De-Identifizierung dieser Daten durch geeignete `securityLevel` und/oder Codes der Erweiterung NLP-Processing Status ({{pagelink:MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md}}) ausdrücken.