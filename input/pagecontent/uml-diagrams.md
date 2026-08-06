<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW - MACHINE TRANSLATION.
     This English page was produced by the migration agent as a machine translation of
     input/translations/de/pagecontent/uml-diagrams.md, which carries the module's ORIGINAL German
     narrative (source: implementation-guides/mii-ig-dokument-de/**, commit 9f76fed).
     English is the template's default language, so the direction is inverted: the German
     text is the source and this page is the translation (mii-ig-migration, Language).
     It has NOT been reviewed by a human. Gate C reviews it. Where a value is normative -
     element definitions, code displays, conformance verbs - the German wording is kept
     verbatim and marked as such rather than translated.
     No Liquid literal may appear in this file, including inside this comment. -->

### UML diagrams

To illustrate the information model, the following diagram was produced in the Unified Modeling
Language (UML). It shows the domain concepts, their relationships and the connection to further
MII KDS modules.

A *document* describes the metadata of a clinical document, an image, an audio or a video file. A
*document* is normally created in a clinical *context* (`context`). Beyond that, a *document* can
stand in a particular relation (`relatesTo`) to one or more other *documents*, depending on the
scenario. One or more *attachments* (`attachment`) carry the details of where and in which format
the clinical document, image, audio or video file is stored.

Depending on the scenario, a *document* may have a patient reference (`subject`)
([MII KDS module Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)).
That patient reference may be identifying, pseudonymous or anonymous. In the same way, the clinical
*context* establishes the relation to the concrete encounter (`encounter`)
([MII KDS module Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)).

![Informationsmodell](Informationsmodell.png)
