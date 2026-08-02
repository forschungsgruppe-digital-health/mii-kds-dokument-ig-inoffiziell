<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/terminology.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- Migrated from Simplifier: MIIIGModulDokument/TechnischeImplementierung/Terminologien.page.md -->
Description of the module's own ValueSets, use of international terminologies, licenses:

<!-- TODO:REVIEW: the source page carried this list as bracket placeholders without link targets; converted to in-page anchor links here — verify the anchors after the first build -->
- [Defined CodeSystems](#defined-codesystems)
  - [Classification of NLP processing results](#classification-of-nlp-processing-results)
- [Defined ValueSets](#defined-valuesets)
  - [Document types](#document-types)
  - [Document classes](#document-classes)
  - [Format Codes](#format-codes)
  - [Facility types](#facility-types)
  - [Clinical specialties](#clinical-specialties)
- [Used ValueSets](#used-valuesets)
  - [General information](#general-information)
  - [HL7 Base Profile R4](#hl7-base-profile-r4)

---

### Defined CodeSystems

#### Classification of NLP processing results

<!-- TODO:REVIEW: the source rendered the CodeSystem mii-cs-dokument-nlp-processing-status inline here (a render directive); the generated artifact page already shows the resource — replaced by the static pointer. Note: the upstream artifact title reads "MII VS …" although the resource is a CodeSystem -->
The full rendering of the CodeSystem is available on the artifact page [MII VS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html).

<!-- Commented-out reference in the source: "see Concepts in FHIR Profile/NLP Processing Status: Extension" — in the migrated guide this corresponds to the page StructureDefinition-mii-ex-dokument-nlp-processing-status.html (originally a Simplifier guide link) -->

---

### Defined ValueSets

#### Document types

<!-- TODO:REVIEW: the source contained an already commented-out (not rendered) FQL query here over compose.include (System, Operation, Value) of ValueSet mii-vs-dokument-sct-dokument-typ; the query is not reproduced — the artifact page shows the definition -->

To narrow down the possible codes, the following restriction was applied to the selection:

- SNOMED CT codes below (descendants of) the code `229059009 | Document type code`

The ValueSet created for this MII KDS module contains exclusively these codes.

<!-- TODO:REVIEW: the source rendered the ValueSet inline here (a render directive); the generated artifact page already shows the resource — replaced by the static pointer -->
The full rendering of the ValueSet is available on the artifact page [MII VS Dokument SCT Dokument Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.html).

#### Document classes

<!-- TODO:REVIEW: the source contained an already commented-out (not rendered) FQL query here over compose.include (System, Operation, Value) of ValueSet mii-vs-dokument-sct-dokument-kategorie; the query is not reproduced — the artifact page shows the definition -->

To narrow down the possible codes, the following restriction was applied to the selection:

- SNOMED CT codes below (descendants of) the code `424545009 | Record composition (record artifact)`

The ValueSet created for this MII KDS module contains exclusively these codes.

<!-- TODO:REVIEW: the source rendered the ValueSet inline here (a render directive); the generated artifact page already shows the resource — replaced by the static pointer -->
The full rendering of the ValueSet is available on the artifact page [MII VS Dokument SCT Dokument Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.html).

#### Format Codes

<!-- TODO:REVIEW: the source contained an already commented-out (not rendered) FQL query here over compose.include (ValueSet) of ValueSet mii-vs-dokument-format-code; the query is not reproduced — the artifact page shows the definition -->

To narrow down the possible codes, the following restriction was applied to the selection:

- IHE XDS format codes from `http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode`
- IHE-D XDS format codes from `http://ihe-d.de/ValueSets/IHEXDSformatCodeDE`

<!-- TODO:REVIEW: the source rendered the ValueSet inline here (a render directive); the generated artifact page already shows the resource — replaced by the static pointer -->
The full rendering of the ValueSet is available on the artifact page [MII VS Dokument Format Code](ValueSet-mii-vs-dokument-format-code.html).

#### Facility types

<!-- TODO:REVIEW: the source contained an already commented-out (not rendered) FQL query here over compose.include (System, Operation, Value) of ValueSet mii-vs-dokument-einrichtungsart; the query is not reproduced — the artifact page shows the definition -->

To narrow down the possible codes, the following restriction was applied to the selection:

- SNOMED CT codes below (descendants of) the code `440654001 | Inpatient environment (environment)`
- SNOMED CT codes below (descendants of) the code `440655000 | Outpatient environment (environment)`
- SNOMED CT codes below (descendants of) the code `43741000 | Site of care (environment)`
- IHE-D XDS Healthcare Facility Type Codes from `http://ihe-d.de/ValueSets/IHEXDShealthcareFacilityTypeCode`

The ValueSet created for this MII KDS module contains exclusively these codes.

<!-- TODO:REVIEW: the source rendered the ValueSet inline here (a render directive); the generated artifact page already shows the resource — replaced by the static pointer. Note: the upstream artifact title reads "MII VS Dokument Einrichtungart" (missing "s") — carried over unchanged -->
The full rendering of the ValueSet is available on the artifact page [MII VS Dokument Einrichtungart](ValueSet-mii-vs-dokument-einrichtungsart.html).

#### Clinical specialties

<!-- TODO:REVIEW: the source contained an already commented-out (not rendered) FQL query here over compose.include (System, Operation, Value) of ValueSet mii-vs-dokument-fachgebiet; the query is not reproduced — the artifact page shows the definition -->

To narrow down the possible codes, the following restriction was applied to the selection:

- SNOMED CT codes below (descendants of) the code `394733009 | Medical specialty (qualifier value)`
- IHE-D XDS Practice Setting Codes from `http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode`

The ValueSet created for this MII KDS module contains exclusively these codes.

<!-- TODO:REVIEW: the source rendered the ValueSet inline here (a render directive); the generated artifact page already shows the resource — replaced by the static pointer -->
The full rendering of the ValueSet is available on the artifact page [MII VS Dokument Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.html).

---

### Used ValueSets

#### General information

The following terminologies form the core of the clinical document classification in the DOKUMENT module:

- [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - this is the recommendation
- IHE XDS ValueSets (e.g. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))
- Optional: SNOMED CT for a more specific classification of the clinical documents or the associated medical domain

#### HL7 Base Profile R4

For the ValueSets declared in the FHIR R4 base profile, the following recommendations apply:

| ValueSet | Description & example |
| -- | -- |
| [document-reference-status](https://www.hl7.org/fhir/R4/valueset-document-reference-status.html) | HL7 base profile, usually: `current` |
| [composition-status](https://www.hl7.org/fhir/R4/valueset-composition-status.html) | HL7 base profile, usually `final` |
| [document.relationship-type](https://www.hl7.org/fhir/R4/valueset-document-relationship-type.html) | HL7 base profile, usually: `transforms` or `appends` |
| [security-labels](https://www.hl7.org/fhir/R4/valueset-security-labels.html) | We recommend, also for ISIK compatibility, at least using the HL7 base profile subset from http://terminology.hl7.org/CodeSystem/v3-Confidentiality, e.g. `N` for restricted / patient-related documents |
| [mimetypes](https://www.hl7.org/fhir/R4/valueset-mimetypes.html) | HL7 base profile, e.g. `text/plain` |
| [languages](https://www.hl7.org/fhir/R4/valueset-languages.html) | HL7 base profile, e.g. `de` or `de-DE` |
| content.format | No separate recommendation, but ISiK possible |
| context.event | No separate recommendation, but ISiK possible |
| context.facilityType | Recommendation per [ISIK](https://simplifier.net/packages/de.basisprofil.r4/1.4.0/files/656621), usually `KHS` |
| context.practiceSetting | No separate recommendation, but ISiK possible |
