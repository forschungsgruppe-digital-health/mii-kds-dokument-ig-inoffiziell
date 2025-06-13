Alias: $IHEXDStypeCode = http://ihe-d.de/CodeSystems/IHEXDStypeCode
Alias: $IHEXDSclassCode = http://ihe-d.de/CodeSystems/IHEXDSclassCode
Alias: $v3-act-reason = http://terminology.hl7.org/CodeSystem/v3-ActReason
Alias: $IHE.FormatCode.codesystem = http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem
Alias: $SCT = http://snomed.info/sct

// https://simplifier.net/packages/kbv.basis/1.6.0/files/2433709
Instance: 783be93b-f22a-43de-a54f-bdca08e2fdbf
InstanceOf: MII_PR_Dokument_Dokument
Usage: #example
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_DocumentReference"
* status = #current
* docStatus = #preliminary
* type.coding.version = "3.0.1"
* type.coding = $IHEXDStypeCode#BEFU "Ergebnisse Diagnostik"
* category.coding.version = "3.0.1"
* category.coding = $IHEXDSclassCode#BEF "Befundbericht"
* subject = Reference(urn:uuid:b5df1dd6-237b-4057-9859-2f7fbacd3261)
* date = "2023-09-01T09:35:43+01:00"
* author = Reference(urn:uuid:f3fg0113-9844-4333-bfd2-fff573222b65)
* authenticator = Reference(urn:uuid:8ad1ee6c-6164-493a-be52-c43cf49e9916)
* custodian = Reference(urn:uuid:cf042e44-086a-4d51-9c77-172f9a972e3b)
* description = "Ultraschallbefund vom 01.09.2023"
* securityLabel.coding.version = "4.0.1"
* securityLabel.coding = $v3-act-reason#TREAT "treatment"
* content.attachment.contentType = #application/pdf
* content.attachment.language = #de
* content.attachment.url = "file:///20230901_PAT/Anlagen/Patient/Patient_9734_Ultraschall_Gebärmutterhals_20230901.pdf"
* content.attachment.title = "Ultraschall des Gebärmutterhalses"
* content.attachment.creation = "2023-09-01"
* content.format = $IHE.FormatCode.codesystem#urn:ihe:pat:apsr:cancer:cervix:2010 "Anatomic Pathology Structured Report Cancer Cervix"
* context.encounter = Reference(urn:uuid:853a6feb-1ds5-5572-42dd-9g5cd40f31321)
* context.facilityType.coding.version = "http://snomed.info/sct/11000274103/version/20231115"
* context.facilityType.coding = $SCT#22549003 "Hospital-based outpatient gynecology clinic (environment)"
* context.practiceSetting.coding.version = "http://snomed.info/sct/11000274103/version/20231115"
* context.practiceSetting.coding = $SCT#394586005 "Gynecology"
* context.sourcePatientInfo = Reference(urn:uuid:b5df1dd6-237b-4057-9859-2f7fbacd3261)