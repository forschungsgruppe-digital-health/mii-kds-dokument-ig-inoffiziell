---
topic: UML 
---

## {{page-title}}

Zur Veranschaulichung des Informationsmodells wurde das nachfolgende Diagramm in der Unified Modeling Language (UML) erstellt. Dadurch lassen sich die Fachkonzepte, deren Zusammenänge sowie der Bezug zu weiteren MII KDS Modulen besser darstellen.

Mit einem *Dokument* lassen sich die Metadaten zu einem klinischen Dokument, einer Bild-, Audio- oder Videodatei beschreiben. Ein *Dokument* wird in der Regel in einem klinischen *Kontext* (`context`) erzeugt. Darüber hinaus kann ein *Dokument* auf eine bestimmte Art und Weise in Beziehung (`relatesTo`) zu einem oder mehreren anderen *Dokumenten* stehen, abhängig vom jeweiligen Szenario. Über einen oder mehrere *Anhänge* (`attachment`) lassen sich Details zum Speicherort und -format des klinischen Dokuments, der Bild-, Audio- oder Videodatei festlegen.

Ein *Dokument* kann in Abhängigkeit vom Szenario einen Patientenbezug (`subject`) ([MII KDS Modul PERSON](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)) aufweisen. Der Patientenbezug kann anhand identifizierender Eigenschaften, pseudonym oder anonym erfolgen. Analog lässt sich über einen klinischen *Kontext* der Bezug zum konkreten Fall (`encounter`) ([MII KDS Modul FALL](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)) herstellen.

<div style="text-align: center; margin-top: 5em">
<a target="_blank" href="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatz-dokument/refs/heads/dev/input/plantuml/Informationsmodell.svg"><img src="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatz-dokument/refs/heads/dev/input/plantuml/Informationsmodell.svg" width="100%"/></a></div>

<!--
<plantuml width="50%">
  @startuml "Informationsmodell Kerndatensatzmodul Dokument"

' Canvas Parameters
skinparam Linetype ortho
skinparam Nodesep 100
skinparam Ranksep 100
skinparam LegendBackgroundColor #White
skinparam ClassBackgroundColor #LightGray
skinparam ClassBorderColor #Black
skinparam ClassFontColor #Black
skinparam ArrowColor #Black
skinparam Shadowing false

legend bottom right
    = Legende
    |<#LightGray>      | Abgeleitet aus FHIR-Kernspezifikation |
    |<#LightGreen>     | MII KDS-Modul |
    |<#LightYellow>    | Erweiterung |
endlegend

' MII KDS-Modul Person
package Person #LightGreen {
    class "Patient:in" <<Patient>> #LightGreen
    class "Patient:in - Pseudonymisiert" <<Patient>> #LightGreen
}

' MII KDS-Modul Fall
package Fall #LightGreen {
  class Einrichtungskontakt <<Encounter>> #LightGreen
  class Abteilungskontakt <<Encounter>> #LightGreen
  class Versorgungsstellenkontakt <<Encounter>> #LightGreen
}

' Klassen
class Dokument <<DocumentReference>> {
'   + {field} Masteridentifikator: Identifier <back:#yellow>[0..1 / ISiK: 1..1]</back>
    + {field} Masteridentifikator: Identifier [0..1]
    + {field} Businessidentifikator: Identifier [0..1]
    + {field} Dokumentenreferenzstatus: code [1..1]
    + {field} Dokumentenstatus: code [0..1]
'   + {field} Dokumententyp: code <back:#yellow>[0..1 / ISiK: 1..1]</back>
    + {field} Dokumententyp: code [0..1]
'   + {field} Dokumentenkategorie: code <back:#yellow>[0..* / ISiK: 0..1]</back>
    + {field} Dokumentenkategorie: code [0..*]
'   + {field} Patient: Reference(Patient) <back:#yellow>[0..1 / ISiK: 1..1]</back>
    + {field} Patient: Identifier [0..1]
'   + {field} Beschreibung: string <back:#yellow>[0..1 / ISiK: 1..1]</back>
    + {field} Beschreibung: string [0..1]
'   + {field} Sicherheitsstufe: CodeableConcept <back:#yellow>[0..* / ISiK: 1..*]</back>
    + {field} Sicherheitsstufe: code [0..*]
    + {field} Dokumentenbeziehungen: BackboneElement [0..*]
'   + {field} Inhalt: BackboneElement <back:#yellow>[1..* / ISiK: 1..1]</back>
'   + {field} Inhalt: BackboneElement [1..*]
    + {field} Anhang: BackboneElement [1..*]
'   + {field} Kontext: BackboneElement <back:#yellow>[0..1 / ISiK: 1..1]</back>
    + {field} Kontext: BackboneElement [0..1]
}

class Dokumentenbeziehungen {
    + {field} Beziehungstyp: code [1..1]
    + {field} Beziehungsreferenz: Identifier [1..1]
}

class Kontext {
'   + {field} Gesundheitseinrichtungskontakt: Reference(Encounter) <back:#yellow>[0..* / ISiK: 0..1]</back>
    + {field} Gesundheitseinrichtungskontakt: Identifier [0..*]
    + {field} Vorgang: code [0..*]
'   + {field} Fachgebiet: CodeableConcept <back:#yellow>[0..1 / ISiK: 1..1]</back>
    + {field} Fachgebiet: code [0..1]
    + {field} Dokumentationszeitraum: Period [0..1]
'   + {field} Einrichtungsart: CodeableConcept <back:#yellow>[0..1 / ISiK: 1..1]</back>
    + {field} Einrichtungsart: code [0..1]
}

class Anhang {
'   + {field} Sprache: code <back:#yellow>[0..1 / ISiK: 1..1]</back>
    + {field} Sprache: code [0..1]
'   + {field} <back:#yellow>ISiK: Erstellungsdatum: dateTime [1..1]</back>
    + {field} Erstellungsdatum: dateTime [0..1]
'   + {field} <back:#yellow>ISiK: MimeTyp: code [1..1]</back>
    + {field} Daten: base64Binary [0..1]
    + {field} DokumentenUrl: string [0..1]
'   + {field} Dokumentenformat: Coding <back:#yellow>[0..1 / ISiK: 1..1]</back>
    + {field} Dokumentenformat: code [0..1]
}

' Beziehungen
Dokument *- "1..*" Anhang: attachment >
Dokument *-l- "0..1" Kontext: context >
Dokument *-- "0..*" Dokumentenbeziehungen: relatesTo >
Dokument o-u- "0..1" Person: subject >
Dokumentenbeziehungen -- Dokument: target >
Kontext o-d- "0..*" Fall: encounter >
Einrichtungskontakt -- "0..*" Abteilungskontakt
Abteilungskontakt -- "0..*" Versorgungsstellenkontakt

@enduml
</plantuml>
-->