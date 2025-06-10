Profile: MII_PR_Dokument_Dokument
Parent: DocumentReference
Id: mii-pr-dokument-dokument
Title: "MII PR Dokument Dokument"
Description: "Klinisches Dokument mit zugehörigen Metadaten"
* insert PR_Header

// ISiK 4.0.1: 1..1, MS | MIO 1.7.0: 0..1 (R4 default) | IHE MHD 4.2.2: 1..1
* masterIdentifier 0..1 MS
* masterIdentifier ^short = "Versionsspezifische Kennung"
* masterIdentifier ^definition = "Versionsspezifische eindeutige Kennung, die dem Dokument durch die Dokumentenquelle zugewiesen wurde"

// ISiK 4.0.1: 0..*, MS | MIO 1.7.0: 0..* (R4 default) | IHE MHD 4.2.2: 0..*, MS, Slicing entryUUID
* identifier 0..1 MS
* identifier ^short = "Versionsunabhängige Kennung"
* identifier ^definition = "Andere versionsunabhängige Kennung, die dem Dokument (z.B. durch weitere dokumentenverarbeitende Systeme) zugewiesen wurde"

// ISiK 4.0.1: 1..1, MS, DocumentReferenceStatus (required) | MIO 1.7.0: 1..1, DocumentReferenceStatus (required) (R4 default) | IHE MHD 4.2.2: 1..1, MHD DocumentReference status codes (required)
* status 1..1 MS
* status ^short = "Status der Dokumentenreferenz"
* status ^definition = "Status dieser Dokumentenreferenz (aktuell, überholt oder irrtümlich eingegeben)"

// ISiK 4.0.1: 0..1, MS, CompositionStatus (required) | MIO 1.7.0: 0..1, CompositionStatus (required) (R4 default) | IHE MHD 4.2.2: 0..0
* docStatus 0..1 MS
* docStatus ^short = "Status des Dokuments"
* docStatus ^definition = "Status des zugrunde liegenden Dokuments (vorläufig, final, geändert oder irrtümlich eingegeben)"

// ISiK 4.0.1: 1..1, MS, Slicing KDS/XDS | MIO 1.7.0: 0..1 (R4 default), Slicing XDS | IHE MHD 4.2.2: 1..1, MS, DocumentTypeValueSet (preferred)
* type 0..1 MS
* type ^short = "Art des Dokuments"
* type ^definition = "Art des Dokuments auf das verwiesen wird (z.B. Anamnese und Untersuchung, Entlassungsbericht, Verlaufsbericht)"

* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = "Slice für Art des verwiesenen Dokument"
* type.coding ^slicing.ordered = false

// ISiK 4.0.1: 1..1, MS, DVMD KDL (required) | MIO 1.7.0: n.v. | IHE MHD 4.2.2: n.v.
* type.coding contains KDL 0..1 MS
* type.coding[KDL] from $dvmd-kdl-vs (required)
* type.coding[KDL].system 1..1 MS
* type.coding[KDL].code 1..1 MS

// ISiK 4.0.1: n.v. | MIO 1.7.0: n.v. | IHE MHD 4.2.2: DocumentTypeValueSet (preferred)
* type.coding contains LNC 0..1 MS
* type.coding[LNC] from $LNC (required)
* type.coding[LNC].system 1..1 MS
* type.coding[LNC].code 1..1 MS

// ISiK 4.0.1: n.v. | MIO 1.7.0: n.v. | IHE MHD 4.2.2: n.v.
* type.coding contains SCT 0..1 MS
* type.coding[SCT] from $SCT (required)
* type.coding[SCT].system 1..1 MS
* type.coding[SCT].code 1..1 MS

// ISiK 4.0.1: 0..1, MS, IHEXDStypeCode (required) | MIO 1.7.0: 0..1, IHEXDStypeCode (required) | IHE MHD 4.2.2: n.v.
* type.coding contains XDS 0..1 MS
* type.coding[XDS] from $ihe-xds-type-code-vs (required)
* type.coding[XDS].system 1..1 MS
* type.coding[XDS].code 1..1 MS

