---
topic: Referenzen 
---

## {{page-title}}

Das MII KDS-Modul Dokument ist darauf ausgelegt, dass Instanzen folgender FHIR-basierten Standards gleichzeitig kompatibel sein können:

  * [KBV Basis-Profile mit Medizinischen Informationsobjekten (MIO)](https://simplifier.net/base1x0) – Profil zum Verweis auf externe oder angehängte Dokumente
  * [Gematik Informationstechnischen Systeme im Krankenhaus (ISiK) Dokumentenaustausch](https://simplifier.net/guide/isik-dokumentenaustausch-stufe-5)  - Profil zur Abbildung erforderlicher Metadaten für den Dokumentenaustausch
  * [IHE Mobile access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD) - Profil zum Austausch von Gesundheitsdokumenten über mobile Anwendungen, mobile Geräte oder anderen Systemen, die ressourcen- und plattformbeschränkt sind

<div style="text-align: center; margin-top: 2em; margin-bottom: 2em">
<a target="_blank" href="https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/Paketabhaengigkeiten.svg">{{render:implementation-guides/images/Paketabhaengigkeiten.png}}
</a>
</div>

Die vorliegende Spezifikation ist an der FHIR-Kernspezifikation zur [DocumentReference-Ressource](https://www.hl7.org/fhir/R4/documentreference.html#resource) orientiert. Die bestehenden der [KBV Basis-Profile](https://simplifier.net/base1x0), des [Gematik ISiK](https://simplifier.net/guide/isik-dokumentenaustausch-stufe-5) und von [IHE MHD](https://profiles.ihe.net/ITI/MHD) sind bei der Modellierung bzgl. einer Widerspruchsfreiheit (siehe Abschnitt Referenzen) berücksichtigt worden. Wichtig ist hierbei zu beachten, dass eine Kompatibilität aus der klinischen Routine zu der Referenz Dokument gewährleistet werden kann, aber keine Rückwärtskompatibilität in die Routine vorgesehen ist. Siehe auch das Paketabhängigkeitsdiagramm:


Dadurch ist es möglich Ressourcen so zu attributieren, dass sie gleichzeitig MII KDS als auch ISIK bzw. IHE valide sind. Auch sind ISIK und IHE Module prinzipiell kompatibel, jedoch empfehlen wir in der Nutzung sowohl die Angabe des type  (aus KDL /ISIK)  und  category (aus IHE), die keines der beides Profile ISIK,IHE gleichzeitig anbietet.

Dabei wurde ein Abgleich aller Datenelemente sowie der verwendeten Terminologie durchgeführt und im Dokument-Profil ({{pagelink:MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md}}) abgebildet. Die Kardinalitäten sind offen gestaltet, sodass in dieser Hinsicht keine (weiteren oder neuen) Einschränkungen eingeführt wurden. Die in den abgeglichenen Profilen verwendete Terminologie wurde im Dokument-Profil ({{pagelink:MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md}}) einbezogen und abgebildet.

Personenbezogene Dokumente werden immer einer Person (MII KDS-Modul Person) zugeordnet (`subject`). De-Identifizierte Dokumente sind über die Sicherheitsstufe (`securityLabel`) entsprechend markiert. Die datenhaltende Stelle ist hier verantwortlich, nur auf entsprechende anonymisierte bzw. pseudonymisierte Varianten anderer MII Module zu verweisen. Wo immer möglich wird ein Fallzusammenhang (MII KDS-Modul Fall) definiert – nach Möglichkeit auf die relevanteste Ebene des Fallstufenmodells (`context.encounter`). Im Paketabhängigkeitsdiagramm (oben) sind die Zusammenhänge zwischen den MII Modulen grün dargestellt.

Wir empfehlen den auch in ISIK verwendeten [DVMD KDL-Standard](https://simplifier.net/KDL/) für die präzise Typbeschreibung (`type`) sowie die [IHE XDS Class-Codes](https://art-decor.org/art-decor/decor-valuesets--ihede-?id=1.2.276.0.76.11.32&effectiveDate=2018-07-13T13:23:15&language=de-DE) für die gröbere Dokumentkategorie (`category`) zu verwenden. [IHE XDS Type- und Class-Codes können eindeutig aus KDL hergeleitet werden.](https://simplifier.net/kdl/~resources?category=ConceptMap) Weitere Kodierungen wie Hauscodes, SNOMED CT oder LOINC sind optional möglich. 
