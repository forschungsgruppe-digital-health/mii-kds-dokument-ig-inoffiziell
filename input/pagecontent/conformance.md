<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/conformance.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- "Conformance" page. Content migrated from the Simplifier sources
     MIIIGModulDokument/TechnischeImplementierung/Conformance.page.md and
     MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md
     (the latter as the section "Compatibility with other specifications");
     directives converted per the migration crosswalk (Simplifier page-title
     directive and Simplifier "topic" front matter removed). The sub-page
     list follows the two menu files. German mirror:
     input/translations/de/pagecontent/conformance.md — keep both in step. -->

### Conformance

This section defines the conformance requirements for systems implementing the
profiles of the **Dokument** module. This page describes how conformance
requirements are documented. A possibly more recent version is documented in
the
[Kerndatensatz wiki](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance).

Sub-pages of this section:

* **[General Requirements](general-requirements.html)** — the conformance verbs
  (SHALL/SHOULD/MAY per RFC-2119), claiming conformance, using codes in the
  profiles, and the expectations on the FHIR RESTful API.
* **[Must Support](must-support.html)** — what *Must Support* means for
  data-providing and data-consuming systems.
* **[Handling Missing Data](missing-data.html)** — how missing or unknown values
  are represented.
* **[Security and Privacy](security-and-privacy.html)** — the security and
  data-protection considerations of this module.

<!-- TODO:REVIEW (Gate B): The template sub-pages "General Requirements",
     "Must Support" and "Handling Missing Data" restate the MII-wide
     conformance rules; the sections "Requirements documentation",
     "Must Support (MS)" and "Missing Data" carried over below from the
     Simplifier source Conformance.page.md overlap with them. Resolve the
     duplication at Gate B (shorten or point to the sub-pages); until then the
     source text is kept here in full. -->

---

### Requirements documentation

