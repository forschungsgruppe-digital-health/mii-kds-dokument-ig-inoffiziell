<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW - MACHINE TRANSLATION.
     This English page was produced by the migration agent as a machine translation of
     input/translations/de/pagecontent/logical-models.md, which carries the module's ORIGINAL German
     narrative (source: implementation-guides/mii-ig-dokument-de/**, commit 9f76fed).
     English is the template's default language, so the direction is inverted: the German
     text is the source and this page is the translation (mii-ig-migration, Language).
     It has NOT been reviewed by a human. Gate C reviews it. Where a value is normative -
     element definitions, code displays, conformance verbs - the German wording is kept
     verbatim and marked as such rather than translated.
     No Liquid literal may appear in this file, including inside this comment. -->

### Logical models

The information model of the **Dokument** module is represented as the FHIR logical model
`mii-lm-dokument`. The corresponding dataset description with the element definitions is on
[Datasets and Descriptions](datasets-and-descriptions.html).

{% include StructureDefinition-mii-lm-dokument-snapshot.xhtml %}

*Note that the logical model aims solely at representing the data elements and their description.
The data types and cardinalities used are not to be regarded as binding; that is settled by the FHIR
profiles.*
