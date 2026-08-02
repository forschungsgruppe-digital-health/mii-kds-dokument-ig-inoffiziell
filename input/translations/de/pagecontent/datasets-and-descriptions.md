<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW (Gate B): Datensatz page split per migration-spec §9 -->
<!-- Quelle: implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md -->
### Datensätze und Beschreibungen

Die offiziell beschlossene Version des Informationsmodells befinden sich auf
[ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01).
Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich
als FHIR Logical Model abgebildet. Die Darstellung des Logical Models findet
sich auf der Seite [Logische Modelle](logical-models.html).

*Es ist zu beachten, dass das Logical Model rein auf die Abbildung der
Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und
Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend
durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical
Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR
Ressource.*

<!-- TODO:REVIEW (Gate B): Die Quellseite erzeugte an dieser Stelle per
     FQL-Abfrage eine Tabelle "Logischer Datensatz" / "Beschreibung" über die
     differential-Elemente des Logical Models. Diese Daten (Elementpfad und
     Definition) zeigen die Artefaktseite
     StructureDefinition-mii-lm-dokument.html (Detailbeschreibungen) und die
     Seite logical-models.html; daher hier Verweis statt Inline-Tabelle. Zwei
     weitere FQL-Mapping-Abfragen waren im Quelltext auskommentiert (nicht
     gerendert); ihre Inhalte deckt die Mapping-Tabelle auf
     profiles-and-extensions.html ab. -->
