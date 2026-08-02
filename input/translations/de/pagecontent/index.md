<!-- markdownlint-disable MD041 -->
<!-- Migriert aus Simplifier: MIIIGModulDokument/Index.page.md (Startseiteninhalt).
     Die Abschnitte "Bezüge zu anderen Modulen" und "Referenzen" stammen aus
     Kontext-Bezuege.page.md und Referenzen.page.md (Mandatory-Section-Mapping
     nach migration-spec Abschnitt 9). Das Inhaltsverzeichnis der Quelle wurde
     entfernt — Navigation und TOC erzeugt der IG-Publisher.
     TODO:REVIEW (Gate B): die Vorlagen-Abschnitte "Zielgruppe" und "Inhalt
     dieses Leitfadens" des Template-Gerüsts wurden nicht übernommen, da die
     Simplifier-Quelle keine entsprechenden Inhalte enthält; bei Bedarf aus dem
     Template-Gerüst wiederherstellen. -->

Die vorliegende Spezifikation beschreibt die FHIR Repräsentation des Kerndatensatz Moduls Dokument der Medizininformatik Initiative.
Im Folgenden werden die Use Cases des Moduls, sowie die dazugehörigen FHIR Profile und Terminologie Ressourcen in ihrer verbindlichen Form beschrieben.

| Veröffentlichung | |
|---------|---|
| Datum   | 11.03.2026 |
| Version | 2026.0.1 |
| Status  | Active |
| Realm   | DE |
<!-- | Reifegrad | MII Maturity Model (MM0\|MM1\|MM2\|MM3)| -->

### Bezüge zu anderen Modulen

<!-- TODO:REVIEW (Gate B): mapped per migration-spec §9 -->

Medizinische Dokumente sind entscheidend für eine umfassende Patientenversorgung, die Nachvollziehbarkeit von Diagnosen und Behandlungen sowie die Einhaltung rechtlicher und wissenschaftlicher Standards. Sie spielen auch eine wichtige Rolle bei der Abrechnung medizinischer Leistungen und unterstützen eine effiziente Ressourcenplanung im Gesundheitssystem.
Sowohl die technischen als auch inhaltlichen Anforderungen der Dokumentation im Gesundheitswesen unterliegen einer hohen Dynamik. In der Folge haben sich zwischen den Häusern große Unterschiede in Bezug auf die Informationsstrukturen entwickelt. Insbesondere die Archivierung und Auffindbarkeit gehen mit einer hohen Diversität in Bezug auf Metadaten einher.

Im Kontext der MII-Kerndatensätze wird mit dem MII KDS-Modul Dokument ein abgestimmtes, nationales Konzept eingeführt, welches sich an gängigen CodeSystemen und ValueSets orientiert und einen interoperablen Umgang mit medizinischen Dokumenten orchestriert.

#### Beziehung zu anderen MII KDS-Modulen

Dieses MII KDS-Modul greift bei bestimmten Datenelementen auf existierende Vorarbeiten aus anderen MII KDS-Modulen zurück, um eine Harmonisierung zu erzielen und die Kompatibilität zu erhöhen. Im Nachfolgenden werden die Abhängigkeiten zu diesen Vorarbeiten beschrieben.

|MII KDS-Modul|Beschreibung des Bezugs|Verpflichtende Nutzung|
|-|-|-|
|[Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)|Die Mehrheit medizinischer Dokumentation bezieht sich auf Patient:innen. Hierfür wird das MII KDS-Modul Person genutzt um die Verbindung von Patient:in zu Dokument zu referenzieren. In manchen Fällen liegt der Fokus der Dokumentation auf medizinischen Objekten, Procedere oder Verwaltungsakten. Nur aus diesem Grund ist die Referenz auf das MII KDS-Modul Person lediglich als optional gekennzeichnet.|Ja|
|[Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)|Soweit das referenzierte Dokument einen Bezug zu einem Kontakt mit einer Gesundheitseinrichtung herstellt, sollte direkt auf die am besten geeignete Kontaktebene des MII KDS-Moduls Fall verwiesen werden. Diese Ebene ist typisch vom Dokumenttyp abhängig.|Nein|

#### Nutzung durch andere MII KDS-Module

