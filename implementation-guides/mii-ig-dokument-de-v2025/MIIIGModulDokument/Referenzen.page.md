---
topic: Referenzen 
---

## {{page-title}}

Die nachfolgenden Terminologien weden im Modul genutzt:
  * [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl)
  * IHE XDS ValueSets (z.B. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))  
  * Optional: SNOMED CT, etc. zur spezifischeren Zuordnung der klinischen Dokumente oder zugehörigen medizinischen Domäne

Das KDS Profil ist darauf ausgelegt, dass Instanzen mit folgenden FHIR-basierten Standards kompatibel sein können:
  * [KBV Basisprofile (MIO/ePA)](https://simplifier.net/base1x0/kbv_pr_base_documentreference) – Profil zum Verweis auf externe oder angehängte Dokumente
  * [ISiK Dokumentenaustausch (v3)](https://simplifier.net/guide/isik-dokumentenaustausch-v3/ImplementationGuide-markdown-Datenobjekte-DocumentReference?version=current)  - Profil zur Abbildung erforderlicher Metadaten für den Dokumentenaustausch


Es werden die in FHIR R4 vorgeschlagenen ValueSets in erweiterter oder eingeschränkter Form genutzt:
  * https://www.hl7.org/fhir/R4/valueset-document-reference-status.html *übernehmen wir, deutsche Erläuterung* 
  * https://www.hl7.org/fhir/R4/valueset-composition-status.html
  * https://www.hl7.org/fhir/R4/valueset-document-relationship-type.html *evtl. erweitert*
  * https://www.hl7.org/fhir/R4/valueset-security-labels.html *evtl. Untermenge*
  * https://www.hl7.org/fhir/R4/valueset-mimetypes.html
  * https://www.hl7.org/fhir/R4/valueset-languages.html

Zu diskutieren ob Profilierung erforderlich ( *Kommt nach "Terminologien"?* )
  * content.format ( *eher nein, über type nach KDL abgedeckt, zusätzlich Snomed?* )
  * context.event ( *eher nein, * )
  * context.facilityType ( *eher nein, semantisch nicht mit Fall.serviceType identisch* )
  * context.practiceSetting ( *eher nein, semantisch nicht mit Fall.serviceType identisch* )