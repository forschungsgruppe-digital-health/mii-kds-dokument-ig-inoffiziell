<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/terminology.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- Source: implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/TechnischeImplementierung/Terminologien.page.md.
     Migration notes: the page title and navigation come from the template; the
     source's hand-built jump-mark index is carried as a plain list without
     anchors (the publisher does not apply kramdown anchor IDs to headings).
     The source's render directives are replaced by links to the generated
     artifact pages; the FQL table blocks that were already commented out in
     the source (projections of the ValueSets' compose criteria) were dropped,
     because the artifact pages show that content. The delimiter row of the
     table under "HL7 base profile R4" was mechanically corrected to two
     columns and a missing row terminator added (content unchanged). -->

Description of the module's own ValueSets, use of international terminologies, licences:

- Defined CodeSystems
  - Classification of NLP processing results
- Defined ValueSets
  - Document types
  - Document classes
  - Format codes
  - Facility types
  - Clinical specialties
- ValueSets used
  - General notes
  - HL7 base profile R4

---

## Defined CodeSystems

### Classification of NLP processing results

See the artifact page [MII VS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html).

<!-- TODO:REVIEW The title of this CodeSystem is "MII VS Dokument NLP Processing
     Status" in the artifact itself (not "MII CS ..."); the link text carries
     the artifact title unchanged. -->

<!-- Already commented out in the source (original target: the Simplifier guide
     page TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension,
     https://simplifier.net/guide/medizininformatikinitiative-dokument/miiigmoduldokument/technischeimplementierung/fhirprofile/nlp-processing-status-extension.page.md?version=current#inhalt):
     [see Concepts in the FHIR profile/NLP Processing Status: Extension](profiles-and-extensions.html)
-->

---

## Defined ValueSets

### Document types

To narrow down the possible codes, the selection was restricted as follows:

- SNOMED CT codes below (descendants of) the code `229059009 | Document type code`

The ValueSet created for this MII KDS module contains exclusively these codes.

See the artifact page [MII VS Dokument SCT Dokument Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.html).

### Document classes

To narrow down the possible codes, the selection was restricted as follows:

- SNOMED CT codes below (descendants of) the code `424545009 | Record composition (record artifact)`

The ValueSet created for this MII KDS module contains exclusively these codes.

See the artifact page [MII VS Dokument SCT Dokument Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.html).

### Format codes

To narrow down the possible codes, the selection was restricted as follows:

- IHE XDS format codes from `http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode`
- IHE-D XDS format codes from `http://ihe-d.de/ValueSets/IHEXDSformatCodeDE`

See the artifact page [MII VS Dokument Format Code](ValueSet-mii-vs-dokument-format-code.html).

### Facility types

To narrow down the possible codes, the selection was restricted as follows:

- SNOMED CT codes below (descendants of) the code `440654001 | Inpatient environment (environment)`
- SNOMED CT codes below (descendants of) the code `440655000 | Outpatient environment (environment)`
- SNOMED CT codes below (descendants of) the code `43741000 | Site of care (environment)`
- IHE-D XDS Healthcare Facility Type codes from `http://ihe-d.de/ValueSets/IHEXDShealthcareFacilityTypeCode`

The ValueSet created for this MII KDS module contains exclusively these codes.

See the artifact page [MII VS Dokument Einrichtungart](ValueSet-mii-vs-dokument-einrichtungsart.html).

<!-- TODO:REVIEW Per the artifact list the artifact title is
     "MII VS Dokument Einrichtungart" (missing "s" — a typo in the artifact
     itself); the link text carries it unchanged. -->

### Clinical specialties

To narrow down the possible codes, the selection was restricted as follows:

- SNOMED CT codes below (descendants of) the code `394733009 | Medical specialty (qualifier value)`
- IHE-D XDS Practice Setting codes from `http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode`

The ValueSet created for this MII KDS module contains exclusively these codes.

See the artifact page [MII VS Dokument Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.html).

---

## ValueSets used

### General notes

The following terminologies form the core of the clinical document classification in the DOKUMENT module:

- [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - this is the recommendation
- IHE XDS ValueSets (e.g. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))
- Optional: SNOMED CT for a more specific assignment of the clinical documents or the associated medical domain

### HL7 base profile R4

For the ValueSets declared in the FHIR R4 base profile, the following recommendations apply:

| ValueSet | Description & example |
| -- | -- |
| [document-reference-status](https://www.hl7.org/fhir/R4/valueset-document-reference-status.html) | HL7 base profile, usually: `current` |
| [composition-status](https://www.hl7.org/fhir/R4/valueset-composition-status.html) | HL7 base profile, usually `final` |
| [document.relationship-type](https://www.hl7.org/fhir/R4/valueset-document-relationship-type.html) | HL7 base profile, usually: `transforms` or `appends` |
| [security-labels](https://www.hl7.org/fhir/R4/valueset-security-labels.html) | We recommend, also for ISIK compatibility, at least the use of the HL7 base profile subset from http://terminology.hl7.org/CodeSystem/v3-Confidentiality, e.g. `N` for restricted / patient-related documents |
| [mimetypes](https://www.hl7.org/fhir/R4/valueset-mimetypes.html) | HL7 base profile, e.g. `text/plain` |
| [languages](https://www.hl7.org/fhir/R4/valueset-languages.html) | HL7 base profile, e.g. `de` or `de-DE` |
| content.format | No specific recommendation, but ISiK possible |
| context.event | No specific recommendation, but ISiK possible |
| context.facilityType | Recommendation per [ISIK](https://simplifier.net/packages/de.basisprofil.r4/1.4.0/files/656621), usually `KHS` |
| context.practiceSetting | No specific recommendation, but ISiK possible |
