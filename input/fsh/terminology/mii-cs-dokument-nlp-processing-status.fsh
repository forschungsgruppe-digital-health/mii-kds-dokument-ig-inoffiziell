CodeSystem: MII_CS_Dokument_NLP_Processing_Status
Id: mii-cs-dokument-nlp-processing-status
Title: "MII CS Dokument NLP Processing Status"
Description: "Status der NLP-Verarbeitung des referenzierten Dokuments"
* insert CS_Header($mii-cs-dokument-nlp-processing-status)

// Meta information
* ^language = #de

// Codes
* #unprocessed "Original" "Dokument ohne Bearbeitung/ im Original"
* #unprocessed ^designation.language = #en
* #unprocessed ^designation.value = "Original"

* #preprocessed "Vorverarbeitetes Dokument" "Dokument mit technischer Vorverarbeitung (z.B. CDA nach TXT, Entfernung Header/Footer)"
* #preprocessed ^designation.language = #en
* #preprocessed ^designation.value = "Preprocessed document"

* #de-identified "De-identifiziertes Dokument" "Dokument ohne identifizierende Daten"
* #de-identified ^designation.language = #en
* #de-identified ^designation.value = "De-identified document"

* #annotated "Annotiertes Dokument" "Durch Annotatoren verarbeitetes Dokument ohne Ersetzungen"
* #annotated ^designation.language = #en
* #annotated ^designation.value = "Annotated document"

* #surrogated "Surrogatdokument" "Dokument mit inhaltlichen Ersetzungen (z.B. Laborwerte, Namen)"
* #surrogated ^designation.language = #en
* #surrogated ^designation.value = "Surrogated document"

* #curated "Kuratiertes Dokument" "Verarbeitung durch manuelles oder automatisches Verfahren"
* #curated ^designation.language = #en
* #curated ^designation.value = "Curated document"