Instance: UKX-2-E-1-DR-1
InstanceOf: MII_PR_Dokument_Dokument
Usage: #example
* status = #current
* docStatus = #final
* type.coding[0].version = "2025"
* type.coding[=] = $dvmd-kdl#AD010110 "Ärztlicher Verlaufsbericht"
* type.coding[+].version = "3.0.1"
* type.coding[=] = $ihe-xds-type-code#BERI "Arztberichte"
* type.text = "Ärztlicher Verlaufsbericht"
* category.coding.version = "3.0.1"
* category.coding = $ihe-xds-class-code#BRI "Brief"
* category.text = "Brief"
* subject = Reference(UKX-2)
* date = "2025-01-21T13:39:02.919+01:00"
* securityLabel[0].coding.version = "4.0.1"
* securityLabel[=].coding = $v3-confidentiality#L "low"
* securityLabel[+].coding.version = "4.0.1"
* securityLabel[=].coding = $v3-act-reason#HTEST "test health data"
* content.attachment.contentType = #text/plain
* content.attachment.language = #de_DE
* content.attachment.url = "file:/C:/Users/Frank/Nextcloud/Shared/corpora/de/GraSCCo/txt-data/Amanda_Alzheimer.txt"
* content.attachment.size = 6450
* content.attachment.title = "Amanda_Alzheimer.txt"
* content.attachment.creation = "2024-02-26T09:34:21+01:00"
* context.encounter = Reference(UKX-2-E-1)