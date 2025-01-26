Instance: UKX-7-E-1-A-1
InstanceOf: MII_PR_Fall_KontaktGesundheitseinrichtung
Usage: #example
* identifier.type = $v2-0203#VN
* identifier.system.extension.url = "http://terminology.hl7.org/CodeSystem/data-absent-reason"
* identifier.system.extension.valueCode = #unknown
* identifier.value = "UKX-7-E-1-A-1"
* identifier.assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/NamingSystem/org-identifier"
* identifier.assigner.identifier.value = "UKX"
* status = #finished
* class = $v3-act-code#IMP "inpatient encounter"
* type = #abteilungskontakt "Abteilungskontakt"
* subject = Reference(UKX-7)
* period.start = "2066-12-12T00:00:00+01:00"
* period.end = "2066-12-23T00:00:00+01:00"
* partOf = Reference(UKX-7-E-1)