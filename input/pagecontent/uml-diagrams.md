<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/uml-diagrams.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- Source: MIIIGModulDokument/AnwendungsflleInformationsmodell/UML.page.md.
     German mirror: input/translations/de/pagecontent/uml-diagrams.md. -->
### UML Diagrams

To illustrate the information model, the following diagram was created in the Unified Modeling Language (UML). This makes it easier to present the domain concepts, their interrelationships, and the connection to other MII KDS modules.

A *Dokument* describes the metadata of a clinical document or an image, audio, or video file. A *Dokument* is usually created in a clinical *context* (`context`). In addition, a *Dokument* can relate (`relatesTo`) in a specific way to one or more other *Dokumente*, depending on the respective scenario. One or more *attachments* (`attachment`) specify details about the storage location and storage format of the clinical document or the image, audio, or video file.

Depending on the scenario, a *Dokument* can carry a patient reference (`subject`) ([MII KDS module Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)). The patient reference can be made via identifying attributes, pseudonymously, or anonymously. Analogously, a clinical *context* establishes the reference to the concrete encounter (`encounter`) ([MII KDS module Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)).

<!-- TODO:REVIEW The source page linked the diagram to the upstream SVG at
     https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatz-dokument/refs/heads/dev/input/plantuml/Informationsmodell.svg
     (opened in a new tab); replaced here with the locally staged PNG. -->
<!-- Editable PlantUML source: input/plantuml/Informationsmodell.puml -->
![UML information model of the Dokument module](Informationsmodell.png)
