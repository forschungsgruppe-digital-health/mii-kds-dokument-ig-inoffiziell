CodeSystem: MII_CS_Dokument_NLP_Verarbeitung_Dokumentart
Id: mii-cs-dokument-nlp-verarbeitung-dokumentart
Title: "MII CS Dokument NLP-Verarbeitung Dokumentart"
Description: "Art des Dokuments als (Zwischen-) Ergebnis der NLP-Verarbeitung"
* insert CS_Header($mii-cs-dokument-nlp-verarbeitung-dokumentart)

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

* #curated "Kuratiertes Dokument" "Durch Kurator geprüftes Dokumente"
* #curated ^designation.language = #en
* #curated ^designation.value = "Curated document"