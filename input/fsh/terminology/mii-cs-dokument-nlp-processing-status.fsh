CodeSystem: MII_CS_Dokument_NLP_Processing_Status
Id: mii-cs-dokument-nlp-processing-status
Title: "MII CS Dokument NLP Typ"
Description: "Status der NLP-Verarbeitung des referenzierten Dokuments"
* insert CS_Header($mii-cs-dokument-nlp-processing-status)

// Meta information
* ^language = #de

// Codes
* #unprocessed "Originaldokument" "Originales, unverarbeitetes Dokument"
* #unprocessed ^designation.language = #en
* #unprocessed ^designation.value = "Original document"

* #preprocessed "Vorverarbeitetes Dokument" "Durch computerlinguistische Verfahren verarbeitetes Dokument"
* #preprocessed ^designation.language = #en
* #preprocessed ^designation.value = "Preprocessed document"

* #de-identified "De-identifiziertes Dokument" "Durch de-identifizierende Verfahren verarbeitetes Dokument"
* #de-identified ^designation.language = #en
* #de-identified ^designation.value = "De-identified document"

* #annotated "Annotiertes Dokument" "Durch Annotatoren verarbeitetes Dokument ohne Ersetzungen"
* #annotated ^designation.language = #en
* #annotated ^designation.value = "Annotated document"

* #surrogated "Surrogatdokument" "Durch Annotatoren verarbeites Dokument mit Ersetzungen"
* #surrogated ^designation.language = #en
* #surrogated ^designation.value = "Surrogated document"

* #curated "Kuratiertes Dokument" "Durch manuelles oder automatisches Verfahren geprüftes Dokument"
* #curated ^designation.language = #en
* #curated ^designation.value = "Curated document"