<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW - MACHINE TRANSLATION.
     This English page was produced by the migration agent as a machine translation of
     input/translations/de/pagecontent/capability-statements.md, which carries the module's ORIGINAL German
     narrative (source: implementation-guides/mii-ig-dokument-de/**, commit 9f76fed).
     English is the template's default language, so the direction is inverted: the German
     text is the source and this page is the translation (mii-ig-migration, Language).
     It has NOT been reviewed by a human. Gate C reviews it. Where a value is normative -
     element definitions, code displays, conformance verbs - the German wording is kept
     verbatim and marked as such rather than translated.
     No Liquid literal may appear in this file, including inside this comment. -->

### Capability statements

To enable decentralised data analysis through the German Research Data Portal for Health of the
Medical Informatics Initiative, the
[capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities) SHALL be supported,
so that the FHIR server exposes a CapabilityStatement at ```[BASE_URL]/metadata```. That
CapabilityStatement SHALL state which profiles - including their version - and which search
parameters are supported.

The CapabilityStatement below lists the content that SHALL be declared. In addition, conformance to
it SHALL be declared in the respective CapabilityStatement instance under
[```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement`

Generated artefact page:
[mii-cps-dokument-capabilitystatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.html)
