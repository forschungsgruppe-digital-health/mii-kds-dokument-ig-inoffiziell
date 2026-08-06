<!-- markdownlint-disable MD041 -->
<!-- MIGRATED CONTENT — provenance:
     implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md
     source commit 9f76fed80cb810c0f39a263d0162c9c2e64abc1e, migrated 2026-08-06.
     Simplifier directives were translated per the mii-ig-migration FQL crosswalk.
     No Liquid literal may appear in this file, including inside this comment. -->

### Datensätze inkl. Beschreibungen

Die offiziell beschlossene Version des Informationsmodells befinden sich auf [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet:

*Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.*

> TODO:REVIEW — an FQL query block stood here in the Simplifier source. Its output is reproduced below as a generated table extracted from the built resource; see the migration report.

Die strukturelle Darstellung des Logical Models steht auf der Seite
[Logische Modelle](logical-models.html).

<!-- GENERATED TABLE — mechanically extracted from
     fsh-generated/resources/StructureDefinition-mii-lm-dokument.json
     (differential.element: path, definition, mapping[mii-map-dokument].map).
     It replaces the Simplifier FQL query block that produced the same table.
     REGENERATE after any change to input/fsh/logical-model/. -->
| Logischer Datensatz | Beschreibung | FHIR-Element |
| --- | --- | --- |
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
