<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW - MACHINE TRANSLATION.
     This English page was produced by the migration agent as a machine translation of
     input/translations/de/pagecontent/index.md, which carries the module's ORIGINAL German
     narrative (source: implementation-guides/mii-ig-dokument-de/**, commit 9f76fed).
     English is the template's default language, so the direction is inverted: the German
     text is the source and this page is the translation (mii-ig-migration, Language).
     It has NOT been reviewed by a human. Gate C reviews it. Where a value is normative -
     element definitions, code displays, conformance verbs - the German wording is kept
     verbatim and marked as such rather than translated.
     No Liquid literal may appear in this file, including inside this comment. -->

### Core Dataset Module Dokument

This specification describes the FHIR representation of the **Dokument** (document) module of
the Medical Informatics Initiative core dataset. It describes the module's use cases and the
corresponding FHIR profiles and terminology resources in their binding form.

| Publication | |
|---------|---|
| Date    | 2026-03-11 |
| Version | 2026.0.1 |
| Status  | Active |
| Realm   | DE |

#### Description of the module

The MII KDS module **Dokument** allows metadata about documents of any kind with clinical
relevance to be recorded in a structured way, for any purpose. Documents in this context are
arbitrary binary objects - images or videos as much as text.

Using the profile is intended to make internal and external use of documents easier. The module
takes up the central aspects of characterising a document through metadata - document
relationships, document status, document discoverability, corpus navigation and document
archiving - and coordinates them along a standardised schema.

The module allows document references to be created with the option of relating them to the
**Fall** (encounter) and **Person** modules. It also carries an NLP extension, which represents
the processing status with respect to NLP procedures such as annotation (see the UML diagram).

With regard to document-processing chains - format conversion, anonymisation, NLP annotation -
the relation to other documents (`relatesTo`) becomes particularly important, because it is what
represents the processing chain.

The information model separates statements about the reference itself from the metadata of the
referenced documents (`content`). The document body is pointed at through a locally interpreted
URL (`content.attachment.url`). The document body of the referenced document may also be embedded
inside the reference itself (`content.attachment.data`). The module makes no statement about the
semantics of that resolution.

The text body may contain a wide range of identifying data and/or metadata (names, patient ID).
The data holder can express that de-identification has taken place through an appropriate
`securityLevel` and/or codes of the NLP Processing Status extension
([NLP Processing Status Extension](profiles-and-extensions.html#nlp-processing-status)).

#### Related guides

* [Guidance for Implementers](implementer-guidance.html) - references to other MII KDS modules,
  external references, and the compatibility analysis against ISiK, KBV MIO and IHE MHD
* [FHIR DocumentReference (R4)](https://www.hl7.org/fhir/R4/documentreference.html)
* [MII KDS module Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person),
  [MII KDS module Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall),
  [MII KDS module Meta](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta)

#### Imprint

This guide was produced within the Medical Informatics Initiative and is subject, by governance
process, to the coordination procedure of the Interoperability Forum and the technical committees
of HL7 Deutschland e. V.

#### Contact

* Frank Meineke, SMITH
* Jakob Faller, MIRACUM

Questions about this publication can be asked at any time on [chat.fhir.org](https://chat.fhir.org)
in the stream 'german/mi-initiative'. Comments and criticism are always welcome as issues in the
GitHub project.

#### Authors (in alphabetical order)

* Frank Meineke, SMITH, information modelling / domain representation
* Jakob Faller, MIRACUM, information modelling / domain representation
* Katja Hoffmann, MIRACUM/DigiHub MiHUBx, technical implementation
* Marcel Susky, MIRACUM/DigiHub MiHUBx, information modelling / domain representation / technical implementation
* Martin Boeker, MIRACUM, domain representation
* Noemi Deppenwiese, MIRACUM, technical implementation
* Thomas Ganslandt, MIRACUM, domain representation

#### Copyright and terms of use

<p>
    © 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin. <br>
    This work is licensed under the
    <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">Creative Commons Attribution 4.0 International License</a>.
</p>
<a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">
    <img src="https://licensebuttons.net/l/by/4.0/88x31.png" alt="CC BY 4.0 logo" style="border:0;">
</a>

For the terms of use of the underlying FHIR technology, see the FHIR core specification.
Some of the code systems used are published and maintained by other organisations; the copyright
of the publishers listed there applies.

#### Disclaimer

The content of this document is public. Note that parts of this document are based on FHIR
version R4, for which HL7 International holds the copyright.
