<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/guidance.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- Migrated from the Simplifier source
     implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/Beschreibung.page.md
     (Manteldokument, section "Beschreibung"). German mirror (authoritative):
     input/translations/de/pagecontent/guidance.md — keep both in step. -->

This section collects the domain guidance for implementing and using the
**Dokument** module.

### Module Description

<!-- TODO:REVIEW The Simplifier source contained a commented-out (disabled) image
     render of implementation-guides/images/Blockdiagramm.png at this point.
     That image is not present under input/images/, so nothing was carried
     over. -->

With the MII KDS module Dokument, metadata on documents of any kind with
clinical relevance can be captured in a structured way for arbitrary purposes.
In this context, documents are arbitrary binary objects — for example, also
images or videos.

Using the profile is intended to facilitate the internal and external use of
documents. The central points of characterization through metadata — document
relationships, document status, document findability, corpus navigation, and
document archiving — are taken up by the module and coordinated according to a
standardized schema.

The MII KDS module enables the creation of document references with the option
of establishing references to the modules Fall and Person. In addition, the
module contains an NLP extension that represents the processing status with
regard to NLP procedures such as annotations (see [UML](uml-diagrams.html)).

With regard to document-processing workflows, e.g. format conversions,
anonymization, and NLP annotations, the relation to other documents (MII KDS
module Dokument) takes on particular importance in order to represent
processing chains (`relatesTo`).

The information model separates statements about the reference itself from the
metadata of the referenced documents (`content`). The body of the document is
referenced via a URL that is to be interpreted locally
(`content.attachment.url`). In principle, the document body of the referenced
document can also be embedded within the reference (`content.attachment.data`).
The module makes no stipulations about the semantics of this resolution.

The text body can contain a wide variety of identifying data and/or metadata
(e.g. names, patient ID). The data holder can express that a de-identification
of this data has taken place through suitable `securityLevel` and/or codes of
the
[NLP-Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)
extension.

<!-- TODO:REVIEW The source writes "securityLevel"; the FHIR R4 element on
     DocumentReference is named securityLabel. Carried over unchanged — please
     clarify whether securityLabel is meant. -->

### General Implementation Guidance

* **[Datasets and Descriptions](datasets-and-descriptions.html)** — detailed
  description of the module's data elements / logical models.
* **[UML Diagrams](uml-diagrams.html)** — visual representation of the data
  models and their relationships.

### Audience-Specific Guidance

* **[Guidance for Researchers](researcher-guidance.html)** — for researchers
  using the module's data.
* **[Guidance for Implementers](implementer-guidance.html)** — technical
  guidance for DIC implementers.

---
For conformance requirements see [Conformance](conformance.html); for the
technical artifacts see [Profiles and Extensions](profiles-and-extensions.html).
