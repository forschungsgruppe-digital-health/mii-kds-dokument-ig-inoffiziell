<!-- markdownlint-disable MD041 -->
<!-- Migriert aus der Simplifier-Quelle
     implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/Beschreibung.page.md
     (Manteldokument, Abschnitt "Beschreibung"). Deutsch ist die autoritative Fassung;
     englischer Spiegel: input/pagecontent/guidance.md — beide synchron halten. -->

Dieser Abschnitt bündelt die fachlichen Hinweise zur Umsetzung und Nutzung des
Moduls **Dokument**.

### Modulbeschreibung

<!-- TODO:REVIEW Die Simplifier-Quelle enthielt an dieser Stelle einen auskommentierten
     (deaktivierten) Bild-Render von implementation-guides/images/Blockdiagramm.png.
     Dieses Bild ist nicht unter input/images/ vorhanden; es wurde daher nichts
     übernommen. -->

Mit dem MII KDS-Modul Dokument können Metadaten zu Dokumenten jeglicher Art mit
klinischer Relevanz für beliebige Zwecke strukturiert erfasst werden. Dokumente
sind in diesem Kontext beliebige Binärobjekte, also beispielsweise auch Bilder
oder Videos.

Durch die Nutzung des Profils soll die interne und externe Nutzung von
Dokumenten erleichtert werden. Die zentralen Punkte der Charakterisierung durch
Metadaten: Dokumentenbeziehungen, Dokumentenstatus, Dokumentenauffindbarkeit,
Korpus-Navigation und Dokumentenarchivierung werden von dem Modul aufgegriffen
und nach standardisiertem Schema koordiniert.

Das MII KDS-Modul ermöglicht die Erstellung von Dokumentenreferenzen mit den
Optionen, Bezüge zu dem Modul Fall und Person herzustellen. Zudem enthält das
Modul eine NLP-Extension, welche den Bearbeitungsstatus mit Hinsicht auf
NLP-Verfahren wie zum Beispiel Annotationen abbildet (siehe hierfür
[UML](uml-diagrams.html)).

Im Hinblick auf Dokumentenverarbeitungsprozesse, z.B. Format-Wandlungen,
Anonymisierung und NLP-Annotationen, kommt der Relation zu anderen Dokumenten
(MII KDS-Modul Dokument) eine besondere Bedeutung zu, um Verarbeitungsketten
abzubilden (`relatesTo`).

Das Informationsmodell trennt Angaben zur Referenz selbst und den Metadaten der
referenzierten Dokumente (`content`). Auf den Körper des Dokuments wird über
eine lokal zu interpretierende URL (`content.attachment.url`) verwiesen.
Grundsätzlich kann der Dokumentkörper des referenzierten Dokuments auch
innerhalb der Referenz (`content.attachment.data`) eingebettet werden.
Das Modul gibt keine Vorgaben zur Semantik dieser Auflösung.

Der Textkörper kann vielfältige identifizierende Daten und/oder Metadaten
(z.B. Namen, Patienten-ID) enthalten. Der Datenhalter kann eine erfolgte
De-Identifizierung dieser Daten durch geeignete `securityLevel` und/oder Codes
der Erweiterung
[NLP-Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)
ausdrücken.

<!-- TODO:REVIEW Die Quelle schreibt "securityLevel"; das FHIR-R4-Element in
     DocumentReference heißt securityLabel. Unverändert übernommen — bitte fachlich
     klären, ob securityLabel gemeint ist. -->

### Allgemeine Umsetzungshinweise

* **[Datensätze und Beschreibungen](datasets-and-descriptions.html)** —
  ausführliche Beschreibung der Datenelemente / logischen Modelle des Moduls.
* **[UML-Diagramme](uml-diagrams.html)** — visuelle Darstellung der Datenmodelle
  und ihrer Beziehungen.

### Zielgruppenspezifische Hinweise

* **[Anleitung für Forschende](researcher-guidance.html)** — für Forschende, die
  Moduldaten nutzen.
* **[Anleitung für Implementierende](implementer-guidance.html)** — technische
  Hinweise für DIZ-Implementierende.

---
Für Konformitätsanforderungen siehe [Konformität](conformance.html); für die
technischen Artefakte siehe [Profile und Extensions](profiles-and-extensions.html).
