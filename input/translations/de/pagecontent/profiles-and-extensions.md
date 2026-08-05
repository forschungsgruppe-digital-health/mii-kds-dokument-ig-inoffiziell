<!-- markdownlint-disable MD041 -->
<!--
  Profile und Extensions — DEUTSCHE Fassung (maßgeblich). Quellen:
  implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md
  und .../FHIRProfile/NLP-Processing-Status-Extension.page.md.
  Die Quell-Übersichtslisten (Anker-Inhaltsverzeichnisse) entfallen — Titel und
  Navigation erzeugt das Template. Metadaten-Abfragen der Quelle entfallen
  zugunsten der generierten Artefaktseiten. Die Struktur-/XML-/JSON-Tabs der
  Quelle ersetzt das structure-tabs-Include des Templates. Englische Fassung:
  input/pagecontent/profiles-and-extensions.md (maschinelle Übersetzung,
  Review an Gate C).
-->
Diese Seite führt die FHIR-Profile und Extensions des Moduls **Dokument** auf:
das Profil
[MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)
und die Extension
[MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html).

## DocumentReference: MII PR Dokument Dokument

### Beschreibung

Diese Profil beschreibt die Metadaten zu einem klinischen Dokument. Eine
ausführliche Beschreibung und Empfehlungen zur Verwendung des Profils befinden
sich in der [Beschreibung des Moduls](guidance.html).

### Metadaten

Die Metadaten des Profils (Canonical, Status, Version, Basisdefinition) zeigt
die Artefaktseite
[MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html).

### Inhalt

{% include structure-tabs.html artifact="StructureDefinition-mii-pr-dokument-dokument" lang="de" %}

Die vollständige Artefaktseite:
[MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html).

#### Mapping Datensatz zu FHIR

<!-- GENERATED TABLE (mii-ig-migration @ v0.7.0) - mechanically extracted from fsh-generated/resources/StructureDefinition-mii-lm-dokument.json (differential.element.mapping, identity mii-map-dokument); regenerate after LM changes. The source rendered the same data as a live FQL query. -->

Die folgende Tabelle bildet jedes Element des logischen Datensatzes auf seine FHIR-Repräsentation in diesem Profil ab (Mapping `mii-map-dokument`). Elementnamen und Beschreibungen stammen aus dem logischen Modell.

| Datensatz-Element | Beschreibung | FHIR-Mapping |
|---|---|---|
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

<!-- TODO:REVIEW (Gate B): Suchparameter-Sektion der Quellseite per migration-spec §9 auf die Seite search-parameters-and-operations verschoben. -->

Die für dieses Profil relevanten Suchparameter sind auf der Seite
[Suchparameter und Operationen](search-parameters-and-operations.html)
beschrieben.

### Beispiele

Umfangreiche Beispiele, die das Profil und die Erweiterung gemeinsam
veranschaulichen, sind im Abschnitt *Beispiele* der Extension weiter unten auf
dieser Seite zu finden; eine Übersicht aller Beispielinstanzen bietet die Seite
[Beispiele](examples.html).

<!-- TODO:REVIEW (Gate B): Die Quellseite enthielt an dieser Stelle zusätzlich einen auskommentierten, im Quell-IG nicht gerenderten Beispielblock (NLP-Pipeline-Erzählung mit JSON-Serialisierungs-Tabs); er wurde nicht migriert. Die gerenderte Fassung desselben Inhalts steht im Abschnitt Beispiele der Extension unten. -->

## Extension: NLP Processing Status

### Beschreibung

Diese Erweiterung ermöglicht die Beschreibung von dem Bearbeitungsstatus eines
Dokuments während eines NLP-Projektes. Die Prozessierung eine Dokumentes mit
unstrukturierter Information erfolgt in einer Vielzahl von Einzelschritten.
Durch diese Prozessketten entstehen Transformationen und Relationen von und zu
dem Originaldokument. Die NLP Extension nutzt ein Codesystem um die
vielfältigen Zwischenprodukte einer NLP-Bearbeitung koordiniert zu beschreiben
und zu archivieren.

Das Codesystem der NLP-Extension besitzt zwei Hierarchien, welche in Level 1
und Level 2 zum Ausdruck kommen. Das Level 1 bezeichnet hierbei die
übergeordneten Prozessstatus wie zum Beispiel "annotated". Das Level (Lvl) 2
dient dann zur Spezifikation von Lvl 1, beispielsweise Lvl1 "annotated" Lvl2
"deid", dieses Dokument wurde mit de-identifizierenden Annotationen versehen.

### Metadaten

Die Metadaten der Extension (Name, Status, Version, Canonical,
Basisdefinition) zeigt die Artefaktseite
[MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html).

### Inhalt

