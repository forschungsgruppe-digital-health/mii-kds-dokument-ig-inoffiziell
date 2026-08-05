# Anleitung - MII IG Dokument v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Anleitung**

## Anleitung

Dieser Abschnitt bündelt die fachlichen Hinweise zur Umsetzung und Nutzung des Moduls **Dokument**.

### Beschreibung

Mit dem MII KDS-Modul Dokument können Metadaten zu Dokumenten jeglicher Art mit klinischer Relevanz für beliebige Zwecke strukturiert erfasst werden. Dokumente sind in diesem Kontext beliebige Binärobjekte, also beispielsweise auch Bilder oder Videos.

Durch die Nutzung des Profils soll die interne und externe Nutzung von Dokumenten erleichtert werden. Die zentralen Punkte der Charakterisierung durch Metadaten: Dokumentenbeziehungen, Dokumentenstatus, Dokumentenauffindbarkeit, Korpus-Navigation und Dokumentenarchivierung werden von dem Modul aufgegriffen und nach standardisiertem Schema koordiniert.

Das MII KDS-Modul ermöglicht die Erstellung von Dokumentenreferenzen mit den Optionen Bezüge zu dem Modul Fall und Person herzustellen. Zudem enthält das Modul eine NLP-Extension, welche den Bearbeitungsstatus mit Hinsicht auf NLP-Verfahren wie zum Beispiel Annotationen abbildet (siehe hierfür [UML](uml-diagrams.md)).

Im Hinblick auf Dokumentenverarbeitungsprozesse, z.B. Format-Wandlungen, Anonymisierung und NLP-Annotationen, bekommt der Relation zu anderen Dokumenten (MII KDS-Modul Dokument) eine besondere Bedeutung zu, um Verarbeitungsketten abzubilden (`relatesTo`).

Das Informationsmodell trennt Angaben zur Referenz selbst und den Metadaten der referenzierten Dokumente (`content`). Auf den Körper des Dokuments wird über eine lokal zu interpretierende URL (`content.attachment.url`) verwiesen. Grundsätzlich kann der Dokumentkörper des referenzierten Dokuments auch innerhalb der Referenz (`content.attachment.data`) eingebettet werden. Das Modul gibt keine Vorgaben zur Semantik dieser Auflösung.

Der Textkörper kann vielfältige identifizierende Daten und/oder Metadaten (z.B. Namen, Patienten-ID) enthalten kann. Der Datenhalter kann eine erfolgte De-Identifizierung dieser Daten durch geeignete `securityLevel` und/oder Codes der Erweiterung NLP-Processing Status (siehe [NLP-Processing-Status-Extension](profiles-and-extensions.md)) ausdrücken.

### Allgemeine Umsetzungshinweise

* **[Datensätze und Beschreibungen](datasets-and-descriptions.md)** — ausführliche Beschreibung der Datenelemente / logischen Modelle des Moduls.
* **[UML-Diagramme](uml-diagrams.md)** — visuelle Darstellung der Datenmodelle und ihrer Beziehungen.

### Zielgruppenspezifische Hinweise

* **[Anleitung für Forschende](researcher-guidance.md)** — für Forschende, die Moduldaten nutzen.
* **[Anleitung für Implementierende](implementer-guidance.md)** — technische Hinweise für DIZ-Implementierende.

-------

Für Konformitätsanforderungen siehe [Konformität](conformance.md); für die technischen Artefakte siehe [Profile und Extensions](profiles-and-extensions.md).

