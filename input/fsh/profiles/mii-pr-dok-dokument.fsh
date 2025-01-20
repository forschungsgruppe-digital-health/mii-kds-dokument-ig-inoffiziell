Profile: MII_PR_Dok_Dokument
Parent: DocumentReference
Id: mii-pr-dok-dokument
Title: "MII PR Dok Basisdokument"
Description: "Abstraktes klinisches Basisdokument"
* insert PR_Header

// ISiK 4.0.0: 1..1, MS | MIO 1.6.0: 0..1 (R4 default)
* masterIdentifier 0..1 MS
* masterIdentifier ^short = "Versionsspezifische Kennung"
* masterIdentifier ^definition = "Versionsspezifische eindeutige Kennung, die dem Dokument durch die Dokumentenquelle zugewiesen wurde"
//* masterIdentifier.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

// ISiK 4.0.0: 0..*, MS | MIO 1.6.0: 0..* (R4 default)
* identifier 0..1 MS
* identifier ^short = "Versionsunabhängige Kennung"
* identifier ^definition = "Andere versionsunabhängige Kennung, die dem Dokument (z.B. durch weitere dokumentenverarbeitende Systeme) zugewiesen wurde"

// ISiK 4.0.0: 1..1 (R4 default), MS | MIO 1.6.0: 1..1 (R4 default)
* status 1..1 MS
* status ^short = "Status der Dokumentenreferenz"
* status ^definition = "Status dieser Dokumentenreferenz (aktuell, überholt oder irrtümlich eingegeben)"

// ISiK 4.0.0: 0..1 (R4 default), MS | MIO 1.6.0: 0..1 (R4 default)
* docStatus 0..1 MS
* docStatus ^short = "Status des Dokuments"
* docStatus ^definition = "Status des zugrunde liegenden Dokuments (vorläufig, final, geändert oder irrtümlich eingegeben)"

// ISiK 4.0.0: 1..1, MS, Slicing KDS/XDS | MIO 1.6.0: 0..1 (R4 default), Slicing XDS
* type 0..1 MS
* type ^short = "Art des Dokuments"
* type ^definition = "Art des Dokuments auf das verwiesen wird (z.B. Anamnese und Untersuchung, Entlassungsbericht, Verlaufsbericht)"
//* type.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.rules = #open

// ISiK 4.0.0: 1..1, MS, DVMD KDL (required) | MIO 1.6.0: n.v.
* type.coding contains KDL 0..1 MS
* type.coding[KDL] from $dvmd-kdl (required)
* type.coding[KDL].system 1..1 MS
* type.coding[KDL].code 1..1 MS
* type.coding[KDL].display 1..1 MS

// ISiK 4.0.0: 0..1, MS, IHEXDStypeCode (required) | MIO 1.6.0: 0..1, IHEXDStypeCode (required)
* type.coding contains XDS 0..1 MS
* type.coding[XDS] from $ihe-xds-type-code (required)
* type.coding[XDS].system 1..1 MS
* type.coding[XDS].code 1..1 MS
* type.coding[XDS].display 1..1 MS

// ISiK 4.0.0: 0..1, MS, Slicing XDS | MIO 1.6.0: 0..* (R4 default), Slicing XDS
* category 0..* MS
* category ^short = "Kategorien des Dokuments"
* category ^definition = "Übergeordnete Kategorie des Dokuments auf das verwiesen wird (z.B. Arztberichte oder Arztdokumentation)"
//* category.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open

// ISiK 4.0.0: 1..1, MS, IHEXDSclassCode (required) | MIO 1.6.0: 0..1, IHEXDSclassCode (required)
* category.coding contains XDS 0..1 MS
* category.coding[XDS] from $ihe-xds-class-code (required)
* category.coding[XDS].system 1..1 MS
* category.coding[XDS].code 1..1 MS
* category.coding[XDS].display 1..1 MS

// ISiK 4.0.0: 1..1, MS | MIO 1.6.0: 0..1 (R4 default), Extended Custom Profiles
* subject 0..1 MS
* subject ^short = "Verweis auf Patient"
* subject ^definition = "Patient auf den sich das verwiesene Dokument bezieht"
//* subject ^comment = "Bei ISiK Kardinalität min = 1 erforderlich. Wenn Angabe nicht vorhanden, dann Erweiterung 'GrundNichtVorhanden' nutzen"
//* subject.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

