<!-- markdownlint-disable MD041 -->
<!-- Source: Simplifier pages MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/
     Dokument-DocumentReference.page.md und NLP-Processing-Status-Extension.page.md,
     migriert auf das MII-KDS-Modul-Template. Englischer Spiegel:
     input/pagecontent/profiles-and-extensions.md (diese deutsche Seite ist massgeblich). -->
Diese Seite führt die FHIR-Profile und Extensions des Moduls **Dokument** auf.

### DocumentReference: MII PR Dokument Dokument

#### Übersicht


#### Beschreibung

Diese Profil beschreibt die Metadaten zu einem klinischen Dokument. Eine ausführliche Beschreibung und Empfehlungen zur Verwendung des Profils befinden sich in der Beschreibung des Moduls ([Beschreibung](guidance.html)).

#### Metadaten

Die Metadaten des Profils (Canonical, Status, Version, Basisdefinition) sind auf der generierten Artefaktseite [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html) einsehbar.

<!-- TODO:REVIEW: the source rendered a live FQL query here (StructureDefinition metadata: url, status, version, baseDefinition); content replaced by a static pointer -->

#### Inhalt

##### Darstellung

{% include StructureDefinition-mii-pr-dokument-dokument-snapshot.xhtml %}

##### XML

{% include StructureDefinition-mii-pr-dokument-dokument-xml-html.xhtml %}

##### JSON

{% include StructureDefinition-mii-pr-dokument-dokument-json-html.xhtml %}

##### Link

[MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)

##### Mapping Datensatz zu FHIR

Das Mapping der Datensatzelemente auf FHIR (Mapping `mii-map-dokument`, Zielelemente `DocumentReference.*`) ist im logischen Modell [MII LM Dokument](StructureDefinition-mii-lm-dokument.html) hinterlegt; siehe auch die Seite [Datensätze](datasets-and-descriptions.html).

<!-- TODO:REVIEW: the source rendered a live FQL query here (differential elements of the logical model mii-lm-dokument carrying mapping mii-map-dokument onto DocumentReference: short, definition, map); content replaced by a static pointer -->

##### Suchparameter

Folgende Suchparameter sind für diese Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

3. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?identifier=urn:ietf:rfc:3986|urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21```

    Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?status=current```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "doc-status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?doc-status=final```

    Anwendungshinweise: Weitere Informationen zur Suche nach "doc-status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

6. Der Suchparameter "type" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?type=http://dvmd.de/fhir/CodeSystem/kdl|AD010110```

    Anwendungshinweise: Weitere Informationen zur Suche nach "type" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

7. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?category=http://ihe-d.de/CodeSystems/IHEXDSclassCode|BRI```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

8. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?patient=Patient/AmandaAlzheimer```

    Anwendungshinweise: Weitere Informationen zur Suche nach "patient" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

9. Der Suchparameter "relation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?relation=http://hl7.org/fhir/document-relationship-type|transforms```

    Anwendungshinweise: Weitere Informationen zur Suche nach "relation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

10. Der Suchparameter "relatesto" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?relatesto=DocumentReference/AmandaAlzheimerOriginalDokument```

    Anwendungshinweise: Weitere Informationen zur Suche nach "relatesto" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

11. Der Suchparameter "relationship" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?relationship=http://hl7.org/fhir/document-relationship-type|transforms$DocumentReference/AmandaAlzheimerOriginalDokument```

    Anwendungshinweise: Weitere Informationen zur Suche nach "relationship" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Composite Search"](https://hl7.org/fhir/R4/search.html#composite).

12. Der Suchparameter "description" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?description:contains=Bericht```

    Anwendungshinweise: Weitere Informationen zur Suche nach "description" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

13. Der Suchparameter "security-label" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?security-label=http://terminology.hl7.org/CodeSystem/v3-Confidentiality|L```

    Anwendungshinweise: Weitere Informationen zur Suche nach "security-label" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

14. Der Suchparameter "contenttype" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?contenttype=urn:ietf:bcp:13|text/plain```

    Anwendungshinweise: Weitere Informationen zur Suche nach "contenttype" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

15. Der Suchparameter "language" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?language=urn:ietf:bcp:47|de-AT```

    Anwendungshinweise: Weitere Informationen zur Suche nach "language" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

