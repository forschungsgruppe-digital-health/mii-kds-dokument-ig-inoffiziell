# Profiles and Extensions - MII IG Dokument v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Profile und Extensions**

## Profiles and Extensions

Diese Seite führt die FHIR-Profile und Extensions des Moduls **Dokument** auf: das Profil [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md) und die Extension [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md).

## DocumentReference: MII PR Dokument Dokument

### Beschreibung

Diese Profil beschreibt die Metadaten zu einem klinischen Dokument. Eine ausführliche Beschreibung und Empfehlungen zur Verwendung des Profils befinden sich in der [Beschreibung des Moduls](guidance.md).

### Metadaten

Die Metadaten des Profils (Canonical, Status, Version, Basisdefinition) zeigt die Artefaktseite [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md).

### Inhalt

Die vollständige Artefaktseite: [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md).

#### Mapping Datensatz zu FHIR

Die folgende Tabelle bildet jedes Element des logischen Datensatzes auf seine FHIR-Repräsentation in diesem Profil ab (Mapping `mii-map-dokument`). Elementnamen und Beschreibungen stammen aus dem logischen Modell.

| | | |
| :--- | :--- | :--- |
| Dokument | Klinisches Dokument inkl. Metadaten, Inhalt, Erzeugungskontext und Beziehungen | DocumentReference |
| Versionsspezifische Kennung | Versionsspezifische eindeutige Kennung, die dem Dokument durch die Dokumentenquelle zugewiesen wurde | DocumentReference.masterIdentifier |
| Versionsunabhängige Kennung | Andere versionsunabhängige Kennung, die dem Dokument (z.B. durch weitere dokumentenverarbeitende Systeme) zugewiesen wurde | DocumentReference.identifier |
| Status der Dokumentenreferenz | Status dieser Dokumentenreferenz (aktuell, überholt oder irrtümlich eingegeben) | DocumentReference.status |
| Status des Dokuments | Status des zugrunde liegenden Dokuments (vorläufig, final, geändert oder irrtümlich eingegeben) | DocumentReference.docStatus |
| Art des Dokuments | Art des Dokuments auf das verwiesen wird (z.B. Anamnese und Untersuchung, Entlassungsbericht, Verlaufsbericht) | DocumentReference.type |
| Kategorien des Dokuments | Übergeordnete Kategorie des Dokuments auf das verwiesen wird (z.B. Arztberichte oder Arztdokumentation) | DocumentReference.category |
| Verweis auf Patient | Patient auf den sich das verwiesene Dokument bezieht | DocumentReference.subject |
| Beschreibung des Dokuments | Menschenlesbare Beschreibung zum verwiesenen Dokuments | DocumentReference.description |
| Vertraulichkeit des Dokuments | Grad der Vertraulichkeit/Sicherheit des verwiesenen Dokuments (z. B. uneingeschränkt, gering, mittel, normal oder eingeschränkt) | DocumentReference.securityLabel |
| Beziehung des Dokuments | Beziehungen des verwiesenen Dokuments zu anderen Dokumenten | DocumentReference.relatesTo |
| Art der Beziehung | Beziehung zu anderen Dokumenten | DocumentReference.relatesTo.code |
| Verweis auf Dokument | Ziel der Dokumentenbeziehung | DocumentReference.relatesTo.target |
| Inhalt des Dokuments | Dokument (Base64-kodierte Daten) oder Verweis (URL) mit relevanten Metadaten zum Anhang | DocumentReference.content |
| Verfassungssprache des Inhalts | Verwendete Sprache in dem Dokument | DocumentReference.attachment.language |
| Erstellungsdatum des Inhalts | Datum der Erstellung des Dokumentes | DocumentReference.attachment.creation |
| Binärdaten zum Inhalt | Dokument als Binärdaten | DocumentReference.attachment.data |
| URL zum Inhalt | Verweis auf den (lokalen) Ablageort des Dokuments | DocumentReference.attachment.url |
| MIME-Typ zum Inhalt | MIME-Typ des Dokumenteninhalts | DocumentReference.attachment.contentType |
| Erzeugungskontext des Dokuments | Klinischer Kontext, in welchem das Dokument erzeugt wurde | DocumentReference.context |
| Verweis auf Einrichtungskontakt | Kontakt zur Gesundheitseinrichtung oder die Art der Versorgung, die mit dem Dokumenteninhalt assoziiert ist | DocumentReference.context.encounter |
| Dokumentierter Vorgang | Handlungen oder Prozeduren, die im Kontext dokumentiert wurden | DocumentReference.context.event |
| Klinisches Fachgebiet zum Vorgang | Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde | DocumentReference.context.practiceSetting |
| Durchführungszeitraum zum Vorgang | Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde | DocumentReference.context.period |
| Art der Einrichtung zum Vorgang | Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte | DocumentReference.context.facilityType |

#### Suchparameter

