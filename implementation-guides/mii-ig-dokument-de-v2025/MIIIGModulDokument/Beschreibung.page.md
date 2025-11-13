---
topic: Beschreibung 
---

## {{page-title}}

<div style="display: flex; justify-content: center; align-items: center; padding: 2em">
  <img style="min-width: 300px; width: 600px" src="https://web.archive.org/web/20250806152348im_/https://www.medizininformatik-initiative.de/sites/default/files/2025-06/2025-06-12_de_KDS-Abb_1.png" alt="MII-Kerndatensatz Module (Stand: 12.06.2025)" title="MII-Kerndatensatz Module (Stand: 12.06.2025)">
</div>

Mit dem MII KDS-Modul Dokument können Referenzen und Metadaten zu Dokumenten mit klinischer Relevanz jeglicher Art für beliebige Zwecke strukturiert erfasst werden. Dokumente sind in diesem Kontext beliebige Binärobjekte, also beispielsweise auch Bilder oder Videos.

Die vorliegende Spezifikation ist an der FHIR-Kernspezifikation zur [DocumentReference-Ressource](https://www.hl7.org/fhir/R4/documentreference.html#resource) orientiert. Die bestehenden der [KBV Basis-Profile](https://simplifier.net/base1x0), des [Gematik ISiK](https://simplifier.net/isik-dokumentenaustausch-v4) und von [IHE MHD](https://profiles.ihe.net/ITI/MHD) sind bei der Modellierung bzgl. einer Widerspruchsfreiheit (siehe Abschnitt Referenzen) berücksichtigt worden. Wichtig ist hierbei zu beachten, dass eine Kompatibilität aus der klinischen Routine zu der Referenz Dokument gewährleistet werden kann, aber keine Rückwärtskompatibilität in die Routine vorgesehen ist. Siehe auch das Paketabhängigkeitsdiagramm:

<div style="text-align: center; margin-top: 2em; margin-bottom: 2em">
<a target="_blank" href="https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/Paketabhaengigkeiten.svg">{{render:implementation-guides/images/Paketabhaengigkeiten.png}}
</a>
</div>
Dadurch ist es möglich Ressourcen so zu attributieren, dass sie gleichzeitig MII KDS als auch ISIK bzw. IHE valide sind. Auch sind ISIK und IHE Module prinzipiel kompatibel, jedoch empfehlen wir in der Nutzung sowohl die Angabe des type  (aus KDL /ISIK)  und  category (aus IHE), die keines der beides Profile ISIK,IHE gleichzeitig anbietet.

Dabei wurde ein Abgleich aller Datenelemente sowie der verwendeten Terminologie durchgeführt und im Dokument-Profil ({{pagelink:MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md}}) abgebildet. Die Kardinalitäten sind offen gestaltet, sodass in dieser Hinsicht keine (weiteren oder neuen) Einschränkungen eingeführt wurden. Die in den abgeglichenen Profilen verwendete Terminologie wurde im Dokument-Profil ({{pagelink:MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md}}) einbezogen und abgebildet.

Personenbezogene Dokumente werden immer einer Person (MII KDS-Modul Person) zugeordnet (`subject`). De-Identifizierte Dokumente sind über die Sicherheitsstufe (`securityLabel`) entsprechend markiert. Die datenhaltende Stelle ist hier verantwortlich, nur auf entsprechende anonymisierte bzw. pseudonymisierte Varianten anderer MII Module zu verweisen. Wo immer möglich wird ein Fallzusammenhang (MII KDS-Modul Fall) definiert – nach Möglichkeit auf die relevanteste Ebene des Fallstufenmodells (`context.encounter`). Im Paketabhängigkeitsdiagramm (oben) sind die Zusammenhänge zwischen den MII Modulen grün dargestellt.

Wir empfehlen den auch in ISIK verwendeten [DVMD KDL-Standard](https://simplifier.net/KDL/) für die präzise Typbeschreibung (`type`) sowie die [IHE XDS Class-Codes](https://art-decor.org/art-decor/decor-valuesets--ihede-?id=1.2.276.0.76.11.32&effectiveDate=2018-07-13T13:23:15&language=de-DE) für die gröbere Dokumentkategorie (`category`) zu verwenden. [IHE XDS Type- und Class-Codes können eindeutig aus KDL hergeleitet werden.](https://simplifier.net/kdl/~resources?category=ConceptMap) Weitere Kodierungen wie Hauscodes, SNOMED CT oder LOINC sind optional möglich. 

Im Hinblick auf Dokumentenverarbeitungsprozesse, z.B. Format-Wandlungen, Anonymisierung und NLP-Annotationen, bekommt der Relation zu anderen Dokumenten (MII KDS-Modul Dokument) eine besondere Bedeutung zu, um Verarbeitungsketten abzubilden (`relatesTo`). 

Das Informationsmodell trennt Angaben zur Referenz selbst und den Metadaten der referenzierten Dokumente (`content`). Auf den Körper des Dokuments wird über eine lokal zu interpretierende URL (`content.attachment.url`) verwiesen. Grundsätzlich kann der Dokumentkörper des referenzierten Dokuments auch innerhalb der Referenz (`content.attachment.data`) eingebettet werden. 
Das Modul gibt keine Vorgaben zur Semantik dieser Auflösung. 

Der Textkörper kann vielfältige identifizierende Daten und/oder Metadaten (z.B. Namen, Patienten-ID) enthalten kann. Der Datenhalter kann eine erfolgte De-Identifizierung dieser Daten durch geeignete `securityLevel` und/oder Codes der Erweiterung NLP-Processing Status ({{pagelink:MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md}}) ausdrücken.<div style="display: flex; justify-content: center; align-items: center; height: 100vh">
  <img src="https://web.archive.org/web/20250806152348im_/https://www.medizininformatik-initiative.de/sites/default/files/2025-06/2025-06-12_de_KDS-Abb_1.png" alt="MII-Kerndatensatz Module" title="MII-Kerndatensatz Module">
</div><div style="display: flex; justify-content: center; align-items: center; height: 100vh">
  <img src="https://web.archive.org/web/20250806152348im_/https://www.medizininformatik-initiative.de/sites/default/files/2025-06/2025-06-12_de_KDS-Abb_1.png" alt="MII-Kerndatensatz Module" title="MII-Kerndatensatz Module">
</div><div style="display: flex; justify-content: center; align-items: center; height: 100vh">
  <img src="https://web.archive.org/web/20250806152348im_/https://www.medizininformatik-initiative.de/sites/default/files/2025-06/2025-06-12_de_KDS-Abb_1.png" alt="MII-Kerndatensatz Module" title="MII-Kerndatensatz Module">
</div>