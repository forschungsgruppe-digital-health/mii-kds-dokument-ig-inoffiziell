## Beschreibung

Diese Erweiterung ermöglicht die Beschreibung von dem Bearbeitungsstatus eines Dokuments während eines NLP-Projektes. Die Prozessierung eine Dokumentes mit unstrukturierter Information erfolgt in einer Vielzahl von Einzelschritten. Durch diese Prozessketten entstehen Transformationen und Relationen von und zu dem Originaldokument. Die NLP Extension nutzt ein Codesystem um die vielfältigen Zwischenprodukte einer NLP-Bearbeitung koordiniert zu beschreiben und zu archivieren.
Das Codesystem der NLP-Extension besitzt zwei Hierarchien, welche in Level 1 und Level 2 zum Ausdruck kommen. Das Level 1 bezeichnet hierbei die übergeordneten Prozessstatus wie zum Beispiel "annotated". Das Level (Lvl) 2 dient dann zur Spezifikation von Lvl 1, beispielsweise Lvl1 "annotated" Lvl2 "deid", dieses Dokument wurde mit de-identifizierenden Annotationen versehen.

Das zugehörige CodeSystem ist [MII CS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html).

{% include CodeSystem-mii-cs-dokument-nlp-processing-status-content.xhtml %}

## Beispiele

Das folgende Beispiel illustriert die Verarbeitung eines *ärztlichen Entlassbriefes* der Patientin *Amanda Alzheimer* durch eine NLP-Pipeline (siehe Abbildung). Nach der Erschließung (`Ingestion`) des Originaldokuments `Amanda_Alzheimer.txt` wird eine Dokumentreferenz mit dem NLP-Verarbeitungsstatus `unprocessed` angelegt. Anschließend wird eine De-Identifikation (`De-Identification`) der Inhalte durchgeführt, um das Ergebnisdokument `De-ID.txt` datenschutzkonform für Forschungszwecke weiterverwenden zu können. Eine zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus `de-identified` und verweist auf Originaldokument mittels `transforms`. Abschließend werden die klinischen Inhalte annotiert, was unter Umständen mehrere Ergebnisdokumente produziert und sich als Archiv `Annotat.zip` zusammenfassen lassen. Die zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus als `de-identifier, curated, annotated` und erweitert `appends` die Dokumentreferenz des vorherigen NLP-Verarbeitungsschritts.

<div style="text-align: center; margin-top: 2em; margin-bottom: 2em; width: 700px">
<a href="NLP-Pipeline.svg" target="_blank"><img src="NLP-Pipeline.png" alt="NLP-Pipeline" style="max-width:100%"></a>
</div>

Bitte beachten: Mit dem Element "relates to" können Beziehungen zwischen den unterschiedlichen Referenzen eines Dokumentes hergestellt werden. Die Codebezeichnungen "transforms" und "appends" bezeichnen hierbei die Art der Beziehung:

transforms: dieses Dokument hat seinen Ursprung im relationierten Original aber wurde inhaltlich oder strukturell verändert. Zum Beispiel wenn ein Original Dokument im CDA-Format in ein Textformat übertragen wurde.

appends: diese Dokument basiert auf dem relationierte Dokument, enthält aber zusätzliche Informationen wie z.B. Annotation in Form von Metadaten erhalten.

Die folgenden FHIR DocumentReference-Ressourcen verwendeten das [Dokument-Profil](StructureDefinition-mii-pr-dokument-dokument.html), um die Ergebnisdokumente und die zugehörigen Dokumentreferenzen jedes Verarbeitungsschrittes der NLP-Pipeline darzustellen:

- [Amanda_Alzheimer.txt (Originaldokument)](DocumentReference-AmandaAlzheimerOriginalDokument.html)
- [De-ID.txt (de-identifiziert)](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html)
- [Annotat.zip (annotiert)](DocumentReference-AmandaAlzheimerAnnotiertesDokument.html)

Die folgenden FHIR-Ressourcen stellen die zum Beispiel zugehörigen FHIR Patienten- und Fall-Ressourcen dar. Diese FHIR-Ressourcen werden ausschließlich vom Originaldokument `Amanda_Alzheimer.txt` und der zugehörigen Dokumentreferenz verwendet:

- [Amanda Alzheimer (Patient)](Patient-AmandaAlzheimer.html)
- [Einrichtungskontakt (Encounter)](Encounter-AmandaAlzheimerEinrichtungskontakt.html)
- [Abteilungskontakt (Encounter)](Encounter-AmandaAlzheimerAbteilungskontakt.html)
- [Versorgungsstellenkontakt (Encounter)](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html)

Quelle: <a href="https://doi.org/10.5281/zenodo.6539130">GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130</a>
