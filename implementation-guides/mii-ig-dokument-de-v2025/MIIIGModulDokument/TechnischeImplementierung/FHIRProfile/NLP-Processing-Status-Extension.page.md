---
parent: 
topic: NlpProcessingStatusExtension
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-ex-dokument-nlp-processing-status
---

<style>
.cool-tabs {
    width: 800px;
    overflow: y-scroll;
}
</style>

# {{page-title}}

## Übersicht

- [Beschreibung]
- [Metadaten]
- [Inhalt]
- [Beispiele]

---

## Beschreibung

Diese Erweiterung beschreibt den Status der NLP-Verarbeitung eines Dokuments, welches als (Zwischen-) Ergebnis der NLP-Verarbeitung erzeugt wird. Damit kann die Qualität von (Zwischen-) Ergebnissen beurteilt und Maßnahmen zur Qualitätssteigerung vorgenommen werden.

## Metadaten

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

## Inhalt

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

---

## Beispiele

Das folgende Beispiel illustriert die Verarbeitung eines *ärztlichen Verlaufsberichts* der Patientin *Amanda Alzheimer* durch eine NLP-Pipeline (siehe Abbildung). Nach dem Laden (`Ingestion`) des Originaldokuments `Amanda_Alzheimer.txt` wird eine Dokumentreferenz mit dem NLP-Verarbeitungsstatus `unprocessed` angelegt. Anschließend wird eine De-Identifikation (`De-Identification`) der Inhalte durchgeführt, um das Ergebnisdokument `De-ID.txt` datenschutzkonform für Forschungszwecke weiterverwenden zu können. Eine zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus `de-identified, curated` und verweist auf Originaldokument mittels `transforms`. Abschließend werden die klinischen Inhalte annotiert, was unter Umständen mehrere Ergebnisdokumente produziert und sich als Archiv `Annotat.zip` zusammenfassen lassen. Die zugehörige Dokumentreferenz kennzeichnet den NLP-Verarbeitungsstatus als `de-identifier, curated, annotated` und erweitert `appends` die Dokumentreferenz des vorherigen NLP-Verarbeitungsschritts.

<div style="text-align: center; margin-top: 2em; margin-bottom: 2em; width: 700px">
<a target="_blank" href="https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/NLP-Pipeline.svg">{{render:implementation-guides/images/NLP-Pipeline.png}}
</a>
</div>

Die folgenden FHIR DocumentReference-Ressourcen verwendeten das Dokument-Profil ({{pagelink:MIIIGModulDokument/TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md}}), um die Ergebnisdokumente und die zugehörigen Dokumentreferenzen jedes Verarbeitungsschrittes der NLP-Pipeline darzustellen.

<tabs>
    <tab title="Amanda_Alzheimer.txt"> 
        {{json:AmandaAlzheimerOriginalDokument}}
    </tab>
    <tab title="De-ID.txt"> 
        {{json:AmandaAlzheimerDeIdentifiziertesDokument}}
    </tab>
    <tab title="Annotat.zip"> 
        {{json:AmandaAlzheimerAnnotiertesDokument}}
    </tab>
</tabs>

Die folgenden FHIR-Ressourcen stellen die zum Beispiel zugehörigen FHIR Patienten- und Fall-Ressourcen dar. Diese FHIR-Ressourcen werden ausschließlich vom Originaldokument `Amanda_Alzheimer.txt` und der zugehörigen Dokumentreferenz verwendet.

<tabs>
    <tab title="Amanda Alzheimer"> 
        {{json:AmandaAlzheimer}}
    </tab>
    <tab title="Einrichtungskontakt"> 
        {{json:AmandaAlzheimerEinrichtungskontakt}}
    </tab>
    <tab title="Abteilungskontakt"> 
        {{json:AmandaAlzheimerAbteilungskontakt}}
    </tab>
    <tab title="Versorgungsstellenkontakt"> 
        {{json:AmandaAlzheimerVersorgungsstellenkontakt}}
    </tab>
</tabs>

Quelle: <a href="https://doi.org/10.5281/zenodo.6539130">GraSCCo Datensatz, DOI (Zenodo): 10.5281/zenodo.6539130</a>

---