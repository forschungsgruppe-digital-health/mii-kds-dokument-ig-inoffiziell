# Guidance - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* **Guidance**

## Guidance

This section collects the domain guidance for implementing and using the **Dokument** module.

### Description

With the MII KDS module Dokument, metadata on documents of any kind with clinical relevance can be captured in a structured way for arbitrary purposes. Documents in this context are arbitrary binary objects — for example also images or videos.

The use of the profile is intended to facilitate the internal and external use of documents. The central points of characterization by metadata — document relationships, document status, document discoverability, corpus navigation, and document archiving — are taken up by the module and coordinated according to a standardized schema.

The MII KDS module enables the creation of document references with the option of establishing references to the modules Fall (case) and Person. In addition, the module contains an NLP extension which represents the processing status with regard to NLP procedures such as annotations (see [UML](uml-diagrams.md)).

With regard to document-processing workflows, e.g. format conversions, anonymization, and NLP annotations, the relation to other documents (MII KDS module Dokument) takes on a special significance for representing processing chains (`relatesTo`).

The information model separates statements about the reference itself from the metadata of the referenced documents (`content`). The body of the document is referenced via a URL to be interpreted locally (`content.attachment.url`). In principle, the document body of the referenced document can also be embedded within the reference (`content.attachment.data`). The module makes no stipulations about the semantics of this resolution.

The text body may contain a variety of identifying data and/or metadata (e.g. names, patient ID). The data holder can express a completed de-identification of this data through suitable `securityLevel` values and/or codes of the NLP-Processing Status extension (see [NLP-Processing-Status-Extension](profiles-and-extensions.md)).

### General Implementation Guidance

* **[Datasets and Descriptions](datasets-and-descriptions.md)** — detailed description of the module's data elements / logical models.
* **[UML Diagrams](uml-diagrams.md)** — visual representation of the data models and their relationships.

### Audience-Specific Guidance

* **[Guidance for Researchers](researcher-guidance.md)** — for researchers using the module's data.
* **[Guidance for Implementers](implementer-guidance.md)** — technical guidance for DIC implementers.

-------

For conformance requirements see [Conformance](conformance.md); for the technical artifacts see [Profiles and Extensions](profiles-and-extensions.md).

