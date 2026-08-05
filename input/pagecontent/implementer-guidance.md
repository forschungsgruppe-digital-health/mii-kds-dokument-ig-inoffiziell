<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/implementer-guidance.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
### Guidance for Implementers

Technical guidance for DIC implementers on implementing the profiles of the **Dokument** module (ETL from primary systems, FHIR API, validation).

<!-- TODO:REVIEW (Gate B): mapped per migration-spec §9 (implementer-guidance primary home) -->

### Related modules

<!-- Source: implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/Kontext-Bezuege.page.md (German original) -->

Medical documents are essential for comprehensive patient care, for the traceability of diagnoses and treatments, and for compliance with legal and scientific standards. They also play an important role in the billing of medical services and support efficient resource planning in the healthcare system.
Both the technical and the content-related requirements of documentation in healthcare are subject to high dynamics. As a consequence, large differences in information structures have developed between institutions. Archiving and findability in particular are accompanied by a high diversity of metadata.

In the context of the MII core datasets, the MII KDS module Dokument introduces a coordinated, national concept that is oriented on common code systems and value sets and orchestrates an interoperable handling of medical documents.

#### Relationship to other MII KDS modules

For certain data elements, this MII KDS module draws on existing prior work from other MII KDS modules in order to achieve harmonization and increase compatibility. The dependencies on this prior work are described below.

| MII KDS module | Description of the relationship | Mandatory use |
|---|---|---|
| [Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person) | The majority of medical documentation relates to patients. The MII KDS module Person is used to reference the link between patient and document. In some cases, the focus of the documentation is on medical objects, procedures, or administrative acts. Only for this reason is the reference to the MII KDS module Person marked as merely optional. | Yes |
| [Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall) | Where the referenced document establishes a relationship to a contact with a healthcare institution, the most suitable contact level of the MII KDS module Fall should be referenced directly. This level typically depends on the document type. | No |

#### Use by other MII KDS modules

The foundation of the MII KDS module is the [FHIR DocumentReference](https://www.hl7.org/fhir/documentreference.html). FHIR DocumentReferences are already used in other MII KDS modules. We recommend switching to the MII KDS module specified here.

In case the specified document categories and types cannot adequately represent the requirements of a domain, the use of further domain-specific code systems and value sets is permitted.

| MII KDS module | Description of the relationship | Mandatory use |
|---|---|---|
| [Consent](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.consent) | The MII KDS module references consent documents, e.g. in scanned form. A case relationship is conceivable. | No |
| [Studie](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie) | The MII KDS module references study documents. Documents may also exist without a patient reference. | No |
| [Bildgebung](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.bildgebung) | The MII KDS module references documents as a substitute for structured diagnostic reports. | No |
| [Molgen Befund](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen) | The MII KDS module references a number of document types which, however, are bound to existing standards. | No |
| [Meta](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta) | The MII KDS module extends numerous profiles with definitions of search parameters - including for the MII KDS module Dokument. | No |

### References and compared specifications

<!-- Source: implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/Referenzen.page.md (German original) -->

The MII KDS module Dokument is designed so that instances can be simultaneously compatible with the following FHIR-based standards:

* [KBV base profiles with Medical Information Objects (MIO)](https://simplifier.net/base1x0) – profile for referencing external or attached documents
* [Gematik Information Technology Systems in Hospitals (ISiK) Document Exchange](https://simplifier.net/guide/isik-dokumentenaustausch-stufe-5) - profile for representing the metadata required for document exchange
* [IHE Mobile access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD) - profile for exchanging health documents via mobile applications, mobile devices, or other systems that are resource- and platform-constrained

The package dependency diagram is provided on the [Downloads](downloads.html) page.

<!-- TODO:REVIEW: The Paketabhaengigkeiten diagram is embedded on the downloads page per the migration cut (linked only here). Original in the source: a centered link to https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/Paketabhaengigkeiten.svg with the rendered image implementation-guides/images/Paketabhaengigkeiten.png (staged locally as input/images/Paketabhaengigkeiten.png). In-text references to the diagram ("above") were repointed to the downloads page. -->

The present specification is oriented on the FHIR core specification for the [DocumentReference resource](https://www.hl7.org/fhir/R4/documentreference.html#resource). The existing profiles of the [KBV base profiles](https://simplifier.net/base1x0), of [Gematik ISiK](https://simplifier.net/guide/isik-dokumentenaustausch-stufe-5), and of [IHE MHD](https://profiles.ihe.net/ITI/MHD) have been taken into account during modelling with regard to freedom from contradiction (see the References section). It is important to note here that compatibility from clinical routine towards the reference Dokument can be guaranteed, but no backwards compatibility into routine care is intended. See also the package dependency diagram on the [Downloads](downloads.html) page.

This makes it possible to attribute resources so that they are simultaneously valid against the MII KDS as well as ISiK or IHE. ISiK and IHE modules are also compatible in principle; however, in use we recommend specifying both the `type` (from KDL/ISiK) and the `category` (from IHE), which neither of the two profiles ISiK, IHE offers simultaneously.

A comparison of all data elements as well as of the terminology used was carried out and represented in the [Dokument profile](profiles-and-extensions.html). The cardinalities are kept open, so that no (further or new) restrictions were introduced in this respect. The terminology used in the compared profiles was incorporated and represented in the [Dokument profile](profiles-and-extensions.html).

Person-related documents are always assigned to a person (MII KDS module Person) (`subject`). De-identified documents are marked accordingly via the security level (`securityLabel`). The data-holding organization is responsible here for referencing only appropriately anonymized or pseudonymized variants of other MII modules. Wherever possible, a case context (MII KDS module Fall) is defined – where possible at the most relevant level of the case-level model (`context.encounter`). In the package dependency diagram (see [Downloads](downloads.html)) the relationships between the MII modules are shown in green.

We recommend using the [DVMD KDL standard](https://simplifier.net/KDL/), which is also used in ISiK, for the precise type description (`type`), and the [IHE XDS class codes](https://art-decor.org/art-decor/decor-valuesets--ihede-?id=1.2.276.0.76.11.32&effectiveDate=2018-07-13T13:23:15&language=de-DE) for the coarser document category (`category`). [IHE XDS type and class codes can be derived unambiguously from KDL.](https://simplifier.net/kdl/~resources?category=ConceptMap) Further codings such as in-house codes, SNOMED CT, or LOINC are optionally possible.