Requirements in this specification are marked by the following keywords written in capital letters (conformance verbs), based on [RFC-2119](https://datatracker.ietf.org/doc/html/rfc2119):

| German                       	| English     	       |
|------------------------------	|--------------------- |
| MUSS / MÜSSEN                	| MUST / SHALL         |
| DARF NICHT / DÜRFEN NICHT    	| MUST NOT / SHALL NOT |
| VERPFLICHTEND                	| REQUIRED    	       |
| SOLLTE / SOLLTEN             	| SHOULD      	       |
| SOLLTE NICHT / SOLLTEN NICHT 	| SHOULD NOT  	       |
| EMPFOHLEN                    	| RECOMMENDED 	       |
| KANN / OPTIONAL               | MAY                  |

---

### Must Support (MS)

#### Definition

Elements of a FHIR resource can be marked in a profile as mandatory or as [Must Support](http://hl7.org/fhir/R4/profiling.html#mustsupport).

- **Mandatory elements** are elements with a minimum cardinality of `1` (e.g. `1..1`, `1..*`). These MUST always be present. In exceptional cases the values may be missing -> in this case the absence MUST be documented via mechanisms such as the `Data-Absent-Reason Extension` (see [section *Missing Data*](#missing-data))

- **Must Support (MS)** on an element means that systems MUST support this element even if the cardinality is `0..*`. **Support** means: systems MUST be able to populate, store, display and correctly process the element.

#### Requirements

##### Data-providing systems (e.g. the FHIR API of a Data Integration Center)

A conformant data-providing system MUST:
- populate an MS element with data where these are locally available (e.g. via ETL from the primary system),
- be able to store the MS element in the resource,
- provide the MS element on request (e.g. for a feasibility query).

##### Data-consuming systems (e.g. querying applications)

A conformant data-consuming system MUST:
- display MS elements correctly to the user,
- be able to take the values into account for calculations or further processing,
- process resource instances containing MS elements without errors or aborts occurring.

---

### Missing Data

There are situations in which information for a particular data element is missing and the source system does not know the reason for the absence.

- If the source system has no data instance for an element with a minimum cardinality of `0` (including the elements marked *Must Support*), the data element MUST be **omitted** from the resource.
- If the data element is a **mandatory element** (i.e. minimum cardinality `1..`), it MUST be **present** even if the source system has no data.

This is summarized in the following:

#### Non-coded data elements
- The extension [`Data-Absent-Reason`](http://hl7.org/fhir/R4/extension-data-absent-reason.html) MUST be used on the data type together with the code `unknown`.

#### Coded data elements with ValueSet binding "example", "preferred" or "extensible"
- If the source system contains **free text only**, only the text element (`CodeableConcept.text`) SHOULD be used.
- If neither text nor coded data are available:
  - if the ValueSet contains an "unknown" code, it SHALL be used.
  - if the ValueSet contains no "unknown" code, the code `unknown` from the CodeSystem [DataAbsentReason](http://hl7.org/fhir/R4/codesystem-data-absent-reason.html) SHALL be used.

#### Coded data elements with ValueSet binding "required"
- if the ValueSet contains an "unknown" code, it MUST be used.
- if the ValueSet contains no "unknown" code, a concept from the ValueSet MUST be used, since the instance is otherwise **not conformant**.

---

<!-- TODO:REVIEW (Gate B): 'Kompatibilitaet' mapped as a conformance section -->

### Compatibility with other specifications

<!-- TODO:REVIEW: The following link to the FHIR Validator reports points to
     the previously published site of the source repository
     (medizininformatik-initiative.github.io/kerndatensatz-dokument). After
     the migration, check whether the reports are still maintained there and
     update the link if necessary. -->

The compatibility of the FHIR DocumentReference profiles of the MII KDS Dokument with the profiles from gematik ISiK Dokumentenaustausch, KBV MIO Basis and IHE MHD was checked against the [reports of the FHIR Validator](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/) and the technical profile properties. The focus is on the cardinalities, Must Support (MS) flags and terminology bindings, since these are decisive for automated transformation and integration, e.g. in Data Integration Centers.

<!-- TODO:REVIEW: The source page Kompatibilitaet.page.md opened with an
     "Übersicht" (overview) — a hand-built anchor table of contents whose list
     entries had no working link targets in the source. Removed per the
     crosswalk (no anchor tables of contents; navigation is generated by the
     publisher). -->

<!--
#### Summary

The MII KDS Dokument profile is deliberately kept flexible with regard to the usable terminologies and the design of most metadata fields. For central fields such as `type` and `category`, KDL and XDS codes are recommended but not mandatorily required. Instead, LOINC and SNOMED CT are also explicitly supported as code systems and can be used equivalently. The binding strength is not required and carries a constraint regarding the recommendation. The cardinalities for these fields are 0..1 (`type`) and 0..* (`category`), and MS is set. The MII KDS Dokument profile is thus fundamentally open to local, national or international document classifications and can be harmonized well with differently structured source profiles.

In contrast, the ISiK Dokumentenaustausch profile is considerably more restrictive. Here, KDL and XDS codes are mandatory for the `type` field. The binding is required; alternative code systems are not provided for. The `securityLabel` field is also mandatory in the ISiK Dokumentenaustausch profile and must contain one of the prescribed confidentiality levels.

The KBV MIO Basis and IHE MHD profiles are flexible, similar to the MII KDS Dokument profile. Both profiles allow various code systems for `type` and `category`, including LOINC and SNOMED CT, and impose no strict requirements. The fields are optional, and the bindings are extensible or preferred. These profiles are therefore suitable for a wide range of use cases and international interoperability.
-->
<!-- TODO:REVIEW: The commented-out "Summary" section above was already
     commented out (not rendered) in the source and has been carried over
     faithfully. Decide at Gate B: activate or remove. -->

---

#### Detailed compatibility analysis

##### Cardinalities and Must Support

In the MII KDS Dokument profile, most metadata fields are optional, including the central fields `type` and `category`. The cardinality for `type` is 0..1, for `category` 0..*, and MS is set. This means that instances originating from less restrictive profiles such as KBV MIO Basis or IHE MHD can usually be adopted without adaptation, provided the metadata required for the respective application are present.

In the ISiK Dokumentenaustausch profile, by contrast, metadata fields such as `type`, `subject`, `securityLabel`, `content` and `context` are mandatory (cardinality 1..1) and flagged MS. For a transformation from ISiK Dokumentenaustausch to MII KDS Dokument this is unproblematic, since all required information is available. Conversely — for instance in a possible transformation from MII KDS Dokument to ISiK Dokumentenaustausch — missing mandatory fields would have to be supplemented.

##### Terminology bindings

For the `type` field, the MII KDS Dokument profile recommends the use of KDL and XDS type codes, but also explicitly supports LOINC and SNOMED CT. The binding is extensible, so other code systems are also permitted. The same applies to the `category` field - here too, XDS codes are recommended, but LOINC and SNOMED CT are supported equivalently. The binding strength is deliberately kept low to achieve maximum flexibility.

In the ISiK Dokumentenaustausch profile this is specified differently: here, KDL and XDS codes are required for `type`, and the category is derived from the KDL code. Other code systems are not provided for. The `securityLabel` field is also required and must contain one of the prescribed codes.

In the KBV MIO Basis and IHE MHD profiles, various code systems can be used, including LOINC, SNOMED CT and XDS. These profiles are therefore suitable for international and cross-sector applications.

##### Further differences and commonalities

Another important difference concerns the handling of context fields such as `context.facilityType` and `context.practiceSetting`. In the MII KDS Dokument profile these fields are optional, whereas in the ISiK Dokumentenaustausch profile they are mandatory. For the transformation from ISiK Dokumentenaustausch to MII KDS Dokument this is unproblematic, since all information is available. When transforming from KBV MIO Basis or IHE MHD to MII KDS Dokument, these metadata fields may be missing, which is however permissible due to the flexibility of the target profile.

There are also differences in cardinality and MS flagging for the metadata fields for document access (`content.attachment.data` and `content.attachment.url`). The MII KDS Dokument profile allows both variants and is thus compatible with the different approaches of the source profiles.

#### Conclusion and recommendations

The MII KDS Dokument profile is designed to offer a high degree of compatibility with the common German and international FHIR profiles for document metadata. The most important metadata fields are optional and support various code systems, including KDL, XDS, LOINC and SNOMED CT. For the transformation from ISiK Dokumentenaustausch to MII KDS Dokument, no adaptation of the terminologies is required, since the ISiK requirements are stricter. When transforming from KBV MIO Basis or IHE MHD to MII KDS Dokument, the existing codes can be adopted provided they come from supported code systems. Missing mandatory fields are usually not a problem in the target profile, since they are optional there.

In practice this means that an automated Extract-Transform-Load (ETL) pipeline from ISiK Dokumentenaustausch, KBV MIO Basis or IHE MHD to MII KDS Dokument is technically well feasible. The greatest challenge is to harmonize the terminologies where necessary and to ensure that all metadata relevant for the respective application are present. The flexibility of the MII KDS Dokument profile eases integration and promotes interoperability in the German and international context.

---

#### Technical overview

This section provides a structured overview of the compatibility of the MII KDS Dokument profile with the ISiK Dokumentenaustausch, KBV MIO Basis and IHE MHD profiles. For each comparison profile, motivation, compatibility and limitations are presented in detail.

##### ISiK Dokumentenaustausch

###### Motivation

Compatibility with ISiK Dokumentenaustausch is essential to ensure cross-sector interoperability in the German healthcare system. ISiK defines binding metadata standards for documents in hospitals. Harmonization enables the smooth integration of ISiK-conformant documents into MII Data Integration Centers and supports the implementation of national interoperability goals.

###### Compatibility

The MII KDS Dokument profile is designed as a superset of the ISiK profile and covers all ISiK requirements. The most important points of comparison are:

| FHIR element      | MII KDS Dokument                                   | ISiK Dokumentenaustausch                | Compatibility                         |
|-------------------|----------------------------------------------------|-----------------------------------------|---------------------------------------|
| `status`          | 1..1, Must Support                                 | 1..1, Must Support                      | ✓ Fully compatible                    |
| `type`            | 0..1, Must Support, extensible (KDL/XDS, LOINC, SNOMED CT) | 1..1, Must Support, required (KDL/XDS)  | ✓ MII KDS Dokument supports the ISiK codes         |
| `category`        | 0..*, Must Support, extensible                     | 1..1, Must Support, derived from KDL    | ✓ MII KDS Dokument supports the ISiK derivation    |
| `subject`         | 1..1, Must Support                                 | 1..1, Must Support                      | ✓ Fully compatible                    |
| `content`         | 1..*, Must Support                                 | 1..1, Must Support                      | ✓ MII KDS Dokument allows multiple contents        |
| `securityLabel`   | 0..*, extensible                                  | 1..*, required                          | ⚠️ MII KDS Dokument makes security labels optional |
| `context`         | 0..1                                               | 1..1, Must Support                      | ⚠️ MII KDS Dokument makes the context optional     |

Notes:

- **Must Support:** All ISiK Must Support fields are also flagged as Must Support in the MII KDS Dokument profile.
- **Terminology:** MII supports all codes mandated by ISiK and extends them with international code systems.

###### Limitations

- **Security labels:** Optional in MII KDS Dokument, mandatory in ISiK. When transforming from MII to ISiK, security labels may have to be supplemented.
- **Context:** ISiK requires context information; MII KDS Dokument leaves it optional. For ISiK compatibility, context data must be supplemented.
- **Category:** The ISiK-specific derivation of the category from KDL must be observed during transformation.

##### KBV MIO Basis

###### Motivation

Compatibility with the KBV MIO Basis profile is crucial for integrating documents from outpatient care and Medical Information Objects (MIOs) into the MII infrastructure. Harmonization enables cross-sector exchange between outpatient and inpatient care.

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

- **Terminology:** Both profiles support LOINC, SNOMED CT and XDS.
- **Cardinalities:** Largely compatible; the MII KDS Dokument profile is more restrictive for `subject`.

###### Limitations

- **Subject:** MII KDS Dokument requires a patient reference; KBV MIO Basis leaves it optional. When transforming from KBV MIO Basis to MII KDS Dokument, a reference may have to be supplemented.
- **Must Support:** MII KDS Dokument flags more fields as Must Support.
- **Further limitations:** No noteworthy incompatibilities.

##### IHE MHD

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
| `securityLabel`   | 0..*, extensible                                  | 1..*, extensible                        | ⚠️ IHE MHD requires security labels        |
| `content.attachment`| 1..1, Must Support                              | 1..1                                    | ✓ Fully compatible                    |
| `context`         | 0..1                                               | 1..1                                    | ⚠️ IHE MHD requires a context              |
| `content.format`  | 0..1                                               | 1..1, preferred (IHE Format Codes)      | ⚠️ IHE MHD requires a format code          |

Notes:

- **Terminology:** Both profiles support LOINC and international code systems.
- **Metadata:** IHE MHD requires more extensive metadata than MII KDS Dokument.

###### Limitations

- **Mandatory fields:** IHE MHD requires several fields as mandatory that are optional in MII KDS Dokument (`masterIdentifier`, `type`, `category`, `securityLabel`, `context`, `content.format`).
- **Master identifier:** For IHE MHD, a unique master identifier must be assigned.
- **Format codes:** IHE MHD requires format codes, which may have to be supplemented.
- **Context:** Context information must be provided for IHE MHD.
- **Security label:** At least one security label is required for IHE MHD.
- **Transformation note:** For the transformation from MII KDS Dokument to IHE MHD, missing mandatory fields should be supplemented. The reverse transformation is possible without loss of information.

#### Summary

The MII KDS Dokument profile is designed as a flexible superset and enables the harmonization of document metadata from various sources. Compatibility with ISiK and KBV MIO Basis is very high; with IHE MHD there are adaptation needs for mandatory fields and metadata. Cross-sector and international interoperability is thus ensured.

**Compatibility overview:**

| Target profile          | Compatibility         | Main limitations                                |
|-------------------------|-----------------------|-------------------------------------------------|
| ISiK Dokumentenaustausch| Very high             | Security label, context, category               |
| KBV MIO Basis           | Nearly complete       | Subject reference, Must Support differences     |
| IHE MHD                 | High, with adaptations| Mandatory fields (e.g. masterIdentifier, context) |

---

> [TODO: Add the conformance statements that are specific to your module.
>
> How the list below is produced: conformance statements are **not** detected
> automatically. Every normative sentence on the English pages is wrapped in an
> explicit marker — an id, a colon and the statement text, delimited by section
> signs — and the table at the end of this page is generated from those markers.
> `input/pagecontent/general-requirements.md` shows the syntax in place: copy a
> marked sentence from there and give yours the next free id on its page. The
> German mirror deliberately carries no markers; the list is produced from the
> English pages only.
>
> Keep the set **curated** — mark real obligations, not every sentence that
> happens to contain a bold verb — and keep each marked sentence
> self-contained: the table shows it out of context.]

---

### List of Conformance Statements

The table below lists every marked conformance statement of this guide together
with its expectation and a link back to where it is stated.

§§§
