<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/uml-diagrams.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
To illustrate the information model, the following diagram was created in the Unified Modeling Language (UML). It allows the domain concepts, their relationships, and the connection to other MII KDS modules to be presented more clearly.

A *Dokument* (document) describes the metadata of a clinical document or of an image, audio, or video file. A *Dokument* is usually created in a clinical *context* (`context`). In addition, depending on the respective scenario, a *Dokument* can relate (`relatesTo`) in a specific way to one or more other *Dokumente*. Via one or more *attachments* (`attachment`), details about the storage location and format of the clinical document or the image, audio, or video file can be specified.

Depending on the scenario, a *Dokument* can have a patient reference (`subject`) ([MII KDS module Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)). The patient reference can be established via identifying properties, pseudonymously, or anonymously. Analogously, a clinical *context* can establish the reference to the specific case (`encounter`) ([MII KDS module Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)).

<!-- PlantUML source: input/plantuml/Informationsmodell.puml (rendered image: input/images/Informationsmodell.png) -->
<!-- TODO:REVIEW The Simplifier source page linked the image to the external SVG in the production repository: https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatz-dokument/refs/heads/dev/input/plantuml/Informationsmodell.svg — replaced with the local image per the migration rule. -->
![Informationsmodell](Informationsmodell.png)