Die für dieses Profil relevanten Suchparameter sind auf der Seite [Suchparameter und Operationen](search-parameters-and-operations.md) beschrieben.

### Beispiele

Umfangreiche Beispiele, die das Profil und die Erweiterung gemeinsam veranschaulichen, sind im Abschnitt **Beispiele** der Extension weiter unten auf dieser Seite zu finden; eine Übersicht aller Beispielinstanzen bietet die Seite [Beispiele](examples.md).

## Extension: NLP Processing Status

### Beschreibung

Diese Erweiterung ermöglicht die Beschreibung von dem Bearbeitungsstatus eines Dokuments während eines NLP-Projektes. Die Prozessierung eine Dokumentes mit unstrukturierter Information erfolgt in einer Vielzahl von Einzelschritten. Durch diese Prozessketten entstehen Transformationen und Relationen von und zu dem Originaldokument. Die NLP Extension nutzt ein Codesystem um die vielfältigen Zwischenprodukte einer NLP-Bearbeitung koordiniert zu beschreiben und zu archivieren.

Das Codesystem der NLP-Extension besitzt zwei Hierarchien, welche in Level 1 und Level 2 zum Ausdruck kommen. Das Level 1 bezeichnet hierbei die übergeordneten Prozessstatus wie zum Beispiel "annotated". Das Level (Lvl) 2 dient dann zur Spezifikation von Lvl 1, beispielsweise Lvl1 "annotated" Lvl2 "deid", dieses Dokument wurde mit de-identifizierenden Annotationen versehen.

### Metadaten

Die Metadaten der Extension (Name, Status, Version, Canonical, Basisdefinition) zeigt die Artefaktseite [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md).

### Inhalt

Die Beschreibung der Extension sowie die Detailbeschreibungen der Must-Support-Elemente (Feldname, Kurzbeschreibung, Hinweise) zeigt die Artefaktseite [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md).

Das von der Extension genutzte Codesystem zeigt die Artefaktseite [MII VS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md).

### Beispiele

Das folgende Beispiel illustriert die Verarbeitung eines **ärztlichen Entlassbriefes** der Patientin **Amanda Alzheimer** durch eine NLP-Pipeline (siehe Abbildung). Nach der Erschließung (`Ingestion`) des Originaldokuments `Amanda_Alzheimer.txt` wird eine Dokumentreferenz mit dem NLP-Verarbeitungsstatus `unprocessed` angelegt. Anschließend wird eine De-Identifikation (`De-Identification`) der Inhalte durchgeführt, um das Ergebnisdokument `De-ID.txt` datenschutzkonform für Forschungszwecke weiterverwenden zu können. Eine zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus `de-identified` und verweist auf Originaldokument mittels `transforms`. Abschließend werden die klinischen Inhalte annotiert, was unter Umständen mehrere Ergebnisdokumente produziert und sich als Archiv `Annotat.zip` zusammenfassen lassen. Die zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus als `de-identifier, curated, annotated` und erweitert `appends` die Dokumentreferenz des vorherigen NLP-Verarbeitungsschritts.

![](NLP-Pipeline.png)

Bitte beachten: Mit dem Element "relates to" können Beziehungen zwischen den unterschiedlichen Referenzen eines Dokumentes hergestellt werden. Die Codebezeichnungen "transforms" und "appends" bezeichnen hierbei die Art der Beziehung:

transforms: dieses Dokument hat seinen Ursprung im relationierten Original aber wurde inhaltlich oder strukturell verändert. Zum Beispiel wenn ein Original Dokument im CDA-Format in ein Textformat übertragen wurde.

appends: diese Dokument basiert auf dem relationierte Dokument, enthält aber zusätzliche Informationen wie z.B. Annotation in Form von Metadaten erhalten.

Die folgenden FHIR DocumentReference-Ressourcen verwendeten das Dokument-Profil (siehe oben auf dieser Seite), um die Ergebnisdokumente und die zugehörigen Dokumentreferenzen jedes Verarbeitungsschrittes der NLP-Pipeline darzustellen:

* `Amanda_Alzheimer.txt` — [AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md)
* `De-ID.txt` — [AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md)
* `Annotat.zip` — [AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md)

Die folgenden FHIR-Ressourcen stellen die zum Beispiel zugehörigen FHIR Patienten- und Fall-Ressourcen dar. Diese FHIR-Ressourcen werden ausschließlich vom Originaldokument `Amanda_Alzheimer.txt` und der zugehörigen Dokumentreferenz verwendet:

* Amanda Alzheimer — [AmandaAlzheimer](Patient-AmandaAlzheimer.md)
* Einrichtungskontakt — [AmandaAlzheimerEinrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.md)
* Abteilungskontakt — [AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.md)
* Versorgungsstellenkontakt — [AmandaAlzheimerVersorgungsstellenKontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.md)

Quelle: [GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)

