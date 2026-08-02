<!-- markdownlint-disable MD041 -->
<!--
  Beispiele — DEUTSCHE Fassung (maßgeblich). Beispielbestand laut
  Artefakt-Inventar des Moduls (3 DocumentReference, 3 Encounter, 1 Patient);
  Kurzbeschreibungen aus
  implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md,
  Abschnitt "Beispiele". Serialisierungen zeigen die Beispiel-Artefaktseiten
  (keine Inline-Dumps, siehe Crosswalk). Englische Fassung:
  input/pagecontent/examples.md (maschinelle Übersetzung, Review an Gate C).
-->
Diese Seite führt die Beispielinstanzen des Moduls **Dokument** auf. Die
Beispiele beschreiben die Verarbeitung von Dokumenten der synthetischen
Patientin *Amanda Alzheimer* durch eine NLP-Pipeline; die zugehörige
Erläuterung befindet sich auf der Seite
[Profile und Extensions](profiles-and-extensions.html).

**DocumentReference** (Profil
[MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)):

- [AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.html)
  — Originaldokument `Amanda_Alzheimer.txt` (NLP-Verarbeitungsstatus
  `unprocessed`)
- [AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html)
  — de-identifiziertes Ergebnisdokument `De-ID.txt`
- [AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.html)
  — annotiertes Ergebnisdokument (Archiv `Annotat.zip`)

**Encounter** (zugehörige Fall-Ressourcen):

- [AmandaAlzheimerEinrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.html)
  — Einrichtungskontakt
- [AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.html)
  — Abteilungskontakt
- [AmandaAlzheimerVersorgungsstellenKontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html)
  — Versorgungsstellenkontakt

**Patient**:

- [AmandaAlzheimer](Patient-AmandaAlzheimer.html) — synthetische Patientin
  *Amanda Alzheimer*

{:.bg-warning}
**Nur synthetische Daten** — niemals echte oder realistisch wirkende
Patientendaten in Beispielen verwenden.

Quelle des synthetischen Ausgangsmaterials:
[GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)