// ISiK 4.0.1: 0..1, MS, Slicing XDS | MIO 1.7.0: 0..* (R4 default), Slicing XDS | IHE MHD 4.2.2: 1..1, MS, DocumentClassValueSet (example)
* category 0..* MS
* category ^short = "Kategorien des Dokuments"
* category ^definition = "Übergeordnete Kategorie des Dokuments auf das verwiesen wird (z.B. Arztberichte oder Arztdokumentation)"

* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Slice für Kategorie des verwiesenen Dokuments"
* category.coding ^slicing.ordered = false

// ISiK 4.0.1: n.v. | MIO 1.7.0: n.v. | IHE MHD 4.2.2: DocumentClassValueSet (example)
* category.coding contains LNC 0..1 MS
* category.coding[LNC] from $LNC (required)
* category.coding[LNC].system 1..1 MS
* category.coding[LNC].code 1..1 MS

// ISiK 4.0.1: n.v. | MIO 1.7.0: n.v. | IHE MHD 4.2.2: n.v.
* category.coding contains SCT 0..1 MS
* category.coding[SCT] from $SCT (required)
* category.coding[SCT].system 1..1 MS
* category.coding[SCT].code 1..1 MS

// ISiK 4.0.1: 1..1, MS, IHEXDSclassCode (required) | MIO 1.7.0: 0..1, IHEXDSclassCode (required) | IHE MHD 4.2.2: 
* category.coding contains XDS 0..1 MS
* category.coding[XDS] from $ihe-xds-class-code-vs (required)
* category.coding[XDS].system 1..1 MS
* category.coding[XDS].code 1..1 MS

// ISiK 4.0.1: 1..1, MS | MIO 1.7.0: 0..1 (R4 default), Extended Custom Profiles | IHE MHD 4.2.2: 1..1, MS Restricted Patient
* subject 0..1 MS
* subject ^short = "Verweis auf Patient"
* subject ^definition = "Patient auf den sich das verwiesene Dokument bezieht"
* subject only Reference(Patient or MII_PR_Person_Patient or MII_PR_Person_PatientPseudonymisiert)

// ISiK 4.0.1: 0..1 (R4 default), MS | MIO 1.7.0: 0..1 (R4 default) | IHE MHD 4.2.2: 0..1 (R4 default), MS
// * date 0..1

// ISiK 4.0.1: 0..* (R4 default), MS | MIO 1.7.0: 0..* (R4 default) | IHE MHD 4.2.2: 0..*, MS
// * author 0..*

// ISiK 4.0.1: 0..* (R4 default), MS | MIO 1.7.0: 0..* (R4 default) | IHE MHD 4.2.2: 0..*, MS
* relatesTo 0..* MS
* relatesTo ^short = "Beziehung des Dokuments"
* relatesTo ^definition = "Beziehungen des verwiesenen Dokuments zu anderen Dokumenten"
* relatesTo.code 1..1 MS
* relatesTo.code ^short = "Art der Beziehung"
* relatesTo.code ^definition = "Beziehung zu anderen Dokumenten"
* relatesTo.target 1..1 MS
* relatesTo.target ^short = "Verweis auf Dokument"
* relatesTo.target ^definition = "Ziel der Dokumentenbeziehung"

// ISiK 4.0.1: 1..1, MS | MIO 1.7.0: 0..1 (R4 default) | IHE MHD 4.2.2: 0..1 (R4 default)
* description 0..1 MS
* description ^short = "Beschreibung des Dokuments"
* description ^definition = "Menschenlesbare Beschreibung zum verwiesenen Dokuments"

// ISiK 4.0.1: 1..*, MS, ISiKConfidentialityCode (required) | MIO 1.7.0: 0..* (R4 default) | IHE MHD 4.2.2: 1..*, MS
* securityLabel 0..* MS
* securityLabel ^short = "Vertraulichkeit des Dokuments"
* securityLabel ^definition = "Grad der Vertraulichkeit/Sicherheit des verwiesenen Dokuments (z. B. uneingeschränkt, gering, mittel, normal oder eingeschränkt)"

