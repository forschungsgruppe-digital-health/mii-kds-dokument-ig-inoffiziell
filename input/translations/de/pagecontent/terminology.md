<!-- markdownlint-disable MD041 -->
<!-- Migriert aus Simplifier: MIIIGModulDokument/TechnischeImplementierung/Terminologien.page.md -->
Beschreibung von eigenen ValueSets, Verwendung internationaler Terminologien, Lizenzen:

<!-- TODO:REVIEW: die Quellseite enthielt diese Aufzählung als Klammer-Platzhalter ohne Linkziele; hier in seiteninterne Anker-Links umgewandelt — Anker nach dem ersten Build prüfen -->
- [Definierte CodeSystems](#definierte-codesystems)
  - [Klassifikation von NLP-Verarbeitungsergebnissen](#klassifikation-von-nlp-verarbeitungsergebnissen)
- [Definierte ValueSets](#definierte-valuesets)
  - [Dokumententypen](#dokumententypen)
  - [Dokumentenklassen](#dokumentenklassen)
  - [Format Codes](#format-codes)
  - [Einrichtungsarten](#einrichtungsarten)
  - [Klinische Fachgebiete](#klinische-fachgebiete)
- [Verwendete ValueSets](#verwendete-valuesets)
  - [Allgemeine Angaben](#allgemeine-angaben)
  - [HL7 Basisprofil R4](#hl7-basisprofil-r4)

---

### Definierte CodeSystems

#### Klassifikation von NLP-Verarbeitungsergebnissen

<!-- TODO:REVIEW: die Quelle renderte hier das CodeSystem mii-cs-dokument-nlp-processing-status inline (render-Direktive); die generierte Artefaktseite zeigt die Ressource bereits — durch statischen Verweis ersetzt. Hinweis: der Artefakt-Titel lautet upstream "MII VS …", obwohl es ein CodeSystem ist -->
Die vollständige Darstellung des CodeSystem befindet sich auf der Artefaktseite [MII VS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html).

<!-- In der Quelle auskommentierter Verweis: "siehe Concepts im FHIR Profile/NLP Processing Status: Extension" — im migrierten Guide entspricht das der Seite StructureDefinition-mii-ex-dokument-nlp-processing-status.html (ursprünglich ein Simplifier-Guide-Link) -->

---

### Definierte ValueSets

#### Dokumententypen

<!-- TODO:REVIEW: die Quelle enthielt hier eine bereits auskommentierte (nicht gerenderte) FQL-Abfrage über compose.include (System, Operation, Value) des ValueSet mii-vs-dokument-sct-dokument-typ; die Abfrage wird nicht reproduziert — die Artefaktseite zeigt die Definition -->

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `229059009 | Document type code`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

<!-- TODO:REVIEW: die Quelle renderte hier das ValueSet inline (render-Direktive); die generierte Artefaktseite zeigt die Ressource bereits — durch statischen Verweis ersetzt -->
Die vollständige Darstellung des ValueSet befindet sich auf der Artefaktseite [MII VS Dokument SCT Dokument Typ](ValueSet-mii-vs-dokument-sct-dokument-typ.html).

#### Dokumentenklassen

<!-- TODO:REVIEW: die Quelle enthielt hier eine bereits auskommentierte (nicht gerenderte) FQL-Abfrage über compose.include (System, Operation, Value) des ValueSet mii-vs-dokument-sct-dokument-kategorie; die Abfrage wird nicht reproduziert — die Artefaktseite zeigt die Definition -->

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `424545009 | Record composition (record artifact)`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

<!-- TODO:REVIEW: die Quelle renderte hier das ValueSet inline (render-Direktive); die generierte Artefaktseite zeigt die Ressource bereits — durch statischen Verweis ersetzt -->
Die vollständige Darstellung des ValueSet befindet sich auf der Artefaktseite [MII VS Dokument SCT Dokument Kategorie](ValueSet-mii-vs-dokument-sct-dokument-kategorie.html).

#### Format Codes

<!-- TODO:REVIEW: die Quelle enthielt hier eine bereits auskommentierte (nicht gerenderte) FQL-Abfrage über compose.include (ValueSet) des ValueSet mii-vs-dokument-format-code; die Abfrage wird nicht reproduziert — die Artefaktseite zeigt die Definition -->

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- IHE XDS Format Codes aus `http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode`
- IHE-D XDS Format Codes aus `http://ihe-d.de/ValueSets/IHEXDSformatCodeDE`

<!-- TODO:REVIEW: die Quelle renderte hier das ValueSet inline (render-Direktive); die generierte Artefaktseite zeigt die Ressource bereits — durch statischen Verweis ersetzt -->
Die vollständige Darstellung des ValueSet befindet sich auf der Artefaktseite [MII VS Dokument Format Code](ValueSet-mii-vs-dokument-format-code.html).

#### Einrichtungsarten

<!-- TODO:REVIEW: die Quelle enthielt hier eine bereits auskommentierte (nicht gerenderte) FQL-Abfrage über compose.include (System, Operation, Value) des ValueSet mii-vs-dokument-einrichtungsart; die Abfrage wird nicht reproduziert — die Artefaktseite zeigt die Definition -->

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `440654001 | Inpatient environment (environment)`
- SNOMED CT Codes unterhalb (Nachfahren) des Codes `440655000 | Outpatient environment (environment)`
- SNOMED CT Codes unterhalb (Nachfahren) des Codes `43741000 | Site of care (environment)`
- IHE-D XDS Healthcare Facility Type Codes aus `http://ihe-d.de/ValueSets/IHEXDShealthcareFacilityTypeCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

<!-- TODO:REVIEW: die Quelle renderte hier das ValueSet inline (render-Direktive); die generierte Artefaktseite zeigt die Ressource bereits — durch statischen Verweis ersetzt. Hinweis: der Artefakt-Titel lautet upstream "MII VS Dokument Einrichtungart" (ohne "s") — unverändert übernommen -->
Die vollständige Darstellung des ValueSet befindet sich auf der Artefaktseite [MII VS Dokument Einrichtungart](ValueSet-mii-vs-dokument-einrichtungsart.html).

#### Klinische Fachgebiete

<!-- TODO:REVIEW: die Quelle enthielt hier eine bereits auskommentierte (nicht gerenderte) FQL-Abfrage über compose.include (System, Operation, Value) des ValueSet mii-vs-dokument-fachgebiet; die Abfrage wird nicht reproduziert — die Artefaktseite zeigt die Definition -->

Zur Eingrenzung möglicher Codes wurde hinsichtlich der Auswahl folgende Einschränkung vorgenommen:

- SNOMED CT Codes unterhalb (Nachfahren) des Codes `394733009 | Medical specialty (qualifier value)`
- IHE-D XDS Practice Setting Codes aus `http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode`

Das für dieses MII KDS-Modul erstellte ValueSet beinhaltet ausschließlich diese Codes.

<!-- TODO:REVIEW: die Quelle renderte hier das ValueSet inline (render-Direktive); die generierte Artefaktseite zeigt die Ressource bereits — durch statischen Verweis ersetzt -->
Die vollständige Darstellung des ValueSet befindet sich auf der Artefaktseite [MII VS Dokument Fachgebiet](ValueSet-mii-vs-dokument-fachgebiet.html).

---

### Verwendete ValueSets

#### Allgemeine Angaben

Die nachfolgenden Terminologien bilden den Kern der fachlichen Dokumentenzuordnung im Modul DOKUMENT:

- [Klinische Dokumentenklasse-Liste (KDL)](https://simplifier.net/kdl) - dies ist die Empfehlung
- IHE XDS ValueSets (z.B. [TypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.typeCode), [ClassCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.classCode), [HealthcareFacilityTypeCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.healthcareFacilityTypeCode), [PracticeSettingCode](https://wiki.hl7.de/index.php?title=Ihevs:DocumentEntry.PracticeSettingCode))
- Optional: SNOMED CT zur spezifischeren Zuordnung der klinischen Dokumente oder zugehörigen medizinischen Domäne

#### HL7 Basisprofil R4

Für die im Basisprofil FHIR R4 deklarierten ValueSets gelten im weiteren folgende Empfehlungen:

| ValueSet | Beschreibung & Beispiel |
| -- | -- |
| [document-reference-status](https://www.hl7.org/fhir/R4/valueset-document-reference-status.html) | HL7 Basisprofil, meist: `current` |
| [composition-status](https://www.hl7.org/fhir/R4/valueset-composition-status.html) | HL7 Basisprofil, meist `final` |
| [document.relationship-type](https://www.hl7.org/fhir/R4/valueset-document-relationship-type.html) | HL7 Basisprofil, meist: `transforms` oder `appends` |
| [security-labels](https://www.hl7.org/fhir/R4/valueset-security-labels.html) | Wir empfehlen, auch für die ISIK Kompatibilität, zumindest die Nutzung des HL7 Basisprofil Subsets aus http://terminology.hl7.org/CodeSystem/v3-Confidentiality, z.B. `N` für restricted / patientenbezogene Dokumente |
| [mimetypes](https://www.hl7.org/fhir/R4/valueset-mimetypes.html) | HL7 Basisprofil, z.B. `text/plain` |
| [languages](https://www.hl7.org/fhir/R4/valueset-languages.html) | HL7 Basisprofil, z.B. `de` oder `de-DE` |
| content.format | Keine gesonderte Empfehlung, aber ISiK möglich |
| context.event | Keine gesonderte Empfehlung, aber ISiK möglich |
| context.facilityType | Empfehlung nach [ISIK](https://simplifier.net/packages/de.basisprofil.r4/1.4.0/files/656621), meist `KHS` |
| context.practiceSetting | Keine gesonderte Empfehlung, aber ISiK möglich |
