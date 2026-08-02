<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/profiles-and-extensions.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- Source: Simplifier pages MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/
     Dokument-DocumentReference.page.md and NLP-Processing-Status-Extension.page.md,
     migrated onto the MII KDS module template. German mirror (authoritative):
     input/translations/de/pagecontent/profiles-and-extensions.md. -->
This page lists the FHIR profiles and extensions of the **Dokument** module.

### DocumentReference: MII PR Dokument Dokument

#### Description

This profile describes the metadata of a clinical document. A detailed description and recommendations on the use of the profile can be found in the description of the module ([Description](guidance.html)).

#### Metadata

The profile's metadata (canonical, status, version, base definition) can be viewed on the generated artifact page [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html).

<!-- TODO:REVIEW: the source rendered a live FQL query here (StructureDefinition metadata: url, status, version, baseDefinition); content replaced by a static pointer -->

#### Content

##### Rendering

{% include StructureDefinition-mii-pr-dokument-dokument-snapshot.xhtml %}

##### Further views

Differential and snapshot tables, XML/JSON/TTL serializations, mappings, and all examples are on the artifact page [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html) (tabbed, like the official FHIR specification pages).

##### Mapping dataset to FHIR

<!-- GENERATED TABLE - mechanically extracted from fsh-generated/resources/StructureDefinition-mii-lm-dokument.json (differential.element.mapping, identity mii-map-dokument). Not hand-authored: regenerate after any change to the logical model. Source rendered the same data as a live FQL query. -->

The table below maps every element of the logical dataset onto its FHIR representation in this profile (mapping `mii-map-dokument`). Element names and descriptions come from the (German-language) logical model resource.

| Dataset element | Description | FHIR mapping |
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


##### Search parameters

The search parameters of this module are documented on the page [Search Parameters and Operations](search-parameters-and-operations.html).

#### Examples

Extensive examples illustrating the profile and the extension together can be found on the page of the extension ([MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)).

<!-- TODO:REVIEW: the source pagelink targeted the separate extension page; per the migration page map it now points at the generated artifact page, but the migrated extension content also lives on THIS page (section "Extension: NLP Processing Status" below) - an in-page anchor may be preferable -->
<!-- TODO:REVIEW: the source additionally contained a commented-out (never rendered) example block (NLP-pipeline narrative, image and example serializations, largely duplicating the extension section below, incl. 11 directives); it was NOT migrated -->

### Extension: NLP Processing Status

#### Description

This extension makes it possible to describe the processing status of a document during an NLP project. The processing of a document containing unstructured information takes place in a multitude of individual steps. These processing chains give rise to transformations of, and relations to and from, the original document. The NLP extension uses a code system to describe and archive the manifold intermediate products of NLP processing in a coordinated way.
The code system of the NLP extension has two hierarchies, expressed as Level 1 and Level 2. Level 1 denotes the superordinate process status, for example "annotated". Level (Lvl) 2 then serves to specify Lvl 1 — for example Lvl 1 "annotated", Lvl 2 "deid": this document was provided with de-identifying annotations.

#### Metadata

The extension's metadata (name, status, version, canonical, base definition) can be viewed on the generated artifact page [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html).

<!-- TODO:REVIEW: the source rendered a live FQL query here (StructureDefinition metadata: name, status, version, url, baseDefinition); content replaced by a static pointer -->

#### Content

##### Rendering

{% include StructureDefinition-mii-ex-dokument-nlp-processing-status-snapshot.xhtml %}

##### Description

The description of the extension as well as the overview of its Must-Support elements (field name, short description, comments) can be viewed on the generated artifact page [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html).

<!-- TODO:REVIEW: the source rendered two live FQL queries here (the StructureDefinition description and a Must-Support element table: id, short, comment); content replaced by a static pointer -->

##### Further views

Differential and snapshot tables, XML/JSON/TTL serializations, and all examples are on the artifact page [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html).

The CodeSystem used by the extension is shown on the artifact page [MII VS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html).

<!-- TODO:REVIEW: the source rendered the whole CodeSystem resource mii-cs-dokument-nlp-processing-status inline here; replaced by a link to the generated artifact page. Note: the artifact's recorded title reads "MII VS ..." although the artifact is a CodeSystem - upstream naming kept as-is -->

#### Examples

The following example illustrates the processing of a *physician's discharge letter* of the patient *Amanda Alzheimer* by an NLP pipeline (see figure). After ingestion (`Ingestion`) of the original document `Amanda_Alzheimer.txt`, a document reference with the NLP processing status `unprocessed` is created. Subsequently, a de-identification (`De-Identification`) of the contents is performed so that the resulting document `De-ID.txt` can be reused for research purposes in compliance with data protection. An associated document reference marks the NLP processing status `de-identified` and points to the original document via `transforms`. Finally, the clinical contents are annotated, which may produce several resulting documents that can be bundled into an archive `Annotat.zip`. The associated document reference marks the NLP processing status as `de-identifier, curated, annotated` and extends (`appends`) the document reference of the previous NLP processing step.

<div style="text-align: center;"><img src="NLP-Pipeline.png" alt="NLP-Pipeline" style="max-width: 100%;"/></div>

<!-- TODO:REVIEW: the source wrapped this image in an external link to the raw SVG at https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/NLP-Pipeline.svg; replaced by the local image per the migration rule -->

Please note: With the element "relates to", relationships between the different references of a document can be established. The code designations "transforms" and "appends" denote the kind of relationship:

transforms: this document originates from the related original but was modified in content or structure. For example, when an original document in CDA format was transferred into a text format.

appends: this document is based on the related document but contains additional information, e.g. annotations received in the form of metadata.

The following FHIR DocumentReference resources used the Dokument profile ([MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)) to represent the resulting documents and the associated document references of each processing step of the NLP pipeline.

- `Amanda_Alzheimer.txt` — [DocumentReference: original document](DocumentReference-AmandaAlzheimerOriginalDokument.html)
- `De-ID.txt` — [DocumentReference: de-identified document](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html)
- `Annotat.zip` — [DocumentReference: annotated document](DocumentReference-AmandaAlzheimerAnnotiertesDokument.html)

(Each artifact page shows the tabbed JSON/XML serializations.)

The following FHIR resources represent the FHIR patient and encounter resources belonging to the example. These FHIR resources are used exclusively by the original document `Amanda_Alzheimer.txt` and its associated document reference.

- [Patient: Amanda Alzheimer](Patient-AmandaAlzheimer.html)
- [Encounter: Einrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.html)
- [Encounter: Abteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.html)
- [Encounter: Versorgungsstellenkontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html)

<!-- TODO:REVIEW: the source referenced this example as AmandaAlzheimerVersorgungsstellenkontakt (lowercase k); the artifact id per the artifact table is AmandaAlzheimerVersorgungsstellenKontakt (capital K) - the include follows the artifact table -->

Source: [GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)
