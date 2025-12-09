---
topic: Datensatzbeschreibung
canonical: https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-lm-dokument
---
# {{page-title}}

Die offiziell beschlossene Version des Informationsmodells befinden sich auf [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet:

{{tree, expand}}

*Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.*


<fql headers="true">
    from 
        StructureDefinition 
    where 
        url = %canonical
    for 
        differential.element
    select
        'Logischer Datensatz': path.replace('mii-lm-dokument.', '').replace('.', '.<br>'),
        'Beschreibung': definition
</fql>
 
<!--
<fql headers="true">
    from 
        StructureDefinition 
    where 
        url = %canonical
    for 
        differential.element
    select
        'Datensatz': path.replace('mii-lm-dokument.', '').replace('.', '.<br>'),
        'Mapping': mapping.where(identity = 'mii-map-dokument').map.replace('.', '.<br>'),
        'Beschreibung': definition
</fql>
<fql headers="true">
    from
        StructureDefinition
    where
        url = %canonical
    for
        differential.element 
    select
        'FHIR Logical Model': path.replace('mii-lm-dokument.', ''),
        'FHIR Ressource': mapping.where(identity = 'mii-map-dokument').map
</fql>
-->