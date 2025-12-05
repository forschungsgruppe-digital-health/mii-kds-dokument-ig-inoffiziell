---
topic: Terminology
---

# {{page-title}}

Beschreibung von eigenen ValueSets, Verwendung internationaler Terminologien, Lizenzen:

- [Definierte CodeSystems]
  - [Klassifikation von NLP-Verarbeitungsergebnissen]
- [Definierte ValueSets]
  - [Dokumententypen]
  - [Dokumentenklassen]
  - [Format Codes]
  - [Einrichtungsarten]
  - [Klinische Fachgebiete]
- [Verwendete ValueSets]
  - [Allgemeine Angaben]
  - [HL7 Basisprofil R4]

---

## Definierte CodeSystems

### Klassifikation von NLP-Verarbeitungsergebnissen

{{render:mii-cs-dokument-nlp-processing-status}}

<!--
[siehe Concepts im FHIR Profile/NLP Processing Status: Extension](https://simplifier.net/guide/medizininformatikinitiative-dokument/miiigmoduldokument/technischeimplementierung/fhirprofile/nlp-processing-status-extension.page.md?version=current#inhalt)
-->

---

## Definierte ValueSets

### Dokumententypen

<!--
<fql output="table">
from 
    ValueSet
where 
    url.endsWith('ValueSet/mii-vs-dokument-sct-dokument-typ')
for
    compose.include
select
    System: system,
    Operation: filter.op,
    Value: filter.value
</fql>
-->

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `229059009 | Document type code`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

{{render:mii-vs-dokument-sct-dokument-typ}}

### Dokumentenklassen

<!--
<fql output="table">
from 
    ValueSet
where 
    url.endsWith('ValueSet/mii-vs-dokument-sct-dokument-kategorie')
for
    compose.include
select
    System: system,
    Operation: filter.op,
    Value: filter.value
</fql>
-->

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `424545009 | Record composition (record artifact)`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

{{render:mii-vs-dokument-sct-dokument-kategorie}}

### Format Codes

<!--
<fql output="table">
from 
    ValueSet
where 
    url.endsWith('ValueSet/mii-vs-dokument-format-code')
for
    compose.include
select
    ValueSet: valueSet
</fql>
-->

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- IHE XDS Format Codes aus `http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode`
- IHE-D XDS Format Codes aus `http://ihe-d.de/ValueSets/IHEXDSformatCodeDE`

{{render:mii-vs-dokument-format-code}}

### Einrichtungsarten

<!--
<fql output="table">
from 
    ValueSet
where 
    url.endsWith('ValueSet/mii-vs-dokument-einrichtungsart')
for
    compose.include
select
    System: system,
    Operation: filter.op,
    Value: filter.value
</fql>
-->

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `440654001 | Inpatient environment (environment)`
- SNOMED CT Codes unterhalb (Nachfahren) des Codes `440655000 | Outpatient environment (environment)`
- SNOMED CT Codes unterhalb (Nachfahren) des Codes `43741000 | Site of care (environment)`
- IHE-D XDS Healthcare Facility Type Codes aus `http://ihe-d.de/ValueSets/IHEXDShealthcareFacilityTypeCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

{{render:mii-vs-dokument-einrichtungsart}}

### Klinische Fachgebiete

<!--
<fql output="table">
from 
    ValueSet
where 
    url.endsWith('ValueSet/mii-vs-dokument-fachgebiet')
for
    compose.include
select
    System: system,
    Operation: filter.op,
    Value: filter.value
</fql>
-->

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `394733009 | Medical specialty (qualifier value)`
- IHE-D XDS Practice Setting Codes aus `http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

{{render:mii-vs-dokument-fachgebiet}}

---

## Verwendete ValueSets

### Allgemeine Angaben

Die nachfolgenden Terminologien bilden den Kern der fachlichen Dokumentenzuordnung im Modul DOKUMENT:

  * [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - dies ist die Empfehlung
  * IHE XDS ValueSets (z.B. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))  
  * Optional: SNOMED CT zur spezifischeren Zuordnung der klinischen Dokumente oder zugehörigen medizinischen Domäne

### HL7 Basisprofil R4

Für die im Basisprofil FHIR R4 deklarierten ValueSets gelten im weiteren folgende Empfehlungen:

| ValueSet | Beschreibung & Beispiel |
| -- | -- | -- |
| [document-reference-status](https://www.hl7.org/fhir/R4/valueset-document-reference-status.html) | HL7 Basisprofil, meist: `current` |
| [composition-status](https://www.hl7.org/fhir/R4/valueset-composition-status.html) | HL7 Basisprofil, meist `final` |
| [document.relationship-type](https://www.hl7.org/fhir/R4/valueset-document-relationship-type.html) | HL7 Basisprofil, meist: `transforms` oder `appends`|
| [security-labels](https://www.hl7.org/fhir/R4/valueset-security-labels.html) | Wir empfehlen, auch für die ISIK Kompatibilität, zumindest die Nutzung des HL7 Basisprofil Subsets aus http://terminology.hl7.org/CodeSystem/v3-Confidentiality, z.B. `N` für restricted / patientenbezogene Dokumente |
|  [mimetypes](https://www.hl7.org/fhir/R4/valueset-mimetypes.html) | HL7 Basisprofil, z.B. `text/plain` |
|  [languages](https://www.hl7.org/fhir/R4/valueset-languages.html) | HL7 Basisprofil, z.B. `de` oder `de-DE` |
| content.format | Keine gesonderte Empfehlung, aber ISiK möglich| 
| context.event | Keine gesonderte Empfehlung, aber ISiK möglich | 
| context.facilityType | Empfehlung nach [ISIK](https://simplifier.net/packages/de.basisprofil.r4/1.4.0/files/656621), meist `KHS` 
| context.practiceSetting | Keine gesonderte Empfehlung, aber ISiK möglich |

  