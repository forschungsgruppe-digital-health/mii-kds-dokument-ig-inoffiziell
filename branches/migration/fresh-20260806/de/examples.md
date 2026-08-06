# Beispiele - MII IG Dokument v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Beispiele**

## Beispiele

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Beispiele

Das folgende Beispiel illustriert die Verarbeitung eines **ärztlichen Entlassbriefes** der Patientin **Amanda Alzheimer** durch eine NLP-Pipeline (siehe Abbildung). Nach der Erschließung (`Ingestion`) des Originaldokuments `Amanda_Alzheimer.txt` wird eine Dokumentreferenz mit dem NLP-Verarbeitungsstatus `unprocessed` angelegt. Anschließend wird eine De-Identifikation (`De-Identification`) der Inhalte durchgeführt, um das Ergebnisdokument `De-ID.txt` datenschutzkonform für Forschungszwecke weiterverwenden zu können. Eine zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus `de-identified` und verweist auf Originaldokument mittels `transforms`. Abschließend werden die klinischen Inhalte annotiert, was unter Umständen mehrere Ergebnisdokumente produziert und sich als Archiv `Annotat.zip` zusammenfassen lassen. Die zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus als `de-identifier, curated, annotated` und erweitert `appends` die Dokumentreferenz des vorherigen NLP-Verarbeitungsschritts.

[![NLP-Pipeline](NLP-Pipeline.png) ](https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/NLP-Pipeline.svg)

Bitte beachten: Mit dem Element "relates to" können Beziehungen zwischen den unterschiedlichen Referenzen eines Dokumentes hergestellt werden. Die Codebezeichnungen "transforms" und "appends" bezeichnen hierbei die Art der Beziehung:

transforms: dieses Dokument hat seinen Ursprung im relationierten Original aber wurde inhaltlich oder strukturell verändert. Zum Beispiel wenn ein Original Dokument im CDA-Format in ein Textformat übertragen wurde.

appends: diese Dokument basiert auf dem relationierte Dokument, enthält aber zusätzliche Informationen wie z.B. Annotation in Form von Metadaten erhalten.

Die folgenden FHIR DocumentReference-Ressourcen verwendeten das Dokument-Profil ([Dokument DocumentReference](profiles-and-extensions.md#dokument-documentreference)), um die Ergebnisdokumente und die zugehörigen Dokumentreferenzen jedes Verarbeitungsschrittes der NLP-Pipeline darzustellen.

* [Amanda_Alzheimer.txt](DocumentReference-AmandaAlzheimerOriginalDokument.md)
* [De-ID.txt](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md)
* [Annotat.zip](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md)

Die folgenden FHIR-Ressourcen stellen die zum Beispiel zugehörigen FHIR Patienten- und Fall-Ressourcen dar. Diese FHIR-Ressourcen werden ausschließlich vom Originaldokument `Amanda_Alzheimer.txt` und der zugehörigen Dokumentreferenz verwendet.

* [Amanda Alzheimer](Patient-AmandaAlzheimer.md)
* [Einrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.md)
* [Abteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.md)
* [Versorgungsstellenkontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.md) 

Quelle: [GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)

-------

Alle Beispielinstanzen dieses Leitfadens sind in der [Artefakt-Übersicht](artifacts.md) aufgeführt und dort einzeln verlinkt.

Umfangreiche Beispiele, die das Profil und die Erweiterung gemeinsam veranschaulichen, sind auf Seite der Erweiterung zu finden ([NLP Processing Status Extension](profiles-and-extensions.md#nlp-processing-status)).

-------