16. Der Suchparameter "location" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?location=below:http://uk-musterstadt.de/document-management-system```

    Anwendungshinweise: Weitere Informationen zur Suche nach "location" finden sich in der [FHIR-Basisspezifikation - Abschnitt "URI Search"](https://hl7.org/fhir/R4/search.html#uri).

17. Der Suchparameter "creation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?creation=eq2025-06-23```

    Anwendungshinweise: Weitere Informationen zur Suche nach "creation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).

18. Der Suchparameter "format" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?format=http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode|urn:ihe:iti:xds:2017:mimeTypeSufficient```

    Anwendungshinweise: Weitere Informationen zur Suche nach "format" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

19. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?encounter=Encounter/AmandaAlzheimerEinrichtungskontakt```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

20. Der Suchparameter "event" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?event=http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung|E234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "event" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

21. Der Suchparameter "period" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?period=ge2028-01-24&period=le2028-02-06```

    Anwendungshinweise: Weitere Informationen zur Suche nach "period" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).

22. Der Suchparameter "facility" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?facility=http://ihe-d.de/CodeSystems/PatientBezogenenGesundheitsversorgung|KHS```

    Anwendungshinweise: Weitere Informationen zur Suche nach "facility" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

23. Der Suchparameter "setting" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?setting=http://ihe-d.de/CodeSystems/AerztlicheFachrichtungen|INTZ```

    Anwendungshinweise: Weitere Informationen zur Suche nach "setting" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

24. Der Suchparameter "nlp-processing-status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DocumentReference?nlp-processing-status=https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status|unprocessed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "nlp-processing-status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

#### Beispiele

Umfangreiche Beispiele, die das Profil und die Erweiterung gemeinsam veranschaulichen, sind auf Seite der Erweiterung zu finden ([MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)).

<!-- TODO:REVIEW: the source pagelink targeted the separate extension page; per the migration page map it now points at the generated artifact page, but the migrated extension content also lives on THIS page (section "Extension: NLP Processing Status" below) - an in-page anchor may be preferable -->
<!-- TODO:REVIEW: the source additionally contained a commented-out (never rendered) example block (NLP-pipeline narrative, image and example serializations, largely duplicating the extension section below, incl. 11 directives); it was NOT migrated -->

### Extension: NLP Processing Status

#### Übersicht


#### Beschreibung

Diese Erweiterung ermöglicht die Beschreibung von dem Bearbeitungsstatus eines Dokuments während eines NLP-Projektes. Die Prozessierung eine Dokumentes mit unstrukturierter Information erfolgt in einer Vielzahl von Einzelschritten. Durch diese Prozessketten entstehen Transformationen und Relationen von und zu dem Originaldokument. Die NLP Extension nutzt ein Codesystem um die vielfältigen Zwischenprodukte einer NLP-Bearbeitung koordiniert zu beschreiben und zu archivieren.
Das Codesystem der NLP-Extension besitzt zwei Hierarchien, welche in Level 1 und Level 2 zum Ausdruck kommen. Das Level 1 bezeichnet hierbei die übergeordneten Prozessstatus wie zum Beispiel "annotated". Das Level (Lvl) 2 dient dann zur Spezifikation von Lvl 1, beispielsweise Lvl1 "annotated" Lvl2 "deid", dieses Dokument wurde mit de-identifizierenden Annotationen versehen.

#### Metadaten

Die Metadaten der Extension (Name, Status, Version, Canonical, Basisdefinition) sind auf der generierten Artefaktseite [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html) einsehbar.

<!-- TODO:REVIEW: the source rendered a live FQL query here (StructureDefinition metadata: name, status, version, url, baseDefinition); content replaced by a static pointer -->

#### Inhalt

##### Darstellung

{% include StructureDefinition-mii-ex-dokument-nlp-processing-status-snapshot.xhtml %}

##### Beschreibung

Die Beschreibung der Extension sowie die Übersicht ihrer Must-Support-Elemente (Feldname, Kurzbeschreibung, Hinweise) sind auf der generierten Artefaktseite [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html) einsehbar.

<!-- TODO:REVIEW: the source rendered two live FQL queries here (the StructureDefinition description and a Must-Support element table: id, short, comment); content replaced by a static pointer -->

##### XML

{% include StructureDefinition-mii-ex-dokument-nlp-processing-status-xml-html.xhtml %}

##### JSON

{% include StructureDefinition-mii-ex-dokument-nlp-processing-status-json-html.xhtml %}

##### Link

[MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html)

Das von der Extension genutzte CodeSystem ist auf der Artefaktseite [MII VS Dokument NLP Processing Status](CodeSystem-mii-cs-dokument-nlp-processing-status.html) dargestellt.

<!-- TODO:REVIEW: the source rendered the whole CodeSystem resource mii-cs-dokument-nlp-processing-status inline here; replaced by a link to the generated artifact page. Note: the artifact's recorded title reads "MII VS ..." although the artifact is a CodeSystem - upstream naming kept as-is -->

#### Beispiele

Das folgende Beispiel illustriert die Verarbeitung eines *ärztlichen Entlassbriefes* der Patientin *Amanda Alzheimer* durch eine NLP-Pipeline (siehe Abbildung). Nach der Erschließung (`Ingestion`) des Originaldokuments `Amanda_Alzheimer.txt` wird eine Dokumentreferenz mit dem NLP-Verarbeitungsstatus `unprocessed` angelegt. Anschließend wird eine De-Identifikation (`De-Identification`) der Inhalte durchgeführt, um das Ergebnisdokument `De-ID.txt` datenschutzkonform für Forschungszwecke weiterverwenden zu können. Eine zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus `de-identified` und verweist auf Originaldokument mittels `transforms`. Abschließend werden die klinischen Inhalte annotiert, was unter Umständen mehrere Ergebnisdokumente produziert und sich als Archiv `Annotat.zip` zusammenfassen lassen. Die zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus als `de-identifier, curated, annotated` und erweitert `appends` die Dokumentreferenz des vorherigen NLP-Verarbeitungsschritts.

![NLP-Pipeline](NLP-Pipeline.png)

<!-- TODO:REVIEW: the source wrapped this image in an external link to the raw SVG at https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/NLP-Pipeline.svg; replaced by the local image per the migration rule -->

Bitte beachten: Mit dem Element "relates to" können Beziehungen zwischen den unterschiedlichen Referenzen eines Dokumentes hergestellt werden. Die Codebezeichnungen "transforms" und "appends" bezeichnen hierbei die Art der Beziehung:

transforms: dieses Dokument hat seinen Ursprung im relationierten Original aber wurde inhaltlich oder strukturell verändert. Zum Beispiel wenn ein Original Dokument im CDA-Format in ein Textformat übertragen wurde.

appends: diese Dokument basiert auf dem relationierte Dokument, enthält aber zusätzliche Informationen wie z.B. Annotation in Form von Metadaten erhalten.

Die folgenden FHIR DocumentReference-Ressourcen verwendeten das Dokument-Profil ([MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.html)), um die Ergebnisdokumente und die zugehörigen Dokumentreferenzen jedes Verarbeitungsschrittes der NLP-Pipeline darzustellen.

##### Amanda_Alzheimer.txt

{% include DocumentReference-AmandaAlzheimerOriginalDokument-json-html.xhtml %}

##### De-ID.txt

{% include DocumentReference-AmandaAlzheimerDeIdentifiziertesDokument-json-html.xhtml %}

##### Annotat.zip

{% include DocumentReference-AmandaAlzheimerAnnotiertesDokument-json-html.xhtml %}

Die folgenden FHIR-Ressourcen stellen die zum Beispiel zugehörigen FHIR Patienten- und Fall-Ressourcen dar. Diese FHIR-Ressourcen werden ausschließlich vom Originaldokument `Amanda_Alzheimer.txt` und der zugehörigen Dokumentreferenz verwendet.

##### Amanda Alzheimer

{% include Patient-AmandaAlzheimer-json-html.xhtml %}

##### Einrichtungskontakt

{% include Encounter-AmandaAlzheimerEinrichtungskontakt-json-html.xhtml %}

##### Abteilungskontakt

{% include Encounter-AmandaAlzheimerAbteilungskontakt-json-html.xhtml %}

##### Versorgungsstellenkontakt

{% include Encounter-AmandaAlzheimerVersorgungsstellenKontakt-json-html.xhtml %}

<!-- TODO:REVIEW: the source referenced this example as AmandaAlzheimerVersorgungsstellenkontakt (lowercase k); the artifact id per the artifact table is AmandaAlzheimerVersorgungsstellenKontakt (capital K) - the include follows the artifact table -->

Quelle: [GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130](https://doi.org/10.5281/zenodo.6539130)
