<!-- markdownlint-disable MD041 -->
<!-- Quelle: implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/AnwendungsflleInformationsmodell/Datensaetze.page.md
     (Simplifier). Das Simplifier-Front-Matter (topic: Datensatzbeschreibung; canonical:
     https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-lm-dokument)
     wurde entfernt — der Canonical diente dort nur der Aufloesung der FQL-Abfrage und identifiziert
     das Logical Model MII_LM_Dokument. Deutsche Fassung = massgeblich; englischer Spiegel:
     input/pagecontent/datasets-and-descriptions.md — beide synchron halten. -->

Die offiziell beschlossene Version des Informationsmodells befinden sich auf [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet:

<!-- TODO:REVIEW (Gate B): LM-Rendering auf die Seite logical-models.md verschoben, damit die dedizierte Template-Seite kein leerer Stub bleibt -->
Das logische Modell ist auf der Seite [Logische Modelle](logical-models.html) dargestellt.

*Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.*

Eine tabellarische Übersicht aller Elemente des logischen Datensatzes mit ihren Beschreibungen findet sich auf der Artefaktseite [MII LM Dokument](StructureDefinition-mii-lm-dokument.html).

<!-- TODO:REVIEW: the source rendered a live FQL query here; content replaced by a static pointer -->
<!-- TODO:REVIEW: die Simplifier-Quelle enthielt zusaetzlich zwei AUSKOMMENTIERTE (dort nicht
     gerenderte) FQL-Abfragen, die Mapping-Tabellen "Datensatz / Mapping / Beschreibung" und
     "FHIR Logical Model / FHIR Ressource" aus dem Element-Mapping mii-map-dokument der
     differential-Elemente erzeugt haetten; hier nur als dieser Hinweis uebernommen, da in der
     Quelle nicht gerendert — keine Tabelleninhalte erfunden. -->
