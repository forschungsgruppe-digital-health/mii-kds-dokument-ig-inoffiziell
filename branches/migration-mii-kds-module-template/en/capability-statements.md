# Capability Statements - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* **Capability Statements**

## Capability Statements

To enable decentralized data analysis via the German Portal for Medical Research Data (Deutsches Forschungsdatenportal für Gesundheit) of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities) MUST be supported, so that the FHIR server exposes a CapabilityStatement at `[BASE_URL]/metadata`. Within this CapabilityStatement it MUST be stated which profiles, including their version, and which search parameters are supported.

The following lists which contents MUST mandatorily be stated in the CapabilityStatement. In addition, conformance to the CapabilityStatement referenced below MUST be declared in the respective CapabilityStatement instance via [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement`

Link to the artifact overview: [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.md)