// ISiK 4.0.0: 1..1, MS | MIO 1.6.0: 0..1 (R4 default)
* subject only Reference(Patient or MII_PR_Person_Patient or MII_PR_Person_PatientPseudonymisiert)
* subject.reference 0..1 MS

// ISiK 4.0.0: 0..* (R4 default), MS | MIO 1.6.0: 0..* (R4 default), Extended Custom Profiles
// * author 0..*

// ISiK 4.0.0: 1..1, MS | MIO 1.6.0: 0..1 (R4 default)
* description 0..1 MS
* description ^short = "Beschreibung des Dokuments"
* description ^definition = "Menschenlesbare Beschreibung zum verwiesenen Dokuments"
//* description ^comment = "Bei ISiK Kardinalität min = 1 erforderlich. Wenn Angabe nicht vorhanden, dann Erweiterung 'GrundNichtVorhanden' nutzen"
//* description.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

// ISiK 4.0.0: 1..*, MS, ISiKConfidentialityCode (required) | MIO 1.6.0: 0..* (R4 default)
* securityLabel 0..* MS
* securityLabel ^short = "Vertraulichkeit des Dokuments"
* securityLabel ^definition = "Grad der Vertraulichkeit/Sicherheit des verwiesenen Dokuments (z. B. uneingeschränkt, gering, mittel, normal oder eingeschränkt)"
//* securityLabel ^comment = "Bei ISiK Kardinalität min = 1 erforderlich. Wenn Angabe nicht vorhanden, dann Erweiterung 'GrundNichtVorhanden' nutzen"
//* securityLabel.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

// ISiK 4.0.0: 0..* (R4 default), MS | MIO 1.6.0: 0..* (R4 default)
* relatesTo 0..* MS
* relatesTo ^short = "Beziehung des Dokuments"
* relatesTo ^definition = "Beziehungen des verwiesenen Dokuments zu anderen Dokumenten"
* relatesTo.code 1..1 MS
* relatesTo.code ^short = "Art der Beziehung"
* relatesTo.code ^definition = "Beziehung zu anderen Dokumenten"
* relatesTo.target 1..1 MS
* relatesTo.target ^short = "Verweis auf Dokument"
* relatesTo.target ^definition = "Ziel der Dokumentenbeziehung"

// ISiK 4.0.0: 1..1, MS | MIO 1.6.0: 1..* (R4 default), Slicing Anhang/ Verweis
* content 1..* MS
* content ^short = "Inhalt des Dokuments"
* content ^definition = "Dokument (Base64-kodierte Daten) oder Verweis (URL) mit relevanten Metadaten zum Anhang"

// ISiK 4.0.0: 1..1 (R4 default), MS | MIO 1.6.0: 1..1 (R4 default)
* content.attachment 1..1 MS

// ISiK 4.0.0: 1..1, MS | MIO 1.6.0: 0..1 (R4 default)
* content.attachment.language 0..1 MS
* content.attachment.language ^short = "Verfassungssprache des Inhalts"
* content.attachment.language ^definition = "Verwendete Sprache in dem Dokument"
//* content.attachment.language ^comment = "Bei ISiK Kardinalität min = 1 erforderlich. Wenn Angabe nicht vorhanden, dann Erweiterung 'GrundNichtVorhanden' nutzen"
//* content.attachment.language.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

// ISiK 4.0.0: 1..1, MS | MIO 1.6.0: 0..1 (R4 default)
* content.attachment.creation 0..1 MS
* content.attachment.creation ^short = "Erstellungsdatum des Inhalts"
* content.attachment.creation ^definition = "Datum der Erstellung des Dokumentes"
//* content.attachment.creation ^comment = "Bei ISiK Kardinalität min = 1 erforderlich. Wenn Angabe nicht vorhanden, dann Erweiterung 'GrundNichtVorhanden' nutzen"
//* content.attachment.creation.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

// ISiK 4.0.0: 0..1 (R4 default), MS | MIO 1.6.0 Verweis: 0..1 (R4 default) | MIO 1.6.0 Anhang: 1..1
* content.attachment.data 0..1 MS
* content.attachment.data ^short = "Binärdaten zum Inhalt"
* content.attachment.data ^definition = "Dokument als Binärdaten"

