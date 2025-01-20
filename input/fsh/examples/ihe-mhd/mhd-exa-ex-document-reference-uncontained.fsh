Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason
Alias: $loinc = http://loinc.org
Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality
Alias: $formatcode = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode
Alias: $sct = http://snomed.info/sct

// https://simplifier.net/packages/ihe.iti.mhd/4.2.2/files/2439105
Instance: ex-DocumentReferenceUnContained
InstanceOf: MII_PR_Dok_Dokument
Usage: #example
* meta.profile = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference"
* meta.security = $v3-ActReason#HTEST
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46340"
* identifier.use = #official
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21"
* status = #current
* type = $loinc#55107-7
* category = $loinc#11369-6
* subject = Reference(Patient/ex-patient)
* date = "2020-12-31T23:50:50-05:00"
* securityLabel = $v3-Confidentiality#N
* content.attachment.contentType = #text/plain
* content.attachment.language = #en
* content.attachment.url = "http://example.com/nowhere.txt"
* content.attachment.creation = "2020-12-31T23:50:50-05:00"
* content.format = $formatcode#urn:ihe:iti:xds-sd:text:2008
* context.facilityType = $sct#82242000
* context.practiceSetting = $sct#408467006
* context.sourcePatientInfo = Reference(Patient/ex-patient)