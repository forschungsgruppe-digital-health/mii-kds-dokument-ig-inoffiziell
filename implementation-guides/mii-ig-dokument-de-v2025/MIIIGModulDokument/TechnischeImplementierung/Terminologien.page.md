---
topic: Terminology
---

## {{page-title}}

Beschreibung von eigenen ValueSets, Verwendung internationaler Terminologien, Lizenzen:

- [Definierte CodeSystems](#definierte-codesystems)
- [Verwendete ValueSets](#verwendete-valuesets)

---

### Definierte CodeSystems

#### Klassifikation von NLP-Verarbeitungsergebnissen

<!--
<fql output="table">
from 
    CodeSystem
where 
    url.endsWith('CodeSystem/mii-cs-dokument-nlp-processing-status') 
for 
    concept
select
    Code: code,
    Display: display,
    Definition: definition
</fql>
-->
[siehe Concepts im FHIR Profile/NLP Processing Status: Extension](https://simplifier.net/guide/medizininformatikinitiative-dokument/miiigmoduldokument/technischeimplementierung/fhirprofile/nlp-processing-status-extension.page.md?version=current#inhalt)

---

### Verwendete ValueSets

#### Allgemeine Angaben

Die nachfolgenden Terminologien bilden den Kern der fachlichen Dokumentenzuordnung im Modul DOKUMENT:

  * [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - dies ist die Empfehlung
  * IHE XDS ValueSets (z.B. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))  
  * Optional: SNOMED CT zur spezifischeren Zuordnung der klinischen Dokumente oder zugehörigen medizinischen Domäne

#### HL7 Deutschland Basisprofil R4

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

  