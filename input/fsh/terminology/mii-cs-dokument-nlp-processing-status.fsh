CodeSystem: MII_CS_Dokument_NLP_Processing_Status
Id: mii-cs-dokument-nlp-processing-status
Title: "MII CS Dokument NLP Processing Status"
Description: "Status der NLP-Verarbeitung des referenzierten Dokuments"
* insert CS_Header($mii-cs-dokument-nlp-processing-status)
* ^content = #complete
* ^hierarchyMeaning = #is-a

* #unprocessed "Original" "Dokument im Original"
  * ^designation.language = #en
  * ^designation.value = "Original document"

* #preprocessed "Vorverarbeitetes Dokument" "Aufbereitung und Bearbeitung von Textinformation zur weiteren Verarbeitung"
  * ^designation.language = #en
  * ^designation.value = "Preprocessed document"
  * #format-change "Formatänderung" "Vorverarbeitung mit Transformation des Formats"
    * ^designation.language = #en
    * ^designation.value = "Format changed"
  * #content-change "Inhaltsänderung" "Vorverarbeitung mit inhaltlicher Änderung, z.B. Headerentfernung"
    * ^designation.language = #en
    * ^designation.value = "Content changed"

* #annotated "Annotiertes Dokument" "Dokument mit Annotationen in Bezug auf deidentifizierende oder semantische Inhalte oder automatisierte Verfahren"
  * ^designation.language = #en
  * ^designation.value = "Annotated document"
  * #preanno "Vorannotiertes Dokument" "Maschinelle Vorannotation"
    * ^designation.language = #en
    * ^designation.value = "Pre-annotated document"
  * #deid "Deidentifiziertes Dokument" "Annotationen zum Zwecke einer Deidentifizierung"
    * ^designation.language = #en
    * ^designation.value = "De-identified document"
  * #semantic "Semantisch annotiertes Dokument" "Semantische Annotationen"
    * ^designation.language = #en
    * ^designation.value = "Semantically annotated document"

* #surrogated "Surrogiertes Dokument" "Dokument nach Ersetzung von bereits annotierten Konzepten. In aller Regel Surrogation von deidentifizierten Merkmalen zu einer Pseudonymisierung. Der Status surrogated setzt voraus, dass bereits die Status preprocessed und annotated erfolgt sind."
  * ^designation.language = #en
  * ^designation.value = "Surrogated document"
