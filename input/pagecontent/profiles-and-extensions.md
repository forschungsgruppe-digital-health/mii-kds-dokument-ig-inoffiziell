<!-- TODO:REVIEW machine translation of input/translations/de/pagecontent/profiles-and-extensions.md — the German text is authoritative until Gate C signs this page off -->
<!-- markdownlint-disable MD041 -->
<!-- Source: Simplifier pages MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/
     Dokument-DocumentReference.page.md and NLP-Processing-Status-Extension.page.md,
     migrated onto the MII KDS module template. German mirror (authoritative):
     input/translations/de/pagecontent/profiles-and-extensions.md. -->
This page lists the FHIR profiles and extensions of the **Dokument** module.

### DocumentReference: MII PR Dokument Dokument

#### Overview


#### Description

This profile describes the metadata of a clinical document. A detailed description and recommendations on the use of the profile can be found in the description of the module ([Description](guidance.html)).

#### Metadata

The profile's metadata (canonical, status, version, base definition) can be viewed on the generated artifact page [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html).

<!-- TODO:REVIEW: the source rendered a live FQL query here (StructureDefinition metadata: url, status, version, baseDefinition); content replaced by a static pointer -->

#### Content

##### Rendering

{% include StructureDefinition-mii-pr-dokument-dokument-snapshot.xhtml %}

##### XML

{% include StructureDefinition-mii-pr-dokument-dokument-xml-html.xhtml %}

##### JSON

{% include StructureDefinition-mii-pr-dokument-dokument-json-html.xhtml %}

##### Link

[MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)

##### Mapping dataset to FHIR

The mapping of the dataset elements onto FHIR (mapping `mii-map-dokument`, target elements `DocumentReference.*`) is recorded in the logical model [MII LM Dokument](StructureDefinition-mii-lm-dokument.html); see also the page [Datasets](datasets-and-descriptions.html).

<!-- TODO:REVIEW: the source rendered a live FQL query here (differential elements of the logical model mii-lm-dokument carrying mapping mii-map-dokument onto DocumentReference: short, definition, map); content replaced by a static pointer -->

##### Search parameters

The following search parameters are relevant for this module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

3. The search parameter "identifier" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?identifier=urn:ietf:rfc:3986|urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21```

    Usage notes: Further information on searching for "identifier" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?status=current```

    Usage notes: Further information on searching for "status" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "doc-status" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?doc-status=final```

    Usage notes: Further information on searching for "doc-status" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

6. The search parameter "type" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?type=http://dvmd.de/fhir/CodeSystem/kdl|AD010110```

    Usage notes: Further information on searching for "type" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

7. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?category=http://ihe-d.de/CodeSystems/IHEXDSclassCode|BRI```

    Usage notes: Further information on searching for "category" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

8. The search parameter "patient" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?patient=Patient/AmandaAlzheimer```

    Usage notes: Further information on searching for "patient" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

9. The search parameter "relation" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?relation=http://hl7.org/fhir/document-relationship-type|transforms```

    Usage notes: Further information on searching for "relation" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

