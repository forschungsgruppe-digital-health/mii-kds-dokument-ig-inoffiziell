<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW - MACHINE TRANSLATION.
     This English page was produced by the migration agent as a machine translation of
     input/translations/de/pagecontent/general-requirements.md, which carries the module's ORIGINAL German
     narrative (source: implementation-guides/mii-ig-dokument-de/**, commit 9f76fed).
     English is the template's default language, so the direction is inverted: the German
     text is the source and this page is the translation (mii-ig-migration, Language).
     It has NOT been reviewed by a human. Gate C reviews it. Where a value is normative -
     element definitions, code displays, conformance verbs - the German wording is kept
     verbatim and marked as such rather than translated.
     No Liquid literal may appear in this file, including inside this comment. -->

### Use cases and general requirements

The document profile ([Dokument: DocumentReference](profiles-and-extensions.html#dokument-documentreference))
exists to make documents from clinical routine usable interoperably, internally as well as
externally. The metadata it defines support discoverability, selection and further processing of
those documents. Documents from clinical routine are, however, a very heterogeneous group: a
multitude of source systems, historically grown structures and terminologies - such as internal
house codes for categorising document types - prevent effective use locally and across sites.

#### Internal use of documents

![InterneDokumentennutzung](InterneDokumentennutzung.png)

*Internal use of documents* covers the archiving, management and use of clinical documents inside a
hospital or a clinical institution. The data integration centres (`Standort`) are the central
instances for data management here.

##### Archiving and discoverability of clinical documents

Data integration centres should be able to archive clinical documents together with their metadata
(`Dokument archivieren`) and to make them discoverable (`Dokumentenarchiv navigieren`). The
metadata described in the document profile include, among others:

- document type (e.g. discharge letter, findings report),
- identifiers (e.g. unique IDs),
- creation date,
- author, and
- association with a patient.

The standardised description of these metadata makes efficient navigation of the archive possible.
Clinicians and other clinical users can query (`Hausinterne Anfragen bearbeiten`) and search
documents in a targeted way to find relevant information.

##### Conversion of existing documents

A further important aspect of *internal use of documents* is the conversion
(`Dokument konvertieren`) of clinical documents and metadata that exist under other
interoperability standards (e.g. HL7 CDA, Gematik ISiK, KBV MIO) into a dataset conforming to the
document profile. This conversion makes sure that older or differently produced documents and
metadata can also be integrated and managed uniformly.

##### Use by researchers: annotation and pseudonymisation

Beyond the purposes above, *internal use of documents* also plays a role in research. Within
natural language processing (NLP) pipelines, researchers can store intermediate results and
processing steps according to the document profile (`Dokument verarbeiten`). Intermediate results
of successive processing steps can be linked to one another and documented
(`Dokument pseudonymisieren`, `Dokument annotieren`), which supports traceability and
reproducibility of NLP pipelines.

#### External use of documents

![ExterneDokumentennutzung](ExterneDokumentennutzung.png)

*External use of documents* aims at making clinical documents and their metadata available for
research purposes. The focus here is use by researchers who want to gain new insights from the
archived data.

Researchers (`Wissenschaftler:in`) can access a corpus of clinical documents enriched with metadata
(`Kohorte definieren`). The metadata described in the document profile allow targeted selection and
filtering of documents (`Daten selektieren`) - for instance documents of a particular type, from a
particular period, or of a particular cohort.

A central element for researchers is access to data and metadata of clinical documents through the
German Research Data Portal for Health (FDPG). Through it, researchers can submit feasibility
queries (`Machbarkeitsanfrage stellen`) to check whether the data needed for a planned study are
available. The research data portal uses the information held in the document profile to generate
its user interfaces: the metadata on document types, identifiers and labels are used to build the
forms dynamically.

For data transport it is recommended to embed the document body into the resource. The files may be
compressed beforehand. Additional files needed to interpret and re-use the document (e.g. type
system files for semantically annotated documents) can be attached directly in the same way.
