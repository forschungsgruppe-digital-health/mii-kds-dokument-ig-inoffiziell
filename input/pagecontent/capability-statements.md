<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/capability-statements.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
To enable decentralized data analysis via the German Health Research Data Portal (Deutsches Forschungsdatenportal für Gesundheit) of the Medizininformatik-Initiative, the [capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities) MUST be supported, so that the FHIR server exposes a CapabilityStatement at `[BASE_URL]/metadata`. Within this CapabilityStatement it MUST be stated which profiles (including their version) and which search parameters are supported.

The following lists which content MUST mandatorily be stated in the CapabilityStatement. In addition, conformance to the following CapabilityStatement MUST be declared in the respective CapabilityStatement instance under [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement`

<!-- TODO:REVIEW: the source labeled the following link "Link zur Simplifier-Übersicht"; retitled because it now points at this guide's generated artifact page -->
Link to the artifact page: [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.html)

<!-- TODO:REVIEW: the source rendered the full CapabilityStatement resource inline here (a render directive on the canonical URL); the generated artifact page already shows the resource, so the render is replaced by the static pointer below -->
The full rendering of the CapabilityStatement is available on the artifact page [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.html).
