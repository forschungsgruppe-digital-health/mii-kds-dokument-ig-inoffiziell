Instance: UKX-1-E-1-A-1
InstanceOf: MII_PR_Fall_KontaktGesundheitseinrichtung
Usage: #example
* identifier.type = $v2-0203#VN
* identifier.value = "UKX-1-E-1-A-1"
* identifier.assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/NamingSystem/org-identifier"
* identifier.assigner.identifier.value = "UKX"
* status = #finished
* class = $v3-act-code#IMP "inpatient encounter"
* type = #abteilungskontakt "Abteilungskontakt"
* serviceType = $dkgev-fachabteilungsschluessel#0800 "Pneumologie"
* subject = Reference(UKX-1)
* period.start = "2029-03-19T00:00:00+01:00"
* period.end = "2029-05-07T00:00:00+02:00"
* partOf = Reference(UKX-1-E-1)