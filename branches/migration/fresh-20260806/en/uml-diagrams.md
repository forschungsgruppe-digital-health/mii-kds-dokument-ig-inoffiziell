# Uml Diagrams - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* **Uml Diagrams**

## Uml Diagrams

### UML diagrams

To illustrate the information model, the following diagram was produced in the Unified Modeling Language (UML). It shows the domain concepts, their relationships and the connection to further MII KDS modules.

A **document** describes the metadata of a clinical document, an image, an audio or a video file. A **document** is normally created in a clinical **context** (`context`). Beyond that, a **document** can stand in a particular relation (`relatesTo`) to one or more other **documents**, depending on the scenario. One or more **attachments** (`attachment`) carry the details of where and in which format the clinical document, image, audio or video file is stored.

Depending on the scenario, a **document** may have a patient reference (`subject`) ([MII KDS module Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)). That patient reference may be identifying, pseudonymous or anonymous. In the same way, the clinical **context** establishes the relation to the concrete encounter (`encounter`) ([MII KDS module Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)).

![](Informationsmodell.png)

