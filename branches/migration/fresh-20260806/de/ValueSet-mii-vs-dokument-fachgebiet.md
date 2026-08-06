# MII VS Dokument Fachgebiet - MII IG Dokument v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Dokument Fachgebiet**

## ValueSet: MII VS Dokument Fachgebiet 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-fachgebiet | *Version*:2026.0.1 |
| Active Stand: 2026-08-06 | *Maschinenlesbarer Name*:MII_VS_Dokument_Fachgebiet |

 
ValueSet zum erzeugenden Fachgebiet eines Dokuments 

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
  "id" : "mii-vs-dokument-fachgebiet",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-fachgebiet",
  "version" : "2026.0.1",
  "name" : "MII_VS_Dokument_Fachgebiet",
  "title" : "MII VS Dokument Fachgebiet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-06T18:49:07+00:00",
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
  "description" : "ValueSet zum erzeugenden Fachgebiet eines Dokuments",
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
        "value" : "394733009"
      }]
    },
    {
      "valueSet" : ["http://ihe-d.de/ValueSets/IHEXDSpracticeSettingCode"]
    }]
  }
}

```
