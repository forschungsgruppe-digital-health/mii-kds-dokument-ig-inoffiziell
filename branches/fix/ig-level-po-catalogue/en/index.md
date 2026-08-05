# Home - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ImplementationGuide/mii-ig-dokument | *Version*:2026.0.1 |
| Draft as of 2026-08-02 | *Computable Name*:MII_IG_Dokument |

### Introduction

This specification describes the FHIR representation of the Core Data Set (KDS) module Dokument of the Medical Informatics Initiative. In the following, the module's use cases as well as the associated FHIR profiles and terminology resources are described in their normative form.

| | | | |
| :--- | :--- | :--- | :--- |
| Date | 2026-03-11 |   |   |
| Version | 2026.0.1 |   |   |
| Status | Active |   |   |
| Realm | DE |   |   |
| <!– | Maturity (Reifegrad) | MII Maturity Model (MM0|MM1|MM2|MM3) | –> |

### Target audience

##### Implementers

Data Integration Centers (DIC), software developers and system architects building FHIR-based solutions.
 → see [Profiles and Extensions](profiles-and-extensions.md) and [Logical Models](logical-models.md).

##### Researchers

Scientists using MII data for medical research.
 → see [Guidance for Researchers](researcher-guidance.md).

### Contents

* **[Guidance](guidance.md)** — getting started and domain notes.
* **[Conformance](conformance.md)** — normative requirements, Must-Support and handling missing data.
* **[Profiles and Extensions](profiles-and-extensions.md)** and **[Terminology](terminology.md)** — the technical artifacts.
* **[Examples](examples.md)** — example instances.

### Related guides

Compared, compatible standards:

* [KBV Basis-Profile with Medical Information Objects (MIO)](https://simplifier.net/base1x0)
* [Gematik Information Technology Systems in Hospitals (ISiK) Dokumentenaustausch (document exchange)](https://simplifier.net/guide/isik-dokumentenaustausch-stufe-5)
* [IHE Mobile access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD)

MII KDS modules related to this module ([details on the relationships](implementer-guidance.md)):

* [Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)
* [Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)
* [Consent](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.consent)
* [Studie](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie)
* [Bildgebung](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.bildgebung)
* [Molgen Befund](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen)
* [Meta](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta)

Further guides:

* [FHIR IG Registry](https://fhir.org/guides/registry/) — more FHIR implementation guides

### Imprint

This guide was created within the Medical Informatics Initiative and is subject, by its governance process, to the coordination procedure of the Interoperability Forum and the technical committees of HL7 Deutschland e. V.

### Contact

* Frank Meineke, SMITH
* Jakob Faller, MIRACUM

Questions about this publication can be asked at any time on [chat.fhir.org](https://chat.fhir.org) in the 'german/mi-initiative' stream.

Comments and criticism are always welcome as 'Issues' in the GitHub project.

### Authors (in alphabetical order)

* Frank Meineke, SMITH, information modelling / domain representation
* Jakob Faller, MIRACUM, information modelling / domain representation
* Katja Hoffmann, MIRACUM/DigiHub MiHUBx, technical implementation
* Marcel Susky, MIRACUM/DigiHub MiHUBx, information modelling / domain representation / technical implementation
* Martin Boeker, MIRACUM, domain representation
* Noemi Deppenwiese, MIRACUM, technical implementation
* Thomas Ganslandt, MIRACUM, domain representation

### Copyright and usage notes

 © 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin. 
 This work is licensed under the [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/). 

 ![](https://licensebuttons.net/l/by/4.0/88x31.png) 

For the usage rights of the underlying FHIR technology, see the FHIR base specification.

Some of the code systems used are published and maintained by other organizations. The copyright of the publishers listed there applies.

### Disclaimer

The content of this document is public. Please note that parts of this document are based on FHIR version R4, which is copyrighted by HL7 International.

