# Profile und Extensions - MII IG Dokument v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Profile und Extensions**

## Profile und Extensions

### Profile und Extensions

Dieses Modul definiert ein Profil und eine Extension:

| | | |
| :--- | :--- | :--- |
| `mii-pr-dokument-dokument` | Profil auf`DocumentReference` | [StructureDefinition-mii-pr-dokument-dokument](StructureDefinition-mii-pr-dokument-dokument.md) |
| `mii-ex-dokument-nlp-processing-status` | Extension | [StructureDefinition-mii-ex-dokument-nlp-processing-status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md) |

# FHIR Profile

Einleitung FHIR Profile

## Namenskonventionen für die Erstellung von FHIR-Ressourcen in der Medizininformatik-Initiative

Bitte die [Seite der Namenskonventionen](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII) im Kerndatensatz Wiki auf aktuellere Versionen prüfen.

### Allgemeines

* Möglichst eindeutige und prägnante Beschreibung des Inhalts
* Für CodeSystems und ValueSets: Konformität mit http://hl7.org/fhir/shareablecodesystem bzw. http://hl7.org/fhir/shareablevalueset wird empfohlen

### Festlegungen zu Modul-Bezeichnungen und Abkürzungen

Für bestehende Module sind folgende Bezeichnungen abgestimmt:

| | | |
| :--- | :--- | :--- |
|   | **url** | **title/ name/ id** |
| Modul Diagnose | modul-diagnose | Diagnose |
| Modul Laborbefund | modul-labor | Labor |
| Modul Prozedur | modul-prozedur | Prozedur |
| Modul Medikation | modul-medikation | Medikation |
| Modul Person | modul-person | Person |
| Modul Fall | modul-fall | Fall |
| Modul Consent | modul-consent | Consent |
| Modul Mikrobiologie | modul-mikrobio | Mikrobio |
| Modul Symptom/klinischer Phänotyp | modul-symptom | Symptom |
| Modul Bildgebende Verfahren | modul-bildgebung | Bildgebung |
| Modul Intensivmedizin | modul-icu | ICU |
| Modul Medizinisches Forschungsvorhaben | modul-studie | Studie |
| Modul Onkologie | modul-onko | Onko |
| Modul Pathologiebefund | modul-patho | Patho |
| Modul Molekulargenetischer Befund | modul-molgen | MolGen |
| Modul Bioprobendaten | modul-biobank | Biobank |
| Modul Strukturdaten | modul-struktur | Struktur |
| Modul Seltene Erkrankungen | modul-seltene | Seltene |
| Modul Patient-reported Outcomes | modul-pros | PROs |
| Modul Molekulares Tumorboard | modul-mtb | MTB |
| Modul Lungenfunktion | modul-lufu | LuFu |
| Modul Schlafmedizinischer Befund | **folgt** | **folgt** |
| Modul Dokument | modul-dokument | Dokument |

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

### Element title

(eine menschenlesbare Bezeichnung der Ressource)

* Format: Leerzeichen und Klammern etc. erlaubt
* Struktur: MII `<Präfix Ressourcentyp>` `<Abkürzung Modulname>` `<Beschreibung Inhalt>` (`<zusätzliche Informationen>`)
 Beispiel CodeSystem: `MII CS Mikrobio Mikrobiologische Erreger (Bakterien, Pilze)`
* Für ValueSets: zusätzlich [`<verwendete Terminologie (z.B. Wert aus ValueSet.compose.include.system)>`]. Bei namenslosen Terminologien weglassen (oder “Lokal”). Beispiel: MII VS Mikrobio Mikrobiologische Erreger (Bakterien, Pilze) [SNOMED CT]
* Für ConceptMaps: zusätzlich [`<Quellterminologie> -> <Zielterminologie>`] Beispiel: `MII CM Mikrobio Mikrobiologische Erreger (Bakterien, Pilze) [LOINC -> SNOMED CT]` Hinweis: Für den Sonderfall, bei dem ein VS oder eine CM mehrere Terminologien referenziert, sind diese mit Komma unterteilt aufzuführen

### Element name

(eine maschinell verarbeitbare Bezeichnung der Ressource)

* Format: Upper_Snake_Case Hinweis: Der FHIR-Standard ist CamelCase2, aber wegen besserer Menschenlesbarkeit, insbesondere von Abkürzungen, wird im Rahmen der MII davon abgewichen.
* Struktur: entsprechend des title, aber ohne Leer- und Sonderzeichen
* Beispiel: `MII_VS_Mikrobio_Mikrobiologische_Erreger_Bakterien_Pilze_SNOMEDCT`

### Element id

(logischer Identifier der Ressource)

* Struktur: entsprechend .name, formatiert im kebab-case (lower case und “_” durch “-” ersetzt)
* Begrenzung auf 64 Zeichen: Bei Bedarf abkürzen
* Beispiel: `mii-vs-mikrobio-mikrobiologische-erreger-snomedct`

### Element url

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

#### Dokument: DocumentReference

## Übersicht

-------

## Beschreibung

Diese Profil beschreibt die Metadaten zu einem klinischen Dokument. Eine ausführliche Beschreibung und Empfehlungen zur Verwendung des Profils befinden sich in der Beschreibung des Moduls ([Beschreibung](index.md)).

## Metadaten

> TODO:REVIEW — an FQL query block stood here in the Simplifier source. Its output is reproduced below as a generated table extracted from the built resource; see the migration report.

-------

## Inhalt

-------

### Mapping Datensatz zu FHIR

> TODO:REVIEW — an FQL query block (`@`-fenced) stood here in the Simplifier source. Its output is reproduced as a generated table extracted from the built resource, or as a link to the generated artefact page; see the migration report.

-------

#### NLP Processing Status: Extension

## Übersicht

-------

## Beschreibung

Diese Erweiterung ermöglicht die Beschreibung von dem Bearbeitungsstatus eines Dokuments während eines NLP-Projektes. Die Prozessierung eine Dokumentes mit unstrukturierter Information erfolgt in einer Vielzahl von Einzelschritten. Durch diese Prozessketten entstehen Transformationen und Relationen von und zu dem Originaldokument. Die NLP Extension nutzt ein Codesystem um die vielfältigen Zwischenprodukte einer NLP-Bearbeitung koordiniert zu beschreiben und zu archivieren. Das Codesystem der NLP-Extension besitzt zwei Hierarchien, welche in Level 1 und Level 2 zum Ausdruck kommen. Das Level 1 bezeichnet hierbei die übergeordneten Prozessstatus wie zum Beispiel "annotated". Das Level (Lvl) 2 dient dann zur Spezifikation von Lvl 1, beispielsweise Lvl1 "annotated" Lvl2 "deid", dieses Dokument wurde mit de-identifizierenden Annotationen versehen.

## Metadaten

> TODO:REVIEW — an FQL query block (`@`-fenced) stood here in the Simplifier source. Its output is reproduced as a generated table extracted from the built resource, or as a link to the generated artefact page; see the migration report.

## Inhalt

-------

[mii-cs-dokument-nlp-processing-status](CodeSystem-mii-cs-dokument-nlp-processing-status.md)

-------

Die Suchparameter dieses Moduls stehen auf [Suchparameter und Operationen](search-parameters-and-operations.md), die Beispielinstanzen auf [Beispiele](examples.md).

