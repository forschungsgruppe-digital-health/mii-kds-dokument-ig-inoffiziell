Instance: UKX-3-E-1-A-1
InstanceOf: MII_PR_Fall_KontaktGesundheitseinrichtung
Usage: #example
* identifier.type = $v2-0203#VN
* identifier.value = "UKX-3-E-1-A-1"
* identifier.assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/NamingSystem/org-identifier"
* identifier.assigner.identifier.value = "UKX"
* status = #finished
* class = $v3-act-code#IMP "inpatient encounter"
* type = #abteilungskontakt "Abteilungskontakt"
* serviceType = $dkgev-fachabteilungsschluessel#1000 "Paediatrie"
* subject = Reference(UKX-3)
* period.start = "2025-03-08T00:00:00+01:00"
* period.end = "2025-03-22T00:00:00+01:00"
* partOf = Reference(UKX-3-E-1)