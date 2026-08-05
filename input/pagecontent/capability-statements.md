<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/capability-statements.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- Source: implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/
     TechnischeImplementierung/CapabilityStatement.page.md (Simplifier
     Manteldokument). Simplifier directives converted per the migration
     crosswalk; the Simplifier page metadata (topic/subject/canonical/expand)
     is dropped on the template. -->

To enable decentralized data analysis via the German Portal for Medical
Research Data (Deutsches Forschungsdatenportal für Gesundheit) of the Medical
Informatics Initiative, the
[capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities)
MUST be supported, so that the FHIR server exposes a CapabilityStatement at
`[BASE_URL]/metadata`. Within this CapabilityStatement it MUST be stated
which profiles, including their version, and which search parameters are
supported.

The following lists which contents MUST mandatorily be stated in the
CapabilityStatement. In addition, conformance to the CapabilityStatement
referenced below MUST be declared in the respective CapabilityStatement
instance via
[`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement`

Link to the artifact overview:
[MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.html)

<!-- TODO:REVIEW Conversion (Gate B): the source page linked the artifact's
     "Simplifier overview" here and rendered the full CapabilityStatement
     inline below it (Simplifier render directive on the canonical URL). Both
     are now covered by the IG-Publisher-generated artifact page linked above,
     which shows the rendering plus XML and JSON as tabs. "The following"/
     "referenced below" in the text therefore points to the CapabilityStatement
     shown there. If an inline rendering on this page is wanted, decide at
     Gate B. -->
