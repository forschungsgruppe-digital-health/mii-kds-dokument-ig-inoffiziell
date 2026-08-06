# MII VS Dokument SCT Dokument Kategorie - MII IG Dokument v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Dokument SCT Dokument Kategorie**

## ValueSet: MII VS Dokument SCT Dokument Kategorie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-sct-dokument-kategorie | *Version*:2026.0.1 |
| Active Stand: 2026-08-06 | *Maschinenlesbarer Name*:MII_VS_Dokument_SCT_Dokument_Kategorie |

 
SNOMED CT ValueSet zur Kategorie (oder Klasse) eines Dokuments 

 **References** 

* [MII PR Dokument Dokument](StructureDefinition-mii-pr-dokument-dokument.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-dokument-sct-dokument-kategorie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-sct-dokument-kategorie",
  "version" : "2026.0.1",
  "name" : "MII_VS_Dokument_SCT_Dokument_Kategorie",
  "title" : "MII VS Dokument SCT Dokument Kategorie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-06T16:02:43+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    },
    {
      "system" : "email",
      "value" : "office@medizininformatik-initiative.de"
    }]
  }],
  "description" : "SNOMED CT ValueSet zur Kategorie (oder Klasse) eines Dokuments",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "424545009"
      }]
    }]
  }
}

```
