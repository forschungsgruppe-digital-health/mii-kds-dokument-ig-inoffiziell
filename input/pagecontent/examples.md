<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/examples.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!--
  Examples — ENGLISH version (machine translation). Example set per the
  module's artifact inventory (3 DocumentReference, 3 Encounter, 1 Patient);
  short descriptions from
  implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md,
  section "Beispiele". Serializations are shown by the example artifact pages
  (no inline dumps, per the crosswalk). German (authoritative) version:
  input/translations/de/pagecontent/examples.md.
-->
This page lists the example instances of the **Dokument** module. The
examples describe the processing of documents of the synthetic patient
*Amanda Alzheimer* by an NLP pipeline; the accompanying explanation is on the
[Profiles and Extensions](profiles-and-extensions.html) page.

**DocumentReference** (profile
[MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)):

- [AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.html)
  — original document `Amanda_Alzheimer.txt` (NLP processing status
  `unprocessed`)
- [AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html)
  — de-identified result document `De-ID.txt`
- [AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.html)
  — annotated result document (archive `Annotat.zip`)

**Encounter** (associated encounter resources):

- [AmandaAlzheimerEinrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.html)
  — facility-level encounter (Einrichtungskontakt)
- [AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.html)
  — department-level encounter (Abteilungskontakt)
- [AmandaAlzheimerVersorgungsstellenKontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html)
  — care-unit-level encounter (Versorgungsstellenkontakt)

**Patient**:

- [AmandaAlzheimer](Patient-AmandaAlzheimer.html) — synthetic patient
  *Amanda Alzheimer*

{:.bg-warning}
**Synthetic data only** — never use real or realistic-looking patient data in
examples.

Source of the synthetic base material:
[GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)
