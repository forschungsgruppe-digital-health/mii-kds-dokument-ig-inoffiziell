<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/search-parameters-and-operations.md.
     German mirror: input/translations/de/pagecontent/search-parameters-and-operations.md. -->
### Search Parameters and Operations

Module-specific FHIR search parameters and operations of the **Dokument** module, where defined.

The following search parameters MUST be supported for the profile [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html), also in combination:

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

The profile itself is documented on [Profiles and Extensions](profiles-and-extensions.html). The module defines no custom operations. <!-- TODO:REVIEW (Gate B): section moved here from the source's profile page per the template page set -->
