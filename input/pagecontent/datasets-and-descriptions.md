<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/datasets-and-descriptions.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- Source: implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md
     (Simplifier). The Simplifier front matter (topic: Datensatzbeschreibung; canonical:
     https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-lm-dokument)
     was dropped — it only resolved the FQL query there and identifies the Logical Model
     MII_LM_Dokument. German mirror: input/translations/de/pagecontent/datasets-and-descriptions.md
     — keep both in step. -->

The officially adopted version of the information model is available on [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01). To harmonize its representation, the information model has additionally been mapped as a FHIR Logical Model, rendered on the page [Logical Models](logical-models.html).
<!-- TODO:REVIEW (Gate B): LM rendering moved from this page to logical-models.md so the template's dedicated page is not an empty stub; confirm the split -->

*Note that the Logical Model is aimed solely at representing the data elements and their descriptions. The data types and cardinalities used are not to be regarded as mandatory; they are conclusively determined by the FHIR profiles. For every element within the Logical Model there is a 1:1 mapping to an element of a concrete FHIR resource.*

A tabular overview of all elements of the logical dataset together with their descriptions is available on the artifact page [MII LM Dokument](StructureDefinition-mii-lm-dokument.html).

<!-- TODO:REVIEW: the source rendered a live FQL query here; content replaced by a static pointer -->
<!-- TODO:REVIEW: the Simplifier source additionally contained two COMMENTED-OUT (never rendered
     there) FQL queries that would have produced the mapping tables "Datensatz / Mapping /
     Beschreibung" and "FHIR Logical Model / FHIR Ressource" from the element mapping
     mii-map-dokument of the differential elements; carried over as this note only, since the
     source did not render them — no table contents invented. -->
