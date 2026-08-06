<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW - MACHINE TRANSLATION.
     This English page was produced by the migration agent as a machine translation of
     input/translations/de/pagecontent/terminology.md, which carries the module's ORIGINAL German
     narrative (source: implementation-guides/mii-ig-dokument-de/**, commit 9f76fed).
     English is the template's default language, so the direction is inverted: the German
     text is the source and this page is the translation (mii-ig-migration, Language).
     It has NOT been reviewed by a human. Gate C reviews it. Where a value is normative -
     element definitions, code displays, conformance verbs - the German wording is kept
     verbatim and marked as such rather than translated.
     No Liquid literal may appear in this file, including inside this comment. -->

### Terminology

Description of the module's own value sets, use of international terminologies, and licences.

#### Defined code systems

##### Classification of NLP processing results

[mii-cs-dokument-nlp-processing-status](CodeSystem-mii-cs-dokument-nlp-processing-status.html)

#### Defined value sets

##### Document types

The selection of possible codes was restricted as follows:

- SNOMED CT codes below (descendants of) the code `229059009 | Document type code`

The value set created for this MII KDS module contains only those codes.

[mii-vs-dokument-sct-dokument-typ](ValueSet-mii-vs-dokument-sct-dokument-typ.html)

##### Document classes

The selection of possible codes was restricted as follows:

- SNOMED CT codes below (descendants of) the code `424545009 | Record composition (record artifact)`

The value set created for this MII KDS module contains only those codes.

[mii-vs-dokument-sct-dokument-kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.html)

##### Format codes

The selection of possible codes was restricted as follows:

- IHE XDS format codes from `http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode`
- IHE-D XDS format codes from `http://ihe-d.de/ValueSets/IHEXDSformatCodeDE`

[mii-vs-dokument-format-code](ValueSet-mii-vs-dokument-format-code.html)

##### Healthcare facility types

The selection of possible codes was restricted as follows:

- SNOMED CT codes below (descendants of) `440654001 | Inpatient environment (environment)`
- SNOMED CT codes below (descendants of) `440655000 | Outpatient environment (environment)`
- SNOMED CT codes below (descendants of) `43741000 | Site of care (environment)`
- IHE-D XDS healthcare facility type codes from `http://ihe-d.de/ValueSets/IHEXDShealthcareFacilityTypeCode`

The value set created for this MII KDS module contains only those codes.

[mii-vs-dokument-einrichtungsart](ValueSet-mii-vs-dokument-einrichtungsart.html)

##### Clinical specialties

The selection of possible codes was restricted as follows:

- SNOMED CT codes below (descendants of) `394733009 | Medical specialty (qualifier value)`
- IHE-D XDS practice setting codes from `http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode`

The value set created for this MII KDS module contains only those codes.

[mii-vs-dokument-fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.html)

#### Value sets used

##### General

The following terminologies form the core of the domain classification of documents in the
**Dokument** module:

* [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - this is the recommendation
* IHE XDS value sets (e.g. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode),
  [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode),
  [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode),
  [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))
* Optional: SNOMED CT for a more specific classification of the clinical documents or of the
  associated medical domain

##### HL7 base profile R4

The following recommendations apply to the value sets declared in the FHIR R4 base profile:

| Value set | Description and example |
| -- | -- |
| [document-reference-status](https://www.hl7.org/fhir/R4/valueset-document-reference-status.html) | HL7 base profile, usually `current` |
| [composition-status](https://www.hl7.org/fhir/R4/valueset-composition-status.html) | HL7 base profile, usually `final` |
| [document.relationship-type](https://www.hl7.org/fhir/R4/valueset-document-relationship-type.html) | HL7 base profile, usually `transforms` or `appends` |
| [security-labels](https://www.hl7.org/fhir/R4/valueset-security-labels.html) | We recommend, also for ISiK compatibility, at least the use of the HL7 base profile subset from http://terminology.hl7.org/CodeSystem/v3-Confidentiality, e.g. `N` for restricted / patient-related documents |
| [mimetypes](https://www.hl7.org/fhir/R4/valueset-mimetypes.html) | HL7 base profile, e.g. `text/plain` |
| [languages](https://www.hl7.org/fhir/R4/valueset-languages.html) | HL7 base profile, e.g. `de` or `de-DE` |
| content.format | No separate recommendation, but ISiK possible |
| context.event | No separate recommendation, but ISiK possible |
| context.facilityType | Recommendation per [ISiK](https://simplifier.net/packages/de.basisprofil.r4/1.4.0/files/656621), usually `KHS` |
| context.practiceSetting | No separate recommendation, but ISiK possible |
