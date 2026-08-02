# Examples - MII IG Dokument v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Beispiele**

## Examples

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Diese Seite führt die Beispielinstanzen des Moduls **Dokument** auf. Die Beispiele beschreiben die Verarbeitung von Dokumenten der synthetischen Patientin **Amanda Alzheimer** durch eine NLP-Pipeline; die zugehörige Erläuterung befindet sich auf der Seite [Profile und Extensions](profiles-and-extensions.md).

**DocumentReference** (Profil [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md)):

* [AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md) — Originaldokument `Amanda_Alzheimer.txt` (NLP-Verarbeitungsstatus `unprocessed`)
* [AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md) — de-identifiziertes Ergebnisdokument `De-ID.txt`
* [AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md) — annotiertes Ergebnisdokument (Archiv `Annotat.zip`)

**Encounter** (zugehörige Fall-Ressourcen):

* [AmandaAlzheimerEinrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.md) — Einrichtungskontakt
* [AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.md) — Abteilungskontakt
* [AmandaAlzheimerVersorgungsstellenKontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.md) — Versorgungsstellenkontakt

**Patient**:

* [AmandaAlzheimer](Patient-AmandaAlzheimer.md) — synthetische Patientin **Amanda Alzheimer**

**Nur synthetische Daten** — niemals echte oder realistisch wirkende Patientendaten in Beispielen verwenden.

Quelle des synthetischen Ausgangsmaterials: [GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)