Die Grundlage des MII KDS-Moduls bildet die [FHIR DocumentReference](https://www.hl7.org/fhir/documentreference.html). FHIR DocumentReferences werden bereits in anderen MII KDS-Modulen verwendet. Wir empfehlen die Umstellung auf das hier spezifizierte MII KDS-Modul.

Für den Fall, dass die spezifizierten Dokumentkategorien und -typen die Anforderungen einer Domäne nicht adäquat abbilden können, ist die Nutzung weiterer Domänen-spezifischer CodeSysteme und ValueSets erlaubt.

|MII KDS-Modul|Beschreibung des Bezugs|Verpflichtende Nutzung|
|-|-|-|
|[Consent](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.consent)|Das MII KDS-Modul referenziert Einwilligungsdokumente in z.B. gescannter Form. Ein Fall-Bezug ist denkbar.|Nein|
|[Studie](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie)|Das MII KDS-Modul referenziert Studienunterlagen. Dokumente können auch ohne Patientenbezug vorliegen.|Nein|
|[Bildgebung](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.bildgebung)|Das MII KDS-Modul referenziert Dokumente als Ersatz für strukturierte Diagnostische Berichte.|Nein|
|[Molgen Befund](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen)|Das MII KDS-Modul referenziert eine Reihe von Dokumenttypen, die jedoch an existierende Standards gebunden sind.|Nein|
|[Meta](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta)|Das MII KDS-Modul erweitert zahlreiche Profile um Definitionen von Suchparametern - so auch zum MII KDS-Modul Dokument.|Nein|

#### Referenzen

<!-- TODO:REVIEW (Gate B): mapped per migration-spec §9 -->

Das MII KDS-Modul Dokument ist darauf ausgelegt, dass Instanzen folgender FHIR-basierten Standards gleichzeitig kompatibel sein können:

* [KBV Basis-Profile mit Medizinischen Informationsobjekten (MIO)](https://simplifier.net/base1x0) – Profil zum Verweis auf externe oder angehängte Dokumente
* [Gematik Informationstechnischen Systeme im Krankenhaus (ISiK) Dokumentenaustausch](https://simplifier.net/guide/isik-dokumentenaustausch-stufe-5) - Profil zur Abbildung erforderlicher Metadaten für den Dokumentenaustausch
* [IHE Mobile access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD) - Profil zum Austausch von Gesundheitsdokumenten über mobile Anwendungen, mobile Geräte oder anderen Systemen, die ressourcen- und plattformbeschränkt sind

Die vorliegende Spezifikation ist an der FHIR-Kernspezifikation zur [DocumentReference-Ressource](https://www.hl7.org/fhir/R4/documentreference.html#resource) orientiert. Die bestehenden der [KBV Basis-Profile](https://simplifier.net/base1x0), des [Gematik ISiK](https://simplifier.net/guide/isik-dokumentenaustausch-stufe-5) und von [IHE MHD](https://profiles.ihe.net/ITI/MHD) sind bei der Modellierung bzgl. einer Widerspruchsfreiheit (siehe Abschnitt Referenzen) berücksichtigt worden. Wichtig ist hierbei zu beachten, dass eine Kompatibilität aus der klinischen Routine zu der Referenz Dokument gewährleistet werden kann, aber keine Rückwärtskompatibilität in die Routine vorgesehen ist. Siehe auch das [Paketabhängigkeitsdiagramm](downloads.html) auf der Seite Downloads.

Dadurch ist es möglich Ressourcen so zu attributieren, dass sie gleichzeitig MII KDS als auch ISIK bzw. IHE valide sind. Auch sind ISIK und IHE Module prinzipiell kompatibel, jedoch empfehlen wir in der Nutzung sowohl die Angabe des `type` (aus KDL/ISIK) und `category` (aus IHE), die keines der beides Profile ISIK, IHE gleichzeitig anbietet.

Dabei wurde ein Abgleich aller Datenelemente sowie der verwendeten Terminologie durchgeführt und im Dokument-Profil ([MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)) abgebildet. Die Kardinalitäten sind offen gestaltet, sodass in dieser Hinsicht keine (weiteren oder neuen) Einschränkungen eingeführt wurden. Die in den abgeglichenen Profilen verwendete Terminologie wurde im Dokument-Profil ([MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)) einbezogen und abgebildet.

Personenbezogene Dokumente werden immer einer Person (MII KDS-Modul Person) zugeordnet (`subject`). De-Identifizierte Dokumente sind über die Sicherheitsstufe (`securityLabel`) entsprechend markiert. Die datenhaltende Stelle ist hier verantwortlich, nur auf entsprechende anonymisierte bzw. pseudonymisierte Varianten anderer MII Module zu verweisen. Wo immer möglich wird ein Fallzusammenhang (MII KDS-Modul Fall) definiert – nach Möglichkeit auf die relevanteste Ebene des Fallstufenmodells (`context.encounter`). Im [Paketabhängigkeitsdiagramm](downloads.html) sind die Zusammenhänge zwischen den MII Modulen grün dargestellt.

Wir empfehlen den auch in ISIK verwendeten [DVMD KDL-Standard](https://simplifier.net/KDL/) für die präzise Typbeschreibung (`type`) sowie die [IHE XDS Class-Codes](https://art-decor.org/art-decor/decor-valuesets--ihede-?id=1.2.276.0.76.11.32&effectiveDate=2018-07-13T13:23:15&language=de-DE) für die gröbere Dokumentkategorie (`category`) zu verwenden. [IHE XDS Type- und Class-Codes können eindeutig aus KDL hergeleitet werden.](https://simplifier.net/kdl/~resources?category=ConceptMap) Weitere Kodierungen wie Hauscodes, SNOMED CT oder LOINC sind optional möglich.

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik Initiative erstellt worden und unterliegt per Governance Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V..

### Ansprechpartner

* Frank Meineke, SMITH
* Jakob Faller, MIRACUM

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik wird in Form von 'Issues' im GitHub Projekt stets gern entgegengenommen.

### Autoren (in alphabetischer Reihenfolge)

* Frank Meineke, SMITH, Informationsmodellierung/Fachvertretung
* Jakob Faller, MIRACUM, Informationsmodellierung/Fachvertretung
* Katja Hoffmann, MIRACUM/DigiHub MiHUBx, Technische Umsetzung
* Marcel Susky, MIRACUM/DigiHub MiHUBx, Informationsmodellierung/Fachvertretung/Technische Umsetzung
* Martin Boeker, MIRACUM, Fachvertretung
* Noemi Deppenwiese, MIRACUM, Technische Umsetzung
* Thomas Ganslandt, MIRACUM, Fachvertretung

### Copyright-Hinweis, Nutzungshinweise

<p>
    © 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin. <br>
    Dieses Werk ist lizenziert unter der
    <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">Creative Commons Namensnennung 4.0 International Lizenz</a>.
</p>
<a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">
    <img src="https://licensebuttons.net/l/by/4.0/88x31.png" alt="CC BY 4.0 Logo" style="border:0;">
</a>

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

### Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die Copyright HL7 International gilt.
