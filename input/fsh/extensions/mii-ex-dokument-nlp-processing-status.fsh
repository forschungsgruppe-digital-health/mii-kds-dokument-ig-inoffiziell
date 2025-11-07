Extension: MII_EX_Dokument_NLP_Processing_Status
Id: mii-ex-dokument-nlp-processing-status
Context: DocumentReference
Title: "MII EX Dokument NLP Processing Status"
Description: "Status der NLP-Verarbeitung des referenzierten Dokuments"
* insert EX_Header($mii-ex-dokument-nlp-processing-status)

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "NLP Processing Status"
* valueCodeableConcept ^definition = "Status der NLP-Verarbeitung des referenzierten Dokuments"

* valueCodeableConcept.coding 1..* MS
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.system = $mii-cs-dokument-nlp-processing-status (exactly)
* valueCodeableConcept.coding from MII_VS_Dokument_NLP_Processing_Status