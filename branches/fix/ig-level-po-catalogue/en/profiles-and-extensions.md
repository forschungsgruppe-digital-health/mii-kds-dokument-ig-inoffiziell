# Profiles and Extensions - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* **Profiles and Extensions**

## Profiles and Extensions

This page lists the FHIR profiles and extensions of the **Dokument** module: the profile [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md) and the extension [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md).

## DocumentReference: MII PR Dokument Dokument

### Description

This profile describes the metadata of a clinical document. A detailed description and recommendations on using the profile can be found in the [module description](guidance.md).

### Metadata

The profile's metadata (canonical, status, version, base definition) is shown on the artifact page [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md).

### Content

The full artifact page: [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md).

#### Mapping dataset to FHIR

The table below maps every element of the logical dataset onto its FHIR representation in this profile (mapping `mii-map-dokument`). Element names and descriptions come from the (German-language) logical model resource.

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

#### Search parameters

The search parameters relevant to this profile are described on the page [Search Parameters and Operations](search-parameters-and-operations.md).

### Examples

Comprehensive examples illustrating the profile and the extension together can be found in the **Examples** section of the extension further down this page; an overview of all example instances is on the [Examples](examples.md) page.

## Extension: NLP Processing Status

### Description

This extension makes it possible to describe the processing status of a document during an NLP project. The processing of a document containing unstructured information takes place in a multitude of individual steps. These processing chains give rise to transformations of, and relations to, the original document. The NLP extension uses a code system to describe and archive the manifold intermediate products of NLP processing in a coordinated way.

The code system of the NLP extension has two hierarchies, expressed as Level 1 and Level 2. Level 1 denotes the superordinate processing status, for example "annotated". Level (Lvl) 2 then serves to specify Lvl 1 — for example Lvl1 "annotated" Lvl2 "deid": this document has been given de-identifying annotations.

### Metadata

The extension's metadata (name, status, version, canonical, base definition) is shown on the artifact page [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md).

### Content

The description of the extension and the detailed descriptions of its Must-Support elements (field name, short description, comments) are shown on the artifact page [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md).

The code system used by the extension is shown on the artifact page [MII VS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md).

### Examples

The following example illustrates the processing of a **medical discharge letter** of the patient **Amanda Alzheimer** by an NLP pipeline (see figure). After ingestion (`Ingestion`) of the original document `Amanda_Alzheimer.txt`, a document reference with the NLP processing status `unprocessed` is created. Subsequently, a de-identification (`De-Identification`) of the contents is performed so that the resulting document `De-ID.txt` can be reused for research purposes in compliance with data protection. An associated document reference marks the NLP processing status `de-identified` and points to the original document via `transforms`. Finally, the clinical contents are annotated, which may produce several result documents that can be bundled as an archive `Annotat.zip`. The associated document reference marks the NLP processing status as `de-identifier, curated, annotated` and appends (`appends`) the document reference of the previous NLP processing step.

![](NLP-Pipeline.png)

Please note: the "relates to" element can be used to establish relationships between the different references of a document. The code labels "transforms" and "appends" denote the kind of relationship:

transforms: this document originates from the related original but has been changed in content or structure. For example, when an original document in CDA format has been transferred into a text format.

appends: this document is based on the related document but contains additional information, e.g. annotations received in the form of metadata.

The following FHIR DocumentReference resources use the Dokument profile (see above on this page) to represent the result documents and the associated document references of each processing step of the NLP pipeline:

* `Amanda_Alzheimer.txt` — [AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md)
* `De-ID.txt` — [AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md)
* `Annotat.zip` — [AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md)

The following FHIR resources represent the patient and encounter resources belonging to the example. These FHIR resources are used exclusively by the original document `Amanda_Alzheimer.txt` and its associated document reference:

* Amanda Alzheimer — [AmandaAlzheimer](Patient-AmandaAlzheimer.md)
* Einrichtungskontakt — [AmandaAlzheimerEinrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.md)
* Abteilungskontakt — [AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.md)
* Versorgungsstellenkontakt — [AmandaAlzheimerVersorgungsstellenKontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.md)

Source: [GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)

