<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW - MACHINE TRANSLATION.
     This English page was produced by the migration agent as a machine translation of
     input/translations/de/pagecontent/profiles-and-extensions.md, which carries the module's ORIGINAL German
     narrative (source: implementation-guides/mii-ig-dokument-de/**, commit 9f76fed).
     English is the template's default language, so the direction is inverted: the German
     text is the source and this page is the translation (mii-ig-migration, Language).
     It has NOT been reviewed by a human. Gate C reviews it. Where a value is normative -
     element definitions, code displays, conformance verbs - the German wording is kept
     verbatim and marked as such rather than translated.
     No Liquid literal may appear in this file, including inside this comment. -->

### Profiles and extensions

This module defines one profile and one extension:

| Artefact | Type | Page |
| --- | --- | --- |
| `mii-pr-dokument-dokument` | Profile on `DocumentReference` | [StructureDefinition-mii-pr-dokument-dokument](StructureDefinition-mii-pr-dokument-dokument.html) |
| `mii-ex-dokument-nlp-processing-status` | Extension | [StructureDefinition-mii-ex-dokument-nlp-processing-status](StructureDefinition-mii-ex-dokument-nlp-processing-status.html) |

#### Naming conventions for FHIR resources in the Medical Informatics Initiative

Please check the [naming conventions page](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII)
in the core dataset wiki for newer versions.

> TODO:REVIEW - the module-name table and the naming rules below are reproduced from the German
> source page unchanged. They are the MII's agreed German module designations, so the migration
> does not translate them; Gate C decides whether an English rendering is added.

Für bestehende Module sind folgende Bezeichnungen abgestimmt:

| Vollständiger Modulname                | Technischer Modulname | Abkürzung       |
| -------------------------------------- | --------------------- | --------------- |
|                                        | **url**               | **title/ name/ id** |
| Modul Diagnose                         | modul-diagnose        | Diagnose        |
| Modul Laborbefund                      | modul-labor           | Labor           |
| Modul Prozedur                         | modul-prozedur        | Prozedur        |
| Modul Medikation                       | modul-medikation      | Medikation      |
| Modul Person                           | modul-person          | Person          |
| Modul Fall                             | modul-fall            | Fall            |
| Modul Consent                          | modul-consent         | Consent         |
| Modul Mikrobiologie                    | modul-mikrobio        | Mikrobio        |
| Modul Symptom/klinischer Phänotyp      | modul-symptom         | Symptom         |
| Modul Bildgebende Verfahren            | modul-bildgebung      | Bildgebung      |
| Modul Intensivmedizin                  | modul-icu             | ICU             |
| Modul Medizinisches Forschungsvorhaben | modul-studie          | Studie          |
| Modul Onkologie                        | modul-onko            | Onko            |
| Modul Pathologiebefund                 | modul-patho           | Patho           |
| Modul Molekulargenetischer Befund      | modul-molgen          | MolGen          |
| Modul Bioprobendaten                   | modul-biobank         | Biobank         |
| Modul Strukturdaten                    | modul-struktur        | Struktur        |
| Modul Seltene Erkrankungen             | modul-seltene         | Seltene         |
| Modul Patient-reported Outcomes        | modul-pros            | PROs            | 
| Modul Molekulares Tumorboard           | modul-mtb             | MTB             |
| Modul Lungenfunktion                   | modul-lufu            | LuFu            |
| Modul Schlafmedizinischer Befund       | *folgt*               | *folgt*         |
| Modul Dokument                         | modul-dokument        | Dokument        |

Für zukünftig neu hinzukommende Module wird eine deutschsprachige Benennung im Singular bevorzugt. 

### Präfixe Ressourcentypen 
* PR: StructureDefinition (Profile) 
* EX: StructureDefinition (Extension) 
* LM: Logical Model 
* VS: ValueSet 
* CS: CodeSystem 
* CM: ConceptMap 
* SM: StructureMap 
* NS: NamingSystem 
* SP: SearchParameter 
* CPS: CapabilityStatement 
* OD: OperationDefinition 
* IG: ImplementationGuide 
* QST: Questionnaire
* OBSDEF: ObservationDefinition 
* MSR: Measure
* EXA: Example 

### Sprache
Die bevorzugte Sprache für die Beschreibung, den Titel, sowie den Namen einer Conformance-Ressource ist Deutsch. Als Alternative kann Englisch verwendet werden, falls dies von dem jeweiligen Kümmererteam bevorzugt wird. Falls Deutsch als Sprache zur Dokumentation einer Ressource verwendet wird, muss auf den Elementen “description”, “name” und “title” eine Translation-Extension (siehe http://hl7.org/fhir/extensions/StructureDefinition-translation.html) vorhanden sein. Der Inhalt der Extension ist im englischsprachigen Implementierungsleitfaden anzuzeigen. 

### Element **title** 
(eine menschenlesbare Bezeichnung der Ressource) 
* Format: Leerzeichen und Klammern etc. erlaubt 
* Struktur: MII `<Präfix Ressourcentyp>` `<Abkürzung Modulname>` `<Beschreibung Inhalt>` (`<zusätzliche Informationen>`)  
Beispiel CodeSystem: 
`MII CS Mikrobio Mikrobiologische Erreger (Bakterien, Pilze)`
* Für ValueSets: zusätzlich [`<verwendete Terminologie (z.B. Wert aus ValueSet.compose.include.system)>`]. Bei namenslosen Terminologien weglassen (oder “Lokal”). 
Beispiel: MII VS Mikrobio Mikrobiologische Erreger (Bakterien, Pilze) [SNOMED CT]  
* Für ConceptMaps: zusätzlich [`<Quellterminologie> -> <Zielterminologie>`] 
Beispiel: `MII CM Mikrobio Mikrobiologische Erreger (Bakterien, Pilze) [LOINC -> SNOMED CT]`
Hinweis: Für den Sonderfall, bei dem ein VS oder eine CM mehrere Terminologien referenziert, sind diese mit Komma unterteilt aufzuführen 

### Element **name**
(eine maschinell verarbeitbare Bezeichnung der Ressource) 
* Format: Upper_Snake_Case 
Hinweis: Der FHIR-Standard ist CamelCase2, aber wegen besserer Menschenlesbarkeit, insbesondere von Abkürzungen, wird im Rahmen der MII davon abgewichen. 
* Struktur: entsprechend des title, aber ohne Leer- und Sonderzeichen 
* Beispiel: `MII_VS_Mikrobio_Mikrobiologische_Erreger_Bakterien_Pilze_SNOMEDCT`

### Element **id** 
(logischer Identifier der Ressource) 
* Struktur: entsprechend .name, formatiert im kebab-case (lower case und “_” durch “-” ersetzt) 
* Begrenzung auf 64 Zeichen: Bei Bedarf abkürzen 
* Beispiel: `mii-vs-mikrobio-mikrobiologische-erreger-snomedct` 

### Element **url** 
(kanonische URL der Ressource) 
* Struktur: `https://www.medizininformatik-initiative.de/fhir/<technischer Modulname>/<Ressourcentyp>/<id der Ressource>`
* `<technischer Modulname>`: Technischer Name des Moduls laut obiger Tabelle 
* `<id-…>`: wie oben spezifiziert 
* Regeln für die Canonical URL sollen zunächst nur bei Neuerstellung von Ressourcen angewendet werden. Etablierte URLs von veröffentlichten Artefakten sollen nachträglich nicht geändert werden.
* Beispiel: `https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikrobiologische-erreger-snomedct` 

### Referenzen: 
* HL7 International: Guide to Designing (FHIR) Resources: https://confluence.hl7.org/pages/viewpage.action?pageId=35718826 
* HL7 International: Naming Rules & Guidelines: [https://confluence.hl7.org/pages/viewpage.action?pageId=35718826#GuidetoDesigningResources-NamingRules&Guidelines](https://confluence.hl7.org/pages/viewpage.action?pageId=35718826%22%20l%20%22GuidetoDesigningResources-NamingRules&Guidelines) 
* HL7 International: Multi-Language support in FHIR (Localization/Internationalization): http://hl7.org/fhir/languages.html

<a name="dokument-documentreference"> </a>

<a name="dokument-documentreference"> </a>

#### Dokument: DocumentReference

##### Description

This profile describes the metadata of a clinical document. A detailed description and
recommendations for using the profile are in the description of the module
([Home](index.html)).

##### Content

{% include structure-tabs.html artifact="StructureDefinition-mii-pr-dokument-dokument" %}

> TODO:REVIEW - two FQL query blocks stood here in the Simplifier source (profile metadata, and
> the dataset-to-FHIR mapping). The metadata are rendered by the generated artefact page above;
> the dataset-to-FHIR mapping is the generated table on
> [Datasets and Descriptions](datasets-and-descriptions.html). See the migration report.

The search parameters of this module are on
[Search Parameters and Operations](search-parameters-and-operations.html), the example instances on
[Examples](examples.html).

<a name="nlp-processing-status"> </a>

#### NLP Processing Status: Extension

##### Description

This extension allows the processing status of a document during an NLP project to be described.
Processing a document carrying unstructured information happens in a large number of individual
steps. Those processing chains produce transformations of, and relations to, the original document.
The NLP extension uses a code system to describe and archive the many intermediate products of NLP
processing in a coordinated way.

The code system of the NLP extension has two hierarchies, expressed as level 1 and level 2. Level 1
denotes the superordinate processing status, for example "annotated". Level 2 then specifies level 1
- for example level 1 "annotated" with level 2 "deid" means that the document was given
de-identifying annotations.

##### Content

{% include structure-tabs.html artifact="StructureDefinition-mii-ex-dokument-nlp-processing-status" id="nlp" %}

[mii-cs-dokument-nlp-processing-status](CodeSystem-mii-cs-dokument-nlp-processing-status.html)

> TODO:REVIEW - an FQL query block (extension metadata) stood here in the Simplifier source; the
> metadata are rendered by the generated artefact page above. See the migration report.

The example instances are on [Examples](examples.html).
