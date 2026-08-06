# MII VS Dokument NLP Processing Status - MII IG Dokument v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Dokument NLP Processing Status**

## ValueSet: MII VS Dokument NLP Processing Status 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-nlp-processing-status | *Version*:2026.0.1 |
| Active Stand: 2026-08-06 | *Maschinenlesbarer Name*:MII_VS_Dokument_NLP_Processing_Status |

 
ValueSet zum Status der NLP-Verarbeitung des referenzierten Dokuments 

 **References** 

* [MII EX Dokument NLP Processing Status](StructureDefinition-mii-ex-dokument-nlp-processing-status.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-dokument-nlp-processing-status",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ValueSet/mii-vs-dokument-nlp-processing-status",
  "version" : "2026.0.1",
  "name" : "MII_VS_Dokument_NLP_Processing_Status",
  "title" : "MII VS Dokument NLP Processing Status",
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
  "description" : "ValueSet zum Status der NLP-Verarbeitung des referenzierten Dokuments",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CodeSystem/mii-cs-dokument-nlp-processing-status"
    }]
  }
}

```
