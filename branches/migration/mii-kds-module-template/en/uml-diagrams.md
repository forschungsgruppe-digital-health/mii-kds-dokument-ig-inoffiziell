# UML Diagrams - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **UML Diagrams**

## UML Diagrams

### UML Diagrams

To illustrate the information model, the following diagram was created in the Unified Modeling Language (UML). This makes it easier to present the domain concepts, their interrelationships, and the connection to other MII KDS modules.

A **Dokument** describes the metadata of a clinical document or an image, audio, or video file. A **Dokument** is usually created in a clinical **context** (`context`). In addition, a **Dokument** can relate (`relatesTo`) in a specific way to one or more other **Dokumente**, depending on the respective scenario. One or more **attachments** (`attachment`) specify details about the storage location and storage format of the clinical document or the image, audio, or video file.

Depending on the scenario, a **Dokument** can carry a patient reference (`subject`) ([MII KDS module Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)). The patient reference can be made via identifying attributes, pseudonymously, or anonymously. Analogously, a clinical **context** establishes the reference to the concrete encounter (`encounter`) ([MII KDS module Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)).

![](Informationsmodell.png)

