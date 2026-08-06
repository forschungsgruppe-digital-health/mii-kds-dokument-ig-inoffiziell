<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW - MACHINE TRANSLATION.
     This English page was produced by the migration agent as a machine translation of
     input/translations/de/pagecontent/search-parameters-and-operations.md, which carries the module's ORIGINAL German
     narrative (source: implementation-guides/mii-ig-dokument-de/**, commit 9f76fed).
     English is the template's default language, so the direction is inverted: the German
     text is the source and this page is the translation (mii-ig-migration, Language).
     It has NOT been reviewed by a human. Gate C reviews it. Where a value is normative -
     element definitions, code displays, conformance verbs - the German wording is kept
     verbatim and marked as such rather than translated.
     No Liquid literal may appear in this file, including inside this comment. -->

### Search parameters and operations

The search parameters of this module are defined in the MII KDS module Meta and summarised here
for the profile [mii-pr-dokument-dokument](StructureDefinition-mii-pr-dokument-dokument.html).
The profile description is on
[Profiles and Extensions](profiles-and-extensions.html#dokument-documentreference).

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?_id=12345```

    Implementation notes: further information on searching by "_id" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

2. The search parameter "_profile" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument```

    Implementation notes: further information on searching by "_profile" is in the [FHIR core specification, section "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

3. The search parameter "identifier" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?identifier=urn:ietf:rfc:3986|urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21```

    Implementation notes: further information on searching by "identifier" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "status" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?status=current```

    Implementation notes: further information on searching by "status" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "doc-status" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?doc-status=final```

    Implementation notes: further information on searching by "doc-status" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

6. The search parameter "type" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?type=http://dvmd.de/fhir/CodeSystem/kdl|AD010110```

    Implementation notes: further information on searching by "type" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

7. The search parameter "category" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?category=http://ihe-d.de/CodeSystems/IHEXDSclassCode|BRI```

    Implementation notes: further information on searching by "category" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

8. The search parameter "patient" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?patient=Patient/AmandaAlzheimer```

    Implementation notes: further information on searching by "patient" is in the [FHIR core specification, section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

9. The search parameter "relation" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?relation=http://hl7.org/fhir/document-relationship-type|transforms```

    Implementation notes: further information on searching by "relation" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

10. The search parameter "relatesto" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?relatesto=DocumentReference/AmandaAlzheimerOriginalDokument```

    Implementation notes: further information on searching by "relatesto" is in the [FHIR core specification, section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

11. The search parameter "relationship" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?relationship=http://hl7.org/fhir/document-relationship-type|transforms$DocumentReference/AmandaAlzheimerOriginalDokument```

    Implementation notes: further information on searching by "relationship" is in the [FHIR core specification, section "Composite Search"](https://hl7.org/fhir/R4/search.html#composite).

12. The search parameter "description" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?description:contains=Bericht```

    Implementation notes: further information on searching by "description" is in the [FHIR core specification, section "String Search"](http://hl7.org/fhir/R4/search.html#string).

13. The search parameter "security-label" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?security-label=http://terminology.hl7.org/CodeSystem/v3-Confidentiality|L```

    Implementation notes: further information on searching by "security-label" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

14. The search parameter "contenttype" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?contenttype=urn:ietf:bcp:13|text/plain```

    Implementation notes: further information on searching by "contenttype" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

15. The search parameter "language" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?language=urn:ietf:bcp:47|de-AT```

    Implementation notes: further information on searching by "language" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

16. The search parameter "location" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?location=below:http://uk-musterstadt.de/document-management-system```

    Implementation notes: further information on searching by "location" is in the [FHIR core specification, section "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

17. The search parameter "creation" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?creation=eq2025-06-23```

    Implementation notes: further information on searching by "creation" is in the [FHIR core specification, section "Date Search"](https://hl7.org/fhir/R4/search.html#date).

18. The search parameter "format" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?format=http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode|urn:ihe:iti:xds:2017:mimeTypeSufficient```

    Implementation notes: further information on searching by "format" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

19. The search parameter "encounter" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?encounter=Encounter/AmandaAlzheimerEinrichtungskontakt```

    Implementation notes: further information on searching by "encounter" is in the [FHIR core specification, section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

20. The search parameter "event" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?event=http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung|E234```

    Implementation notes: further information on searching by "event" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

21. The search parameter "period" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?period=ge2028-01-24&period=le2028-02-06```

    Implementation notes: further information on searching by "period" is in the [FHIR core specification, section "Date Search"](https://hl7.org/fhir/R4/search.html#date).

22. The search parameter "facility" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?facility=http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung|KHS```

    Implementation notes: further information on searching by "facility" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

23. The search parameter "setting" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?setting=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen|INTZ```

    Implementation notes: further information on searching by "setting" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

24. The search parameter "nlp-processing-status" SHALL be supported:

    Examples:

    ```GET [base]/DocumentReference?nlp-processing-status=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status|unprocessed```

    Implementation notes: further information on searching by "nlp-processing-status" is in the [FHIR core specification, section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

---
