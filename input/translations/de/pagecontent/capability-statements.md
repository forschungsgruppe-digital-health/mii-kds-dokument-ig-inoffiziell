<!-- markdownlint-disable MD041 -->
Um eine dezentrale Datenauswertung mittels des Deutschen Forschungsdatenportals für Gesundheit der Medizininformatik-Initiative zu ermöglichen MUSS die [Capabilities-Interaktion](https://www.hl7.org/fhir/R4/http.html#capabilities) unterstützt werden, sodass durch den FHIR-Server unter `[BASE_URL]/metadata` ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement MUSS angegeben werden welche Profile inkl. Version, sowie welche Suchparameter unterstützt werden.

Nachfolgend wird aufgelistet welche Inhalte verpflichtend im CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen CapabilityStatement Instanz unter [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates) angegeben werden.

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement`

<!-- TODO:REVIEW: the source labeled the following link "Link zur Simplifier-Übersicht"; retitled because it now points at this guide's generated artifact page -->
Link zur Artefaktseite: [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.html)

<!-- TODO:REVIEW: the source rendered the full CapabilityStatement resource inline here (a render directive on the canonical URL); the generated artifact page already shows the resource, so the render is replaced by the static pointer below -->
Die vollständige Darstellung des CapabilityStatement befindet sich auf der Artefaktseite [MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.html).
