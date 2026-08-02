<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/conformance.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- Default-language (English) page. Migrated from the Simplifier sources
     implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/TechnischeImplementierung/Conformance.page.md
     (main content) and
     implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md
     (appended as the section "Compatibility with other specifications"; the
     source's topic front matter was removed).
     German (authoritative) mirror: input/translations/de/pagecontent/conformance.md —
     both files must say the same thing.
     The List of Conformance Statements at the end of this page is retained from
     the template scaffold. -->
<!-- TODO:REVIEW: the sections "Must Support (MS)" and "Missing Data" of this
     migrated page overlap in content with the template sub-pages
     must-support.html and missing-data.html (ported from kerndatensatz-basis);
     resolve the duplication at Gate B/C -->

This page describes how conformance requirements are documented. A possibly more recent version is documented in the [Kerndatensatz wiki](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance).

---

### Requirements Documentation

Requirements in this specification are marked by the following keywords written in capital letters (conformance verbs), based on [RFC-2119](https://datatracker.ietf.org/doc/html/rfc2119):

| German (Deutsch)              | English              |
|-------------------------------|----------------------|
| MUSS / MÜSSEN                 | MUST / SHALL         |
| DARF NICHT / DÜRFEN NICHT     | MUST NOT / SHALL NOT |
| VERPFLICHTEND                 | REQUIRED             |
| SOLLTE / SOLLTEN              | SHOULD               |
| SOLLTE NICHT / SOLLTEN NICHT  | SHOULD NOT           |
| EMPFOHLEN                     | RECOMMENDED          |
| KANN / OPTIONAL               | MAY                  |

---

### Must Support (MS)

#### Definition

Elements of a FHIR resource can be marked in a profile as mandatory or as [Must Support](http://hl7.org/fhir/R4/profiling.html#mustsupport).

- **Mandatory elements** are elements with a minimum cardinality of `1` (e.g. `1..1`, `1..*`). These SHALL always be present. In exceptional cases the values may be missing -> in this case the absence SHALL be documented via mechanisms such as the `Data-Absent-Reason Extension` (see [section *Missing Data*](#missing-data))

- **Must Support (MS)** on an element means that systems SHALL support this element, even if the cardinality is `0..*`. **Supporting** means: systems SHALL be able to populate, store, display, and correctly process the element.

#### Requirements

##### Data-producing systems (e.g. the FHIR API of a data integration center)

A conformant data-producing system SHALL:

- populate an MS element with data, provided these are locally available (e.g. via ETL from the primary system),
- be able to store the MS element in the resource,
- provide the MS element on request (e.g. for a feasibility query).

##### Data-processing systems (e.g. querying applications)

A conformant data-processing system SHALL:

- display MS elements correctly to the user,
- be able to take the values into account for calculations or further processing,
- process resource instances with MS elements without errors or aborts occurring.

---

### Missing Data {#missing-data}

There are situations in which information on a particular data element is missing and the source system does not know the reason for the absence.

- If the source system has no data instance for an element with a minimum cardinality of `0` (including the elements marked *Must Support*), the data element SHALL be **omitted** from the resource.
- If the data element is a **mandatory element** (i.e. minimum cardinality `1..`), it SHALL be **present**, even if the source system has no data.

This is summarized below:

#### Non-coded data elements

- The extension [`Data-Absent-Reason`](http://hl7.org/fhir/R4/extension-data-absent-reason.html) SHALL be used on the data type, with the code `unknown`.

#### Coded data elements with ValueSet binding "example", "preferred", or "extensible"

- If the source system contains **free text only**, only the text element (`CodeableConcept.text`) SHOULD be used.
- If neither text nor coded data are present:
  - if the ValueSet contains an "unknown" code, it SHALL be used.
  - if the ValueSet contains no "unknown" code, the code `unknown` from the CodeSystem [DataAbsentReason](http://hl7.org/fhir/R4/codesystem-data-absent-reason.html) SHALL be used.

#### Coded data elements with ValueSet binding "required"

- if the ValueSet contains an "unknown" code, it SHALL be used.
- if the ValueSet contains no "unknown" code, a concept from the ValueSet SHALL be used, since the instance is otherwise **not conformant**.

---

### Compatibility with other specifications

<!-- TODO:REVIEW (Gate B): 'Kompatibilitaet' page mapped as a conformance section; confirm the home -->

The compatibility of the FHIR DocumentReference profiles of the MII KDS Dokument with the profiles from Gematik ISiK Dokumentenaustausch, KBV MIO Basis, and IHE MHD was assessed on the basis of the [reports of the FHIR Validator](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/) and the technical profile properties. The focus is on the cardinalities, Must Support (MS) flags, and terminology bindings, since these are decisive for automated transformation and integration, e.g. in data integration centers.

<!-- TODO:REVIEW: the link "reports of the FHIR Validator" points to the
     production GitHub Pages of the legacy repo
     (medizininformatik-initiative.github.io/kerndatensatz-dokument); after the
     migration, consider retargeting it to this guide's QA page -->

#### Overview

<!-- TODO:REVIEW: the source contained only bracketed reference links without
     link targets here; converted to in-page anchors (the target headings carry
     explicit ids for this) -->

- [Detailed compatibility assessment](#detailed-compatibility-assessment)
  - [Cardinalities and Must Support](#cardinalities-and-must-support)
  - [Terminology bindings](#terminology-bindings)
  - [Further differences and commonalities](#further-differences-and-commonalities)
  - [Conclusion and recommendations](#conclusion-and-recommendations)
- [Technical overview](#technical-overview)
  - [ISiK Dokumentenaustausch](#isik-dokumentenaustausch)
  - [KBV MIO Basis](#kbv-mio-basis)
  - [IHE MHD](#ihe-mhd)
- [Summary](#summary-compatibility)

<!-- Section commented out in the Simplifier source, carried over unchanged (translated):

### Summary

The MII KDS Dokument profile is deliberately kept flexible with regard to the terminologies that can be used and the design of most metadata fields. For central fields such as `type` and `category`, KDL and XDS codes are recommended but not mandatorily required. Instead, LOINC and SNOMED CT are also explicitly supported as code systems and can be used equivalently. The binding strength is not required and carries a constraint regarding the recommendation. The cardinalities for these fields are 0..1 (`type`) and 0..* (`category`), and MS is set. The MII KDS Dokument profile is thus fundamentally open to local, national, or international document classifications and can be harmonized well with differently structured source profiles.

In contrast, the ISiK Dokumentenaustausch profile is considerably more restrictive. Here, KDL and XDS codes are mandatory for the `type` field. The binding is required; alternative code systems are not provided for. The `securityLabel` field is also mandatory in the ISiK Dokumentenaustausch profile and must contain one of the specified confidentiality levels.

The KBV MIO Basis and the IHE MHD profile are, similarly to the MII KDS Dokument profile, flexible. Both profiles allow various code systems for `type` and `category`, including LOINC and SNOMED CT, and impose no strict requirements. The fields are optional, and the bindings extensible or preferred. These profiles are therefore suitable for a broad range of use cases and international interoperability.
-->

---

#### Detailed compatibility assessment {#detailed-compatibility-assessment}

##### Cardinalities and Must Support {#cardinalities-and-must-support}

In the MII KDS Dokument profile, most metadata fields are optional, including the central fields `type` and `category`. The cardinality for `type` is 0..1, for `category` 0..*, and MS is set. This means that instances originating from less restrictive profiles such as KBV MIO Basis or IHE MHD can usually be adopted without adaptation, provided the metadata required for the respective application are present.

In the ISiK Dokumentenaustausch profile, by contrast, metadata fields such as `type`, `subject`, `securityLabel`, `content`, and `context` are mandatory (cardinality 1..1) and flagged MS. For a transformation from ISiK Dokumentenaustausch to MII KDS Dokument this is unproblematic, since all required information is available. Conversely – e.g. for a possible transformation from MII KDS Dokument to ISiK Dokumentenaustausch – missing mandatory fields would have to be supplemented.

##### Terminology bindings {#terminology-bindings}

For the `type` field, the MII KDS Dokument profile recommends the use of KDL and XDS type codes, but explicitly also supports LOINC and SNOMED CT. The binding is extensible, so other code systems are also permitted. The same applies to the `category` field - here too, XDS codes are recommended, but LOINC and SNOMED CT are supported equivalently. The binding strength is deliberately kept low to achieve maximum flexibility.

In the ISiK Dokumentenaustausch profile this is specified differently: here, KDL and XDS codes are required for `type`, and the category is derived from the KDL code. Other code systems are not provided for. The `securityLabel` field is likewise required and must contain one of the specified codes.

In the KBV MIO Basis and IHE MHD profiles, various code systems can be used, including LOINC, SNOMED CT, and XDS. These profiles are thus suitable for international and cross-sector applications.

##### Further differences and commonalities {#further-differences-and-commonalities}

A further important difference concerns the handling of context fields such as `context.facilityType` and `context.practiceSetting`. In the MII KDS Dokument profile these fields are optional; in the ISiK Dokumentenaustausch profile, by contrast, they are mandatory. For the transformation from ISiK Dokumentenaustausch to MII KDS Dokument this is unproblematic, since all information is available. When transforming from KBV MIO Basis or IHE MHD to MII KDS Dokument, these metadata fields may be missing, which is, however, permissible due to the flexibility of the target profile.

There are also differences in cardinality and MS flagging for the metadata fields for document access (`content.attachment.data` and `content.attachment.url`). The MII KDS Dokument profile allows both variants and is thus compatible with the different approaches of the source profiles.

#### Conclusion and recommendations {#conclusion-and-recommendations}

The MII KDS Dokument profile is designed to offer high compatibility with the common German and international FHIR profiles for document metadata. The most important metadata fields are optional and support various code systems, including KDL, XDS, LOINC, and SNOMED CT. For the transformation from ISiK Dokumentenaustausch to MII KDS Dokument, no adaptation of the terminologies is necessary, since the ISiK requirements are stricter. When transforming from KBV MIO Basis or IHE MHD to MII KDS Dokument, the existing codes can be adopted, provided they come from supported code systems. Missing mandatory fields are usually not a problem in the target profile, since they are optional there.

For practice this means that an automated extract-transform-load (ETL) pipeline from ISiK Dokumentenaustausch, KBV MIO Basis, or IHE MHD to MII KDS Dokument is technically well feasible. The biggest challenge is to harmonize the terminologies where necessary and to ensure that all metadata relevant for the respective application are present. The flexibility of the MII KDS Dokument profile eases integration and promotes interoperability in the German and international context.

---

#### Technical overview {#technical-overview}

This section provides a structured overview of the compatibility of the MII KDS Dokument profile with the ISiK Dokumentenaustausch, KBV MIO Basis, and IHE MHD profiles. For each comparison profile, motivation, compatibility, and constraints are presented in detail.

##### ISiK Dokumentenaustausch {#isik-dokumentenaustausch}

###### Motivation

Compatibility with ISiK Dokumentenaustausch is essential to ensure cross-sector interoperability in the German healthcare system. ISiK defines binding metadata standards for documents in hospitals. Harmonization enables the smooth integration of ISiK-conformant documents into MII data integration centers and supports the implementation of national interoperability goals.

###### Compatibility

The MII KDS Dokument profile is designed as a superset of the ISiK profile and covers all ISiK requirements. The most important points of comparison are:

| FHIR element      | MII KDS Dokument                                   | ISiK Dokumentenaustausch                | Compatibility                         |
|-------------------|----------------------------------------------------|-----------------------------------------|---------------------------------------|
| `status`          | 1..1, Must Support                                 | 1..1, Must Support                      | ✓ Fully compatible                    |
| `type`            | 0..1, Must Support, extensible (KDL/XDS, LOINC, SNOMED CT) | 1..1, Must Support, required (KDL/XDS)  | ✓ MII KDS Dokument supports ISiK codes             |
| `category`        | 0..*, Must Support, extensible                     | 1..1, Must Support, derived from KDL    | ✓ MII KDS Dokument supports the ISiK derivation    |
| `subject`         | 1..1, Must Support                                 | 1..1, Must Support                      | ✓ Fully compatible                    |
| `content`         | 1..*, Must Support                                 | 1..1, Must Support                      | ✓ MII KDS Dokument allows multiple contents        |
| `securityLabel`   | 0..*, extensible                                   | 1..*, required                          | ⚠️ MII KDS Dokument makes security labels optional |
| `context`         | 0..1                                               | 1..1, Must Support                      | ⚠️ MII KDS Dokument makes context optional         |

Notes:

- **Must Support:** All ISiK Must Support fields are also flagged as Must Support in the MII KDS Dokument profile.
- **Terminology:** MII supports all codes mandatory in ISiK and extends them with international code systems.

###### Constraints

- **Security labels:** Optional in MII KDS Dokument, mandatory in ISiK. When transforming from MII to ISiK, security labels may have to be supplemented.
- **Context:** ISiK requires context information; MII KDS Dokument leaves it optional. For ISiK compatibility, context data must be supplemented.
- **Category:** The ISiK-specific derivation of the category from KDL must be taken into account during transformation.

##### KBV MIO Basis {#kbv-mio-basis}

###### Motivation

Compatibility with the KBV MIO Basis profile is crucial for the integration of documents from outpatient care and of Medizinische Informationsobjekte (MIOs) into the MII infrastructure. Harmonization enables cross-sector exchange between outpatient and inpatient care.

###### Compatibility

Both profiles are designed for flexibility and interoperability:

| FHIR element      | MII KDS Dokument                                   | KBV MIO Basis                           | Compatibility                         |
|-------------------|----------------------------------------------------|-----------------------------------------|---------------------------------------|
| `status`          | 1..1, Must Support                                 | 1..1                                    | ✓ Fully compatible                    |
| `type`            | 0..1, Must Support, extensible                     | 0..1, preferred (LOINC, SNOMED CT, XDS) | ✓ Both support the same codes         |
| `category`        | 0..*, Must Support, extensible                     | 0..*, example binding                   | ✓ Fully compatible                    |
| `subject`         | 1..1, Must Support                                 | 0..1                                    | ✓ MII KDS Dokument specifies a mandatory field     |
| `content`         | 1..*, Must Support                                 | 1..*                                    | ✓ Fully compatible                    |
| `author`          | 0..*, Must Support                                 | 0..*                                    | ✓ Fully compatible                    |
| `custodian`       | 0..1                                               | 0..1                                    | ✓ Fully compatible                    |

Notes:

- **Terminology:** Both profiles support LOINC, SNOMED CT, and XDS.
- **Cardinalities:** Largely compatible; the MII KDS Dokument profile is more restrictive for `subject`.

###### Constraints

- **Subject:** MII KDS Dokument requires a patient reference; KBV MIO Basis leaves it optional. When transforming from KBV MIO Basis to MII KDS Dokument, a reference may have to be supplemented.
- **Must Support:** MII KDS Dokument flags more fields as Must Support.
- **Further constraints:** No notable incompatibilities.

##### IHE MHD {#ihe-mhd}

###### Motivation

Compatibility with IHE MHD enables international interoperability and connection to globally established standards for document exchange. IHE MHD is the reference for FHIR-based document exchange in many countries.

###### Compatibility

The MII KDS Dokument profile is largely compatible with the IHE MHD Comprehensive profile, with differences in restrictiveness:

| FHIR element      | MII KDS Dokument                                   | IHE MHD Comprehensive                   | Compatibility                         |
|-------------------|----------------------------------------------------|-----------------------------------------|---------------------------------------|
| `masterIdentifier`| 0..1                                               | 1..1                                    | ⚠️ IHE MHD requires a master identifier    |
| `status`          | 1..1, Must Support                                 | 1..1                                    | ✓ Fully compatible                    |
| `type`            | 0..1, Must Support, extensible                     | 1..1, preferred (LOINC)                 | ⚠️ IHE MHD requires a document type        |
| `category`        | 0..*, Must Support, extensible                     | 1..1, example binding                   | ⚠️ IHE MHD requires a category             |
| `subject`         | 1..1, Must Support                                 | 1..1                                    | ✓ Fully compatible                    |
| `securityLabel`   | 0..*, extensible                                   | 1..*, extensible                        | ⚠️ IHE MHD requires security labels        |
| `content.attachment`| 1..1, Must Support                              | 1..1                                    | ✓ Fully compatible                    |
| `context`         | 0..1                                               | 1..1                                    | ⚠️ IHE MHD requires context                |
| `content.format`  | 0..1                                               | 1..1, preferred (IHE Format Codes)      | ⚠️ IHE MHD requires a format code          |

Notes:

- **Terminology:** Both profiles support LOINC and international code systems.
- **Metadata:** IHE MHD requires more extensive metadata than MII KDS Dokument.

###### Constraints

- **Mandatory fields:** IHE MHD requires several fields as mandatory that are optional in the MII KDS Dokument (`masterIdentifier`, `type`, `category`, `securityLabel`, `context`, `content.format`).
- **Master identifier:** For IHE MHD, a unique master identifier must be assigned.
- **Format codes:** IHE MHD requires format codes, which may have to be supplemented.
- **Context:** Context information must be provided for IHE MHD.
- **Security label:** At least one security label is required for IHE MHD.
- **Transformation note:** For the transformation from MII KDS Dokument to IHE MHD, missing mandatory fields should be supplemented. The reverse transformation is possible without loss of information.

#### Summary {#summary-compatibility}

The MII KDS Dokument profile is designed as a flexible superset and enables the harmonization of document metadata from various sources. Compatibility with ISiK and KBV MIO Basis is very high; with IHE MHD there is a need for adaptation regarding mandatory fields and metadata. Cross-sector and international interoperability is thus ensured.

**Compatibility overview:**

| Target profile          | Compatibility         | Main constraints                                |
|-------------------------|-----------------------|-------------------------------------------------|
| ISiK Dokumentenaustausch| Very high             | Security label, context, category               |
| KBV MIO Basis           | Nearly complete       | Subject reference, Must Support differences     |
| IHE MHD                 | High, with adaptations| Mandatory fields (e.g. masterIdentifier, context)|

---

<!-- Retained from the template scaffold: conformance statements are not detected
     automatically. Every normative sentence on the English pages is wrapped in an
     explicit marker (an id, a colon and the statement text, delimited by section
     signs), and the Publisher renders the paragraph consisting only of section
     signs below as the table of all marked statements. The German mirror
     deliberately carries no markers. -->
<!-- TODO:REVIEW: the migrated page content carries no statement markers yet, so
     the table below may render empty until markers are (re)added to the English
     pages at Gate B/C -->

### List of Conformance Statements

The table below lists every marked conformance statement of this guide together
with its expectation and a link back to where it is stated.

§§§
