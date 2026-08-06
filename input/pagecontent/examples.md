<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW - MACHINE TRANSLATION.
     This English page was produced by the migration agent as a machine translation of
     input/translations/de/pagecontent/examples.md, which carries the module's ORIGINAL German
     narrative (source: implementation-guides/mii-ig-dokument-de/**, commit 9f76fed).
     English is the template's default language, so the direction is inverted: the German
     text is the source and this page is the translation (mii-ig-migration, Language).
     It has NOT been reviewed by a human. Gate C reviews it. Where a value is normative -
     element definitions, code displays, conformance verbs - the German wording is kept
     verbatim and marked as such rather than translated.
     No Liquid literal may appear in this file, including inside this comment. -->

### Examples

The following example illustrates the processing of a *physician's discharge letter* of the patient
*Amanda Alzheimer* by an NLP pipeline (see the figure). After ingestion of the original document
`Amanda_Alzheimer.txt`, a document reference with the NLP processing status `unprocessed` is
created. De-identification of the content then produces the result document `De-ID.txt`, so that it
can be re-used for research purposes in a data-protection-compliant way. Its document reference
carries the NLP processing status `de-identified` and points at the original document through
`transforms`. Finally the clinical content is annotated, which may produce several result documents
that can be combined into the archive `Annotat.zip`. Its document reference marks the NLP processing
status as `de-identified, curated, annotated` and `appends` the document reference of the preceding
NLP processing step.

![NLP-Pipeline](NLP-Pipeline.png)

The following FHIR resources represent the documents of the example:

- [Amanda_Alzheimer.txt](DocumentReference-AmandaAlzheimerOriginalDokument.html)
- [De-ID.txt](DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument.html)
- [Annotat.zip](DocumentReference-AmandaAlzheimerAnnotiertesDokument.html)

The following FHIR resources are the patient and encounter resources belonging to the example. They
are used only by the original document `Amanda_Alzheimer.txt` and its document reference.

- [Amanda Alzheimer](Patient-AmandaAlzheimer.html)
- [Einrichtungskontakt](Encounter-AmandaAlzheimerEinrichtungskontakt.html)
- [Abteilungskontakt](Encounter-AmandaAlzheimerAbteilungskontakt.html)
- [Versorgungsstellenkontakt](Encounter-AmandaAlzheimerVersorgungsstellenKontakt.html)

Source: <a href="https://doi.org/10.5281/zenodo.6539130">GraSCCo dataset, DOI (Zenodo): 10.5281/zenodo.6539130</a>

All example instances of this guide are listed in the [Artifacts Summary](artifacts.html) and are
linked individually there.
