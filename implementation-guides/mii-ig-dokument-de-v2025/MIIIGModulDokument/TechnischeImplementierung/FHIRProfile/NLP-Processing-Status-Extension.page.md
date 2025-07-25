---
parent: 
topic: NlpProcessingStatusExtension
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status
---

## {{page-title}}

---

### Inhalt

Diese Erweiterung beschreibt den Status der NLP-Verarbeitung eines Dokuments, welches als (Zwischen-) Ergebnis der NLP-Verarbeitung erzeugt wird. Damit kann die Qualität von (Zwischen-) Ergebnissen beurteilt und Maßnahmen zur Qualitätssteigerung vorgenommen werden.

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-ex-dokument-nlp-processing-status')  
select 
    Name: name,
    Status: status,
    Version: version,
    Canonical: url,
    Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url.endsWith('mii-ex-dokument-nlp-processing-status') 
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-ex-dokument-nlp-processing-status') 
        for 
            differential.element 
            where 
                mustSupport = true 
            select
                Feldname: id,
                Kurzbeschreibung: short,
                Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

{{render:mii-cs-dokument-nlp-processing-status}}