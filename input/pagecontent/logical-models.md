<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/logical-models.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- Content moved here from datasets-and-descriptions.md (Gate B: confirm the split); the
     narrative context (ART-DECOR source, dataset descriptions) stays on that page. -->
### Logical Models

The logical data model of the **Dokument** module describes the domain dataset independently of its concrete FHIR representation. The dataset context is described on [Datasets and Descriptions](datasets-and-descriptions.html).

{% include StructureDefinition-mii-lm-dokument-snapshot.xhtml %}

*Note that the Logical Model is aimed solely at representing the data elements and their descriptions. The data types and cardinalities used are not to be regarded as mandatory; they are conclusively determined by the FHIR profiles. For every element within the Logical Model there is a 1:1 mapping to an element of a concrete FHIR resource.*

A tabular overview of all elements together with their descriptions — and the mapping onto the profile — is available on the artifact page [MII LM Dokument](StructureDefinition-mii-lm-dokument.html) and in the mapping table on [Profiles and Extensions](profiles-and-extensions.html).
