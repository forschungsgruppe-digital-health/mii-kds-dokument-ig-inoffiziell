<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW (Gate B): Datensatz page split per migration-spec §9 -->
<!-- Quelle: implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md -->
### Logische Modelle

Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell des Moduls
**Dokument** als FHIR Logical Model abgebildet (fachliche Beschreibung des
Datensatzes: [Datensätze und Beschreibungen](datasets-and-descriptions.html)):

{% include StructureDefinition-mii-lm-dokument-snapshot.xhtml %}

*Es ist zu beachten, dass das Logical Model rein auf die Abbildung der
Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und
Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend
durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical
Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR
Ressource.*

Die vollständigen Elementbeschreibungen zeigt die Artefaktseite
[MII LM Dokument](StructureDefinition-mii-lm-dokument.html). Das 1:1-Mapping der
Elemente des Logical Models auf die FHIR-Profile zeigt die Mapping-Tabelle auf
der Seite [Profile und Extensions](profiles-and-extensions.html).
