# General Requirements - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* [**Conformance**](conformance.md)
* **General Requirements**

## General Requirements

### Scenarios

Fundamentally, the [Dokument profile](profiles-and-extensions.md) is intended to make it possible to use documents from clinical routine — both internally and externally — in an interoperable way. The defined metadata support the findability, selection and further processing of these documents. Documents from clinical routine, however, form a very heterogeneous group. A multitude of different source systems, historically grown structures and terminologies — such as internal in-house codes for categorizing document types — prevent effective use on site and across sites.

#### Internal document use

![](InterneDokumentennutzung.png)

**Internal document use** (Interne Dokumentennutzung) comprises the archiving, management and use of clinical documents within a hospital or a clinical facility. The focus here is on the Data Integration Centers (`Standort`) as the central instances for data management.

##### Archiving and findability of clinical documents

Data Integration Centers shall be able to archive clinical documents together with their metadata (`Dokument archivieren`) and to make them findable (`Dokumentenarchiv navigieren`). The metadata described in the [Dokument profile](profiles-and-extensions.md) include, among others:

* document type (e.g. physician's letter, diagnostic report),
* identifiers (e.g. unique IDs),
* creation date,
* author, and
* association with a patient.

The standardized description of these metadata enables efficient navigation in the archive. Physicians and other clinical users can request documents in a targeted way (`Hausinterne Anfragen bearbeiten`) and search them to find relevant information.

##### Conversion of existing documents

A further important aspect of **internal document use** is the conversion (`Dokument konvertieren`) of clinical documents and metadata that exist according to other interoperability standards (e.g. HL7 CDA, Gematik ISiK, KBV MIO) into a dataset conforming to the [Dokument profile](profiles-and-extensions.md). This conversion ensures that older or differently produced documents and metadata can also be integrated and managed uniformly.

##### Use by researchers: annotation and pseudonymization

Besides the purposes described above, **internal document use** also plays a role in research. Within Natural Language Processing (NLP) processes, researchers can store intermediate results and processing steps according to the [Dokument profile](profiles-and-extensions.md) (`Dokument verarbeiten`). For example, the intermediate results of individual processing steps that build on one another can be linked with each other and documented (`Dokument pseudonymisieren`, `Dokument annotieren`). This supports the traceability and reproducibility of NLP pipelines for researchers.

#### External document use

![](ExterneDokumentennutzung.png)

**External document use** (Externe Dokumentennutzung) aims at providing clinical documents and their metadata for research purposes. The focus here is on use by researchers who want to gain new insights on the basis of the archived data.

Researchers (`Wissenschaftler:in`) can access a corpus of clinical documents enriched with metadata (`Kohorte definieren`). The metadata described according to the [Dokument profile](profiles-and-extensions.md) enable a targeted selection and filtering of the documents (`Daten selektieren`). For example, documents of a specific type, from a specific period, or from a specific cohort can be identified.

A central component for researchers is access to the data and metadata of clinical documents via the German Research Data Portal for Health (Forschungsdatenportal für Gesundheit, FDPG). Through it, researchers can submit feasibility requests (`Machbarkeitsanfrage stellen`) to check whether the data required, for example, for a planned study are available. The research data portal uses the information contained in the [Dokument profile](profiles-and-extensions.md) to generate its user interfaces. For example, the metadata on document types, identifiers and labels are used to build the forms dynamically.

For data transport it is recommended to embed the document body in the resource. The files can also be compressed beforehand. Additional files that are necessary for the interpretation and reuse of the document (e.g. TypeSystem files for semantically annotated documents) can thus also be attached directly.

