---
topic: Kontext
---

# {{page-title}}

Medizinische Dokumente sind entscheidend für eine umfassende Patientenversorgung, die Nachvollziehbarkeit von Diagnosen und Behandlungen sowie die Einhaltung rechtlicher und wissenschaftlicher Standards. Sie spielen auch eine wichtige Rolle bei der Abrechnung medizinischer Leistungen und unterstützen eine effiziente Ressourcenplanung im Gesundheitssystem.
Sowohl die technischen als auch inhaltlichen Anforderungen der Dokumentation im Gesundheitswesen unterliegen einer hohen Dynamik. In der Folge haben sich zwischen den Häusern große Unterschiede in Bezug auf die Informationstrukturen entwickelt. Besonders die Archivierung und Auffindbarkeit geht mit einer hohen Diversität in Bezug auf Metadaten einher.

Im Kontext der MII-Kerndatensätze wird mit dem *MII KDS Modul DOKUMENT* ein abgestimmtes, nationales Konzept eingführt, welches sich an gängigen CodeSystemen und ValueSets orientiert und einen interoperablen Umgang mit medizinischen Dokumenten orchestriert.

## Beziehung zu anderen MII KDS Modulen

Dieses MII KDS Modul greift bei bestimmten Datenelementen auf existierende Vorarbeiten aus anderen MII KDS Modulen zurück, um eine Harmonisierung zu erzielen und die Kompatibilität zu erhöhen. Im Nachfolgenden werden die Abhängigkeiten zu diesen Vorarbeiten beschrieben.

|Modul|Beschreibung des Bezugs|Verpflichtende Nutzung|
|-|-|-|
|[PERSON](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)|Die Mehrheit medizinischer Dokumentation bezieht sich auf Patient:innen. Hierfür wird das MII KDS Modul PERSON genutzt um die Verbindung von Patient:in zu Dokument zu referenzieren. In manchen Fällen liegt der Fokus der Dokumentation auf medizinischen Objekten, Procedere oder Verwaltungsakten. Nur aus diesem Grund ist die Referenz auf das MII KDS Modul PERSON lediglich als optional gekennzeichnet.|Nein|
|[FALL](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)|Soweit das referenzierte Dokument einen Bezug zu einem Kontakt mit einer Gesundheitseinrichtung herstellt, sollte direkt auf die entsprechende Kontaktebene des MII KDS Modul FALL verwiesen werden.|Nein|

## Nutzung durch andere MII KDS Module

Die Grundlage des MII KDS Moduls bildet die [FHIR DocumentReference](https://www.hl7.org/fhir/documentreference.html). FHIR DocumentReferences werden bereits in anderen MII KDS Modulen verwendet. Wir empfehlen die Umstellung auf das hier spezifizierte MII KDS Modul.

Für den Fall, dass die spezifizierten Dokumentkategorien und -typen die Anforderungen einer Domäne nicht adäquat abbilden können, ist die Nutzung weiterer Domänen-spezifischer CodeSysteme und ValueSets erlaubt.

|Modul|Beschreibung des Bezugs|Verpflichtende Nutzung|
|-|-|-|
|[CONSENT](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.consent)|Das MII KDS Modul referenziert Einwilligungsdokumente in z.B. gescannter Form. Ein Fall-Bezug ist denkbar.|Nein|
|[STUDIE](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie)|Das MII KDS Modul referenziert Studienunterlagen. Dokumente können auch ohne Patientenbezug vorliegen.|Nein|
|[BILDGEBUNG](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.bildgebung)|Das MII KDS Modul referenziert Dokumente als Ersatz für strukturierte Diagnostische Berichte.|Nein|
|[MOLGEN BEFUND](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen)|Das MII KDS Modul referenziert eine Reihe von Dokumenttypen, die jedoch an existierende Standards gebunden sind.|Nein|
|[META](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta)|Das MII KDS Modul erweitert zahlreiche Profile um Definitionen von Suchparametern - so auch zum MII KDS Modul DOKUMENT.|Nein|

<!--
# {{page-title}}
Medizinische Dokumente sind entscheidend für eine umfassende Patientenversorgung, die Nachvollziehbarkeit von Diagnosen und Behandlungen sowie die Einhaltung rechtlicher und wissenschaftlicher Standards. Sie spielen auch eine wichtige Rolle bei der Abrechnung medizinischer Leistungen und unterstützen eine effiziente Ressourcenplanung im Gesundheitssystem.
Sowohl die technischen als auch inhaltlichen Anforderungen der Dokumentation im Gesundheitswesen unterliegen einer hohen Dynamik. In der Folge haben sich zwischen den Häusern große Unterschiede in Bezug auf die Informationstrukturen entwickelt. Besonders die Archivierung und Auffindbarkeit geht mit einer hohen Diversität in Bezug auf Metadaten einher.
Im Kontext des MII-Kerndatensatzmodul wird mit dem Erweiterungsmodul 'Dokument' ein abgestimmtes, nationales Konzept eingführt, welches sich an gängigen Codesystemen orientiert und einen interoperablen Umgang mit medizinischen Dokumenten orchestriert.

## Beziehungen zum Modul Person
Die Mehrheit medizinischer Dokumentation bezieht sich auf Patient:innen. Hierfür wird das Basismodul 'Person' genutzt um die Verbindung von Patient:in zu Dokument zu referenzieren. Die Referenzierung ist hier verpflichtend.

In manchen Fällen liegt der Fokus der Dokumentation auf medizinischen Objekten, Procedere oder Verwaltungsakten. 
Nur aus diesem Grund ist die Referenz auf das Modul Person lediglich als optional gekennzeichnet.

## Beziehungen zum Modul Fall
Soweit das referenzierte Dokument eine Bezug auf eine Kontaktebene des Modul Falls besitzt sollte auf diese direkt verwiesen werden.

## Nutzung in anderen Modulen
DocumentReferences werden bereits in anderen Modulen verwendet. Wir empfehlen die Umstellung auf das hier spezifizierte Modul. So die KDL die Dokumenttypen nicht adäquat abbilden kann können weitere Domänen/Modul spezifische Codesysteme genutzt werden.

### Modul Consent
Das Modul referenziert Einwilligungsdokumente in z.B. gescannter Form. Ein Fall-Bezug ist denkbar, aber nicht verpflichtend.

### Modul Studie
Das Modul referenziert Studienunterlagen. Die mögliche Vielfalt ist nicht vollumfänglich in der KDL abbildbar. Dokumente können auch ohne Patientenbezug vorliegen.

### Modul Bildgebung
Das Modul referenziert Dokumente als Ersatz für strukturierte Diagnostik Reports.

### Modul Genetische Tests
Das Modul referenziert eine Reihe von Dokumenttypen, die jedoch an existierende Standards gebunden sind.

### Modul Meta
Das Modul erweitert zahlreiche Profile um Definitionen von Suchparameter ; so auch zum Modul Dokument.

*Links zu Simplifier Projekte da Jahresversionen dann immer zu pflegen wäre*
-->
