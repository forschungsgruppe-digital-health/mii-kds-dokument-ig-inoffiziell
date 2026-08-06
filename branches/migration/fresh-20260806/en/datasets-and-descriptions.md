# Datasets and Descriptions - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* **Datasets and Descriptions**

## Datasets and Descriptions

### Datasets and descriptions

The officially adopted version of the information model is on [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01). To unify the representation, the information model is additionally expressed as a FHIR logical model.

**Note that the logical model aims solely at representing the data elements and their description. The data types and cardinalities used are not to be regarded as binding; that is settled by the FHIR profiles. For every element of the logical model there is a 1:1 mapping onto an element of a concrete FHIR resource.**

The structural rendering of the logical model is on [Logical Models](logical-models.md).

> The element descriptions below are the published German definitions of the logical model and are reproduced verbatim; they are normative and the migration does not translate them.

| | | |
| :--- | :--- | :--- |
| `Dokument` | Klinisches Dokument inkl. Metadaten, Inhalt, Erzeugungskontext und Beziehungen | `DocumentReference` |
| `Dokument.Masteridentifikator` | Versionsspezifische eindeutige Kennung, die dem Dokument durch die Dokumentenquelle zugewiesen wurde | `DocumentReference.masterIdentifier` |
| `Dokument.Businessidentifikator` | Andere versionsunabhängige Kennung, die dem Dokument (z.B. durch weitere dokumentenverarbeitende Systeme) zugewiesen wurde | `DocumentReference.identifier` |
| `Dokument.Dokumentenreferenzstatus` | Status dieser Dokumentenreferenz (aktuell, überholt oder irrtümlich eingegeben) | `DocumentReference.status` |
| `Dokument.Dokumentenstatus` | Status des zugrunde liegenden Dokuments (vorläufig, final, geändert oder irrtümlich eingegeben) | `DocumentReference.docStatus` |
| `Dokument.Dokumententyp` | Art des Dokuments auf das verwiesen wird (z.B. Anamnese und Untersuchung, Entlassungsbericht, Verlaufsbericht) | `DocumentReference.type` |
| `Dokument.Dokumentenkategorie` | Übergeordnete Kategorie des Dokuments auf das verwiesen wird (z.B. Arztberichte oder Arztdokumentation) | `DocumentReference.category` |
| `Dokument.Patient` | Patient auf den sich das verwiesene Dokument bezieht | `DocumentReference.subject` |
| `Dokument.Beschreibung` | Menschenlesbare Beschreibung zum verwiesenen Dokuments | `DocumentReference.description` |
| `Dokument.Sicherheitsstufe` | Grad der Vertraulichkeit/Sicherheit des verwiesenen Dokuments (z. B. uneingeschränkt, gering, mittel, normal oder eingeschränkt) | `DocumentReference.securityLabel` |
| `Dokument.Dokumentenbeziehung` | Beziehungen des verwiesenen Dokuments zu anderen Dokumenten | `DocumentReference.relatesTo` |
| `Dokument.Dokumentenbeziehung.Beziehungstyp` | Beziehung zu anderen Dokumenten | `DocumentReference.relatesTo.code` |
| `Dokument.Dokumentenbeziehung.Beziehungsreferenz` | Ziel der Dokumentenbeziehung | `DocumentReference.relatesTo.target` |
| `Dokument.Anhang` | Dokument (Base64-kodierte Daten) oder Verweis (URL) mit relevanten Metadaten zum Anhang | `DocumentReference.content` |
| `Dokument.Anhang.Sprache` | Verwendete Sprache in dem Dokument | `DocumentReference.attachment.language` |
| `Dokument.Anhang.Erstellungsdatum` | Datum der Erstellung des Dokumentes | `DocumentReference.attachment.creation` |
| `Dokument.Anhang.Daten` | Dokument als Binärdaten | `DocumentReference.attachment.data` |
| `Dokument.Anhang.DokumentenUrl` | Verweis auf den (lokalen) Ablageort des Dokuments | `DocumentReference.attachment.url` |
| `Dokument.Anhang.Dokumentenformat` | MIME-Typ des Dokumenteninhalts | `DocumentReference.attachment.contentType` |
| `Dokument.Kontext` | Klinischer Kontext, in welchem das Dokument erzeugt wurde | `DocumentReference.context` |
| `Dokument.Kontext.Gesundheitseinrichtungskontakt` | Kontakt zur Gesundheitseinrichtung oder die Art der Versorgung, die mit dem Dokumenteninhalt assoziiert ist | `DocumentReference.context.encounter` |
| `Dokument.Kontext.Vorgang` | Handlungen oder Prozeduren, die im Kontext dokumentiert wurden | `DocumentReference.context.event` |
| `Dokument.Kontext.Fachgebiet` | Klinisches Fachgebiet, in dem Dokumenteninhalt erstellt wurde | `DocumentReference.context.practiceSetting` |
| `Dokument.Kontext.Dokumentationszeitraum` | Zeitraum, in dem die in dem Dokument beschriebene Handlung oder Prozedur durchgeführt wurde | `DocumentReference.context.period` |
| `Dokument.Kontext.Einrichtungsart` | Art der Einrichtung, in der die Handlung oder Prozedur am Patienten erfolgte | `DocumentReference.context.facilityType` |