10. The search parameter "relatesto" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?relatesto=DocumentReference/AmandaAlzheimerOriginalDokument```

    Usage notes: Further information on searching for "relatesto" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

11. The search parameter "relationship" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?relationship=http://hl7.org/fhir/document-relationship-type|transforms$DocumentReference/AmandaAlzheimerOriginalDokument```

    Usage notes: Further information on searching for "relationship" can be found in the [FHIR base specification - section "Composite Search"](https://hl7.org/fhir/R4/search.html#composite).

12. The search parameter "description" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?description:contains=Bericht```

    Usage notes: Further information on searching for "description" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

13. The search parameter "security-label" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?security-label=http://terminology.hl7.org/CodeSystem/v3-Confidentiality|L```

    Usage notes: Further information on searching for "security-label" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

14. The search parameter "contenttype" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?contenttype=urn:ietf:bcp:13|text/plain```

    Usage notes: Further information on searching for "contenttype" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

15. The search parameter "language" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?language=urn:ietf:bcp:47|de-AT```

    Usage notes: Further information on searching for "language" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

16. The search parameter "location" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?location=below:http://uk-musterstadt.de/document-management-system```

    Usage notes: Further information on searching for "location" can be found in the [FHIR base specification - section "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

17. The search parameter "creation" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?creation=eq2025-06-23```

    Usage notes: Further information on searching for "creation" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).

18. The search parameter "format" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?format=http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode|urn:ihe:iti:xds:2017:mimeTypeSufficient```

    Usage notes: Further information on searching for "format" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

19. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?encounter=Encounter/AmandaAlzheimerEinrichtungskontakt```

    Usage notes: Further information on searching for "encounter" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

20. The search parameter "event" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?event=http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung|E234```

    Usage notes: Further information on searching for "event" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

21. The search parameter "period" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?period=ge2028-01-24&period=le2028-02-06```

    Usage notes: Further information on searching for "period" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).

22. The search parameter "facility" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?facility=http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung|KHS```

    Usage notes: Further information on searching for "facility" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

23. The search parameter "setting" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?setting=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen|INTZ```

    Usage notes: Further information on searching for "setting" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

24. The search parameter "nlp-processing-status" MUST be supported:

    Examples:

    ```GET [base]/DocumentReference?nlp-processing-status=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status|unprocessed```

    Usage notes: Further information on searching for "nlp-processing-status" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

#### Examples

Extensive examples illustrating the profile and the extension together can be found on the page of the extension ([MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)).

<!-- TODO:REVIEW: the source pagelink targeted the separate extension page; per the migration page map it now points at the generated artifact page, but the migrated extension content also lives on THIS page (section "Extension: NLP Processing Status" below) - an in-page anchor may be preferable -->
<!-- TODO:REVIEW: the source additionally contained a commented-out (never rendered) example block (NLP-pipeline narrative, image and example serializations, largely duplicating the extension section below, incl. 11 directives); it was NOT migrated -->

### Extension: NLP Processing Status

#### Overview


#### Description

This extension makes it possible to describe the processing status of a document during an NLP project. The processing of a document containing unstructured information takes place in a multitude of individual steps. These processing chains give rise to transformations of, and relations to and from, the original document. The NLP extension uses a code system to describe and archive the manifold intermediate products of NLP processing in a coordinated way.
The code system of the NLP extension has two hierarchies, expressed as Level 1 and Level 2. Level 1 denotes the superordinate process status, for example "annotated". Level (Lvl) 2 then serves to specify Lvl 1 — for example Lvl 1 "annotated", Lvl 2 "deid": this document was provided with de-identifying annotations.

#### Metadata

The extension's metadata (name, status, version, canonical, base definition) can be viewed on the generated artifact page [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html).

<!-- TODO:REVIEW: the source rendered a live FQL query here (StructureDefinition metadata: name, status, version, url, baseDefinition); content replaced by a static pointer -->

#### Content

##### Rendering

{% include StructureDefinition-mii-ex-dokument-nlp-processing-status-snapshot.xhtml %}

##### Description

The description of the extension as well as the overview of its Must-Support elements (field name, short description, comments) can be viewed on the generated artifact page [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html).

<!-- TODO:REVIEW: the source rendered two live FQL queries here (the StructureDefinition description and a Must-Support element table: id, short, comment); content replaced by a static pointer -->

##### XML

{% include StructureDefinition-mii-ex-dokument-nlp-processing-status-xml-html.xhtml %}

##### JSON

{% include StructureDefinition-mii-ex-dokument-nlp-processing-status-json-html.xhtml %}

##### Link

[MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)

The CodeSystem used by the extension is shown on the artifact page [MII VS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html).

<!-- TODO:REVIEW: the source rendered the whole CodeSystem resource mii-cs-dokument-nlp-processing-status inline here; replaced by a link to the generated artifact page. Note: the artifact's recorded title reads "MII VS ..." although the artifact is a CodeSystem - upstream naming kept as-is -->

#### Examples

The following example illustrates the processing of a *physician's discharge letter* of the patient *Amanda Alzheimer* by an NLP pipeline (see figure). After ingestion (`Ingestion`) of the original document `Amanda_Alzheimer.txt`, a document reference with the NLP processing status `unprocessed` is created. Subsequently, a de-identification (`De-Identification`) of the contents is performed so that the resulting document `De-ID.txt` can be reused for research purposes in compliance with data protection. An associated document reference marks the NLP processing status `de-identified` and points to the original document via `transforms`. Finally, the clinical contents are annotated, which may produce several resulting documents that can be bundled into an archive `Annotat.zip`. The associated document reference marks the NLP processing status as `de-identifier, curated, annotated` and extends (`appends`) the document reference of the previous NLP processing step.

![NLP-Pipeline](NLP-Pipeline.png)

<!-- TODO:REVIEW: the source wrapped this image in an external link to the raw SVG at https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/NLP-Pipeline.svg; replaced by the local image per the migration rule -->

Please note: With the element "relates to", relationships between the different references of a document can be established. The code designations "transforms" and "appends" denote the kind of relationship:

transforms: this document originates from the related original but was modified in content or structure. For example, when an original document in CDA format was transferred into a text format.

appends: this document is based on the related document but contains additional information, e.g. annotations received in the form of metadata.

The following FHIR DocumentReference resources used the Dokument profile ([MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)) to represent the resulting documents and the associated document references of each processing step of the NLP pipeline.

##### Amanda_Alzheimer.txt

{% include DocumentReference-AmandaAlzheimerOriginalDokument-json-html.xhtml %}

##### De-ID.txt

{% include DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument-json-html.xhtml %}

##### Annotat.zip

{% include DocumentReference-AmandaAlzheimerAnnotiertesDokument-json-html.xhtml %}

The following FHIR resources represent the FHIR patient and encounter resources belonging to the example. These FHIR resources are used exclusively by the original document `Amanda_Alzheimer.txt` and its associated document reference.

##### Amanda Alzheimer

{% include Patient-AmandaAlzheimer-json-html.xhtml %}

##### Einrichtungskontakt

{% include Encounter-AmandaAlzheimerEinrichtungskontakt-json-html.xhtml %}

##### Abteilungskontakt

{% include Encounter-AmandaAlzheimerAbteilungskontakt-json-html.xhtml %}

##### Versorgungsstellenkontakt

{% include Encounter-AmandaAlzheimerVersorgungsstellenKontakt-json-html.xhtml %}

<!-- TODO:REVIEW: the source referenced this example as AmandaAlzheimerVersorgungsstellenkontakt (lowercase k); the artifact id per the artifact table is AmandaAlzheimerVersorgungsstellenKontakt (capital K) - the include follows the artifact table -->

Source: [GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)