// ISiK 4.0.1: 1..1, MS | MIO 1.7.0: 1..* (R4 default), Slicing Anhang/ Verweis | IHE MHD 4.2.2: 1..1
* content 1..* MS
* content ^short = "Inhalt des Dokuments"
* content ^definition = "Dokument (Base64-kodierte Daten) oder Verweis (URL) mit relevanten Metadaten zum Anhang"

// ISiK 4.0.1: 1..1, MS | MIO 1.7.0: 1..1 (R4 default) | IHE MHD 4.2.2: 1..1 (R4 default)
* content.attachment 1..1 MS

// ISiK 4.0.1: 1..1, MS | MIO 1.7.0 Verweis: 0..1 (R4 default) | MIO 1.7.0 Anhang: 1..1 | IHE MHD 4.2.2: 1..1
* content.attachment.contentType 0..1 MS
* content.attachment.contentType ^short = "MIME-Typ zum Inhalt"
* content.attachment.contentType ^definition = "MIME-Typ des Dokumenteninhalts"

// ISiK 4.0.1: 1..1, MS | MIO 1.7.0: 0..1 (R4 default) | IHE MHD 4.2.2: 1..1, MS
* content.attachment.language 0..1 MS
* content.attachment.language ^short = "Verfassungssprache des Inhalts"
* content.attachment.language ^definition = "Verwendete Sprache in dem Dokument"

// ISiK 4.0.1: 0..1, MS | MIO 1.7.0 Verweis: 0..1 (R4 default) | MIO 1.7.0 Anhang: 1..1 | IHE MHD 4.2.2: 0..0
* content.attachment.data 0..1
* content.attachment.data ^short = "Binärdaten zum Inhalt"
* content.attachment.data ^definition = "Dokument als Binärdaten"

// ISiK 4.0.1: 0..1, MS | MIO 1.7.0 Verweis: 1..1 | MIO 1.7.0 Anhang: 0..0 | IHE MHD 4.2.2: 1..1
* content.attachment.url 0..1 MS
* content.attachment.url ^short = "URL zum Inhalt"
* content.attachment.url ^definition = "Verweis auf den (lokalen) Ablageort des Dokuments"

// ISiK 4.0.1: 0..1 (R4 default) | MIO 1.7.0: 1..1 | IHE MHD 4.2.2: 0..1 (R4 default)
// * content.attachment.title 0..1

// ISiK 4.0.1: 1..1, MS | MIO 1.7.0: 0..1 (R4 default) | IHE MHD 4.2.2: 1..1, MS
* content.attachment.creation 0..1 MS
* content.attachment.creation ^short = "Erstellungsdatum des Inhalts"
* content.attachment.creation ^definition = "Datum der Erstellung des Dokumentes"

// ISiK 4.0.1: 1..1, MS, IHEXDSformatCodeDE (required) | MIO 1.7.0: 0..1, DocumentReferenceFormatCodeSet (preferred) (R4 default) | IHE MHD 4.2.2: 1..1, MS, IHE_FormatCode_vs (preferred)
* content.format 0..1 MS
* content.format.code from $ihe-xds-format-code-vs (extensible)

// ISiK 4.0.1: 1..1, MS | MIO 1.7.0: 0..1 (R4 default) | IHE MHD 4.2.2: 1..1
* context 0..1 MS
* context ^short = "Erzeugungskontext des Dokuments"
* context ^definition = "Klinischer Kontext, in welchem das Dokument erzeugt wurde"

// ISiK 4.0.1: 0..1, MS | MIO 1.7.0: 0..* (R4 default) | IHE MHD 4.2.2: 0..* (R4 default)
* context.encounter 0..* MS
* context.encounter ^short = "Verweis auf Einrichtungskontakt"
* context.encounter ^definition = "Kontakt zur Gesundheitseinrichtung oder die Art der Versorgung, die mit dem Dokumenteninhalt assoziiert ist"
* context.encounter only Reference(Encounter or MII_PR_Fall_KontaktGesundheitseinrichtung)

