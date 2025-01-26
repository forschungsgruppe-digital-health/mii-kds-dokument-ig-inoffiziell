// https://simplifier.net/packages/ihe.iti.mhd/4.2.2/files/2439106
Instance: ex-DocumentReferenceUnContainedFully
InstanceOf: DocumentReference
Usage: #example
* meta.profile = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference"
* meta.security = $v3-act-reason#HTEST
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46340"
* identifier.use = #official
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21"
* status = #current
* type = $LNC#55107-7
* category = $LNC#11369-6
* subject = Reference(Patient/ex-patient)
* date = "2020-12-31T23:50:50-05:00"
* author = Reference(Practitioner/ex-practitioner)
* authenticator = Reference(Practitioner/ex-practitioner)
* relatesTo.code = #appends
* relatesTo.target = Reference(DocumentReference/ex-documentreference)
* description = "Example of a Comprehensive DocumentReference resource. This is minimally filled for all mandatory elements."
* securityLabel = $v3-confidentiality#N
* content.attachment.contentType = #text/plain
* content.attachment.language = #en
* content.attachment.url = "http://example.com/nowhere.txt"
* content.attachment.size = 0
* content.attachment.hash = "ZGEzOWEzZWU1ZTZiNGIwZDMyNTViZmVmOTU2MDE4OTBhZmQ4MDcwOQ=="
* content.attachment.title = "DocumentReference for Comprehensive minimally filled metadata"
* content.attachment.creation = "2020-12-31T23:50:50-05:00"
* content.format = $ihe-formatcode#urn:ihe:iti:xds-sd:text:2008
* context.event = $v3-act-code#ACCTRECEIVABLE
* context.period.start = "2020-12-31T23:50:50-05:00"
* context.period.end = "2020-12-31T23:50:50-05:00"
* context.facilityType = $SCT#82242000
* context.practiceSetting = $SCT#408467006
* context.sourcePatientInfo = Reference(Patient/ex-patient)
* context.related.identifier.system = "urn:ietf:rfc:3986"
* context.related.identifier.value = "urn:oid:1.2.840.113556.1.8000.2554.17917.46600.21181.17878.33419.62048.57128.2759"