<!-- markdownlint-disable MD041 -->
<!-- MIGRATED CONTENT — provenance:
     implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md (Abschnitt „Beispiele“)
     implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md (Abschnitt „Beispiele“)
     source commit 9f76fed80cb810c0f39a263d0162c9c2e64abc1e, migrated 2026-08-06.
     Simplifier directives were translated per the mii-ig-migration FQL crosswalk.
     No Liquid literal may appear in this file, including inside this comment. -->

### Beispiele

Das folgende Beispiel illustriert die Verarbeitung eines *ärztlichen Entlassbriefes* der Patientin *Amanda Alzheimer* durch eine NLP-Pipeline (siehe Abbildung). Nach der Erschließung (`Ingestion`) des Originaldokuments `Amanda_Alzheimer.txt` wird eine Dokumentreferenz mit dem NLP-Verarbeitungsstatus `unprocessed` angelegt. Anschließend wird eine De-Identifikation (`De-Identification`) der Inhalte durchgeführt, um das Ergebnisdokument `De-ID.txt` datenschutzkonform für Forschungszwecke weiterverwenden zu können. Eine zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus `de-identified` und verweist auf Originaldokument mittels `transforms`. Abschließend werden die klinischen Inhalte annotiert, was unter Umständen mehrere Ergebnisdokumente produziert und sich als Archiv `Annotat.zip` zusammenfassen lassen. Die zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus als `de-identifier, curated, annotated` und erweitert `appends` die Dokumentreferenz des vorherigen NLP-Verarbeitungsschritts.

<div style="text-align: center; margin-top: 2em; margin-bottom: 2em; width: 700px">
<a target="_blank" href="https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/NLP-Pipeline.svg">![NLP-Pipeline](NLP-Pipeline.png)
</a>
</div>

Bitte beachten: Mit dem Element "relates to" können Beziehungen zwischen den unterschiedlichen Referenzen eines Dokumentes hergestellt werden. Die Codebezeichnungen "transforms" und "appends" bezeichnen hierbei die Art der Beziehung:

transforms: dieses Dokument hat seinen Ursprung im relationierten Original aber wurde inhaltlich oder strukturell verändert. Zum Beispiel wenn ein Original Dokument im CDA-Format in ein Textformat übertragen wurde. 

appends: diese Dokument basiert auf dem relationierte Dokument, enthält aber zusätzliche Informationen wie z.B. Annotation in Form von Metadaten erhalten.

Die folgenden FHIR DocumentReference-Ressourcen verwendeten das Dokument-Profil ([Dokument DocumentReference](profiles-and-extensions.html#dokument-documentreference)), um die Ergebnisdokumente und die zugehörigen Dokumentreferenzen jedes Verarbeitungsschrittes der NLP-Pipeline darzustellen.

- [Amanda_Alzheimer.txt](DocumentReference-AmandaAlzheimerOriginalDokument.html)
- [De-ID.txt](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html)
- [Annotat.zip](DocumentReference-AmandaAlzheimerAnnotiertesDokument.html)

Die folgenden FHIR-Ressourcen stellen die zum Beispiel zugehörigen FHIR Patienten- und Fall-Ressourcen dar. Diese FHIR-Ressourcen werden ausschließlich vom Originaldokument `Amanda_Alzheimer.txt` und der zugehörigen Dokumentreferenz verwendet.

- [Amanda Alzheimer](Patient-AmandaAlzheimer.html)
- [Einrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.html)
- [Abteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.html)
- [Versorgungsstellenkontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html)
<!-- TODO:REVIEW - the Simplifier source names this instance 'AmandaAlzheimerVersorgungsstellenkontakt'
     (lower-case k); the instance actually published by the module is
     'AmandaAlzheimerVersorgungsstellenKontakt'. The link is pointed at the real artefact page.
     The source's spelling is NOT changed anywhere else. -->

Quelle: <a href="https://doi.org/10.5281/zenodo.6539130">GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130</a>

---

Alle Beispielinstanzen dieses Leitfadens sind in der
[Artefakt-Übersicht](artifacts.html) aufgeführt und dort einzeln verlinkt.

Umfangreiche Beispiele, die das Profil und die Erweiterung gemeinsam veranschaulichen, sind auf Seite der Erweiterung zu finden ([NLP Processing Status Extension](profiles-and-extensions.html#nlp-processing-status)).

---
