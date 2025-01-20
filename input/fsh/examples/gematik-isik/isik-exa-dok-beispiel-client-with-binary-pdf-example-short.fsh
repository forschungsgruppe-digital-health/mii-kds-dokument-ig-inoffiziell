Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason
Alias: $kdl = http://dvmd.de/fhir/CodeSystem/kdl
Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality
Alias: $formatcode = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode
Alias: $PatientBezogenenGesundheitsversorgung = http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung
Alias: $AerztlicheFachrichtungen = http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen

// https://simplifier.net/isik-dokumentenaustausch-v4/dok-beispiel-client-with-binary-pdf-example-short
Instance: dok-beispiel-client-with-binary-pdf-example-short
InstanceOf: MII_PR_Dok_Dokument
Usage: #example
* meta.security = $v3-ActReason#HTEST
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKDokumentenMetadaten"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46340"
* type = $kdl#PT130102 "Molekularpathologiebefund"
* status = #current
* description = "Molekularpathologiebefund vom 31.12.21"
* subject = Reference(Patient/PatientinMusterfrau)
* securityLabel = $v3-Confidentiality#N
* content.attachment.contentType = #application/pdf
* content.attachment.data = "JVBERi0xLjUNJeLjz9MNCjEw"
* content.attachment.language = #de
* content.attachment.creation = "2020-12-31T23:50:50-05:00"
* content.format = $formatcode#urn:ihe:iti:xds:2017:mimeTypeSufficient "mimeType Sufficient"
* context.facilityType = $PatientBezogenenGesundheitsversorgung#KHS "Krankenhaus"
* context.practiceSetting = $AerztlicheFachrichtungen#ALLG
* context.encounter = Reference(Encounter/BeispielBesuch)