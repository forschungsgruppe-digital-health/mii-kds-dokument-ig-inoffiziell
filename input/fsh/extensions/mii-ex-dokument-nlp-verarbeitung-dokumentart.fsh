Extension: MII_EX_Dokument_NLP_Verarbeitung_Dokumentart
Id: mii-ex-dokument-nlp-verarbeitung-dokumentart
Context: DocumentReference
Title: "MII EX Dokument NLP Verarbeitung Dokumentart"
Description: "Art des Dokuments als (Zwischen-) Ergebnis der NLP-Verarbeitung"
* insert EX_Header($mii-ex-dokument-nlp-verarbeitung-dokumentart)

* value[x] 1..1 MS
* value[x] only Coding

* valueCoding 1..1 MS
* valueCoding ^short = "NLP-Verarbeitung Dokumentart"
* valueCoding ^definition = "Art des Dokuments als (Zwischen-) Ergebnis der NLP-Verarbeitung"

* valueCoding.system = $mii-cs-dokument-nlp-verarbeitung-dokumentart
* valueCoding.code from MII_VS_Dokument_NLP_Verarbeitung_Dokumentart