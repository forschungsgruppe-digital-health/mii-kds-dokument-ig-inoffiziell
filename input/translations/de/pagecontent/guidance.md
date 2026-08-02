<!-- markdownlint-disable MD041 -->
<!-- Übersichtsseite "Anleitung". Inhalt migriert aus der Simplifier-Quelle
     MIIIGModulDokument/Beschreibung.page.md; Direktiven gemäß dem
     Migrations-Crosswalk konvertiert. Die Unterseiten-Struktur folgt
     kerndatensatz-basis. Englisches Gegenstück:
     input/pagecontent/guidance.md — beide Seiten synchron halten. -->

Dieser Abschnitt bündelt die fachlichen Hinweise zur Umsetzung und Nutzung des
Moduls **Dokument**.

### Beschreibung

<!-- TODO:REVIEW Die Quellseite enthielt einen auskommentierten (nicht
     gerenderten) Verweis auf ein Blockdiagramm-Bild
     (implementation-guides/images/Blockdiagramm.png). Dieses Bild ist nicht
     Teil der migrierten Bilder; klären, ob es beschafft und ergänzt werden
     soll. -->

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
Optionen Bezüge zu dem Modul Fall und Person herzustellen. Zudem enthält das
Modul eine NLP-Extension, welche den Bearbeitungsstatus mit Hinsicht auf
NLP-Verfahren wie zum Beispiel Annotationen abbildet (siehe hierfür
[UML](uml-diagrams.html)).

Im Hinblick auf Dokumentenverarbeitungsprozesse, z.B. Format-Wandlungen,
Anonymisierung und NLP-Annotationen, bekommt der Relation zu anderen Dokumenten
(MII KDS-Modul Dokument) eine besondere Bedeutung zu, um Verarbeitungsketten
abzubilden (`relatesTo`).

Das Informationsmodell trennt Angaben zur Referenz selbst und den Metadaten der
referenzierten Dokumente (`content`). Auf den Körper des Dokuments wird über
eine lokal zu interpretierende URL (`content.attachment.url`) verwiesen.
Grundsätzlich kann der Dokumentkörper des referenzierten Dokuments auch
innerhalb der Referenz (`content.attachment.data`) eingebettet werden.
Das Modul gibt keine Vorgaben zur Semantik dieser Auflösung.

<!-- TODO:REVIEW Die Quelle nennt `securityLevel`; das entsprechende Element
     der DocumentReference heißt in FHIR R4 `securityLabel`. Prüfen, ob hier
     ein Quellfehler vorliegt und korrigiert werden muss. -->

Der Textkörper kann vielfältige identifizierende Daten und/oder Metadaten
(z.B. Namen, Patienten-ID) enthalten kann. Der Datenhalter kann eine erfolgte
De-Identifizierung dieser Daten durch geeignete `securityLevel` und/oder Codes
der Erweiterung NLP-Processing Status (siehe
[NLP-Processing-Status-Extension](profiles-and-extensions.html)) ausdrücken.

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
