# Examples - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* **Examples**

## Examples

This page lists the example instances of the **Dokument** module. The examples describe the processing of documents of the synthetic patient **Amanda Alzheimer** by an NLP pipeline; the accompanying explanation is on the [Profiles and Extensions](profiles-and-extensions.md) page.

**DocumentReference** (profile [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md)):

* [AmandaAlzheimerOriginalDokument](DocumentReference-AmandaAlzheimerOriginalDokument.md) — original document `Amanda_Alzheimer.txt` (NLP processing status `unprocessed`)
* [AmandaAlzheimerDeIdentifiziertesDokument](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.md) — de-identified result document `De-ID.txt`
* [AmandaAlzheimerAnnotiertesDokument](DocumentReference-AmandaAlzheimerAnnotiertesDokument.md) — annotated result document (archive `Annotat.zip`)

**Encounter** (associated encounter resources):

* [AmandaAlzheimerEinrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.md) — facility-level encounter (Einrichtungskontakt)
* [AmandaAlzheimerAbteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.md) — department-level encounter (Abteilungskontakt)
* [AmandaAlzheimerVersorgungsstellenKontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.md) — care-unit-level encounter (Versorgungsstellenkontakt)

**Patient**:

* [AmandaAlzheimer](Patient-AmandaAlzheimer.md) — synthetic patient **Amanda Alzheimer**

**Synthetic data only** — never use real or realistic-looking patient data in examples.

Source of the synthetic base material: [GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)