// ISiK 4.0.0: 0..1 (R4 default), MS | MIO 1.6.0 Verweis: 1..1 | MIO 1.6.0 Anhang: 0..0
* content.attachment.url 0..1 MS
* content.attachment.url ^short = "URL zum Inhalt"
* content.attachment.url ^definition = "Verweis auf den (lokalen) Ablageort des Dokuments"
//* content.attachment.url ^comment = "Bei MIO Kardinalität min = 1 erforderlich. Wenn Angabe nicht vorhanden, dann Erweiterung 'GrundNichtVorhanden' nutzen"
//* content.attachment.url.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

// ISiK 4.0.0: 1..1, MS | MIO 1.6.0 Verweis: 0..1 (R4 default) | MIO 1.6.0 Anhang: 1..1
* content.attachment.contentType 0..1 MS
* content.attachment.contentType ^short = "MIME-Typ zum Inhalt"
* content.attachment.contentType ^definition = "MIME-Typ des Dokumenteninhalts"
//* content.attachment.contentType ^comment = "Bei ISiK Kardinalität min = 1 erforderlich. Wenn Angabe nicht vorhanden, dann Erweiterung 'GrundNichtVorhanden' nutzen"
//* content.attachment.contentType.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

// ISiK 4.0.0: 0..1 (R4 default) | MIO 1.6.0: 1..1
// * content.attachment.title 0..1

// ISiK 4.0.0: 1..1, MS, IHEXDSformatCodeDE (required) | MIO 1.6.0: 0..1 (R4 default)
* content.format 0..1 MS
//* content.format ^comment = "Bei ISiK Kardinalität min = 1 erforderlich. Wenn Angabe nicht vorhanden, dann Erweiterung 'GrundNichtVorhanden' nutzen"
//* content.format.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

// ISiK 4.0.0: 1..1, MS | MIO 1.6.0: 0..1 (R4 default)
* context 0..1 MS
* context ^short = "Erzeugungskontext des Dokuments"
* context ^definition = "Klinischer Kontext, in welchem das Dokument erzeugt wurde"
//* context ^comment = "Bei ISiK Kardinalität min = 1 erforderlich. Wenn Angabe nicht vorhanden, dann Erweiterung 'GrundNichtVorhanden' nutzen"
//* context.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

// ISiK 4.0.0: 0..1, MS | MIO 1.6.0: 0..* (R4 default)
* context.encounter 0..* MS
* context.encounter ^short = "Verweis auf Einrichtungskontakt"
* context.encounter ^definition = "Kontakt zur Gesundheitseinrichtung oder die Art der Versorgung, die mit dem Dokumenteninhalt assoziiert ist"

// ISiK 4.0.0: 1..1, MS | MIO 1.6.0: 0..1 (R4 default)
* context.encounter only Reference(Encounter or MII_PR_Fall_KontaktGesundheitseinrichtung)
* context.encounter.reference 0..1 MS

// ISiK 4.0.0: 0..*, MS, IHEXDSeventCodeList (required) | MIO 1.6.0: 0..* (R4 default)
* context.event 0..* MS
* context.event ^short = "Dokumentierter Vorgang"
* context.event ^definition = "Handlungen oder Prozeduren, die im Kontext dokumentiert wurden"

// ISiK 4.0.0: 1..1, MS, IHEXDSpracticeSettingCode (required) | MIO 1.6.0: 0..1 (R4 default)
* context.practiceSetting 0..1 MS
* context.practiceSetting ^short = "Klinisches Fachgebiet zum Vorgang"
* context.practiceSetting ^definition = "Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde"
//* context.practiceSetting ^comment = "Bei ISiK Kardinalität min = 1 erforderlich. Wenn Angabe nicht vorhanden, dann Erweiterung 'GrundNichtVorhanden' nutzen"
//* context.practiceSetting.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1

// ISiK 4.0.0: 0..1 (R4 default) | MIO 1.6.0: 0..1 (R4 default)
* context.period 0..1 MS
* context.period ^short = "Durchführungszeitraum zum Vorgang"
* context.period ^definition = "Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde"

// ISiK 4.0.0: 1..1, MS, IHEXDShealthcareFacilityTypeCode (required) | MIO 1.6.0: 0..1 (R4 default)
* context.facilityType 0..1 MS
* context.facilityType ^short = "Art der Einrichtung zum Vorgang"
* context.facilityType ^definition = "Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte"
//* context.facilityType ^comment = "Bei ISiK Kardinalität min = 1 erforderlich. Wenn Angabe nicht vorhanden, dann Erweiterung 'GrundNichtVorhanden' nutzen"
//* context.facilityType.extension contains $fhir-data-absent-reason named GrundNichtVorhanden 0..1