// ISiK 4.0.1: 0..*, MS, IHEXDSeventCodeList (required) | MIO 1.7.0: 0..* (R4 default) | IHE MHD 4.2.2: 0..* (R4 default)
* context.event 0..* MS
* context.event ^short = "Dokumentierter Vorgang"
* context.event ^definition = "Handlungen oder Prozeduren, die im Kontext dokumentiert wurden"

// ISiK 4.0.1: 0..1 (R4 default) | MIO 1.7.0: 0..1 (R4 default) | IHE MHD 4.2.2: 0..1, MS
* context.period 0..1 MS
* context.period ^short = "Durchführungszeitraum zum Vorgang"
* context.period ^definition = "Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde"

// ISiK 4.0.1: 1..1, MS, IHEXDShealthcareFacilityTypeCode (required) | MIO 1.7.0: 0..1, FacilityTypeCodeValueSet (example) (R4 default) | IHE MHD 4.2.2: 1..1, FacilityTypeCodeValueSet (example)
* context.facilityType 0..1 MS
* context.facilityType ^short = "Art der Einrichtung zum Vorgang"
* context.facilityType ^definition = "Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte"

* context.facilityType.coding ^slicing.discriminator.type = #value
* context.facilityType.coding ^slicing.discriminator.path = "system"
* context.facilityType.coding ^slicing.rules = #open
* context.facilityType.coding ^slicing.description = "Slice für IHE XDS-basierte Einrichtungsart"
* context.facilityType.coding ^slicing.ordered = false

// ISiK 4.0.1: n.v. | MIO 1.7.0: n.v. | IHE MHD 4.2.2: n.v.
* context.facilityType.coding contains SCT 0..1 MS
* context.facilityType.coding[SCT] from $SCT (required)
* context.facilityType.coding[SCT].system 1..1 MS
* context.facilityType.coding[SCT].code 1..1 MS

// ISiK 4.0.1: 1..1, MS, IHEXDShealthcareFacilityTypeCode (required) | MIO 1.7.0: n.v. | IHE MHD 4.2.2: n.v.
* context.facilityType.coding contains XDS 0..1 MS
* context.facilityType.coding[XDS] from $ihe-xds-healthcare-facility-type-code-vs (required)
* context.facilityType.coding[XDS].system 1..1 MS
* context.facilityType.coding[XDS].code 1..1 MS

// ISiK 4.0.1: 1..1, MS, IHEXDSpracticeSettingCode (required) | MIO 1.7.0: 0..1, PracticeSettingCodeValueSet (example) (R4 default) | IHE MHD 4.2.2: 1..1, MS, PracticeSettingCodeValueSet (example)
* context.practiceSetting 0..1 MS
* context.practiceSetting ^short = "Klinisches Fachgebiet zum Vorgang"
* context.practiceSetting ^definition = "Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde"

* context.practiceSetting.coding ^slicing.discriminator.type = #value
* context.practiceSetting.coding ^slicing.discriminator.path = "system"
* context.practiceSetting.coding ^slicing.rules = #open
* context.practiceSetting.coding ^slicing.description = "Slice für IHE XDS-basierte klinische Fachgebiete"
* context.practiceSetting.coding ^slicing.ordered = false

// ISiK 4.0.1: n.v. | MIO 1.7.0: n.v. | IHE MHD 4.2.2: n.v.
* context.practiceSetting.coding contains SCT 0..1 MS
* context.practiceSetting.coding[SCT] from $SCT (required)
* context.practiceSetting.coding[SCT].system 1..1 MS
* context.practiceSetting.coding[SCT].code 1..1 MS

// ISiK 4.0.1: 1..1, MS, IHEXDSpracticeSettingCode (required) | MIO 1.7.0: n.v. | IHE MHD 4.2.2: n.v.
* context.practiceSetting.coding contains XDS 0..1 MS
* context.practiceSetting.coding[XDS] from $ihe-xds-practice-setting-code-vs (required)
* context.practiceSetting.coding[XDS].system 1..1 MS
* context.practiceSetting.coding[XDS].code 1..1 MS