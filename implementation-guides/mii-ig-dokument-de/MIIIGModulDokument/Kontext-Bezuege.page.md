---
topic: Kontext
---

# {{page-title}}

Medizinische Dokumente sind entscheidend für eine umfassende Patientenversorgung, die Nachvollziehbarkeit von Diagnosen und Behandlungen sowie die Einhaltung rechtlicher und wissenschaftlicher Standards. Sie spielen auch eine wichtige Rolle bei der Abrechnung medizinischer Leistungen und unterstützen eine effiziente Ressourcenplanung im Gesundheitssystem.
Sowohl die technischen als auch inhaltlichen Anforderungen der Dokumentation im Gesundheitswesen unterliegen einer hohen Dynamik. In der Folge haben sich zwischen den Häusern große Unterschiede in Bezug auf die Informationsstrukturen entwickelt. Insbesondere die Archivierung und Auffindbarkeit gehen mit einer hohen Diversität in Bezug auf Metadaten einher.

Im Kontext der MII-Kerndatensätze wird mit dem MII KDS-Modul Dokument ein abgestimmtes, nationales Konzept eingeführt, welches sich an gängigen CodeSystemen und ValueSets orientiert und einen interoperablen Umgang mit medizinischen Dokumenten orchestriert.

## Beziehung zu anderen MII KDS-Modulen

Dieses MII KDS-Modul greift bei bestimmten Datenelementen auf existierende Vorarbeiten aus anderen MII KDS-Modulen zurück, um eine Harmonisierung zu erzielen und die Kompatibilität zu erhöhen. Im Nachfolgenden werden die Abhängigkeiten zu diesen Vorarbeiten beschrieben.

|MII KDS-Modul|Beschreibung des Bezugs|Verpflichtende Nutzung|
|-|-|-|
|[Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)|Die Mehrheit medizinischer Dokumentation bezieht sich auf Patient:innen. Hierfür wird das MII KDS-Modul Person genutzt um die Verbindung von Patient:in zu Dokument zu referenzieren. In manchen Fällen liegt der Fokus der Dokumentation auf medizinischen Objekten, Procedere oder Verwaltungsakten. Nur aus diesem Grund ist die Referenz auf das MII KDS-Modul Person lediglich als optional gekennzeichnet.|Ja|
|[Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)|Soweit das referenzierte Dokument einen Bezug zu einem Kontakt mit einer Gesundheitseinrichtung herstellt, sollte direkt auf die am besten geeignete Kontaktebene des MII KDS-Moduls Fall verwiesen werden. Diese Ebene ist typisch vom Dokumenttyp abhängig. |Nein|

## Nutzung durch andere MII KDS-Module

Die Grundlage des MII KDS-Moduls bildet die [FHIR DocumentReference](https://www.hl7.org/fhir/documentreference.html). FHIR DocumentReferences werden bereits in anderen MII KDS-Modulen verwendet. Wir empfehlen die Umstellung auf das hier spezifizierte MII KDS-Modul.

Für den Fall, dass die spezifizierten Dokumentkategorien und -typen die Anforderungen einer Domäne nicht adäquat abbilden können, ist die Nutzung weiterer Domänen-spezifischer CodeSysteme und ValueSets erlaubt.

|MII KDS-Modul|Beschreibung des Bezugs|Verpflichtende Nutzung|
|-|-|-|
|[Consent](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.consent)|Das MII KDS-Modul referenziert Einwilligungsdokumente in z.B. gescannter Form. Ein Fall-Bezug ist denkbar.|Nein|
|[Studie](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie)|Das MII KDS-Modul referenziert Studienunterlagen. Dokumente können auch ohne Patientenbezug vorliegen.|Nein|
|[Bildgebung](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.bildgebung)|Das MII KDS-Modul referenziert Dokumente als Ersatz für strukturierte Diagnostische Berichte.|Nein|
|[Molgen Befund](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen)|Das MII KDS-Modul referenziert eine Reihe von Dokumenttypen, die jedoch an existierende Standards gebunden sind.|Nein|
|[Meta](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta)|Das MII KDS-Modul erweitert zahlreiche Profile um Definitionen von Suchparametern - so auch zum MII KDS-Modul Dokument.|Nein|