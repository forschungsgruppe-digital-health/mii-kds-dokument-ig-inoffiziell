# Terminologie - MII IG Dokument v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Terminologie**

## Terminologie

Beschreibung von eigenen ValueSets, Verwendung internationaler Terminologien, Lizenzen:

* Definierte CodeSystems 
* Klassifikation von NLP-Verarbeitungsergebnissen
 
* Definierte ValueSets 
* Dokumententypen
* Dokumentenklassen
* Format Codes
* Einrichtungsarten
* Klinische Fachgebiete
 
* Verwendete ValueSets 
* Allgemeine Angaben
* HL7 Basisprofil R4
 

-------

## Definierte CodeSystems

### Klassifikation von NLP-Verarbeitungsergebnissen

Siehe die Artefaktseite [MII VS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.md).

-------

## Definierte ValueSets

### Dokumententypen

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

* SNOMED CT Codes unterhalb (Nachfahren) des Codes `229059009 | Document type code`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe die Artefaktseite [MII VS Dokument SCT Dokument Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.md).

### Dokumentenklassen

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

* SNOMED CT Codes unterhalb (Nachfahren) des Codes `424545009 | Record composition (record artifact)`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe die Artefaktseite [MII VS Dokument SCT Dokument Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.md).

### Format Codes

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

* IHE XDS Format Codes aus `http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode`
* IHE-D XDS Format Codes aus `http://ihe-d.de/ValueSets/IHEXDSformatCodeDE`

Siehe die Artefaktseite [MII VS Dokument Format Code](ValueSet-mii-vs-dokument-format-code.md).

### Einrichtungsarten

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

* SNOMED CT Codes unterhalb (Nachfahren) des Codes `440654001 | Inpatient environment (environment)`
* SNOMED CT Codes unterhalb (Nachfahren) des Codes `440655000 | Outpatient environment (environment)`
* SNOMED CT Codes unterhalb (Nachfahren) des Codes `43741000 | Site of care (environment)`
* IHE-D XDS Healthcare Facility Type Codes aus `http://ihe-d.de/ValueSets/IHEXDShealthcareFacilityTypeCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe die Artefaktseite [MII VS Dokument Einrichtungart](ValueSet-mii-vs-dokument-einrichtungsart.md).

### Klinische Fachgebiete

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

* SNOMED CT Codes unterhalb (Nachfahren) des Codes `394733009 | Medical specialty (qualifier value)`
* IHE-D XDS Practice Setting Codes aus `http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

Siehe die Artefaktseite [MII VS Dokument Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.md).

-------

## Verwendete ValueSets

### Allgemeine Angaben

Die nachfolgenden Terminologien bilden den Kern der fachlichen Dokumentenzuordnung im Modul DOKUMENT:

* [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - dies ist die Empfehlung
* IHE XDS ValueSets (z.B. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))
* Optional: SNOMED CT zur spezifischeren Zuordnung der klinischen Dokumente oder zugehörigen medizinischen Domäne

### HL7 Basisprofil R4

Für die im Basisprofil FHIR R4 deklarierten ValueSets gelten im weiteren folgende Empfehlungen:

| | |
| :--- | :--- |
| [document-reference-status](https://www.hl7.org/fhir/R4/valueset-document-reference-status.html) | HL7 Basisprofil, meist:`current` |
| [composition-status](https://www.hl7.org/fhir/R4/valueset-composition-status.html) | HL7 Basisprofil, meist`final` |
| [document.relationship-type](https://www.hl7.org/fhir/R4/valueset-document-relationship-type.html) | HL7 Basisprofil, meist:`transforms`oder`appends` |
| [security-labels](https://www.hl7.org/fhir/R4/valueset-security-labels.html) | Wir empfehlen, auch für die ISIK Kompatibilität, zumindest die Nutzung des HL7 Basisprofil Subsets aus http://terminology.hl7.org/CodeSystem/v3-Confidentiality, z.B.`N`für restricted / patientenbezogene Dokumente |
| [mimetypes](https://www.hl7.org/fhir/R4/valueset-mimetypes.html) | HL7 Basisprofil, z.B.`text/plain` |
| [languages](https://www.hl7.org/fhir/R4/valueset-languages.html) | HL7 Basisprofil, z.B.`de`oder`de-DE` |
| content.format | Keine gesonderte Empfehlung, aber ISiK möglich |
| context.event | Keine gesonderte Empfehlung, aber ISiK möglich |
| context.facilityType | Empfehlung nach[ISIK](https://simplifier.net/packages/de.basisprofil.r4/1.4.0/files/656621), meist`KHS` |
| context.practiceSetting | Keine gesonderte Empfehlung, aber ISiK möglich |

