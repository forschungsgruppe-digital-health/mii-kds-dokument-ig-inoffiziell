> **Hinweis (inoffiziell):** Dies ist eine **inoffizielle**, automatisiert nach
> HL7-IG-Publisher-Format migrierte Spiegelung des MII KDS-Moduls Dokument.
> Verbindlich bleibt die offiziell gemäß KDS-Governance freigegebene
> Veröffentlichung. Status: `draft` / `ci-build`.

# Kerndatensatz Modul Dokument

Die vorliegende Spezifikation beschreibt die FHIR Repräsentation des Kerndatensatz Moduls Dokument der Medizininformatik Initiative.
Im Folgenden werden die Use Cases des Moduls, sowie die dazugehörigen FHIR Profile und Terminologie Ressourcen in ihrer verbindlichen Form beschrieben.

| Veröffentlichung | |
|---------|---|
| Datum   | 11.03.2026 |
| Version | 2026.0.1 |
| Status  | Active |
| Realm   | DE |
<!-- | Reifegrad | MII Maturity Model (MM0\|MM1\|MM2\|MM3)| -->

## Beschreibung Modul

Mit dem MII KDS-Modul Dokument können Metadaten zu Dokumenten jeglicher Art mit klinischer Relevanz für beliebige Zwecke strukturiert erfasst werden. Dokumente sind in diesem Kontext beliebige Binärobjekte, also beispielsweise auch Bilder oder Videos.

Durch die Nutzung des Profils soll die interne und externe Nutzung von Dokumenten erleichtert werden. Die zentralen Punkte der Charakterisierung durch Metadaten: Dokumentenbeziehungen, Dokumentenstatus, Dokumentenauffindbarkeit, Korpus-Navigation und Dokumentenarchivierung werden von dem Modul aufgegriffen und nach standardisiertem Schema koordiniert.

Das MII KDS-Modul ermöglicht die Erstellung von Dokumentenreferenzen mit den Optionen Bezüge zu dem Modul Fall und Person herzustellen. Zudem enthält das Modul eine NLP-Extension, welche den Bearbeitungsstatus mit Hinsicht auf NLP-Verfahren wie zum Beispiel Annotationen abbildet (siehe hierfür [Informationsmodell (UML)](uml.html)).

Im Hinblick auf Dokumentenverarbeitungsprozesse, z.B. Format-Wandlungen, Anonymisierung und NLP-Annotationen, bekommt der Relation zu anderen Dokumenten (MII KDS-Modul Dokument) eine besondere Bedeutung zu, um Verarbeitungsketten abzubilden (`relatesTo`).

Das Informationsmodell trennt Angaben zur Referenz selbst und den Metadaten der referenzierten Dokumente (`content`). Auf den Körper des Dokuments wird über eine lokal zu interpretierende URL (`content.attachment.url`) verwiesen. Grundsätzlich kann der Dokumentkörper des referenzierten Dokuments auch innerhalb der Referenz (`content.attachment.data`) eingebettet werden.
Das Modul gibt keine Vorgaben zur Semantik dieser Auflösung.

Der Textkörper kann vielfältige identifizierende Daten und/oder Metadaten (z.B. Namen, Patienten-ID) enthalten kann. Der Datenhalter kann eine erfolgte De-Identifizierung dieser Daten durch geeignete `securityLevel` und/oder Codes der Erweiterung NLP-Processing Status ([NLP Processing Status: Extension](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)) ausdrücken.

## Inhalt dieses Leitfadens

- [Anwendungsfälle / Szenarien](use-cases.html)
- [Datensätze und Beschreibungen](data-sets.html)
- [Informationsmodell (UML)](uml.html)
- [Konformität](conformance.html)
- [Kompatibilität](compatibility.html) (ISiK, KBV MIO Basis, IHE MHD)
- [Terminologien](terminology.html)
- [Bezüge zu anderen Modulen](context.html)
- [Referenzen](references.html)
- [Sicherheit und Datenschutz](security-privacy.html)
- [Artefakte](artifacts.html), [Downloads](downloads.html), [Release Notes](changes.html)
- [Hinweise zur Mehrsprachigkeit](translationinfo.html)

## Impressum
Dieser Leitfaden ist im Rahmen der Medizininformatik Initiative erstellt wurden und unterliegt per Governance Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V..

## Ansprechpartner
* Frank Meineke, SMITH
* Jakob Faller, MIRACUM

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik wird in Form von 'Issues' im GitHub Projekt stets gern entgegengenommen.

## Autoren (in alphabetischer Reihenfolge)

* Frank Meineke, SMITH, Informationsmodellierung/Fachvertretung
* Jakob Faller, MIRACUM, Informationsmodellierung/Fachvertretung
* Katja Hoffmann, MIRACUM/DigiHub MiHUBx, Technische Umsetzung
* Marcel Susky, MIRACUM/DigiHub MiHUBx, Informationsmodellierung/Fachvertretung/Technische Umsetzung
* Martin Boeker, MIRACUM, Fachvertretung
* Noemi Deppenwiese, MIRACUM, Technische Umsetzung
* Thomas Ganslandt, MIRACUM, Fachvertretung

## Copyright-Hinweis, Nutzungshinweise
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

## Disclaimer
Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die Copyright HL7 International gilt.
