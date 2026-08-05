<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/logical-models.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW (Gate B): Datensatz page split per migration-spec §9 -->
<!-- Source: implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md -->
### Logical Models

To standardize the representation, the information model of the **Dokument**
module has been mapped as a FHIR Logical Model (for the dataset description see
[Datasets and Descriptions](datasets-and-descriptions.html)):

{% include StructureDefinition-mii-lm-dokument-snapshot.xhtml %}

*Note that the Logical Model aims purely at representing the data elements and
their descriptions. The data types and cardinalities used are not to be regarded
as mandatory. This is conclusively determined by the FHIR profiles. For every
element within the Logical Model there is a 1:1 mapping onto an element of a
concrete FHIR resource.*

The complete element descriptions are shown on the artifact page
[MII LM Dokument](StructureDefinition-mii-lm-dokument.html). The 1:1 mapping of
the Logical Model's elements onto the FHIR profiles is shown by the mapping
table on the page [Profiles and Extensions](profiles-and-extensions.html).
