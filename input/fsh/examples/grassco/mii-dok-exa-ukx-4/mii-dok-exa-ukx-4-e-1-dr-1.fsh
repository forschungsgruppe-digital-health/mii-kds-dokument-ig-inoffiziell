Instance: UKX-4-E-1-DR-1
InstanceOf: MII_PR_Dokument_Dokument
Usage: #example
* status = #current
* docStatus = #final
* type.coding[0].version = "2024"
* type.coding[=] = $dvmd-kdl#PT130102 "Molekularpathologiebefund"
* type.coding[+].version = "1.4.0"
* type.coding[=] = $ihe-xds-type-code#PATH "Pathologiebefundberichte"
* type.text = "Molekularpathologiebefund"
* category.coding.version = "1.4.0"
* category.coding = $ihe-xds-class-code#BEF "Befundbericht"
* category.text = "Befundbericht"
* subject = Reference(UKX-4)
* date = "2025-01-21T13:39:03.061+01:00"
* securityLabel[0].coding.version = "4.0.1"
* securityLabel[=].coding = $v3-confidentiality#L "low"
* securityLabel[+].coding.version = "4.0.1"
* securityLabel[=].coding = $v3-act-reason#HTEST "test health data"
* content.attachment.contentType = #text/plain
* content.attachment.language = #en_EN
* content.attachment.url = "file:/C:/Users/Frank/Nextcloud/Shared/corpora/de/GraSCCo/txt-data/Beuerle.txt"
* content.attachment.size = 2644
* content.attachment.title = "Beuerle.txt"
* content.attachment.creation = "2024-02-26T09:34:21+01:00"
* context.encounter = Reference(UKX-4-E-1)