---
Topic: Terminologie
---

## {{page-title}}

Die nachfolgenden Terminologien werden im Modul genutzt:
  * [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - dies ist die Empfehlung
  * IHE XDS ValueSets (z.B. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))  
    * Optional: SNOMED CT, etc. zur spezifischeren Zuordnung der klinischen Dokumente oder zugehörigen medizinischen Domäne

Folgende FHIR R4 vorgeschlagenen ValueSets werden unverändert, d.h. nicht gesondert profiliert, übernommen:

  * https://www.hl7.org/fhir/R4/valueset-document-reference-status.html *übernehmen wir, deutsche Erläuterung* 
  * https://www.hl7.org/fhir/R4/valueset-composition-status.html
  * https://www.hl7.org/fhir/R4/valueset-document-relationship-type.html *übernehmen plus Extension "anotiert", "anonymisiert", ... (wenn nicht woanders dokumentiert)*
  * https://www.hl7.org/fhir/R4/valueset-security-labels.html 	Subset http://terminology.hl7.org/CodeSystem/v3-Confidentiality , mit Hinweis das für ISIK Kompatibilität nur das dort verwendete Subset gilt
  * https://www.hl7.org/fhir/R4/valueset-mimetypes.html
  * https://www.hl7.org/fhir/R4/valueset-languages.html

Für folgende Attribute empfehlen wir die Nutzung der in ISiK definierten Terminologien

  * content.format 
  * context.event 
  * context.facilityType  oder wie https://simplifier.net/packages/de.basisprofil.r4/1.4.0/files/656621
  * context.practiceSetting 
  