# Sicherheit und Datenschutz

HL7-IG-Best-Practice empfiehlt einen expliziten Abschnitt zu Sicherheits- und
Datenschutzaspekten. Die nachfolgenden Hinweise fassen die für das MII KDS-Modul
Dokument relevanten Aspekte zusammen.

## Vertraulichkeit und Sicherheitskennzeichnung

Personenbezogene Dokumente werden immer einer Person ([MII KDS-Modul Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)) zugeordnet (`subject`). Die Vertraulichkeitsstufe eines Dokuments wird über das Element `securityLabel` gekennzeichnet. Empfohlen wird – auch für die ISiK-Kompatibilität – mindestens die Nutzung des HL7-Basisprofil-Subsets aus `http://terminology.hl7.org/CodeSystem/v3-Confidentiality` (z. B. `N` für *restricted* / patientenbezogene Dokumente). Siehe hierzu auch die [Terminologien](terminology.html).

## De-Identifikation und Pseudonymisierung

Der Textkörper eines Dokuments kann vielfältige identifizierende Daten und/oder Metadaten (z. B. Namen, Patienten-ID) enthalten. Eine erfolgte De-Identifizierung dieser Daten kann der Datenhalter durch eine geeignete Sicherheitsstufe (`securityLabel`) und/oder durch Codes der Erweiterung [NLP Processing Status: Extension](StructureDefinition-mii-ex-dokument-nlp-processing-status.html) ausdrücken.

De-identifizierte Dokumente sind über die Sicherheitsstufe (`securityLabel`) entsprechend zu markieren. Die datenhaltende Stelle ist dafür verantwortlich, nur auf entsprechend anonymisierte bzw. pseudonymisierte Varianten anderer MII-Module zu verweisen.

## Einwilligung (Consent)

Sofern für die jeweilige Nutzung relevant, ist die Einwilligung über das einschlägige [MII KDS-Modul Consent](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.consent) abzubilden; das Modul Dokument kann Einwilligungsdokumente (z. B. in gescannter Form) referenzieren (siehe [Bezüge zu anderen Modulen](context.html)).

## Zugriff, Authentifizierung und Autorisierung

Allgemeine FHIR-Sicherheitshinweise sind in der [FHIR-Security-Spezifikation](https://hl7.org/fhir/R4/security.html) beschrieben. Zugriffsschutz, Authentifizierung und Autorisierung sind modul-übergreifend über die jeweilige MII-Infrastruktur geregelt. `TODO:REVIEW` (modul-/projektspezifische Konkretisierung gemäß KDS-Governance)

## Beispieldaten (DSGVO)

Alle im IG enthaltenen Beispiel-Instanzen sind **synthetisch/fiktiv** und enthalten **keine realen personenbezogenen Daten**. Die textbasierten Beispiele entstammen dem synthetischen [GraSCCo-Datensatz](https://doi.org/10.5281/zenodo.6539130). Neue Beispiele dürfen ausschließlich synthetische Daten verwenden.