{% include structure-tabs.html artifact="StructureDefinition-mii-ex-dokument-nlp-processing-status" lang="de" %}

<!-- TODO:REVIEW (Gate B): Die Quelle renderte in einem zusätzlichen Tab die Beschreibung der Extension sowie eine Tabelle der Must-Support-Elemente (Feldname, Kurzbeschreibung, Hinweise) als Live-FQL-Abfragen. Ersetzt durch den folgenden Verweis auf die Artefaktseite, deren generierte Ansichten (Header, Detailbeschreibungen, Must-Support-Sicht) dieselben Daten zeigen. -->

Die Beschreibung der Extension sowie die Detailbeschreibungen der
Must-Support-Elemente (Feldname, Kurzbeschreibung, Hinweise) zeigt die
Artefaktseite
[MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html).

<!-- TODO:REVIEW (Gate B): Die Quelle renderte an dieser Stelle das Codesystem inline; ersetzt durch den Link auf die generierte Artefaktseite. Der Titel des Codesystems lautet in der Quelle "MII VS Dokument NLP Processing Status" (Titel/Name-Abweichung im Quellartefakt, unverändert übernommen). -->

Das von der Extension genutzte Codesystem zeigt die Artefaktseite
[MII VS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html).

### Beispiele

Das folgende Beispiel illustriert die Verarbeitung eines *ärztlichen
Entlassbriefes* der Patientin *Amanda Alzheimer* durch eine NLP-Pipeline
(siehe Abbildung). Nach der Erschließung (`Ingestion`) des Originaldokuments
`Amanda_Alzheimer.txt` wird eine Dokumentreferenz mit dem
NLP-Verarbeitungsstatus `unprocessed` angelegt. Anschließend wird eine
De-Identifikation (`De-Identification`) der Inhalte durchgeführt, um das
Ergebnisdokument `De-ID.txt` datenschutzkonform für Forschungszwecke
weiterverwenden zu können. Eine zugehörige Dokumentreferenz kennzeichnet den
NLP-Verarbeitungsstatus `de-identified` und verweist auf Originaldokument
mittels `transforms`. Abschließend werden die klinischen Inhalte annotiert,
was unter Umständen mehrere Ergebnisdokumente produziert und sich als Archiv
`Annotat.zip` zusammenfassen lassen. Die zugehörige Dokumentreferenz
kennzeichnet den NLP-Verarbeitungsstatus als `de-identifier, curated,
annotated` und erweitert `appends` die Dokumentreferenz des vorherigen
NLP-Verarbeitungsschritts.

<!-- TODO:REVIEW: Die Quelle band das Bild als gerendertes PNG (implementation-guides/images/NLP-Pipeline.png) mit zentriertem Link auf https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/NLP-Pipeline.svg ein; hier lokal als input/images/NLP-Pipeline.png eingebunden. -->

![NLP-Pipeline](NLP-Pipeline.png)

Bitte beachten: Mit dem Element "relates to" können Beziehungen zwischen den
unterschiedlichen Referenzen eines Dokumentes hergestellt werden. Die
Codebezeichnungen "transforms" und "appends" bezeichnen hierbei die Art der
Beziehung:

transforms: dieses Dokument hat seinen Ursprung im relationierten Original
aber wurde inhaltlich oder strukturell verändert. Zum Beispiel wenn ein
Original Dokument im CDA-Format in ein Textformat übertragen wurde.

appends: diese Dokument basiert auf dem relationierte Dokument, enthält aber
zusätzliche Informationen wie z.B. Annotation in Form von Metadaten erhalten.

Die folgenden FHIR DocumentReference-Ressourcen verwendeten das
Dokument-Profil (siehe oben auf dieser Seite), um die Ergebnisdokumente und
die zugehörigen Dokumentreferenzen jedes Verarbeitungsschrittes der
NLP-Pipeline darzustellen:

- `Amanda_Alzheimer.txt` —
  [AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.html)
- `De-ID.txt` —
  [AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html)
- `Annotat.zip` —
  [AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.html)

Die folgenden FHIR-Ressourcen stellen die zum Beispiel zugehörigen FHIR
Patienten- und Fall-Ressourcen dar. Diese FHIR-Ressourcen werden
ausschließlich vom Originaldokument `Amanda_Alzheimer.txt` und der zugehörigen
Dokumentreferenz verwendet:

- Amanda Alzheimer — [AmandaAlzheimer](Patient-AmandaAlzheimer.html)
- Einrichtungskontakt —
  [AmandaAlzheimerEinrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.html)
- Abteilungskontakt —
  [AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.html)
- Versorgungsstellenkontakt —
  [AmandaAlzheimerVersorgungsstellenKontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html)

Quelle:
[GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)
